Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_expand-f280addaac0e5f6d.hir_expand.23a55d86e4a77d82-cgu.00?download=true
inline.NumInlined: 1419
inline.NumDeleted: 640
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_RNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21parse_adt_from_syntax:bb.a

.noexc180:                                        ; preds = %bb.h
  %i.am = extractvalue { i64, i64 } %i.al, 0
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.l, label %bb.g

bb.i:                                             ; preds = %.noexc179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2453
  %.val.pre.i = load i64, ptr %.sroa.764.0..sroa_idx, align 8, !range !117, !alias.scope !2447, !noalias !2452
  %i.ao = icmp eq i64 %.val.pre.i, 0
  %.val13.i = load ptr, ptr %i.aj, align 8, !alias.scope !2447, !noalias !2452 ; 3 uses
  %i.ap = icmp eq ptr %.val13.i, null
  %or.cond.i27.i = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %or.cond.i27.i, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.val13.i, i64 48 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !noundef !5
  %i.as = add i32 %i.ar, -1                       ; 2 uses
  store i32 %i.as, ptr %i.aq, align 4
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val13.i) #25
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %.noexc180
  %i.au = extractvalue { i64, i64 } %i.al, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2453
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %.sroa.764.0..sroa_idx, align 8, !alias.scope !2447, !noalias !2452
  br label %.body

bb.n:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.aw = tail call fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4NameECs33K2ylI4knu_10hir_expand(ptr nonnull %.8.val) #22 ; 10 uses
  %i.ax = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes16GenericParamListECs33K2ylI4knu_10hir_expand(ptr nonnull %.8.val)
          to label %bb.ar unwind label %bb.aq     ; 10 uses

bb.o:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.ay = tail call fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4NameECs33K2ylI4knu_10hir_expand(ptr nonnull %.8.val) #22 ; 4 uses
  %i.az = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes16GenericParamListECs33K2ylI4knu_10hir_expand(ptr nonnull %.8.val)
          to label %bb.bs unwind label %bb.br     ; 4 uses

.loopexit:                                        ; preds = %bb.g, %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_RINvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB6_4FuseINtNtB8_3map3MapINtNtBc_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11VariantListENCNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21parse_adt_from_syntax0EEINtB6_8FuseImplBZ_E8try_folduNCINvNvMsg_NtB8_7flattenINtB4C_13FlattenCompatppE13iter_try_fold7flattenINtB1J_11AstChildrenNtB1F_7VariantEuINtNtNtBc_3ops12control_flow11ControlFlowjENCINvNvXsi_B4C_B4P_NtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB5B_uB6b_NCINvNvB7b_8position5checkB5V_NCB2G_s_0E0E0E0B6b_EB2M_.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.e, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.e ], [ %i.av, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11VariantListEINtB1L_11AstChildrenNtB1H_7VariantENCNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21parse_adt_from_syntax0EEB3n_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.q) #23
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit unwind label %bb.an

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes7VariantEEECs33K2ylI4knu_10hir_expand.exit21.i, %bb.i, %bb.j, %bb.k
  store i64 0, ptr %.sroa.764.0..sroa_idx, align 8, !alias.scope !2447, !noalias !2452
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.b, %bb.p
  %.sroa.0.0.i57 = phi i64 [ 0, %bb.p ], [ 1, %bb.b ], [ 1, %bb.l ]
  %i.ba = phi i64 [ undef, %bb.p ], [ %i.z, %bb.b ], [ %i.au, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11VariantListEINtB1L_11AstChildrenNtB1H_7VariantENCNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21parse_adt_from_syntax0EEB3n_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.bb = call fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4NameECs33K2ylI4knu_10hir_expand(ptr nonnull %.8.val) #22 ; 7 uses
  %i.bc = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes16GenericParamListECs33K2ylI4knu_10hir_expand(ptr nonnull %.8.val)
          to label %bb.u unwind label %bb.t       ; 7 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.v, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit, %bb.w, %bb.t
  %.pn139 = phi { ptr, i32 } [ %i.bi, %bb.t ], [ %.pn137, %bb.w ], [ %.pn137, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit ], [ %.pn137, %bb.v ] ; 3 uses
  %i.bd = icmp eq ptr %i.bb, null
  br i1 %i.bd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit, label %bb.r

bb.r:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 48 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !noundef !5
  %i.bg = add i32 %i.bf, -1                       ; 2 uses
  store i32 %i.bg, ptr %i.be, align 4
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.s, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bb) #25
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit unwind label %bb.an

bb.t:                                             ; preds = %bb.ak, %bb.q
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit

