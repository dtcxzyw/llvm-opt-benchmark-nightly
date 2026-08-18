inline.NumInlined: 4181
inline.NumDeleted: 1354
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_tree:bb.a

bb.b:                                             ; preds = %bb.a
  %i.n = extractvalue { i64, ptr } %i.l, 0
  %i.o = extractvalue { i64, ptr } %i.l, 1
  store i64 %i.n, ptr %i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %i.o, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.r, align 8
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeINtNtB16_3api11SyntaxTokenNtNtB20_11syntax_node12RustLanguageEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10take_while9TakeWhileQINtNtB4q_10filter_map9FilterMapINtB2S_21SyntaxElementChildrenB3f_ENCNvMsM_NtB1Y_8node_extB1S_22token_trees_and_tokens0ENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_tree0EE9from_iterB7r_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.d unwind label %bb.aw

bb.c:                                             ; preds = %bb.ar
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECsiU5vK8fN4ZC_11ide_assists.exit114

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.t = load i64, ptr %i.i, align 8, !range !31, !noundef !4
  %i.u = load ptr, ptr %i.p, align 8
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeINtNtB16_3api11SyntaxTokenNtNtB20_11syntax_node12RustLanguageEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtB2S_21SyntaxElementChildrenB3f_ENCNvMsM_NtB1Y_8node_extB1S_22token_trees_and_tokens0EE9from_iterCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.t, ptr %i.u)
          to label %bb.f unwind label %bb.e

.body:                                            ; preds = %bb.an, %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueAINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeINtNtBH_3api11SyntaxTokenNtNtB1B_11syntax_node12RustLanguageEEj1_ECsiU5vK8fN4ZC_11ide_assists.exit
  %.sroa.032.3 = phi i1 [ %.sroa.032.5, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueAINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeINtNtBH_3api11SyntaxTokenNtNtB1B_11syntax_node12RustLanguageEEj1_ECsiU5vK8fN4ZC_11ide_assists.exit ], [ %.sroa.032.4, %bb.e ], [ false, %bb.an ]
  %.pn49.pn = phi { ptr, i32 } [ %.pn49, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueAINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeINtNtBH_3api11SyntaxTokenNtNtB1B_11syntax_node12RustLanguageEEj1_ECsiU5vK8fN4ZC_11ide_assists.exit ], [ %i.v, %bb.e ], [ %i.fx, %bb.an ] ; 2 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeINtNtB1d_3api11SyntaxTokenNtNtB27_11syntax_node12RustLanguageEEEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #40
          to label %.thread128 unwind label %bb.au

bb.e:                                             ; preds = %bb.ao, %bb.d
  %.sroa.032.4 = phi i1 [ false, %bb.ao ], [ true, %bb.d ]
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !noundef !4 ; 4 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit190, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.z, 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees0_0B7_.exit.backedge.i
  %.sroa.03.011.i = phi i64 [ %i.ae, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees0_0B7_.exit.backedge.i ], [ %i.z, %.lr.ph.i.preheader ] ; 2 uses
  %i.ac = phi ptr [ %i.ad, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees0_0B7_.exit.backedge.i ], [ %i.ab, %.lr.ph.i.preheader ] ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16 ; 3 uses
  %i.ae = add i64 %.sroa.03.011.i, -1             ; 2 uses
  %i.af = load i64, ptr %i.ad, align 8, !range !7, !alias.scope !1569, !noalias !1572, !noundef !4
  %i.ag = trunc nuw i64 %i.af to i1
  br i1 %i.ag, label %.split.i, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees0_0B7_.exit.backedge.i

.split.i:                                         ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ai = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %.split.i
  %i.aj = icmp eq i16 %i.ai, 4
  br i1 %i.aj, label %bb.g, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees0_0B7_.exit.backedge.i

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees0_0B7_.exit.backedge.i: ; preds = %.noexc, %.lr.ph.i
  %i.ak = icmp eq ptr %i.x, %i.ad
  br i1 %i.ak, label %.loopexit190, label %.lr.ph.i

