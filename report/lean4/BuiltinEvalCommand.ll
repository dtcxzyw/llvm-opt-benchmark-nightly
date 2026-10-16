Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/BuiltinEvalCommand?download=true
inline.NumInlined: 5050
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg:bb.a
  %i.bg = icmp sgt i32 %.val.i.i817, 0
  br i1 %i.bg, label %bb.y, label %bb.z, !prof !16

bb.y:                                             ; preds = %bb.x
  %i.bh = add nuw i32 %.val.i.i817, 1
  store i32 %i.bh, ptr %i.bc, align 4, !tbaa !14
  br label %lean_inc.exit548

bb.z:                                             ; preds = %bb.x
  %.not.i.i818 = icmp eq i32 %.val.i.i817, 0
  br i1 %.not.i.i818, label %lean_inc.exit548, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bi = atomicrmw sub ptr %i.bc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit548

lean_inc.exit548:                                 ; preds = %bb.aa, %bb.z, %bb.y, %bb.w
  br i1 %.not.i812, label %bb.ab, label %lean_dec.exit603

bb.ab:                                            ; preds = %lean_inc.exit548
  %i.bj = load i32, ptr %i.an, align 8, !tbaa !14 ; 3 uses
  %i.bk = icmp sgt i32 %i.bj, 1
  br i1 %i.bk, label %bb.ac, label %bb.ad, !prof !16

bb.ac:                                            ; preds = %bb.ab
  %i.bl = add nsw i32 %i.bj, -1
  store i32 %i.bl, ptr %i.an, align 8, !tbaa !14
  br label %lean_dec.exit603

bb.ad:                                            ; preds = %bb.ab
  %.not.i607 = icmp eq i32 %i.bj, 0
  br i1 %.not.i607, label %lean_dec.exit603, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.an) #6
  br label %lean_dec.exit603

lean_dec.exit603:                                 ; preds = %lean_inc.exit548, %bb.ac, %bb.ad, %bb.ae, %lean_del_object.exit
  %.0515 = phi ptr [ %i.an, %lean_del_object.exit ], [ inttoptr (i64 1 to ptr), %bb.ae ], [ inttoptr (i64 1 to ptr), %bb.ad ], [ inttoptr (i64 1 to ptr), %bb.ac ], [ inttoptr (i64 1 to ptr), %lean_inc.exit548 ] ; 16 uses
  %i.bm = tail call ptr @l_Lean_Expr_appFn_x21(ptr noundef %i.bc) #6 ; 4 uses
  %i.bn = tail call ptr @l_Lean_Expr_appArg_x21(ptr noundef %i.bm) #6 ; 27 uses
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !14 ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, 1
  br i1 %i.bp, label %bb.af, label %bb.ag, !prof !16

bb.af:                                            ; preds = %lean_dec.exit603
  %i.bq = add nsw i32 %i.bo, -1
  store i32 %i.bq, ptr %i.bm, align 4, !tbaa !14
  br label %lean_dec_ref.exit794

bb.ag:                                            ; preds = %lean_dec.exit603
  %.not.i793 = icmp eq i32 %i.bo, 0
  br i1 %.not.i793, label %lean_dec_ref.exit794, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bm) #6
  br label %lean_dec_ref.exit794

lean_dec_ref.exit794:                             ; preds = %bb.af, %bb.ag, %bb.ah
  %i.br = load atomic i32, ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6_once seq_cst, align 4, !tbaa !18
  %i.bs = icmp eq i32 %i.br, 1
  br i1 %i.bs, label %bb.ai, label %bb.aj, !prof !16

bb.ai:                                            ; preds = %lean_dec_ref.exit794
  %i.bt = load ptr, ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6, align 8, !tbaa !10
  br label %lean_obj_once.exit821

bb.aj:                                            ; preds = %lean_dec_ref.exit794
  %i.bu = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6, ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6_once, ptr noundef nonnull @_init_l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6) #6
  br label %lean_obj_once.exit821

lean_obj_once.exit821:                            ; preds = %bb.ai, %bb.aj
  %.0.i820 = phi ptr [ %i.bt, %bb.ai ], [ %i.bu, %bb.aj ]
  %.val.i.i822 = load i32, ptr %i.bn, align 4, !tbaa !14 ; 3 uses
  %i.bv = icmp sgt i32 %.val.i.i822, 0
  br i1 %i.bv, label %bb.ak, label %bb.al, !prof !16

bb.ak:                                            ; preds = %lean_obj_once.exit821
  %i.bw = add nuw i32 %.val.i.i822, 1
  store i32 %i.bw, ptr %i.bn, align 4, !tbaa !14
  br label %lean_inc_ref.exit824

bb.al:                                            ; preds = %lean_obj_once.exit821
  %.not.i.i823 = icmp eq i32 %.val.i.i822, 0
  br i1 %.not.i.i823, label %lean_inc_ref.exit824, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bx = atomicrmw sub ptr %i.bn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit824

lean_inc_ref.exit824:                             ; preds = %bb.ak, %bb.al, %bb.am
  %i.by = tail call ptr @l_Lean_Meta_isExprDefEq(ptr noundef nonnull %i.bn, ptr noundef %.0.i820, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20) #6 ; 13 uses
  %i.bz = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.ca = and i64 %i.bz, 1
  %.not.i825 = icmp eq i64 %i.ca, 0               ; 2 uses
  br i1 %.not.i825, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %lean_inc_ref.exit824
  %i.cb = lshr i64 %i.bz, 1
  %i.cc = trunc i64 %i.cb to i32
  br label %lean_obj_tag.exit828

bb.ao:                                            ; preds = %lean_inc_ref.exit824
  %i.cd = getelementptr i8, ptr %i.by, i64 4
  %.val.i827 = load i32, ptr %i.cd, align 4
  %i.ce = lshr i32 %.val.i827, 24
  br label %lean_obj_tag.exit828

lean_obj_tag.exit828:                             ; preds = %bb.an, %bb.ao
  %.0.i826 = phi i32 [ %i.cc, %bb.an ], [ %i.ce, %bb.ao ]
  %i.cf = icmp eq i32 %.0.i826, 0
  br i1 %i.cf, label %bb.ap, label %bb.mu

bb.ap:                                            ; preds = %lean_obj_tag.exit828
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !10 ; 32 uses
  %i.ci = ptrtoint ptr %i.ch to i64               ; 3 uses
  %i.cj = and i64 %i.ci, 1
  %.not.i545 = icmp eq i64 %i.cj, 0               ; 10 uses
  br i1 %.not.i545, label %bb.aq, label %lean_inc.exit546

bb.aq:                                            ; preds = %bb.ap
  %.val.i.i829 = load i32, ptr %i.ch, align 4, !tbaa !14 ; 3 uses
  %i.ck = icmp sgt i32 %.val.i.i829, 0
  br i1 %i.ck, label %bb.ar, label %bb.as, !prof !16

bb.ar:                                            ; preds = %bb.aq
  %i.cl = add nuw i32 %.val.i.i829, 1
  store i32 %i.cl, ptr %i.ch, align 4, !tbaa !14
  br label %lean_inc.exit546

bb.as:                                            ; preds = %bb.aq
  %.not.i.i830 = icmp eq i32 %.val.i.i829, 0
  br i1 %.not.i.i830, label %lean_inc.exit546, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cm = atomicrmw sub ptr %i.ch, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit546

lean_inc.exit546:                                 ; preds = %bb.at, %bb.as, %bb.ar, %bb.ap
  %.val.i832 = load i32, ptr %i.by, align 8, !tbaa !14 ; 4 uses
  %i.cn = icmp eq i32 %.val.i832, 1
  br i1 %i.cn, label %.preheader.i, label %bb.ay

.preheader.i:                                     ; preds = %lean_inc.exit546
  %i.co = load ptr, ptr %i.cg, align 8, !tbaa !10 ; 4 uses
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = and i64 %i.cp, 1
  %.not.i.i833 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i833, label %bb.au, label %lean_dec.exit.i

bb.au:                                            ; preds = %.preheader.i
  %i.cr = load i32, ptr %i.co, align 4, !tbaa !14 ; 3 uses
  %i.cs = icmp sgt i32 %i.cr, 1
  br i1 %i.cs, label %bb.av, label %bb.aw, !prof !16

bb.av:                                            ; preds = %bb.au
  %i.ct = add nsw i32 %i.cr, -1
  store i32 %i.ct, ptr %i.co, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.aw:                                            ; preds = %bb.au
  %.not.i7.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.co) #6
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.ax, %bb.aw, %bb.av, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.by) #6
  br label %lean_dec_ref_known.exit

bb.ay:                                            ; preds = %lean_inc.exit546
  %i.cu = icmp sgt i32 %.val.i832, 1
  br i1 %i.cu, label %bb.az, label %bb.ba, !prof !16

bb.az:                                            ; preds = %bb.ay
  %i.cv = add nsw i32 %.val.i832, -1
  store i32 %i.cv, ptr %i.by, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.ba:                                            ; preds = %bb.ay
  %.not.i8.i = icmp eq i32 %.val.i832, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.by) #6
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.az, %bb.ba, %bb.bb
  %i.cw = lshr i64 %i.ci, 1
  %i.cx = and i64 %i.ci, 510
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %bb.bc, label %bb.je

bb.bc:                                            ; preds = %lean_dec_ref_known.exit
  br i1 %.not.i545, label %bb.bd, label %lean_inc.exit544

bb.bd:                                            ; preds = %bb.bc
  %.val.i.i834 = load i32, ptr %i.ch, align 512, !tbaa !14 ; 3 uses
  %i.cz = icmp sgt i32 %.val.i.i834, 0
  br i1 %i.cz, label %bb.be, label %bb.bf, !prof !16

bb.be:                                            ; preds = %bb.bd
  %i.da = add nuw i32 %.val.i.i834, 1
  store i32 %i.da, ptr %i.ch, align 512, !tbaa !14
  br label %lean_inc.exit544

bb.bf:                                            ; preds = %bb.bd
  %.not.i.i835 = icmp eq i32 %.val.i.i834, 0
  br i1 %.not.i.i835, label %lean_inc.exit544, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.db = atomicrmw sub ptr %i.ch, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit544

lean_inc.exit544:                                 ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bc
  %i.dc = tail call ptr @lean_alloc_object(i64 noundef 48) #6 ; 9 uses
  store i32 1, ptr %i.dc, align 4, !tbaa !14
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = and i32 %i.de, 65535
  %i.dg = or disjoint i32 %i.df, -184549376
  store i32 %i.dg, ptr %i.dd, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___lam__1___boxed, ptr %i.dh, align 8, !tbaa !10
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store i16 11, ptr %i.di, align 8, !tbaa !22
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 18
  store i16 3, ptr %i.dj, align 2, !tbaa !22
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store ptr %3, ptr %i.dk, align 8, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  store ptr %i.ch, ptr %i.dl, align 8, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  store ptr inttoptr (i64 3 to ptr), ptr %i.dm, align 8, !tbaa !10
  %.val.i.i837 = load i32, ptr %i.bn, align 4, !tbaa !14 ; 3 uses
  %i.dn = icmp sgt i32 %.val.i.i837, 0
  br i1 %i.dn, label %bb.bh, label %bb.bi, !prof !16

bb.bh:                                            ; preds = %lean_inc.exit544
  %i.do = add nuw i32 %.val.i.i837, 1
  store i32 %i.do, ptr %i.bn, align 4, !tbaa !14
  br label %lean_inc_ref.exit839

bb.bi:                                            ; preds = %lean_inc.exit544
  %.not.i.i838 = icmp eq i32 %.val.i.i837, 0
  br i1 %.not.i.i838, label %lean_inc_ref.exit839, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dp = atomicrmw sub ptr %i.bn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit839

lean_inc_ref.exit839:                             ; preds = %bb.bh, %bb.bi, %bb.bj
  %.val.i.i840 = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.dq = icmp sgt i32 %.val.i.i840, 0
  br i1 %i.dq, label %bb.bk, label %bb.bl, !prof !16

bb.bk:                                            ; preds = %lean_inc_ref.exit839
  %i.dr = add nuw i32 %.val.i.i840, 1
  store i32 %i.dr, ptr %0, align 4, !tbaa !14
  br label %lean_inc_ref.exit842

bb.bl:                                            ; preds = %lean_inc_ref.exit839
  %.not.i.i841 = icmp eq i32 %.val.i.i840, 0
  br i1 %.not.i.i841, label %lean_inc_ref.exit842, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ds = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit842

lean_inc_ref.exit842:                             ; preds = %bb.bk, %bb.bl, %bb.bm
  %i.dt = tail call ptr @l_Lean_Meta_withLocalDecl___at___00Lean_Meta_withLocalDeclD___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__0_spec__1_spec__1___redArg(ptr noundef %4, ptr noundef nonnull %0, ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__8_value, i8 noundef zeroext 0, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.dc, i8 noundef zeroext 0, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20) ; 10 uses
  %i.du = ptrtoint ptr %i.dt to i64               ; 2 uses
  %i.dv = and i64 %i.du, 1
  %.not.i843 = icmp eq i64 %i.dv, 0               ; 2 uses
  br i1 %.not.i843, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %lean_inc_ref.exit842
  %i.dw = lshr i64 %i.du, 1
  %i.dx = trunc i64 %i.dw to i32
  br label %lean_obj_tag.exit846

bb.bo:                                            ; preds = %lean_inc_ref.exit842
  %i.dy = getelementptr i8, ptr %i.dt, i64 4
  %.val.i845 = load i32, ptr %i.dy, align 4
  %i.dz = lshr i32 %.val.i845, 24
  br label %lean_obj_tag.exit846

lean_obj_tag.exit846:                             ; preds = %bb.bn, %bb.bo
  %.0.i844 = phi i32 [ %i.dx, %bb.bn ], [ %i.dz, %bb.bo ]
  %i.ea = icmp eq i32 %.0.i844, 0
  br i1 %i.ea, label %bb.bp, label %bb.hi

bb.bp:                                            ; preds = %lean_obj_tag.exit846
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !10 ; 5 uses
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = and i64 %i.ed, 1
  %.not.i541 = icmp eq i64 %i.ee, 0
  br i1 %.not.i541, label %bb.bq, label %lean_inc.exit542

bb.bq:                                            ; preds = %bb.bp
  %.val.i.i847 = load i32, ptr %i.ec, align 4, !tbaa !14 ; 3 uses
  %i.ef = icmp sgt i32 %.val.i.i847, 0
  br i1 %i.ef, label %bb.br, label %bb.bs, !prof !16

bb.br:                                            ; preds = %bb.bq
  %i.eg = add nuw i32 %.val.i.i847, 1
  store i32 %i.eg, ptr %i.ec, align 4, !tbaa !14
  br label %lean_inc.exit542

bb.bs:                                            ; preds = %bb.bq
  %.not.i.i848 = icmp eq i32 %.val.i.i847, 0
  br i1 %.not.i.i848, label %lean_inc.exit542, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.eh = atomicrmw sub ptr %i.ec, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit542

lean_inc.exit542:                                 ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bp
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.dt, i32 noundef 1)
  %i.ei = tail call ptr @lean_alloc_object(i64 noundef 40) #6 ; 5 uses
  store i32 1, ptr %i.ei, align 4, !tbaa !14
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = and i32 %i.ek, 65535
  %i.em = or disjoint i32 %i.el, -167772160
  store i32 %i.em, ptr %i.ej, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i64 0, ptr %i.en, align 8, !tbaa !12
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 2, ptr %i.eo, align 8, !tbaa !12
  %i.ep = tail call ptr @lean_array_push(ptr noundef nonnull %i.ei, ptr noundef %i.ec) #6
  %i.eq = tail call ptr @lean_array_push(ptr noundef %i.ep, ptr noundef %i.bc) #6
  %i.er = tail call ptr @l_Lean_Meta_mkAppM(ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__11_value, ptr noundef %i.eq, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20) #6 ; 10 uses
  %i.es = ptrtoint ptr %i.er to i64               ; 2 uses
  %i.et = and i64 %i.es, 1
  %.not.i850 = icmp eq i64 %i.et, 0               ; 2 uses
  br i1 %.not.i850, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %lean_inc.exit542
  %i.eu = lshr i64 %i.es, 1
  %i.ev = trunc i64 %i.eu to i32
  br label %lean_obj_tag.exit853

bb.bv:                                            ; preds = %lean_inc.exit542
  %i.ew = getelementptr i8, ptr %i.er, i64 4
  %.val.i852 = load i32, ptr %i.ew, align 4
  %i.ex = lshr i32 %.val.i852, 24
  br label %lean_obj_tag.exit853

lean_obj_tag.exit853:                             ; preds = %bb.bu, %bb.bv
  %.0.i851 = phi i32 [ %i.ev, %bb.bu ], [ %i.ex, %bb.bv ]
  %i.ey = icmp eq i32 %.0.i851, 0
  br i1 %i.ey, label %bb.bw, label %bb.fq

bb.bw:                                            ; preds = %lean_obj_tag.exit853
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !10 ; 5 uses
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = and i64 %i.fb, 1
  %.not.i539 = icmp eq i64 %i.fc, 0
  br i1 %.not.i539, label %bb.bx, label %lean_inc.exit540

bb.bx:                                            ; preds = %bb.bw
  %.val.i.i854 = load i32, ptr %i.fa, align 4, !tbaa !14 ; 3 uses
  %i.fd = icmp sgt i32 %.val.i.i854, 0
  br i1 %i.fd, label %bb.by, label %bb.bz, !prof !16

bb.by:                                            ; preds = %bb.bx
  %i.fe = add nuw i32 %.val.i.i854, 1
  store i32 %i.fe, ptr %i.fa, align 4, !tbaa !14
  br label %lean_inc.exit540

bb.bz:                                            ; preds = %bb.bx
  %.not.i.i855 = icmp eq i32 %.val.i.i854, 0
  br i1 %.not.i.i855, label %lean_inc.exit540, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ff = atomicrmw sub ptr %i.fa, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit540

lean_inc.exit540:                                 ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bw
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.er, i32 noundef 1)
  %i.fg = tail call ptr @l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval(ptr noundef %5, ptr noundef %i.fa, i8 noundef zeroext %6, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20) ; 10 uses
  %i.fh = ptrtoint ptr %i.fg to i64               ; 2 uses
  %i.fi = and i64 %i.fh, 1
  %.not.i857 = icmp eq i64 %i.fi, 0               ; 2 uses
  br i1 %.not.i857, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %lean_inc.exit540
  %i.fj = lshr i64 %i.fh, 1
  %i.fk = trunc i64 %i.fj to i32
  br label %lean_obj_tag.exit860

bb.cc:                                            ; preds = %lean_inc.exit540
  %i.fl = getelementptr i8, ptr %i.fg, i64 4
  %.val.i859 = load i32, ptr %i.fl, align 4
  %i.fm = lshr i32 %.val.i859, 24
  br label %lean_obj_tag.exit860

lean_obj_tag.exit860:                             ; preds = %bb.cb, %bb.cc
  %.0.i858 = phi i32 [ %i.fk, %bb.cb ], [ %i.fm, %bb.cc ]
  %i.fn = icmp eq i32 %.0.i858, 0
  br i1 %i.fn, label %bb.cd, label %bb.ec

bb.cd:                                            ; preds = %lean_obj_tag.exit860
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !10 ; 5 uses
  %i.fq = ptrtoint ptr %i.fp to i64
  %i.fr = and i64 %i.fq, 1
  %.not.i537 = icmp eq i64 %i.fr, 0
  br i1 %.not.i537, label %bb.ce, label %lean_inc.exit538

bb.ce:                                            ; preds = %bb.cd
  %.val.i.i861 = load i32, ptr %i.fp, align 4, !tbaa !14 ; 3 uses
  %i.fs = icmp sgt i32 %.val.i.i861, 0
  br i1 %i.fs, label %bb.cf, label %bb.cg, !prof !16

bb.cf:                                            ; preds = %bb.ce
  %i.ft = add nuw i32 %.val.i.i861, 1
  store i32 %i.ft, ptr %i.fp, align 4, !tbaa !14
  br label %lean_inc.exit538

bb.cg:                                            ; preds = %bb.ce
  %.not.i.i862 = icmp eq i32 %.val.i.i861, 0
  br i1 %.not.i.i862, label %lean_inc.exit538, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.fu = atomicrmw sub ptr %i.fp, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit538

lean_inc.exit538:                                 ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.cd
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.fg, i32 noundef 1)
  %i.fv = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !10
  %i.fx = load ptr, ptr @l_Lean_Elab_inServer, align 8, !tbaa !10
  %i.fy = tail call zeroext i8 @l_Lean_Option_get___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__0_spec__3(ptr noundef %11, ptr noundef %i.fw, ptr noundef %i.fx)
  %i.fz = icmp eq i8 %i.fy, 0
  br i1 %i.fz, label %bb.ci, label %bb.cn

bb.ci:                                            ; preds = %lean_inc.exit538
  br i1 %.not.i545, label %bb.cj, label %lean_dec.exit601

bb.cj:                                            ; preds = %bb.ci
  %i.ga = load i32, ptr %i.ch, align 512, !tbaa !14 ; 3 uses
  %i.gb = icmp sgt i32 %i.ga, 1
  br i1 %i.gb, label %bb.ck, label %bb.cl, !prof !16

bb.ck:                                            ; preds = %bb.cj
  %i.gc = add nsw i32 %i.ga, -1
  store i32 %i.gc, ptr %i.ch, align 512, !tbaa !14
  br label %lean_dec.exit601

bb.cl:                                            ; preds = %bb.cj
  %.not.i609 = icmp eq i32 %i.ga, 0
  br i1 %.not.i609, label %lean_dec.exit601, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ch) #6
  br label %lean_dec.exit601

bb.cn:                                            ; preds = %lean_inc.exit538
  br i1 %.not.i545, label %bb.co, label %lean_dec.exit601

bb.co:                                            ; preds = %bb.cn
  %i.gd = load i32, ptr %i.ch, align 512, !tbaa !14 ; 3 uses
  %i.ge = icmp sgt i32 %i.gd, 1
  br i1 %i.ge, label %bb.cp, label %bb.cq, !prof !16

bb.cp:                                            ; preds = %bb.co
  %i.gf = add nsw i32 %i.gd, -1
  store i32 %i.gf, ptr %i.ch, align 512, !tbaa !14
  br label %lean_dec.exit601

bb.cq:                                            ; preds = %bb.co
  %.not.i611 = icmp eq i32 %i.gd, 0
  br i1 %.not.i611, label %lean_dec.exit601, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ch) #6
  br label %lean_dec.exit601

lean_dec.exit601:                                 ; preds = %bb.cn, %bb.cp, %bb.cq, %bb.cr, %bb.ci, %bb.ck, %bb.cl, %bb.cm
  %.0513 = phi i8 [ 1, %bb.ci ], [ 1, %bb.cm ], [ 1, %bb.cl ], [ 1, %bb.ck ], [ 0, %bb.cr ], [ 0, %bb.cq ], [ 0, %bb.cp ], [ 0, %bb.cn ]
  %i.gg = tail call ptr @l_Lean_evalConst___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__0_spec__2___redArg(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %i.fp, i8 noundef zeroext %.0513, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef nonnull %19, ptr noundef %20) ; 14 uses
  %i.gh = ptrtoint ptr %i.gg to i64               ; 2 uses
  %i.gi = and i64 %i.gh, 1
  %.not.i864 = icmp eq i64 %i.gi, 0               ; 3 uses
  br i1 %.not.i864, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %lean_dec.exit601
  %i.gj = lshr i64 %i.gh, 1
  %i.gk = trunc i64 %i.gj to i32
  br label %lean_obj_tag.exit867

bb.ct:                                            ; preds = %lean_dec.exit601
  %i.gl = getelementptr i8, ptr %i.gg, i64 4
  %.val.i866 = load i32, ptr %i.gl, align 4
  %i.gm = lshr i32 %.val.i866, 24
  br label %lean_obj_tag.exit867

lean_obj_tag.exit867:                             ; preds = %bb.cs, %bb.ct
  %.0.i865 = phi i32 [ %i.gk, %bb.cs ], [ %i.gm, %bb.ct ]
  %i.gn = icmp eq i32 %.0.i865, 0
  br i1 %i.gn, label %bb.cu, label %bb.dh

bb.cu:                                            ; preds = %lean_obj_tag.exit867
  %i.go = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !10 ; 5 uses
  %.val803 = load i32, ptr %i.gg, align 8, !tbaa !14
  %i.gq = icmp eq i32 %.val803, 1                 ; 2 uses
  br i1 %i.gq, label %lean_dec.exit597, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = and i64 %i.gr, 1
  %.not.i535 = icmp eq i64 %i.gs, 0
  br i1 %.not.i535, label %bb.cw, label %lean_inc.exit536

bb.cw:                                            ; preds = %bb.cv
  %.val.i.i868 = load i32, ptr %i.gp, align 4, !tbaa !14 ; 3 uses
  %i.gt = icmp sgt i32 %.val.i.i868, 0
  br i1 %i.gt, label %bb.cx, label %bb.cy, !prof !16

bb.cx:                                            ; preds = %bb.cw
  %i.gu = add nuw i32 %.val.i.i868, 1
  store i32 %i.gu, ptr %i.gp, align 4, !tbaa !14
  br label %lean_inc.exit536

bb.cy:                                            ; preds = %bb.cw
  %.not.i.i869 = icmp eq i32 %.val.i.i868, 0
  br i1 %.not.i.i869, label %lean_inc.exit536, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.gv = atomicrmw sub ptr %i.gp, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit536

lean_inc.exit536:                                 ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cv
  br i1 %.not.i864, label %bb.da, label %lean_dec.exit597

bb.da:                                            ; preds = %lean_inc.exit536
  %i.gw = load i32, ptr %i.gg, align 8, !tbaa !14 ; 3 uses
  %i.gx = icmp sgt i32 %i.gw, 1
  br i1 %i.gx, label %bb.db, label %bb.dc, !prof !16

bb.db:                                            ; preds = %bb.da
  %i.gy = add nsw i32 %i.gw, -1
  store i32 %i.gy, ptr %i.gg, align 8, !tbaa !14
  br label %lean_dec.exit597

bb.dc:                                            ; preds = %bb.da
  %.not.i613 = icmp eq i32 %i.gw, 0
  br i1 %.not.i613, label %lean_dec.exit597, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gg) #6
  br label %lean_dec.exit597

lean_dec.exit597:                                 ; preds = %lean_inc.exit536, %bb.db, %bb.dc, %bb.dd, %bb.cu
  %.0511 = phi ptr [ %i.gg, %bb.cu ], [ inttoptr (i64 1 to ptr), %bb.dd ], [ inttoptr (i64 1 to ptr), %bb.dc ], [ inttoptr (i64 1 to ptr), %bb.db ], [ inttoptr (i64 1 to ptr), %lean_inc.exit536 ]
  %i.gz = tail call ptr @lean_alloc_object(i64 noundef 48) #6 ; 9 uses
  store i32 1, ptr %i.gz, align 4, !tbaa !14
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 4 ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4
  %i.hc = and i32 %i.hb, 65535
  %i.hd = or disjoint i32 %i.hc, -184549376
  store i32 %i.hd, ptr %i.ha, align 4
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___lam__2___boxed, ptr %i.he, align 8, !tbaa !10
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store i16 6, ptr %i.hf, align 8, !tbaa !22
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gz, i64 18
  store i16 3, ptr %i.hg, align 2, !tbaa !22
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  store ptr %13, ptr %i.hh, align 8, !tbaa !10
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  store ptr %i.gp, ptr %i.hi, align 8, !tbaa !10
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  store ptr %10, ptr %i.hj, align 8, !tbaa !10
  br i1 %i.bd, label %bb.df, label %bb.de

bb.de:                                            ; preds = %lean_dec.exit597
  %i.hk = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %bb.df

bb.df:                                            ; preds = %lean_dec.exit597, %bb.de
  %.sink1132 = phi ptr [ %i.hk, %bb.de ], [ %.0515, %lean_dec.exit597 ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sink1132, i64 8
  store ptr %i.bn, ptr %i.hl, align 8, !tbaa !10
  %i.hm = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store ptr %i.gz, ptr %i.hn, align 8, !tbaa !10
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store ptr %.sink1132, ptr %i.ho, align 8, !tbaa !10
  %i.hp = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store ptr %i.hm, ptr %i.hq, align 8, !tbaa !10
  br i1 %i.gq, label %lean_dec.exit595.sink.split, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.hr = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit595.sink.split

bb.dh:                                            ; preds = %lean_obj_tag.exit867
  %i.hs = load i32, ptr %i.bn, align 4, !tbaa !14 ; 3 uses
  %i.ht = icmp sgt i32 %i.hs, 1
  br i1 %i.ht, label %bb.di, label %bb.dj, !prof !16

bb.di:                                            ; preds = %bb.dh
  %i.hu = add nsw i32 %i.hs, -1
  store i32 %i.hu, ptr %i.bn, align 4, !tbaa !14
  br label %lean_dec_ref.exit792

bb.dj:                                            ; preds = %bb.dh
  %.not.i791 = icmp eq i32 %i.hs, 0
  br i1 %.not.i791, label %lean_dec_ref.exit792, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bn) #6
  br label %lean_dec_ref.exit792

lean_dec_ref.exit792:                             ; preds = %bb.di, %bb.dj, %bb.dk
  %i.hv = ptrtoint ptr %.0515 to i64
  %i.hw = and i64 %i.hv, 1
  %.not.i871 = icmp eq i64 %i.hw, 0
  br i1 %.not.i871, label %bb.dl, label %lean_del_object.exit872

bb.dl:                                            ; preds = %lean_dec_ref.exit792
  tail call void @lean_free_object(ptr noundef nonnull %.0515) #6
  br label %lean_del_object.exit872

lean_del_object.exit872:                          ; preds = %lean_dec_ref.exit792, %bb.dl
  %i.hx = load i32, ptr %13, align 4, !tbaa !14   ; 3 uses
  %i.hy = icmp sgt i32 %i.hx, 1
  br i1 %i.hy, label %bb.dm, label %bb.dn, !prof !16

bb.dm:                                            ; preds = %lean_del_object.exit872
  %i.hz = add nsw i32 %i.hx, -1
  store i32 %i.hz, ptr %13, align 4, !tbaa !14
  br label %lean_dec_ref.exit790

bb.dn:                                            ; preds = %lean_del_object.exit872
  %.not.i789 = icmp eq i32 %i.hx, 0
  br i1 %.not.i789, label %lean_dec_ref.exit790, label %bb.do

bb.do:                                            ; preds = %bb.dn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %13) #6
  br label %lean_dec_ref.exit790

lean_dec_ref.exit790:                             ; preds = %bb.dm, %bb.dn, %bb.do
  %i.ia = load i32, ptr %10, align 4, !tbaa !14   ; 3 uses
  %i.ib = icmp sgt i32 %i.ia, 1
  br i1 %i.ib, label %bb.dp, label %bb.dq, !prof !16

bb.dp:                                            ; preds = %lean_dec_ref.exit790
  %i.ic = add nsw i32 %i.ia, -1
  store i32 %i.ic, ptr %10, align 4, !tbaa !14
  br label %lean_dec_ref.exit788

bb.dq:                                            ; preds = %lean_dec_ref.exit790
  %.not.i787 = icmp eq i32 %i.ia, 0
  br i1 %.not.i787, label %lean_dec_ref.exit788, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #6
  br label %lean_dec_ref.exit788

lean_dec_ref.exit788:                             ; preds = %bb.dp, %bb.dq, %bb.dr
  %i.id = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !10 ; 5 uses
  %.val802 = load i32, ptr %i.gg, align 8, !tbaa !14
  %i.if = icmp eq i32 %.val802, 1
  br i1 %i.if, label %lean_dec.exit595, label %bb.ds

bb.ds:                                            ; preds = %lean_dec_ref.exit788
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = and i64 %i.ig, 1
  %.not.i533 = icmp eq i64 %i.ih, 0
  br i1 %.not.i533, label %bb.dt, label %lean_inc.exit534

bb.dt:                                            ; preds = %bb.ds
  %.val.i.i873 = load i32, ptr %i.ie, align 4, !tbaa !14 ; 3 uses
  %i.ii = icmp sgt i32 %.val.i.i873, 0
  br i1 %i.ii, label %bb.du, label %bb.dv, !prof !16

bb.du:                                            ; preds = %bb.dt
  %i.ij = add nuw i32 %.val.i.i873, 1
  store i32 %i.ij, ptr %i.ie, align 4, !tbaa !14
  br label %lean_inc.exit534

bb.dv:                                            ; preds = %bb.dt
  %.not.i.i874 = icmp eq i32 %.val.i.i873, 0
  br i1 %.not.i.i874, label %lean_inc.exit534, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ik = atomicrmw sub ptr %i.ie, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit534

lean_inc.exit534:                                 ; preds = %bb.dw, %bb.dv, %bb.du, %bb.ds
  br i1 %.not.i864, label %bb.dx, label %bb.eb

bb.dx:                                            ; preds = %lean_inc.exit534
  %i.il = load i32, ptr %i.gg, align 8, !tbaa !14 ; 3 uses
  %i.im = icmp sgt i32 %i.il, 1
  br i1 %i.im, label %bb.dy, label %bb.dz, !prof !16

bb.dy:                                            ; preds = %bb.dx
  %i.in = add nsw i32 %i.il, -1
  store i32 %i.in, ptr %i.gg, align 8, !tbaa !14
  br label %bb.eb

bb.dz:                                            ; preds = %bb.dx
  %.not.i615 = icmp eq i32 %i.il, 0
  br i1 %.not.i615, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gg) #6
  br label %bb.eb

bb.eb:                                            ; preds = %lean_inc.exit534, %bb.dy, %bb.dz, %bb.ea
  %i.io = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit595.sink.split

bb.ec:                                            ; preds = %lean_obj_tag.exit860
  br i1 %.not.i545, label %bb.ed, label %lean_dec.exit593

bb.ed:                                            ; preds = %bb.ec
  %i.ip = load i32, ptr %i.ch, align 512, !tbaa !14 ; 3 uses
  %i.iq = icmp sgt i32 %i.ip, 1
  br i1 %i.iq, label %bb.ee, label %bb.ef, !prof !16

bb.ee:                                            ; preds = %bb.ed
  %i.ir = add nsw i32 %i.ip, -1
  store i32 %i.ir, ptr %i.ch, align 512, !tbaa !14
  br label %lean_dec.exit593

bb.ef:                                            ; preds = %bb.ed
  %.not.i617 = icmp eq i32 %i.ip, 0
  br i1 %.not.i617, label %lean_dec.exit593, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ch) #6
  br label %lean_dec.exit593

lean_dec.exit593:                                 ; preds = %bb.eg, %bb.ef, %bb.ee, %bb.ec
  %i.is = load i32, ptr %i.bn, align 4, !tbaa !14 ; 3 uses
  %i.it = icmp sgt i32 %i.is, 1
  br i1 %i.it, label %bb.eh, label %bb.ei, !prof !16

bb.eh:                                            ; preds = %lean_dec.exit593
  %i.iu = add nsw i32 %i.is, -1
  store i32 %i.iu, ptr %i.bn, align 4, !tbaa !14
  br label %lean_dec_ref.exit786

bb.ei:                                            ; preds = %lean_dec.exit593
  %.not.i785 = icmp eq i32 %i.is, 0
  br i1 %.not.i785, label %lean_dec_ref.exit786, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bn) #6
  br label %lean_dec_ref.exit786

lean_dec_ref.exit786:                             ; preds = %bb.eh, %bb.ei, %bb.ej
  %i.iv = ptrtoint ptr %.0515 to i64
  %i.iw = and i64 %i.iv, 1
  %.not.i876 = icmp eq i64 %i.iw, 0
  br i1 %.not.i876, label %bb.ek, label %lean_del_object.exit877

bb.ek:                                            ; preds = %lean_dec_ref.exit786
  tail call void @lean_free_object(ptr noundef nonnull %.0515) #6
  br label %lean_del_object.exit877

lean_del_object.exit877:                          ; preds = %lean_dec_ref.exit786, %bb.ek
  %i.ix = load i32, ptr %13, align 4, !tbaa !14   ; 3 uses
  %i.iy = icmp sgt i32 %i.ix, 1
  br i1 %i.iy, label %bb.el, label %bb.em, !prof !16

bb.el:                                            ; preds = %lean_del_object.exit877
  %i.iz = add nsw i32 %i.ix, -1
  store i32 %i.iz, ptr %13, align 4, !tbaa !14
  br label %lean_dec_ref.exit784

bb.em:                                            ; preds = %lean_del_object.exit877
  %.not.i783 = icmp eq i32 %i.ix, 0
  br i1 %.not.i783, label %lean_dec_ref.exit784, label %bb.en

bb.en:                                            ; preds = %bb.em
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %13) #6
  br label %lean_dec_ref.exit784

lean_dec_ref.exit784:                             ; preds = %bb.el, %bb.em, %bb.en
  %i.ja = load i32, ptr %11, align 4, !tbaa !14   ; 3 uses
  %i.jb = icmp sgt i32 %i.ja, 1
  br i1 %i.jb, label %bb.eo, label %bb.ep, !prof !16

bb.eo:                                            ; preds = %lean_dec_ref.exit784
  %i.jc = add nsw i32 %i.ja, -1
  store i32 %i.jc, ptr %11, align 4, !tbaa !14
  br label %lean_dec_ref.exit782

bb.ep:                                            ; preds = %lean_dec_ref.exit784
  %.not.i781 = icmp eq i32 %i.ja, 0
  br i1 %.not.i781, label %lean_dec_ref.exit782, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %11) #6
  br label %lean_dec_ref.exit782

lean_dec_ref.exit782:                             ; preds = %bb.eo, %bb.ep, %bb.eq
  %i.jd = load i32, ptr %10, align 4, !tbaa !14   ; 3 uses
  %i.je = icmp sgt i32 %i.jd, 1
  br i1 %i.je, label %bb.er, label %bb.es, !prof !16

bb.er:                                            ; preds = %lean_dec_ref.exit782
  %i.jf = add nsw i32 %i.jd, -1
  store i32 %i.jf, ptr %10, align 4, !tbaa !14
  br label %lean_dec_ref.exit780

bb.es:                                            ; preds = %lean_dec_ref.exit782
  %.not.i779 = icmp eq i32 %i.jd, 0
  br i1 %.not.i779, label %lean_dec_ref.exit780, label %bb.et

bb.et:                                            ; preds = %bb.es
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #6
  br label %lean_dec_ref.exit780

lean_dec_ref.exit780:                             ; preds = %bb.er, %bb.es, %bb.et
  %i.jg = load i32, ptr %9, align 4, !tbaa !14    ; 3 uses
  %i.jh = icmp sgt i32 %i.jg, 1
  br i1 %i.jh, label %bb.eu, label %bb.ev, !prof !16

bb.eu:                                            ; preds = %lean_dec_ref.exit780
  %i.ji = add nsw i32 %i.jg, -1
  store i32 %i.ji, ptr %9, align 4, !tbaa !14
  br label %lean_dec_ref.exit778

bb.ev:                                            ; preds = %lean_dec_ref.exit780
  %.not.i777 = icmp eq i32 %i.jg, 0
  br i1 %.not.i777, label %lean_dec_ref.exit778, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #6
  br label %lean_dec_ref.exit778

lean_dec_ref.exit778:                             ; preds = %bb.eu, %bb.ev, %bb.ew
  %i.jj = load i32, ptr %8, align 4, !tbaa !14    ; 3 uses
  %i.jk = icmp sgt i32 %i.jj, 1
  br i1 %i.jk, label %bb.ex, label %bb.ey, !prof !16

bb.ex:                                            ; preds = %lean_dec_ref.exit778
  %i.jl = add nsw i32 %i.jj, -1
  store i32 %i.jl, ptr %8, align 4, !tbaa !14
  br label %lean_dec_ref.exit776

bb.ey:                                            ; preds = %lean_dec_ref.exit778
  %.not.i775 = icmp eq i32 %i.jj, 0
  br i1 %.not.i775, label %lean_dec_ref.exit776, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #6
  br label %lean_dec_ref.exit776

lean_dec_ref.exit776:                             ; preds = %bb.ex, %bb.ey, %bb.ez
  %i.jm = load i32, ptr %7, align 4, !tbaa !14    ; 3 uses
  %i.jn = icmp sgt i32 %i.jm, 1
  br i1 %i.jn, label %bb.fa, label %bb.fb, !prof !16

bb.fa:                                            ; preds = %lean_dec_ref.exit776
  %i.jo = add nsw i32 %i.jm, -1
  store i32 %i.jo, ptr %7, align 4, !tbaa !14
  br label %lean_dec_ref.exit774

bb.fb:                                            ; preds = %lean_dec_ref.exit776
  %.not.i773 = icmp eq i32 %i.jm, 0
  br i1 %.not.i773, label %lean_dec_ref.exit774, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #6
  br label %lean_dec_ref.exit774

lean_dec_ref.exit774:                             ; preds = %bb.fa, %bb.fb, %bb.fc
  %i.jp = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.jq = icmp sgt i32 %i.jp, 1
  br i1 %i.jq, label %bb.fd, label %bb.fe, !prof !16

bb.fd:                                            ; preds = %lean_dec_ref.exit774
  %i.jr = add nsw i32 %i.jp, -1
  store i32 %i.jr, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit772

bb.fe:                                            ; preds = %lean_dec_ref.exit774
  %.not.i771 = icmp eq i32 %i.jp, 0
  br i1 %.not.i771, label %lean_dec_ref.exit772, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref.exit772

lean_dec_ref.exit772:                             ; preds = %bb.fd, %bb.fe, %bb.ff
  %i.js = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !10 ; 5 uses
  %.val801 = load i32, ptr %i.fg, align 8, !tbaa !14
  %i.ju = icmp eq i32 %.val801, 1
  br i1 %i.ju, label %lean_dec.exit595, label %bb.fg

bb.fg:                                            ; preds = %lean_dec_ref.exit772
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = and i64 %i.jv, 1
  %.not.i531 = icmp eq i64 %i.jw, 0
  br i1 %.not.i531, label %bb.fh, label %lean_inc.exit532

bb.fh:                                            ; preds = %bb.fg
  %.val.i.i878 = load i32, ptr %i.jt, align 4, !tbaa !14 ; 3 uses
  %i.jx = icmp sgt i32 %.val.i.i878, 0
  br i1 %i.jx, label %bb.fi, label %bb.fj, !prof !16

bb.fi:                                            ; preds = %bb.fh
  %i.jy = add nuw i32 %.val.i.i878, 1
  store i32 %i.jy, ptr %i.jt, align 4, !tbaa !14
  br label %lean_inc.exit532

bb.fj:                                            ; preds = %bb.fh
  %.not.i.i879 = icmp eq i32 %.val.i.i878, 0
  br i1 %.not.i.i879, label %lean_inc.exit532, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.jz = atomicrmw sub ptr %i.jt, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit532

lean_inc.exit532:                                 ; preds = %bb.fk, %bb.fj, %bb.fi, %bb.fg
  br i1 %.not.i857, label %bb.fl, label %bb.fp

bb.fl:                                            ; preds = %lean_inc.exit532
  %i.ka = load i32, ptr %i.fg, align 8, !tbaa !14 ; 3 uses
  %i.kb = icmp sgt i32 %i.ka, 1
  br i1 %i.kb, label %bb.fm, label %bb.fn, !prof !16

bb.fm:                                            ; preds = %bb.fl
  %i.kc = add nsw i32 %i.ka, -1
  store i32 %i.kc, ptr %i.fg, align 8, !tbaa !14
  br label %bb.fp

bb.fn:                                            ; preds = %bb.fl
  %.not.i619 = icmp eq i32 %i.ka, 0
  br i1 %.not.i619, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fg) #6
  br label %bb.fp

bb.fp:                                            ; preds = %lean_inc.exit532, %bb.fm, %bb.fn, %bb.fo
  %i.kd = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit595.sink.split

bb.fq:                                            ; preds = %lean_obj_tag.exit853
  br i1 %.not.i545, label %bb.fr, label %lean_dec.exit589

bb.fr:                                            ; preds = %bb.fq
  %i.ke = load i32, ptr %i.ch, align 512, !tbaa !14 ; 3 uses
  %i.kf = icmp sgt i32 %i.ke, 1
  br i1 %i.kf, label %bb.fs, label %bb.ft, !prof !16

bb.fs:                                            ; preds = %bb.fr
  %i.kg = add nsw i32 %i.ke, -1
  store i32 %i.kg, ptr %i.ch, align 512, !tbaa !14
  br label %lean_dec.exit589

bb.ft:                                            ; preds = %bb.fr
  %.not.i621 = icmp eq i32 %i.ke, 0
  br i1 %.not.i621, label %lean_dec.exit589, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ch) #6
  br label %lean_dec.exit589

lean_dec.exit589:                                 ; preds = %bb.fu, %bb.ft, %bb.fs, %bb.fq
  %i.kh = load i32, ptr %i.bn, align 4, !tbaa !14 ; 3 uses
  %i.ki = icmp sgt i32 %i.kh, 1
  br i1 %i.ki, label %bb.fv, label %bb.fw, !prof !16

bb.fv:                                            ; preds = %lean_dec.exit589
  %i.kj = add nsw i32 %i.kh, -1
  store i32 %i.kj, ptr %i.bn, align 4, !tbaa !14
  br label %lean_dec_ref.exit770

bb.fw:                                            ; preds = %lean_dec.exit589
  %.not.i769 = icmp eq i32 %i.kh, 0
  br i1 %.not.i769, label %lean_dec_ref.exit770, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bn) #6
  br label %lean_dec_ref.exit770

lean_dec_ref.exit770:                             ; preds = %bb.fv, %bb.fw, %bb.fx
  %i.kk = ptrtoint ptr %.0515 to i64
  %i.kl = and i64 %i.kk, 1
  %.not.i881 = icmp eq i64 %i.kl, 0
  br i1 %.not.i881, label %bb.fy, label %lean_del_object.exit882

bb.fy:                                            ; preds = %lean_dec_ref.exit770
  tail call void @lean_free_object(ptr noundef nonnull %.0515) #6
  br label %lean_del_object.exit882

lean_del_object.exit882:                          ; preds = %lean_dec_ref.exit770, %bb.fy
  %i.km = load i32, ptr %13, align 4, !tbaa !14   ; 3 uses
  %i.kn = icmp sgt i32 %i.km, 1
  br i1 %i.kn, label %bb.fz, label %bb.ga, !prof !16

bb.fz:                                            ; preds = %lean_del_object.exit882
  %i.ko = add nsw i32 %i.km, -1
  store i32 %i.ko, ptr %13, align 4, !tbaa !14
  br label %lean_dec_ref.exit768

bb.ga:                                            ; preds = %lean_del_object.exit882
  %.not.i767 = icmp eq i32 %i.km, 0
  br i1 %.not.i767, label %lean_dec_ref.exit768, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %13) #6
  br label %lean_dec_ref.exit768

lean_dec_ref.exit768:                             ; preds = %bb.fz, %bb.ga, %bb.gb
  %i.kp = load i32, ptr %11, align 4, !tbaa !14   ; 3 uses
  %i.kq = icmp sgt i32 %i.kp, 1
  br i1 %i.kq, label %bb.gc, label %bb.gd, !prof !16

bb.gc:                                            ; preds = %lean_dec_ref.exit768
  %i.kr = add nsw i32 %i.kp, -1
  store i32 %i.kr, ptr %11, align 4, !tbaa !14
  br label %lean_dec_ref.exit766

bb.gd:                                            ; preds = %lean_dec_ref.exit768
  %.not.i765 = icmp eq i32 %i.kp, 0
  br i1 %.not.i765, label %lean_dec_ref.exit766, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %11) #6
  br label %lean_dec_ref.exit766

lean_dec_ref.exit766:                             ; preds = %bb.gc, %bb.gd, %bb.ge
  %i.ks = load i32, ptr %10, align 4, !tbaa !14   ; 3 uses
  %i.kt = icmp sgt i32 %i.ks, 1
  br i1 %i.kt, label %bb.gf, label %bb.gg, !prof !16

bb.gf:                                            ; preds = %lean_dec_ref.exit766
  %i.ku = add nsw i32 %i.ks, -1
  store i32 %i.ku, ptr %10, align 4, !tbaa !14
  br label %lean_dec_ref.exit764

bb.gg:                                            ; preds = %lean_dec_ref.exit766
  %.not.i763 = icmp eq i32 %i.ks, 0
  br i1 %.not.i763, label %lean_dec_ref.exit764, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #6
  br label %lean_dec_ref.exit764

lean_dec_ref.exit764:                             ; preds = %bb.gf, %bb.gg, %bb.gh
  %i.kv = load i32, ptr %9, align 4, !tbaa !14    ; 3 uses
  %i.kw = icmp sgt i32 %i.kv, 1
  br i1 %i.kw, label %bb.gi, label %bb.gj, !prof !16

bb.gi:                                            ; preds = %lean_dec_ref.exit764
  %i.kx = add nsw i32 %i.kv, -1
  store i32 %i.kx, ptr %9, align 4, !tbaa !14
  br label %lean_dec_ref.exit762

bb.gj:                                            ; preds = %lean_dec_ref.exit764
  %.not.i761 = icmp eq i32 %i.kv, 0
  br i1 %.not.i761, label %lean_dec_ref.exit762, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #6
  br label %lean_dec_ref.exit762

lean_dec_ref.exit762:                             ; preds = %bb.gi, %bb.gj, %bb.gk
  %i.ky = load i32, ptr %8, align 4, !tbaa !14    ; 3 uses
  %i.kz = icmp sgt i32 %i.ky, 1
  br i1 %i.kz, label %bb.gl, label %bb.gm, !prof !16

bb.gl:                                            ; preds = %lean_dec_ref.exit762
  %i.la = add nsw i32 %i.ky, -1
  store i32 %i.la, ptr %8, align 4, !tbaa !14
  br label %lean_dec_ref.exit760

bb.gm:                                            ; preds = %lean_dec_ref.exit762
  %.not.i759 = icmp eq i32 %i.ky, 0
  br i1 %.not.i759, label %lean_dec_ref.exit760, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #6
  br label %lean_dec_ref.exit760

lean_dec_ref.exit760:                             ; preds = %bb.gl, %bb.gm, %bb.gn
  %i.lb = load i32, ptr %7, align 4, !tbaa !14    ; 3 uses
  %i.lc = icmp sgt i32 %i.lb, 1
  br i1 %i.lc, label %bb.go, label %bb.gp, !prof !16

bb.go:                                            ; preds = %lean_dec_ref.exit760
  %i.ld = add nsw i32 %i.lb, -1
  store i32 %i.ld, ptr %7, align 4, !tbaa !14
  br label %lean_dec_ref.exit758

bb.gp:                                            ; preds = %lean_dec_ref.exit760
  %.not.i757 = icmp eq i32 %i.lb, 0
  br i1 %.not.i757, label %lean_dec_ref.exit758, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #6
  br label %lean_dec_ref.exit758

lean_dec_ref.exit758:                             ; preds = %bb.go, %bb.gp, %bb.gq
  %i.le = ptrtoint ptr %5 to i64
  %i.lf = and i64 %i.le, 1
  %.not.i586 = icmp eq i64 %i.lf, 0
  br i1 %.not.i586, label %bb.gr, label %lean_dec.exit587

bb.gr:                                            ; preds = %lean_dec_ref.exit758
  %i.lg = load i32, ptr %5, align 4, !tbaa !14    ; 3 uses
  %i.lh = icmp sgt i32 %i.lg, 1
  br i1 %i.lh, label %bb.gs, label %bb.gt, !prof !16

bb.gs:                                            ; preds = %bb.gr
  %i.li = add nsw i32 %i.lg, -1
  store i32 %i.li, ptr %5, align 4, !tbaa !14
  br label %lean_dec.exit587

bb.gt:                                            ; preds = %bb.gr
  %.not.i623 = icmp eq i32 %i.lg, 0
  br i1 %.not.i623, label %lean_dec.exit587, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #6
  br label %lean_dec.exit587

lean_dec.exit587:                                 ; preds = %bb.gu, %bb.gt, %bb.gs, %lean_dec_ref.exit758
  %i.lj = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.lk = icmp sgt i32 %i.lj, 1
  br i1 %i.lk, label %bb.gv, label %bb.gw, !prof !16

bb.gv:                                            ; preds = %lean_dec.exit587
  %i.ll = add nsw i32 %i.lj, -1
  store i32 %i.ll, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit756

bb.gw:                                            ; preds = %lean_dec.exit587
  %.not.i755 = icmp eq i32 %i.lj, 0
  br i1 %.not.i755, label %lean_dec_ref.exit756, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref.exit756

lean_dec_ref.exit756:                             ; preds = %bb.gv, %bb.gw, %bb.gx
  %i.lm = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !10 ; 5 uses
  %.val800 = load i32, ptr %i.er, align 8, !tbaa !14
  %i.lo = icmp eq i32 %.val800, 1
  br i1 %i.lo, label %lean_dec.exit595, label %bb.gy

bb.gy:                                            ; preds = %lean_dec_ref.exit756
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = and i64 %i.lp, 1
  %.not.i529 = icmp eq i64 %i.lq, 0
  br i1 %.not.i529, label %bb.gz, label %lean_inc.exit530

bb.gz:                                            ; preds = %bb.gy
  %.val.i.i883 = load i32, ptr %i.ln, align 4, !tbaa !14 ; 3 uses
  %i.lr = icmp sgt i32 %.val.i.i883, 0
  br i1 %i.lr, label %bb.ha, label %bb.hb, !prof !16

bb.ha:                                            ; preds = %bb.gz
  %i.ls = add nuw i32 %.val.i.i883, 1
  store i32 %i.ls, ptr %i.ln, align 4, !tbaa !14
  br label %lean_inc.exit530

bb.hb:                                            ; preds = %bb.gz
  %.not.i.i884 = icmp eq i32 %.val.i.i883, 0
  br i1 %.not.i.i884, label %lean_inc.exit530, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.lt = atomicrmw sub ptr %i.ln, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit530

lean_inc.exit530:                                 ; preds = %bb.hc, %bb.hb, %bb.ha, %bb.gy
  br i1 %.not.i850, label %bb.hd, label %bb.hh

bb.hd:                                            ; preds = %lean_inc.exit530
  %i.lu = load i32, ptr %i.er, align 8, !tbaa !14 ; 3 uses
  %i.lv = icmp sgt i32 %i.lu, 1
  br i1 %i.lv, label %bb.he, label %bb.hf, !prof !16

bb.he:                                            ; preds = %bb.hd
  %i.lw = add nsw i32 %i.lu, -1
  store i32 %i.lw, ptr %i.er, align 8, !tbaa !14
  br label %bb.hh

bb.hf:                                            ; preds = %bb.hd
  %.not.i625 = icmp eq i32 %i.lu, 0
  br i1 %.not.i625, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.er) #6
  br label %bb.hh

bb.hh:                                            ; preds = %lean_inc.exit530, %bb.he, %bb.hf, %bb.hg
  %i.lx = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit595.sink.split

bb.hi:                                            ; preds = %lean_obj_tag.exit846
  br i1 %.not.i545, label %bb.hj, label %lean_dec.exit583

bb.hj:                                            ; preds = %bb.hi
  %i.ly = load i32, ptr %i.ch, align 512, !tbaa !14 ; 3 uses
  %i.lz = icmp sgt i32 %i.ly, 1
  br i1 %i.lz, label %bb.hk, label %bb.hl, !prof !16

bb.hk:                                            ; preds = %bb.hj
  %i.ma = add nsw i32 %i.ly, -1
  store i32 %i.ma, ptr %i.ch, align 512, !tbaa !14
  br label %lean_dec.exit583

bb.hl:                                            ; preds = %bb.hj
  %.not.i627 = icmp eq i32 %i.ly, 0
  br i1 %.not.i627, label %lean_dec.exit583, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ch) #6
  br label %lean_dec.exit583

lean_dec.exit583:                                 ; preds = %bb.hm, %bb.hl, %bb.hk, %bb.hi
  %i.mb = load i32, ptr %i.bn, align 4, !tbaa !14 ; 3 uses
  %i.mc = icmp sgt i32 %i.mb, 1
  br i1 %i.mc, label %bb.hn, label %bb.ho, !prof !16

bb.hn:                                            ; preds = %lean_dec.exit583
  %i.md = add nsw i32 %i.mb, -1
  store i32 %i.md, ptr %i.bn, align 4, !tbaa !14
  br label %lean_dec_ref.exit754

bb.ho:                                            ; preds = %lean_dec.exit583
  %.not.i753 = icmp eq i32 %i.mb, 0
  br i1 %.not.i753, label %lean_dec_ref.exit754, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bn) #6
  br label %lean_dec_ref.exit754

lean_dec_ref.exit754:                             ; preds = %bb.hn, %bb.ho, %bb.hp
  %i.me = ptrtoint ptr %.0515 to i64
  %i.mf = and i64 %i.me, 1
  %.not.i886 = icmp eq i64 %i.mf, 0
  br i1 %.not.i886, label %bb.hq, label %lean_del_object.exit887

bb.hq:                                            ; preds = %lean_dec_ref.exit754
  tail call void @lean_free_object(ptr noundef nonnull %.0515) #6
  br label %lean_del_object.exit887

lean_del_object.exit887:                          ; preds = %lean_dec_ref.exit754, %bb.hq
  %i.mg = ptrtoint ptr %i.bc to i64
  %i.mh = and i64 %i.mg, 1
  %.not.i580 = icmp eq i64 %i.mh, 0
  br i1 %.not.i580, label %bb.hr, label %lean_dec.exit581

bb.hr:                                            ; preds = %lean_del_object.exit887
  %i.mi = load i32, ptr %i.bc, align 4, !tbaa !14 ; 3 uses
  %i.mj = icmp sgt i32 %i.mi, 1
  br i1 %i.mj, label %bb.hs, label %bb.ht, !prof !16

bb.hs:                                            ; preds = %bb.hr
  %i.mk = add nsw i32 %i.mi, -1
  store i32 %i.mk, ptr %i.bc, align 4, !tbaa !14
  br label %lean_dec.exit581

bb.ht:                                            ; preds = %bb.hr
  %.not.i629 = icmp eq i32 %i.mi, 0
  br i1 %.not.i629, label %lean_dec.exit581, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bc) #6
  br label %lean_dec.exit581

lean_dec.exit581:                                 ; preds = %bb.hu, %bb.ht, %bb.hs, %lean_del_object.exit887
  %i.ml = load i32, ptr %13, align 4, !tbaa !14   ; 3 uses
  %i.mm = icmp sgt i32 %i.ml, 1
  br i1 %i.mm, label %bb.hv, label %bb.hw, !prof !16

bb.hv:                                            ; preds = %lean_dec.exit581
  %i.mn = add nsw i32 %i.ml, -1
  store i32 %i.mn, ptr %13, align 4, !tbaa !14
  br label %lean_dec_ref.exit752

bb.hw:                                            ; preds = %lean_dec.exit581
  %.not.i751 = icmp eq i32 %i.ml, 0
  br i1 %.not.i751, label %lean_dec_ref.exit752, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %13) #6
  br label %lean_dec_ref.exit752

lean_dec_ref.exit752:                             ; preds = %bb.hv, %bb.hw, %bb.hx
  %i.mo = load i32, ptr %11, align 4, !tbaa !14   ; 3 uses
  %i.mp = icmp sgt i32 %i.mo, 1
  br i1 %i.mp, label %bb.hy, label %bb.hz, !prof !16

bb.hy:                                            ; preds = %lean_dec_ref.exit752
  %i.mq = add nsw i32 %i.mo, -1
  store i32 %i.mq, ptr %11, align 4, !tbaa !14
  br label %lean_dec_ref.exit750

bb.hz:                                            ; preds = %lean_dec_ref.exit752
  %.not.i749 = icmp eq i32 %i.mo, 0
  br i1 %.not.i749, label %lean_dec_ref.exit750, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %11) #6
  br label %lean_dec_ref.exit750

lean_dec_ref.exit750:                             ; preds = %bb.hy, %bb.hz, %bb.ia
  %i.mr = load i32, ptr %10, align 4, !tbaa !14   ; 3 uses
  %i.ms = icmp sgt i32 %i.mr, 1
  br i1 %i.ms, label %bb.ib, label %bb.ic, !prof !16

bb.ib:                                            ; preds = %lean_dec_ref.exit750
  %i.mt = add nsw i32 %i.mr, -1
  store i32 %i.mt, ptr %10, align 4, !tbaa !14
  br label %lean_dec_ref.exit748

bb.ic:                                            ; preds = %lean_dec_ref.exit750
  %.not.i747 = icmp eq i32 %i.mr, 0
  br i1 %.not.i747, label %lean_dec_ref.exit748, label %bb.id

bb.id:                                            ; preds = %bb.ic
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #6
  br label %lean_dec_ref.exit748

lean_dec_ref.exit748:                             ; preds = %bb.ib, %bb.ic, %bb.id
  %i.mu = load i32, ptr %9, align 4, !tbaa !14    ; 3 uses
  %i.mv = icmp sgt i32 %i.mu, 1
  br i1 %i.mv, label %bb.ie, label %bb.if, !prof !16

bb.ie:                                            ; preds = %lean_dec_ref.exit748
  %i.mw = add nsw i32 %i.mu, -1
  store i32 %i.mw, ptr %9, align 4, !tbaa !14
  br label %lean_dec_ref.exit746

bb.if:                                            ; preds = %lean_dec_ref.exit748
  %.not.i745 = icmp eq i32 %i.mu, 0
  br i1 %.not.i745, label %lean_dec_ref.exit746, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #6
  br label %lean_dec_ref.exit746

lean_dec_ref.exit746:                             ; preds = %bb.ie, %bb.if, %bb.ig
  %i.mx = load i32, ptr %8, align 4, !tbaa !14    ; 3 uses
  %i.my = icmp sgt i32 %i.mx, 1
  br i1 %i.my, label %bb.ih, label %bb.ii, !prof !16

bb.ih:                                            ; preds = %lean_dec_ref.exit746
  %i.mz = add nsw i32 %i.mx, -1
  store i32 %i.mz, ptr %8, align 4, !tbaa !14
  br label %lean_dec_ref.exit744

bb.ii:                                            ; preds = %lean_dec_ref.exit746
  %.not.i743 = icmp eq i32 %i.mx, 0
  br i1 %.not.i743, label %lean_dec_ref.exit744, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #6
  br label %lean_dec_ref.exit744

lean_dec_ref.exit744:                             ; preds = %bb.ih, %bb.ii, %bb.ij
  %i.na = load i32, ptr %7, align 4, !tbaa !14    ; 3 uses
  %i.nb = icmp sgt i32 %i.na, 1
  br i1 %i.nb, label %bb.ik, label %bb.il, !prof !16

bb.ik:                                            ; preds = %lean_dec_ref.exit744
  %i.nc = add nsw i32 %i.na, -1
  store i32 %i.nc, ptr %7, align 4, !tbaa !14
  br label %lean_dec_ref.exit742

bb.il:                                            ; preds = %lean_dec_ref.exit744
  %.not.i741 = icmp eq i32 %i.na, 0
  br i1 %.not.i741, label %lean_dec_ref.exit742, label %bb.im

bb.im:                                            ; preds = %bb.il
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #6
  br label %lean_dec_ref.exit742

lean_dec_ref.exit742:                             ; preds = %bb.ik, %bb.il, %bb.im
  %i.nd = ptrtoint ptr %5 to i64
  %i.ne = and i64 %i.nd, 1
  %.not.i578 = icmp eq i64 %i.ne, 0
  br i1 %.not.i578, label %bb.in, label %lean_dec.exit579

bb.in:                                            ; preds = %lean_dec_ref.exit742
  %i.nf = load i32, ptr %5, align 4, !tbaa !14    ; 3 uses
  %i.ng = icmp sgt i32 %i.nf, 1
  br i1 %i.ng, label %bb.io, label %bb.ip, !prof !16

bb.io:                                            ; preds = %bb.in
  %i.nh = add nsw i32 %i.nf, -1
  store i32 %i.nh, ptr %5, align 4, !tbaa !14
  br label %lean_dec.exit579

bb.ip:                                            ; preds = %bb.in
  %.not.i631 = icmp eq i32 %i.nf, 0
  br i1 %.not.i631, label %lean_dec.exit579, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #6
  br label %lean_dec.exit579

lean_dec.exit579:                                 ; preds = %bb.iq, %bb.ip, %bb.io, %lean_dec_ref.exit742
  %i.ni = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.nj = icmp sgt i32 %i.ni, 1
  br i1 %i.nj, label %bb.ir, label %bb.is, !prof !16

bb.ir:                                            ; preds = %lean_dec.exit579
end_hunk_0
begin_hunk_1_@l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__1_spec__5___redArg:bb.a
  %i.bn = icmp sgt i32 %.val.i.i821, 0
  br i1 %i.bn, label %bb.y, label %bb.z, !prof !16

bb.y:                                             ; preds = %bb.x
  %i.bo = add nuw i32 %.val.i.i821, 1
  store i32 %i.bo, ptr %i.bj, align 4, !tbaa !14
  br label %lean_inc.exit550

bb.z:                                             ; preds = %bb.x
  %.not.i.i822 = icmp eq i32 %.val.i.i821, 0
  br i1 %.not.i.i822, label %lean_inc.exit550, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = atomicrmw sub ptr %i.bj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit550

lean_inc.exit550:                                 ; preds = %bb.aa, %bb.z, %bb.y, %bb.w
  br i1 %.not.i816, label %bb.ab, label %lean_dec.exit605

bb.ab:                                            ; preds = %lean_inc.exit550
  %i.bq = load i32, ptr %i.au, align 8, !tbaa !14 ; 3 uses
  %i.br = icmp sgt i32 %i.bq, 1
  br i1 %i.br, label %bb.ac, label %bb.ad, !prof !16

bb.ac:                                            ; preds = %bb.ab
  %i.bs = add nsw i32 %i.bq, -1
  store i32 %i.bs, ptr %i.au, align 8, !tbaa !14
  br label %lean_dec.exit605

bb.ad:                                            ; preds = %bb.ab
  %.not.i609 = icmp eq i32 %i.bq, 0
  br i1 %.not.i609, label %lean_dec.exit605, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.au) #6
  br label %lean_dec.exit605

lean_dec.exit605:                                 ; preds = %lean_inc.exit550, %bb.ac, %bb.ad, %bb.ae, %lean_del_object.exit
  %.0516 = phi ptr [ %i.au, %lean_del_object.exit ], [ inttoptr (i64 1 to ptr), %bb.ae ], [ inttoptr (i64 1 to ptr), %bb.ad ], [ inttoptr (i64 1 to ptr), %bb.ac ], [ inttoptr (i64 1 to ptr), %lean_inc.exit550 ] ; 16 uses
  %i.bt = tail call ptr @l_Lean_Expr_appFn_x21(ptr noundef %i.bj) #6 ; 4 uses
  %i.bu = tail call ptr @l_Lean_Expr_appArg_x21(ptr noundef %i.bt) #6 ; 27 uses
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !14 ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, 1
  br i1 %i.bw, label %bb.af, label %bb.ag, !prof !16

bb.af:                                            ; preds = %lean_dec.exit605
  %i.bx = add nsw i32 %i.bv, -1
  store i32 %i.bx, ptr %i.bt, align 4, !tbaa !14
  br label %lean_dec_ref.exit796

bb.ag:                                            ; preds = %lean_dec.exit605
  %.not.i795 = icmp eq i32 %i.bv, 0
  br i1 %.not.i795, label %lean_dec_ref.exit796, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bt) #6
  br label %lean_dec_ref.exit796

lean_dec_ref.exit796:                             ; preds = %bb.af, %bb.ag, %bb.ah
  %i.by = load atomic i32, ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6_once seq_cst, align 4, !tbaa !18
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.ai, label %bb.aj, !prof !16

bb.ai:                                            ; preds = %lean_dec_ref.exit796
  %i.ca = load ptr, ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6, align 8, !tbaa !10
  br label %lean_obj_once.exit825

bb.aj:                                            ; preds = %lean_dec_ref.exit796
  %i.cb = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6, ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6_once, ptr noundef nonnull @_init_l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6) #6
  br label %lean_obj_once.exit825

lean_obj_once.exit825:                            ; preds = %bb.ai, %bb.aj
  %.0.i824 = phi ptr [ %i.ca, %bb.ai ], [ %i.cb, %bb.aj ]
  %.val.i.i826 = load i32, ptr %i.bu, align 4, !tbaa !14 ; 3 uses
  %i.cc = icmp sgt i32 %.val.i.i826, 0
  br i1 %i.cc, label %bb.ak, label %bb.al, !prof !16

bb.ak:                                            ; preds = %lean_obj_once.exit825
  %i.cd = add nuw i32 %.val.i.i826, 1
  store i32 %i.cd, ptr %i.bu, align 4, !tbaa !14
  br label %lean_inc_ref.exit828

bb.al:                                            ; preds = %lean_obj_once.exit825
  %.not.i.i827 = icmp eq i32 %.val.i.i826, 0
  br i1 %.not.i.i827, label %lean_inc_ref.exit828, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ce = atomicrmw sub ptr %i.bu, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit828

lean_inc_ref.exit828:                             ; preds = %bb.ak, %bb.al, %bb.am
  %i.cf = tail call ptr @l_Lean_Meta_isExprDefEq(ptr noundef nonnull %i.bu, ptr noundef %.0.i824, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20) #6 ; 13 uses
  %i.cg = ptrtoint ptr %i.cf to i64               ; 2 uses
  %i.ch = and i64 %i.cg, 1
  %.not.i829 = icmp eq i64 %i.ch, 0               ; 2 uses
  br i1 %.not.i829, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %lean_inc_ref.exit828
  %i.ci = lshr i64 %i.cg, 1
  %i.cj = trunc i64 %i.ci to i32
  br label %lean_obj_tag.exit832

bb.ao:                                            ; preds = %lean_inc_ref.exit828
  %i.ck = getelementptr i8, ptr %i.cf, i64 4
  %.val.i831 = load i32, ptr %i.ck, align 4
  %i.cl = lshr i32 %.val.i831, 24
  br label %lean_obj_tag.exit832

lean_obj_tag.exit832:                             ; preds = %bb.an, %bb.ao
  %.0.i830 = phi i32 [ %i.cj, %bb.an ], [ %i.cl, %bb.ao ]
  %i.cm = icmp eq i32 %.0.i830, 0
  br i1 %i.cm, label %bb.ap, label %bb.mu

bb.ap:                                            ; preds = %lean_obj_tag.exit832
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !10 ; 32 uses
  %i.cp = ptrtoint ptr %i.co to i64               ; 3 uses
  %i.cq = and i64 %i.cp, 1
  %.not.i547 = icmp eq i64 %i.cq, 0               ; 10 uses
  br i1 %.not.i547, label %bb.aq, label %lean_inc.exit548

bb.aq:                                            ; preds = %bb.ap
  %.val.i.i833 = load i32, ptr %i.co, align 4, !tbaa !14 ; 3 uses
  %i.cr = icmp sgt i32 %.val.i.i833, 0
  br i1 %i.cr, label %bb.ar, label %bb.as, !prof !16

bb.ar:                                            ; preds = %bb.aq
  %i.cs = add nuw i32 %.val.i.i833, 1
  store i32 %i.cs, ptr %i.co, align 4, !tbaa !14
  br label %lean_inc.exit548

bb.as:                                            ; preds = %bb.aq
  %.not.i.i834 = icmp eq i32 %.val.i.i833, 0
  br i1 %.not.i.i834, label %lean_inc.exit548, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ct = atomicrmw sub ptr %i.co, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit548

lean_inc.exit548:                                 ; preds = %bb.at, %bb.as, %bb.ar, %bb.ap
  %.val.i836 = load i32, ptr %i.cf, align 8, !tbaa !14 ; 4 uses
  %i.cu = icmp eq i32 %.val.i836, 1
  br i1 %i.cu, label %.preheader.i, label %bb.ay

.preheader.i:                                     ; preds = %lean_inc.exit548
  %i.cv = load ptr, ptr %i.cn, align 8, !tbaa !10 ; 4 uses
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = and i64 %i.cw, 1
  %.not.i.i837 = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i837, label %bb.au, label %lean_dec.exit.i

bb.au:                                            ; preds = %.preheader.i
  %i.cy = load i32, ptr %i.cv, align 4, !tbaa !14 ; 3 uses
  %i.cz = icmp sgt i32 %i.cy, 1
  br i1 %i.cz, label %bb.av, label %bb.aw, !prof !16

bb.av:                                            ; preds = %bb.au
  %i.da = add nsw i32 %i.cy, -1
  store i32 %i.da, ptr %i.cv, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.aw:                                            ; preds = %bb.au
  %.not.i7.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cv) #6
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.ax, %bb.aw, %bb.av, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.cf) #6
  br label %lean_dec_ref_known.exit

bb.ay:                                            ; preds = %lean_inc.exit548
  %i.db = icmp sgt i32 %.val.i836, 1
  br i1 %i.db, label %bb.az, label %bb.ba, !prof !16

bb.az:                                            ; preds = %bb.ay
  %i.dc = add nsw i32 %.val.i836, -1
  store i32 %i.dc, ptr %i.cf, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.ba:                                            ; preds = %bb.ay
  %.not.i8.i = icmp eq i32 %.val.i836, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cf) #6
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.az, %bb.ba, %bb.bb
  %i.dd = lshr i64 %i.cp, 1
  %i.de = and i64 %i.cp, 510
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.bc, label %bb.je

bb.bc:                                            ; preds = %lean_dec_ref_known.exit
  br i1 %.not.i547, label %bb.bd, label %lean_inc.exit546

bb.bd:                                            ; preds = %bb.bc
  %.val.i.i838 = load i32, ptr %i.co, align 512, !tbaa !14 ; 3 uses
  %i.dg = icmp sgt i32 %.val.i.i838, 0
  br i1 %i.dg, label %bb.be, label %bb.bf, !prof !16

bb.be:                                            ; preds = %bb.bd
  %i.dh = add nuw i32 %.val.i.i838, 1
  store i32 %i.dh, ptr %i.co, align 512, !tbaa !14
  br label %lean_inc.exit546

bb.bf:                                            ; preds = %bb.bd
  %.not.i.i839 = icmp eq i32 %.val.i.i838, 0
  br i1 %.not.i.i839, label %lean_inc.exit546, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.di = atomicrmw sub ptr %i.co, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit546

lean_inc.exit546:                                 ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bc
  %i.dj = tail call ptr @lean_alloc_object(i64 noundef 48) #6 ; 9 uses
  store i32 1, ptr %i.dj, align 4, !tbaa !14
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = and i32 %i.dl, 65535
  %i.dn = or disjoint i32 %i.dm, -184549376
  store i32 %i.dn, ptr %i.dk, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___lam__1___boxed, ptr %i.do, align 8, !tbaa !10
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i16 11, ptr %i.dp, align 8, !tbaa !22
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 18
  store i16 3, ptr %i.dq, align 2, !tbaa !22
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store ptr %8, ptr %i.dr, align 8, !tbaa !10
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  store ptr %i.co, ptr %i.ds, align 8, !tbaa !10
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  store ptr inttoptr (i64 3 to ptr), ptr %i.dt, align 8, !tbaa !10
  %.val.i.i841 = load i32, ptr %i.bu, align 4, !tbaa !14 ; 3 uses
  %i.du = icmp sgt i32 %.val.i.i841, 0
  br i1 %i.du, label %bb.bh, label %bb.bi, !prof !16

bb.bh:                                            ; preds = %lean_inc.exit546
  %i.dv = add nuw i32 %.val.i.i841, 1
  store i32 %i.dv, ptr %i.bu, align 4, !tbaa !14
  br label %lean_inc_ref.exit843

bb.bi:                                            ; preds = %lean_inc.exit546
  %.not.i.i842 = icmp eq i32 %.val.i.i841, 0
  br i1 %.not.i.i842, label %lean_inc_ref.exit843, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dw = atomicrmw sub ptr %i.bu, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit843

lean_inc_ref.exit843:                             ; preds = %bb.bh, %bb.bi, %bb.bj
  %.val.i.i844 = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.dx = icmp sgt i32 %.val.i.i844, 0
  br i1 %i.dx, label %bb.bk, label %bb.bl, !prof !16

bb.bk:                                            ; preds = %lean_inc_ref.exit843
  %i.dy = add nuw i32 %.val.i.i844, 1
  store i32 %i.dy, ptr %0, align 4, !tbaa !14
  br label %lean_inc_ref.exit846

bb.bl:                                            ; preds = %lean_inc_ref.exit843
  %.not.i.i845 = icmp eq i32 %.val.i.i844, 0
  br i1 %.not.i.i845, label %lean_inc_ref.exit846, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.dz = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit846

lean_inc_ref.exit846:                             ; preds = %bb.bk, %bb.bl, %bb.bm
  %i.ea = tail call ptr @l_Lean_Meta_withLocalDecl___at___00Lean_Meta_withLocalDeclD___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__0_spec__1_spec__1___redArg(ptr noundef %3, ptr noundef nonnull %0, ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__8_value, i8 noundef zeroext 0, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.dj, i8 noundef zeroext 0, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20) ; 10 uses
  %i.eb = ptrtoint ptr %i.ea to i64               ; 2 uses
  %i.ec = and i64 %i.eb, 1
  %.not.i847 = icmp eq i64 %i.ec, 0               ; 2 uses
  br i1 %.not.i847, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %lean_inc_ref.exit846
  %i.ed = lshr i64 %i.eb, 1
  %i.ee = trunc i64 %i.ed to i32
  br label %lean_obj_tag.exit850

bb.bo:                                            ; preds = %lean_inc_ref.exit846
  %i.ef = getelementptr i8, ptr %i.ea, i64 4
  %.val.i849 = load i32, ptr %i.ef, align 4
  %i.eg = lshr i32 %.val.i849, 24
  br label %lean_obj_tag.exit850

lean_obj_tag.exit850:                             ; preds = %bb.bn, %bb.bo
  %.0.i848 = phi i32 [ %i.ee, %bb.bn ], [ %i.eg, %bb.bo ]
  %i.eh = icmp eq i32 %.0.i848, 0
  br i1 %i.eh, label %bb.bp, label %bb.hi

bb.bp:                                            ; preds = %lean_obj_tag.exit850
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !10 ; 5 uses
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = and i64 %i.ek, 1
  %.not.i543 = icmp eq i64 %i.el, 0
  br i1 %.not.i543, label %bb.bq, label %lean_inc.exit544

bb.bq:                                            ; preds = %bb.bp
  %.val.i.i851 = load i32, ptr %i.ej, align 4, !tbaa !14 ; 3 uses
  %i.em = icmp sgt i32 %.val.i.i851, 0
  br i1 %i.em, label %bb.br, label %bb.bs, !prof !16

bb.br:                                            ; preds = %bb.bq
  %i.en = add nuw i32 %.val.i.i851, 1
  store i32 %i.en, ptr %i.ej, align 4, !tbaa !14
  br label %lean_inc.exit544

bb.bs:                                            ; preds = %bb.bq
  %.not.i.i852 = icmp eq i32 %.val.i.i851, 0
  br i1 %.not.i.i852, label %lean_inc.exit544, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.eo = atomicrmw sub ptr %i.ej, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit544

lean_inc.exit544:                                 ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bp
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.ea, i32 noundef 1)
  %i.ep = tail call ptr @lean_alloc_object(i64 noundef 40) #6 ; 5 uses
  store i32 1, ptr %i.ep, align 4, !tbaa !14
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4
  %i.es = and i32 %i.er, 65535
  %i.et = or disjoint i32 %i.es, -167772160
  store i32 %i.et, ptr %i.eq, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store i64 0, ptr %i.eu, align 8, !tbaa !12
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i64 2, ptr %i.ev, align 8, !tbaa !12
  %i.ew = tail call ptr @lean_array_push(ptr noundef nonnull %i.ep, ptr noundef %i.ej) #6
  %i.ex = tail call ptr @lean_array_push(ptr noundef %i.ew, ptr noundef %i.bj) #6
  %i.ey = tail call ptr @l_Lean_Meta_mkAppM(ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__11_value, ptr noundef %i.ex, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20) #6 ; 10 uses
  %i.ez = ptrtoint ptr %i.ey to i64               ; 2 uses
  %i.fa = and i64 %i.ez, 1
  %.not.i854 = icmp eq i64 %i.fa, 0               ; 2 uses
  br i1 %.not.i854, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %lean_inc.exit544
  %i.fb = lshr i64 %i.ez, 1
  %i.fc = trunc i64 %i.fb to i32
  br label %lean_obj_tag.exit857

bb.bv:                                            ; preds = %lean_inc.exit544
  %i.fd = getelementptr i8, ptr %i.ey, i64 4
  %.val.i856 = load i32, ptr %i.fd, align 4
  %i.fe = lshr i32 %.val.i856, 24
  br label %lean_obj_tag.exit857

lean_obj_tag.exit857:                             ; preds = %bb.bu, %bb.bv
  %.0.i855 = phi i32 [ %i.fc, %bb.bu ], [ %i.fe, %bb.bv ]
  %i.ff = icmp eq i32 %.0.i855, 0
  br i1 %i.ff, label %bb.bw, label %bb.fq

bb.bw:                                            ; preds = %lean_obj_tag.exit857
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !10 ; 5 uses
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = and i64 %i.fi, 1
  %.not.i541 = icmp eq i64 %i.fj, 0
  br i1 %.not.i541, label %bb.bx, label %lean_inc.exit542

bb.bx:                                            ; preds = %bb.bw
  %.val.i.i858 = load i32, ptr %i.fh, align 4, !tbaa !14 ; 3 uses
  %i.fk = icmp sgt i32 %.val.i.i858, 0
  br i1 %i.fk, label %bb.by, label %bb.bz, !prof !16

bb.by:                                            ; preds = %bb.bx
  %i.fl = add nuw i32 %.val.i.i858, 1
  store i32 %i.fl, ptr %i.fh, align 4, !tbaa !14
  br label %lean_inc.exit542

bb.bz:                                            ; preds = %bb.bx
  %.not.i.i859 = icmp eq i32 %.val.i.i858, 0
  br i1 %.not.i.i859, label %lean_inc.exit542, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fm = atomicrmw sub ptr %i.fh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit542

lean_inc.exit542:                                 ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bw
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.ey, i32 noundef 1)
  %i.fn = tail call ptr @l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval(ptr noundef %9, ptr noundef %i.fh, i8 noundef zeroext %10, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20) ; 10 uses
  %i.fo = ptrtoint ptr %i.fn to i64               ; 2 uses
  %i.fp = and i64 %i.fo, 1
  %.not.i861 = icmp eq i64 %i.fp, 0               ; 2 uses
  br i1 %.not.i861, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %lean_inc.exit542
  %i.fq = lshr i64 %i.fo, 1
  %i.fr = trunc i64 %i.fq to i32
  br label %lean_obj_tag.exit864

bb.cc:                                            ; preds = %lean_inc.exit542
  %i.fs = getelementptr i8, ptr %i.fn, i64 4
  %.val.i863 = load i32, ptr %i.fs, align 4
  %i.ft = lshr i32 %.val.i863, 24
  br label %lean_obj_tag.exit864

lean_obj_tag.exit864:                             ; preds = %bb.cb, %bb.cc
  %.0.i862 = phi i32 [ %i.fr, %bb.cb ], [ %i.ft, %bb.cc ]
  %i.fu = icmp eq i32 %.0.i862, 0
  br i1 %i.fu, label %bb.cd, label %bb.ec

bb.cd:                                            ; preds = %lean_obj_tag.exit864
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !10 ; 5 uses
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = and i64 %i.fx, 1
  %.not.i539 = icmp eq i64 %i.fy, 0
  br i1 %.not.i539, label %bb.ce, label %lean_inc.exit540

bb.ce:                                            ; preds = %bb.cd
  %.val.i.i865 = load i32, ptr %i.fw, align 4, !tbaa !14 ; 3 uses
  %i.fz = icmp sgt i32 %.val.i.i865, 0
  br i1 %i.fz, label %bb.cf, label %bb.cg, !prof !16

bb.cf:                                            ; preds = %bb.ce
  %i.ga = add nuw i32 %.val.i.i865, 1
  store i32 %i.ga, ptr %i.fw, align 4, !tbaa !14
  br label %lean_inc.exit540

bb.cg:                                            ; preds = %bb.ce
  %.not.i.i866 = icmp eq i32 %.val.i.i865, 0
  br i1 %.not.i.i866, label %lean_inc.exit540, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.gb = atomicrmw sub ptr %i.fw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit540

lean_inc.exit540:                                 ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.cd
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.fn, i32 noundef 1)
  %i.gc = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !10
  %i.ge = load ptr, ptr @l_Lean_Elab_inServer, align 8, !tbaa !10
  %i.gf = tail call zeroext i8 @l_Lean_Option_get___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__0_spec__3(ptr noundef %7, ptr noundef %i.gd, ptr noundef %i.ge)
  %i.gg = icmp eq i8 %i.gf, 0
  br i1 %i.gg, label %bb.ci, label %bb.cn

bb.ci:                                            ; preds = %lean_inc.exit540
  br i1 %.not.i547, label %bb.cj, label %lean_dec.exit603

bb.cj:                                            ; preds = %bb.ci
  %i.gh = load i32, ptr %i.co, align 512, !tbaa !14 ; 3 uses
  %i.gi = icmp sgt i32 %i.gh, 1
  br i1 %i.gi, label %bb.ck, label %bb.cl, !prof !16

bb.ck:                                            ; preds = %bb.cj
  %i.gj = add nsw i32 %i.gh, -1
  store i32 %i.gj, ptr %i.co, align 512, !tbaa !14
  br label %lean_dec.exit603

bb.cl:                                            ; preds = %bb.cj
  %.not.i611 = icmp eq i32 %i.gh, 0
  br i1 %.not.i611, label %lean_dec.exit603, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.co) #6
  br label %lean_dec.exit603

bb.cn:                                            ; preds = %lean_inc.exit540
  br i1 %.not.i547, label %bb.co, label %lean_dec.exit603

bb.co:                                            ; preds = %bb.cn
  %i.gk = load i32, ptr %i.co, align 512, !tbaa !14 ; 3 uses
  %i.gl = icmp sgt i32 %i.gk, 1
  br i1 %i.gl, label %bb.cp, label %bb.cq, !prof !16

bb.cp:                                            ; preds = %bb.co
  %i.gm = add nsw i32 %i.gk, -1
  store i32 %i.gm, ptr %i.co, align 512, !tbaa !14
  br label %lean_dec.exit603

bb.cq:                                            ; preds = %bb.co
  %.not.i613 = icmp eq i32 %i.gk, 0
  br i1 %.not.i613, label %lean_dec.exit603, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.co) #6
  br label %lean_dec.exit603

lean_dec.exit603:                                 ; preds = %bb.cn, %bb.cp, %bb.cq, %bb.cr, %bb.ci, %bb.ck, %bb.cl, %bb.cm
  %.0514 = phi i8 [ 1, %bb.ci ], [ 1, %bb.cm ], [ 1, %bb.cl ], [ 1, %bb.ck ], [ 0, %bb.cr ], [ 0, %bb.cq ], [ 0, %bb.cp ], [ 0, %bb.cn ]
  %i.gn = tail call ptr @l_Lean_evalConst___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__0_spec__2___redArg(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %i.fw, i8 noundef zeroext %.0514, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef nonnull %19, ptr noundef %20) ; 14 uses
  %i.go = ptrtoint ptr %i.gn to i64               ; 2 uses
  %i.gp = and i64 %i.go, 1
  %.not.i868 = icmp eq i64 %i.gp, 0               ; 3 uses
  br i1 %.not.i868, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %lean_dec.exit603
  %i.gq = lshr i64 %i.go, 1
  %i.gr = trunc i64 %i.gq to i32
  br label %lean_obj_tag.exit871

bb.ct:                                            ; preds = %lean_dec.exit603
  %i.gs = getelementptr i8, ptr %i.gn, i64 4
  %.val.i870 = load i32, ptr %i.gs, align 4
  %i.gt = lshr i32 %.val.i870, 24
  br label %lean_obj_tag.exit871

lean_obj_tag.exit871:                             ; preds = %bb.cs, %bb.ct
  %.0.i869 = phi i32 [ %i.gr, %bb.cs ], [ %i.gt, %bb.ct ]
  %i.gu = icmp eq i32 %.0.i869, 0
  br i1 %i.gu, label %bb.cu, label %bb.dh

bb.cu:                                            ; preds = %lean_obj_tag.exit871
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !10 ; 5 uses
  %.val807 = load i32, ptr %i.gn, align 8, !tbaa !14
  %i.gx = icmp eq i32 %.val807, 1                 ; 2 uses
  br i1 %i.gx, label %lean_dec.exit599, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = and i64 %i.gy, 1
  %.not.i537 = icmp eq i64 %i.gz, 0
  br i1 %.not.i537, label %bb.cw, label %lean_inc.exit538

bb.cw:                                            ; preds = %bb.cv
  %.val.i.i872 = load i32, ptr %i.gw, align 4, !tbaa !14 ; 3 uses
  %i.ha = icmp sgt i32 %.val.i.i872, 0
  br i1 %i.ha, label %bb.cx, label %bb.cy, !prof !16

bb.cx:                                            ; preds = %bb.cw
  %i.hb = add nuw i32 %.val.i.i872, 1
  store i32 %i.hb, ptr %i.gw, align 4, !tbaa !14
  br label %lean_inc.exit538

bb.cy:                                            ; preds = %bb.cw
  %.not.i.i873 = icmp eq i32 %.val.i.i872, 0
  br i1 %.not.i.i873, label %lean_inc.exit538, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.hc = atomicrmw sub ptr %i.gw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit538

lean_inc.exit538:                                 ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cv
  br i1 %.not.i868, label %bb.da, label %lean_dec.exit599

bb.da:                                            ; preds = %lean_inc.exit538
  %i.hd = load i32, ptr %i.gn, align 8, !tbaa !14 ; 3 uses
  %i.he = icmp sgt i32 %i.hd, 1
  br i1 %i.he, label %bb.db, label %bb.dc, !prof !16

bb.db:                                            ; preds = %bb.da
  %i.hf = add nsw i32 %i.hd, -1
  store i32 %i.hf, ptr %i.gn, align 8, !tbaa !14
  br label %lean_dec.exit599

bb.dc:                                            ; preds = %bb.da
  %.not.i615 = icmp eq i32 %i.hd, 0
  br i1 %.not.i615, label %lean_dec.exit599, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gn) #6
  br label %lean_dec.exit599

lean_dec.exit599:                                 ; preds = %lean_inc.exit538, %bb.db, %bb.dc, %bb.dd, %bb.cu
  %.0513 = phi ptr [ %i.gn, %bb.cu ], [ inttoptr (i64 1 to ptr), %bb.dd ], [ inttoptr (i64 1 to ptr), %bb.dc ], [ inttoptr (i64 1 to ptr), %bb.db ], [ inttoptr (i64 1 to ptr), %lean_inc.exit538 ]
  %i.hg = tail call ptr @lean_alloc_object(i64 noundef 48) #6 ; 9 uses
  store i32 1, ptr %i.hg, align 4, !tbaa !14
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 4 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4
  %i.hj = and i32 %i.hi, 65535
  %i.hk = or disjoint i32 %i.hj, -184549376
  store i32 %i.hk, ptr %i.hh, align 4
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___lam__2___boxed, ptr %i.hl, align 8, !tbaa !10
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store i16 6, ptr %i.hm, align 8, !tbaa !22
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hg, i64 18
  store i16 3, ptr %i.hn, align 2, !tbaa !22
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  store ptr %13, ptr %i.ho, align 8, !tbaa !10
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  store ptr %i.gw, ptr %i.hp, align 8, !tbaa !10
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hg, i64 40
  store ptr %11, ptr %i.hq, align 8, !tbaa !10
  br i1 %i.bk, label %bb.df, label %bb.de

bb.de:                                            ; preds = %lean_dec.exit599
  %i.hr = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %bb.df

bb.df:                                            ; preds = %lean_dec.exit599, %bb.de
  %.sink1136 = phi ptr [ %i.hr, %bb.de ], [ %.0516, %lean_dec.exit599 ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sink1136, i64 8
  store ptr %i.bu, ptr %i.hs, align 8, !tbaa !10
  %i.ht = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store ptr %i.hg, ptr %i.hu, align 8, !tbaa !10
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store ptr %.sink1136, ptr %i.hv, align 8, !tbaa !10
  %i.hw = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store ptr %i.ht, ptr %i.hx, align 8, !tbaa !10
  br i1 %i.gx, label %lean_dec.exit597.sink.split, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.hy = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit597.sink.split

bb.dh:                                            ; preds = %lean_obj_tag.exit871
  %i.hz = load i32, ptr %i.bu, align 4, !tbaa !14 ; 3 uses
  %i.ia = icmp sgt i32 %i.hz, 1
  br i1 %i.ia, label %bb.di, label %bb.dj, !prof !16

bb.di:                                            ; preds = %bb.dh
  %i.ib = add nsw i32 %i.hz, -1
  store i32 %i.ib, ptr %i.bu, align 4, !tbaa !14
  br label %lean_dec_ref.exit794

bb.dj:                                            ; preds = %bb.dh
  %.not.i793 = icmp eq i32 %i.hz, 0
  br i1 %.not.i793, label %lean_dec_ref.exit794, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bu) #6
  br label %lean_dec_ref.exit794

lean_dec_ref.exit794:                             ; preds = %bb.di, %bb.dj, %bb.dk
  %i.ic = ptrtoint ptr %.0516 to i64
  %i.id = and i64 %i.ic, 1
  %.not.i875 = icmp eq i64 %i.id, 0
  br i1 %.not.i875, label %bb.dl, label %lean_del_object.exit876

bb.dl:                                            ; preds = %lean_dec_ref.exit794
  tail call void @lean_free_object(ptr noundef nonnull %.0516) #6
  br label %lean_del_object.exit876

lean_del_object.exit876:                          ; preds = %lean_dec_ref.exit794, %bb.dl
  %i.ie = load i32, ptr %13, align 4, !tbaa !14   ; 3 uses
  %i.if = icmp sgt i32 %i.ie, 1
  br i1 %i.if, label %bb.dm, label %bb.dn, !prof !16

bb.dm:                                            ; preds = %lean_del_object.exit876
  %i.ig = add nsw i32 %i.ie, -1
  store i32 %i.ig, ptr %13, align 4, !tbaa !14
  br label %lean_dec_ref.exit792

bb.dn:                                            ; preds = %lean_del_object.exit876
  %.not.i791 = icmp eq i32 %i.ie, 0
  br i1 %.not.i791, label %lean_dec_ref.exit792, label %bb.do

bb.do:                                            ; preds = %bb.dn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %13) #6
  br label %lean_dec_ref.exit792

lean_dec_ref.exit792:                             ; preds = %bb.dm, %bb.dn, %bb.do
  %i.ih = load i32, ptr %11, align 4, !tbaa !14   ; 3 uses
  %i.ii = icmp sgt i32 %i.ih, 1
  br i1 %i.ii, label %bb.dp, label %bb.dq, !prof !16

bb.dp:                                            ; preds = %lean_dec_ref.exit792
  %i.ij = add nsw i32 %i.ih, -1
  store i32 %i.ij, ptr %11, align 4, !tbaa !14
  br label %lean_dec_ref.exit790

bb.dq:                                            ; preds = %lean_dec_ref.exit792
  %.not.i789 = icmp eq i32 %i.ih, 0
  br i1 %.not.i789, label %lean_dec_ref.exit790, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %11) #6
  br label %lean_dec_ref.exit790

lean_dec_ref.exit790:                             ; preds = %bb.dp, %bb.dq, %bb.dr
  %i.ik = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !10 ; 5 uses
  %.val806 = load i32, ptr %i.gn, align 8, !tbaa !14
  %i.im = icmp eq i32 %.val806, 1
  br i1 %i.im, label %lean_dec.exit597, label %bb.ds

bb.ds:                                            ; preds = %lean_dec_ref.exit790
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = and i64 %i.in, 1
  %.not.i535 = icmp eq i64 %i.io, 0
  br i1 %.not.i535, label %bb.dt, label %lean_inc.exit536

bb.dt:                                            ; preds = %bb.ds
  %.val.i.i877 = load i32, ptr %i.il, align 4, !tbaa !14 ; 3 uses
  %i.ip = icmp sgt i32 %.val.i.i877, 0
  br i1 %i.ip, label %bb.du, label %bb.dv, !prof !16

bb.du:                                            ; preds = %bb.dt
  %i.iq = add nuw i32 %.val.i.i877, 1
  store i32 %i.iq, ptr %i.il, align 4, !tbaa !14
  br label %lean_inc.exit536

bb.dv:                                            ; preds = %bb.dt
  %.not.i.i878 = icmp eq i32 %.val.i.i877, 0
  br i1 %.not.i.i878, label %lean_inc.exit536, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ir = atomicrmw sub ptr %i.il, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit536

lean_inc.exit536:                                 ; preds = %bb.dw, %bb.dv, %bb.du, %bb.ds
  br i1 %.not.i868, label %bb.dx, label %bb.eb

bb.dx:                                            ; preds = %lean_inc.exit536
  %i.is = load i32, ptr %i.gn, align 8, !tbaa !14 ; 3 uses
  %i.it = icmp sgt i32 %i.is, 1
  br i1 %i.it, label %bb.dy, label %bb.dz, !prof !16

bb.dy:                                            ; preds = %bb.dx
  %i.iu = add nsw i32 %i.is, -1
  store i32 %i.iu, ptr %i.gn, align 8, !tbaa !14
  br label %bb.eb

bb.dz:                                            ; preds = %bb.dx
  %.not.i617 = icmp eq i32 %i.is, 0
  br i1 %.not.i617, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gn) #6
  br label %bb.eb

bb.eb:                                            ; preds = %lean_inc.exit536, %bb.dy, %bb.dz, %bb.ea
  %i.iv = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit597.sink.split

bb.ec:                                            ; preds = %lean_obj_tag.exit864
  br i1 %.not.i547, label %bb.ed, label %lean_dec.exit595

bb.ed:                                            ; preds = %bb.ec
  %i.iw = load i32, ptr %i.co, align 512, !tbaa !14 ; 3 uses
  %i.ix = icmp sgt i32 %i.iw, 1
  br i1 %i.ix, label %bb.ee, label %bb.ef, !prof !16

bb.ee:                                            ; preds = %bb.ed
  %i.iy = add nsw i32 %i.iw, -1
  store i32 %i.iy, ptr %i.co, align 512, !tbaa !14
  br label %lean_dec.exit595

bb.ef:                                            ; preds = %bb.ed
  %.not.i619 = icmp eq i32 %i.iw, 0
  br i1 %.not.i619, label %lean_dec.exit595, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.co) #6
  br label %lean_dec.exit595

lean_dec.exit595:                                 ; preds = %bb.eg, %bb.ef, %bb.ee, %bb.ec
  %i.iz = load i32, ptr %i.bu, align 4, !tbaa !14 ; 3 uses
  %i.ja = icmp sgt i32 %i.iz, 1
  br i1 %i.ja, label %bb.eh, label %bb.ei, !prof !16

bb.eh:                                            ; preds = %lean_dec.exit595
  %i.jb = add nsw i32 %i.iz, -1
  store i32 %i.jb, ptr %i.bu, align 4, !tbaa !14
  br label %lean_dec_ref.exit788

bb.ei:                                            ; preds = %lean_dec.exit595
  %.not.i787 = icmp eq i32 %i.iz, 0
  br i1 %.not.i787, label %lean_dec_ref.exit788, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bu) #6
  br label %lean_dec_ref.exit788

lean_dec_ref.exit788:                             ; preds = %bb.eh, %bb.ei, %bb.ej
  %i.jc = ptrtoint ptr %.0516 to i64
  %i.jd = and i64 %i.jc, 1
  %.not.i880 = icmp eq i64 %i.jd, 0
  br i1 %.not.i880, label %bb.ek, label %lean_del_object.exit881

bb.ek:                                            ; preds = %lean_dec_ref.exit788
  tail call void @lean_free_object(ptr noundef nonnull %.0516) #6
  br label %lean_del_object.exit881

lean_del_object.exit881:                          ; preds = %lean_dec_ref.exit788, %bb.ek
  %i.je = load i32, ptr %13, align 4, !tbaa !14   ; 3 uses
  %i.jf = icmp sgt i32 %i.je, 1
  br i1 %i.jf, label %bb.el, label %bb.em, !prof !16

bb.el:                                            ; preds = %lean_del_object.exit881
  %i.jg = add nsw i32 %i.je, -1
  store i32 %i.jg, ptr %13, align 4, !tbaa !14
  br label %lean_dec_ref.exit786

bb.em:                                            ; preds = %lean_del_object.exit881
  %.not.i785 = icmp eq i32 %i.je, 0
  br i1 %.not.i785, label %lean_dec_ref.exit786, label %bb.en

bb.en:                                            ; preds = %bb.em
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %13) #6
  br label %lean_dec_ref.exit786

lean_dec_ref.exit786:                             ; preds = %bb.el, %bb.em, %bb.en
  %i.jh = load i32, ptr %11, align 4, !tbaa !14   ; 3 uses
  %i.ji = icmp sgt i32 %i.jh, 1
  br i1 %i.ji, label %bb.eo, label %bb.ep, !prof !16

bb.eo:                                            ; preds = %lean_dec_ref.exit786
  %i.jj = add nsw i32 %i.jh, -1
  store i32 %i.jj, ptr %11, align 4, !tbaa !14
  br label %lean_dec_ref.exit784

bb.ep:                                            ; preds = %lean_dec_ref.exit786
  %.not.i783 = icmp eq i32 %i.jh, 0
  br i1 %.not.i783, label %lean_dec_ref.exit784, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %11) #6
  br label %lean_dec_ref.exit784

lean_dec_ref.exit784:                             ; preds = %bb.eo, %bb.ep, %bb.eq
  %i.jk = load i32, ptr %7, align 4, !tbaa !14    ; 3 uses
  %i.jl = icmp sgt i32 %i.jk, 1
  br i1 %i.jl, label %bb.er, label %bb.es, !prof !16

bb.er:                                            ; preds = %lean_dec_ref.exit784
  %i.jm = add nsw i32 %i.jk, -1
  store i32 %i.jm, ptr %7, align 4, !tbaa !14
  br label %lean_dec_ref.exit782

bb.es:                                            ; preds = %lean_dec_ref.exit784
  %.not.i781 = icmp eq i32 %i.jk, 0
  br i1 %.not.i781, label %lean_dec_ref.exit782, label %bb.et

bb.et:                                            ; preds = %bb.es
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #6
  br label %lean_dec_ref.exit782

lean_dec_ref.exit782:                             ; preds = %bb.er, %bb.es, %bb.et
  %i.jn = load i32, ptr %6, align 4, !tbaa !14    ; 3 uses
  %i.jo = icmp sgt i32 %i.jn, 1
  br i1 %i.jo, label %bb.eu, label %bb.ev, !prof !16

bb.eu:                                            ; preds = %lean_dec_ref.exit782
  %i.jp = add nsw i32 %i.jn, -1
  store i32 %i.jp, ptr %6, align 4, !tbaa !14
  br label %lean_dec_ref.exit780

bb.ev:                                            ; preds = %lean_dec_ref.exit782
  %.not.i779 = icmp eq i32 %i.jn, 0
  br i1 %.not.i779, label %lean_dec_ref.exit780, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #6
  br label %lean_dec_ref.exit780

lean_dec_ref.exit780:                             ; preds = %bb.eu, %bb.ev, %bb.ew
  %i.jq = load i32, ptr %5, align 4, !tbaa !14    ; 3 uses
  %i.jr = icmp sgt i32 %i.jq, 1
  br i1 %i.jr, label %bb.ex, label %bb.ey, !prof !16

bb.ex:                                            ; preds = %lean_dec_ref.exit780
  %i.js = add nsw i32 %i.jq, -1
  store i32 %i.js, ptr %5, align 4, !tbaa !14
  br label %lean_dec_ref.exit778

bb.ey:                                            ; preds = %lean_dec_ref.exit780
  %.not.i777 = icmp eq i32 %i.jq, 0
  br i1 %.not.i777, label %lean_dec_ref.exit778, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #6
  br label %lean_dec_ref.exit778

lean_dec_ref.exit778:                             ; preds = %bb.ex, %bb.ey, %bb.ez
  %i.jt = load i32, ptr %4, align 4, !tbaa !14    ; 3 uses
  %i.ju = icmp sgt i32 %i.jt, 1
  br i1 %i.ju, label %bb.fa, label %bb.fb, !prof !16

bb.fa:                                            ; preds = %lean_dec_ref.exit778
  %i.jv = add nsw i32 %i.jt, -1
  store i32 %i.jv, ptr %4, align 4, !tbaa !14
  br label %lean_dec_ref.exit776

bb.fb:                                            ; preds = %lean_dec_ref.exit778
  %.not.i775 = icmp eq i32 %i.jt, 0
  br i1 %.not.i775, label %lean_dec_ref.exit776, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #6
  br label %lean_dec_ref.exit776

lean_dec_ref.exit776:                             ; preds = %bb.fa, %bb.fb, %bb.fc
  %i.jw = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.jx = icmp sgt i32 %i.jw, 1
  br i1 %i.jx, label %bb.fd, label %bb.fe, !prof !16

bb.fd:                                            ; preds = %lean_dec_ref.exit776
  %i.jy = add nsw i32 %i.jw, -1
  store i32 %i.jy, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit774

bb.fe:                                            ; preds = %lean_dec_ref.exit776
  %.not.i773 = icmp eq i32 %i.jw, 0
  br i1 %.not.i773, label %lean_dec_ref.exit774, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref.exit774

lean_dec_ref.exit774:                             ; preds = %bb.fd, %bb.fe, %bb.ff
  %i.jz = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !10 ; 5 uses
  %.val805 = load i32, ptr %i.fn, align 8, !tbaa !14
  %i.kb = icmp eq i32 %.val805, 1
  br i1 %i.kb, label %lean_dec.exit597, label %bb.fg

bb.fg:                                            ; preds = %lean_dec_ref.exit774
  %i.kc = ptrtoint ptr %i.ka to i64
  %i.kd = and i64 %i.kc, 1
  %.not.i533 = icmp eq i64 %i.kd, 0
  br i1 %.not.i533, label %bb.fh, label %lean_inc.exit534

bb.fh:                                            ; preds = %bb.fg
  %.val.i.i882 = load i32, ptr %i.ka, align 4, !tbaa !14 ; 3 uses
  %i.ke = icmp sgt i32 %.val.i.i882, 0
  br i1 %i.ke, label %bb.fi, label %bb.fj, !prof !16

bb.fi:                                            ; preds = %bb.fh
  %i.kf = add nuw i32 %.val.i.i882, 1
  store i32 %i.kf, ptr %i.ka, align 4, !tbaa !14
  br label %lean_inc.exit534

bb.fj:                                            ; preds = %bb.fh
  %.not.i.i883 = icmp eq i32 %.val.i.i882, 0
  br i1 %.not.i.i883, label %lean_inc.exit534, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.kg = atomicrmw sub ptr %i.ka, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit534

lean_inc.exit534:                                 ; preds = %bb.fk, %bb.fj, %bb.fi, %bb.fg
  br i1 %.not.i861, label %bb.fl, label %bb.fp

bb.fl:                                            ; preds = %lean_inc.exit534
  %i.kh = load i32, ptr %i.fn, align 8, !tbaa !14 ; 3 uses
  %i.ki = icmp sgt i32 %i.kh, 1
  br i1 %i.ki, label %bb.fm, label %bb.fn, !prof !16

bb.fm:                                            ; preds = %bb.fl
  %i.kj = add nsw i32 %i.kh, -1
  store i32 %i.kj, ptr %i.fn, align 8, !tbaa !14
  br label %bb.fp

bb.fn:                                            ; preds = %bb.fl
  %.not.i621 = icmp eq i32 %i.kh, 0
  br i1 %.not.i621, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fn) #6
  br label %bb.fp

bb.fp:                                            ; preds = %lean_inc.exit534, %bb.fm, %bb.fn, %bb.fo
  %i.kk = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit597.sink.split

bb.fq:                                            ; preds = %lean_obj_tag.exit857
  br i1 %.not.i547, label %bb.fr, label %lean_dec.exit591

bb.fr:                                            ; preds = %bb.fq
  %i.kl = load i32, ptr %i.co, align 512, !tbaa !14 ; 3 uses
  %i.km = icmp sgt i32 %i.kl, 1
  br i1 %i.km, label %bb.fs, label %bb.ft, !prof !16

bb.fs:                                            ; preds = %bb.fr
  %i.kn = add nsw i32 %i.kl, -1
  store i32 %i.kn, ptr %i.co, align 512, !tbaa !14
  br label %lean_dec.exit591

bb.ft:                                            ; preds = %bb.fr
  %.not.i623 = icmp eq i32 %i.kl, 0
  br i1 %.not.i623, label %lean_dec.exit591, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.co) #6
  br label %lean_dec.exit591

lean_dec.exit591:                                 ; preds = %bb.fu, %bb.ft, %bb.fs, %bb.fq
  %i.ko = load i32, ptr %i.bu, align 4, !tbaa !14 ; 3 uses
  %i.kp = icmp sgt i32 %i.ko, 1
  br i1 %i.kp, label %bb.fv, label %bb.fw, !prof !16

bb.fv:                                            ; preds = %lean_dec.exit591
  %i.kq = add nsw i32 %i.ko, -1
  store i32 %i.kq, ptr %i.bu, align 4, !tbaa !14
  br label %lean_dec_ref.exit772

bb.fw:                                            ; preds = %lean_dec.exit591
  %.not.i771 = icmp eq i32 %i.ko, 0
  br i1 %.not.i771, label %lean_dec_ref.exit772, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bu) #6
  br label %lean_dec_ref.exit772

lean_dec_ref.exit772:                             ; preds = %bb.fv, %bb.fw, %bb.fx
  %i.kr = ptrtoint ptr %.0516 to i64
  %i.ks = and i64 %i.kr, 1
  %.not.i885 = icmp eq i64 %i.ks, 0
  br i1 %.not.i885, label %bb.fy, label %lean_del_object.exit886

bb.fy:                                            ; preds = %lean_dec_ref.exit772
  tail call void @lean_free_object(ptr noundef nonnull %.0516) #6
  br label %lean_del_object.exit886

lean_del_object.exit886:                          ; preds = %lean_dec_ref.exit772, %bb.fy
  %i.kt = load i32, ptr %13, align 4, !tbaa !14   ; 3 uses
  %i.ku = icmp sgt i32 %i.kt, 1
  br i1 %i.ku, label %bb.fz, label %bb.ga, !prof !16

bb.fz:                                            ; preds = %lean_del_object.exit886
  %i.kv = add nsw i32 %i.kt, -1
  store i32 %i.kv, ptr %13, align 4, !tbaa !14
  br label %lean_dec_ref.exit770

bb.ga:                                            ; preds = %lean_del_object.exit886
  %.not.i769 = icmp eq i32 %i.kt, 0
  br i1 %.not.i769, label %lean_dec_ref.exit770, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %13) #6
  br label %lean_dec_ref.exit770

lean_dec_ref.exit770:                             ; preds = %bb.fz, %bb.ga, %bb.gb
  %i.kw = load i32, ptr %11, align 4, !tbaa !14   ; 3 uses
  %i.kx = icmp sgt i32 %i.kw, 1
  br i1 %i.kx, label %bb.gc, label %bb.gd, !prof !16

bb.gc:                                            ; preds = %lean_dec_ref.exit770
  %i.ky = add nsw i32 %i.kw, -1
  store i32 %i.ky, ptr %11, align 4, !tbaa !14
  br label %lean_dec_ref.exit768

bb.gd:                                            ; preds = %lean_dec_ref.exit770
  %.not.i767 = icmp eq i32 %i.kw, 0
  br i1 %.not.i767, label %lean_dec_ref.exit768, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %11) #6
  br label %lean_dec_ref.exit768

lean_dec_ref.exit768:                             ; preds = %bb.gc, %bb.gd, %bb.ge
  %i.kz = ptrtoint ptr %9 to i64
  %i.la = and i64 %i.kz, 1
  %.not.i588 = icmp eq i64 %i.la, 0
  br i1 %.not.i588, label %bb.gf, label %lean_dec.exit589

bb.gf:                                            ; preds = %lean_dec_ref.exit768
  %i.lb = load i32, ptr %9, align 4, !tbaa !14    ; 3 uses
  %i.lc = icmp sgt i32 %i.lb, 1
  br i1 %i.lc, label %bb.gg, label %bb.gh, !prof !16

bb.gg:                                            ; preds = %bb.gf
  %i.ld = add nsw i32 %i.lb, -1
  store i32 %i.ld, ptr %9, align 4, !tbaa !14
  br label %lean_dec.exit589

bb.gh:                                            ; preds = %bb.gf
  %.not.i625 = icmp eq i32 %i.lb, 0
  br i1 %.not.i625, label %lean_dec.exit589, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #6
  br label %lean_dec.exit589

lean_dec.exit589:                                 ; preds = %bb.gi, %bb.gh, %bb.gg, %lean_dec_ref.exit768
  %i.le = load i32, ptr %7, align 4, !tbaa !14    ; 3 uses
  %i.lf = icmp sgt i32 %i.le, 1
  br i1 %i.lf, label %bb.gj, label %bb.gk, !prof !16

bb.gj:                                            ; preds = %lean_dec.exit589
  %i.lg = add nsw i32 %i.le, -1
  store i32 %i.lg, ptr %7, align 4, !tbaa !14
  br label %lean_dec_ref.exit766

bb.gk:                                            ; preds = %lean_dec.exit589
  %.not.i765 = icmp eq i32 %i.le, 0
  br i1 %.not.i765, label %lean_dec_ref.exit766, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #6
  br label %lean_dec_ref.exit766

lean_dec_ref.exit766:                             ; preds = %bb.gj, %bb.gk, %bb.gl
  %i.lh = load i32, ptr %6, align 4, !tbaa !14    ; 3 uses
  %i.li = icmp sgt i32 %i.lh, 1
  br i1 %i.li, label %bb.gm, label %bb.gn, !prof !16

bb.gm:                                            ; preds = %lean_dec_ref.exit766
  %i.lj = add nsw i32 %i.lh, -1
  store i32 %i.lj, ptr %6, align 4, !tbaa !14
  br label %lean_dec_ref.exit764

bb.gn:                                            ; preds = %lean_dec_ref.exit766
  %.not.i763 = icmp eq i32 %i.lh, 0
  br i1 %.not.i763, label %lean_dec_ref.exit764, label %bb.go

bb.go:                                            ; preds = %bb.gn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #6
  br label %lean_dec_ref.exit764

lean_dec_ref.exit764:                             ; preds = %bb.gm, %bb.gn, %bb.go
  %i.lk = load i32, ptr %5, align 4, !tbaa !14    ; 3 uses
  %i.ll = icmp sgt i32 %i.lk, 1
  br i1 %i.ll, label %bb.gp, label %bb.gq, !prof !16

bb.gp:                                            ; preds = %lean_dec_ref.exit764
  %i.lm = add nsw i32 %i.lk, -1
  store i32 %i.lm, ptr %5, align 4, !tbaa !14
  br label %lean_dec_ref.exit762

bb.gq:                                            ; preds = %lean_dec_ref.exit764
  %.not.i761 = icmp eq i32 %i.lk, 0
  br i1 %.not.i761, label %lean_dec_ref.exit762, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #6
  br label %lean_dec_ref.exit762

lean_dec_ref.exit762:                             ; preds = %bb.gp, %bb.gq, %bb.gr
  %i.ln = load i32, ptr %4, align 4, !tbaa !14    ; 3 uses
  %i.lo = icmp sgt i32 %i.ln, 1
  br i1 %i.lo, label %bb.gs, label %bb.gt, !prof !16

bb.gs:                                            ; preds = %lean_dec_ref.exit762
  %i.lp = add nsw i32 %i.ln, -1
  store i32 %i.lp, ptr %4, align 4, !tbaa !14
  br label %lean_dec_ref.exit760

bb.gt:                                            ; preds = %lean_dec_ref.exit762
  %.not.i759 = icmp eq i32 %i.ln, 0
  br i1 %.not.i759, label %lean_dec_ref.exit760, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #6
  br label %lean_dec_ref.exit760

lean_dec_ref.exit760:                             ; preds = %bb.gs, %bb.gt, %bb.gu
  %i.lq = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.lr = icmp sgt i32 %i.lq, 1
  br i1 %i.lr, label %bb.gv, label %bb.gw, !prof !16

bb.gv:                                            ; preds = %lean_dec_ref.exit760
  %i.ls = add nsw i32 %i.lq, -1
  store i32 %i.ls, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit758

bb.gw:                                            ; preds = %lean_dec_ref.exit760
  %.not.i757 = icmp eq i32 %i.lq, 0
  br i1 %.not.i757, label %lean_dec_ref.exit758, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref.exit758

lean_dec_ref.exit758:                             ; preds = %bb.gv, %bb.gw, %bb.gx
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !10 ; 5 uses
  %.val804 = load i32, ptr %i.ey, align 8, !tbaa !14
  %i.lv = icmp eq i32 %.val804, 1
  br i1 %i.lv, label %lean_dec.exit597, label %bb.gy

bb.gy:                                            ; preds = %lean_dec_ref.exit758
  %i.lw = ptrtoint ptr %i.lu to i64
  %i.lx = and i64 %i.lw, 1
  %.not.i531 = icmp eq i64 %i.lx, 0
  br i1 %.not.i531, label %bb.gz, label %lean_inc.exit532

bb.gz:                                            ; preds = %bb.gy
  %.val.i.i887 = load i32, ptr %i.lu, align 4, !tbaa !14 ; 3 uses
  %i.ly = icmp sgt i32 %.val.i.i887, 0
  br i1 %i.ly, label %bb.ha, label %bb.hb, !prof !16

bb.ha:                                            ; preds = %bb.gz
  %i.lz = add nuw i32 %.val.i.i887, 1
  store i32 %i.lz, ptr %i.lu, align 4, !tbaa !14
  br label %lean_inc.exit532

bb.hb:                                            ; preds = %bb.gz
  %.not.i.i888 = icmp eq i32 %.val.i.i887, 0
  br i1 %.not.i.i888, label %lean_inc.exit532, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.ma = atomicrmw sub ptr %i.lu, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit532

lean_inc.exit532:                                 ; preds = %bb.hc, %bb.hb, %bb.ha, %bb.gy
  br i1 %.not.i854, label %bb.hd, label %bb.hh

bb.hd:                                            ; preds = %lean_inc.exit532
  %i.mb = load i32, ptr %i.ey, align 8, !tbaa !14 ; 3 uses
  %i.mc = icmp sgt i32 %i.mb, 1
  br i1 %i.mc, label %bb.he, label %bb.hf, !prof !16

bb.he:                                            ; preds = %bb.hd
  %i.md = add nsw i32 %i.mb, -1
  store i32 %i.md, ptr %i.ey, align 8, !tbaa !14
  br label %bb.hh

bb.hf:                                            ; preds = %bb.hd
  %.not.i627 = icmp eq i32 %i.mb, 0
  br i1 %.not.i627, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ey) #6
  br label %bb.hh

bb.hh:                                            ; preds = %lean_inc.exit532, %bb.he, %bb.hf, %bb.hg
  %i.me = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit597.sink.split

bb.hi:                                            ; preds = %lean_obj_tag.exit850
  br i1 %.not.i547, label %bb.hj, label %lean_dec.exit585

bb.hj:                                            ; preds = %bb.hi
  %i.mf = load i32, ptr %i.co, align 512, !tbaa !14 ; 3 uses
  %i.mg = icmp sgt i32 %i.mf, 1
  br i1 %i.mg, label %bb.hk, label %bb.hl, !prof !16

bb.hk:                                            ; preds = %bb.hj
  %i.mh = add nsw i32 %i.mf, -1
  store i32 %i.mh, ptr %i.co, align 512, !tbaa !14
  br label %lean_dec.exit585

bb.hl:                                            ; preds = %bb.hj
  %.not.i629 = icmp eq i32 %i.mf, 0
  br i1 %.not.i629, label %lean_dec.exit585, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.co) #6
  br label %lean_dec.exit585

lean_dec.exit585:                                 ; preds = %bb.hm, %bb.hl, %bb.hk, %bb.hi
  %i.mi = load i32, ptr %i.bu, align 4, !tbaa !14 ; 3 uses
  %i.mj = icmp sgt i32 %i.mi, 1
  br i1 %i.mj, label %bb.hn, label %bb.ho, !prof !16

bb.hn:                                            ; preds = %lean_dec.exit585
  %i.mk = add nsw i32 %i.mi, -1
  store i32 %i.mk, ptr %i.bu, align 4, !tbaa !14
  br label %lean_dec_ref.exit756

bb.ho:                                            ; preds = %lean_dec.exit585
  %.not.i755 = icmp eq i32 %i.mi, 0
  br i1 %.not.i755, label %lean_dec_ref.exit756, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bu) #6
  br label %lean_dec_ref.exit756

lean_dec_ref.exit756:                             ; preds = %bb.hn, %bb.ho, %bb.hp
  %i.ml = ptrtoint ptr %.0516 to i64
  %i.mm = and i64 %i.ml, 1
  %.not.i890 = icmp eq i64 %i.mm, 0
  br i1 %.not.i890, label %bb.hq, label %lean_del_object.exit891

bb.hq:                                            ; preds = %lean_dec_ref.exit756
  tail call void @lean_free_object(ptr noundef nonnull %.0516) #6
  br label %lean_del_object.exit891

lean_del_object.exit891:                          ; preds = %lean_dec_ref.exit756, %bb.hq
  %i.mn = ptrtoint ptr %i.bj to i64
  %i.mo = and i64 %i.mn, 1
  %.not.i582 = icmp eq i64 %i.mo, 0
  br i1 %.not.i582, label %bb.hr, label %lean_dec.exit583

bb.hr:                                            ; preds = %lean_del_object.exit891
  %i.mp = load i32, ptr %i.bj, align 4, !tbaa !14 ; 3 uses
  %i.mq = icmp sgt i32 %i.mp, 1
  br i1 %i.mq, label %bb.hs, label %bb.ht, !prof !16

bb.hs:                                            ; preds = %bb.hr
  %i.mr = add nsw i32 %i.mp, -1
  store i32 %i.mr, ptr %i.bj, align 4, !tbaa !14
  br label %lean_dec.exit583

bb.ht:                                            ; preds = %bb.hr
  %.not.i631 = icmp eq i32 %i.mp, 0
  br i1 %.not.i631, label %lean_dec.exit583, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #6
  br label %lean_dec.exit583

lean_dec.exit583:                                 ; preds = %bb.hu, %bb.ht, %bb.hs, %lean_del_object.exit891
  %i.ms = load i32, ptr %13, align 4, !tbaa !14   ; 3 uses
  %i.mt = icmp sgt i32 %i.ms, 1
  br i1 %i.mt, label %bb.hv, label %bb.hw, !prof !16

bb.hv:                                            ; preds = %lean_dec.exit583
  %i.mu = add nsw i32 %i.ms, -1
  store i32 %i.mu, ptr %13, align 4, !tbaa !14
  br label %lean_dec_ref.exit754

bb.hw:                                            ; preds = %lean_dec.exit583
  %.not.i753 = icmp eq i32 %i.ms, 0
  br i1 %.not.i753, label %lean_dec_ref.exit754, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %13) #6
  br label %lean_dec_ref.exit754

lean_dec_ref.exit754:                             ; preds = %bb.hv, %bb.hw, %bb.hx
  %i.mv = load i32, ptr %11, align 4, !tbaa !14   ; 3 uses
  %i.mw = icmp sgt i32 %i.mv, 1
  br i1 %i.mw, label %bb.hy, label %bb.hz, !prof !16

bb.hy:                                            ; preds = %lean_dec_ref.exit754
  %i.mx = add nsw i32 %i.mv, -1
  store i32 %i.mx, ptr %11, align 4, !tbaa !14
  br label %lean_dec_ref.exit752

bb.hz:                                            ; preds = %lean_dec_ref.exit754
  %.not.i751 = icmp eq i32 %i.mv, 0
  br i1 %.not.i751, label %lean_dec_ref.exit752, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %11) #6
  br label %lean_dec_ref.exit752

lean_dec_ref.exit752:                             ; preds = %bb.hy, %bb.hz, %bb.ia
  %i.my = ptrtoint ptr %9 to i64
  %i.mz = and i64 %i.my, 1
  %.not.i580 = icmp eq i64 %i.mz, 0
  br i1 %.not.i580, label %bb.ib, label %lean_dec.exit581

bb.ib:                                            ; preds = %lean_dec_ref.exit752
  %i.na = load i32, ptr %9, align 4, !tbaa !14    ; 3 uses
  %i.nb = icmp sgt i32 %i.na, 1
  br i1 %i.nb, label %bb.ic, label %bb.id, !prof !16

bb.ic:                                            ; preds = %bb.ib
  %i.nc = add nsw i32 %i.na, -1
  store i32 %i.nc, ptr %9, align 4, !tbaa !14
  br label %lean_dec.exit581

bb.id:                                            ; preds = %bb.ib
  %.not.i633 = icmp eq i32 %i.na, 0
  br i1 %.not.i633, label %lean_dec.exit581, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #6
  br label %lean_dec.exit581

lean_dec.exit581:                                 ; preds = %bb.ie, %bb.id, %bb.ic, %lean_dec_ref.exit752
  %i.nd = load i32, ptr %7, align 4, !tbaa !14    ; 3 uses
  %i.ne = icmp sgt i32 %i.nd, 1
  br i1 %i.ne, label %bb.if, label %bb.ig, !prof !16

bb.if:                                            ; preds = %lean_dec.exit581
  %i.nf = add nsw i32 %i.nd, -1
  store i32 %i.nf, ptr %7, align 4, !tbaa !14
  br label %lean_dec_ref.exit750

bb.ig:                                            ; preds = %lean_dec.exit581
  %.not.i749 = icmp eq i32 %i.nd, 0
  br i1 %.not.i749, label %lean_dec_ref.exit750, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #6
  br label %lean_dec_ref.exit750

lean_dec_ref.exit750:                             ; preds = %bb.if, %bb.ig, %bb.ih
  %i.ng = load i32, ptr %6, align 4, !tbaa !14    ; 3 uses
  %i.nh = icmp sgt i32 %i.ng, 1
  br i1 %i.nh, label %bb.ii, label %bb.ij, !prof !16

bb.ii:                                            ; preds = %lean_dec_ref.exit750
  %i.ni = add nsw i32 %i.ng, -1
  store i32 %i.ni, ptr %6, align 4, !tbaa !14
  br label %lean_dec_ref.exit748

bb.ij:                                            ; preds = %lean_dec_ref.exit750
  %.not.i747 = icmp eq i32 %i.ng, 0
  br i1 %.not.i747, label %lean_dec_ref.exit748, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #6
  br label %lean_dec_ref.exit748

lean_dec_ref.exit748:                             ; preds = %bb.ii, %bb.ij, %bb.ik
  %i.nj = load i32, ptr %5, align 4, !tbaa !14    ; 3 uses
  %i.nk = icmp sgt i32 %i.nj, 1
  br i1 %i.nk, label %bb.il, label %bb.im, !prof !16

bb.il:                                            ; preds = %lean_dec_ref.exit748
  %i.nl = add nsw i32 %i.nj, -1
  store i32 %i.nl, ptr %5, align 4, !tbaa !14
  br label %lean_dec_ref.exit746

bb.im:                                            ; preds = %lean_dec_ref.exit748
  %.not.i745 = icmp eq i32 %i.nj, 0
  br i1 %.not.i745, label %lean_dec_ref.exit746, label %bb.in

bb.in:                                            ; preds = %bb.im
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #6
  br label %lean_dec_ref.exit746

lean_dec_ref.exit746:                             ; preds = %bb.il, %bb.im, %bb.in
  %i.nm = load i32, ptr %4, align 4, !tbaa !14    ; 3 uses
  %i.nn = icmp sgt i32 %i.nm, 1
  br i1 %i.nn, label %bb.io, label %bb.ip, !prof !16

bb.io:                                            ; preds = %lean_dec_ref.exit746
  %i.no = add nsw i32 %i.nm, -1
  store i32 %i.no, ptr %4, align 4, !tbaa !14
  br label %lean_dec_ref.exit744

bb.ip:                                            ; preds = %lean_dec_ref.exit746
  %.not.i743 = icmp eq i32 %i.nm, 0
  br i1 %.not.i743, label %lean_dec_ref.exit744, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #6
  br label %lean_dec_ref.exit744

lean_dec_ref.exit744:                             ; preds = %bb.io, %bb.ip, %bb.iq
  %i.np = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.nq = icmp sgt i32 %i.np, 1
  br i1 %i.nq, label %bb.ir, label %bb.is, !prof !16

bb.ir:                                            ; preds = %lean_dec_ref.exit744
end_hunk_1
begin_hunk_2_@l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__1___at___00Lean_Elab_Command_elabEvalCoreUnsafe_spec__8_spec__13___redArg:bb.a
  %i.bk = icmp sgt i32 %.val.i.i653, 0
  br i1 %i.bk, label %bb.v, label %bb.w, !prof !16

bb.v:                                             ; preds = %bb.u
  %i.bl = add nuw i32 %.val.i.i653, 1
  store i32 %i.bl, ptr %i.bg, align 4, !tbaa !14
  br label %lean_inc.exit481

bb.w:                                             ; preds = %bb.u
  %.not.i.i654 = icmp eq i32 %.val.i.i653, 0
  br i1 %.not.i.i654, label %lean_inc.exit481, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = atomicrmw sub ptr %i.bg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit481

lean_inc.exit481:                                 ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  br i1 %.not.i648, label %bb.y, label %lean_dec.exit536

bb.y:                                             ; preds = %lean_inc.exit481
  %i.bn = load i32, ptr %i.ar, align 8, !tbaa !14 ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.z, label %bb.aa, !prof !16

bb.z:                                             ; preds = %bb.y
  %i.bp = add nsw i32 %i.bn, -1
  store i32 %i.bp, ptr %i.ar, align 8, !tbaa !14
  br label %lean_dec.exit536

bb.aa:                                            ; preds = %bb.y
  %.not.i540 = icmp eq i32 %i.bn, 0
  br i1 %.not.i540, label %lean_dec.exit536, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ar) #6
  br label %lean_dec.exit536

lean_dec.exit536:                                 ; preds = %lean_inc.exit481, %bb.z, %bb.aa, %bb.ab, %lean_del_object.exit
  %.0447 = phi ptr [ %i.ar, %lean_del_object.exit ], [ inttoptr (i64 1 to ptr), %bb.ab ], [ inttoptr (i64 1 to ptr), %bb.aa ], [ inttoptr (i64 1 to ptr), %bb.z ], [ inttoptr (i64 1 to ptr), %lean_inc.exit481 ] ; 16 uses
  %i.bq = tail call ptr @l_Lean_Expr_appFn_x21(ptr noundef %i.bg) #6 ; 4 uses
  %i.br = tail call ptr @l_Lean_Expr_appArg_x21(ptr noundef %i.bq) #6 ; 27 uses
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !14 ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 1
  br i1 %i.bt, label %bb.ac, label %bb.ad, !prof !16

bb.ac:                                            ; preds = %lean_dec.exit536
  %i.bu = add nsw i32 %i.bs, -1
  store i32 %i.bu, ptr %i.bq, align 4, !tbaa !14
  br label %lean_dec_ref.exit631

bb.ad:                                            ; preds = %lean_dec.exit536
  %.not.i630 = icmp eq i32 %i.bs, 0
  br i1 %.not.i630, label %lean_dec_ref.exit631, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bq) #6
  br label %lean_dec_ref.exit631

lean_dec_ref.exit631:                             ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bv = load atomic i32, ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6_once seq_cst, align 4, !tbaa !18
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.af, label %bb.ag, !prof !16

bb.af:                                            ; preds = %lean_dec_ref.exit631
  %i.bx = load ptr, ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6, align 8, !tbaa !10
  br label %lean_obj_once.exit657

bb.ag:                                            ; preds = %lean_dec_ref.exit631
  %i.by = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6, ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6_once, ptr noundef nonnull @_init_l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6) #6
  br label %lean_obj_once.exit657

lean_obj_once.exit657:                            ; preds = %bb.af, %bb.ag
  %.0.i656 = phi ptr [ %i.bx, %bb.af ], [ %i.by, %bb.ag ]
  %.val.i.i658 = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.bz = icmp sgt i32 %.val.i.i658, 0
  br i1 %i.bz, label %bb.ah, label %bb.ai, !prof !16

bb.ah:                                            ; preds = %lean_obj_once.exit657
  %i.ca = add nuw i32 %.val.i.i658, 1
  store i32 %i.ca, ptr %i.br, align 4, !tbaa !14
  br label %lean_inc_ref.exit660

bb.ai:                                            ; preds = %lean_obj_once.exit657
  %.not.i.i659 = icmp eq i32 %.val.i.i658, 0
  br i1 %.not.i.i659, label %lean_inc_ref.exit660, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cb = atomicrmw sub ptr %i.br, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit660

lean_inc_ref.exit660:                             ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.cc = tail call ptr @l_Lean_Meta_isExprDefEq(ptr noundef nonnull %i.br, ptr noundef %.0.i656, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #6 ; 13 uses
  %i.cd = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.ce = and i64 %i.cd, 1
  %.not.i661 = icmp eq i64 %i.ce, 0               ; 2 uses
  br i1 %.not.i661, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %lean_inc_ref.exit660
  %i.cf = lshr i64 %i.cd, 1
  %i.cg = trunc i64 %i.cf to i32
  br label %lean_obj_tag.exit664

bb.al:                                            ; preds = %lean_inc_ref.exit660
  %i.ch = getelementptr i8, ptr %i.cc, i64 4
  %.val.i663 = load i32, ptr %i.ch, align 4
  %i.ci = lshr i32 %.val.i663, 24
  br label %lean_obj_tag.exit664

lean_obj_tag.exit664:                             ; preds = %bb.ak, %bb.al
  %.0.i662 = phi i32 [ %i.cg, %bb.ak ], [ %i.ci, %bb.al ]
  %i.cj = icmp eq i32 %.0.i662, 0
  br i1 %i.cj, label %bb.am, label %bb.jl

bb.am:                                            ; preds = %lean_obj_tag.exit664
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !10 ; 32 uses
  %i.cm = ptrtoint ptr %i.cl to i64               ; 3 uses
  %i.cn = and i64 %i.cm, 1
  %.not.i478 = icmp eq i64 %i.cn, 0               ; 10 uses
  br i1 %.not.i478, label %bb.an, label %lean_inc.exit479

bb.an:                                            ; preds = %bb.am
  %.val.i.i665 = load i32, ptr %i.cl, align 4, !tbaa !14 ; 3 uses
  %i.co = icmp sgt i32 %.val.i.i665, 0
  br i1 %i.co, label %bb.ao, label %bb.ap, !prof !16

bb.ao:                                            ; preds = %bb.an
  %i.cp = add nuw i32 %.val.i.i665, 1
  store i32 %i.cp, ptr %i.cl, align 4, !tbaa !14
  br label %lean_inc.exit479

bb.ap:                                            ; preds = %bb.an
  %.not.i.i666 = icmp eq i32 %.val.i.i665, 0
  br i1 %.not.i.i666, label %lean_inc.exit479, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cq = atomicrmw sub ptr %i.cl, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit479

lean_inc.exit479:                                 ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am
  %.val.i668 = load i32, ptr %i.cc, align 8, !tbaa !14 ; 4 uses
  %i.cr = icmp eq i32 %.val.i668, 1
  br i1 %i.cr, label %.preheader.i, label %bb.av

.preheader.i:                                     ; preds = %lean_inc.exit479
  %i.cs = load ptr, ptr %i.ck, align 8, !tbaa !10 ; 4 uses
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = and i64 %i.ct, 1
  %.not.i.i669 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i669, label %bb.ar, label %lean_dec.exit.i

bb.ar:                                            ; preds = %.preheader.i
  %i.cv = load i32, ptr %i.cs, align 4, !tbaa !14 ; 3 uses
  %i.cw = icmp sgt i32 %i.cv, 1
  br i1 %i.cw, label %bb.as, label %bb.at, !prof !16

bb.as:                                            ; preds = %bb.ar
  %i.cx = add nsw i32 %i.cv, -1
  store i32 %i.cx, ptr %i.cs, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.at:                                            ; preds = %bb.ar
  %.not.i7.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cs) #6
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.au, %bb.at, %bb.as, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.cc) #6
  br label %lean_dec_ref_known.exit

bb.av:                                            ; preds = %lean_inc.exit479
  %i.cy = icmp sgt i32 %.val.i668, 1
  br i1 %i.cy, label %bb.aw, label %bb.ax, !prof !16

bb.aw:                                            ; preds = %bb.av
  %i.cz = add nsw i32 %.val.i668, -1
  store i32 %i.cz, ptr %i.cc, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.ax:                                            ; preds = %bb.av
  %.not.i8.i = icmp eq i32 %.val.i668, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cc) #6
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.aw, %bb.ax, %bb.ay
  %i.da = lshr i64 %i.cm, 1
  %i.db = and i64 %i.cm, 510
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %bb.az, label %bb.gt

bb.az:                                            ; preds = %lean_dec_ref_known.exit
  br i1 %.not.i478, label %bb.ba, label %lean_inc.exit477

bb.ba:                                            ; preds = %bb.az
  %.val.i.i670 = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.dd = icmp sgt i32 %.val.i.i670, 0
  br i1 %i.dd, label %bb.bb, label %bb.bc, !prof !16

bb.bb:                                            ; preds = %bb.ba
  %i.de = add nuw i32 %.val.i.i670, 1
  store i32 %i.de, ptr %i.cl, align 512, !tbaa !14
  br label %lean_inc.exit477

bb.bc:                                            ; preds = %bb.ba
  %.not.i.i671 = icmp eq i32 %.val.i.i670, 0
  br i1 %.not.i.i671, label %lean_inc.exit477, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.df = atomicrmw sub ptr %i.cl, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit477

lean_inc.exit477:                                 ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.az
  %i.dg = tail call ptr @lean_alloc_object(i64 noundef 48) #6 ; 9 uses
  store i32 1, ptr %i.dg, align 4, !tbaa !14
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = and i32 %i.di, 65535
  %i.dk = or disjoint i32 %i.dj, -184549376
  store i32 %i.dk, ptr %i.dh, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___lam__1___boxed, ptr %i.dl, align 8, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i16 11, ptr %i.dm, align 8, !tbaa !22
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 18
  store i16 3, ptr %i.dn, align 2, !tbaa !22
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store ptr %0, ptr %i.do, align 8, !tbaa !10
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store ptr %i.cl, ptr %i.dp, align 8, !tbaa !10
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store ptr inttoptr (i64 3 to ptr), ptr %i.dq, align 8, !tbaa !10
  %.val.i.i673 = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.dr = icmp sgt i32 %.val.i.i673, 0
  br i1 %i.dr, label %bb.be, label %bb.bf, !prof !16

bb.be:                                            ; preds = %lean_inc.exit477
  %i.ds = add nuw i32 %.val.i.i673, 1
  store i32 %i.ds, ptr %i.br, align 4, !tbaa !14
  br label %lean_inc_ref.exit675

bb.bf:                                            ; preds = %lean_inc.exit477
  %.not.i.i674 = icmp eq i32 %.val.i.i673, 0
  br i1 %.not.i.i674, label %lean_inc_ref.exit675, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dt = atomicrmw sub ptr %i.br, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit675

lean_inc_ref.exit675:                             ; preds = %bb.be, %bb.bf, %bb.bg
  %i.du = tail call ptr @l_Lean_Meta_withLocalDecl___at___00Lean_Meta_withLocalDeclD___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__1___at___00Lean_Elab_Command_elabEvalCoreUnsafe_spec__8_spec__17_spec__22___redArg(ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__8_value, i8 noundef zeroext 0, ptr noundef nonnull %i.br, ptr noundef nonnull %i.dg, i8 noundef zeroext 0, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) ; 10 uses
  %i.dv = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dw = and i64 %i.dv, 1
  %.not.i676 = icmp eq i64 %i.dw, 0               ; 2 uses
  br i1 %.not.i676, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %lean_inc_ref.exit675
  %i.dx = lshr i64 %i.dv, 1
  %i.dy = trunc i64 %i.dx to i32
  br label %lean_obj_tag.exit679

bb.bi:                                            ; preds = %lean_inc_ref.exit675
  %i.dz = getelementptr i8, ptr %i.du, i64 4
  %.val.i678 = load i32, ptr %i.dz, align 4
  %i.ea = lshr i32 %.val.i678, 24
  br label %lean_obj_tag.exit679

lean_obj_tag.exit679:                             ; preds = %bb.bh, %bb.bi
  %.0.i677 = phi i32 [ %i.dy, %bb.bh ], [ %i.ea, %bb.bi ]
  %i.eb = icmp eq i32 %.0.i677, 0
  br i1 %i.eb, label %bb.bj, label %bb.fp

bb.bj:                                            ; preds = %lean_obj_tag.exit679
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !10 ; 5 uses
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = and i64 %i.ee, 1
  %.not.i474 = icmp eq i64 %i.ef, 0
  br i1 %.not.i474, label %bb.bk, label %lean_inc.exit475

bb.bk:                                            ; preds = %bb.bj
  %.val.i.i680 = load i32, ptr %i.ed, align 4, !tbaa !14 ; 3 uses
  %i.eg = icmp sgt i32 %.val.i.i680, 0
  br i1 %i.eg, label %bb.bl, label %bb.bm, !prof !16

bb.bl:                                            ; preds = %bb.bk
  %i.eh = add nuw i32 %.val.i.i680, 1
  store i32 %i.eh, ptr %i.ed, align 4, !tbaa !14
  br label %lean_inc.exit475

bb.bm:                                            ; preds = %bb.bk
  %.not.i.i681 = icmp eq i32 %.val.i.i680, 0
  br i1 %.not.i.i681, label %lean_inc.exit475, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ei = atomicrmw sub ptr %i.ed, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit475

lean_inc.exit475:                                 ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bj
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.du, i32 noundef 1)
  %i.ej = tail call ptr @lean_alloc_object(i64 noundef 40) #6 ; 5 uses
  store i32 1, ptr %i.ej, align 4, !tbaa !14
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = and i32 %i.el, 65535
  %i.en = or disjoint i32 %i.em, -167772160
  store i32 %i.en, ptr %i.ek, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i64 0, ptr %i.eo, align 8, !tbaa !12
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store i64 2, ptr %i.ep, align 8, !tbaa !12
  %i.eq = tail call ptr @lean_array_push(ptr noundef nonnull %i.ej, ptr noundef %i.ed) #6
  %i.er = tail call ptr @lean_array_push(ptr noundef %i.eq, ptr noundef %i.bg) #6
  %i.es = tail call ptr @l_Lean_Meta_mkAppM(ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__11_value, ptr noundef %i.er, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #6 ; 10 uses
  %i.et = ptrtoint ptr %i.es to i64               ; 2 uses
  %i.eu = and i64 %i.et, 1
  %.not.i683 = icmp eq i64 %i.eu, 0               ; 2 uses
  br i1 %.not.i683, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %lean_inc.exit475
  %i.ev = lshr i64 %i.et, 1
  %i.ew = trunc i64 %i.ev to i32
  br label %lean_obj_tag.exit686

bb.bp:                                            ; preds = %lean_inc.exit475
  %i.ex = getelementptr i8, ptr %i.es, i64 4
  %.val.i685 = load i32, ptr %i.ex, align 4
  %i.ey = lshr i32 %.val.i685, 24
  br label %lean_obj_tag.exit686

lean_obj_tag.exit686:                             ; preds = %bb.bo, %bb.bp
  %.0.i684 = phi i32 [ %i.ew, %bb.bo ], [ %i.ey, %bb.bp ]
  %i.ez = icmp eq i32 %.0.i684, 0
  br i1 %i.ez, label %bb.bq, label %bb.ep

bb.bq:                                            ; preds = %lean_obj_tag.exit686
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !10 ; 5 uses
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = and i64 %i.fc, 1
  %.not.i472 = icmp eq i64 %i.fd, 0
  br i1 %.not.i472, label %bb.br, label %lean_inc.exit473

bb.br:                                            ; preds = %bb.bq
  %.val.i.i687 = load i32, ptr %i.fb, align 4, !tbaa !14 ; 3 uses
  %i.fe = icmp sgt i32 %.val.i.i687, 0
  br i1 %i.fe, label %bb.bs, label %bb.bt, !prof !16

bb.bs:                                            ; preds = %bb.br
  %i.ff = add nuw i32 %.val.i.i687, 1
  store i32 %i.ff, ptr %i.fb, align 4, !tbaa !14
  br label %lean_inc.exit473

bb.bt:                                            ; preds = %bb.br
  %.not.i.i688 = icmp eq i32 %.val.i.i687, 0
  br i1 %.not.i.i688, label %lean_inc.exit473, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fg = atomicrmw sub ptr %i.fb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit473

lean_inc.exit473:                                 ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.bq
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.es, i32 noundef 1)
  %i.fh = tail call ptr @l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval(ptr noundef %1, ptr noundef %i.fb, i8 noundef zeroext %2, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) ; 10 uses
  %i.fi = ptrtoint ptr %i.fh to i64               ; 2 uses
  %i.fj = and i64 %i.fi, 1
  %.not.i690 = icmp eq i64 %i.fj, 0               ; 2 uses
  br i1 %.not.i690, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %lean_inc.exit473
  %i.fk = lshr i64 %i.fi, 1
  %i.fl = trunc i64 %i.fk to i32
  br label %lean_obj_tag.exit693

bb.bw:                                            ; preds = %lean_inc.exit473
  %i.fm = getelementptr i8, ptr %i.fh, i64 4
  %.val.i692 = load i32, ptr %i.fm, align 4
  %i.fn = lshr i32 %.val.i692, 24
  br label %lean_obj_tag.exit693

lean_obj_tag.exit693:                             ; preds = %bb.bv, %bb.bw
  %.0.i691 = phi i32 [ %i.fl, %bb.bv ], [ %i.fn, %bb.bw ]
  %i.fo = icmp eq i32 %.0.i691, 0
  br i1 %i.fo, label %bb.bx, label %bb.dt

bb.bx:                                            ; preds = %lean_obj_tag.exit693
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !10 ; 5 uses
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = and i64 %i.fr, 1
  %.not.i470 = icmp eq i64 %i.fs, 0
  br i1 %.not.i470, label %bb.by, label %lean_inc.exit471

bb.by:                                            ; preds = %bb.bx
  %.val.i.i694 = load i32, ptr %i.fq, align 4, !tbaa !14 ; 3 uses
  %i.ft = icmp sgt i32 %.val.i.i694, 0
  br i1 %i.ft, label %bb.bz, label %bb.ca, !prof !16

bb.bz:                                            ; preds = %bb.by
  %i.fu = add nuw i32 %.val.i.i694, 1
  store i32 %i.fu, ptr %i.fq, align 4, !tbaa !14
  br label %lean_inc.exit471

bb.ca:                                            ; preds = %bb.by
  %.not.i.i695 = icmp eq i32 %.val.i.i694, 0
  br i1 %.not.i.i695, label %lean_inc.exit471, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fv = atomicrmw sub ptr %i.fq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit471

lean_inc.exit471:                                 ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.bx
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.fh, i32 noundef 1)
  %i.fw = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !10
  %i.fy = load ptr, ptr @l_Lean_Elab_inServer, align 8, !tbaa !10
  %i.fz = tail call zeroext i8 @l_Lean_Option_get___at___00Lean_Elab_addMacroStack___at___00Lean_throwError___at___00__private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_elabTermForEval_spec__1_spec__2_spec__5(ptr noundef %i.fx, ptr noundef %i.fy)
  %i.ga = icmp eq i8 %i.fz, 0
  br i1 %i.ga, label %bb.cc, label %bb.ch

bb.cc:                                            ; preds = %lean_inc.exit471
  br i1 %.not.i478, label %bb.cd, label %lean_dec.exit534

bb.cd:                                            ; preds = %bb.cc
  %i.gb = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.gc = icmp sgt i32 %i.gb, 1
  br i1 %i.gc, label %bb.ce, label %bb.cf, !prof !16

bb.ce:                                            ; preds = %bb.cd
  %i.gd = add nsw i32 %i.gb, -1
  store i32 %i.gd, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit534

bb.cf:                                            ; preds = %bb.cd
  %.not.i542 = icmp eq i32 %i.gb, 0
  br i1 %.not.i542, label %lean_dec.exit534, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit534

bb.ch:                                            ; preds = %lean_inc.exit471
  br i1 %.not.i478, label %bb.ci, label %lean_dec.exit534

bb.ci:                                            ; preds = %bb.ch
  %i.ge = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.gf = icmp sgt i32 %i.ge, 1
  br i1 %i.gf, label %bb.cj, label %bb.ck, !prof !16

bb.cj:                                            ; preds = %bb.ci
  %i.gg = add nsw i32 %i.ge, -1
  store i32 %i.gg, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit534

bb.ck:                                            ; preds = %bb.ci
  %.not.i544 = icmp eq i32 %i.ge, 0
  br i1 %.not.i544, label %lean_dec.exit534, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit534

lean_dec.exit534:                                 ; preds = %bb.ch, %bb.cj, %bb.ck, %bb.cl, %bb.cc, %bb.ce, %bb.cf, %bb.cg
  %.0445 = phi i8 [ 1, %bb.cc ], [ 1, %bb.cg ], [ 1, %bb.cf ], [ 1, %bb.ce ], [ 0, %bb.cl ], [ 0, %bb.ck ], [ 0, %bb.cj ], [ 0, %bb.ch ]
  %i.gh = tail call ptr @l_Lean_evalConst___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__1___at___00Lean_Elab_Command_elabEvalCoreUnsafe_spec__8_spec__11___redArg(ptr noundef %i.fq, i8 noundef zeroext %.0445, ptr noundef %6, ptr poison, ptr noundef %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef %11) ; 14 uses
  %i.gi = ptrtoint ptr %i.gh to i64               ; 2 uses
  %i.gj = and i64 %i.gi, 1
  %.not.i697 = icmp eq i64 %i.gj, 0               ; 3 uses
  br i1 %.not.i697, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %lean_dec.exit534
  %i.gk = lshr i64 %i.gi, 1
  %i.gl = trunc i64 %i.gk to i32
  br label %lean_obj_tag.exit700

bb.cn:                                            ; preds = %lean_dec.exit534
  %i.gm = getelementptr i8, ptr %i.gh, i64 4
  %.val.i699 = load i32, ptr %i.gm, align 4
  %i.gn = lshr i32 %.val.i699, 24
  br label %lean_obj_tag.exit700

lean_obj_tag.exit700:                             ; preds = %bb.cm, %bb.cn
  %.0.i698 = phi i32 [ %i.gl, %bb.cm ], [ %i.gn, %bb.cn ]
  %i.go = icmp eq i32 %.0.i698, 0
  br i1 %i.go, label %bb.co, label %bb.db

bb.co:                                            ; preds = %lean_obj_tag.exit700
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !10 ; 5 uses
  %.val642 = load i32, ptr %i.gh, align 8, !tbaa !14
  %i.gr = icmp eq i32 %.val642, 1                 ; 2 uses
  br i1 %i.gr, label %lean_dec.exit530, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = and i64 %i.gs, 1
  %.not.i468 = icmp eq i64 %i.gt, 0
  br i1 %.not.i468, label %bb.cq, label %lean_inc.exit469

bb.cq:                                            ; preds = %bb.cp
  %.val.i.i701 = load i32, ptr %i.gq, align 4, !tbaa !14 ; 3 uses
  %i.gu = icmp sgt i32 %.val.i.i701, 0
  br i1 %i.gu, label %bb.cr, label %bb.cs, !prof !16

bb.cr:                                            ; preds = %bb.cq
  %i.gv = add nuw i32 %.val.i.i701, 1
  store i32 %i.gv, ptr %i.gq, align 4, !tbaa !14
  br label %lean_inc.exit469

bb.cs:                                            ; preds = %bb.cq
  %.not.i.i702 = icmp eq i32 %.val.i.i701, 0
  br i1 %.not.i.i702, label %lean_inc.exit469, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.gw = atomicrmw sub ptr %i.gq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit469

lean_inc.exit469:                                 ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cp
  br i1 %.not.i697, label %bb.cu, label %lean_dec.exit530

bb.cu:                                            ; preds = %lean_inc.exit469
  %i.gx = load i32, ptr %i.gh, align 8, !tbaa !14 ; 3 uses
  %i.gy = icmp sgt i32 %i.gx, 1
  br i1 %i.gy, label %bb.cv, label %bb.cw, !prof !16

bb.cv:                                            ; preds = %bb.cu
  %i.gz = add nsw i32 %i.gx, -1
  store i32 %i.gz, ptr %i.gh, align 8, !tbaa !14
  br label %lean_dec.exit530

bb.cw:                                            ; preds = %bb.cu
  %.not.i546 = icmp eq i32 %i.gx, 0
  br i1 %.not.i546, label %lean_dec.exit530, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gh) #6
  br label %lean_dec.exit530

lean_dec.exit530:                                 ; preds = %lean_inc.exit469, %bb.cv, %bb.cw, %bb.cx, %bb.co
  %.0444 = phi ptr [ %i.gh, %bb.co ], [ inttoptr (i64 1 to ptr), %bb.cx ], [ inttoptr (i64 1 to ptr), %bb.cw ], [ inttoptr (i64 1 to ptr), %bb.cv ], [ inttoptr (i64 1 to ptr), %lean_inc.exit469 ]
  %i.ha = tail call ptr @lean_alloc_object(i64 noundef 40) #6 ; 8 uses
  store i32 1, ptr %i.ha, align 4, !tbaa !14
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 4 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = and i32 %i.hc, 65535
  %i.he = or disjoint i32 %i.hd, -184549376
  store i32 %i.he, ptr %i.hb, align 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__1___at___00Lean_Elab_Command_elabEvalCoreUnsafe_spec__8_spec__13___redArg___lam__2___boxed, ptr %i.hf, align 8, !tbaa !10
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store i16 5, ptr %i.hg, align 8, !tbaa !22
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 18
  store i16 2, ptr %i.hh, align 2, !tbaa !22
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  store ptr %i.gq, ptr %i.hi, align 8, !tbaa !10
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  store ptr %3, ptr %i.hj, align 8, !tbaa !10
  br i1 %i.bh, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %lean_dec.exit530
  %i.hk = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %bb.cz

bb.cz:                                            ; preds = %lean_dec.exit530, %bb.cy
  %.sink869 = phi ptr [ %i.hk, %bb.cy ], [ %.0447, %lean_dec.exit530 ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sink869, i64 8
  store ptr %i.br, ptr %i.hl, align 8, !tbaa !10
  %i.hm = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store ptr %i.ha, ptr %i.hn, align 8, !tbaa !10
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store ptr %.sink869, ptr %i.ho, align 8, !tbaa !10
  %i.hp = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store ptr %i.hm, ptr %i.hq, align 8, !tbaa !10
  br i1 %i.gr, label %lean_dec.exit528.sink.split, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.hr = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit528.sink.split

bb.db:                                            ; preds = %lean_obj_tag.exit700
  %i.hs = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.ht = icmp sgt i32 %i.hs, 1
  br i1 %i.ht, label %bb.dc, label %bb.dd, !prof !16

bb.dc:                                            ; preds = %bb.db
  %i.hu = add nsw i32 %i.hs, -1
  store i32 %i.hu, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit629

bb.dd:                                            ; preds = %bb.db
  %.not.i628 = icmp eq i32 %i.hs, 0
  br i1 %.not.i628, label %lean_dec_ref.exit629, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit629

lean_dec_ref.exit629:                             ; preds = %bb.dc, %bb.dd, %bb.de
  %i.hv = ptrtoint ptr %.0447 to i64
  %i.hw = and i64 %i.hv, 1
  %.not.i704 = icmp eq i64 %i.hw, 0
  br i1 %.not.i704, label %bb.df, label %lean_del_object.exit705

bb.df:                                            ; preds = %lean_dec_ref.exit629
  tail call void @lean_free_object(ptr noundef nonnull %.0447) #6
  br label %lean_del_object.exit705

lean_del_object.exit705:                          ; preds = %lean_dec_ref.exit629, %bb.df
  %i.hx = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.hy = icmp sgt i32 %i.hx, 1
  br i1 %i.hy, label %bb.dg, label %bb.dh, !prof !16

bb.dg:                                            ; preds = %lean_del_object.exit705
  %i.hz = add nsw i32 %i.hx, -1
  store i32 %i.hz, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit627

bb.dh:                                            ; preds = %lean_del_object.exit705
  %.not.i626 = icmp eq i32 %i.hx, 0
  br i1 %.not.i626, label %lean_dec_ref.exit627, label %bb.di

bb.di:                                            ; preds = %bb.dh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit627

lean_dec_ref.exit627:                             ; preds = %bb.dg, %bb.dh, %bb.di
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !10 ; 5 uses
  %.val641 = load i32, ptr %i.gh, align 8, !tbaa !14
  %i.ic = icmp eq i32 %.val641, 1
  br i1 %i.ic, label %lean_dec.exit528, label %bb.dj

bb.dj:                                            ; preds = %lean_dec_ref.exit627
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = and i64 %i.id, 1
  %.not.i466 = icmp eq i64 %i.ie, 0
  br i1 %.not.i466, label %bb.dk, label %lean_inc.exit467

bb.dk:                                            ; preds = %bb.dj
  %.val.i.i706 = load i32, ptr %i.ib, align 4, !tbaa !14 ; 3 uses
  %i.if = icmp sgt i32 %.val.i.i706, 0
  br i1 %i.if, label %bb.dl, label %bb.dm, !prof !16

bb.dl:                                            ; preds = %bb.dk
  %i.ig = add nuw i32 %.val.i.i706, 1
  store i32 %i.ig, ptr %i.ib, align 4, !tbaa !14
  br label %lean_inc.exit467

bb.dm:                                            ; preds = %bb.dk
  %.not.i.i707 = icmp eq i32 %.val.i.i706, 0
  br i1 %.not.i.i707, label %lean_inc.exit467, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ih = atomicrmw sub ptr %i.ib, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit467

lean_inc.exit467:                                 ; preds = %bb.dn, %bb.dm, %bb.dl, %bb.dj
  br i1 %.not.i697, label %bb.do, label %bb.ds

bb.do:                                            ; preds = %lean_inc.exit467
  %i.ii = load i32, ptr %i.gh, align 8, !tbaa !14 ; 3 uses
  %i.ij = icmp sgt i32 %i.ii, 1
  br i1 %i.ij, label %bb.dp, label %bb.dq, !prof !16

bb.dp:                                            ; preds = %bb.do
  %i.ik = add nsw i32 %i.ii, -1
  store i32 %i.ik, ptr %i.gh, align 8, !tbaa !14
  br label %bb.ds

bb.dq:                                            ; preds = %bb.do
  %.not.i548 = icmp eq i32 %i.ii, 0
  br i1 %.not.i548, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gh) #6
  br label %bb.ds

bb.ds:                                            ; preds = %lean_inc.exit467, %bb.dp, %bb.dq, %bb.dr
  %i.il = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit528.sink.split

bb.dt:                                            ; preds = %lean_obj_tag.exit693
  br i1 %.not.i478, label %bb.du, label %lean_dec.exit526

bb.du:                                            ; preds = %bb.dt
  %i.im = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.in = icmp sgt i32 %i.im, 1
  br i1 %i.in, label %bb.dv, label %bb.dw, !prof !16

bb.dv:                                            ; preds = %bb.du
  %i.io = add nsw i32 %i.im, -1
  store i32 %i.io, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit526

bb.dw:                                            ; preds = %bb.du
  %.not.i550 = icmp eq i32 %i.im, 0
  br i1 %.not.i550, label %lean_dec.exit526, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit526

lean_dec.exit526:                                 ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.dt
  %i.ip = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.iq = icmp sgt i32 %i.ip, 1
  br i1 %i.iq, label %bb.dy, label %bb.dz, !prof !16

bb.dy:                                            ; preds = %lean_dec.exit526
  %i.ir = add nsw i32 %i.ip, -1
  store i32 %i.ir, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit625

bb.dz:                                            ; preds = %lean_dec.exit526
  %.not.i624 = icmp eq i32 %i.ip, 0
  br i1 %.not.i624, label %lean_dec_ref.exit625, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit625

lean_dec_ref.exit625:                             ; preds = %bb.dy, %bb.dz, %bb.ea
  %i.is = ptrtoint ptr %.0447 to i64
  %i.it = and i64 %i.is, 1
  %.not.i709 = icmp eq i64 %i.it, 0
  br i1 %.not.i709, label %bb.eb, label %lean_del_object.exit710

bb.eb:                                            ; preds = %lean_dec_ref.exit625
  tail call void @lean_free_object(ptr noundef nonnull %.0447) #6
  br label %lean_del_object.exit710

lean_del_object.exit710:                          ; preds = %lean_dec_ref.exit625, %bb.eb
  %i.iu = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.iv = icmp sgt i32 %i.iu, 1
  br i1 %i.iv, label %bb.ec, label %bb.ed, !prof !16

bb.ec:                                            ; preds = %lean_del_object.exit710
  %i.iw = add nsw i32 %i.iu, -1
  store i32 %i.iw, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit623

bb.ed:                                            ; preds = %lean_del_object.exit710
  %.not.i622 = icmp eq i32 %i.iu, 0
  br i1 %.not.i622, label %lean_dec_ref.exit623, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit623

lean_dec_ref.exit623:                             ; preds = %bb.ec, %bb.ed, %bb.ee
  %i.ix = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !10 ; 5 uses
  %.val640 = load i32, ptr %i.fh, align 8, !tbaa !14
  %i.iz = icmp eq i32 %.val640, 1
  br i1 %i.iz, label %lean_dec.exit528, label %bb.ef

bb.ef:                                            ; preds = %lean_dec_ref.exit623
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = and i64 %i.ja, 1
  %.not.i464 = icmp eq i64 %i.jb, 0
  br i1 %.not.i464, label %bb.eg, label %lean_inc.exit465

bb.eg:                                            ; preds = %bb.ef
  %.val.i.i711 = load i32, ptr %i.iy, align 4, !tbaa !14 ; 3 uses
  %i.jc = icmp sgt i32 %.val.i.i711, 0
  br i1 %i.jc, label %bb.eh, label %bb.ei, !prof !16

bb.eh:                                            ; preds = %bb.eg
  %i.jd = add nuw i32 %.val.i.i711, 1
  store i32 %i.jd, ptr %i.iy, align 4, !tbaa !14
  br label %lean_inc.exit465

bb.ei:                                            ; preds = %bb.eg
  %.not.i.i712 = icmp eq i32 %.val.i.i711, 0
  br i1 %.not.i.i712, label %lean_inc.exit465, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.je = atomicrmw sub ptr %i.iy, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit465

lean_inc.exit465:                                 ; preds = %bb.ej, %bb.ei, %bb.eh, %bb.ef
  br i1 %.not.i690, label %bb.ek, label %bb.eo

bb.ek:                                            ; preds = %lean_inc.exit465
  %i.jf = load i32, ptr %i.fh, align 8, !tbaa !14 ; 3 uses
  %i.jg = icmp sgt i32 %i.jf, 1
  br i1 %i.jg, label %bb.el, label %bb.em, !prof !16

bb.el:                                            ; preds = %bb.ek
  %i.jh = add nsw i32 %i.jf, -1
  store i32 %i.jh, ptr %i.fh, align 8, !tbaa !14
  br label %bb.eo

bb.em:                                            ; preds = %bb.ek
  %.not.i552 = icmp eq i32 %i.jf, 0
  br i1 %.not.i552, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fh) #6
  br label %bb.eo

bb.eo:                                            ; preds = %lean_inc.exit465, %bb.el, %bb.em, %bb.en
  %i.ji = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit528.sink.split

bb.ep:                                            ; preds = %lean_obj_tag.exit686
  br i1 %.not.i478, label %bb.eq, label %lean_dec.exit522

bb.eq:                                            ; preds = %bb.ep
  %i.jj = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.jk = icmp sgt i32 %i.jj, 1
  br i1 %i.jk, label %bb.er, label %bb.es, !prof !16

bb.er:                                            ; preds = %bb.eq
  %i.jl = add nsw i32 %i.jj, -1
  store i32 %i.jl, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit522

bb.es:                                            ; preds = %bb.eq
  %.not.i554 = icmp eq i32 %i.jj, 0
  br i1 %.not.i554, label %lean_dec.exit522, label %bb.et

bb.et:                                            ; preds = %bb.es
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit522

lean_dec.exit522:                                 ; preds = %bb.et, %bb.es, %bb.er, %bb.ep
  %i.jm = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.jn = icmp sgt i32 %i.jm, 1
  br i1 %i.jn, label %bb.eu, label %bb.ev, !prof !16

bb.eu:                                            ; preds = %lean_dec.exit522
  %i.jo = add nsw i32 %i.jm, -1
  store i32 %i.jo, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit621

bb.ev:                                            ; preds = %lean_dec.exit522
  %.not.i620 = icmp eq i32 %i.jm, 0
  br i1 %.not.i620, label %lean_dec_ref.exit621, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit621

lean_dec_ref.exit621:                             ; preds = %bb.eu, %bb.ev, %bb.ew
  %i.jp = ptrtoint ptr %.0447 to i64
  %i.jq = and i64 %i.jp, 1
  %.not.i714 = icmp eq i64 %i.jq, 0
  br i1 %.not.i714, label %bb.ex, label %lean_del_object.exit715

bb.ex:                                            ; preds = %lean_dec_ref.exit621
  tail call void @lean_free_object(ptr noundef nonnull %.0447) #6
  br label %lean_del_object.exit715

lean_del_object.exit715:                          ; preds = %lean_dec_ref.exit621, %bb.ex
  %i.jr = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.js = icmp sgt i32 %i.jr, 1
  br i1 %i.js, label %bb.ey, label %bb.ez, !prof !16

bb.ey:                                            ; preds = %lean_del_object.exit715
  %i.jt = add nsw i32 %i.jr, -1
  store i32 %i.jt, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit619

bb.ez:                                            ; preds = %lean_del_object.exit715
  %.not.i618 = icmp eq i32 %i.jr, 0
  br i1 %.not.i618, label %lean_dec_ref.exit619, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit619

lean_dec_ref.exit619:                             ; preds = %bb.ey, %bb.ez, %bb.fa
  %i.ju = ptrtoint ptr %1 to i64
  %i.jv = and i64 %i.ju, 1
  %.not.i519 = icmp eq i64 %i.jv, 0
  br i1 %.not.i519, label %bb.fb, label %lean_dec.exit520

bb.fb:                                            ; preds = %lean_dec_ref.exit619
  %i.jw = load i32, ptr %1, align 4, !tbaa !14    ; 3 uses
  %i.jx = icmp sgt i32 %i.jw, 1
  br i1 %i.jx, label %bb.fc, label %bb.fd, !prof !16

bb.fc:                                            ; preds = %bb.fb
  %i.jy = add nsw i32 %i.jw, -1
  store i32 %i.jy, ptr %1, align 4, !tbaa !14
  br label %lean_dec.exit520

bb.fd:                                            ; preds = %bb.fb
  %.not.i556 = icmp eq i32 %i.jw, 0
  br i1 %.not.i556, label %lean_dec.exit520, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit520

lean_dec.exit520:                                 ; preds = %bb.fe, %bb.fd, %bb.fc, %lean_dec_ref.exit619
  %i.jz = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !10 ; 5 uses
  %.val639 = load i32, ptr %i.es, align 8, !tbaa !14
  %i.kb = icmp eq i32 %.val639, 1
  br i1 %i.kb, label %lean_dec.exit528, label %bb.ff

bb.ff:                                            ; preds = %lean_dec.exit520
  %i.kc = ptrtoint ptr %i.ka to i64
  %i.kd = and i64 %i.kc, 1
  %.not.i462 = icmp eq i64 %i.kd, 0
  br i1 %.not.i462, label %bb.fg, label %lean_inc.exit463

bb.fg:                                            ; preds = %bb.ff
  %.val.i.i716 = load i32, ptr %i.ka, align 4, !tbaa !14 ; 3 uses
  %i.ke = icmp sgt i32 %.val.i.i716, 0
  br i1 %i.ke, label %bb.fh, label %bb.fi, !prof !16

bb.fh:                                            ; preds = %bb.fg
  %i.kf = add nuw i32 %.val.i.i716, 1
  store i32 %i.kf, ptr %i.ka, align 4, !tbaa !14
  br label %lean_inc.exit463

bb.fi:                                            ; preds = %bb.fg
  %.not.i.i717 = icmp eq i32 %.val.i.i716, 0
  br i1 %.not.i.i717, label %lean_inc.exit463, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.kg = atomicrmw sub ptr %i.ka, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit463

lean_inc.exit463:                                 ; preds = %bb.fj, %bb.fi, %bb.fh, %bb.ff
  br i1 %.not.i683, label %bb.fk, label %bb.fo

bb.fk:                                            ; preds = %lean_inc.exit463
  %i.kh = load i32, ptr %i.es, align 8, !tbaa !14 ; 3 uses
  %i.ki = icmp sgt i32 %i.kh, 1
  br i1 %i.ki, label %bb.fl, label %bb.fm, !prof !16

bb.fl:                                            ; preds = %bb.fk
  %i.kj = add nsw i32 %i.kh, -1
  store i32 %i.kj, ptr %i.es, align 8, !tbaa !14
  br label %bb.fo

bb.fm:                                            ; preds = %bb.fk
  %.not.i558 = icmp eq i32 %i.kh, 0
  br i1 %.not.i558, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.es) #6
  br label %bb.fo

bb.fo:                                            ; preds = %lean_inc.exit463, %bb.fl, %bb.fm, %bb.fn
  %i.kk = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit528.sink.split

bb.fp:                                            ; preds = %lean_obj_tag.exit679
  br i1 %.not.i478, label %bb.fq, label %lean_dec.exit516

bb.fq:                                            ; preds = %bb.fp
  %i.kl = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.km = icmp sgt i32 %i.kl, 1
  br i1 %i.km, label %bb.fr, label %bb.fs, !prof !16

bb.fr:                                            ; preds = %bb.fq
  %i.kn = add nsw i32 %i.kl, -1
  store i32 %i.kn, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit516

bb.fs:                                            ; preds = %bb.fq
  %.not.i560 = icmp eq i32 %i.kl, 0
  br i1 %.not.i560, label %lean_dec.exit516, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit516

lean_dec.exit516:                                 ; preds = %bb.ft, %bb.fs, %bb.fr, %bb.fp
  %i.ko = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.kp = icmp sgt i32 %i.ko, 1
  br i1 %i.kp, label %bb.fu, label %bb.fv, !prof !16

bb.fu:                                            ; preds = %lean_dec.exit516
  %i.kq = add nsw i32 %i.ko, -1
  store i32 %i.kq, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit617

bb.fv:                                            ; preds = %lean_dec.exit516
  %.not.i616 = icmp eq i32 %i.ko, 0
  br i1 %.not.i616, label %lean_dec_ref.exit617, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit617

lean_dec_ref.exit617:                             ; preds = %bb.fu, %bb.fv, %bb.fw
  %i.kr = ptrtoint ptr %.0447 to i64
  %i.ks = and i64 %i.kr, 1
  %.not.i719 = icmp eq i64 %i.ks, 0
  br i1 %.not.i719, label %bb.fx, label %lean_del_object.exit720

bb.fx:                                            ; preds = %lean_dec_ref.exit617
  tail call void @lean_free_object(ptr noundef nonnull %.0447) #6
  br label %lean_del_object.exit720

lean_del_object.exit720:                          ; preds = %lean_dec_ref.exit617, %bb.fx
  %i.kt = ptrtoint ptr %i.bg to i64
  %i.ku = and i64 %i.kt, 1
  %.not.i513 = icmp eq i64 %i.ku, 0
  br i1 %.not.i513, label %bb.fy, label %lean_dec.exit514

bb.fy:                                            ; preds = %lean_del_object.exit720
  %i.kv = load i32, ptr %i.bg, align 4, !tbaa !14 ; 3 uses
  %i.kw = icmp sgt i32 %i.kv, 1
  br i1 %i.kw, label %bb.fz, label %bb.ga, !prof !16

bb.fz:                                            ; preds = %bb.fy
  %i.kx = add nsw i32 %i.kv, -1
  store i32 %i.kx, ptr %i.bg, align 4, !tbaa !14
  br label %lean_dec.exit514

bb.ga:                                            ; preds = %bb.fy
  %.not.i562 = icmp eq i32 %i.kv, 0
  br i1 %.not.i562, label %lean_dec.exit514, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bg) #6
  br label %lean_dec.exit514

lean_dec.exit514:                                 ; preds = %bb.gb, %bb.ga, %bb.fz, %lean_del_object.exit720
  %i.ky = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.kz = icmp sgt i32 %i.ky, 1
  br i1 %i.kz, label %bb.gc, label %bb.gd, !prof !16

bb.gc:                                            ; preds = %lean_dec.exit514
  %i.la = add nsw i32 %i.ky, -1
  store i32 %i.la, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit615

bb.gd:                                            ; preds = %lean_dec.exit514
  %.not.i614 = icmp eq i32 %i.ky, 0
  br i1 %.not.i614, label %lean_dec_ref.exit615, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit615

lean_dec_ref.exit615:                             ; preds = %bb.gc, %bb.gd, %bb.ge
  %i.lb = ptrtoint ptr %1 to i64
  %i.lc = and i64 %i.lb, 1
  %.not.i511 = icmp eq i64 %i.lc, 0
  br i1 %.not.i511, label %bb.gf, label %lean_dec.exit512

bb.gf:                                            ; preds = %lean_dec_ref.exit615
  %i.ld = load i32, ptr %1, align 4, !tbaa !14    ; 3 uses
  %i.le = icmp sgt i32 %i.ld, 1
  br i1 %i.le, label %bb.gg, label %bb.gh, !prof !16

bb.gg:                                            ; preds = %bb.gf
  %i.lf = add nsw i32 %i.ld, -1
  store i32 %i.lf, ptr %1, align 4, !tbaa !14
  br label %lean_dec.exit512

bb.gh:                                            ; preds = %bb.gf
  %.not.i564 = icmp eq i32 %i.ld, 0
  br i1 %.not.i564, label %lean_dec.exit512, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit512

lean_dec.exit512:                                 ; preds = %bb.gi, %bb.gh, %bb.gg, %lean_dec_ref.exit615
  %i.lg = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !10 ; 5 uses
  %.val638 = load i32, ptr %i.du, align 8, !tbaa !14
  %i.li = icmp eq i32 %.val638, 1
  br i1 %i.li, label %lean_dec.exit528, label %bb.gj

bb.gj:                                            ; preds = %lean_dec.exit512
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = and i64 %i.lj, 1
  %.not.i460 = icmp eq i64 %i.lk, 0
  br i1 %.not.i460, label %bb.gk, label %lean_inc.exit461

bb.gk:                                            ; preds = %bb.gj
  %.val.i.i721 = load i32, ptr %i.lh, align 4, !tbaa !14 ; 3 uses
  %i.ll = icmp sgt i32 %.val.i.i721, 0
  br i1 %i.ll, label %bb.gl, label %bb.gm, !prof !16

bb.gl:                                            ; preds = %bb.gk
  %i.lm = add nuw i32 %.val.i.i721, 1
  store i32 %i.lm, ptr %i.lh, align 4, !tbaa !14
  br label %lean_inc.exit461

bb.gm:                                            ; preds = %bb.gk
  %.not.i.i722 = icmp eq i32 %.val.i.i721, 0
  br i1 %.not.i.i722, label %lean_inc.exit461, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.ln = atomicrmw sub ptr %i.lh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit461

lean_inc.exit461:                                 ; preds = %bb.gn, %bb.gm, %bb.gl, %bb.gj
  br i1 %.not.i676, label %bb.go, label %bb.gs

bb.go:                                            ; preds = %lean_inc.exit461
  %i.lo = load i32, ptr %i.du, align 8, !tbaa !14 ; 3 uses
  %i.lp = icmp sgt i32 %i.lo, 1
  br i1 %i.lp, label %bb.gp, label %bb.gq, !prof !16

bb.gp:                                            ; preds = %bb.go
  %i.lq = add nsw i32 %i.lo, -1
  store i32 %i.lq, ptr %i.du, align 8, !tbaa !14
  br label %bb.gs

bb.gq:                                            ; preds = %bb.go
  %.not.i566 = icmp eq i32 %i.lo, 0
  br i1 %.not.i566, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.du) #6
  br label %bb.gs

bb.gs:                                            ; preds = %lean_inc.exit461, %bb.gp, %bb.gq, %bb.gr
  %i.lr = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit528.sink.split

bb.gt:                                            ; preds = %lean_dec_ref_known.exit
  %i.ls = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.lt = icmp sgt i32 %i.ls, 1
  br i1 %i.lt, label %bb.gu, label %bb.gv, !prof !16

bb.gu:                                            ; preds = %bb.gt
  %i.lu = add nsw i32 %i.ls, -1
  store i32 %i.lu, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit613

bb.gv:                                            ; preds = %bb.gt
  %.not.i612 = icmp eq i32 %i.ls, 0
  br i1 %.not.i612, label %lean_dec_ref.exit613, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit613

lean_dec_ref.exit613:                             ; preds = %bb.gu, %bb.gv, %bb.gw
  %i.lv = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.lw = icmp sgt i32 %i.lv, 1
  br i1 %i.lw, label %bb.gx, label %bb.gy, !prof !16

bb.gx:                                            ; preds = %lean_dec_ref.exit613
  %i.lx = add nsw i32 %i.lv, -1
  store i32 %i.lx, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit611

bb.gy:                                            ; preds = %lean_dec_ref.exit613
  %.not.i610 = icmp eq i32 %i.lv, 0
  br i1 %.not.i610, label %lean_dec_ref.exit611, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit611

lean_dec_ref.exit611:                             ; preds = %bb.gx, %bb.gy, %bb.gz
  %i.ly = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.lz = icmp sgt i32 %i.ly, 1
  br i1 %i.lz, label %bb.ha, label %bb.hb, !prof !16
end_hunk_2
begin_hunk_3_@l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__1___at___00Lean_Elab_Command_elabEvalCoreUnsafe_spec__8_spec__16___redArg:bb.a
  %i.bk = icmp sgt i32 %.val.i.i657, 0
  br i1 %i.bk, label %bb.v, label %bb.w, !prof !16

bb.v:                                             ; preds = %bb.u
  %i.bl = add nuw i32 %.val.i.i657, 1
  store i32 %i.bl, ptr %i.bg, align 4, !tbaa !14
  br label %lean_inc.exit485

bb.w:                                             ; preds = %bb.u
  %.not.i.i658 = icmp eq i32 %.val.i.i657, 0
  br i1 %.not.i.i658, label %lean_inc.exit485, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = atomicrmw sub ptr %i.bg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit485

lean_inc.exit485:                                 ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  br i1 %.not.i652, label %bb.y, label %lean_dec.exit540

bb.y:                                             ; preds = %lean_inc.exit485
  %i.bn = load i32, ptr %i.ar, align 8, !tbaa !14 ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.z, label %bb.aa, !prof !16

bb.z:                                             ; preds = %bb.y
  %i.bp = add nsw i32 %i.bn, -1
  store i32 %i.bp, ptr %i.ar, align 8, !tbaa !14
  br label %lean_dec.exit540

bb.aa:                                            ; preds = %bb.y
  %.not.i544 = icmp eq i32 %i.bn, 0
  br i1 %.not.i544, label %lean_dec.exit540, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ar) #6
  br label %lean_dec.exit540

lean_dec.exit540:                                 ; preds = %lean_inc.exit485, %bb.z, %bb.aa, %bb.ab, %lean_del_object.exit
  %.0451 = phi ptr [ %i.ar, %lean_del_object.exit ], [ inttoptr (i64 1 to ptr), %bb.ab ], [ inttoptr (i64 1 to ptr), %bb.aa ], [ inttoptr (i64 1 to ptr), %bb.z ], [ inttoptr (i64 1 to ptr), %lean_inc.exit485 ] ; 16 uses
  %i.bq = tail call ptr @l_Lean_Expr_appFn_x21(ptr noundef %i.bg) #6 ; 4 uses
  %i.br = tail call ptr @l_Lean_Expr_appArg_x21(ptr noundef %i.bq) #6 ; 27 uses
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !14 ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 1
  br i1 %i.bt, label %bb.ac, label %bb.ad, !prof !16

bb.ac:                                            ; preds = %lean_dec.exit540
  %i.bu = add nsw i32 %i.bs, -1
  store i32 %i.bu, ptr %i.bq, align 4, !tbaa !14
  br label %lean_dec_ref.exit635

bb.ad:                                            ; preds = %lean_dec.exit540
  %.not.i634 = icmp eq i32 %i.bs, 0
  br i1 %.not.i634, label %lean_dec_ref.exit635, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bq) #6
  br label %lean_dec_ref.exit635

lean_dec_ref.exit635:                             ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bv = load atomic i32, ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6_once seq_cst, align 4, !tbaa !18
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.af, label %bb.ag, !prof !16

bb.af:                                            ; preds = %lean_dec_ref.exit635
  %i.bx = load ptr, ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6, align 8, !tbaa !10
  br label %lean_obj_once.exit661

bb.ag:                                            ; preds = %lean_dec_ref.exit635
  %i.by = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6, ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6_once, ptr noundef nonnull @_init_l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6) #6
  br label %lean_obj_once.exit661

lean_obj_once.exit661:                            ; preds = %bb.af, %bb.ag
  %.0.i660 = phi ptr [ %i.bx, %bb.af ], [ %i.by, %bb.ag ]
  %.val.i.i662 = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.bz = icmp sgt i32 %.val.i.i662, 0
  br i1 %i.bz, label %bb.ah, label %bb.ai, !prof !16

bb.ah:                                            ; preds = %lean_obj_once.exit661
  %i.ca = add nuw i32 %.val.i.i662, 1
  store i32 %i.ca, ptr %i.br, align 4, !tbaa !14
  br label %lean_inc_ref.exit664

bb.ai:                                            ; preds = %lean_obj_once.exit661
  %.not.i.i663 = icmp eq i32 %.val.i.i662, 0
  br i1 %.not.i.i663, label %lean_inc_ref.exit664, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cb = atomicrmw sub ptr %i.br, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit664

lean_inc_ref.exit664:                             ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.cc = tail call ptr @l_Lean_Meta_isExprDefEq(ptr noundef nonnull %i.br, ptr noundef %.0.i660, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #6 ; 13 uses
  %i.cd = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.ce = and i64 %i.cd, 1
  %.not.i665 = icmp eq i64 %i.ce, 0               ; 2 uses
  br i1 %.not.i665, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %lean_inc_ref.exit664
  %i.cf = lshr i64 %i.cd, 1
  %i.cg = trunc i64 %i.cf to i32
  br label %lean_obj_tag.exit668

bb.al:                                            ; preds = %lean_inc_ref.exit664
  %i.ch = getelementptr i8, ptr %i.cc, i64 4
  %.val.i667 = load i32, ptr %i.ch, align 4
  %i.ci = lshr i32 %.val.i667, 24
  br label %lean_obj_tag.exit668

lean_obj_tag.exit668:                             ; preds = %bb.ak, %bb.al
  %.0.i666 = phi i32 [ %i.cg, %bb.ak ], [ %i.ci, %bb.al ]
  %i.cj = icmp eq i32 %.0.i666, 0
  br i1 %i.cj, label %bb.am, label %bb.jl

bb.am:                                            ; preds = %lean_obj_tag.exit668
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !10 ; 32 uses
  %i.cm = ptrtoint ptr %i.cl to i64               ; 3 uses
  %i.cn = and i64 %i.cm, 1
  %.not.i482 = icmp eq i64 %i.cn, 0               ; 10 uses
  br i1 %.not.i482, label %bb.an, label %lean_inc.exit483

bb.an:                                            ; preds = %bb.am
  %.val.i.i669 = load i32, ptr %i.cl, align 4, !tbaa !14 ; 3 uses
  %i.co = icmp sgt i32 %.val.i.i669, 0
  br i1 %i.co, label %bb.ao, label %bb.ap, !prof !16

bb.ao:                                            ; preds = %bb.an
  %i.cp = add nuw i32 %.val.i.i669, 1
  store i32 %i.cp, ptr %i.cl, align 4, !tbaa !14
  br label %lean_inc.exit483

bb.ap:                                            ; preds = %bb.an
  %.not.i.i670 = icmp eq i32 %.val.i.i669, 0
  br i1 %.not.i.i670, label %lean_inc.exit483, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cq = atomicrmw sub ptr %i.cl, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit483

lean_inc.exit483:                                 ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am
  %.val.i672 = load i32, ptr %i.cc, align 8, !tbaa !14 ; 4 uses
  %i.cr = icmp eq i32 %.val.i672, 1
  br i1 %i.cr, label %.preheader.i, label %bb.av

.preheader.i:                                     ; preds = %lean_inc.exit483
  %i.cs = load ptr, ptr %i.ck, align 8, !tbaa !10 ; 4 uses
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = and i64 %i.ct, 1
  %.not.i.i673 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i673, label %bb.ar, label %lean_dec.exit.i

bb.ar:                                            ; preds = %.preheader.i
  %i.cv = load i32, ptr %i.cs, align 4, !tbaa !14 ; 3 uses
  %i.cw = icmp sgt i32 %i.cv, 1
  br i1 %i.cw, label %bb.as, label %bb.at, !prof !16

bb.as:                                            ; preds = %bb.ar
  %i.cx = add nsw i32 %i.cv, -1
  store i32 %i.cx, ptr %i.cs, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.at:                                            ; preds = %bb.ar
  %.not.i7.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cs) #6
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.au, %bb.at, %bb.as, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.cc) #6
  br label %lean_dec_ref_known.exit

bb.av:                                            ; preds = %lean_inc.exit483
  %i.cy = icmp sgt i32 %.val.i672, 1
  br i1 %i.cy, label %bb.aw, label %bb.ax, !prof !16

bb.aw:                                            ; preds = %bb.av
  %i.cz = add nsw i32 %.val.i672, -1
  store i32 %i.cz, ptr %i.cc, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.ax:                                            ; preds = %bb.av
  %.not.i8.i = icmp eq i32 %.val.i672, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cc) #6
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.aw, %bb.ax, %bb.ay
  %i.da = lshr i64 %i.cm, 1
  %i.db = and i64 %i.cm, 510
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %bb.az, label %bb.gt

bb.az:                                            ; preds = %lean_dec_ref_known.exit
  br i1 %.not.i482, label %bb.ba, label %lean_inc.exit481

bb.ba:                                            ; preds = %bb.az
  %.val.i.i674 = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.dd = icmp sgt i32 %.val.i.i674, 0
  br i1 %i.dd, label %bb.bb, label %bb.bc, !prof !16

bb.bb:                                            ; preds = %bb.ba
  %i.de = add nuw i32 %.val.i.i674, 1
  store i32 %i.de, ptr %i.cl, align 512, !tbaa !14
  br label %lean_inc.exit481

bb.bc:                                            ; preds = %bb.ba
  %.not.i.i675 = icmp eq i32 %.val.i.i674, 0
  br i1 %.not.i.i675, label %lean_inc.exit481, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.df = atomicrmw sub ptr %i.cl, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit481

lean_inc.exit481:                                 ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.az
  %i.dg = tail call ptr @lean_alloc_object(i64 noundef 48) #6 ; 9 uses
  store i32 1, ptr %i.dg, align 4, !tbaa !14
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = and i32 %i.di, 65535
  %i.dk = or disjoint i32 %i.dj, -184549376
  store i32 %i.dk, ptr %i.dh, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___lam__1___boxed, ptr %i.dl, align 8, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i16 11, ptr %i.dm, align 8, !tbaa !22
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 18
  store i16 3, ptr %i.dn, align 2, !tbaa !22
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store ptr %0, ptr %i.do, align 8, !tbaa !10
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store ptr %i.cl, ptr %i.dp, align 8, !tbaa !10
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store ptr inttoptr (i64 3 to ptr), ptr %i.dq, align 8, !tbaa !10
  %.val.i.i677 = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.dr = icmp sgt i32 %.val.i.i677, 0
  br i1 %i.dr, label %bb.be, label %bb.bf, !prof !16

bb.be:                                            ; preds = %lean_inc.exit481
  %i.ds = add nuw i32 %.val.i.i677, 1
  store i32 %i.ds, ptr %i.br, align 4, !tbaa !14
  br label %lean_inc_ref.exit679

bb.bf:                                            ; preds = %lean_inc.exit481
  %.not.i.i678 = icmp eq i32 %.val.i.i677, 0
  br i1 %.not.i.i678, label %lean_inc_ref.exit679, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dt = atomicrmw sub ptr %i.br, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit679

lean_inc_ref.exit679:                             ; preds = %bb.be, %bb.bf, %bb.bg
  %i.du = tail call ptr @l_Lean_Meta_withLocalDecl___at___00Lean_Meta_withLocalDeclD___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__1___at___00Lean_Elab_Command_elabEvalCoreUnsafe_spec__8_spec__17_spec__22___redArg(ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__8_value, i8 noundef zeroext 0, ptr noundef nonnull %i.br, ptr noundef nonnull %i.dg, i8 noundef zeroext 0, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) ; 10 uses
  %i.dv = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dw = and i64 %i.dv, 1
  %.not.i680 = icmp eq i64 %i.dw, 0               ; 2 uses
  br i1 %.not.i680, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %lean_inc_ref.exit679
  %i.dx = lshr i64 %i.dv, 1
  %i.dy = trunc i64 %i.dx to i32
  br label %lean_obj_tag.exit683

bb.bi:                                            ; preds = %lean_inc_ref.exit679
  %i.dz = getelementptr i8, ptr %i.du, i64 4
  %.val.i682 = load i32, ptr %i.dz, align 4
  %i.ea = lshr i32 %.val.i682, 24
  br label %lean_obj_tag.exit683

lean_obj_tag.exit683:                             ; preds = %bb.bh, %bb.bi
  %.0.i681 = phi i32 [ %i.dy, %bb.bh ], [ %i.ea, %bb.bi ]
  %i.eb = icmp eq i32 %.0.i681, 0
  br i1 %i.eb, label %bb.bj, label %bb.fp

bb.bj:                                            ; preds = %lean_obj_tag.exit683
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !10 ; 5 uses
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = and i64 %i.ee, 1
  %.not.i478 = icmp eq i64 %i.ef, 0
  br i1 %.not.i478, label %bb.bk, label %lean_inc.exit479

bb.bk:                                            ; preds = %bb.bj
  %.val.i.i684 = load i32, ptr %i.ed, align 4, !tbaa !14 ; 3 uses
  %i.eg = icmp sgt i32 %.val.i.i684, 0
  br i1 %i.eg, label %bb.bl, label %bb.bm, !prof !16

bb.bl:                                            ; preds = %bb.bk
  %i.eh = add nuw i32 %.val.i.i684, 1
  store i32 %i.eh, ptr %i.ed, align 4, !tbaa !14
  br label %lean_inc.exit479

bb.bm:                                            ; preds = %bb.bk
  %.not.i.i685 = icmp eq i32 %.val.i.i684, 0
  br i1 %.not.i.i685, label %lean_inc.exit479, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ei = atomicrmw sub ptr %i.ed, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit479

lean_inc.exit479:                                 ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bj
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.du, i32 noundef 1)
  %i.ej = tail call ptr @lean_alloc_object(i64 noundef 40) #6 ; 5 uses
  store i32 1, ptr %i.ej, align 4, !tbaa !14
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = and i32 %i.el, 65535
  %i.en = or disjoint i32 %i.em, -167772160
  store i32 %i.en, ptr %i.ek, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i64 0, ptr %i.eo, align 8, !tbaa !12
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store i64 2, ptr %i.ep, align 8, !tbaa !12
  %i.eq = tail call ptr @lean_array_push(ptr noundef nonnull %i.ej, ptr noundef %i.ed) #6
  %i.er = tail call ptr @lean_array_push(ptr noundef %i.eq, ptr noundef %i.bg) #6
  %i.es = tail call ptr @l_Lean_Meta_mkAppM(ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__11_value, ptr noundef %i.er, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #6 ; 10 uses
  %i.et = ptrtoint ptr %i.es to i64               ; 2 uses
  %i.eu = and i64 %i.et, 1
  %.not.i687 = icmp eq i64 %i.eu, 0               ; 2 uses
  br i1 %.not.i687, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %lean_inc.exit479
  %i.ev = lshr i64 %i.et, 1
  %i.ew = trunc i64 %i.ev to i32
  br label %lean_obj_tag.exit690

bb.bp:                                            ; preds = %lean_inc.exit479
  %i.ex = getelementptr i8, ptr %i.es, i64 4
  %.val.i689 = load i32, ptr %i.ex, align 4
  %i.ey = lshr i32 %.val.i689, 24
  br label %lean_obj_tag.exit690

lean_obj_tag.exit690:                             ; preds = %bb.bo, %bb.bp
  %.0.i688 = phi i32 [ %i.ew, %bb.bo ], [ %i.ey, %bb.bp ]
  %i.ez = icmp eq i32 %.0.i688, 0
  br i1 %i.ez, label %bb.bq, label %bb.ep

bb.bq:                                            ; preds = %lean_obj_tag.exit690
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !10 ; 5 uses
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = and i64 %i.fc, 1
  %.not.i476 = icmp eq i64 %i.fd, 0
  br i1 %.not.i476, label %bb.br, label %lean_inc.exit477

bb.br:                                            ; preds = %bb.bq
  %.val.i.i691 = load i32, ptr %i.fb, align 4, !tbaa !14 ; 3 uses
  %i.fe = icmp sgt i32 %.val.i.i691, 0
  br i1 %i.fe, label %bb.bs, label %bb.bt, !prof !16

bb.bs:                                            ; preds = %bb.br
  %i.ff = add nuw i32 %.val.i.i691, 1
  store i32 %i.ff, ptr %i.fb, align 4, !tbaa !14
  br label %lean_inc.exit477

bb.bt:                                            ; preds = %bb.br
  %.not.i.i692 = icmp eq i32 %.val.i.i691, 0
  br i1 %.not.i.i692, label %lean_inc.exit477, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fg = atomicrmw sub ptr %i.fb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit477

lean_inc.exit477:                                 ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.bq
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.es, i32 noundef 1)
  %i.fh = tail call ptr @l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval(ptr noundef %1, ptr noundef %i.fb, i8 noundef zeroext %2, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) ; 10 uses
  %i.fi = ptrtoint ptr %i.fh to i64               ; 2 uses
  %i.fj = and i64 %i.fi, 1
  %.not.i694 = icmp eq i64 %i.fj, 0               ; 2 uses
  br i1 %.not.i694, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %lean_inc.exit477
  %i.fk = lshr i64 %i.fi, 1
  %i.fl = trunc i64 %i.fk to i32
  br label %lean_obj_tag.exit697

bb.bw:                                            ; preds = %lean_inc.exit477
  %i.fm = getelementptr i8, ptr %i.fh, i64 4
  %.val.i696 = load i32, ptr %i.fm, align 4
  %i.fn = lshr i32 %.val.i696, 24
  br label %lean_obj_tag.exit697

lean_obj_tag.exit697:                             ; preds = %bb.bv, %bb.bw
  %.0.i695 = phi i32 [ %i.fl, %bb.bv ], [ %i.fn, %bb.bw ]
  %i.fo = icmp eq i32 %.0.i695, 0
  br i1 %i.fo, label %bb.bx, label %bb.dt

bb.bx:                                            ; preds = %lean_obj_tag.exit697
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !10 ; 5 uses
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = and i64 %i.fr, 1
  %.not.i474 = icmp eq i64 %i.fs, 0
  br i1 %.not.i474, label %bb.by, label %lean_inc.exit475

bb.by:                                            ; preds = %bb.bx
  %.val.i.i698 = load i32, ptr %i.fq, align 4, !tbaa !14 ; 3 uses
  %i.ft = icmp sgt i32 %.val.i.i698, 0
  br i1 %i.ft, label %bb.bz, label %bb.ca, !prof !16

bb.bz:                                            ; preds = %bb.by
  %i.fu = add nuw i32 %.val.i.i698, 1
  store i32 %i.fu, ptr %i.fq, align 4, !tbaa !14
  br label %lean_inc.exit475

bb.ca:                                            ; preds = %bb.by
  %.not.i.i699 = icmp eq i32 %.val.i.i698, 0
  br i1 %.not.i.i699, label %lean_inc.exit475, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fv = atomicrmw sub ptr %i.fq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit475

lean_inc.exit475:                                 ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.bx
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.fh, i32 noundef 1)
  %i.fw = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !10
  %i.fy = load ptr, ptr @l_Lean_Elab_inServer, align 8, !tbaa !10
  %i.fz = tail call zeroext i8 @l_Lean_Option_get___at___00Lean_Elab_addMacroStack___at___00Lean_throwError___at___00__private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_elabTermForEval_spec__1_spec__2_spec__5(ptr noundef %i.fx, ptr noundef %i.fy)
  %i.ga = icmp eq i8 %i.fz, 0
  br i1 %i.ga, label %bb.cc, label %bb.ch

bb.cc:                                            ; preds = %lean_inc.exit475
  br i1 %.not.i482, label %bb.cd, label %lean_dec.exit538

bb.cd:                                            ; preds = %bb.cc
  %i.gb = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.gc = icmp sgt i32 %i.gb, 1
  br i1 %i.gc, label %bb.ce, label %bb.cf, !prof !16

bb.ce:                                            ; preds = %bb.cd
  %i.gd = add nsw i32 %i.gb, -1
  store i32 %i.gd, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit538

bb.cf:                                            ; preds = %bb.cd
  %.not.i546 = icmp eq i32 %i.gb, 0
  br i1 %.not.i546, label %lean_dec.exit538, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit538

bb.ch:                                            ; preds = %lean_inc.exit475
  br i1 %.not.i482, label %bb.ci, label %lean_dec.exit538

bb.ci:                                            ; preds = %bb.ch
  %i.ge = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.gf = icmp sgt i32 %i.ge, 1
  br i1 %i.gf, label %bb.cj, label %bb.ck, !prof !16

bb.cj:                                            ; preds = %bb.ci
  %i.gg = add nsw i32 %i.ge, -1
  store i32 %i.gg, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit538

bb.ck:                                            ; preds = %bb.ci
  %.not.i548 = icmp eq i32 %i.ge, 0
  br i1 %.not.i548, label %lean_dec.exit538, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit538

lean_dec.exit538:                                 ; preds = %bb.ch, %bb.cj, %bb.ck, %bb.cl, %bb.cc, %bb.ce, %bb.cf, %bb.cg
  %.0449 = phi i8 [ 1, %bb.cc ], [ 1, %bb.cg ], [ 1, %bb.cf ], [ 1, %bb.ce ], [ 0, %bb.cl ], [ 0, %bb.ck ], [ 0, %bb.cj ], [ 0, %bb.ch ]
  %i.gh = tail call ptr @l_Lean_evalConst___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__1___at___00Lean_Elab_Command_elabEvalCoreUnsafe_spec__8_spec__11___redArg(ptr noundef %i.fq, i8 noundef zeroext %.0449, ptr noundef %6, ptr poison, ptr noundef %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef %11) ; 14 uses
  %i.gi = ptrtoint ptr %i.gh to i64               ; 2 uses
  %i.gj = and i64 %i.gi, 1
  %.not.i701 = icmp eq i64 %i.gj, 0               ; 3 uses
  br i1 %.not.i701, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %lean_dec.exit538
  %i.gk = lshr i64 %i.gi, 1
  %i.gl = trunc i64 %i.gk to i32
  br label %lean_obj_tag.exit704

bb.cn:                                            ; preds = %lean_dec.exit538
  %i.gm = getelementptr i8, ptr %i.gh, i64 4
  %.val.i703 = load i32, ptr %i.gm, align 4
  %i.gn = lshr i32 %.val.i703, 24
  br label %lean_obj_tag.exit704

lean_obj_tag.exit704:                             ; preds = %bb.cm, %bb.cn
  %.0.i702 = phi i32 [ %i.gl, %bb.cm ], [ %i.gn, %bb.cn ]
  %i.go = icmp eq i32 %.0.i702, 0
  br i1 %i.go, label %bb.co, label %bb.db

bb.co:                                            ; preds = %lean_obj_tag.exit704
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !10 ; 5 uses
  %.val646 = load i32, ptr %i.gh, align 8, !tbaa !14
  %i.gr = icmp eq i32 %.val646, 1                 ; 2 uses
  br i1 %i.gr, label %lean_dec.exit534, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = and i64 %i.gs, 1
  %.not.i472 = icmp eq i64 %i.gt, 0
  br i1 %.not.i472, label %bb.cq, label %lean_inc.exit473

bb.cq:                                            ; preds = %bb.cp
  %.val.i.i705 = load i32, ptr %i.gq, align 4, !tbaa !14 ; 3 uses
  %i.gu = icmp sgt i32 %.val.i.i705, 0
  br i1 %i.gu, label %bb.cr, label %bb.cs, !prof !16

bb.cr:                                            ; preds = %bb.cq
  %i.gv = add nuw i32 %.val.i.i705, 1
  store i32 %i.gv, ptr %i.gq, align 4, !tbaa !14
  br label %lean_inc.exit473

bb.cs:                                            ; preds = %bb.cq
  %.not.i.i706 = icmp eq i32 %.val.i.i705, 0
  br i1 %.not.i.i706, label %lean_inc.exit473, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.gw = atomicrmw sub ptr %i.gq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit473

lean_inc.exit473:                                 ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cp
  br i1 %.not.i701, label %bb.cu, label %lean_dec.exit534

bb.cu:                                            ; preds = %lean_inc.exit473
  %i.gx = load i32, ptr %i.gh, align 8, !tbaa !14 ; 3 uses
  %i.gy = icmp sgt i32 %i.gx, 1
  br i1 %i.gy, label %bb.cv, label %bb.cw, !prof !16

bb.cv:                                            ; preds = %bb.cu
  %i.gz = add nsw i32 %i.gx, -1
  store i32 %i.gz, ptr %i.gh, align 8, !tbaa !14
  br label %lean_dec.exit534

bb.cw:                                            ; preds = %bb.cu
  %.not.i550 = icmp eq i32 %i.gx, 0
  br i1 %.not.i550, label %lean_dec.exit534, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gh) #6
  br label %lean_dec.exit534

lean_dec.exit534:                                 ; preds = %lean_inc.exit473, %bb.cv, %bb.cw, %bb.cx, %bb.co
  %.0448 = phi ptr [ %i.gh, %bb.co ], [ inttoptr (i64 1 to ptr), %bb.cx ], [ inttoptr (i64 1 to ptr), %bb.cw ], [ inttoptr (i64 1 to ptr), %bb.cv ], [ inttoptr (i64 1 to ptr), %lean_inc.exit473 ]
  %i.ha = tail call ptr @lean_alloc_object(i64 noundef 32) #6 ; 7 uses
  store i32 1, ptr %i.ha, align 4, !tbaa !14
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 4 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = and i32 %i.hc, 65535
  %i.he = or disjoint i32 %i.hd, -184549376
  store i32 %i.he, ptr %i.hb, align 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__1___at___00Lean_Elab_Command_elabEvalCoreUnsafe_spec__8_spec__16___redArg___lam__2___boxed, ptr %i.hf, align 8, !tbaa !10
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store i16 8, ptr %i.hg, align 8, !tbaa !22
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 18
  store i16 1, ptr %i.hh, align 2, !tbaa !22
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  store ptr %i.gq, ptr %i.hi, align 8, !tbaa !10
  %i.hj = tail call ptr @lean_alloc_object(i64 noundef 40) #6 ; 8 uses
  store i32 1, ptr %i.hj, align 4, !tbaa !14
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4
  %i.hm = and i32 %i.hl, 65535
  %i.hn = or disjoint i32 %i.hm, -184549376
  store i32 %i.hn, ptr %i.hk, align 4
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__1___at___00Lean_Elab_Command_elabEvalCoreUnsafe_spec__8_spec__14___redArg___lam__0___boxed, ptr %i.ho, align 8, !tbaa !10
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store i16 5, ptr %i.hp, align 8, !tbaa !22
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 18
  store i16 2, ptr %i.hq, align 2, !tbaa !22
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  store ptr %i.ha, ptr %i.hr, align 8, !tbaa !10
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  store ptr %3, ptr %i.hs, align 8, !tbaa !10
  br i1 %i.bh, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %lean_dec.exit534
  %i.ht = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %bb.cz

bb.cz:                                            ; preds = %lean_dec.exit534, %bb.cy
  %.sink873 = phi ptr [ %i.ht, %bb.cy ], [ %.0451, %lean_dec.exit534 ] ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.sink873, i64 8
  store ptr %i.br, ptr %i.hu, align 8, !tbaa !10
  %i.hv = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store ptr %i.hj, ptr %i.hw, align 8, !tbaa !10
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store ptr %.sink873, ptr %i.hx, align 8, !tbaa !10
  %i.hy = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store ptr %i.hv, ptr %i.hz, align 8, !tbaa !10
  br i1 %i.gr, label %lean_dec.exit532.sink.split, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ia = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit532.sink.split

bb.db:                                            ; preds = %lean_obj_tag.exit704
  %i.ib = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.ic = icmp sgt i32 %i.ib, 1
  br i1 %i.ic, label %bb.dc, label %bb.dd, !prof !16

bb.dc:                                            ; preds = %bb.db
  %i.id = add nsw i32 %i.ib, -1
  store i32 %i.id, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit633

bb.dd:                                            ; preds = %bb.db
  %.not.i632 = icmp eq i32 %i.ib, 0
  br i1 %.not.i632, label %lean_dec_ref.exit633, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit633

lean_dec_ref.exit633:                             ; preds = %bb.dc, %bb.dd, %bb.de
  %i.ie = ptrtoint ptr %.0451 to i64
  %i.if = and i64 %i.ie, 1
  %.not.i708 = icmp eq i64 %i.if, 0
  br i1 %.not.i708, label %bb.df, label %lean_del_object.exit709

bb.df:                                            ; preds = %lean_dec_ref.exit633
  tail call void @lean_free_object(ptr noundef nonnull %.0451) #6
  br label %lean_del_object.exit709

lean_del_object.exit709:                          ; preds = %lean_dec_ref.exit633, %bb.df
  %i.ig = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.ih = icmp sgt i32 %i.ig, 1
  br i1 %i.ih, label %bb.dg, label %bb.dh, !prof !16

bb.dg:                                            ; preds = %lean_del_object.exit709
  %i.ii = add nsw i32 %i.ig, -1
  store i32 %i.ii, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit631

bb.dh:                                            ; preds = %lean_del_object.exit709
  %.not.i630 = icmp eq i32 %i.ig, 0
  br i1 %.not.i630, label %lean_dec_ref.exit631, label %bb.di

bb.di:                                            ; preds = %bb.dh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit631

lean_dec_ref.exit631:                             ; preds = %bb.dg, %bb.dh, %bb.di
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !10 ; 5 uses
  %.val645 = load i32, ptr %i.gh, align 8, !tbaa !14
  %i.il = icmp eq i32 %.val645, 1
  br i1 %i.il, label %lean_dec.exit532, label %bb.dj

bb.dj:                                            ; preds = %lean_dec_ref.exit631
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = and i64 %i.im, 1
  %.not.i470 = icmp eq i64 %i.in, 0
  br i1 %.not.i470, label %bb.dk, label %lean_inc.exit471

bb.dk:                                            ; preds = %bb.dj
  %.val.i.i710 = load i32, ptr %i.ik, align 4, !tbaa !14 ; 3 uses
  %i.io = icmp sgt i32 %.val.i.i710, 0
  br i1 %i.io, label %bb.dl, label %bb.dm, !prof !16

bb.dl:                                            ; preds = %bb.dk
  %i.ip = add nuw i32 %.val.i.i710, 1
  store i32 %i.ip, ptr %i.ik, align 4, !tbaa !14
  br label %lean_inc.exit471

bb.dm:                                            ; preds = %bb.dk
  %.not.i.i711 = icmp eq i32 %.val.i.i710, 0
  br i1 %.not.i.i711, label %lean_inc.exit471, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.iq = atomicrmw sub ptr %i.ik, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit471

lean_inc.exit471:                                 ; preds = %bb.dn, %bb.dm, %bb.dl, %bb.dj
  br i1 %.not.i701, label %bb.do, label %bb.ds

bb.do:                                            ; preds = %lean_inc.exit471
  %i.ir = load i32, ptr %i.gh, align 8, !tbaa !14 ; 3 uses
  %i.is = icmp sgt i32 %i.ir, 1
  br i1 %i.is, label %bb.dp, label %bb.dq, !prof !16

bb.dp:                                            ; preds = %bb.do
  %i.it = add nsw i32 %i.ir, -1
  store i32 %i.it, ptr %i.gh, align 8, !tbaa !14
  br label %bb.ds

bb.dq:                                            ; preds = %bb.do
  %.not.i552 = icmp eq i32 %i.ir, 0
  br i1 %.not.i552, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gh) #6
  br label %bb.ds

bb.ds:                                            ; preds = %lean_inc.exit471, %bb.dp, %bb.dq, %bb.dr
  %i.iu = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit532.sink.split

bb.dt:                                            ; preds = %lean_obj_tag.exit697
  br i1 %.not.i482, label %bb.du, label %lean_dec.exit530

bb.du:                                            ; preds = %bb.dt
  %i.iv = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.iw = icmp sgt i32 %i.iv, 1
  br i1 %i.iw, label %bb.dv, label %bb.dw, !prof !16

bb.dv:                                            ; preds = %bb.du
  %i.ix = add nsw i32 %i.iv, -1
  store i32 %i.ix, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit530

bb.dw:                                            ; preds = %bb.du
  %.not.i554 = icmp eq i32 %i.iv, 0
  br i1 %.not.i554, label %lean_dec.exit530, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit530

lean_dec.exit530:                                 ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.dt
  %i.iy = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.iz = icmp sgt i32 %i.iy, 1
  br i1 %i.iz, label %bb.dy, label %bb.dz, !prof !16

bb.dy:                                            ; preds = %lean_dec.exit530
  %i.ja = add nsw i32 %i.iy, -1
  store i32 %i.ja, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit629

bb.dz:                                            ; preds = %lean_dec.exit530
  %.not.i628 = icmp eq i32 %i.iy, 0
  br i1 %.not.i628, label %lean_dec_ref.exit629, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit629

lean_dec_ref.exit629:                             ; preds = %bb.dy, %bb.dz, %bb.ea
  %i.jb = ptrtoint ptr %.0451 to i64
  %i.jc = and i64 %i.jb, 1
  %.not.i713 = icmp eq i64 %i.jc, 0
  br i1 %.not.i713, label %bb.eb, label %lean_del_object.exit714

bb.eb:                                            ; preds = %lean_dec_ref.exit629
  tail call void @lean_free_object(ptr noundef nonnull %.0451) #6
  br label %lean_del_object.exit714

lean_del_object.exit714:                          ; preds = %lean_dec_ref.exit629, %bb.eb
  %i.jd = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.je = icmp sgt i32 %i.jd, 1
  br i1 %i.je, label %bb.ec, label %bb.ed, !prof !16

bb.ec:                                            ; preds = %lean_del_object.exit714
  %i.jf = add nsw i32 %i.jd, -1
  store i32 %i.jf, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit627

bb.ed:                                            ; preds = %lean_del_object.exit714
  %.not.i626 = icmp eq i32 %i.jd, 0
  br i1 %.not.i626, label %lean_dec_ref.exit627, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit627

lean_dec_ref.exit627:                             ; preds = %bb.ec, %bb.ed, %bb.ee
  %i.jg = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !10 ; 5 uses
  %.val644 = load i32, ptr %i.fh, align 8, !tbaa !14
  %i.ji = icmp eq i32 %.val644, 1
  br i1 %i.ji, label %lean_dec.exit532, label %bb.ef

bb.ef:                                            ; preds = %lean_dec_ref.exit627
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = and i64 %i.jj, 1
  %.not.i468 = icmp eq i64 %i.jk, 0
  br i1 %.not.i468, label %bb.eg, label %lean_inc.exit469

bb.eg:                                            ; preds = %bb.ef
  %.val.i.i715 = load i32, ptr %i.jh, align 4, !tbaa !14 ; 3 uses
  %i.jl = icmp sgt i32 %.val.i.i715, 0
  br i1 %i.jl, label %bb.eh, label %bb.ei, !prof !16

bb.eh:                                            ; preds = %bb.eg
  %i.jm = add nuw i32 %.val.i.i715, 1
  store i32 %i.jm, ptr %i.jh, align 4, !tbaa !14
  br label %lean_inc.exit469

bb.ei:                                            ; preds = %bb.eg
  %.not.i.i716 = icmp eq i32 %.val.i.i715, 0
  br i1 %.not.i.i716, label %lean_inc.exit469, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.jn = atomicrmw sub ptr %i.jh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit469

lean_inc.exit469:                                 ; preds = %bb.ej, %bb.ei, %bb.eh, %bb.ef
  br i1 %.not.i694, label %bb.ek, label %bb.eo

bb.ek:                                            ; preds = %lean_inc.exit469
  %i.jo = load i32, ptr %i.fh, align 8, !tbaa !14 ; 3 uses
  %i.jp = icmp sgt i32 %i.jo, 1
  br i1 %i.jp, label %bb.el, label %bb.em, !prof !16

bb.el:                                            ; preds = %bb.ek
  %i.jq = add nsw i32 %i.jo, -1
  store i32 %i.jq, ptr %i.fh, align 8, !tbaa !14
  br label %bb.eo

bb.em:                                            ; preds = %bb.ek
  %.not.i556 = icmp eq i32 %i.jo, 0
  br i1 %.not.i556, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fh) #6
  br label %bb.eo

bb.eo:                                            ; preds = %lean_inc.exit469, %bb.el, %bb.em, %bb.en
  %i.jr = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit532.sink.split

bb.ep:                                            ; preds = %lean_obj_tag.exit690
  br i1 %.not.i482, label %bb.eq, label %lean_dec.exit526

bb.eq:                                            ; preds = %bb.ep
  %i.js = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.jt = icmp sgt i32 %i.js, 1
  br i1 %i.jt, label %bb.er, label %bb.es, !prof !16

bb.er:                                            ; preds = %bb.eq
  %i.ju = add nsw i32 %i.js, -1
  store i32 %i.ju, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit526

bb.es:                                            ; preds = %bb.eq
  %.not.i558 = icmp eq i32 %i.js, 0
  br i1 %.not.i558, label %lean_dec.exit526, label %bb.et

bb.et:                                            ; preds = %bb.es
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit526

lean_dec.exit526:                                 ; preds = %bb.et, %bb.es, %bb.er, %bb.ep
  %i.jv = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.jw = icmp sgt i32 %i.jv, 1
  br i1 %i.jw, label %bb.eu, label %bb.ev, !prof !16

bb.eu:                                            ; preds = %lean_dec.exit526
  %i.jx = add nsw i32 %i.jv, -1
  store i32 %i.jx, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit625

bb.ev:                                            ; preds = %lean_dec.exit526
  %.not.i624 = icmp eq i32 %i.jv, 0
  br i1 %.not.i624, label %lean_dec_ref.exit625, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit625

lean_dec_ref.exit625:                             ; preds = %bb.eu, %bb.ev, %bb.ew
  %i.jy = ptrtoint ptr %.0451 to i64
  %i.jz = and i64 %i.jy, 1
  %.not.i718 = icmp eq i64 %i.jz, 0
  br i1 %.not.i718, label %bb.ex, label %lean_del_object.exit719

bb.ex:                                            ; preds = %lean_dec_ref.exit625
  tail call void @lean_free_object(ptr noundef nonnull %.0451) #6
  br label %lean_del_object.exit719

lean_del_object.exit719:                          ; preds = %lean_dec_ref.exit625, %bb.ex
  %i.ka = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.kb = icmp sgt i32 %i.ka, 1
  br i1 %i.kb, label %bb.ey, label %bb.ez, !prof !16

bb.ey:                                            ; preds = %lean_del_object.exit719
  %i.kc = add nsw i32 %i.ka, -1
  store i32 %i.kc, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit623

bb.ez:                                            ; preds = %lean_del_object.exit719
  %.not.i622 = icmp eq i32 %i.ka, 0
  br i1 %.not.i622, label %lean_dec_ref.exit623, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit623

lean_dec_ref.exit623:                             ; preds = %bb.ey, %bb.ez, %bb.fa
  %i.kd = ptrtoint ptr %1 to i64
  %i.ke = and i64 %i.kd, 1
  %.not.i523 = icmp eq i64 %i.ke, 0
  br i1 %.not.i523, label %bb.fb, label %lean_dec.exit524

bb.fb:                                            ; preds = %lean_dec_ref.exit623
  %i.kf = load i32, ptr %1, align 4, !tbaa !14    ; 3 uses
  %i.kg = icmp sgt i32 %i.kf, 1
  br i1 %i.kg, label %bb.fc, label %bb.fd, !prof !16

bb.fc:                                            ; preds = %bb.fb
  %i.kh = add nsw i32 %i.kf, -1
  store i32 %i.kh, ptr %1, align 4, !tbaa !14
  br label %lean_dec.exit524

bb.fd:                                            ; preds = %bb.fb
  %.not.i560 = icmp eq i32 %i.kf, 0
  br i1 %.not.i560, label %lean_dec.exit524, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit524

lean_dec.exit524:                                 ; preds = %bb.fe, %bb.fd, %bb.fc, %lean_dec_ref.exit623
  %i.ki = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !10 ; 5 uses
  %.val643 = load i32, ptr %i.es, align 8, !tbaa !14
  %i.kk = icmp eq i32 %.val643, 1
  br i1 %i.kk, label %lean_dec.exit532, label %bb.ff

bb.ff:                                            ; preds = %lean_dec.exit524
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = and i64 %i.kl, 1
  %.not.i466 = icmp eq i64 %i.km, 0
  br i1 %.not.i466, label %bb.fg, label %lean_inc.exit467

bb.fg:                                            ; preds = %bb.ff
  %.val.i.i720 = load i32, ptr %i.kj, align 4, !tbaa !14 ; 3 uses
  %i.kn = icmp sgt i32 %.val.i.i720, 0
  br i1 %i.kn, label %bb.fh, label %bb.fi, !prof !16

bb.fh:                                            ; preds = %bb.fg
  %i.ko = add nuw i32 %.val.i.i720, 1
  store i32 %i.ko, ptr %i.kj, align 4, !tbaa !14
  br label %lean_inc.exit467

bb.fi:                                            ; preds = %bb.fg
  %.not.i.i721 = icmp eq i32 %.val.i.i720, 0
  br i1 %.not.i.i721, label %lean_inc.exit467, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.kp = atomicrmw sub ptr %i.kj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit467

lean_inc.exit467:                                 ; preds = %bb.fj, %bb.fi, %bb.fh, %bb.ff
  br i1 %.not.i687, label %bb.fk, label %bb.fo

bb.fk:                                            ; preds = %lean_inc.exit467
  %i.kq = load i32, ptr %i.es, align 8, !tbaa !14 ; 3 uses
  %i.kr = icmp sgt i32 %i.kq, 1
  br i1 %i.kr, label %bb.fl, label %bb.fm, !prof !16

bb.fl:                                            ; preds = %bb.fk
  %i.ks = add nsw i32 %i.kq, -1
  store i32 %i.ks, ptr %i.es, align 8, !tbaa !14
  br label %bb.fo

bb.fm:                                            ; preds = %bb.fk
  %.not.i562 = icmp eq i32 %i.kq, 0
  br i1 %.not.i562, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.es) #6
  br label %bb.fo

bb.fo:                                            ; preds = %lean_inc.exit467, %bb.fl, %bb.fm, %bb.fn
  %i.kt = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit532.sink.split

bb.fp:                                            ; preds = %lean_obj_tag.exit683
  br i1 %.not.i482, label %bb.fq, label %lean_dec.exit520

bb.fq:                                            ; preds = %bb.fp
  %i.ku = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.kv = icmp sgt i32 %i.ku, 1
  br i1 %i.kv, label %bb.fr, label %bb.fs, !prof !16

bb.fr:                                            ; preds = %bb.fq
  %i.kw = add nsw i32 %i.ku, -1
  store i32 %i.kw, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit520

bb.fs:                                            ; preds = %bb.fq
  %.not.i564 = icmp eq i32 %i.ku, 0
  br i1 %.not.i564, label %lean_dec.exit520, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit520

lean_dec.exit520:                                 ; preds = %bb.ft, %bb.fs, %bb.fr, %bb.fp
  %i.kx = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.ky = icmp sgt i32 %i.kx, 1
  br i1 %i.ky, label %bb.fu, label %bb.fv, !prof !16

bb.fu:                                            ; preds = %lean_dec.exit520
  %i.kz = add nsw i32 %i.kx, -1
  store i32 %i.kz, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit621

bb.fv:                                            ; preds = %lean_dec.exit520
  %.not.i620 = icmp eq i32 %i.kx, 0
  br i1 %.not.i620, label %lean_dec_ref.exit621, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit621

lean_dec_ref.exit621:                             ; preds = %bb.fu, %bb.fv, %bb.fw
  %i.la = ptrtoint ptr %.0451 to i64
  %i.lb = and i64 %i.la, 1
  %.not.i723 = icmp eq i64 %i.lb, 0
  br i1 %.not.i723, label %bb.fx, label %lean_del_object.exit724

bb.fx:                                            ; preds = %lean_dec_ref.exit621
  tail call void @lean_free_object(ptr noundef nonnull %.0451) #6
  br label %lean_del_object.exit724

lean_del_object.exit724:                          ; preds = %lean_dec_ref.exit621, %bb.fx
  %i.lc = ptrtoint ptr %i.bg to i64
  %i.ld = and i64 %i.lc, 1
  %.not.i517 = icmp eq i64 %i.ld, 0
  br i1 %.not.i517, label %bb.fy, label %lean_dec.exit518

bb.fy:                                            ; preds = %lean_del_object.exit724
  %i.le = load i32, ptr %i.bg, align 4, !tbaa !14 ; 3 uses
  %i.lf = icmp sgt i32 %i.le, 1
  br i1 %i.lf, label %bb.fz, label %bb.ga, !prof !16

bb.fz:                                            ; preds = %bb.fy
  %i.lg = add nsw i32 %i.le, -1
  store i32 %i.lg, ptr %i.bg, align 4, !tbaa !14
  br label %lean_dec.exit518

bb.ga:                                            ; preds = %bb.fy
  %.not.i566 = icmp eq i32 %i.le, 0
  br i1 %.not.i566, label %lean_dec.exit518, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bg) #6
  br label %lean_dec.exit518

lean_dec.exit518:                                 ; preds = %bb.gb, %bb.ga, %bb.fz, %lean_del_object.exit724
  %i.lh = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.li = icmp sgt i32 %i.lh, 1
  br i1 %i.li, label %bb.gc, label %bb.gd, !prof !16

bb.gc:                                            ; preds = %lean_dec.exit518
  %i.lj = add nsw i32 %i.lh, -1
  store i32 %i.lj, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit619

bb.gd:                                            ; preds = %lean_dec.exit518
  %.not.i618 = icmp eq i32 %i.lh, 0
  br i1 %.not.i618, label %lean_dec_ref.exit619, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit619

lean_dec_ref.exit619:                             ; preds = %bb.gc, %bb.gd, %bb.ge
  %i.lk = ptrtoint ptr %1 to i64
  %i.ll = and i64 %i.lk, 1
  %.not.i515 = icmp eq i64 %i.ll, 0
  br i1 %.not.i515, label %bb.gf, label %lean_dec.exit516

bb.gf:                                            ; preds = %lean_dec_ref.exit619
  %i.lm = load i32, ptr %1, align 4, !tbaa !14    ; 3 uses
  %i.ln = icmp sgt i32 %i.lm, 1
  br i1 %i.ln, label %bb.gg, label %bb.gh, !prof !16

bb.gg:                                            ; preds = %bb.gf
  %i.lo = add nsw i32 %i.lm, -1
  store i32 %i.lo, ptr %1, align 4, !tbaa !14
  br label %lean_dec.exit516

bb.gh:                                            ; preds = %bb.gf
  %.not.i568 = icmp eq i32 %i.lm, 0
  br i1 %.not.i568, label %lean_dec.exit516, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit516

lean_dec.exit516:                                 ; preds = %bb.gi, %bb.gh, %bb.gg, %lean_dec_ref.exit619
  %i.lp = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !10 ; 5 uses
  %.val642 = load i32, ptr %i.du, align 8, !tbaa !14
  %i.lr = icmp eq i32 %.val642, 1
  br i1 %i.lr, label %lean_dec.exit532, label %bb.gj

bb.gj:                                            ; preds = %lean_dec.exit516
  %i.ls = ptrtoint ptr %i.lq to i64
  %i.lt = and i64 %i.ls, 1
  %.not.i464 = icmp eq i64 %i.lt, 0
  br i1 %.not.i464, label %bb.gk, label %lean_inc.exit465

bb.gk:                                            ; preds = %bb.gj
  %.val.i.i725 = load i32, ptr %i.lq, align 4, !tbaa !14 ; 3 uses
  %i.lu = icmp sgt i32 %.val.i.i725, 0
  br i1 %i.lu, label %bb.gl, label %bb.gm, !prof !16

bb.gl:                                            ; preds = %bb.gk
  %i.lv = add nuw i32 %.val.i.i725, 1
  store i32 %i.lv, ptr %i.lq, align 4, !tbaa !14
  br label %lean_inc.exit465

bb.gm:                                            ; preds = %bb.gk
  %.not.i.i726 = icmp eq i32 %.val.i.i725, 0
  br i1 %.not.i.i726, label %lean_inc.exit465, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.lw = atomicrmw sub ptr %i.lq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit465

lean_inc.exit465:                                 ; preds = %bb.gn, %bb.gm, %bb.gl, %bb.gj
  br i1 %.not.i680, label %bb.go, label %bb.gs

bb.go:                                            ; preds = %lean_inc.exit465
  %i.lx = load i32, ptr %i.du, align 8, !tbaa !14 ; 3 uses
  %i.ly = icmp sgt i32 %i.lx, 1
  br i1 %i.ly, label %bb.gp, label %bb.gq, !prof !16

bb.gp:                                            ; preds = %bb.go
  %i.lz = add nsw i32 %i.lx, -1
  store i32 %i.lz, ptr %i.du, align 8, !tbaa !14
  br label %bb.gs

bb.gq:                                            ; preds = %bb.go
  %.not.i570 = icmp eq i32 %i.lx, 0
  br i1 %.not.i570, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.du) #6
  br label %bb.gs

bb.gs:                                            ; preds = %lean_inc.exit465, %bb.gp, %bb.gq, %bb.gr
  %i.ma = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit532.sink.split

bb.gt:                                            ; preds = %lean_dec_ref_known.exit
  %i.mb = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.mc = icmp sgt i32 %i.mb, 1
  br i1 %i.mc, label %bb.gu, label %bb.gv, !prof !16

bb.gu:                                            ; preds = %bb.gt
  %i.md = add nsw i32 %i.mb, -1
  store i32 %i.md, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit617

bb.gv:                                            ; preds = %bb.gt
  %.not.i616 = icmp eq i32 %i.mb, 0
  br i1 %.not.i616, label %lean_dec_ref.exit617, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit617

lean_dec_ref.exit617:                             ; preds = %bb.gu, %bb.gv, %bb.gw
  %i.me = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.mf = icmp sgt i32 %i.me, 1
  br i1 %i.mf, label %bb.gx, label %bb.gy, !prof !16

bb.gx:                                            ; preds = %lean_dec_ref.exit617
  %i.mg = add nsw i32 %i.me, -1
  store i32 %i.mg, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit615

bb.gy:                                            ; preds = %lean_dec_ref.exit617
  %.not.i614 = icmp eq i32 %i.me, 0
  br i1 %.not.i614, label %lean_dec_ref.exit615, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit615

lean_dec_ref.exit615:                             ; preds = %bb.gx, %bb.gy, %bb.gz
  %i.mh = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.mi = icmp sgt i32 %i.mh, 1
  br i1 %i.mi, label %bb.ha, label %bb.hb, !prof !16
end_hunk_3
begin_hunk_4_@l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__1___at___00Lean_Elab_Command_elabEvalCoreUnsafe_spec__8_spec__12___redArg:bb.a
  %i.bk = icmp sgt i32 %.val.i.i653, 0
  br i1 %i.bk, label %bb.v, label %bb.w, !prof !16

bb.v:                                             ; preds = %bb.u
  %i.bl = add nuw i32 %.val.i.i653, 1
  store i32 %i.bl, ptr %i.bg, align 4, !tbaa !14
  br label %lean_inc.exit481

bb.w:                                             ; preds = %bb.u
  %.not.i.i654 = icmp eq i32 %.val.i.i653, 0
  br i1 %.not.i.i654, label %lean_inc.exit481, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = atomicrmw sub ptr %i.bg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit481

lean_inc.exit481:                                 ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  br i1 %.not.i648, label %bb.y, label %lean_dec.exit536

bb.y:                                             ; preds = %lean_inc.exit481
  %i.bn = load i32, ptr %i.ar, align 8, !tbaa !14 ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.z, label %bb.aa, !prof !16

bb.z:                                             ; preds = %bb.y
  %i.bp = add nsw i32 %i.bn, -1
  store i32 %i.bp, ptr %i.ar, align 8, !tbaa !14
  br label %lean_dec.exit536

bb.aa:                                            ; preds = %bb.y
  %.not.i540 = icmp eq i32 %i.bn, 0
  br i1 %.not.i540, label %lean_dec.exit536, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ar) #6
  br label %lean_dec.exit536

lean_dec.exit536:                                 ; preds = %lean_inc.exit481, %bb.z, %bb.aa, %bb.ab, %lean_del_object.exit
  %.0447 = phi ptr [ %i.ar, %lean_del_object.exit ], [ inttoptr (i64 1 to ptr), %bb.ab ], [ inttoptr (i64 1 to ptr), %bb.aa ], [ inttoptr (i64 1 to ptr), %bb.z ], [ inttoptr (i64 1 to ptr), %lean_inc.exit481 ] ; 16 uses
  %i.bq = tail call ptr @l_Lean_Expr_appFn_x21(ptr noundef %i.bg) #6 ; 4 uses
  %i.br = tail call ptr @l_Lean_Expr_appArg_x21(ptr noundef %i.bq) #6 ; 27 uses
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !14 ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 1
  br i1 %i.bt, label %bb.ac, label %bb.ad, !prof !16

bb.ac:                                            ; preds = %lean_dec.exit536
  %i.bu = add nsw i32 %i.bs, -1
  store i32 %i.bu, ptr %i.bq, align 4, !tbaa !14
  br label %lean_dec_ref.exit631

bb.ad:                                            ; preds = %lean_dec.exit536
  %.not.i630 = icmp eq i32 %i.bs, 0
  br i1 %.not.i630, label %lean_dec_ref.exit631, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bq) #6
  br label %lean_dec_ref.exit631

lean_dec_ref.exit631:                             ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bv = load atomic i32, ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6_once seq_cst, align 4, !tbaa !18
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.af, label %bb.ag, !prof !16

bb.af:                                            ; preds = %lean_dec_ref.exit631
  %i.bx = load ptr, ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6, align 8, !tbaa !10
  br label %lean_obj_once.exit657

bb.ag:                                            ; preds = %lean_dec_ref.exit631
  %i.by = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6, ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6_once, ptr noundef nonnull @_init_l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6) #6
  br label %lean_obj_once.exit657

lean_obj_once.exit657:                            ; preds = %bb.af, %bb.ag
  %.0.i656 = phi ptr [ %i.bx, %bb.af ], [ %i.by, %bb.ag ]
  %.val.i.i658 = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.bz = icmp sgt i32 %.val.i.i658, 0
  br i1 %i.bz, label %bb.ah, label %bb.ai, !prof !16

bb.ah:                                            ; preds = %lean_obj_once.exit657
  %i.ca = add nuw i32 %.val.i.i658, 1
  store i32 %i.ca, ptr %i.br, align 4, !tbaa !14
  br label %lean_inc_ref.exit660

bb.ai:                                            ; preds = %lean_obj_once.exit657
  %.not.i.i659 = icmp eq i32 %.val.i.i658, 0
  br i1 %.not.i.i659, label %lean_inc_ref.exit660, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cb = atomicrmw sub ptr %i.br, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit660

lean_inc_ref.exit660:                             ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.cc = tail call ptr @l_Lean_Meta_isExprDefEq(ptr noundef nonnull %i.br, ptr noundef %.0.i656, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #6 ; 13 uses
  %i.cd = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.ce = and i64 %i.cd, 1
  %.not.i661 = icmp eq i64 %i.ce, 0               ; 2 uses
  br i1 %.not.i661, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %lean_inc_ref.exit660
  %i.cf = lshr i64 %i.cd, 1
  %i.cg = trunc i64 %i.cf to i32
  br label %lean_obj_tag.exit664

bb.al:                                            ; preds = %lean_inc_ref.exit660
  %i.ch = getelementptr i8, ptr %i.cc, i64 4
  %.val.i663 = load i32, ptr %i.ch, align 4
  %i.ci = lshr i32 %.val.i663, 24
  br label %lean_obj_tag.exit664

lean_obj_tag.exit664:                             ; preds = %bb.ak, %bb.al
  %.0.i662 = phi i32 [ %i.cg, %bb.ak ], [ %i.ci, %bb.al ]
  %i.cj = icmp eq i32 %.0.i662, 0
  br i1 %i.cj, label %bb.am, label %bb.jl

bb.am:                                            ; preds = %lean_obj_tag.exit664
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !10 ; 32 uses
  %i.cm = ptrtoint ptr %i.cl to i64               ; 3 uses
  %i.cn = and i64 %i.cm, 1
  %.not.i478 = icmp eq i64 %i.cn, 0               ; 10 uses
  br i1 %.not.i478, label %bb.an, label %lean_inc.exit479

bb.an:                                            ; preds = %bb.am
  %.val.i.i665 = load i32, ptr %i.cl, align 4, !tbaa !14 ; 3 uses
  %i.co = icmp sgt i32 %.val.i.i665, 0
  br i1 %i.co, label %bb.ao, label %bb.ap, !prof !16

bb.ao:                                            ; preds = %bb.an
  %i.cp = add nuw i32 %.val.i.i665, 1
  store i32 %i.cp, ptr %i.cl, align 4, !tbaa !14
  br label %lean_inc.exit479

bb.ap:                                            ; preds = %bb.an
  %.not.i.i666 = icmp eq i32 %.val.i.i665, 0
  br i1 %.not.i.i666, label %lean_inc.exit479, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cq = atomicrmw sub ptr %i.cl, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit479

lean_inc.exit479:                                 ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am
  %.val.i668 = load i32, ptr %i.cc, align 8, !tbaa !14 ; 4 uses
  %i.cr = icmp eq i32 %.val.i668, 1
  br i1 %i.cr, label %.preheader.i, label %bb.av

.preheader.i:                                     ; preds = %lean_inc.exit479
  %i.cs = load ptr, ptr %i.ck, align 8, !tbaa !10 ; 4 uses
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = and i64 %i.ct, 1
  %.not.i.i669 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i669, label %bb.ar, label %lean_dec.exit.i

bb.ar:                                            ; preds = %.preheader.i
  %i.cv = load i32, ptr %i.cs, align 4, !tbaa !14 ; 3 uses
  %i.cw = icmp sgt i32 %i.cv, 1
  br i1 %i.cw, label %bb.as, label %bb.at, !prof !16

bb.as:                                            ; preds = %bb.ar
  %i.cx = add nsw i32 %i.cv, -1
  store i32 %i.cx, ptr %i.cs, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.at:                                            ; preds = %bb.ar
  %.not.i7.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cs) #6
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.au, %bb.at, %bb.as, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.cc) #6
  br label %lean_dec_ref_known.exit

bb.av:                                            ; preds = %lean_inc.exit479
  %i.cy = icmp sgt i32 %.val.i668, 1
  br i1 %i.cy, label %bb.aw, label %bb.ax, !prof !16

bb.aw:                                            ; preds = %bb.av
  %i.cz = add nsw i32 %.val.i668, -1
  store i32 %i.cz, ptr %i.cc, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.ax:                                            ; preds = %bb.av
  %.not.i8.i = icmp eq i32 %.val.i668, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cc) #6
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.aw, %bb.ax, %bb.ay
  %i.da = lshr i64 %i.cm, 1
  %i.db = and i64 %i.cm, 510
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %bb.az, label %bb.gt

bb.az:                                            ; preds = %lean_dec_ref_known.exit
  br i1 %.not.i478, label %bb.ba, label %lean_inc.exit477

bb.ba:                                            ; preds = %bb.az
  %.val.i.i670 = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.dd = icmp sgt i32 %.val.i.i670, 0
  br i1 %i.dd, label %bb.bb, label %bb.bc, !prof !16

bb.bb:                                            ; preds = %bb.ba
  %i.de = add nuw i32 %.val.i.i670, 1
  store i32 %i.de, ptr %i.cl, align 512, !tbaa !14
  br label %lean_inc.exit477

bb.bc:                                            ; preds = %bb.ba
  %.not.i.i671 = icmp eq i32 %.val.i.i670, 0
  br i1 %.not.i.i671, label %lean_inc.exit477, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.df = atomicrmw sub ptr %i.cl, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit477

lean_inc.exit477:                                 ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.az
  %i.dg = tail call ptr @lean_alloc_object(i64 noundef 48) #6 ; 9 uses
  store i32 1, ptr %i.dg, align 4, !tbaa !14
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = and i32 %i.di, 65535
  %i.dk = or disjoint i32 %i.dj, -184549376
  store i32 %i.dk, ptr %i.dh, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___lam__1___boxed, ptr %i.dl, align 8, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i16 11, ptr %i.dm, align 8, !tbaa !22
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 18
  store i16 3, ptr %i.dn, align 2, !tbaa !22
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store ptr %0, ptr %i.do, align 8, !tbaa !10
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store ptr %i.cl, ptr %i.dp, align 8, !tbaa !10
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store ptr inttoptr (i64 3 to ptr), ptr %i.dq, align 8, !tbaa !10
  %.val.i.i673 = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.dr = icmp sgt i32 %.val.i.i673, 0
  br i1 %i.dr, label %bb.be, label %bb.bf, !prof !16

bb.be:                                            ; preds = %lean_inc.exit477
  %i.ds = add nuw i32 %.val.i.i673, 1
  store i32 %i.ds, ptr %i.br, align 4, !tbaa !14
  br label %lean_inc_ref.exit675

bb.bf:                                            ; preds = %lean_inc.exit477
  %.not.i.i674 = icmp eq i32 %.val.i.i673, 0
  br i1 %.not.i.i674, label %lean_inc_ref.exit675, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dt = atomicrmw sub ptr %i.br, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit675

lean_inc_ref.exit675:                             ; preds = %bb.be, %bb.bf, %bb.bg
  %i.du = tail call ptr @l_Lean_Meta_withLocalDecl___at___00Lean_Meta_withLocalDeclD___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__1___at___00Lean_Elab_Command_elabEvalCoreUnsafe_spec__8_spec__17_spec__22___redArg(ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__8_value, i8 noundef zeroext 0, ptr noundef nonnull %i.br, ptr noundef nonnull %i.dg, i8 noundef zeroext 0, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) ; 10 uses
  %i.dv = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dw = and i64 %i.dv, 1
  %.not.i676 = icmp eq i64 %i.dw, 0               ; 2 uses
  br i1 %.not.i676, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %lean_inc_ref.exit675
  %i.dx = lshr i64 %i.dv, 1
  %i.dy = trunc i64 %i.dx to i32
  br label %lean_obj_tag.exit679

bb.bi:                                            ; preds = %lean_inc_ref.exit675
  %i.dz = getelementptr i8, ptr %i.du, i64 4
  %.val.i678 = load i32, ptr %i.dz, align 4
  %i.ea = lshr i32 %.val.i678, 24
  br label %lean_obj_tag.exit679

lean_obj_tag.exit679:                             ; preds = %bb.bh, %bb.bi
  %.0.i677 = phi i32 [ %i.dy, %bb.bh ], [ %i.ea, %bb.bi ]
  %i.eb = icmp eq i32 %.0.i677, 0
  br i1 %i.eb, label %bb.bj, label %bb.fp

bb.bj:                                            ; preds = %lean_obj_tag.exit679
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !10 ; 5 uses
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = and i64 %i.ee, 1
  %.not.i474 = icmp eq i64 %i.ef, 0
  br i1 %.not.i474, label %bb.bk, label %lean_inc.exit475

bb.bk:                                            ; preds = %bb.bj
  %.val.i.i680 = load i32, ptr %i.ed, align 4, !tbaa !14 ; 3 uses
  %i.eg = icmp sgt i32 %.val.i.i680, 0
  br i1 %i.eg, label %bb.bl, label %bb.bm, !prof !16

bb.bl:                                            ; preds = %bb.bk
  %i.eh = add nuw i32 %.val.i.i680, 1
  store i32 %i.eh, ptr %i.ed, align 4, !tbaa !14
  br label %lean_inc.exit475

bb.bm:                                            ; preds = %bb.bk
  %.not.i.i681 = icmp eq i32 %.val.i.i680, 0
  br i1 %.not.i.i681, label %lean_inc.exit475, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ei = atomicrmw sub ptr %i.ed, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit475

lean_inc.exit475:                                 ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bj
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.du, i32 noundef 1)
  %i.ej = tail call ptr @lean_alloc_object(i64 noundef 40) #6 ; 5 uses
  store i32 1, ptr %i.ej, align 4, !tbaa !14
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = and i32 %i.el, 65535
  %i.en = or disjoint i32 %i.em, -167772160
  store i32 %i.en, ptr %i.ek, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i64 0, ptr %i.eo, align 8, !tbaa !12
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store i64 2, ptr %i.ep, align 8, !tbaa !12
  %i.eq = tail call ptr @lean_array_push(ptr noundef nonnull %i.ej, ptr noundef %i.ed) #6
  %i.er = tail call ptr @lean_array_push(ptr noundef %i.eq, ptr noundef %i.bg) #6
  %i.es = tail call ptr @l_Lean_Meta_mkAppM(ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__11_value, ptr noundef %i.er, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #6 ; 10 uses
  %i.et = ptrtoint ptr %i.es to i64               ; 2 uses
  %i.eu = and i64 %i.et, 1
  %.not.i683 = icmp eq i64 %i.eu, 0               ; 2 uses
  br i1 %.not.i683, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %lean_inc.exit475
  %i.ev = lshr i64 %i.et, 1
  %i.ew = trunc i64 %i.ev to i32
  br label %lean_obj_tag.exit686

bb.bp:                                            ; preds = %lean_inc.exit475
  %i.ex = getelementptr i8, ptr %i.es, i64 4
  %.val.i685 = load i32, ptr %i.ex, align 4
  %i.ey = lshr i32 %.val.i685, 24
  br label %lean_obj_tag.exit686

lean_obj_tag.exit686:                             ; preds = %bb.bo, %bb.bp
  %.0.i684 = phi i32 [ %i.ew, %bb.bo ], [ %i.ey, %bb.bp ]
  %i.ez = icmp eq i32 %.0.i684, 0
  br i1 %i.ez, label %bb.bq, label %bb.ep

bb.bq:                                            ; preds = %lean_obj_tag.exit686
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !10 ; 5 uses
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = and i64 %i.fc, 1
  %.not.i472 = icmp eq i64 %i.fd, 0
  br i1 %.not.i472, label %bb.br, label %lean_inc.exit473

bb.br:                                            ; preds = %bb.bq
  %.val.i.i687 = load i32, ptr %i.fb, align 4, !tbaa !14 ; 3 uses
  %i.fe = icmp sgt i32 %.val.i.i687, 0
  br i1 %i.fe, label %bb.bs, label %bb.bt, !prof !16

bb.bs:                                            ; preds = %bb.br
  %i.ff = add nuw i32 %.val.i.i687, 1
  store i32 %i.ff, ptr %i.fb, align 4, !tbaa !14
  br label %lean_inc.exit473

bb.bt:                                            ; preds = %bb.br
  %.not.i.i688 = icmp eq i32 %.val.i.i687, 0
  br i1 %.not.i.i688, label %lean_inc.exit473, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fg = atomicrmw sub ptr %i.fb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit473

lean_inc.exit473:                                 ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.bq
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.es, i32 noundef 1)
  %i.fh = tail call ptr @l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval(ptr noundef %1, ptr noundef %i.fb, i8 noundef zeroext %2, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) ; 10 uses
  %i.fi = ptrtoint ptr %i.fh to i64               ; 2 uses
  %i.fj = and i64 %i.fi, 1
  %.not.i690 = icmp eq i64 %i.fj, 0               ; 2 uses
  br i1 %.not.i690, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %lean_inc.exit473
  %i.fk = lshr i64 %i.fi, 1
  %i.fl = trunc i64 %i.fk to i32
  br label %lean_obj_tag.exit693

bb.bw:                                            ; preds = %lean_inc.exit473
  %i.fm = getelementptr i8, ptr %i.fh, i64 4
  %.val.i692 = load i32, ptr %i.fm, align 4
  %i.fn = lshr i32 %.val.i692, 24
  br label %lean_obj_tag.exit693

lean_obj_tag.exit693:                             ; preds = %bb.bv, %bb.bw
  %.0.i691 = phi i32 [ %i.fl, %bb.bv ], [ %i.fn, %bb.bw ]
  %i.fo = icmp eq i32 %.0.i691, 0
  br i1 %i.fo, label %bb.bx, label %bb.dt

bb.bx:                                            ; preds = %lean_obj_tag.exit693
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !10 ; 5 uses
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = and i64 %i.fr, 1
  %.not.i470 = icmp eq i64 %i.fs, 0
  br i1 %.not.i470, label %bb.by, label %lean_inc.exit471

bb.by:                                            ; preds = %bb.bx
  %.val.i.i694 = load i32, ptr %i.fq, align 4, !tbaa !14 ; 3 uses
  %i.ft = icmp sgt i32 %.val.i.i694, 0
  br i1 %i.ft, label %bb.bz, label %bb.ca, !prof !16

bb.bz:                                            ; preds = %bb.by
  %i.fu = add nuw i32 %.val.i.i694, 1
  store i32 %i.fu, ptr %i.fq, align 4, !tbaa !14
  br label %lean_inc.exit471

bb.ca:                                            ; preds = %bb.by
  %.not.i.i695 = icmp eq i32 %.val.i.i694, 0
  br i1 %.not.i.i695, label %lean_inc.exit471, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fv = atomicrmw sub ptr %i.fq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit471

lean_inc.exit471:                                 ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.bx
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.fh, i32 noundef 1)
  %i.fw = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !10
  %i.fy = load ptr, ptr @l_Lean_Elab_inServer, align 8, !tbaa !10
  %i.fz = tail call zeroext i8 @l_Lean_Option_get___at___00Lean_Elab_addMacroStack___at___00Lean_throwError___at___00__private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_elabTermForEval_spec__1_spec__2_spec__5(ptr noundef %i.fx, ptr noundef %i.fy)
  %i.ga = icmp eq i8 %i.fz, 0
  br i1 %i.ga, label %bb.cc, label %bb.ch

bb.cc:                                            ; preds = %lean_inc.exit471
  br i1 %.not.i478, label %bb.cd, label %lean_dec.exit534

bb.cd:                                            ; preds = %bb.cc
  %i.gb = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.gc = icmp sgt i32 %i.gb, 1
  br i1 %i.gc, label %bb.ce, label %bb.cf, !prof !16

bb.ce:                                            ; preds = %bb.cd
  %i.gd = add nsw i32 %i.gb, -1
  store i32 %i.gd, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit534

bb.cf:                                            ; preds = %bb.cd
  %.not.i542 = icmp eq i32 %i.gb, 0
  br i1 %.not.i542, label %lean_dec.exit534, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit534

bb.ch:                                            ; preds = %lean_inc.exit471
  br i1 %.not.i478, label %bb.ci, label %lean_dec.exit534

bb.ci:                                            ; preds = %bb.ch
  %i.ge = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.gf = icmp sgt i32 %i.ge, 1
  br i1 %i.gf, label %bb.cj, label %bb.ck, !prof !16

bb.cj:                                            ; preds = %bb.ci
  %i.gg = add nsw i32 %i.ge, -1
  store i32 %i.gg, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit534

bb.ck:                                            ; preds = %bb.ci
  %.not.i544 = icmp eq i32 %i.ge, 0
  br i1 %.not.i544, label %lean_dec.exit534, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit534

lean_dec.exit534:                                 ; preds = %bb.ch, %bb.cj, %bb.ck, %bb.cl, %bb.cc, %bb.ce, %bb.cf, %bb.cg
  %.0445 = phi i8 [ 1, %bb.cc ], [ 1, %bb.cg ], [ 1, %bb.cf ], [ 1, %bb.ce ], [ 0, %bb.cl ], [ 0, %bb.ck ], [ 0, %bb.cj ], [ 0, %bb.ch ]
  %i.gh = tail call ptr @l_Lean_evalConst___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__1___at___00Lean_Elab_Command_elabEvalCoreUnsafe_spec__8_spec__11___redArg(ptr noundef %i.fq, i8 noundef zeroext %.0445, ptr noundef %6, ptr poison, ptr noundef %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef %11) ; 14 uses
  %i.gi = ptrtoint ptr %i.gh to i64               ; 2 uses
  %i.gj = and i64 %i.gi, 1
  %.not.i697 = icmp eq i64 %i.gj, 0               ; 3 uses
  br i1 %.not.i697, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %lean_dec.exit534
  %i.gk = lshr i64 %i.gi, 1
  %i.gl = trunc i64 %i.gk to i32
  br label %lean_obj_tag.exit700

bb.cn:                                            ; preds = %lean_dec.exit534
  %i.gm = getelementptr i8, ptr %i.gh, i64 4
  %.val.i699 = load i32, ptr %i.gm, align 4
  %i.gn = lshr i32 %.val.i699, 24
  br label %lean_obj_tag.exit700

lean_obj_tag.exit700:                             ; preds = %bb.cm, %bb.cn
  %.0.i698 = phi i32 [ %i.gl, %bb.cm ], [ %i.gn, %bb.cn ]
  %i.go = icmp eq i32 %.0.i698, 0
  br i1 %i.go, label %bb.co, label %bb.db

bb.co:                                            ; preds = %lean_obj_tag.exit700
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !10 ; 5 uses
  %.val642 = load i32, ptr %i.gh, align 8, !tbaa !14
  %i.gr = icmp eq i32 %.val642, 1                 ; 2 uses
  br i1 %i.gr, label %lean_dec.exit530, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = and i64 %i.gs, 1
  %.not.i468 = icmp eq i64 %i.gt, 0
  br i1 %.not.i468, label %bb.cq, label %lean_inc.exit469

bb.cq:                                            ; preds = %bb.cp
  %.val.i.i701 = load i32, ptr %i.gq, align 4, !tbaa !14 ; 3 uses
  %i.gu = icmp sgt i32 %.val.i.i701, 0
  br i1 %i.gu, label %bb.cr, label %bb.cs, !prof !16

bb.cr:                                            ; preds = %bb.cq
  %i.gv = add nuw i32 %.val.i.i701, 1
  store i32 %i.gv, ptr %i.gq, align 4, !tbaa !14
  br label %lean_inc.exit469

bb.cs:                                            ; preds = %bb.cq
  %.not.i.i702 = icmp eq i32 %.val.i.i701, 0
  br i1 %.not.i.i702, label %lean_inc.exit469, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.gw = atomicrmw sub ptr %i.gq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit469

lean_inc.exit469:                                 ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cp
  br i1 %.not.i697, label %bb.cu, label %lean_dec.exit530

bb.cu:                                            ; preds = %lean_inc.exit469
  %i.gx = load i32, ptr %i.gh, align 8, !tbaa !14 ; 3 uses
  %i.gy = icmp sgt i32 %i.gx, 1
  br i1 %i.gy, label %bb.cv, label %bb.cw, !prof !16

bb.cv:                                            ; preds = %bb.cu
  %i.gz = add nsw i32 %i.gx, -1
  store i32 %i.gz, ptr %i.gh, align 8, !tbaa !14
  br label %lean_dec.exit530

bb.cw:                                            ; preds = %bb.cu
  %.not.i546 = icmp eq i32 %i.gx, 0
  br i1 %.not.i546, label %lean_dec.exit530, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gh) #6
  br label %lean_dec.exit530

lean_dec.exit530:                                 ; preds = %lean_inc.exit469, %bb.cv, %bb.cw, %bb.cx, %bb.co
  %.0444 = phi ptr [ %i.gh, %bb.co ], [ inttoptr (i64 1 to ptr), %bb.cx ], [ inttoptr (i64 1 to ptr), %bb.cw ], [ inttoptr (i64 1 to ptr), %bb.cv ], [ inttoptr (i64 1 to ptr), %lean_inc.exit469 ]
  %i.ha = tail call ptr @lean_alloc_object(i64 noundef 40) #6 ; 8 uses
  store i32 1, ptr %i.ha, align 4, !tbaa !14
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 4 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = and i32 %i.hc, 65535
  %i.he = or disjoint i32 %i.hd, -184549376
  store i32 %i.he, ptr %i.hb, align 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__1___at___00Lean_Elab_Command_elabEvalCoreUnsafe_spec__8_spec__12___redArg___lam__2___boxed, ptr %i.hf, align 8, !tbaa !10
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store i16 5, ptr %i.hg, align 8, !tbaa !22
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 18
  store i16 2, ptr %i.hh, align 2, !tbaa !22
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  store ptr %i.gq, ptr %i.hi, align 8, !tbaa !10
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  store ptr %3, ptr %i.hj, align 8, !tbaa !10
  br i1 %i.bh, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %lean_dec.exit530
  %i.hk = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %bb.cz

bb.cz:                                            ; preds = %lean_dec.exit530, %bb.cy
  %.sink869 = phi ptr [ %i.hk, %bb.cy ], [ %.0447, %lean_dec.exit530 ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sink869, i64 8
  store ptr %i.br, ptr %i.hl, align 8, !tbaa !10
  %i.hm = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store ptr %i.ha, ptr %i.hn, align 8, !tbaa !10
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store ptr %.sink869, ptr %i.ho, align 8, !tbaa !10
  %i.hp = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store ptr %i.hm, ptr %i.hq, align 8, !tbaa !10
  br i1 %i.gr, label %lean_dec.exit528.sink.split, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.hr = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit528.sink.split

bb.db:                                            ; preds = %lean_obj_tag.exit700
  %i.hs = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.ht = icmp sgt i32 %i.hs, 1
  br i1 %i.ht, label %bb.dc, label %bb.dd, !prof !16

bb.dc:                                            ; preds = %bb.db
  %i.hu = add nsw i32 %i.hs, -1
  store i32 %i.hu, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit629

bb.dd:                                            ; preds = %bb.db
  %.not.i628 = icmp eq i32 %i.hs, 0
  br i1 %.not.i628, label %lean_dec_ref.exit629, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit629

lean_dec_ref.exit629:                             ; preds = %bb.dc, %bb.dd, %bb.de
  %i.hv = ptrtoint ptr %.0447 to i64
  %i.hw = and i64 %i.hv, 1
  %.not.i704 = icmp eq i64 %i.hw, 0
  br i1 %.not.i704, label %bb.df, label %lean_del_object.exit705

bb.df:                                            ; preds = %lean_dec_ref.exit629
  tail call void @lean_free_object(ptr noundef nonnull %.0447) #6
  br label %lean_del_object.exit705

lean_del_object.exit705:                          ; preds = %lean_dec_ref.exit629, %bb.df
  %i.hx = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.hy = icmp sgt i32 %i.hx, 1
  br i1 %i.hy, label %bb.dg, label %bb.dh, !prof !16

bb.dg:                                            ; preds = %lean_del_object.exit705
  %i.hz = add nsw i32 %i.hx, -1
  store i32 %i.hz, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit627

bb.dh:                                            ; preds = %lean_del_object.exit705
  %.not.i626 = icmp eq i32 %i.hx, 0
  br i1 %.not.i626, label %lean_dec_ref.exit627, label %bb.di

bb.di:                                            ; preds = %bb.dh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit627

lean_dec_ref.exit627:                             ; preds = %bb.dg, %bb.dh, %bb.di
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !10 ; 5 uses
  %.val641 = load i32, ptr %i.gh, align 8, !tbaa !14
  %i.ic = icmp eq i32 %.val641, 1
  br i1 %i.ic, label %lean_dec.exit528, label %bb.dj

bb.dj:                                            ; preds = %lean_dec_ref.exit627
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = and i64 %i.id, 1
  %.not.i466 = icmp eq i64 %i.ie, 0
  br i1 %.not.i466, label %bb.dk, label %lean_inc.exit467

bb.dk:                                            ; preds = %bb.dj
  %.val.i.i706 = load i32, ptr %i.ib, align 4, !tbaa !14 ; 3 uses
  %i.if = icmp sgt i32 %.val.i.i706, 0
  br i1 %i.if, label %bb.dl, label %bb.dm, !prof !16

bb.dl:                                            ; preds = %bb.dk
  %i.ig = add nuw i32 %.val.i.i706, 1
  store i32 %i.ig, ptr %i.ib, align 4, !tbaa !14
  br label %lean_inc.exit467

bb.dm:                                            ; preds = %bb.dk
  %.not.i.i707 = icmp eq i32 %.val.i.i706, 0
  br i1 %.not.i.i707, label %lean_inc.exit467, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ih = atomicrmw sub ptr %i.ib, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit467

lean_inc.exit467:                                 ; preds = %bb.dn, %bb.dm, %bb.dl, %bb.dj
  br i1 %.not.i697, label %bb.do, label %bb.ds

bb.do:                                            ; preds = %lean_inc.exit467
  %i.ii = load i32, ptr %i.gh, align 8, !tbaa !14 ; 3 uses
  %i.ij = icmp sgt i32 %i.ii, 1
  br i1 %i.ij, label %bb.dp, label %bb.dq, !prof !16

bb.dp:                                            ; preds = %bb.do
  %i.ik = add nsw i32 %i.ii, -1
  store i32 %i.ik, ptr %i.gh, align 8, !tbaa !14
  br label %bb.ds

bb.dq:                                            ; preds = %bb.do
  %.not.i548 = icmp eq i32 %i.ii, 0
  br i1 %.not.i548, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gh) #6
  br label %bb.ds

bb.ds:                                            ; preds = %lean_inc.exit467, %bb.dp, %bb.dq, %bb.dr
  %i.il = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit528.sink.split

bb.dt:                                            ; preds = %lean_obj_tag.exit693
  br i1 %.not.i478, label %bb.du, label %lean_dec.exit526

bb.du:                                            ; preds = %bb.dt
  %i.im = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.in = icmp sgt i32 %i.im, 1
  br i1 %i.in, label %bb.dv, label %bb.dw, !prof !16

bb.dv:                                            ; preds = %bb.du
  %i.io = add nsw i32 %i.im, -1
  store i32 %i.io, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit526

bb.dw:                                            ; preds = %bb.du
  %.not.i550 = icmp eq i32 %i.im, 0
  br i1 %.not.i550, label %lean_dec.exit526, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit526

lean_dec.exit526:                                 ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.dt
  %i.ip = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.iq = icmp sgt i32 %i.ip, 1
  br i1 %i.iq, label %bb.dy, label %bb.dz, !prof !16

bb.dy:                                            ; preds = %lean_dec.exit526
  %i.ir = add nsw i32 %i.ip, -1
  store i32 %i.ir, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit625

bb.dz:                                            ; preds = %lean_dec.exit526
  %.not.i624 = icmp eq i32 %i.ip, 0
  br i1 %.not.i624, label %lean_dec_ref.exit625, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit625

lean_dec_ref.exit625:                             ; preds = %bb.dy, %bb.dz, %bb.ea
  %i.is = ptrtoint ptr %.0447 to i64
  %i.it = and i64 %i.is, 1
  %.not.i709 = icmp eq i64 %i.it, 0
  br i1 %.not.i709, label %bb.eb, label %lean_del_object.exit710

bb.eb:                                            ; preds = %lean_dec_ref.exit625
  tail call void @lean_free_object(ptr noundef nonnull %.0447) #6
  br label %lean_del_object.exit710

lean_del_object.exit710:                          ; preds = %lean_dec_ref.exit625, %bb.eb
  %i.iu = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.iv = icmp sgt i32 %i.iu, 1
  br i1 %i.iv, label %bb.ec, label %bb.ed, !prof !16

bb.ec:                                            ; preds = %lean_del_object.exit710
  %i.iw = add nsw i32 %i.iu, -1
  store i32 %i.iw, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit623

bb.ed:                                            ; preds = %lean_del_object.exit710
  %.not.i622 = icmp eq i32 %i.iu, 0
  br i1 %.not.i622, label %lean_dec_ref.exit623, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit623

lean_dec_ref.exit623:                             ; preds = %bb.ec, %bb.ed, %bb.ee
  %i.ix = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !10 ; 5 uses
  %.val640 = load i32, ptr %i.fh, align 8, !tbaa !14
  %i.iz = icmp eq i32 %.val640, 1
  br i1 %i.iz, label %lean_dec.exit528, label %bb.ef

bb.ef:                                            ; preds = %lean_dec_ref.exit623
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = and i64 %i.ja, 1
  %.not.i464 = icmp eq i64 %i.jb, 0
  br i1 %.not.i464, label %bb.eg, label %lean_inc.exit465

bb.eg:                                            ; preds = %bb.ef
  %.val.i.i711 = load i32, ptr %i.iy, align 4, !tbaa !14 ; 3 uses
  %i.jc = icmp sgt i32 %.val.i.i711, 0
  br i1 %i.jc, label %bb.eh, label %bb.ei, !prof !16

bb.eh:                                            ; preds = %bb.eg
  %i.jd = add nuw i32 %.val.i.i711, 1
  store i32 %i.jd, ptr %i.iy, align 4, !tbaa !14
  br label %lean_inc.exit465

bb.ei:                                            ; preds = %bb.eg
  %.not.i.i712 = icmp eq i32 %.val.i.i711, 0
  br i1 %.not.i.i712, label %lean_inc.exit465, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.je = atomicrmw sub ptr %i.iy, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit465

lean_inc.exit465:                                 ; preds = %bb.ej, %bb.ei, %bb.eh, %bb.ef
  br i1 %.not.i690, label %bb.ek, label %bb.eo

bb.ek:                                            ; preds = %lean_inc.exit465
  %i.jf = load i32, ptr %i.fh, align 8, !tbaa !14 ; 3 uses
  %i.jg = icmp sgt i32 %i.jf, 1
  br i1 %i.jg, label %bb.el, label %bb.em, !prof !16

bb.el:                                            ; preds = %bb.ek
  %i.jh = add nsw i32 %i.jf, -1
  store i32 %i.jh, ptr %i.fh, align 8, !tbaa !14
  br label %bb.eo

bb.em:                                            ; preds = %bb.ek
  %.not.i552 = icmp eq i32 %i.jf, 0
  br i1 %.not.i552, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fh) #6
  br label %bb.eo

bb.eo:                                            ; preds = %lean_inc.exit465, %bb.el, %bb.em, %bb.en
  %i.ji = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit528.sink.split

bb.ep:                                            ; preds = %lean_obj_tag.exit686
  br i1 %.not.i478, label %bb.eq, label %lean_dec.exit522

bb.eq:                                            ; preds = %bb.ep
  %i.jj = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.jk = icmp sgt i32 %i.jj, 1
  br i1 %i.jk, label %bb.er, label %bb.es, !prof !16

bb.er:                                            ; preds = %bb.eq
  %i.jl = add nsw i32 %i.jj, -1
  store i32 %i.jl, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit522

bb.es:                                            ; preds = %bb.eq
  %.not.i554 = icmp eq i32 %i.jj, 0
  br i1 %.not.i554, label %lean_dec.exit522, label %bb.et

bb.et:                                            ; preds = %bb.es
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit522

lean_dec.exit522:                                 ; preds = %bb.et, %bb.es, %bb.er, %bb.ep
  %i.jm = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.jn = icmp sgt i32 %i.jm, 1
  br i1 %i.jn, label %bb.eu, label %bb.ev, !prof !16

bb.eu:                                            ; preds = %lean_dec.exit522
  %i.jo = add nsw i32 %i.jm, -1
  store i32 %i.jo, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit621

bb.ev:                                            ; preds = %lean_dec.exit522
  %.not.i620 = icmp eq i32 %i.jm, 0
  br i1 %.not.i620, label %lean_dec_ref.exit621, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit621

lean_dec_ref.exit621:                             ; preds = %bb.eu, %bb.ev, %bb.ew
  %i.jp = ptrtoint ptr %.0447 to i64
  %i.jq = and i64 %i.jp, 1
  %.not.i714 = icmp eq i64 %i.jq, 0
  br i1 %.not.i714, label %bb.ex, label %lean_del_object.exit715

bb.ex:                                            ; preds = %lean_dec_ref.exit621
  tail call void @lean_free_object(ptr noundef nonnull %.0447) #6
  br label %lean_del_object.exit715

lean_del_object.exit715:                          ; preds = %lean_dec_ref.exit621, %bb.ex
  %i.jr = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.js = icmp sgt i32 %i.jr, 1
  br i1 %i.js, label %bb.ey, label %bb.ez, !prof !16

bb.ey:                                            ; preds = %lean_del_object.exit715
  %i.jt = add nsw i32 %i.jr, -1
  store i32 %i.jt, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit619

bb.ez:                                            ; preds = %lean_del_object.exit715
  %.not.i618 = icmp eq i32 %i.jr, 0
  br i1 %.not.i618, label %lean_dec_ref.exit619, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit619

lean_dec_ref.exit619:                             ; preds = %bb.ey, %bb.ez, %bb.fa
  %i.ju = ptrtoint ptr %1 to i64
  %i.jv = and i64 %i.ju, 1
  %.not.i519 = icmp eq i64 %i.jv, 0
  br i1 %.not.i519, label %bb.fb, label %lean_dec.exit520

bb.fb:                                            ; preds = %lean_dec_ref.exit619
  %i.jw = load i32, ptr %1, align 4, !tbaa !14    ; 3 uses
  %i.jx = icmp sgt i32 %i.jw, 1
  br i1 %i.jx, label %bb.fc, label %bb.fd, !prof !16

bb.fc:                                            ; preds = %bb.fb
  %i.jy = add nsw i32 %i.jw, -1
  store i32 %i.jy, ptr %1, align 4, !tbaa !14
  br label %lean_dec.exit520

bb.fd:                                            ; preds = %bb.fb
  %.not.i556 = icmp eq i32 %i.jw, 0
  br i1 %.not.i556, label %lean_dec.exit520, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit520

lean_dec.exit520:                                 ; preds = %bb.fe, %bb.fd, %bb.fc, %lean_dec_ref.exit619
  %i.jz = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !10 ; 5 uses
  %.val639 = load i32, ptr %i.es, align 8, !tbaa !14
  %i.kb = icmp eq i32 %.val639, 1
  br i1 %i.kb, label %lean_dec.exit528, label %bb.ff

bb.ff:                                            ; preds = %lean_dec.exit520
  %i.kc = ptrtoint ptr %i.ka to i64
  %i.kd = and i64 %i.kc, 1
  %.not.i462 = icmp eq i64 %i.kd, 0
  br i1 %.not.i462, label %bb.fg, label %lean_inc.exit463

bb.fg:                                            ; preds = %bb.ff
  %.val.i.i716 = load i32, ptr %i.ka, align 4, !tbaa !14 ; 3 uses
  %i.ke = icmp sgt i32 %.val.i.i716, 0
  br i1 %i.ke, label %bb.fh, label %bb.fi, !prof !16

bb.fh:                                            ; preds = %bb.fg
  %i.kf = add nuw i32 %.val.i.i716, 1
  store i32 %i.kf, ptr %i.ka, align 4, !tbaa !14
  br label %lean_inc.exit463

bb.fi:                                            ; preds = %bb.fg
  %.not.i.i717 = icmp eq i32 %.val.i.i716, 0
  br i1 %.not.i.i717, label %lean_inc.exit463, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.kg = atomicrmw sub ptr %i.ka, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit463

lean_inc.exit463:                                 ; preds = %bb.fj, %bb.fi, %bb.fh, %bb.ff
  br i1 %.not.i683, label %bb.fk, label %bb.fo

bb.fk:                                            ; preds = %lean_inc.exit463
  %i.kh = load i32, ptr %i.es, align 8, !tbaa !14 ; 3 uses
  %i.ki = icmp sgt i32 %i.kh, 1
  br i1 %i.ki, label %bb.fl, label %bb.fm, !prof !16

bb.fl:                                            ; preds = %bb.fk
  %i.kj = add nsw i32 %i.kh, -1
  store i32 %i.kj, ptr %i.es, align 8, !tbaa !14
  br label %bb.fo

bb.fm:                                            ; preds = %bb.fk
  %.not.i558 = icmp eq i32 %i.kh, 0
  br i1 %.not.i558, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.es) #6
  br label %bb.fo

bb.fo:                                            ; preds = %lean_inc.exit463, %bb.fl, %bb.fm, %bb.fn
  %i.kk = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit528.sink.split

bb.fp:                                            ; preds = %lean_obj_tag.exit679
  br i1 %.not.i478, label %bb.fq, label %lean_dec.exit516

bb.fq:                                            ; preds = %bb.fp
  %i.kl = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.km = icmp sgt i32 %i.kl, 1
  br i1 %i.km, label %bb.fr, label %bb.fs, !prof !16

bb.fr:                                            ; preds = %bb.fq
  %i.kn = add nsw i32 %i.kl, -1
  store i32 %i.kn, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit516

bb.fs:                                            ; preds = %bb.fq
  %.not.i560 = icmp eq i32 %i.kl, 0
  br i1 %.not.i560, label %lean_dec.exit516, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit516

lean_dec.exit516:                                 ; preds = %bb.ft, %bb.fs, %bb.fr, %bb.fp
  %i.ko = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.kp = icmp sgt i32 %i.ko, 1
  br i1 %i.kp, label %bb.fu, label %bb.fv, !prof !16

bb.fu:                                            ; preds = %lean_dec.exit516
  %i.kq = add nsw i32 %i.ko, -1
  store i32 %i.kq, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit617

bb.fv:                                            ; preds = %lean_dec.exit516
  %.not.i616 = icmp eq i32 %i.ko, 0
  br i1 %.not.i616, label %lean_dec_ref.exit617, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit617

lean_dec_ref.exit617:                             ; preds = %bb.fu, %bb.fv, %bb.fw
  %i.kr = ptrtoint ptr %.0447 to i64
  %i.ks = and i64 %i.kr, 1
  %.not.i719 = icmp eq i64 %i.ks, 0
  br i1 %.not.i719, label %bb.fx, label %lean_del_object.exit720

bb.fx:                                            ; preds = %lean_dec_ref.exit617
  tail call void @lean_free_object(ptr noundef nonnull %.0447) #6
  br label %lean_del_object.exit720

lean_del_object.exit720:                          ; preds = %lean_dec_ref.exit617, %bb.fx
  %i.kt = ptrtoint ptr %i.bg to i64
  %i.ku = and i64 %i.kt, 1
  %.not.i513 = icmp eq i64 %i.ku, 0
  br i1 %.not.i513, label %bb.fy, label %lean_dec.exit514

bb.fy:                                            ; preds = %lean_del_object.exit720
  %i.kv = load i32, ptr %i.bg, align 4, !tbaa !14 ; 3 uses
  %i.kw = icmp sgt i32 %i.kv, 1
  br i1 %i.kw, label %bb.fz, label %bb.ga, !prof !16

bb.fz:                                            ; preds = %bb.fy
  %i.kx = add nsw i32 %i.kv, -1
  store i32 %i.kx, ptr %i.bg, align 4, !tbaa !14
  br label %lean_dec.exit514

bb.ga:                                            ; preds = %bb.fy
  %.not.i562 = icmp eq i32 %i.kv, 0
  br i1 %.not.i562, label %lean_dec.exit514, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bg) #6
  br label %lean_dec.exit514

lean_dec.exit514:                                 ; preds = %bb.gb, %bb.ga, %bb.fz, %lean_del_object.exit720
  %i.ky = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.kz = icmp sgt i32 %i.ky, 1
  br i1 %i.kz, label %bb.gc, label %bb.gd, !prof !16

bb.gc:                                            ; preds = %lean_dec.exit514
  %i.la = add nsw i32 %i.ky, -1
  store i32 %i.la, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit615

bb.gd:                                            ; preds = %lean_dec.exit514
  %.not.i614 = icmp eq i32 %i.ky, 0
  br i1 %.not.i614, label %lean_dec_ref.exit615, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit615

lean_dec_ref.exit615:                             ; preds = %bb.gc, %bb.gd, %bb.ge
  %i.lb = ptrtoint ptr %1 to i64
  %i.lc = and i64 %i.lb, 1
  %.not.i511 = icmp eq i64 %i.lc, 0
  br i1 %.not.i511, label %bb.gf, label %lean_dec.exit512

bb.gf:                                            ; preds = %lean_dec_ref.exit615
  %i.ld = load i32, ptr %1, align 4, !tbaa !14    ; 3 uses
  %i.le = icmp sgt i32 %i.ld, 1
  br i1 %i.le, label %bb.gg, label %bb.gh, !prof !16

bb.gg:                                            ; preds = %bb.gf
  %i.lf = add nsw i32 %i.ld, -1
  store i32 %i.lf, ptr %1, align 4, !tbaa !14
  br label %lean_dec.exit512

bb.gh:                                            ; preds = %bb.gf
  %.not.i564 = icmp eq i32 %i.ld, 0
  br i1 %.not.i564, label %lean_dec.exit512, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit512

lean_dec.exit512:                                 ; preds = %bb.gi, %bb.gh, %bb.gg, %lean_dec_ref.exit615
  %i.lg = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !10 ; 5 uses
  %.val638 = load i32, ptr %i.du, align 8, !tbaa !14
  %i.li = icmp eq i32 %.val638, 1
  br i1 %i.li, label %lean_dec.exit528, label %bb.gj

bb.gj:                                            ; preds = %lean_dec.exit512
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = and i64 %i.lj, 1
  %.not.i460 = icmp eq i64 %i.lk, 0
  br i1 %.not.i460, label %bb.gk, label %lean_inc.exit461

bb.gk:                                            ; preds = %bb.gj
  %.val.i.i721 = load i32, ptr %i.lh, align 4, !tbaa !14 ; 3 uses
  %i.ll = icmp sgt i32 %.val.i.i721, 0
  br i1 %i.ll, label %bb.gl, label %bb.gm, !prof !16

bb.gl:                                            ; preds = %bb.gk
  %i.lm = add nuw i32 %.val.i.i721, 1
  store i32 %i.lm, ptr %i.lh, align 4, !tbaa !14
  br label %lean_inc.exit461

bb.gm:                                            ; preds = %bb.gk
  %.not.i.i722 = icmp eq i32 %.val.i.i721, 0
  br i1 %.not.i.i722, label %lean_inc.exit461, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.ln = atomicrmw sub ptr %i.lh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit461

lean_inc.exit461:                                 ; preds = %bb.gn, %bb.gm, %bb.gl, %bb.gj
  br i1 %.not.i676, label %bb.go, label %bb.gs

bb.go:                                            ; preds = %lean_inc.exit461
  %i.lo = load i32, ptr %i.du, align 8, !tbaa !14 ; 3 uses
  %i.lp = icmp sgt i32 %i.lo, 1
  br i1 %i.lp, label %bb.gp, label %bb.gq, !prof !16

bb.gp:                                            ; preds = %bb.go
  %i.lq = add nsw i32 %i.lo, -1
  store i32 %i.lq, ptr %i.du, align 8, !tbaa !14
  br label %bb.gs

bb.gq:                                            ; preds = %bb.go
  %.not.i566 = icmp eq i32 %i.lo, 0
  br i1 %.not.i566, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.du) #6
  br label %bb.gs

bb.gs:                                            ; preds = %lean_inc.exit461, %bb.gp, %bb.gq, %bb.gr
  %i.lr = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit528.sink.split

bb.gt:                                            ; preds = %lean_dec_ref_known.exit
  %i.ls = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.lt = icmp sgt i32 %i.ls, 1
  br i1 %i.lt, label %bb.gu, label %bb.gv, !prof !16

bb.gu:                                            ; preds = %bb.gt
  %i.lu = add nsw i32 %i.ls, -1
  store i32 %i.lu, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit613

bb.gv:                                            ; preds = %bb.gt
  %.not.i612 = icmp eq i32 %i.ls, 0
  br i1 %.not.i612, label %lean_dec_ref.exit613, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit613

lean_dec_ref.exit613:                             ; preds = %bb.gu, %bb.gv, %bb.gw
  %i.lv = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.lw = icmp sgt i32 %i.lv, 1
  br i1 %i.lw, label %bb.gx, label %bb.gy, !prof !16

bb.gx:                                            ; preds = %lean_dec_ref.exit613
  %i.lx = add nsw i32 %i.lv, -1
  store i32 %i.lx, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit611

bb.gy:                                            ; preds = %lean_dec_ref.exit613
  %.not.i610 = icmp eq i32 %i.lv, 0
  br i1 %.not.i610, label %lean_dec_ref.exit611, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit611

lean_dec_ref.exit611:                             ; preds = %bb.gx, %bb.gy, %bb.gz
  %i.ly = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.lz = icmp sgt i32 %i.ly, 1
  br i1 %i.lz, label %bb.ha, label %bb.hb, !prof !16
end_hunk_4
begin_hunk_5_@l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__1___at___00Lean_Elab_Command_elabEvalCoreUnsafe_spec__8_spec__15___redArg:bb.a
  %i.bk = icmp sgt i32 %.val.i.i657, 0
  br i1 %i.bk, label %bb.v, label %bb.w, !prof !16

bb.v:                                             ; preds = %bb.u
  %i.bl = add nuw i32 %.val.i.i657, 1
  store i32 %i.bl, ptr %i.bg, align 4, !tbaa !14
  br label %lean_inc.exit485

bb.w:                                             ; preds = %bb.u
  %.not.i.i658 = icmp eq i32 %.val.i.i657, 0
  br i1 %.not.i.i658, label %lean_inc.exit485, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = atomicrmw sub ptr %i.bg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit485

lean_inc.exit485:                                 ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  br i1 %.not.i652, label %bb.y, label %lean_dec.exit540

bb.y:                                             ; preds = %lean_inc.exit485
  %i.bn = load i32, ptr %i.ar, align 8, !tbaa !14 ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.z, label %bb.aa, !prof !16

bb.z:                                             ; preds = %bb.y
  %i.bp = add nsw i32 %i.bn, -1
  store i32 %i.bp, ptr %i.ar, align 8, !tbaa !14
  br label %lean_dec.exit540

bb.aa:                                            ; preds = %bb.y
  %.not.i544 = icmp eq i32 %i.bn, 0
  br i1 %.not.i544, label %lean_dec.exit540, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ar) #6
  br label %lean_dec.exit540

lean_dec.exit540:                                 ; preds = %lean_inc.exit485, %bb.z, %bb.aa, %bb.ab, %lean_del_object.exit
  %.0451 = phi ptr [ %i.ar, %lean_del_object.exit ], [ inttoptr (i64 1 to ptr), %bb.ab ], [ inttoptr (i64 1 to ptr), %bb.aa ], [ inttoptr (i64 1 to ptr), %bb.z ], [ inttoptr (i64 1 to ptr), %lean_inc.exit485 ] ; 16 uses
  %i.bq = tail call ptr @l_Lean_Expr_appFn_x21(ptr noundef %i.bg) #6 ; 4 uses
  %i.br = tail call ptr @l_Lean_Expr_appArg_x21(ptr noundef %i.bq) #6 ; 27 uses
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !14 ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 1
  br i1 %i.bt, label %bb.ac, label %bb.ad, !prof !16

bb.ac:                                            ; preds = %lean_dec.exit540
  %i.bu = add nsw i32 %i.bs, -1
  store i32 %i.bu, ptr %i.bq, align 4, !tbaa !14
  br label %lean_dec_ref.exit635

bb.ad:                                            ; preds = %lean_dec.exit540
  %.not.i634 = icmp eq i32 %i.bs, 0
  br i1 %.not.i634, label %lean_dec_ref.exit635, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bq) #6
  br label %lean_dec_ref.exit635

lean_dec_ref.exit635:                             ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bv = load atomic i32, ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6_once seq_cst, align 4, !tbaa !18
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.af, label %bb.ag, !prof !16

bb.af:                                            ; preds = %lean_dec_ref.exit635
  %i.bx = load ptr, ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6, align 8, !tbaa !10
  br label %lean_obj_once.exit661

bb.ag:                                            ; preds = %lean_dec_ref.exit635
  %i.by = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6, ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6_once, ptr noundef nonnull @_init_l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6) #6
  br label %lean_obj_once.exit661

lean_obj_once.exit661:                            ; preds = %bb.af, %bb.ag
  %.0.i660 = phi ptr [ %i.bx, %bb.af ], [ %i.by, %bb.ag ]
  %.val.i.i662 = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.bz = icmp sgt i32 %.val.i.i662, 0
  br i1 %i.bz, label %bb.ah, label %bb.ai, !prof !16

bb.ah:                                            ; preds = %lean_obj_once.exit661
  %i.ca = add nuw i32 %.val.i.i662, 1
  store i32 %i.ca, ptr %i.br, align 4, !tbaa !14
  br label %lean_inc_ref.exit664

bb.ai:                                            ; preds = %lean_obj_once.exit661
  %.not.i.i663 = icmp eq i32 %.val.i.i662, 0
  br i1 %.not.i.i663, label %lean_inc_ref.exit664, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cb = atomicrmw sub ptr %i.br, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit664

lean_inc_ref.exit664:                             ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.cc = tail call ptr @l_Lean_Meta_isExprDefEq(ptr noundef nonnull %i.br, ptr noundef %.0.i660, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #6 ; 13 uses
  %i.cd = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.ce = and i64 %i.cd, 1
  %.not.i665 = icmp eq i64 %i.ce, 0               ; 2 uses
  br i1 %.not.i665, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %lean_inc_ref.exit664
  %i.cf = lshr i64 %i.cd, 1
  %i.cg = trunc i64 %i.cf to i32
  br label %lean_obj_tag.exit668

bb.al:                                            ; preds = %lean_inc_ref.exit664
  %i.ch = getelementptr i8, ptr %i.cc, i64 4
  %.val.i667 = load i32, ptr %i.ch, align 4
  %i.ci = lshr i32 %.val.i667, 24
  br label %lean_obj_tag.exit668

lean_obj_tag.exit668:                             ; preds = %bb.ak, %bb.al
  %.0.i666 = phi i32 [ %i.cg, %bb.ak ], [ %i.ci, %bb.al ]
  %i.cj = icmp eq i32 %.0.i666, 0
  br i1 %i.cj, label %bb.am, label %bb.jl

bb.am:                                            ; preds = %lean_obj_tag.exit668
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !10 ; 32 uses
  %i.cm = ptrtoint ptr %i.cl to i64               ; 3 uses
  %i.cn = and i64 %i.cm, 1
  %.not.i482 = icmp eq i64 %i.cn, 0               ; 10 uses
  br i1 %.not.i482, label %bb.an, label %lean_inc.exit483

bb.an:                                            ; preds = %bb.am
  %.val.i.i669 = load i32, ptr %i.cl, align 4, !tbaa !14 ; 3 uses
  %i.co = icmp sgt i32 %.val.i.i669, 0
  br i1 %i.co, label %bb.ao, label %bb.ap, !prof !16

bb.ao:                                            ; preds = %bb.an
  %i.cp = add nuw i32 %.val.i.i669, 1
  store i32 %i.cp, ptr %i.cl, align 4, !tbaa !14
  br label %lean_inc.exit483

bb.ap:                                            ; preds = %bb.an
  %.not.i.i670 = icmp eq i32 %.val.i.i669, 0
  br i1 %.not.i.i670, label %lean_inc.exit483, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cq = atomicrmw sub ptr %i.cl, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit483

lean_inc.exit483:                                 ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am
  %.val.i672 = load i32, ptr %i.cc, align 8, !tbaa !14 ; 4 uses
  %i.cr = icmp eq i32 %.val.i672, 1
  br i1 %i.cr, label %.preheader.i, label %bb.av

.preheader.i:                                     ; preds = %lean_inc.exit483
  %i.cs = load ptr, ptr %i.ck, align 8, !tbaa !10 ; 4 uses
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = and i64 %i.ct, 1
  %.not.i.i673 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i673, label %bb.ar, label %lean_dec.exit.i

bb.ar:                                            ; preds = %.preheader.i
  %i.cv = load i32, ptr %i.cs, align 4, !tbaa !14 ; 3 uses
  %i.cw = icmp sgt i32 %i.cv, 1
  br i1 %i.cw, label %bb.as, label %bb.at, !prof !16

bb.as:                                            ; preds = %bb.ar
  %i.cx = add nsw i32 %i.cv, -1
  store i32 %i.cx, ptr %i.cs, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.at:                                            ; preds = %bb.ar
  %.not.i7.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cs) #6
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.au, %bb.at, %bb.as, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.cc) #6
  br label %lean_dec_ref_known.exit

bb.av:                                            ; preds = %lean_inc.exit483
  %i.cy = icmp sgt i32 %.val.i672, 1
  br i1 %i.cy, label %bb.aw, label %bb.ax, !prof !16

bb.aw:                                            ; preds = %bb.av
  %i.cz = add nsw i32 %.val.i672, -1
  store i32 %i.cz, ptr %i.cc, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.ax:                                            ; preds = %bb.av
  %.not.i8.i = icmp eq i32 %.val.i672, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cc) #6
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.aw, %bb.ax, %bb.ay
  %i.da = lshr i64 %i.cm, 1
  %i.db = and i64 %i.cm, 510
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %bb.az, label %bb.gt

bb.az:                                            ; preds = %lean_dec_ref_known.exit
  br i1 %.not.i482, label %bb.ba, label %lean_inc.exit481

bb.ba:                                            ; preds = %bb.az
  %.val.i.i674 = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.dd = icmp sgt i32 %.val.i.i674, 0
  br i1 %i.dd, label %bb.bb, label %bb.bc, !prof !16

bb.bb:                                            ; preds = %bb.ba
  %i.de = add nuw i32 %.val.i.i674, 1
  store i32 %i.de, ptr %i.cl, align 512, !tbaa !14
  br label %lean_inc.exit481

bb.bc:                                            ; preds = %bb.ba
  %.not.i.i675 = icmp eq i32 %.val.i.i674, 0
  br i1 %.not.i.i675, label %lean_inc.exit481, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.df = atomicrmw sub ptr %i.cl, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit481

lean_inc.exit481:                                 ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.az
  %i.dg = tail call ptr @lean_alloc_object(i64 noundef 48) #6 ; 9 uses
  store i32 1, ptr %i.dg, align 4, !tbaa !14
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = and i32 %i.di, 65535
  %i.dk = or disjoint i32 %i.dj, -184549376
  store i32 %i.dk, ptr %i.dh, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___lam__1___boxed, ptr %i.dl, align 8, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i16 11, ptr %i.dm, align 8, !tbaa !22
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 18
  store i16 3, ptr %i.dn, align 2, !tbaa !22
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store ptr %0, ptr %i.do, align 8, !tbaa !10
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store ptr %i.cl, ptr %i.dp, align 8, !tbaa !10
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store ptr inttoptr (i64 3 to ptr), ptr %i.dq, align 8, !tbaa !10
  %.val.i.i677 = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.dr = icmp sgt i32 %.val.i.i677, 0
  br i1 %i.dr, label %bb.be, label %bb.bf, !prof !16

bb.be:                                            ; preds = %lean_inc.exit481
  %i.ds = add nuw i32 %.val.i.i677, 1
  store i32 %i.ds, ptr %i.br, align 4, !tbaa !14
  br label %lean_inc_ref.exit679

bb.bf:                                            ; preds = %lean_inc.exit481
  %.not.i.i678 = icmp eq i32 %.val.i.i677, 0
  br i1 %.not.i.i678, label %lean_inc_ref.exit679, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dt = atomicrmw sub ptr %i.br, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit679

lean_inc_ref.exit679:                             ; preds = %bb.be, %bb.bf, %bb.bg
  %i.du = tail call ptr @l_Lean_Meta_withLocalDecl___at___00Lean_Meta_withLocalDeclD___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__1___at___00Lean_Elab_Command_elabEvalCoreUnsafe_spec__8_spec__17_spec__22___redArg(ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__8_value, i8 noundef zeroext 0, ptr noundef nonnull %i.br, ptr noundef nonnull %i.dg, i8 noundef zeroext 0, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) ; 10 uses
  %i.dv = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dw = and i64 %i.dv, 1
  %.not.i680 = icmp eq i64 %i.dw, 0               ; 2 uses
  br i1 %.not.i680, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %lean_inc_ref.exit679
  %i.dx = lshr i64 %i.dv, 1
  %i.dy = trunc i64 %i.dx to i32
  br label %lean_obj_tag.exit683

bb.bi:                                            ; preds = %lean_inc_ref.exit679
  %i.dz = getelementptr i8, ptr %i.du, i64 4
  %.val.i682 = load i32, ptr %i.dz, align 4
  %i.ea = lshr i32 %.val.i682, 24
  br label %lean_obj_tag.exit683

lean_obj_tag.exit683:                             ; preds = %bb.bh, %bb.bi
  %.0.i681 = phi i32 [ %i.dy, %bb.bh ], [ %i.ea, %bb.bi ]
  %i.eb = icmp eq i32 %.0.i681, 0
  br i1 %i.eb, label %bb.bj, label %bb.fp

bb.bj:                                            ; preds = %lean_obj_tag.exit683
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !10 ; 5 uses
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = and i64 %i.ee, 1
  %.not.i478 = icmp eq i64 %i.ef, 0
  br i1 %.not.i478, label %bb.bk, label %lean_inc.exit479

bb.bk:                                            ; preds = %bb.bj
  %.val.i.i684 = load i32, ptr %i.ed, align 4, !tbaa !14 ; 3 uses
  %i.eg = icmp sgt i32 %.val.i.i684, 0
  br i1 %i.eg, label %bb.bl, label %bb.bm, !prof !16

bb.bl:                                            ; preds = %bb.bk
  %i.eh = add nuw i32 %.val.i.i684, 1
  store i32 %i.eh, ptr %i.ed, align 4, !tbaa !14
  br label %lean_inc.exit479

bb.bm:                                            ; preds = %bb.bk
  %.not.i.i685 = icmp eq i32 %.val.i.i684, 0
  br i1 %.not.i.i685, label %lean_inc.exit479, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ei = atomicrmw sub ptr %i.ed, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit479

lean_inc.exit479:                                 ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bj
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.du, i32 noundef 1)
  %i.ej = tail call ptr @lean_alloc_object(i64 noundef 40) #6 ; 5 uses
  store i32 1, ptr %i.ej, align 4, !tbaa !14
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = and i32 %i.el, 65535
  %i.en = or disjoint i32 %i.em, -167772160
  store i32 %i.en, ptr %i.ek, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i64 0, ptr %i.eo, align 8, !tbaa !12
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store i64 2, ptr %i.ep, align 8, !tbaa !12
  %i.eq = tail call ptr @lean_array_push(ptr noundef nonnull %i.ej, ptr noundef %i.ed) #6
  %i.er = tail call ptr @lean_array_push(ptr noundef %i.eq, ptr noundef %i.bg) #6
  %i.es = tail call ptr @l_Lean_Meta_mkAppM(ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__11_value, ptr noundef %i.er, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #6 ; 10 uses
  %i.et = ptrtoint ptr %i.es to i64               ; 2 uses
  %i.eu = and i64 %i.et, 1
  %.not.i687 = icmp eq i64 %i.eu, 0               ; 2 uses
  br i1 %.not.i687, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %lean_inc.exit479
  %i.ev = lshr i64 %i.et, 1
  %i.ew = trunc i64 %i.ev to i32
  br label %lean_obj_tag.exit690

bb.bp:                                            ; preds = %lean_inc.exit479
  %i.ex = getelementptr i8, ptr %i.es, i64 4
  %.val.i689 = load i32, ptr %i.ex, align 4
  %i.ey = lshr i32 %.val.i689, 24
  br label %lean_obj_tag.exit690

lean_obj_tag.exit690:                             ; preds = %bb.bo, %bb.bp
  %.0.i688 = phi i32 [ %i.ew, %bb.bo ], [ %i.ey, %bb.bp ]
  %i.ez = icmp eq i32 %.0.i688, 0
  br i1 %i.ez, label %bb.bq, label %bb.ep

bb.bq:                                            ; preds = %lean_obj_tag.exit690
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !10 ; 5 uses
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = and i64 %i.fc, 1
  %.not.i476 = icmp eq i64 %i.fd, 0
  br i1 %.not.i476, label %bb.br, label %lean_inc.exit477

bb.br:                                            ; preds = %bb.bq
  %.val.i.i691 = load i32, ptr %i.fb, align 4, !tbaa !14 ; 3 uses
  %i.fe = icmp sgt i32 %.val.i.i691, 0
  br i1 %i.fe, label %bb.bs, label %bb.bt, !prof !16

bb.bs:                                            ; preds = %bb.br
  %i.ff = add nuw i32 %.val.i.i691, 1
  store i32 %i.ff, ptr %i.fb, align 4, !tbaa !14
  br label %lean_inc.exit477

bb.bt:                                            ; preds = %bb.br
  %.not.i.i692 = icmp eq i32 %.val.i.i691, 0
  br i1 %.not.i.i692, label %lean_inc.exit477, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fg = atomicrmw sub ptr %i.fb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit477

lean_inc.exit477:                                 ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.bq
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.es, i32 noundef 1)
  %i.fh = tail call ptr @l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval(ptr noundef %1, ptr noundef %i.fb, i8 noundef zeroext %2, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) ; 10 uses
  %i.fi = ptrtoint ptr %i.fh to i64               ; 2 uses
  %i.fj = and i64 %i.fi, 1
  %.not.i694 = icmp eq i64 %i.fj, 0               ; 2 uses
  br i1 %.not.i694, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %lean_inc.exit477
  %i.fk = lshr i64 %i.fi, 1
  %i.fl = trunc i64 %i.fk to i32
  br label %lean_obj_tag.exit697

bb.bw:                                            ; preds = %lean_inc.exit477
  %i.fm = getelementptr i8, ptr %i.fh, i64 4
  %.val.i696 = load i32, ptr %i.fm, align 4
  %i.fn = lshr i32 %.val.i696, 24
  br label %lean_obj_tag.exit697

lean_obj_tag.exit697:                             ; preds = %bb.bv, %bb.bw
  %.0.i695 = phi i32 [ %i.fl, %bb.bv ], [ %i.fn, %bb.bw ]
  %i.fo = icmp eq i32 %.0.i695, 0
  br i1 %i.fo, label %bb.bx, label %bb.dt

bb.bx:                                            ; preds = %lean_obj_tag.exit697
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !10 ; 5 uses
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = and i64 %i.fr, 1
  %.not.i474 = icmp eq i64 %i.fs, 0
  br i1 %.not.i474, label %bb.by, label %lean_inc.exit475

bb.by:                                            ; preds = %bb.bx
  %.val.i.i698 = load i32, ptr %i.fq, align 4, !tbaa !14 ; 3 uses
  %i.ft = icmp sgt i32 %.val.i.i698, 0
  br i1 %i.ft, label %bb.bz, label %bb.ca, !prof !16

bb.bz:                                            ; preds = %bb.by
  %i.fu = add nuw i32 %.val.i.i698, 1
  store i32 %i.fu, ptr %i.fq, align 4, !tbaa !14
  br label %lean_inc.exit475

bb.ca:                                            ; preds = %bb.by
  %.not.i.i699 = icmp eq i32 %.val.i.i698, 0
  br i1 %.not.i.i699, label %lean_inc.exit475, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fv = atomicrmw sub ptr %i.fq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit475

lean_inc.exit475:                                 ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.bx
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.fh, i32 noundef 1)
  %i.fw = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !10
  %i.fy = load ptr, ptr @l_Lean_Elab_inServer, align 8, !tbaa !10
  %i.fz = tail call zeroext i8 @l_Lean_Option_get___at___00Lean_Elab_addMacroStack___at___00Lean_throwError___at___00__private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_elabTermForEval_spec__1_spec__2_spec__5(ptr noundef %i.fx, ptr noundef %i.fy)
  %i.ga = icmp eq i8 %i.fz, 0
  br i1 %i.ga, label %bb.cc, label %bb.ch

bb.cc:                                            ; preds = %lean_inc.exit475
  br i1 %.not.i482, label %bb.cd, label %lean_dec.exit538

bb.cd:                                            ; preds = %bb.cc
  %i.gb = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.gc = icmp sgt i32 %i.gb, 1
  br i1 %i.gc, label %bb.ce, label %bb.cf, !prof !16

bb.ce:                                            ; preds = %bb.cd
  %i.gd = add nsw i32 %i.gb, -1
  store i32 %i.gd, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit538

bb.cf:                                            ; preds = %bb.cd
  %.not.i546 = icmp eq i32 %i.gb, 0
  br i1 %.not.i546, label %lean_dec.exit538, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit538

bb.ch:                                            ; preds = %lean_inc.exit475
  br i1 %.not.i482, label %bb.ci, label %lean_dec.exit538

bb.ci:                                            ; preds = %bb.ch
  %i.ge = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.gf = icmp sgt i32 %i.ge, 1
  br i1 %i.gf, label %bb.cj, label %bb.ck, !prof !16

bb.cj:                                            ; preds = %bb.ci
  %i.gg = add nsw i32 %i.ge, -1
  store i32 %i.gg, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit538

bb.ck:                                            ; preds = %bb.ci
  %.not.i548 = icmp eq i32 %i.ge, 0
  br i1 %.not.i548, label %lean_dec.exit538, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit538

lean_dec.exit538:                                 ; preds = %bb.ch, %bb.cj, %bb.ck, %bb.cl, %bb.cc, %bb.ce, %bb.cf, %bb.cg
  %.0449 = phi i8 [ 1, %bb.cc ], [ 1, %bb.cg ], [ 1, %bb.cf ], [ 1, %bb.ce ], [ 0, %bb.cl ], [ 0, %bb.ck ], [ 0, %bb.cj ], [ 0, %bb.ch ]
  %i.gh = tail call ptr @l_Lean_evalConst___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__1___at___00Lean_Elab_Command_elabEvalCoreUnsafe_spec__8_spec__11___redArg(ptr noundef %i.fq, i8 noundef zeroext %.0449, ptr noundef %6, ptr poison, ptr noundef %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef %11) ; 14 uses
  %i.gi = ptrtoint ptr %i.gh to i64               ; 2 uses
  %i.gj = and i64 %i.gi, 1
  %.not.i701 = icmp eq i64 %i.gj, 0               ; 3 uses
  br i1 %.not.i701, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %lean_dec.exit538
  %i.gk = lshr i64 %i.gi, 1
  %i.gl = trunc i64 %i.gk to i32
  br label %lean_obj_tag.exit704

bb.cn:                                            ; preds = %lean_dec.exit538
  %i.gm = getelementptr i8, ptr %i.gh, i64 4
  %.val.i703 = load i32, ptr %i.gm, align 4
  %i.gn = lshr i32 %.val.i703, 24
  br label %lean_obj_tag.exit704

lean_obj_tag.exit704:                             ; preds = %bb.cm, %bb.cn
  %.0.i702 = phi i32 [ %i.gl, %bb.cm ], [ %i.gn, %bb.cn ]
  %i.go = icmp eq i32 %.0.i702, 0
  br i1 %i.go, label %bb.co, label %bb.db

bb.co:                                            ; preds = %lean_obj_tag.exit704
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !10 ; 5 uses
  %.val646 = load i32, ptr %i.gh, align 8, !tbaa !14
  %i.gr = icmp eq i32 %.val646, 1                 ; 2 uses
  br i1 %i.gr, label %lean_dec.exit534, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = and i64 %i.gs, 1
  %.not.i472 = icmp eq i64 %i.gt, 0
  br i1 %.not.i472, label %bb.cq, label %lean_inc.exit473

bb.cq:                                            ; preds = %bb.cp
  %.val.i.i705 = load i32, ptr %i.gq, align 4, !tbaa !14 ; 3 uses
  %i.gu = icmp sgt i32 %.val.i.i705, 0
  br i1 %i.gu, label %bb.cr, label %bb.cs, !prof !16

bb.cr:                                            ; preds = %bb.cq
  %i.gv = add nuw i32 %.val.i.i705, 1
  store i32 %i.gv, ptr %i.gq, align 4, !tbaa !14
  br label %lean_inc.exit473

bb.cs:                                            ; preds = %bb.cq
  %.not.i.i706 = icmp eq i32 %.val.i.i705, 0
  br i1 %.not.i.i706, label %lean_inc.exit473, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.gw = atomicrmw sub ptr %i.gq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit473

lean_inc.exit473:                                 ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cp
  br i1 %.not.i701, label %bb.cu, label %lean_dec.exit534

bb.cu:                                            ; preds = %lean_inc.exit473
  %i.gx = load i32, ptr %i.gh, align 8, !tbaa !14 ; 3 uses
  %i.gy = icmp sgt i32 %i.gx, 1
  br i1 %i.gy, label %bb.cv, label %bb.cw, !prof !16

bb.cv:                                            ; preds = %bb.cu
  %i.gz = add nsw i32 %i.gx, -1
  store i32 %i.gz, ptr %i.gh, align 8, !tbaa !14
  br label %lean_dec.exit534

bb.cw:                                            ; preds = %bb.cu
  %.not.i550 = icmp eq i32 %i.gx, 0
  br i1 %.not.i550, label %lean_dec.exit534, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gh) #6
  br label %lean_dec.exit534

lean_dec.exit534:                                 ; preds = %lean_inc.exit473, %bb.cv, %bb.cw, %bb.cx, %bb.co
  %.0448 = phi ptr [ %i.gh, %bb.co ], [ inttoptr (i64 1 to ptr), %bb.cx ], [ inttoptr (i64 1 to ptr), %bb.cw ], [ inttoptr (i64 1 to ptr), %bb.cv ], [ inttoptr (i64 1 to ptr), %lean_inc.exit473 ]
  %i.ha = tail call ptr @lean_alloc_object(i64 noundef 32) #6 ; 7 uses
  store i32 1, ptr %i.ha, align 4, !tbaa !14
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 4 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = and i32 %i.hc, 65535
  %i.he = or disjoint i32 %i.hd, -184549376
  store i32 %i.he, ptr %i.hb, align 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__1___at___00Lean_Elab_Command_elabEvalCoreUnsafe_spec__8_spec__15___redArg___lam__2___boxed, ptr %i.hf, align 8, !tbaa !10
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store i16 8, ptr %i.hg, align 8, !tbaa !22
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 18
  store i16 1, ptr %i.hh, align 2, !tbaa !22
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  store ptr %i.gq, ptr %i.hi, align 8, !tbaa !10
  %i.hj = tail call ptr @lean_alloc_object(i64 noundef 40) #6 ; 8 uses
  store i32 1, ptr %i.hj, align 4, !tbaa !14
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4
  %i.hm = and i32 %i.hl, 65535
  %i.hn = or disjoint i32 %i.hm, -184549376
  store i32 %i.hn, ptr %i.hk, align 4
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__1___at___00Lean_Elab_Command_elabEvalCoreUnsafe_spec__8_spec__14___redArg___lam__0___boxed, ptr %i.ho, align 8, !tbaa !10
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store i16 5, ptr %i.hp, align 8, !tbaa !22
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 18
  store i16 2, ptr %i.hq, align 2, !tbaa !22
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  store ptr %i.ha, ptr %i.hr, align 8, !tbaa !10
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  store ptr %3, ptr %i.hs, align 8, !tbaa !10
  br i1 %i.bh, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %lean_dec.exit534
  %i.ht = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %bb.cz

bb.cz:                                            ; preds = %lean_dec.exit534, %bb.cy
  %.sink873 = phi ptr [ %i.ht, %bb.cy ], [ %.0451, %lean_dec.exit534 ] ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.sink873, i64 8
  store ptr %i.br, ptr %i.hu, align 8, !tbaa !10
  %i.hv = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store ptr %i.hj, ptr %i.hw, align 8, !tbaa !10
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store ptr %.sink873, ptr %i.hx, align 8, !tbaa !10
  %i.hy = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store ptr %i.hv, ptr %i.hz, align 8, !tbaa !10
  br i1 %i.gr, label %lean_dec.exit532.sink.split, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ia = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit532.sink.split

bb.db:                                            ; preds = %lean_obj_tag.exit704
  %i.ib = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.ic = icmp sgt i32 %i.ib, 1
  br i1 %i.ic, label %bb.dc, label %bb.dd, !prof !16

bb.dc:                                            ; preds = %bb.db
  %i.id = add nsw i32 %i.ib, -1
  store i32 %i.id, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit633

bb.dd:                                            ; preds = %bb.db
  %.not.i632 = icmp eq i32 %i.ib, 0
  br i1 %.not.i632, label %lean_dec_ref.exit633, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit633

lean_dec_ref.exit633:                             ; preds = %bb.dc, %bb.dd, %bb.de
  %i.ie = ptrtoint ptr %.0451 to i64
  %i.if = and i64 %i.ie, 1
  %.not.i708 = icmp eq i64 %i.if, 0
  br i1 %.not.i708, label %bb.df, label %lean_del_object.exit709

bb.df:                                            ; preds = %lean_dec_ref.exit633
  tail call void @lean_free_object(ptr noundef nonnull %.0451) #6
  br label %lean_del_object.exit709

lean_del_object.exit709:                          ; preds = %lean_dec_ref.exit633, %bb.df
  %i.ig = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.ih = icmp sgt i32 %i.ig, 1
  br i1 %i.ih, label %bb.dg, label %bb.dh, !prof !16

bb.dg:                                            ; preds = %lean_del_object.exit709
  %i.ii = add nsw i32 %i.ig, -1
  store i32 %i.ii, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit631

bb.dh:                                            ; preds = %lean_del_object.exit709
  %.not.i630 = icmp eq i32 %i.ig, 0
  br i1 %.not.i630, label %lean_dec_ref.exit631, label %bb.di

bb.di:                                            ; preds = %bb.dh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit631

lean_dec_ref.exit631:                             ; preds = %bb.dg, %bb.dh, %bb.di
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !10 ; 5 uses
  %.val645 = load i32, ptr %i.gh, align 8, !tbaa !14
  %i.il = icmp eq i32 %.val645, 1
  br i1 %i.il, label %lean_dec.exit532, label %bb.dj

bb.dj:                                            ; preds = %lean_dec_ref.exit631
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = and i64 %i.im, 1
  %.not.i470 = icmp eq i64 %i.in, 0
  br i1 %.not.i470, label %bb.dk, label %lean_inc.exit471

bb.dk:                                            ; preds = %bb.dj
  %.val.i.i710 = load i32, ptr %i.ik, align 4, !tbaa !14 ; 3 uses
  %i.io = icmp sgt i32 %.val.i.i710, 0
  br i1 %i.io, label %bb.dl, label %bb.dm, !prof !16

bb.dl:                                            ; preds = %bb.dk
  %i.ip = add nuw i32 %.val.i.i710, 1
  store i32 %i.ip, ptr %i.ik, align 4, !tbaa !14
  br label %lean_inc.exit471

bb.dm:                                            ; preds = %bb.dk
  %.not.i.i711 = icmp eq i32 %.val.i.i710, 0
  br i1 %.not.i.i711, label %lean_inc.exit471, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.iq = atomicrmw sub ptr %i.ik, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit471

lean_inc.exit471:                                 ; preds = %bb.dn, %bb.dm, %bb.dl, %bb.dj
  br i1 %.not.i701, label %bb.do, label %bb.ds

bb.do:                                            ; preds = %lean_inc.exit471
  %i.ir = load i32, ptr %i.gh, align 8, !tbaa !14 ; 3 uses
  %i.is = icmp sgt i32 %i.ir, 1
  br i1 %i.is, label %bb.dp, label %bb.dq, !prof !16

bb.dp:                                            ; preds = %bb.do
  %i.it = add nsw i32 %i.ir, -1
  store i32 %i.it, ptr %i.gh, align 8, !tbaa !14
  br label %bb.ds

bb.dq:                                            ; preds = %bb.do
  %.not.i552 = icmp eq i32 %i.ir, 0
  br i1 %.not.i552, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gh) #6
  br label %bb.ds

bb.ds:                                            ; preds = %lean_inc.exit471, %bb.dp, %bb.dq, %bb.dr
  %i.iu = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit532.sink.split

bb.dt:                                            ; preds = %lean_obj_tag.exit697
  br i1 %.not.i482, label %bb.du, label %lean_dec.exit530

bb.du:                                            ; preds = %bb.dt
  %i.iv = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.iw = icmp sgt i32 %i.iv, 1
  br i1 %i.iw, label %bb.dv, label %bb.dw, !prof !16

bb.dv:                                            ; preds = %bb.du
  %i.ix = add nsw i32 %i.iv, -1
  store i32 %i.ix, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit530

bb.dw:                                            ; preds = %bb.du
  %.not.i554 = icmp eq i32 %i.iv, 0
  br i1 %.not.i554, label %lean_dec.exit530, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit530

lean_dec.exit530:                                 ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.dt
  %i.iy = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.iz = icmp sgt i32 %i.iy, 1
  br i1 %i.iz, label %bb.dy, label %bb.dz, !prof !16

bb.dy:                                            ; preds = %lean_dec.exit530
  %i.ja = add nsw i32 %i.iy, -1
  store i32 %i.ja, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit629

bb.dz:                                            ; preds = %lean_dec.exit530
  %.not.i628 = icmp eq i32 %i.iy, 0
  br i1 %.not.i628, label %lean_dec_ref.exit629, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit629

lean_dec_ref.exit629:                             ; preds = %bb.dy, %bb.dz, %bb.ea
  %i.jb = ptrtoint ptr %.0451 to i64
  %i.jc = and i64 %i.jb, 1
  %.not.i713 = icmp eq i64 %i.jc, 0
  br i1 %.not.i713, label %bb.eb, label %lean_del_object.exit714

bb.eb:                                            ; preds = %lean_dec_ref.exit629
  tail call void @lean_free_object(ptr noundef nonnull %.0451) #6
  br label %lean_del_object.exit714

lean_del_object.exit714:                          ; preds = %lean_dec_ref.exit629, %bb.eb
  %i.jd = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.je = icmp sgt i32 %i.jd, 1
  br i1 %i.je, label %bb.ec, label %bb.ed, !prof !16

bb.ec:                                            ; preds = %lean_del_object.exit714
  %i.jf = add nsw i32 %i.jd, -1
  store i32 %i.jf, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit627

bb.ed:                                            ; preds = %lean_del_object.exit714
  %.not.i626 = icmp eq i32 %i.jd, 0
  br i1 %.not.i626, label %lean_dec_ref.exit627, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit627

lean_dec_ref.exit627:                             ; preds = %bb.ec, %bb.ed, %bb.ee
  %i.jg = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !10 ; 5 uses
  %.val644 = load i32, ptr %i.fh, align 8, !tbaa !14
  %i.ji = icmp eq i32 %.val644, 1
  br i1 %i.ji, label %lean_dec.exit532, label %bb.ef

bb.ef:                                            ; preds = %lean_dec_ref.exit627
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = and i64 %i.jj, 1
  %.not.i468 = icmp eq i64 %i.jk, 0
  br i1 %.not.i468, label %bb.eg, label %lean_inc.exit469

bb.eg:                                            ; preds = %bb.ef
  %.val.i.i715 = load i32, ptr %i.jh, align 4, !tbaa !14 ; 3 uses
  %i.jl = icmp sgt i32 %.val.i.i715, 0
  br i1 %i.jl, label %bb.eh, label %bb.ei, !prof !16

bb.eh:                                            ; preds = %bb.eg
  %i.jm = add nuw i32 %.val.i.i715, 1
  store i32 %i.jm, ptr %i.jh, align 4, !tbaa !14
  br label %lean_inc.exit469

bb.ei:                                            ; preds = %bb.eg
  %.not.i.i716 = icmp eq i32 %.val.i.i715, 0
  br i1 %.not.i.i716, label %lean_inc.exit469, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.jn = atomicrmw sub ptr %i.jh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit469

lean_inc.exit469:                                 ; preds = %bb.ej, %bb.ei, %bb.eh, %bb.ef
  br i1 %.not.i694, label %bb.ek, label %bb.eo

bb.ek:                                            ; preds = %lean_inc.exit469
  %i.jo = load i32, ptr %i.fh, align 8, !tbaa !14 ; 3 uses
  %i.jp = icmp sgt i32 %i.jo, 1
  br i1 %i.jp, label %bb.el, label %bb.em, !prof !16

bb.el:                                            ; preds = %bb.ek
  %i.jq = add nsw i32 %i.jo, -1
  store i32 %i.jq, ptr %i.fh, align 8, !tbaa !14
  br label %bb.eo

bb.em:                                            ; preds = %bb.ek
  %.not.i556 = icmp eq i32 %i.jo, 0
  br i1 %.not.i556, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fh) #6
  br label %bb.eo

bb.eo:                                            ; preds = %lean_inc.exit469, %bb.el, %bb.em, %bb.en
  %i.jr = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit532.sink.split

bb.ep:                                            ; preds = %lean_obj_tag.exit690
  br i1 %.not.i482, label %bb.eq, label %lean_dec.exit526

bb.eq:                                            ; preds = %bb.ep
  %i.js = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.jt = icmp sgt i32 %i.js, 1
  br i1 %i.jt, label %bb.er, label %bb.es, !prof !16

bb.er:                                            ; preds = %bb.eq
  %i.ju = add nsw i32 %i.js, -1
  store i32 %i.ju, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit526

bb.es:                                            ; preds = %bb.eq
  %.not.i558 = icmp eq i32 %i.js, 0
  br i1 %.not.i558, label %lean_dec.exit526, label %bb.et

bb.et:                                            ; preds = %bb.es
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit526

lean_dec.exit526:                                 ; preds = %bb.et, %bb.es, %bb.er, %bb.ep
  %i.jv = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.jw = icmp sgt i32 %i.jv, 1
  br i1 %i.jw, label %bb.eu, label %bb.ev, !prof !16

bb.eu:                                            ; preds = %lean_dec.exit526
  %i.jx = add nsw i32 %i.jv, -1
  store i32 %i.jx, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit625

bb.ev:                                            ; preds = %lean_dec.exit526
  %.not.i624 = icmp eq i32 %i.jv, 0
  br i1 %.not.i624, label %lean_dec_ref.exit625, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit625

lean_dec_ref.exit625:                             ; preds = %bb.eu, %bb.ev, %bb.ew
  %i.jy = ptrtoint ptr %.0451 to i64
  %i.jz = and i64 %i.jy, 1
  %.not.i718 = icmp eq i64 %i.jz, 0
  br i1 %.not.i718, label %bb.ex, label %lean_del_object.exit719

bb.ex:                                            ; preds = %lean_dec_ref.exit625
  tail call void @lean_free_object(ptr noundef nonnull %.0451) #6
  br label %lean_del_object.exit719

lean_del_object.exit719:                          ; preds = %lean_dec_ref.exit625, %bb.ex
  %i.ka = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.kb = icmp sgt i32 %i.ka, 1
  br i1 %i.kb, label %bb.ey, label %bb.ez, !prof !16

bb.ey:                                            ; preds = %lean_del_object.exit719
  %i.kc = add nsw i32 %i.ka, -1
  store i32 %i.kc, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit623

bb.ez:                                            ; preds = %lean_del_object.exit719
  %.not.i622 = icmp eq i32 %i.ka, 0
  br i1 %.not.i622, label %lean_dec_ref.exit623, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit623

lean_dec_ref.exit623:                             ; preds = %bb.ey, %bb.ez, %bb.fa
  %i.kd = ptrtoint ptr %1 to i64
  %i.ke = and i64 %i.kd, 1
  %.not.i523 = icmp eq i64 %i.ke, 0
  br i1 %.not.i523, label %bb.fb, label %lean_dec.exit524

bb.fb:                                            ; preds = %lean_dec_ref.exit623
  %i.kf = load i32, ptr %1, align 4, !tbaa !14    ; 3 uses
  %i.kg = icmp sgt i32 %i.kf, 1
  br i1 %i.kg, label %bb.fc, label %bb.fd, !prof !16

bb.fc:                                            ; preds = %bb.fb
  %i.kh = add nsw i32 %i.kf, -1
  store i32 %i.kh, ptr %1, align 4, !tbaa !14
  br label %lean_dec.exit524

bb.fd:                                            ; preds = %bb.fb
  %.not.i560 = icmp eq i32 %i.kf, 0
  br i1 %.not.i560, label %lean_dec.exit524, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit524

lean_dec.exit524:                                 ; preds = %bb.fe, %bb.fd, %bb.fc, %lean_dec_ref.exit623
  %i.ki = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !10 ; 5 uses
  %.val643 = load i32, ptr %i.es, align 8, !tbaa !14
  %i.kk = icmp eq i32 %.val643, 1
  br i1 %i.kk, label %lean_dec.exit532, label %bb.ff

bb.ff:                                            ; preds = %lean_dec.exit524
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = and i64 %i.kl, 1
  %.not.i466 = icmp eq i64 %i.km, 0
  br i1 %.not.i466, label %bb.fg, label %lean_inc.exit467

bb.fg:                                            ; preds = %bb.ff
  %.val.i.i720 = load i32, ptr %i.kj, align 4, !tbaa !14 ; 3 uses
  %i.kn = icmp sgt i32 %.val.i.i720, 0
  br i1 %i.kn, label %bb.fh, label %bb.fi, !prof !16

bb.fh:                                            ; preds = %bb.fg
  %i.ko = add nuw i32 %.val.i.i720, 1
  store i32 %i.ko, ptr %i.kj, align 4, !tbaa !14
  br label %lean_inc.exit467

bb.fi:                                            ; preds = %bb.fg
  %.not.i.i721 = icmp eq i32 %.val.i.i720, 0
  br i1 %.not.i.i721, label %lean_inc.exit467, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.kp = atomicrmw sub ptr %i.kj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit467

lean_inc.exit467:                                 ; preds = %bb.fj, %bb.fi, %bb.fh, %bb.ff
  br i1 %.not.i687, label %bb.fk, label %bb.fo

bb.fk:                                            ; preds = %lean_inc.exit467
  %i.kq = load i32, ptr %i.es, align 8, !tbaa !14 ; 3 uses
  %i.kr = icmp sgt i32 %i.kq, 1
  br i1 %i.kr, label %bb.fl, label %bb.fm, !prof !16

bb.fl:                                            ; preds = %bb.fk
  %i.ks = add nsw i32 %i.kq, -1
  store i32 %i.ks, ptr %i.es, align 8, !tbaa !14
  br label %bb.fo

bb.fm:                                            ; preds = %bb.fk
  %.not.i562 = icmp eq i32 %i.kq, 0
  br i1 %.not.i562, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.es) #6
  br label %bb.fo

bb.fo:                                            ; preds = %lean_inc.exit467, %bb.fl, %bb.fm, %bb.fn
  %i.kt = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit532.sink.split

bb.fp:                                            ; preds = %lean_obj_tag.exit683
  br i1 %.not.i482, label %bb.fq, label %lean_dec.exit520

bb.fq:                                            ; preds = %bb.fp
  %i.ku = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.kv = icmp sgt i32 %i.ku, 1
  br i1 %i.kv, label %bb.fr, label %bb.fs, !prof !16

bb.fr:                                            ; preds = %bb.fq
  %i.kw = add nsw i32 %i.ku, -1
  store i32 %i.kw, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit520

bb.fs:                                            ; preds = %bb.fq
  %.not.i564 = icmp eq i32 %i.ku, 0
  br i1 %.not.i564, label %lean_dec.exit520, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit520

lean_dec.exit520:                                 ; preds = %bb.ft, %bb.fs, %bb.fr, %bb.fp
  %i.kx = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.ky = icmp sgt i32 %i.kx, 1
  br i1 %i.ky, label %bb.fu, label %bb.fv, !prof !16

bb.fu:                                            ; preds = %lean_dec.exit520
  %i.kz = add nsw i32 %i.kx, -1
  store i32 %i.kz, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit621

bb.fv:                                            ; preds = %lean_dec.exit520
  %.not.i620 = icmp eq i32 %i.kx, 0
  br i1 %.not.i620, label %lean_dec_ref.exit621, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit621

lean_dec_ref.exit621:                             ; preds = %bb.fu, %bb.fv, %bb.fw
  %i.la = ptrtoint ptr %.0451 to i64
  %i.lb = and i64 %i.la, 1
  %.not.i723 = icmp eq i64 %i.lb, 0
  br i1 %.not.i723, label %bb.fx, label %lean_del_object.exit724

bb.fx:                                            ; preds = %lean_dec_ref.exit621
  tail call void @lean_free_object(ptr noundef nonnull %.0451) #6
  br label %lean_del_object.exit724

lean_del_object.exit724:                          ; preds = %lean_dec_ref.exit621, %bb.fx
  %i.lc = ptrtoint ptr %i.bg to i64
  %i.ld = and i64 %i.lc, 1
  %.not.i517 = icmp eq i64 %i.ld, 0
  br i1 %.not.i517, label %bb.fy, label %lean_dec.exit518

bb.fy:                                            ; preds = %lean_del_object.exit724
  %i.le = load i32, ptr %i.bg, align 4, !tbaa !14 ; 3 uses
  %i.lf = icmp sgt i32 %i.le, 1
  br i1 %i.lf, label %bb.fz, label %bb.ga, !prof !16

bb.fz:                                            ; preds = %bb.fy
  %i.lg = add nsw i32 %i.le, -1
  store i32 %i.lg, ptr %i.bg, align 4, !tbaa !14
  br label %lean_dec.exit518

bb.ga:                                            ; preds = %bb.fy
  %.not.i566 = icmp eq i32 %i.le, 0
  br i1 %.not.i566, label %lean_dec.exit518, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bg) #6
  br label %lean_dec.exit518

lean_dec.exit518:                                 ; preds = %bb.gb, %bb.ga, %bb.fz, %lean_del_object.exit724
  %i.lh = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.li = icmp sgt i32 %i.lh, 1
  br i1 %i.li, label %bb.gc, label %bb.gd, !prof !16

bb.gc:                                            ; preds = %lean_dec.exit518
  %i.lj = add nsw i32 %i.lh, -1
  store i32 %i.lj, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit619

bb.gd:                                            ; preds = %lean_dec.exit518
  %.not.i618 = icmp eq i32 %i.lh, 0
  br i1 %.not.i618, label %lean_dec_ref.exit619, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit619

lean_dec_ref.exit619:                             ; preds = %bb.gc, %bb.gd, %bb.ge
  %i.lk = ptrtoint ptr %1 to i64
  %i.ll = and i64 %i.lk, 1
  %.not.i515 = icmp eq i64 %i.ll, 0
  br i1 %.not.i515, label %bb.gf, label %lean_dec.exit516

bb.gf:                                            ; preds = %lean_dec_ref.exit619
  %i.lm = load i32, ptr %1, align 4, !tbaa !14    ; 3 uses
  %i.ln = icmp sgt i32 %i.lm, 1
  br i1 %i.ln, label %bb.gg, label %bb.gh, !prof !16

bb.gg:                                            ; preds = %bb.gf
  %i.lo = add nsw i32 %i.lm, -1
  store i32 %i.lo, ptr %1, align 4, !tbaa !14
  br label %lean_dec.exit516

bb.gh:                                            ; preds = %bb.gf
  %.not.i568 = icmp eq i32 %i.lm, 0
  br i1 %.not.i568, label %lean_dec.exit516, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit516

lean_dec.exit516:                                 ; preds = %bb.gi, %bb.gh, %bb.gg, %lean_dec_ref.exit619
  %i.lp = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !10 ; 5 uses
  %.val642 = load i32, ptr %i.du, align 8, !tbaa !14
  %i.lr = icmp eq i32 %.val642, 1
  br i1 %i.lr, label %lean_dec.exit532, label %bb.gj

bb.gj:                                            ; preds = %lean_dec.exit516
  %i.ls = ptrtoint ptr %i.lq to i64
  %i.lt = and i64 %i.ls, 1
  %.not.i464 = icmp eq i64 %i.lt, 0
  br i1 %.not.i464, label %bb.gk, label %lean_inc.exit465

bb.gk:                                            ; preds = %bb.gj
  %.val.i.i725 = load i32, ptr %i.lq, align 4, !tbaa !14 ; 3 uses
  %i.lu = icmp sgt i32 %.val.i.i725, 0
  br i1 %i.lu, label %bb.gl, label %bb.gm, !prof !16

bb.gl:                                            ; preds = %bb.gk
  %i.lv = add nuw i32 %.val.i.i725, 1
  store i32 %i.lv, ptr %i.lq, align 4, !tbaa !14
  br label %lean_inc.exit465

bb.gm:                                            ; preds = %bb.gk
  %.not.i.i726 = icmp eq i32 %.val.i.i725, 0
  br i1 %.not.i.i726, label %lean_inc.exit465, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.lw = atomicrmw sub ptr %i.lq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit465

lean_inc.exit465:                                 ; preds = %bb.gn, %bb.gm, %bb.gl, %bb.gj
  br i1 %.not.i680, label %bb.go, label %bb.gs

bb.go:                                            ; preds = %lean_inc.exit465
  %i.lx = load i32, ptr %i.du, align 8, !tbaa !14 ; 3 uses
  %i.ly = icmp sgt i32 %i.lx, 1
  br i1 %i.ly, label %bb.gp, label %bb.gq, !prof !16

bb.gp:                                            ; preds = %bb.go
  %i.lz = add nsw i32 %i.lx, -1
  store i32 %i.lz, ptr %i.du, align 8, !tbaa !14
  br label %bb.gs

bb.gq:                                            ; preds = %bb.go
  %.not.i570 = icmp eq i32 %i.lx, 0
  br i1 %.not.i570, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.du) #6
  br label %bb.gs

bb.gs:                                            ; preds = %lean_inc.exit465, %bb.gp, %bb.gq, %bb.gr
  %i.ma = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit532.sink.split

bb.gt:                                            ; preds = %lean_dec_ref_known.exit
  %i.mb = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.mc = icmp sgt i32 %i.mb, 1
  br i1 %i.mc, label %bb.gu, label %bb.gv, !prof !16

bb.gu:                                            ; preds = %bb.gt
  %i.md = add nsw i32 %i.mb, -1
  store i32 %i.md, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit617

bb.gv:                                            ; preds = %bb.gt
  %.not.i616 = icmp eq i32 %i.mb, 0
  br i1 %.not.i616, label %lean_dec_ref.exit617, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit617

lean_dec_ref.exit617:                             ; preds = %bb.gu, %bb.gv, %bb.gw
  %i.me = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.mf = icmp sgt i32 %i.me, 1
  br i1 %i.mf, label %bb.gx, label %bb.gy, !prof !16

bb.gx:                                            ; preds = %lean_dec_ref.exit617
  %i.mg = add nsw i32 %i.me, -1
  store i32 %i.mg, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit615

bb.gy:                                            ; preds = %lean_dec_ref.exit617
  %.not.i614 = icmp eq i32 %i.me, 0
  br i1 %.not.i614, label %lean_dec_ref.exit615, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit615

lean_dec_ref.exit615:                             ; preds = %bb.gx, %bb.gy, %bb.gz
  %i.mh = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.mi = icmp sgt i32 %i.mh, 1
  br i1 %i.mi, label %bb.ha, label %bb.hb, !prof !16
end_hunk_5
begin_hunk_6_@l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__1___at___00Lean_Elab_Command_elabEvalCoreUnsafe_spec__8_spec__14___redArg:bb.a
  %i.bk = icmp sgt i32 %.val.i.i657, 0
  br i1 %i.bk, label %bb.v, label %bb.w, !prof !16

bb.v:                                             ; preds = %bb.u
  %i.bl = add nuw i32 %.val.i.i657, 1
  store i32 %i.bl, ptr %i.bg, align 4, !tbaa !14
  br label %lean_inc.exit485

bb.w:                                             ; preds = %bb.u
  %.not.i.i658 = icmp eq i32 %.val.i.i657, 0
  br i1 %.not.i.i658, label %lean_inc.exit485, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = atomicrmw sub ptr %i.bg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit485

lean_inc.exit485:                                 ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  br i1 %.not.i652, label %bb.y, label %lean_dec.exit540

bb.y:                                             ; preds = %lean_inc.exit485
  %i.bn = load i32, ptr %i.ar, align 8, !tbaa !14 ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.z, label %bb.aa, !prof !16

bb.z:                                             ; preds = %bb.y
  %i.bp = add nsw i32 %i.bn, -1
  store i32 %i.bp, ptr %i.ar, align 8, !tbaa !14
  br label %lean_dec.exit540

bb.aa:                                            ; preds = %bb.y
  %.not.i544 = icmp eq i32 %i.bn, 0
  br i1 %.not.i544, label %lean_dec.exit540, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ar) #6
  br label %lean_dec.exit540

lean_dec.exit540:                                 ; preds = %lean_inc.exit485, %bb.z, %bb.aa, %bb.ab, %lean_del_object.exit
  %.0451 = phi ptr [ %i.ar, %lean_del_object.exit ], [ inttoptr (i64 1 to ptr), %bb.ab ], [ inttoptr (i64 1 to ptr), %bb.aa ], [ inttoptr (i64 1 to ptr), %bb.z ], [ inttoptr (i64 1 to ptr), %lean_inc.exit485 ] ; 16 uses
  %i.bq = tail call ptr @l_Lean_Expr_appFn_x21(ptr noundef %i.bg) #6 ; 4 uses
  %i.br = tail call ptr @l_Lean_Expr_appArg_x21(ptr noundef %i.bq) #6 ; 27 uses
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !14 ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 1
  br i1 %i.bt, label %bb.ac, label %bb.ad, !prof !16

bb.ac:                                            ; preds = %lean_dec.exit540
  %i.bu = add nsw i32 %i.bs, -1
  store i32 %i.bu, ptr %i.bq, align 4, !tbaa !14
  br label %lean_dec_ref.exit635

bb.ad:                                            ; preds = %lean_dec.exit540
  %.not.i634 = icmp eq i32 %i.bs, 0
  br i1 %.not.i634, label %lean_dec_ref.exit635, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bq) #6
  br label %lean_dec_ref.exit635

lean_dec_ref.exit635:                             ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bv = load atomic i32, ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6_once seq_cst, align 4, !tbaa !18
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.af, label %bb.ag, !prof !16

bb.af:                                            ; preds = %lean_dec_ref.exit635
  %i.bx = load ptr, ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6, align 8, !tbaa !10
  br label %lean_obj_once.exit661

bb.ag:                                            ; preds = %lean_dec_ref.exit635
  %i.by = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6, ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6_once, ptr noundef nonnull @_init_l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__6) #6
  br label %lean_obj_once.exit661

lean_obj_once.exit661:                            ; preds = %bb.af, %bb.ag
  %.0.i660 = phi ptr [ %i.bx, %bb.af ], [ %i.by, %bb.ag ]
  %.val.i.i662 = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.bz = icmp sgt i32 %.val.i.i662, 0
  br i1 %i.bz, label %bb.ah, label %bb.ai, !prof !16

bb.ah:                                            ; preds = %lean_obj_once.exit661
  %i.ca = add nuw i32 %.val.i.i662, 1
  store i32 %i.ca, ptr %i.br, align 4, !tbaa !14
  br label %lean_inc_ref.exit664

bb.ai:                                            ; preds = %lean_obj_once.exit661
  %.not.i.i663 = icmp eq i32 %.val.i.i662, 0
  br i1 %.not.i.i663, label %lean_inc_ref.exit664, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cb = atomicrmw sub ptr %i.br, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit664

lean_inc_ref.exit664:                             ; preds = %bb.ah, %bb.ai, %bb.aj
  %i.cc = tail call ptr @l_Lean_Meta_isExprDefEq(ptr noundef nonnull %i.br, ptr noundef %.0.i660, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #6 ; 13 uses
  %i.cd = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.ce = and i64 %i.cd, 1
  %.not.i665 = icmp eq i64 %i.ce, 0               ; 2 uses
  br i1 %.not.i665, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %lean_inc_ref.exit664
  %i.cf = lshr i64 %i.cd, 1
  %i.cg = trunc i64 %i.cf to i32
  br label %lean_obj_tag.exit668

bb.al:                                            ; preds = %lean_inc_ref.exit664
  %i.ch = getelementptr i8, ptr %i.cc, i64 4
  %.val.i667 = load i32, ptr %i.ch, align 4
  %i.ci = lshr i32 %.val.i667, 24
  br label %lean_obj_tag.exit668

lean_obj_tag.exit668:                             ; preds = %bb.ak, %bb.al
  %.0.i666 = phi i32 [ %i.cg, %bb.ak ], [ %i.ci, %bb.al ]
  %i.cj = icmp eq i32 %.0.i666, 0
  br i1 %i.cj, label %bb.am, label %bb.jl

bb.am:                                            ; preds = %lean_obj_tag.exit668
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !10 ; 32 uses
  %i.cm = ptrtoint ptr %i.cl to i64               ; 3 uses
  %i.cn = and i64 %i.cm, 1
  %.not.i482 = icmp eq i64 %i.cn, 0               ; 10 uses
  br i1 %.not.i482, label %bb.an, label %lean_inc.exit483

bb.an:                                            ; preds = %bb.am
  %.val.i.i669 = load i32, ptr %i.cl, align 4, !tbaa !14 ; 3 uses
  %i.co = icmp sgt i32 %.val.i.i669, 0
  br i1 %i.co, label %bb.ao, label %bb.ap, !prof !16

bb.ao:                                            ; preds = %bb.an
  %i.cp = add nuw i32 %.val.i.i669, 1
  store i32 %i.cp, ptr %i.cl, align 4, !tbaa !14
  br label %lean_inc.exit483

bb.ap:                                            ; preds = %bb.an
  %.not.i.i670 = icmp eq i32 %.val.i.i669, 0
  br i1 %.not.i.i670, label %lean_inc.exit483, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cq = atomicrmw sub ptr %i.cl, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit483

lean_inc.exit483:                                 ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am
  %.val.i672 = load i32, ptr %i.cc, align 8, !tbaa !14 ; 4 uses
  %i.cr = icmp eq i32 %.val.i672, 1
  br i1 %i.cr, label %.preheader.i, label %bb.av

.preheader.i:                                     ; preds = %lean_inc.exit483
  %i.cs = load ptr, ptr %i.ck, align 8, !tbaa !10 ; 4 uses
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = and i64 %i.ct, 1
  %.not.i.i673 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i673, label %bb.ar, label %lean_dec.exit.i

bb.ar:                                            ; preds = %.preheader.i
  %i.cv = load i32, ptr %i.cs, align 4, !tbaa !14 ; 3 uses
  %i.cw = icmp sgt i32 %i.cv, 1
  br i1 %i.cw, label %bb.as, label %bb.at, !prof !16

bb.as:                                            ; preds = %bb.ar
  %i.cx = add nsw i32 %i.cv, -1
  store i32 %i.cx, ptr %i.cs, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.at:                                            ; preds = %bb.ar
  %.not.i7.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cs) #6
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.au, %bb.at, %bb.as, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.cc) #6
  br label %lean_dec_ref_known.exit

bb.av:                                            ; preds = %lean_inc.exit483
  %i.cy = icmp sgt i32 %.val.i672, 1
  br i1 %i.cy, label %bb.aw, label %bb.ax, !prof !16

bb.aw:                                            ; preds = %bb.av
  %i.cz = add nsw i32 %.val.i672, -1
  store i32 %i.cz, ptr %i.cc, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit

bb.ax:                                            ; preds = %bb.av
  %.not.i8.i = icmp eq i32 %.val.i672, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cc) #6
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.aw, %bb.ax, %bb.ay
  %i.da = lshr i64 %i.cm, 1
  %i.db = and i64 %i.cm, 510
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %bb.az, label %bb.gt

bb.az:                                            ; preds = %lean_dec_ref_known.exit
  br i1 %.not.i482, label %bb.ba, label %lean_inc.exit481

bb.ba:                                            ; preds = %bb.az
  %.val.i.i674 = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.dd = icmp sgt i32 %.val.i.i674, 0
  br i1 %i.dd, label %bb.bb, label %bb.bc, !prof !16

bb.bb:                                            ; preds = %bb.ba
  %i.de = add nuw i32 %.val.i.i674, 1
  store i32 %i.de, ptr %i.cl, align 512, !tbaa !14
  br label %lean_inc.exit481

bb.bc:                                            ; preds = %bb.ba
  %.not.i.i675 = icmp eq i32 %.val.i.i674, 0
  br i1 %.not.i.i675, label %lean_inc.exit481, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.df = atomicrmw sub ptr %i.cl, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit481

lean_inc.exit481:                                 ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.az
  %i.dg = tail call ptr @lean_alloc_object(i64 noundef 48) #6 ; 9 uses
  store i32 1, ptr %i.dg, align 4, !tbaa !14
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = and i32 %i.di, 65535
  %i.dk = or disjoint i32 %i.dj, -184549376
  store i32 %i.dk, ptr %i.dh, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___lam__1___boxed, ptr %i.dl, align 8, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i16 11, ptr %i.dm, align 8, !tbaa !22
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 18
  store i16 3, ptr %i.dn, align 2, !tbaa !22
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store ptr %0, ptr %i.do, align 8, !tbaa !10
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store ptr %i.cl, ptr %i.dp, align 8, !tbaa !10
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store ptr inttoptr (i64 3 to ptr), ptr %i.dq, align 8, !tbaa !10
  %.val.i.i677 = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.dr = icmp sgt i32 %.val.i.i677, 0
  br i1 %i.dr, label %bb.be, label %bb.bf, !prof !16

bb.be:                                            ; preds = %lean_inc.exit481
  %i.ds = add nuw i32 %.val.i.i677, 1
  store i32 %i.ds, ptr %i.br, align 4, !tbaa !14
  br label %lean_inc_ref.exit679

bb.bf:                                            ; preds = %lean_inc.exit481
  %.not.i.i678 = icmp eq i32 %.val.i.i677, 0
  br i1 %.not.i.i678, label %lean_inc_ref.exit679, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dt = atomicrmw sub ptr %i.br, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit679

lean_inc_ref.exit679:                             ; preds = %bb.be, %bb.bf, %bb.bg
  %i.du = tail call ptr @l_Lean_Meta_withLocalDecl___at___00Lean_Meta_withLocalDeclD___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__1___at___00Lean_Elab_Command_elabEvalCoreUnsafe_spec__8_spec__17_spec__22___redArg(ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__8_value, i8 noundef zeroext 0, ptr noundef nonnull %i.br, ptr noundef nonnull %i.dg, i8 noundef zeroext 0, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) ; 10 uses
  %i.dv = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dw = and i64 %i.dv, 1
  %.not.i680 = icmp eq i64 %i.dw, 0               ; 2 uses
  br i1 %.not.i680, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %lean_inc_ref.exit679
  %i.dx = lshr i64 %i.dv, 1
  %i.dy = trunc i64 %i.dx to i32
  br label %lean_obj_tag.exit683

bb.bi:                                            ; preds = %lean_inc_ref.exit679
  %i.dz = getelementptr i8, ptr %i.du, i64 4
  %.val.i682 = load i32, ptr %i.dz, align 4
  %i.ea = lshr i32 %.val.i682, 24
  br label %lean_obj_tag.exit683

lean_obj_tag.exit683:                             ; preds = %bb.bh, %bb.bi
  %.0.i681 = phi i32 [ %i.dy, %bb.bh ], [ %i.ea, %bb.bi ]
  %i.eb = icmp eq i32 %.0.i681, 0
  br i1 %i.eb, label %bb.bj, label %bb.fp

bb.bj:                                            ; preds = %lean_obj_tag.exit683
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !10 ; 5 uses
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = and i64 %i.ee, 1
  %.not.i478 = icmp eq i64 %i.ef, 0
  br i1 %.not.i478, label %bb.bk, label %lean_inc.exit479

bb.bk:                                            ; preds = %bb.bj
  %.val.i.i684 = load i32, ptr %i.ed, align 4, !tbaa !14 ; 3 uses
  %i.eg = icmp sgt i32 %.val.i.i684, 0
  br i1 %i.eg, label %bb.bl, label %bb.bm, !prof !16

bb.bl:                                            ; preds = %bb.bk
  %i.eh = add nuw i32 %.val.i.i684, 1
  store i32 %i.eh, ptr %i.ed, align 4, !tbaa !14
  br label %lean_inc.exit479

bb.bm:                                            ; preds = %bb.bk
  %.not.i.i685 = icmp eq i32 %.val.i.i684, 0
  br i1 %.not.i.i685, label %lean_inc.exit479, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ei = atomicrmw sub ptr %i.ed, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit479

lean_inc.exit479:                                 ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bj
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.du, i32 noundef 1)
  %i.ej = tail call ptr @lean_alloc_object(i64 noundef 40) #6 ; 5 uses
  store i32 1, ptr %i.ej, align 4, !tbaa !14
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = and i32 %i.el, 65535
  %i.en = or disjoint i32 %i.em, -167772160
  store i32 %i.en, ptr %i.ek, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i64 0, ptr %i.eo, align 8, !tbaa !12
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store i64 2, ptr %i.ep, align 8, !tbaa !12
  %i.eq = tail call ptr @lean_array_push(ptr noundef nonnull %i.ej, ptr noundef %i.ed) #6
  %i.er = tail call ptr @lean_array_push(ptr noundef %i.eq, ptr noundef %i.bg) #6
  %i.es = tail call ptr @l_Lean_Meta_mkAppM(ptr noundef nonnull @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___redArg___closed__11_value, ptr noundef %i.er, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #6 ; 10 uses
  %i.et = ptrtoint ptr %i.es to i64               ; 2 uses
  %i.eu = and i64 %i.et, 1
  %.not.i687 = icmp eq i64 %i.eu, 0               ; 2 uses
  br i1 %.not.i687, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %lean_inc.exit479
  %i.ev = lshr i64 %i.et, 1
  %i.ew = trunc i64 %i.ev to i32
  br label %lean_obj_tag.exit690

bb.bp:                                            ; preds = %lean_inc.exit479
  %i.ex = getelementptr i8, ptr %i.es, i64 4
  %.val.i689 = load i32, ptr %i.ex, align 4
  %i.ey = lshr i32 %.val.i689, 24
  br label %lean_obj_tag.exit690

lean_obj_tag.exit690:                             ; preds = %bb.bo, %bb.bp
  %.0.i688 = phi i32 [ %i.ew, %bb.bo ], [ %i.ey, %bb.bp ]
  %i.ez = icmp eq i32 %.0.i688, 0
  br i1 %i.ez, label %bb.bq, label %bb.ep

bb.bq:                                            ; preds = %lean_obj_tag.exit690
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !10 ; 5 uses
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = and i64 %i.fc, 1
  %.not.i476 = icmp eq i64 %i.fd, 0
  br i1 %.not.i476, label %bb.br, label %lean_inc.exit477

bb.br:                                            ; preds = %bb.bq
  %.val.i.i691 = load i32, ptr %i.fb, align 4, !tbaa !14 ; 3 uses
  %i.fe = icmp sgt i32 %.val.i.i691, 0
  br i1 %i.fe, label %bb.bs, label %bb.bt, !prof !16

bb.bs:                                            ; preds = %bb.br
  %i.ff = add nuw i32 %.val.i.i691, 1
  store i32 %i.ff, ptr %i.fb, align 4, !tbaa !14
  br label %lean_inc.exit477

bb.bt:                                            ; preds = %bb.br
  %.not.i.i692 = icmp eq i32 %.val.i.i691, 0
  br i1 %.not.i.i692, label %lean_inc.exit477, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fg = atomicrmw sub ptr %i.fb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit477

lean_inc.exit477:                                 ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.bq
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.es, i32 noundef 1)
  %i.fh = tail call ptr @l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval(ptr noundef %1, ptr noundef %i.fb, i8 noundef zeroext %2, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) ; 10 uses
  %i.fi = ptrtoint ptr %i.fh to i64               ; 2 uses
  %i.fj = and i64 %i.fi, 1
  %.not.i694 = icmp eq i64 %i.fj, 0               ; 2 uses
  br i1 %.not.i694, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %lean_inc.exit477
  %i.fk = lshr i64 %i.fi, 1
  %i.fl = trunc i64 %i.fk to i32
  br label %lean_obj_tag.exit697

bb.bw:                                            ; preds = %lean_inc.exit477
  %i.fm = getelementptr i8, ptr %i.fh, i64 4
  %.val.i696 = load i32, ptr %i.fm, align 4
  %i.fn = lshr i32 %.val.i696, 24
  br label %lean_obj_tag.exit697

lean_obj_tag.exit697:                             ; preds = %bb.bv, %bb.bw
  %.0.i695 = phi i32 [ %i.fl, %bb.bv ], [ %i.fn, %bb.bw ]
  %i.fo = icmp eq i32 %.0.i695, 0
  br i1 %i.fo, label %bb.bx, label %bb.dt

bb.bx:                                            ; preds = %lean_obj_tag.exit697
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !10 ; 5 uses
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = and i64 %i.fr, 1
  %.not.i474 = icmp eq i64 %i.fs, 0
  br i1 %.not.i474, label %bb.by, label %lean_inc.exit475

bb.by:                                            ; preds = %bb.bx
  %.val.i.i698 = load i32, ptr %i.fq, align 4, !tbaa !14 ; 3 uses
  %i.ft = icmp sgt i32 %.val.i.i698, 0
  br i1 %i.ft, label %bb.bz, label %bb.ca, !prof !16

bb.bz:                                            ; preds = %bb.by
  %i.fu = add nuw i32 %.val.i.i698, 1
  store i32 %i.fu, ptr %i.fq, align 4, !tbaa !14
  br label %lean_inc.exit475

bb.ca:                                            ; preds = %bb.by
  %.not.i.i699 = icmp eq i32 %.val.i.i698, 0
  br i1 %.not.i.i699, label %lean_inc.exit475, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fv = atomicrmw sub ptr %i.fq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit475

lean_inc.exit475:                                 ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.bx
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.fh, i32 noundef 1)
  %i.fw = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !10
  %i.fy = load ptr, ptr @l_Lean_Elab_inServer, align 8, !tbaa !10
  %i.fz = tail call zeroext i8 @l_Lean_Option_get___at___00Lean_Elab_addMacroStack___at___00Lean_throwError___at___00__private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_elabTermForEval_spec__1_spec__2_spec__5(ptr noundef %i.fx, ptr noundef %i.fy)
  %i.ga = icmp eq i8 %i.fz, 0
  br i1 %i.ga, label %bb.cc, label %bb.ch

bb.cc:                                            ; preds = %lean_inc.exit475
  br i1 %.not.i482, label %bb.cd, label %lean_dec.exit538

bb.cd:                                            ; preds = %bb.cc
  %i.gb = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.gc = icmp sgt i32 %i.gb, 1
  br i1 %i.gc, label %bb.ce, label %bb.cf, !prof !16

bb.ce:                                            ; preds = %bb.cd
  %i.gd = add nsw i32 %i.gb, -1
  store i32 %i.gd, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit538

bb.cf:                                            ; preds = %bb.cd
  %.not.i546 = icmp eq i32 %i.gb, 0
  br i1 %.not.i546, label %lean_dec.exit538, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit538

bb.ch:                                            ; preds = %lean_inc.exit475
  br i1 %.not.i482, label %bb.ci, label %lean_dec.exit538

bb.ci:                                            ; preds = %bb.ch
  %i.ge = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.gf = icmp sgt i32 %i.ge, 1
  br i1 %i.gf, label %bb.cj, label %bb.ck, !prof !16

bb.cj:                                            ; preds = %bb.ci
  %i.gg = add nsw i32 %i.ge, -1
  store i32 %i.gg, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit538

bb.ck:                                            ; preds = %bb.ci
  %.not.i548 = icmp eq i32 %i.ge, 0
  br i1 %.not.i548, label %lean_dec.exit538, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit538

lean_dec.exit538:                                 ; preds = %bb.ch, %bb.cj, %bb.ck, %bb.cl, %bb.cc, %bb.ce, %bb.cf, %bb.cg
  %.0449 = phi i8 [ 1, %bb.cc ], [ 1, %bb.cg ], [ 1, %bb.cf ], [ 1, %bb.ce ], [ 0, %bb.cl ], [ 0, %bb.ck ], [ 0, %bb.cj ], [ 0, %bb.ch ]
  %i.gh = tail call ptr @l_Lean_evalConst___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__1___at___00Lean_Elab_Command_elabEvalCoreUnsafe_spec__8_spec__11___redArg(ptr noundef %i.fq, i8 noundef zeroext %.0449, ptr noundef %6, ptr poison, ptr noundef %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef %11) ; 14 uses
  %i.gi = ptrtoint ptr %i.gh to i64               ; 2 uses
  %i.gj = and i64 %i.gi, 1
  %.not.i701 = icmp eq i64 %i.gj, 0               ; 3 uses
  br i1 %.not.i701, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %lean_dec.exit538
  %i.gk = lshr i64 %i.gi, 1
  %i.gl = trunc i64 %i.gk to i32
  br label %lean_obj_tag.exit704

bb.cn:                                            ; preds = %lean_dec.exit538
  %i.gm = getelementptr i8, ptr %i.gh, i64 4
  %.val.i703 = load i32, ptr %i.gm, align 4
  %i.gn = lshr i32 %.val.i703, 24
  br label %lean_obj_tag.exit704

lean_obj_tag.exit704:                             ; preds = %bb.cm, %bb.cn
  %.0.i702 = phi i32 [ %i.gl, %bb.cm ], [ %i.gn, %bb.cn ]
  %i.go = icmp eq i32 %.0.i702, 0
  br i1 %i.go, label %bb.co, label %bb.db

bb.co:                                            ; preds = %lean_obj_tag.exit704
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !10 ; 5 uses
  %.val646 = load i32, ptr %i.gh, align 8, !tbaa !14
  %i.gr = icmp eq i32 %.val646, 1                 ; 2 uses
  br i1 %i.gr, label %lean_dec.exit534, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = and i64 %i.gs, 1
  %.not.i472 = icmp eq i64 %i.gt, 0
  br i1 %.not.i472, label %bb.cq, label %lean_inc.exit473

bb.cq:                                            ; preds = %bb.cp
  %.val.i.i705 = load i32, ptr %i.gq, align 4, !tbaa !14 ; 3 uses
  %i.gu = icmp sgt i32 %.val.i.i705, 0
  br i1 %i.gu, label %bb.cr, label %bb.cs, !prof !16

bb.cr:                                            ; preds = %bb.cq
  %i.gv = add nuw i32 %.val.i.i705, 1
  store i32 %i.gv, ptr %i.gq, align 4, !tbaa !14
  br label %lean_inc.exit473

bb.cs:                                            ; preds = %bb.cq
  %.not.i.i706 = icmp eq i32 %.val.i.i705, 0
  br i1 %.not.i.i706, label %lean_inc.exit473, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.gw = atomicrmw sub ptr %i.gq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit473

lean_inc.exit473:                                 ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cp
  br i1 %.not.i701, label %bb.cu, label %lean_dec.exit534

bb.cu:                                            ; preds = %lean_inc.exit473
  %i.gx = load i32, ptr %i.gh, align 8, !tbaa !14 ; 3 uses
  %i.gy = icmp sgt i32 %i.gx, 1
  br i1 %i.gy, label %bb.cv, label %bb.cw, !prof !16

bb.cv:                                            ; preds = %bb.cu
  %i.gz = add nsw i32 %i.gx, -1
  store i32 %i.gz, ptr %i.gh, align 8, !tbaa !14
  br label %lean_dec.exit534

bb.cw:                                            ; preds = %bb.cu
  %.not.i550 = icmp eq i32 %i.gx, 0
  br i1 %.not.i550, label %lean_dec.exit534, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gh) #6
  br label %lean_dec.exit534

lean_dec.exit534:                                 ; preds = %lean_inc.exit473, %bb.cv, %bb.cw, %bb.cx, %bb.co
  %.0448 = phi ptr [ %i.gh, %bb.co ], [ inttoptr (i64 1 to ptr), %bb.cx ], [ inttoptr (i64 1 to ptr), %bb.cw ], [ inttoptr (i64 1 to ptr), %bb.cv ], [ inttoptr (i64 1 to ptr), %lean_inc.exit473 ]
  %i.ha = tail call ptr @lean_alloc_object(i64 noundef 32) #6 ; 7 uses
  store i32 1, ptr %i.ha, align 4, !tbaa !14
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 4 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = and i32 %i.hc, 65535
  %i.he = or disjoint i32 %i.hd, -184549376
  store i32 %i.he, ptr %i.hb, align 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__1___at___00Lean_Elab_Command_elabEvalCoreUnsafe_spec__8_spec__14___redArg___lam__2___boxed, ptr %i.hf, align 8, !tbaa !10
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store i16 8, ptr %i.hg, align 8, !tbaa !22
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 18
  store i16 1, ptr %i.hh, align 2, !tbaa !22
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  store ptr %i.gq, ptr %i.hi, align 8, !tbaa !10
  %i.hj = tail call ptr @lean_alloc_object(i64 noundef 40) #6 ; 8 uses
  store i32 1, ptr %i.hj, align 4, !tbaa !14
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4
  %i.hm = and i32 %i.hl, 65535
  %i.hn = or disjoint i32 %i.hm, -184549376
  store i32 %i.hn, ptr %i.hk, align 4
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store ptr @l_Lean_Elab_Command_elabEvalCoreUnsafe___elam__0___at___00Lean_Elab_Command_elabEvalCoreUnsafe___elam__1___at___00Lean_Elab_Command_elabEvalCoreUnsafe_spec__8_spec__14___redArg___lam__0___boxed, ptr %i.ho, align 8, !tbaa !10
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store i16 5, ptr %i.hp, align 8, !tbaa !22
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 18
  store i16 2, ptr %i.hq, align 2, !tbaa !22
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  store ptr %i.ha, ptr %i.hr, align 8, !tbaa !10
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  store ptr %3, ptr %i.hs, align 8, !tbaa !10
  br i1 %i.bh, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %lean_dec.exit534
  %i.ht = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %bb.cz

bb.cz:                                            ; preds = %lean_dec.exit534, %bb.cy
  %.sink873 = phi ptr [ %i.ht, %bb.cy ], [ %.0451, %lean_dec.exit534 ] ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.sink873, i64 8
  store ptr %i.br, ptr %i.hu, align 8, !tbaa !10
  %i.hv = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store ptr %i.hj, ptr %i.hw, align 8, !tbaa !10
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store ptr %.sink873, ptr %i.hx, align 8, !tbaa !10
  %i.hy = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store ptr %i.hv, ptr %i.hz, align 8, !tbaa !10
  br i1 %i.gr, label %lean_dec.exit532.sink.split, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ia = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit532.sink.split

bb.db:                                            ; preds = %lean_obj_tag.exit704
  %i.ib = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.ic = icmp sgt i32 %i.ib, 1
  br i1 %i.ic, label %bb.dc, label %bb.dd, !prof !16

bb.dc:                                            ; preds = %bb.db
  %i.id = add nsw i32 %i.ib, -1
  store i32 %i.id, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit633

bb.dd:                                            ; preds = %bb.db
  %.not.i632 = icmp eq i32 %i.ib, 0
  br i1 %.not.i632, label %lean_dec_ref.exit633, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit633

lean_dec_ref.exit633:                             ; preds = %bb.dc, %bb.dd, %bb.de
  %i.ie = ptrtoint ptr %.0451 to i64
  %i.if = and i64 %i.ie, 1
  %.not.i708 = icmp eq i64 %i.if, 0
  br i1 %.not.i708, label %bb.df, label %lean_del_object.exit709

bb.df:                                            ; preds = %lean_dec_ref.exit633
  tail call void @lean_free_object(ptr noundef nonnull %.0451) #6
  br label %lean_del_object.exit709

lean_del_object.exit709:                          ; preds = %lean_dec_ref.exit633, %bb.df
  %i.ig = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.ih = icmp sgt i32 %i.ig, 1
  br i1 %i.ih, label %bb.dg, label %bb.dh, !prof !16

bb.dg:                                            ; preds = %lean_del_object.exit709
  %i.ii = add nsw i32 %i.ig, -1
  store i32 %i.ii, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit631

bb.dh:                                            ; preds = %lean_del_object.exit709
  %.not.i630 = icmp eq i32 %i.ig, 0
  br i1 %.not.i630, label %lean_dec_ref.exit631, label %bb.di

bb.di:                                            ; preds = %bb.dh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit631

lean_dec_ref.exit631:                             ; preds = %bb.dg, %bb.dh, %bb.di
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !10 ; 5 uses
  %.val645 = load i32, ptr %i.gh, align 8, !tbaa !14
  %i.il = icmp eq i32 %.val645, 1
  br i1 %i.il, label %lean_dec.exit532, label %bb.dj

bb.dj:                                            ; preds = %lean_dec_ref.exit631
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = and i64 %i.im, 1
  %.not.i470 = icmp eq i64 %i.in, 0
  br i1 %.not.i470, label %bb.dk, label %lean_inc.exit471

bb.dk:                                            ; preds = %bb.dj
  %.val.i.i710 = load i32, ptr %i.ik, align 4, !tbaa !14 ; 3 uses
  %i.io = icmp sgt i32 %.val.i.i710, 0
  br i1 %i.io, label %bb.dl, label %bb.dm, !prof !16

bb.dl:                                            ; preds = %bb.dk
  %i.ip = add nuw i32 %.val.i.i710, 1
  store i32 %i.ip, ptr %i.ik, align 4, !tbaa !14
  br label %lean_inc.exit471

bb.dm:                                            ; preds = %bb.dk
  %.not.i.i711 = icmp eq i32 %.val.i.i710, 0
  br i1 %.not.i.i711, label %lean_inc.exit471, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.iq = atomicrmw sub ptr %i.ik, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit471

lean_inc.exit471:                                 ; preds = %bb.dn, %bb.dm, %bb.dl, %bb.dj
  br i1 %.not.i701, label %bb.do, label %bb.ds

bb.do:                                            ; preds = %lean_inc.exit471
  %i.ir = load i32, ptr %i.gh, align 8, !tbaa !14 ; 3 uses
  %i.is = icmp sgt i32 %i.ir, 1
  br i1 %i.is, label %bb.dp, label %bb.dq, !prof !16

bb.dp:                                            ; preds = %bb.do
  %i.it = add nsw i32 %i.ir, -1
  store i32 %i.it, ptr %i.gh, align 8, !tbaa !14
  br label %bb.ds

bb.dq:                                            ; preds = %bb.do
  %.not.i552 = icmp eq i32 %i.ir, 0
  br i1 %.not.i552, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gh) #6
  br label %bb.ds

bb.ds:                                            ; preds = %lean_inc.exit471, %bb.dp, %bb.dq, %bb.dr
  %i.iu = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit532.sink.split

bb.dt:                                            ; preds = %lean_obj_tag.exit697
  br i1 %.not.i482, label %bb.du, label %lean_dec.exit530

bb.du:                                            ; preds = %bb.dt
  %i.iv = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.iw = icmp sgt i32 %i.iv, 1
  br i1 %i.iw, label %bb.dv, label %bb.dw, !prof !16

bb.dv:                                            ; preds = %bb.du
  %i.ix = add nsw i32 %i.iv, -1
  store i32 %i.ix, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit530

bb.dw:                                            ; preds = %bb.du
  %.not.i554 = icmp eq i32 %i.iv, 0
  br i1 %.not.i554, label %lean_dec.exit530, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit530

lean_dec.exit530:                                 ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.dt
  %i.iy = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.iz = icmp sgt i32 %i.iy, 1
  br i1 %i.iz, label %bb.dy, label %bb.dz, !prof !16

bb.dy:                                            ; preds = %lean_dec.exit530
  %i.ja = add nsw i32 %i.iy, -1
  store i32 %i.ja, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit629

bb.dz:                                            ; preds = %lean_dec.exit530
  %.not.i628 = icmp eq i32 %i.iy, 0
  br i1 %.not.i628, label %lean_dec_ref.exit629, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit629

lean_dec_ref.exit629:                             ; preds = %bb.dy, %bb.dz, %bb.ea
  %i.jb = ptrtoint ptr %.0451 to i64
  %i.jc = and i64 %i.jb, 1
  %.not.i713 = icmp eq i64 %i.jc, 0
  br i1 %.not.i713, label %bb.eb, label %lean_del_object.exit714

bb.eb:                                            ; preds = %lean_dec_ref.exit629
  tail call void @lean_free_object(ptr noundef nonnull %.0451) #6
  br label %lean_del_object.exit714

lean_del_object.exit714:                          ; preds = %lean_dec_ref.exit629, %bb.eb
  %i.jd = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.je = icmp sgt i32 %i.jd, 1
  br i1 %i.je, label %bb.ec, label %bb.ed, !prof !16

bb.ec:                                            ; preds = %lean_del_object.exit714
  %i.jf = add nsw i32 %i.jd, -1
  store i32 %i.jf, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit627

bb.ed:                                            ; preds = %lean_del_object.exit714
  %.not.i626 = icmp eq i32 %i.jd, 0
  br i1 %.not.i626, label %lean_dec_ref.exit627, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit627

lean_dec_ref.exit627:                             ; preds = %bb.ec, %bb.ed, %bb.ee
  %i.jg = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !10 ; 5 uses
  %.val644 = load i32, ptr %i.fh, align 8, !tbaa !14
  %i.ji = icmp eq i32 %.val644, 1
  br i1 %i.ji, label %lean_dec.exit532, label %bb.ef

bb.ef:                                            ; preds = %lean_dec_ref.exit627
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = and i64 %i.jj, 1
  %.not.i468 = icmp eq i64 %i.jk, 0
  br i1 %.not.i468, label %bb.eg, label %lean_inc.exit469

bb.eg:                                            ; preds = %bb.ef
  %.val.i.i715 = load i32, ptr %i.jh, align 4, !tbaa !14 ; 3 uses
  %i.jl = icmp sgt i32 %.val.i.i715, 0
  br i1 %i.jl, label %bb.eh, label %bb.ei, !prof !16

bb.eh:                                            ; preds = %bb.eg
  %i.jm = add nuw i32 %.val.i.i715, 1
  store i32 %i.jm, ptr %i.jh, align 4, !tbaa !14
  br label %lean_inc.exit469

bb.ei:                                            ; preds = %bb.eg
  %.not.i.i716 = icmp eq i32 %.val.i.i715, 0
  br i1 %.not.i.i716, label %lean_inc.exit469, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.jn = atomicrmw sub ptr %i.jh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit469

lean_inc.exit469:                                 ; preds = %bb.ej, %bb.ei, %bb.eh, %bb.ef
  br i1 %.not.i694, label %bb.ek, label %bb.eo

bb.ek:                                            ; preds = %lean_inc.exit469
  %i.jo = load i32, ptr %i.fh, align 8, !tbaa !14 ; 3 uses
  %i.jp = icmp sgt i32 %i.jo, 1
  br i1 %i.jp, label %bb.el, label %bb.em, !prof !16

bb.el:                                            ; preds = %bb.ek
  %i.jq = add nsw i32 %i.jo, -1
  store i32 %i.jq, ptr %i.fh, align 8, !tbaa !14
  br label %bb.eo

bb.em:                                            ; preds = %bb.ek
  %.not.i556 = icmp eq i32 %i.jo, 0
  br i1 %.not.i556, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fh) #6
  br label %bb.eo

bb.eo:                                            ; preds = %lean_inc.exit469, %bb.el, %bb.em, %bb.en
  %i.jr = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit532.sink.split

bb.ep:                                            ; preds = %lean_obj_tag.exit690
  br i1 %.not.i482, label %bb.eq, label %lean_dec.exit526

bb.eq:                                            ; preds = %bb.ep
  %i.js = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.jt = icmp sgt i32 %i.js, 1
  br i1 %i.jt, label %bb.er, label %bb.es, !prof !16

bb.er:                                            ; preds = %bb.eq
  %i.ju = add nsw i32 %i.js, -1
  store i32 %i.ju, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit526

bb.es:                                            ; preds = %bb.eq
  %.not.i558 = icmp eq i32 %i.js, 0
  br i1 %.not.i558, label %lean_dec.exit526, label %bb.et

bb.et:                                            ; preds = %bb.es
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit526

lean_dec.exit526:                                 ; preds = %bb.et, %bb.es, %bb.er, %bb.ep
  %i.jv = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.jw = icmp sgt i32 %i.jv, 1
  br i1 %i.jw, label %bb.eu, label %bb.ev, !prof !16

bb.eu:                                            ; preds = %lean_dec.exit526
  %i.jx = add nsw i32 %i.jv, -1
  store i32 %i.jx, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit625

bb.ev:                                            ; preds = %lean_dec.exit526
  %.not.i624 = icmp eq i32 %i.jv, 0
  br i1 %.not.i624, label %lean_dec_ref.exit625, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit625

lean_dec_ref.exit625:                             ; preds = %bb.eu, %bb.ev, %bb.ew
  %i.jy = ptrtoint ptr %.0451 to i64
  %i.jz = and i64 %i.jy, 1
  %.not.i718 = icmp eq i64 %i.jz, 0
  br i1 %.not.i718, label %bb.ex, label %lean_del_object.exit719

bb.ex:                                            ; preds = %lean_dec_ref.exit625
  tail call void @lean_free_object(ptr noundef nonnull %.0451) #6
  br label %lean_del_object.exit719

lean_del_object.exit719:                          ; preds = %lean_dec_ref.exit625, %bb.ex
  %i.ka = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.kb = icmp sgt i32 %i.ka, 1
  br i1 %i.kb, label %bb.ey, label %bb.ez, !prof !16

bb.ey:                                            ; preds = %lean_del_object.exit719
  %i.kc = add nsw i32 %i.ka, -1
  store i32 %i.kc, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit623

bb.ez:                                            ; preds = %lean_del_object.exit719
  %.not.i622 = icmp eq i32 %i.ka, 0
  br i1 %.not.i622, label %lean_dec_ref.exit623, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit623

lean_dec_ref.exit623:                             ; preds = %bb.ey, %bb.ez, %bb.fa
  %i.kd = ptrtoint ptr %1 to i64
  %i.ke = and i64 %i.kd, 1
  %.not.i523 = icmp eq i64 %i.ke, 0
  br i1 %.not.i523, label %bb.fb, label %lean_dec.exit524

bb.fb:                                            ; preds = %lean_dec_ref.exit623
  %i.kf = load i32, ptr %1, align 4, !tbaa !14    ; 3 uses
  %i.kg = icmp sgt i32 %i.kf, 1
  br i1 %i.kg, label %bb.fc, label %bb.fd, !prof !16

bb.fc:                                            ; preds = %bb.fb
  %i.kh = add nsw i32 %i.kf, -1
  store i32 %i.kh, ptr %1, align 4, !tbaa !14
  br label %lean_dec.exit524

bb.fd:                                            ; preds = %bb.fb
  %.not.i560 = icmp eq i32 %i.kf, 0
  br i1 %.not.i560, label %lean_dec.exit524, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit524

lean_dec.exit524:                                 ; preds = %bb.fe, %bb.fd, %bb.fc, %lean_dec_ref.exit623
  %i.ki = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !10 ; 5 uses
  %.val643 = load i32, ptr %i.es, align 8, !tbaa !14
  %i.kk = icmp eq i32 %.val643, 1
  br i1 %i.kk, label %lean_dec.exit532, label %bb.ff

bb.ff:                                            ; preds = %lean_dec.exit524
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = and i64 %i.kl, 1
  %.not.i466 = icmp eq i64 %i.km, 0
  br i1 %.not.i466, label %bb.fg, label %lean_inc.exit467

bb.fg:                                            ; preds = %bb.ff
  %.val.i.i720 = load i32, ptr %i.kj, align 4, !tbaa !14 ; 3 uses
  %i.kn = icmp sgt i32 %.val.i.i720, 0
  br i1 %i.kn, label %bb.fh, label %bb.fi, !prof !16

bb.fh:                                            ; preds = %bb.fg
  %i.ko = add nuw i32 %.val.i.i720, 1
  store i32 %i.ko, ptr %i.kj, align 4, !tbaa !14
  br label %lean_inc.exit467

bb.fi:                                            ; preds = %bb.fg
  %.not.i.i721 = icmp eq i32 %.val.i.i720, 0
  br i1 %.not.i.i721, label %lean_inc.exit467, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.kp = atomicrmw sub ptr %i.kj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit467

lean_inc.exit467:                                 ; preds = %bb.fj, %bb.fi, %bb.fh, %bb.ff
  br i1 %.not.i687, label %bb.fk, label %bb.fo

bb.fk:                                            ; preds = %lean_inc.exit467
  %i.kq = load i32, ptr %i.es, align 8, !tbaa !14 ; 3 uses
  %i.kr = icmp sgt i32 %i.kq, 1
  br i1 %i.kr, label %bb.fl, label %bb.fm, !prof !16

bb.fl:                                            ; preds = %bb.fk
  %i.ks = add nsw i32 %i.kq, -1
  store i32 %i.ks, ptr %i.es, align 8, !tbaa !14
  br label %bb.fo

bb.fm:                                            ; preds = %bb.fk
  %.not.i562 = icmp eq i32 %i.kq, 0
  br i1 %.not.i562, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.es) #6
  br label %bb.fo

bb.fo:                                            ; preds = %lean_inc.exit467, %bb.fl, %bb.fm, %bb.fn
  %i.kt = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit532.sink.split

bb.fp:                                            ; preds = %lean_obj_tag.exit683
  br i1 %.not.i482, label %bb.fq, label %lean_dec.exit520

bb.fq:                                            ; preds = %bb.fp
  %i.ku = load i32, ptr %i.cl, align 512, !tbaa !14 ; 3 uses
  %i.kv = icmp sgt i32 %i.ku, 1
  br i1 %i.kv, label %bb.fr, label %bb.fs, !prof !16

bb.fr:                                            ; preds = %bb.fq
  %i.kw = add nsw i32 %i.ku, -1
  store i32 %i.kw, ptr %i.cl, align 512, !tbaa !14
  br label %lean_dec.exit520

bb.fs:                                            ; preds = %bb.fq
  %.not.i564 = icmp eq i32 %i.ku, 0
  br i1 %.not.i564, label %lean_dec.exit520, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %lean_dec.exit520

lean_dec.exit520:                                 ; preds = %bb.ft, %bb.fs, %bb.fr, %bb.fp
  %i.kx = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.ky = icmp sgt i32 %i.kx, 1
  br i1 %i.ky, label %bb.fu, label %bb.fv, !prof !16

bb.fu:                                            ; preds = %lean_dec.exit520
  %i.kz = add nsw i32 %i.kx, -1
  store i32 %i.kz, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit621

bb.fv:                                            ; preds = %lean_dec.exit520
  %.not.i620 = icmp eq i32 %i.kx, 0
  br i1 %.not.i620, label %lean_dec_ref.exit621, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit621

lean_dec_ref.exit621:                             ; preds = %bb.fu, %bb.fv, %bb.fw
  %i.la = ptrtoint ptr %.0451 to i64
  %i.lb = and i64 %i.la, 1
  %.not.i723 = icmp eq i64 %i.lb, 0
  br i1 %.not.i723, label %bb.fx, label %lean_del_object.exit724

bb.fx:                                            ; preds = %lean_dec_ref.exit621
  tail call void @lean_free_object(ptr noundef nonnull %.0451) #6
  br label %lean_del_object.exit724

lean_del_object.exit724:                          ; preds = %lean_dec_ref.exit621, %bb.fx
  %i.lc = ptrtoint ptr %i.bg to i64
  %i.ld = and i64 %i.lc, 1
  %.not.i517 = icmp eq i64 %i.ld, 0
  br i1 %.not.i517, label %bb.fy, label %lean_dec.exit518

bb.fy:                                            ; preds = %lean_del_object.exit724
  %i.le = load i32, ptr %i.bg, align 4, !tbaa !14 ; 3 uses
  %i.lf = icmp sgt i32 %i.le, 1
  br i1 %i.lf, label %bb.fz, label %bb.ga, !prof !16

bb.fz:                                            ; preds = %bb.fy
  %i.lg = add nsw i32 %i.le, -1
  store i32 %i.lg, ptr %i.bg, align 4, !tbaa !14
  br label %lean_dec.exit518

bb.ga:                                            ; preds = %bb.fy
  %.not.i566 = icmp eq i32 %i.le, 0
  br i1 %.not.i566, label %lean_dec.exit518, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bg) #6
  br label %lean_dec.exit518

lean_dec.exit518:                                 ; preds = %bb.gb, %bb.ga, %bb.fz, %lean_del_object.exit724
  %i.lh = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.li = icmp sgt i32 %i.lh, 1
  br i1 %i.li, label %bb.gc, label %bb.gd, !prof !16

bb.gc:                                            ; preds = %lean_dec.exit518
  %i.lj = add nsw i32 %i.lh, -1
  store i32 %i.lj, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit619

bb.gd:                                            ; preds = %lean_dec.exit518
  %.not.i618 = icmp eq i32 %i.lh, 0
  br i1 %.not.i618, label %lean_dec_ref.exit619, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit619

lean_dec_ref.exit619:                             ; preds = %bb.gc, %bb.gd, %bb.ge
  %i.lk = ptrtoint ptr %1 to i64
  %i.ll = and i64 %i.lk, 1
  %.not.i515 = icmp eq i64 %i.ll, 0
  br i1 %.not.i515, label %bb.gf, label %lean_dec.exit516

bb.gf:                                            ; preds = %lean_dec_ref.exit619
  %i.lm = load i32, ptr %1, align 4, !tbaa !14    ; 3 uses
  %i.ln = icmp sgt i32 %i.lm, 1
  br i1 %i.ln, label %bb.gg, label %bb.gh, !prof !16

bb.gg:                                            ; preds = %bb.gf
  %i.lo = add nsw i32 %i.lm, -1
  store i32 %i.lo, ptr %1, align 4, !tbaa !14
  br label %lean_dec.exit516

bb.gh:                                            ; preds = %bb.gf
  %.not.i568 = icmp eq i32 %i.lm, 0
  br i1 %.not.i568, label %lean_dec.exit516, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec.exit516

lean_dec.exit516:                                 ; preds = %bb.gi, %bb.gh, %bb.gg, %lean_dec_ref.exit619
  %i.lp = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !10 ; 5 uses
  %.val642 = load i32, ptr %i.du, align 8, !tbaa !14
  %i.lr = icmp eq i32 %.val642, 1
  br i1 %i.lr, label %lean_dec.exit532, label %bb.gj

bb.gj:                                            ; preds = %lean_dec.exit516
  %i.ls = ptrtoint ptr %i.lq to i64
  %i.lt = and i64 %i.ls, 1
  %.not.i464 = icmp eq i64 %i.lt, 0
  br i1 %.not.i464, label %bb.gk, label %lean_inc.exit465

bb.gk:                                            ; preds = %bb.gj
  %.val.i.i725 = load i32, ptr %i.lq, align 4, !tbaa !14 ; 3 uses
  %i.lu = icmp sgt i32 %.val.i.i725, 0
  br i1 %i.lu, label %bb.gl, label %bb.gm, !prof !16

bb.gl:                                            ; preds = %bb.gk
  %i.lv = add nuw i32 %.val.i.i725, 1
  store i32 %i.lv, ptr %i.lq, align 4, !tbaa !14
  br label %lean_inc.exit465

bb.gm:                                            ; preds = %bb.gk
  %.not.i.i726 = icmp eq i32 %.val.i.i725, 0
  br i1 %.not.i.i726, label %lean_inc.exit465, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.lw = atomicrmw sub ptr %i.lq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit465

lean_inc.exit465:                                 ; preds = %bb.gn, %bb.gm, %bb.gl, %bb.gj
  br i1 %.not.i680, label %bb.go, label %bb.gs

bb.go:                                            ; preds = %lean_inc.exit465
  %i.lx = load i32, ptr %i.du, align 8, !tbaa !14 ; 3 uses
  %i.ly = icmp sgt i32 %i.lx, 1
  br i1 %i.ly, label %bb.gp, label %bb.gq, !prof !16

bb.gp:                                            ; preds = %bb.go
  %i.lz = add nsw i32 %i.lx, -1
  store i32 %i.lz, ptr %i.du, align 8, !tbaa !14
  br label %bb.gs

bb.gq:                                            ; preds = %bb.go
  %.not.i570 = icmp eq i32 %i.lx, 0
  br i1 %.not.i570, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.du) #6
  br label %bb.gs

bb.gs:                                            ; preds = %lean_inc.exit465, %bb.gp, %bb.gq, %bb.gr
  %i.ma = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit532.sink.split

bb.gt:                                            ; preds = %lean_dec_ref_known.exit
  %i.mb = load i32, ptr %i.br, align 4, !tbaa !14 ; 3 uses
  %i.mc = icmp sgt i32 %i.mb, 1
  br i1 %i.mc, label %bb.gu, label %bb.gv, !prof !16

bb.gu:                                            ; preds = %bb.gt
  %i.md = add nsw i32 %i.mb, -1
  store i32 %i.md, ptr %i.br, align 4, !tbaa !14
  br label %lean_dec_ref.exit617

bb.gv:                                            ; preds = %bb.gt
  %.not.i616 = icmp eq i32 %i.mb, 0
  br i1 %.not.i616, label %lean_dec_ref.exit617, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec_ref.exit617

lean_dec_ref.exit617:                             ; preds = %bb.gu, %bb.gv, %bb.gw
  %i.me = load i32, ptr %3, align 4, !tbaa !14    ; 3 uses
  %i.mf = icmp sgt i32 %i.me, 1
  br i1 %i.mf, label %bb.gx, label %bb.gy, !prof !16

bb.gx:                                            ; preds = %lean_dec_ref.exit617
  %i.mg = add nsw i32 %i.me, -1
  store i32 %i.mg, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit615

bb.gy:                                            ; preds = %lean_dec_ref.exit617
  %.not.i614 = icmp eq i32 %i.me, 0
  br i1 %.not.i614, label %lean_dec_ref.exit615, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit615

lean_dec_ref.exit615:                             ; preds = %bb.gx, %bb.gy, %bb.gz
  %i.mh = load i32, ptr %0, align 4, !tbaa !14    ; 3 uses
  %i.mi = icmp sgt i32 %i.mh, 1
  br i1 %i.mi, label %bb.ha, label %bb.hb, !prof !16
end_hunk_6