bb.u:                                             ; preds = %bb.q
  %i.bj = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes11WhereClauseECs33K2ylI4knu_10hir_expand(ptr nonnull %.8.val)
          to label %bb.y unwind label %bb.x       ; 7 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.aa, %bb.z, %bb.ab, %bb.x
  %.pn137 = phi { ptr, i32 } [ %i.bp, %bb.x ], [ %i.br, %bb.ab ], [ %i.br, %bb.z ], [ %i.br, %bb.aa ] ; 3 uses
  %i.bk = icmp eq ptr %i.bc, null
  br i1 %i.bk, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit, label %bb.v

bb.v:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !noundef !5
  %i.bn = add i32 %i.bm, -1                       ; 2 uses
  store i32 %i.bn, ptr %i.bl, align 4
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.w, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bc) #25
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit unwind label %bb.an

bb.x:                                             ; preds = %bb.ag, %bb.u
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit

bb.y:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.bq = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes11VariantListECs33K2ylI4knu_10hir_expand(ptr nonnull %.8.val)
          to label %bb.ac unwind label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.ac
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bs = icmp eq ptr %i.bj, null
  br i1 %i.bs, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 48 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !noundef !5
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.ab, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bj) #25
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit unwind label %bb.an

bb.ac:                                            ; preds = %bb.y
  %i.bx = load ptr, ptr %i.t, align 8, !nonnull !5, !align !517, !noundef !5
  store i64 1, ptr %i.o, align 8
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.bq, ptr %.sroa.476.0..sroa_idx, align 8
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.577.0..sroa_idx, align 8
  %.sroa.779.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i64 0, ptr %.sroa.779.0..sroa_idx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr %2, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store ptr %i.bx, ptr %i.bz, align 8
  invoke void @_RINvNtNtCshzWfHUSfYae_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_7flatten7FlatMapINtNtB6_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11VariantListEINtB1Y_11AstChildrenNtB1U_7VariantENCNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21parse_adt_from_syntaxs0_0ENCB3u_s1_0ETNtCs4dcH4YgJDq_2tt5IdentNtB3w_12VariantShapeEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtB3A_11ExpandErrorENCINvXso_B5M_IB5K_INtNtCsbSS6DM8SDEO_5alloc3vec3VecB4Z_EB6w_EINtNtNtB4_6traits7collect12FromIteratorIB5K_B4Z_B6w_EE9from_iterBQ_E0B78_EB3A_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.o)
          to label %bb.ad unwind label %bb.z

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ca = load i64, ptr %i.p, align 8, !range !652, !noundef !5 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  br i1 %i.cb, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cd, ptr %i.ce, align 8
  store i64 -1, ptr %0, align 8
  %i.cf = icmp eq ptr %i.bj, null
  br i1 %i.cf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit185, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 48 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !noundef !5
  %i.ci = add i32 %i.ch, -1                       ; 2 uses
  store i32 %i.ci, ptr %i.cg, align 4
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.ag, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit185

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bj) #25
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit185 unwind label %bb.x

bb.ah:                                            ; preds = %bb.ad
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.583.0.copyload = load i64, ptr %.sroa.583.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.bs, %bb.be, %bb.ah
  %.sroa.10.0 = phi i64 [ %.sroa.583.0.copyload, %bb.ah ], [ undef, %bb.be ], [ undef, %bb.bs ]
  %.sroa.824.0 = phi i64 [ %i.ca, %bb.ah ], [ %i.ed, %bb.be ], [ undef, %bb.bs ]
  %.sroa.822.0 = phi ptr [ %i.cd, %bb.ah ], [ %.sroa.556.0.copyload, %bb.be ], [ undef, %bb.bs ]
  %.sroa.4.0 = phi i64 [ %i.ba, %bb.ah ], [ %i.dt, %bb.be ], [ undef, %bb.bs ]
  %.sroa.022.0 = phi i64 [ %.sroa.0.0.i57, %bb.ah ], [ 2, %bb.be ], [ 4, %bb.bs ]
  %.sroa.021.0 = phi ptr [ %i.bj, %bb.ah ], [ %i.dc, %bb.be ], [ %i.fg, %bb.bs ] ; 8 uses
  %.sroa.0115.0 = phi ptr [ %i.bb, %bb.ah ], [ %i.aw, %bb.be ], [ %i.ay, %bb.bs ] ; 4 uses
  %.sroa.0116.0 = phi ptr [ %i.bc, %bb.ah ], [ %i.ax, %bb.be ], [ %i.az, %bb.bs ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 %.sroa.022.0, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.824.0, ptr %.sroa.623.0..sroa_idx, align 8
  %.sroa.824.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %.sroa.822.0, ptr %.sroa.824.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) @88, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 1, ptr %i.l, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sroa.0116.0, ptr %.sroa.491.0..sroa_idx, align 8
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.592.0..sroa_idx, align 8
  %.sroa.794.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 0, ptr %.sroa.794.0..sroa_idx, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %i.n, ptr %i.ck, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store ptr %i.t, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro8AdtParamEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB2C_7flatten7FlatMapINtNtB2G_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEINtNtB2C_10filter_map9FilterMapINtB4f_11AstChildrenNtB4b_12GenericParamENCNvMsO_NtB4f_8node_extB49_20type_or_const_params0ENCNvB13_21parse_adt_from_syntaxs2_0ENCB7g_s3_0EE9from_iterB17_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.l)
          to label %bb.bx unwind label %bb.bw

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit185: ; preds = %bb.af, %bb.ae, %bb.ag
  %i.cl = icmp eq ptr %i.bc, null
  br i1 %i.cl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit187, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit185
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !noundef !5
  %i.co = add i32 %i.cn, -1                       ; 2 uses
  store i32 %i.co, ptr %i.cm, align 4
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.ak, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit187

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bc) #25
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit187 unwind label %bb.t

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit187: ; preds = %bb.aj, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit185, %bb.ak
  %i.cq = icmp eq ptr %i.bb, null
  br i1 %i.cq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit188, label %bb.al

