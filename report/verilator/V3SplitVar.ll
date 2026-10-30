Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3SplitVar?download=true
inline.NumInlined: 4984
inline.NumDeleted: 1817
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN21SplitPackedVarVisitor14findCandidatesERK12RefsInModuleRKSt13unordered_setIP6AstVarSt4hashIS5_ESt8equal_toIS5_ESaIS5_EE:bb.a
bb.i:                                             ; preds = %_ZN20AstUserAllocatorBaseI6AstVarZN21SplitPackedVarVisitor14findCandidatesERK12RefsInModuleRKSt13unordered_setIPS0_St4hashIS6_ESt8equal_toIS6_ESaIS6_EEE7VarInfoLi3EEclIJEEERSF_S6_DpOT_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 260
  %i.at = load i64, ptr %i.as, align 4
  %i.au = and i64 %i.at, 32768
  %.not124 = icmp eq i64 %i.au, 0
  br i1 %.not124, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %.0.i, align 8, !tbaa !757
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRKiS6_EEERS1_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 249
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !194
  %.not125 = icmp eq i8 %i.aw, 0
  br i1 %.not125, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %.0.i, align 8, !tbaa !757
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRKiS6_EEERS1_DpOT_.exit

bb.m:                                             ; preds = %bb.k
  %i.ax = load i64, ptr %i.i, align 8, !tbaa !86
  %.not.not.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.not.i.i.i, label %.preheader, label %bb.o

.preheader:                                       ; preds = %bb.m, %bb.n
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.n ], [ %i.k, %bb.m ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !85 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit126, label %bb.n

bb.n:                                             ; preds = %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !92
  %i.ba = icmp eq ptr %i.s, %i.az
  br i1 %i.ba, label %.loopexit127, label %.preheader, !llvm.loop !744

bb.o:                                             ; preds = %bb.m
  %i.bb = ptrtoint ptr %i.s to i64
  %i.bc = load i64, ptr %i.j, align 8, !tbaa !80  ; 2 uses
  %i.bd = urem i64 %i.bb, %i.bc                   ; 2 uses
  %i.be = load ptr, ptr %1, align 8, !tbaa !79
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !93 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i, label %.loopexit126, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !85 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !92
  %i.bk = icmp eq ptr %i.s, %i.bj
  br i1 %i.bk, label %.loopexit127, label %.lr.ph.i.i.i.i.i

bb.q:                                             ; preds = %bb.r
  %i.bl = icmp eq ptr %i.s, %i.bo
  br i1 %i.bl, label %.loopexit127, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.p, %bb.q
  %.020.i.i.i.i.i = phi ptr [ %i.bm, %bb.q ], [ %i.bh, %bb.p ]
  %i.bm = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !85 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit126, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !92 ; 2 uses
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = urem i64 %i.bp, %i.bc
  %.not19.i.i.i.i.i = icmp eq i64 %i.bq, %i.bd
  br i1 %.not19.i.i.i.i.i, label %bb.q, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !9

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.r
  br label %.loopexit126, !llvm.loop !9

.loopexit127:                                     ; preds = %bb.q, %bb.n, %bb.p
  store i8 1, ptr %.0.i, align 8, !tbaa !757
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRKiS6_EEERS1_DpOT_.exit

.loopexit126:                                     ; preds = %.lr.ph.i.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i.i, %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !50 ; 6 uses
  %.not.i83 = icmp eq ptr %i.bs, null
  br i1 %.not.i83, label %_ZN7AstNode4castI6AstSelS_EEPT_PT0_.exit.thread, label %bb.s

bb.s:                                             ; preds = %.loopexit126
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !239
  %.not1.i = icmp eq ptr %i.bu, %i.q
  br i1 %.not1.i, label %_ZN7AstNode4castI6AstSelS_EEPT_PT0_.exit.thread, label %_ZNK7AstNode11firstAbovepEv.exit

_ZNK7AstNode11firstAbovepEv.exit:                 ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.bv, align 8, !tbaa !51
  %i.bw = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 246
  br i1 %i.bw, label %_ZN7AstNode4castI6AstSelS_EEPT_PT0_.exit, label %_ZN7AstNode4castI6AstSelS_EEPT_PT0_.exit.thread

_ZN7AstNode4castI6AstSelS_EEPT_PT0_.exit:         ; preds = %_ZNK7AstNode11firstAbovepEv.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !213
  %.not72 = icmp eq ptr %i.q, %i.by
  br i1 %.not72, label %bb.t, label %_ZN7AstNode4castI6AstSelS_EEPT_PT0_.exit.thread

_ZN7AstNode4castI6AstSelS_EEPT_PT0_.exit.thread:  ; preds = %bb.s, %.loopexit126, %_ZNK7AstNode11firstAbovepEv.exit, %_ZN7AstNode4castI6AstSelS_EEPT_PT0_.exit
  store i8 1, ptr %.0.i, align 8, !tbaa !757
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRKiS6_EEERS1_DpOT_.exit

bb.t:                                             ; preds = %_ZN7AstNode4castI6AstSelS_EEPT_PT0_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !227 ; 3 uses
  %.not.i86 = icmp eq ptr %i.ca, null
  br i1 %.not.i86, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %.sroa.0.0.copyload.i.i.i87 = load i16, ptr %i.cb, align 8, !tbaa !51
  %i.cc = icmp eq i16 %.sroa.0.0.copyload.i.i.i87, 121
  br i1 %i.cc, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit, label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  store i8 1, ptr %.0.i, align 8, !tbaa !757
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRKiS6_EEERS1_DpOT_.exit

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit: ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 152
  %i.ce = invoke noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cd)
          to label %_ZNK8AstConst6toSIntEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNK8AstConst6toSIntEv.exit:                      ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 176
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !394
  %i.ch = add i32 %i.ce, -1
  %i.ci = add i32 %i.ch, %i.cg                    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !758 ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !395
  %.not.i90 = icmp eq ptr %i.cl, %i.cn
  br i1 %.not.i90, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNK8AstConst6toSIntEv.exit
  store i32 %i.ce, ptr %i.cl, align 4, !tbaa !397
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i32 %i.ci, ptr %i.co, align 4, !tbaa !398
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.cp, ptr %i.ck, align 8, !tbaa !758
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRKiS6_EEERS1_DpOT_.exit

bb.x:                                             ; preds = %_ZNK8AstConst6toSIntEv.exit
  %i.cq = load ptr, ptr %i.cj, align 8, !tbaa !399 ; 5 uses
  %i.cr = ptrtoint ptr %i.cl to i64
  %i.cs = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 3 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775800
  br i1 %i.cu, label %bb.y, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.557) #27
          to label %.noexc94.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc94.a:                                       ; preds = %bb.y
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.x
  %i.cv = ashr exact i64 %i.ct, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  %i.cw = add nsw i64 %.sroa.speculated.i.i.i, %i.cv ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.cv
  %i.cy = call i64 @llvm.umin.i64(i64 %i.cw, i64 1152921504606846975)
  %i.cz = select i1 %i.cx, i64 1152921504606846975, i64 %i.cy ; 3 uses
  %.not.i.i.i91 = icmp ne i64 %i.cz, 0
  call void @llvm.assume(i1 %.not.i.i.i91)
  %i.da = shl nuw nsw i64 %i.cz, 3
  %i.db = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #28
          to label %.noexc95 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc95:                                         ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ct ; 2 uses
  store i32 %i.ce, ptr %i.dc, align 4, !tbaa !397
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store i32 %i.ci, ptr %i.dd, align 4, !tbaa !398
  %.not10.i.i.i.i.i = icmp eq ptr %i.cq, %i.cl
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i92

.lr.ph.i.i.i.i.i92:                               ; preds = %.noexc95, %.lr.ph.i.i.i.i.i92
  %.012.i.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i92 ], [ %i.db, %.noexc95 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i92 ], [ %i.cq, %.noexc95 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !759)
  call void @llvm.experimental.noalias.scope.decl(metadata !760)
  %i.de = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !760
  store i64 %i.de, ptr %.012.i.i.i.i.i, align 4, !alias.scope !759
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i93 = icmp eq ptr %i.df, %i.cl
  br i1 %.not.i.i.i.i.i93, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i92, !llvm.loop !748

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i92, %.noexc95
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.db, %.noexc95 ], [ %i.dg, %.lr.ph.i.i.i.i.i92 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i34.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKiS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  %i.di = load ptr, ptr %i.cm, align 8, !tbaa !395
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = sub i64 %i.dj, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.dk) #24
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKiS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKiS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.z, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.db, ptr %i.cj, align 8, !tbaa !399
  store ptr %i.dh, ptr %i.ck, align 8, !tbaa !758
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cz
  store ptr %i.dl, ptr %i.cm, align 8, !tbaa !395
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRKiS6_EEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJRKiS6_EEERS1_DpOT_.exit: ; preds = %bb.w, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJRKiS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %_ZN7AstNode4castI6AstSelS_EEPT_PT0_.exit.thread, %bb.v, %_ZN20AstUserAllocatorBaseI6AstVarZN21SplitPackedVarVisitor14findCandidatesERK12RefsInModuleRKSt13unordered_setIPS0_St4hashIS6_ESt8equal_toIS6_ESaIS6_EEE7VarInfoLi3EEclIJEEERSF_S6_DpOT_.exit, %.loopexit127, %bb.l, %bb.j
  %i.dm = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0109.0134) #26 ; 2 uses
  %.not121 = icmp eq ptr %i.dm, %i.d
  br i1 %.not121, label %._crit_edge, label %bb.d

._crit_edge139:                                   ; preds = %bb.af, %._crit_edge
  call void @_ZNSt5dequeIZN21SplitPackedVarVisitor14findCandidatesERK12RefsInModuleRKSt13unordered_setIP6AstVarSt4hashIS6_ESt8equal_toIS6_ESaIS6_EEE7VarInfoSaISF_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  invoke void @_ZN15VNUserInUseBase4freeEiRjRb(i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12VNUser3InUse12s_userCntGblE, ptr noundef nonnull align 1 dereferenceable(1) @_ZN12VNUser3InUse10s_userBusyE)
          to label %_ZN12VNUser3InUseD2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %._crit_edge139
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  call void @__clang_call_terminate(ptr %i.do) #25
  unreachable

_ZN12VNUser3InUseD2Ev.exit:                       ; preds = %._crit_edge139
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

.lr.ph138:                                        ; preds = %._crit_edge, %bb.af
  %.sroa.099.0136 = phi ptr [ %i.fi, %bb.af ], [ %i.m, %._crit_edge ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.099.0136, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !92 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 136
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !380
  %i.dt = load i32, ptr @_ZN12VNUser3InUse12s_userCntGblE, align 4, !tbaa !96
  %i.du = icmp ne i32 %i.ds, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 128
  %i.dw = load i64, ptr %i.dv, align 8            ; 2 uses
  %i.dx = inttoptr i64 %i.dw to ptr               ; 3 uses
  %.not123 = icmp eq i64 %i.dw, 0
  %.not = select i1 %i.du, i1 true, i1 %.not123
  br i1 %.not, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph138
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !757, !range !137, !noundef !138
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !761 ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !761 ; 4 uses
  %.not.i.i96 = icmp eq ptr %i.eb, %i.ed
  br i1 %.not.i.i96, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN21SplitPackedVarVisitor14findCandidatesERK12RefsInModuleRKSt13unordered_setIP6AstVarSt4hashISF_ESt8equal_toISF_ESaISF_EEEUlRKS3_SP_E_EvT_SR_T0_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.eb to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = ashr exact i64 %i.eg, 3
  %i.ei = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.eh, i1 true)
  %i.ej = shl nuw nsw i64 %i.ei, 1
  %i.ek = xor i64 %i.ej, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN21SplitPackedVarVisitor14findCandidatesERK12RefsInModuleRKSt13unordered_setIP6AstVarSt4hashISH_ESt8equal_toISH_ESaISH_EEEUlRKS3_SR_E_EEEvT_SU_T0_T1_(ptr %i.eb, ptr %i.ed, i64 noundef %i.ek)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97:                                         ; preds = %bb.ad
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN21SplitPackedVarVisitor14findCandidatesERK12RefsInModuleRKSt13unordered_setIP6AstVarSt4hashISH_ESt8equal_toISH_ESaISH_EEEUlRKS3_SR_E_EEEvT_SU_T0_(ptr %i.eb, ptr %i.ed)
          to label %.noexc97._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN21SplitPackedVarVisitor14findCandidatesERK12RefsInModuleRKSt13unordered_setIP6AstVarSt4hashISF_ESt8equal_toISF_ESaISF_EEEUlRKS3_SP_E_EvT_SR_T0_.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc97._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN21SplitPackedVarVisitor14findCandidatesERK12RefsInModuleRKSt13unordered_setIP6AstVarSt4hashISF_ESt8equal_toISF_ESaISF_EEEUlRKS3_SP_E_EvT_SR_T0_.exit_crit_edge: ; preds = %.noexc97
  %.pre = load ptr, ptr %i.ec, align 8, !tbaa !758
  %.pre145 = load ptr, ptr %i.ea, align 8, !tbaa !399
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN21SplitPackedVarVisitor14findCandidatesERK12RefsInModuleRKSt13unordered_setIP6AstVarSt4hashISF_ESt8equal_toISF_ESaISF_EEEUlRKS3_SP_E_EvT_SR_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN21SplitPackedVarVisitor14findCandidatesERK12RefsInModuleRKSt13unordered_setIP6AstVarSt4hashISF_ESt8equal_toISF_ESaISF_EEEUlRKS3_SP_E_EvT_SR_T0_.exit: ; preds = %.noexc97._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN21SplitPackedVarVisitor14findCandidatesERK12RefsInModuleRKSt13unordered_setIP6AstVarSt4hashISF_ESt8equal_toISF_ESaISF_EEEUlRKS3_SP_E_EvT_SR_T0_.exit_crit_edge, %bb.ac
  %i.el = phi ptr [ %.pre145, %.noexc97._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN21SplitPackedVarVisitor14findCandidatesERK12RefsInModuleRKSt13unordered_setIP6AstVarSt4hashISF_ESt8equal_toISF_ESaISF_EEEUlRKS3_SP_E_EvT_SR_T0_.exit_crit_edge ], [ %i.eb, %bb.ac ] ; 3 uses
  %i.em = phi ptr [ %.pre, %.noexc97._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN21SplitPackedVarVisitor14findCandidatesERK12RefsInModuleRKSt13unordered_setIP6AstVarSt4hashISF_ESt8equal_toISF_ESaISF_EEEUlRKS3_SP_E_EvT_SR_T0_.exit_crit_edge ], [ %i.eb, %bb.ac ]
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.el to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = ashr exact i64 %i.ep, 3                 ; 2 uses
  %i.er = call i64 @llvm.usub.sat.i64(i64 %i.eq, i64 1)
  %exitcond.not174 = icmp ult i64 %i.eq, 2
  br i1 %exitcond.not174, label %._crit_edge178, label %.lr.ph176