bb.g:                                             ; preds = %.noexc
  %i.al = icmp ult i64 %i.ae, %i.z
  call void @llvm.assume(i1 %i.al)
  br label %.loopexit190

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueAINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeINtNtBH_3api11SyntaxTokenNtNtB1B_11syntax_node12RustLanguageEEj1_ECsiU5vK8fN4ZC_11ide_assists.exit: ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %.split, %bb.ad, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i, %bb.av, %.noexc101
  %.sroa.032.5 = phi i1 [ false, %.split ], [ false, %.noexc101 ], [ false, %bb.av ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i ], [ false, %bb.ad ], [ true, %.loopexit.split-lp.loopexit ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ true, %.loopexit ]
  %.pn49 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.split ], [ %i.fn, %.noexc101 ], [ %.pn157, %bb.av ], [ %i.fc, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeECsiU5vK8fN4ZC_11ide_assists.exit.sink.split.i.i.i ], [ %i.fc, %bb.ad ], [ %lpad.loopexit174, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit181, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit187, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp188, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit185, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit178, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit, %.loopexit ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeINtNtB1d_3api11SyntaxTokenNtNtB27_11syntax_node12RustLanguageEEEECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #40
          to label %.body unwind label %bb.au

.loopexit:                                        ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees_0B7_.exit.i93
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueAINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeINtNtBH_3api11SyntaxTokenNtNtB1B_11syntax_node12RustLanguageEEj1_ECsiU5vK8fN4ZC_11ide_assists.exit

.loopexit.split-lp.loopexit:                      ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees0_0B7_.exit.i
  %lpad.loopexit174 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueAINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeINtNtBH_3api11SyntaxTokenNtNtB1B_11syntax_node12RustLanguageEEj1_ECsiU5vK8fN4ZC_11ide_assists.exit

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees_0B7_.exit.i80
  %lpad.loopexit178 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueAINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeINtNtBH_3api11SyntaxTokenNtNtB1B_11syntax_node12RustLanguageEEj1_ECsiU5vK8fN4ZC_11ide_assists.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees_0B7_.exit.i72
  %lpad.loopexit181 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueAINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeINtNtBH_3api11SyntaxTokenNtNtB1B_11syntax_node12RustLanguageEEj1_ECsiU5vK8fN4ZC_11ide_assists.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees_0B7_.exit.i
  %lpad.loopexit185 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueAINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeINtNtBH_3api11SyntaxTokenNtNtB1B_11syntax_node12RustLanguageEEj1_ECsiU5vK8fN4ZC_11ide_assists.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.split.i
  %lpad.loopexit187 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueAINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeINtNtBH_3api11SyntaxTokenNtNtB1B_11syntax_node12RustLanguageEEj1_ECsiU5vK8fN4ZC_11ide_assists.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke261, %.invoke
  %lpad.loopexit.split-lp188 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueAINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TokenTreeINtNtBH_3api11SyntaxTokenNtNtB1B_11syntax_node12RustLanguageEEj1_ECsiU5vK8fN4ZC_11ide_assists.exit

.loopexit190:                                     ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees0_0B7_.exit.backedge.i, %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ %.sroa.03.011.i, %bb.g ], [ 1, %bb.f ], [ 1, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees0_0B7_.exit.backedge.i ] ; 5 uses
  %i.am = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.an = load i64, ptr %i.y, align 8, !noundef !4 ; 4 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.invoke261, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit190
  %.idx289 = shl nuw nsw i64 %i.an, 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx289
  br label %bb.i

bb.h:                                             ; preds = %.noexc67
  %i.aq = icmp eq ptr %i.am, %i.as
  br i1 %i.aq, label %.invoke261, label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.03.0.i286 = phi i64 [ %i.an, %.lr.ph ], [ %i.at, %bb.h ] ; 13 uses
  %i.ar = phi ptr [ %i.ap, %.lr.ph ], [ %i.as, %bb.h ] ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -16 ; 3 uses
  %i.at = add i64 %.sroa.03.0.i286, -1            ; 2 uses
  %i.au = load i64, ptr %i.as, align 8, !range !7, !alias.scope !1575, !noalias !1578, !noundef !4
  %i.av = trunc nuw i64 %i.au to i1
  br i1 %i.av, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees_0B7_.exit.i, label %bb.j

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees_0B7_.exit.i: ; preds = %bb.i
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.ax = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aw)
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc67:                                         ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees_0B7_.exit.i
  %.not.i = icmp eq i16 %i.ax, 157
  br i1 %.not.i, label %bb.h, label %bb.j

bb.j:                                             ; preds = %bb.i, %.noexc67
  %i.ay = icmp ult i64 %i.at, %i.an
  call void @llvm.assume(i1 %i.ay)
  %i.az = load i64, ptr %i.y, align 8, !noundef !4 ; 2 uses
  %i.ba = icmp ult i64 %.sroa.03.0.i286, %.sroa.0.0.i
  %.not = icmp ugt i64 %.sroa.03.0.i286, %i.az
  %or.cond = or i1 %i.ba, %.not
  br i1 %or.cond, label %.invoke, label %bb.l, !prof !1581