bb.al:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit187
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bb, i64 48 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !noundef !5
  %i.ct = add i32 %i.cs, -1                       ; 2 uses
  store i32 %i.ct, ptr %i.cr, align 4
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.am, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit188

bb.am:                                            ; preds = %bb.al
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bb) #25
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit188

bb.an:                                            ; preds = %bb.ek, %bb.ei, %bb.cd, %.body246, %bb.bv, %bb.bq, %bb.bl, %bb.bh, %bb.ay, %bb.at, %bb.ap, %bb.ab, %bb.w, %bb.s, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1A_.exit.thread, %bb.dr, %.body217, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseECs33K2ylI4knu_10hir_expand.exit, %.body
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit: ; preds = %bb.ej, %bb.ek, %bb.bp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit207, %bb.bq, %bb.bk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit198.a, %bb.bl, %bb.ao, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit192, %bb.ap, %bb.r, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit, %bb.s, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseECs33K2ylI4knu_10hir_expand.exit251, %.body
  %.pn139.pn = phi { ptr, i32 } [ %.pn122, %bb.bk ], [ %.pn, %bb.bp ], [ %.pn135, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseECs33K2ylI4knu_10hir_expand.exit251 ], [ %eh.lpad-body, %.body ], [ %.pn119.pn, %bb.ao ], [ %.pn139, %bb.r ], [ %.pn139, %bb.s ], [ %.pn139, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit ], [ %.pn119.pn, %bb.ap ], [ %.pn119.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit192 ], [ %.pn122, %bb.bl ], [ %.pn122, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit198.a ], [ %.pn, %bb.bq ], [ %.pn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit207 ], [ %.pn135, %bb.ek ], [ %.pn135, %bb.ej ]
  resume { ptr, i32 } %.pn139.pn

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit192: ; preds = %bb.as, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit194.a, %bb.at, %bb.aq
  %.pn119.pn = phi { ptr, i32 } [ %i.db, %bb.aq ], [ %.pn119, %bb.at ], [ %.pn119, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit194.a ], [ %.pn119, %bb.as ] ; 3 uses
  %i.cw = icmp eq ptr %i.aw, null
  br i1 %i.cw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit, label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit192
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !noundef !5
  %i.cz = add i32 %i.cy, -1                       ; 2 uses
  store i32 %i.cz, ptr %i.cx, align 4
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.ap, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aw) #25
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit unwind label %bb.an

bb.aq:                                            ; preds = %bb.n
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit192

bb.ar:                                            ; preds = %bb.n
  %i.dc = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes11WhereClauseECs33K2ylI4knu_10hir_expand(ptr nonnull %.8.val)
          to label %bb.av unwind label %bb.au     ; 7 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit194.a: ; preds = %bb.ax, %bb.aw, %bb.ay, %bb.au
  %.pn119 = phi { ptr, i32 } [ %i.di, %bb.au ], [ %i.dk, %bb.ay ], [ %i.dk, %bb.aw ], [ %i.dk, %bb.ax ] ; 3 uses
  %i.dd = icmp eq ptr %i.ax, null
  br i1 %i.dd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit192, label %bb.as

bb.as:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit194.a
  %i.de = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !noundef !5
  %i.dg = add i32 %i.df, -1                       ; 2 uses
  store i32 %i.dg, ptr %i.de, align 4
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.at, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit192

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ax) #25
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit192 unwind label %bb.an