bb.ae:                                            ; preds = %.lr.ph176
  %exitcond.not = icmp eq i64 %i.es, %i.er
  br i1 %exitcond.not, label %._crit_edge178, label %.lr.ph176, !llvm.loop !749

.lr.ph176:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN21SplitPackedVarVisitor14findCandidatesERK12RefsInModuleRKSt13unordered_setIP6AstVarSt4hashISF_ESt8equal_toISF_ESaISF_EEEUlRKS3_SP_E_EvT_SR_T0_.exit, %bb.ae
  %.0175 = phi i64 [ %i.es, %bb.ae ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN21SplitPackedVarVisitor14findCandidatesERK12RefsInModuleRKSt13unordered_setIP6AstVarSt4hashISF_ESt8equal_toISF_ESaISF_EEEUlRKS3_SP_E_EvT_SR_T0_.exit ] ; 2 uses
  %i.es = add nuw i64 %.0175, 1                   ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.0175 ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.es ; 2 uses
  %i.ev = load i32, ptr %i.et, align 4, !tbaa !397
  %i.ew = load i32, ptr %i.eu, align 4, !tbaa !397 ; 2 uses
  %i.ex = icmp eq i32 %i.ev, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ez = load i32, ptr %i.ey, align 4            ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = icmp eq i32 %i.ez, %i.fb
  %i.fd = select i1 %i.ex, i1 %i.fc, i1 false
  %i.fe = icmp slt i32 %i.ez, %i.ew
  %or.cond = select i1 %i.fd, i1 true, i1 %i.fe
  br i1 %or.cond, label %bb.ae, label %._crit_edge177, !llvm.loop !749

._crit_edge177:                                   ; preds = %.lr.ph176
  br label %._crit_edge178, !llvm.loop !749

._crit_edge178:                                   ; preds = %bb.ae, %._crit_edge177, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN21SplitPackedVarVisitor14findCandidatesERK12RefsInModuleRKSt13unordered_setIP6AstVarSt4hashISF_ESt8equal_toISF_ESaISF_EEEUlRKS3_SP_E_EvT_SR_T0_.exit
  %.2 = phi i64 [ 0, %._crit_edge177 ], [ 1, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEEZN21SplitPackedVarVisitor14findCandidatesERK12RefsInModuleRKSt13unordered_setIP6AstVarSt4hashISF_ESt8equal_toISF_ESaISF_EEEUlRKS3_SP_E_EvT_SR_T0_.exit ], [ 1, %bb.ae ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dq, i64 120
  store i64 %.2, ptr %i.ff, align 8, !tbaa !63
  %i.fg = load i32, ptr @_ZN12VNUser2InUse12s_userCntGblE, align 4, !tbaa !96
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dq, i64 116
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !400
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge178, %bb.ab, %.lr.ph138
  %i.fi = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.099.0136) #26 ; 2 uses
  %.not122 = icmp eq ptr %i.fi, %i.n
  br i1 %.not122, label %._crit_edge139, label %.lr.ph138

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %.noexc97, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.g, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit, %bb.y
  %lpad.loopexit.split-lp183 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt5dequeIZN21SplitPackedVarVisitor14findCandidatesERK12RefsInModuleRKSt13unordered_setIP6AstVarSt4hashIS6_ESt8equal_toIS6_ESaIS6_EEE7VarInfoSaISF_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #23
  br label %.body

.body:                                            ; preds = %bb.c, %bb.b, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn74.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp183, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.o, %bb.c ], [ %i.a, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @_ZN12VNUser3InUseD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn74.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12RefsInModule5visitEP9VNVisitor(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not4246 = icmp eq ptr %i.d, %i.e
  br i1 %.not4246, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.not4348 = icmp eq ptr %i.g, %i.h
  br i1 %.not4348, label %._crit_edge52, label %.lr.ph51

.lr.ph51:                                         ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.036.047 = phi ptr [ %i.o, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.036.047, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !92   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 312
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(152) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %1), !inline_history !1
  %i.o = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.036.047) #26 ; 2 uses
  %.not42 = icmp eq ptr %i.o, %i.e
  br i1 %.not42, label %._crit_edge, label %.lr.ph

._crit_edge52:                                    ; preds = %bb.j, %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !70   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.not4453 = icmp eq ptr %i.q, %i.r
  br i1 %.not4453, label %._crit_edge57, label %.lr.ph56

bb.b:                                             ; preds = %.lr.ph51, %bb.j
  %.sroa.032.049 = phi ptr [ %i.g, %.lr.ph51 ], [ %i.al, %bb.j ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.049, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !247  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !213  ; 3 uses
  %.not.i = icmp eq ptr %i.v, null
end_hunk_0
begin_hunk_1_@_ZNK12PackedVarRef9splitPlanEPK6AstVarb:bb.a
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.f) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = select i1 %.not.i.i, ptr %i.j, ptr %i.h
  %i.l = tail call noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.k, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !411  ; 2 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !412    ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3
  %i.t = add nsw i64 %i.s, 2                      ; 4 uses
  %i.u = icmp ugt i64 %i.t, 1152921504606846975
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.595) #27
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not272 = icmp eq i64 %i.t, 0
  br i1 %.not272, label %_ZNSt6vectorISt4pairIibESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt4pairIibESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt4pairIibESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.e
  %i.v = shl nuw nsw i64 %i.t, 3
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28
          to label %_ZNSt12_Vector_baseISt4pairIibESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %.thread ; 2 uses

_ZNSt12_Vector_baseISt4pairIibESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt4pairIibESaIS1_EE11_M_allocateEm.exit.i
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.t
  %.pre = load ptr, ptr %1, align 8, !tbaa !435
  %.pre347 = load ptr, ptr %i.m, align 8, !tbaa !435
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE7reserveEm.exit

_ZNSt6vectorISt4pairIibESaIS1_EE7reserveEm.exit:  ; preds = %_ZNSt12_Vector_baseISt4pairIibESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.e
  %i.y = phi ptr [ %.pre347, %_ZNSt12_Vector_baseISt4pairIibESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.n, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %.pre, %_ZNSt12_Vector_baseISt4pairIibESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.50.9 = phi ptr [ %i.x, %_ZNSt12_Vector_baseISt4pairIibESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.e ] ; 2 uses
  %.sroa.27.4 = phi ptr [ %i.w, %_ZNSt12_Vector_baseISt4pairIibESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.e ] ; 4 uses
  %.not273313 = icmp eq ptr %i.z, %i.y
  br i1 %.not273313, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit72, %_ZNSt6vectorISt4pairIibESaIS1_EE7reserveEm.exit
  %.sroa.50.0.lcssa = phi ptr [ %.sroa.50.9, %_ZNSt6vectorISt4pairIibESaIS1_EE7reserveEm.exit ], [ %.sroa.50.11, %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit72 ] ; 24 uses
  %.sroa.27.0.lcssa = phi ptr [ %.sroa.27.4, %_ZNSt6vectorISt4pairIibESaIS1_EE7reserveEm.exit ], [ %.sroa.27.6, %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit72 ] ; 9 uses
  %.sroa.0213.0.lcssa = phi ptr [ %.sroa.27.4, %_ZNSt6vectorISt4pairIibESaIS1_EE7reserveEm.exit ], [ %.sroa.0213.11, %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit72 ] ; 26 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !418 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !213 ; 3 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !213 ; 3 uses
  %.not.i.i.i.i51 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i51, label %_ZNK8AstRange9leftConstEv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i16, ptr %i.ag, align 8, !tbaa !51
  %i.ah = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i.i, 121
  br i1 %i.ah, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i, label %_ZNK8AstRange9leftConstEv.exit.i.i

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i: ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  %i.aj = invoke noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ai)
          to label %_ZNK8AstRange9leftConstEv.exit.i.i unwind label %bb.ay

_ZNK8AstRange9leftConstEv.exit.i.i:               ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i, %bb.g, %bb.f
  %i.ak = phi i32 [ 0, %bb.g ], [ 0, %bb.f ], [ %i.aj, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !227 ; 3 uses
  %.not.i.i4.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i4.i.i, label %_ZNK8AstRange7loConstEv.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNK8AstRange9leftConstEv.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %.sroa.0.0.copyload.i.i.i.i5.i.i = load i16, ptr %i.an, align 8, !tbaa !51
  %i.ao = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i5.i.i, 121
  br i1 %i.ao, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i, label %_ZNK8AstRange7loConstEv.exit.i

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 152
  %i.aq = invoke noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ap)
          to label %_ZNK8AstRange7loConstEv.exit.i unwind label %bb.ay

_ZNK8AstRange7loConstEv.exit.i:                   ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i, %bb.h, %_ZNK8AstRange9leftConstEv.exit.i.i
  %i.ar = phi i32 [ 0, %bb.h ], [ 0, %_ZNK8AstRange9leftConstEv.exit.i.i ], [ %i.aq, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i ]
  %i.as = tail call noundef i32 @llvm.smin.i32(i32 %i.ak, i32 %i.ar)
  br label %_ZNK13AstBasicDType2loEv.exit

bb.i:                                             ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  %i.au = load i32, ptr %i.at, align 8, !tbaa !252
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 172
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !253
  %..i.i = tail call noundef i32 @llvm.smin.i32(i32 %i.au, i32 %i.aw)
  br label %_ZNK13AstBasicDType2loEv.exit

.thread:                                          ; preds = %bb.d, %_ZNSt12_Vector_baseISt4pairIibESaIS1_EE11_M_allocateEm.exit.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit157

.lr.ph:                                           ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE7reserveEm.exit, %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit72
  %.sroa.0213.0317 = phi ptr [ %.sroa.0213.11, %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit72 ], [ %.sroa.27.4, %_ZNSt6vectorISt4pairIibESaIS1_EE7reserveEm.exit ] ; 8 uses
  %.sroa.27.0316 = phi ptr [ %.sroa.27.6, %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit72 ], [ %.sroa.27.4, %_ZNSt6vectorISt4pairIibESaIS1_EE7reserveEm.exit ] ; 9 uses
  %.sroa.50.0315 = phi ptr [ %.sroa.50.11, %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit72 ], [ %.sroa.50.9, %_ZNSt6vectorISt4pairIibESaIS1_EE7reserveEm.exit ] ; 2 uses
  %.sroa.0210.0314 = phi ptr [ %i.ds, %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit72 ], [ %i.z, %_ZNSt6vectorISt4pairIibESaIS1_EE7reserveEm.exit ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0210.0314, i64 8 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !426 ; 3 uses
  %.not.i54 = icmp eq ptr %.sroa.27.0316, %.sroa.50.0315
  br i1 %.not.i54, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  store i32 %i.az, ptr %.sroa.27.0316, align 4, !tbaa !437
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.27.0316, i64 4
  store i8 0, ptr %i.ba, align 4, !tbaa !438
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit

bb.k:                                             ; preds = %.lr.ph
  %i.bb = ptrtoint ptr %.sroa.27.0316 to i64
  %i.bc = ptrtoint ptr %.sroa.0213.0317 to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 4 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.l, label %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.557) #27
          to label %.noexc55.a unwind label %.loopexit.split-lp

.noexc55.a:                                       ; preds = %bb.l
  unreachable

_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.bf = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.a = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.a, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 3 uses
  %.not.i.i.i.a = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.a)
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #28
          to label %.noexc56 unwind label %.loopexit ; 5 uses

.noexc56:                                         ; preds = %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd ; 2 uses
  store i32 %i.az, ptr %i.bm, align 4, !tbaa !437
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store i8 0, ptr %i.bn, align 4, !tbaa !438
  %.not10.i.i.i.i.i.a = icmp eq ptr %.sroa.0213.0317, %.sroa.27.0316
  br i1 %.not10.i.i.i.i.i.a, label %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.a

.lr.ph.i.i.i.i.i.a:                               ; preds = %.noexc56, %.lr.ph.i.i.i.i.i.a
  %.012.i.i.i.i.i.a = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.a ], [ %i.bl, %.noexc56 ] ; 2 uses
  %.0911.i.i.i.i.i.a = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.a ], [ %.sroa.0213.0317, %.noexc56 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %i.bo = load i64, ptr %.0911.i.i.i.i.i.a, align 4, !alias.scope !877
  store i64 %i.bo, ptr %.012.i.i.i.i.i.a, align 4, !alias.scope !876
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.a, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.a, i64 8 ; 2 uses
  %.not.i.i.i.i.i.a = icmp eq ptr %i.bp, %.sroa.27.0316
  br i1 %.not.i.i.i.i.i.a, label %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.a, !llvm.loop !789

_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i.a, %.noexc56
  %.0.lcssa.i.i.i.i.i.a = phi ptr [ %i.bl, %.noexc56 ], [ %i.bq, %.lr.ph.i.i.i.i.i.a ]
  %.not.i34.i.i = icmp eq ptr %.sroa.0213.0317, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0213.0317, i64 noundef %i.bd) #24
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  %.pre348 = load i32, ptr %i.ay, align 8, !tbaa !426
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.j
  %i.bs = phi i32 [ %.pre348, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.az, %bb.j ]
  %.sroa.50.10 = phi ptr [ %i.br, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.50.0315, %bb.j ] ; 5 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.a, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.27.0316, %bb.j ] ; 5 uses
  %.sroa.0213.10 = phi ptr [ %i.bl, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0213.0317, %bb.j ] ; 8 uses
  %.0.lcssa.i.i.i.i.i.pn440 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.pn to i64
  %.sroa.27.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0210.0314, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !427
  %i.bv = add i32 %i.bu, %i.bs                    ; 2 uses
  %.not.i57 = icmp eq ptr %.sroa.27.5, %.sroa.50.10
  br i1 %.not.i57, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit
  store i32 %i.bv, ptr %.sroa.27.5, align 4, !tbaa !437
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 12
  store i8 1, ptr %i.bw, align 4, !tbaa !438
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 16
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit72

bb.o:                                             ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit
  %i.by = ptrtoint ptr %.sroa.50.10 to i64
  %i.bz = ptrtoint ptr %.sroa.0213.10 to i64      ; 2 uses
  %i.ca = sub i64 %i.by, %i.bz                    ; 4 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %bb.p, label %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i58

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.557) #27
          to label %.noexc70 unwind label %.loopexit.split-lp279.loopexit.split-lp