bb.k:                                             ; preds = %bb.ah
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.idx168 = shl nuw nsw i64 %.sroa.0.0.i, 4      ; 2 uses
  %.idx167 = shl nuw nsw i64 %.sroa.03.0.i286, 4  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx167
  %i.bd = sub nuw nsw i64 %.sroa.03.0.i286, %.sroa.0.0.i
  %i.be = icmp samesign eq i64 %.idx168, %.idx167
  br i1 %i.be, label %.invoke261, label %.lr.ph.i68.preheader

.lr.ph.i68.preheader:                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx168
  br label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %.lr.ph.i68.preheader, %bb.m
  %.sroa.02.08.i = phi i64 [ %i.bm, %bb.m ], [ 0, %.lr.ph.i68.preheader ] ; 3 uses
  %i.bg = phi ptr [ %i.bh, %bb.m ], [ %i.bf, %.lr.ph.i68.preheader ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bi = load i64, ptr %i.bg, align 8, !range !7, !alias.scope !1582, !noalias !1585, !noundef !4
  %i.bj = trunc nuw i64 %i.bi to i1
  br i1 %i.bj, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees_0B7_.exit.i72, label %bb.n

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees_0B7_.exit.i72: ; preds = %.lr.ph.i68
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bl = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bk)
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc74:                                         ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees_0B7_.exit.i72
  %.not.i73 = icmp eq i16 %i.bl, 157
  br i1 %.not.i73, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.noexc74
  %i.bm = add i64 %.sroa.02.08.i, 1
  %i.bn = icmp eq ptr %i.bh, %i.bc
  br i1 %i.bn, label %.invoke261, label %.lr.ph.i68

bb.n:                                             ; preds = %.noexc74, %.lr.ph.i68
  %i.bo = icmp ult i64 %.sroa.02.08.i, %i.bd
  call void @llvm.assume(i1 %i.bo)
  %i.bp = add i64 %.sroa.02.08.i, %.sroa.0.0.i    ; 9 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !4 ; 3 uses
  %.idx170 = shl nuw nsw i64 %i.bt, 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx170
  %i.bv = icmp eq i64 %i.bt, 0
  br i1 %i.bv, label %.invoke261, label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %bb.n, %bb.o
  %.sroa.02.08.i76 = phi i64 [ %i.cc, %bb.o ], [ 0, %bb.n ] ; 8 uses
  %i.bw = phi ptr [ %i.bx, %bb.o ], [ %i.br, %bb.n ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bw, align 8, !range !7, !alias.scope !1588, !noalias !1591, !noundef !4
  %i.bz = trunc nuw i64 %i.by to i1
  br i1 %i.bz, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees_0B7_.exit.i80, label %bb.p

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees_0B7_.exit.i80: ; preds = %.lr.ph.i75
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.cb = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ca)
          to label %.noexc82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc82:                                         ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees_0B7_.exit.i80
  %.not.i81 = icmp eq i16 %i.cb, 157
  br i1 %.not.i81, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc82
  %i.cc = add nuw nsw i64 %.sroa.02.08.i76, 1
  %i.cd = icmp eq ptr %i.bx, %i.bu
  br i1 %i.cd, label %.invoke261, label %.lr.ph.i75

bb.p:                                             ; preds = %.noexc82, %.lr.ph.i75
  %i.ce = icmp ult i64 %.sroa.02.08.i76, %i.bt
  call void @llvm.assume(i1 %i.ce)
  %i.cf = load ptr, ptr %i.bq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cg = load i64, ptr %i.bs, align 8, !noundef !4 ; 3 uses
  %.idx172 = shl nuw nsw i64 %i.cg, 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx172
  %i.ci = icmp eq i64 %i.cg, 0
  br i1 %i.ci, label %.loopexit177, label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %bb.p, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees0_0B7_.exit.thread.i
  %.sroa.02.08.i85 = phi i64 [ %i.cq, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees0_0B7_.exit.thread.i ], [ 0, %bb.p ] ; 3 uses
  %i.cj = phi ptr [ %i.ck, %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees0_0B7_.exit.thread.i ], [ %i.cf, %bb.p ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %i.cl = load i64, ptr %i.cj, align 8, !range !7, !alias.scope !1594, !noalias !1597, !noundef !4
  %i.cm = trunc nuw i64 %i.cl to i1
  br i1 %i.cm, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees0_0B7_.exit.i, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees0_0B7_.exit.thread.i

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees0_0B7_.exit.i: ; preds = %.lr.ph.i84
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.co = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cn)
          to label %.noexc88 unwind label %.loopexit.split-lp.loopexit