bb.au:                                            ; preds = %bb.ar
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit194.a

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.dj = invoke fastcc { i64, ptr } @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes9FieldListECs33K2ylI4knu_10hir_expand(ptr nonnull %.8.val)
          to label %bb.az unwind label %bb.aw     ; 2 uses

bb.aw:                                            ; preds = %bb.av, %bb.az
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dl = icmp eq ptr %i.dc, null
  br i1 %i.dl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit194.a, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 48 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !noundef !5
  %i.do = add i32 %i.dn, -1                       ; 2 uses
  store i32 %i.do, ptr %i.dm, align 4
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.ay, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit194.a

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.dc) #25
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit194.a unwind label %bb.an

bb.az:                                            ; preds = %bb.av
  %i.dq = extractvalue { i64, ptr } %i.dj, 0
  %i.dr = extractvalue { i64, ptr } %i.dj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false)
  %i.ds = load ptr, ptr %i.t, align 8, !nonnull !5, !align !517, !noundef !5
  invoke void @_RNvMs_NtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macroNtB4_12VariantShape4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(20) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ds, i64 noundef %i.dq, ptr %i.dr)
          to label %bb.ba unwind label %bb.aw

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dt = load i64, ptr %i.r, align 8, !range !2461, !noundef !5 ; 2 uses
  %i.du = icmp eq i64 %i.dt, -1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  br i1 %i.du, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dw, ptr %i.dx, align 8
  store i64 -1, ptr %0, align 8
  %i.dy = icmp eq ptr %i.dc, null
  br i1 %i.dy, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit196, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dc, i64 48 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !noundef !5
  %i.eb = add i32 %i.ea, -1                       ; 2 uses
  store i32 %i.eb, ptr %i.dz, align 4
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.bd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit196

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.dc) #25
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit196 unwind label %bb.bf

bb.be:                                            ; preds = %bb.ba
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.556.0.copyload = load ptr, ptr %.sroa.559.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ed = ptrtoint ptr %i.dw to i64
  br label %bb.ai

bb.bf:                                            ; preds = %bb.bd
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ef = icmp eq ptr %i.ax, null
  br i1 %i.ef, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit198.a, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !noundef !5
  %i.ei = add i32 %i.eh, -1                       ; 2 uses
  store i32 %i.ei, ptr %i.eg, align 4
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.bh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit198.a

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ax) #25
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit198.a unwind label %bb.an

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit196: ; preds = %bb.bc, %bb.bb, %bb.bd
  %i.ek = icmp eq ptr %i.ax, null
  br i1 %i.ek, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit200, label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit196
  %i.el = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !noundef !5
  %i.en = add i32 %i.em, -1                       ; 2 uses
  store i32 %i.en, ptr %i.el, align 4
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.bj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit200

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ax) #25
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit200 unwind label %bb.bm

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit198.a: ; preds = %bb.bg, %bb.bf, %bb.bh, %bb.bm
  %.pn122 = phi { ptr, i32 } [ %i.eu, %bb.bm ], [ %i.ee, %bb.bh ], [ %i.ee, %bb.bf ], [ %i.ee, %bb.bg ] ; 3 uses
  %i.ep = icmp eq ptr %i.aw, null
  br i1 %i.ep, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit, label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit198.a
  %i.eq = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !noundef !5
  %i.es = add i32 %i.er, -1                       ; 2 uses
  store i32 %i.es, ptr %i.eq, align 4
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.bl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aw) #25
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit unwind label %bb.an

bb.bm:                                            ; preds = %bb.bj
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit198.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit200: ; preds = %bb.bi, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseEECs33K2ylI4knu_10hir_expand.exit196, %bb.bj
  %i.ev = icmp eq ptr %i.aw, null
  br i1 %i.ev, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit188, label %bb.bn

bb.bn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit200
  %i.ew = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !noundef !5
  %i.ey = add i32 %i.ex, -1                       ; 2 uses
  store i32 %i.ey, ptr %i.ew, align 4
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.bo, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit188

bb.bo:                                            ; preds = %bb.bn
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.aw) #25
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit188

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit188: ; preds = %bb.bo, %bb.bn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit200, %bb.am, %bb.al, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit187, %bb.eg, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1A_.exit239
  ret void

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit207: ; preds = %bb.bu, %bb.bt, %bb.bv, %bb.br
  %.pn = phi { ptr, i32 } [ %i.ff, %bb.br ], [ %i.fh, %bb.bv ], [ %i.fh, %bb.bt ], [ %i.fh, %bb.bu ] ; 3 uses
  %i.fa = icmp eq ptr %i.ay, null
  br i1 %i.fa, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit, label %bb.bp