.noexc70:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i58: ; preds = %bb.o
  %i.cc = ashr exact i64 %i.ca, 3                 ; 3 uses
  %.sroa.speculated.i.i.i59 = tail call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i59, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 1152921504606846975)
  %i.cg = select i1 %i.ce, i64 1152921504606846975, i64 %i.cf ; 3 uses
  %.not.i.i.i60 = icmp ne i64 %i.cg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i60)
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #28
          to label %.noexc71.a unwind label %.loopexit.split-lp279.loopexit.split-lp ; 6 uses

.noexc71.a:                                       ; preds = %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i58
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ca ; 2 uses
  store i32 %i.bv, ptr %i.cj, align 4, !tbaa !437
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i8 1, ptr %i.ck, align 4, !tbaa !438
  %.not10.i.i.i.i.i61 = icmp eq ptr %.sroa.0213.10, %.sroa.50.10
  br i1 %.not10.i.i.i.i.i61, label %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i66, label %.lr.ph.i.i.i.i.i62.preheader

.lr.ph.i.i.i.i.i62.preheader:                     ; preds = %.noexc71.a
  %i.cl = sub i64 %.0.lcssa.i.i.i.i.i.pn440, %i.bz ; 2 uses
  %i.cm = lshr i64 %i.cl, 3
  %i.cn = add nuw nsw i64 %i.cm, 1
  %xtraiter = and i64 %i.cn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i62.prol.loopexit, label %.lr.ph.i.i.i.i.i62.prol

.lr.ph.i.i.i.i.i62.prol:                          ; preds = %.lr.ph.i.i.i.i.i62.preheader, %.lr.ph.i.i.i.i.i62.prol
  %.012.i.i.i.i.i63.prol = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i62.prol ], [ %i.ci, %.lr.ph.i.i.i.i.i62.preheader ] ; 2 uses
  %.0911.i.i.i.i.i64.prol = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i62.prol ], [ %.sroa.0213.10, %.lr.ph.i.i.i.i.i62.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i62.prol ], [ 0, %.lr.ph.i.i.i.i.i62.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  %i.co = load i64, ptr %.0911.i.i.i.i.i64.prol, align 4, !alias.scope !879
  store i64 %i.co, ptr %.012.i.i.i.i.i63.prol, align 4, !alias.scope !878
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i64.prol, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i63.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i62.prol.loopexit, label %.lr.ph.i.i.i.i.i62.prol, !llvm.loop !793

.lr.ph.i.i.i.i.i62.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i62.prol, %.lr.ph.i.i.i.i.i62.preheader
  %.lcssa425.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i62.preheader ], [ %i.cq, %.lr.ph.i.i.i.i.i62.prol ]
  %.012.i.i.i.i.i63.unr = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i62.preheader ], [ %i.cq, %.lr.ph.i.i.i.i.i62.prol ]
  %.0911.i.i.i.i.i64.unr = phi ptr [ %.sroa.0213.10, %.lr.ph.i.i.i.i.i62.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.i62.prol ]
  %i.cr = icmp ult i64 %i.cl, 56
  br i1 %i.cr, label %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i66, label %.lr.ph.i.i.i.i.i62

.lr.ph.i.i.i.i.i62:                               ; preds = %.lr.ph.i.i.i.i.i62.prol.loopexit, %.lr.ph.i.i.i.i.i62
  %.012.i.i.i.i.i63 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i62 ], [ %.012.i.i.i.i.i63.unr, %.lr.ph.i.i.i.i.i62.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i64 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i62 ], [ %.0911.i.i.i.i.i64.unr, %.lr.ph.i.i.i.i.i62.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !878)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  %i.cs = load i64, ptr %.0911.i.i.i.i.i64, align 4, !alias.scope !879
  store i64 %i.cs, ptr %.012.i.i.i.i.i63, align 4, !alias.scope !878
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i64, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i63, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !881)
  %i.cv = load i64, ptr %i.ct, align 4, !alias.scope !881
  store i64 %i.cv, ptr %i.cu, align 4, !alias.scope !880
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i64, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i63, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !883)
  %i.cy = load i64, ptr %i.cw, align 4, !alias.scope !883
  store i64 %i.cy, ptr %i.cx, align 4, !alias.scope !882
  %i.cz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i64, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i63, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  %i.db = load i64, ptr %i.cz, align 4, !alias.scope !885
  store i64 %i.db, ptr %i.da, align 4, !alias.scope !884
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i64, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i63, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !886)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  %i.de = load i64, ptr %i.dc, align 4, !alias.scope !887
  store i64 %i.de, ptr %i.dd, align 4, !alias.scope !886
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i64, i64 40
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i63, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  %i.dh = load i64, ptr %i.df, align 4, !alias.scope !889
  store i64 %i.dh, ptr %i.dg, align 4, !alias.scope !888
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i64, i64 48
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i63, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !891)
  %i.dk = load i64, ptr %i.di, align 4, !alias.scope !891
  store i64 %i.dk, ptr %i.dj, align 4, !alias.scope !890
  %i.dl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i64, i64 56 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i63, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  %i.dn = load i64, ptr %i.dl, align 4, !alias.scope !893
  store i64 %i.dn, ptr %i.dm, align 4, !alias.scope !892
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i64, i64 64
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i63, i64 64 ; 2 uses
  %.not.i.i.i.i.i65.7 = icmp eq ptr %i.dl, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not.i.i.i.i.i65.7, label %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i66, label %.lr.ph.i.i.i.i.i62, !llvm.loop !789

_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i66: ; preds = %.lr.ph.i.i.i.i.i62.prol.loopexit, %.lr.ph.i.i.i.i.i62, %.noexc71.a
  %.0.lcssa.i.i.i.i.i67 = phi ptr [ %i.ci, %.noexc71.a ], [ %.lcssa425.unr, %.lr.ph.i.i.i.i.i62.prol.loopexit ], [ %i.dp, %.lr.ph.i.i.i.i.i62 ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i67, i64 8
  %.not.i34.i.i68 = icmp eq ptr %.sroa.0213.10, null
  br i1 %.not.i34.i.i68, label %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i69, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i66
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0213.10, i64 noundef %i.ca) #24
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i69

_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i69: ; preds = %bb.q, %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i66
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cg
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit72

_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit72: ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i69, %bb.n
  %.sroa.50.11 = phi ptr [ %i.dr, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i69 ], [ %.sroa.50.10, %bb.n ] ; 2 uses
  %.sroa.27.6 = phi ptr [ %i.dq, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i69 ], [ %i.bx, %bb.n ] ; 2 uses
  %.sroa.0213.11 = phi ptr [ %i.ci, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i69 ], [ %.sroa.0213.10, %bb.n ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0210.0314, i64 16 ; 2 uses
  %.not273 = icmp eq ptr %i.ds, %i.y
  br i1 %.not273, label %._crit_edge, label %.lr.ph

.loopexit.split-lp279.loopexit.split-lp:          ; preds = %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i58, %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

_ZNK13AstBasicDType2loEv.exit:                    ; preds = %bb.i, %_ZNK8AstRange7loConstEv.exit.i
  %i.dt = phi i32 [ %i.as, %_ZNK8AstRange7loConstEv.exit.i ], [ %..i.i, %bb.i ] ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !417
  %i.dw = add nsw i32 %i.dv, %i.dt                ; 3 uses
  br i1 %3, label %bb.r, label %.critedge

bb.r:                                             ; preds = %_ZNK13AstBasicDType2loEv.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !435 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !435 ; 2 uses
  %i.eb = icmp eq ptr %i.dy, %i.ea
  br i1 %i.eb, label %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit138, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ec = add nsw i32 %i.dt, -1
  br label %bb.u

bb.t:                                             ; preds = %bb.u
  %.not = icmp sgt i32 %.sroa.speculated180, %.sroa.speculated
  br i1 %.not, label %bb.v, label %bb.ab, !prof !56

bb.u:                                             ; preds = %bb.s, %bb.u
  %.sroa.0184.0322 = phi ptr [ %i.dy, %bb.s ], [ %i.ej, %bb.u ] ; 3 uses
  %.0254321 = phi i32 [ %i.ec, %bb.s ], [ %.sroa.speculated, %bb.u ]
  %.0255320 = phi i32 [ %i.dw, %bb.s ], [ %.sroa.speculated180, %bb.u ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0184.0322, i64 8
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !426 ; 2 uses
  %.sroa.speculated180 = tail call i32 @llvm.smin.i32(i32 %i.ee, i32 %.0255320) ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0184.0322, i64 12
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !427
  %i.eh = add i32 %i.ee, -1
  %i.ei = add i32 %i.eh, %i.eg
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.0254321, i32 %i.ei) ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0184.0322, i64 16 ; 2 uses
  %.not274 = icmp eq ptr %i.ej, %i.ea
  br i1 %.not274, label %bb.t, label %bb.u

bb.v:                                             ; preds = %bb.t
  %i.ek = load ptr, ptr %i.aa, align 8, !tbaa !418
  %i.el = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 949)
          to label %bb.w unwind label %.loopexit.split-lp ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.em = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.x unwind label %.loopexit.split-lp ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.en = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef nonnull @.str.598, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.x
  %i.eo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.em, i32 noundef %.sroa.speculated180)
          to label %bb.y unwind label %.loopexit.split-lp ; 2 uses

bb.y:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ep = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef nonnull @.str.563, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76: ; preds = %bb.y
  %i.eq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, i32 noundef %.sroa.speculated)
          to label %bb.z unwind label %.loopexit.split-lp ; 2 uses

bb.z:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76
  %i.er = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr noundef nonnull @.str.599, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78: ; preds = %bb.z
  invoke void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.ek, ptr noundef nonnull align 8 dereferenceable(112) %i.eq) #27
          to label %bb.aa unwind label %.loopexit.split-lp

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78
  unreachable

bb.ab:                                            ; preds = %bb.t
  %.not.i79 = icmp eq ptr %.sroa.27.0.lcssa, %.sroa.50.0.lcssa
  br i1 %.not.i79, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i32 %.sroa.speculated180, ptr %.sroa.27.0.lcssa, align 4, !tbaa !437
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.27.0.lcssa, i64 4
  store i8 0, ptr %i.es, align 4, !tbaa !438
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJRibEEERS1_DpOT_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.et = ptrtoint ptr %.sroa.50.0.lcssa to i64
  %i.eu = ptrtoint ptr %.sroa.0213.0.lcssa to i64
  %i.ev = sub i64 %i.et, %i.eu                    ; 4 uses
  %i.ew = icmp eq i64 %i.ev, 9223372036854775800
  br i1 %i.ew, label %.invoke, label %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i80

_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i80: ; preds = %bb.ad
  %i.ex = ashr exact i64 %i.ev, 3                 ; 3 uses
  %.sroa.speculated.i.i.i81 = tail call i64 @llvm.umax.i64(i64 %i.ex, i64 1)
  %i.ey = add nsw i64 %.sroa.speculated.i.i.i81, %i.ex ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.ex
  %i.fa = tail call i64 @llvm.umin.i64(i64 %i.ey, i64 1152921504606846975)
  %i.fb = select i1 %i.ez, i64 1152921504606846975, i64 %i.fa ; 3 uses
  %.not.i.i.i82 = icmp ne i64 %i.fb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i82)
  %i.fc = shl nuw nsw i64 %i.fb, 3
  %i.fd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #28
          to label %.noexc92 unwind label %.loopexit.split-lp ; 5 uses

.noexc92:                                         ; preds = %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i80
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.ev ; 2 uses
  store i32 %.sroa.speculated180, ptr %i.fe, align 4, !tbaa !437
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  store i8 0, ptr %i.ff, align 4, !tbaa !438
  %.not10.i.i.i.i.i83 = icmp eq ptr %.sroa.0213.0.lcssa, %.sroa.50.0.lcssa
  br i1 %.not10.i.i.i.i.i83, label %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i88, label %.lr.ph.i.i.i.i.i84

.lr.ph.i.i.i.i.i84:                               ; preds = %.noexc92, %.lr.ph.i.i.i.i.i84
  %.012.i.i.i.i.i85 = phi ptr [ %i.fi, %.lr.ph.i.i.i.i.i84 ], [ %i.fd, %.noexc92 ] ; 2 uses
  %.0911.i.i.i.i.i86 = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i84 ], [ %.sroa.0213.0.lcssa, %.noexc92 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !895)
  %i.fg = load i64, ptr %.0911.i.i.i.i.i86, align 4, !alias.scope !895
  store i64 %i.fg, ptr %.012.i.i.i.i.i85, align 4, !alias.scope !894
  %i.fh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i86, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i85, i64 8 ; 2 uses
  %.not.i.i.i.i.i87 = icmp eq ptr %i.fh, %.sroa.50.0.lcssa
  br i1 %.not.i.i.i.i.i87, label %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i88, label %.lr.ph.i.i.i.i.i84, !llvm.loop !789

_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i88: ; preds = %.lr.ph.i.i.i.i.i84, %.noexc92
  %.0.lcssa.i.i.i.i.i89 = phi ptr [ %i.fd, %.noexc92 ], [ %i.fi, %.lr.ph.i.i.i.i.i84 ]
  %.not.i34.i.i90 = icmp eq ptr %.sroa.0213.0.lcssa, null
  br i1 %.not.i34.i.i90, label %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJRibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i88
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0213.0.lcssa, i64 noundef %i.ev) #24
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJRibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJRibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ae, %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i88
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fb
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJRibEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJRibEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJRibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ac
  %.sroa.50.12 = phi ptr [ %i.fj, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJRibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.50.0.lcssa, %bb.ac ] ; 5 uses
  %.0.lcssa.i.i.i.i.i89.pn = phi ptr [ %.0.lcssa.i.i.i.i.i89, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJRibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.27.0.lcssa, %bb.ac ] ; 5 uses
  %.sroa.0213.12 = phi ptr [ %i.fd, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJRibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0213.0.lcssa, %bb.ac ] ; 8 uses
  %.0.lcssa.i.i.i.i.i89.pn445 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i89.pn to i64
  %.sroa.27.7 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i89.pn, i64 8 ; 2 uses
  %i.fk = add nsw i32 %.sroa.speculated, 1        ; 2 uses
  %.not.i93 = icmp eq ptr %.sroa.27.7, %.sroa.50.12
  br i1 %.not.i93, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJRibEEERS1_DpOT_.exit
  store i32 %i.fk, ptr %.sroa.27.7, align 4, !tbaa !437
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i89.pn, i64 12
  store i8 1, ptr %i.fl, align 4, !tbaa !438
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i89.pn, i64 16
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit138