.noexc88:                                         ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees0_0B7_.exit.i
  %i.cp = icmp eq i16 %i.co, 4
  br i1 %i.cp, label %bb.q, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees0_0B7_.exit.thread.i

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees0_0B7_.exit.thread.i: ; preds = %.noexc88, %.lr.ph.i84
  %i.cq = add nuw nsw i64 %.sroa.02.08.i85, 1
  %i.cr = icmp eq ptr %i.ck, %i.ch
  br i1 %i.cr, label %.loopexit177.loopexit, label %.lr.ph.i84

bb.q:                                             ; preds = %.noexc88
  %i.cs = icmp ult i64 %.sroa.02.08.i85, %i.cg
  call void @llvm.assume(i1 %i.cs)
  %.pre227 = load i64, ptr %i.bs, align 8
  br label %bb.r

.loopexit177.loopexit:                            ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees0_0B7_.exit.thread.i
  %.pre = load i64, ptr %i.bs, align 8
  br label %.loopexit177

.loopexit177:                                     ; preds = %.loopexit177.loopexit, %bb.p
  %i.ct = phi i64 [ %.pre, %.loopexit177.loopexit ], [ 0, %bb.p ] ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 576460752303423488
  call void @llvm.assume(i1 %i.cu)
  %i.cv = add nsw i64 %i.ct, -1
  br label %bb.r

bb.r:                                             ; preds = %.loopexit177, %bb.q
  %i.cw = phi i64 [ %.pre227, %bb.q ], [ %i.ct, %.loopexit177 ] ; 2 uses
  %.sroa.020.0 = phi i64 [ %.sroa.02.08.i85, %bb.q ], [ %i.cv, %.loopexit177 ] ; 6 uses
  %.not41 = icmp ugt i64 %.sroa.020.0, %i.cw
  br i1 %.not41, label %.invoke, label %bb.s, !prof !1581

bb.s:                                             ; preds = %bb.r
  %i.cx = load ptr, ptr %i.bq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cy = icmp eq i64 %.sroa.020.0, 0
  br i1 %i.cy, label %.invoke261, label %.lr.ph288

.lr.ph288:                                        ; preds = %bb.s
  %.idx290 = shl nuw nsw i64 %.sroa.020.0, 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx290
  br label %bb.u

bb.t:                                             ; preds = %.noexc95
  %i.da = icmp eq ptr %i.cx, %i.dc
  br i1 %i.da, label %.invoke261, label %bb.u

bb.u:                                             ; preds = %.lr.ph288, %bb.t
  %.sroa.03.0.i89287 = phi i64 [ %.sroa.020.0, %.lr.ph288 ], [ %i.dd, %bb.t ] ; 10 uses
  %i.db = phi ptr [ %i.cz, %.lr.ph288 ], [ %i.dc, %bb.t ] ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -16 ; 3 uses
  %i.dd = add i64 %.sroa.03.0.i89287, -1          ; 2 uses
  %i.de = load i64, ptr %i.dc, align 8, !range !7, !alias.scope !1600, !noalias !1603, !noundef !4
  %i.df = trunc nuw i64 %i.de to i1
  br i1 %i.df, label %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees_0B7_.exit.i93, label %bb.v

_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees_0B7_.exit.i93: ; preds = %bb.u
  %i.dg = getelementptr inbounds i8, ptr %i.db, i64 -8
  %i.dh = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dg)
          to label %.noexc95 unwind label %.loopexit

.noexc95:                                         ; preds = %_RNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers10flip_comma9flip_trees_0B7_.exit.i93
  %.not.i94 = icmp eq i16 %i.dh, 157
  br i1 %.not.i94, label %bb.t, label %bb.v

bb.v:                                             ; preds = %bb.u, %.noexc95
  %i.di = icmp ult i64 %i.dd, %.sroa.020.0
  call void @llvm.assume(i1 %i.di)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dj = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.dk = load i64, ptr %i.y, align 8, !noundef !4 ; 8 uses
  %i.dl = icmp eq i64 %i.bp, 0
  br i1 %i.dl, label %.invoke, label %bb.w, !prof !5