bb.bp:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit207
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ay, i64 48 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !noundef !5
  %i.fd = add i32 %i.fc, -1                       ; 2 uses
  store i32 %i.fd, ptr %i.fb, align 4
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.bq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ay) #25
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4NameEECs33K2ylI4knu_10hir_expand.exit unwind label %bb.an

bb.br:                                            ; preds = %bb.o
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit207

bb.bs:                                            ; preds = %bb.o
  %i.fg = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes11WhereClauseECs33K2ylI4knu_10hir_expand(ptr nonnull %.8.val)
          to label %bb.ai unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fi = icmp eq ptr %i.az, null
  br i1 %i.fi, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit207, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fj = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !noundef !5
  %i.fl = add i32 %i.fk, -1                       ; 2 uses
  store i32 %i.fl, ptr %i.fj, align 4
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.bv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit207

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.az) #25
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEECs33K2ylI4knu_10hir_expand.exit207 unwind label %bb.an

.body246:                                         ; preds = %bb.eb, %bb.bw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseECs33K2ylI4knu_10hir_expand.exit
  %.sroa.055.0 = phi i1 [ %.not, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseECs33K2ylI4knu_10hir_expand.exit ], [ %.sroa.055.1, %bb.bw ], [ %.not, %bb.eb ]
  %.sroa.056.0 = phi i1 [ %.sroa.056.2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseECs33K2ylI4knu_10hir_expand.exit ], [ %.sroa.056.1, %bb.bw ], [ false, %bb.eb ]
  %.pn131 = phi { ptr, i32 } [ %.pn129, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseECs33K2ylI4knu_10hir_expand.exit ], [ %i.fn, %bb.bw ], [ %i.iz, %bb.eb ]
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs33K2ylI4knu_10hir_expand4name4NameuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1A_.exit.thread unwind label %bb.an

bb.bw:                                            ; preds = %bb.ec, %bb.ai
  %.sroa.055.1 = phi i1 [ %.not, %bb.ec ], [ true, %bb.ai ]
  %.sroa.056.1 = phi i1 [ false, %bb.ec ], [ true, %bb.ai ]
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %.body246

bb.bx:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.not = icmp eq ptr %.sroa.021.0, null          ; 7 uses
  br i1 %.not, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.021.0, i64 48 ; 6 uses
  %i.fp = load i32, ptr %i.fo, align 4, !noundef !5 ; 2 uses
  %i.fq = icmp eq i32 %i.fp, -1
  br i1 %i.fq, label %bb.ca, label %bb.bz, !prof !110

bb.bz:                                            ; preds = %bb.by
  %i.fr = add nuw i32 %i.fp, 1
  store i32 %i.fr, ptr %i.fo, align 4
  %i.fs = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %.sroa.021.0)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit unwind label %bb.cc

bb.ca:                                            ; preds = %bb.by
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #28
          to label %.noexc210 unwind label %bb.cc

.noexc210:                                        ; preds = %bb.ca
  unreachable

bb.cb:                                            ; preds = %bb.bx
  store i64 0, ptr %i.k, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %i.fu, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseECs33K2ylI4knu_10hir_expand.exit213

bb.cc:                                            ; preds = %bb.ca, %bb.bz, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = load i32, ptr %i.fo, align 4, !noundef !5
  %i.fx = add i32 %i.fw, -1                       ; 2 uses
  store i32 %i.fx, ptr %i.fo, align 4
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %bb.cd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseECs33K2ylI4knu_10hir_expand.exit

bb.cd:                                            ; preds = %bb.cc
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.021.0) #25
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseECs33K2ylI4knu_10hir_expand.exit unwind label %bb.an

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit: ; preds = %bb.bz
  %i.fz = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.fs, ptr %i.fz, align 8
  store ptr %i.t, ptr %i.j, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %2, ptr %i.ga, align 8
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs4dcH4YgJDq_2tt7storage10TopSubtreeEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB31_9generated5nodes9WherePredENCNvNtNtCs33K2ylI4knu_10hir_expand7builtin12derive_macro21parse_adt_from_syntaxs4_0EE9from_iterB4o_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.ce unwind label %bb.cc

bb.ce:                                            ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.gb = load i32, ptr %i.fo, align 4, !noundef !5
  %i.gc = add i32 %i.gb, -1                       ; 2 uses
  store i32 %i.gc, ptr %i.fo, align 4
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.cf, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11WhereClauseECs33K2ylI4knu_10hir_expand.exit213
end_hunk_0