bb.ag:                                            ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJRibEEERS1_DpOT_.exit
  %i.fn = ptrtoint ptr %.sroa.50.12 to i64
  %i.fo = ptrtoint ptr %.sroa.0213.12 to i64      ; 2 uses
  %i.fp = sub i64 %i.fn, %i.fo                    ; 4 uses
  %i.fq = icmp eq i64 %i.fp, 9223372036854775800
  br i1 %i.fq, label %bb.ah, label %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i94

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.557) #27
          to label %.noexc106 unwind label %bb.aj

.noexc106:                                        ; preds = %bb.ah
  unreachable

_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i94: ; preds = %bb.ag
  %i.fr = ashr exact i64 %i.fp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i95 = tail call i64 @llvm.umax.i64(i64 %i.fr, i64 1)
  %i.fs = add nsw i64 %.sroa.speculated.i.i.i95, %i.fr ; 2 uses
  %i.ft = icmp ult i64 %i.fs, %i.fr
  %i.fu = tail call i64 @llvm.umin.i64(i64 %i.fs, i64 1152921504606846975)
  %i.fv = select i1 %i.ft, i64 1152921504606846975, i64 %i.fu ; 3 uses
  %.not.i.i.i96 = icmp ne i64 %i.fv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i96)
  %i.fw = shl nuw nsw i64 %i.fv, 3
  %i.fx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fw) #28
          to label %.noexc107 unwind label %bb.aj ; 6 uses

.noexc107:                                        ; preds = %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i94
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fp ; 2 uses
  store i32 %i.fk, ptr %i.fy, align 4, !tbaa !437
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  store i8 1, ptr %i.fz, align 4, !tbaa !438
  %.not10.i.i.i.i.i97 = icmp eq ptr %.sroa.0213.12, %.sroa.50.12
  br i1 %.not10.i.i.i.i.i97, label %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i102, label %.lr.ph.i.i.i.i.i98.preheader

.lr.ph.i.i.i.i.i98.preheader:                     ; preds = %.noexc107
  %i.ga = sub i64 %.0.lcssa.i.i.i.i.i89.pn445, %i.fo ; 2 uses
  %i.gb = lshr i64 %i.ga, 3
  %i.gc = add nuw nsw i64 %i.gb, 1
  %xtraiter446 = and i64 %i.gc, 7                 ; 2 uses
  %lcmp.mod447.not = icmp eq i64 %xtraiter446, 0
  br i1 %lcmp.mod447.not, label %.lr.ph.i.i.i.i.i98.prol.loopexit, label %.lr.ph.i.i.i.i.i98.prol

.lr.ph.i.i.i.i.i98.prol:                          ; preds = %.lr.ph.i.i.i.i.i98.preheader, %.lr.ph.i.i.i.i.i98.prol
  %.012.i.i.i.i.i99.prol = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i98.prol ], [ %i.fx, %.lr.ph.i.i.i.i.i98.preheader ] ; 2 uses
  %.0911.i.i.i.i.i100.prol = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i98.prol ], [ %.sroa.0213.12, %.lr.ph.i.i.i.i.i98.preheader ] ; 2 uses
  %prol.iter448 = phi i64 [ %prol.iter448.next, %.lr.ph.i.i.i.i.i98.prol ], [ 0, %.lr.ph.i.i.i.i.i98.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !897)
  %i.gd = load i64, ptr %.0911.i.i.i.i.i100.prol, align 4, !alias.scope !897
  store i64 %i.gd, ptr %.012.i.i.i.i.i99.prol, align 4, !alias.scope !896
  %i.ge = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i100.prol, i64 8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i99.prol, i64 8 ; 3 uses
  %prol.iter448.next = add i64 %prol.iter448, 1   ; 2 uses
  %prol.iter448.cmp.not = icmp eq i64 %prol.iter448.next, %xtraiter446
  br i1 %prol.iter448.cmp.not, label %.lr.ph.i.i.i.i.i98.prol.loopexit, label %.lr.ph.i.i.i.i.i98.prol, !llvm.loop !821

.lr.ph.i.i.i.i.i98.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i98.prol, %.lr.ph.i.i.i.i.i98.preheader
  %.lcssa418.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i98.preheader ], [ %i.gf, %.lr.ph.i.i.i.i.i98.prol ]
  %.012.i.i.i.i.i99.unr = phi ptr [ %i.fx, %.lr.ph.i.i.i.i.i98.preheader ], [ %i.gf, %.lr.ph.i.i.i.i.i98.prol ]
  %.0911.i.i.i.i.i100.unr = phi ptr [ %.sroa.0213.12, %.lr.ph.i.i.i.i.i98.preheader ], [ %i.ge, %.lr.ph.i.i.i.i.i98.prol ]
  %i.gg = icmp ult i64 %i.ga, 56
  br i1 %i.gg, label %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i102, label %.lr.ph.i.i.i.i.i98

.lr.ph.i.i.i.i.i98:                               ; preds = %.lr.ph.i.i.i.i.i98.prol.loopexit, %.lr.ph.i.i.i.i.i98
  %.012.i.i.i.i.i99 = phi ptr [ %i.he, %.lr.ph.i.i.i.i.i98 ], [ %.012.i.i.i.i.i99.unr, %.lr.ph.i.i.i.i.i98.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i100 = phi ptr [ %i.hd, %.lr.ph.i.i.i.i.i98 ], [ %.0911.i.i.i.i.i100.unr, %.lr.ph.i.i.i.i.i98.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !897)
  %i.gh = load i64, ptr %.0911.i.i.i.i.i100, align 4, !alias.scope !897
  store i64 %i.gh, ptr %.012.i.i.i.i.i99, align 4, !alias.scope !896
  %i.gi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i100, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i99, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %i.gk = load i64, ptr %i.gi, align 4, !alias.scope !899
  store i64 %i.gk, ptr %i.gj, align 4, !alias.scope !898
  %i.gl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i100, i64 16
  %i.gm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i99, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  %i.gn = load i64, ptr %i.gl, align 4, !alias.scope !901
  store i64 %i.gn, ptr %i.gm, align 4, !alias.scope !900
  %i.go = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i100, i64 24
  %i.gp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i99, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  %i.gq = load i64, ptr %i.go, align 4, !alias.scope !903
  store i64 %i.gq, ptr %i.gp, align 4, !alias.scope !902
  %i.gr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i100, i64 32
  %i.gs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i99, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %i.gt = load i64, ptr %i.gr, align 4, !alias.scope !905
  store i64 %i.gt, ptr %i.gs, align 4, !alias.scope !904
  %i.gu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i100, i64 40
  %i.gv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i99, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  %i.gw = load i64, ptr %i.gu, align 4, !alias.scope !907
  store i64 %i.gw, ptr %i.gv, align 4, !alias.scope !906
  %i.gx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i100, i64 48
  %i.gy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i99, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  %i.gz = load i64, ptr %i.gx, align 4, !alias.scope !909
  store i64 %i.gz, ptr %i.gy, align 4, !alias.scope !908
  %i.ha = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i100, i64 56 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i99, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.hc = load i64, ptr %i.ha, align 4, !alias.scope !911
  store i64 %i.hc, ptr %i.hb, align 4, !alias.scope !910
  %i.hd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i100, i64 64
  %i.he = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i99, i64 64 ; 2 uses
  %.not.i.i.i.i.i101.7 = icmp eq ptr %i.ha, %.0.lcssa.i.i.i.i.i89.pn
  br i1 %.not.i.i.i.i.i101.7, label %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i102, label %.lr.ph.i.i.i.i.i98, !llvm.loop !789

_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i102: ; preds = %.lr.ph.i.i.i.i.i98.prol.loopexit, %.lr.ph.i.i.i.i.i98, %.noexc107
  %.0.lcssa.i.i.i.i.i103 = phi ptr [ %i.fx, %.noexc107 ], [ %.lcssa418.unr, %.lr.ph.i.i.i.i.i98.prol.loopexit ], [ %i.he, %.lr.ph.i.i.i.i.i98 ]
  %i.hf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i103, i64 8
  %.not.i34.i.i104 = icmp eq ptr %.sroa.0213.12, null
  br i1 %.not.i34.i.i104, label %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i105, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i102
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0213.12, i64 noundef %i.fp) #24
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i105

_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i105: ; preds = %bb.ai, %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i102
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fv
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit138

bb.aj:                                            ; preds = %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i94, %bb.ah
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.critedge:                                        ; preds = %_ZNK13AstBasicDType2loEv.exit
  %.not.i109 = icmp eq ptr %.sroa.27.0.lcssa, %.sroa.50.0.lcssa
  br i1 %.not.i109, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.critedge
  store i32 %i.dt, ptr %.sroa.27.0.lcssa, align 4, !tbaa !437
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.27.0.lcssa, i64 4
  store i8 0, ptr %i.hi, align 4, !tbaa !438
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJRKibEEERS1_DpOT_.exit

bb.al:                                            ; preds = %.critedge
  %i.hj = ptrtoint ptr %.sroa.50.0.lcssa to i64
  %i.hk = ptrtoint ptr %.sroa.0213.0.lcssa to i64
  %i.hl = sub i64 %i.hj, %i.hk                    ; 4 uses
  %i.hm = icmp eq i64 %i.hl, 9223372036854775800
  br i1 %i.hm, label %.invoke, label %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i110

.invoke:                                          ; preds = %bb.al, %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.557) #27
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i110: ; preds = %bb.al
  %i.hn = ashr exact i64 %i.hl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i111 = tail call i64 @llvm.umax.i64(i64 %i.hn, i64 1)
  %i.ho = add nsw i64 %.sroa.speculated.i.i.i111, %i.hn ; 2 uses
  %i.hp = icmp ult i64 %i.ho, %i.hn
  %i.hq = tail call i64 @llvm.umin.i64(i64 %i.ho, i64 1152921504606846975)
  %i.hr = select i1 %i.hp, i64 1152921504606846975, i64 %i.hq ; 3 uses
  %.not.i.i.i112 = icmp ne i64 %i.hr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i112)
  %i.hs = shl nuw nsw i64 %i.hr, 3
  %i.ht = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hs) #28
          to label %.noexc122 unwind label %.loopexit.split-lp ; 5 uses

.noexc122:                                        ; preds = %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i110
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hl ; 2 uses
  store i32 %i.dt, ptr %i.hu, align 4, !tbaa !437
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  store i8 0, ptr %i.hv, align 4, !tbaa !438
  %.not10.i.i.i.i.i113 = icmp eq ptr %.sroa.0213.0.lcssa, %.sroa.50.0.lcssa
  br i1 %.not10.i.i.i.i.i113, label %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i118, label %.lr.ph.i.i.i.i.i114

.lr.ph.i.i.i.i.i114:                              ; preds = %.noexc122, %.lr.ph.i.i.i.i.i114
  %.012.i.i.i.i.i115 = phi ptr [ %i.hy, %.lr.ph.i.i.i.i.i114 ], [ %i.ht, %.noexc122 ] ; 2 uses
  %.0911.i.i.i.i.i116 = phi ptr [ %i.hx, %.lr.ph.i.i.i.i.i114 ], [ %.sroa.0213.0.lcssa, %.noexc122 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  %i.hw = load i64, ptr %.0911.i.i.i.i.i116, align 4, !alias.scope !913
  store i64 %i.hw, ptr %.012.i.i.i.i.i115, align 4, !alias.scope !912
  %i.hx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i116, i64 8 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i115, i64 8 ; 2 uses
  %.not.i.i.i.i.i117 = icmp eq ptr %i.hx, %.sroa.50.0.lcssa
  br i1 %.not.i.i.i.i.i117, label %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i118, label %.lr.ph.i.i.i.i.i114, !llvm.loop !789

_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i118: ; preds = %.lr.ph.i.i.i.i.i114, %.noexc122
  %.0.lcssa.i.i.i.i.i119 = phi ptr [ %i.ht, %.noexc122 ], [ %i.hy, %.lr.ph.i.i.i.i.i114 ]
  %.not.i34.i.i120 = icmp eq ptr %.sroa.0213.0.lcssa, null
  br i1 %.not.i34.i.i120, label %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJRKibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i118
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0213.0.lcssa, i64 noundef %i.hl) #24
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJRKibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJRKibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.am, %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i118
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.hr
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJRKibEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJRKibEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJRKibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ak
  %.sroa.50.14 = phi ptr [ %i.hz, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJRKibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.50.0.lcssa, %bb.ak ] ; 5 uses
  %.0.lcssa.i.i.i.i.i119.pn = phi ptr [ %.0.lcssa.i.i.i.i.i119, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJRKibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.27.0.lcssa, %bb.ak ] ; 5 uses
  %.sroa.0213.14 = phi ptr [ %i.ht, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJRKibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0213.0.lcssa, %bb.ak ] ; 8 uses
  %.0.lcssa.i.i.i.i.i119.pn441 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i119.pn to i64
  %.sroa.27.9 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i119.pn, i64 8 ; 2 uses
  %.not.i123 = icmp eq ptr %.sroa.27.9, %.sroa.50.14
  br i1 %.not.i123, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJRKibEEERS1_DpOT_.exit
  store i32 %i.dw, ptr %.sroa.27.9, align 4, !tbaa !437
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i119.pn, i64 12
  store i8 1, ptr %i.ia, align 4, !tbaa !438
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i119.pn, i64 16
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit138

bb.ao:                                            ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJRKibEEERS1_DpOT_.exit
  %i.ic = ptrtoint ptr %.sroa.50.14 to i64
  %i.id = ptrtoint ptr %.sroa.0213.14 to i64      ; 2 uses
  %i.ie = sub i64 %i.ic, %i.id                    ; 4 uses
  %i.if = icmp eq i64 %i.ie, 9223372036854775800
  br i1 %i.if, label %bb.ap, label %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i124

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.557) #27
          to label %.noexc136 unwind label %bb.ar

.noexc136:                                        ; preds = %bb.ap
  unreachable

_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i124: ; preds = %bb.ao
  %i.ig = ashr exact i64 %i.ie, 3                 ; 3 uses
  %.sroa.speculated.i.i.i125 = tail call i64 @llvm.umax.i64(i64 %i.ig, i64 1)
  %i.ih = add nsw i64 %.sroa.speculated.i.i.i125, %i.ig ; 2 uses
  %i.ii = icmp ult i64 %i.ih, %i.ig
  %i.ij = tail call i64 @llvm.umin.i64(i64 %i.ih, i64 1152921504606846975)
  %i.ik = select i1 %i.ii, i64 1152921504606846975, i64 %i.ij ; 3 uses
  %.not.i.i.i126 = icmp ne i64 %i.ik, 0
  tail call void @llvm.assume(i1 %.not.i.i.i126)
  %i.il = shl nuw nsw i64 %i.ik, 3
  %i.im = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.il) #28
          to label %.noexc137 unwind label %bb.ar ; 6 uses