.invoke261:                                       ; preds = %bb.h, %bb.m, %bb.o, %bb.t, %.loopexit190, %bb.s, %bb.n, %bb.l
  %i.dm = phi ptr [ @109, %bb.n ], [ @108, %bb.l ], [ @108, %bb.m ], [ @110, %bb.s ], [ @110, %bb.t ], [ @107, %.loopexit190 ], [ @109, %bb.o ], [ @107, %bb.h ]
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dm) #36
          to label %.cont262 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont262:                                         ; preds = %.invoke261
  unreachable

bb.w:                                             ; preds = %bb.v
  %i.dn = add i64 %i.bp, -1
  %.not42 = icmp ugt i64 %i.bp, %i.dk
  br i1 %.not42, label %.invoke, label %bb.x, !prof !5

bb.x:                                             ; preds = %bb.w
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dp = load ptr, ptr %i.bq, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.dq = load i64, ptr %i.bs, align 8, !noundef !4 ; 6 uses
  %i.dr = icmp ult i64 %.sroa.03.0.i89287, %.sroa.02.08.i76
  br i1 %i.dr, label %.invoke, label %bb.y, !prof !5

bb.y:                                             ; preds = %bb.x
  %i.ds = sub nuw i64 %.sroa.03.0.i89287, %.sroa.02.08.i76
  %.not43 = icmp ugt i64 %.sroa.03.0.i89287, %i.dq
  br i1 %.not43, label %.invoke, label %bb.z, !prof !5

bb.z:                                             ; preds = %bb.y
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %.sroa.02.08.i76
  %i.du = icmp ugt i64 %.sroa.03.0.i286, %i.dk
  br i1 %i.du, label %.invoke, label %bb.aa, !prof !5

bb.aa:                                            ; preds = %bb.z
  %i.dv = sub nuw i64 %i.dk, %.sroa.03.0.i286
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %.sroa.03.0.i286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.dx = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  store i64 1, ptr %i.c, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.dx, ptr %i.dy, align 8
  %i.dz = icmp ult i64 %.sroa.03.0.i286, %i.bp
  br i1 %i.dz, label %.invoke263, label %bb.ab, !prof !5

.invoke:                                          ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.r, %bb.j
  %i.ea = phi i64 [ %.sroa.02.08.i76, %bb.y ], [ 1, %bb.w ], [ 0, %bb.r ], [ %.sroa.0.0.i, %bb.j ], [ 1, %bb.v ], [ %.sroa.02.08.i76, %bb.x ], [ %.sroa.03.0.i286, %bb.z ]
  %i.eb = phi i64 [ %.sroa.03.0.i89287, %bb.y ], [ %i.bp, %bb.w ], [ %.sroa.020.0, %bb.r ], [ %.sroa.03.0.i286, %bb.j ], [ %i.bp, %bb.v ], [ %.sroa.03.0.i89287, %bb.x ], [ %i.dk, %bb.z ]
  %i.ec = phi i64 [ %i.dq, %bb.y ], [ %i.dk, %bb.w ], [ %i.cw, %bb.r ], [ %i.az, %bb.j ], [ %i.dk, %bb.v ], [ %i.dq, %bb.x ], [ %i.dk, %bb.z ]
  %i.ed = phi ptr [ @115, %bb.y ], [ @116, %bb.w ], [ @117, %bb.r ], [ @118, %bb.j ], [ @116, %bb.v ], [ @115, %bb.x ], [ @114, %bb.z ]
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.ea, i64 noundef %i.eb, i64 noundef %i.ec, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ed) #36
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.ee = icmp ult i64 %i.dq, 576460752303423488
  call void @llvm.assume(i1 %i.ee)
  %i.ef = add nsw i64 %i.dq, -1                   ; 3 uses
  %i.eg = icmp ult i64 %i.ef, %.sroa.03.0.i89287
  br i1 %i.eg, label %.invoke263, label %bb.ac, !prof !1581

.invoke263:                                       ; preds = %bb.ab, %bb.aa
  %i.eh = phi i64 [ %i.bp, %bb.aa ], [ %.sroa.03.0.i89287, %bb.ab ]
  %i.ei = phi i64 [ %.sroa.03.0.i286, %bb.aa ], [ %i.ef, %bb.ab ]
  %i.ej = phi i64 [ %i.dk, %bb.aa ], [ %i.dq, %bb.ab ]
  %i.ek = phi ptr [ @113, %bb.aa ], [ @112, %bb.ab ]
  invoke void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.eh, i64 noundef %i.ei, i64 noundef %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ek) #36
end_hunk_0