.noexc137:                                        ; preds = %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i124
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ie ; 2 uses
  store i32 %i.dw, ptr %i.in, align 4, !tbaa !437
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  store i8 1, ptr %i.io, align 4, !tbaa !438
  %.not10.i.i.i.i.i127 = icmp eq ptr %.sroa.0213.14, %.sroa.50.14
  br i1 %.not10.i.i.i.i.i127, label %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i132, label %.lr.ph.i.i.i.i.i128.preheader

.lr.ph.i.i.i.i.i128.preheader:                    ; preds = %.noexc137
  %i.ip = sub i64 %.0.lcssa.i.i.i.i.i119.pn441, %i.id ; 2 uses
  %i.iq = lshr i64 %i.ip, 3
  %i.ir = add nuw nsw i64 %i.iq, 1
  %xtraiter442 = and i64 %i.ir, 7                 ; 2 uses
  %lcmp.mod443.not = icmp eq i64 %xtraiter442, 0
  br i1 %lcmp.mod443.not, label %.lr.ph.i.i.i.i.i128.prol.loopexit, label %.lr.ph.i.i.i.i.i128.prol

.lr.ph.i.i.i.i.i128.prol:                         ; preds = %.lr.ph.i.i.i.i.i128.preheader, %.lr.ph.i.i.i.i.i128.prol
  %.012.i.i.i.i.i129.prol = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i128.prol ], [ %i.im, %.lr.ph.i.i.i.i.i128.preheader ] ; 2 uses
  %.0911.i.i.i.i.i130.prol = phi ptr [ %i.it, %.lr.ph.i.i.i.i.i128.prol ], [ %.sroa.0213.14, %.lr.ph.i.i.i.i.i128.preheader ] ; 2 uses
  %prol.iter444 = phi i64 [ %prol.iter444.next, %.lr.ph.i.i.i.i.i128.prol ], [ 0, %.lr.ph.i.i.i.i.i128.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915)
  %i.is = load i64, ptr %.0911.i.i.i.i.i130.prol, align 4, !alias.scope !915
  store i64 %i.is, ptr %.012.i.i.i.i.i129.prol, align 4, !alias.scope !914
  %i.it = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130.prol, i64 8 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129.prol, i64 8 ; 3 uses
  %prol.iter444.next = add i64 %prol.iter444, 1   ; 2 uses
  %prol.iter444.cmp.not = icmp eq i64 %prol.iter444.next, %xtraiter442
  br i1 %prol.iter444.cmp.not, label %.lr.ph.i.i.i.i.i128.prol.loopexit, label %.lr.ph.i.i.i.i.i128.prol, !llvm.loop !849

.lr.ph.i.i.i.i.i128.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i128.prol, %.lr.ph.i.i.i.i.i128.preheader
  %.lcssa420.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i128.preheader ], [ %i.iu, %.lr.ph.i.i.i.i.i128.prol ]
  %.012.i.i.i.i.i129.unr = phi ptr [ %i.im, %.lr.ph.i.i.i.i.i128.preheader ], [ %i.iu, %.lr.ph.i.i.i.i.i128.prol ]
  %.0911.i.i.i.i.i130.unr = phi ptr [ %.sroa.0213.14, %.lr.ph.i.i.i.i.i128.preheader ], [ %i.it, %.lr.ph.i.i.i.i.i128.prol ]
  %i.iv = icmp ult i64 %i.ip, 56
  br i1 %i.iv, label %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i132, label %.lr.ph.i.i.i.i.i128

.lr.ph.i.i.i.i.i128:                              ; preds = %.lr.ph.i.i.i.i.i128.prol.loopexit, %.lr.ph.i.i.i.i.i128
  %.012.i.i.i.i.i129 = phi ptr [ %i.jt, %.lr.ph.i.i.i.i.i128 ], [ %.012.i.i.i.i.i129.unr, %.lr.ph.i.i.i.i.i128.prol.loopexit ] ; 9 uses
  %.0911.i.i.i.i.i130 = phi ptr [ %i.js, %.lr.ph.i.i.i.i.i128 ], [ %.0911.i.i.i.i.i130.unr, %.lr.ph.i.i.i.i.i128.prol.loopexit ] ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915)
  %i.iw = load i64, ptr %.0911.i.i.i.i.i130, align 4, !alias.scope !915
  store i64 %i.iw, ptr %.012.i.i.i.i.i129, align 4, !alias.scope !914
  %i.ix = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !917)
  %i.iz = load i64, ptr %i.ix, align 4, !alias.scope !917
  store i64 %i.iz, ptr %i.iy, align 4, !alias.scope !916
  %i.ja = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  %i.jc = load i64, ptr %i.ja, align 4, !alias.scope !919
  store i64 %i.jc, ptr %i.jb, align 4, !alias.scope !918
  %i.jd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 24
  %i.je = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !921)
  %i.jf = load i64, ptr %i.jd, align 4, !alias.scope !921
  store i64 %i.jf, ptr %i.je, align 4, !alias.scope !920
  %i.jg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 32
  %i.jh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  %i.ji = load i64, ptr %i.jg, align 4, !alias.scope !923
  store i64 %i.ji, ptr %i.jh, align 4, !alias.scope !922
  %i.jj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 40
  %i.jk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !925)
  %i.jl = load i64, ptr %i.jj, align 4, !alias.scope !925
  store i64 %i.jl, ptr %i.jk, align 4, !alias.scope !924
  %i.jm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 48
  %i.jn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  %i.jo = load i64, ptr %i.jm, align 4, !alias.scope !927
  store i64 %i.jo, ptr %i.jn, align 4, !alias.scope !926
  %i.jp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 56 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  %i.jr = load i64, ptr %i.jp, align 4, !alias.scope !929
  store i64 %i.jr, ptr %i.jq, align 4, !alias.scope !928
  %i.js = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i130, i64 64
  %i.jt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i129, i64 64 ; 2 uses
  %.not.i.i.i.i.i131.7 = icmp eq ptr %i.jp, %.0.lcssa.i.i.i.i.i119.pn
  br i1 %.not.i.i.i.i.i131.7, label %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i132, label %.lr.ph.i.i.i.i.i128, !llvm.loop !789

_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i132: ; preds = %.lr.ph.i.i.i.i.i128.prol.loopexit, %.lr.ph.i.i.i.i.i128, %.noexc137
  %.0.lcssa.i.i.i.i.i133 = phi ptr [ %i.im, %.noexc137 ], [ %.lcssa420.unr, %.lr.ph.i.i.i.i.i128.prol.loopexit ], [ %i.jt, %.lr.ph.i.i.i.i.i128 ]
  %i.ju = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i133, i64 8
  %.not.i34.i.i134 = icmp eq ptr %.sroa.0213.14, null
  br i1 %.not.i34.i.i134, label %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i132
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0213.14, i64 noundef %i.ie) #24
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135

_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135: ; preds = %bb.aq, %_ZNSt6vectorISt4pairIibESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i132
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.im, i64 %i.ik
  br label %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit138

.loopexit:                                        ; preds = %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit275 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp:                               ; preds = %.invoke, %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i110, %bb.v, %bb.w, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78, %bb.x, %bb.y, %bb.z, %bb.l, %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i80
  %.sroa.50.0308 = phi ptr [ %.sroa.50.0.lcssa, %.invoke ], [ %.sroa.50.0.lcssa, %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i110 ], [ %.sroa.50.0.lcssa, %bb.v ], [ %.sroa.50.0.lcssa, %bb.w ], [ %.sroa.50.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ %.sroa.50.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 ], [ %.sroa.50.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78 ], [ %.sroa.50.0.lcssa, %bb.x ], [ %.sroa.50.0.lcssa, %bb.y ], [ %.sroa.50.0.lcssa, %bb.z ], [ %.sroa.27.0316, %bb.l ], [ %.sroa.50.0.lcssa, %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i80 ]
  %.sroa.0213.0298 = phi ptr [ %.sroa.0213.0.lcssa, %.invoke ], [ %.sroa.0213.0.lcssa, %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i110 ], [ %.sroa.0213.0.lcssa, %bb.v ], [ %.sroa.0213.0.lcssa, %bb.w ], [ %.sroa.0213.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ %.sroa.0213.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit76 ], [ %.sroa.0213.0.lcssa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit78 ], [ %.sroa.0213.0.lcssa, %bb.x ], [ %.sroa.0213.0.lcssa, %bb.y ], [ %.sroa.0213.0.lcssa, %bb.z ], [ %.sroa.0213.0317, %bb.l ], [ %.sroa.0213.0.lcssa, %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i80 ]
  %lpad.loopexit.split-lp276 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.ar:                                            ; preds = %_ZNKSt6vectorISt4pairIibESaIS1_EE12_M_check_lenEmPKc.exit.i.i124, %bb.ap
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit138: ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i105, %bb.af, %bb.r, %bb.an, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135
  %.sroa.50.5 = phi ptr [ %.sroa.50.0.lcssa, %bb.r ], [ %.sroa.50.14, %bb.an ], [ %i.jv, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135 ], [ %.sroa.50.12, %bb.af ], [ %i.hg, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i105 ] ; 8 uses
  %.sroa.27.3 = phi ptr [ %.sroa.27.0.lcssa, %bb.r ], [ %i.ib, %bb.an ], [ %i.ju, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135 ], [ %i.fm, %bb.af ], [ %i.hf, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i105 ] ; 4 uses
  %.sroa.0213.5 = phi ptr [ %.sroa.0213.0.lcssa, %bb.r ], [ %.sroa.0213.14, %bb.an ], [ %i.im, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i135 ], [ %.sroa.0213.12, %bb.af ], [ %i.fx, %_ZNSt6vectorISt4pairIibESaIS1_EE17_M_realloc_insertIJibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i105 ] ; 15 uses
  %.not.i.i139 = icmp eq ptr %.sroa.0213.5, %.sroa.27.3
  %.pre350 = ptrtoint ptr %.sroa.27.3 to i64
  %.pre351 = ptrtoint ptr %.sroa.0213.5 to i64    ; 3 uses
  %.pre353 = sub i64 %.pre350, %.pre351
  %.pre355 = ashr exact i64 %.pre353, 3           ; 3 uses
  br i1 %.not.i.i139, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEN12PackedVarRef11SortByFirstEEvT_SB_T0_.exit, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit138
  %i.jx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre355, i1 true)
  %i.jy = shl nuw nsw i64 %i.jx, 1
  %i.jz = xor i64 %i.jy, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIN12PackedVarRef11SortByFirstEEEEvT_SE_T0_T1_(ptr %.sroa.0213.5, ptr %.sroa.27.3, i64 noundef %i.jz)
          to label %.noexc140 unwind label %bb.ay

.noexc140:                                        ; preds = %bb.as
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIN12PackedVarRef11SortByFirstEEEEvT_SE_T0_(ptr %.sroa.0213.5, ptr %.sroa.27.3)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEN12PackedVarRef11SortByFirstEEvT_SB_T0_.exit unwind label %bb.ay

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEN12PackedVarRef11SortByFirstEEvT_SB_T0_.exit: ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EE12emplace_backIJibEEERS1_DpOT_.exit138, %.noexc140
  %i.ka = icmp ugt i64 %.pre355, 1
  br i1 %i.ka, label %.lr.ph325, label %._crit_edge326

.lr.ph325:                                        ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEN12PackedVarRef11SortByFirstEEvT_SB_T0_.exit
  %.promoted = load ptr, ptr %0, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.at

._crit_edge326:                                   ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIibESt6vectorIS3_SaIS3_EEEEN12PackedVarRef11SortByFirstEEvT_SB_T0_.exit
  %.not.i.i.i142 = icmp eq ptr %.sroa.0213.5, null
  br i1 %.not.i.i.i142, label %_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit, label %._crit_edge326.thread

._crit_edge326.thread:                            ; preds = %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit, %._crit_edge326
  %i.kd = ptrtoint ptr %.sroa.50.5 to i64
  %i.ke = sub i64 %i.kd, %.pre351
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0213.5, i64 noundef %i.ke) #24
  br label %_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit:        ; preds = %._crit_edge326, %._crit_edge326.thread
  ret void

bb.at:                                            ; preds = %.lr.ph325, %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit
  %i.kf = phi i64 [ 1, %.lr.ph325 ], [ %i.lo, %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit ] ; 3 uses
  %.0324 = phi i64 [ 0, %.lr.ph325 ], [ %i.kf, %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit ]
  %.031323 = phi i32 [ 0, %.lr.ph325 ], [ %.1, %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit ]
  %i.kg = phi ptr [ %.promoted, %.lr.ph325 ], [ %i.ln, %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit ] ; 7 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0213.5, i64 %i.kf
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !437 ; 2 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0213.5, i64 %.0324 ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !437 ; 4 uses
  %i.kl = sub nsw i32 %i.ki, %i.kk                ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.kn = load i8, ptr %i.km, align 4, !tbaa !438, !range !137, !noundef !138
  %i.ko = trunc nuw i8 %i.kn to i1
  %.1.v = select i1 %i.ko, i32 -1, i32 1
  %.1 = add nsw i32 %.1.v, %.031323               ; 3 uses
  %i.kp = icmp slt i32 %.1, 0
  br i1 %i.kp, label %bb.au, label %bb.az, !prof !56

bb.au:                                            ; preds = %bb.at
  %i.kq = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 968)
          to label %bb.av unwind label %bb.ay     ; 0 uses

bb.av:                                            ; preds = %bb.au
  %i.kr = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.aw unwind label %bb.ay     ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %i.ks = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kr, ptr noundef nonnull @.str.600, i64 noundef 30)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144 unwind label %bb.ay ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144: ; preds = %bb.aw
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.kr) #27
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144
  unreachable

bb.ay:                                            ; preds = %bb.aw, %.noexc140, %bb.as, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144, %bb.av, %bb.au
  %.sroa.50.6 = phi ptr [ %.sroa.50.5, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144 ], [ %.sroa.50.5, %bb.aw ], [ %.sroa.50.5, %bb.av ], [ %.sroa.50.5, %bb.au ], [ %.sroa.50.5, %.noexc140 ], [ %.sroa.50.5, %bb.as ], [ %.sroa.50.0.lcssa, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i ], [ %.sroa.50.0.lcssa, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i ]
  %.sroa.0213.6 = phi ptr [ %.sroa.0213.5, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit144 ], [ %.sroa.0213.5, %bb.aw ], [ %.sroa.0213.5, %bb.av ], [ %.sroa.0213.5, %bb.au ], [ %.sroa.0213.5, %.noexc140 ], [ %.sroa.0213.5, %bb.as ], [ %.sroa.0213.0.lcssa, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i6.i.i ], [ %.sroa.0213.0.lcssa, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i ]
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.az:                                            ; preds = %bb.at
  %i.ku = icmp eq i32 %i.ki, %i.kk
  %i.kv = icmp eq i32 %.1, 0
  %or.cond = or i1 %i.ku, %i.kv
  br i1 %or.cond, label %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %4 = load ptr, ptr %i.kb, align 8, !tbaa !421   ; 8 uses
  %5 = load ptr, ptr %i.kc, align 8, !tbaa !423
  %.not.i145 = icmp eq ptr %4, %5
  br i1 %.not.i145, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i32 %i.kk, ptr %4, align 8, !tbaa !96
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.kl, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !96
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !92
  %i.kw = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.kw, ptr %i.kb, align 8, !tbaa !421
  br label %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit

bb.bc:                                            ; preds = %bb.ba
  %i.kx = ptrtoint ptr %4 to i64
  %i.ky = ptrtoint ptr %i.kg to i64
  %i.kz = sub i64 %i.kx, %i.ky                    ; 4 uses
  %i.la = icmp eq i64 %i.kz, 9223372036854775792
  br i1 %i.la, label %bb.bd, label %_ZNKSt6vectorI11SplitNewVarSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.557) #27
          to label %.noexc154 unwind label %.thread264.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc154:                                        ; preds = %bb.bd
  unreachable

_ZNKSt6vectorI11SplitNewVarSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bc
  %i.lb = ashr exact i64 %i.kz, 4                 ; 3 uses
  %.sroa.speculated.i.i.i146 = tail call i64 @llvm.umax.i64(i64 %i.lb, i64 1)
  %i.lc = add nsw i64 %.sroa.speculated.i.i.i146, %i.lb ; 2 uses
  %i.ld = icmp ult i64 %i.lc, %i.lb
  %i.le = tail call i64 @llvm.umin.i64(i64 %i.lc, i64 576460752303423487)
  %i.lf = select i1 %i.ld, i64 576460752303423487, i64 %i.le ; 3 uses
  %.not.i.i.i147 = icmp ne i64 %i.lf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i147)
  %i.lg = shl nuw nsw i64 %i.lf, 4
  %i.lh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lg) #28
          to label %.noexc155 unwind label %.thread264.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc155:                                        ; preds = %_ZNKSt6vectorI11SplitNewVarSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.kz ; 3 uses
  store i32 %i.kk, ptr %i.li, align 8, !tbaa !96
  %.sroa.6.0..sroa_idx160 = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  store i32 %i.kl, ptr %.sroa.6.0..sroa_idx160, align 4, !tbaa !96
  %.sroa.7.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store ptr null, ptr %.sroa.7.0..sroa_idx162, align 8, !tbaa !92
  %.not10.i.i.i.i.i148 = icmp eq ptr %i.kg, %4
  br i1 %.not10.i.i.i.i.i148, label %_ZNSt6vectorI11SplitNewVarSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i149

.lr.ph.i.i.i.i.i149:                              ; preds = %.noexc155, %.lr.ph.i.i.i.i.i149
  %.012.i.i.i.i.i150 = phi ptr [ %i.lk, %.lr.ph.i.i.i.i.i149 ], [ %i.lh, %.noexc155 ] ; 2 uses
  %.0911.i.i.i.i.i151 = phi ptr [ %i.lj, %.lr.ph.i.i.i.i.i149 ], [ %i.kg, %.noexc155 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i150, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i151, i64 16, i1 false), !tbaa.struct !930, !alias.scope !931
  %i.lj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i151, i64 16 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i150, i64 16 ; 2 uses
  %.not.i.i.i.i.i152 = icmp eq ptr %i.lj, %4
  br i1 %.not.i.i.i.i.i152, label %_ZNSt6vectorI11SplitNewVarSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i149, !llvm.loop !874

_ZNSt6vectorI11SplitNewVarSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i149, %.noexc155
  %.0.lcssa.i.i.i.i.i153 = phi ptr [ %i.lh, %.noexc155 ], [ %i.lk, %.lr.ph.i.i.i.i.i149 ]
  %i.ll = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i153, i64 16
  %.not.i23.i.i = icmp eq ptr %i.kg, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI11SplitNewVarSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorI11SplitNewVarSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef %i.kz) #24
  br label %_ZNSt6vectorI11SplitNewVarSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI11SplitNewVarSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.be, %_ZNSt6vectorI11SplitNewVarSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.lh, ptr %0, align 8, !tbaa !422
  store ptr %i.ll, ptr %i.kb, align 8, !tbaa !421
  %i.lm = getelementptr inbounds nuw [16 x i8], ptr %i.lh, i64 %i.lf
  store ptr %i.lm, ptr %i.kc, align 8, !tbaa !423
  br label %_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit

_ZNSt6vectorI11SplitNewVarSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit: ; preds = %bb.bb, %_ZNSt6vectorI11SplitNewVarSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.az
  %i.ln = phi ptr [ %i.kg, %bb.bb ], [ %i.lh, %_ZNSt6vectorI11SplitNewVarSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.kg, %bb.az ]
  %i.lo = add nuw i64 %i.kf, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.lo, %.pre355
  br i1 %exitcond.not, label %._crit_edge326.thread, label %bb.at, !llvm.loop !875

.thread264.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorI11SplitNewVarSaIS0_EE12_M_check_lenEmPKc.exit.i.i, %bb.bd
  %lpad.loopexit.split-lp417 = landingpad { ptr, i32 }
          cleanup
  br label %.thread264.loopexit.split-lp

bb.bf:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit.split-lp279.loopexit.split-lp, %bb.ay, %bb.ar, %bb.aj
  %.sroa.50.8 = phi ptr [ %.sroa.50.12, %bb.aj ], [ %.sroa.50.10, %.loopexit.split-lp279.loopexit.split-lp ], [ %.sroa.50.14, %bb.ar ], [ %.sroa.50.6, %bb.ay ], [ %.sroa.50.0308, %.loopexit.split-lp ], [ %.sroa.27.0316, %.loopexit ]
  %.sroa.0213.8 = phi ptr [ %.sroa.0213.12, %bb.aj ], [ %.sroa.0213.10, %.loopexit.split-lp279.loopexit.split-lp ], [ %.sroa.0213.14, %bb.ar ], [ %.sroa.0213.6, %bb.ay ], [ %.sroa.0213.0298, %.loopexit.split-lp ], [ %.sroa.0213.0317, %.loopexit ] ; 3 uses
  %.pn47.pn = phi { ptr, i32 } [ %i.hh, %bb.aj ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp279.loopexit.split-lp ], [ %i.jw, %bb.ar ], [ %i.kt, %bb.ay ], [ %lpad.loopexit.split-lp276, %.loopexit.split-lp ], [ %lpad.loopexit275, %.loopexit ] ; 2 uses
  %.not.i.i.i156 = icmp eq ptr %.sroa.0213.8, null
  br i1 %.not.i.i.i156, label %_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit157, label %._crit_edge349

._crit_edge349:                                   ; preds = %bb.bf
  %.pre357 = ptrtoint ptr %.sroa.0213.8 to i64
  br label %.thread264.loopexit.split-lp

.thread264.loopexit.split-lp:                     ; preds = %.thread264.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %._crit_edge349
  %.pre-phi358 = phi i64 [ %.pre357, %._crit_edge349 ], [ %.pre351, %.thread264.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn47.pn271 = phi { ptr, i32 } [ %.pn47.pn, %._crit_edge349 ], [ %lpad.loopexit.split-lp417, %.thread264.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0213.8270 = phi ptr [ %.sroa.0213.8, %._crit_edge349 ], [ %.sroa.0213.5, %.thread264.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.50.8269 = phi ptr [ %.sroa.50.8, %._crit_edge349 ], [ %.sroa.50.5, %.thread264.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.lp = ptrtoint ptr %.sroa.50.8269 to i64
  %i.lq = sub i64 %i.lp, %.pre-phi358
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0213.8270, i64 noundef %i.lq) #24
  br label %_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit157

_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit157:     ; preds = %.thread, %bb.bf, %.thread264.loopexit.split-lp
  %.pn47.pn263 = phi { ptr, i32 } [ %i.ax, %.thread ], [ %.pn47.pn, %bb.bf ], [ %.pn47.pn271, %.thread264.loopexit.split-lp ]
  %i.lr = load ptr, ptr %0, align 8, !tbaa !422   ; 3 uses
  %.not.i.i.i158 = icmp eq ptr %i.lr, null
  br i1 %.not.i.i.i158, label %_ZNSt6vectorI11SplitNewVarSaIS0_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit157
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !423
  %i.lu = ptrtoint ptr %i.lt to i64
  %i.lv = ptrtoint ptr %i.lr to i64
  %i.lw = sub i64 %i.lu, %i.lv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lr, i64 noundef %i.lw) #24
  br label %_ZNSt6vectorI11SplitNewVarSaIS0_EED2Ev.exit

_ZNSt6vectorI11SplitNewVarSaIS0_EED2Ev.exit:      ; preds = %_ZNSt6vectorISt4pairIibESaIS1_EED2Ev.exit157, %bb.bg
  resume { ptr, i32 } %.pn47.pn263
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK7AstNode5widthEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = load i32, ptr %i.c, align 8, !tbaa !417
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN21SplitPackedVarVisitor10createVarsEP6AstVarPK13AstBasicDTypeRSt6vectorI11SplitNewVarSaIS6_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %18 = alloca %class.VNumRange, align 4          ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !414    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !414  ; 2 uses
  %.not513711 = icmp eq ptr %i.c, %i.e
  br i1 %.not513711, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 172 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 12 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 164
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 251
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 260
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 17
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473
  %.sroa.0490.0712 = phi ptr [ %i.c, %.lr.ph ], [ %i.wb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit473 ] ; 5 uses
  %i.bh = load i32, ptr %.sroa.0490.0712, align 8, !tbaa !439 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0490.0712, i64 4 ; 4 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !416
  %i.bk = add i32 %i.bh, -1
  %i.bl = add i32 %i.bk, %i.bj                    ; 4 uses
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !213 ; 3 uses
  %.not.i = icmp eq ptr %i.bm, null
  br i1 %.not.i, label %_ZNK13AstBasicDType9ascendingEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !213 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %_ZNK8AstRange9leftConstEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i16, ptr %i.bp, align 8, !tbaa !51
  %i.bq = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i.i.i, 121
  br i1 %i.bq, label %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i, label %_ZNK8AstRange9leftConstEv.exit.i.i

_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i: ; preds = %bb.d
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 152
  %i.bs = call noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56) %i.br)
  br label %_ZNK8AstRange9leftConstEv.exit.i.i

_ZNK8AstRange9leftConstEv.exit.i.i:               ; preds = %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i, %bb.d, %bb.c
  %i.bt = phi i32 [ %i.bs, %_ZN7AstNode4castI8AstConst11AstNodeExprEEPT_PT0_.exit.i.i.i ], [ 0, %bb.c ], [ 0, %bb.d ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !227 ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i1.i.i, label %_ZNK8AstRange9ascendingEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK8AstRange9leftConstEv.exit.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %.sroa.0.0.copyload.i.i.i.i2.i.i = load i16, ptr %i.bw, align 8, !tbaa !51
  %i.bx = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i2.i.i, 121
end_hunk_1
begin_hunk_2_@_ZN12PackedVarRef9dedupRefsERSt6vectorI17PackedVarRefEntrySaIS1_EE:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.e, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.c, ptr %i.f, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !411
  %i.j = load ptr, ptr %0, align 8, !tbaa !412    ; 2 uses
  %.not64 = icmp eq ptr %i.i, %i.j
  br i1 %.not64, label %.thread78, label %.lr.ph

.thread78:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE7reserveEm.exit

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i64, ptr %i.g, align 8, !tbaa !72  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.k = icmp ugt i64 %.pre, 576460752303423487
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.595) #27
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %._crit_edge
  %.not = icmp eq i64 %.pre, 0
  br i1 %.not, label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE7reserveEm.exit, label %_ZNSt12_Vector_baseI17PackedVarRefEntrySaIS0_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseI17PackedVarRefEntrySaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.l = shl nuw nsw i64 %.pre, 4
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #28
          to label %_ZNSt12_Vector_baseI17PackedVarRefEntrySaIS0_EE13_M_deallocateEPS0_m.exit.i unwind label %.thread ; 2 uses

_ZNSt12_Vector_baseI17PackedVarRefEntrySaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %_ZNSt12_Vector_baseI17PackedVarRefEntrySaIS0_EE11_M_allocateEm.exit.i
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.pre
  br label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE7reserveEm.exit

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.o = phi ptr [ %i.v, %bb.d ], [ %i.j, %bb.a ]
  %storemerge54 = phi i64 [ %i.t, %bb.d ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %storemerge54
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !425
  store ptr %i.q, ptr %i.b, align 8, !tbaa !214
  %i.r = invoke { ptr, i8 } @_ZNSt3mapIP7AstNodem17AstNodeComparatorSaISt4pairIKS1_mEEE7emplaceIJS1_RmEEES3_ISt17_Rb_tree_iteratorIS5_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.s = load i64, ptr %i.a, align 8, !tbaa !88
  %i.t = add i64 %i.s, 1                          ; 3 uses
  store i64 %i.t, ptr %i.a, align 8, !tbaa !88
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !411
  %i.v = load ptr, ptr %0, align 8, !tbaa !412    ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 4
  %i.aa = icmp ult i64 %i.t, %i.z
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !987

bb.e:                                             ; preds = %.lr.ph
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit18

_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE7reserveEm.exit: ; preds = %.thread78, %_ZNSt12_Vector_baseI17PackedVarRefEntrySaIS0_EE13_M_deallocateEPS0_m.exit.i, %bb.c
  %.sroa.022.2 = phi ptr [ %i.m, %_ZNSt12_Vector_baseI17PackedVarRefEntrySaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ null, %bb.c ], [ null, %.thread78 ] ; 4 uses
  %.sroa.22.2 = phi ptr [ %i.n, %_ZNSt12_Vector_baseI17PackedVarRefEntrySaIS0_EE13_M_deallocateEPS0_m.exit.i ], [ null, %bb.c ], [ null, %.thread78 ] ; 2 uses
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  %.not4355 = icmp eq ptr %i.ac, %i.c
  br i1 %.not4355, label %._crit_edge61, label %.lr.ph60

._crit_edge61:                                    ; preds = %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE9push_backERKS0_.exit, %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE7reserveEm.exit
  %.sroa.022.0.lcssa = phi ptr [ %.sroa.022.2, %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE7reserveEm.exit ], [ %.sroa.022.3, %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE9push_backERKS0_.exit ]
  %.sroa.13.0.lcssa = phi ptr [ %.sroa.022.2, %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE7reserveEm.exit ], [ %.sroa.13.2, %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE9push_backERKS0_.exit ]
  %.sroa.22.0.lcssa = phi ptr [ %.sroa.22.2, %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE7reserveEm.exit ], [ %.sroa.22.3, %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE9push_backERKS0_.exit ]
  %i.ad = load ptr, ptr %0, align 8, !tbaa !412   ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !428
  store ptr %.sroa.022.0.lcssa, ptr %0, align 8, !tbaa !412
  store ptr %.sroa.13.0.lcssa, ptr %i.h, align 8, !tbaa !411
  store ptr %.sroa.22.0.lcssa, ptr %i.ae, align 8, !tbaa !428
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge61
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #24
  br label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit

_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit: ; preds = %._crit_edge61, %bb.f
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !69
  invoke void @_ZNSt8_Rb_treeIP7AstNodeSt4pairIKS1_mESt10_Select1stIS4_E17AstNodeComparatorSaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.aj)
          to label %_ZNSt3mapIP7AstNodem17AstNodeComparatorSaISt4pairIKS1_mEEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #25
  unreachable

_ZNSt3mapIP7AstNodem17AstNodeComparatorSaISt4pairIKS1_mEEED2Ev.exit: ; preds = %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

.thread:                                          ; preds = %bb.b, %_ZNSt12_Vector_baseI17PackedVarRefEntrySaIS0_EE11_M_allocateEm.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit18

.lr.ph60:                                         ; preds = %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE7reserveEm.exit, %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE9push_backERKS0_.exit
  %.sroa.019.059 = phi ptr [ %i.bg, %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE9push_backERKS0_.exit ], [ %i.ac, %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE7reserveEm.exit ] ; 2 uses
  %.sroa.22.058 = phi ptr [ %.sroa.22.3, %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE9push_backERKS0_.exit ], [ %.sroa.22.2, %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE7reserveEm.exit ] ; 5 uses
  %.sroa.13.057 = phi ptr [ %.sroa.13.2, %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE9push_backERKS0_.exit ], [ %.sroa.022.2, %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE7reserveEm.exit ] ; 3 uses
  %.sroa.022.056 = phi ptr [ %.sroa.022.3, %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE9push_backERKS0_.exit ], [ %.sroa.022.2, %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE7reserveEm.exit ] ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.019.059, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !441
  %i.ap = load ptr, ptr %0, align 8, !tbaa !412
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %.not.i = icmp eq ptr %.sroa.13.057, %.sroa.22.058
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.057, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !442
  br label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE9push_backERKS0_.exit

bb.i:                                             ; preds = %.lr.ph60
  %i.ar = ptrtoint ptr %.sroa.22.058 to i64
  %i.as = ptrtoint ptr %.sroa.022.056 to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 5 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775792
  br i1 %i.au, label %bb.j, label %_ZNKSt6vectorI17PackedVarRefEntrySaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.557) #27
          to label %.noexc15 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc15:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorI17PackedVarRefEntrySaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.av = ashr exact i64 %i.at, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = call i64 @llvm.umin.i64(i64 %i.aw, i64 576460752303423487)
  %i.az = select i1 %i.ax, i64 576460752303423487, i64 %i.ay ; 3 uses
  %.not.i.i.i14 = icmp ne i64 %i.az, 0
  call void @llvm.assume(i1 %.not.i.i.i14)
  %i.ba = shl nuw nsw i64 %i.az, 4
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #28
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc16:                                         ; preds = %_ZNKSt6vectorI17PackedVarRefEntrySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !442
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.022.056, %.sroa.22.058
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc16, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %i.bb, %.noexc16 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.sroa.022.056, %.noexc16 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !442, !alias.scope !991
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, %.sroa.22.058
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !16

_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc16
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bb, %.noexc16 ], [ %i.be, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.022.056, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.022.056, i64 noundef %i.at) #24
  br label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.az
  br label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.h
  %.sroa.022.3 = phi ptr [ %i.bb, %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.022.056, %bb.h ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.13.057, %bb.h ]
  %.sroa.22.3 = phi ptr [ %i.bf, %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.22.058, %bb.h ] ; 2 uses
  %.sroa.13.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 16 ; 2 uses
  %i.bg = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.019.059) #26 ; 2 uses
  %.not43 = icmp eq ptr %i.bg, %i.c
  br i1 %.not43, label %._crit_edge61, label %.lr.ph60

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorI17PackedVarRefEntrySaIS0_EE12_M_check_lenEmPKc.exit.i.i, %bb.j
  %lpad.loopexit.split-lp90 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %.sroa.022.056, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit18, label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.022.056, i64 noundef %i.at) #24
  br label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit18

_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit18: ; preds = %bb.l, %.loopexit.split-lp.loopexit.split-lp, %.thread, %bb.e
  %.pn11 = phi { ptr, i32 } [ %i.ab, %bb.e ], [ %i.am, %.thread ], [ %lpad.loopexit.split-lp90, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp90, %bb.l ]
  call void @_ZNSt3mapIP7AstNodem17AstNodeComparatorSaISt4pairIKS1_mEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt3mapIP7AstNodem17AstNodeComparatorSaISt4pairIKS1_mEEE7emplaceIJS1_RmEEES3_ISt17_Rb_tree_iteratorIS5_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.f
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %bb.f ], [ %i.b, %bb.a ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %bb.f ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !214  ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !214    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !286
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !286
  %i.k = tail call noundef i32 @_ZNK8FileLine15operatorCompareERKS_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.j) ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 140 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !287
  %i.o = load i32, ptr @_ZN12VNUser4InUse12s_userCntGblE, align 4, !tbaa !96 ; 4 uses
  %i.p = icmp ne i32 %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = and i64 %i.r, 4294967295
  %.not8.i.i.i.i.i = icmp eq i64 %i.s, 0
  %.not.i.i.i.i.i = select i1 %i.p, i1 true, i1 %.not8.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i.i.i.i, !prof !56

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %i.u = add i64 %i.t, 1                          ; 3 uses
  store i64 %i.u, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = and i64 %i.u, 4294967295
  store i64 %.sroa.0.0.insert.ext.i.i.i.i.i.i, ptr %i.q, align 8, !tbaa !63
  store i32 %i.o, ptr %i.m, align 4, !tbaa !287
  br label %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i.i.i.i

_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %.0.in.i.i.i.i.i = phi i64 [ %i.u, %bb.c ], [ %i.r, %bb.b ]
  %sext.i.i.i.i.i = shl i64 %.0.in.i.i.i.i.i, 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 140 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !287
  %i.x = icmp ne i32 %i.w, %i.o
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = and i64 %i.z, 4294967295
  %.not8.i7.i.i.i.i = icmp eq i64 %i.aa, 0
  %.not.i8.i.i.i.i = select i1 %i.x, i1 true, i1 %.not8.i7.i.i.i.i
  br i1 %.not.i8.i.i.i.i, label %bb.d, label %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit.i.i.i, !prof !56

bb.d:                                             ; preds = %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i.i.i.i
  %i.ab = load i64, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %i.ac = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ac, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %.sroa.0.0.insert.ext.i.i12.i.i.i.i = and i64 %i.ac, 4294967295
  store i64 %.sroa.0.0.insert.ext.i.i12.i.i.i.i, ptr %i.y, align 8, !tbaa !63
  store i32 %i.o, ptr %i.v, align 4, !tbaa !287
  br label %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit.i.i.i

_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit.i.i.i: ; preds = %bb.d, %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i.i.i.i
  %.0.in.i9.i.i.i.i = phi i64 [ %i.ac, %bb.d ], [ %i.z, %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i.i.i.i ]
  %sext.i10.i.i.i.i = shl i64 %.0.in.i9.i.i.i.i, 32
  %i.ad = icmp ult i64 %sext.i.i.i.i.i, %sext.i10.i.i.i.i
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit.i.i.i, %.split.i.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit.i.i.i, %.split.i.i.i
  %.sink.i.i.i = phi i64 [ 24, %bb.e ], [ 16, %.split.i.i.i ], [ 16, %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0811.i.i.i, %bb.e ], [ %.012.i.i.i, %.split.i.i.i ], [ %.012.i.i.i, %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit.i.i.i ] ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !240 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIP7AstNodem17AstNodeComparatorSaISt4pairIKS1_mEEE11lower_boundERS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !992

_ZNSt3mapIP7AstNodem17AstNodeComparatorSaISt4pairIKS1_mEEE11lower_boundERS4_.exit: ; preds = %bb.f
  %i.af = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.af, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIP7AstNodem17AstNodeComparatorSaISt4pairIKS1_mEEE11lower_boundERS4_.exit
  %i.ag = load ptr, ptr %1, align 8, !tbaa !214   ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !993 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !286
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !286
  %i.an = tail call noundef i32 @_ZNK8FileLine15operatorCompareERKS_(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef nonnull align 8 dereferenceable(48) %i.am) ; 2 uses
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %bb.h, label %.split

.split:                                           ; preds = %bb.g
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.critedge, label %_ZNSt3mapIP7AstNodem17AstNodeComparatorSaISt4pairIKS1_mEEE12emplace_hintIJS1_RmEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 140 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !287
  %i.ar = load i32, ptr @_ZN12VNUser4InUse12s_userCntGblE, align 4, !tbaa !96 ; 4 uses
  %i.as = icmp ne i32 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 144 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = and i64 %i.au, 4294967295
  %.not8.i.i = icmp eq i64 %i.av, 0
  %.not.i.i = select i1 %i.as, i1 true, i1 %.not8.i.i
  br i1 %.not.i.i, label %bb.i, label %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i, !prof !56

bb.i:                                             ; preds = %bb.h
  %i.aw = load i64, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %i.ax = add i64 %i.aw, 1                        ; 3 uses
  store i64 %i.ax, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.ax, 4294967295
  store i64 %.sroa.0.0.insert.ext.i.i.i, ptr %i.at, align 8, !tbaa !63
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !287
  br label %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i

_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i:  ; preds = %bb.i, %bb.h
  %.0.in.i.i = phi i64 [ %i.ax, %bb.i ], [ %i.au, %bb.h ]
  %sext.i.i = shl i64 %.0.in.i.i, 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 140 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !287
  %i.ba = icmp ne i32 %i.az, %i.ar
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 144 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bd = and i64 %i.bc, 4294967295
  %.not8.i7.i = icmp eq i64 %i.bd, 0
  %.not.i8.i = select i1 %i.ba, i1 true, i1 %.not8.i7.i
  br i1 %.not.i8.i, label %bb.j, label %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit, !prof !56

bb.j:                                             ; preds = %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i
  %i.be = load i64, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %i.bf = add i64 %i.be, 1                        ; 3 uses
  store i64 %i.bf, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %.sroa.0.0.insert.ext.i.i12.i = and i64 %i.bf, 4294967295
  store i64 %.sroa.0.0.insert.ext.i.i12.i, ptr %i.bb, align 8, !tbaa !63
  store i32 %i.ar, ptr %i.ay, align 4, !tbaa !287
  br label %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit

_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit:     ; preds = %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i, %bb.j
  %.0.in.i9.i = phi i64 [ %i.bf, %bb.j ], [ %i.bc, %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i ]
  %sext.i10.i = shl i64 %.0.in.i9.i, 32
  %i.bg = icmp ult i64 %sext.i.i, %sext.i10.i
  br i1 %i.bg, label %.critedge, label %_ZNSt3mapIP7AstNodem17AstNodeComparatorSaISt4pairIKS1_mEEE12emplace_hintIJS1_RmEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIP7AstNodem17AstNodeComparatorSaISt4pairIKS1_mEEE11lower_boundERS4_.exit, %.split, %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit
  %.08.lcssa.i.i.i21 = phi ptr [ %.19.i.i.i, %.split ], [ %.19.i.i.i, %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit ], [ %.19.i.i.i, %_ZNSt3mapIP7AstNodem17AstNodeComparatorSaISt4pairIKS1_mEEE11lower_boundERS4_.exit ], [ %i.c, %bb.a ]
  %i.bh = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #28 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  %i.bj = load ptr, ptr %1, align 8, !tbaa !214
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !993
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bl = load i64, ptr %2, align 8, !tbaa !88
  store i64 %i.bl, ptr %i.bk, align 8, !tbaa !441
  %i.bm = invoke { ptr, ptr } @_ZNSt8_Rb_treeIP7AstNodeSt4pairIKS1_mESt10_Select1stIS4_E17AstNodeComparatorSaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i21, ptr noundef nonnull align 8 dereferenceable(8) %i.bi)
          to label %bb.k unwind label %_ZNSt8_Rb_treeIP7AstNodeSt4pairIKS1_mESt10_Select1stIS4_E17AstNodeComparatorSaIS4_EE10_Auto_nodeD2Ev.exit.i.i ; 2 uses

bb.k:                                             ; preds = %.critedge
  %i.bn = extractvalue { ptr, ptr } %i.bm, 0      ; 2 uses
  %i.bo = extractvalue { ptr, ptr } %i.bm, 1      ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i10, label %_ZNSt8_Rb_treeIP7AstNodeSt4pairIKS1_mESt10_Select1stIS4_E17AstNodeComparatorSaIS4_EE10_Auto_node9_M_insertES2_IPSt18_Rb_tree_node_baseSC_E.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = invoke ptr @_ZNSt8_Rb_treeIP7AstNodeSt4pairIKS1_mESt10_Select1stIS4_E17AstNodeComparatorSaIS4_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSB_PSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.bn, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bh)
          to label %_ZNSt3mapIP7AstNodem17AstNodeComparatorSaISt4pairIKS1_mEEE12emplace_hintIJS1_RmEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit unwind label %_ZNSt8_Rb_treeIP7AstNodeSt4pairIKS1_mESt10_Select1stIS4_E17AstNodeComparatorSaIS4_EE10_Auto_nodeD2Ev.exit.i.i

_ZNSt8_Rb_treeIP7AstNodeSt4pairIKS1_mESt10_Select1stIS4_E17AstNodeComparatorSaIS4_EE10_Auto_nodeD2Ev.exit.i.i: ; preds = %bb.l, %.critedge
end_hunk_2
begin_hunk_3_@_ZN7AstNode2isI11AstNodeStmtS_EEbPKT0_:bb.a
  %i.c = phi i1 [ false, %bb.a ], [ %spec.select.i, %bb.b ]
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK6AstVar10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(280) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 249
  %i.b = load i8, ptr %i.a, align 1, !tbaa !194
  %i.c = and i8 %i.b, -5
  %spec.select.i = icmp eq i8 %i.c, 1
  ret i1 %spec.select.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK6AstVar6basicpEv(ptr noundef nonnull align 8 dereferenceable(280) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i, ptr %i.d, ptr %i.b    ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 352
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(162) %i.e)
  ret ptr %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10VDirection10isReadOnlyEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !194
  %i.b = and i8 %i.a, -5
  %spec.select = icmp eq i8 %i.b, 1
  ret i1 %spec.select
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !282
  tail call void @_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !283  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !412  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !428
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #24
  br label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit.i.i.i.i

_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !412  ; 3 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.07, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !428
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #24
  br label %_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit.i.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 104) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1012

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12PackedVarRefD2Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(64) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !412  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !428
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit

_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !412    ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !428
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #24
  br label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit2

_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit2: ; preds = %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12PackedVarRef6appendERK17PackedVarRefEntryRK7VAccess(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8, !tbaa !410, !range !137, !noundef !138
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !56

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.1, i32 noundef 917) ; 0 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.617)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.f) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = load i8, ptr %2, align 1, !tbaa !341
  %i.h = add i8 %i.g, -1
  %spec.select.i = icmp ult i8 %i.h, 2
  br i1 %spec.select.i, label %bb.d, label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE9push_backERKS0_.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !411  ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !428
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !442
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !411
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.n, ptr %i.i, align 8, !tbaa !411
  br label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE9push_backERKS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %0, align 8, !tbaa !412    ; 5 uses
  %i.p = ptrtoint ptr %i.j to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775792
  br i1 %i.s, label %bb.g, label %_ZNKSt6vectorI17PackedVarRefEntrySaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.557) #27
  unreachable

_ZNKSt6vectorI17PackedVarRefEntrySaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.t = ashr exact i64 %i.r, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 576460752303423487)
  %i.x = select i1 %i.v, i64 576460752303423487, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 4
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #28 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !442
  %.not10.i.i.i.i.i = icmp eq ptr %i.o, %i.j
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI17PackedVarRefEntrySaIS0_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.z, %_ZNKSt6vectorI17PackedVarRefEntrySaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.o, %_ZNKSt6vectorI17PackedVarRefEntrySaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !442, !alias.scope !1019
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !16

_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI17PackedVarRefEntrySaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.z, %_ZNKSt6vectorI17PackedVarRefEntrySaIS0_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ac, %.lr.ph.i.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !428
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.ag) #24
  br label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.z, ptr %0, align 8, !tbaa !412
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !411
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ah, ptr %i.k, align 8, !tbaa !428
  br label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.e, %bb.c
  %i.ai = load i8, ptr %2, align 1, !tbaa !341
  %i.aj = and i8 %i.ai, -3
  %spec.select.i5 = icmp eq i8 %i.aj, 0
  br i1 %spec.select.i5, label %bb.i, label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE9push_backERKS0_.exit19

bb.i:                                             ; preds = %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE9push_backERKS0_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !411 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !428
  %.not.i6 = icmp eq ptr %i.am, %i.ao
  br i1 %.not.i6, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !442
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !411
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !411
  br label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE9push_backERKS0_.exit19

bb.k:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !412 ; 5 uses
  %i.as = ptrtoint ptr %i.am to i64
  %i.at = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.au = sub i64 %i.as, %i.at                    ; 3 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775792
  br i1 %i.av, label %bb.l, label %_ZNKSt6vectorI17PackedVarRefEntrySaIS0_EE12_M_check_lenEmPKc.exit.i.i7

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.557) #27
  unreachable

_ZNKSt6vectorI17PackedVarRefEntrySaIS0_EE12_M_check_lenEmPKc.exit.i.i7: ; preds = %bb.k
  %i.aw = ashr exact i64 %i.au, 4                 ; 3 uses
  %.sroa.speculated.i.i.i8 = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i.i8, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 576460752303423487)
  %i.ba = select i1 %i.ay, i64 576460752303423487, i64 %i.az ; 3 uses
  %.not.i.i.i9 = icmp ne i64 %i.ba, 0
  tail call void @llvm.assume(i1 %.not.i.i.i9)
  %i.bb = shl nuw nsw i64 %i.ba, 4
  %i.bc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #28 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !442
  %.not10.i.i.i.i.i10 = icmp eq ptr %i.ar, %i.am
  br i1 %.not10.i.i.i.i.i10, label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i15, label %.lr.ph.i.i.i.i.i11

.lr.ph.i.i.i.i.i11:                               ; preds = %_ZNKSt6vectorI17PackedVarRefEntrySaIS0_EE12_M_check_lenEmPKc.exit.i.i7, %.lr.ph.i.i.i.i.i11
  %.012.i.i.i.i.i12 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i11 ], [ %i.bc, %_ZNKSt6vectorI17PackedVarRefEntrySaIS0_EE12_M_check_lenEmPKc.exit.i.i7 ] ; 2 uses
  %.0911.i.i.i.i.i13 = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i11 ], [ %i.ar, %_ZNKSt6vectorI17PackedVarRefEntrySaIS0_EE12_M_check_lenEmPKc.exit.i.i7 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i12, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i13, i64 16, i1 false), !tbaa.struct !442, !alias.scope !1020
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i13, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i12, i64 16 ; 2 uses
  %.not.i.i.i.i.i14 = icmp eq ptr %i.be, %i.am
  br i1 %.not.i.i.i.i.i14, label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i15, label %.lr.ph.i.i.i.i.i11, !llvm.loop !16

_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i15: ; preds = %.lr.ph.i.i.i.i.i11, %_ZNKSt6vectorI17PackedVarRefEntrySaIS0_EE12_M_check_lenEmPKc.exit.i.i7
  %.0.lcssa.i.i.i.i.i16 = phi ptr [ %i.bc, %_ZNKSt6vectorI17PackedVarRefEntrySaIS0_EE12_M_check_lenEmPKc.exit.i.i7 ], [ %i.bf, %.lr.ph.i.i.i.i.i11 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i16, i64 16
  %.not.i23.i.i17 = icmp eq ptr %i.ar, null
  br i1 %.not.i23.i.i17, label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i18, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i15
  %i.bh = load ptr, ptr %i.an, align 8, !tbaa !428
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.bj) #24
  br label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i18

_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i18: ; preds = %bb.m, %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i15
  store ptr %i.bc, ptr %i.ak, align 8, !tbaa !412
  store ptr %i.bg, ptr %i.al, align 8, !tbaa !411
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.ba
  store ptr %i.bk, ptr %i.an, align 8, !tbaa !428
  br label %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE9push_backERKS0_.exit19

_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE9push_backERKS0_.exit19: ; preds = %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i18, %bb.j, %_ZNSt6vectorI17PackedVarRefEntrySaIS0_EE9push_backERKS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE4findERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.not10.i = icmp eq ptr %i.b, null
  br i1 %.not10.i, label %_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.f
  %.012.i = phi ptr [ %.1.i, %bb.f ], [ %i.b, %bb.a ] ; 4 uses
  %.0811.i = phi ptr [ %.19.i, %bb.f ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !92   ; 3 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !92     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !286
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !286
  %i.k = tail call noundef i32 @_ZNK8FileLine15operatorCompareERKS_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.j) ; 2 uses
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %bb.b, label %.split.i

.split.i:                                         ; preds = %.lr.ph.i
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.b:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 140 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !287
  %i.o = load i32, ptr @_ZN12VNUser4InUse12s_userCntGblE, align 4, !tbaa !96 ; 4 uses
  %i.p = icmp ne i32 %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = and i64 %i.r, 4294967295
  %.not8.i.i.i = icmp eq i64 %i.s, 0
  %.not.i.i.i = select i1 %i.p, i1 true, i1 %.not8.i.i.i
  br i1 %.not.i.i.i, label %bb.c, label %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i.i, !prof !56

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %i.u = add i64 %i.t, 1                          ; 3 uses
  store i64 %i.u, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %.sroa.0.0.insert.ext.i.i.i.i = and i64 %i.u, 4294967295
  store i64 %.sroa.0.0.insert.ext.i.i.i.i, ptr %i.q, align 8, !tbaa !63
  store i32 %i.o, ptr %i.m, align 4, !tbaa !287
  br label %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i.i

_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i.i: ; preds = %bb.c, %bb.b
  %.0.in.i.i.i = phi i64 [ %i.u, %bb.c ], [ %i.r, %bb.b ]
  %sext.i.i.i = shl i64 %.0.in.i.i.i, 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 140 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !287
  %i.x = icmp ne i32 %i.w, %i.o
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = and i64 %i.z, 4294967295
  %.not8.i7.i.i = icmp eq i64 %i.aa, 0
  %.not.i8.i.i = select i1 %i.x, i1 true, i1 %.not8.i7.i.i
  br i1 %.not.i8.i.i, label %bb.d, label %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit.i, !prof !56

bb.d:                                             ; preds = %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i.i
  %i.ab = load i64, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %i.ac = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ac, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %.sroa.0.0.insert.ext.i.i12.i.i = and i64 %i.ac, 4294967295
  store i64 %.sroa.0.0.insert.ext.i.i12.i.i, ptr %i.y, align 8, !tbaa !63
  store i32 %i.o, ptr %i.v, align 4, !tbaa !287
  br label %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit.i

_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit.i:   ; preds = %bb.d, %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i.i
  %.0.in.i9.i.i = phi i64 [ %i.ac, %bb.d ], [ %i.z, %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i.i ]
  %sext.i10.i.i = shl i64 %.0.in.i9.i.i, 32
  %i.ad = icmp ult i64 %sext.i.i.i, %sext.i10.i.i
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit.i, %.split.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit.i, %.split.i
  %.sink.i = phi i64 [ 24, %bb.e ], [ 16, %.split.i ], [ 16, %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit.i ]
  %.19.i = phi ptr [ %.0811.i, %bb.e ], [ %.012.i, %.split.i ], [ %.012.i, %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit.i ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i, i64 %.sink.i
  %.1.i = load ptr, ptr %i.ae, align 8, !tbaa !240 ; 2 uses
  %.not.i = icmp eq ptr %.1.i, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit, label %.lr.ph.i, !llvm.loop !19

_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit: ; preds = %bb.f
  %i.af = icmp eq ptr %.19.i, %i.c
  br i1 %i.af, label %_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit
  %i.ag = load ptr, ptr %1, align 8, !tbaa !92    ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !92 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !286
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !286
  %i.an = tail call noundef i32 @_ZNK8FileLine15operatorCompareERKS_(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef nonnull align 8 dereferenceable(48) %i.am) ; 2 uses
  %.not.i3 = icmp eq i32 %i.an, 0
  br i1 %.not.i3, label %bb.h, label %.split

.split:                                           ; preds = %bb.g
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.thread, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 140 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !287
  %i.ar = load i32, ptr @_ZN12VNUser4InUse12s_userCntGblE, align 4, !tbaa !96 ; 4 uses
  %i.as = icmp ne i32 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 144 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = and i64 %i.au, 4294967295
  %.not8.i.i = icmp eq i64 %i.av, 0
  %.not.i.i4 = select i1 %i.as, i1 true, i1 %.not8.i.i
  br i1 %.not.i.i4, label %bb.i, label %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i, !prof !56

bb.i:                                             ; preds = %bb.h
  %i.aw = load i64, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %i.ax = add i64 %i.aw, 1                        ; 3 uses
  store i64 %i.ax, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.ax, 4294967295
  store i64 %.sroa.0.0.insert.ext.i.i.i, ptr %i.at, align 8, !tbaa !63
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !287
  br label %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i

_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i:  ; preds = %bb.i, %bb.h
  %.0.in.i.i = phi i64 [ %i.ax, %bb.i ], [ %i.au, %bb.h ]
  %sext.i.i = shl i64 %.0.in.i.i, 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 140 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !287
  %i.ba = icmp ne i32 %i.az, %i.ar
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 144 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bd = and i64 %i.bc, 4294967295
  %.not8.i7.i = icmp eq i64 %i.bd, 0
  %.not.i8.i = select i1 %i.ba, i1 true, i1 %.not8.i7.i
  br i1 %.not.i8.i, label %bb.j, label %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit, !prof !56

bb.j:                                             ; preds = %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i
  %i.be = load i64, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %i.bf = add i64 %i.be, 1                        ; 3 uses
  store i64 %i.bf, ptr @_ZZN14SplitNodeOrder6nextIdEvE10s_sequence, align 8, !tbaa !88
  %.sroa.0.0.insert.ext.i.i12.i = and i64 %i.bf, 4294967295
  store i64 %.sroa.0.0.insert.ext.i.i12.i, ptr %i.bb, align 8, !tbaa !63
  store i32 %i.ar, ptr %i.ay, align 4, !tbaa !287
  br label %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit

_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit:     ; preds = %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i, %bb.j
  %.0.in.i9.i = phi i64 [ %i.bf, %bb.j ], [ %i.bc, %_ZN14SplitNodeOrder9nodeOrderEPK7AstNode.exit.i ]
  %sext.i10.i = shl i64 %.0.in.i9.i, 32
  %i.bg = icmp ult i64 %sext.i.i, %sext.i10.i
  br i1 %i.bg, label %_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.thread, label %bb.k

bb.k:                                             ; preds = %.split, %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit
  br label %_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.thread

_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.thread: ; preds = %bb.a, %_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit, %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit, %.split, %bb.k
  %.sroa.0.0 = phi ptr [ %.19.i, %bb.k ], [ %i.c, %.split ], [ %i.c, %_ZNSt8_Rb_treeIP6AstVarSt4pairIKS1_12PackedVarRefESt10_Select1stIS5_E17AstNodeComparatorSaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit ], [ %i.c, %_ZNK17AstNodeComparatorclEPK7AstNodeS2_.exit ], [ %i.c, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNK7AstNode6user2uEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.b = load i32, ptr %i.a, align 4, !tbaa !400
  %i.c = load i32, ptr @_ZN12VNUser2InUse12s_userCntGblE, align 4, !tbaa !96
  %i.d = icmp eq i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %.sroa.0.0 = select i1 %i.d, ptr %i.g, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
end_hunk_3
