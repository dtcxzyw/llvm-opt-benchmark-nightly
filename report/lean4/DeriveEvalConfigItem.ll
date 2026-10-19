Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/DeriveEvalConfigItem?download=true
inline.NumInlined: 7549
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__7_spec__12:bb.a
bb.bl:                                            ; preds = %bb.bk
  %i.ea = add nsw i32 %.val.i4794, -1
  store i32 %i.ea, ptr %i.dd, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit4804

bb.bm:                                            ; preds = %bb.bk
  %.not.i8.i4795 = icmp eq i32 %.val.i4794, 0
  br i1 %.not.i8.i4795, label %lean_dec_ref_known.exit4804, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dd) #7
  br label %lean_dec_ref_known.exit4804

lean_dec_ref_known.exit4804:                      ; preds = %lean_dec.exit.i4799, %bb.bl, %bb.bm, %bb.bn
  %i.eb = and i64 %i.dn, 510
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.bo, label %bb.bjx

bb.bo:                                            ; preds = %lean_dec_ref_known.exit4804
  br i1 %.not.i3644, label %bb.bp, label %lean_inc.exit3645

bb.bp:                                            ; preds = %bb.bo
  %.val.i.i4805 = load i32, ptr %16, align 4, !tbaa !10 ; 3 uses
  %i.ed = icmp sgt i32 %.val.i.i4805, 0
  br i1 %i.ed, label %bb.bq, label %bb.br, !prof !11

bb.bq:                                            ; preds = %bb.bp
  %i.ee = add nuw i32 %.val.i.i4805, 1
  store i32 %i.ee, ptr %16, align 4, !tbaa !10
  br label %lean_inc.exit3645

bb.br:                                            ; preds = %bb.bp
  %.not.i.i4806 = icmp eq i32 %.val.i.i4805, 0
  br i1 %.not.i.i4806, label %lean_inc.exit3645, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ef = atomicrmw sub ptr %16, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3645

lean_inc.exit3645:                                ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bo
  %.val.i.i4808 = load i32, ptr %15, align 4, !tbaa !10 ; 3 uses
  %i.eg = icmp sgt i32 %.val.i.i4808, 0
  br i1 %i.eg, label %bb.bt, label %bb.bu, !prof !11

bb.bt:                                            ; preds = %lean_inc.exit3645
  %i.eh = add nuw i32 %.val.i.i4808, 1
  store i32 %i.eh, ptr %15, align 4, !tbaa !10
  br label %lean_inc_ref.exit4810

bb.bu:                                            ; preds = %lean_inc.exit3645
  %.not.i.i4809 = icmp eq i32 %.val.i.i4808, 0
  br i1 %.not.i.i4809, label %lean_inc_ref.exit4810, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ei = atomicrmw sub ptr %15, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit4810

lean_inc_ref.exit4810:                            ; preds = %bb.bt, %bb.bu, %bb.bv
  br i1 %.not.i3642, label %bb.bw, label %lean_inc.exit3643

bb.bw:                                            ; preds = %lean_inc_ref.exit4810
  %.val.i.i4811 = load i32, ptr %14, align 4, !tbaa !10 ; 3 uses
  %i.ej = icmp sgt i32 %.val.i.i4811, 0
  br i1 %i.ej, label %bb.bx, label %bb.by, !prof !11

bb.bx:                                            ; preds = %bb.bw
  %i.ek = add nuw i32 %.val.i.i4811, 1
  store i32 %i.ek, ptr %14, align 4, !tbaa !10
  br label %lean_inc.exit3643

bb.by:                                            ; preds = %bb.bw
  %.not.i.i4812 = icmp eq i32 %.val.i.i4811, 0
  br i1 %.not.i.i4812, label %lean_inc.exit3643, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.el = atomicrmw sub ptr %14, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3643

lean_inc.exit3643:                                ; preds = %bb.bz, %bb.by, %bb.bx, %lean_inc_ref.exit4810
  %.val.i.i4814 = load i32, ptr %13, align 4, !tbaa !10 ; 3 uses
  %i.em = icmp sgt i32 %.val.i.i4814, 0
  br i1 %i.em, label %bb.ca, label %bb.cb, !prof !11

bb.ca:                                            ; preds = %lean_inc.exit3643
  %i.en = add nuw i32 %.val.i.i4814, 1
  store i32 %i.en, ptr %13, align 4, !tbaa !10
  br label %lean_inc_ref.exit4816

bb.cb:                                            ; preds = %lean_inc.exit3643
  %.not.i.i4815 = icmp eq i32 %.val.i.i4814, 0
  br i1 %.not.i.i4815, label %lean_inc_ref.exit4816, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.eo = atomicrmw sub ptr %13, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit4816

lean_inc_ref.exit4816:                            ; preds = %bb.ca, %bb.cb, %bb.cc
  %i.ep = tail call ptr @lean_infer_type(ptr noundef %i.bw, ptr noundef nonnull %13, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %16) #7 ; 13 uses
  %i.eq = ptrtoint ptr %i.ep to i64               ; 2 uses
  %i.er = and i64 %i.eq, 1
  %.not.i4817 = icmp eq i64 %i.er, 0              ; 2 uses
  br i1 %.not.i4817, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %lean_inc_ref.exit4816
  %i.es = lshr i64 %i.eq, 1
  %i.et = trunc i64 %i.es to i32
  br label %lean_obj_tag.exit4820

bb.ce:                                            ; preds = %lean_inc_ref.exit4816
  %i.eu = getelementptr i8, ptr %i.ep, i64 4
  %.val.i4819 = load i32, ptr %i.eu, align 4
  %i.ev = lshr i32 %.val.i4819, 24
  br label %lean_obj_tag.exit4820

lean_obj_tag.exit4820:                            ; preds = %bb.cd, %bb.ce
  %.0.i4818 = phi i32 [ %i.et, %bb.cd ], [ %i.ev, %bb.ce ]
  %i.ew = icmp eq i32 %.0.i4818, 0
  br i1 %i.ew, label %bb.cf, label %bb.bhz

bb.cf:                                            ; preds = %lean_obj_tag.exit4820
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !14 ; 38 uses
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = and i64 %i.ez, 1
  %.not.i3640 = icmp eq i64 %i.fa, 0              ; 11 uses
  br i1 %.not.i3640, label %bb.cg, label %lean_inc.exit3641

bb.cg:                                            ; preds = %bb.cf
  %.val.i.i4821 = load i32, ptr %i.ey, align 4, !tbaa !10 ; 3 uses
  %i.fb = icmp sgt i32 %.val.i.i4821, 0
  br i1 %i.fb, label %bb.ch, label %bb.ci, !prof !11

bb.ch:                                            ; preds = %bb.cg
  %i.fc = add nuw i32 %.val.i.i4821, 1
  store i32 %i.fc, ptr %i.ey, align 4, !tbaa !10
  br label %lean_inc.exit3641

bb.ci:                                            ; preds = %bb.cg
  %.not.i.i4822 = icmp eq i32 %.val.i.i4821, 0
  br i1 %.not.i.i4822, label %lean_inc.exit3641, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.fd = atomicrmw sub ptr %i.ey, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3641

lean_inc.exit3641:                                ; preds = %bb.cj, %bb.ci, %bb.ch, %bb.cf
  %.val.i4824 = load i32, ptr %i.ep, align 8, !tbaa !10 ; 4 uses
  %i.fe = icmp eq i32 %.val.i4824, 1
  br i1 %i.fe, label %.preheader.i4826, label %bb.co

.preheader.i4826:                                 ; preds = %lean_inc.exit3641
  %i.ff = load ptr, ptr %i.ex, align 8, !tbaa !14 ; 4 uses
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = and i64 %i.fg, 1
  %.not.i.i4828 = icmp eq i64 %i.fh, 0
  br i1 %.not.i.i4828, label %bb.ck, label %lean_dec.exit.i4829

bb.ck:                                            ; preds = %.preheader.i4826
  %i.fi = load i32, ptr %i.ff, align 4, !tbaa !10 ; 3 uses
  %i.fj = icmp sgt i32 %i.fi, 1
  br i1 %i.fj, label %bb.cl, label %bb.cm, !prof !11

bb.cl:                                            ; preds = %bb.ck
  %i.fk = add nsw i32 %i.fi, -1
  store i32 %i.fk, ptr %i.ff, align 4, !tbaa !10
  br label %lean_dec.exit.i4829

bb.cm:                                            ; preds = %bb.ck
  %.not.i7.i4833 = icmp eq i32 %i.fi, 0
  br i1 %.not.i7.i4833, label %lean_dec.exit.i4829, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ff) #7
  br label %lean_dec.exit.i4829

lean_dec.exit.i4829:                              ; preds = %bb.cn, %bb.cm, %bb.cl, %.preheader.i4826
  tail call void @lean_free_object(ptr noundef nonnull %i.ep) #7
  br label %lean_dec_ref_known.exit4834

bb.co:                                            ; preds = %lean_inc.exit3641
  %i.fl = icmp sgt i32 %.val.i4824, 1
  br i1 %i.fl, label %bb.cp, label %bb.cq, !prof !11

bb.cp:                                            ; preds = %bb.co
  %i.fm = add nsw i32 %.val.i4824, -1
  store i32 %i.fm, ptr %i.ep, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit4834

bb.cq:                                            ; preds = %bb.co
  %.not.i8.i4825 = icmp eq i32 %.val.i4824, 0
  br i1 %.not.i8.i4825, label %lean_dec_ref_known.exit4834, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ep) #7
  br label %lean_dec_ref_known.exit4834

lean_dec_ref_known.exit4834:                      ; preds = %lean_dec.exit.i4829, %bb.cp, %bb.cq, %bb.cr
  br i1 %.not.i3646, label %bb.cs, label %lean_inc.exit3639

bb.cs:                                            ; preds = %lean_dec_ref_known.exit4834
  %.val.i.i4835 = load i32, ptr %i.dm, align 4, !tbaa !10 ; 3 uses
  %i.fn = icmp sgt i32 %.val.i.i4835, 0
  br i1 %i.fn, label %bb.ct, label %bb.cu, !prof !11

bb.ct:                                            ; preds = %bb.cs
  %i.fo = add nuw i32 %.val.i.i4835, 1
  store i32 %i.fo, ptr %i.dm, align 4, !tbaa !10
  br label %lean_inc.exit3639

bb.cu:                                            ; preds = %bb.cs
  %.not.i.i4836 = icmp eq i32 %.val.i.i4835, 0
  br i1 %.not.i.i4836, label %lean_inc.exit3639, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.fp = atomicrmw sub ptr %i.dm, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3639

lean_inc.exit3639:                                ; preds = %bb.cv, %bb.cu, %bb.ct, %lean_dec_ref_known.exit4834
  %i.fq = tail call ptr @lean_alloc_object(i64 noundef 32) #7 ; 19 uses
  store i32 1, ptr %i.fq, align 4, !tbaa !10
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = and i32 %i.fs, 65535
  %i.fu = or disjoint i32 %i.ft, -184549376
  store i32 %i.fu, ptr %i.fr, align 4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__1___boxed, ptr %i.fv, align 8, !tbaa !14
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store i16 10, ptr %i.fw, align 8, !tbaa !22
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 18
  store i16 1, ptr %i.fx, align 2, !tbaa !22
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  store ptr %i.dm, ptr %i.fy, align 8, !tbaa !14
  %i.fz = ptrtoint ptr %i.bj to i64
  %i.ga = and i64 %i.fz, 1
  %.not.i3636 = icmp eq i64 %i.ga, 0              ; 25 uses
  br i1 %.not.i3636, label %bb.cw, label %lean_inc.exit3637

bb.cw:                                            ; preds = %lean_inc.exit3639
  %.val.i.i4838 = load i32, ptr %i.bj, align 4, !tbaa !10 ; 3 uses
  %i.gb = icmp sgt i32 %.val.i.i4838, 0
  br i1 %i.gb, label %bb.cx, label %bb.cy, !prof !11

bb.cx:                                            ; preds = %bb.cw
  %i.gc = add nuw i32 %.val.i.i4838, 1
  store i32 %i.gc, ptr %i.bj, align 4, !tbaa !10
  br label %lean_inc.exit3637

bb.cy:                                            ; preds = %bb.cw
  %.not.i.i4839 = icmp eq i32 %.val.i.i4838, 0
  br i1 %.not.i.i4839, label %lean_inc.exit3637, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.gd = atomicrmw sub ptr %i.bj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3637

lean_inc.exit3637:                                ; preds = %bb.cz, %bb.cy, %bb.cx, %lean_inc.exit3639
  %.val.i.i4841 = load i32, ptr %.0260410352, align 4, !tbaa !10 ; 3 uses
  %i.ge = icmp sgt i32 %.val.i.i4841, 0
  br i1 %i.ge, label %bb.da, label %bb.db, !prof !11

bb.da:                                            ; preds = %lean_inc.exit3637
  %i.gf = add nuw i32 %.val.i.i4841, 1
  store i32 %i.gf, ptr %.0260410352, align 4, !tbaa !10
  br label %lean_inc_ref.exit4843

bb.db:                                            ; preds = %lean_inc.exit3637
  %.not.i.i4842 = icmp eq i32 %.val.i.i4841, 0
  br i1 %.not.i.i4842, label %lean_inc_ref.exit4843, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.gg = atomicrmw sub ptr %.0260410352, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit4843

lean_inc_ref.exit4843:                            ; preds = %bb.da, %bb.db, %bb.dc
  %i.gh = tail call ptr @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_HandlerTrie_find_x3f(ptr noundef nonnull %.0260410352, ptr noundef %i.bj, i8 noundef zeroext 0) ; 7 uses
  %i.gi = ptrtoint ptr %i.gh to i64               ; 2 uses
  %i.gj = and i64 %i.gi, 1
  %.not.i4844 = icmp eq i64 %i.gj, 0              ; 2 uses
  br i1 %.not.i4844, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %lean_inc_ref.exit4843
  %i.gk = lshr i64 %i.gi, 1
  %i.gl = trunc i64 %i.gk to i32
  br label %lean_obj_tag.exit4847

bb.de:                                            ; preds = %lean_inc_ref.exit4843
  %i.gm = getelementptr i8, ptr %i.gh, i64 4
  %.val.i4846 = load i32, ptr %i.gm, align 4
  %i.gn = lshr i32 %.val.i4846, 24
  br label %lean_obj_tag.exit4847

lean_obj_tag.exit4847:                            ; preds = %bb.dd, %bb.de
  %.0.i4845 = phi i32 [ %i.gl, %bb.dd ], [ %i.gn, %bb.de ]
  %i.go = icmp eq i32 %.0.i4845, 0
  br i1 %i.go, label %lean_dec.exit4124, label %bb.df

bb.df:                                            ; preds = %lean_obj_tag.exit4847
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !14 ; 8 uses
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = and i64 %i.gr, 1
  %.not.i3634 = icmp eq i64 %i.gs, 0              ; 2 uses
  br i1 %.not.i3634, label %bb.dg, label %lean_inc.exit3635

bb.dg:                                            ; preds = %bb.df
  %.val.i.i4848 = load i32, ptr %i.gq, align 4, !tbaa !10 ; 3 uses
  %i.gt = icmp sgt i32 %.val.i.i4848, 0
  br i1 %i.gt, label %bb.dh, label %bb.di, !prof !11

bb.dh:                                            ; preds = %bb.dg
  %i.gu = add nuw i32 %.val.i.i4848, 1
  store i32 %i.gu, ptr %i.gq, align 4, !tbaa !10
  br label %lean_inc.exit3635

bb.di:                                            ; preds = %bb.dg
  %.not.i.i4849 = icmp eq i32 %.val.i.i4848, 0
  br i1 %.not.i.i4849, label %lean_inc.exit3635, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.gv = atomicrmw sub ptr %i.gq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3635

lean_inc.exit3635:                                ; preds = %bb.dj, %bb.di, %bb.dh, %bb.df
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !14 ; 8 uses
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = and i64 %i.gy, 1
  %.not.i3632 = icmp eq i64 %i.gz, 0              ; 2 uses
  br i1 %.not.i3632, label %bb.dk, label %lean_inc.exit3633

bb.dk:                                            ; preds = %lean_inc.exit3635
  %.val.i.i4851 = load i32, ptr %i.gx, align 4, !tbaa !10 ; 3 uses
  %i.ha = icmp sgt i32 %.val.i.i4851, 0
  br i1 %i.ha, label %bb.dl, label %bb.dm, !prof !11

bb.dl:                                            ; preds = %bb.dk
  %i.hb = add nuw i32 %.val.i.i4851, 1
  store i32 %i.hb, ptr %i.gx, align 4, !tbaa !10
  br label %lean_inc.exit3633

bb.dm:                                            ; preds = %bb.dk
  %.not.i.i4852 = icmp eq i32 %.val.i.i4851, 0
  br i1 %.not.i.i4852, label %lean_inc.exit3633, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.hc = atomicrmw sub ptr %i.gx, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3633

lean_inc.exit3633:                                ; preds = %bb.dn, %bb.dm, %bb.dl, %lean_inc.exit3635
  br i1 %.not.i3634, label %bb.do, label %lean_dec.exit4126

bb.do:                                            ; preds = %lean_inc.exit3633
  %i.hd = load i32, ptr %i.gq, align 8, !tbaa !10 ; 3 uses
  %i.he = icmp sgt i32 %i.hd, 1
  br i1 %i.he, label %bb.dp, label %bb.dq, !prof !11

bb.dp:                                            ; preds = %bb.do
  %i.hf = add nsw i32 %i.hd, -1
  store i32 %i.hf, ptr %i.gq, align 8, !tbaa !10
  br label %lean_dec.exit4126

bb.dq:                                            ; preds = %bb.do
  %.not.i4138 = icmp eq i32 %i.hd, 0
  br i1 %.not.i4138, label %lean_dec.exit4126, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gq) #7
  br label %lean_dec.exit4126

lean_dec.exit4126:                                ; preds = %bb.dr, %bb.dq, %bb.dp, %lean_inc.exit3633
  %i.hg = tail call zeroext i8 @lean_name_eq(ptr noundef %i.bj, ptr noundef %i.gx) #7 ; 4 uses
  br i1 %.not.i3632, label %bb.ds, label %lean_dec.exit4124

bb.ds:                                            ; preds = %lean_dec.exit4126
  %i.hh = load i32, ptr %i.gx, align 4, !tbaa !10 ; 3 uses
  %i.hi = icmp sgt i32 %i.hh, 1
  br i1 %i.hi, label %bb.dt, label %bb.du, !prof !11

bb.dt:                                            ; preds = %bb.ds
  %i.hj = add nsw i32 %i.hh, -1
  store i32 %i.hj, ptr %i.gx, align 4, !tbaa !10
  br label %lean_dec.exit4124

bb.du:                                            ; preds = %bb.ds
  %.not.i4140 = icmp eq i32 %i.hh, 0
  br i1 %.not.i4140, label %lean_dec.exit4124, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gx) #7
  br label %lean_dec.exit4124

lean_inc.exit3579.thread:                         ; preds = %bb.ws, %bb.wt, %bb.wu, %lean_inc.exit3545, %bb.rf, %bb.rg, %bb.rh, %lean_inc.exit3563, %bb.lr, %bb.ls, %bb.lt, %lean_inc.exit3581, %lean_inc.exit3615
  %.02882 = phi ptr [ %i.kv, %lean_inc.exit3615 ], [ %i.xa, %bb.rf ], [ %i.pv, %bb.lr ], [ %i.pv, %lean_inc.exit3581 ], [ %i.pv, %bb.lt ], [ %i.pv, %bb.ls ], [ %i.xa, %lean_inc.exit3563 ], [ %i.xa, %bb.rh ], [ %i.xa, %bb.rg ], [ %i.xa, %lean_inc.exit3545 ], [ %i.xa, %bb.wu ], [ %i.xa, %bb.wt ], [ %i.xa, %bb.ws ]
  %.02875 = phi ptr [ %i.ku, %lean_inc.exit3615 ], [ %i.wz, %bb.rf ], [ %i.pu, %bb.lr ], [ %i.pu, %lean_inc.exit3581 ], [ %i.pu, %bb.lt ], [ %i.pu, %bb.ls ], [ %i.wz, %lean_inc.exit3563 ], [ %i.wz, %bb.rh ], [ %i.wz, %bb.rg ], [ %i.wz, %lean_inc.exit3545 ], [ %i.wz, %bb.wu ], [ %i.wz, %bb.wt ], [ %i.wz, %bb.ws ]
  %.02868 = phi ptr [ %i.kt, %lean_inc.exit3615 ], [ %i.wy, %bb.rf ], [ %i.pt, %bb.lr ], [ %i.pt, %lean_inc.exit3581 ], [ %i.pt, %bb.lt ], [ %i.pt, %bb.ls ], [ %i.wy, %lean_inc.exit3563 ], [ %i.wy, %bb.rh ], [ %i.wy, %bb.rg ], [ %i.wy, %lean_inc.exit3545 ], [ %i.wy, %bb.wu ], [ %i.wy, %bb.wt ], [ %i.wy, %bb.ws ]
  %.02819 = phi ptr [ %i.km, %lean_inc.exit3615 ], [ %i.aau, %bb.rf ], [ %i.tp, %bb.lr ], [ %i.tp, %lean_inc.exit3581 ], [ %i.tp, %bb.lt ], [ %i.tp, %bb.ls ], [ %i.aau, %lean_inc.exit3563 ], [ %i.aau, %bb.rh ], [ %i.aau, %bb.rg ], [ %i.ahw, %lean_inc.exit3545 ], [ %i.ahw, %bb.wu ], [ %i.ahw, %bb.wt ], [ %i.ahw, %bb.ws ]
  %.02774 = phi i8 [ 0, %lean_inc.exit3615 ], [ %3, %bb.rf ], [ %.03004, %bb.lr ], [ %.03004, %lean_inc.exit3581 ], [ %.03004, %bb.lt ], [ %.03004, %bb.ls ], [ %3, %lean_inc.exit3563 ], [ %3, %bb.rh ], [ %3, %bb.rg ], [ %3, %lean_inc.exit3545 ], [ %3, %bb.wu ], [ %3, %bb.wt ], [ %3, %bb.ws ]
  %i.hk = tail call ptr @l_Lean_SourceInfo_fromRef(ptr noundef %.02868, i8 noundef zeroext 0) #7 ; 13 uses
  %i.hl = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__33_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__34_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__8_value) #7
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = and i64 %i.hm, 1
  %.not.i4854 = icmp eq i64 %i.hn, 0
  br i1 %.not.i4854, label %bb.dw, label %lean_inc_n.exit4857

bb.dw:                                            ; preds = %lean_inc.exit3579.thread
  %.val.i.i4855 = load i32, ptr %i.hk, align 4, !tbaa !10 ; 3 uses
end_hunk_0
begin_hunk_1_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__7_spec__12:bb.a
  %.val.i.i4865 = load i32, ptr %16, align 4, !tbaa !10 ; 3 uses
  %i.jm = icmp sgt i32 %.val.i.i4865, 0
  br i1 %i.jm, label %bb.el, label %bb.em, !prof !11

bb.el:                                            ; preds = %bb.ek
  %i.jn = add nuw i32 %.val.i.i4865, 1
  store i32 %i.jn, ptr %16, align 4, !tbaa !10
  br label %lean_inc.exit3625

bb.em:                                            ; preds = %bb.ek
  %.not.i.i4866 = icmp eq i32 %.val.i.i4865, 0
  br i1 %.not.i.i4866, label %lean_inc.exit3625, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.jo = atomicrmw sub ptr %16, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3625

lean_inc.exit3625:                                ; preds = %bb.en, %bb.em, %bb.el, %lean_inc.exit3627
  %.val.i.i4868 = load i32, ptr %15, align 8, !tbaa !10 ; 3 uses
  %i.jp = icmp sgt i32 %.val.i.i4868, 0
  br i1 %i.jp, label %bb.eo, label %bb.ep, !prof !11

bb.eo:                                            ; preds = %lean_inc.exit3625
  %i.jq = add nuw i32 %.val.i.i4868, 1
  store i32 %i.jq, ptr %15, align 8, !tbaa !10
  br label %lean_inc_ref.exit4870

bb.ep:                                            ; preds = %lean_inc.exit3625
  %.not.i.i4869 = icmp eq i32 %.val.i.i4868, 0
  br i1 %.not.i.i4869, label %lean_inc_ref.exit4870, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.jr = atomicrmw sub ptr %15, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit4870

lean_inc_ref.exit4870:                            ; preds = %bb.eo, %bb.ep, %bb.eq
  br i1 %.not.i3642, label %bb.er, label %lean_inc.exit3623

bb.er:                                            ; preds = %lean_inc_ref.exit4870
  %.val.i.i4871 = load i32, ptr %14, align 4, !tbaa !10 ; 3 uses
  %i.js = icmp sgt i32 %.val.i.i4871, 0
  br i1 %i.js, label %bb.es, label %bb.et, !prof !11

bb.es:                                            ; preds = %bb.er
  %i.jt = add nuw i32 %.val.i.i4871, 1
  store i32 %i.jt, ptr %14, align 4, !tbaa !10
  br label %lean_inc.exit3623

bb.et:                                            ; preds = %bb.er
  %.not.i.i4872 = icmp eq i32 %.val.i.i4871, 0
  br i1 %.not.i.i4872, label %lean_inc.exit3623, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ju = atomicrmw sub ptr %14, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3623

lean_inc.exit3623:                                ; preds = %bb.eu, %bb.et, %bb.es, %lean_inc_ref.exit4870
  %.val.i.i4874 = load i32, ptr %13, align 8, !tbaa !10 ; 3 uses
  %i.jv = icmp sgt i32 %.val.i.i4874, 0
  br i1 %i.jv, label %bb.ev, label %bb.ew, !prof !11

bb.ev:                                            ; preds = %lean_inc.exit3623
  %i.jw = add nuw i32 %.val.i.i4874, 1
  store i32 %i.jw, ptr %13, align 8, !tbaa !10
  br label %lean_inc_ref.exit4876

bb.ew:                                            ; preds = %lean_inc.exit3623
  %.not.i.i4875 = icmp eq i32 %.val.i.i4874, 0
  br i1 %.not.i.i4875, label %lean_inc_ref.exit4876, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.jx = atomicrmw sub ptr %13, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit4876

lean_inc_ref.exit4876:                            ; preds = %bb.ev, %bb.ew, %bb.ex
  br i1 %.not.i3522, label %bb.ey, label %lean_inc.exit3621

bb.ey:                                            ; preds = %lean_inc_ref.exit4876
  %.val.i.i4877 = load i32, ptr %12, align 4, !tbaa !10 ; 3 uses
  %i.jy = icmp sgt i32 %.val.i.i4877, 0
  br i1 %i.jy, label %bb.ez, label %bb.fa, !prof !11

bb.ez:                                            ; preds = %bb.ey
  %i.jz = add nuw i32 %.val.i.i4877, 1
  store i32 %i.jz, ptr %12, align 4, !tbaa !10
  br label %lean_inc.exit3621

bb.fa:                                            ; preds = %bb.ey
  %.not.i.i4878 = icmp eq i32 %.val.i.i4877, 0
  br i1 %.not.i.i4878, label %lean_inc.exit3621, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ka = atomicrmw sub ptr %12, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3621

lean_inc.exit3621:                                ; preds = %bb.fb, %bb.fa, %bb.ez, %lean_inc_ref.exit4876
  %.val.i.i4880 = load i32, ptr %11, align 4, !tbaa !10 ; 3 uses
  %i.kb = icmp sgt i32 %.val.i.i4880, 0
  br i1 %i.kb, label %bb.fc, label %bb.fd, !prof !11

bb.fc:                                            ; preds = %lean_inc.exit3621
  %i.kc = add nuw i32 %.val.i.i4880, 1
  store i32 %i.kc, ptr %11, align 4, !tbaa !10
  br label %lean_inc_ref.exit4882

bb.fd:                                            ; preds = %lean_inc.exit3621
  %.not.i.i4881 = icmp eq i32 %.val.i.i4880, 0
  br i1 %.not.i.i4881, label %lean_inc_ref.exit4882, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.kd = atomicrmw sub ptr %11, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit4882

lean_inc_ref.exit4882:                            ; preds = %bb.fc, %bb.fd, %bb.fe
  br i1 %.not.i3520, label %bb.ff, label %lean_inc.exit3619

bb.ff:                                            ; preds = %lean_inc_ref.exit4882
  %.val.i.i4883 = load i32, ptr %10, align 4, !tbaa !10 ; 3 uses
  %i.ke = icmp sgt i32 %.val.i.i4883, 0
  br i1 %i.ke, label %bb.fg, label %bb.fh, !prof !11

bb.fg:                                            ; preds = %bb.ff
  %i.kf = add nuw i32 %.val.i.i4883, 1
  store i32 %i.kf, ptr %10, align 4, !tbaa !10
  br label %lean_inc.exit3619

bb.fh:                                            ; preds = %bb.ff
  %.not.i.i4884 = icmp eq i32 %.val.i.i4883, 0
  br i1 %.not.i.i4884, label %lean_inc.exit3619, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.kg = atomicrmw sub ptr %10, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3619

lean_inc.exit3619:                                ; preds = %bb.fi, %bb.fh, %bb.fg, %lean_inc_ref.exit4882
  %i.kh = tail call ptr @lean_apply_12(ptr noundef %i.cak, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %i.jh, ptr noundef nonnull %i.jl, ptr noundef nonnull %i.jl, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef nonnull inttoptr (i64 1 to ptr)) #7
  br label %lean_dec.exit3716.thread5842

lean_inc.exit3617:                                ; preds = %lean_inc.exit3597, %bb.ht, %bb.hu, %bb.hv, %lean_inc.exit3603, %bb.hd, %bb.he, %bb.hf
  %.12943.ph = phi ptr [ %i.nz, %bb.ht ], [ %i.nz, %bb.hu ], [ %i.nz, %bb.hv ], [ %i.mw, %bb.hd ], [ %i.mw, %bb.he ], [ %i.mw, %bb.hf ], [ %i.nz, %lean_inc.exit3597 ], [ %i.mw, %lean_inc.exit3603 ]
  br i1 %.not.i4893, label %bb.fj, label %lean_inc.exit3615

bb.fj:                                            ; preds = %lean_inc.exit3617
  %.val.i.i4886 = load i32, ptr %i.li, align 4, !tbaa !10 ; 3 uses
  %i.ki = icmp sgt i32 %.val.i.i4886, 0
  br i1 %i.ki, label %bb.fk, label %bb.fl, !prof !11

bb.fk:                                            ; preds = %bb.fj
  %i.kj = add nuw i32 %.val.i.i4886, 1
  store i32 %i.kj, ptr %i.li, align 4, !tbaa !10
  br label %lean_inc.exit3615

bb.fl:                                            ; preds = %bb.fj
  %.not.i.i4887 = icmp eq i32 %.val.i.i4886, 0
  br i1 %.not.i.i4887, label %lean_inc.exit3615, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.kk = atomicrmw sub ptr %i.li, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3615

lean_inc.exit3615:                                ; preds = %bb.fm, %bb.fl, %bb.fk, %lean_inc.exit3617
  %i.kl = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.li, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef %.12943.ph) #7
  %i.km = tail call ptr @l_Lean_Syntax_node2(ptr noundef %i.li, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__36_value, ptr noundef nonnull %i.md, ptr noundef %i.kl) #7
  br label %lean_inc.exit3579.thread

lean_dec.exit3944.thread:                         ; preds = %bb.aiy, %bb.aiz, %bb.aja, %bb.aie, %bb.aif, %bb.aig, %lean_dec.exit3946, %lean_dec.exit3940, %lean_dec.exit3982
  %.03004 = phi i8 [ %.03197, %lean_dec.exit3982 ], [ %i.ayl, %bb.aiy ], [ %i.ayl, %bb.aiz ], [ %i.ayl, %bb.aja ], [ %i.axq, %bb.aie ], [ %i.axq, %bb.aif ], [ %i.axq, %bb.aig ], [ %i.axq, %lean_dec.exit3946 ], [ %i.ayl, %lean_dec.exit3940 ] ; 5 uses
  %i.kn = and i64 %i.awm, 510
  %i.ko = icmp eq i64 %i.kn, 0
  %i.kp = icmp eq i8 %.03004, 0                   ; 2 uses
  br i1 %i.ko, label %bb.fn, label %bb.ov

bb.fn:                                            ; preds = %lean_dec.exit3944.thread
  br i1 %i.kp, label %bb.fo, label %bb.ji

bb.fo:                                            ; preds = %bb.fn
  %i.kq = load i32, ptr %i.boo, align 8, !tbaa !10 ; 3 uses
  %i.kr = icmp sgt i32 %i.kq, 1
  br i1 %i.kr, label %bb.fp, label %bb.fq, !prof !11

bb.fp:                                            ; preds = %bb.fo
  %i.ks = add nsw i32 %i.kq, -1
  store i32 %i.ks, ptr %i.boo, align 8, !tbaa !10
  br label %lean_dec_ref.exit4739

bb.fq:                                            ; preds = %bb.fo
  %.not.i4738 = icmp eq i32 %i.kq, 0
  br i1 %.not.i4738, label %lean_dec_ref.exit4739, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.boo) #7
  br label %lean_dec_ref.exit4739

lean_dec_ref.exit4739:                            ; preds = %bb.fp, %bb.fq, %bb.fr
  %i.kt = load ptr, ptr %i.w, align 8, !tbaa !14  ; 2 uses
  %i.ku = load ptr, ptr %i.x, align 8, !tbaa !14  ; 12 uses
  %i.kv = load ptr, ptr %i.y, align 8, !tbaa !14  ; 12 uses
  br i1 %.not.i3646, label %bb.fs, label %lean_dec.exit4122

bb.fs:                                            ; preds = %lean_dec_ref.exit4739
  %i.kw = load i32, ptr %i.dm, align 4, !tbaa !10 ; 3 uses
  %i.kx = icmp sgt i32 %i.kw, 1
  br i1 %i.kx, label %bb.ft, label %bb.fu, !prof !11

bb.ft:                                            ; preds = %bb.fs
  %i.ky = add nsw i32 %i.kw, -1
  store i32 %i.ky, ptr %i.dm, align 4, !tbaa !10
  br label %lean_dec.exit4122

bb.fu:                                            ; preds = %bb.fs
  %.not.i4142 = icmp eq i32 %i.kw, 0
  br i1 %.not.i4142, label %lean_dec.exit4122, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dm) #7
  br label %lean_dec.exit4122

lean_dec.exit4122:                                ; preds = %bb.fv, %bb.fu, %bb.ft, %lean_dec_ref.exit4739
  %i.kz = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__1(i8 noundef zeroext 0, ptr noundef %i.kt, ptr poison, ptr poison, ptr poison, ptr nonnull poison, ptr poison, ptr nonnull poison, ptr poison) ; 10 uses
  %i.la = ptrtoint ptr %i.kz to i64               ; 2 uses
  %i.lb = and i64 %i.la, 1
  %.not.i4889 = icmp eq i64 %i.lb, 0              ; 2 uses
  br i1 %.not.i4889, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %lean_dec.exit4122
  %i.lc = lshr i64 %i.la, 1
  %i.ld = trunc i64 %i.lc to i32
  br label %lean_obj_tag.exit4892

bb.fx:                                            ; preds = %lean_dec.exit4122
  %i.le = getelementptr i8, ptr %i.kz, i64 4
  %.val.i4891 = load i32, ptr %i.le, align 4
  %i.lf = lshr i32 %.val.i4891, 24
  br label %lean_obj_tag.exit4892

lean_obj_tag.exit4892:                            ; preds = %bb.fw, %bb.fx
  %.0.i4890 = phi i32 [ %i.ld, %bb.fw ], [ %i.lf, %bb.fx ]
  %i.lg = icmp eq i32 %.0.i4890, 0
  br i1 %i.lg, label %bb.fy, label %lean_dec.exit4114

bb.fy:                                            ; preds = %lean_obj_tag.exit4892
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !14 ; 10 uses
  %i.lj = ptrtoint ptr %i.li to i64
  %i.lk = and i64 %i.lj, 1
  %.not.i4893 = icmp eq i64 %i.lk, 0              ; 2 uses
  br i1 %.not.i4893, label %bb.fz, label %lean_inc_n.exit4896

bb.fz:                                            ; preds = %bb.fy
  %.val.i.i4894 = load i32, ptr %i.li, align 4, !tbaa !10 ; 3 uses
  %i.ll = icmp sgt i32 %.val.i.i4894, 0
  br i1 %i.ll, label %bb.ga, label %bb.gb, !prof !11

bb.ga:                                            ; preds = %bb.fz
  %i.lm = add nuw i32 %.val.i.i4894, 2
  store i32 %i.lm, ptr %i.li, align 4, !tbaa !10
  br label %lean_inc_n.exit4896

bb.gb:                                            ; preds = %bb.fz
  %.not.i.i4895 = icmp eq i32 %.val.i.i4894, 0
  br i1 %.not.i.i4895, label %lean_inc_n.exit4896, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.ln = atomicrmw sub ptr %i.li, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit4896

lean_inc_n.exit4896:                              ; preds = %bb.fy, %bb.ga, %bb.gb, %bb.gc
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.kz, i32 noundef 1)
  %i.lo = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__3_once seq_cst, align 4, !tbaa !20
  %i.lp = icmp eq i32 %i.lo, 1
  br i1 %i.lp, label %bb.gd, label %bb.ge, !prof !11

bb.gd:                                            ; preds = %lean_inc_n.exit4896
  %i.lq = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__3, align 8, !tbaa !14
  br label %lean_obj_once.exit4898

bb.ge:                                            ; preds = %lean_inc_n.exit4896
  %i.lr = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__3, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__3_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__3) #7
  br label %lean_obj_once.exit4898

lean_obj_once.exit4898:                           ; preds = %bb.gd, %bb.ge
  %.0.i4897 = phi ptr [ %i.lq, %bb.gd ], [ %i.lr, %bb.ge ]
  %i.ls = ptrtoint ptr %i.kv to i64
  %i.lt = and i64 %i.ls, 1
  %.not.i3612 = icmp eq i64 %i.lt, 0              ; 3 uses
  br i1 %.not.i3612, label %bb.gf, label %lean_inc.exit3613

bb.gf:                                            ; preds = %lean_obj_once.exit4898
  %.val.i.i4899 = load i32, ptr %i.kv, align 4, !tbaa !10 ; 3 uses
  %i.lu = icmp sgt i32 %.val.i.i4899, 0
  br i1 %i.lu, label %bb.gg, label %bb.gh, !prof !11

bb.gg:                                            ; preds = %bb.gf
  %i.lv = add nuw i32 %.val.i.i4899, 1
  store i32 %i.lv, ptr %i.kv, align 4, !tbaa !10
  br label %lean_inc.exit3613

bb.gh:                                            ; preds = %bb.gf
  %.not.i.i4900 = icmp eq i32 %.val.i.i4899, 0
  br i1 %.not.i.i4900, label %lean_inc.exit3613, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.lw = atomicrmw sub ptr %i.kv, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3613

lean_inc.exit3613:                                ; preds = %bb.gi, %bb.gh, %bb.gg, %lean_obj_once.exit4898
  %i.lx = ptrtoint ptr %i.ku to i64
  %i.ly = and i64 %i.lx, 1
  %.not.i3610 = icmp eq i64 %i.ly, 0              ; 3 uses
  br i1 %.not.i3610, label %bb.gj, label %lean_inc.exit3611

bb.gj:                                            ; preds = %lean_inc.exit3613
  %.val.i.i4902 = load i32, ptr %i.ku, align 4, !tbaa !10 ; 3 uses
  %i.lz = icmp sgt i32 %.val.i.i4902, 0
  br i1 %i.lz, label %bb.gk, label %bb.gl, !prof !11

bb.gk:                                            ; preds = %bb.gj
  %i.ma = add nuw i32 %.val.i.i4902, 1
  store i32 %i.ma, ptr %i.ku, align 4, !tbaa !10
  br label %lean_inc.exit3611

bb.gl:                                            ; preds = %bb.gj
  %.not.i.i4903 = icmp eq i32 %.val.i.i4902, 0
  br i1 %.not.i.i4903, label %lean_inc.exit3611, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.mb = atomicrmw sub ptr %i.ku, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3611

lean_inc.exit3611:                                ; preds = %bb.gm, %bb.gl, %bb.gk, %lean_inc.exit3613
  %i.mc = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.ku, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__5_value, ptr noundef %i.kv) #7
  %i.md = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store ptr %i.li, ptr %i.me, align 8, !tbaa !14
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  store ptr %.0.i4897, ptr %i.mf, align 8, !tbaa !14
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 24
  store ptr %i.mc, ptr %i.mg, align 8, !tbaa !14
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.mh, align 8, !tbaa !14
  br i1 %.not.i3763, label %bb.gn, label %lean_inc.exit3607

bb.gn:                                            ; preds = %lean_inc.exit3611
  %.val.i.i4908 = load i32, ptr %5, align 4, !tbaa !10 ; 3 uses
  %i.mi = icmp sgt i32 %.val.i.i4908, 0
  br i1 %i.mi, label %bb.go, label %bb.gp, !prof !11

bb.go:                                            ; preds = %bb.gn
  %i.mj = add nuw i32 %.val.i.i4908, 1
  store i32 %i.mj, ptr %5, align 4, !tbaa !10
  br label %lean_inc.exit3607

bb.gp:                                            ; preds = %bb.gn
  %.not.i.i4909 = icmp eq i32 %.val.i.i4908, 0
  br i1 %.not.i.i4909, label %lean_inc.exit3607, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.mk = atomicrmw sub ptr %5, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3607

lean_inc.exit3607:                                ; preds = %bb.gq, %bb.gp, %bb.go, %lean_inc.exit3611
  %i.ml = tail call ptr @l___private_Init_Meta_Defs_0__Lean_getEscapedNameParts_x3f(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %5) #7 ; 4 uses
  %i.mm = ptrtoint ptr %i.ml to i64               ; 2 uses
  %i.mn = and i64 %i.mm, 1
  %.not.i4911 = icmp eq i64 %i.mn, 0
  br i1 %.not.i4911, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %lean_inc.exit3607
  %i.mo = lshr i64 %i.mm, 1
  %i.mp = trunc i64 %i.mo to i32
  br label %lean_obj_tag.exit4914

bb.gs:                                            ; preds = %lean_inc.exit3607
  %i.mq = getelementptr i8, ptr %i.ml, i64 4
  %.val.i4913 = load i32, ptr %i.mq, align 4
  %i.mr = lshr i32 %.val.i4913, 24
  br label %lean_obj_tag.exit4914

lean_obj_tag.exit4914:                            ; preds = %bb.gr, %bb.gs
  %.0.i4912 = phi i32 [ %i.mp, %bb.gr ], [ %i.mr, %bb.gs ]
  %i.ms = icmp eq i32 %.0.i4912, 0
  br i1 %i.ms, label %bb.gt, label %bb.hg

bb.gt:                                            ; preds = %lean_obj_tag.exit4914
  br i1 %.not.i3763, label %bb.gu, label %lean_inc.exit3605

bb.gu:                                            ; preds = %bb.gt
  %.val.i.i4915 = load i32, ptr %5, align 4, !tbaa !10 ; 3 uses
  %i.mt = icmp sgt i32 %.val.i.i4915, 0
  br i1 %i.mt, label %bb.gv, label %bb.gw, !prof !11

bb.gv:                                            ; preds = %bb.gu
  %i.mu = add nuw i32 %.val.i.i4915, 1
  store i32 %i.mu, ptr %5, align 4, !tbaa !10
  br label %lean_inc.exit3605

bb.gw:                                            ; preds = %bb.gu
  %.not.i.i4916 = icmp eq i32 %.val.i.i4915, 0
  br i1 %.not.i.i4916, label %lean_inc.exit3605, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.mv = atomicrmw sub ptr %5, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3605

lean_inc.exit3605:                                ; preds = %bb.gx, %bb.gw, %bb.gv, %bb.gt
  %i.mw = tail call ptr @l_Lean_quoteNameMk(ptr noundef %5) #7 ; 4 uses
  br i1 %.not.i3612, label %bb.gy, label %lean_inc.exit3603
end_hunk_1
begin_hunk_2_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__7_spec__12:bb.a
  %i.on = icmp sgt i32 %i.om, 1
  br i1 %i.on, label %bb.hz, label %bb.ia, !prof !11

bb.hz:                                            ; preds = %lean_dec_ref.exit4735
  %i.oo = add nsw i32 %i.om, -1
  store i32 %i.oo, ptr %.0.i5294, align 4, !tbaa !10
  br label %lean_dec_ref.exit4733

bb.ia:                                            ; preds = %lean_dec_ref.exit4735
  %.not.i4732 = icmp eq i32 %i.om, 0
  br i1 %.not.i4732, label %lean_dec_ref.exit4733, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i5294) #7
  br label %lean_dec_ref.exit4733

lean_dec_ref.exit4733:                            ; preds = %bb.hz, %bb.ia, %bb.ib
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.cm, i32 noundef 1)
  br i1 %.not.i3636, label %bb.ic, label %lean_dec.exit4112

bb.ic:                                            ; preds = %lean_dec_ref.exit4733
  %i.op = load i32, ptr %i.bj, align 4, !tbaa !10 ; 3 uses
  %i.oq = icmp sgt i32 %i.op, 1
  br i1 %i.oq, label %bb.id, label %bb.ie, !prof !11

bb.id:                                            ; preds = %bb.ic
  %i.or = add nsw i32 %i.op, -1
  store i32 %i.or, ptr %i.bj, align 4, !tbaa !10
  br label %lean_dec.exit4112

bb.ie:                                            ; preds = %bb.ic
  %.not.i4148 = icmp eq i32 %i.op, 0
  br i1 %.not.i4148, label %lean_dec.exit4112, label %bb.if

bb.if:                                            ; preds = %bb.ie
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #7
  br label %lean_dec.exit4112

lean_dec.exit4112:                                ; preds = %bb.if, %bb.ie, %bb.id, %lean_dec_ref.exit4733
  %i.os = load i32, ptr %.0260410352, align 4, !tbaa !10 ; 3 uses
  %i.ot = icmp sgt i32 %i.os, 1
  br i1 %i.ot, label %bb.ig, label %bb.ih, !prof !11

bb.ig:                                            ; preds = %lean_dec.exit4112
  %i.ou = add nsw i32 %i.os, -1
  store i32 %i.ou, ptr %.0260410352, align 4, !tbaa !10
  br label %lean_dec_ref.exit4731

bb.ih:                                            ; preds = %lean_dec.exit4112
  %.not.i4730 = icmp eq i32 %i.os, 0
  br i1 %.not.i4730, label %lean_dec_ref.exit4731, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0260410352) #7
  br label %lean_dec_ref.exit4731

lean_dec_ref.exit4731:                            ; preds = %bb.ig, %bb.ih, %bb.ii
  br i1 %.not.i3763, label %bb.ij, label %lean_dec.exit4110

bb.ij:                                            ; preds = %lean_dec_ref.exit4731
  %i.ov = load i32, ptr %5, align 4, !tbaa !10    ; 3 uses
  %i.ow = icmp sgt i32 %i.ov, 1
  br i1 %i.ow, label %bb.ik, label %bb.il, !prof !11

bb.ik:                                            ; preds = %bb.ij
  %i.ox = add nsw i32 %i.ov, -1
  store i32 %i.ox, ptr %5, align 4, !tbaa !10
  br label %lean_dec.exit4110

bb.il:                                            ; preds = %bb.ij
  %.not.i4150 = icmp eq i32 %i.ov, 0
  br i1 %.not.i4150, label %lean_dec.exit4110, label %bb.im

bb.im:                                            ; preds = %bb.il
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit4110

lean_dec.exit4110:                                ; preds = %bb.im, %bb.il, %bb.ik, %lean_dec_ref.exit4731
  br i1 %.not.i3470, label %bb.in, label %lean_dec.exit4108

bb.in:                                            ; preds = %lean_dec.exit4110
  %i.oy = load i32, ptr %2, align 4, !tbaa !10    ; 3 uses
  %i.oz = icmp sgt i32 %i.oy, 1
  br i1 %i.oz, label %bb.io, label %bb.ip, !prof !11

bb.io:                                            ; preds = %bb.in
  %i.pa = add nsw i32 %i.oy, -1
  store i32 %i.pa, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit4108

bb.ip:                                            ; preds = %bb.in
  %.not.i4152 = icmp eq i32 %i.oy, 0
  br i1 %.not.i4152, label %lean_dec.exit4108, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit4108

lean_dec.exit4108:                                ; preds = %bb.iq, %bb.ip, %bb.io, %lean_dec.exit4110
  %i.pb = load i32, ptr %1, align 4, !tbaa !10    ; 3 uses
  %i.pc = icmp sgt i32 %i.pb, 1
  br i1 %i.pc, label %bb.ir, label %bb.is, !prof !11

bb.ir:                                            ; preds = %lean_dec.exit4108
  %i.pd = add nsw i32 %i.pb, -1
  store i32 %i.pd, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit4729

bb.is:                                            ; preds = %lean_dec.exit4108
  %.not.i4728 = icmp eq i32 %i.pb, 0
  br i1 %.not.i4728, label %lean_dec_ref.exit4729, label %bb.it

bb.it:                                            ; preds = %bb.is
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit4729

lean_dec_ref.exit4729:                            ; preds = %bb.ir, %bb.is, %bb.it
  br i1 %.not.i3650, label %bb.iu, label %lean_dec.exit4106

bb.iu:                                            ; preds = %lean_dec_ref.exit4729
  %i.pe = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.pf = icmp sgt i32 %i.pe, 1
  br i1 %i.pf, label %bb.iv, label %bb.iw, !prof !11

bb.iv:                                            ; preds = %bb.iu
  %i.pg = add nsw i32 %i.pe, -1
  store i32 %i.pg, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit4106

bb.iw:                                            ; preds = %bb.iu
  %.not.i4154 = icmp eq i32 %i.pe, 0
  br i1 %.not.i4154, label %lean_dec.exit4106, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit4106

lean_dec.exit4106:                                ; preds = %bb.ix, %bb.iw, %bb.iv, %lean_dec_ref.exit4729
  %i.ph = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !14 ; 5 uses
  %.val4766 = load i32, ptr %i.kz, align 8, !tbaa !10
  %i.pj = icmp eq i32 %.val4766, 1
  br i1 %i.pj, label %lean_dec.exit.thread5851, label %bb.iy

bb.iy:                                            ; preds = %lean_dec.exit4106
  %i.pk = ptrtoint ptr %i.pi to i64
  %i.pl = and i64 %i.pk, 1
  %.not.i3592 = icmp eq i64 %i.pl, 0
  br i1 %.not.i3592, label %bb.iz, label %lean_inc.exit3593

bb.iz:                                            ; preds = %bb.iy
  %.val.i.i4933 = load i32, ptr %i.pi, align 4, !tbaa !10 ; 3 uses
  %i.pm = icmp sgt i32 %.val.i.i4933, 0
  br i1 %i.pm, label %bb.ja, label %bb.jb, !prof !11

bb.ja:                                            ; preds = %bb.iz
  %i.pn = add nuw i32 %.val.i.i4933, 1
  store i32 %i.pn, ptr %i.pi, align 4, !tbaa !10
  br label %lean_inc.exit3593

bb.jb:                                            ; preds = %bb.iz
  %.not.i.i4934 = icmp eq i32 %.val.i.i4933, 0
  br i1 %.not.i.i4934, label %lean_inc.exit3593, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.po = atomicrmw sub ptr %i.pi, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3593

lean_inc.exit3593:                                ; preds = %bb.jc, %bb.jb, %bb.ja, %bb.iy
  br i1 %.not.i4889, label %bb.jd, label %bb.jh

bb.jd:                                            ; preds = %lean_inc.exit3593
  %i.pp = load i32, ptr %i.kz, align 8, !tbaa !10 ; 3 uses
  %i.pq = icmp sgt i32 %i.pp, 1
  br i1 %i.pq, label %bb.je, label %bb.jf, !prof !11

bb.je:                                            ; preds = %bb.jd
  %i.pr = add nsw i32 %i.pp, -1
  store i32 %i.pr, ptr %i.kz, align 8, !tbaa !10
  br label %bb.jh

bb.jf:                                            ; preds = %bb.jd
  %.not.i4156 = icmp eq i32 %i.pp, 0
  br i1 %.not.i4156, label %bb.jh, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kz) #7
  br label %bb.jh

bb.jh:                                            ; preds = %lean_inc.exit3593, %bb.je, %bb.jf, %bb.jg
  %i.ps = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit.thread5851.sink.split

bb.ji:                                            ; preds = %bb.fn
  %i.pt = load ptr, ptr %i.w, align 8, !tbaa !14  ; 5 uses
  %i.pu = load ptr, ptr %i.x, align 8, !tbaa !14  ; 13 uses
  %i.pv = load ptr, ptr %i.y, align 8, !tbaa !14  ; 13 uses
  br i1 %.not.i3646, label %bb.jj, label %lean_dec.exit4102

bb.jj:                                            ; preds = %bb.ji
  %i.pw = load i32, ptr %i.dm, align 4, !tbaa !10 ; 3 uses
  %i.px = icmp sgt i32 %i.pw, 1
  br i1 %i.px, label %bb.jk, label %bb.jl, !prof !11

bb.jk:                                            ; preds = %bb.jj
  %i.py = add nsw i32 %i.pw, -1
  store i32 %i.py, ptr %i.dm, align 4, !tbaa !10
  br label %lean_dec.exit4102

bb.jl:                                            ; preds = %bb.jj
  %.not.i4158 = icmp eq i32 %i.pw, 0
  br i1 %.not.i4158, label %lean_dec.exit4102, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dm) #7
  br label %lean_dec.exit4102

lean_dec.exit4102:                                ; preds = %bb.jm, %bb.jl, %bb.jk, %bb.ji
  %i.pz = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__1(i8 noundef zeroext 0, ptr noundef %i.pt, ptr poison, ptr poison, ptr poison, ptr nonnull poison, ptr poison, ptr nonnull poison, ptr poison) ; 10 uses
  %i.qa = ptrtoint ptr %i.pz to i64               ; 2 uses
  %i.qb = and i64 %i.qa, 1
  %.not.i4936 = icmp eq i64 %i.qb, 0              ; 2 uses
  br i1 %.not.i4936, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %lean_dec.exit4102
  %i.qc = lshr i64 %i.qa, 1
  %i.qd = trunc i64 %i.qc to i32
  br label %lean_obj_tag.exit4939

bb.jo:                                            ; preds = %lean_dec.exit4102
  %i.qe = getelementptr i8, ptr %i.pz, i64 4
  %.val.i4938 = load i32, ptr %i.qe, align 4
  %i.qf = lshr i32 %.val.i4938, 24
  br label %lean_obj_tag.exit4939

lean_obj_tag.exit4939:                            ; preds = %bb.jn, %bb.jo
  %.0.i4937 = phi i32 [ %i.qd, %bb.jn ], [ %i.qf, %bb.jo ]
  %i.qg = icmp eq i32 %.0.i4937, 0
  br i1 %i.qg, label %bb.jp, label %lean_dec.exit4080

bb.jp:                                            ; preds = %lean_obj_tag.exit4939
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !14 ; 12 uses
  %i.qj = ptrtoint ptr %i.qi to i64
  %i.qk = and i64 %i.qj, 1
  %.not.i4940 = icmp eq i64 %i.qk, 0
  br i1 %.not.i4940, label %bb.jq, label %lean_inc_n.exit4943

bb.jq:                                            ; preds = %bb.jp
  %.val.i.i4941 = load i32, ptr %i.qi, align 4, !tbaa !10 ; 3 uses
  %i.ql = icmp sgt i32 %.val.i.i4941, 0
  br i1 %i.ql, label %bb.jr, label %bb.js, !prof !11

bb.jr:                                            ; preds = %bb.jq
  %i.qm = add nuw i32 %.val.i.i4941, 8
  store i32 %i.qm, ptr %i.qi, align 4, !tbaa !10
  br label %lean_inc_n.exit4943

bb.js:                                            ; preds = %bb.jq
  %.not.i.i4942 = icmp eq i32 %.val.i.i4941, 0
  br i1 %.not.i.i4942, label %lean_inc_n.exit4943, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.qn = atomicrmw sub ptr %i.qi, i32 8 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit4943

lean_inc_n.exit4943:                              ; preds = %bb.jp, %bb.jr, %bb.js, %bb.jt
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.pz, i32 noundef 1)
  %i.qo = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__9_once seq_cst, align 4, !tbaa !20
  %i.qp = icmp eq i32 %i.qo, 1
  br i1 %i.qp, label %bb.ju, label %bb.jv, !prof !11

bb.ju:                                            ; preds = %lean_inc_n.exit4943
  %i.qq = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__9, align 8, !tbaa !14
  br label %lean_obj_once.exit4945

bb.jv:                                            ; preds = %lean_inc_n.exit4943
  %i.qr = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__9, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__9_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__9) #7
  br label %lean_obj_once.exit4945

lean_obj_once.exit4945:                           ; preds = %bb.ju, %bb.jv
  %.0.i4944 = phi ptr [ %i.qq, %bb.ju ], [ %i.qr, %bb.jv ]
  %i.qs = ptrtoint ptr %i.pv to i64
  %i.qt = and i64 %i.qs, 1
  %.not.i4946 = icmp eq i64 %i.qt, 0              ; 2 uses
  br i1 %.not.i4946, label %bb.jw, label %lean_inc_n.exit4949

bb.jw:                                            ; preds = %lean_obj_once.exit4945
  %.val.i.i4947 = load i32, ptr %i.pv, align 4, !tbaa !10 ; 3 uses
  %i.qu = icmp sgt i32 %.val.i.i4947, 0
  br i1 %i.qu, label %bb.jx, label %bb.jy, !prof !11

bb.jx:                                            ; preds = %bb.jw
  %i.qv = add nuw i32 %.val.i.i4947, 2
  store i32 %i.qv, ptr %i.pv, align 4, !tbaa !10
  br label %lean_inc_n.exit4949

bb.jy:                                            ; preds = %bb.jw
  %.not.i.i4948 = icmp eq i32 %.val.i.i4947, 0
  br i1 %.not.i.i4948, label %lean_inc_n.exit4949, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.qw = atomicrmw sub ptr %i.pv, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit4949

lean_inc_n.exit4949:                              ; preds = %lean_obj_once.exit4945, %bb.jx, %bb.jy, %bb.jz
  %i.qx = ptrtoint ptr %i.pu to i64
  %i.qy = and i64 %i.qx, 1
  %.not.i4950 = icmp eq i64 %i.qy, 0              ; 2 uses
  br i1 %.not.i4950, label %bb.ka, label %lean_inc_n.exit4953

bb.ka:                                            ; preds = %lean_inc_n.exit4949
  %.val.i.i4951 = load i32, ptr %i.pu, align 4, !tbaa !10 ; 3 uses
  %i.qz = icmp sgt i32 %.val.i.i4951, 0
  br i1 %i.qz, label %bb.kb, label %bb.kc, !prof !11

bb.kb:                                            ; preds = %bb.ka
  %i.ra = add nuw i32 %.val.i.i4951, 2
  store i32 %i.ra, ptr %i.pu, align 4, !tbaa !10
  br label %lean_inc_n.exit4953

bb.kc:                                            ; preds = %bb.ka
  %.not.i.i4952 = icmp eq i32 %.val.i.i4951, 0
  br i1 %.not.i.i4952, label %lean_inc_n.exit4953, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.rb = atomicrmw sub ptr %i.pu, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit4953

lean_inc_n.exit4953:                              ; preds = %lean_inc_n.exit4949, %bb.kb, %bb.kc, %bb.kd
  %i.rc = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.pu, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__10_value, ptr noundef %i.pv) #7
  %i.rd = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__2_value, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__3_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__8_value) #7
  %i.re = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  store ptr %i.rd, ptr %i.rf, align 8, !tbaa !14
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.rg, align 8, !tbaa !14
  %i.rh = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  store ptr %i.re, ptr %i.ri, align 8, !tbaa !14
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.rj, align 8, !tbaa !14
  %i.rk = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  store ptr %i.qi, ptr %i.rl, align 8, !tbaa !14
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rk, i64 16
  store ptr %.0.i4944, ptr %i.rm, align 8, !tbaa !14
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rk, i64 24
  store ptr %i.rc, ptr %i.rn, align 8, !tbaa !14
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rk, i64 32
  store ptr %i.rh, ptr %i.ro, align 8, !tbaa !14
  %i.rp = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__33_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__34_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__11_value) #7
  %i.rq = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  store ptr %i.qi, ptr %i.rr, align 8, !tbaa !14
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__12_value, ptr %i.rs, align 8, !tbaa !14
  %i.rt = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14_once seq_cst, align 4, !tbaa !20
  %i.ru = icmp eq i32 %i.rt, 1
  br i1 %i.ru, label %bb.ke, label %bb.kf, !prof !11

bb.ke:                                            ; preds = %lean_inc_n.exit4953
  %i.rv = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14, align 8, !tbaa !14
  br label %lean_obj_once.exit4959

bb.kf:                                            ; preds = %lean_inc_n.exit4953
  %i.rw = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14) #7
  br label %lean_obj_once.exit4959

lean_obj_once.exit4959:                           ; preds = %bb.ke, %bb.kf
  %.0.i4958 = phi ptr [ %i.rv, %bb.ke ], [ %i.rw, %bb.kf ]
  %i.rx = tail call ptr @l_Lean_Name_mkStr2(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__4_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__63_value) #7
  %i.ry = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.pu, ptr noundef %i.rx, ptr noundef %i.pv) #7
  %i.rz = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  store ptr %i.qi, ptr %i.sa, align 8, !tbaa !14
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  store ptr %.0.i4958, ptr %i.sb, align 8, !tbaa !14
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rz, i64 24
  store ptr %i.ry, ptr %i.sc, align 8, !tbaa !14
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rz, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.sd, align 8, !tbaa !14
  %i.se = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.qi, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef nonnull %i.rz) #7
  %i.sf = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  store ptr %i.qi, ptr %i.sg, align 8, !tbaa !14
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__15_value, ptr %i.sh, align 8, !tbaa !14
  %i.si = tail call ptr @l_Lean_Syntax_node3(ptr noundef %i.qi, ptr noundef %i.rp, ptr noundef nonnull %i.rq, ptr noundef %i.se, ptr noundef nonnull %i.sf) #7
  %i.sj = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.qi, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef %i.si) #7
  %i.sk = tail call ptr @l_Lean_Syntax_node2(ptr noundef %i.qi, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__36_value, ptr noundef nonnull %i.rk, ptr noundef %i.sj) #7
  br i1 %.not.i3644, label %bb.kg, label %lean_inc.exit3591

bb.kg:                                            ; preds = %lean_obj_once.exit4959
  %.val.i.i4960 = load i32, ptr %16, align 4, !tbaa !10 ; 3 uses
  %i.sl = icmp sgt i32 %.val.i.i4960, 0
  br i1 %i.sl, label %bb.kh, label %bb.ki, !prof !11

bb.kh:                                            ; preds = %bb.kg
  %i.sm = add nuw i32 %.val.i.i4960, 1
  store i32 %i.sm, ptr %16, align 4, !tbaa !10
  br label %lean_inc.exit3591

bb.ki:                                            ; preds = %bb.kg
  %.not.i.i4961 = icmp eq i32 %.val.i.i4960, 0
  br i1 %.not.i.i4961, label %lean_inc.exit3591, label %bb.kj

end_hunk_2
begin_hunk_3_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__7_spec__12:bb.a
bb.nm:                                            ; preds = %lean_dec_ref.exit4717
  %i.vt = add nsw i32 %i.vr, -1
  store i32 %i.vt, ptr %.0.i5294, align 4, !tbaa !10
  br label %lean_dec_ref.exit4715

bb.nn:                                            ; preds = %lean_dec_ref.exit4717
  %.not.i4714 = icmp eq i32 %i.vr, 0
  br i1 %.not.i4714, label %lean_dec_ref.exit4715, label %bb.no

bb.no:                                            ; preds = %bb.nn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i5294) #7
  br label %lean_dec_ref.exit4715

lean_dec_ref.exit4715:                            ; preds = %bb.nm, %bb.nn, %bb.no
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.cm, i32 noundef 1)
  br i1 %.not.i3636, label %bb.np, label %lean_dec.exit4078

bb.np:                                            ; preds = %lean_dec_ref.exit4715
  %i.vu = load i32, ptr %i.bj, align 4, !tbaa !10 ; 3 uses
  %i.vv = icmp sgt i32 %i.vu, 1
  br i1 %i.vv, label %bb.nq, label %bb.nr, !prof !11

bb.nq:                                            ; preds = %bb.np
  %i.vw = add nsw i32 %i.vu, -1
  store i32 %i.vw, ptr %i.bj, align 4, !tbaa !10
  br label %lean_dec.exit4078

bb.nr:                                            ; preds = %bb.np
  %.not.i4176 = icmp eq i32 %i.vu, 0
  br i1 %.not.i4176, label %lean_dec.exit4078, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #7
  br label %lean_dec.exit4078

lean_dec.exit4078:                                ; preds = %bb.ns, %bb.nr, %bb.nq, %lean_dec_ref.exit4715
  %i.vx = load i32, ptr %.0260410352, align 4, !tbaa !10 ; 3 uses
  %i.vy = icmp sgt i32 %i.vx, 1
  br i1 %i.vy, label %bb.nt, label %bb.nu, !prof !11

bb.nt:                                            ; preds = %lean_dec.exit4078
  %i.vz = add nsw i32 %i.vx, -1
  store i32 %i.vz, ptr %.0260410352, align 4, !tbaa !10
  br label %lean_dec_ref.exit4713

bb.nu:                                            ; preds = %lean_dec.exit4078
  %.not.i4712 = icmp eq i32 %i.vx, 0
  br i1 %.not.i4712, label %lean_dec_ref.exit4713, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0260410352) #7
  br label %lean_dec_ref.exit4713

lean_dec_ref.exit4713:                            ; preds = %bb.nt, %bb.nu, %bb.nv
  br i1 %.not.i3763, label %bb.nw, label %lean_dec.exit4076

bb.nw:                                            ; preds = %lean_dec_ref.exit4713
  %i.wa = load i32, ptr %5, align 4, !tbaa !10    ; 3 uses
  %i.wb = icmp sgt i32 %i.wa, 1
  br i1 %i.wb, label %bb.nx, label %bb.ny, !prof !11

bb.nx:                                            ; preds = %bb.nw
  %i.wc = add nsw i32 %i.wa, -1
  store i32 %i.wc, ptr %5, align 4, !tbaa !10
  br label %lean_dec.exit4076

bb.ny:                                            ; preds = %bb.nw
  %.not.i4178 = icmp eq i32 %i.wa, 0
  br i1 %.not.i4178, label %lean_dec.exit4076, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit4076

lean_dec.exit4076:                                ; preds = %bb.nz, %bb.ny, %bb.nx, %lean_dec_ref.exit4713
  br i1 %.not.i3470, label %bb.oa, label %lean_dec.exit4074

bb.oa:                                            ; preds = %lean_dec.exit4076
  %i.wd = load i32, ptr %2, align 4, !tbaa !10    ; 3 uses
  %i.we = icmp sgt i32 %i.wd, 1
  br i1 %i.we, label %bb.ob, label %bb.oc, !prof !11

bb.ob:                                            ; preds = %bb.oa
  %i.wf = add nsw i32 %i.wd, -1
  store i32 %i.wf, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit4074

bb.oc:                                            ; preds = %bb.oa
  %.not.i4180 = icmp eq i32 %i.wd, 0
  br i1 %.not.i4180, label %lean_dec.exit4074, label %bb.od

bb.od:                                            ; preds = %bb.oc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit4074

lean_dec.exit4074:                                ; preds = %bb.od, %bb.oc, %bb.ob, %lean_dec.exit4076
  %i.wg = load i32, ptr %1, align 4, !tbaa !10    ; 3 uses
  %i.wh = icmp sgt i32 %i.wg, 1
  br i1 %i.wh, label %bb.oe, label %bb.of, !prof !11

bb.oe:                                            ; preds = %lean_dec.exit4074
  %i.wi = add nsw i32 %i.wg, -1
  store i32 %i.wi, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit4711

bb.of:                                            ; preds = %lean_dec.exit4074
  %.not.i4710 = icmp eq i32 %i.wg, 0
  br i1 %.not.i4710, label %lean_dec_ref.exit4711, label %bb.og

bb.og:                                            ; preds = %bb.of
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit4711

lean_dec_ref.exit4711:                            ; preds = %bb.oe, %bb.of, %bb.og
  br i1 %.not.i3650, label %bb.oh, label %lean_dec.exit4072

bb.oh:                                            ; preds = %lean_dec_ref.exit4711
  %i.wj = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.wk = icmp sgt i32 %i.wj, 1
  br i1 %i.wk, label %bb.oi, label %bb.oj, !prof !11

bb.oi:                                            ; preds = %bb.oh
  %i.wl = add nsw i32 %i.wj, -1
  store i32 %i.wl, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit4072

bb.oj:                                            ; preds = %bb.oh
  %.not.i4182 = icmp eq i32 %i.wj, 0
  br i1 %.not.i4182, label %lean_dec.exit4072, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit4072

lean_dec.exit4072:                                ; preds = %bb.ok, %bb.oj, %bb.oi, %lean_dec_ref.exit4711
  %i.wm = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !14 ; 5 uses
  %.val4764 = load i32, ptr %i.pz, align 8, !tbaa !10
  %i.wo = icmp eq i32 %.val4764, 1
  br i1 %i.wo, label %lean_dec.exit.thread5851, label %bb.ol

bb.ol:                                            ; preds = %lean_dec.exit4072
  %i.wp = ptrtoint ptr %i.wn to i64
  %i.wq = and i64 %i.wp, 1
  %.not.i3574 = icmp eq i64 %i.wq, 0
  br i1 %.not.i3574, label %bb.om, label %lean_inc.exit3575

bb.om:                                            ; preds = %bb.ol
  %.val.i.i4997 = load i32, ptr %i.wn, align 4, !tbaa !10 ; 3 uses
  %i.wr = icmp sgt i32 %.val.i.i4997, 0
  br i1 %i.wr, label %bb.on, label %bb.oo, !prof !11

bb.on:                                            ; preds = %bb.om
  %i.ws = add nuw i32 %.val.i.i4997, 1
  store i32 %i.ws, ptr %i.wn, align 4, !tbaa !10
  br label %lean_inc.exit3575

bb.oo:                                            ; preds = %bb.om
  %.not.i.i4998 = icmp eq i32 %.val.i.i4997, 0
  br i1 %.not.i.i4998, label %lean_inc.exit3575, label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.wt = atomicrmw sub ptr %i.wn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3575

lean_inc.exit3575:                                ; preds = %bb.op, %bb.oo, %bb.on, %bb.ol
  br i1 %.not.i4936, label %bb.oq, label %bb.ou

bb.oq:                                            ; preds = %lean_inc.exit3575
  %i.wu = load i32, ptr %i.pz, align 8, !tbaa !10 ; 3 uses
  %i.wv = icmp sgt i32 %i.wu, 1
  br i1 %i.wv, label %bb.or, label %bb.os, !prof !11

bb.or:                                            ; preds = %bb.oq
  %i.ww = add nsw i32 %i.wu, -1
  store i32 %i.ww, ptr %i.pz, align 8, !tbaa !10
  br label %bb.ou

bb.os:                                            ; preds = %bb.oq
  %.not.i4184 = icmp eq i32 %i.wu, 0
  br i1 %.not.i4184, label %bb.ou, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.pz) #7
  br label %bb.ou

bb.ou:                                            ; preds = %lean_inc.exit3575, %bb.or, %bb.os, %bb.ot
  %i.wx = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit.thread5851.sink.split

bb.ov:                                            ; preds = %lean_dec.exit3944.thread
  %i.wy = load ptr, ptr %i.w, align 8, !tbaa !14  ; 10 uses
  %i.wz = load ptr, ptr %i.x, align 8, !tbaa !14  ; 26 uses
  %i.xa = load ptr, ptr %i.y, align 8, !tbaa !14  ; 26 uses
  br i1 %i.kp, label %bb.ow, label %bb.uj

bb.ow:                                            ; preds = %bb.ov
  br i1 %.not.i3646, label %bb.ox, label %lean_dec.exit4068

bb.ox:                                            ; preds = %bb.ow
  %i.xb = load i32, ptr %i.dm, align 4, !tbaa !10 ; 3 uses
  %i.xc = icmp sgt i32 %i.xb, 1
  br i1 %i.xc, label %bb.oy, label %bb.oz, !prof !11

bb.oy:                                            ; preds = %bb.ox
  %i.xd = add nsw i32 %i.xb, -1
  store i32 %i.xd, ptr %i.dm, align 4, !tbaa !10
  br label %lean_dec.exit4068

bb.oz:                                            ; preds = %bb.ox
  %.not.i4186 = icmp eq i32 %i.xb, 0
  br i1 %.not.i4186, label %lean_dec.exit4068, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dm) #7
  br label %lean_dec.exit4068

lean_dec.exit4068:                                ; preds = %bb.pa, %bb.oz, %bb.oy, %bb.ow
  %i.xe = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__1(i8 noundef zeroext 0, ptr noundef %i.wy, ptr poison, ptr poison, ptr poison, ptr nonnull poison, ptr poison, ptr nonnull poison, ptr poison) ; 10 uses
  %i.xf = ptrtoint ptr %i.xe to i64               ; 2 uses
  %i.xg = and i64 %i.xf, 1
  %.not.i5000 = icmp eq i64 %i.xg, 0              ; 2 uses
  br i1 %.not.i5000, label %bb.pc, label %bb.pb

bb.pb:                                            ; preds = %lean_dec.exit4068
  %i.xh = lshr i64 %i.xf, 1
  %i.xi = trunc i64 %i.xh to i32
  br label %lean_obj_tag.exit5003

bb.pc:                                            ; preds = %lean_dec.exit4068
  %i.xj = getelementptr i8, ptr %i.xe, i64 4
  %.val.i5002 = load i32, ptr %i.xj, align 4
  %i.xk = lshr i32 %.val.i5002, 24
  br label %lean_obj_tag.exit5003

lean_obj_tag.exit5003:                            ; preds = %bb.pb, %bb.pc
  %.0.i5001 = phi i32 [ %i.xi, %bb.pb ], [ %i.xk, %bb.pc ]
  %i.xl = icmp eq i32 %.0.i5001, 0
  br i1 %i.xl, label %bb.pd, label %lean_dec.exit4046

bb.pd:                                            ; preds = %lean_obj_tag.exit5003
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !14 ; 12 uses
  %i.xo = ptrtoint ptr %i.xn to i64
  %i.xp = and i64 %i.xo, 1
  %.not.i5004 = icmp eq i64 %i.xp, 0
  br i1 %.not.i5004, label %bb.pe, label %lean_inc_n.exit5007

bb.pe:                                            ; preds = %bb.pd
  %.val.i.i5005 = load i32, ptr %i.xn, align 4, !tbaa !10 ; 3 uses
  %i.xq = icmp sgt i32 %.val.i.i5005, 0
  br i1 %i.xq, label %bb.pf, label %bb.pg, !prof !11

bb.pf:                                            ; preds = %bb.pe
  %i.xr = add nuw i32 %.val.i.i5005, 8
  store i32 %i.xr, ptr %i.xn, align 4, !tbaa !10
  br label %lean_inc_n.exit5007

bb.pg:                                            ; preds = %bb.pe
  %.not.i.i5006 = icmp eq i32 %.val.i.i5005, 0
  br i1 %.not.i.i5006, label %lean_inc_n.exit5007, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.xs = atomicrmw sub ptr %i.xn, i32 8 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit5007

lean_inc_n.exit5007:                              ; preds = %bb.pd, %bb.pf, %bb.pg, %bb.ph
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.xe, i32 noundef 1)
  %i.xt = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__17_once seq_cst, align 4, !tbaa !20
  %i.xu = icmp eq i32 %i.xt, 1
  br i1 %i.xu, label %bb.pi, label %bb.pj, !prof !11

bb.pi:                                            ; preds = %lean_inc_n.exit5007
  %i.xv = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__17, align 8, !tbaa !14
  br label %lean_obj_once.exit5009

bb.pj:                                            ; preds = %lean_inc_n.exit5007
  %i.xw = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__17, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__17_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__17) #7
  br label %lean_obj_once.exit5009

lean_obj_once.exit5009:                           ; preds = %bb.pi, %bb.pj
  %.0.i5008 = phi ptr [ %i.xv, %bb.pi ], [ %i.xw, %bb.pj ]
  %i.xx = ptrtoint ptr %i.xa to i64
  %i.xy = and i64 %i.xx, 1
  %.not.i5010 = icmp eq i64 %i.xy, 0              ; 2 uses
  br i1 %.not.i5010, label %bb.pk, label %lean_inc_n.exit5013

bb.pk:                                            ; preds = %lean_obj_once.exit5009
  %.val.i.i5011 = load i32, ptr %i.xa, align 4, !tbaa !10 ; 3 uses
  %i.xz = icmp sgt i32 %.val.i.i5011, 0
  br i1 %i.xz, label %bb.pl, label %bb.pm, !prof !11

bb.pl:                                            ; preds = %bb.pk
  %i.ya = add nuw i32 %.val.i.i5011, 2
  store i32 %i.ya, ptr %i.xa, align 4, !tbaa !10
  br label %lean_inc_n.exit5013

bb.pm:                                            ; preds = %bb.pk
  %.not.i.i5012 = icmp eq i32 %.val.i.i5011, 0
  br i1 %.not.i.i5012, label %lean_inc_n.exit5013, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %i.yb = atomicrmw sub ptr %i.xa, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit5013

lean_inc_n.exit5013:                              ; preds = %lean_obj_once.exit5009, %bb.pl, %bb.pm, %bb.pn
  %i.yc = ptrtoint ptr %i.wz to i64
  %i.yd = and i64 %i.yc, 1
  %.not.i5014 = icmp eq i64 %i.yd, 0              ; 2 uses
  br i1 %.not.i5014, label %bb.po, label %lean_inc_n.exit5017

bb.po:                                            ; preds = %lean_inc_n.exit5013
  %.val.i.i5015 = load i32, ptr %i.wz, align 4, !tbaa !10 ; 3 uses
  %i.ye = icmp sgt i32 %.val.i.i5015, 0
  br i1 %i.ye, label %bb.pp, label %bb.pq, !prof !11

bb.pp:                                            ; preds = %bb.po
  %i.yf = add nuw i32 %.val.i.i5015, 2
  store i32 %i.yf, ptr %i.wz, align 4, !tbaa !10
  br label %lean_inc_n.exit5017

bb.pq:                                            ; preds = %bb.po
  %.not.i.i5016 = icmp eq i32 %.val.i.i5015, 0
  br i1 %.not.i.i5016, label %lean_inc_n.exit5017, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.yg = atomicrmw sub ptr %i.wz, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit5017

lean_inc_n.exit5017:                              ; preds = %lean_inc_n.exit5013, %bb.pp, %bb.pq, %bb.pr
  %i.yh = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.wz, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__18_value, ptr noundef %i.xa) #7
  %i.yi = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__2_value, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__3_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__16_value) #7
  %i.yj = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  store ptr %i.yi, ptr %i.yk, align 8, !tbaa !14
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yj, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.yl, align 8, !tbaa !14
  %i.ym = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  store ptr %i.yj, ptr %i.yn, align 8, !tbaa !14
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.yo, align 8, !tbaa !14
  %i.yp = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  store ptr %i.xn, ptr %i.yq, align 8, !tbaa !14
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  store ptr %.0.i5008, ptr %i.yr, align 8, !tbaa !14
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yp, i64 24
  store ptr %i.yh, ptr %i.ys, align 8, !tbaa !14
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yp, i64 32
  store ptr %i.ym, ptr %i.yt, align 8, !tbaa !14
  %i.yu = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__33_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__34_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__11_value) #7
  %i.yv = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  store ptr %i.xn, ptr %i.yw, align 8, !tbaa !14
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__12_value, ptr %i.yx, align 8, !tbaa !14
  %i.yy = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14_once seq_cst, align 4, !tbaa !20
  %i.yz = icmp eq i32 %i.yy, 1
  br i1 %i.yz, label %bb.ps, label %bb.pt, !prof !11

bb.ps:                                            ; preds = %lean_inc_n.exit5017
  %i.za = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14, align 8, !tbaa !14
  br label %lean_obj_once.exit5023

bb.pt:                                            ; preds = %lean_inc_n.exit5017
  %i.zb = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14) #7
  br label %lean_obj_once.exit5023

lean_obj_once.exit5023:                           ; preds = %bb.ps, %bb.pt
  %.0.i5022 = phi ptr [ %i.za, %bb.ps ], [ %i.zb, %bb.pt ]
  %i.zc = tail call ptr @l_Lean_Name_mkStr2(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__4_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__63_value) #7
  %i.zd = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.wz, ptr noundef %i.zc, ptr noundef %i.xa) #7
  %i.ze = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 8
  store ptr %i.xn, ptr %i.zf, align 8, !tbaa !14
  %i.zg = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  store ptr %.0.i5022, ptr %i.zg, align 8, !tbaa !14
  %i.zh = getelementptr inbounds nuw i8, ptr %i.ze, i64 24
  store ptr %i.zd, ptr %i.zh, align 8, !tbaa !14
  %i.zi = getelementptr inbounds nuw i8, ptr %i.ze, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.zi, align 8, !tbaa !14
  %i.zj = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.xn, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef nonnull %i.ze) #7
  %i.zk = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 8
  store ptr %i.xn, ptr %i.zl, align 8, !tbaa !14
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__15_value, ptr %i.zm, align 8, !tbaa !14
  %i.zn = tail call ptr @l_Lean_Syntax_node3(ptr noundef %i.xn, ptr noundef %i.yu, ptr noundef nonnull %i.yv, ptr noundef %i.zj, ptr noundef nonnull %i.zk) #7
  %i.zo = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.xn, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef %i.zn) #7
  %i.zp = tail call ptr @l_Lean_Syntax_node2(ptr noundef %i.xn, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__36_value, ptr noundef nonnull %i.yp, ptr noundef %i.zo) #7
  br i1 %.not.i3644, label %bb.pu, label %lean_inc.exit3573

bb.pu:                                            ; preds = %lean_obj_once.exit5023
  %.val.i.i5024 = load i32, ptr %16, align 4, !tbaa !10 ; 3 uses
  %i.zq = icmp sgt i32 %.val.i.i5024, 0
  br i1 %i.zq, label %bb.pv, label %bb.pw, !prof !11

bb.pv:                                            ; preds = %bb.pu
  %i.zr = add nuw i32 %.val.i.i5024, 1
  store i32 %i.zr, ptr %16, align 4, !tbaa !10
  br label %lean_inc.exit3573

bb.pw:                                            ; preds = %bb.pu
  %.not.i.i5025 = icmp eq i32 %.val.i.i5024, 0
  br i1 %.not.i.i5025, label %lean_inc.exit3573, label %bb.px

end_hunk_3
begin_hunk_4_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__7_spec__12:bb.a

lean_dec_ref.exit4699:                            ; preds = %bb.sx, %bb.sy, %bb.sz
  %i.acw = load i32, ptr %.0.i5294, align 4, !tbaa !10 ; 3 uses
  %i.acx = icmp sgt i32 %i.acw, 1
  br i1 %i.acx, label %bb.ta, label %bb.tb, !prof !11

bb.ta:                                            ; preds = %lean_dec_ref.exit4699
  %i.acy = add nsw i32 %i.acw, -1
  store i32 %i.acy, ptr %.0.i5294, align 4, !tbaa !10
  br label %lean_dec_ref.exit4697

bb.tb:                                            ; preds = %lean_dec_ref.exit4699
  %.not.i4696 = icmp eq i32 %i.acw, 0
  br i1 %.not.i4696, label %lean_dec_ref.exit4697, label %bb.tc

bb.tc:                                            ; preds = %bb.tb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i5294) #7
  br label %lean_dec_ref.exit4697

lean_dec_ref.exit4697:                            ; preds = %bb.ta, %bb.tb, %bb.tc
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.cm, i32 noundef 1)
  br i1 %.not.i3636, label %bb.td, label %lean_dec.exit4044

bb.td:                                            ; preds = %lean_dec_ref.exit4697
  %i.acz = load i32, ptr %i.bj, align 4, !tbaa !10 ; 3 uses
  %i.ada = icmp sgt i32 %i.acz, 1
  br i1 %i.ada, label %bb.te, label %bb.tf, !prof !11

bb.te:                                            ; preds = %bb.td
  %i.adb = add nsw i32 %i.acz, -1
  store i32 %i.adb, ptr %i.bj, align 4, !tbaa !10
  br label %lean_dec.exit4044

bb.tf:                                            ; preds = %bb.td
  %.not.i4204 = icmp eq i32 %i.acz, 0
  br i1 %.not.i4204, label %lean_dec.exit4044, label %bb.tg

bb.tg:                                            ; preds = %bb.tf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #7
  br label %lean_dec.exit4044

lean_dec.exit4044:                                ; preds = %bb.tg, %bb.tf, %bb.te, %lean_dec_ref.exit4697
  %i.adc = load i32, ptr %.0260410352, align 4, !tbaa !10 ; 3 uses
  %i.add = icmp sgt i32 %i.adc, 1
  br i1 %i.add, label %bb.th, label %bb.ti, !prof !11

bb.th:                                            ; preds = %lean_dec.exit4044
  %i.ade = add nsw i32 %i.adc, -1
  store i32 %i.ade, ptr %.0260410352, align 4, !tbaa !10
  br label %lean_dec_ref.exit4695

bb.ti:                                            ; preds = %lean_dec.exit4044
  %.not.i4694 = icmp eq i32 %i.adc, 0
  br i1 %.not.i4694, label %lean_dec_ref.exit4695, label %bb.tj

bb.tj:                                            ; preds = %bb.ti
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0260410352) #7
  br label %lean_dec_ref.exit4695

lean_dec_ref.exit4695:                            ; preds = %bb.th, %bb.ti, %bb.tj
  br i1 %.not.i3763, label %bb.tk, label %lean_dec.exit4042

bb.tk:                                            ; preds = %lean_dec_ref.exit4695
  %i.adf = load i32, ptr %5, align 4, !tbaa !10   ; 3 uses
  %i.adg = icmp sgt i32 %i.adf, 1
  br i1 %i.adg, label %bb.tl, label %bb.tm, !prof !11

bb.tl:                                            ; preds = %bb.tk
  %i.adh = add nsw i32 %i.adf, -1
  store i32 %i.adh, ptr %5, align 4, !tbaa !10
  br label %lean_dec.exit4042

bb.tm:                                            ; preds = %bb.tk
  %.not.i4206 = icmp eq i32 %i.adf, 0
  br i1 %.not.i4206, label %lean_dec.exit4042, label %bb.tn

bb.tn:                                            ; preds = %bb.tm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit4042

lean_dec.exit4042:                                ; preds = %bb.tn, %bb.tm, %bb.tl, %lean_dec_ref.exit4695
  br i1 %.not.i3470, label %bb.to, label %lean_dec.exit4040

bb.to:                                            ; preds = %lean_dec.exit4042
  %i.adi = load i32, ptr %2, align 4, !tbaa !10   ; 3 uses
  %i.adj = icmp sgt i32 %i.adi, 1
  br i1 %i.adj, label %bb.tp, label %bb.tq, !prof !11

bb.tp:                                            ; preds = %bb.to
  %i.adk = add nsw i32 %i.adi, -1
  store i32 %i.adk, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit4040

bb.tq:                                            ; preds = %bb.to
  %.not.i4208 = icmp eq i32 %i.adi, 0
  br i1 %.not.i4208, label %lean_dec.exit4040, label %bb.tr

bb.tr:                                            ; preds = %bb.tq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit4040

lean_dec.exit4040:                                ; preds = %bb.tr, %bb.tq, %bb.tp, %lean_dec.exit4042
  %i.adl = load i32, ptr %1, align 4, !tbaa !10   ; 3 uses
  %i.adm = icmp sgt i32 %i.adl, 1
  br i1 %i.adm, label %bb.ts, label %bb.tt, !prof !11

bb.ts:                                            ; preds = %lean_dec.exit4040
  %i.adn = add nsw i32 %i.adl, -1
  store i32 %i.adn, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit4693

bb.tt:                                            ; preds = %lean_dec.exit4040
  %.not.i4692 = icmp eq i32 %i.adl, 0
  br i1 %.not.i4692, label %lean_dec_ref.exit4693, label %bb.tu

bb.tu:                                            ; preds = %bb.tt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit4693

lean_dec_ref.exit4693:                            ; preds = %bb.ts, %bb.tt, %bb.tu
  br i1 %.not.i3650, label %bb.tv, label %lean_dec.exit4038

bb.tv:                                            ; preds = %lean_dec_ref.exit4693
  %i.ado = load i32, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.adp = icmp sgt i32 %i.ado, 1
  br i1 %i.adp, label %bb.tw, label %bb.tx, !prof !11

bb.tw:                                            ; preds = %bb.tv
  %i.adq = add nsw i32 %i.ado, -1
  store i32 %i.adq, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit4038

bb.tx:                                            ; preds = %bb.tv
  %.not.i4210 = icmp eq i32 %i.ado, 0
  br i1 %.not.i4210, label %lean_dec.exit4038, label %bb.ty

bb.ty:                                            ; preds = %bb.tx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit4038

lean_dec.exit4038:                                ; preds = %bb.ty, %bb.tx, %bb.tw, %lean_dec_ref.exit4693
  %i.adr = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !14 ; 5 uses
  %.val4762 = load i32, ptr %i.xe, align 8, !tbaa !10
  %i.adt = icmp eq i32 %.val4762, 1
  br i1 %i.adt, label %lean_dec.exit.thread5851, label %bb.tz

bb.tz:                                            ; preds = %lean_dec.exit4038
  %i.adu = ptrtoint ptr %i.ads to i64
  %i.adv = and i64 %i.adu, 1
  %.not.i3556 = icmp eq i64 %i.adv, 0
  br i1 %.not.i3556, label %bb.ua, label %lean_inc.exit3557

bb.ua:                                            ; preds = %bb.tz
  %.val.i.i5061 = load i32, ptr %i.ads, align 4, !tbaa !10 ; 3 uses
  %i.adw = icmp sgt i32 %.val.i.i5061, 0
  br i1 %i.adw, label %bb.ub, label %bb.uc, !prof !11

bb.ub:                                            ; preds = %bb.ua
  %i.adx = add nuw i32 %.val.i.i5061, 1
  store i32 %i.adx, ptr %i.ads, align 4, !tbaa !10
  br label %lean_inc.exit3557

bb.uc:                                            ; preds = %bb.ua
  %.not.i.i5062 = icmp eq i32 %.val.i.i5061, 0
  br i1 %.not.i.i5062, label %lean_inc.exit3557, label %bb.ud

bb.ud:                                            ; preds = %bb.uc
  %i.ady = atomicrmw sub ptr %i.ads, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3557

lean_inc.exit3557:                                ; preds = %bb.ud, %bb.uc, %bb.ub, %bb.tz
  br i1 %.not.i5000, label %bb.ue, label %bb.ui

bb.ue:                                            ; preds = %lean_inc.exit3557
  %i.adz = load i32, ptr %i.xe, align 8, !tbaa !10 ; 3 uses
  %i.aea = icmp sgt i32 %i.adz, 1
  br i1 %i.aea, label %bb.uf, label %bb.ug, !prof !11

bb.uf:                                            ; preds = %bb.ue
  %i.aeb = add nsw i32 %i.adz, -1
  store i32 %i.aeb, ptr %i.xe, align 8, !tbaa !10
  br label %bb.ui

bb.ug:                                            ; preds = %bb.ue
  %.not.i4212 = icmp eq i32 %i.adz, 0
  br i1 %.not.i4212, label %bb.ui, label %bb.uh

bb.uh:                                            ; preds = %bb.ug
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.xe) #7
  br label %bb.ui

bb.ui:                                            ; preds = %lean_inc.exit3557, %bb.uf, %bb.ug, %bb.uh
  %i.aec = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit.thread5851.sink.split

bb.uj:                                            ; preds = %bb.ov
  br i1 %.not.i3646, label %bb.uk, label %lean_dec.exit4034

bb.uk:                                            ; preds = %bb.uj
  %i.aed = load i32, ptr %i.dm, align 4, !tbaa !10 ; 3 uses
  %i.aee = icmp sgt i32 %i.aed, 1
  br i1 %i.aee, label %bb.ul, label %bb.um, !prof !11

bb.ul:                                            ; preds = %bb.uk
  %i.aef = add nsw i32 %i.aed, -1
  store i32 %i.aef, ptr %i.dm, align 4, !tbaa !10
  br label %lean_dec.exit4034

bb.um:                                            ; preds = %bb.uk
  %.not.i4214 = icmp eq i32 %i.aed, 0
  br i1 %.not.i4214, label %lean_dec.exit4034, label %bb.un

bb.un:                                            ; preds = %bb.um
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dm) #7
  br label %lean_dec.exit4034

lean_dec.exit4034:                                ; preds = %bb.un, %bb.um, %bb.ul, %bb.uj
  %i.aeg = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__1(i8 noundef zeroext 0, ptr noundef %i.wy, ptr poison, ptr poison, ptr poison, ptr nonnull poison, ptr poison, ptr nonnull poison, ptr poison) ; 10 uses
  %i.aeh = ptrtoint ptr %i.aeg to i64             ; 2 uses
  %i.aei = and i64 %i.aeh, 1
  %.not.i5064 = icmp eq i64 %i.aei, 0             ; 2 uses
  br i1 %.not.i5064, label %bb.up, label %bb.uo

bb.uo:                                            ; preds = %lean_dec.exit4034
  %i.aej = lshr i64 %i.aeh, 1
  %i.aek = trunc i64 %i.aej to i32
  br label %lean_obj_tag.exit5067

bb.up:                                            ; preds = %lean_dec.exit4034
  %i.ael = getelementptr i8, ptr %i.aeg, i64 4
  %.val.i5066 = load i32, ptr %i.ael, align 4
  %i.aem = lshr i32 %.val.i5066, 24
  br label %lean_obj_tag.exit5067

lean_obj_tag.exit5067:                            ; preds = %bb.uo, %bb.up
  %.0.i5065 = phi i32 [ %i.aek, %bb.uo ], [ %i.aem, %bb.up ]
  %i.aen = icmp eq i32 %.0.i5065, 0
  br i1 %i.aen, label %bb.uq, label %lean_dec.exit4012

bb.uq:                                            ; preds = %lean_obj_tag.exit5067
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !14 ; 12 uses
  %i.aeq = ptrtoint ptr %i.aep to i64
  %i.aer = and i64 %i.aeq, 1
  %.not.i5068 = icmp eq i64 %i.aer, 0
  br i1 %.not.i5068, label %bb.ur, label %lean_inc_n.exit5071

bb.ur:                                            ; preds = %bb.uq
  %.val.i.i5069 = load i32, ptr %i.aep, align 4, !tbaa !10 ; 3 uses
  %i.aes = icmp sgt i32 %.val.i.i5069, 0
  br i1 %i.aes, label %bb.us, label %bb.ut, !prof !11

bb.us:                                            ; preds = %bb.ur
  %i.aet = add nuw i32 %.val.i.i5069, 8
  store i32 %i.aet, ptr %i.aep, align 4, !tbaa !10
  br label %lean_inc_n.exit5071

bb.ut:                                            ; preds = %bb.ur
  %.not.i.i5070 = icmp eq i32 %.val.i.i5069, 0
  br i1 %.not.i.i5070, label %lean_inc_n.exit5071, label %bb.uu

bb.uu:                                            ; preds = %bb.ut
  %i.aeu = atomicrmw sub ptr %i.aep, i32 8 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit5071

lean_inc_n.exit5071:                              ; preds = %bb.uq, %bb.us, %bb.ut, %bb.uu
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.aeg, i32 noundef 1)
  %i.aev = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__20_once seq_cst, align 4, !tbaa !20
  %i.aew = icmp eq i32 %i.aev, 1
  br i1 %i.aew, label %bb.uv, label %bb.uw, !prof !11

bb.uv:                                            ; preds = %lean_inc_n.exit5071
  %i.aex = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__20, align 8, !tbaa !14
  br label %lean_obj_once.exit5073

bb.uw:                                            ; preds = %lean_inc_n.exit5071
  %i.aey = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__20, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__20_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__20) #7
  br label %lean_obj_once.exit5073

lean_obj_once.exit5073:                           ; preds = %bb.uv, %bb.uw
  %.0.i5072 = phi ptr [ %i.aex, %bb.uv ], [ %i.aey, %bb.uw ]
  %i.aez = ptrtoint ptr %i.xa to i64
  %i.afa = and i64 %i.aez, 1
  %.not.i5074 = icmp eq i64 %i.afa, 0             ; 2 uses
  br i1 %.not.i5074, label %bb.ux, label %lean_inc_n.exit5077

bb.ux:                                            ; preds = %lean_obj_once.exit5073
  %.val.i.i5075 = load i32, ptr %i.xa, align 4, !tbaa !10 ; 3 uses
  %i.afb = icmp sgt i32 %.val.i.i5075, 0
  br i1 %i.afb, label %bb.uy, label %bb.uz, !prof !11

bb.uy:                                            ; preds = %bb.ux
  %i.afc = add nuw i32 %.val.i.i5075, 2
  store i32 %i.afc, ptr %i.xa, align 4, !tbaa !10
  br label %lean_inc_n.exit5077

bb.uz:                                            ; preds = %bb.ux
  %.not.i.i5076 = icmp eq i32 %.val.i.i5075, 0
  br i1 %.not.i.i5076, label %lean_inc_n.exit5077, label %bb.va

bb.va:                                            ; preds = %bb.uz
  %i.afd = atomicrmw sub ptr %i.xa, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit5077

lean_inc_n.exit5077:                              ; preds = %lean_obj_once.exit5073, %bb.uy, %bb.uz, %bb.va
  %i.afe = ptrtoint ptr %i.wz to i64
  %i.aff = and i64 %i.afe, 1
  %.not.i5078 = icmp eq i64 %i.aff, 0             ; 2 uses
  br i1 %.not.i5078, label %bb.vb, label %lean_inc_n.exit5081

bb.vb:                                            ; preds = %lean_inc_n.exit5077
  %.val.i.i5079 = load i32, ptr %i.wz, align 4, !tbaa !10 ; 3 uses
  %i.afg = icmp sgt i32 %.val.i.i5079, 0
  br i1 %i.afg, label %bb.vc, label %bb.vd, !prof !11

bb.vc:                                            ; preds = %bb.vb
  %i.afh = add nuw i32 %.val.i.i5079, 2
  store i32 %i.afh, ptr %i.wz, align 4, !tbaa !10
  br label %lean_inc_n.exit5081

bb.vd:                                            ; preds = %bb.vb
  %.not.i.i5080 = icmp eq i32 %.val.i.i5079, 0
  br i1 %.not.i.i5080, label %lean_inc_n.exit5081, label %bb.ve

bb.ve:                                            ; preds = %bb.vd
  %i.afi = atomicrmw sub ptr %i.wz, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit5081

lean_inc_n.exit5081:                              ; preds = %lean_inc_n.exit5077, %bb.vc, %bb.vd, %bb.ve
  %i.afj = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.wz, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__21_value, ptr noundef %i.xa) #7
  %i.afk = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__2_value, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__3_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__19_value) #7
  %i.afl = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 8
  store ptr %i.afk, ptr %i.afm, align 8, !tbaa !14
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afl, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.afn, align 8, !tbaa !14
  %i.afo = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 8
  store ptr %i.afl, ptr %i.afp, align 8, !tbaa !14
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afo, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.afq, align 8, !tbaa !14
  %i.afr = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 8
  store ptr %i.aep, ptr %i.afs, align 8, !tbaa !14
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afr, i64 16
  store ptr %.0.i5072, ptr %i.aft, align 8, !tbaa !14
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afr, i64 24
  store ptr %i.afj, ptr %i.afu, align 8, !tbaa !14
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afr, i64 32
  store ptr %i.afo, ptr %i.afv, align 8, !tbaa !14
  %i.afw = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__33_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__34_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__11_value) #7
  %i.afx = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 8
  store ptr %i.aep, ptr %i.afy, align 8, !tbaa !14
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afx, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__12_value, ptr %i.afz, align 8, !tbaa !14
  %i.aga = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14_once seq_cst, align 4, !tbaa !20
  %i.agb = icmp eq i32 %i.aga, 1
  br i1 %i.agb, label %bb.vf, label %bb.vg, !prof !11

bb.vf:                                            ; preds = %lean_inc_n.exit5081
  %i.agc = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14, align 8, !tbaa !14
  br label %lean_obj_once.exit5087

bb.vg:                                            ; preds = %lean_inc_n.exit5081
  %i.agd = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14) #7
  br label %lean_obj_once.exit5087

lean_obj_once.exit5087:                           ; preds = %bb.vf, %bb.vg
  %.0.i5086 = phi ptr [ %i.agc, %bb.vf ], [ %i.agd, %bb.vg ]
  %i.age = tail call ptr @l_Lean_Name_mkStr2(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__4_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__63_value) #7
  %i.agf = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.wz, ptr noundef %i.age, ptr noundef %i.xa) #7
  %i.agg = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 8
  store ptr %i.aep, ptr %i.agh, align 8, !tbaa !14
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agg, i64 16
  store ptr %.0.i5086, ptr %i.agi, align 8, !tbaa !14
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agg, i64 24
  store ptr %i.agf, ptr %i.agj, align 8, !tbaa !14
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agg, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.agk, align 8, !tbaa !14
  %i.agl = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.aep, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef nonnull %i.agg) #7
  %i.agm = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 8
  store ptr %i.aep, ptr %i.agn, align 8, !tbaa !14
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agm, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__15_value, ptr %i.ago, align 8, !tbaa !14
  %i.agp = tail call ptr @l_Lean_Syntax_node3(ptr noundef %i.aep, ptr noundef %i.afw, ptr noundef nonnull %i.afx, ptr noundef %i.agl, ptr noundef nonnull %i.agm) #7
  %i.agq = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.aep, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef %i.agp) #7
  %i.agr = tail call ptr @l_Lean_Syntax_node2(ptr noundef %i.aep, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__36_value, ptr noundef nonnull %i.afr, ptr noundef %i.agq) #7
  br i1 %.not.i3644, label %bb.vh, label %lean_inc.exit3555

bb.vh:                                            ; preds = %lean_obj_once.exit5087
  %.val.i.i5088 = load i32, ptr %16, align 4, !tbaa !10 ; 3 uses
  %i.ags = icmp sgt i32 %.val.i.i5088, 0
  br i1 %i.ags, label %bb.vi, label %bb.vj, !prof !11

bb.vi:                                            ; preds = %bb.vh
  %i.agt = add nuw i32 %.val.i.i5088, 1
  store i32 %i.agt, ptr %16, align 4, !tbaa !10
  br label %lean_inc.exit3555

bb.vj:                                            ; preds = %bb.vh
  %.not.i.i5089 = icmp eq i32 %.val.i.i5088, 0
  br i1 %.not.i.i5089, label %lean_inc.exit3555, label %bb.vk

end_hunk_4
begin_hunk_5_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__7_spec__12:bb.a
bb.aax:                                           ; preds = %bb.aaw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit3986

lean_dec.exit3986:                                ; preds = %bb.aax, %bb.aaw, %bb.aav, %lean_dec.exit3988
  %i.amd = load i32, ptr %1, align 4, !tbaa !10   ; 3 uses
  %i.ame = icmp sgt i32 %i.amd, 1
  br i1 %i.ame, label %bb.aay, label %bb.aaz, !prof !11

bb.aay:                                           ; preds = %lean_dec.exit3986
  %i.amf = add nsw i32 %i.amd, -1
  store i32 %i.amf, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit4665

bb.aaz:                                           ; preds = %lean_dec.exit3986
  %.not.i4664 = icmp eq i32 %i.amd, 0
  br i1 %.not.i4664, label %lean_dec_ref.exit4665, label %bb.aba

bb.aba:                                           ; preds = %bb.aaz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit4665

lean_dec_ref.exit4665:                            ; preds = %bb.aay, %bb.aaz, %bb.aba
  br i1 %.not.i3650, label %bb.abb, label %lean_dec.exit3984

bb.abb:                                           ; preds = %lean_dec_ref.exit4665
  %i.amg = load i32, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.amh = icmp sgt i32 %i.amg, 1
  br i1 %i.amh, label %bb.abc, label %bb.abd, !prof !11

bb.abc:                                           ; preds = %bb.abb
  %i.ami = add nsw i32 %i.amg, -1
  store i32 %i.ami, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit3984

bb.abd:                                           ; preds = %bb.abb
  %.not.i4254 = icmp eq i32 %i.amg, 0
  br i1 %.not.i4254, label %lean_dec.exit3984, label %bb.abe

bb.abe:                                           ; preds = %bb.abd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit3984

lean_dec.exit3984:                                ; preds = %bb.abe, %bb.abd, %bb.abc, %lean_dec_ref.exit4665
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ant, i64 8
  %i.amk = load ptr, ptr %i.amj, align 8, !tbaa !14 ; 5 uses
  %.val4759 = load i32, ptr %i.ant, align 8, !tbaa !10
  %i.aml = icmp eq i32 %.val4759, 1
  br i1 %i.aml, label %lean_dec.exit.thread5851, label %bb.abf

bb.abf:                                           ; preds = %lean_dec.exit3984
  %i.amm = ptrtoint ptr %i.amk to i64
  %i.amn = and i64 %i.amm, 1
  %.not.i3536 = icmp eq i64 %i.amn, 0
  br i1 %.not.i3536, label %bb.abg, label %lean_inc.exit3537

bb.abg:                                           ; preds = %bb.abf
  %.val.i.i5128 = load i32, ptr %i.amk, align 4, !tbaa !10 ; 3 uses
  %i.amo = icmp sgt i32 %.val.i.i5128, 0
  br i1 %i.amo, label %bb.abh, label %bb.abi, !prof !11

bb.abh:                                           ; preds = %bb.abg
  %i.amp = add nuw i32 %.val.i.i5128, 1
  store i32 %i.amp, ptr %i.amk, align 4, !tbaa !10
  br label %lean_inc.exit3537

bb.abi:                                           ; preds = %bb.abg
  %.not.i.i5129 = icmp eq i32 %.val.i.i5128, 0
  br i1 %.not.i.i5129, label %lean_inc.exit3537, label %bb.abj

bb.abj:                                           ; preds = %bb.abi
  %i.amq = atomicrmw sub ptr %i.amk, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3537

lean_inc.exit3537:                                ; preds = %bb.abj, %bb.abi, %bb.abh, %bb.abf
  br i1 %.not.i5139, label %bb.abk, label %bb.abo

bb.abk:                                           ; preds = %lean_inc.exit3537
  %i.amr = load i32, ptr %i.ant, align 8, !tbaa !10 ; 3 uses
  %i.ams = icmp sgt i32 %i.amr, 1
  br i1 %i.ams, label %bb.abl, label %bb.abm, !prof !11

bb.abl:                                           ; preds = %bb.abk
  %i.amt = add nsw i32 %i.amr, -1
  store i32 %i.amt, ptr %i.ant, align 8, !tbaa !10
  br label %bb.abo

bb.abm:                                           ; preds = %bb.abk
  %.not.i4256 = icmp eq i32 %i.amr, 0
  br i1 %.not.i4256, label %bb.abo, label %bb.abn

bb.abn:                                           ; preds = %bb.abm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ant) #7
  br label %bb.abo

bb.abo:                                           ; preds = %lean_inc.exit3537, %bb.abl, %bb.abm, %bb.abn
  %i.amu = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit.thread5851.sink.split

lean_dec.exit3982:                                ; preds = %lean_obj_tag.exit5142
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.ant, i32 noundef 1)
  br label %lean_dec.exit3944.thread

bb.abp:                                           ; preds = %bb.ajn, %bb.ajm, %bb.ajl, %lean_dec.exit3936
  %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3431 = select i1 %i.azi, ptr @l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value, ptr @l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value ; 3 uses
  %.03197 = trunc i64 %i.azj to i8                ; 2 uses
  %.val.i.i5131 = load i32, ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3431, align 8, !tbaa !10 ; 2 uses
  %i.amv = icmp sgt i32 %.val.i.i5131, 0
  br i1 %i.amv, label %lean_inc_ref.exit5133, label %bb.abq, !prof !11

bb.abq:                                           ; preds = %bb.abp
  %.not.i.i5132 = icmp eq i32 %.val.i.i5131, 0
  br i1 %.not.i.i5132, label %lean_inc_ref.exit5133, label %bb.abr

bb.abr:                                           ; preds = %bb.abq
  %i.amw = atomicrmw sub ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3431, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit5133

lean_inc_ref.exit5133:                            ; preds = %bb.abp, %bb.abq, %bb.abr
  %i.amx = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 8
  store ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3431, ptr %i.amy, align 8, !tbaa !14
  %i.amz = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull %i.amx) #7
  %i.ana = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 8
  store ptr %i.aze, ptr %i.anb, align 8, !tbaa !14
  %i.anc = getelementptr inbounds nuw i8, ptr %i.ana, i64 16
  store ptr %i.amz, ptr %i.anc, align 8, !tbaa !14
  %i.and = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__23_once seq_cst, align 4, !tbaa !20
  %i.ane = icmp eq i32 %i.and, 1
  br i1 %i.ane, label %bb.abs, label %bb.abt, !prof !11

bb.abs:                                           ; preds = %lean_inc_ref.exit5133
  %i.anf = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__23, align 8, !tbaa !14
  br label %lean_obj_once.exit5135

bb.abt:                                           ; preds = %lean_inc_ref.exit5133
  %i.ang = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__23, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__23_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__23) #7
  br label %lean_obj_once.exit5135

lean_obj_once.exit5135:                           ; preds = %bb.abs, %bb.abt
  %.0.i5134 = phi ptr [ %i.anf, %bb.abs ], [ %i.ang, %bb.abt ]
  %i.anh = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 8
  store ptr %i.ana, ptr %i.ani, align 8, !tbaa !14
  %i.anj = getelementptr inbounds nuw i8, ptr %i.anh, i64 16
  store ptr %.0.i5134, ptr %i.anj, align 8, !tbaa !14
  %i.ank = icmp eq i8 %.03197, 0
  %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value = select i1 %i.ank, ptr @l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value, ptr @l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value ; 3 uses
  %.val.i.i5136 = load i32, ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value, align 8, !tbaa !10 ; 2 uses
  %i.anl = icmp sgt i32 %.val.i.i5136, 0
  br i1 %i.anl, label %lean_inc_ref.exit5138, label %bb.abu, !prof !11

bb.abu:                                           ; preds = %lean_obj_once.exit5135
  %.not.i.i5137 = icmp eq i32 %.val.i.i5136, 0
  br i1 %.not.i.i5137, label %lean_inc_ref.exit5138, label %bb.abv

bb.abv:                                           ; preds = %bb.abu
  %i.anm = atomicrmw sub ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit5138

lean_inc_ref.exit5138:                            ; preds = %lean_obj_once.exit5135, %bb.abu, %bb.abv
  %i.ann = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 8
  store ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value, ptr %i.ano, align 8, !tbaa !14
  %i.anp = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull %i.ann) #7
  %i.anq = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 8
  store ptr %i.anh, ptr %i.anr, align 8, !tbaa !14
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anq, i64 16
  store ptr %i.anp, ptr %i.ans, align 8, !tbaa !14
  %i.ant = tail call ptr @l_Lean_addTrace___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__0___redArg(ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__4_value, ptr noundef nonnull %i.anq, ptr noundef nonnull %13, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %16) ; 9 uses
  %i.anu = ptrtoint ptr %i.ant to i64             ; 2 uses
  %i.anv = and i64 %i.anu, 1
  %.not.i5139 = icmp eq i64 %i.anv, 0             ; 2 uses
  br i1 %.not.i5139, label %bb.abx, label %bb.abw

bb.abw:                                           ; preds = %lean_inc_ref.exit5138
  %i.anw = lshr i64 %i.anu, 1
  %i.anx = trunc i64 %i.anw to i32
  br label %lean_obj_tag.exit5142

bb.abx:                                           ; preds = %lean_inc_ref.exit5138
  %i.any = getelementptr i8, ptr %i.ant, i64 4
  %.val.i5141 = load i32, ptr %i.any, align 4
  %i.anz = lshr i32 %.val.i5141, 24
  br label %lean_obj_tag.exit5142

lean_obj_tag.exit5142:                            ; preds = %bb.abw, %bb.abx
  %.0.i5140 = phi i32 [ %i.anx, %bb.abw ], [ %i.anz, %bb.abx ]
  %i.aoa = icmp eq i32 %.0.i5140, 0
  br i1 %i.aoa, label %lean_dec.exit3982, label %lean_dec.exit3994

bb.aby:                                           ; preds = %bb.aok, %bb.aow, %bb.aoo, %bb.aon, %bb.aom
  %i.aob = load ptr, ptr %i.w, align 8, !tbaa !14
  %i.aoc = load ptr, ptr %i.x, align 8, !tbaa !14 ; 8 uses
  %i.aod = load ptr, ptr %i.y, align 8, !tbaa !14 ; 8 uses
  br i1 %.not.i3646, label %bb.abz, label %lean_dec.exit3980

bb.abz:                                           ; preds = %bb.aby
  %i.aoe = load i32, ptr %i.dm, align 4, !tbaa !10 ; 3 uses
  %i.aof = icmp sgt i32 %i.aoe, 1
  br i1 %i.aof, label %bb.aca, label %bb.acb, !prof !11

bb.aca:                                           ; preds = %bb.abz
  %i.aog = add nsw i32 %i.aoe, -1
  store i32 %i.aog, ptr %i.dm, align 4, !tbaa !10
  br label %lean_dec.exit3980

bb.acb:                                           ; preds = %bb.abz
  %.not.i4258 = icmp eq i32 %i.aoe, 0
  br i1 %.not.i4258, label %lean_dec.exit3980, label %bb.acc

bb.acc:                                           ; preds = %bb.acb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dm) #7
  br label %lean_dec.exit3980

lean_dec.exit3980:                                ; preds = %bb.acc, %bb.acb, %bb.aca, %bb.aby
  %i.aoh = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__1(i8 noundef zeroext 0, ptr noundef %i.aob, ptr poison, ptr poison, ptr poison, ptr nonnull poison, ptr poison, ptr nonnull poison, ptr poison) ; 10 uses
  %i.aoi = ptrtoint ptr %i.aoh to i64             ; 2 uses
  %i.aoj = and i64 %i.aoi, 1
  %.not.i5143 = icmp eq i64 %i.aoj, 0             ; 2 uses
  br i1 %.not.i5143, label %bb.ace, label %bb.acd

bb.acd:                                           ; preds = %lean_dec.exit3980
  %i.aok = lshr i64 %i.aoi, 1
  %i.aol = trunc i64 %i.aok to i32
  br label %lean_obj_tag.exit5146

bb.ace:                                           ; preds = %lean_dec.exit3980
  %i.aom = getelementptr i8, ptr %i.aoh, i64 4
  %.val.i5145 = load i32, ptr %i.aom, align 4
  %i.aon = lshr i32 %.val.i5145, 24
  br label %lean_obj_tag.exit5146

lean_obj_tag.exit5146:                            ; preds = %bb.acd, %bb.ace
  %.0.i5144 = phi i32 [ %i.aol, %bb.acd ], [ %i.aon, %bb.ace ]
  %i.aoo = icmp eq i32 %.0.i5144, 0
  br i1 %i.aoo, label %bb.acf, label %bb.afa

bb.acf:                                           ; preds = %lean_obj_tag.exit5146
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoh, i64 8
  %i.aoq = load ptr, ptr %i.aop, align 8, !tbaa !14 ; 21 uses
  %i.aor = ptrtoint ptr %i.aoq to i64
  %i.aos = and i64 %i.aor, 1
  %.not.i5147 = icmp eq i64 %i.aos, 0
  br i1 %.not.i5147, label %bb.acg, label %lean_inc_n.exit5150

bb.acg:                                           ; preds = %bb.acf
  %.val.i.i5148 = load i32, ptr %i.aoq, align 4, !tbaa !10 ; 3 uses
  %i.aot = icmp sgt i32 %.val.i.i5148, 0
  br i1 %i.aot, label %bb.ach, label %bb.aci, !prof !11

bb.ach:                                           ; preds = %bb.acg
  %i.aou = add nuw i32 %.val.i.i5148, 17
  store i32 %i.aou, ptr %i.aoq, align 4, !tbaa !10
  br label %lean_inc_n.exit5150

bb.aci:                                           ; preds = %bb.acg
  %.not.i.i5149 = icmp eq i32 %.val.i.i5148, 0
  br i1 %.not.i.i5149, label %lean_inc_n.exit5150, label %bb.acj

bb.acj:                                           ; preds = %bb.aci
  %i.aov = atomicrmw sub ptr %i.aoq, i32 17 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit5150

lean_inc_n.exit5150:                              ; preds = %bb.acf, %bb.ach, %bb.aci, %bb.acj
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.aoh, i32 noundef 1)
  %i.aow = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__33_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__34_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__8_value) #7 ; 6 uses
  %i.aox = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 7 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 8
  store ptr %i.aoq, ptr %i.aoy, align 8, !tbaa !14
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aox, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__8_value, ptr %i.aoz, align 8, !tbaa !14
  %i.apa = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__33_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__34_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__9_value) #7 ; 6 uses
  %i.apb = ptrtoint ptr %i.aod to i64
  %i.apc = and i64 %i.apb, 1
  %.not.i5151 = icmp eq i64 %i.apc, 0
  br i1 %.not.i5151, label %bb.ack, label %lean_inc_n.exit5154

bb.ack:                                           ; preds = %lean_inc_n.exit5150
  %.val.i.i5152 = load i32, ptr %i.aod, align 4, !tbaa !10 ; 3 uses
  %i.apd = icmp sgt i32 %.val.i.i5152, 0
  br i1 %i.apd, label %bb.acl, label %bb.acm, !prof !11

bb.acl:                                           ; preds = %bb.ack
  %i.ape = add nuw i32 %.val.i.i5152, 4
  store i32 %i.ape, ptr %i.aod, align 4, !tbaa !10
  br label %lean_inc_n.exit5154

bb.acm:                                           ; preds = %bb.ack
  %.not.i.i5153 = icmp eq i32 %.val.i.i5152, 0
  br i1 %.not.i.i5153, label %lean_inc_n.exit5154, label %bb.acn

bb.acn:                                           ; preds = %bb.acm
  %i.apf = atomicrmw sub ptr %i.aod, i32 4 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit5154

lean_inc_n.exit5154:                              ; preds = %lean_inc_n.exit5150, %bb.acl, %bb.acm, %bb.acn
  %i.apg = ptrtoint ptr %i.aoc to i64
  %i.aph = and i64 %i.apg, 1
  %.not.i5155 = icmp eq i64 %i.aph, 0
  br i1 %.not.i5155, label %bb.aco, label %lean_inc_n.exit5162

bb.aco:                                           ; preds = %lean_inc_n.exit5154
  %.val.i.i5156 = load i32, ptr %i.aoc, align 4, !tbaa !10 ; 3 uses
  %i.api = icmp sgt i32 %.val.i.i5156, 0
  br i1 %i.api, label %bb.acp, label %bb.acq, !prof !11

bb.acp:                                           ; preds = %bb.aco
  %i.apj = add nuw i32 %.val.i.i5156, 4
  store i32 %i.apj, ptr %i.aoc, align 4, !tbaa !10
  br label %lean_inc_n.exit5162

bb.acq:                                           ; preds = %bb.aco
  %.not.i.i5157 = icmp eq i32 %.val.i.i5156, 0
  br i1 %.not.i.i5157, label %lean_inc_n.exit5162, label %bb.acr

bb.acr:                                           ; preds = %bb.acq
  %i.apk = atomicrmw sub ptr %i.aoc, i32 4 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit5162

lean_inc_n.exit5162:                              ; preds = %bb.acr, %bb.acq, %bb.acp, %lean_inc_n.exit5154
  %i.apl = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.aoc, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__51_value, ptr noundef %i.aod) #7
  %.val.i.i5163 = load i32, ptr %.0.i5289, align 4, !tbaa !10 ; 3 uses
  %i.apm = icmp sgt i32 %.val.i.i5163, 0
  br i1 %i.apm, label %bb.acs, label %bb.act, !prof !11

bb.acs:                                           ; preds = %lean_inc_n.exit5162
  %i.apn = add nuw i32 %.val.i.i5163, 1
  store i32 %i.apn, ptr %.0.i5289, align 4, !tbaa !10
  br label %lean_inc_ref.exit5165

bb.act:                                           ; preds = %lean_inc_n.exit5162
  %.not.i.i5164 = icmp eq i32 %.val.i.i5163, 0
  br i1 %.not.i.i5164, label %lean_inc_ref.exit5165, label %bb.acu

bb.acu:                                           ; preds = %bb.act
  %i.apo = atomicrmw sub ptr %.0.i5289, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit5165

lean_inc_ref.exit5165:                            ; preds = %bb.acs, %bb.act, %bb.acu
  %i.app = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 8
  store ptr %i.aoq, ptr %i.apq, align 8, !tbaa !14
  %i.apr = getelementptr inbounds nuw i8, ptr %i.app, i64 16
  store ptr %.0.i5289, ptr %i.apr, align 8, !tbaa !14
  %i.aps = getelementptr inbounds nuw i8, ptr %i.app, i64 24
  store ptr %i.apl, ptr %i.aps, align 8, !tbaa !14
  %i.apt = getelementptr inbounds nuw i8, ptr %i.app, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.apt, align 8, !tbaa !14
  %i.apu = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__0_once seq_cst, align 4, !tbaa !20
  %i.apv = icmp eq i32 %i.apu, 1
  br i1 %i.apv, label %bb.acv, label %bb.acw, !prof !11

bb.acv:                                           ; preds = %lean_inc_ref.exit5165
  %i.apw = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__0, align 8, !tbaa !14
  br label %lean_obj_once.exit5167

bb.acw:                                           ; preds = %lean_inc_ref.exit5165
  %i.apx = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__0, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__0_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__0) #7
  br label %lean_obj_once.exit5167

lean_obj_once.exit5167:                           ; preds = %bb.acv, %bb.acw
  %.0.i5166 = phi ptr [ %i.apw, %bb.acv ], [ %i.apx, %bb.acw ]
  %i.apy = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.aoc, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__1_value, ptr noundef %i.aod) #7
  %i.apz = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 9 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 8
  store ptr %i.aoq, ptr %i.aqa, align 8, !tbaa !14
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apz, i64 16
  store ptr %.0.i5166, ptr %i.aqb, align 8, !tbaa !14
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apz, i64 24
  store ptr %i.apy, ptr %i.aqc, align 8, !tbaa !14
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.apz, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.aqd, align 8, !tbaa !14
  %.val.i.i5168 = load i32, ptr %i.apz, align 8, !tbaa !10 ; 3 uses
  %i.aqe = icmp sgt i32 %.val.i.i5168, 0
  br i1 %i.aqe, label %bb.acx, label %bb.acy, !prof !11

bb.acx:                                           ; preds = %lean_obj_once.exit5167
  %i.aqf = add nuw i32 %.val.i.i5168, 1
  store i32 %i.aqf, ptr %i.apz, align 8, !tbaa !10
  br label %lean_inc_ref.exit5170

bb.acy:                                           ; preds = %lean_obj_once.exit5167
  %.not.i.i5169 = icmp eq i32 %.val.i.i5168, 0
  br i1 %.not.i.i5169, label %lean_inc_ref.exit5170, label %bb.acz

bb.acz:                                           ; preds = %bb.acy
  %i.aqg = atomicrmw sub ptr %i.apz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit5170

lean_inc_ref.exit5170:                            ; preds = %bb.acx, %bb.acy, %bb.acz
  %i.aqh = tail call ptr @l_Lean_Syntax_node2(ptr noundef %i.aoq, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef nonnull %i.app, ptr noundef nonnull %i.apz) #7
  %i.aqi = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 3, i32 noundef 0) ; 8 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 8
  store ptr %i.aoq, ptr %i.aqj, align 8, !tbaa !14
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqi, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr %i.aqk, align 8, !tbaa !14
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqi, i64 24
  store ptr %.0.i5294, ptr %i.aql, align 8, !tbaa !14
  %i.aqm = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 7 uses
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 8
  store ptr %i.aoq, ptr %i.aqn, align 8, !tbaa !14
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqm, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__12_value, ptr %i.aqo, align 8, !tbaa !14
  %i.aqp = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__25_once seq_cst, align 4, !tbaa !20
end_hunk_5
begin_hunk_6_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__7_spec__12:bb.a
  br label %lean_obj_once.exit5393

bb.bcw:                                           ; preds = %lean_alloc_ctor.exit5391
  %i.bye = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__71, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__71_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__71) #7
  br label %lean_obj_once.exit5393

lean_obj_once.exit5393:                           ; preds = %bb.bcv, %bb.bcw
  %.0.i5392 = phi ptr [ %i.byd, %bb.bcv ], [ %i.bye, %bb.bcw ]
  tail call void @lean_inc_heartbeat() #7
  %i.byf = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.byg = icmp eq ptr %i.byf, null
  br i1 %i.byg, label %bb.bcx, label %lean_alloc_ctor.exit5394

bb.bcx:                                           ; preds = %lean_obj_once.exit5393
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit5394:                         ; preds = %lean_obj_once.exit5393
  %i.byh = getelementptr inbounds nuw i8, ptr %i.byf, i64 4
  store i32 1, ptr %i.byf, align 4, !tbaa !10
  store i32 117571608, ptr %i.byh, align 4
  %i.byi = getelementptr inbounds nuw i8, ptr %i.byf, i64 8
  store ptr %i.bxw, ptr %i.byi, align 8, !tbaa !14
  %i.byj = getelementptr inbounds nuw i8, ptr %i.byf, i64 16
  store ptr %.0.i5392, ptr %i.byj, align 8, !tbaa !14
  %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3432 = select i1 %i.bxo, ptr @l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value, ptr @l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value ; 3 uses
  %.val.i.i5395 = load i32, ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3432, align 8, !tbaa !10 ; 2 uses
  %i.byk = icmp sgt i32 %.val.i.i5395, 0
  br i1 %i.byk, label %lean_inc_ref.exit5397, label %bb.bcy, !prof !11

bb.bcy:                                           ; preds = %lean_alloc_ctor.exit5394
  %.not.i.i5396 = icmp eq i32 %.val.i.i5395, 0
  br i1 %.not.i.i5396, label %lean_inc_ref.exit5397, label %bb.bcz

bb.bcz:                                           ; preds = %bb.bcy
  %i.byl = atomicrmw sub ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3432, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit5397

lean_inc_ref.exit5397:                            ; preds = %lean_alloc_ctor.exit5394, %bb.bcy, %bb.bcz
  tail call void @lean_inc_heartbeat() #7
  %i.bym = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.byn = icmp eq ptr %i.bym, null
  br i1 %i.byn, label %bb.bda, label %lean_alloc_ctor.exit5398

bb.bda:                                           ; preds = %lean_inc_ref.exit5397
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit5398:                         ; preds = %lean_inc_ref.exit5397
  %i.byo = getelementptr inbounds nuw i8, ptr %i.bym, i64 4
  store i32 1, ptr %i.bym, align 4, !tbaa !10
  store i32 50397200, ptr %i.byo, align 4
  %i.byp = getelementptr inbounds nuw i8, ptr %i.bym, i64 8
  store ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3432, ptr %i.byp, align 8, !tbaa !14
  %i.byq = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull %i.bym) #7
  tail call void @lean_inc_heartbeat() #7
  %i.byr = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.bys = icmp eq ptr %i.byr, null
  br i1 %i.bys, label %bb.bdb, label %lean_alloc_ctor.exit5399

bb.bdb:                                           ; preds = %lean_alloc_ctor.exit5398
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit5399:                         ; preds = %lean_alloc_ctor.exit5398
  %i.byt = getelementptr inbounds nuw i8, ptr %i.byr, i64 4
  store i32 1, ptr %i.byr, align 4, !tbaa !10
  store i32 117571608, ptr %i.byt, align 4
  %i.byu = getelementptr inbounds nuw i8, ptr %i.byr, i64 8
  store ptr %i.byf, ptr %i.byu, align 8, !tbaa !14
  %i.byv = getelementptr inbounds nuw i8, ptr %i.byr, i64 16
  store ptr %i.byq, ptr %i.byv, align 8, !tbaa !14
  %i.byw = tail call ptr @l_Lean_addTrace___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__0___redArg(ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__4_value, ptr noundef nonnull %i.byr, ptr noundef nonnull %13, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %16) ; 13 uses
  %i.byx = ptrtoint ptr %i.byw to i64             ; 2 uses
  %i.byy = and i64 %i.byx, 1
  %.not.i5400 = icmp eq i64 %i.byy, 0             ; 2 uses
  br i1 %.not.i5400, label %bb.bdd, label %bb.bdc

bb.bdc:                                           ; preds = %lean_alloc_ctor.exit5399
  %i.byz = lshr i64 %i.byx, 1
  %i.bza = trunc i64 %i.byz to i32
  br label %lean_obj_tag.exit5403

bb.bdd:                                           ; preds = %lean_alloc_ctor.exit5399
  %i.bzb = getelementptr i8, ptr %i.byw, i64 4
  %.val.i5402 = load i32, ptr %i.bzb, align 4
  %i.bzc = lshr i32 %.val.i5402, 24
  br label %lean_obj_tag.exit5403

lean_obj_tag.exit5403:                            ; preds = %bb.bdc, %bb.bdd
  %.0.i5401 = phi i32 [ %i.bza, %bb.bdc ], [ %i.bzc, %bb.bdd ]
  %i.bzd = icmp eq i32 %.0.i5401, 0
  br i1 %i.bzd, label %bb.azz, label %bb.bai

bb.bde:                                           ; preds = %lean_obj_tag.exit5478
  %i.bze = getelementptr inbounds nuw i8, ptr %i.cfc, i64 8 ; 2 uses
  %i.bzf = load ptr, ptr %i.bze, align 8, !tbaa !14 ; 7 uses
  %i.bzg = ptrtoint ptr %i.bzf to i64             ; 2 uses
  %i.bzh = and i64 %i.bzg, 1
  %.not.i3472 = icmp eq i64 %i.bzh, 0             ; 2 uses
  br i1 %.not.i3472, label %bb.bdf, label %lean_inc.exit3473

bb.bdf:                                           ; preds = %bb.bde
  %.val.i.i5404 = load i32, ptr %i.bzf, align 4, !tbaa !10 ; 3 uses
  %i.bzi = icmp sgt i32 %.val.i.i5404, 0
  br i1 %i.bzi, label %bb.bdg, label %bb.bdh, !prof !11

bb.bdg:                                           ; preds = %bb.bdf
  %i.bzj = add nuw i32 %.val.i.i5404, 1
  store i32 %i.bzj, ptr %i.bzf, align 4, !tbaa !10
  br label %lean_inc.exit3473

bb.bdh:                                           ; preds = %bb.bdf
  %.not.i.i5405 = icmp eq i32 %.val.i.i5404, 0
  br i1 %.not.i.i5405, label %lean_inc.exit3473, label %bb.bdi

bb.bdi:                                           ; preds = %bb.bdh
  %i.bzk = atomicrmw sub ptr %i.bzf, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3473

lean_inc.exit3473:                                ; preds = %bb.bdi, %bb.bdh, %bb.bdg, %bb.bde
  %.val.i5407 = load i32, ptr %i.cfc, align 8, !tbaa !10 ; 4 uses
  %i.bzl = icmp eq i32 %.val.i5407, 1
  br i1 %i.bzl, label %.preheader.i5409, label %bb.bdn

.preheader.i5409:                                 ; preds = %lean_inc.exit3473
  %i.bzm = load ptr, ptr %i.bze, align 8, !tbaa !14 ; 4 uses
  %i.bzn = ptrtoint ptr %i.bzm to i64
  %i.bzo = and i64 %i.bzn, 1
  %.not.i.i5411 = icmp eq i64 %i.bzo, 0
  br i1 %.not.i.i5411, label %bb.bdj, label %lean_dec.exit.i5412

bb.bdj:                                           ; preds = %.preheader.i5409
  %i.bzp = load i32, ptr %i.bzm, align 4, !tbaa !10 ; 3 uses
  %i.bzq = icmp sgt i32 %i.bzp, 1
  br i1 %i.bzq, label %bb.bdk, label %bb.bdl, !prof !11

bb.bdk:                                           ; preds = %bb.bdj
  %i.bzr = add nsw i32 %i.bzp, -1
  store i32 %i.bzr, ptr %i.bzm, align 4, !tbaa !10
  br label %lean_dec.exit.i5412

bb.bdl:                                           ; preds = %bb.bdj
  %.not.i7.i5416 = icmp eq i32 %i.bzp, 0
  br i1 %.not.i7.i5416, label %lean_dec.exit.i5412, label %bb.bdm

bb.bdm:                                           ; preds = %bb.bdl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bzm) #7
  br label %lean_dec.exit.i5412

lean_dec.exit.i5412:                              ; preds = %bb.bdm, %bb.bdl, %bb.bdk, %.preheader.i5409
  tail call void @lean_free_object(ptr noundef nonnull %i.cfc) #7
  br label %lean_dec_ref_known.exit5417

bb.bdn:                                           ; preds = %lean_inc.exit3473
  %i.bzs = icmp sgt i32 %.val.i5407, 1
  br i1 %i.bzs, label %bb.bdo, label %bb.bdp, !prof !11

bb.bdo:                                           ; preds = %bb.bdn
  %i.bzt = add nsw i32 %.val.i5407, -1
  store i32 %i.bzt, ptr %i.cfc, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit5417

bb.bdp:                                           ; preds = %bb.bdn
  %.not.i8.i5408 = icmp eq i32 %.val.i5407, 0
  br i1 %.not.i8.i5408, label %lean_dec_ref_known.exit5417, label %bb.bdq

bb.bdq:                                           ; preds = %bb.bdp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cfc) #7
  br label %lean_dec_ref_known.exit5417

lean_dec_ref_known.exit5417:                      ; preds = %lean_dec.exit.i5412, %bb.bdo, %bb.bdp, %bb.bdq
  %i.bzu = zext i8 %.03239 to i64
  %i.bzv = shl nuw nsw i64 %i.bzu, 1
  %i.bzw = or disjoint i64 %i.bzv, 1
  %i.bzx = inttoptr i64 %i.bzw to ptr
  br i1 %.not.i3470, label %bb.bdr, label %lean_inc.exit3471

bb.bdr:                                           ; preds = %lean_dec_ref_known.exit5417
  %.val.i.i5418 = load i32, ptr %2, align 4, !tbaa !10 ; 3 uses
  %i.bzy = icmp sgt i32 %.val.i.i5418, 0
  br i1 %i.bzy, label %bb.bds, label %bb.bdt, !prof !11

bb.bds:                                           ; preds = %bb.bdr
  %i.bzz = add nuw i32 %.val.i.i5418, 1
  store i32 %i.bzz, ptr %2, align 4, !tbaa !10
  br label %lean_inc.exit3471

bb.bdt:                                           ; preds = %bb.bdr
  %.not.i.i5419 = icmp eq i32 %.val.i.i5418, 0
  br i1 %.not.i.i5419, label %lean_inc.exit3471, label %bb.bdu

bb.bdu:                                           ; preds = %bb.bdt
  %i.caa = atomicrmw sub ptr %2, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3471

lean_inc.exit3471:                                ; preds = %bb.bdu, %bb.bdt, %bb.bds, %lean_dec_ref_known.exit5417
  br i1 %.not.i3646, label %bb.bdv, label %lean_inc.exit3469

bb.bdv:                                           ; preds = %lean_inc.exit3471
  %.val.i.i5421 = load i32, ptr %i.dm, align 4, !tbaa !10 ; 3 uses
  %i.cab = icmp sgt i32 %.val.i.i5421, 0
  br i1 %i.cab, label %bb.bdw, label %bb.bdx, !prof !11

bb.bdw:                                           ; preds = %bb.bdv
  %i.cac = add nuw i32 %.val.i.i5421, 1
  store i32 %i.cac, ptr %i.dm, align 4, !tbaa !10
  br label %lean_inc.exit3469

bb.bdx:                                           ; preds = %bb.bdv
  %.not.i.i5422 = icmp eq i32 %.val.i.i5421, 0
  br i1 %.not.i.i5422, label %lean_inc.exit3469, label %bb.bdy

bb.bdy:                                           ; preds = %bb.bdx
  %i.cad = atomicrmw sub ptr %i.dm, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3469

lean_inc.exit3469:                                ; preds = %bb.bdy, %bb.bdx, %bb.bdw, %lean_inc.exit3471
  br i1 %.not.i3636, label %bb.bdz, label %lean_inc.exit3467

bb.bdz:                                           ; preds = %lean_inc.exit3469
  %.val.i.i5424 = load i32, ptr %i.bj, align 4, !tbaa !10 ; 3 uses
  %i.cae = icmp sgt i32 %.val.i.i5424, 0
  br i1 %i.cae, label %bb.bea, label %bb.beb, !prof !11

bb.bea:                                           ; preds = %bb.bdz
  %i.caf = add nuw i32 %.val.i.i5424, 1
  store i32 %i.caf, ptr %i.bj, align 4, !tbaa !10
  br label %lean_inc.exit3467

bb.beb:                                           ; preds = %bb.bdz
  %.not.i.i5425 = icmp eq i32 %.val.i.i5424, 0
  br i1 %.not.i.i5425, label %lean_inc.exit3467, label %bb.bec

bb.bec:                                           ; preds = %bb.beb
  %i.cag = atomicrmw sub ptr %i.bj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3467

lean_inc.exit3467:                                ; preds = %bb.bec, %bb.beb, %bb.bea, %lean_inc.exit3469
  br i1 %.not.i3640, label %bb.bed, label %lean_inc.exit3465

bb.bed:                                           ; preds = %lean_inc.exit3467
  %.val.i.i5427 = load i32, ptr %i.ey, align 4, !tbaa !10 ; 3 uses
  %i.cah = icmp sgt i32 %.val.i.i5427, 0
  br i1 %i.cah, label %bb.bee, label %bb.bef, !prof !11

bb.bee:                                           ; preds = %bb.bed
  %i.cai = add nuw i32 %.val.i.i5427, 1
  store i32 %i.cai, ptr %i.ey, align 4, !tbaa !10
  br label %lean_inc.exit3465

bb.bef:                                           ; preds = %bb.bed
  %.not.i.i5428 = icmp eq i32 %.val.i.i5427, 0
  br i1 %.not.i.i5428, label %lean_inc.exit3465, label %bb.beg

bb.beg:                                           ; preds = %bb.bef
  %i.caj = atomicrmw sub ptr %i.ey, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3465

lean_inc.exit3465:                                ; preds = %bb.beg, %bb.bef, %bb.bee, %lean_inc.exit3467
  %i.cak = tail call ptr @lean_alloc_object(i64 noundef 104) #7 ; 62 uses
  store i32 1, ptr %i.cak, align 4, !tbaa !10
  %i.cal = getelementptr inbounds nuw i8, ptr %i.cak, i64 4 ; 2 uses
  %i.cam = load i32, ptr %i.cal, align 4
  %i.can = and i32 %i.cam, 65535
  %i.cao = or disjoint i32 %i.can, -184549376
  store i32 %i.cao, ptr %i.cal, align 4
  %i.cap = getelementptr inbounds nuw i8, ptr %i.cak, i64 8
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__7_spec__12___lam__3___boxed, ptr %i.cap, align 8, !tbaa !14
  %i.caq = getelementptr inbounds nuw i8, ptr %i.cak, i64 16
  store i16 22, ptr %i.caq, align 8, !tbaa !22
  %i.car = getelementptr inbounds nuw i8, ptr %i.cak, i64 18
  store i16 10, ptr %i.car, align 2, !tbaa !22
  %i.cas = getelementptr inbounds nuw i8, ptr %i.cak, i64 24
  store ptr %i.ey, ptr %i.cas, align 8, !tbaa !14
  %i.cat = getelementptr inbounds nuw i8, ptr %i.cak, i64 32
  store ptr %i.bj, ptr %i.cat, align 8, !tbaa !14
  %i.cau = getelementptr inbounds nuw i8, ptr %i.cak, i64 40
  store <2 x ptr> <ptr @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__2_value, ptr @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__3_value>, ptr %i.cau, align 8, !tbaa !14
  %i.cav = getelementptr inbounds nuw i8, ptr %i.cak, i64 56
  store ptr %i.dm, ptr %i.cav, align 8, !tbaa !14
  %i.caw = getelementptr inbounds nuw i8, ptr %i.cak, i64 64
  store ptr %2, ptr %i.caw, align 8, !tbaa !14
  %i.cax = getelementptr inbounds nuw i8, ptr %i.cak, i64 72
  store ptr %i.m, ptr %i.cax, align 8, !tbaa !14
  %i.cay = getelementptr inbounds nuw i8, ptr %i.cak, i64 80
  store ptr %i.bzx, ptr %i.cay, align 8, !tbaa !14
  %i.caz = getelementptr inbounds nuw i8, ptr %i.cak, i64 88
  store ptr %i.q, ptr %i.caz, align 8, !tbaa !14
  %i.cba = getelementptr inbounds nuw i8, ptr %i.cak, i64 96
  store ptr %i.gh, ptr %i.cba, align 8, !tbaa !14
  br i1 %.not.i3472, label %bb.beh, label %lean_dec.exit3756

bb.beh:                                           ; preds = %lean_inc.exit3465
  %i.cbb = load i32, ptr %i.bzf, align 4, !tbaa !10 ; 3 uses
  %i.cbc = icmp sgt i32 %i.cbb, 1
  br i1 %i.cbc, label %bb.bei, label %bb.bej, !prof !11

bb.bei:                                           ; preds = %bb.beh
  %i.cbd = add nsw i32 %i.cbb, -1
  store i32 %i.cbd, ptr %i.bzf, align 4, !tbaa !10
  br label %lean_dec.exit3756

bb.bej:                                           ; preds = %bb.beh
  %.not.i4446 = icmp eq i32 %i.cbb, 0
  br i1 %.not.i4446, label %lean_dec.exit3756, label %bb.bek

bb.bek:                                           ; preds = %bb.bej
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bzf) #7
  br label %lean_dec.exit3756

lean_dec.exit3756:                                ; preds = %bb.bek, %bb.bej, %bb.bei, %lean_inc.exit3465
  %i.cbe = and i64 %i.bzg, 510
  %i.cbf = icmp eq i64 %i.cbe, 0
  br i1 %i.cbf, label %lean_dec_ref_known.exit5371.thread, label %bb.bel

bb.bel:                                           ; preds = %lean_dec.exit3756
  %i.cbg = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__73_once seq_cst, align 4, !tbaa !20
  %i.cbh = icmp eq i32 %i.cbg, 1
  br i1 %i.cbh, label %bb.bem, label %bb.ben, !prof !11

bb.bem:                                           ; preds = %bb.bel
  %i.cbi = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__73, align 8, !tbaa !14
  br label %lean_obj_once.exit5431

bb.ben:                                           ; preds = %bb.bel
  %i.cbj = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__73, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__73_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__73) #7
  br label %lean_obj_once.exit5431

lean_obj_once.exit5431:                           ; preds = %bb.bem, %bb.ben
  %.0.i5430 = phi ptr [ %i.cbi, %bb.bem ], [ %i.cbj, %bb.ben ]
  br i1 %.not.i3636, label %bb.beo, label %lean_inc.exit3463

bb.beo:                                           ; preds = %lean_obj_once.exit5431
  %.val.i.i5432 = load i32, ptr %i.bj, align 4, !tbaa !10 ; 3 uses
  %i.cbk = icmp sgt i32 %.val.i.i5432, 0
  br i1 %i.cbk, label %bb.bep, label %bb.beq, !prof !11

bb.bep:                                           ; preds = %bb.beo
  %i.cbl = add nuw i32 %.val.i.i5432, 1
  store i32 %i.cbl, ptr %i.bj, align 4, !tbaa !10
  br label %lean_inc.exit3463

bb.beq:                                           ; preds = %bb.beo
  %.not.i.i5433 = icmp eq i32 %.val.i.i5432, 0
  br i1 %.not.i.i5433, label %lean_inc.exit3463, label %bb.ber

bb.ber:                                           ; preds = %bb.beq
  %i.cbm = atomicrmw sub ptr %i.bj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3463

lean_inc.exit3463:                                ; preds = %bb.ber, %bb.beq, %bb.bep, %lean_obj_once.exit5431
  %i.cbn = tail call ptr @l_Lean_MessageData_ofName(ptr noundef %i.bj) #7
  tail call void @lean_inc_heartbeat() #7
  %i.cbo = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.cbp = icmp eq ptr %i.cbo, null
  br i1 %i.cbp, label %bb.bes, label %lean_alloc_ctor.exit5435

bb.bes:                                           ; preds = %lean_inc.exit3463
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit5435:                         ; preds = %lean_inc.exit3463
  %i.cbq = getelementptr inbounds nuw i8, ptr %i.cbo, i64 4
  store i32 1, ptr %i.cbo, align 4, !tbaa !10
  store i32 117571608, ptr %i.cbq, align 4
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.cbo, i64 8
  store ptr %.0.i5430, ptr %i.cbr, align 8, !tbaa !14
  %i.cbs = getelementptr inbounds nuw i8, ptr %i.cbo, i64 16
  store ptr %i.cbn, ptr %i.cbs, align 8, !tbaa !14
  %i.cbt = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__75_once seq_cst, align 4, !tbaa !20
  %i.cbu = icmp eq i32 %i.cbt, 1
  br i1 %i.cbu, label %bb.bet, label %bb.beu, !prof !11

bb.bet:                                           ; preds = %lean_alloc_ctor.exit5435
  %i.cbv = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__75, align 8, !tbaa !14
  br label %lean_obj_once.exit5437

bb.beu:                                           ; preds = %lean_alloc_ctor.exit5435
  %i.cbw = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__75, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__75_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__75) #7
  br label %lean_obj_once.exit5437

lean_obj_once.exit5437:                           ; preds = %bb.bet, %bb.beu
  %.0.i5436 = phi ptr [ %i.cbv, %bb.bet ], [ %i.cbw, %bb.beu ]
  tail call void @lean_inc_heartbeat() #7
  %i.cbx = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.cby = icmp eq ptr %i.cbx, null
  br i1 %i.cby, label %bb.bev, label %bb.bcq

bb.bev:                                           ; preds = %lean_obj_once.exit5437
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

bb.bew:                                           ; preds = %lean_obj_tag.exit5478
  br i1 %.not.i4844, label %bb.bex, label %lean_dec.exit3754

bb.bex:                                           ; preds = %bb.bew
  %i.cbz = load i32, ptr %i.gh, align 4, !tbaa !10 ; 3 uses
  %i.cca = icmp sgt i32 %i.cbz, 1
  br i1 %i.cca, label %bb.bey, label %bb.bez, !prof !11

bb.bey:                                           ; preds = %bb.bex
  %i.ccb = add nsw i32 %i.cbz, -1
  store i32 %i.ccb, ptr %i.gh, align 4, !tbaa !10
  br label %lean_dec.exit3754

bb.bez:                                           ; preds = %bb.bex
end_hunk_6
begin_hunk_7_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__7:bb.a
  br i1 %.not.i.i4801, label %lean_inc.exit3656, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.cr = atomicrmw sub ptr %i.cm, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3656

lean_inc.exit3656:                                ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.bd
  %.val.i4803 = load i32, ptr %i.cd, align 8, !tbaa !10 ; 4 uses
  %i.cs = icmp eq i32 %.val.i4803, 1
  br i1 %i.cs, label %.preheader.i4805, label %bb.bm

.preheader.i4805:                                 ; preds = %lean_inc.exit3656
  %i.ct = load ptr, ptr %i.cl, align 8, !tbaa !14 ; 4 uses
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = and i64 %i.cu, 1
  %.not.i.i4807 = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i4807, label %bb.bi, label %lean_dec.exit.i4808

bb.bi:                                            ; preds = %.preheader.i4805
  %i.cw = load i32, ptr %i.ct, align 4, !tbaa !10 ; 3 uses
  %i.cx = icmp sgt i32 %i.cw, 1
  br i1 %i.cx, label %bb.bj, label %bb.bk, !prof !11

bb.bj:                                            ; preds = %bb.bi
  %i.cy = add nsw i32 %i.cw, -1
  store i32 %i.cy, ptr %i.ct, align 4, !tbaa !10
  br label %lean_dec.exit.i4808

bb.bk:                                            ; preds = %bb.bi
  %.not.i7.i4812 = icmp eq i32 %i.cw, 0
  br i1 %.not.i7.i4812, label %lean_dec.exit.i4808, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ct) #7
  br label %lean_dec.exit.i4808

lean_dec.exit.i4808:                              ; preds = %bb.bl, %bb.bk, %bb.bj, %.preheader.i4805
  tail call void @lean_free_object(ptr noundef nonnull %i.cd) #7
  br label %lean_dec_ref_known.exit4813

bb.bm:                                            ; preds = %lean_inc.exit3656
  %i.cz = icmp sgt i32 %.val.i4803, 1
  br i1 %i.cz, label %bb.bn, label %bb.bo, !prof !11

bb.bn:                                            ; preds = %bb.bm
  %i.da = add nsw i32 %.val.i4803, -1
  store i32 %i.da, ptr %i.cd, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit4813

bb.bo:                                            ; preds = %bb.bm
  %.not.i8.i4804 = icmp eq i32 %.val.i4803, 0
  br i1 %.not.i8.i4804, label %lean_dec_ref_known.exit4813, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cd) #7
  br label %lean_dec_ref_known.exit4813

lean_dec_ref_known.exit4813:                      ; preds = %lean_dec.exit.i4808, %bb.bn, %bb.bo, %bb.bp
  %i.db = and i64 %i.cn, 510
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %bb.bq, label %bb.bjh

bb.bq:                                            ; preds = %lean_dec_ref_known.exit4813
  %i.dd = ptrtoint ptr %16 to i64
  %i.de = and i64 %i.dd, 1
  %.not.i3653 = icmp eq i64 %i.de, 0              ; 7 uses
  br i1 %.not.i3653, label %bb.br, label %lean_inc.exit3654

bb.br:                                            ; preds = %bb.bq
  %.val.i.i4814 = load i32, ptr %16, align 4, !tbaa !10 ; 3 uses
  %i.df = icmp sgt i32 %.val.i.i4814, 0
  br i1 %i.df, label %bb.bs, label %bb.bt, !prof !11

bb.bs:                                            ; preds = %bb.br
  %i.dg = add nuw i32 %.val.i.i4814, 1
  store i32 %i.dg, ptr %16, align 4, !tbaa !10
  br label %lean_inc.exit3654

bb.bt:                                            ; preds = %bb.br
  %.not.i.i4815 = icmp eq i32 %.val.i.i4814, 0
  br i1 %.not.i.i4815, label %lean_inc.exit3654, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.dh = atomicrmw sub ptr %16, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3654

lean_inc.exit3654:                                ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.bq
  %.val.i.i4817 = load i32, ptr %15, align 4, !tbaa !10 ; 3 uses
  %i.di = icmp sgt i32 %.val.i.i4817, 0
  br i1 %i.di, label %bb.bv, label %bb.bw, !prof !11

bb.bv:                                            ; preds = %lean_inc.exit3654
  %i.dj = add nuw i32 %.val.i.i4817, 1
  store i32 %i.dj, ptr %15, align 4, !tbaa !10
  br label %lean_inc_ref.exit4819

bb.bw:                                            ; preds = %lean_inc.exit3654
  %.not.i.i4818 = icmp eq i32 %.val.i.i4817, 0
  br i1 %.not.i.i4818, label %lean_inc_ref.exit4819, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.dk = atomicrmw sub ptr %15, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit4819

lean_inc_ref.exit4819:                            ; preds = %bb.bv, %bb.bw, %bb.bx
  %i.dl = ptrtoint ptr %14 to i64
  %i.dm = and i64 %i.dl, 1
  %.not.i3651 = icmp eq i64 %i.dm, 0              ; 7 uses
  br i1 %.not.i3651, label %bb.by, label %lean_inc.exit3652

bb.by:                                            ; preds = %lean_inc_ref.exit4819
  %.val.i.i4820 = load i32, ptr %14, align 4, !tbaa !10 ; 3 uses
  %i.dn = icmp sgt i32 %.val.i.i4820, 0
  br i1 %i.dn, label %bb.bz, label %bb.ca, !prof !11

bb.bz:                                            ; preds = %bb.by
  %i.do = add nuw i32 %.val.i.i4820, 1
  store i32 %i.do, ptr %14, align 4, !tbaa !10
  br label %lean_inc.exit3652

bb.ca:                                            ; preds = %bb.by
  %.not.i.i4821 = icmp eq i32 %.val.i.i4820, 0
  br i1 %.not.i.i4821, label %lean_inc.exit3652, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.dp = atomicrmw sub ptr %14, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3652

lean_inc.exit3652:                                ; preds = %bb.cb, %bb.ca, %bb.bz, %lean_inc_ref.exit4819
  %.val.i.i4823 = load i32, ptr %13, align 4, !tbaa !10 ; 3 uses
  %i.dq = icmp sgt i32 %.val.i.i4823, 0
  br i1 %i.dq, label %bb.cc, label %bb.cd, !prof !11

bb.cc:                                            ; preds = %lean_inc.exit3652
  %i.dr = add nuw i32 %.val.i.i4823, 1
  store i32 %i.dr, ptr %13, align 4, !tbaa !10
  br label %lean_inc_ref.exit4825

bb.cd:                                            ; preds = %lean_inc.exit3652
  %.not.i.i4824 = icmp eq i32 %.val.i.i4823, 0
  br i1 %.not.i.i4824, label %lean_inc_ref.exit4825, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ds = atomicrmw sub ptr %13, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit4825

lean_inc_ref.exit4825:                            ; preds = %bb.cc, %bb.cd, %bb.ce
  %i.dt = tail call ptr @lean_infer_type(ptr noundef %i.aw, ptr noundef nonnull %13, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %16) #7 ; 10 uses
  %i.du = ptrtoint ptr %i.dt to i64               ; 2 uses
  %i.dv = and i64 %i.du, 1
  %.not.i4826 = icmp eq i64 %i.dv, 0              ; 2 uses
  br i1 %.not.i4826, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %lean_inc_ref.exit4825
  %i.dw = lshr i64 %i.du, 1
  %i.dx = trunc i64 %i.dw to i32
  br label %lean_obj_tag.exit4829

bb.cg:                                            ; preds = %lean_inc_ref.exit4825
  %i.dy = getelementptr i8, ptr %i.dt, i64 4
  %.val.i4828 = load i32, ptr %i.dy, align 4
  %i.dz = lshr i32 %.val.i4828, 24
  br label %lean_obj_tag.exit4829

lean_obj_tag.exit4829:                            ; preds = %bb.cf, %bb.cg
  %.0.i4827 = phi i32 [ %i.dx, %bb.cf ], [ %i.dz, %bb.cg ]
  %i.ea = icmp eq i32 %.0.i4827, 0
  br i1 %i.ea, label %bb.ch, label %bb.bhs

bb.ch:                                            ; preds = %lean_obj_tag.exit4829
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !14 ; 41 uses
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = and i64 %i.ed, 1
  %.not.i3649 = icmp eq i64 %i.ee, 0              ; 12 uses
  br i1 %.not.i3649, label %bb.ci, label %lean_inc.exit3650

bb.ci:                                            ; preds = %bb.ch
  %.val.i.i4830 = load i32, ptr %i.ec, align 4, !tbaa !10 ; 3 uses
  %i.ef = icmp sgt i32 %.val.i.i4830, 0
  br i1 %i.ef, label %bb.cj, label %bb.ck, !prof !11

bb.cj:                                            ; preds = %bb.ci
  %i.eg = add nuw i32 %.val.i.i4830, 1
  store i32 %i.eg, ptr %i.ec, align 4, !tbaa !10
  br label %lean_inc.exit3650

bb.ck:                                            ; preds = %bb.ci
  %.not.i.i4831 = icmp eq i32 %.val.i.i4830, 0
  br i1 %.not.i.i4831, label %lean_inc.exit3650, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.eh = atomicrmw sub ptr %i.ec, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3650

lean_inc.exit3650:                                ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ch
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.dt, i32 noundef 1)
  br i1 %.not.i3655, label %bb.cm, label %lean_inc.exit3648

bb.cm:                                            ; preds = %lean_inc.exit3650
  %.val.i.i4833 = load i32, ptr %i.cm, align 4, !tbaa !10 ; 3 uses
  %i.ei = icmp sgt i32 %.val.i.i4833, 0
  br i1 %i.ei, label %bb.cn, label %bb.co, !prof !11

bb.cn:                                            ; preds = %bb.cm
  %i.ej = add nuw i32 %.val.i.i4833, 1
  store i32 %i.ej, ptr %i.cm, align 4, !tbaa !10
  br label %lean_inc.exit3648

bb.co:                                            ; preds = %bb.cm
  %.not.i.i4834 = icmp eq i32 %.val.i.i4833, 0
  br i1 %.not.i.i4834, label %lean_inc.exit3648, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ek = atomicrmw sub ptr %i.cm, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3648

lean_inc.exit3648:                                ; preds = %bb.cp, %bb.co, %bb.cn, %lean_inc.exit3650
  %i.el = tail call ptr @lean_alloc_object(i64 noundef 32) #7 ; 22 uses
  store i32 1, ptr %i.el, align 4, !tbaa !10
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = and i32 %i.en, 65535
  %i.ep = or disjoint i32 %i.eo, -184549376
  store i32 %i.ep, ptr %i.em, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__1___boxed, ptr %i.eq, align 8, !tbaa !14
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store i16 10, ptr %i.er, align 8, !tbaa !22
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 18
  store i16 1, ptr %i.es, align 2, !tbaa !22
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  store ptr %i.cm, ptr %i.et, align 8, !tbaa !14
  %i.eu = ptrtoint ptr %i.aj to i64
  %i.ev = and i64 %i.eu, 1
  %.not.i3645 = icmp eq i64 %i.ev, 0              ; 26 uses
  br i1 %.not.i3645, label %bb.cq, label %lean_inc.exit3646

bb.cq:                                            ; preds = %lean_inc.exit3648
  %.val.i.i4836 = load i32, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.ew = icmp sgt i32 %.val.i.i4836, 0
  br i1 %i.ew, label %bb.cr, label %bb.cs, !prof !11

bb.cr:                                            ; preds = %bb.cq
  %i.ex = add nuw i32 %.val.i.i4836, 1
  store i32 %i.ex, ptr %i.aj, align 4, !tbaa !10
  br label %lean_inc.exit3646

bb.cs:                                            ; preds = %bb.cq
  %.not.i.i4837 = icmp eq i32 %.val.i.i4836, 0
  br i1 %.not.i.i4837, label %lean_inc.exit3646, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ey = atomicrmw sub ptr %i.aj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3646

lean_inc.exit3646:                                ; preds = %bb.ct, %bb.cs, %bb.cr, %lean_inc.exit3648
  %.val.i.i4839 = load i32, ptr %9, align 4, !tbaa !10 ; 3 uses
  %i.ez = icmp sgt i32 %.val.i.i4839, 0
  br i1 %i.ez, label %bb.cu, label %bb.cv, !prof !11

bb.cu:                                            ; preds = %lean_inc.exit3646
  %i.fa = add nuw i32 %.val.i.i4839, 1
  store i32 %i.fa, ptr %9, align 4, !tbaa !10
  br label %lean_inc_ref.exit4841

bb.cv:                                            ; preds = %lean_inc.exit3646
  %.not.i.i4840 = icmp eq i32 %.val.i.i4839, 0
  br i1 %.not.i.i4840, label %lean_inc_ref.exit4841, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.fb = atomicrmw sub ptr %9, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit4841

lean_inc_ref.exit4841:                            ; preds = %bb.cu, %bb.cv, %bb.cw
  %i.fc = tail call ptr @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_HandlerTrie_find_x3f(ptr noundef nonnull %9, ptr noundef %i.aj, i8 noundef zeroext 0) ; 7 uses
  %i.fd = ptrtoint ptr %i.fc to i64               ; 2 uses
  %i.fe = and i64 %i.fd, 1
  %.not.i4842 = icmp eq i64 %i.fe, 0              ; 2 uses
  br i1 %.not.i4842, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %lean_inc_ref.exit4841
  %i.ff = lshr i64 %i.fd, 1
  %i.fg = trunc i64 %i.ff to i32
  br label %lean_obj_tag.exit4845

bb.cy:                                            ; preds = %lean_inc_ref.exit4841
  %i.fh = getelementptr i8, ptr %i.fc, i64 4
  %.val.i4844 = load i32, ptr %i.fh, align 4
  %i.fi = lshr i32 %.val.i4844, 24
  br label %lean_obj_tag.exit4845

lean_obj_tag.exit4845:                            ; preds = %bb.cx, %bb.cy
  %.0.i4843 = phi i32 [ %i.fg, %bb.cx ], [ %i.fi, %bb.cy ]
  %i.fj = icmp eq i32 %.0.i4843, 0
  br i1 %i.fj, label %lean_dec.exit4133, label %bb.cz

bb.cz:                                            ; preds = %lean_obj_tag.exit4845
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !14 ; 8 uses
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = and i64 %i.fm, 1
  %.not.i3643 = icmp eq i64 %i.fn, 0              ; 2 uses
  br i1 %.not.i3643, label %bb.da, label %lean_inc.exit3644

bb.da:                                            ; preds = %bb.cz
  %.val.i.i4846 = load i32, ptr %i.fl, align 4, !tbaa !10 ; 3 uses
  %i.fo = icmp sgt i32 %.val.i.i4846, 0
  br i1 %i.fo, label %bb.db, label %bb.dc, !prof !11

bb.db:                                            ; preds = %bb.da
  %i.fp = add nuw i32 %.val.i.i4846, 1
  store i32 %i.fp, ptr %i.fl, align 4, !tbaa !10
  br label %lean_inc.exit3644

bb.dc:                                            ; preds = %bb.da
  %.not.i.i4847 = icmp eq i32 %.val.i.i4846, 0
  br i1 %.not.i.i4847, label %lean_inc.exit3644, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.fq = atomicrmw sub ptr %i.fl, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3644

lean_inc.exit3644:                                ; preds = %bb.dd, %bb.dc, %bb.db, %bb.cz
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !14 ; 8 uses
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = and i64 %i.ft, 1
  %.not.i3641 = icmp eq i64 %i.fu, 0              ; 2 uses
  br i1 %.not.i3641, label %bb.de, label %lean_inc.exit3642

bb.de:                                            ; preds = %lean_inc.exit3644
  %.val.i.i4849 = load i32, ptr %i.fs, align 4, !tbaa !10 ; 3 uses
  %i.fv = icmp sgt i32 %.val.i.i4849, 0
  br i1 %i.fv, label %bb.df, label %bb.dg, !prof !11

bb.df:                                            ; preds = %bb.de
  %i.fw = add nuw i32 %.val.i.i4849, 1
  store i32 %i.fw, ptr %i.fs, align 4, !tbaa !10
  br label %lean_inc.exit3642

bb.dg:                                            ; preds = %bb.de
  %.not.i.i4850 = icmp eq i32 %.val.i.i4849, 0
  br i1 %.not.i.i4850, label %lean_inc.exit3642, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.fx = atomicrmw sub ptr %i.fs, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3642

lean_inc.exit3642:                                ; preds = %bb.dh, %bb.dg, %bb.df, %lean_inc.exit3644
  br i1 %.not.i3643, label %bb.di, label %lean_dec.exit4135

bb.di:                                            ; preds = %lean_inc.exit3642
  %i.fy = load i32, ptr %i.fl, align 8, !tbaa !10 ; 3 uses
  %i.fz = icmp sgt i32 %i.fy, 1
  br i1 %i.fz, label %bb.dj, label %bb.dk, !prof !11

bb.dj:                                            ; preds = %bb.di
  %i.ga = add nsw i32 %i.fy, -1
  store i32 %i.ga, ptr %i.fl, align 8, !tbaa !10
  br label %lean_dec.exit4135

bb.dk:                                            ; preds = %bb.di
  %.not.i4147 = icmp eq i32 %i.fy, 0
  br i1 %.not.i4147, label %lean_dec.exit4135, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fl) #7
  br label %lean_dec.exit4135

lean_dec.exit4135:                                ; preds = %bb.dl, %bb.dk, %bb.dj, %lean_inc.exit3642
  %i.gb = tail call zeroext i8 @lean_name_eq(ptr noundef %i.aj, ptr noundef %i.fs) #7 ; 4 uses
  br i1 %.not.i3641, label %bb.dm, label %lean_dec.exit4133

bb.dm:                                            ; preds = %lean_dec.exit4135
  %i.gc = load i32, ptr %i.fs, align 4, !tbaa !10 ; 3 uses
  %i.gd = icmp sgt i32 %i.gc, 1
  br i1 %i.gd, label %bb.dn, label %bb.do, !prof !11

bb.dn:                                            ; preds = %bb.dm
  %i.ge = add nsw i32 %i.gc, -1
  store i32 %i.ge, ptr %i.fs, align 4, !tbaa !10
  br label %lean_dec.exit4133

bb.do:                                            ; preds = %bb.dm
  %.not.i4149 = icmp eq i32 %i.gc, 0
  br i1 %.not.i4149, label %lean_dec.exit4133, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fs) #7
  br label %lean_dec.exit4133

lean_inc.exit3588.thread:                         ; preds = %bb.wo, %bb.wp, %bb.wq, %lean_inc.exit3554, %bb.ra, %bb.rb, %bb.rc, %lean_inc.exit3572, %bb.ll, %bb.lm, %bb.ln, %lean_inc.exit3590, %lean_inc.exit3624
  %.02891 = phi ptr [ %i.ju, %lean_inc.exit3624 ], [ %i.wo, %bb.ra ], [ %i.oz, %bb.ll ], [ %i.oz, %lean_inc.exit3590 ], [ %i.oz, %bb.ln ], [ %i.oz, %bb.lm ], [ %i.wo, %lean_inc.exit3572 ], [ %i.wo, %bb.rc ], [ %i.wo, %bb.rb ], [ %i.wo, %lean_inc.exit3554 ], [ %i.wo, %bb.wq ], [ %i.wo, %bb.wp ], [ %i.wo, %bb.wo ]
  %.02884 = phi ptr [ %i.jt, %lean_inc.exit3624 ], [ %i.wn, %bb.ra ], [ %i.oy, %bb.ll ], [ %i.oy, %lean_inc.exit3590 ], [ %i.oy, %bb.ln ], [ %i.oy, %bb.lm ], [ %i.wn, %lean_inc.exit3572 ], [ %i.wn, %bb.rc ], [ %i.wn, %bb.rb ], [ %i.wn, %lean_inc.exit3554 ], [ %i.wn, %bb.wq ], [ %i.wn, %bb.wp ], [ %i.wn, %bb.wo ]
  %.02877 = phi ptr [ %i.js, %lean_inc.exit3624 ], [ %i.wm, %bb.ra ], [ %i.ox, %bb.ll ], [ %i.ox, %lean_inc.exit3590 ], [ %i.ox, %bb.ln ], [ %i.ox, %bb.lm ], [ %i.wm, %lean_inc.exit3572 ], [ %i.wm, %bb.rc ], [ %i.wm, %bb.rb ], [ %i.wm, %lean_inc.exit3554 ], [ %i.wm, %bb.wq ], [ %i.wm, %bb.wp ], [ %i.wm, %bb.wo ]
  %.02825 = phi ptr [ %i.jl, %lean_inc.exit3624 ], [ %i.aam, %bb.ra ], [ %i.sx, %bb.ll ], [ %i.sx, %lean_inc.exit3590 ], [ %i.sx, %bb.ln ], [ %i.sx, %bb.lm ], [ %i.aam, %lean_inc.exit3572 ], [ %i.aam, %bb.rc ], [ %i.aam, %bb.rb ], [ %i.ahy, %lean_inc.exit3554 ], [ %i.ahy, %bb.wq ], [ %i.ahy, %bb.wp ], [ %i.ahy, %bb.wo ]
  %.02762 = phi i8 [ 0, %lean_inc.exit3624 ], [ %3, %bb.ra ], [ %.02977, %bb.ll ], [ %.02977, %lean_inc.exit3590 ], [ %.02977, %bb.ln ], [ %.02977, %bb.lm ], [ %3, %lean_inc.exit3572 ], [ %3, %bb.rc ], [ %3, %bb.rb ], [ %3, %lean_inc.exit3554 ], [ %3, %bb.wq ], [ %3, %bb.wp ], [ %3, %bb.wo ]
  %i.gf = tail call ptr @l_Lean_SourceInfo_fromRef(ptr noundef %.02877, i8 noundef zeroext 0) #7 ; 13 uses
  %i.gg = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__33_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__34_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__8_value) #7
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = and i64 %i.gh, 1
  %.not.i4852 = icmp eq i64 %i.gi, 0
  br i1 %.not.i4852, label %bb.dq, label %lean_inc_n.exit4855

bb.dq:                                            ; preds = %lean_inc.exit3588.thread
  %.val.i.i4853 = load i32, ptr %i.gf, align 4, !tbaa !10 ; 3 uses
end_hunk_7
begin_hunk_8_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__7:bb.a
  store i32 %i.ii, ptr %16, align 4, !tbaa !10
  br label %lean_inc.exit3634

bb.eg:                                            ; preds = %bb.ee
  %.not.i.i4864 = icmp eq i32 %.val.i.i4863, 0
  br i1 %.not.i.i4864, label %lean_inc.exit3634, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ij = atomicrmw sub ptr %16, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3634

lean_inc.exit3634:                                ; preds = %bb.eh, %bb.eg, %bb.ef, %lean_inc.exit3636
  %.val.i.i4866 = load i32, ptr %15, align 8, !tbaa !10 ; 3 uses
  %i.ik = icmp sgt i32 %.val.i.i4866, 0
  br i1 %i.ik, label %bb.ei, label %bb.ej, !prof !11

bb.ei:                                            ; preds = %lean_inc.exit3634
  %i.il = add nuw i32 %.val.i.i4866, 1
  store i32 %i.il, ptr %15, align 8, !tbaa !10
  br label %lean_inc_ref.exit4868

bb.ej:                                            ; preds = %lean_inc.exit3634
  %.not.i.i4867 = icmp eq i32 %.val.i.i4866, 0
  br i1 %.not.i.i4867, label %lean_inc_ref.exit4868, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.im = atomicrmw sub ptr %15, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit4868

lean_inc_ref.exit4868:                            ; preds = %bb.ei, %bb.ej, %bb.ek
  br i1 %.not.i3651, label %bb.el, label %lean_inc.exit3632

bb.el:                                            ; preds = %lean_inc_ref.exit4868
  %.val.i.i4869 = load i32, ptr %14, align 4, !tbaa !10 ; 3 uses
  %i.in = icmp sgt i32 %.val.i.i4869, 0
  br i1 %i.in, label %bb.em, label %bb.en, !prof !11

bb.em:                                            ; preds = %bb.el
  %i.io = add nuw i32 %.val.i.i4869, 1
  store i32 %i.io, ptr %14, align 4, !tbaa !10
  br label %lean_inc.exit3632

bb.en:                                            ; preds = %bb.el
  %.not.i.i4870 = icmp eq i32 %.val.i.i4869, 0
  br i1 %.not.i.i4870, label %lean_inc.exit3632, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ip = atomicrmw sub ptr %14, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3632

lean_inc.exit3632:                                ; preds = %bb.eo, %bb.en, %bb.em, %lean_inc_ref.exit4868
  %.val.i.i4872 = load i32, ptr %13, align 8, !tbaa !10 ; 3 uses
  %i.iq = icmp sgt i32 %.val.i.i4872, 0
  br i1 %i.iq, label %bb.ep, label %bb.eq, !prof !11

bb.ep:                                            ; preds = %lean_inc.exit3632
  %i.ir = add nuw i32 %.val.i.i4872, 1
  store i32 %i.ir, ptr %13, align 8, !tbaa !10
  br label %lean_inc_ref.exit4874

bb.eq:                                            ; preds = %lean_inc.exit3632
  %.not.i.i4873 = icmp eq i32 %.val.i.i4872, 0
  br i1 %.not.i.i4873, label %lean_inc_ref.exit4874, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.is = atomicrmw sub ptr %13, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit4874

lean_inc_ref.exit4874:                            ; preds = %bb.ep, %bb.eq, %bb.er
  %i.it = ptrtoint ptr %12 to i64
  %i.iu = and i64 %i.it, 1
  %.not.i3629 = icmp eq i64 %i.iu, 0
  br i1 %.not.i3629, label %bb.es, label %lean_inc.exit3630

bb.es:                                            ; preds = %lean_inc_ref.exit4874
  %.val.i.i4875 = load i32, ptr %12, align 4, !tbaa !10 ; 3 uses
  %i.iv = icmp sgt i32 %.val.i.i4875, 0
  br i1 %i.iv, label %bb.et, label %bb.eu, !prof !11

bb.et:                                            ; preds = %bb.es
  %i.iw = add nuw i32 %.val.i.i4875, 1
  store i32 %i.iw, ptr %12, align 4, !tbaa !10
  br label %lean_inc.exit3630

bb.eu:                                            ; preds = %bb.es
  %.not.i.i4876 = icmp eq i32 %.val.i.i4875, 0
  br i1 %.not.i.i4876, label %lean_inc.exit3630, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ix = atomicrmw sub ptr %12, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3630

lean_inc.exit3630:                                ; preds = %bb.ev, %bb.eu, %bb.et, %lean_inc_ref.exit4874
  %.val.i.i4878 = load i32, ptr %11, align 4, !tbaa !10 ; 3 uses
  %i.iy = icmp sgt i32 %.val.i.i4878, 0
  br i1 %i.iy, label %bb.ew, label %bb.ex, !prof !11

bb.ew:                                            ; preds = %lean_inc.exit3630
  %i.iz = add nuw i32 %.val.i.i4878, 1
  store i32 %i.iz, ptr %11, align 4, !tbaa !10
  br label %lean_inc_ref.exit4880

bb.ex:                                            ; preds = %lean_inc.exit3630
  %.not.i.i4879 = icmp eq i32 %.val.i.i4878, 0
  br i1 %.not.i.i4879, label %lean_inc_ref.exit4880, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.ja = atomicrmw sub ptr %11, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit4880

lean_inc_ref.exit4880:                            ; preds = %bb.ew, %bb.ex, %bb.ey
  %i.jb = ptrtoint ptr %10 to i64
  %i.jc = and i64 %i.jb, 1
  %.not.i3627 = icmp eq i64 %i.jc, 0
  br i1 %.not.i3627, label %bb.ez, label %lean_inc.exit3628

bb.ez:                                            ; preds = %lean_inc_ref.exit4880
  %.val.i.i4881 = load i32, ptr %10, align 4, !tbaa !10 ; 3 uses
  %i.jd = icmp sgt i32 %.val.i.i4881, 0
  br i1 %i.jd, label %bb.fa, label %bb.fb, !prof !11

bb.fa:                                            ; preds = %bb.ez
  %i.je = add nuw i32 %.val.i.i4881, 1
  store i32 %i.je, ptr %10, align 4, !tbaa !10
  br label %lean_inc.exit3628

bb.fb:                                            ; preds = %bb.ez
  %.not.i.i4882 = icmp eq i32 %.val.i.i4881, 0
  br i1 %.not.i.i4882, label %lean_inc.exit3628, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.jf = atomicrmw sub ptr %10, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3628

lean_inc.exit3628:                                ; preds = %bb.fc, %bb.fb, %bb.fa, %lean_inc_ref.exit4880
  %i.jg = tail call ptr @lean_apply_12(ptr noundef %i.ccw, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %i.ic, ptr noundef nonnull %i.ig, ptr noundef nonnull %i.ig, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef nonnull inttoptr (i64 1 to ptr)) #7
  br label %lean_dec.exit3725

lean_inc.exit3626:                                ; preds = %lean_inc.exit3606, %bb.hn, %bb.ho, %bb.hp, %lean_inc.exit3612, %bb.gx, %bb.gy, %bb.gz
  %.12952.ph = phi ptr [ %i.na, %bb.hn ], [ %i.na, %bb.ho ], [ %i.na, %bb.hp ], [ %i.lx, %bb.gx ], [ %i.lx, %bb.gy ], [ %i.lx, %bb.gz ], [ %i.na, %lean_inc.exit3606 ], [ %i.lx, %lean_inc.exit3612 ]
  br i1 %.not.i4891, label %bb.fd, label %lean_inc.exit3624

bb.fd:                                            ; preds = %lean_inc.exit3626
  %.val.i.i4884 = load i32, ptr %i.kh, align 4, !tbaa !10 ; 3 uses
  %i.jh = icmp sgt i32 %.val.i.i4884, 0
  br i1 %i.jh, label %bb.fe, label %bb.ff, !prof !11

bb.fe:                                            ; preds = %bb.fd
  %i.ji = add nuw i32 %.val.i.i4884, 1
  store i32 %i.ji, ptr %i.kh, align 4, !tbaa !10
  br label %lean_inc.exit3624

bb.ff:                                            ; preds = %bb.fd
  %.not.i.i4885 = icmp eq i32 %.val.i.i4884, 0
  br i1 %.not.i.i4885, label %lean_inc.exit3624, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.jj = atomicrmw sub ptr %i.kh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3624

lean_inc.exit3624:                                ; preds = %bb.fg, %bb.ff, %bb.fe, %lean_inc.exit3626
  %i.jk = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.kh, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef %.12952.ph) #7
  %i.jl = tail call ptr @l_Lean_Syntax_node2(ptr noundef %i.kh, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__36_value, ptr noundef nonnull %i.lc, ptr noundef %i.jk) #7
  br label %lean_inc.exit3588.thread

lean_dec.exit3953.thread:                         ; preds = %bb.aiv, %bb.aiw, %bb.aix, %bb.aib, %bb.aic, %bb.aid, %lean_dec.exit3955, %lean_dec.exit3949, %lean_dec.exit3991
  %.02977 = phi i8 [ %.03151, %lean_dec.exit3991 ], [ %i.azd, %bb.aiv ], [ %i.azd, %bb.aiw ], [ %i.azd, %bb.aix ], [ %i.ayi, %bb.aib ], [ %i.ayi, %bb.aic ], [ %i.ayi, %bb.aid ], [ %i.ayi, %lean_dec.exit3955 ], [ %i.azd, %lean_dec.exit3949 ] ; 5 uses
  %i.jm = and i64 %i.axe, 510
  %i.jn = icmp eq i64 %i.jm, 0
  %i.jo = icmp eq i8 %.02977, 0                   ; 2 uses
  br i1 %i.jn, label %bb.fh, label %bb.oq

bb.fh:                                            ; preds = %lean_dec.exit3953.thread
  br i1 %i.jo, label %bb.fi, label %bb.jc

bb.fi:                                            ; preds = %bb.fh
  %i.jp = load i32, ptr %i.bqj, align 8, !tbaa !10 ; 3 uses
  %i.jq = icmp sgt i32 %i.jp, 1
  br i1 %i.jq, label %bb.fj, label %bb.fk, !prof !11

bb.fj:                                            ; preds = %bb.fi
  %i.jr = add nsw i32 %i.jp, -1
  store i32 %i.jr, ptr %i.bqj, align 8, !tbaa !10
  br label %lean_dec_ref.exit4748

bb.fk:                                            ; preds = %bb.fi
  %.not.i4747 = icmp eq i32 %i.jp, 0
  br i1 %.not.i4747, label %lean_dec_ref.exit4748, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bqj) #7
  br label %lean_dec_ref.exit4748

lean_dec_ref.exit4748:                            ; preds = %bb.fj, %bb.fk, %bb.fl
  %i.js = load ptr, ptr %i.bkw, align 8, !tbaa !14 ; 2 uses
  %i.jt = load ptr, ptr %i.bky, align 8, !tbaa !14 ; 12 uses
  %i.ju = load ptr, ptr %i.bla, align 8, !tbaa !14 ; 12 uses
  br i1 %.not.i3655, label %bb.fm, label %lean_dec.exit4131

bb.fm:                                            ; preds = %lean_dec_ref.exit4748
  %i.jv = load i32, ptr %i.cm, align 4, !tbaa !10 ; 3 uses
  %i.jw = icmp sgt i32 %i.jv, 1
  br i1 %i.jw, label %bb.fn, label %bb.fo, !prof !11

bb.fn:                                            ; preds = %bb.fm
  %i.jx = add nsw i32 %i.jv, -1
  store i32 %i.jx, ptr %i.cm, align 4, !tbaa !10
  br label %lean_dec.exit4131

bb.fo:                                            ; preds = %bb.fm
  %.not.i4151 = icmp eq i32 %i.jv, 0
  br i1 %.not.i4151, label %lean_dec.exit4131, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #7
  br label %lean_dec.exit4131

lean_dec.exit4131:                                ; preds = %bb.fp, %bb.fo, %bb.fn, %lean_dec_ref.exit4748
  %i.jy = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__1(i8 noundef zeroext 0, ptr noundef %i.js, ptr poison, ptr poison, ptr poison, ptr nonnull poison, ptr poison, ptr nonnull poison, ptr poison) ; 10 uses
  %i.jz = ptrtoint ptr %i.jy to i64               ; 2 uses
  %i.ka = and i64 %i.jz, 1
  %.not.i4887 = icmp eq i64 %i.ka, 0              ; 2 uses
  br i1 %.not.i4887, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %lean_dec.exit4131
  %i.kb = lshr i64 %i.jz, 1
  %i.kc = trunc i64 %i.kb to i32
  br label %lean_obj_tag.exit4890

bb.fr:                                            ; preds = %lean_dec.exit4131
  %i.kd = getelementptr i8, ptr %i.jy, i64 4
  %.val.i4889 = load i32, ptr %i.kd, align 4
  %i.ke = lshr i32 %.val.i4889, 24
  br label %lean_obj_tag.exit4890

lean_obj_tag.exit4890:                            ; preds = %bb.fq, %bb.fr
  %.0.i4888 = phi i32 [ %i.kc, %bb.fq ], [ %i.ke, %bb.fr ]
  %i.kf = icmp eq i32 %.0.i4888, 0
  br i1 %i.kf, label %bb.fs, label %lean_dec.exit4125

bb.fs:                                            ; preds = %lean_obj_tag.exit4890
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !14 ; 10 uses
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = and i64 %i.ki, 1
  %.not.i4891 = icmp eq i64 %i.kj, 0              ; 2 uses
  br i1 %.not.i4891, label %bb.ft, label %lean_inc_n.exit4894

bb.ft:                                            ; preds = %bb.fs
  %.val.i.i4892 = load i32, ptr %i.kh, align 4, !tbaa !10 ; 3 uses
  %i.kk = icmp sgt i32 %.val.i.i4892, 0
  br i1 %i.kk, label %bb.fu, label %bb.fv, !prof !11

bb.fu:                                            ; preds = %bb.ft
  %i.kl = add nuw i32 %.val.i.i4892, 2
  store i32 %i.kl, ptr %i.kh, align 4, !tbaa !10
  br label %lean_inc_n.exit4894

bb.fv:                                            ; preds = %bb.ft
  %.not.i.i4893 = icmp eq i32 %.val.i.i4892, 0
  br i1 %.not.i.i4893, label %lean_inc_n.exit4894, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.km = atomicrmw sub ptr %i.kh, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit4894

lean_inc_n.exit4894:                              ; preds = %bb.fs, %bb.fu, %bb.fv, %bb.fw
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.jy, i32 noundef 1)
  %i.kn = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__3_once seq_cst, align 4, !tbaa !20
  %i.ko = icmp eq i32 %i.kn, 1
  br i1 %i.ko, label %bb.fx, label %bb.fy, !prof !11

bb.fx:                                            ; preds = %lean_inc_n.exit4894
  %i.kp = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__3, align 8, !tbaa !14
  br label %lean_obj_once.exit4896

bb.fy:                                            ; preds = %lean_inc_n.exit4894
  %i.kq = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__3, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__3_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__3) #7
  br label %lean_obj_once.exit4896

lean_obj_once.exit4896:                           ; preds = %bb.fx, %bb.fy
  %.0.i4895 = phi ptr [ %i.kp, %bb.fx ], [ %i.kq, %bb.fy ]
  %i.kr = ptrtoint ptr %i.ju to i64
  %i.ks = and i64 %i.kr, 1
  %.not.i3621 = icmp eq i64 %i.ks, 0              ; 3 uses
  br i1 %.not.i3621, label %bb.fz, label %lean_inc.exit3622

bb.fz:                                            ; preds = %lean_obj_once.exit4896
  %.val.i.i4897 = load i32, ptr %i.ju, align 4, !tbaa !10 ; 3 uses
  %i.kt = icmp sgt i32 %.val.i.i4897, 0
  br i1 %i.kt, label %bb.ga, label %bb.gb, !prof !11

bb.ga:                                            ; preds = %bb.fz
  %i.ku = add nuw i32 %.val.i.i4897, 1
  store i32 %i.ku, ptr %i.ju, align 4, !tbaa !10
  br label %lean_inc.exit3622

bb.gb:                                            ; preds = %bb.fz
  %.not.i.i4898 = icmp eq i32 %.val.i.i4897, 0
  br i1 %.not.i.i4898, label %lean_inc.exit3622, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.kv = atomicrmw sub ptr %i.ju, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3622

lean_inc.exit3622:                                ; preds = %bb.gc, %bb.gb, %bb.ga, %lean_obj_once.exit4896
  %i.kw = ptrtoint ptr %i.jt to i64
  %i.kx = and i64 %i.kw, 1
  %.not.i3619 = icmp eq i64 %i.kx, 0              ; 3 uses
  br i1 %.not.i3619, label %bb.gd, label %lean_inc.exit3620

bb.gd:                                            ; preds = %lean_inc.exit3622
  %.val.i.i4900 = load i32, ptr %i.jt, align 4, !tbaa !10 ; 3 uses
  %i.ky = icmp sgt i32 %.val.i.i4900, 0
  br i1 %i.ky, label %bb.ge, label %bb.gf, !prof !11

bb.ge:                                            ; preds = %bb.gd
  %i.kz = add nuw i32 %.val.i.i4900, 1
  store i32 %i.kz, ptr %i.jt, align 4, !tbaa !10
  br label %lean_inc.exit3620

bb.gf:                                            ; preds = %bb.gd
  %.not.i.i4901 = icmp eq i32 %.val.i.i4900, 0
  br i1 %.not.i.i4901, label %lean_inc.exit3620, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.la = atomicrmw sub ptr %i.jt, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3620

lean_inc.exit3620:                                ; preds = %bb.gg, %bb.gf, %bb.ge, %lean_inc.exit3622
  %i.lb = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.jt, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__5_value, ptr noundef %i.ju) #7
  %i.lc = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  store ptr %i.kh, ptr %i.ld, align 8, !tbaa !14
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  store ptr %.0.i4895, ptr %i.le, align 8, !tbaa !14
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  store ptr %i.lb, ptr %i.lf, align 8, !tbaa !14
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.lg, align 8, !tbaa !14
  %i.lh = ptrtoint ptr %5 to i64
  %i.li = and i64 %i.lh, 1
  %.not.i3615 = icmp eq i64 %i.li, 0              ; 2 uses
  br i1 %.not.i3615, label %bb.gh, label %lean_inc.exit3616

bb.gh:                                            ; preds = %lean_inc.exit3620
  %.val.i.i4906 = load i32, ptr %5, align 4, !tbaa !10 ; 3 uses
  %i.lj = icmp sgt i32 %.val.i.i4906, 0
  br i1 %i.lj, label %bb.gi, label %bb.gj, !prof !11

bb.gi:                                            ; preds = %bb.gh
  %i.lk = add nuw i32 %.val.i.i4906, 1
  store i32 %i.lk, ptr %5, align 4, !tbaa !10
  br label %lean_inc.exit3616

bb.gj:                                            ; preds = %bb.gh
  %.not.i.i4907 = icmp eq i32 %.val.i.i4906, 0
  br i1 %.not.i.i4907, label %lean_inc.exit3616, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.ll = atomicrmw sub ptr %5, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3616

lean_inc.exit3616:                                ; preds = %bb.gk, %bb.gj, %bb.gi, %lean_inc.exit3620
  %i.lm = tail call ptr @l___private_Init_Meta_Defs_0__Lean_getEscapedNameParts_x3f(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %5) #7 ; 4 uses
  %i.ln = ptrtoint ptr %i.lm to i64               ; 2 uses
  %i.lo = and i64 %i.ln, 1
  %.not.i4909 = icmp eq i64 %i.lo, 0
  br i1 %.not.i4909, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %lean_inc.exit3616
  %i.lp = lshr i64 %i.ln, 1
  %i.lq = trunc i64 %i.lp to i32
  br label %lean_obj_tag.exit4912

bb.gm:                                            ; preds = %lean_inc.exit3616
  %i.lr = getelementptr i8, ptr %i.lm, i64 4
  %.val.i4911 = load i32, ptr %i.lr, align 4
  %i.ls = lshr i32 %.val.i4911, 24
  br label %lean_obj_tag.exit4912

lean_obj_tag.exit4912:                            ; preds = %bb.gl, %bb.gm
  %.0.i4910 = phi i32 [ %i.lq, %bb.gl ], [ %i.ls, %bb.gm ]
  %i.lt = icmp eq i32 %.0.i4910, 0
  br i1 %i.lt, label %bb.gn, label %bb.ha

bb.gn:                                            ; preds = %lean_obj_tag.exit4912
  br i1 %.not.i3615, label %bb.go, label %lean_inc.exit3614

bb.go:                                            ; preds = %bb.gn
  %.val.i.i4913 = load i32, ptr %5, align 4, !tbaa !10 ; 3 uses
  %i.lu = icmp sgt i32 %.val.i.i4913, 0
  br i1 %i.lu, label %bb.gp, label %bb.gq, !prof !11

bb.gp:                                            ; preds = %bb.go
  %i.lv = add nuw i32 %.val.i.i4913, 1
  store i32 %i.lv, ptr %5, align 4, !tbaa !10
  br label %lean_inc.exit3614

bb.gq:                                            ; preds = %bb.go
  %.not.i.i4914 = icmp eq i32 %.val.i.i4913, 0
  br i1 %.not.i.i4914, label %lean_inc.exit3614, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.lw = atomicrmw sub ptr %5, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3614

end_hunk_8
begin_hunk_9_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__7:bb.a
  store i32 %i.np, ptr %i.ccw, align 8, !tbaa !10
  br label %lean_dec_ref.exit4742

bb.hu:                                            ; preds = %lean_dec.exit4123
  %.not.i4741 = icmp eq i32 %i.nn, 0
  br i1 %.not.i4741, label %lean_dec_ref.exit4742, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ccw) #7
  br label %lean_dec_ref.exit4742

lean_dec_ref.exit4742:                            ; preds = %bb.ht, %bb.hu, %bb.hv
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.bm, i32 noundef 1)
  br i1 %.not.i3645, label %bb.hw, label %lean_dec.exit4121

bb.hw:                                            ; preds = %lean_dec_ref.exit4742
  %i.nq = load i32, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.nr = icmp sgt i32 %i.nq, 1
  br i1 %i.nr, label %bb.hx, label %bb.hy, !prof !11

bb.hx:                                            ; preds = %bb.hw
  %i.ns = add nsw i32 %i.nq, -1
  store i32 %i.ns, ptr %i.aj, align 4, !tbaa !10
  br label %lean_dec.exit4121

bb.hy:                                            ; preds = %bb.hw
  %.not.i4157 = icmp eq i32 %i.nq, 0
  br i1 %.not.i4157, label %lean_dec.exit4121, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aj) #7
  br label %lean_dec.exit4121

lean_dec.exit4121:                                ; preds = %bb.hz, %bb.hy, %bb.hx, %lean_dec_ref.exit4742
  %i.nt = load i32, ptr %9, align 4, !tbaa !10    ; 3 uses
  %i.nu = icmp sgt i32 %i.nt, 1
  br i1 %i.nu, label %bb.ia, label %bb.ib, !prof !11

bb.ia:                                            ; preds = %lean_dec.exit4121
  %i.nv = add nsw i32 %i.nt, -1
  store i32 %i.nv, ptr %9, align 4, !tbaa !10
  br label %lean_dec_ref.exit4740

bb.ib:                                            ; preds = %lean_dec.exit4121
  %.not.i4739 = icmp eq i32 %i.nt, 0
  br i1 %.not.i4739, label %lean_dec_ref.exit4740, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #7
  br label %lean_dec_ref.exit4740

lean_dec_ref.exit4740:                            ; preds = %bb.ia, %bb.ib, %bb.ic
  %i.nw = ptrtoint ptr %5 to i64
  %i.nx = and i64 %i.nw, 1
  %.not.i4118 = icmp eq i64 %i.nx, 0
  br i1 %.not.i4118, label %bb.id, label %lean_dec.exit4119

bb.id:                                            ; preds = %lean_dec_ref.exit4740
  %i.ny = load i32, ptr %5, align 4, !tbaa !10    ; 3 uses
  %i.nz = icmp sgt i32 %i.ny, 1
  br i1 %i.nz, label %bb.ie, label %bb.if, !prof !11

bb.ie:                                            ; preds = %bb.id
  %i.oa = add nsw i32 %i.ny, -1
  store i32 %i.oa, ptr %5, align 4, !tbaa !10
  br label %lean_dec.exit4119

bb.if:                                            ; preds = %bb.id
  %.not.i4159 = icmp eq i32 %i.ny, 0
  br i1 %.not.i4159, label %lean_dec.exit4119, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit4119

lean_dec.exit4119:                                ; preds = %bb.ig, %bb.if, %bb.ie, %lean_dec_ref.exit4740
  br i1 %.not.i3479, label %bb.ih, label %lean_dec.exit4117

bb.ih:                                            ; preds = %lean_dec.exit4119
  %i.ob = load i32, ptr %2, align 4, !tbaa !10    ; 3 uses
  %i.oc = icmp sgt i32 %i.ob, 1
  br i1 %i.oc, label %bb.ii, label %bb.ij, !prof !11

bb.ii:                                            ; preds = %bb.ih
  %i.od = add nsw i32 %i.ob, -1
  store i32 %i.od, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit4117

bb.ij:                                            ; preds = %bb.ih
  %.not.i4161 = icmp eq i32 %i.ob, 0
  br i1 %.not.i4161, label %lean_dec.exit4117, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit4117

lean_dec.exit4117:                                ; preds = %bb.ik, %bb.ij, %bb.ii, %lean_dec.exit4119
  %i.oe = load i32, ptr %1, align 4, !tbaa !10    ; 3 uses
  %i.of = icmp sgt i32 %i.oe, 1
  br i1 %i.of, label %bb.il, label %bb.im, !prof !11

bb.il:                                            ; preds = %lean_dec.exit4117
  %i.og = add nsw i32 %i.oe, -1
  store i32 %i.og, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit4738

bb.im:                                            ; preds = %lean_dec.exit4117
  %.not.i4737 = icmp eq i32 %i.oe, 0
  br i1 %.not.i4737, label %lean_dec_ref.exit4738, label %bb.in

bb.in:                                            ; preds = %bb.im
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit4738

lean_dec_ref.exit4738:                            ; preds = %bb.il, %bb.im, %bb.in
  br i1 %.not.i3659, label %bb.io, label %lean_dec.exit4115

bb.io:                                            ; preds = %lean_dec_ref.exit4738
  %i.oh = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.oi = icmp sgt i32 %i.oh, 1
  br i1 %i.oi, label %bb.ip, label %bb.iq, !prof !11

bb.ip:                                            ; preds = %bb.io
  %i.oj = add nsw i32 %i.oh, -1
  store i32 %i.oj, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit4115

bb.iq:                                            ; preds = %bb.io
  %.not.i4163 = icmp eq i32 %i.oh, 0
  br i1 %.not.i4163, label %lean_dec.exit4115, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit4115

lean_dec.exit4115:                                ; preds = %bb.ir, %bb.iq, %bb.ip, %lean_dec_ref.exit4738
  %i.ok = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !14 ; 5 uses
  %.val4775 = load i32, ptr %i.jy, align 8, !tbaa !10
  %i.om = icmp eq i32 %.val4775, 1
  br i1 %i.om, label %lean_dec.exit, label %bb.is

bb.is:                                            ; preds = %lean_dec.exit4115
  %i.on = ptrtoint ptr %i.ol to i64
  %i.oo = and i64 %i.on, 1
  %.not.i3601 = icmp eq i64 %i.oo, 0
  br i1 %.not.i3601, label %bb.it, label %lean_inc.exit3602

bb.it:                                            ; preds = %bb.is
  %.val.i.i4931 = load i32, ptr %i.ol, align 4, !tbaa !10 ; 3 uses
  %i.op = icmp sgt i32 %.val.i.i4931, 0
  br i1 %i.op, label %bb.iu, label %bb.iv, !prof !11

bb.iu:                                            ; preds = %bb.it
  %i.oq = add nuw i32 %.val.i.i4931, 1
  store i32 %i.oq, ptr %i.ol, align 4, !tbaa !10
  br label %lean_inc.exit3602

bb.iv:                                            ; preds = %bb.it
  %.not.i.i4932 = icmp eq i32 %.val.i.i4931, 0
  br i1 %.not.i.i4932, label %lean_inc.exit3602, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.or = atomicrmw sub ptr %i.ol, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3602

lean_inc.exit3602:                                ; preds = %bb.iw, %bb.iv, %bb.iu, %bb.is
  br i1 %.not.i4887, label %bb.ix, label %bb.jb

bb.ix:                                            ; preds = %lean_inc.exit3602
  %i.os = load i32, ptr %i.jy, align 8, !tbaa !10 ; 3 uses
  %i.ot = icmp sgt i32 %i.os, 1
  br i1 %i.ot, label %bb.iy, label %bb.iz, !prof !11

bb.iy:                                            ; preds = %bb.ix
  %i.ou = add nsw i32 %i.os, -1
  store i32 %i.ou, ptr %i.jy, align 8, !tbaa !10
  br label %bb.jb

bb.iz:                                            ; preds = %bb.ix
  %.not.i4165 = icmp eq i32 %i.os, 0
  br i1 %.not.i4165, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jy) #7
  br label %bb.jb

bb.jb:                                            ; preds = %lean_inc.exit3602, %bb.iy, %bb.iz, %bb.ja
  %i.ov = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  store ptr %i.ol, ptr %i.ow, align 8, !tbaa !14
  br label %lean_dec.exit

bb.jc:                                            ; preds = %bb.fh
  %i.ox = load ptr, ptr %i.bkw, align 8, !tbaa !14 ; 5 uses
  %i.oy = load ptr, ptr %i.bky, align 8, !tbaa !14 ; 13 uses
  %i.oz = load ptr, ptr %i.bla, align 8, !tbaa !14 ; 13 uses
  br i1 %.not.i3655, label %bb.jd, label %lean_dec.exit4111

bb.jd:                                            ; preds = %bb.jc
  %i.pa = load i32, ptr %i.cm, align 4, !tbaa !10 ; 3 uses
  %i.pb = icmp sgt i32 %i.pa, 1
  br i1 %i.pb, label %bb.je, label %bb.jf, !prof !11

bb.je:                                            ; preds = %bb.jd
  %i.pc = add nsw i32 %i.pa, -1
  store i32 %i.pc, ptr %i.cm, align 4, !tbaa !10
  br label %lean_dec.exit4111

bb.jf:                                            ; preds = %bb.jd
  %.not.i4167 = icmp eq i32 %i.pa, 0
  br i1 %.not.i4167, label %lean_dec.exit4111, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #7
  br label %lean_dec.exit4111

lean_dec.exit4111:                                ; preds = %bb.jg, %bb.jf, %bb.je, %bb.jc
  %i.pd = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__1(i8 noundef zeroext 0, ptr noundef %i.ox, ptr poison, ptr poison, ptr poison, ptr nonnull poison, ptr poison, ptr nonnull poison, ptr poison) ; 10 uses
  %i.pe = ptrtoint ptr %i.pd to i64               ; 2 uses
  %i.pf = and i64 %i.pe, 1
  %.not.i4934 = icmp eq i64 %i.pf, 0              ; 2 uses
  br i1 %.not.i4934, label %bb.ji, label %bb.jh

bb.jh:                                            ; preds = %lean_dec.exit4111
  %i.pg = lshr i64 %i.pe, 1
  %i.ph = trunc i64 %i.pg to i32
  br label %lean_obj_tag.exit4937

bb.ji:                                            ; preds = %lean_dec.exit4111
  %i.pi = getelementptr i8, ptr %i.pd, i64 4
  %.val.i4936 = load i32, ptr %i.pi, align 4
  %i.pj = lshr i32 %.val.i4936, 24
  br label %lean_obj_tag.exit4937

lean_obj_tag.exit4937:                            ; preds = %bb.jh, %bb.ji
  %.0.i4935 = phi i32 [ %i.ph, %bb.jh ], [ %i.pj, %bb.ji ]
  %i.pk = icmp eq i32 %.0.i4935, 0
  br i1 %i.pk, label %bb.jj, label %bb.na

bb.jj:                                            ; preds = %lean_obj_tag.exit4937
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !14 ; 12 uses
  %i.pn = ptrtoint ptr %i.pm to i64
  %i.po = and i64 %i.pn, 1
  %.not.i4938 = icmp eq i64 %i.po, 0
  br i1 %.not.i4938, label %bb.jk, label %lean_inc_n.exit4941

bb.jk:                                            ; preds = %bb.jj
  %.val.i.i4939 = load i32, ptr %i.pm, align 4, !tbaa !10 ; 3 uses
  %i.pp = icmp sgt i32 %.val.i.i4939, 0
  br i1 %i.pp, label %bb.jl, label %bb.jm, !prof !11

bb.jl:                                            ; preds = %bb.jk
  %i.pq = add nuw i32 %.val.i.i4939, 8
  store i32 %i.pq, ptr %i.pm, align 4, !tbaa !10
  br label %lean_inc_n.exit4941

bb.jm:                                            ; preds = %bb.jk
  %.not.i.i4940 = icmp eq i32 %.val.i.i4939, 0
  br i1 %.not.i.i4940, label %lean_inc_n.exit4941, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.pr = atomicrmw sub ptr %i.pm, i32 8 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit4941

lean_inc_n.exit4941:                              ; preds = %bb.jj, %bb.jl, %bb.jm, %bb.jn
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.pd, i32 noundef 1)
  %i.ps = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__9_once seq_cst, align 4, !tbaa !20
  %i.pt = icmp eq i32 %i.ps, 1
  br i1 %i.pt, label %bb.jo, label %bb.jp, !prof !11

bb.jo:                                            ; preds = %lean_inc_n.exit4941
  %i.pu = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__9, align 8, !tbaa !14
  br label %lean_obj_once.exit4943

bb.jp:                                            ; preds = %lean_inc_n.exit4941
  %i.pv = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__9, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__9_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__9) #7
  br label %lean_obj_once.exit4943

lean_obj_once.exit4943:                           ; preds = %bb.jo, %bb.jp
  %.0.i4942 = phi ptr [ %i.pu, %bb.jo ], [ %i.pv, %bb.jp ]
  %i.pw = ptrtoint ptr %i.oz to i64
  %i.px = and i64 %i.pw, 1
  %.not.i4944 = icmp eq i64 %i.px, 0              ; 2 uses
  br i1 %.not.i4944, label %bb.jq, label %lean_inc_n.exit4947

bb.jq:                                            ; preds = %lean_obj_once.exit4943
  %.val.i.i4945 = load i32, ptr %i.oz, align 4, !tbaa !10 ; 3 uses
  %i.py = icmp sgt i32 %.val.i.i4945, 0
  br i1 %i.py, label %bb.jr, label %bb.js, !prof !11

bb.jr:                                            ; preds = %bb.jq
  %i.pz = add nuw i32 %.val.i.i4945, 2
  store i32 %i.pz, ptr %i.oz, align 4, !tbaa !10
  br label %lean_inc_n.exit4947

bb.js:                                            ; preds = %bb.jq
  %.not.i.i4946 = icmp eq i32 %.val.i.i4945, 0
  br i1 %.not.i.i4946, label %lean_inc_n.exit4947, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.qa = atomicrmw sub ptr %i.oz, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit4947

lean_inc_n.exit4947:                              ; preds = %lean_obj_once.exit4943, %bb.jr, %bb.js, %bb.jt
  %i.qb = ptrtoint ptr %i.oy to i64
  %i.qc = and i64 %i.qb, 1
  %.not.i4948 = icmp eq i64 %i.qc, 0              ; 2 uses
  br i1 %.not.i4948, label %bb.ju, label %lean_inc_n.exit4951

bb.ju:                                            ; preds = %lean_inc_n.exit4947
  %.val.i.i4949 = load i32, ptr %i.oy, align 4, !tbaa !10 ; 3 uses
  %i.qd = icmp sgt i32 %.val.i.i4949, 0
  br i1 %i.qd, label %bb.jv, label %bb.jw, !prof !11

bb.jv:                                            ; preds = %bb.ju
  %i.qe = add nuw i32 %.val.i.i4949, 2
  store i32 %i.qe, ptr %i.oy, align 4, !tbaa !10
  br label %lean_inc_n.exit4951

bb.jw:                                            ; preds = %bb.ju
  %.not.i.i4950 = icmp eq i32 %.val.i.i4949, 0
  br i1 %.not.i.i4950, label %lean_inc_n.exit4951, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.qf = atomicrmw sub ptr %i.oy, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit4951

lean_inc_n.exit4951:                              ; preds = %lean_inc_n.exit4947, %bb.jv, %bb.jw, %bb.jx
  %i.qg = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.oy, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__10_value, ptr noundef %i.oz) #7
  %i.qh = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__2_value, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__3_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__8_value) #7
  %i.qi = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  store ptr %i.qh, ptr %i.qj, align 8, !tbaa !14
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.qk, align 8, !tbaa !14
  %i.ql = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  store ptr %i.qi, ptr %i.qm, align 8, !tbaa !14
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ql, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.qn, align 8, !tbaa !14
  %i.qo = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  store ptr %i.pm, ptr %i.qp, align 8, !tbaa !14
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  store ptr %.0.i4942, ptr %i.qq, align 8, !tbaa !14
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qo, i64 24
  store ptr %i.qg, ptr %i.qr, align 8, !tbaa !14
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qo, i64 32
  store ptr %i.ql, ptr %i.qs, align 8, !tbaa !14
  %i.qt = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__33_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__34_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__11_value) #7
  %i.qu = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  store ptr %i.pm, ptr %i.qv, align 8, !tbaa !14
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__12_value, ptr %i.qw, align 8, !tbaa !14
  %i.qx = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14_once seq_cst, align 4, !tbaa !20
  %i.qy = icmp eq i32 %i.qx, 1
  br i1 %i.qy, label %bb.jy, label %bb.jz, !prof !11

bb.jy:                                            ; preds = %lean_inc_n.exit4951
  %i.qz = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14, align 8, !tbaa !14
  br label %lean_obj_once.exit4957

bb.jz:                                            ; preds = %lean_inc_n.exit4951
  %i.ra = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14) #7
  br label %lean_obj_once.exit4957

lean_obj_once.exit4957:                           ; preds = %bb.jy, %bb.jz
  %.0.i4956 = phi ptr [ %i.qz, %bb.jy ], [ %i.ra, %bb.jz ]
  %i.rb = tail call ptr @l_Lean_Name_mkStr2(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__4_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__63_value) #7
  %i.rc = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.oy, ptr noundef %i.rb, ptr noundef %i.oz) #7
  %i.rd = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  store ptr %i.pm, ptr %i.re, align 8, !tbaa !14
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  store ptr %.0.i4956, ptr %i.rf, align 8, !tbaa !14
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 24
  store ptr %i.rc, ptr %i.rg, align 8, !tbaa !14
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rd, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.rh, align 8, !tbaa !14
  %i.ri = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.pm, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef nonnull %i.rd) #7
  %i.rj = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  store ptr %i.pm, ptr %i.rk, align 8, !tbaa !14
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__15_value, ptr %i.rl, align 8, !tbaa !14
  %i.rm = tail call ptr @l_Lean_Syntax_node3(ptr noundef %i.pm, ptr noundef %i.qt, ptr noundef nonnull %i.qu, ptr noundef %i.ri, ptr noundef nonnull %i.rj) #7
  %i.rn = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.pm, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef %i.rm) #7
  %i.ro = tail call ptr @l_Lean_Syntax_node2(ptr noundef %i.pm, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__36_value, ptr noundef nonnull %i.qo, ptr noundef %i.rn) #7
  br i1 %.not.i3653, label %bb.ka, label %lean_inc.exit3600

bb.ka:                                            ; preds = %lean_obj_once.exit4957
  %.val.i.i4958 = load i32, ptr %16, align 4, !tbaa !10 ; 3 uses
  %i.rp = icmp sgt i32 %.val.i.i4958, 0
  br i1 %i.rp, label %bb.kb, label %bb.kc, !prof !11

bb.kb:                                            ; preds = %bb.ka
  %i.rq = add nuw i32 %.val.i.i4958, 1
  store i32 %i.rq, ptr %16, align 4, !tbaa !10
  br label %lean_inc.exit3600

bb.kc:                                            ; preds = %bb.ka
  %.not.i.i4959 = icmp eq i32 %.val.i.i4958, 0
  br i1 %.not.i.i4959, label %lean_inc.exit3600, label %bb.kd

end_hunk_9
begin_hunk_10_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__7:bb.a
bb.ni:                                            ; preds = %lean_dec.exit4089
  %.not.i4723 = icmp eq i32 %i.vc, 0
  br i1 %.not.i4723, label %lean_dec_ref.exit4724, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ccw) #7
  br label %lean_dec_ref.exit4724

lean_dec_ref.exit4724:                            ; preds = %bb.nh, %bb.ni, %bb.nj
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.bm, i32 noundef 1)
  br i1 %.not.i3645, label %bb.nk, label %lean_dec.exit4087

bb.nk:                                            ; preds = %lean_dec_ref.exit4724
  %i.vf = load i32, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.vg = icmp sgt i32 %i.vf, 1
  br i1 %i.vg, label %bb.nl, label %bb.nm, !prof !11

bb.nl:                                            ; preds = %bb.nk
  %i.vh = add nsw i32 %i.vf, -1
  store i32 %i.vh, ptr %i.aj, align 4, !tbaa !10
  br label %lean_dec.exit4087

bb.nm:                                            ; preds = %bb.nk
  %.not.i4185 = icmp eq i32 %i.vf, 0
  br i1 %.not.i4185, label %lean_dec.exit4087, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aj) #7
  br label %lean_dec.exit4087

lean_dec.exit4087:                                ; preds = %bb.nn, %bb.nm, %bb.nl, %lean_dec_ref.exit4724
  %i.vi = load i32, ptr %9, align 4, !tbaa !10    ; 3 uses
  %i.vj = icmp sgt i32 %i.vi, 1
  br i1 %i.vj, label %bb.no, label %bb.np, !prof !11

bb.no:                                            ; preds = %lean_dec.exit4087
  %i.vk = add nsw i32 %i.vi, -1
  store i32 %i.vk, ptr %9, align 4, !tbaa !10
  br label %lean_dec_ref.exit4722

bb.np:                                            ; preds = %lean_dec.exit4087
  %.not.i4721 = icmp eq i32 %i.vi, 0
  br i1 %.not.i4721, label %lean_dec_ref.exit4722, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #7
  br label %lean_dec_ref.exit4722

lean_dec_ref.exit4722:                            ; preds = %bb.no, %bb.np, %bb.nq
  %i.vl = ptrtoint ptr %5 to i64
  %i.vm = and i64 %i.vl, 1
  %.not.i4084 = icmp eq i64 %i.vm, 0
  br i1 %.not.i4084, label %bb.nr, label %lean_dec.exit4085

bb.nr:                                            ; preds = %lean_dec_ref.exit4722
  %i.vn = load i32, ptr %5, align 4, !tbaa !10    ; 3 uses
  %i.vo = icmp sgt i32 %i.vn, 1
  br i1 %i.vo, label %bb.ns, label %bb.nt, !prof !11

bb.ns:                                            ; preds = %bb.nr
  %i.vp = add nsw i32 %i.vn, -1
  store i32 %i.vp, ptr %5, align 4, !tbaa !10
  br label %lean_dec.exit4085

bb.nt:                                            ; preds = %bb.nr
  %.not.i4187 = icmp eq i32 %i.vn, 0
  br i1 %.not.i4187, label %lean_dec.exit4085, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit4085

lean_dec.exit4085:                                ; preds = %bb.nu, %bb.nt, %bb.ns, %lean_dec_ref.exit4722
  br i1 %.not.i3479, label %bb.nv, label %lean_dec.exit4083

bb.nv:                                            ; preds = %lean_dec.exit4085
  %i.vq = load i32, ptr %2, align 4, !tbaa !10    ; 3 uses
  %i.vr = icmp sgt i32 %i.vq, 1
  br i1 %i.vr, label %bb.nw, label %bb.nx, !prof !11

bb.nw:                                            ; preds = %bb.nv
  %i.vs = add nsw i32 %i.vq, -1
  store i32 %i.vs, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit4083

bb.nx:                                            ; preds = %bb.nv
  %.not.i4189 = icmp eq i32 %i.vq, 0
  br i1 %.not.i4189, label %lean_dec.exit4083, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit4083

lean_dec.exit4083:                                ; preds = %bb.ny, %bb.nx, %bb.nw, %lean_dec.exit4085
  %i.vt = load i32, ptr %1, align 4, !tbaa !10    ; 3 uses
  %i.vu = icmp sgt i32 %i.vt, 1
  br i1 %i.vu, label %bb.nz, label %bb.oa, !prof !11

bb.nz:                                            ; preds = %lean_dec.exit4083
  %i.vv = add nsw i32 %i.vt, -1
  store i32 %i.vv, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit4720

bb.oa:                                            ; preds = %lean_dec.exit4083
  %.not.i4719 = icmp eq i32 %i.vt, 0
  br i1 %.not.i4719, label %lean_dec_ref.exit4720, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit4720

lean_dec_ref.exit4720:                            ; preds = %bb.nz, %bb.oa, %bb.ob
  br i1 %.not.i3659, label %bb.oc, label %lean_dec.exit4081

bb.oc:                                            ; preds = %lean_dec_ref.exit4720
  %i.vw = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.vx = icmp sgt i32 %i.vw, 1
  br i1 %i.vx, label %bb.od, label %bb.oe, !prof !11

bb.od:                                            ; preds = %bb.oc
  %i.vy = add nsw i32 %i.vw, -1
  store i32 %i.vy, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit4081

bb.oe:                                            ; preds = %bb.oc
  %.not.i4191 = icmp eq i32 %i.vw, 0
  br i1 %.not.i4191, label %lean_dec.exit4081, label %bb.of

bb.of:                                            ; preds = %bb.oe
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit4081

lean_dec.exit4081:                                ; preds = %bb.of, %bb.oe, %bb.od, %lean_dec_ref.exit4720
  %i.vz = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !14 ; 5 uses
  %.val4773 = load i32, ptr %i.pd, align 8, !tbaa !10
  %i.wb = icmp eq i32 %.val4773, 1
  br i1 %i.wb, label %lean_dec.exit, label %bb.og

bb.og:                                            ; preds = %lean_dec.exit4081
  %i.wc = ptrtoint ptr %i.wa to i64
  %i.wd = and i64 %i.wc, 1
  %.not.i3583 = icmp eq i64 %i.wd, 0
  br i1 %.not.i3583, label %bb.oh, label %lean_inc.exit3584

bb.oh:                                            ; preds = %bb.og
  %.val.i.i4995 = load i32, ptr %i.wa, align 4, !tbaa !10 ; 3 uses
  %i.we = icmp sgt i32 %.val.i.i4995, 0
  br i1 %i.we, label %bb.oi, label %bb.oj, !prof !11

bb.oi:                                            ; preds = %bb.oh
  %i.wf = add nuw i32 %.val.i.i4995, 1
  store i32 %i.wf, ptr %i.wa, align 4, !tbaa !10
  br label %lean_inc.exit3584

bb.oj:                                            ; preds = %bb.oh
  %.not.i.i4996 = icmp eq i32 %.val.i.i4995, 0
  br i1 %.not.i.i4996, label %lean_inc.exit3584, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.wg = atomicrmw sub ptr %i.wa, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3584

lean_inc.exit3584:                                ; preds = %bb.ok, %bb.oj, %bb.oi, %bb.og
  br i1 %.not.i4934, label %bb.ol, label %bb.op

bb.ol:                                            ; preds = %lean_inc.exit3584
  %i.wh = load i32, ptr %i.pd, align 8, !tbaa !10 ; 3 uses
  %i.wi = icmp sgt i32 %i.wh, 1
  br i1 %i.wi, label %bb.om, label %bb.on, !prof !11

bb.om:                                            ; preds = %bb.ol
  %i.wj = add nsw i32 %i.wh, -1
  store i32 %i.wj, ptr %i.pd, align 8, !tbaa !10
  br label %bb.op

bb.on:                                            ; preds = %bb.ol
  %.not.i4193 = icmp eq i32 %i.wh, 0
  br i1 %.not.i4193, label %bb.op, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.pd) #7
  br label %bb.op

bb.op:                                            ; preds = %lean_inc.exit3584, %bb.om, %bb.on, %bb.oo
  %i.wk = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 8
  store ptr %i.wa, ptr %i.wl, align 8, !tbaa !14
  br label %lean_dec.exit

bb.oq:                                            ; preds = %lean_dec.exit3953.thread
  %i.wm = load ptr, ptr %i.bkw, align 8, !tbaa !14 ; 10 uses
  %i.wn = load ptr, ptr %i.bky, align 8, !tbaa !14 ; 26 uses
  %i.wo = load ptr, ptr %i.bla, align 8, !tbaa !14 ; 26 uses
  br i1 %i.jo, label %bb.or, label %bb.uf

bb.or:                                            ; preds = %bb.oq
  br i1 %.not.i3655, label %bb.os, label %lean_dec.exit4077

bb.os:                                            ; preds = %bb.or
  %i.wp = load i32, ptr %i.cm, align 4, !tbaa !10 ; 3 uses
  %i.wq = icmp sgt i32 %i.wp, 1
  br i1 %i.wq, label %bb.ot, label %bb.ou, !prof !11

bb.ot:                                            ; preds = %bb.os
  %i.wr = add nsw i32 %i.wp, -1
  store i32 %i.wr, ptr %i.cm, align 4, !tbaa !10
  br label %lean_dec.exit4077

bb.ou:                                            ; preds = %bb.os
  %.not.i4195 = icmp eq i32 %i.wp, 0
  br i1 %.not.i4195, label %lean_dec.exit4077, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #7
  br label %lean_dec.exit4077

lean_dec.exit4077:                                ; preds = %bb.ov, %bb.ou, %bb.ot, %bb.or
  %i.ws = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__1(i8 noundef zeroext 0, ptr noundef %i.wm, ptr poison, ptr poison, ptr poison, ptr nonnull poison, ptr poison, ptr nonnull poison, ptr poison) ; 10 uses
  %i.wt = ptrtoint ptr %i.ws to i64               ; 2 uses
  %i.wu = and i64 %i.wt, 1
  %.not.i4998 = icmp eq i64 %i.wu, 0              ; 2 uses
  br i1 %.not.i4998, label %bb.ox, label %bb.ow

bb.ow:                                            ; preds = %lean_dec.exit4077
  %i.wv = lshr i64 %i.wt, 1
  %i.ww = trunc i64 %i.wv to i32
  br label %lean_obj_tag.exit5001

bb.ox:                                            ; preds = %lean_dec.exit4077
  %i.wx = getelementptr i8, ptr %i.ws, i64 4
  %.val.i5000 = load i32, ptr %i.wx, align 4
  %i.wy = lshr i32 %.val.i5000, 24
  br label %lean_obj_tag.exit5001

lean_obj_tag.exit5001:                            ; preds = %bb.ow, %bb.ox
  %.0.i4999 = phi i32 [ %i.ww, %bb.ow ], [ %i.wy, %bb.ox ]
  %i.wz = icmp eq i32 %.0.i4999, 0
  br i1 %i.wz, label %bb.oy, label %bb.sp

bb.oy:                                            ; preds = %lean_obj_tag.exit5001
  %i.xa = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !14 ; 12 uses
  %i.xc = ptrtoint ptr %i.xb to i64
  %i.xd = and i64 %i.xc, 1
  %.not.i5002 = icmp eq i64 %i.xd, 0
  br i1 %.not.i5002, label %bb.oz, label %lean_inc_n.exit5005

bb.oz:                                            ; preds = %bb.oy
  %.val.i.i5003 = load i32, ptr %i.xb, align 4, !tbaa !10 ; 3 uses
  %i.xe = icmp sgt i32 %.val.i.i5003, 0
  br i1 %i.xe, label %bb.pa, label %bb.pb, !prof !11

bb.pa:                                            ; preds = %bb.oz
  %i.xf = add nuw i32 %.val.i.i5003, 8
  store i32 %i.xf, ptr %i.xb, align 4, !tbaa !10
  br label %lean_inc_n.exit5005

bb.pb:                                            ; preds = %bb.oz
  %.not.i.i5004 = icmp eq i32 %.val.i.i5003, 0
  br i1 %.not.i.i5004, label %lean_inc_n.exit5005, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.xg = atomicrmw sub ptr %i.xb, i32 8 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit5005

lean_inc_n.exit5005:                              ; preds = %bb.oy, %bb.pa, %bb.pb, %bb.pc
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.ws, i32 noundef 1)
  %i.xh = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__17_once seq_cst, align 4, !tbaa !20
  %i.xi = icmp eq i32 %i.xh, 1
  br i1 %i.xi, label %bb.pd, label %bb.pe, !prof !11

bb.pd:                                            ; preds = %lean_inc_n.exit5005
  %i.xj = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__17, align 8, !tbaa !14
  br label %lean_obj_once.exit5007

bb.pe:                                            ; preds = %lean_inc_n.exit5005
  %i.xk = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__17, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__17_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__17) #7
  br label %lean_obj_once.exit5007

lean_obj_once.exit5007:                           ; preds = %bb.pd, %bb.pe
  %.0.i5006 = phi ptr [ %i.xj, %bb.pd ], [ %i.xk, %bb.pe ]
  %i.xl = ptrtoint ptr %i.wo to i64
  %i.xm = and i64 %i.xl, 1
  %.not.i5008 = icmp eq i64 %i.xm, 0              ; 2 uses
  br i1 %.not.i5008, label %bb.pf, label %lean_inc_n.exit5011

bb.pf:                                            ; preds = %lean_obj_once.exit5007
  %.val.i.i5009 = load i32, ptr %i.wo, align 4, !tbaa !10 ; 3 uses
  %i.xn = icmp sgt i32 %.val.i.i5009, 0
  br i1 %i.xn, label %bb.pg, label %bb.ph, !prof !11

bb.pg:                                            ; preds = %bb.pf
  %i.xo = add nuw i32 %.val.i.i5009, 2
  store i32 %i.xo, ptr %i.wo, align 4, !tbaa !10
  br label %lean_inc_n.exit5011

bb.ph:                                            ; preds = %bb.pf
  %.not.i.i5010 = icmp eq i32 %.val.i.i5009, 0
  br i1 %.not.i.i5010, label %lean_inc_n.exit5011, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.xp = atomicrmw sub ptr %i.wo, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit5011

lean_inc_n.exit5011:                              ; preds = %lean_obj_once.exit5007, %bb.pg, %bb.ph, %bb.pi
  %i.xq = ptrtoint ptr %i.wn to i64
  %i.xr = and i64 %i.xq, 1
  %.not.i5012 = icmp eq i64 %i.xr, 0              ; 2 uses
  br i1 %.not.i5012, label %bb.pj, label %lean_inc_n.exit5015

bb.pj:                                            ; preds = %lean_inc_n.exit5011
  %.val.i.i5013 = load i32, ptr %i.wn, align 4, !tbaa !10 ; 3 uses
  %i.xs = icmp sgt i32 %.val.i.i5013, 0
  br i1 %i.xs, label %bb.pk, label %bb.pl, !prof !11

bb.pk:                                            ; preds = %bb.pj
  %i.xt = add nuw i32 %.val.i.i5013, 2
  store i32 %i.xt, ptr %i.wn, align 4, !tbaa !10
  br label %lean_inc_n.exit5015

bb.pl:                                            ; preds = %bb.pj
  %.not.i.i5014 = icmp eq i32 %.val.i.i5013, 0
  br i1 %.not.i.i5014, label %lean_inc_n.exit5015, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.xu = atomicrmw sub ptr %i.wn, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit5015

lean_inc_n.exit5015:                              ; preds = %lean_inc_n.exit5011, %bb.pk, %bb.pl, %bb.pm
  %i.xv = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.wn, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__18_value, ptr noundef %i.wo) #7
  %i.xw = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__2_value, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__3_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__16_value) #7
  %i.xx = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  store ptr %i.xw, ptr %i.xy, align 8, !tbaa !14
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xx, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.xz, align 8, !tbaa !14
  %i.ya = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  store ptr %i.xx, ptr %i.yb, align 8, !tbaa !14
  %i.yc = getelementptr inbounds nuw i8, ptr %i.ya, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.yc, align 8, !tbaa !14
  %i.yd = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  store ptr %i.xb, ptr %i.ye, align 8, !tbaa !14
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yd, i64 16
  store ptr %.0.i5006, ptr %i.yf, align 8, !tbaa !14
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yd, i64 24
  store ptr %i.xv, ptr %i.yg, align 8, !tbaa !14
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yd, i64 32
  store ptr %i.ya, ptr %i.yh, align 8, !tbaa !14
  %i.yi = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__33_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__34_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__11_value) #7
  %i.yj = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  store ptr %i.xb, ptr %i.yk, align 8, !tbaa !14
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yj, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__12_value, ptr %i.yl, align 8, !tbaa !14
  %i.ym = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14_once seq_cst, align 4, !tbaa !20
  %i.yn = icmp eq i32 %i.ym, 1
  br i1 %i.yn, label %bb.pn, label %bb.po, !prof !11

bb.pn:                                            ; preds = %lean_inc_n.exit5015
  %i.yo = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14, align 8, !tbaa !14
  br label %lean_obj_once.exit5021

bb.po:                                            ; preds = %lean_inc_n.exit5015
  %i.yp = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14) #7
  br label %lean_obj_once.exit5021

lean_obj_once.exit5021:                           ; preds = %bb.pn, %bb.po
  %.0.i5020 = phi ptr [ %i.yo, %bb.pn ], [ %i.yp, %bb.po ]
  %i.yq = tail call ptr @l_Lean_Name_mkStr2(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__4_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__63_value) #7
  %i.yr = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.wn, ptr noundef %i.yq, ptr noundef %i.wo) #7
  %i.ys = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  store ptr %i.xb, ptr %i.yt, align 8, !tbaa !14
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 16
  store ptr %.0.i5020, ptr %i.yu, align 8, !tbaa !14
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ys, i64 24
  store ptr %i.yr, ptr %i.yv, align 8, !tbaa !14
  %i.yw = getelementptr inbounds nuw i8, ptr %i.ys, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.yw, align 8, !tbaa !14
  %i.yx = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.xb, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef nonnull %i.ys) #7
  %i.yy = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  store ptr %i.xb, ptr %i.yz, align 8, !tbaa !14
  %i.za = getelementptr inbounds nuw i8, ptr %i.yy, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__15_value, ptr %i.za, align 8, !tbaa !14
  %i.zb = tail call ptr @l_Lean_Syntax_node3(ptr noundef %i.xb, ptr noundef %i.yi, ptr noundef nonnull %i.yj, ptr noundef %i.yx, ptr noundef nonnull %i.yy) #7
  %i.zc = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.xb, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef %i.zb) #7
  %i.zd = tail call ptr @l_Lean_Syntax_node2(ptr noundef %i.xb, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__36_value, ptr noundef nonnull %i.yd, ptr noundef %i.zc) #7
  br i1 %.not.i3653, label %bb.pp, label %lean_inc.exit3582

bb.pp:                                            ; preds = %lean_obj_once.exit5021
  %.val.i.i5022 = load i32, ptr %16, align 4, !tbaa !10 ; 3 uses
  %i.ze = icmp sgt i32 %.val.i.i5022, 0
  br i1 %i.ze, label %bb.pq, label %bb.pr, !prof !11

bb.pq:                                            ; preds = %bb.pp
  %i.zf = add nuw i32 %.val.i.i5022, 1
  store i32 %i.zf, ptr %16, align 4, !tbaa !10
  br label %lean_inc.exit3582

bb.pr:                                            ; preds = %bb.pp
  %.not.i.i5023 = icmp eq i32 %.val.i.i5022, 0
  br i1 %.not.i.i5023, label %lean_inc.exit3582, label %bb.ps

end_hunk_10
begin_hunk_11_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__7:bb.a

bb.sw:                                            ; preds = %lean_dec.exit4055
  %i.act = add nsw i32 %i.acr, -1
  store i32 %i.act, ptr %i.ccw, align 8, !tbaa !10
  br label %lean_dec_ref.exit4706

bb.sx:                                            ; preds = %lean_dec.exit4055
  %.not.i4705 = icmp eq i32 %i.acr, 0
  br i1 %.not.i4705, label %lean_dec_ref.exit4706, label %bb.sy

bb.sy:                                            ; preds = %bb.sx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ccw) #7
  br label %lean_dec_ref.exit4706

lean_dec_ref.exit4706:                            ; preds = %bb.sw, %bb.sx, %bb.sy
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.bm, i32 noundef 1)
  br i1 %.not.i3645, label %bb.sz, label %lean_dec.exit4053

bb.sz:                                            ; preds = %lean_dec_ref.exit4706
  %i.acu = load i32, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.acv = icmp sgt i32 %i.acu, 1
  br i1 %i.acv, label %bb.ta, label %bb.tb, !prof !11

bb.ta:                                            ; preds = %bb.sz
  %i.acw = add nsw i32 %i.acu, -1
  store i32 %i.acw, ptr %i.aj, align 4, !tbaa !10
  br label %lean_dec.exit4053

bb.tb:                                            ; preds = %bb.sz
  %.not.i4213 = icmp eq i32 %i.acu, 0
  br i1 %.not.i4213, label %lean_dec.exit4053, label %bb.tc

bb.tc:                                            ; preds = %bb.tb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aj) #7
  br label %lean_dec.exit4053

lean_dec.exit4053:                                ; preds = %bb.tc, %bb.tb, %bb.ta, %lean_dec_ref.exit4706
  %i.acx = load i32, ptr %9, align 4, !tbaa !10   ; 3 uses
  %i.acy = icmp sgt i32 %i.acx, 1
  br i1 %i.acy, label %bb.td, label %bb.te, !prof !11

bb.td:                                            ; preds = %lean_dec.exit4053
  %i.acz = add nsw i32 %i.acx, -1
  store i32 %i.acz, ptr %9, align 4, !tbaa !10
  br label %lean_dec_ref.exit4704

bb.te:                                            ; preds = %lean_dec.exit4053
  %.not.i4703 = icmp eq i32 %i.acx, 0
  br i1 %.not.i4703, label %lean_dec_ref.exit4704, label %bb.tf

bb.tf:                                            ; preds = %bb.te
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #7
  br label %lean_dec_ref.exit4704

lean_dec_ref.exit4704:                            ; preds = %bb.td, %bb.te, %bb.tf
  %i.ada = ptrtoint ptr %5 to i64
  %i.adb = and i64 %i.ada, 1
  %.not.i4050 = icmp eq i64 %i.adb, 0
  br i1 %.not.i4050, label %bb.tg, label %lean_dec.exit4051

bb.tg:                                            ; preds = %lean_dec_ref.exit4704
  %i.adc = load i32, ptr %5, align 4, !tbaa !10   ; 3 uses
  %i.add = icmp sgt i32 %i.adc, 1
  br i1 %i.add, label %bb.th, label %bb.ti, !prof !11

bb.th:                                            ; preds = %bb.tg
  %i.ade = add nsw i32 %i.adc, -1
  store i32 %i.ade, ptr %5, align 4, !tbaa !10
  br label %lean_dec.exit4051

bb.ti:                                            ; preds = %bb.tg
  %.not.i4215 = icmp eq i32 %i.adc, 0
  br i1 %.not.i4215, label %lean_dec.exit4051, label %bb.tj

bb.tj:                                            ; preds = %bb.ti
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit4051

lean_dec.exit4051:                                ; preds = %bb.tj, %bb.ti, %bb.th, %lean_dec_ref.exit4704
  br i1 %.not.i3479, label %bb.tk, label %lean_dec.exit4049

bb.tk:                                            ; preds = %lean_dec.exit4051
  %i.adf = load i32, ptr %2, align 4, !tbaa !10   ; 3 uses
  %i.adg = icmp sgt i32 %i.adf, 1
  br i1 %i.adg, label %bb.tl, label %bb.tm, !prof !11

bb.tl:                                            ; preds = %bb.tk
  %i.adh = add nsw i32 %i.adf, -1
  store i32 %i.adh, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit4049

bb.tm:                                            ; preds = %bb.tk
  %.not.i4217 = icmp eq i32 %i.adf, 0
  br i1 %.not.i4217, label %lean_dec.exit4049, label %bb.tn

bb.tn:                                            ; preds = %bb.tm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit4049

lean_dec.exit4049:                                ; preds = %bb.tn, %bb.tm, %bb.tl, %lean_dec.exit4051
  %i.adi = load i32, ptr %1, align 4, !tbaa !10   ; 3 uses
  %i.adj = icmp sgt i32 %i.adi, 1
  br i1 %i.adj, label %bb.to, label %bb.tp, !prof !11

bb.to:                                            ; preds = %lean_dec.exit4049
  %i.adk = add nsw i32 %i.adi, -1
  store i32 %i.adk, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit4702

bb.tp:                                            ; preds = %lean_dec.exit4049
  %.not.i4701 = icmp eq i32 %i.adi, 0
  br i1 %.not.i4701, label %lean_dec_ref.exit4702, label %bb.tq

bb.tq:                                            ; preds = %bb.tp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit4702

lean_dec_ref.exit4702:                            ; preds = %bb.to, %bb.tp, %bb.tq
  br i1 %.not.i3659, label %bb.tr, label %lean_dec.exit4047

bb.tr:                                            ; preds = %lean_dec_ref.exit4702
  %i.adl = load i32, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.adm = icmp sgt i32 %i.adl, 1
  br i1 %i.adm, label %bb.ts, label %bb.tt, !prof !11

bb.ts:                                            ; preds = %bb.tr
  %i.adn = add nsw i32 %i.adl, -1
  store i32 %i.adn, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit4047

bb.tt:                                            ; preds = %bb.tr
  %.not.i4219 = icmp eq i32 %i.adl, 0
  br i1 %.not.i4219, label %lean_dec.exit4047, label %bb.tu

bb.tu:                                            ; preds = %bb.tt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit4047

lean_dec.exit4047:                                ; preds = %bb.tu, %bb.tt, %bb.ts, %lean_dec_ref.exit4702
  %i.ado = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !14 ; 5 uses
  %.val4771 = load i32, ptr %i.ws, align 8, !tbaa !10
  %i.adq = icmp eq i32 %.val4771, 1
  br i1 %i.adq, label %lean_dec.exit, label %bb.tv

bb.tv:                                            ; preds = %lean_dec.exit4047
  %i.adr = ptrtoint ptr %i.adp to i64
  %i.ads = and i64 %i.adr, 1
  %.not.i3565 = icmp eq i64 %i.ads, 0
  br i1 %.not.i3565, label %bb.tw, label %lean_inc.exit3566

bb.tw:                                            ; preds = %bb.tv
  %.val.i.i5059 = load i32, ptr %i.adp, align 4, !tbaa !10 ; 3 uses
  %i.adt = icmp sgt i32 %.val.i.i5059, 0
  br i1 %i.adt, label %bb.tx, label %bb.ty, !prof !11

bb.tx:                                            ; preds = %bb.tw
  %i.adu = add nuw i32 %.val.i.i5059, 1
  store i32 %i.adu, ptr %i.adp, align 4, !tbaa !10
  br label %lean_inc.exit3566

bb.ty:                                            ; preds = %bb.tw
  %.not.i.i5060 = icmp eq i32 %.val.i.i5059, 0
  br i1 %.not.i.i5060, label %lean_inc.exit3566, label %bb.tz

bb.tz:                                            ; preds = %bb.ty
  %i.adv = atomicrmw sub ptr %i.adp, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3566

lean_inc.exit3566:                                ; preds = %bb.tz, %bb.ty, %bb.tx, %bb.tv
  br i1 %.not.i4998, label %bb.ua, label %bb.ue

bb.ua:                                            ; preds = %lean_inc.exit3566
  %i.adw = load i32, ptr %i.ws, align 8, !tbaa !10 ; 3 uses
  %i.adx = icmp sgt i32 %i.adw, 1
  br i1 %i.adx, label %bb.ub, label %bb.uc, !prof !11

bb.ub:                                            ; preds = %bb.ua
  %i.ady = add nsw i32 %i.adw, -1
  store i32 %i.ady, ptr %i.ws, align 8, !tbaa !10
  br label %bb.ue

bb.uc:                                            ; preds = %bb.ua
  %.not.i4221 = icmp eq i32 %i.adw, 0
  br i1 %.not.i4221, label %bb.ue, label %bb.ud

bb.ud:                                            ; preds = %bb.uc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ws) #7
  br label %bb.ue

bb.ue:                                            ; preds = %lean_inc.exit3566, %bb.ub, %bb.uc, %bb.ud
  %i.adz = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 8
  store ptr %i.adp, ptr %i.aea, align 8, !tbaa !14
  br label %lean_dec.exit

bb.uf:                                            ; preds = %bb.oq
  br i1 %.not.i3655, label %bb.ug, label %lean_dec.exit4043

bb.ug:                                            ; preds = %bb.uf
  %i.aeb = load i32, ptr %i.cm, align 4, !tbaa !10 ; 3 uses
  %i.aec = icmp sgt i32 %i.aeb, 1
  br i1 %i.aec, label %bb.uh, label %bb.ui, !prof !11

bb.uh:                                            ; preds = %bb.ug
  %i.aed = add nsw i32 %i.aeb, -1
  store i32 %i.aed, ptr %i.cm, align 4, !tbaa !10
  br label %lean_dec.exit4043

bb.ui:                                            ; preds = %bb.ug
  %.not.i4223 = icmp eq i32 %i.aeb, 0
  br i1 %.not.i4223, label %lean_dec.exit4043, label %bb.uj

bb.uj:                                            ; preds = %bb.ui
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #7
  br label %lean_dec.exit4043

lean_dec.exit4043:                                ; preds = %bb.uj, %bb.ui, %bb.uh, %bb.uf
  %i.aee = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__1(i8 noundef zeroext 0, ptr noundef %i.wm, ptr poison, ptr poison, ptr poison, ptr nonnull poison, ptr poison, ptr nonnull poison, ptr poison) ; 10 uses
  %i.aef = ptrtoint ptr %i.aee to i64             ; 2 uses
  %i.aeg = and i64 %i.aef, 1
  %.not.i5062 = icmp eq i64 %i.aeg, 0             ; 2 uses
  br i1 %.not.i5062, label %bb.ul, label %bb.uk

bb.uk:                                            ; preds = %lean_dec.exit4043
  %i.aeh = lshr i64 %i.aef, 1
  %i.aei = trunc i64 %i.aeh to i32
  br label %lean_obj_tag.exit5065

bb.ul:                                            ; preds = %lean_dec.exit4043
  %i.aej = getelementptr i8, ptr %i.aee, i64 4
  %.val.i5064 = load i32, ptr %i.aej, align 4
  %i.aek = lshr i32 %.val.i5064, 24
  br label %lean_obj_tag.exit5065

lean_obj_tag.exit5065:                            ; preds = %bb.uk, %bb.ul
  %.0.i5063 = phi i32 [ %i.aei, %bb.uk ], [ %i.aek, %bb.ul ]
  %i.ael = icmp eq i32 %.0.i5063, 0
  br i1 %i.ael, label %bb.um, label %bb.yd

bb.um:                                            ; preds = %lean_obj_tag.exit5065
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !14 ; 12 uses
  %i.aeo = ptrtoint ptr %i.aen to i64
  %i.aep = and i64 %i.aeo, 1
  %.not.i5066 = icmp eq i64 %i.aep, 0
  br i1 %.not.i5066, label %bb.un, label %lean_inc_n.exit5069

bb.un:                                            ; preds = %bb.um
  %.val.i.i5067 = load i32, ptr %i.aen, align 4, !tbaa !10 ; 3 uses
  %i.aeq = icmp sgt i32 %.val.i.i5067, 0
  br i1 %i.aeq, label %bb.uo, label %bb.up, !prof !11

bb.uo:                                            ; preds = %bb.un
  %i.aer = add nuw i32 %.val.i.i5067, 8
  store i32 %i.aer, ptr %i.aen, align 4, !tbaa !10
  br label %lean_inc_n.exit5069

bb.up:                                            ; preds = %bb.un
  %.not.i.i5068 = icmp eq i32 %.val.i.i5067, 0
  br i1 %.not.i.i5068, label %lean_inc_n.exit5069, label %bb.uq

bb.uq:                                            ; preds = %bb.up
  %i.aes = atomicrmw sub ptr %i.aen, i32 8 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit5069

lean_inc_n.exit5069:                              ; preds = %bb.um, %bb.uo, %bb.up, %bb.uq
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.aee, i32 noundef 1)
  %i.aet = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__20_once seq_cst, align 4, !tbaa !20
  %i.aeu = icmp eq i32 %i.aet, 1
  br i1 %i.aeu, label %bb.ur, label %bb.us, !prof !11

bb.ur:                                            ; preds = %lean_inc_n.exit5069
  %i.aev = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__20, align 8, !tbaa !14
  br label %lean_obj_once.exit5071

bb.us:                                            ; preds = %lean_inc_n.exit5069
  %i.aew = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__20, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__20_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__20) #7
  br label %lean_obj_once.exit5071

lean_obj_once.exit5071:                           ; preds = %bb.ur, %bb.us
  %.0.i5070 = phi ptr [ %i.aev, %bb.ur ], [ %i.aew, %bb.us ]
  %i.aex = ptrtoint ptr %i.wo to i64
  %i.aey = and i64 %i.aex, 1
  %.not.i5072 = icmp eq i64 %i.aey, 0             ; 2 uses
  br i1 %.not.i5072, label %bb.ut, label %lean_inc_n.exit5075

bb.ut:                                            ; preds = %lean_obj_once.exit5071
  %.val.i.i5073 = load i32, ptr %i.wo, align 4, !tbaa !10 ; 3 uses
  %i.aez = icmp sgt i32 %.val.i.i5073, 0
  br i1 %i.aez, label %bb.uu, label %bb.uv, !prof !11

bb.uu:                                            ; preds = %bb.ut
  %i.afa = add nuw i32 %.val.i.i5073, 2
  store i32 %i.afa, ptr %i.wo, align 4, !tbaa !10
  br label %lean_inc_n.exit5075

bb.uv:                                            ; preds = %bb.ut
  %.not.i.i5074 = icmp eq i32 %.val.i.i5073, 0
  br i1 %.not.i.i5074, label %lean_inc_n.exit5075, label %bb.uw

bb.uw:                                            ; preds = %bb.uv
  %i.afb = atomicrmw sub ptr %i.wo, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit5075

lean_inc_n.exit5075:                              ; preds = %lean_obj_once.exit5071, %bb.uu, %bb.uv, %bb.uw
  %i.afc = ptrtoint ptr %i.wn to i64
  %i.afd = and i64 %i.afc, 1
  %.not.i5076 = icmp eq i64 %i.afd, 0             ; 2 uses
  br i1 %.not.i5076, label %bb.ux, label %lean_inc_n.exit5079

bb.ux:                                            ; preds = %lean_inc_n.exit5075
  %.val.i.i5077 = load i32, ptr %i.wn, align 4, !tbaa !10 ; 3 uses
  %i.afe = icmp sgt i32 %.val.i.i5077, 0
  br i1 %i.afe, label %bb.uy, label %bb.uz, !prof !11

bb.uy:                                            ; preds = %bb.ux
  %i.aff = add nuw i32 %.val.i.i5077, 2
  store i32 %i.aff, ptr %i.wn, align 4, !tbaa !10
  br label %lean_inc_n.exit5079

bb.uz:                                            ; preds = %bb.ux
  %.not.i.i5078 = icmp eq i32 %.val.i.i5077, 0
  br i1 %.not.i.i5078, label %lean_inc_n.exit5079, label %bb.va

bb.va:                                            ; preds = %bb.uz
  %i.afg = atomicrmw sub ptr %i.wn, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit5079

lean_inc_n.exit5079:                              ; preds = %lean_inc_n.exit5075, %bb.uy, %bb.uz, %bb.va
  %i.afh = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.wn, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__21_value, ptr noundef %i.wo) #7
  %i.afi = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__2_value, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__3_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__19_value) #7
  %i.afj = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 8
  store ptr %i.afi, ptr %i.afk, align 8, !tbaa !14
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afj, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.afl, align 8, !tbaa !14
  %i.afm = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 8
  store ptr %i.afj, ptr %i.afn, align 8, !tbaa !14
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afm, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.afo, align 8, !tbaa !14
  %i.afp = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 8
  store ptr %i.aen, ptr %i.afq, align 8, !tbaa !14
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afp, i64 16
  store ptr %.0.i5070, ptr %i.afr, align 8, !tbaa !14
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afp, i64 24
  store ptr %i.afh, ptr %i.afs, align 8, !tbaa !14
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afp, i64 32
  store ptr %i.afm, ptr %i.aft, align 8, !tbaa !14
  %i.afu = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__33_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__34_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__11_value) #7
  %i.afv = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  store ptr %i.aen, ptr %i.afw, align 8, !tbaa !14
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afv, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__12_value, ptr %i.afx, align 8, !tbaa !14
  %i.afy = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14_once seq_cst, align 4, !tbaa !20
  %i.afz = icmp eq i32 %i.afy, 1
  br i1 %i.afz, label %bb.vb, label %bb.vc, !prof !11

bb.vb:                                            ; preds = %lean_inc_n.exit5079
  %i.aga = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14, align 8, !tbaa !14
  br label %lean_obj_once.exit5085

bb.vc:                                            ; preds = %lean_inc_n.exit5079
  %i.agb = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14) #7
  br label %lean_obj_once.exit5085

lean_obj_once.exit5085:                           ; preds = %bb.vb, %bb.vc
  %.0.i5084 = phi ptr [ %i.aga, %bb.vb ], [ %i.agb, %bb.vc ]
  %i.agc = tail call ptr @l_Lean_Name_mkStr2(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__4_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__63_value) #7
  %i.agd = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.wn, ptr noundef %i.agc, ptr noundef %i.wo) #7
  %i.age = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 8
  store ptr %i.aen, ptr %i.agf, align 8, !tbaa !14
  %i.agg = getelementptr inbounds nuw i8, ptr %i.age, i64 16
  store ptr %.0.i5084, ptr %i.agg, align 8, !tbaa !14
  %i.agh = getelementptr inbounds nuw i8, ptr %i.age, i64 24
  store ptr %i.agd, ptr %i.agh, align 8, !tbaa !14
  %i.agi = getelementptr inbounds nuw i8, ptr %i.age, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.agi, align 8, !tbaa !14
  %i.agj = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.aen, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef nonnull %i.age) #7
  %i.agk = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agk, i64 8
  store ptr %i.aen, ptr %i.agl, align 8, !tbaa !14
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agk, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__15_value, ptr %i.agm, align 8, !tbaa !14
  %i.agn = tail call ptr @l_Lean_Syntax_node3(ptr noundef %i.aen, ptr noundef %i.afu, ptr noundef nonnull %i.afv, ptr noundef %i.agj, ptr noundef nonnull %i.agk) #7
  %i.ago = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.aen, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef %i.agn) #7
  %i.agp = tail call ptr @l_Lean_Syntax_node2(ptr noundef %i.aen, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__36_value, ptr noundef nonnull %i.afp, ptr noundef %i.ago) #7
  br i1 %.not.i3653, label %bb.vd, label %lean_inc.exit3564

bb.vd:                                            ; preds = %lean_obj_once.exit5085
  %.val.i.i5086 = load i32, ptr %16, align 4, !tbaa !10 ; 3 uses
  %i.agq = icmp sgt i32 %.val.i.i5086, 0
  br i1 %i.agq, label %bb.ve, label %bb.vf, !prof !11

bb.ve:                                            ; preds = %bb.vd
  %i.agr = add nuw i32 %.val.i.i5086, 1
  store i32 %i.agr, ptr %16, align 4, !tbaa !10
  br label %lean_inc.exit3564

bb.vf:                                            ; preds = %bb.vd
  %.not.i.i5087 = icmp eq i32 %.val.i.i5086, 0
  br i1 %.not.i.i5087, label %lean_inc.exit3564, label %bb.vg

end_hunk_11
begin_hunk_12_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__7:bb.a
lean_dec_ref.exit4686:                            ; preds = %bb.yr, %bb.ys, %bb.yt
  %i.akm = ptrtoint ptr %5 to i64
  %i.akn = and i64 %i.akm, 1
  %.not.i4016 = icmp eq i64 %i.akn, 0
  br i1 %.not.i4016, label %bb.yu, label %lean_dec.exit4017

bb.yu:                                            ; preds = %lean_dec_ref.exit4686
  %i.ako = load i32, ptr %5, align 4, !tbaa !10   ; 3 uses
  %i.akp = icmp sgt i32 %i.ako, 1
  br i1 %i.akp, label %bb.yv, label %bb.yw, !prof !11

bb.yv:                                            ; preds = %bb.yu
  %i.akq = add nsw i32 %i.ako, -1
  store i32 %i.akq, ptr %5, align 4, !tbaa !10
  br label %lean_dec.exit4017

bb.yw:                                            ; preds = %bb.yu
  %.not.i4243 = icmp eq i32 %i.ako, 0
  br i1 %.not.i4243, label %lean_dec.exit4017, label %bb.yx

bb.yx:                                            ; preds = %bb.yw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit4017

lean_dec.exit4017:                                ; preds = %bb.yx, %bb.yw, %bb.yv, %lean_dec_ref.exit4686
  br i1 %.not.i3479, label %bb.yy, label %lean_dec.exit4015

bb.yy:                                            ; preds = %lean_dec.exit4017
  %i.akr = load i32, ptr %2, align 4, !tbaa !10   ; 3 uses
  %i.aks = icmp sgt i32 %i.akr, 1
  br i1 %i.aks, label %bb.yz, label %bb.za, !prof !11

bb.yz:                                            ; preds = %bb.yy
  %i.akt = add nsw i32 %i.akr, -1
  store i32 %i.akt, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit4015

bb.za:                                            ; preds = %bb.yy
  %.not.i4245 = icmp eq i32 %i.akr, 0
  br i1 %.not.i4245, label %lean_dec.exit4015, label %bb.zb

bb.zb:                                            ; preds = %bb.za
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit4015

lean_dec.exit4015:                                ; preds = %bb.zb, %bb.za, %bb.yz, %lean_dec.exit4017
  %i.aku = load i32, ptr %1, align 4, !tbaa !10   ; 3 uses
  %i.akv = icmp sgt i32 %i.aku, 1
  br i1 %i.akv, label %bb.zc, label %bb.zd, !prof !11

bb.zc:                                            ; preds = %lean_dec.exit4015
  %i.akw = add nsw i32 %i.aku, -1
  store i32 %i.akw, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit4684

bb.zd:                                            ; preds = %lean_dec.exit4015
  %.not.i4683 = icmp eq i32 %i.aku, 0
  br i1 %.not.i4683, label %lean_dec_ref.exit4684, label %bb.ze

bb.ze:                                            ; preds = %bb.zd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit4684

lean_dec_ref.exit4684:                            ; preds = %bb.zc, %bb.zd, %bb.ze
  br i1 %.not.i3659, label %bb.zf, label %lean_dec.exit4013

bb.zf:                                            ; preds = %lean_dec_ref.exit4684
  %i.akx = load i32, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.aky = icmp sgt i32 %i.akx, 1
  br i1 %i.aky, label %bb.zg, label %bb.zh, !prof !11

bb.zg:                                            ; preds = %bb.zf
  %i.akz = add nsw i32 %i.akx, -1
  store i32 %i.akz, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit4013

bb.zh:                                            ; preds = %bb.zf
  %.not.i4247 = icmp eq i32 %i.akx, 0
  br i1 %.not.i4247, label %lean_dec.exit4013, label %bb.zi

bb.zi:                                            ; preds = %bb.zh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit4013

lean_dec.exit4013:                                ; preds = %bb.zi, %bb.zh, %bb.zg, %lean_dec_ref.exit4684
  %i.ala = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
  %i.alb = load ptr, ptr %i.ala, align 8, !tbaa !14 ; 5 uses
  %.val4769 = load i32, ptr %i.aee, align 8, !tbaa !10
  %i.alc = icmp eq i32 %.val4769, 1
  br i1 %i.alc, label %lean_dec.exit, label %bb.zj

bb.zj:                                            ; preds = %lean_dec.exit4013
  %i.ald = ptrtoint ptr %i.alb to i64
  %i.ale = and i64 %i.ald, 1
  %.not.i3547 = icmp eq i64 %i.ale, 0
  br i1 %.not.i3547, label %bb.zk, label %lean_inc.exit3548

bb.zk:                                            ; preds = %bb.zj
  %.val.i.i5123 = load i32, ptr %i.alb, align 4, !tbaa !10 ; 3 uses
  %i.alf = icmp sgt i32 %.val.i.i5123, 0
  br i1 %i.alf, label %bb.zl, label %bb.zm, !prof !11

bb.zl:                                            ; preds = %bb.zk
  %i.alg = add nuw i32 %.val.i.i5123, 1
  store i32 %i.alg, ptr %i.alb, align 4, !tbaa !10
  br label %lean_inc.exit3548

bb.zm:                                            ; preds = %bb.zk
  %.not.i.i5124 = icmp eq i32 %.val.i.i5123, 0
  br i1 %.not.i.i5124, label %lean_inc.exit3548, label %bb.zn

bb.zn:                                            ; preds = %bb.zm
  %i.alh = atomicrmw sub ptr %i.alb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3548

lean_inc.exit3548:                                ; preds = %bb.zn, %bb.zm, %bb.zl, %bb.zj
  br i1 %.not.i5062, label %bb.zo, label %bb.zs

bb.zo:                                            ; preds = %lean_inc.exit3548
  %i.ali = load i32, ptr %i.aee, align 8, !tbaa !10 ; 3 uses
  %i.alj = icmp sgt i32 %i.ali, 1
  br i1 %i.alj, label %bb.zp, label %bb.zq, !prof !11

bb.zp:                                            ; preds = %bb.zo
  %i.alk = add nsw i32 %i.ali, -1
  store i32 %i.alk, ptr %i.aee, align 8, !tbaa !10
  br label %bb.zs

bb.zq:                                            ; preds = %bb.zo
  %.not.i4249 = icmp eq i32 %i.ali, 0
  br i1 %.not.i4249, label %bb.zs, label %bb.zr

bb.zr:                                            ; preds = %bb.zq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aee) #7
  br label %bb.zs

bb.zs:                                            ; preds = %lean_inc.exit3548, %bb.zp, %bb.zq, %bb.zr
  %i.all = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 8
  store ptr %i.alb, ptr %i.alm, align 8, !tbaa !14
  br label %lean_dec.exit

bb.zt:                                            ; preds = %lean_obj_tag.exit5140
  %i.aln = load i32, ptr %i.bqj, align 8, !tbaa !10 ; 3 uses
  %i.alo = icmp sgt i32 %i.aln, 1
  br i1 %i.alo, label %bb.zu, label %bb.zv, !prof !11

bb.zu:                                            ; preds = %bb.zt
  %i.alp = add nsw i32 %i.aln, -1
  store i32 %i.alp, ptr %i.bqj, align 8, !tbaa !10
  br label %lean_dec.exit4005

bb.zv:                                            ; preds = %bb.zt
  %.not.i4681 = icmp eq i32 %i.aln, 0
  br i1 %.not.i4681, label %lean_dec.exit4005, label %bb.zw

bb.zw:                                            ; preds = %bb.zv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bqj) #7
  br label %lean_dec.exit4005

lean_dec.exit4005:                                ; preds = %bb.zu, %bb.zv, %bb.zw
  %i.alq = load i32, ptr %.0.i5292, align 4, !tbaa !10 ; 3 uses
  %i.alr = icmp sgt i32 %i.alq, 1
  br i1 %i.alr, label %bb.zx, label %bb.zy, !prof !11

bb.zx:                                            ; preds = %lean_dec.exit4005
  %i.als = add nsw i32 %i.alq, -1
  store i32 %i.als, ptr %.0.i5292, align 4, !tbaa !10
  br label %lean_dec.exit4003

bb.zy:                                            ; preds = %lean_dec.exit4005
  %.not.i4679 = icmp eq i32 %i.alq, 0
  br i1 %.not.i4679, label %lean_dec.exit4003, label %bb.zz

bb.zz:                                            ; preds = %bb.zy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i5292) #7
  br label %lean_dec.exit4003

lean_dec.exit4003:                                ; preds = %bb.zx, %bb.zy, %bb.zz
  %i.alt = load i32, ptr %i.ccw, align 8, !tbaa !10 ; 3 uses
  %i.alu = icmp sgt i32 %i.alt, 1
  br i1 %i.alu, label %bb.aaa, label %bb.aab, !prof !11

bb.aaa:                                           ; preds = %lean_dec.exit4003
  %i.alv = add nsw i32 %i.alt, -1
  store i32 %i.alv, ptr %i.ccw, align 8, !tbaa !10
  br label %lean_dec_ref.exit4678

bb.aab:                                           ; preds = %lean_dec.exit4003
  %.not.i4677 = icmp eq i32 %i.alt, 0
  br i1 %.not.i4677, label %lean_dec_ref.exit4678, label %bb.aac

bb.aac:                                           ; preds = %bb.aab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ccw) #7
  br label %lean_dec_ref.exit4678

lean_dec_ref.exit4678:                            ; preds = %bb.aaa, %bb.aab, %bb.aac
  br i1 %.not.i3655, label %bb.aad, label %lean_dec.exit4001

bb.aad:                                           ; preds = %lean_dec_ref.exit4678
  %i.alw = load i32, ptr %i.cm, align 4, !tbaa !10 ; 3 uses
  %i.alx = icmp sgt i32 %i.alw, 1
  br i1 %i.alx, label %bb.aae, label %bb.aaf, !prof !11

bb.aae:                                           ; preds = %bb.aad
  %i.aly = add nsw i32 %i.alw, -1
  store i32 %i.aly, ptr %i.cm, align 4, !tbaa !10
  br label %lean_dec.exit4001

bb.aaf:                                           ; preds = %bb.aad
  %.not.i4255 = icmp eq i32 %i.alw, 0
  br i1 %.not.i4255, label %lean_dec.exit4001, label %bb.aag

bb.aag:                                           ; preds = %bb.aaf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #7
  br label %lean_dec.exit4001

lean_dec.exit4001:                                ; preds = %bb.aag, %bb.aaf, %bb.aae, %lean_dec_ref.exit4678
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.bm, i32 noundef 1)
  br i1 %.not.i3645, label %bb.aah, label %lean_dec.exit3999

bb.aah:                                           ; preds = %lean_dec.exit4001
  %i.alz = load i32, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.ama = icmp sgt i32 %i.alz, 1
  br i1 %i.ama, label %bb.aai, label %bb.aaj, !prof !11

bb.aai:                                           ; preds = %bb.aah
  %i.amb = add nsw i32 %i.alz, -1
  store i32 %i.amb, ptr %i.aj, align 4, !tbaa !10
  br label %lean_dec.exit3999

bb.aaj:                                           ; preds = %bb.aah
  %.not.i4257 = icmp eq i32 %i.alz, 0
  br i1 %.not.i4257, label %lean_dec.exit3999, label %bb.aak

bb.aak:                                           ; preds = %bb.aaj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aj) #7
  br label %lean_dec.exit3999

lean_dec.exit3999:                                ; preds = %bb.aak, %bb.aaj, %bb.aai, %lean_dec.exit4001
  %i.amc = load i32, ptr %9, align 4, !tbaa !10   ; 3 uses
  %i.amd = icmp sgt i32 %i.amc, 1
  br i1 %i.amd, label %bb.aal, label %bb.aam, !prof !11

bb.aal:                                           ; preds = %lean_dec.exit3999
  %i.ame = add nsw i32 %i.amc, -1
  store i32 %i.ame, ptr %9, align 4, !tbaa !10
  br label %lean_dec_ref.exit4676

bb.aam:                                           ; preds = %lean_dec.exit3999
  %.not.i4675 = icmp eq i32 %i.amc, 0
  br i1 %.not.i4675, label %lean_dec_ref.exit4676, label %bb.aan

bb.aan:                                           ; preds = %bb.aam
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #7
  br label %lean_dec_ref.exit4676

lean_dec_ref.exit4676:                            ; preds = %bb.aal, %bb.aam, %bb.aan
  %i.amf = ptrtoint ptr %5 to i64
  %i.amg = and i64 %i.amf, 1
  %.not.i3996 = icmp eq i64 %i.amg, 0
  br i1 %.not.i3996, label %bb.aao, label %lean_dec.exit3997

bb.aao:                                           ; preds = %lean_dec_ref.exit4676
  %i.amh = load i32, ptr %5, align 4, !tbaa !10   ; 3 uses
  %i.ami = icmp sgt i32 %i.amh, 1
  br i1 %i.ami, label %bb.aap, label %bb.aaq, !prof !11

bb.aap:                                           ; preds = %bb.aao
  %i.amj = add nsw i32 %i.amh, -1
  store i32 %i.amj, ptr %5, align 4, !tbaa !10
  br label %lean_dec.exit3997

bb.aaq:                                           ; preds = %bb.aao
  %.not.i4259 = icmp eq i32 %i.amh, 0
  br i1 %.not.i4259, label %lean_dec.exit3997, label %bb.aar

bb.aar:                                           ; preds = %bb.aaq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit3997

lean_dec.exit3997:                                ; preds = %bb.aar, %bb.aaq, %bb.aap, %lean_dec_ref.exit4676
  br i1 %.not.i3479, label %bb.aas, label %lean_dec.exit3995

bb.aas:                                           ; preds = %lean_dec.exit3997
  %i.amk = load i32, ptr %2, align 4, !tbaa !10   ; 3 uses
  %i.aml = icmp sgt i32 %i.amk, 1
  br i1 %i.aml, label %bb.aat, label %bb.aau, !prof !11

bb.aat:                                           ; preds = %bb.aas
  %i.amm = add nsw i32 %i.amk, -1
  store i32 %i.amm, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit3995

bb.aau:                                           ; preds = %bb.aas
  %.not.i4261 = icmp eq i32 %i.amk, 0
  br i1 %.not.i4261, label %lean_dec.exit3995, label %bb.aav

bb.aav:                                           ; preds = %bb.aau
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit3995

lean_dec.exit3995:                                ; preds = %bb.aav, %bb.aau, %bb.aat, %lean_dec.exit3997
  %i.amn = load i32, ptr %1, align 4, !tbaa !10   ; 3 uses
  %i.amo = icmp sgt i32 %i.amn, 1
  br i1 %i.amo, label %bb.aaw, label %bb.aax, !prof !11

bb.aaw:                                           ; preds = %lean_dec.exit3995
  %i.amp = add nsw i32 %i.amn, -1
  store i32 %i.amp, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit4674

bb.aax:                                           ; preds = %lean_dec.exit3995
  %.not.i4673 = icmp eq i32 %i.amn, 0
  br i1 %.not.i4673, label %lean_dec_ref.exit4674, label %bb.aay

bb.aay:                                           ; preds = %bb.aax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit4674

lean_dec_ref.exit4674:                            ; preds = %bb.aaw, %bb.aax, %bb.aay
  br i1 %.not.i3659, label %bb.aaz, label %lean_dec.exit3993

bb.aaz:                                           ; preds = %lean_dec_ref.exit4674
  %i.amq = load i32, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.amr = icmp sgt i32 %i.amq, 1
  br i1 %i.amr, label %bb.aba, label %bb.abb, !prof !11

bb.aba:                                           ; preds = %bb.aaz
  %i.ams = add nsw i32 %i.amq, -1
  store i32 %i.ams, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit3993

bb.abb:                                           ; preds = %bb.aaz
  %.not.i4263 = icmp eq i32 %i.amq, 0
  br i1 %.not.i4263, label %lean_dec.exit3993, label %bb.abc

bb.abc:                                           ; preds = %bb.abb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit3993

lean_dec.exit3993:                                ; preds = %bb.abc, %bb.abb, %bb.aba, %lean_dec_ref.exit4674
  %i.amt = getelementptr inbounds nuw i8, ptr %i.aoe, i64 8
  %i.amu = load ptr, ptr %i.amt, align 8, !tbaa !14 ; 5 uses
  %.val4768 = load i32, ptr %i.aoe, align 8, !tbaa !10
  %i.amv = icmp eq i32 %.val4768, 1
  br i1 %i.amv, label %lean_dec.exit, label %bb.abd

bb.abd:                                           ; preds = %lean_dec.exit3993
  %i.amw = ptrtoint ptr %i.amu to i64
  %i.amx = and i64 %i.amw, 1
  %.not.i3545 = icmp eq i64 %i.amx, 0
  br i1 %.not.i3545, label %bb.abe, label %lean_inc.exit3546

bb.abe:                                           ; preds = %bb.abd
  %.val.i.i5126 = load i32, ptr %i.amu, align 4, !tbaa !10 ; 3 uses
  %i.amy = icmp sgt i32 %.val.i.i5126, 0
  br i1 %i.amy, label %bb.abf, label %bb.abg, !prof !11

bb.abf:                                           ; preds = %bb.abe
  %i.amz = add nuw i32 %.val.i.i5126, 1
  store i32 %i.amz, ptr %i.amu, align 4, !tbaa !10
  br label %lean_inc.exit3546

bb.abg:                                           ; preds = %bb.abe
  %.not.i.i5127 = icmp eq i32 %.val.i.i5126, 0
  br i1 %.not.i.i5127, label %lean_inc.exit3546, label %bb.abh

bb.abh:                                           ; preds = %bb.abg
  %i.ana = atomicrmw sub ptr %i.amu, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3546

lean_inc.exit3546:                                ; preds = %bb.abh, %bb.abg, %bb.abf, %bb.abd
  br i1 %.not.i5137, label %bb.abi, label %bb.abm

bb.abi:                                           ; preds = %lean_inc.exit3546
  %i.anb = load i32, ptr %i.aoe, align 8, !tbaa !10 ; 3 uses
  %i.anc = icmp sgt i32 %i.anb, 1
  br i1 %i.anc, label %bb.abj, label %bb.abk, !prof !11

bb.abj:                                           ; preds = %bb.abi
  %i.and = add nsw i32 %i.anb, -1
  store i32 %i.and, ptr %i.aoe, align 8, !tbaa !10
  br label %bb.abm

bb.abk:                                           ; preds = %bb.abi
  %.not.i4265 = icmp eq i32 %i.anb, 0
  br i1 %.not.i4265, label %bb.abm, label %bb.abl

bb.abl:                                           ; preds = %bb.abk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aoe) #7
  br label %bb.abm

bb.abm:                                           ; preds = %lean_inc.exit3546, %bb.abj, %bb.abk, %bb.abl
  %i.ane = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 8
  store ptr %i.amu, ptr %i.anf, align 8, !tbaa !14
  br label %lean_dec.exit

lean_dec.exit3991:                                ; preds = %lean_obj_tag.exit5140
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.aoe, i32 noundef 1)
  br label %lean_dec.exit3953.thread

bb.abn:                                           ; preds = %bb.ajk, %bb.ajj, %bb.aji, %lean_dec.exit3945
  %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3440 = select i1 %i.baa, ptr @l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value, ptr @l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value ; 3 uses
  %.03151 = trunc i64 %i.bab to i8                ; 2 uses
  %.val.i.i5129 = load i32, ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3440, align 8, !tbaa !10 ; 2 uses
  %i.ang = icmp sgt i32 %.val.i.i5129, 0
  br i1 %i.ang, label %lean_inc_ref.exit5131, label %bb.abo, !prof !11

bb.abo:                                           ; preds = %bb.abn
  %.not.i.i5130 = icmp eq i32 %.val.i.i5129, 0
  br i1 %.not.i.i5130, label %lean_inc_ref.exit5131, label %bb.abp

bb.abp:                                           ; preds = %bb.abo
  %i.anh = atomicrmw sub ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3440, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit5131

lean_inc_ref.exit5131:                            ; preds = %bb.abn, %bb.abo, %bb.abp
  %i.ani = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 8
  store ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3440, ptr %i.anj, align 8, !tbaa !14
  %i.ank = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull %i.ani) #7
  %i.anl = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 8
  store ptr %i.azw, ptr %i.anm, align 8, !tbaa !14
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anl, i64 16
  store ptr %i.ank, ptr %i.ann, align 8, !tbaa !14
  %i.ano = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__23_once seq_cst, align 4, !tbaa !20
  %i.anp = icmp eq i32 %i.ano, 1
  br i1 %i.anp, label %bb.abq, label %bb.abr, !prof !11

bb.abq:                                           ; preds = %lean_inc_ref.exit5131
  %i.anq = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__23, align 8, !tbaa !14
  br label %lean_obj_once.exit5133

bb.abr:                                           ; preds = %lean_inc_ref.exit5131
  %i.anr = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__23, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__23_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__23) #7
  br label %lean_obj_once.exit5133

lean_obj_once.exit5133:                           ; preds = %bb.abq, %bb.abr
  %.0.i5132 = phi ptr [ %i.anq, %bb.abq ], [ %i.anr, %bb.abr ]
  %i.ans = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 8
  store ptr %i.anl, ptr %i.ant, align 8, !tbaa !14
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ans, i64 16
  store ptr %.0.i5132, ptr %i.anu, align 8, !tbaa !14
  %i.anv = icmp eq i8 %.03151, 0
  %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value = select i1 %i.anv, ptr @l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value, ptr @l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value ; 3 uses
  %.val.i.i5134 = load i32, ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value, align 8, !tbaa !10 ; 2 uses
  %i.anw = icmp sgt i32 %.val.i.i5134, 0
  br i1 %i.anw, label %lean_inc_ref.exit5136, label %bb.abs, !prof !11

bb.abs:                                           ; preds = %lean_obj_once.exit5133
  %.not.i.i5135 = icmp eq i32 %.val.i.i5134, 0
  br i1 %.not.i.i5135, label %lean_inc_ref.exit5136, label %bb.abt

bb.abt:                                           ; preds = %bb.abs
  %i.anx = atomicrmw sub ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit5136

lean_inc_ref.exit5136:                            ; preds = %lean_obj_once.exit5133, %bb.abs, %bb.abt
  %i.any = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 8
  store ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value, ptr %i.anz, align 8, !tbaa !14
  %i.aoa = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull %i.any) #7
  %i.aob = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aob, i64 8
  store ptr %i.ans, ptr %i.aoc, align 8, !tbaa !14
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aob, i64 16
  store ptr %i.aoa, ptr %i.aod, align 8, !tbaa !14
  %i.aoe = tail call ptr @l_Lean_addTrace___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__0___redArg(ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__4_value, ptr noundef nonnull %i.aob, ptr noundef nonnull %13, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %16) ; 9 uses
  %i.aof = ptrtoint ptr %i.aoe to i64             ; 2 uses
  %i.aog = and i64 %i.aof, 1
  %.not.i5137 = icmp eq i64 %i.aog, 0             ; 2 uses
  br i1 %.not.i5137, label %bb.abv, label %bb.abu

bb.abu:                                           ; preds = %lean_inc_ref.exit5136
  %i.aoh = lshr i64 %i.aof, 1
  %i.aoi = trunc i64 %i.aoh to i32
  br label %lean_obj_tag.exit5140

bb.abv:                                           ; preds = %lean_inc_ref.exit5136
  %i.aoj = getelementptr i8, ptr %i.aoe, i64 4
  %.val.i5139 = load i32, ptr %i.aoj, align 4
  %i.aok = lshr i32 %.val.i5139, 24
  br label %lean_obj_tag.exit5140

lean_obj_tag.exit5140:                            ; preds = %bb.abu, %bb.abv
  %.0.i5138 = phi i32 [ %i.aoi, %bb.abu ], [ %i.aok, %bb.abv ]
  %i.aol = icmp eq i32 %.0.i5138, 0
  br i1 %i.aol, label %lean_dec.exit3991, label %bb.zt

bb.abw:                                           ; preds = %bb.aoh, %bb.aot, %bb.aol, %bb.aok, %bb.aoj
  %i.aom = load ptr, ptr %i.bkw, align 8, !tbaa !14
  %i.aon = load ptr, ptr %i.bky, align 8, !tbaa !14 ; 8 uses
  %i.aoo = load ptr, ptr %i.bla, align 8, !tbaa !14 ; 8 uses
  br i1 %.not.i3655, label %bb.abx, label %lean_dec.exit3989

bb.abx:                                           ; preds = %bb.abw
  %i.aop = load i32, ptr %i.cm, align 4, !tbaa !10 ; 3 uses
  %i.aoq = icmp sgt i32 %i.aop, 1
  br i1 %i.aoq, label %bb.aby, label %bb.abz, !prof !11

bb.aby:                                           ; preds = %bb.abx
  %i.aor = add nsw i32 %i.aop, -1
  store i32 %i.aor, ptr %i.cm, align 4, !tbaa !10
  br label %lean_dec.exit3989

bb.abz:                                           ; preds = %bb.abx
  %.not.i4267 = icmp eq i32 %i.aop, 0
  br i1 %.not.i4267, label %lean_dec.exit3989, label %bb.aca

bb.aca:                                           ; preds = %bb.abz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #7
  br label %lean_dec.exit3989

lean_dec.exit3989:                                ; preds = %bb.aca, %bb.abz, %bb.aby, %bb.abw
  %i.aos = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__1(i8 noundef zeroext 0, ptr noundef %i.aom, ptr poison, ptr poison, ptr poison, ptr nonnull poison, ptr poison, ptr nonnull poison, ptr poison) ; 10 uses
  %i.aot = ptrtoint ptr %i.aos to i64             ; 2 uses
  %i.aou = and i64 %i.aot, 1
  %.not.i5141 = icmp eq i64 %i.aou, 0             ; 2 uses
  br i1 %.not.i5141, label %bb.acc, label %bb.acb

bb.acb:                                           ; preds = %lean_dec.exit3989
  %i.aov = lshr i64 %i.aot, 1
  %i.aow = trunc i64 %i.aov to i32
  br label %lean_obj_tag.exit5144

bb.acc:                                           ; preds = %lean_dec.exit3989
  %i.aox = getelementptr i8, ptr %i.aos, i64 4
  %.val.i5143 = load i32, ptr %i.aox, align 4
  %i.aoy = lshr i32 %.val.i5143, 24
  br label %lean_obj_tag.exit5144

lean_obj_tag.exit5144:                            ; preds = %bb.acb, %bb.acc
  %.0.i5142 = phi i32 [ %i.aow, %bb.acb ], [ %i.aoy, %bb.acc ]
  %i.aoz = icmp eq i32 %.0.i5142, 0
  br i1 %i.aoz, label %bb.acd, label %lean_dec.exit3985

bb.acd:                                           ; preds = %lean_obj_tag.exit5144
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aos, i64 8
  %i.apb = load ptr, ptr %i.apa, align 8, !tbaa !14 ; 21 uses
  %i.apc = ptrtoint ptr %i.apb to i64
  %i.apd = and i64 %i.apc, 1
  %.not.i5145 = icmp eq i64 %i.apd, 0
  br i1 %.not.i5145, label %bb.ace, label %lean_inc_n.exit5148

bb.ace:                                           ; preds = %bb.acd
  %.val.i.i5146 = load i32, ptr %i.apb, align 4, !tbaa !10 ; 3 uses
  %i.ape = icmp sgt i32 %.val.i.i5146, 0
  br i1 %i.ape, label %bb.acf, label %bb.acg, !prof !11

bb.acf:                                           ; preds = %bb.ace
  %i.apf = add nuw i32 %.val.i.i5146, 17
  store i32 %i.apf, ptr %i.apb, align 4, !tbaa !10
  br label %lean_inc_n.exit5148

bb.acg:                                           ; preds = %bb.ace
  %.not.i.i5147 = icmp eq i32 %.val.i.i5146, 0
  br i1 %.not.i.i5147, label %lean_inc_n.exit5148, label %bb.ach

bb.ach:                                           ; preds = %bb.acg
  %i.apg = atomicrmw sub ptr %i.apb, i32 17 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit5148

lean_inc_n.exit5148:                              ; preds = %bb.acd, %bb.acf, %bb.acg, %bb.ach
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.aos, i32 noundef 1)
  %i.aph = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__33_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__34_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__8_value) #7 ; 6 uses
  %i.api = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 7 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 8
  store ptr %i.apb, ptr %i.apj, align 8, !tbaa !14
  %i.apk = getelementptr inbounds nuw i8, ptr %i.api, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__8_value, ptr %i.apk, align 8, !tbaa !14
  %i.apl = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__33_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__34_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__9_value) #7 ; 6 uses
  %i.apm = ptrtoint ptr %i.aoo to i64
  %i.apn = and i64 %i.apm, 1
  %.not.i5149 = icmp eq i64 %i.apn, 0
  br i1 %.not.i5149, label %bb.aci, label %lean_inc_n.exit5152

bb.aci:                                           ; preds = %lean_inc_n.exit5148
  %.val.i.i5150 = load i32, ptr %i.aoo, align 4, !tbaa !10 ; 3 uses
  %i.apo = icmp sgt i32 %.val.i.i5150, 0
  br i1 %i.apo, label %bb.acj, label %bb.ack, !prof !11

bb.acj:                                           ; preds = %bb.aci
  %i.app = add nuw i32 %.val.i.i5150, 4
  store i32 %i.app, ptr %i.aoo, align 4, !tbaa !10
  br label %lean_inc_n.exit5152

bb.ack:                                           ; preds = %bb.aci
  %.not.i.i5151 = icmp eq i32 %.val.i.i5150, 0
  br i1 %.not.i.i5151, label %lean_inc_n.exit5152, label %bb.acl

bb.acl:                                           ; preds = %bb.ack
  %i.apq = atomicrmw sub ptr %i.aoo, i32 4 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit5152

lean_inc_n.exit5152:                              ; preds = %lean_inc_n.exit5148, %bb.acj, %bb.ack, %bb.acl
  %i.apr = ptrtoint ptr %i.aon to i64
  %i.aps = and i64 %i.apr, 1
  %.not.i5153 = icmp eq i64 %i.aps, 0
  br i1 %.not.i5153, label %bb.acm, label %lean_inc_n.exit5160

bb.acm:                                           ; preds = %lean_inc_n.exit5152
  %.val.i.i5154 = load i32, ptr %i.aon, align 4, !tbaa !10 ; 3 uses
  %i.apt = icmp sgt i32 %.val.i.i5154, 0
  br i1 %i.apt, label %bb.acn, label %bb.aco, !prof !11

bb.acn:                                           ; preds = %bb.acm
  %i.apu = add nuw i32 %.val.i.i5154, 4
  store i32 %i.apu, ptr %i.aon, align 4, !tbaa !10
  br label %lean_inc_n.exit5160

bb.aco:                                           ; preds = %bb.acm
  %.not.i.i5155 = icmp eq i32 %.val.i.i5154, 0
  br i1 %.not.i.i5155, label %lean_inc_n.exit5160, label %bb.acp

bb.acp:                                           ; preds = %bb.aco
  %i.apv = atomicrmw sub ptr %i.aon, i32 4 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit5160

lean_inc_n.exit5160:                              ; preds = %bb.acp, %bb.aco, %bb.acn, %lean_inc_n.exit5152
  %i.apw = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.aon, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__51_value, ptr noundef %i.aoo) #7
  %.val.i.i5161 = load i32, ptr %.0.i5287, align 4, !tbaa !10 ; 3 uses
  %i.apx = icmp sgt i32 %.val.i.i5161, 0
  br i1 %i.apx, label %bb.acq, label %bb.acr, !prof !11

bb.acq:                                           ; preds = %lean_inc_n.exit5160
  %i.apy = add nuw i32 %.val.i.i5161, 1
  store i32 %i.apy, ptr %.0.i5287, align 4, !tbaa !10
  br label %lean_inc_ref.exit5163

bb.acr:                                           ; preds = %lean_inc_n.exit5160
  %.not.i.i5162 = icmp eq i32 %.val.i.i5161, 0
  br i1 %.not.i.i5162, label %lean_inc_ref.exit5163, label %bb.acs

bb.acs:                                           ; preds = %bb.acr
  %i.apz = atomicrmw sub ptr %.0.i5287, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit5163

lean_inc_ref.exit5163:                            ; preds = %bb.acq, %bb.acr, %bb.acs
  %i.aqa = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aqa, i64 8
  store ptr %i.apb, ptr %i.aqb, align 8, !tbaa !14
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqa, i64 16
  store ptr %.0.i5287, ptr %i.aqc, align 8, !tbaa !14
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqa, i64 24
  store ptr %i.apw, ptr %i.aqd, align 8, !tbaa !14
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqa, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.aqe, align 8, !tbaa !14
  %i.aqf = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__0_once seq_cst, align 4, !tbaa !20
  %i.aqg = icmp eq i32 %i.aqf, 1
  br i1 %i.aqg, label %bb.act, label %bb.acu, !prof !11

bb.act:                                           ; preds = %lean_inc_ref.exit5163
  %i.aqh = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__0, align 8, !tbaa !14
  br label %lean_obj_once.exit5165

bb.acu:                                           ; preds = %lean_inc_ref.exit5163
  %i.aqi = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__0, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__0_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__0) #7
  br label %lean_obj_once.exit5165

lean_obj_once.exit5165:                           ; preds = %bb.act, %bb.acu
  %.0.i5164 = phi ptr [ %i.aqh, %bb.act ], [ %i.aqi, %bb.acu ]
  %i.aqj = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.aon, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__1_value, ptr noundef %i.aoo) #7
  %i.aqk = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 9 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 8
  store ptr %i.apb, ptr %i.aql, align 8, !tbaa !14
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqk, i64 16
  store ptr %.0.i5164, ptr %i.aqm, align 8, !tbaa !14
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqk, i64 24
  store ptr %i.aqj, ptr %i.aqn, align 8, !tbaa !14
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqk, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.aqo, align 8, !tbaa !14
  %.val.i.i5166 = load i32, ptr %i.aqk, align 8, !tbaa !10 ; 3 uses
  %i.aqp = icmp sgt i32 %.val.i.i5166, 0
  br i1 %i.aqp, label %bb.acv, label %bb.acw, !prof !11

bb.acv:                                           ; preds = %lean_obj_once.exit5165
  %i.aqq = add nuw i32 %.val.i.i5166, 1
  store i32 %i.aqq, ptr %i.aqk, align 8, !tbaa !10
  br label %lean_inc_ref.exit5168

bb.acw:                                           ; preds = %lean_obj_once.exit5165
  %.not.i.i5167 = icmp eq i32 %.val.i.i5166, 0
  br i1 %.not.i.i5167, label %lean_inc_ref.exit5168, label %bb.acx

bb.acx:                                           ; preds = %bb.acw
  %i.aqr = atomicrmw sub ptr %i.aqk, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit5168

lean_inc_ref.exit5168:                            ; preds = %bb.acv, %bb.acw, %bb.acx
  %i.aqs = tail call ptr @l_Lean_Syntax_node2(ptr noundef %i.apb, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef nonnull %i.aqa, ptr noundef nonnull %i.aqk) #7
  %i.aqt = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 3, i32 noundef 0) ; 8 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqt, i64 8
  store ptr %i.apb, ptr %i.aqu, align 8, !tbaa !14
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqt, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr %i.aqv, align 8, !tbaa !14
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqt, i64 24
  store ptr %.0.i5292, ptr %i.aqw, align 8, !tbaa !14
  %i.aqx = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 7 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqx, i64 8
  store ptr %i.apb, ptr %i.aqy, align 8, !tbaa !14
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqx, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__12_value, ptr %i.aqz, align 8, !tbaa !14
  %i.ara = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__25_once seq_cst, align 4, !tbaa !20
end_hunk_12
begin_hunk_13_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__7:bb.a
  %i.azf = icmp sgt i32 %i.aze, 1
  br i1 %i.azf, label %bb.air, label %bb.ais, !prof !11

bb.air:                                           ; preds = %bb.aiq
  %i.azg = add nsw i32 %i.aze, -1
  store i32 %i.azg, ptr %i.ayn, align 4, !tbaa !10
  br label %lean_dec.exit3949

bb.ais:                                           ; preds = %bb.aiq
  %.not.i4295 = icmp eq i32 %i.aze, 0
  br i1 %.not.i4295, label %lean_dec.exit3949, label %bb.ait

bb.ait:                                           ; preds = %bb.ais
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ayn) #7
  br label %lean_dec.exit3949

lean_dec.exit3949:                                ; preds = %bb.ait, %bb.ais, %bb.air, %lean_dec.exit3951
  br i1 %.not.i3523, label %bb.aiu, label %lean_dec.exit3953.thread

bb.aiu:                                           ; preds = %lean_dec.exit3949
  %i.azh = load i32, ptr %i.axd, align 4, !tbaa !10 ; 3 uses
  %i.azi = icmp sgt i32 %i.azh, 1
  br i1 %i.azi, label %bb.aiv, label %bb.aiw, !prof !11

bb.aiv:                                           ; preds = %bb.aiu
  %i.azj = add nsw i32 %i.azh, -1
  store i32 %i.azj, ptr %i.axd, align 4, !tbaa !10
  br label %lean_dec.exit3953.thread

bb.aiw:                                           ; preds = %bb.aiu
  %.not.i4297 = icmp eq i32 %i.azh, 0
  br i1 %.not.i4297, label %lean_dec.exit3953.thread, label %bb.aix

bb.aix:                                           ; preds = %bb.aiw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.axd) #7
  br label %lean_dec.exit3953.thread

bb.aiy:                                           ; preds = %lean_obj_once.exit5237
  %i.azk = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__28_once seq_cst, align 4, !tbaa !20
  %i.azl = icmp eq i32 %i.azk, 1
  br i1 %i.azl, label %bb.aiz, label %bb.aja, !prof !11

bb.aiz:                                           ; preds = %bb.aiy
  %i.azm = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__28, align 8, !tbaa !14
  br label %lean_obj_once.exit5239

bb.aja:                                           ; preds = %bb.aiy
  %i.azn = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__28, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__28_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__28) #7
  br label %lean_obj_once.exit5239

lean_obj_once.exit5239:                           ; preds = %bb.aiz, %bb.aja
  %.0.i5238 = phi ptr [ %i.azm, %bb.aiz ], [ %i.azn, %bb.aja ]
  %i.azo = tail call ptr @l_Lean_MessageData_ofConstName(ptr noundef %i.bx, i8 noundef zeroext 0) #7
  %i.azp = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azp, i64 8
  store ptr %.0.i5238, ptr %i.azq, align 8, !tbaa !14
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azp, i64 16
  store ptr %i.azo, ptr %i.azr, align 8, !tbaa !14
  %i.azs = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__30_once seq_cst, align 4, !tbaa !20
  %i.azt = icmp eq i32 %i.azs, 1
  br i1 %i.azt, label %bb.ajb, label %bb.ajc, !prof !11

bb.ajb:                                           ; preds = %lean_obj_once.exit5239
  %i.azu = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__30, align 8, !tbaa !14
  br label %lean_obj_once.exit5241

bb.ajc:                                           ; preds = %lean_obj_once.exit5239
  %i.azv = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__30, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__30_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__30) #7
  br label %lean_obj_once.exit5241

lean_obj_once.exit5241:                           ; preds = %bb.ajb, %bb.ajc
  %.0.i5240 = phi ptr [ %i.azu, %bb.ajb ], [ %i.azv, %bb.ajc ]
  %i.azw = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azw, i64 8
  store ptr %i.azp, ptr %i.azx, align 8, !tbaa !14
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azw, i64 16
  store ptr %.0.i5240, ptr %i.azy, align 8, !tbaa !14
  %i.azz = and i64 %i.axe, 510
  %i.baa = icmp eq i64 %i.azz, 0
  %i.bab = lshr i64 %i.ayo, 1
  br i1 %.not.i3519, label %bb.ajd, label %lean_dec.exit3945

bb.ajd:                                           ; preds = %lean_obj_once.exit5241
  %i.bac = load i32, ptr %i.ayn, align 4, !tbaa !10 ; 3 uses
  %i.bad = icmp sgt i32 %i.bac, 1
  br i1 %i.bad, label %bb.aje, label %bb.ajf, !prof !11

bb.aje:                                           ; preds = %bb.ajd
  %i.bae = add nsw i32 %i.bac, -1
  store i32 %i.bae, ptr %i.ayn, align 4, !tbaa !10
  br label %lean_dec.exit3945

bb.ajf:                                           ; preds = %bb.ajd
  %.not.i4299 = icmp eq i32 %i.bac, 0
  br i1 %.not.i4299, label %lean_dec.exit3945, label %bb.ajg

bb.ajg:                                           ; preds = %bb.ajf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ayn) #7
  br label %lean_dec.exit3945

lean_dec.exit3945:                                ; preds = %bb.ajg, %bb.ajf, %bb.aje, %lean_obj_once.exit5241
  br i1 %.not.i3523, label %bb.ajh, label %bb.abn

bb.ajh:                                           ; preds = %lean_dec.exit3945
  %i.baf = load i32, ptr %i.axd, align 4, !tbaa !10 ; 3 uses
  %i.bag = icmp sgt i32 %i.baf, 1
  br i1 %i.bag, label %bb.aji, label %bb.ajj, !prof !11

bb.aji:                                           ; preds = %bb.ajh
  %i.bah = add nsw i32 %i.baf, -1
  store i32 %i.bah, ptr %i.axd, align 4, !tbaa !10
  br label %bb.abn

bb.ajj:                                           ; preds = %bb.ajh
  %.not.i4301 = icmp eq i32 %i.baf, 0
  br i1 %.not.i4301, label %bb.abn, label %bb.ajk

bb.ajk:                                           ; preds = %bb.ajj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.axd) #7
  br label %bb.abn

bb.ajl:                                           ; preds = %lean_obj_tag.exit5229
  br i1 %.not.i3523, label %bb.ajm, label %lean_dec.exit3935

bb.ajm:                                           ; preds = %bb.ajl
  %i.bai = load i32, ptr %i.axd, align 4, !tbaa !10 ; 3 uses
  %i.baj = icmp sgt i32 %i.bai, 1
  br i1 %i.baj, label %bb.ajn, label %bb.ajo, !prof !11

bb.ajn:                                           ; preds = %bb.ajm
  %i.bak = add nsw i32 %i.bai, -1
  store i32 %i.bak, ptr %i.axd, align 4, !tbaa !10
  br label %lean_dec.exit3935

bb.ajo:                                           ; preds = %bb.ajm
  %.not.i4303 = icmp eq i32 %i.bai, 0
  br i1 %.not.i4303, label %lean_dec.exit3935, label %bb.ajp

bb.ajp:                                           ; preds = %bb.ajo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.axd) #7
  br label %lean_dec.exit3935

lean_dec.exit3935:                                ; preds = %bb.ajp, %bb.ajo, %bb.ajn, %bb.ajl
  %i.bal = load i32, ptr %.0.i5292, align 4, !tbaa !10 ; 3 uses
  %i.bam = icmp sgt i32 %i.bal, 1
  br i1 %i.bam, label %bb.ajq, label %bb.ajr, !prof !11

bb.ajq:                                           ; preds = %lean_dec.exit3935
  %i.ban = add nsw i32 %i.bal, -1
  store i32 %i.ban, ptr %.0.i5292, align 4, !tbaa !10
  br label %lean_dec.exit3933

bb.ajr:                                           ; preds = %lean_dec.exit3935
  %.not.i4659 = icmp eq i32 %i.bal, 0
  br i1 %.not.i4659, label %lean_dec.exit3933, label %bb.ajs

bb.ajs:                                           ; preds = %bb.ajr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i5292) #7
  br label %lean_dec.exit3933

lean_dec.exit3933:                                ; preds = %bb.ajq, %bb.ajr, %bb.ajs
  %i.bao = load i32, ptr %i.ccw, align 8, !tbaa !10 ; 3 uses
  %i.bap = icmp sgt i32 %i.bao, 1
  br i1 %i.bap, label %bb.ajt, label %bb.aju, !prof !11

bb.ajt:                                           ; preds = %lean_dec.exit3933
  %i.baq = add nsw i32 %i.bao, -1
  store i32 %i.baq, ptr %i.ccw, align 8, !tbaa !10
  br label %lean_dec_ref.exit4658

bb.aju:                                           ; preds = %lean_dec.exit3933
  %.not.i4657 = icmp eq i32 %i.bao, 0
  br i1 %.not.i4657, label %lean_dec_ref.exit4658, label %bb.ajv

bb.ajv:                                           ; preds = %bb.aju
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ccw) #7
  br label %lean_dec_ref.exit4658

lean_dec_ref.exit4658:                            ; preds = %bb.ajt, %bb.aju, %bb.ajv
  %i.bar = load i32, ptr %i.bqj, align 8, !tbaa !10 ; 3 uses
  %i.bas = icmp sgt i32 %i.bar, 1
  br i1 %i.bas, label %bb.ajw, label %bb.ajx, !prof !11

bb.ajw:                                           ; preds = %lean_dec_ref.exit4658
  %i.bat = add nsw i32 %i.bar, -1
  store i32 %i.bat, ptr %i.bqj, align 8, !tbaa !10
  br label %lean_dec_ref.exit4656

bb.ajx:                                           ; preds = %lean_dec_ref.exit4658
  %.not.i4655 = icmp eq i32 %i.bar, 0
  br i1 %.not.i4655, label %lean_dec_ref.exit4656, label %bb.ajy

bb.ajy:                                           ; preds = %bb.ajx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bqj) #7
  br label %lean_dec_ref.exit4656

lean_dec_ref.exit4656:                            ; preds = %bb.ajw, %bb.ajx, %bb.ajy
  br i1 %.not.i3655, label %bb.ajz, label %lean_dec.exit3931

bb.ajz:                                           ; preds = %lean_dec_ref.exit4656
  %i.bau = load i32, ptr %i.cm, align 4, !tbaa !10 ; 3 uses
  %i.bav = icmp sgt i32 %i.bau, 1
  br i1 %i.bav, label %bb.aka, label %bb.akb, !prof !11

bb.aka:                                           ; preds = %bb.ajz
  %i.baw = add nsw i32 %i.bau, -1
  store i32 %i.baw, ptr %i.cm, align 4, !tbaa !10
  br label %lean_dec.exit3931

bb.akb:                                           ; preds = %bb.ajz
  %.not.i4309 = icmp eq i32 %i.bau, 0
  br i1 %.not.i4309, label %lean_dec.exit3931, label %bb.akc

bb.akc:                                           ; preds = %bb.akb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #7
  br label %lean_dec.exit3931

lean_dec.exit3931:                                ; preds = %bb.akc, %bb.akb, %bb.aka, %lean_dec_ref.exit4656
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.bm, i32 noundef 1)
  br i1 %.not.i4792, label %bb.akd, label %lean_dec.exit3929

bb.akd:                                           ; preds = %lean_dec.exit3931
  %i.bax = load i32, ptr %i.bx, align 4, !tbaa !10 ; 3 uses
  %i.bay = icmp sgt i32 %i.bax, 1
  br i1 %i.bay, label %bb.ake, label %bb.akf, !prof !11

bb.ake:                                           ; preds = %bb.akd
  %i.baz = add nsw i32 %i.bax, -1
  store i32 %i.baz, ptr %i.bx, align 4, !tbaa !10
  br label %lean_dec.exit3929

bb.akf:                                           ; preds = %bb.akd
  %.not.i4311 = icmp eq i32 %i.bax, 0
  br i1 %.not.i4311, label %lean_dec.exit3929, label %bb.akg

bb.akg:                                           ; preds = %bb.akf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bx) #7
  br label %lean_dec.exit3929

lean_dec.exit3929:                                ; preds = %bb.akg, %bb.akf, %bb.ake, %lean_dec.exit3931
  br i1 %.not.i3645, label %bb.akh, label %lean_dec.exit3927

bb.akh:                                           ; preds = %lean_dec.exit3929
  %i.bba = load i32, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.bbb = icmp sgt i32 %i.bba, 1
  br i1 %i.bbb, label %bb.aki, label %bb.akj, !prof !11

bb.aki:                                           ; preds = %bb.akh
  %i.bbc = add nsw i32 %i.bba, -1
  store i32 %i.bbc, ptr %i.aj, align 4, !tbaa !10
  br label %lean_dec.exit3927

bb.akj:                                           ; preds = %bb.akh
  %.not.i4313 = icmp eq i32 %i.bba, 0
  br i1 %.not.i4313, label %lean_dec.exit3927, label %bb.akk

bb.akk:                                           ; preds = %bb.akj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aj) #7
  br label %lean_dec.exit3927

lean_dec.exit3927:                                ; preds = %bb.akk, %bb.akj, %bb.aki, %lean_dec.exit3929
  %i.bbd = load i32, ptr %9, align 4, !tbaa !10   ; 3 uses
  %i.bbe = icmp sgt i32 %i.bbd, 1
  br i1 %i.bbe, label %bb.akl, label %bb.akm, !prof !11

bb.akl:                                           ; preds = %lean_dec.exit3927
  %i.bbf = add nsw i32 %i.bbd, -1
  store i32 %i.bbf, ptr %9, align 4, !tbaa !10
  br label %lean_dec_ref.exit4654

bb.akm:                                           ; preds = %lean_dec.exit3927
  %.not.i4653 = icmp eq i32 %i.bbd, 0
  br i1 %.not.i4653, label %lean_dec_ref.exit4654, label %bb.akn

bb.akn:                                           ; preds = %bb.akm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #7
  br label %lean_dec_ref.exit4654

lean_dec_ref.exit4654:                            ; preds = %bb.akl, %bb.akm, %bb.akn
  %i.bbg = ptrtoint ptr %5 to i64
  %i.bbh = and i64 %i.bbg, 1
  %.not.i3924 = icmp eq i64 %i.bbh, 0
  br i1 %.not.i3924, label %bb.ako, label %lean_dec.exit3925

bb.ako:                                           ; preds = %lean_dec_ref.exit4654
  %i.bbi = load i32, ptr %5, align 4, !tbaa !10   ; 3 uses
  %i.bbj = icmp sgt i32 %i.bbi, 1
  br i1 %i.bbj, label %bb.akp, label %bb.akq, !prof !11

bb.akp:                                           ; preds = %bb.ako
  %i.bbk = add nsw i32 %i.bbi, -1
  store i32 %i.bbk, ptr %5, align 4, !tbaa !10
  br label %lean_dec.exit3925

bb.akq:                                           ; preds = %bb.ako
  %.not.i4315 = icmp eq i32 %i.bbi, 0
  br i1 %.not.i4315, label %lean_dec.exit3925, label %bb.akr

bb.akr:                                           ; preds = %bb.akq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit3925

lean_dec.exit3925:                                ; preds = %bb.akr, %bb.akq, %bb.akp, %lean_dec_ref.exit4654
  br i1 %.not.i3479, label %bb.aks, label %lean_dec.exit3923

bb.aks:                                           ; preds = %lean_dec.exit3925
  %i.bbl = load i32, ptr %2, align 4, !tbaa !10   ; 3 uses
  %i.bbm = icmp sgt i32 %i.bbl, 1
  br i1 %i.bbm, label %bb.akt, label %bb.aku, !prof !11

bb.akt:                                           ; preds = %bb.aks
  %i.bbn = add nsw i32 %i.bbl, -1
  store i32 %i.bbn, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit3923

bb.aku:                                           ; preds = %bb.aks
  %.not.i4317 = icmp eq i32 %i.bbl, 0
  br i1 %.not.i4317, label %lean_dec.exit3923, label %bb.akv

bb.akv:                                           ; preds = %bb.aku
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit3923

lean_dec.exit3923:                                ; preds = %bb.akv, %bb.aku, %bb.akt, %lean_dec.exit3925
  %i.bbo = load i32, ptr %1, align 4, !tbaa !10   ; 3 uses
  %i.bbp = icmp sgt i32 %i.bbo, 1
  br i1 %i.bbp, label %bb.akw, label %bb.akx, !prof !11

bb.akw:                                           ; preds = %lean_dec.exit3923
  %i.bbq = add nsw i32 %i.bbo, -1
  store i32 %i.bbq, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit4652

bb.akx:                                           ; preds = %lean_dec.exit3923
  %.not.i4651 = icmp eq i32 %i.bbo, 0
  br i1 %.not.i4651, label %lean_dec_ref.exit4652, label %bb.aky

bb.aky:                                           ; preds = %bb.akx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit4652

lean_dec_ref.exit4652:                            ; preds = %bb.akw, %bb.akx, %bb.aky
  br i1 %.not.i3659, label %bb.akz, label %lean_dec.exit3921

bb.akz:                                           ; preds = %lean_dec_ref.exit4652
  %i.bbr = load i32, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.bbs = icmp sgt i32 %i.bbr, 1
  br i1 %i.bbs, label %bb.ala, label %bb.alb, !prof !11

bb.ala:                                           ; preds = %bb.akz
  %i.bbt = add nsw i32 %i.bbr, -1
  store i32 %i.bbt, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit3921

bb.alb:                                           ; preds = %bb.akz
  %.not.i4319 = icmp eq i32 %i.bbr, 0
  br i1 %.not.i4319, label %lean_dec.exit3921, label %bb.alc

bb.alc:                                           ; preds = %bb.alb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit3921

lean_dec.exit3921:                                ; preds = %bb.alc, %bb.alb, %bb.ala, %lean_dec_ref.exit4652
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.axk, i64 8
  %i.bbv = load ptr, ptr %i.bbu, align 8, !tbaa !14 ; 5 uses
  %.val4766 = load i32, ptr %i.axk, align 8, !tbaa !10
  %i.bbw = icmp eq i32 %.val4766, 1
  br i1 %i.bbw, label %lean_dec.exit, label %bb.ald

bb.ald:                                           ; preds = %lean_dec.exit3921
  %i.bbx = ptrtoint ptr %i.bbv to i64
  %i.bby = and i64 %i.bbx, 1
  %.not.i3517 = icmp eq i64 %i.bby, 0
  br i1 %.not.i3517, label %bb.ale, label %lean_inc.exit3518

bb.ale:                                           ; preds = %bb.ald
  %.val.i.i5242 = load i32, ptr %i.bbv, align 4, !tbaa !10 ; 3 uses
  %i.bbz = icmp sgt i32 %.val.i.i5242, 0
  br i1 %i.bbz, label %bb.alf, label %bb.alg, !prof !11

bb.alf:                                           ; preds = %bb.ale
  %i.bca = add nuw i32 %.val.i.i5242, 1
  store i32 %i.bca, ptr %i.bbv, align 4, !tbaa !10
  br label %lean_inc.exit3518

bb.alg:                                           ; preds = %bb.ale
  %.not.i.i5243 = icmp eq i32 %.val.i.i5242, 0
  br i1 %.not.i.i5243, label %lean_inc.exit3518, label %bb.alh

bb.alh:                                           ; preds = %bb.alg
  %i.bcb = atomicrmw sub ptr %i.bbv, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3518

lean_inc.exit3518:                                ; preds = %bb.alh, %bb.alg, %bb.alf, %bb.ald
  br i1 %.not.i5226, label %bb.ali, label %bb.alm

bb.ali:                                           ; preds = %lean_inc.exit3518
  %i.bcc = load i32, ptr %i.axk, align 8, !tbaa !10 ; 3 uses
  %i.bcd = icmp sgt i32 %i.bcc, 1
  br i1 %i.bcd, label %bb.alj, label %bb.alk, !prof !11

bb.alj:                                           ; preds = %bb.ali
  %i.bce = add nsw i32 %i.bcc, -1
  store i32 %i.bce, ptr %i.axk, align 8, !tbaa !10
  br label %bb.alm

bb.alk:                                           ; preds = %bb.ali
  %.not.i4321 = icmp eq i32 %i.bcc, 0
  br i1 %.not.i4321, label %bb.alm, label %bb.all

bb.all:                                           ; preds = %bb.alk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.axk) #7
  br label %bb.alm

bb.alm:                                           ; preds = %lean_inc.exit3518, %bb.alj, %bb.alk, %bb.all
  %i.bcf = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bcf, i64 8
  store ptr %i.bbv, ptr %i.bcg, align 8, !tbaa !14
  br label %lean_dec.exit

lean_dec.exit3913:                                ; preds = %lean_obj_tag.exit5222
  %i.bch = load i32, ptr %.0.i5292, align 4, !tbaa !10 ; 3 uses
  %i.bci = icmp sgt i32 %i.bch, 1
  br i1 %i.bci, label %bb.aln, label %bb.alo, !prof !11

bb.aln:                                           ; preds = %lean_dec.exit3913
  %i.bcj = add nsw i32 %i.bch, -1
  store i32 %i.bcj, ptr %.0.i5292, align 4, !tbaa !10
  br label %lean_dec.exit3911

bb.alo:                                           ; preds = %lean_dec.exit3913
  %.not.i4649 = icmp eq i32 %i.bch, 0
  br i1 %.not.i4649, label %lean_dec.exit3911, label %bb.alp

bb.alp:                                           ; preds = %bb.alo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i5292) #7
  br label %lean_dec.exit3911

lean_dec.exit3911:                                ; preds = %bb.aln, %bb.alo, %bb.alp
  %i.bck = load i32, ptr %i.ccw, align 8, !tbaa !10 ; 3 uses
  %i.bcl = icmp sgt i32 %i.bck, 1
  br i1 %i.bcl, label %bb.alq, label %bb.alr, !prof !11

bb.alq:                                           ; preds = %lean_dec.exit3911
  %i.bcm = add nsw i32 %i.bck, -1
  store i32 %i.bcm, ptr %i.ccw, align 8, !tbaa !10
  br label %lean_dec_ref.exit4648

bb.alr:                                           ; preds = %lean_dec.exit3911
  %.not.i4647 = icmp eq i32 %i.bck, 0
  br i1 %.not.i4647, label %lean_dec_ref.exit4648, label %bb.als

bb.als:                                           ; preds = %bb.alr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ccw) #7
  br label %lean_dec_ref.exit4648

lean_dec_ref.exit4648:                            ; preds = %bb.alq, %bb.alr, %bb.als
  %i.bcn = load i32, ptr %i.bqj, align 8, !tbaa !10 ; 3 uses
  %i.bco = icmp sgt i32 %i.bcn, 1
  br i1 %i.bco, label %bb.alt, label %bb.alu, !prof !11

bb.alt:                                           ; preds = %lean_dec_ref.exit4648
  %i.bcp = add nsw i32 %i.bcn, -1
  store i32 %i.bcp, ptr %i.bqj, align 8, !tbaa !10
  br label %lean_dec_ref.exit4646

bb.alu:                                           ; preds = %lean_dec_ref.exit4648
  %.not.i4645 = icmp eq i32 %i.bcn, 0
  br i1 %.not.i4645, label %lean_dec_ref.exit4646, label %bb.alv

bb.alv:                                           ; preds = %bb.alu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bqj) #7
  br label %lean_dec_ref.exit4646

lean_dec_ref.exit4646:                            ; preds = %bb.alt, %bb.alu, %bb.alv
  br i1 %.not.i3649, label %bb.alw, label %lean_dec.exit3909

bb.alw:                                           ; preds = %lean_dec_ref.exit4646
  %i.bcq = load i32, ptr %i.ec, align 4, !tbaa !10 ; 3 uses
  %i.bcr = icmp sgt i32 %i.bcq, 1
  br i1 %i.bcr, label %bb.alx, label %bb.aly, !prof !11

bb.alx:                                           ; preds = %bb.alw
  %i.bcs = add nsw i32 %i.bcq, -1
  store i32 %i.bcs, ptr %i.ec, align 4, !tbaa !10
  br label %lean_dec.exit3909

bb.aly:                                           ; preds = %bb.alw
  %.not.i4327 = icmp eq i32 %i.bcq, 0
  br i1 %.not.i4327, label %lean_dec.exit3909, label %bb.alz

bb.alz:                                           ; preds = %bb.aly
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ec) #7
  br label %lean_dec.exit3909

lean_dec.exit3909:                                ; preds = %bb.alz, %bb.aly, %bb.alx, %lean_dec_ref.exit4646
  br i1 %.not.i3655, label %bb.ama, label %lean_dec.exit3907

bb.ama:                                           ; preds = %lean_dec.exit3909
  %i.bct = load i32, ptr %i.cm, align 4, !tbaa !10 ; 3 uses
  %i.bcu = icmp sgt i32 %i.bct, 1
  br i1 %i.bcu, label %bb.amb, label %bb.amc, !prof !11

bb.amb:                                           ; preds = %bb.ama
  %i.bcv = add nsw i32 %i.bct, -1
  store i32 %i.bcv, ptr %i.cm, align 4, !tbaa !10
  br label %lean_dec.exit3907

bb.amc:                                           ; preds = %bb.ama
  %.not.i4329 = icmp eq i32 %i.bct, 0
  br i1 %.not.i4329, label %lean_dec.exit3907, label %bb.amd

bb.amd:                                           ; preds = %bb.amc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #7
  br label %lean_dec.exit3907

lean_dec.exit3907:                                ; preds = %bb.amd, %bb.amc, %bb.amb, %lean_dec.exit3909
  br i1 %.not.i4792, label %bb.ame, label %lean_dec.exit3905

bb.ame:                                           ; preds = %lean_dec.exit3907
  %i.bcw = load i32, ptr %i.bx, align 4, !tbaa !10 ; 3 uses
  %i.bcx = icmp sgt i32 %i.bcw, 1
  br i1 %i.bcx, label %bb.amf, label %bb.amg, !prof !11

bb.amf:                                           ; preds = %bb.ame
  %i.bcy = add nsw i32 %i.bcw, -1
  store i32 %i.bcy, ptr %i.bx, align 4, !tbaa !10
  br label %lean_dec.exit3905

bb.amg:                                           ; preds = %bb.ame
  %.not.i4331 = icmp eq i32 %i.bcw, 0
  br i1 %.not.i4331, label %lean_dec.exit3905, label %bb.amh

bb.amh:                                           ; preds = %bb.amg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bx) #7
  br label %lean_dec.exit3905

lean_dec.exit3905:                                ; preds = %bb.amh, %bb.amg, %bb.amf, %lean_dec.exit3907
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.bm, i32 noundef 1)
  br i1 %.not.i3645, label %bb.ami, label %lean_dec.exit3903

bb.ami:                                           ; preds = %lean_dec.exit3905
  %i.bcz = load i32, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.bda = icmp sgt i32 %i.bcz, 1
  br i1 %i.bda, label %bb.amj, label %bb.amk, !prof !11

bb.amj:                                           ; preds = %bb.ami
  %i.bdb = add nsw i32 %i.bcz, -1
  store i32 %i.bdb, ptr %i.aj, align 4, !tbaa !10
  br label %lean_dec.exit3903

bb.amk:                                           ; preds = %bb.ami
  %.not.i4333 = icmp eq i32 %i.bcz, 0
  br i1 %.not.i4333, label %lean_dec.exit3903, label %bb.aml

bb.aml:                                           ; preds = %bb.amk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aj) #7
  br label %lean_dec.exit3903

lean_dec.exit3903:                                ; preds = %bb.aml, %bb.amk, %bb.amj, %lean_dec.exit3905
  %i.bdc = load i32, ptr %9, align 4, !tbaa !10   ; 3 uses
  %i.bdd = icmp sgt i32 %i.bdc, 1
  br i1 %i.bdd, label %bb.amm, label %bb.amn, !prof !11

bb.amm:                                           ; preds = %lean_dec.exit3903
  %i.bde = add nsw i32 %i.bdc, -1
  store i32 %i.bde, ptr %9, align 4, !tbaa !10
  br label %lean_dec_ref.exit4644

bb.amn:                                           ; preds = %lean_dec.exit3903
  %.not.i4643 = icmp eq i32 %i.bdc, 0
  br i1 %.not.i4643, label %lean_dec_ref.exit4644, label %bb.amo

bb.amo:                                           ; preds = %bb.amn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #7
  br label %lean_dec_ref.exit4644

lean_dec_ref.exit4644:                            ; preds = %bb.amm, %bb.amn, %bb.amo
  %i.bdf = ptrtoint ptr %5 to i64
  %i.bdg = and i64 %i.bdf, 1
  %.not.i3900 = icmp eq i64 %i.bdg, 0
  br i1 %.not.i3900, label %bb.amp, label %lean_dec.exit3901

bb.amp:                                           ; preds = %lean_dec_ref.exit4644
  %i.bdh = load i32, ptr %5, align 4, !tbaa !10   ; 3 uses
  %i.bdi = icmp sgt i32 %i.bdh, 1
  br i1 %i.bdi, label %bb.amq, label %bb.amr, !prof !11

bb.amq:                                           ; preds = %bb.amp
  %i.bdj = add nsw i32 %i.bdh, -1
  store i32 %i.bdj, ptr %5, align 4, !tbaa !10
  br label %lean_dec.exit3901

bb.amr:                                           ; preds = %bb.amp
  %.not.i4335 = icmp eq i32 %i.bdh, 0
  br i1 %.not.i4335, label %lean_dec.exit3901, label %bb.ams

bb.ams:                                           ; preds = %bb.amr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit3901

lean_dec.exit3901:                                ; preds = %bb.ams, %bb.amr, %bb.amq, %lean_dec_ref.exit4644
  br i1 %.not.i3479, label %bb.amt, label %lean_dec.exit3899

bb.amt:                                           ; preds = %lean_dec.exit3901
  %i.bdk = load i32, ptr %2, align 4, !tbaa !10   ; 3 uses
  %i.bdl = icmp sgt i32 %i.bdk, 1
  br i1 %i.bdl, label %bb.amu, label %bb.amv, !prof !11

bb.amu:                                           ; preds = %bb.amt
  %i.bdm = add nsw i32 %i.bdk, -1
  store i32 %i.bdm, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit3899

bb.amv:                                           ; preds = %bb.amt
  %.not.i4337 = icmp eq i32 %i.bdk, 0
  br i1 %.not.i4337, label %lean_dec.exit3899, label %bb.amw

bb.amw:                                           ; preds = %bb.amv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit3899

lean_dec.exit3899:                                ; preds = %bb.amw, %bb.amv, %bb.amu, %lean_dec.exit3901
  %i.bdn = load i32, ptr %1, align 4, !tbaa !10   ; 3 uses
  %i.bdo = icmp sgt i32 %i.bdn, 1
  br i1 %i.bdo, label %bb.amx, label %bb.amy, !prof !11

bb.amx:                                           ; preds = %lean_dec.exit3899
  %i.bdp = add nsw i32 %i.bdn, -1
  store i32 %i.bdp, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit4642

bb.amy:                                           ; preds = %lean_dec.exit3899
  %.not.i4641 = icmp eq i32 %i.bdn, 0
  br i1 %.not.i4641, label %lean_dec_ref.exit4642, label %bb.amz

bb.amz:                                           ; preds = %bb.amy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit4642

lean_dec_ref.exit4642:                            ; preds = %bb.amx, %bb.amy, %bb.amz
  br i1 %.not.i3659, label %bb.ana, label %lean_dec.exit3897

bb.ana:                                           ; preds = %lean_dec_ref.exit4642
  %i.bdq = load i32, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.bdr = icmp sgt i32 %i.bdq, 1
  br i1 %i.bdr, label %bb.anb, label %bb.anc, !prof !11

bb.anb:                                           ; preds = %bb.ana
  %i.bds = add nsw i32 %i.bdq, -1
  store i32 %i.bds, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit3897

bb.anc:                                           ; preds = %bb.ana
  %.not.i4339 = icmp eq i32 %i.bdq, 0
  br i1 %.not.i4339, label %lean_dec.exit3897, label %bb.and

bb.and:                                           ; preds = %bb.anc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit3897

lean_dec.exit3897:                                ; preds = %bb.and, %bb.anc, %bb.anb, %lean_dec_ref.exit4642
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.awu, i64 8
  %i.bdu = load ptr, ptr %i.bdt, align 8, !tbaa !14 ; 5 uses
  %.val4765 = load i32, ptr %i.awu, align 8, !tbaa !10
  %i.bdv = icmp eq i32 %.val4765, 1
  br i1 %i.bdv, label %lean_dec.exit, label %bb.ane

bb.ane:                                           ; preds = %lean_dec.exit3897
  %i.bdw = ptrtoint ptr %i.bdu to i64
  %i.bdx = and i64 %i.bdw, 1
  %.not.i3515 = icmp eq i64 %i.bdx, 0
  br i1 %.not.i3515, label %bb.anf, label %lean_inc.exit3516

bb.anf:                                           ; preds = %bb.ane
  %.val.i.i5245 = load i32, ptr %i.bdu, align 4, !tbaa !10 ; 3 uses
  %i.bdy = icmp sgt i32 %.val.i.i5245, 0
  br i1 %i.bdy, label %bb.ang, label %bb.anh, !prof !11

bb.ang:                                           ; preds = %bb.anf
  %i.bdz = add nuw i32 %.val.i.i5245, 1
  store i32 %i.bdz, ptr %i.bdu, align 4, !tbaa !10
  br label %lean_inc.exit3516

bb.anh:                                           ; preds = %bb.anf
  %.not.i.i5246 = icmp eq i32 %.val.i.i5245, 0
  br i1 %.not.i.i5246, label %lean_inc.exit3516, label %bb.ani

bb.ani:                                           ; preds = %bb.anh
  %i.bea = atomicrmw sub ptr %i.bdu, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3516

lean_inc.exit3516:                                ; preds = %bb.ani, %bb.anh, %bb.ang, %bb.ane
  br i1 %.not.i5219, label %bb.anj, label %bb.ann

bb.anj:                                           ; preds = %lean_inc.exit3516
  %i.beb = load i32, ptr %i.awu, align 8, !tbaa !10 ; 3 uses
  %i.bec = icmp sgt i32 %i.beb, 1
  br i1 %i.bec, label %bb.ank, label %bb.anl, !prof !11

bb.ank:                                           ; preds = %bb.anj
  %i.bed = add nsw i32 %i.beb, -1
  store i32 %i.bed, ptr %i.awu, align 8, !tbaa !10
  br label %bb.ann

bb.anl:                                           ; preds = %bb.anj
end_hunk_13
begin_hunk_14_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__7:bb.a
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.bem, i32 noundef 1)
  br label %lean_dec.exit3891

bb.aod:                                           ; preds = %bb.aoc, %bb.aob, %bb.aoa
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.bem, i32 noundef 1)
  %i.bfb = load i32, ptr %i.bev, align 4, !tbaa !10 ; 3 uses
  %i.bfc = icmp sgt i32 %i.bfb, 1
  br i1 %i.bfc, label %bb.aoe, label %bb.aof, !prof !11

bb.aoe:                                           ; preds = %bb.aod
  %i.bfd = add nsw i32 %i.bfb, -1
  store i32 %i.bfd, ptr %i.bev, align 4, !tbaa !10
  br label %lean_dec.exit3891

bb.aof:                                           ; preds = %bb.aod
  %.not.i4345 = icmp eq i32 %i.bfb, 0
  br i1 %.not.i4345, label %lean_dec.exit3891, label %bb.aog

bb.aog:                                           ; preds = %bb.aof
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bev) #7
  br label %lean_dec.exit3891

lean_dec.exit3891:                                ; preds = %bb.aog, %bb.aof, %bb.aoe, %lean_inc.exit3514
  %i.bfe = and i64 %i.bew, 510
  %i.bff = icmp eq i64 %i.bfe, 0
  br i1 %i.bff, label %bb.aoh, label %bb.aom

bb.aoh:                                           ; preds = %lean_dec.exit3891
  br i1 %.not.i4792, label %bb.aoi, label %bb.abw

bb.aoi:                                           ; preds = %bb.aoh
  %i.bfg = load i32, ptr %i.bx, align 4, !tbaa !10 ; 3 uses
  %i.bfh = icmp sgt i32 %i.bfg, 1
  br i1 %i.bfh, label %bb.aoj, label %bb.aok, !prof !11

bb.aoj:                                           ; preds = %bb.aoi
  %i.bfi = add nsw i32 %i.bfg, -1
  store i32 %i.bfi, ptr %i.bx, align 4, !tbaa !10
  br label %bb.abw

bb.aok:                                           ; preds = %bb.aoi
  %.not.i4347 = icmp eq i32 %i.bfg, 0
  br i1 %.not.i4347, label %bb.abw, label %bb.aol

bb.aol:                                           ; preds = %bb.aok
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bx) #7
  br label %bb.abw

bb.aom:                                           ; preds = %lean_dec.exit3891
  %i.bfj = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__28_once seq_cst, align 4, !tbaa !20
  %i.bfk = icmp eq i32 %i.bfj, 1
  br i1 %i.bfk, label %bb.aon, label %bb.aoo, !prof !11

bb.aon:                                           ; preds = %bb.aom
  %i.bfl = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__28, align 8, !tbaa !14
  br label %lean_obj_once.exit5256

bb.aoo:                                           ; preds = %bb.aom
  %i.bfm = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__28, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__28_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__28) #7
  br label %lean_obj_once.exit5256

lean_obj_once.exit5256:                           ; preds = %bb.aon, %bb.aoo
  %.0.i5255 = phi ptr [ %i.bfl, %bb.aon ], [ %i.bfm, %bb.aoo ]
  %i.bfn = tail call ptr @l_Lean_MessageData_ofConstName(ptr noundef %i.bx, i8 noundef zeroext 0) #7
  %i.bfo = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfo, i64 8
  store ptr %.0.i5255, ptr %i.bfp, align 8, !tbaa !14
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bfo, i64 16
  store ptr %i.bfn, ptr %i.bfq, align 8, !tbaa !14
  %i.bfr = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__32_once seq_cst, align 4, !tbaa !20
  %i.bfs = icmp eq i32 %i.bfr, 1
  br i1 %i.bfs, label %bb.aop, label %bb.aoq, !prof !11

bb.aop:                                           ; preds = %lean_obj_once.exit5256
  %i.bft = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__32, align 8, !tbaa !14
  br label %lean_obj_once.exit5258

bb.aoq:                                           ; preds = %lean_obj_once.exit5256
  %i.bfu = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__32, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__32_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__32) #7
  br label %lean_obj_once.exit5258

lean_obj_once.exit5258:                           ; preds = %bb.aop, %bb.aoq
  %.0.i5257 = phi ptr [ %i.bft, %bb.aop ], [ %i.bfu, %bb.aoq ]
  %i.bfv = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfv, i64 8
  store ptr %i.bfo, ptr %i.bfw, align 8, !tbaa !14
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfv, i64 16
  store ptr %.0.i5257, ptr %i.bfx, align 8, !tbaa !14
  %i.bfy = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__2_value, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__3_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__24_value) #7
  %i.bfz = tail call ptr @l_Lean_MessageData_ofConstName(ptr noundef %i.bfy, i8 noundef zeroext 0) #7
  %i.bga = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.bga, i64 8
  store ptr %i.bfv, ptr %i.bgb, align 8, !tbaa !14
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bga, i64 16
  store ptr %i.bfz, ptr %i.bgc, align 8, !tbaa !14
  %i.bgd = tail call ptr @l_Lean_addTrace___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__0___redArg(ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__4_value, ptr noundef nonnull %i.bga, ptr noundef nonnull %13, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %16) ; 9 uses
  %i.bge = ptrtoint ptr %i.bgd to i64             ; 2 uses
  %i.bgf = and i64 %i.bge, 1
  %.not.i5259 = icmp eq i64 %i.bgf, 0             ; 2 uses
  br i1 %.not.i5259, label %bb.aos, label %bb.aor

bb.aor:                                           ; preds = %lean_obj_once.exit5258
  %i.bgg = lshr i64 %i.bge, 1
  %i.bgh = trunc i64 %i.bgg to i32
  br label %lean_obj_tag.exit5262

bb.aos:                                           ; preds = %lean_obj_once.exit5258
  %i.bgi = getelementptr i8, ptr %i.bgd, i64 4
  %.val.i5261 = load i32, ptr %i.bgi, align 4
  %i.bgj = lshr i32 %.val.i5261, 24
  br label %lean_obj_tag.exit5262

lean_obj_tag.exit5262:                            ; preds = %bb.aor, %bb.aos
  %.0.i5260 = phi i32 [ %i.bgh, %bb.aor ], [ %i.bgj, %bb.aos ]
  %i.bgk = icmp eq i32 %.0.i5260, 0
  br i1 %i.bgk, label %bb.aot, label %lean_dec.exit3881

bb.aot:                                           ; preds = %lean_obj_tag.exit5262
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.bgd, i32 noundef 1)
  br label %bb.abw

lean_dec.exit3881:                                ; preds = %lean_obj_tag.exit5262
  %i.bgl = load i32, ptr %.0.i5292, align 4, !tbaa !10 ; 3 uses
  %i.bgm = icmp sgt i32 %i.bgl, 1
  br i1 %i.bgm, label %bb.aou, label %bb.aov, !prof !11

bb.aou:                                           ; preds = %lean_dec.exit3881
  %i.bgn = add nsw i32 %i.bgl, -1
  store i32 %i.bgn, ptr %.0.i5292, align 4, !tbaa !10
  br label %lean_dec.exit3879

bb.aov:                                           ; preds = %lean_dec.exit3881
  %.not.i4637 = icmp eq i32 %i.bgl, 0
  br i1 %.not.i4637, label %lean_dec.exit3879, label %bb.aow

bb.aow:                                           ; preds = %bb.aov
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i5292) #7
  br label %lean_dec.exit3879

lean_dec.exit3879:                                ; preds = %bb.aou, %bb.aov, %bb.aow
  %i.bgo = load i32, ptr %.0.i5296, align 4, !tbaa !10 ; 3 uses
  %i.bgp = icmp sgt i32 %i.bgo, 1
  br i1 %i.bgp, label %bb.aox, label %bb.aoy, !prof !11

bb.aox:                                           ; preds = %lean_dec.exit3879
  %i.bgq = add nsw i32 %i.bgo, -1
  store i32 %i.bgq, ptr %.0.i5296, align 4, !tbaa !10
  br label %lean_dec_ref.exit4636

bb.aoy:                                           ; preds = %lean_dec.exit3879
  %.not.i4635 = icmp eq i32 %i.bgo, 0
  br i1 %.not.i4635, label %lean_dec_ref.exit4636, label %bb.aoz

bb.aoz:                                           ; preds = %bb.aoy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i5296) #7
  br label %lean_dec_ref.exit4636

lean_dec_ref.exit4636:                            ; preds = %bb.aox, %bb.aoy, %bb.aoz
  %i.bgr = load i32, ptr %i.ccw, align 8, !tbaa !10 ; 3 uses
  %i.bgs = icmp sgt i32 %i.bgr, 1
  br i1 %i.bgs, label %bb.apa, label %bb.apb, !prof !11

bb.apa:                                           ; preds = %lean_dec_ref.exit4636
  %i.bgt = add nsw i32 %i.bgr, -1
  store i32 %i.bgt, ptr %i.ccw, align 8, !tbaa !10
  br label %lean_dec.exit3877

bb.apb:                                           ; preds = %lean_dec_ref.exit4636
  %.not.i4633 = icmp eq i32 %i.bgr, 0
  br i1 %.not.i4633, label %lean_dec.exit3877, label %bb.apc

bb.apc:                                           ; preds = %bb.apb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ccw) #7
  br label %lean_dec.exit3877

lean_dec.exit3877:                                ; preds = %bb.apa, %bb.apb, %bb.apc
  br i1 %.not.i3503, label %bb.apd, label %lean_dec.exit3875

bb.apd:                                           ; preds = %lean_dec.exit3877
  %i.bgu = load i32, ptr %i.bqd, align 4, !tbaa !10 ; 3 uses
  %i.bgv = icmp sgt i32 %i.bgu, 1
  br i1 %i.bgv, label %bb.ape, label %bb.apf, !prof !11

bb.ape:                                           ; preds = %bb.apd
  %i.bgw = add nsw i32 %i.bgu, -1
  store i32 %i.bgw, ptr %i.bqd, align 4, !tbaa !10
  br label %lean_dec.exit3875

bb.apf:                                           ; preds = %bb.apd
  %.not.i4353 = icmp eq i32 %i.bgu, 0
  br i1 %.not.i4353, label %lean_dec.exit3875, label %bb.apg

bb.apg:                                           ; preds = %bb.apf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bqd) #7
  br label %lean_dec.exit3875

lean_dec.exit3875:                                ; preds = %bb.apg, %bb.apf, %bb.ape, %lean_dec.exit3877
  br i1 %.not.i3655, label %bb.aph, label %lean_dec.exit3873

bb.aph:                                           ; preds = %lean_dec.exit3875
  %i.bgx = load i32, ptr %i.cm, align 4, !tbaa !10 ; 3 uses
  %i.bgy = icmp sgt i32 %i.bgx, 1
  br i1 %i.bgy, label %bb.api, label %bb.apj, !prof !11

bb.api:                                           ; preds = %bb.aph
  %i.bgz = add nsw i32 %i.bgx, -1
  store i32 %i.bgz, ptr %i.cm, align 4, !tbaa !10
  br label %lean_dec.exit3873

bb.apj:                                           ; preds = %bb.aph
  %.not.i4355 = icmp eq i32 %i.bgx, 0
  br i1 %.not.i4355, label %lean_dec.exit3873, label %bb.apk

bb.apk:                                           ; preds = %bb.apj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #7
  br label %lean_dec.exit3873

lean_dec.exit3873:                                ; preds = %bb.apk, %bb.apj, %bb.api, %lean_dec.exit3875
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.bm, i32 noundef 1)
  br i1 %.not.i3645, label %bb.apl, label %lean_dec.exit3871

bb.apl:                                           ; preds = %lean_dec.exit3873
  %i.bha = load i32, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.bhb = icmp sgt i32 %i.bha, 1
  br i1 %i.bhb, label %bb.apm, label %bb.apn, !prof !11

bb.apm:                                           ; preds = %bb.apl
  %i.bhc = add nsw i32 %i.bha, -1
  store i32 %i.bhc, ptr %i.aj, align 4, !tbaa !10
  br label %lean_dec.exit3871

bb.apn:                                           ; preds = %bb.apl
  %.not.i4357 = icmp eq i32 %i.bha, 0
  br i1 %.not.i4357, label %lean_dec.exit3871, label %bb.apo

bb.apo:                                           ; preds = %bb.apn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aj) #7
  br label %lean_dec.exit3871

lean_dec.exit3871:                                ; preds = %bb.apo, %bb.apn, %bb.apm, %lean_dec.exit3873
  %i.bhd = load i32, ptr %9, align 4, !tbaa !10   ; 3 uses
  %i.bhe = icmp sgt i32 %i.bhd, 1
  br i1 %i.bhe, label %bb.app, label %bb.apq, !prof !11

bb.app:                                           ; preds = %lean_dec.exit3871
  %i.bhf = add nsw i32 %i.bhd, -1
  store i32 %i.bhf, ptr %9, align 4, !tbaa !10
  br label %lean_dec_ref.exit4632

bb.apq:                                           ; preds = %lean_dec.exit3871
  %.not.i4631 = icmp eq i32 %i.bhd, 0
  br i1 %.not.i4631, label %lean_dec_ref.exit4632, label %bb.apr

bb.apr:                                           ; preds = %bb.apq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #7
  br label %lean_dec_ref.exit4632

lean_dec_ref.exit4632:                            ; preds = %bb.app, %bb.apq, %bb.apr
  %i.bhg = ptrtoint ptr %5 to i64
  %i.bhh = and i64 %i.bhg, 1
  %.not.i3868 = icmp eq i64 %i.bhh, 0
  br i1 %.not.i3868, label %bb.aps, label %lean_dec.exit3869

bb.aps:                                           ; preds = %lean_dec_ref.exit4632
  %i.bhi = load i32, ptr %5, align 4, !tbaa !10   ; 3 uses
  %i.bhj = icmp sgt i32 %i.bhi, 1
  br i1 %i.bhj, label %bb.apt, label %bb.apu, !prof !11

bb.apt:                                           ; preds = %bb.aps
  %i.bhk = add nsw i32 %i.bhi, -1
  store i32 %i.bhk, ptr %5, align 4, !tbaa !10
  br label %lean_dec.exit3869

bb.apu:                                           ; preds = %bb.aps
  %.not.i4359 = icmp eq i32 %i.bhi, 0
  br i1 %.not.i4359, label %lean_dec.exit3869, label %bb.apv

bb.apv:                                           ; preds = %bb.apu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit3869

lean_dec.exit3869:                                ; preds = %bb.apv, %bb.apu, %bb.apt, %lean_dec_ref.exit4632
  br i1 %.not.i3479, label %bb.apw, label %lean_dec.exit3867

bb.apw:                                           ; preds = %lean_dec.exit3869
  %i.bhl = load i32, ptr %2, align 4, !tbaa !10   ; 3 uses
  %i.bhm = icmp sgt i32 %i.bhl, 1
  br i1 %i.bhm, label %bb.apx, label %bb.apy, !prof !11

bb.apx:                                           ; preds = %bb.apw
  %i.bhn = add nsw i32 %i.bhl, -1
  store i32 %i.bhn, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit3867

bb.apy:                                           ; preds = %bb.apw
  %.not.i4361 = icmp eq i32 %i.bhl, 0
  br i1 %.not.i4361, label %lean_dec.exit3867, label %bb.apz

bb.apz:                                           ; preds = %bb.apy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit3867

lean_dec.exit3867:                                ; preds = %bb.apz, %bb.apy, %bb.apx, %lean_dec.exit3869
  %i.bho = load i32, ptr %1, align 4, !tbaa !10   ; 3 uses
  %i.bhp = icmp sgt i32 %i.bho, 1
  br i1 %i.bhp, label %bb.aqa, label %bb.aqb, !prof !11

bb.aqa:                                           ; preds = %lean_dec.exit3867
  %i.bhq = add nsw i32 %i.bho, -1
  store i32 %i.bhq, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit4630

bb.aqb:                                           ; preds = %lean_dec.exit3867
  %.not.i4629 = icmp eq i32 %i.bho, 0
  br i1 %.not.i4629, label %lean_dec_ref.exit4630, label %bb.aqc

bb.aqc:                                           ; preds = %bb.aqb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit4630

lean_dec_ref.exit4630:                            ; preds = %bb.aqa, %bb.aqb, %bb.aqc
  br i1 %.not.i3659, label %bb.aqd, label %lean_dec.exit3865

bb.aqd:                                           ; preds = %lean_dec_ref.exit4630
  %i.bhr = load i32, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.bhs = icmp sgt i32 %i.bhr, 1
  br i1 %i.bhs, label %bb.aqe, label %bb.aqf, !prof !11

bb.aqe:                                           ; preds = %bb.aqd
  %i.bht = add nsw i32 %i.bhr, -1
  store i32 %i.bht, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit3865

bb.aqf:                                           ; preds = %bb.aqd
  %.not.i4363 = icmp eq i32 %i.bhr, 0
  br i1 %.not.i4363, label %lean_dec.exit3865, label %bb.aqg

bb.aqg:                                           ; preds = %bb.aqf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit3865

lean_dec.exit3865:                                ; preds = %bb.aqg, %bb.aqf, %bb.aqe, %lean_dec_ref.exit4630
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bgd, i64 8
  %i.bhv = load ptr, ptr %i.bhu, align 8, !tbaa !14 ; 5 uses
  %.val4764 = load i32, ptr %i.bgd, align 8, !tbaa !10
  %i.bhw = icmp eq i32 %.val4764, 1
  br i1 %i.bhw, label %lean_dec.exit, label %bb.aqh

bb.aqh:                                           ; preds = %lean_dec.exit3865
  %i.bhx = ptrtoint ptr %i.bhv to i64
  %i.bhy = and i64 %i.bhx, 1
  %.not.i3511 = icmp eq i64 %i.bhy, 0
  br i1 %.not.i3511, label %bb.aqi, label %lean_inc.exit3512

bb.aqi:                                           ; preds = %bb.aqh
  %.val.i.i5263 = load i32, ptr %i.bhv, align 4, !tbaa !10 ; 3 uses
  %i.bhz = icmp sgt i32 %.val.i.i5263, 0
  br i1 %i.bhz, label %bb.aqj, label %bb.aqk, !prof !11

bb.aqj:                                           ; preds = %bb.aqi
  %i.bia = add nuw i32 %.val.i.i5263, 1
  store i32 %i.bia, ptr %i.bhv, align 4, !tbaa !10
  br label %lean_inc.exit3512

bb.aqk:                                           ; preds = %bb.aqi
  %.not.i.i5264 = icmp eq i32 %.val.i.i5263, 0
  br i1 %.not.i.i5264, label %lean_inc.exit3512, label %bb.aql

bb.aql:                                           ; preds = %bb.aqk
  %i.bib = atomicrmw sub ptr %i.bhv, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3512

lean_inc.exit3512:                                ; preds = %bb.aql, %bb.aqk, %bb.aqj, %bb.aqh
  br i1 %.not.i5259, label %bb.aqm, label %bb.aqq

bb.aqm:                                           ; preds = %lean_inc.exit3512
  %i.bic = load i32, ptr %i.bgd, align 8, !tbaa !10 ; 3 uses
  %i.bid = icmp sgt i32 %i.bic, 1
  br i1 %i.bid, label %bb.aqn, label %bb.aqo, !prof !11

bb.aqn:                                           ; preds = %bb.aqm
  %i.bie = add nsw i32 %i.bic, -1
  store i32 %i.bie, ptr %i.bgd, align 8, !tbaa !10
  br label %bb.aqq

bb.aqo:                                           ; preds = %bb.aqm
  %.not.i4365 = icmp eq i32 %i.bic, 0
  br i1 %.not.i4365, label %bb.aqq, label %bb.aqp

bb.aqp:                                           ; preds = %bb.aqo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bgd) #7
  br label %bb.aqq

bb.aqq:                                           ; preds = %lean_inc.exit3512, %bb.aqn, %bb.aqo, %bb.aqp
  %i.bif = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.big = getelementptr inbounds nuw i8, ptr %i.bif, i64 8
  store ptr %i.bhv, ptr %i.big, align 8, !tbaa !14
  br label %lean_dec.exit

lean_dec.exit3855:                                ; preds = %lean_obj_tag.exit5251
  %i.bih = load i32, ptr %.0.i5292, align 4, !tbaa !10 ; 3 uses
  %i.bii = icmp sgt i32 %i.bih, 1
  br i1 %i.bii, label %bb.aqr, label %bb.aqs, !prof !11

bb.aqr:                                           ; preds = %lean_dec.exit3855
  %i.bij = add nsw i32 %i.bih, -1
  store i32 %i.bij, ptr %.0.i5292, align 4, !tbaa !10
  br label %lean_dec.exit3853

bb.aqs:                                           ; preds = %lean_dec.exit3855
  %.not.i4627 = icmp eq i32 %i.bih, 0
  br i1 %.not.i4627, label %lean_dec.exit3853, label %bb.aqt

bb.aqt:                                           ; preds = %bb.aqs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i5292) #7
  br label %lean_dec.exit3853

lean_dec.exit3853:                                ; preds = %bb.aqr, %bb.aqs, %bb.aqt
  %i.bik = load i32, ptr %.0.i5296, align 4, !tbaa !10 ; 3 uses
  %i.bil = icmp sgt i32 %i.bik, 1
  br i1 %i.bil, label %bb.aqu, label %bb.aqv, !prof !11

bb.aqu:                                           ; preds = %lean_dec.exit3853
  %i.bim = add nsw i32 %i.bik, -1
  store i32 %i.bim, ptr %.0.i5296, align 4, !tbaa !10
  br label %lean_dec_ref.exit4626

bb.aqv:                                           ; preds = %lean_dec.exit3853
  %.not.i4625 = icmp eq i32 %i.bik, 0
  br i1 %.not.i4625, label %lean_dec_ref.exit4626, label %bb.aqw

bb.aqw:                                           ; preds = %bb.aqv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i5296) #7
  br label %lean_dec_ref.exit4626

lean_dec_ref.exit4626:                            ; preds = %bb.aqu, %bb.aqv, %bb.aqw
  %i.bin = load i32, ptr %i.ccw, align 8, !tbaa !10 ; 3 uses
  %i.bio = icmp sgt i32 %i.bin, 1
  br i1 %i.bio, label %bb.aqx, label %bb.aqy, !prof !11

bb.aqx:                                           ; preds = %lean_dec_ref.exit4626
  %i.bip = add nsw i32 %i.bin, -1
  store i32 %i.bip, ptr %i.ccw, align 8, !tbaa !10
  br label %lean_dec.exit3851

bb.aqy:                                           ; preds = %lean_dec_ref.exit4626
  %.not.i4623 = icmp eq i32 %i.bin, 0
  br i1 %.not.i4623, label %lean_dec.exit3851, label %bb.aqz

bb.aqz:                                           ; preds = %bb.aqy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ccw) #7
  br label %lean_dec.exit3851

lean_dec.exit3851:                                ; preds = %bb.aqx, %bb.aqy, %bb.aqz
  br i1 %.not.i3503, label %bb.ara, label %lean_dec.exit3849

bb.ara:                                           ; preds = %lean_dec.exit3851
  %i.biq = load i32, ptr %i.bqd, align 4, !tbaa !10 ; 3 uses
  %i.bir = icmp sgt i32 %i.biq, 1
  br i1 %i.bir, label %bb.arb, label %bb.arc, !prof !11

bb.arb:                                           ; preds = %bb.ara
  %i.bis = add nsw i32 %i.biq, -1
  store i32 %i.bis, ptr %i.bqd, align 4, !tbaa !10
  br label %lean_dec.exit3849

bb.arc:                                           ; preds = %bb.ara
  %.not.i4371 = icmp eq i32 %i.biq, 0
  br i1 %.not.i4371, label %lean_dec.exit3849, label %bb.ard

bb.ard:                                           ; preds = %bb.arc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bqd) #7
  br label %lean_dec.exit3849

lean_dec.exit3849:                                ; preds = %bb.ard, %bb.arc, %bb.arb, %lean_dec.exit3851
  br i1 %.not.i3655, label %bb.are, label %lean_dec.exit3847

bb.are:                                           ; preds = %lean_dec.exit3849
  %i.bit = load i32, ptr %i.cm, align 4, !tbaa !10 ; 3 uses
  %i.biu = icmp sgt i32 %i.bit, 1
  br i1 %i.biu, label %bb.arf, label %bb.arg, !prof !11

bb.arf:                                           ; preds = %bb.are
  %i.biv = add nsw i32 %i.bit, -1
  store i32 %i.biv, ptr %i.cm, align 4, !tbaa !10
  br label %lean_dec.exit3847

bb.arg:                                           ; preds = %bb.are
  %.not.i4373 = icmp eq i32 %i.bit, 0
  br i1 %.not.i4373, label %lean_dec.exit3847, label %bb.arh

bb.arh:                                           ; preds = %bb.arg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #7
  br label %lean_dec.exit3847

lean_dec.exit3847:                                ; preds = %bb.arh, %bb.arg, %bb.arf, %lean_dec.exit3849
  br i1 %.not.i4792, label %bb.ari, label %lean_dec.exit3845

bb.ari:                                           ; preds = %lean_dec.exit3847
  %i.biw = load i32, ptr %i.bx, align 4, !tbaa !10 ; 3 uses
  %i.bix = icmp sgt i32 %i.biw, 1
  br i1 %i.bix, label %bb.arj, label %bb.ark, !prof !11

bb.arj:                                           ; preds = %bb.ari
  %i.biy = add nsw i32 %i.biw, -1
  store i32 %i.biy, ptr %i.bx, align 4, !tbaa !10
  br label %lean_dec.exit3845

bb.ark:                                           ; preds = %bb.ari
  %.not.i4375 = icmp eq i32 %i.biw, 0
  br i1 %.not.i4375, label %lean_dec.exit3845, label %bb.arl

bb.arl:                                           ; preds = %bb.ark
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bx) #7
  br label %lean_dec.exit3845

lean_dec.exit3845:                                ; preds = %bb.arl, %bb.ark, %bb.arj, %lean_dec.exit3847
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.bm, i32 noundef 1)
  br i1 %.not.i3645, label %bb.arm, label %lean_dec.exit3843

bb.arm:                                           ; preds = %lean_dec.exit3845
  %i.biz = load i32, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.bja = icmp sgt i32 %i.biz, 1
  br i1 %i.bja, label %bb.arn, label %bb.aro, !prof !11

bb.arn:                                           ; preds = %bb.arm
  %i.bjb = add nsw i32 %i.biz, -1
  store i32 %i.bjb, ptr %i.aj, align 4, !tbaa !10
  br label %lean_dec.exit3843

bb.aro:                                           ; preds = %bb.arm
  %.not.i4377 = icmp eq i32 %i.biz, 0
  br i1 %.not.i4377, label %lean_dec.exit3843, label %bb.arp

bb.arp:                                           ; preds = %bb.aro
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aj) #7
  br label %lean_dec.exit3843

lean_dec.exit3843:                                ; preds = %bb.arp, %bb.aro, %bb.arn, %lean_dec.exit3845
  %i.bjc = load i32, ptr %9, align 4, !tbaa !10   ; 3 uses
  %i.bjd = icmp sgt i32 %i.bjc, 1
  br i1 %i.bjd, label %bb.arq, label %bb.arr, !prof !11

bb.arq:                                           ; preds = %lean_dec.exit3843
  %i.bje = add nsw i32 %i.bjc, -1
  store i32 %i.bje, ptr %9, align 4, !tbaa !10
  br label %lean_dec_ref.exit4622

bb.arr:                                           ; preds = %lean_dec.exit3843
  %.not.i4621 = icmp eq i32 %i.bjc, 0
  br i1 %.not.i4621, label %lean_dec_ref.exit4622, label %bb.ars

bb.ars:                                           ; preds = %bb.arr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #7
  br label %lean_dec_ref.exit4622

lean_dec_ref.exit4622:                            ; preds = %bb.arq, %bb.arr, %bb.ars
  %i.bjf = ptrtoint ptr %5 to i64
  %i.bjg = and i64 %i.bjf, 1
  %.not.i3840 = icmp eq i64 %i.bjg, 0
  br i1 %.not.i3840, label %bb.art, label %lean_dec.exit3841

bb.art:                                           ; preds = %lean_dec_ref.exit4622
  %i.bjh = load i32, ptr %5, align 4, !tbaa !10   ; 3 uses
  %i.bji = icmp sgt i32 %i.bjh, 1
  br i1 %i.bji, label %bb.aru, label %bb.arv, !prof !11

bb.aru:                                           ; preds = %bb.art
  %i.bjj = add nsw i32 %i.bjh, -1
  store i32 %i.bjj, ptr %5, align 4, !tbaa !10
  br label %lean_dec.exit3841

bb.arv:                                           ; preds = %bb.art
  %.not.i4379 = icmp eq i32 %i.bjh, 0
  br i1 %.not.i4379, label %lean_dec.exit3841, label %bb.arw

bb.arw:                                           ; preds = %bb.arv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit3841

lean_dec.exit3841:                                ; preds = %bb.arw, %bb.arv, %bb.aru, %lean_dec_ref.exit4622
  br i1 %.not.i3479, label %bb.arx, label %lean_dec.exit3839

bb.arx:                                           ; preds = %lean_dec.exit3841
  %i.bjk = load i32, ptr %2, align 4, !tbaa !10   ; 3 uses
  %i.bjl = icmp sgt i32 %i.bjk, 1
  br i1 %i.bjl, label %bb.ary, label %bb.arz, !prof !11

bb.ary:                                           ; preds = %bb.arx
  %i.bjm = add nsw i32 %i.bjk, -1
  store i32 %i.bjm, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit3839

bb.arz:                                           ; preds = %bb.arx
  %.not.i4381 = icmp eq i32 %i.bjk, 0
  br i1 %.not.i4381, label %lean_dec.exit3839, label %bb.asa

bb.asa:                                           ; preds = %bb.arz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit3839

lean_dec.exit3839:                                ; preds = %bb.asa, %bb.arz, %bb.ary, %lean_dec.exit3841
  %i.bjn = load i32, ptr %1, align 4, !tbaa !10   ; 3 uses
  %i.bjo = icmp sgt i32 %i.bjn, 1
  br i1 %i.bjo, label %bb.asb, label %bb.asc, !prof !11

bb.asb:                                           ; preds = %lean_dec.exit3839
  %i.bjp = add nsw i32 %i.bjn, -1
  store i32 %i.bjp, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit4620

bb.asc:                                           ; preds = %lean_dec.exit3839
  %.not.i4619 = icmp eq i32 %i.bjn, 0
  br i1 %.not.i4619, label %lean_dec_ref.exit4620, label %bb.asd

bb.asd:                                           ; preds = %bb.asc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit4620

lean_dec_ref.exit4620:                            ; preds = %bb.asb, %bb.asc, %bb.asd
  br i1 %.not.i3659, label %bb.ase, label %lean_dec.exit3837

bb.ase:                                           ; preds = %lean_dec_ref.exit4620
  %i.bjq = load i32, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.bjr = icmp sgt i32 %i.bjq, 1
  br i1 %i.bjr, label %bb.asf, label %bb.asg, !prof !11

bb.asf:                                           ; preds = %bb.ase
  %i.bjs = add nsw i32 %i.bjq, -1
  store i32 %i.bjs, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit3837

bb.asg:                                           ; preds = %bb.ase
  %.not.i4383 = icmp eq i32 %i.bjq, 0
  br i1 %.not.i4383, label %lean_dec.exit3837, label %bb.ash

bb.ash:                                           ; preds = %bb.asg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit3837

lean_dec.exit3837:                                ; preds = %bb.ash, %bb.asg, %bb.asf, %lean_dec_ref.exit4620
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bem, i64 8
  %i.bju = load ptr, ptr %i.bjt, align 8, !tbaa !14 ; 5 uses
  %.val4763 = load i32, ptr %i.bem, align 8, !tbaa !10
  %i.bjv = icmp eq i32 %.val4763, 1
  br i1 %i.bjv, label %lean_dec.exit, label %bb.asi

bb.asi:                                           ; preds = %lean_dec.exit3837
  %i.bjw = ptrtoint ptr %i.bju to i64
  %i.bjx = and i64 %i.bjw, 1
  %.not.i3509 = icmp eq i64 %i.bjx, 0
  br i1 %.not.i3509, label %bb.asj, label %lean_inc.exit3510

bb.asj:                                           ; preds = %bb.asi
  %.val.i.i5266 = load i32, ptr %i.bju, align 4, !tbaa !10 ; 3 uses
  %i.bjy = icmp sgt i32 %.val.i.i5266, 0
  br i1 %i.bjy, label %bb.ask, label %bb.asl, !prof !11

bb.ask:                                           ; preds = %bb.asj
  %i.bjz = add nuw i32 %.val.i.i5266, 1
  store i32 %i.bjz, ptr %i.bju, align 4, !tbaa !10
  br label %lean_inc.exit3510

bb.asl:                                           ; preds = %bb.asj
  %.not.i.i5267 = icmp eq i32 %.val.i.i5266, 0
  br i1 %.not.i.i5267, label %lean_inc.exit3510, label %bb.asm

bb.asm:                                           ; preds = %bb.asl
  %i.bka = atomicrmw sub ptr %i.bju, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3510

lean_inc.exit3510:                                ; preds = %bb.asm, %bb.asl, %bb.ask, %bb.asi
  br i1 %.not.i5248, label %bb.asn, label %bb.asr

bb.asn:                                           ; preds = %lean_inc.exit3510
  %i.bkb = load i32, ptr %i.bem, align 8, !tbaa !10 ; 3 uses
  %i.bkc = icmp sgt i32 %i.bkb, 1
  br i1 %i.bkc, label %bb.aso, label %bb.asp, !prof !11

bb.aso:                                           ; preds = %bb.asn
  %i.bkd = add nsw i32 %i.bkb, -1
  store i32 %i.bkd, ptr %i.bem, align 8, !tbaa !10
  br label %bb.asr

bb.asp:                                           ; preds = %bb.asn
end_hunk_14
begin_hunk_15_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__7:bb.a
  %i.btb = and i64 %i.bta, 1
  %.not.i5328 = icmp eq i64 %i.btb, 0             ; 2 uses
  br i1 %.not.i5328, label %lean_obj_tag.exit5331, label %lean_obj_tag.exit5331.thread

lean_obj_tag.exit5331:                            ; preds = %lean_inc.exit3494
  %i.btc = getelementptr i8, ptr %i.bsz, i64 4
  %.val.i5330 = load i32, ptr %i.btc, align 4
  %i.btd = icmp ult i32 %.val.i5330, 16777216
  br i1 %i.btd, label %bb.awg, label %lean_obj_tag.exit5338.thread

lean_obj_tag.exit5331.thread:                     ; preds = %lean_inc.exit3494
  %i.bte = and i64 %i.bta, 8589934590
  %i.btf = icmp eq i64 %i.bte, 0
  br i1 %i.btf, label %bb.awg, label %lean_obj_tag.exit5338

bb.awg:                                           ; preds = %lean_obj_tag.exit5331.thread, %lean_obj_tag.exit5331
  %i.btg = getelementptr inbounds nuw i8, ptr %i.bsz, i64 8
  %i.bth = load ptr, ptr %i.btg, align 8, !tbaa !14 ; 7 uses
  %i.bti = ptrtoint ptr %i.bth to i64             ; 5 uses
  %i.btj = and i64 %i.bti, 1
  %.not.i3491 = icmp eq i64 %i.btj, 0
  br i1 %.not.i3491, label %bb.awh, label %lean_inc.exit3492

bb.awh:                                           ; preds = %bb.awg
  %.val.i.i5332 = load i32, ptr %i.bth, align 4, !tbaa !10 ; 3 uses
  %i.btk = icmp sgt i32 %.val.i.i5332, 0
  br i1 %i.btk, label %bb.awi, label %bb.awj, !prof !11

bb.awi:                                           ; preds = %bb.awh
  %i.btl = add nuw i32 %.val.i.i5332, 1
  store i32 %i.btl, ptr %i.bth, align 4, !tbaa !10
  br label %bb.awl

bb.awj:                                           ; preds = %bb.awh
  %.not.i.i5333 = icmp eq i32 %.val.i.i5332, 0
  br i1 %.not.i.i5333, label %bb.awl, label %bb.awk

bb.awk:                                           ; preds = %bb.awj
  %i.btm = atomicrmw sub ptr %i.bth, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.awl

lean_inc.exit3492:                                ; preds = %bb.awg
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.bsz, i32 noundef 1)
  br label %bb.agr

bb.awl:                                           ; preds = %bb.awk, %bb.awj, %bb.awi
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.bsz, i32 noundef 1)
  %i.btn = load i32, ptr %i.bth, align 4, !tbaa !10 ; 3 uses
  %i.bto = icmp sgt i32 %i.btn, 1
  br i1 %i.bto, label %bb.awm, label %bb.awn, !prof !11

bb.awm:                                           ; preds = %bb.awl
  %i.btp = add nsw i32 %i.btn, -1
  store i32 %i.btp, ptr %i.bth, align 4, !tbaa !10
  br label %bb.agr

bb.awn:                                           ; preds = %bb.awl
  %.not.i4395 = icmp eq i32 %i.btn, 0
  br i1 %.not.i4395, label %bb.agr, label %bb.awo

bb.awo:                                           ; preds = %bb.awn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bth) #7
  br label %bb.agr

lean_obj_tag.exit5338:                            ; preds = %lean_obj_tag.exit5331.thread
  %i.btq = and i64 %i.bta, 8589934590
  %i.btr = icmp eq i64 %i.btq, 0
  br i1 %i.btr, label %bb.awp, label %lean_obj_tag.exit5338.thread

bb.awp:                                           ; preds = %lean_obj_tag.exit5338
  %i.bts = getelementptr inbounds nuw i8, ptr %i.bsz, i64 8
  %i.btt = load ptr, ptr %i.bts, align 8, !tbaa !14 ; 7 uses
  %i.btu = ptrtoint ptr %i.btt to i64             ; 5 uses
  %i.btv = and i64 %i.btu, 1
  %.not.i3489 = icmp eq i64 %i.btv, 0
  br i1 %.not.i3489, label %bb.awq, label %lean_inc.exit3490

bb.awq:                                           ; preds = %bb.awp
  %.val.i.i5339 = load i32, ptr %i.btt, align 4, !tbaa !10 ; 3 uses
  %i.btw = icmp sgt i32 %.val.i.i5339, 0
  br i1 %i.btw, label %bb.awr, label %bb.aws, !prof !11

bb.awr:                                           ; preds = %bb.awq
  %i.btx = add nuw i32 %.val.i.i5339, 1
  store i32 %i.btx, ptr %i.btt, align 4, !tbaa !10
  br label %bb.awu

bb.aws:                                           ; preds = %bb.awq
  %.not.i.i5340 = icmp eq i32 %.val.i.i5339, 0
  br i1 %.not.i.i5340, label %bb.awu, label %bb.awt

bb.awt:                                           ; preds = %bb.aws
  %i.bty = atomicrmw sub ptr %i.btt, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.awu

lean_inc.exit3490:                                ; preds = %bb.awp
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.bsz, i32 noundef 1)
  br label %bb.agr

bb.awu:                                           ; preds = %bb.awt, %bb.aws, %bb.awr
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.bsz, i32 noundef 1)
  %i.btz = load i32, ptr %i.btt, align 4, !tbaa !10 ; 3 uses
  %i.bua = icmp sgt i32 %i.btz, 1
  br i1 %i.bua, label %bb.awv, label %bb.aww, !prof !11

bb.awv:                                           ; preds = %bb.awu
  %i.bub = add nsw i32 %i.btz, -1
  store i32 %i.bub, ptr %i.btt, align 4, !tbaa !10
  br label %bb.agr

bb.aww:                                           ; preds = %bb.awu
  %.not.i4397 = icmp eq i32 %i.btz, 0
  br i1 %.not.i4397, label %bb.agr, label %bb.awx

bb.awx:                                           ; preds = %bb.aww
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.btt) #7
  br label %bb.agr

lean_obj_tag.exit5338.thread:                     ; preds = %lean_obj_tag.exit5331, %lean_obj_tag.exit5338
  %i.buc = load i32, ptr %i.bqj, align 8, !tbaa !10 ; 3 uses
  %i.bud = icmp sgt i32 %i.buc, 1
  br i1 %i.bud, label %bb.awy, label %bb.awz, !prof !11

bb.awy:                                           ; preds = %lean_obj_tag.exit5338.thread
  %i.bue = add nsw i32 %i.buc, -1
  store i32 %i.bue, ptr %i.bqj, align 8, !tbaa !10
  br label %lean_dec_ref.exit4616

bb.awz:                                           ; preds = %lean_obj_tag.exit5338.thread
  %.not.i4615 = icmp eq i32 %i.buc, 0
  br i1 %.not.i4615, label %lean_dec_ref.exit4616, label %bb.axa

bb.axa:                                           ; preds = %bb.awz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bqj) #7
  br label %lean_dec_ref.exit4616

lean_dec_ref.exit4616:                            ; preds = %bb.awy, %bb.awz, %bb.axa
  br i1 %.not.i3503, label %bb.axb, label %lean_dec.exit3821

bb.axb:                                           ; preds = %lean_dec_ref.exit4616
  %i.buf = load i32, ptr %i.bqd, align 4, !tbaa !10 ; 3 uses
  %i.bug = icmp sgt i32 %i.buf, 1
  br i1 %i.bug, label %bb.axc, label %bb.axd, !prof !11

bb.axc:                                           ; preds = %bb.axb
  %i.buh = add nsw i32 %i.buf, -1
  store i32 %i.buh, ptr %i.bqd, align 4, !tbaa !10
  br label %lean_dec.exit3821

bb.axd:                                           ; preds = %bb.axb
  %.not.i4399 = icmp eq i32 %i.buf, 0
  br i1 %.not.i4399, label %lean_dec.exit3821, label %bb.axe

bb.axe:                                           ; preds = %bb.axd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bqd) #7
  br label %lean_dec.exit3821

lean_dec.exit3821:                                ; preds = %bb.axe, %bb.axd, %bb.axc, %lean_dec_ref.exit4616
  %i.bui = load i32, ptr %i.ccw, align 8, !tbaa !10 ; 3 uses
  %i.buj = icmp sgt i32 %i.bui, 1
  br i1 %i.buj, label %bb.axf, label %bb.axg, !prof !11

bb.axf:                                           ; preds = %lean_dec.exit3821
  %i.buk = add nsw i32 %i.bui, -1
  store i32 %i.buk, ptr %i.ccw, align 8, !tbaa !10
  br label %lean_dec_ref.exit4614

bb.axg:                                           ; preds = %lean_dec.exit3821
  %.not.i4613 = icmp eq i32 %i.bui, 0
  br i1 %.not.i4613, label %lean_dec_ref.exit4614, label %bb.axh

bb.axh:                                           ; preds = %bb.axg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ccw) #7
  br label %lean_dec_ref.exit4614

lean_dec_ref.exit4614:                            ; preds = %bb.axf, %bb.axg, %bb.axh
  br i1 %.not.i3649, label %bb.axi, label %lean_dec.exit3819

bb.axi:                                           ; preds = %lean_dec_ref.exit4614
  %i.bul = load i32, ptr %i.ec, align 4, !tbaa !10 ; 3 uses
  %i.bum = icmp sgt i32 %i.bul, 1
  br i1 %i.bum, label %bb.axj, label %bb.axk, !prof !11

bb.axj:                                           ; preds = %bb.axi
  %i.bun = add nsw i32 %i.bul, -1
  store i32 %i.bun, ptr %i.ec, align 4, !tbaa !10
  br label %lean_dec.exit3819

bb.axk:                                           ; preds = %bb.axi
  %.not.i4401 = icmp eq i32 %i.bul, 0
  br i1 %.not.i4401, label %lean_dec.exit3819, label %bb.axl

bb.axl:                                           ; preds = %bb.axk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ec) #7
  br label %lean_dec.exit3819

lean_dec.exit3819:                                ; preds = %bb.axl, %bb.axk, %bb.axj, %lean_dec_ref.exit4614
  br i1 %.not.i3655, label %bb.axm, label %lean_dec.exit3817

bb.axm:                                           ; preds = %lean_dec.exit3819
  %i.buo = load i32, ptr %i.cm, align 4, !tbaa !10 ; 3 uses
  %i.bup = icmp sgt i32 %i.buo, 1
  br i1 %i.bup, label %bb.axn, label %bb.axo, !prof !11

bb.axn:                                           ; preds = %bb.axm
  %i.buq = add nsw i32 %i.buo, -1
  store i32 %i.buq, ptr %i.cm, align 4, !tbaa !10
  br label %lean_dec.exit3817

bb.axo:                                           ; preds = %bb.axm
  %.not.i4403 = icmp eq i32 %i.buo, 0
  br i1 %.not.i4403, label %lean_dec.exit3817, label %bb.axp

bb.axp:                                           ; preds = %bb.axo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #7
  br label %lean_dec.exit3817

lean_dec.exit3817:                                ; preds = %bb.axp, %bb.axo, %bb.axn, %lean_dec.exit3819
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.bm, i32 noundef 1)
  br i1 %.not.i4792, label %bb.axq, label %lean_dec.exit3815

bb.axq:                                           ; preds = %lean_dec.exit3817
  %i.bur = load i32, ptr %i.bx, align 4, !tbaa !10 ; 3 uses
  %i.bus = icmp sgt i32 %i.bur, 1
  br i1 %i.bus, label %bb.axr, label %bb.axs, !prof !11

bb.axr:                                           ; preds = %bb.axq
  %i.but = add nsw i32 %i.bur, -1
  store i32 %i.but, ptr %i.bx, align 4, !tbaa !10
  br label %lean_dec.exit3815

bb.axs:                                           ; preds = %bb.axq
  %.not.i4405 = icmp eq i32 %i.bur, 0
  br i1 %.not.i4405, label %lean_dec.exit3815, label %bb.axt

bb.axt:                                           ; preds = %bb.axs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bx) #7
  br label %lean_dec.exit3815

lean_dec.exit3815:                                ; preds = %bb.axt, %bb.axs, %bb.axr, %lean_dec.exit3817
  br i1 %.not.i3645, label %bb.axu, label %lean_dec.exit3813

bb.axu:                                           ; preds = %lean_dec.exit3815
  %i.buu = load i32, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.buv = icmp sgt i32 %i.buu, 1
  br i1 %i.buv, label %bb.axv, label %bb.axw, !prof !11

bb.axv:                                           ; preds = %bb.axu
  %i.buw = add nsw i32 %i.buu, -1
  store i32 %i.buw, ptr %i.aj, align 4, !tbaa !10
  br label %lean_dec.exit3813

bb.axw:                                           ; preds = %bb.axu
  %.not.i4407 = icmp eq i32 %i.buu, 0
  br i1 %.not.i4407, label %lean_dec.exit3813, label %bb.axx

bb.axx:                                           ; preds = %bb.axw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aj) #7
  br label %lean_dec.exit3813

lean_dec.exit3813:                                ; preds = %bb.axx, %bb.axw, %bb.axv, %lean_dec.exit3815
  %i.bux = load i32, ptr %9, align 4, !tbaa !10   ; 3 uses
  %i.buy = icmp sgt i32 %i.bux, 1
  br i1 %i.buy, label %bb.axy, label %bb.axz, !prof !11

bb.axy:                                           ; preds = %lean_dec.exit3813
  %i.buz = add nsw i32 %i.bux, -1
  store i32 %i.buz, ptr %9, align 4, !tbaa !10
  br label %lean_dec_ref.exit4612

bb.axz:                                           ; preds = %lean_dec.exit3813
  %.not.i4611 = icmp eq i32 %i.bux, 0
  br i1 %.not.i4611, label %lean_dec_ref.exit4612, label %bb.aya

bb.aya:                                           ; preds = %bb.axz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #7
  br label %lean_dec_ref.exit4612

lean_dec_ref.exit4612:                            ; preds = %bb.axy, %bb.axz, %bb.aya
  %i.bva = ptrtoint ptr %5 to i64
  %i.bvb = and i64 %i.bva, 1
  %.not.i3810 = icmp eq i64 %i.bvb, 0
  br i1 %.not.i3810, label %bb.ayb, label %lean_dec.exit3811

bb.ayb:                                           ; preds = %lean_dec_ref.exit4612
  %i.bvc = load i32, ptr %5, align 4, !tbaa !10   ; 3 uses
  %i.bvd = icmp sgt i32 %i.bvc, 1
  br i1 %i.bvd, label %bb.ayc, label %bb.ayd, !prof !11

bb.ayc:                                           ; preds = %bb.ayb
  %i.bve = add nsw i32 %i.bvc, -1
  store i32 %i.bve, ptr %5, align 4, !tbaa !10
  br label %lean_dec.exit3811

bb.ayd:                                           ; preds = %bb.ayb
  %.not.i4409 = icmp eq i32 %i.bvc, 0
  br i1 %.not.i4409, label %lean_dec.exit3811, label %bb.aye

bb.aye:                                           ; preds = %bb.ayd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit3811

lean_dec.exit3811:                                ; preds = %bb.aye, %bb.ayd, %bb.ayc, %lean_dec_ref.exit4612
  br i1 %.not.i3479, label %bb.ayf, label %lean_dec.exit3809

bb.ayf:                                           ; preds = %lean_dec.exit3811
  %i.bvf = load i32, ptr %2, align 4, !tbaa !10   ; 3 uses
  %i.bvg = icmp sgt i32 %i.bvf, 1
  br i1 %i.bvg, label %bb.ayg, label %bb.ayh, !prof !11

bb.ayg:                                           ; preds = %bb.ayf
  %i.bvh = add nsw i32 %i.bvf, -1
  store i32 %i.bvh, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit3809

bb.ayh:                                           ; preds = %bb.ayf
  %.not.i4411 = icmp eq i32 %i.bvf, 0
  br i1 %.not.i4411, label %lean_dec.exit3809, label %bb.ayi

bb.ayi:                                           ; preds = %bb.ayh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit3809

lean_dec.exit3809:                                ; preds = %bb.ayi, %bb.ayh, %bb.ayg, %lean_dec.exit3811
  %i.bvi = load i32, ptr %1, align 4, !tbaa !10   ; 3 uses
  %i.bvj = icmp sgt i32 %i.bvi, 1
  br i1 %i.bvj, label %bb.ayj, label %bb.ayk, !prof !11

bb.ayj:                                           ; preds = %lean_dec.exit3809
  %i.bvk = add nsw i32 %i.bvi, -1
  store i32 %i.bvk, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit4610

bb.ayk:                                           ; preds = %lean_dec.exit3809
  %.not.i4609 = icmp eq i32 %i.bvi, 0
  br i1 %.not.i4609, label %lean_dec_ref.exit4610, label %bb.ayl

bb.ayl:                                           ; preds = %bb.ayk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit4610

lean_dec_ref.exit4610:                            ; preds = %bb.ayj, %bb.ayk, %bb.ayl
  br i1 %.not.i3659, label %bb.aym, label %lean_dec.exit3807

bb.aym:                                           ; preds = %lean_dec_ref.exit4610
  %i.bvl = load i32, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.bvm = icmp sgt i32 %i.bvl, 1
  br i1 %i.bvm, label %bb.ayn, label %bb.ayo, !prof !11

bb.ayn:                                           ; preds = %bb.aym
  %i.bvn = add nsw i32 %i.bvl, -1
  store i32 %i.bvn, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit3807

bb.ayo:                                           ; preds = %bb.aym
  %.not.i4413 = icmp eq i32 %i.bvl, 0
  br i1 %.not.i4413, label %lean_dec.exit3807, label %bb.ayp

bb.ayp:                                           ; preds = %bb.ayo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit3807

lean_dec.exit3807:                                ; preds = %bb.ayp, %bb.ayo, %bb.ayn, %lean_dec_ref.exit4610
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.bsz, i64 8
  %i.bvp = load ptr, ptr %i.bvo, align 8, !tbaa !14 ; 5 uses
  %.val4761 = load i32, ptr %i.bsz, align 8, !tbaa !10
  %i.bvq = icmp eq i32 %.val4761, 1
  br i1 %i.bvq, label %lean_dec.exit, label %bb.ayq

bb.ayq:                                           ; preds = %lean_dec.exit3807
  %i.bvr = ptrtoint ptr %i.bvp to i64
  %i.bvs = and i64 %i.bvr, 1
  %.not.i3487 = icmp eq i64 %i.bvs, 0
  br i1 %.not.i3487, label %bb.ayr, label %lean_inc.exit3488

bb.ayr:                                           ; preds = %bb.ayq
  %.val.i.i5342 = load i32, ptr %i.bvp, align 4, !tbaa !10 ; 3 uses
  %i.bvt = icmp sgt i32 %.val.i.i5342, 0
  br i1 %i.bvt, label %bb.ays, label %bb.ayt, !prof !11

bb.ays:                                           ; preds = %bb.ayr
  %i.bvu = add nuw i32 %.val.i.i5342, 1
  store i32 %i.bvu, ptr %i.bvp, align 4, !tbaa !10
  br label %lean_inc.exit3488

bb.ayt:                                           ; preds = %bb.ayr
  %.not.i.i5343 = icmp eq i32 %.val.i.i5342, 0
  br i1 %.not.i.i5343, label %lean_inc.exit3488, label %bb.ayu

bb.ayu:                                           ; preds = %bb.ayt
  %i.bvv = atomicrmw sub ptr %i.bvp, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3488

lean_inc.exit3488:                                ; preds = %bb.ayu, %bb.ayt, %bb.ays, %bb.ayq
  br i1 %.not.i5328, label %bb.ayv, label %bb.ayz

bb.ayv:                                           ; preds = %lean_inc.exit3488
  %i.bvw = load i32, ptr %i.bsz, align 8, !tbaa !10 ; 3 uses
  %i.bvx = icmp sgt i32 %i.bvw, 1
  br i1 %i.bvx, label %bb.ayw, label %bb.ayx, !prof !11

bb.ayw:                                           ; preds = %bb.ayv
  %i.bvy = add nsw i32 %i.bvw, -1
  store i32 %i.bvy, ptr %i.bsz, align 8, !tbaa !10
  br label %bb.ayz

bb.ayx:                                           ; preds = %bb.ayv
  %.not.i4415 = icmp eq i32 %i.bvw, 0
  br i1 %.not.i4415, label %bb.ayz, label %bb.ayy

bb.ayy:                                           ; preds = %bb.ayx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bsz) #7
  br label %bb.ayz

bb.ayz:                                           ; preds = %lean_inc.exit3488, %bb.ayw, %bb.ayx, %bb.ayy
  %i.bvz = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.bwa = getelementptr inbounds nuw i8, ptr %i.bvz, i64 8
  store ptr %i.bvp, ptr %i.bwa, align 8, !tbaa !14
  br label %lean_dec.exit

bb.aza:                                           ; preds = %lean_obj_tag.exit5272
  %i.bwb = load i32, ptr %i.ccw, align 8, !tbaa !10 ; 3 uses
  %i.bwc = icmp sgt i32 %i.bwb, 1
  br i1 %i.bwc, label %bb.azb, label %bb.azc, !prof !11

bb.azb:                                           ; preds = %bb.aza
  %i.bwd = add nsw i32 %i.bwb, -1
  store i32 %i.bwd, ptr %i.ccw, align 8, !tbaa !10
  br label %lean_dec_ref.exit4608

bb.azc:                                           ; preds = %bb.aza
  %.not.i4607 = icmp eq i32 %i.bwb, 0
  br i1 %.not.i4607, label %lean_dec_ref.exit4608, label %bb.azd

bb.azd:                                           ; preds = %bb.azc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ccw) #7
  br label %lean_dec_ref.exit4608

lean_dec_ref.exit4608:                            ; preds = %bb.azb, %bb.azc, %bb.azd
  %i.bwe = load i32, ptr %i.el, align 8, !tbaa !10 ; 3 uses
  %i.bwf = icmp sgt i32 %i.bwe, 1
  br i1 %i.bwf, label %bb.aze, label %bb.azf, !prof !11

bb.aze:                                           ; preds = %lean_dec_ref.exit4608
  %i.bwg = add nsw i32 %i.bwe, -1
  store i32 %i.bwg, ptr %i.el, align 8, !tbaa !10
  br label %lean_dec_ref.exit4606

bb.azf:                                           ; preds = %lean_dec_ref.exit4608
  %.not.i4605 = icmp eq i32 %i.bwe, 0
  br i1 %.not.i4605, label %lean_dec_ref.exit4606, label %bb.azg

bb.azg:                                           ; preds = %bb.azf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.el) #7
  br label %lean_dec_ref.exit4606

lean_dec_ref.exit4606:                            ; preds = %bb.aze, %bb.azf, %bb.azg
  br i1 %.not.i3649, label %bb.azh, label %lean_dec.exit3803

bb.azh:                                           ; preds = %lean_dec_ref.exit4606
  %i.bwh = load i32, ptr %i.ec, align 4, !tbaa !10 ; 3 uses
  %i.bwi = icmp sgt i32 %i.bwh, 1
  br i1 %i.bwi, label %bb.azi, label %bb.azj, !prof !11

bb.azi:                                           ; preds = %bb.azh
  %i.bwj = add nsw i32 %i.bwh, -1
  store i32 %i.bwj, ptr %i.ec, align 4, !tbaa !10
  br label %lean_dec.exit3803

bb.azj:                                           ; preds = %bb.azh
  %.not.i4417 = icmp eq i32 %i.bwh, 0
  br i1 %.not.i4417, label %lean_dec.exit3803, label %bb.azk

bb.azk:                                           ; preds = %bb.azj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ec) #7
  br label %lean_dec.exit3803

lean_dec.exit3803:                                ; preds = %bb.azk, %bb.azj, %bb.azi, %lean_dec_ref.exit4606
  br i1 %.not.i3655, label %bb.azl, label %lean_dec.exit3801

bb.azl:                                           ; preds = %lean_dec.exit3803
  %i.bwk = load i32, ptr %i.cm, align 4, !tbaa !10 ; 3 uses
  %i.bwl = icmp sgt i32 %i.bwk, 1
  br i1 %i.bwl, label %bb.azm, label %bb.azn, !prof !11

bb.azm:                                           ; preds = %bb.azl
  %i.bwm = add nsw i32 %i.bwk, -1
  store i32 %i.bwm, ptr %i.cm, align 4, !tbaa !10
  br label %lean_dec.exit3801

bb.azn:                                           ; preds = %bb.azl
  %.not.i4419 = icmp eq i32 %i.bwk, 0
  br i1 %.not.i4419, label %lean_dec.exit3801, label %bb.azo

bb.azo:                                           ; preds = %bb.azn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #7
  br label %lean_dec.exit3801

lean_dec.exit3801:                                ; preds = %bb.azo, %bb.azn, %bb.azm, %lean_dec.exit3803
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.bm, i32 noundef 1)
  br i1 %.not.i4792, label %bb.azp, label %lean_dec.exit3799

bb.azp:                                           ; preds = %lean_dec.exit3801
  %i.bwn = load i32, ptr %i.bx, align 4, !tbaa !10 ; 3 uses
  %i.bwo = icmp sgt i32 %i.bwn, 1
  br i1 %i.bwo, label %bb.azq, label %bb.azr, !prof !11

bb.azq:                                           ; preds = %bb.azp
  %i.bwp = add nsw i32 %i.bwn, -1
  store i32 %i.bwp, ptr %i.bx, align 4, !tbaa !10
  br label %lean_dec.exit3799

bb.azr:                                           ; preds = %bb.azp
  %.not.i4421 = icmp eq i32 %i.bwn, 0
  br i1 %.not.i4421, label %lean_dec.exit3799, label %bb.azs

bb.azs:                                           ; preds = %bb.azr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bx) #7
  br label %lean_dec.exit3799

lean_dec.exit3799:                                ; preds = %bb.azs, %bb.azr, %bb.azq, %lean_dec.exit3801
  br i1 %.not.i3645, label %bb.azt, label %lean_dec.exit3797

bb.azt:                                           ; preds = %lean_dec.exit3799
  %i.bwq = load i32, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.bwr = icmp sgt i32 %i.bwq, 1
  br i1 %i.bwr, label %bb.azu, label %bb.azv, !prof !11

bb.azu:                                           ; preds = %bb.azt
  %i.bws = add nsw i32 %i.bwq, -1
  store i32 %i.bws, ptr %i.aj, align 4, !tbaa !10
  br label %lean_dec.exit3797

bb.azv:                                           ; preds = %bb.azt
  %.not.i4423 = icmp eq i32 %i.bwq, 0
  br i1 %.not.i4423, label %lean_dec.exit3797, label %bb.azw

bb.azw:                                           ; preds = %bb.azv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aj) #7
  br label %lean_dec.exit3797

lean_dec.exit3797:                                ; preds = %bb.azw, %bb.azv, %bb.azu, %lean_dec.exit3799
  %i.bwt = load i32, ptr %9, align 4, !tbaa !10   ; 3 uses
  %i.bwu = icmp sgt i32 %i.bwt, 1
  br i1 %i.bwu, label %bb.azx, label %bb.azy, !prof !11

bb.azx:                                           ; preds = %lean_dec.exit3797
  %i.bwv = add nsw i32 %i.bwt, -1
  store i32 %i.bwv, ptr %9, align 4, !tbaa !10
  br label %lean_dec_ref.exit4604

bb.azy:                                           ; preds = %lean_dec.exit3797
  %.not.i4603 = icmp eq i32 %i.bwt, 0
  br i1 %.not.i4603, label %lean_dec_ref.exit4604, label %bb.azz

bb.azz:                                           ; preds = %bb.azy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #7
  br label %lean_dec_ref.exit4604

lean_dec_ref.exit4604:                            ; preds = %bb.azx, %bb.azy, %bb.azz
  %i.bww = ptrtoint ptr %5 to i64
  %i.bwx = and i64 %i.bww, 1
  %.not.i3794 = icmp eq i64 %i.bwx, 0
  br i1 %.not.i3794, label %bb.baa, label %lean_dec.exit3795

bb.baa:                                           ; preds = %lean_dec_ref.exit4604
  %i.bwy = load i32, ptr %5, align 4, !tbaa !10   ; 3 uses
  %i.bwz = icmp sgt i32 %i.bwy, 1
  br i1 %i.bwz, label %bb.bab, label %bb.bac, !prof !11

bb.bab:                                           ; preds = %bb.baa
  %i.bxa = add nsw i32 %i.bwy, -1
  store i32 %i.bxa, ptr %5, align 4, !tbaa !10
  br label %lean_dec.exit3795

bb.bac:                                           ; preds = %bb.baa
  %.not.i4425 = icmp eq i32 %i.bwy, 0
  br i1 %.not.i4425, label %lean_dec.exit3795, label %bb.bad

bb.bad:                                           ; preds = %bb.bac
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit3795

lean_dec.exit3795:                                ; preds = %bb.bad, %bb.bac, %bb.bab, %lean_dec_ref.exit4604
  br i1 %.not.i3479, label %bb.bae, label %lean_dec.exit3793

bb.bae:                                           ; preds = %lean_dec.exit3795
  %i.bxb = load i32, ptr %2, align 4, !tbaa !10   ; 3 uses
  %i.bxc = icmp sgt i32 %i.bxb, 1
  br i1 %i.bxc, label %bb.baf, label %bb.bag, !prof !11

bb.baf:                                           ; preds = %bb.bae
  %i.bxd = add nsw i32 %i.bxb, -1
  store i32 %i.bxd, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit3793

bb.bag:                                           ; preds = %bb.bae
  %.not.i4427 = icmp eq i32 %i.bxb, 0
  br i1 %.not.i4427, label %lean_dec.exit3793, label %bb.bah

bb.bah:                                           ; preds = %bb.bag
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit3793

lean_dec.exit3793:                                ; preds = %bb.bah, %bb.bag, %bb.baf, %lean_dec.exit3795
  %i.bxe = load i32, ptr %1, align 4, !tbaa !10   ; 3 uses
  %i.bxf = icmp sgt i32 %i.bxe, 1
  br i1 %i.bxf, label %bb.bai, label %bb.baj, !prof !11

bb.bai:                                           ; preds = %lean_dec.exit3793
  %i.bxg = add nsw i32 %i.bxe, -1
  store i32 %i.bxg, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit4602

bb.baj:                                           ; preds = %lean_dec.exit3793
  %.not.i4601 = icmp eq i32 %i.bxe, 0
  br i1 %.not.i4601, label %lean_dec_ref.exit4602, label %bb.bak

bb.bak:                                           ; preds = %bb.baj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit4602

lean_dec_ref.exit4602:                            ; preds = %bb.bai, %bb.baj, %bb.bak
  br i1 %.not.i3659, label %bb.bal, label %lean_dec.exit3791

bb.bal:                                           ; preds = %lean_dec_ref.exit4602
  %i.bxh = load i32, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.bxi = icmp sgt i32 %i.bxh, 1
  br i1 %i.bxi, label %bb.bam, label %bb.ban, !prof !11

bb.bam:                                           ; preds = %bb.bal
  %i.bxj = add nsw i32 %i.bxh, -1
  store i32 %i.bxj, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit3791

bb.ban:                                           ; preds = %bb.bal
  %.not.i4429 = icmp eq i32 %i.bxh, 0
  br i1 %.not.i4429, label %lean_dec.exit3791, label %bb.bao

bb.bao:                                           ; preds = %bb.ban
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit3791

lean_dec.exit3791:                                ; preds = %bb.bao, %bb.ban, %bb.bam, %lean_dec_ref.exit4602
  %i.bxk = getelementptr inbounds nuw i8, ptr %i.bld, i64 8
  %i.bxl = load ptr, ptr %i.bxk, align 8, !tbaa !14 ; 5 uses
  %.val4760 = load i32, ptr %i.bld, align 8, !tbaa !10
  %i.bxm = icmp eq i32 %.val4760, 1
  br i1 %i.bxm, label %lean_dec.exit, label %bb.bap

bb.bap:                                           ; preds = %lean_dec.exit3791
  %i.bxn = ptrtoint ptr %i.bxl to i64
  %i.bxo = and i64 %i.bxn, 1
  %.not.i3485 = icmp eq i64 %i.bxo, 0
  br i1 %.not.i3485, label %bb.baq, label %lean_inc.exit3486

bb.baq:                                           ; preds = %bb.bap
  %.val.i.i5345 = load i32, ptr %i.bxl, align 4, !tbaa !10 ; 3 uses
  %i.bxp = icmp sgt i32 %.val.i.i5345, 0
  br i1 %i.bxp, label %bb.bar, label %bb.bas, !prof !11

bb.bar:                                           ; preds = %bb.baq
  %i.bxq = add nuw i32 %.val.i.i5345, 1
  store i32 %i.bxq, ptr %i.bxl, align 4, !tbaa !10
  br label %lean_inc.exit3486

bb.bas:                                           ; preds = %bb.baq
  %.not.i.i5346 = icmp eq i32 %.val.i.i5345, 0
  br i1 %.not.i.i5346, label %lean_inc.exit3486, label %bb.bat

bb.bat:                                           ; preds = %bb.bas
  %i.bxr = atomicrmw sub ptr %i.bxl, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3486

lean_inc.exit3486:                                ; preds = %bb.bat, %bb.bas, %bb.bar, %bb.bap
  br i1 %.not.i5269, label %bb.bau, label %bb.bay

bb.bau:                                           ; preds = %lean_inc.exit3486
  %i.bxs = load i32, ptr %i.bld, align 8, !tbaa !10 ; 3 uses
  %i.bxt = icmp sgt i32 %i.bxs, 1
  br i1 %i.bxt, label %bb.bav, label %bb.baw, !prof !11

bb.bav:                                           ; preds = %bb.bau
  %i.bxu = add nsw i32 %i.bxs, -1
  store i32 %i.bxu, ptr %i.bld, align 8, !tbaa !10
  br label %bb.bay

bb.baw:                                           ; preds = %bb.bau
  %.not.i4431 = icmp eq i32 %i.bxs, 0
  br i1 %.not.i4431, label %bb.bay, label %bb.bax

bb.bax:                                           ; preds = %bb.baw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bld) #7
  br label %bb.bay

bb.bay:                                           ; preds = %lean_inc.exit3486, %bb.bav, %bb.baw, %bb.bax
  %i.bxv = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.bxw = getelementptr inbounds nuw i8, ptr %i.bxv, i64 8
  store ptr %i.bxl, ptr %i.bxw, align 8, !tbaa !14
  br label %lean_dec.exit

bb.baz:                                           ; preds = %lean_dec.exit3747.thread5684
  %i.bxx = load i32, ptr %i.el, align 8, !tbaa !10 ; 3 uses
  %i.bxy = icmp sgt i32 %i.bxx, 1
  br i1 %i.bxy, label %bb.bba, label %bb.bbb, !prof !11

bb.bba:                                           ; preds = %bb.baz
  %i.bxz = add nsw i32 %i.bxx, -1
  store i32 %i.bxz, ptr %i.el, align 8, !tbaa !10
  br label %lean_dec_ref.exit4600

bb.bbb:                                           ; preds = %bb.baz
  %.not.i4599 = icmp eq i32 %i.bxx, 0
  br i1 %.not.i4599, label %lean_dec_ref.exit4600, label %bb.bbc

bb.bbc:                                           ; preds = %bb.bbb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.el) #7
  br label %lean_dec_ref.exit4600

lean_dec_ref.exit4600:                            ; preds = %bb.bba, %bb.bbb, %bb.bbc
  br i1 %.not.i3649, label %bb.bbd, label %lean_dec.exit3787

bb.bbd:                                           ; preds = %lean_dec_ref.exit4600
  %i.bya = load i32, ptr %i.ec, align 4, !tbaa !10 ; 3 uses
  %i.byb = icmp sgt i32 %i.bya, 1
  br i1 %i.byb, label %bb.bbe, label %bb.bbf, !prof !11

bb.bbe:                                           ; preds = %bb.bbd
  %i.byc = add nsw i32 %i.bya, -1
  store i32 %i.byc, ptr %i.ec, align 4, !tbaa !10
  br label %lean_dec.exit3787

bb.bbf:                                           ; preds = %bb.bbd
  %.not.i4433 = icmp eq i32 %i.bya, 0
  br i1 %.not.i4433, label %lean_dec.exit3787, label %bb.bbg

bb.bbg:                                           ; preds = %bb.bbf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ec) #7
  br label %lean_dec.exit3787

lean_dec.exit3787:                                ; preds = %bb.bbg, %bb.bbf, %bb.bbe, %lean_dec_ref.exit4600
  br i1 %.not.i4792, label %bb.bbh, label %lean_dec.exit3785

bb.bbh:                                           ; preds = %lean_dec.exit3787
  %i.byd = load i32, ptr %i.bx, align 4, !tbaa !10 ; 3 uses
  %i.bye = icmp sgt i32 %i.byd, 1
  br i1 %i.bye, label %bb.bbi, label %bb.bbj, !prof !11

bb.bbi:                                           ; preds = %bb.bbh
  %i.byf = add nsw i32 %i.byd, -1
  store i32 %i.byf, ptr %i.bx, align 4, !tbaa !10
  br label %lean_dec.exit3785

bb.bbj:                                           ; preds = %bb.bbh
  %.not.i4435 = icmp eq i32 %i.byd, 0
  br i1 %.not.i4435, label %lean_dec.exit3785, label %bb.bbk

bb.bbk:                                           ; preds = %bb.bbj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bx) #7
  br label %lean_dec.exit3785

lean_dec.exit3785:                                ; preds = %bb.bbk, %bb.bbj, %bb.bbi, %lean_dec.exit3787
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.bm, i32 noundef 1)
  br i1 %.not.i3645, label %bb.bbl, label %bb.bma

bb.bbl:                                           ; preds = %lean_dec.exit3785
  %i.byg = load i32, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.byh = icmp sgt i32 %i.byg, 1
  br i1 %i.byh, label %bb.bbm, label %bb.bbn, !prof !11

bb.bbm:                                           ; preds = %bb.bbl
  %i.byi = add nsw i32 %i.byg, -1
  store i32 %i.byi, ptr %i.aj, align 4, !tbaa !10
  br label %bb.bma

bb.bbn:                                           ; preds = %bb.bbl
  %.not.i4437 = icmp eq i32 %i.byg, 0
  br i1 %.not.i4437, label %bb.bma, label %bb.bbo

bb.bbo:                                           ; preds = %bb.bbn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aj) #7
  br label %bb.bma

bb.bbp:                                           ; preds = %lean_obj_tag.exit5362
  %i.byj = load i32, ptr %i.ccw, align 8, !tbaa !10 ; 3 uses
  %i.byk = icmp sgt i32 %i.byj, 1
  br i1 %i.byk, label %bb.bbq, label %bb.bbr, !prof !11

bb.bbq:                                           ; preds = %bb.bbp
  %i.byl = add nsw i32 %i.byj, -1
  store i32 %i.byl, ptr %i.ccw, align 8, !tbaa !10
  br label %lean_dec_ref.exit4598

bb.bbr:                                           ; preds = %bb.bbp
  %.not.i4597 = icmp eq i32 %i.byj, 0
  br i1 %.not.i4597, label %lean_dec_ref.exit4598, label %bb.bbs

bb.bbs:                                           ; preds = %bb.bbr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ccw) #7
  br label %lean_dec_ref.exit4598

lean_dec_ref.exit4598:                            ; preds = %bb.bbq, %bb.bbr, %bb.bbs
  %i.bym = load i32, ptr %i.el, align 8, !tbaa !10 ; 3 uses
  %i.byn = icmp sgt i32 %i.bym, 1
  br i1 %i.byn, label %bb.bbt, label %bb.bbu, !prof !11

bb.bbt:                                           ; preds = %lean_dec_ref.exit4598
  %i.byo = add nsw i32 %i.bym, -1
  store i32 %i.byo, ptr %i.el, align 8, !tbaa !10
  br label %lean_dec_ref.exit4596

bb.bbu:                                           ; preds = %lean_dec_ref.exit4598
  %.not.i4595 = icmp eq i32 %i.bym, 0
  br i1 %.not.i4595, label %lean_dec_ref.exit4596, label %bb.bbv

bb.bbv:                                           ; preds = %bb.bbu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.el) #7
  br label %lean_dec_ref.exit4596

lean_dec_ref.exit4596:                            ; preds = %bb.bbt, %bb.bbu, %bb.bbv
  br i1 %.not.i3649, label %bb.bbw, label %lean_dec.exit3781

bb.bbw:                                           ; preds = %lean_dec_ref.exit4596
  %i.byp = load i32, ptr %i.ec, align 4, !tbaa !10 ; 3 uses
  %i.byq = icmp sgt i32 %i.byp, 1
  br i1 %i.byq, label %bb.bbx, label %bb.bby, !prof !11

bb.bbx:                                           ; preds = %bb.bbw
  %i.byr = add nsw i32 %i.byp, -1
  store i32 %i.byr, ptr %i.ec, align 4, !tbaa !10
  br label %lean_dec.exit3781

bb.bby:                                           ; preds = %bb.bbw
  %.not.i4439 = icmp eq i32 %i.byp, 0
  br i1 %.not.i4439, label %lean_dec.exit3781, label %bb.bbz

bb.bbz:                                           ; preds = %bb.bby
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ec) #7
  br label %lean_dec.exit3781

lean_dec.exit3781:                                ; preds = %bb.bbz, %bb.bby, %bb.bbx, %lean_dec_ref.exit4596
  br i1 %.not.i3655, label %bb.bca, label %lean_dec.exit3779

bb.bca:                                           ; preds = %lean_dec.exit3781
  %i.bys = load i32, ptr %i.cm, align 4, !tbaa !10 ; 3 uses
  %i.byt = icmp sgt i32 %i.bys, 1
  br i1 %i.byt, label %bb.bcb, label %bb.bcc, !prof !11

bb.bcb:                                           ; preds = %bb.bca
  %i.byu = add nsw i32 %i.bys, -1
  store i32 %i.byu, ptr %i.cm, align 4, !tbaa !10
  br label %lean_dec.exit3779

bb.bcc:                                           ; preds = %bb.bca
  %.not.i4441 = icmp eq i32 %i.bys, 0
  br i1 %.not.i4441, label %lean_dec.exit3779, label %bb.bcd

bb.bcd:                                           ; preds = %bb.bcc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #7
  br label %lean_dec.exit3779

lean_dec.exit3779:                                ; preds = %bb.bcd, %bb.bcc, %bb.bcb, %lean_dec.exit3781
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.bm, i32 noundef 1)
  br i1 %.not.i4792, label %bb.bce, label %lean_dec.exit3777

bb.bce:                                           ; preds = %lean_dec.exit3779
  %i.byv = load i32, ptr %i.bx, align 4, !tbaa !10 ; 3 uses
  %i.byw = icmp sgt i32 %i.byv, 1
  br i1 %i.byw, label %bb.bcf, label %bb.bcg, !prof !11

bb.bcf:                                           ; preds = %bb.bce
  %i.byx = add nsw i32 %i.byv, -1
  store i32 %i.byx, ptr %i.bx, align 4, !tbaa !10
  br label %lean_dec.exit3777

bb.bcg:                                           ; preds = %bb.bce
  %.not.i4443 = icmp eq i32 %i.byv, 0
  br i1 %.not.i4443, label %lean_dec.exit3777, label %bb.bch

bb.bch:                                           ; preds = %bb.bcg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bx) #7
  br label %lean_dec.exit3777

lean_dec.exit3777:                                ; preds = %bb.bch, %bb.bcg, %bb.bcf, %lean_dec.exit3779
  br i1 %.not.i3645, label %bb.bci, label %lean_dec.exit3775

bb.bci:                                           ; preds = %lean_dec.exit3777
  %i.byy = load i32, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.byz = icmp sgt i32 %i.byy, 1
  br i1 %i.byz, label %bb.bcj, label %bb.bck, !prof !11

bb.bcj:                                           ; preds = %bb.bci
  %i.bza = add nsw i32 %i.byy, -1
  store i32 %i.bza, ptr %i.aj, align 4, !tbaa !10
  br label %lean_dec.exit3775

bb.bck:                                           ; preds = %bb.bci
  %.not.i4445 = icmp eq i32 %i.byy, 0
  br i1 %.not.i4445, label %lean_dec.exit3775, label %bb.bcl

bb.bcl:                                           ; preds = %bb.bck
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aj) #7
  br label %lean_dec.exit3775

lean_dec.exit3775:                                ; preds = %bb.bcl, %bb.bck, %bb.bcj, %lean_dec.exit3777
  %i.bzb = load i32, ptr %9, align 4, !tbaa !10   ; 3 uses
  %i.bzc = icmp sgt i32 %i.bzb, 1
  br i1 %i.bzc, label %bb.bcm, label %bb.bcn, !prof !11

bb.bcm:                                           ; preds = %lean_dec.exit3775
  %i.bzd = add nsw i32 %i.bzb, -1
  store i32 %i.bzd, ptr %9, align 4, !tbaa !10
  br label %lean_dec_ref.exit4594

bb.bcn:                                           ; preds = %lean_dec.exit3775
  %.not.i4593 = icmp eq i32 %i.bzb, 0
  br i1 %.not.i4593, label %lean_dec_ref.exit4594, label %bb.bco

bb.bco:                                           ; preds = %bb.bcn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #7
  br label %lean_dec_ref.exit4594

lean_dec_ref.exit4594:                            ; preds = %bb.bcm, %bb.bcn, %bb.bco
  %i.bze = ptrtoint ptr %5 to i64
  %i.bzf = and i64 %i.bze, 1
  %.not.i3772 = icmp eq i64 %i.bzf, 0
  br i1 %.not.i3772, label %bb.bcp, label %lean_dec.exit3773

bb.bcp:                                           ; preds = %lean_dec_ref.exit4594
  %i.bzg = load i32, ptr %5, align 4, !tbaa !10   ; 3 uses
  %i.bzh = icmp sgt i32 %i.bzg, 1
  br i1 %i.bzh, label %bb.bcq, label %bb.bcr, !prof !11

bb.bcq:                                           ; preds = %bb.bcp
  %i.bzi = add nsw i32 %i.bzg, -1
  store i32 %i.bzi, ptr %5, align 4, !tbaa !10
  br label %lean_dec.exit3773

bb.bcr:                                           ; preds = %bb.bcp
  %.not.i4447 = icmp eq i32 %i.bzg, 0
  br i1 %.not.i4447, label %lean_dec.exit3773, label %bb.bcs

bb.bcs:                                           ; preds = %bb.bcr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit3773

lean_dec.exit3773:                                ; preds = %bb.bcs, %bb.bcr, %bb.bcq, %lean_dec_ref.exit4594
  br i1 %.not.i3479, label %bb.bct, label %lean_dec.exit3771

bb.bct:                                           ; preds = %lean_dec.exit3773
  %i.bzj = load i32, ptr %2, align 4, !tbaa !10   ; 3 uses
  %i.bzk = icmp sgt i32 %i.bzj, 1
  br i1 %i.bzk, label %bb.bcu, label %bb.bcv, !prof !11

bb.bcu:                                           ; preds = %bb.bct
  %i.bzl = add nsw i32 %i.bzj, -1
  store i32 %i.bzl, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit3771

bb.bcv:                                           ; preds = %bb.bct
  %.not.i4449 = icmp eq i32 %i.bzj, 0
  br i1 %.not.i4449, label %lean_dec.exit3771, label %bb.bcw

bb.bcw:                                           ; preds = %bb.bcv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit3771

lean_dec.exit3771:                                ; preds = %bb.bcw, %bb.bcv, %bb.bcu, %lean_dec.exit3773
  %i.bzm = load i32, ptr %1, align 4, !tbaa !10   ; 3 uses
  %i.bzn = icmp sgt i32 %i.bzm, 1
  br i1 %i.bzn, label %bb.bcx, label %bb.bcy, !prof !11

bb.bcx:                                           ; preds = %lean_dec.exit3771
  %i.bzo = add nsw i32 %i.bzm, -1
  store i32 %i.bzo, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit4592

bb.bcy:                                           ; preds = %lean_dec.exit3771
  %.not.i4591 = icmp eq i32 %i.bzm, 0
  br i1 %.not.i4591, label %lean_dec_ref.exit4592, label %bb.bcz

bb.bcz:                                           ; preds = %bb.bcy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit4592

lean_dec_ref.exit4592:                            ; preds = %bb.bcx, %bb.bcy, %bb.bcz
  br i1 %.not.i3659, label %bb.bda, label %lean_dec.exit3769

bb.bda:                                           ; preds = %lean_dec_ref.exit4592
  %i.bzp = load i32, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.bzq = icmp sgt i32 %i.bzp, 1
  br i1 %i.bzq, label %bb.bdb, label %bb.bdc, !prof !11

bb.bdb:                                           ; preds = %bb.bda
  %i.bzr = add nsw i32 %i.bzp, -1
  store i32 %i.bzr, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit3769

bb.bdc:                                           ; preds = %bb.bda
  %.not.i4451 = icmp eq i32 %i.bzp, 0
  br i1 %.not.i4451, label %lean_dec.exit3769, label %bb.bdd

bb.bdd:                                           ; preds = %bb.bdc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit3769

lean_dec.exit3769:                                ; preds = %bb.bdd, %bb.bdc, %bb.bdb, %lean_dec_ref.exit4592
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.cbh, i64 8
  %i.bzt = load ptr, ptr %i.bzs, align 8, !tbaa !14 ; 5 uses
  %.val4759 = load i32, ptr %i.cbh, align 8, !tbaa !10
  %i.bzu = icmp eq i32 %.val4759, 1
  br i1 %i.bzu, label %lean_dec.exit, label %bb.bde

bb.bde:                                           ; preds = %lean_dec.exit3769
  %i.bzv = ptrtoint ptr %i.bzt to i64
  %i.bzw = and i64 %i.bzv, 1
  %.not.i3483 = icmp eq i64 %i.bzw, 0
  br i1 %.not.i3483, label %bb.bdf, label %lean_inc.exit3484

bb.bdf:                                           ; preds = %bb.bde
  %.val.i.i5348 = load i32, ptr %i.bzt, align 4, !tbaa !10 ; 3 uses
  %i.bzx = icmp sgt i32 %.val.i.i5348, 0
  br i1 %i.bzx, label %bb.bdg, label %bb.bdh, !prof !11

bb.bdg:                                           ; preds = %bb.bdf
  %i.bzy = add nuw i32 %.val.i.i5348, 1
  store i32 %i.bzy, ptr %i.bzt, align 4, !tbaa !10
  br label %lean_inc.exit3484

bb.bdh:                                           ; preds = %bb.bdf
  %.not.i.i5349 = icmp eq i32 %.val.i.i5348, 0
  br i1 %.not.i.i5349, label %lean_inc.exit3484, label %bb.bdi

bb.bdi:                                           ; preds = %bb.bdh
  %i.bzz = atomicrmw sub ptr %i.bzt, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3484

lean_inc.exit3484:                                ; preds = %bb.bdi, %bb.bdh, %bb.bdg, %bb.bde
  br i1 %.not.i5359, label %bb.bdj, label %bb.bdn

bb.bdj:                                           ; preds = %lean_inc.exit3484
  %i.caa = load i32, ptr %i.cbh, align 8, !tbaa !10 ; 3 uses
  %i.cab = icmp sgt i32 %i.caa, 1
  br i1 %i.cab, label %bb.bdk, label %bb.bdl, !prof !11

bb.bdk:                                           ; preds = %bb.bdj
  %i.cac = add nsw i32 %i.caa, -1
  store i32 %i.cac, ptr %i.cbh, align 8, !tbaa !10
  br label %bb.bdn

bb.bdl:                                           ; preds = %bb.bdj
  %.not.i4453 = icmp eq i32 %i.caa, 0
  br i1 %.not.i4453, label %bb.bdn, label %bb.bdm

bb.bdm:                                           ; preds = %bb.bdl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cbh) #7
  br label %bb.bdn

bb.bdn:                                           ; preds = %lean_inc.exit3484, %bb.bdk, %bb.bdl, %bb.bdm
  %i.cad = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.cae = getelementptr inbounds nuw i8, ptr %i.cad, i64 8
  store ptr %i.bzt, ptr %i.cae, align 8, !tbaa !14
  br label %lean_dec.exit

lean_dec.exit3767:                                ; preds = %lean_obj_tag.exit5362
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.cbh, i32 noundef 1)
  br label %lean_dec.exit3747.thread5684

bb.bdo:                                           ; preds = %bb.bfd, %bb.bfe
  %.0.i5383 = phi ptr [ %i.ceg, %bb.bfd ], [ %i.ceh, %bb.bfe ]
  %i.caf = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.cag = getelementptr inbounds nuw i8, ptr %i.caf, i64 8
  store ptr %i.ceb, ptr %i.cag, align 8, !tbaa !14
  %i.cah = getelementptr inbounds nuw i8, ptr %i.caf, i64 16
  store ptr %.0.i5383, ptr %i.cah, align 8, !tbaa !14
  %i.cai = icmp eq i8 %.03256, 0
  %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3442 = select i1 %i.cai, ptr @l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value, ptr @l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value ; 3 uses
  %i.caj = icmp eq i8 %.03257, 0
  %.val.i.i5351 = load i32, ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3442, align 8, !tbaa !10 ; 2 uses
  %i.cak = icmp sgt i32 %.val.i.i5351, 0
  br i1 %i.cak, label %lean_inc_ref.exit5353, label %bb.bdp, !prof !11

bb.bdp:                                           ; preds = %bb.bdo
  %.not.i.i5352 = icmp eq i32 %.val.i.i5351, 0
  br i1 %.not.i.i5352, label %lean_inc_ref.exit5353, label %bb.bdq

bb.bdq:                                           ; preds = %bb.bdp
  %i.cal = atomicrmw sub ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3442, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit5353

lean_inc_ref.exit5353:                            ; preds = %bb.bdo, %bb.bdp, %bb.bdq
  %i.cam = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.can = getelementptr inbounds nuw i8, ptr %i.cam, i64 8
  store ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3442, ptr %i.can, align 8, !tbaa !14
  %i.cao = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull %i.cam) #7
  %i.cap = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.caq = getelementptr inbounds nuw i8, ptr %i.cap, i64 8
  store ptr %i.caf, ptr %i.caq, align 8, !tbaa !14
  %i.car = getelementptr inbounds nuw i8, ptr %i.cap, i64 16
  store ptr %i.cao, ptr %i.car, align 8, !tbaa !14
  %i.cas = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__71_once seq_cst, align 4, !tbaa !20
  %i.cat = icmp eq i32 %i.cas, 1
  br i1 %i.cat, label %bb.bdr, label %bb.bds, !prof !11

bb.bdr:                                           ; preds = %lean_inc_ref.exit5353
  %i.cau = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__71, align 8, !tbaa !14
  br label %lean_obj_once.exit5355

bb.bds:                                           ; preds = %lean_inc_ref.exit5353
  %i.cav = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__71, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__71_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__71) #7
  br label %lean_obj_once.exit5355

lean_obj_once.exit5355:                           ; preds = %bb.bdr, %bb.bds
  %.0.i5354 = phi ptr [ %i.cau, %bb.bdr ], [ %i.cav, %bb.bds ]
  %i.caw = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.cax = getelementptr inbounds nuw i8, ptr %i.caw, i64 8
  store ptr %i.cap, ptr %i.cax, align 8, !tbaa !14
  %i.cay = getelementptr inbounds nuw i8, ptr %i.caw, i64 16
  store ptr %.0.i5354, ptr %i.cay, align 8, !tbaa !14
  %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3441 = select i1 %i.caj, ptr @l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value, ptr @l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value ; 3 uses
  %.val.i.i5356 = load i32, ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3441, align 8, !tbaa !10 ; 2 uses
  %i.caz = icmp sgt i32 %.val.i.i5356, 0
  br i1 %i.caz, label %lean_inc_ref.exit5358, label %bb.bdt, !prof !11

bb.bdt:                                           ; preds = %lean_obj_once.exit5355
  %.not.i.i5357 = icmp eq i32 %.val.i.i5356, 0
  br i1 %.not.i.i5357, label %lean_inc_ref.exit5358, label %bb.bdu

bb.bdu:                                           ; preds = %bb.bdt
  %i.cba = atomicrmw sub ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3441, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit5358

lean_inc_ref.exit5358:                            ; preds = %lean_obj_once.exit5355, %bb.bdt, %bb.bdu
  %i.cbb = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.cbc = getelementptr inbounds nuw i8, ptr %i.cbb, i64 8
  store ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3441, ptr %i.cbc, align 8, !tbaa !14
  %i.cbd = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull %i.cbb) #7
  %i.cbe = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.cbf = getelementptr inbounds nuw i8, ptr %i.cbe, i64 8
  store ptr %i.caw, ptr %i.cbf, align 8, !tbaa !14
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.cbe, i64 16
  store ptr %i.cbd, ptr %i.cbg, align 8, !tbaa !14
  %i.cbh = tail call ptr @l_Lean_addTrace___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__0___redArg(ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__4_value, ptr noundef nonnull %i.cbe, ptr noundef nonnull %13, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %16) ; 9 uses
  %i.cbi = ptrtoint ptr %i.cbh to i64             ; 2 uses
  %i.cbj = and i64 %i.cbi, 1
  %.not.i5359 = icmp eq i64 %i.cbj, 0             ; 2 uses
  br i1 %.not.i5359, label %bb.bdw, label %bb.bdv

bb.bdv:                                           ; preds = %lean_inc_ref.exit5358
  %i.cbk = lshr i64 %i.cbi, 1
  %i.cbl = trunc i64 %i.cbk to i32
  br label %lean_obj_tag.exit5362

bb.bdw:                                           ; preds = %lean_inc_ref.exit5358
  %i.cbm = getelementptr i8, ptr %i.cbh, i64 4
  %.val.i5361 = load i32, ptr %i.cbm, align 4
  %i.cbn = lshr i32 %.val.i5361, 24
  br label %lean_obj_tag.exit5362

lean_obj_tag.exit5362:                            ; preds = %bb.bdv, %bb.bdw
  %.0.i5360 = phi i32 [ %i.cbl, %bb.bdv ], [ %i.cbn, %bb.bdw ]
  %i.cbo = icmp eq i32 %.0.i5360, 0
  br i1 %i.cbo, label %lean_dec.exit3767, label %bb.bbp

bb.bdx:                                           ; preds = %lean_obj_tag.exit5401
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.cgw, i64 8
  %i.cbq = load ptr, ptr %i.cbp, align 8, !tbaa !14 ; 7 uses
  %i.cbr = ptrtoint ptr %i.cbq to i64             ; 2 uses
  %i.cbs = and i64 %i.cbr, 1
  %.not.i3481 = icmp eq i64 %i.cbs, 0             ; 2 uses
  br i1 %.not.i3481, label %bb.bdy, label %lean_inc.exit3482

bb.bdy:                                           ; preds = %bb.bdx
  %.val.i.i5363 = load i32, ptr %i.cbq, align 4, !tbaa !10 ; 3 uses
  %i.cbt = icmp sgt i32 %.val.i.i5363, 0
  br i1 %i.cbt, label %bb.bdz, label %bb.bea, !prof !11

bb.bdz:                                           ; preds = %bb.bdy
  %i.cbu = add nuw i32 %.val.i.i5363, 1
  store i32 %i.cbu, ptr %i.cbq, align 4, !tbaa !10
  br label %lean_inc.exit3482

bb.bea:                                           ; preds = %bb.bdy
  %.not.i.i5364 = icmp eq i32 %.val.i.i5363, 0
  br i1 %.not.i.i5364, label %lean_inc.exit3482, label %bb.beb

bb.beb:                                           ; preds = %bb.bea
  %i.cbv = atomicrmw sub ptr %i.cbq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3482

lean_inc.exit3482:                                ; preds = %bb.beb, %bb.bea, %bb.bdz, %bb.bdx
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.cgw, i32 noundef 1)
  %i.cbw = zext i8 %3 to i64
  %i.cbx = shl nuw nsw i64 %i.cbw, 1
  %i.cby = or disjoint i64 %i.cbx, 1
  %i.cbz = inttoptr i64 %i.cby to ptr             ; 3 uses
  %i.cca = zext i8 %.03257 to i64
  %i.ccb = shl nuw nsw i64 %i.cca, 1
  %i.ccc = or disjoint i64 %i.ccb, 1
  %i.ccd = inttoptr i64 %i.ccc to ptr
  %i.cce = zext i8 %4 to i64
  %i.ccf = shl nuw nsw i64 %i.cce, 1
  %i.ccg = or disjoint i64 %i.ccf, 1
  %i.cch = inttoptr i64 %i.ccg to ptr
  %i.cci = ptrtoint ptr %2 to i64
  %i.ccj = and i64 %i.cci, 1
  %.not.i3479 = icmp eq i64 %i.ccj, 0             ; 21 uses
  br i1 %.not.i3479, label %bb.bec, label %lean_inc.exit3480

bb.bec:                                           ; preds = %lean_inc.exit3482
  %.val.i.i5366 = load i32, ptr %2, align 4, !tbaa !10 ; 3 uses
  %i.cck = icmp sgt i32 %.val.i.i5366, 0
  br i1 %i.cck, label %bb.bed, label %bb.bee, !prof !11

bb.bed:                                           ; preds = %bb.bec
  %i.ccl = add nuw i32 %.val.i.i5366, 1
  store i32 %i.ccl, ptr %2, align 4, !tbaa !10
  br label %lean_inc.exit3480

bb.bee:                                           ; preds = %bb.bec
  %.not.i.i5367 = icmp eq i32 %.val.i.i5366, 0
  br i1 %.not.i.i5367, label %lean_inc.exit3480, label %bb.bef

bb.bef:                                           ; preds = %bb.bee
  %i.ccm = atomicrmw sub ptr %2, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3480

lean_inc.exit3480:                                ; preds = %bb.bef, %bb.bee, %bb.bed, %lean_inc.exit3482
  br i1 %.not.i3655, label %bb.beg, label %lean_inc.exit3478

bb.beg:                                           ; preds = %lean_inc.exit3480
  %.val.i.i5369 = load i32, ptr %i.cm, align 4, !tbaa !10 ; 3 uses
  %i.ccn = icmp sgt i32 %.val.i.i5369, 0
  br i1 %i.ccn, label %bb.beh, label %bb.bei, !prof !11

bb.beh:                                           ; preds = %bb.beg
  %i.cco = add nuw i32 %.val.i.i5369, 1
  store i32 %i.cco, ptr %i.cm, align 4, !tbaa !10
  br label %lean_inc.exit3478

bb.bei:                                           ; preds = %bb.beg
  %.not.i.i5370 = icmp eq i32 %.val.i.i5369, 0
  br i1 %.not.i.i5370, label %lean_inc.exit3478, label %bb.bej

bb.bej:                                           ; preds = %bb.bei
  %i.ccp = atomicrmw sub ptr %i.cm, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3478

lean_inc.exit3478:                                ; preds = %bb.bej, %bb.bei, %bb.beh, %lean_inc.exit3480
  br i1 %.not.i3645, label %bb.bek, label %lean_inc.exit3476

bb.bek:                                           ; preds = %lean_inc.exit3478
  %.val.i.i5372 = load i32, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.ccq = icmp sgt i32 %.val.i.i5372, 0
  br i1 %i.ccq, label %bb.bel, label %bb.bem, !prof !11

bb.bel:                                           ; preds = %bb.bek
  %i.ccr = add nuw i32 %.val.i.i5372, 1
  store i32 %i.ccr, ptr %i.aj, align 4, !tbaa !10
  br label %lean_inc.exit3476

bb.bem:                                           ; preds = %bb.bek
  %.not.i.i5373 = icmp eq i32 %.val.i.i5372, 0
  br i1 %.not.i.i5373, label %lean_inc.exit3476, label %bb.ben

bb.ben:                                           ; preds = %bb.bem
  %i.ccs = atomicrmw sub ptr %i.aj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3476

lean_inc.exit3476:                                ; preds = %bb.ben, %bb.bem, %bb.bel, %lean_inc.exit3478
  br i1 %.not.i3649, label %bb.beo, label %lean_inc.exit3474

bb.beo:                                           ; preds = %lean_inc.exit3476
  %.val.i.i5375 = load i32, ptr %i.ec, align 4, !tbaa !10 ; 3 uses
  %i.cct = icmp sgt i32 %.val.i.i5375, 0
  br i1 %i.cct, label %bb.bep, label %bb.beq, !prof !11

bb.bep:                                           ; preds = %bb.beo
  %i.ccu = add nuw i32 %.val.i.i5375, 1
  store i32 %i.ccu, ptr %i.ec, align 4, !tbaa !10
  br label %lean_inc.exit3474

bb.beq:                                           ; preds = %bb.beo
  %.not.i.i5376 = icmp eq i32 %.val.i.i5375, 0
  br i1 %.not.i.i5376, label %lean_inc.exit3474, label %bb.ber

bb.ber:                                           ; preds = %bb.beq
  %i.ccv = atomicrmw sub ptr %i.ec, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3474

lean_inc.exit3474:                                ; preds = %bb.ber, %bb.beq, %bb.bep, %lean_inc.exit3476
  %i.ccw = tail call ptr @lean_alloc_object(i64 noundef 104) #7 ; 66 uses
  store i32 1, ptr %i.ccw, align 4, !tbaa !10
  %i.ccx = getelementptr inbounds nuw i8, ptr %i.ccw, i64 4 ; 2 uses
  %i.ccy = load i32, ptr %i.ccx, align 4
  %i.ccz = and i32 %i.ccy, 65535
  %i.cda = or disjoint i32 %i.ccz, -184549376
  store i32 %i.cda, ptr %i.ccx, align 4
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.ccw, i64 8
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__7___lam__3___boxed, ptr %i.cdb, align 8, !tbaa !14
  %i.cdc = getelementptr inbounds nuw i8, ptr %i.ccw, i64 16
  store i16 22, ptr %i.cdc, align 8, !tbaa !22
  %i.cdd = getelementptr inbounds nuw i8, ptr %i.ccw, i64 18
  store i16 10, ptr %i.cdd, align 2, !tbaa !22
  %i.cde = getelementptr inbounds nuw i8, ptr %i.ccw, i64 24
  store ptr %i.ec, ptr %i.cde, align 8, !tbaa !14
  %i.cdf = getelementptr inbounds nuw i8, ptr %i.ccw, i64 32
  store ptr %i.aj, ptr %i.cdf, align 8, !tbaa !14
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.ccw, i64 40
  store ptr @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__2_value, ptr %i.cdg, align 8, !tbaa !14
  %i.cdh = getelementptr inbounds nuw i8, ptr %i.ccw, i64 48
  store ptr @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__3_value, ptr %i.cdh, align 8, !tbaa !14
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.ccw, i64 56
  store ptr %i.cm, ptr %i.cdi, align 8, !tbaa !14
  %i.cdj = getelementptr inbounds nuw i8, ptr %i.ccw, i64 64
  store ptr %2, ptr %i.cdj, align 8, !tbaa !14
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.ccw, i64 72
  store ptr %i.cbz, ptr %i.cdk, align 8, !tbaa !14
  %i.cdl = getelementptr inbounds nuw i8, ptr %i.ccw, i64 80
  store ptr %i.ccd, ptr %i.cdl, align 8, !tbaa !14
  %i.cdm = getelementptr inbounds nuw i8, ptr %i.ccw, i64 88
  store ptr %i.cch, ptr %i.cdm, align 8, !tbaa !14
  %i.cdn = getelementptr inbounds nuw i8, ptr %i.ccw, i64 96
  store ptr %i.fc, ptr %i.cdn, align 8, !tbaa !14
  br i1 %.not.i3481, label %bb.bes, label %lean_dec.exit3765

bb.bes:                                           ; preds = %lean_inc.exit3474
  %i.cdo = load i32, ptr %i.cbq, align 4, !tbaa !10 ; 3 uses
  %i.cdp = icmp sgt i32 %i.cdo, 1
  br i1 %i.cdp, label %bb.bet, label %bb.beu, !prof !11

bb.bet:                                           ; preds = %bb.bes
  %i.cdq = add nsw i32 %i.cdo, -1
  store i32 %i.cdq, ptr %i.cbq, align 4, !tbaa !10
  br label %lean_dec.exit3765

bb.beu:                                           ; preds = %bb.bes
  %.not.i4455 = icmp eq i32 %i.cdo, 0
  br i1 %.not.i4455, label %lean_dec.exit3765, label %bb.bev

bb.bev:                                           ; preds = %bb.beu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cbq) #7
  br label %lean_dec.exit3765

lean_dec.exit3765:                                ; preds = %bb.bev, %bb.beu, %bb.bet, %lean_inc.exit3474
  %i.cdr = and i64 %i.cbr, 510
  %i.cds = icmp eq i64 %i.cdr, 0
  br i1 %i.cds, label %lean_dec.exit3747.thread5684, label %bb.bew

bb.bew:                                           ; preds = %lean_dec.exit3765
  %i.cdt = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__73_once seq_cst, align 4, !tbaa !20
  %i.cdu = icmp eq i32 %i.cdt, 1
  br i1 %i.cdu, label %bb.bex, label %bb.bey, !prof !11

bb.bex:                                           ; preds = %bb.bew
  %i.cdv = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__73, align 8, !tbaa !14
  br label %lean_obj_once.exit5379

bb.bey:                                           ; preds = %bb.bew
  %i.cdw = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__73, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__73_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__73) #7
  br label %lean_obj_once.exit5379

lean_obj_once.exit5379:                           ; preds = %bb.bex, %bb.bey
  %.0.i5378 = phi ptr [ %i.cdv, %bb.bex ], [ %i.cdw, %bb.bey ]
  br i1 %.not.i3645, label %bb.bez, label %lean_inc.exit3472

bb.bez:                                           ; preds = %lean_obj_once.exit5379
  %.val.i.i5380 = load i32, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.cdx = icmp sgt i32 %.val.i.i5380, 0
  br i1 %i.cdx, label %bb.bfa, label %bb.bfb, !prof !11

bb.bfa:                                           ; preds = %bb.bez
  %i.cdy = add nuw i32 %.val.i.i5380, 1
  store i32 %i.cdy, ptr %i.aj, align 4, !tbaa !10
  br label %lean_inc.exit3472

bb.bfb:                                           ; preds = %bb.bez
  %.not.i.i5381 = icmp eq i32 %.val.i.i5380, 0
  br i1 %.not.i.i5381, label %lean_inc.exit3472, label %bb.bfc

bb.bfc:                                           ; preds = %bb.bfb
  %i.cdz = atomicrmw sub ptr %i.aj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3472

lean_inc.exit3472:                                ; preds = %bb.bfc, %bb.bfb, %bb.bfa, %lean_obj_once.exit5379
  %i.cea = tail call ptr @l_Lean_MessageData_ofName(ptr noundef %i.aj) #7
  %i.ceb = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.cec = getelementptr inbounds nuw i8, ptr %i.ceb, i64 8
  store ptr %.0.i5378, ptr %i.cec, align 8, !tbaa !14
  %i.ced = getelementptr inbounds nuw i8, ptr %i.ceb, i64 16
  store ptr %i.cea, ptr %i.ced, align 8, !tbaa !14
  %i.cee = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__75_once seq_cst, align 4, !tbaa !20
  %i.cef = icmp eq i32 %i.cee, 1
  br i1 %i.cef, label %bb.bfd, label %bb.bfe, !prof !11

bb.bfd:                                           ; preds = %lean_inc.exit3472
  %i.ceg = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__75, align 8, !tbaa !14
  br label %bb.bdo

bb.bfe:                                           ; preds = %lean_inc.exit3472
  %i.ceh = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__75, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__75_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__75) #7
  br label %bb.bdo

bb.bff:                                           ; preds = %lean_obj_tag.exit5401
  br i1 %.not.i4842, label %bb.bfg, label %lean_dec.exit3763

bb.bfg:                                           ; preds = %bb.bff
  %i.cei = load i32, ptr %i.fc, align 4, !tbaa !10 ; 3 uses
  %i.cej = icmp sgt i32 %i.cei, 1
  br i1 %i.cej, label %bb.bfh, label %bb.bfi, !prof !11

bb.bfh:                                           ; preds = %bb.bfg
  %i.cek = add nsw i32 %i.cei, -1
  store i32 %i.cek, ptr %i.fc, align 4, !tbaa !10
  br label %lean_dec.exit3763

bb.bfi:                                           ; preds = %bb.bfg
  %.not.i4457 = icmp eq i32 %i.cei, 0
  br i1 %.not.i4457, label %lean_dec.exit3763, label %bb.bfj

bb.bfj:                                           ; preds = %bb.bfi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fc) #7
  br label %lean_dec.exit3763

lean_dec.exit3763:                                ; preds = %bb.bfj, %bb.bfi, %bb.bfh, %bb.bff
  %i.cel = load i32, ptr %i.el, align 8, !tbaa !10 ; 3 uses
  %i.cem = icmp sgt i32 %i.cel, 1
  br i1 %i.cem, label %bb.bfk, label %bb.bfl, !prof !11

bb.bfk:                                           ; preds = %lean_dec.exit3763
  %i.cen = add nsw i32 %i.cel, -1
  store i32 %i.cen, ptr %i.el, align 8, !tbaa !10
  br label %lean_dec_ref.exit4590

bb.bfl:                                           ; preds = %lean_dec.exit3763
  %.not.i4589 = icmp eq i32 %i.cel, 0
  br i1 %.not.i4589, label %lean_dec_ref.exit4590, label %bb.bfm

bb.bfm:                                           ; preds = %bb.bfl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.el) #7
  br label %lean_dec_ref.exit4590

lean_dec_ref.exit4590:                            ; preds = %bb.bfk, %bb.bfl, %bb.bfm
  br i1 %.not.i3649, label %bb.bfn, label %lean_dec.exit3761

bb.bfn:                                           ; preds = %lean_dec_ref.exit4590
  %i.ceo = load i32, ptr %i.ec, align 4, !tbaa !10 ; 3 uses
  %i.cep = icmp sgt i32 %i.ceo, 1
  br i1 %i.cep, label %bb.bfo, label %bb.bfp, !prof !11

bb.bfo:                                           ; preds = %bb.bfn
  %i.ceq = add nsw i32 %i.ceo, -1
  store i32 %i.ceq, ptr %i.ec, align 4, !tbaa !10
  br label %lean_dec.exit3761

bb.bfp:                                           ; preds = %bb.bfn
  %.not.i4459 = icmp eq i32 %i.ceo, 0
  br i1 %.not.i4459, label %lean_dec.exit3761, label %bb.bfq

bb.bfq:                                           ; preds = %bb.bfp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ec) #7
  br label %lean_dec.exit3761

lean_dec.exit3761:                                ; preds = %bb.bfq, %bb.bfp, %bb.bfo, %lean_dec_ref.exit4590
  br i1 %.not.i3655, label %bb.bfr, label %lean_dec.exit3759

bb.bfr:                                           ; preds = %lean_dec.exit3761
  %i.cer = load i32, ptr %i.cm, align 4, !tbaa !10 ; 3 uses
  %i.ces = icmp sgt i32 %i.cer, 1
  br i1 %i.ces, label %bb.bfs, label %bb.bft, !prof !11

bb.bfs:                                           ; preds = %bb.bfr
  %i.cet = add nsw i32 %i.cer, -1
  store i32 %i.cet, ptr %i.cm, align 4, !tbaa !10
  br label %lean_dec.exit3759

bb.bft:                                           ; preds = %bb.bfr
  %.not.i4461 = icmp eq i32 %i.cer, 0
  br i1 %.not.i4461, label %lean_dec.exit3759, label %bb.bfu

bb.bfu:                                           ; preds = %bb.bft
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #7
  br label %lean_dec.exit3759

lean_dec.exit3759:                                ; preds = %bb.bfu, %bb.bft, %bb.bfs, %lean_dec.exit3761
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.bm, i32 noundef 1)
  br i1 %.not.i4792, label %bb.bfv, label %lean_dec.exit3757

bb.bfv:                                           ; preds = %lean_dec.exit3759
  %i.ceu = load i32, ptr %i.bx, align 4, !tbaa !10 ; 3 uses
  %i.cev = icmp sgt i32 %i.ceu, 1
  br i1 %i.cev, label %bb.bfw, label %bb.bfx, !prof !11

bb.bfw:                                           ; preds = %bb.bfv
  %i.cew = add nsw i32 %i.ceu, -1
  store i32 %i.cew, ptr %i.bx, align 4, !tbaa !10
  br label %lean_dec.exit3757

bb.bfx:                                           ; preds = %bb.bfv
  %.not.i4463 = icmp eq i32 %i.ceu, 0
  br i1 %.not.i4463, label %lean_dec.exit3757, label %bb.bfy

bb.bfy:                                           ; preds = %bb.bfx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bx) #7
  br label %lean_dec.exit3757

lean_dec.exit3757:                                ; preds = %bb.bfy, %bb.bfx, %bb.bfw, %lean_dec.exit3759
  br i1 %.not.i3645, label %bb.bfz, label %lean_dec.exit3755

bb.bfz:                                           ; preds = %lean_dec.exit3757
  %i.cex = load i32, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.cey = icmp sgt i32 %i.cex, 1
  br i1 %i.cey, label %bb.bga, label %bb.bgb, !prof !11

bb.bga:                                           ; preds = %bb.bfz
  %i.cez = add nsw i32 %i.cex, -1
  store i32 %i.cez, ptr %i.aj, align 4, !tbaa !10
  br label %lean_dec.exit3755

bb.bgb:                                           ; preds = %bb.bfz
  %.not.i4465 = icmp eq i32 %i.cex, 0
  br i1 %.not.i4465, label %lean_dec.exit3755, label %bb.bgc

bb.bgc:                                           ; preds = %bb.bgb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aj) #7
  br label %lean_dec.exit3755

lean_dec.exit3755:                                ; preds = %bb.bgc, %bb.bgb, %bb.bga, %lean_dec.exit3757
  %i.cfa = load i32, ptr %9, align 4, !tbaa !10   ; 3 uses
  %i.cfb = icmp sgt i32 %i.cfa, 1
  br i1 %i.cfb, label %bb.bgd, label %bb.bge, !prof !11

bb.bgd:                                           ; preds = %lean_dec.exit3755
  %i.cfc = add nsw i32 %i.cfa, -1
  store i32 %i.cfc, ptr %9, align 4, !tbaa !10
  br label %lean_dec_ref.exit4588

bb.bge:                                           ; preds = %lean_dec.exit3755
  %.not.i4587 = icmp eq i32 %i.cfa, 0
  br i1 %.not.i4587, label %lean_dec_ref.exit4588, label %bb.bgf

bb.bgf:                                           ; preds = %bb.bge
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #7
  br label %lean_dec_ref.exit4588

lean_dec_ref.exit4588:                            ; preds = %bb.bgd, %bb.bge, %bb.bgf
  %i.cfd = ptrtoint ptr %5 to i64
  %i.cfe = and i64 %i.cfd, 1
  %.not.i3752 = icmp eq i64 %i.cfe, 0
  br i1 %.not.i3752, label %bb.bgg, label %lean_dec.exit3753

bb.bgg:                                           ; preds = %lean_dec_ref.exit4588
  %i.cff = load i32, ptr %5, align 4, !tbaa !10   ; 3 uses
  %i.cfg = icmp sgt i32 %i.cff, 1
  br i1 %i.cfg, label %bb.bgh, label %bb.bgi, !prof !11

bb.bgh:                                           ; preds = %bb.bgg
  %i.cfh = add nsw i32 %i.cff, -1
  store i32 %i.cfh, ptr %5, align 4, !tbaa !10
  br label %lean_dec.exit3753

bb.bgi:                                           ; preds = %bb.bgg
  %.not.i4467 = icmp eq i32 %i.cff, 0
  br i1 %.not.i4467, label %lean_dec.exit3753, label %bb.bgj

bb.bgj:                                           ; preds = %bb.bgi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit3753

lean_dec.exit3753:                                ; preds = %bb.bgj, %bb.bgi, %bb.bgh, %lean_dec_ref.exit4588
  %i.cfi = ptrtoint ptr %2 to i64
  %i.cfj = and i64 %i.cfi, 1
  %.not.i3750 = icmp eq i64 %i.cfj, 0
  br i1 %.not.i3750, label %bb.bgk, label %lean_dec.exit3751

bb.bgk:                                           ; preds = %lean_dec.exit3753
  %i.cfk = load i32, ptr %2, align 4, !tbaa !10   ; 3 uses
  %i.cfl = icmp sgt i32 %i.cfk, 1
  br i1 %i.cfl, label %bb.bgl, label %bb.bgm, !prof !11

bb.bgl:                                           ; preds = %bb.bgk
  %i.cfm = add nsw i32 %i.cfk, -1
  store i32 %i.cfm, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit3751

bb.bgm:                                           ; preds = %bb.bgk
  %.not.i4469 = icmp eq i32 %i.cfk, 0
  br i1 %.not.i4469, label %lean_dec.exit3751, label %bb.bgn

bb.bgn:                                           ; preds = %bb.bgm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit3751

lean_dec.exit3751:                                ; preds = %bb.bgn, %bb.bgm, %bb.bgl, %lean_dec.exit3753
  %i.cfn = load i32, ptr %1, align 4, !tbaa !10   ; 3 uses
  %i.cfo = icmp sgt i32 %i.cfn, 1
  br i1 %i.cfo, label %bb.bgo, label %bb.bgp, !prof !11

bb.bgo:                                           ; preds = %lean_dec.exit3751
  %i.cfp = add nsw i32 %i.cfn, -1
  store i32 %i.cfp, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit4586

bb.bgp:                                           ; preds = %lean_dec.exit3751
  %.not.i4585 = icmp eq i32 %i.cfn, 0
  br i1 %.not.i4585, label %lean_dec_ref.exit4586, label %bb.bgq

bb.bgq:                                           ; preds = %bb.bgp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit4586

lean_dec_ref.exit4586:                            ; preds = %bb.bgo, %bb.bgp, %bb.bgq
  br i1 %.not.i3659, label %bb.bgr, label %lean_dec.exit3749

bb.bgr:                                           ; preds = %lean_dec_ref.exit4586
  %i.cfq = load i32, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.cfr = icmp sgt i32 %i.cfq, 1
  br i1 %i.cfr, label %bb.bgs, label %bb.bgt, !prof !11

bb.bgs:                                           ; preds = %bb.bgr
  %i.cfs = add nsw i32 %i.cfq, -1
  store i32 %i.cfs, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit3749

bb.bgt:                                           ; preds = %bb.bgr
  %.not.i4471 = icmp eq i32 %i.cfq, 0
  br i1 %.not.i4471, label %lean_dec.exit3749, label %bb.bgu

bb.bgu:                                           ; preds = %bb.bgt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit3749

lean_dec.exit3749:                                ; preds = %bb.bgu, %bb.bgt, %bb.bgs, %lean_dec_ref.exit4586
  %i.cft = getelementptr inbounds nuw i8, ptr %i.cgw, i64 8
  %i.cfu = load ptr, ptr %i.cft, align 8, !tbaa !14 ; 5 uses
  %.val4758 = load i32, ptr %i.cgw, align 8, !tbaa !10
  %i.cfv = icmp eq i32 %.val4758, 1
  br i1 %i.cfv, label %lean_dec.exit, label %bb.bgv

bb.bgv:                                           ; preds = %lean_dec.exit3749
  %i.cfw = ptrtoint ptr %i.cfu to i64
  %i.cfx = and i64 %i.cfw, 1
  %.not.i3469 = icmp eq i64 %i.cfx, 0
  br i1 %.not.i3469, label %bb.bgw, label %lean_inc.exit3470

bb.bgw:                                           ; preds = %bb.bgv
  %.val.i.i5385 = load i32, ptr %i.cfu, align 4, !tbaa !10 ; 3 uses
  %i.cfy = icmp sgt i32 %.val.i.i5385, 0
  br i1 %i.cfy, label %bb.bgx, label %bb.bgy, !prof !11

bb.bgx:                                           ; preds = %bb.bgw
  %i.cfz = add nuw i32 %.val.i.i5385, 1
  store i32 %i.cfz, ptr %i.cfu, align 4, !tbaa !10
  br label %lean_inc.exit3470

bb.bgy:                                           ; preds = %bb.bgw
  %.not.i.i5386 = icmp eq i32 %.val.i.i5385, 0
  br i1 %.not.i.i5386, label %lean_inc.exit3470, label %bb.bgz

bb.bgz:                                           ; preds = %bb.bgy
  %i.cga = atomicrmw sub ptr %i.cfu, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3470

lean_inc.exit3470:                                ; preds = %bb.bgz, %bb.bgy, %bb.bgx, %bb.bgv
  br i1 %.not.i5398, label %bb.bha, label %bb.bhe

bb.bha:                                           ; preds = %lean_inc.exit3470
  %i.cgb = load i32, ptr %i.cgw, align 8, !tbaa !10 ; 3 uses
  %i.cgc = icmp sgt i32 %i.cgb, 1
  br i1 %i.cgc, label %bb.bhb, label %bb.bhc, !prof !11

bb.bhb:                                           ; preds = %bb.bha
  %i.cgd = add nsw i32 %i.cgb, -1
  store i32 %i.cgd, ptr %i.cgw, align 8, !tbaa !10
  br label %bb.bhe

bb.bhc:                                           ; preds = %bb.bha
  %.not.i4473 = icmp eq i32 %i.cgb, 0
  br i1 %.not.i4473, label %bb.bhe, label %bb.bhd

bb.bhd:                                           ; preds = %bb.bhc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cgw) #7
  br label %bb.bhe

bb.bhe:                                           ; preds = %lean_inc.exit3470, %bb.bhb, %bb.bhc, %bb.bhd
  %i.cge = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.cgf = getelementptr inbounds nuw i8, ptr %i.cge, i64 8
  store ptr %i.cfu, ptr %i.cgf, align 8, !tbaa !14
  br label %lean_dec.exit

lean_dec.exit4133:                                ; preds = %lean_obj_tag.exit4845, %lean_dec.exit4135, %bb.dn, %bb.do, %bb.dp
  %.03256 = phi i8 [ %i.gb, %lean_dec.exit4135 ], [ %i.gb, %bb.dp ], [ %i.gb, %bb.do ], [ %i.gb, %bb.dn ], [ 0, %lean_obj_tag.exit4845 ] ; 3 uses
  br i1 %.not.i3645, label %bb.bhf, label %lean_inc.exit3468

bb.bhf:                                           ; preds = %lean_dec.exit4133
  %.val.i.i5388 = load i32, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.cgg = icmp sgt i32 %.val.i.i5388, 0
  br i1 %i.cgg, label %bb.bhg, label %bb.bhh, !prof !11

bb.bhg:                                           ; preds = %bb.bhf
  %i.cgh = add nuw i32 %.val.i.i5388, 1
  store i32 %i.cgh, ptr %i.aj, align 4, !tbaa !10
  br label %lean_inc.exit3468

bb.bhh:                                           ; preds = %bb.bhf
  %.not.i.i5389 = icmp eq i32 %.val.i.i5388, 0
  br i1 %.not.i.i5389, label %lean_inc.exit3468, label %bb.bhi

bb.bhi:                                           ; preds = %bb.bhh
  %i.cgi = atomicrmw sub ptr %i.aj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3468

lean_inc.exit3468:                                ; preds = %bb.bhi, %bb.bhh, %bb.bhg, %lean_dec.exit4133
  %.val.i.i5391 = load i32, ptr %9, align 4, !tbaa !10 ; 3 uses
  %i.cgj = icmp sgt i32 %.val.i.i5391, 0
  br i1 %i.cgj, label %bb.bhj, label %bb.bhk, !prof !11

bb.bhj:                                           ; preds = %lean_inc.exit3468
  %i.cgk = add nuw i32 %.val.i.i5391, 1
  store i32 %i.cgk, ptr %9, align 4, !tbaa !10
  br label %lean_inc_ref.exit5393

bb.bhk:                                           ; preds = %lean_inc.exit3468
  %.not.i.i5392 = icmp eq i32 %.val.i.i5391, 0
  br i1 %.not.i.i5392, label %lean_inc_ref.exit5393, label %bb.bhl

bb.bhl:                                           ; preds = %bb.bhk
  %i.cgl = atomicrmw sub ptr %9, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit5393

lean_inc_ref.exit5393:                            ; preds = %bb.bhj, %bb.bhk, %bb.bhl
  %i.cgm = tail call ptr @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_HandlerTrie_find_x3f(ptr noundef nonnull %9, ptr noundef %i.aj, i8 noundef zeroext 1) ; 3 uses
  %i.cgn = ptrtoint ptr %i.cgm to i64             ; 2 uses
  %i.cgo = and i64 %i.cgn, 1
  %.not.i5394 = icmp eq i64 %i.cgo, 0
  br i1 %.not.i5394, label %bb.bhn, label %bb.bhm

bb.bhm:                                           ; preds = %lean_inc_ref.exit5393
  %i.cgp = lshr i64 %i.cgn, 1
  %i.cgq = trunc i64 %i.cgp to i32
  br label %lean_obj_tag.exit5397

bb.bhn:                                           ; preds = %lean_inc_ref.exit5393
  %i.cgr = getelementptr i8, ptr %i.cgm, i64 4
  %.val.i5396 = load i32, ptr %i.cgr, align 4
  %i.cgs = lshr i32 %.val.i5396, 24
  br label %lean_obj_tag.exit5397

lean_obj_tag.exit5397:                            ; preds = %bb.bhm, %bb.bhn
  %.0.i5395 = phi i32 [ %i.cgq, %bb.bhm ], [ %i.cgs, %bb.bhn ]
  %i.cgt = icmp eq i32 %.0.i5395, 0
  br i1 %i.cgt, label %bb.bhp, label %bb.bho

bb.bho:                                           ; preds = %lean_obj_tag.exit5397
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.cgm, i32 noundef 1)
  br label %bb.bhp

bb.bhp:                                           ; preds = %lean_obj_tag.exit5397, %bb.bho
  %.03257 = phi i8 [ %3, %bb.bho ], [ 0, %lean_obj_tag.exit5397 ] ; 2 uses
  %i.cgu = getelementptr inbounds nuw i8, ptr %15, i64 112 ; 2 uses
  %i.cgv = load ptr, ptr %i.cgu, align 8, !tbaa !14
  %i.cgw = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__0(ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__4_value, ptr noundef %i.cgv, ptr poison, ptr poison, ptr poison, ptr nonnull poison, ptr poison, ptr noundef nonnull %15, ptr poison) ; 10 uses
  %i.cgx = ptrtoint ptr %i.cgw to i64             ; 2 uses
  %i.cgy = and i64 %i.cgx, 1
  %.not.i5398 = icmp eq i64 %i.cgy, 0             ; 2 uses
  br i1 %.not.i5398, label %bb.bhr, label %bb.bhq

bb.bhq:                                           ; preds = %bb.bhp
  %i.cgz = lshr i64 %i.cgx, 1
  %i.cha = trunc i64 %i.cgz to i32
  br label %lean_obj_tag.exit5401

bb.bhr:                                           ; preds = %bb.bhp
  %i.chb = getelementptr i8, ptr %i.cgw, i64 4
  %.val.i5400 = load i32, ptr %i.chb, align 4
  %i.chc = lshr i32 %.val.i5400, 24
  br label %lean_obj_tag.exit5401

lean_obj_tag.exit5401:                            ; preds = %bb.bhq, %bb.bhr
  %.0.i5399 = phi i32 [ %i.cha, %bb.bhq ], [ %i.chc, %bb.bhr ]
  %i.chd = icmp eq i32 %.0.i5399, 0
  br i1 %i.chd, label %bb.bdx, label %bb.bff

bb.bhs:                                           ; preds = %lean_obj_tag.exit4829
  br i1 %.not.i3655, label %bb.bht, label %lean_dec.exit3745

bb.bht:                                           ; preds = %bb.bhs
  %i.che = load i32, ptr %i.cm, align 4, !tbaa !10 ; 3 uses
  %i.chf = icmp sgt i32 %i.che, 1
  br i1 %i.chf, label %bb.bhu, label %bb.bhv, !prof !11

bb.bhu:                                           ; preds = %bb.bht
  %i.chg = add nsw i32 %i.che, -1
  store i32 %i.chg, ptr %i.cm, align 4, !tbaa !10
  br label %lean_dec.exit3745

bb.bhv:                                           ; preds = %bb.bht
  %.not.i4475 = icmp eq i32 %i.che, 0
  br i1 %.not.i4475, label %lean_dec.exit3745, label %bb.bhw

bb.bhw:                                           ; preds = %bb.bhv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #7
  br label %lean_dec.exit3745

lean_dec.exit3745:                                ; preds = %bb.bhw, %bb.bhv, %bb.bhu, %bb.bhs
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.bm, i32 noundef 1)
  br i1 %.not.i4792, label %bb.bhx, label %lean_dec.exit3743

bb.bhx:                                           ; preds = %lean_dec.exit3745
  %i.chh = load i32, ptr %i.bx, align 4, !tbaa !10 ; 3 uses
  %i.chi = icmp sgt i32 %i.chh, 1
  br i1 %i.chi, label %bb.bhy, label %bb.bhz, !prof !11

bb.bhy:                                           ; preds = %bb.bhx
  %i.chj = add nsw i32 %i.chh, -1
  store i32 %i.chj, ptr %i.bx, align 4, !tbaa !10
  br label %lean_dec.exit3743

bb.bhz:                                           ; preds = %bb.bhx
  %.not.i4477 = icmp eq i32 %i.chh, 0
  br i1 %.not.i4477, label %lean_dec.exit3743, label %bb.bia

bb.bia:                                           ; preds = %bb.bhz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bx) #7
  br label %lean_dec.exit3743

lean_dec.exit3743:                                ; preds = %bb.bia, %bb.bhz, %bb.bhy, %lean_dec.exit3745
  %i.chk = ptrtoint ptr %i.aj to i64
  %i.chl = and i64 %i.chk, 1
  %.not.i3740 = icmp eq i64 %i.chl, 0
  br i1 %.not.i3740, label %bb.bib, label %lean_dec.exit3741

bb.bib:                                           ; preds = %lean_dec.exit3743
  %i.chm = load i32, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.chn = icmp sgt i32 %i.chm, 1
  br i1 %i.chn, label %bb.bic, label %bb.bid, !prof !11

bb.bic:                                           ; preds = %bb.bib
  %i.cho = add nsw i32 %i.chm, -1
  store i32 %i.cho, ptr %i.aj, align 4, !tbaa !10
  br label %lean_dec.exit3741

bb.bid:                                           ; preds = %bb.bib
  %.not.i4479 = icmp eq i32 %i.chm, 0
  br i1 %.not.i4479, label %lean_dec.exit3741, label %bb.bie

bb.bie:                                           ; preds = %bb.bid
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aj) #7
  br label %lean_dec.exit3741

lean_dec.exit3741:                                ; preds = %bb.bie, %bb.bid, %bb.bic, %lean_dec.exit3743
  %i.chp = load i32, ptr %9, align 4, !tbaa !10   ; 3 uses
  %i.chq = icmp sgt i32 %i.chp, 1
  br i1 %i.chq, label %bb.bif, label %bb.big, !prof !11

bb.bif:                                           ; preds = %lean_dec.exit3741
  %i.chr = add nsw i32 %i.chp, -1
  store i32 %i.chr, ptr %9, align 4, !tbaa !10
  br label %lean_dec_ref.exit4584

bb.big:                                           ; preds = %lean_dec.exit3741
  %.not.i4583 = icmp eq i32 %i.chp, 0
  br i1 %.not.i4583, label %lean_dec_ref.exit4584, label %bb.bih

bb.bih:                                           ; preds = %bb.big
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #7
  br label %lean_dec_ref.exit4584

lean_dec_ref.exit4584:                            ; preds = %bb.bif, %bb.big, %bb.bih
  %i.chs = ptrtoint ptr %5 to i64
  %i.cht = and i64 %i.chs, 1
  %.not.i3738 = icmp eq i64 %i.cht, 0
  br i1 %.not.i3738, label %bb.bii, label %lean_dec.exit3739

bb.bii:                                           ; preds = %lean_dec_ref.exit4584
  %i.chu = load i32, ptr %5, align 4, !tbaa !10   ; 3 uses
  %i.chv = icmp sgt i32 %i.chu, 1
  br i1 %i.chv, label %bb.bij, label %bb.bik, !prof !11

bb.bij:                                           ; preds = %bb.bii
  %i.chw = add nsw i32 %i.chu, -1
  store i32 %i.chw, ptr %5, align 4, !tbaa !10
  br label %lean_dec.exit3739

bb.bik:                                           ; preds = %bb.bii
  %.not.i4481 = icmp eq i32 %i.chu, 0
  br i1 %.not.i4481, label %lean_dec.exit3739, label %bb.bil

bb.bil:                                           ; preds = %bb.bik
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #7
  br label %lean_dec.exit3739

lean_dec.exit3739:                                ; preds = %bb.bil, %bb.bik, %bb.bij, %lean_dec_ref.exit4584
  %i.chx = ptrtoint ptr %2 to i64
  %i.chy = and i64 %i.chx, 1
  %.not.i3736 = icmp eq i64 %i.chy, 0
  br i1 %.not.i3736, label %bb.bim, label %lean_dec.exit3737

bb.bim:                                           ; preds = %lean_dec.exit3739
  %i.chz = load i32, ptr %2, align 4, !tbaa !10   ; 3 uses
  %i.cia = icmp sgt i32 %i.chz, 1
  br i1 %i.cia, label %bb.bin, label %bb.bio, !prof !11

bb.bin:                                           ; preds = %bb.bim
  %i.cib = add nsw i32 %i.chz, -1
  store i32 %i.cib, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit3737

bb.bio:                                           ; preds = %bb.bim
  %.not.i4483 = icmp eq i32 %i.chz, 0
  br i1 %.not.i4483, label %lean_dec.exit3737, label %bb.bip

bb.bip:                                           ; preds = %bb.bio
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #7
  br label %lean_dec.exit3737

lean_dec.exit3737:                                ; preds = %bb.bip, %bb.bio, %bb.bin, %lean_dec.exit3739
  %i.cic = load i32, ptr %1, align 4, !tbaa !10   ; 3 uses
  %i.cid = icmp sgt i32 %i.cic, 1
  br i1 %i.cid, label %bb.biq, label %bb.bir, !prof !11

bb.biq:                                           ; preds = %lean_dec.exit3737
  %i.cie = add nsw i32 %i.cic, -1
  store i32 %i.cie, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit4582

bb.bir:                                           ; preds = %lean_dec.exit3737
  %.not.i4581 = icmp eq i32 %i.cic, 0
  br i1 %.not.i4581, label %lean_dec_ref.exit4582, label %bb.bis

bb.bis:                                           ; preds = %bb.bir
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit4582

lean_dec_ref.exit4582:                            ; preds = %bb.biq, %bb.bir, %bb.bis
  br i1 %.not.i3659, label %bb.bit, label %lean_dec.exit3735

bb.bit:                                           ; preds = %lean_dec_ref.exit4582
  %i.cif = load i32, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.cig = icmp sgt i32 %i.cif, 1
  br i1 %i.cig, label %bb.biu, label %bb.biv, !prof !11

bb.biu:                                           ; preds = %bb.bit
  %i.cih = add nsw i32 %i.cif, -1
  store i32 %i.cih, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit3735

bb.biv:                                           ; preds = %bb.bit
  %.not.i4485 = icmp eq i32 %i.cif, 0
  br i1 %.not.i4485, label %lean_dec.exit3735, label %bb.biw

bb.biw:                                           ; preds = %bb.biv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit3735

lean_dec.exit3735:                                ; preds = %bb.biw, %bb.biv, %bb.biu, %lean_dec_ref.exit4582
  %i.cii = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.cij = load ptr, ptr %i.cii, align 8, !tbaa !14 ; 5 uses
  %.val4757 = load i32, ptr %i.dt, align 8, !tbaa !10
  %i.cik = icmp eq i32 %.val4757, 1
  br i1 %i.cik, label %lean_dec.exit, label %bb.bix

bb.bix:                                           ; preds = %lean_dec.exit3735
  %i.cil = ptrtoint ptr %i.cij to i64
  %i.cim = and i64 %i.cil, 1
  %.not.i3465 = icmp eq i64 %i.cim, 0
  br i1 %.not.i3465, label %bb.biy, label %lean_inc.exit3466

bb.biy:                                           ; preds = %bb.bix
  %.val.i.i5402 = load i32, ptr %i.cij, align 4, !tbaa !10 ; 3 uses
  %i.cin = icmp sgt i32 %.val.i.i5402, 0
  br i1 %i.cin, label %bb.biz, label %bb.bja, !prof !11

bb.biz:                                           ; preds = %bb.biy
  %i.cio = add nuw i32 %.val.i.i5402, 1
  store i32 %i.cio, ptr %i.cij, align 4, !tbaa !10
  br label %lean_inc.exit3466

bb.bja:                                           ; preds = %bb.biy
  %.not.i.i5403 = icmp eq i32 %.val.i.i5402, 0
  br i1 %.not.i.i5403, label %lean_inc.exit3466, label %bb.bjb

bb.bjb:                                           ; preds = %bb.bja
  %i.cip = atomicrmw sub ptr %i.cij, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3466

lean_inc.exit3466:                                ; preds = %bb.bjb, %bb.bja, %bb.biz, %bb.bix
  br i1 %.not.i4826, label %bb.bjc, label %bb.bjg

bb.bjc:                                           ; preds = %lean_inc.exit3466
  %i.ciq = load i32, ptr %i.dt, align 8, !tbaa !10 ; 3 uses
  %i.cir = icmp sgt i32 %i.ciq, 1
  br i1 %i.cir, label %bb.bjd, label %bb.bje, !prof !11

end_hunk_15
begin_hunk_16_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2:bb.a
bb.bl:                                            ; preds = %bb.bk
  %i.dx = add nsw i32 %.val.i4736, -1
  store i32 %i.dx, ptr %i.da, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit4746

bb.bm:                                            ; preds = %bb.bk
  %.not.i8.i4737 = icmp eq i32 %.val.i4736, 0
  br i1 %.not.i8.i4737, label %lean_dec_ref_known.exit4746, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.da) #7
  br label %lean_dec_ref_known.exit4746

lean_dec_ref_known.exit4746:                      ; preds = %lean_dec.exit.i4741, %bb.bl, %bb.bm, %bb.bn
  %i.dy = and i64 %i.dk, 510
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %bb.bo, label %bb.bke

bb.bo:                                            ; preds = %lean_dec_ref_known.exit4746
  br i1 %.not.i3600, label %bb.bp, label %lean_inc.exit3601

bb.bp:                                            ; preds = %bb.bo
  %.val.i.i4747 = load i32, ptr %15, align 4, !tbaa !10 ; 3 uses
  %i.ea = icmp sgt i32 %.val.i.i4747, 0
  br i1 %i.ea, label %bb.bq, label %bb.br, !prof !11

bb.bq:                                            ; preds = %bb.bp
  %i.eb = add nuw i32 %.val.i.i4747, 1
  store i32 %i.eb, ptr %15, align 4, !tbaa !10
  br label %lean_inc.exit3601

bb.br:                                            ; preds = %bb.bp
  %.not.i.i4748 = icmp eq i32 %.val.i.i4747, 0
  br i1 %.not.i.i4748, label %lean_inc.exit3601, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ec = atomicrmw sub ptr %15, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3601

lean_inc.exit3601:                                ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bo
  %.val.i.i4750 = load i32, ptr %14, align 4, !tbaa !10 ; 3 uses
  %i.ed = icmp sgt i32 %.val.i.i4750, 0
  br i1 %i.ed, label %bb.bt, label %bb.bu, !prof !11

bb.bt:                                            ; preds = %lean_inc.exit3601
  %i.ee = add nuw i32 %.val.i.i4750, 1
  store i32 %i.ee, ptr %14, align 4, !tbaa !10
  br label %lean_inc_ref.exit4752

bb.bu:                                            ; preds = %lean_inc.exit3601
  %.not.i.i4751 = icmp eq i32 %.val.i.i4750, 0
  br i1 %.not.i.i4751, label %lean_inc_ref.exit4752, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ef = atomicrmw sub ptr %14, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit4752

lean_inc_ref.exit4752:                            ; preds = %bb.bt, %bb.bu, %bb.bv
  br i1 %.not.i3598, label %bb.bw, label %lean_inc.exit3599

bb.bw:                                            ; preds = %lean_inc_ref.exit4752
  %.val.i.i4753 = load i32, ptr %13, align 4, !tbaa !10 ; 3 uses
  %i.eg = icmp sgt i32 %.val.i.i4753, 0
  br i1 %i.eg, label %bb.bx, label %bb.by, !prof !11

bb.bx:                                            ; preds = %bb.bw
  %i.eh = add nuw i32 %.val.i.i4753, 1
  store i32 %i.eh, ptr %13, align 4, !tbaa !10
  br label %lean_inc.exit3599

bb.by:                                            ; preds = %bb.bw
  %.not.i.i4754 = icmp eq i32 %.val.i.i4753, 0
  br i1 %.not.i.i4754, label %lean_inc.exit3599, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ei = atomicrmw sub ptr %13, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3599

lean_inc.exit3599:                                ; preds = %bb.bz, %bb.by, %bb.bx, %lean_inc_ref.exit4752
  %.val.i.i4756 = load i32, ptr %12, align 4, !tbaa !10 ; 3 uses
  %i.ej = icmp sgt i32 %.val.i.i4756, 0
  br i1 %i.ej, label %bb.ca, label %bb.cb, !prof !11

bb.ca:                                            ; preds = %lean_inc.exit3599
  %i.ek = add nuw i32 %.val.i.i4756, 1
  store i32 %i.ek, ptr %12, align 4, !tbaa !10
  br label %lean_inc_ref.exit4758

bb.cb:                                            ; preds = %lean_inc.exit3599
  %.not.i.i4757 = icmp eq i32 %.val.i.i4756, 0
  br i1 %.not.i.i4757, label %lean_inc_ref.exit4758, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.el = atomicrmw sub ptr %12, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit4758

lean_inc_ref.exit4758:                            ; preds = %bb.ca, %bb.cb, %bb.cc
  %i.em = tail call ptr @lean_infer_type(ptr noundef %i.bt, ptr noundef nonnull %12, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %15) #7 ; 13 uses
  %i.en = ptrtoint ptr %i.em to i64               ; 2 uses
  %i.eo = and i64 %i.en, 1
  %.not.i4759 = icmp eq i64 %i.eo, 0              ; 2 uses
  br i1 %.not.i4759, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %lean_inc_ref.exit4758
  %i.ep = lshr i64 %i.en, 1
  %i.eq = trunc i64 %i.ep to i32
  br label %lean_obj_tag.exit4762

bb.ce:                                            ; preds = %lean_inc_ref.exit4758
  %i.er = getelementptr i8, ptr %i.em, i64 4
  %.val.i4761 = load i32, ptr %i.er, align 4
  %i.es = lshr i32 %.val.i4761, 24
  br label %lean_obj_tag.exit4762

lean_obj_tag.exit4762:                            ; preds = %bb.cd, %bb.ce
  %.0.i4760 = phi i32 [ %i.eq, %bb.cd ], [ %i.es, %bb.ce ]
  %i.et = icmp eq i32 %.0.i4760, 0
  br i1 %i.et, label %bb.cf, label %bb.big

bb.cf:                                            ; preds = %lean_obj_tag.exit4762
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !14 ; 35 uses
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = and i64 %i.ew, 1
  %.not.i3596 = icmp eq i64 %i.ex, 0              ; 10 uses
  br i1 %.not.i3596, label %bb.cg, label %lean_inc.exit3597

bb.cg:                                            ; preds = %bb.cf
  %.val.i.i4763 = load i32, ptr %i.ev, align 4, !tbaa !10 ; 3 uses
  %i.ey = icmp sgt i32 %.val.i.i4763, 0
  br i1 %i.ey, label %bb.ch, label %bb.ci, !prof !11

bb.ch:                                            ; preds = %bb.cg
  %i.ez = add nuw i32 %.val.i.i4763, 1
  store i32 %i.ez, ptr %i.ev, align 4, !tbaa !10
  br label %lean_inc.exit3597

bb.ci:                                            ; preds = %bb.cg
  %.not.i.i4764 = icmp eq i32 %.val.i.i4763, 0
  br i1 %.not.i.i4764, label %lean_inc.exit3597, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.fa = atomicrmw sub ptr %i.ev, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3597

lean_inc.exit3597:                                ; preds = %bb.cj, %bb.ci, %bb.ch, %bb.cf
  %.val.i4766 = load i32, ptr %i.em, align 8, !tbaa !10 ; 4 uses
  %i.fb = icmp eq i32 %.val.i4766, 1
  br i1 %i.fb, label %.preheader.i4768, label %bb.co

.preheader.i4768:                                 ; preds = %lean_inc.exit3597
  %i.fc = load ptr, ptr %i.eu, align 8, !tbaa !14 ; 4 uses
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = and i64 %i.fd, 1
  %.not.i.i4770 = icmp eq i64 %i.fe, 0
  br i1 %.not.i.i4770, label %bb.ck, label %lean_dec.exit.i4771

bb.ck:                                            ; preds = %.preheader.i4768
  %i.ff = load i32, ptr %i.fc, align 4, !tbaa !10 ; 3 uses
  %i.fg = icmp sgt i32 %i.ff, 1
  br i1 %i.fg, label %bb.cl, label %bb.cm, !prof !11

bb.cl:                                            ; preds = %bb.ck
  %i.fh = add nsw i32 %i.ff, -1
  store i32 %i.fh, ptr %i.fc, align 4, !tbaa !10
  br label %lean_dec.exit.i4771

bb.cm:                                            ; preds = %bb.ck
  %.not.i7.i4775 = icmp eq i32 %i.ff, 0
  br i1 %.not.i7.i4775, label %lean_dec.exit.i4771, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fc) #7
  br label %lean_dec.exit.i4771

lean_dec.exit.i4771:                              ; preds = %bb.cn, %bb.cm, %bb.cl, %.preheader.i4768
  tail call void @lean_free_object(ptr noundef nonnull %i.em) #7
  br label %lean_dec_ref_known.exit4776

bb.co:                                            ; preds = %lean_inc.exit3597
  %i.fi = icmp sgt i32 %.val.i4766, 1
  br i1 %i.fi, label %bb.cp, label %bb.cq, !prof !11

bb.cp:                                            ; preds = %bb.co
  %i.fj = add nsw i32 %.val.i4766, -1
  store i32 %i.fj, ptr %i.em, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit4776

bb.cq:                                            ; preds = %bb.co
  %.not.i8.i4767 = icmp eq i32 %.val.i4766, 0
  br i1 %.not.i8.i4767, label %lean_dec_ref_known.exit4776, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.em) #7
  br label %lean_dec_ref_known.exit4776

lean_dec_ref_known.exit4776:                      ; preds = %lean_dec.exit.i4771, %bb.cp, %bb.cq, %bb.cr
  br i1 %.not.i3602, label %bb.cs, label %lean_inc.exit3595

bb.cs:                                            ; preds = %lean_dec_ref_known.exit4776
  %.val.i.i4777 = load i32, ptr %i.dj, align 4, !tbaa !10 ; 3 uses
  %i.fk = icmp sgt i32 %.val.i.i4777, 0
  br i1 %i.fk, label %bb.ct, label %bb.cu, !prof !11

bb.ct:                                            ; preds = %bb.cs
  %i.fl = add nuw i32 %.val.i.i4777, 1
  store i32 %i.fl, ptr %i.dj, align 4, !tbaa !10
  br label %lean_inc.exit3595

bb.cu:                                            ; preds = %bb.cs
  %.not.i.i4778 = icmp eq i32 %.val.i.i4777, 0
  br i1 %.not.i.i4778, label %lean_inc.exit3595, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.fm = atomicrmw sub ptr %i.dj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3595

lean_inc.exit3595:                                ; preds = %bb.cv, %bb.cu, %bb.ct, %lean_dec_ref_known.exit4776
  %i.fn = tail call ptr @lean_alloc_object(i64 noundef 32) #7 ; 16 uses
  store i32 1, ptr %i.fn, align 4, !tbaa !10
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = and i32 %i.fp, 65535
  %i.fr = or disjoint i32 %i.fq, -184549376
  store i32 %i.fr, ptr %i.fo, align 4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__1___boxed, ptr %i.fs, align 8, !tbaa !14
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store i16 10, ptr %i.ft, align 8, !tbaa !22
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 18
  store i16 1, ptr %i.fu, align 2, !tbaa !22
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  store ptr %i.dj, ptr %i.fv, align 8, !tbaa !14
  %i.fw = ptrtoint ptr %i.bg to i64
  %i.fx = and i64 %i.fw, 1
  %.not.i3592 = icmp eq i64 %i.fx, 0              ; 24 uses
  br i1 %.not.i3592, label %bb.cw, label %lean_inc.exit3593

bb.cw:                                            ; preds = %lean_inc.exit3595
  %.val.i.i4780 = load i32, ptr %i.bg, align 4, !tbaa !10 ; 3 uses
  %i.fy = icmp sgt i32 %.val.i.i4780, 0
  br i1 %i.fy, label %bb.cx, label %bb.cy, !prof !11

bb.cx:                                            ; preds = %bb.cw
  %i.fz = add nuw i32 %.val.i.i4780, 1
  store i32 %i.fz, ptr %i.bg, align 4, !tbaa !10
  br label %lean_inc.exit3593

bb.cy:                                            ; preds = %bb.cw
  %.not.i.i4781 = icmp eq i32 %.val.i.i4780, 0
  br i1 %.not.i.i4781, label %lean_inc.exit3593, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ga = atomicrmw sub ptr %i.bg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3593

lean_inc.exit3593:                                ; preds = %bb.cz, %bb.cy, %bb.cx, %lean_inc.exit3595
  %.val.i.i4783 = load i32, ptr %.0257810258, align 4, !tbaa !10 ; 3 uses
  %i.gb = icmp sgt i32 %.val.i.i4783, 0
  br i1 %i.gb, label %bb.da, label %bb.db, !prof !11

bb.da:                                            ; preds = %lean_inc.exit3593
  %i.gc = add nuw i32 %.val.i.i4783, 1
  store i32 %i.gc, ptr %.0257810258, align 4, !tbaa !10
  br label %lean_inc_ref.exit4785

bb.db:                                            ; preds = %lean_inc.exit3593
  %.not.i.i4784 = icmp eq i32 %.val.i.i4783, 0
  br i1 %.not.i.i4784, label %lean_inc_ref.exit4785, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.gd = atomicrmw sub ptr %.0257810258, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit4785

lean_inc_ref.exit4785:                            ; preds = %bb.da, %bb.db, %bb.dc
  %i.ge = tail call ptr @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_HandlerTrie_find_x3f(ptr noundef nonnull %.0257810258, ptr noundef %i.bg, i8 noundef zeroext 0) ; 7 uses
  %i.gf = ptrtoint ptr %i.ge to i64               ; 2 uses
  %i.gg = and i64 %i.gf, 1
  %.not.i4786 = icmp eq i64 %i.gg, 0              ; 2 uses
  br i1 %.not.i4786, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %lean_inc_ref.exit4785
  %i.gh = lshr i64 %i.gf, 1
  %i.gi = trunc i64 %i.gh to i32
  br label %lean_obj_tag.exit4789

bb.de:                                            ; preds = %lean_inc_ref.exit4785
  %i.gj = getelementptr i8, ptr %i.ge, i64 4
  %.val.i4788 = load i32, ptr %i.gj, align 4
  %i.gk = lshr i32 %.val.i4788, 24
  br label %lean_obj_tag.exit4789

lean_obj_tag.exit4789:                            ; preds = %bb.dd, %bb.de
  %.0.i4787 = phi i32 [ %i.gi, %bb.dd ], [ %i.gk, %bb.de ]
  %i.gl = icmp eq i32 %.0.i4787, 0
  br i1 %i.gl, label %lean_dec.exit4074, label %bb.df

bb.df:                                            ; preds = %lean_obj_tag.exit4789
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !14 ; 8 uses
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = and i64 %i.go, 1
  %.not.i3590 = icmp eq i64 %i.gp, 0              ; 2 uses
  br i1 %.not.i3590, label %bb.dg, label %lean_inc.exit3591

bb.dg:                                            ; preds = %bb.df
  %.val.i.i4790 = load i32, ptr %i.gn, align 4, !tbaa !10 ; 3 uses
  %i.gq = icmp sgt i32 %.val.i.i4790, 0
  br i1 %i.gq, label %bb.dh, label %bb.di, !prof !11

bb.dh:                                            ; preds = %bb.dg
  %i.gr = add nuw i32 %.val.i.i4790, 1
  store i32 %i.gr, ptr %i.gn, align 4, !tbaa !10
  br label %lean_inc.exit3591

bb.di:                                            ; preds = %bb.dg
  %.not.i.i4791 = icmp eq i32 %.val.i.i4790, 0
  br i1 %.not.i.i4791, label %lean_inc.exit3591, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.gs = atomicrmw sub ptr %i.gn, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3591

lean_inc.exit3591:                                ; preds = %bb.dj, %bb.di, %bb.dh, %bb.df
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !14 ; 8 uses
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = and i64 %i.gv, 1
  %.not.i3588 = icmp eq i64 %i.gw, 0              ; 2 uses
  br i1 %.not.i3588, label %bb.dk, label %lean_inc.exit3589

bb.dk:                                            ; preds = %lean_inc.exit3591
  %.val.i.i4793 = load i32, ptr %i.gu, align 4, !tbaa !10 ; 3 uses
  %i.gx = icmp sgt i32 %.val.i.i4793, 0
  br i1 %i.gx, label %bb.dl, label %bb.dm, !prof !11

bb.dl:                                            ; preds = %bb.dk
  %i.gy = add nuw i32 %.val.i.i4793, 1
  store i32 %i.gy, ptr %i.gu, align 4, !tbaa !10
  br label %lean_inc.exit3589

bb.dm:                                            ; preds = %bb.dk
  %.not.i.i4794 = icmp eq i32 %.val.i.i4793, 0
  br i1 %.not.i.i4794, label %lean_inc.exit3589, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.gz = atomicrmw sub ptr %i.gu, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3589

lean_inc.exit3589:                                ; preds = %bb.dn, %bb.dm, %bb.dl, %lean_inc.exit3591
  br i1 %.not.i3590, label %bb.do, label %lean_dec.exit4076

bb.do:                                            ; preds = %lean_inc.exit3589
  %i.ha = load i32, ptr %i.gn, align 8, !tbaa !10 ; 3 uses
  %i.hb = icmp sgt i32 %i.ha, 1
  br i1 %i.hb, label %bb.dp, label %bb.dq, !prof !11

bb.dp:                                            ; preds = %bb.do
  %i.hc = add nsw i32 %i.ha, -1
  store i32 %i.hc, ptr %i.gn, align 8, !tbaa !10
  br label %lean_dec.exit4076

bb.dq:                                            ; preds = %bb.do
  %.not.i4088 = icmp eq i32 %i.ha, 0
  br i1 %.not.i4088, label %lean_dec.exit4076, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gn) #7
  br label %lean_dec.exit4076

lean_dec.exit4076:                                ; preds = %bb.dr, %bb.dq, %bb.dp, %lean_inc.exit3589
  %i.hd = tail call zeroext i8 @lean_name_eq(ptr noundef %i.bg, ptr noundef %i.gu) #7 ; 4 uses
  br i1 %.not.i3588, label %bb.ds, label %lean_dec.exit4074

bb.ds:                                            ; preds = %lean_dec.exit4076
  %i.he = load i32, ptr %i.gu, align 4, !tbaa !10 ; 3 uses
  %i.hf = icmp sgt i32 %i.he, 1
  br i1 %i.hf, label %bb.dt, label %bb.du, !prof !11

bb.dt:                                            ; preds = %bb.ds
  %i.hg = add nsw i32 %i.he, -1
  store i32 %i.hg, ptr %i.gu, align 4, !tbaa !10
  br label %lean_dec.exit4074

bb.du:                                            ; preds = %bb.ds
  %.not.i4090 = icmp eq i32 %i.he, 0
  br i1 %.not.i4090, label %lean_dec.exit4074, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gu) #7
  br label %lean_dec.exit4074

lean_inc.exit3535.thread:                         ; preds = %bb.ws, %bb.wt, %bb.wu, %lean_inc.exit3501, %bb.rf, %bb.rg, %bb.rh, %lean_inc.exit3519, %bb.lr, %bb.ls, %bb.lt, %lean_inc.exit3537, %lean_inc.exit3571
  %.02838 = phi ptr [ %i.ks, %lean_inc.exit3571 ], [ %i.wx, %bb.rf ], [ %i.ps, %bb.lr ], [ %i.ps, %lean_inc.exit3537 ], [ %i.ps, %bb.lt ], [ %i.ps, %bb.ls ], [ %i.wx, %lean_inc.exit3519 ], [ %i.wx, %bb.rh ], [ %i.wx, %bb.rg ], [ %i.wx, %lean_inc.exit3501 ], [ %i.wx, %bb.wu ], [ %i.wx, %bb.wt ], [ %i.wx, %bb.ws ]
  %.02831 = phi ptr [ %i.kr, %lean_inc.exit3571 ], [ %i.ww, %bb.rf ], [ %i.pr, %bb.lr ], [ %i.pr, %lean_inc.exit3537 ], [ %i.pr, %bb.lt ], [ %i.pr, %bb.ls ], [ %i.ww, %lean_inc.exit3519 ], [ %i.ww, %bb.rh ], [ %i.ww, %bb.rg ], [ %i.ww, %lean_inc.exit3501 ], [ %i.ww, %bb.wu ], [ %i.ww, %bb.wt ], [ %i.ww, %bb.ws ]
  %.02821 = phi ptr [ %i.kq, %lean_inc.exit3571 ], [ %i.wv, %bb.rf ], [ %i.pq, %bb.lr ], [ %i.pq, %lean_inc.exit3537 ], [ %i.pq, %bb.lt ], [ %i.pq, %bb.ls ], [ %i.wv, %lean_inc.exit3519 ], [ %i.wv, %bb.rh ], [ %i.wv, %bb.rg ], [ %i.wv, %lean_inc.exit3501 ], [ %i.wv, %bb.wu ], [ %i.wv, %bb.wt ], [ %i.wv, %bb.ws ]
  %.02772 = phi ptr [ %i.kj, %lean_inc.exit3571 ], [ %i.aar, %bb.rf ], [ %i.tm, %bb.lr ], [ %i.tm, %lean_inc.exit3537 ], [ %i.tm, %bb.lt ], [ %i.tm, %bb.ls ], [ %i.aar, %lean_inc.exit3519 ], [ %i.aar, %bb.rh ], [ %i.aar, %bb.rg ], [ %i.aht, %lean_inc.exit3501 ], [ %i.aht, %bb.wu ], [ %i.aht, %bb.wt ], [ %i.aht, %bb.ws ]
  %.02751 = phi i8 [ 0, %lean_inc.exit3571 ], [ %i.av, %bb.rf ], [ %.02960, %bb.lr ], [ %.02960, %lean_inc.exit3537 ], [ %.02960, %bb.lt ], [ %.02960, %bb.ls ], [ 1, %lean_inc.exit3519 ], [ 1, %bb.rh ], [ 1, %bb.rg ], [ 1, %lean_inc.exit3501 ], [ 1, %bb.wu ], [ 1, %bb.wt ], [ 1, %bb.ws ]
  %i.hh = tail call ptr @l_Lean_SourceInfo_fromRef(ptr noundef %.02821, i8 noundef zeroext 0) #7 ; 13 uses
  %i.hi = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__33_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__34_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__8_value) #7
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = and i64 %i.hj, 1
  %.not.i4796 = icmp eq i64 %i.hk, 0
  br i1 %.not.i4796, label %bb.dw, label %lean_inc_n.exit4799

bb.dw:                                            ; preds = %lean_inc.exit3535.thread
  %.val.i.i4797 = load i32, ptr %i.hh, align 4, !tbaa !10 ; 3 uses
end_hunk_16
begin_hunk_17_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2:bb.a
  %.val.i.i4807 = load i32, ptr %15, align 4, !tbaa !10 ; 3 uses
  %i.jj = icmp sgt i32 %.val.i.i4807, 0
  br i1 %i.jj, label %bb.el, label %bb.em, !prof !11

bb.el:                                            ; preds = %bb.ek
  %i.jk = add nuw i32 %.val.i.i4807, 1
  store i32 %i.jk, ptr %15, align 4, !tbaa !10
  br label %lean_inc.exit3581

bb.em:                                            ; preds = %bb.ek
  %.not.i.i4808 = icmp eq i32 %.val.i.i4807, 0
  br i1 %.not.i.i4808, label %lean_inc.exit3581, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.jl = atomicrmw sub ptr %15, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3581

lean_inc.exit3581:                                ; preds = %bb.en, %bb.em, %bb.el, %lean_inc.exit3583
  %.val.i.i4810 = load i32, ptr %14, align 8, !tbaa !10 ; 3 uses
  %i.jm = icmp sgt i32 %.val.i.i4810, 0
  br i1 %i.jm, label %bb.eo, label %bb.ep, !prof !11

bb.eo:                                            ; preds = %lean_inc.exit3581
  %i.jn = add nuw i32 %.val.i.i4810, 1
  store i32 %i.jn, ptr %14, align 8, !tbaa !10
  br label %lean_inc_ref.exit4812

bb.ep:                                            ; preds = %lean_inc.exit3581
  %.not.i.i4811 = icmp eq i32 %.val.i.i4810, 0
  br i1 %.not.i.i4811, label %lean_inc_ref.exit4812, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.jo = atomicrmw sub ptr %14, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit4812

lean_inc_ref.exit4812:                            ; preds = %bb.eo, %bb.ep, %bb.eq
  br i1 %.not.i3598, label %bb.er, label %lean_inc.exit3579

bb.er:                                            ; preds = %lean_inc_ref.exit4812
  %.val.i.i4813 = load i32, ptr %13, align 4, !tbaa !10 ; 3 uses
  %i.jp = icmp sgt i32 %.val.i.i4813, 0
  br i1 %i.jp, label %bb.es, label %bb.et, !prof !11

bb.es:                                            ; preds = %bb.er
  %i.jq = add nuw i32 %.val.i.i4813, 1
  store i32 %i.jq, ptr %13, align 4, !tbaa !10
  br label %lean_inc.exit3579

bb.et:                                            ; preds = %bb.er
  %.not.i.i4814 = icmp eq i32 %.val.i.i4813, 0
  br i1 %.not.i.i4814, label %lean_inc.exit3579, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.jr = atomicrmw sub ptr %13, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3579

lean_inc.exit3579:                                ; preds = %bb.eu, %bb.et, %bb.es, %lean_inc_ref.exit4812
  %.val.i.i4816 = load i32, ptr %12, align 8, !tbaa !10 ; 3 uses
  %i.js = icmp sgt i32 %.val.i.i4816, 0
  br i1 %i.js, label %bb.ev, label %bb.ew, !prof !11

bb.ev:                                            ; preds = %lean_inc.exit3579
  %i.jt = add nuw i32 %.val.i.i4816, 1
  store i32 %i.jt, ptr %12, align 8, !tbaa !10
  br label %lean_inc_ref.exit4818

bb.ew:                                            ; preds = %lean_inc.exit3579
  %.not.i.i4817 = icmp eq i32 %.val.i.i4816, 0
  br i1 %.not.i.i4817, label %lean_inc_ref.exit4818, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ju = atomicrmw sub ptr %12, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit4818

lean_inc_ref.exit4818:                            ; preds = %bb.ev, %bb.ew, %bb.ex
  br i1 %.not.i3426, label %bb.ey, label %lean_inc.exit3577

bb.ey:                                            ; preds = %lean_inc_ref.exit4818
  %.val.i.i4819 = load i32, ptr %11, align 4, !tbaa !10 ; 3 uses
  %i.jv = icmp sgt i32 %.val.i.i4819, 0
  br i1 %i.jv, label %bb.ez, label %bb.fa, !prof !11

bb.ez:                                            ; preds = %bb.ey
  %i.jw = add nuw i32 %.val.i.i4819, 1
  store i32 %i.jw, ptr %11, align 4, !tbaa !10
  br label %lean_inc.exit3577

bb.fa:                                            ; preds = %bb.ey
  %.not.i.i4820 = icmp eq i32 %.val.i.i4819, 0
  br i1 %.not.i.i4820, label %lean_inc.exit3577, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.jx = atomicrmw sub ptr %11, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3577

lean_inc.exit3577:                                ; preds = %bb.fb, %bb.fa, %bb.ez, %lean_inc_ref.exit4818
  %.val.i.i4822 = load i32, ptr %10, align 4, !tbaa !10 ; 3 uses
  %i.jy = icmp sgt i32 %.val.i.i4822, 0
  br i1 %i.jy, label %bb.fc, label %bb.fd, !prof !11

bb.fc:                                            ; preds = %lean_inc.exit3577
  %i.jz = add nuw i32 %.val.i.i4822, 1
  store i32 %i.jz, ptr %10, align 4, !tbaa !10
  br label %lean_inc_ref.exit4824

bb.fd:                                            ; preds = %lean_inc.exit3577
  %.not.i.i4823 = icmp eq i32 %.val.i.i4822, 0
  br i1 %.not.i.i4823, label %lean_inc_ref.exit4824, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.ka = atomicrmw sub ptr %10, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit4824

lean_inc_ref.exit4824:                            ; preds = %bb.fc, %bb.fd, %bb.fe
  br i1 %.not.i3424, label %bb.ff, label %lean_inc.exit3575

bb.ff:                                            ; preds = %lean_inc_ref.exit4824
  %.val.i.i4825 = load i32, ptr %9, align 4, !tbaa !10 ; 3 uses
  %i.kb = icmp sgt i32 %.val.i.i4825, 0
  br i1 %i.kb, label %bb.fg, label %bb.fh, !prof !11

bb.fg:                                            ; preds = %bb.ff
  %i.kc = add nuw i32 %.val.i.i4825, 1
  store i32 %i.kc, ptr %9, align 4, !tbaa !10
  br label %lean_inc.exit3575

bb.fh:                                            ; preds = %bb.ff
  %.not.i.i4826 = icmp eq i32 %.val.i.i4825, 0
  br i1 %.not.i.i4826, label %lean_inc.exit3575, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.kd = atomicrmw sub ptr %9, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3575

lean_inc.exit3575:                                ; preds = %bb.fi, %bb.fh, %bb.fg, %lean_inc_ref.exit4824
  %i.ke = tail call ptr @lean_apply_12(ptr noundef %i.cas, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %i.je, ptr noundef nonnull %i.ji, ptr noundef nonnull %i.ji, ptr noundef %9, ptr noundef nonnull %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef nonnull inttoptr (i64 1 to ptr)) #7
  br label %lean_inc.exit3557.thread5752

lean_inc.exit3573:                                ; preds = %lean_inc.exit3553, %bb.ht, %bb.hu, %bb.hv, %lean_inc.exit3559, %bb.hd, %bb.he, %bb.hf
  %.12899.ph = phi ptr [ %i.nw, %bb.ht ], [ %i.nw, %bb.hu ], [ %i.nw, %bb.hv ], [ %i.mt, %bb.hd ], [ %i.mt, %bb.he ], [ %i.mt, %bb.hf ], [ %i.nw, %lean_inc.exit3553 ], [ %i.mt, %lean_inc.exit3559 ]
  br i1 %.not.i4835, label %bb.fj, label %lean_inc.exit3571

bb.fj:                                            ; preds = %lean_inc.exit3573
  %.val.i.i4828 = load i32, ptr %i.lf, align 4, !tbaa !10 ; 3 uses
  %i.kf = icmp sgt i32 %.val.i.i4828, 0
  br i1 %i.kf, label %bb.fk, label %bb.fl, !prof !11

bb.fk:                                            ; preds = %bb.fj
  %i.kg = add nuw i32 %.val.i.i4828, 1
  store i32 %i.kg, ptr %i.lf, align 4, !tbaa !10
  br label %lean_inc.exit3571

bb.fl:                                            ; preds = %bb.fj
  %.not.i.i4829 = icmp eq i32 %.val.i.i4828, 0
  br i1 %.not.i.i4829, label %lean_inc.exit3571, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.kh = atomicrmw sub ptr %i.lf, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3571

lean_inc.exit3571:                                ; preds = %bb.fm, %bb.fl, %bb.fk, %lean_inc.exit3573
  %i.ki = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.lf, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef %.12899.ph) #7
  %i.kj = tail call ptr @l_Lean_Syntax_node2(ptr noundef %i.lf, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__36_value, ptr noundef nonnull %i.ma, ptr noundef %i.ki) #7
  br label %lean_inc.exit3535.thread

lean_dec.exit3894.thread:                         ; preds = %bb.aix, %bb.aiy, %bb.aiz, %bb.aid, %bb.aie, %bb.aif, %lean_dec.exit3896, %lean_dec.exit3890, %lean_dec.exit3932
  %.02960 = phi i8 [ %.03158, %lean_dec.exit3932 ], [ %i.aym, %bb.aix ], [ %i.aym, %bb.aiy ], [ %i.aym, %bb.aiz ], [ %i.axo, %bb.aid ], [ %i.axo, %bb.aie ], [ %i.axo, %bb.aif ], [ %i.axo, %lean_dec.exit3896 ], [ %i.aym, %lean_dec.exit3890 ] ; 5 uses
  %i.kk = and i64 %i.awj, 510
  %i.kl = icmp eq i64 %i.kk, 0
  %i.km = icmp eq i8 %.02960, 0                   ; 2 uses
  br i1 %i.kl, label %bb.fn, label %bb.ov

bb.fn:                                            ; preds = %lean_dec.exit3894.thread
  br i1 %i.km, label %bb.fo, label %bb.ji

bb.fo:                                            ; preds = %bb.fn
  %i.kn = load i32, ptr %i.boa, align 8, !tbaa !10 ; 3 uses
  %i.ko = icmp sgt i32 %i.kn, 1
  br i1 %i.ko, label %bb.fp, label %bb.fq, !prof !11

bb.fp:                                            ; preds = %bb.fo
  %i.kp = add nsw i32 %i.kn, -1
  store i32 %i.kp, ptr %i.boa, align 8, !tbaa !10
  br label %lean_dec_ref.exit4681

bb.fq:                                            ; preds = %bb.fo
  %.not.i4680 = icmp eq i32 %i.kn, 0
  br i1 %.not.i4680, label %lean_dec_ref.exit4681, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.boa) #7
  br label %lean_dec_ref.exit4681

lean_dec_ref.exit4681:                            ; preds = %bb.fp, %bb.fq, %bb.fr
  %i.kq = load ptr, ptr %i.v, align 8, !tbaa !14  ; 2 uses
  %i.kr = load ptr, ptr %i.w, align 8, !tbaa !14  ; 12 uses
  %i.ks = load ptr, ptr %i.x, align 8, !tbaa !14  ; 12 uses
  br i1 %.not.i3602, label %bb.fs, label %lean_dec.exit4072

bb.fs:                                            ; preds = %lean_dec_ref.exit4681
  %i.kt = load i32, ptr %i.dj, align 4, !tbaa !10 ; 3 uses
  %i.ku = icmp sgt i32 %i.kt, 1
  br i1 %i.ku, label %bb.ft, label %bb.fu, !prof !11

bb.ft:                                            ; preds = %bb.fs
  %i.kv = add nsw i32 %i.kt, -1
  store i32 %i.kv, ptr %i.dj, align 4, !tbaa !10
  br label %lean_dec.exit4072

bb.fu:                                            ; preds = %bb.fs
  %.not.i4092 = icmp eq i32 %i.kt, 0
  br i1 %.not.i4092, label %lean_dec.exit4072, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dj) #7
  br label %lean_dec.exit4072

lean_dec.exit4072:                                ; preds = %bb.fv, %bb.fu, %bb.ft, %lean_dec_ref.exit4681
  %i.kw = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__1(i8 noundef zeroext 0, ptr noundef %i.kq, ptr poison, ptr poison, ptr poison, ptr nonnull poison, ptr poison, ptr nonnull poison, ptr poison) ; 10 uses
  %i.kx = ptrtoint ptr %i.kw to i64               ; 2 uses
  %i.ky = and i64 %i.kx, 1
  %.not.i4831 = icmp eq i64 %i.ky, 0              ; 2 uses
  br i1 %.not.i4831, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %lean_dec.exit4072
  %i.kz = lshr i64 %i.kx, 1
  %i.la = trunc i64 %i.kz to i32
  br label %lean_obj_tag.exit4834

bb.fx:                                            ; preds = %lean_dec.exit4072
  %i.lb = getelementptr i8, ptr %i.kw, i64 4
  %.val.i4833 = load i32, ptr %i.lb, align 4
  %i.lc = lshr i32 %.val.i4833, 24
  br label %lean_obj_tag.exit4834

lean_obj_tag.exit4834:                            ; preds = %bb.fw, %bb.fx
  %.0.i4832 = phi i32 [ %i.la, %bb.fw ], [ %i.lc, %bb.fx ]
  %i.ld = icmp eq i32 %.0.i4832, 0
  br i1 %i.ld, label %bb.fy, label %lean_dec.exit4068

bb.fy:                                            ; preds = %lean_obj_tag.exit4834
  %i.le = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !14 ; 10 uses
  %i.lg = ptrtoint ptr %i.lf to i64
  %i.lh = and i64 %i.lg, 1
  %.not.i4835 = icmp eq i64 %i.lh, 0              ; 2 uses
  br i1 %.not.i4835, label %bb.fz, label %lean_inc_n.exit4838

bb.fz:                                            ; preds = %bb.fy
  %.val.i.i4836 = load i32, ptr %i.lf, align 4, !tbaa !10 ; 3 uses
  %i.li = icmp sgt i32 %.val.i.i4836, 0
  br i1 %i.li, label %bb.ga, label %bb.gb, !prof !11

bb.ga:                                            ; preds = %bb.fz
  %i.lj = add nuw i32 %.val.i.i4836, 2
  store i32 %i.lj, ptr %i.lf, align 4, !tbaa !10
  br label %lean_inc_n.exit4838

bb.gb:                                            ; preds = %bb.fz
  %.not.i.i4837 = icmp eq i32 %.val.i.i4836, 0
  br i1 %.not.i.i4837, label %lean_inc_n.exit4838, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.lk = atomicrmw sub ptr %i.lf, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit4838

lean_inc_n.exit4838:                              ; preds = %bb.fy, %bb.ga, %bb.gb, %bb.gc
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.kw, i32 noundef 1)
  %i.ll = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__3_once seq_cst, align 4, !tbaa !20
  %i.lm = icmp eq i32 %i.ll, 1
  br i1 %i.lm, label %bb.gd, label %bb.ge, !prof !11

bb.gd:                                            ; preds = %lean_inc_n.exit4838
  %i.ln = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__3, align 8, !tbaa !14
  br label %lean_obj_once.exit4840

bb.ge:                                            ; preds = %lean_inc_n.exit4838
  %i.lo = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__3, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__3_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__3) #7
  br label %lean_obj_once.exit4840

lean_obj_once.exit4840:                           ; preds = %bb.gd, %bb.ge
  %.0.i4839 = phi ptr [ %i.ln, %bb.gd ], [ %i.lo, %bb.ge ]
  %i.lp = ptrtoint ptr %i.ks to i64
  %i.lq = and i64 %i.lp, 1
  %.not.i3568 = icmp eq i64 %i.lq, 0              ; 3 uses
  br i1 %.not.i3568, label %bb.gf, label %lean_inc.exit3569

bb.gf:                                            ; preds = %lean_obj_once.exit4840
  %.val.i.i4841 = load i32, ptr %i.ks, align 4, !tbaa !10 ; 3 uses
  %i.lr = icmp sgt i32 %.val.i.i4841, 0
  br i1 %i.lr, label %bb.gg, label %bb.gh, !prof !11

bb.gg:                                            ; preds = %bb.gf
  %i.ls = add nuw i32 %.val.i.i4841, 1
  store i32 %i.ls, ptr %i.ks, align 4, !tbaa !10
  br label %lean_inc.exit3569

bb.gh:                                            ; preds = %bb.gf
  %.not.i.i4842 = icmp eq i32 %.val.i.i4841, 0
  br i1 %.not.i.i4842, label %lean_inc.exit3569, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.lt = atomicrmw sub ptr %i.ks, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3569

lean_inc.exit3569:                                ; preds = %bb.gi, %bb.gh, %bb.gg, %lean_obj_once.exit4840
  %i.lu = ptrtoint ptr %i.kr to i64
  %i.lv = and i64 %i.lu, 1
  %.not.i3566 = icmp eq i64 %i.lv, 0              ; 3 uses
  br i1 %.not.i3566, label %bb.gj, label %lean_inc.exit3567

bb.gj:                                            ; preds = %lean_inc.exit3569
  %.val.i.i4844 = load i32, ptr %i.kr, align 4, !tbaa !10 ; 3 uses
  %i.lw = icmp sgt i32 %.val.i.i4844, 0
  br i1 %i.lw, label %bb.gk, label %bb.gl, !prof !11

bb.gk:                                            ; preds = %bb.gj
  %i.lx = add nuw i32 %.val.i.i4844, 1
  store i32 %i.lx, ptr %i.kr, align 4, !tbaa !10
  br label %lean_inc.exit3567

bb.gl:                                            ; preds = %bb.gj
  %.not.i.i4845 = icmp eq i32 %.val.i.i4844, 0
  br i1 %.not.i.i4845, label %lean_inc.exit3567, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.ly = atomicrmw sub ptr %i.kr, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3567

lean_inc.exit3567:                                ; preds = %bb.gm, %bb.gl, %bb.gk, %lean_inc.exit3569
  %i.lz = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.kr, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__5_value, ptr noundef %i.ks) #7
  %i.ma = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store ptr %i.lf, ptr %i.mb, align 8, !tbaa !14
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  store ptr %.0.i4839, ptr %i.mc, align 8, !tbaa !14
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 24
  store ptr %i.lz, ptr %i.md, align 8, !tbaa !14
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.me, align 8, !tbaa !14
  br i1 %.not.i3719, label %bb.gn, label %lean_inc.exit3563

bb.gn:                                            ; preds = %lean_inc.exit3567
  %.val.i.i4850 = load i32, ptr %4, align 4, !tbaa !10 ; 3 uses
  %i.mf = icmp sgt i32 %.val.i.i4850, 0
  br i1 %i.mf, label %bb.go, label %bb.gp, !prof !11

bb.go:                                            ; preds = %bb.gn
  %i.mg = add nuw i32 %.val.i.i4850, 1
  store i32 %i.mg, ptr %4, align 4, !tbaa !10
  br label %lean_inc.exit3563

bb.gp:                                            ; preds = %bb.gn
  %.not.i.i4851 = icmp eq i32 %.val.i.i4850, 0
  br i1 %.not.i.i4851, label %lean_inc.exit3563, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.mh = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3563

lean_inc.exit3563:                                ; preds = %bb.gq, %bb.gp, %bb.go, %lean_inc.exit3567
  %i.mi = tail call ptr @l___private_Init_Meta_Defs_0__Lean_getEscapedNameParts_x3f(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %4) #7 ; 4 uses
  %i.mj = ptrtoint ptr %i.mi to i64               ; 2 uses
  %i.mk = and i64 %i.mj, 1
  %.not.i4853 = icmp eq i64 %i.mk, 0
  br i1 %.not.i4853, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %lean_inc.exit3563
  %i.ml = lshr i64 %i.mj, 1
  %i.mm = trunc i64 %i.ml to i32
  br label %lean_obj_tag.exit4856

bb.gs:                                            ; preds = %lean_inc.exit3563
  %i.mn = getelementptr i8, ptr %i.mi, i64 4
  %.val.i4855 = load i32, ptr %i.mn, align 4
  %i.mo = lshr i32 %.val.i4855, 24
  br label %lean_obj_tag.exit4856

lean_obj_tag.exit4856:                            ; preds = %bb.gr, %bb.gs
  %.0.i4854 = phi i32 [ %i.mm, %bb.gr ], [ %i.mo, %bb.gs ]
  %i.mp = icmp eq i32 %.0.i4854, 0
  br i1 %i.mp, label %bb.gt, label %bb.hg

bb.gt:                                            ; preds = %lean_obj_tag.exit4856
  br i1 %.not.i3719, label %bb.gu, label %lean_inc.exit3561

bb.gu:                                            ; preds = %bb.gt
  %.val.i.i4857 = load i32, ptr %4, align 4, !tbaa !10 ; 3 uses
  %i.mq = icmp sgt i32 %.val.i.i4857, 0
  br i1 %i.mq, label %bb.gv, label %bb.gw, !prof !11

bb.gv:                                            ; preds = %bb.gu
  %i.mr = add nuw i32 %.val.i.i4857, 1
  store i32 %i.mr, ptr %4, align 4, !tbaa !10
  br label %lean_inc.exit3561

bb.gw:                                            ; preds = %bb.gu
  %.not.i.i4858 = icmp eq i32 %.val.i.i4857, 0
  br i1 %.not.i.i4858, label %lean_inc.exit3561, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.ms = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3561

lean_inc.exit3561:                                ; preds = %bb.gx, %bb.gw, %bb.gv, %bb.gt
  %i.mt = tail call ptr @l_Lean_quoteNameMk(ptr noundef %4) #7 ; 4 uses
  br i1 %.not.i3568, label %bb.gy, label %lean_inc.exit3559
end_hunk_17
begin_hunk_18_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2:bb.a
  %i.ok = icmp sgt i32 %i.oj, 1
  br i1 %i.ok, label %bb.hz, label %bb.ia, !prof !11

bb.hz:                                            ; preds = %lean_dec.exit4066
  %i.ol = add nsw i32 %i.oj, -1
  store i32 %i.ol, ptr %i.cas, align 4, !tbaa !10
  br label %lean_dec.exit4064

bb.ia:                                            ; preds = %lean_dec.exit4066
  %.not.i4674 = icmp eq i32 %i.oj, 0
  br i1 %.not.i4674, label %lean_dec.exit4064, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cas) #7
  br label %lean_dec.exit4064

lean_dec.exit4064:                                ; preds = %bb.ib, %bb.ia, %bb.hz
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.cj, i32 noundef 1)
  br i1 %.not.i3592, label %bb.ic, label %lean_dec.exit4062

bb.ic:                                            ; preds = %lean_dec.exit4064
  %i.om = load i32, ptr %i.bg, align 4, !tbaa !10 ; 3 uses
  %i.on = icmp sgt i32 %i.om, 1
  br i1 %i.on, label %bb.id, label %bb.ie, !prof !11

bb.id:                                            ; preds = %bb.ic
  %i.oo = add nsw i32 %i.om, -1
  store i32 %i.oo, ptr %i.bg, align 4, !tbaa !10
  br label %lean_dec.exit4062

bb.ie:                                            ; preds = %bb.ic
  %.not.i4098 = icmp eq i32 %i.om, 0
  br i1 %.not.i4098, label %lean_dec.exit4062, label %bb.if

bb.if:                                            ; preds = %bb.ie
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bg) #7
  br label %lean_dec.exit4062

lean_dec.exit4062:                                ; preds = %bb.if, %bb.ie, %bb.id, %lean_dec.exit4064
  %i.op = load i32, ptr %.0257810258, align 4, !tbaa !10 ; 3 uses
  %i.oq = icmp sgt i32 %i.op, 1
  br i1 %i.oq, label %bb.ig, label %bb.ih, !prof !11

bb.ig:                                            ; preds = %lean_dec.exit4062
  %i.or = add nsw i32 %i.op, -1
  store i32 %i.or, ptr %.0257810258, align 4, !tbaa !10
  br label %lean_dec_ref.exit4673

bb.ih:                                            ; preds = %lean_dec.exit4062
  %.not.i4672 = icmp eq i32 %i.op, 0
  br i1 %.not.i4672, label %lean_dec_ref.exit4673, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0257810258) #7
  br label %lean_dec_ref.exit4673

lean_dec_ref.exit4673:                            ; preds = %bb.ig, %bb.ih, %bb.ii
  br i1 %.not.i3719, label %bb.ij, label %lean_dec.exit4060

bb.ij:                                            ; preds = %lean_dec_ref.exit4673
  %i.os = load i32, ptr %4, align 4, !tbaa !10    ; 3 uses
  %i.ot = icmp sgt i32 %i.os, 1
  br i1 %i.ot, label %bb.ik, label %bb.il, !prof !11

bb.ik:                                            ; preds = %bb.ij
  %i.ou = add nsw i32 %i.os, -1
  store i32 %i.ou, ptr %4, align 4, !tbaa !10
  br label %lean_dec.exit4060

bb.il:                                            ; preds = %bb.ij
  %.not.i4100 = icmp eq i32 %i.os, 0
  br i1 %.not.i4100, label %lean_dec.exit4060, label %bb.im

bb.im:                                            ; preds = %bb.il
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #7
  br label %lean_dec.exit4060

lean_dec.exit4060:                                ; preds = %bb.im, %bb.il, %bb.ik, %lean_dec_ref.exit4673
  br i1 %.not.i3418, label %bb.in, label %lean_dec.exit4058

bb.in:                                            ; preds = %lean_dec.exit4060
  %i.ov = load i32, ptr %3, align 4, !tbaa !10    ; 3 uses
  %i.ow = icmp sgt i32 %i.ov, 1
  br i1 %i.ow, label %bb.io, label %bb.ip, !prof !11

bb.io:                                            ; preds = %bb.in
  %i.ox = add nsw i32 %i.ov, -1
  store i32 %i.ox, ptr %3, align 4, !tbaa !10
  br label %lean_dec.exit4058

bb.ip:                                            ; preds = %bb.in
  %.not.i4102 = icmp eq i32 %i.ov, 0
  br i1 %.not.i4102, label %lean_dec.exit4058, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_dec.exit4058

lean_dec.exit4058:                                ; preds = %bb.iq, %bb.ip, %bb.io, %lean_dec.exit4060
  %i.oy = load i32, ptr %1, align 4, !tbaa !10    ; 3 uses
  %i.oz = icmp sgt i32 %i.oy, 1
  br i1 %i.oz, label %bb.ir, label %bb.is, !prof !11

bb.ir:                                            ; preds = %lean_dec.exit4058
  %i.pa = add nsw i32 %i.oy, -1
  store i32 %i.pa, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit4671

bb.is:                                            ; preds = %lean_dec.exit4058
  %.not.i4670 = icmp eq i32 %i.oy, 0
  br i1 %.not.i4670, label %lean_dec_ref.exit4671, label %bb.it

bb.it:                                            ; preds = %bb.is
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit4671

lean_dec_ref.exit4671:                            ; preds = %bb.ir, %bb.is, %bb.it
  br i1 %.not.i3606, label %bb.iu, label %lean_dec.exit4056

bb.iu:                                            ; preds = %lean_dec_ref.exit4671
  %i.pb = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.pc = icmp sgt i32 %i.pb, 1
  br i1 %i.pc, label %bb.iv, label %bb.iw, !prof !11

bb.iv:                                            ; preds = %bb.iu
  %i.pd = add nsw i32 %i.pb, -1
  store i32 %i.pd, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit4056

bb.iw:                                            ; preds = %bb.iu
  %.not.i4104 = icmp eq i32 %i.pb, 0
  br i1 %.not.i4104, label %lean_dec.exit4056, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit4056

lean_dec.exit4056:                                ; preds = %bb.ix, %bb.iw, %bb.iv, %lean_dec_ref.exit4671
  %i.pe = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !14 ; 5 uses
  %.val4708 = load i32, ptr %i.kw, align 8, !tbaa !10
  %i.pg = icmp eq i32 %.val4708, 1
  br i1 %i.pg, label %lean_dec.exit.thread5765, label %bb.iy

bb.iy:                                            ; preds = %lean_dec.exit4056
  %i.ph = ptrtoint ptr %i.pf to i64
  %i.pi = and i64 %i.ph, 1
  %.not.i3548 = icmp eq i64 %i.pi, 0
  br i1 %.not.i3548, label %bb.iz, label %lean_inc.exit3549

bb.iz:                                            ; preds = %bb.iy
  %.val.i.i4875 = load i32, ptr %i.pf, align 4, !tbaa !10 ; 3 uses
  %i.pj = icmp sgt i32 %.val.i.i4875, 0
  br i1 %i.pj, label %bb.ja, label %bb.jb, !prof !11

bb.ja:                                            ; preds = %bb.iz
  %i.pk = add nuw i32 %.val.i.i4875, 1
  store i32 %i.pk, ptr %i.pf, align 4, !tbaa !10
  br label %lean_inc.exit3549

bb.jb:                                            ; preds = %bb.iz
  %.not.i.i4876 = icmp eq i32 %.val.i.i4875, 0
  br i1 %.not.i.i4876, label %lean_inc.exit3549, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.pl = atomicrmw sub ptr %i.pf, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3549

lean_inc.exit3549:                                ; preds = %bb.jc, %bb.jb, %bb.ja, %bb.iy
  br i1 %.not.i4831, label %bb.jd, label %bb.jh

bb.jd:                                            ; preds = %lean_inc.exit3549
  %i.pm = load i32, ptr %i.kw, align 8, !tbaa !10 ; 3 uses
  %i.pn = icmp sgt i32 %i.pm, 1
  br i1 %i.pn, label %bb.je, label %bb.jf, !prof !11

bb.je:                                            ; preds = %bb.jd
  %i.po = add nsw i32 %i.pm, -1
  store i32 %i.po, ptr %i.kw, align 8, !tbaa !10
  br label %bb.jh

bb.jf:                                            ; preds = %bb.jd
  %.not.i4106 = icmp eq i32 %i.pm, 0
  br i1 %.not.i4106, label %bb.jh, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kw) #7
  br label %bb.jh

bb.jh:                                            ; preds = %lean_inc.exit3549, %bb.je, %bb.jf, %bb.jg
  %i.pp = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit.thread5765.sink.split

bb.ji:                                            ; preds = %bb.fn
  %i.pq = load ptr, ptr %i.v, align 8, !tbaa !14  ; 5 uses
  %i.pr = load ptr, ptr %i.w, align 8, !tbaa !14  ; 13 uses
  %i.ps = load ptr, ptr %i.x, align 8, !tbaa !14  ; 13 uses
  br i1 %.not.i3602, label %bb.jj, label %lean_dec.exit4052

bb.jj:                                            ; preds = %bb.ji
  %i.pt = load i32, ptr %i.dj, align 4, !tbaa !10 ; 3 uses
  %i.pu = icmp sgt i32 %i.pt, 1
  br i1 %i.pu, label %bb.jk, label %bb.jl, !prof !11

bb.jk:                                            ; preds = %bb.jj
  %i.pv = add nsw i32 %i.pt, -1
  store i32 %i.pv, ptr %i.dj, align 4, !tbaa !10
  br label %lean_dec.exit4052

bb.jl:                                            ; preds = %bb.jj
  %.not.i4108 = icmp eq i32 %i.pt, 0
  br i1 %.not.i4108, label %lean_dec.exit4052, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dj) #7
  br label %lean_dec.exit4052

lean_dec.exit4052:                                ; preds = %bb.jm, %bb.jl, %bb.jk, %bb.ji
  %i.pw = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__1(i8 noundef zeroext 0, ptr noundef %i.pq, ptr poison, ptr poison, ptr poison, ptr nonnull poison, ptr poison, ptr nonnull poison, ptr poison) ; 10 uses
  %i.px = ptrtoint ptr %i.pw to i64               ; 2 uses
  %i.py = and i64 %i.px, 1
  %.not.i4878 = icmp eq i64 %i.py, 0              ; 2 uses
  br i1 %.not.i4878, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %lean_dec.exit4052
  %i.pz = lshr i64 %i.px, 1
  %i.qa = trunc i64 %i.pz to i32
  br label %lean_obj_tag.exit4881

bb.jo:                                            ; preds = %lean_dec.exit4052
  %i.qb = getelementptr i8, ptr %i.pw, i64 4
  %.val.i4880 = load i32, ptr %i.qb, align 4
  %i.qc = lshr i32 %.val.i4880, 24
  br label %lean_obj_tag.exit4881

lean_obj_tag.exit4881:                            ; preds = %bb.jn, %bb.jo
  %.0.i4879 = phi i32 [ %i.qa, %bb.jn ], [ %i.qc, %bb.jo ]
  %i.qd = icmp eq i32 %.0.i4879, 0
  br i1 %i.qd, label %bb.jp, label %lean_dec.exit4034

bb.jp:                                            ; preds = %lean_obj_tag.exit4881
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !14 ; 12 uses
  %i.qg = ptrtoint ptr %i.qf to i64
  %i.qh = and i64 %i.qg, 1
  %.not.i4882 = icmp eq i64 %i.qh, 0
  br i1 %.not.i4882, label %bb.jq, label %lean_inc_n.exit4885

bb.jq:                                            ; preds = %bb.jp
  %.val.i.i4883 = load i32, ptr %i.qf, align 4, !tbaa !10 ; 3 uses
  %i.qi = icmp sgt i32 %.val.i.i4883, 0
  br i1 %i.qi, label %bb.jr, label %bb.js, !prof !11

bb.jr:                                            ; preds = %bb.jq
  %i.qj = add nuw i32 %.val.i.i4883, 8
  store i32 %i.qj, ptr %i.qf, align 4, !tbaa !10
  br label %lean_inc_n.exit4885

bb.js:                                            ; preds = %bb.jq
  %.not.i.i4884 = icmp eq i32 %.val.i.i4883, 0
  br i1 %.not.i.i4884, label %lean_inc_n.exit4885, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.qk = atomicrmw sub ptr %i.qf, i32 8 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit4885

lean_inc_n.exit4885:                              ; preds = %bb.jp, %bb.jr, %bb.js, %bb.jt
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.pw, i32 noundef 1)
  %i.ql = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__9_once seq_cst, align 4, !tbaa !20
  %i.qm = icmp eq i32 %i.ql, 1
  br i1 %i.qm, label %bb.ju, label %bb.jv, !prof !11

bb.ju:                                            ; preds = %lean_inc_n.exit4885
  %i.qn = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__9, align 8, !tbaa !14
  br label %lean_obj_once.exit4887

bb.jv:                                            ; preds = %lean_inc_n.exit4885
  %i.qo = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__9, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__9_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__9) #7
  br label %lean_obj_once.exit4887

lean_obj_once.exit4887:                           ; preds = %bb.ju, %bb.jv
  %.0.i4886 = phi ptr [ %i.qn, %bb.ju ], [ %i.qo, %bb.jv ]
  %i.qp = ptrtoint ptr %i.ps to i64
  %i.qq = and i64 %i.qp, 1
  %.not.i4888 = icmp eq i64 %i.qq, 0              ; 2 uses
  br i1 %.not.i4888, label %bb.jw, label %lean_inc_n.exit4891

bb.jw:                                            ; preds = %lean_obj_once.exit4887
  %.val.i.i4889 = load i32, ptr %i.ps, align 4, !tbaa !10 ; 3 uses
  %i.qr = icmp sgt i32 %.val.i.i4889, 0
  br i1 %i.qr, label %bb.jx, label %bb.jy, !prof !11

bb.jx:                                            ; preds = %bb.jw
  %i.qs = add nuw i32 %.val.i.i4889, 2
  store i32 %i.qs, ptr %i.ps, align 4, !tbaa !10
  br label %lean_inc_n.exit4891

bb.jy:                                            ; preds = %bb.jw
  %.not.i.i4890 = icmp eq i32 %.val.i.i4889, 0
  br i1 %.not.i.i4890, label %lean_inc_n.exit4891, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.qt = atomicrmw sub ptr %i.ps, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit4891

lean_inc_n.exit4891:                              ; preds = %lean_obj_once.exit4887, %bb.jx, %bb.jy, %bb.jz
  %i.qu = ptrtoint ptr %i.pr to i64
  %i.qv = and i64 %i.qu, 1
  %.not.i4892 = icmp eq i64 %i.qv, 0              ; 2 uses
  br i1 %.not.i4892, label %bb.ka, label %lean_inc_n.exit4895

bb.ka:                                            ; preds = %lean_inc_n.exit4891
  %.val.i.i4893 = load i32, ptr %i.pr, align 4, !tbaa !10 ; 3 uses
  %i.qw = icmp sgt i32 %.val.i.i4893, 0
  br i1 %i.qw, label %bb.kb, label %bb.kc, !prof !11

bb.kb:                                            ; preds = %bb.ka
  %i.qx = add nuw i32 %.val.i.i4893, 2
  store i32 %i.qx, ptr %i.pr, align 4, !tbaa !10
  br label %lean_inc_n.exit4895

bb.kc:                                            ; preds = %bb.ka
  %.not.i.i4894 = icmp eq i32 %.val.i.i4893, 0
  br i1 %.not.i.i4894, label %lean_inc_n.exit4895, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.qy = atomicrmw sub ptr %i.pr, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit4895

lean_inc_n.exit4895:                              ; preds = %lean_inc_n.exit4891, %bb.kb, %bb.kc, %bb.kd
  %i.qz = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.pr, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__10_value, ptr noundef %i.ps) #7
  %i.ra = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__2_value, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__3_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__8_value) #7
  %i.rb = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  store ptr %i.ra, ptr %i.rc, align 8, !tbaa !14
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rb, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.rd, align 8, !tbaa !14
  %i.re = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  store ptr %i.rb, ptr %i.rf, align 8, !tbaa !14
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.rg, align 8, !tbaa !14
  %i.rh = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  store ptr %i.qf, ptr %i.ri, align 8, !tbaa !14
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  store ptr %.0.i4886, ptr %i.rj, align 8, !tbaa !14
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 24
  store ptr %i.qz, ptr %i.rk, align 8, !tbaa !14
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rh, i64 32
  store ptr %i.re, ptr %i.rl, align 8, !tbaa !14
  %i.rm = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__33_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__34_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__11_value) #7
  %i.rn = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  store ptr %i.qf, ptr %i.ro, align 8, !tbaa !14
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__12_value, ptr %i.rp, align 8, !tbaa !14
  %i.rq = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14_once seq_cst, align 4, !tbaa !20
  %i.rr = icmp eq i32 %i.rq, 1
  br i1 %i.rr, label %bb.ke, label %bb.kf, !prof !11

bb.ke:                                            ; preds = %lean_inc_n.exit4895
  %i.rs = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14, align 8, !tbaa !14
  br label %lean_obj_once.exit4901

bb.kf:                                            ; preds = %lean_inc_n.exit4895
  %i.rt = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14) #7
  br label %lean_obj_once.exit4901

lean_obj_once.exit4901:                           ; preds = %bb.ke, %bb.kf
  %.0.i4900 = phi ptr [ %i.rs, %bb.ke ], [ %i.rt, %bb.kf ]
  %i.ru = tail call ptr @l_Lean_Name_mkStr2(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__4_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__63_value) #7
  %i.rv = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.pr, ptr noundef %i.ru, ptr noundef %i.ps) #7
  %i.rw = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  store ptr %i.qf, ptr %i.rx, align 8, !tbaa !14
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  store ptr %.0.i4900, ptr %i.ry, align 8, !tbaa !14
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rw, i64 24
  store ptr %i.rv, ptr %i.rz, align 8, !tbaa !14
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rw, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.sa, align 8, !tbaa !14
  %i.sb = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.qf, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef nonnull %i.rw) #7
  %i.sc = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  store ptr %i.qf, ptr %i.sd, align 8, !tbaa !14
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__15_value, ptr %i.se, align 8, !tbaa !14
  %i.sf = tail call ptr @l_Lean_Syntax_node3(ptr noundef %i.qf, ptr noundef %i.rm, ptr noundef nonnull %i.rn, ptr noundef %i.sb, ptr noundef nonnull %i.sc) #7
  %i.sg = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.qf, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef %i.sf) #7
  %i.sh = tail call ptr @l_Lean_Syntax_node2(ptr noundef %i.qf, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__36_value, ptr noundef nonnull %i.rh, ptr noundef %i.sg) #7
  br i1 %.not.i3600, label %bb.kg, label %lean_inc.exit3547

bb.kg:                                            ; preds = %lean_obj_once.exit4901
  %.val.i.i4902 = load i32, ptr %15, align 4, !tbaa !10 ; 3 uses
  %i.si = icmp sgt i32 %.val.i.i4902, 0
  br i1 %i.si, label %bb.kh, label %bb.ki, !prof !11

bb.kh:                                            ; preds = %bb.kg
  %i.sj = add nuw i32 %.val.i.i4902, 1
  store i32 %i.sj, ptr %15, align 4, !tbaa !10
  br label %lean_inc.exit3547

bb.ki:                                            ; preds = %bb.kg
  %.not.i.i4903 = icmp eq i32 %.val.i.i4902, 0
  br i1 %.not.i.i4903, label %lean_inc.exit3547, label %bb.kj

end_hunk_18
begin_hunk_19_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2:bb.a
bb.nm:                                            ; preds = %lean_dec_ref.exit4659
  %i.vq = add nsw i32 %i.vo, -1
  store i32 %i.vq, ptr %i.boa, align 4, !tbaa !10
  br label %lean_dec.exit4030

bb.nn:                                            ; preds = %lean_dec_ref.exit4659
  %.not.i4656 = icmp eq i32 %i.vo, 0
  br i1 %.not.i4656, label %lean_dec.exit4030, label %bb.no

bb.no:                                            ; preds = %bb.nn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.boa) #7
  br label %lean_dec.exit4030

lean_dec.exit4030:                                ; preds = %bb.no, %bb.nn, %bb.nm
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.cj, i32 noundef 1)
  br i1 %.not.i3592, label %bb.np, label %lean_dec.exit4028

bb.np:                                            ; preds = %lean_dec.exit4030
  %i.vr = load i32, ptr %i.bg, align 4, !tbaa !10 ; 3 uses
  %i.vs = icmp sgt i32 %i.vr, 1
  br i1 %i.vs, label %bb.nq, label %bb.nr, !prof !11

bb.nq:                                            ; preds = %bb.np
  %i.vt = add nsw i32 %i.vr, -1
  store i32 %i.vt, ptr %i.bg, align 4, !tbaa !10
  br label %lean_dec.exit4028

bb.nr:                                            ; preds = %bb.np
  %.not.i4126 = icmp eq i32 %i.vr, 0
  br i1 %.not.i4126, label %lean_dec.exit4028, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bg) #7
  br label %lean_dec.exit4028

lean_dec.exit4028:                                ; preds = %bb.ns, %bb.nr, %bb.nq, %lean_dec.exit4030
  %i.vu = load i32, ptr %.0257810258, align 4, !tbaa !10 ; 3 uses
  %i.vv = icmp sgt i32 %i.vu, 1
  br i1 %i.vv, label %bb.nt, label %bb.nu, !prof !11

bb.nt:                                            ; preds = %lean_dec.exit4028
  %i.vw = add nsw i32 %i.vu, -1
  store i32 %i.vw, ptr %.0257810258, align 4, !tbaa !10
  br label %lean_dec_ref.exit4655

bb.nu:                                            ; preds = %lean_dec.exit4028
  %.not.i4654 = icmp eq i32 %i.vu, 0
  br i1 %.not.i4654, label %lean_dec_ref.exit4655, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0257810258) #7
  br label %lean_dec_ref.exit4655

lean_dec_ref.exit4655:                            ; preds = %bb.nt, %bb.nu, %bb.nv
  br i1 %.not.i3719, label %bb.nw, label %lean_dec.exit4026

bb.nw:                                            ; preds = %lean_dec_ref.exit4655
  %i.vx = load i32, ptr %4, align 4, !tbaa !10    ; 3 uses
  %i.vy = icmp sgt i32 %i.vx, 1
  br i1 %i.vy, label %bb.nx, label %bb.ny, !prof !11

bb.nx:                                            ; preds = %bb.nw
  %i.vz = add nsw i32 %i.vx, -1
  store i32 %i.vz, ptr %4, align 4, !tbaa !10
  br label %lean_dec.exit4026

bb.ny:                                            ; preds = %bb.nw
  %.not.i4128 = icmp eq i32 %i.vx, 0
  br i1 %.not.i4128, label %lean_dec.exit4026, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #7
  br label %lean_dec.exit4026

lean_dec.exit4026:                                ; preds = %bb.nz, %bb.ny, %bb.nx, %lean_dec_ref.exit4655
  br i1 %.not.i3418, label %bb.oa, label %lean_dec.exit4024

bb.oa:                                            ; preds = %lean_dec.exit4026
  %i.wa = load i32, ptr %3, align 4, !tbaa !10    ; 3 uses
  %i.wb = icmp sgt i32 %i.wa, 1
  br i1 %i.wb, label %bb.ob, label %bb.oc, !prof !11

bb.ob:                                            ; preds = %bb.oa
  %i.wc = add nsw i32 %i.wa, -1
  store i32 %i.wc, ptr %3, align 4, !tbaa !10
  br label %lean_dec.exit4024

bb.oc:                                            ; preds = %bb.oa
  %.not.i4130 = icmp eq i32 %i.wa, 0
  br i1 %.not.i4130, label %lean_dec.exit4024, label %bb.od

bb.od:                                            ; preds = %bb.oc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_dec.exit4024

lean_dec.exit4024:                                ; preds = %bb.od, %bb.oc, %bb.ob, %lean_dec.exit4026
  %i.wd = load i32, ptr %1, align 4, !tbaa !10    ; 3 uses
  %i.we = icmp sgt i32 %i.wd, 1
  br i1 %i.we, label %bb.oe, label %bb.of, !prof !11

bb.oe:                                            ; preds = %lean_dec.exit4024
  %i.wf = add nsw i32 %i.wd, -1
  store i32 %i.wf, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit4653

bb.of:                                            ; preds = %lean_dec.exit4024
  %.not.i4652 = icmp eq i32 %i.wd, 0
  br i1 %.not.i4652, label %lean_dec_ref.exit4653, label %bb.og

bb.og:                                            ; preds = %bb.of
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit4653

lean_dec_ref.exit4653:                            ; preds = %bb.oe, %bb.of, %bb.og
  br i1 %.not.i3606, label %bb.oh, label %lean_dec.exit4022

bb.oh:                                            ; preds = %lean_dec_ref.exit4653
  %i.wg = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.wh = icmp sgt i32 %i.wg, 1
  br i1 %i.wh, label %bb.oi, label %bb.oj, !prof !11

bb.oi:                                            ; preds = %bb.oh
  %i.wi = add nsw i32 %i.wg, -1
  store i32 %i.wi, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit4022

bb.oj:                                            ; preds = %bb.oh
  %.not.i4132 = icmp eq i32 %i.wg, 0
  br i1 %.not.i4132, label %lean_dec.exit4022, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit4022

lean_dec.exit4022:                                ; preds = %bb.ok, %bb.oj, %bb.oi, %lean_dec_ref.exit4653
  %i.wj = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !14 ; 5 uses
  %.val4706 = load i32, ptr %i.pw, align 8, !tbaa !10
  %i.wl = icmp eq i32 %.val4706, 1
  br i1 %i.wl, label %lean_dec.exit.thread5765, label %bb.ol

bb.ol:                                            ; preds = %lean_dec.exit4022
  %i.wm = ptrtoint ptr %i.wk to i64
  %i.wn = and i64 %i.wm, 1
  %.not.i3530 = icmp eq i64 %i.wn, 0
  br i1 %.not.i3530, label %bb.om, label %lean_inc.exit3531

bb.om:                                            ; preds = %bb.ol
  %.val.i.i4939 = load i32, ptr %i.wk, align 4, !tbaa !10 ; 3 uses
  %i.wo = icmp sgt i32 %.val.i.i4939, 0
  br i1 %i.wo, label %bb.on, label %bb.oo, !prof !11

bb.on:                                            ; preds = %bb.om
  %i.wp = add nuw i32 %.val.i.i4939, 1
  store i32 %i.wp, ptr %i.wk, align 4, !tbaa !10
  br label %lean_inc.exit3531

bb.oo:                                            ; preds = %bb.om
  %.not.i.i4940 = icmp eq i32 %.val.i.i4939, 0
  br i1 %.not.i.i4940, label %lean_inc.exit3531, label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.wq = atomicrmw sub ptr %i.wk, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3531

lean_inc.exit3531:                                ; preds = %bb.op, %bb.oo, %bb.on, %bb.ol
  br i1 %.not.i4878, label %bb.oq, label %bb.ou

bb.oq:                                            ; preds = %lean_inc.exit3531
  %i.wr = load i32, ptr %i.pw, align 8, !tbaa !10 ; 3 uses
  %i.ws = icmp sgt i32 %i.wr, 1
  br i1 %i.ws, label %bb.or, label %bb.os, !prof !11

bb.or:                                            ; preds = %bb.oq
  %i.wt = add nsw i32 %i.wr, -1
  store i32 %i.wt, ptr %i.pw, align 8, !tbaa !10
  br label %bb.ou

bb.os:                                            ; preds = %bb.oq
  %.not.i4134 = icmp eq i32 %i.wr, 0
  br i1 %.not.i4134, label %bb.ou, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.pw) #7
  br label %bb.ou

bb.ou:                                            ; preds = %lean_inc.exit3531, %bb.or, %bb.os, %bb.ot
  %i.wu = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit.thread5765.sink.split

bb.ov:                                            ; preds = %lean_dec.exit3894.thread
  %i.wv = load ptr, ptr %i.v, align 8, !tbaa !14  ; 10 uses
  %i.ww = load ptr, ptr %i.w, align 8, !tbaa !14  ; 26 uses
  %i.wx = load ptr, ptr %i.x, align 8, !tbaa !14  ; 26 uses
  br i1 %i.km, label %bb.ow, label %bb.uj

bb.ow:                                            ; preds = %bb.ov
  br i1 %.not.i3602, label %bb.ox, label %lean_dec.exit4018

bb.ox:                                            ; preds = %bb.ow
  %i.wy = load i32, ptr %i.dj, align 4, !tbaa !10 ; 3 uses
  %i.wz = icmp sgt i32 %i.wy, 1
  br i1 %i.wz, label %bb.oy, label %bb.oz, !prof !11

bb.oy:                                            ; preds = %bb.ox
  %i.xa = add nsw i32 %i.wy, -1
  store i32 %i.xa, ptr %i.dj, align 4, !tbaa !10
  br label %lean_dec.exit4018

bb.oz:                                            ; preds = %bb.ox
  %.not.i4136 = icmp eq i32 %i.wy, 0
  br i1 %.not.i4136, label %lean_dec.exit4018, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dj) #7
  br label %lean_dec.exit4018

lean_dec.exit4018:                                ; preds = %bb.pa, %bb.oz, %bb.oy, %bb.ow
  %i.xb = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__1(i8 noundef zeroext 0, ptr noundef %i.wv, ptr poison, ptr poison, ptr poison, ptr nonnull poison, ptr poison, ptr nonnull poison, ptr poison) ; 10 uses
  %i.xc = ptrtoint ptr %i.xb to i64               ; 2 uses
  %i.xd = and i64 %i.xc, 1
  %.not.i4942 = icmp eq i64 %i.xd, 0              ; 2 uses
  br i1 %.not.i4942, label %bb.pc, label %bb.pb

bb.pb:                                            ; preds = %lean_dec.exit4018
  %i.xe = lshr i64 %i.xc, 1
  %i.xf = trunc i64 %i.xe to i32
  br label %lean_obj_tag.exit4945

bb.pc:                                            ; preds = %lean_dec.exit4018
  %i.xg = getelementptr i8, ptr %i.xb, i64 4
  %.val.i4944 = load i32, ptr %i.xg, align 4
  %i.xh = lshr i32 %.val.i4944, 24
  br label %lean_obj_tag.exit4945

lean_obj_tag.exit4945:                            ; preds = %bb.pb, %bb.pc
  %.0.i4943 = phi i32 [ %i.xf, %bb.pb ], [ %i.xh, %bb.pc ]
  %i.xi = icmp eq i32 %.0.i4943, 0
  br i1 %i.xi, label %bb.pd, label %lean_dec.exit4000

bb.pd:                                            ; preds = %lean_obj_tag.exit4945
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xb, i64 8
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !14 ; 12 uses
  %i.xl = ptrtoint ptr %i.xk to i64
  %i.xm = and i64 %i.xl, 1
  %.not.i4946 = icmp eq i64 %i.xm, 0
  br i1 %.not.i4946, label %bb.pe, label %lean_inc_n.exit4949

bb.pe:                                            ; preds = %bb.pd
  %.val.i.i4947 = load i32, ptr %i.xk, align 4, !tbaa !10 ; 3 uses
  %i.xn = icmp sgt i32 %.val.i.i4947, 0
  br i1 %i.xn, label %bb.pf, label %bb.pg, !prof !11

bb.pf:                                            ; preds = %bb.pe
  %i.xo = add nuw i32 %.val.i.i4947, 8
  store i32 %i.xo, ptr %i.xk, align 4, !tbaa !10
  br label %lean_inc_n.exit4949

bb.pg:                                            ; preds = %bb.pe
  %.not.i.i4948 = icmp eq i32 %.val.i.i4947, 0
  br i1 %.not.i.i4948, label %lean_inc_n.exit4949, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.xp = atomicrmw sub ptr %i.xk, i32 8 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit4949

lean_inc_n.exit4949:                              ; preds = %bb.pd, %bb.pf, %bb.pg, %bb.ph
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.xb, i32 noundef 1)
  %i.xq = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__17_once seq_cst, align 4, !tbaa !20
  %i.xr = icmp eq i32 %i.xq, 1
  br i1 %i.xr, label %bb.pi, label %bb.pj, !prof !11

bb.pi:                                            ; preds = %lean_inc_n.exit4949
  %i.xs = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__17, align 8, !tbaa !14
  br label %lean_obj_once.exit4951

bb.pj:                                            ; preds = %lean_inc_n.exit4949
  %i.xt = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__17, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__17_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__17) #7
  br label %lean_obj_once.exit4951

lean_obj_once.exit4951:                           ; preds = %bb.pi, %bb.pj
  %.0.i4950 = phi ptr [ %i.xs, %bb.pi ], [ %i.xt, %bb.pj ]
  %i.xu = ptrtoint ptr %i.wx to i64
  %i.xv = and i64 %i.xu, 1
  %.not.i4952 = icmp eq i64 %i.xv, 0              ; 2 uses
  br i1 %.not.i4952, label %bb.pk, label %lean_inc_n.exit4955

bb.pk:                                            ; preds = %lean_obj_once.exit4951
  %.val.i.i4953 = load i32, ptr %i.wx, align 4, !tbaa !10 ; 3 uses
  %i.xw = icmp sgt i32 %.val.i.i4953, 0
  br i1 %i.xw, label %bb.pl, label %bb.pm, !prof !11

bb.pl:                                            ; preds = %bb.pk
  %i.xx = add nuw i32 %.val.i.i4953, 2
  store i32 %i.xx, ptr %i.wx, align 4, !tbaa !10
  br label %lean_inc_n.exit4955

bb.pm:                                            ; preds = %bb.pk
  %.not.i.i4954 = icmp eq i32 %.val.i.i4953, 0
  br i1 %.not.i.i4954, label %lean_inc_n.exit4955, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %i.xy = atomicrmw sub ptr %i.wx, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit4955

lean_inc_n.exit4955:                              ; preds = %lean_obj_once.exit4951, %bb.pl, %bb.pm, %bb.pn
  %i.xz = ptrtoint ptr %i.ww to i64
  %i.ya = and i64 %i.xz, 1
  %.not.i4956 = icmp eq i64 %i.ya, 0              ; 2 uses
  br i1 %.not.i4956, label %bb.po, label %lean_inc_n.exit4959

bb.po:                                            ; preds = %lean_inc_n.exit4955
  %.val.i.i4957 = load i32, ptr %i.ww, align 4, !tbaa !10 ; 3 uses
  %i.yb = icmp sgt i32 %.val.i.i4957, 0
  br i1 %i.yb, label %bb.pp, label %bb.pq, !prof !11

bb.pp:                                            ; preds = %bb.po
  %i.yc = add nuw i32 %.val.i.i4957, 2
  store i32 %i.yc, ptr %i.ww, align 4, !tbaa !10
  br label %lean_inc_n.exit4959

bb.pq:                                            ; preds = %bb.po
  %.not.i.i4958 = icmp eq i32 %.val.i.i4957, 0
  br i1 %.not.i.i4958, label %lean_inc_n.exit4959, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.yd = atomicrmw sub ptr %i.ww, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit4959

lean_inc_n.exit4959:                              ; preds = %lean_inc_n.exit4955, %bb.pp, %bb.pq, %bb.pr
  %i.ye = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.ww, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__18_value, ptr noundef %i.wx) #7
  %i.yf = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__2_value, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__3_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__16_value) #7
  %i.yg = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 8
  store ptr %i.yf, ptr %i.yh, align 8, !tbaa !14
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yg, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.yi, align 8, !tbaa !14
  %i.yj = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  store ptr %i.yg, ptr %i.yk, align 8, !tbaa !14
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yj, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.yl, align 8, !tbaa !14
  %i.ym = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  store ptr %i.xk, ptr %i.yn, align 8, !tbaa !14
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 16
  store ptr %.0.i4950, ptr %i.yo, align 8, !tbaa !14
  %i.yp = getelementptr inbounds nuw i8, ptr %i.ym, i64 24
  store ptr %i.ye, ptr %i.yp, align 8, !tbaa !14
  %i.yq = getelementptr inbounds nuw i8, ptr %i.ym, i64 32
  store ptr %i.yj, ptr %i.yq, align 8, !tbaa !14
  %i.yr = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__33_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__34_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__11_value) #7
  %i.ys = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  store ptr %i.xk, ptr %i.yt, align 8, !tbaa !14
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__12_value, ptr %i.yu, align 8, !tbaa !14
  %i.yv = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14_once seq_cst, align 4, !tbaa !20
  %i.yw = icmp eq i32 %i.yv, 1
  br i1 %i.yw, label %bb.ps, label %bb.pt, !prof !11

bb.ps:                                            ; preds = %lean_inc_n.exit4959
  %i.yx = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14, align 8, !tbaa !14
  br label %lean_obj_once.exit4965

bb.pt:                                            ; preds = %lean_inc_n.exit4959
  %i.yy = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14) #7
  br label %lean_obj_once.exit4965

lean_obj_once.exit4965:                           ; preds = %bb.ps, %bb.pt
  %.0.i4964 = phi ptr [ %i.yx, %bb.ps ], [ %i.yy, %bb.pt ]
  %i.yz = tail call ptr @l_Lean_Name_mkStr2(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__4_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__63_value) #7
  %i.za = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.ww, ptr noundef %i.yz, ptr noundef %i.wx) #7
  %i.zb = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  store ptr %i.xk, ptr %i.zc, align 8, !tbaa !14
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zb, i64 16
  store ptr %.0.i4964, ptr %i.zd, align 8, !tbaa !14
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zb, i64 24
  store ptr %i.za, ptr %i.ze, align 8, !tbaa !14
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zb, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.zf, align 8, !tbaa !14
  %i.zg = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.xk, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef nonnull %i.zb) #7
  %i.zh = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 8
  store ptr %i.xk, ptr %i.zi, align 8, !tbaa !14
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zh, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__15_value, ptr %i.zj, align 8, !tbaa !14
  %i.zk = tail call ptr @l_Lean_Syntax_node3(ptr noundef %i.xk, ptr noundef %i.yr, ptr noundef nonnull %i.ys, ptr noundef %i.zg, ptr noundef nonnull %i.zh) #7
  %i.zl = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.xk, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef %i.zk) #7
  %i.zm = tail call ptr @l_Lean_Syntax_node2(ptr noundef %i.xk, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__36_value, ptr noundef nonnull %i.ym, ptr noundef %i.zl) #7
  br i1 %.not.i3600, label %bb.pu, label %lean_inc.exit3529

bb.pu:                                            ; preds = %lean_obj_once.exit4965
  %.val.i.i4966 = load i32, ptr %15, align 4, !tbaa !10 ; 3 uses
  %i.zn = icmp sgt i32 %.val.i.i4966, 0
  br i1 %i.zn, label %bb.pv, label %bb.pw, !prof !11

bb.pv:                                            ; preds = %bb.pu
  %i.zo = add nuw i32 %.val.i.i4966, 1
  store i32 %i.zo, ptr %15, align 4, !tbaa !10
  br label %lean_inc.exit3529

bb.pw:                                            ; preds = %bb.pu
  %.not.i.i4967 = icmp eq i32 %.val.i.i4966, 0
  br i1 %.not.i.i4967, label %lean_inc.exit3529, label %bb.px

end_hunk_19
begin_hunk_20_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2:bb.a

lean_dec_ref.exit4641:                            ; preds = %bb.sx, %bb.sy, %bb.sz
  %i.act = load i32, ptr %i.boa, align 4, !tbaa !10 ; 3 uses
  %i.acu = icmp sgt i32 %i.act, 1
  br i1 %i.acu, label %bb.ta, label %bb.tb, !prof !11

bb.ta:                                            ; preds = %lean_dec_ref.exit4641
  %i.acv = add nsw i32 %i.act, -1
  store i32 %i.acv, ptr %i.boa, align 4, !tbaa !10
  br label %lean_dec.exit3996

bb.tb:                                            ; preds = %lean_dec_ref.exit4641
  %.not.i4638 = icmp eq i32 %i.act, 0
  br i1 %.not.i4638, label %lean_dec.exit3996, label %bb.tc

bb.tc:                                            ; preds = %bb.tb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.boa) #7
  br label %lean_dec.exit3996

lean_dec.exit3996:                                ; preds = %bb.tc, %bb.tb, %bb.ta
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.cj, i32 noundef 1)
  br i1 %.not.i3592, label %bb.td, label %lean_dec.exit3994

bb.td:                                            ; preds = %lean_dec.exit3996
  %i.acw = load i32, ptr %i.bg, align 4, !tbaa !10 ; 3 uses
  %i.acx = icmp sgt i32 %i.acw, 1
  br i1 %i.acx, label %bb.te, label %bb.tf, !prof !11

bb.te:                                            ; preds = %bb.td
  %i.acy = add nsw i32 %i.acw, -1
  store i32 %i.acy, ptr %i.bg, align 4, !tbaa !10
  br label %lean_dec.exit3994

bb.tf:                                            ; preds = %bb.td
  %.not.i4154 = icmp eq i32 %i.acw, 0
  br i1 %.not.i4154, label %lean_dec.exit3994, label %bb.tg

bb.tg:                                            ; preds = %bb.tf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bg) #7
  br label %lean_dec.exit3994

lean_dec.exit3994:                                ; preds = %bb.tg, %bb.tf, %bb.te, %lean_dec.exit3996
  %i.acz = load i32, ptr %.0257810258, align 4, !tbaa !10 ; 3 uses
  %i.ada = icmp sgt i32 %i.acz, 1
  br i1 %i.ada, label %bb.th, label %bb.ti, !prof !11

bb.th:                                            ; preds = %lean_dec.exit3994
  %i.adb = add nsw i32 %i.acz, -1
  store i32 %i.adb, ptr %.0257810258, align 4, !tbaa !10
  br label %lean_dec_ref.exit4637

bb.ti:                                            ; preds = %lean_dec.exit3994
  %.not.i4636 = icmp eq i32 %i.acz, 0
  br i1 %.not.i4636, label %lean_dec_ref.exit4637, label %bb.tj

bb.tj:                                            ; preds = %bb.ti
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0257810258) #7
  br label %lean_dec_ref.exit4637

lean_dec_ref.exit4637:                            ; preds = %bb.th, %bb.ti, %bb.tj
  br i1 %.not.i3719, label %bb.tk, label %lean_dec.exit3992

bb.tk:                                            ; preds = %lean_dec_ref.exit4637
  %i.adc = load i32, ptr %4, align 4, !tbaa !10   ; 3 uses
  %i.add = icmp sgt i32 %i.adc, 1
  br i1 %i.add, label %bb.tl, label %bb.tm, !prof !11

bb.tl:                                            ; preds = %bb.tk
  %i.ade = add nsw i32 %i.adc, -1
  store i32 %i.ade, ptr %4, align 4, !tbaa !10
  br label %lean_dec.exit3992

bb.tm:                                            ; preds = %bb.tk
  %.not.i4156 = icmp eq i32 %i.adc, 0
  br i1 %.not.i4156, label %lean_dec.exit3992, label %bb.tn

bb.tn:                                            ; preds = %bb.tm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #7
  br label %lean_dec.exit3992

lean_dec.exit3992:                                ; preds = %bb.tn, %bb.tm, %bb.tl, %lean_dec_ref.exit4637
  br i1 %.not.i3418, label %bb.to, label %lean_dec.exit3990

bb.to:                                            ; preds = %lean_dec.exit3992
  %i.adf = load i32, ptr %3, align 4, !tbaa !10   ; 3 uses
  %i.adg = icmp sgt i32 %i.adf, 1
  br i1 %i.adg, label %bb.tp, label %bb.tq, !prof !11

bb.tp:                                            ; preds = %bb.to
  %i.adh = add nsw i32 %i.adf, -1
  store i32 %i.adh, ptr %3, align 4, !tbaa !10
  br label %lean_dec.exit3990

bb.tq:                                            ; preds = %bb.to
  %.not.i4158 = icmp eq i32 %i.adf, 0
  br i1 %.not.i4158, label %lean_dec.exit3990, label %bb.tr

bb.tr:                                            ; preds = %bb.tq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_dec.exit3990

lean_dec.exit3990:                                ; preds = %bb.tr, %bb.tq, %bb.tp, %lean_dec.exit3992
  %i.adi = load i32, ptr %1, align 4, !tbaa !10   ; 3 uses
  %i.adj = icmp sgt i32 %i.adi, 1
  br i1 %i.adj, label %bb.ts, label %bb.tt, !prof !11

bb.ts:                                            ; preds = %lean_dec.exit3990
  %i.adk = add nsw i32 %i.adi, -1
  store i32 %i.adk, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit4635

bb.tt:                                            ; preds = %lean_dec.exit3990
  %.not.i4634 = icmp eq i32 %i.adi, 0
  br i1 %.not.i4634, label %lean_dec_ref.exit4635, label %bb.tu

bb.tu:                                            ; preds = %bb.tt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit4635

lean_dec_ref.exit4635:                            ; preds = %bb.ts, %bb.tt, %bb.tu
  br i1 %.not.i3606, label %bb.tv, label %lean_dec.exit3988

bb.tv:                                            ; preds = %lean_dec_ref.exit4635
  %i.adl = load i32, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.adm = icmp sgt i32 %i.adl, 1
  br i1 %i.adm, label %bb.tw, label %bb.tx, !prof !11

bb.tw:                                            ; preds = %bb.tv
  %i.adn = add nsw i32 %i.adl, -1
  store i32 %i.adn, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit3988

bb.tx:                                            ; preds = %bb.tv
  %.not.i4160 = icmp eq i32 %i.adl, 0
  br i1 %.not.i4160, label %lean_dec.exit3988, label %bb.ty

bb.ty:                                            ; preds = %bb.tx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit3988

lean_dec.exit3988:                                ; preds = %bb.ty, %bb.tx, %bb.tw, %lean_dec_ref.exit4635
  %i.ado = getelementptr inbounds nuw i8, ptr %i.xb, i64 8
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !14 ; 5 uses
  %.val4704 = load i32, ptr %i.xb, align 8, !tbaa !10
  %i.adq = icmp eq i32 %.val4704, 1
  br i1 %i.adq, label %lean_dec.exit.thread5765, label %bb.tz

bb.tz:                                            ; preds = %lean_dec.exit3988
  %i.adr = ptrtoint ptr %i.adp to i64
  %i.ads = and i64 %i.adr, 1
  %.not.i3512 = icmp eq i64 %i.ads, 0
  br i1 %.not.i3512, label %bb.ua, label %lean_inc.exit3513

bb.ua:                                            ; preds = %bb.tz
  %.val.i.i5003 = load i32, ptr %i.adp, align 4, !tbaa !10 ; 3 uses
  %i.adt = icmp sgt i32 %.val.i.i5003, 0
  br i1 %i.adt, label %bb.ub, label %bb.uc, !prof !11

bb.ub:                                            ; preds = %bb.ua
  %i.adu = add nuw i32 %.val.i.i5003, 1
  store i32 %i.adu, ptr %i.adp, align 4, !tbaa !10
  br label %lean_inc.exit3513

bb.uc:                                            ; preds = %bb.ua
  %.not.i.i5004 = icmp eq i32 %.val.i.i5003, 0
  br i1 %.not.i.i5004, label %lean_inc.exit3513, label %bb.ud

bb.ud:                                            ; preds = %bb.uc
  %i.adv = atomicrmw sub ptr %i.adp, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3513

lean_inc.exit3513:                                ; preds = %bb.ud, %bb.uc, %bb.ub, %bb.tz
  br i1 %.not.i4942, label %bb.ue, label %bb.ui

bb.ue:                                            ; preds = %lean_inc.exit3513
  %i.adw = load i32, ptr %i.xb, align 8, !tbaa !10 ; 3 uses
  %i.adx = icmp sgt i32 %i.adw, 1
  br i1 %i.adx, label %bb.uf, label %bb.ug, !prof !11

bb.uf:                                            ; preds = %bb.ue
  %i.ady = add nsw i32 %i.adw, -1
  store i32 %i.ady, ptr %i.xb, align 8, !tbaa !10
  br label %bb.ui

bb.ug:                                            ; preds = %bb.ue
  %.not.i4162 = icmp eq i32 %i.adw, 0
  br i1 %.not.i4162, label %bb.ui, label %bb.uh

bb.uh:                                            ; preds = %bb.ug
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.xb) #7
  br label %bb.ui

bb.ui:                                            ; preds = %lean_inc.exit3513, %bb.uf, %bb.ug, %bb.uh
  %i.adz = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit.thread5765.sink.split

bb.uj:                                            ; preds = %bb.ov
  br i1 %.not.i3602, label %bb.uk, label %lean_dec.exit3984

bb.uk:                                            ; preds = %bb.uj
  %i.aea = load i32, ptr %i.dj, align 4, !tbaa !10 ; 3 uses
  %i.aeb = icmp sgt i32 %i.aea, 1
  br i1 %i.aeb, label %bb.ul, label %bb.um, !prof !11

bb.ul:                                            ; preds = %bb.uk
  %i.aec = add nsw i32 %i.aea, -1
  store i32 %i.aec, ptr %i.dj, align 4, !tbaa !10
  br label %lean_dec.exit3984

bb.um:                                            ; preds = %bb.uk
  %.not.i4164 = icmp eq i32 %i.aea, 0
  br i1 %.not.i4164, label %lean_dec.exit3984, label %bb.un

bb.un:                                            ; preds = %bb.um
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dj) #7
  br label %lean_dec.exit3984

lean_dec.exit3984:                                ; preds = %bb.un, %bb.um, %bb.ul, %bb.uj
  %i.aed = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__1(i8 noundef zeroext 0, ptr noundef %i.wv, ptr poison, ptr poison, ptr poison, ptr nonnull poison, ptr poison, ptr nonnull poison, ptr poison) ; 10 uses
  %i.aee = ptrtoint ptr %i.aed to i64             ; 2 uses
  %i.aef = and i64 %i.aee, 1
  %.not.i5006 = icmp eq i64 %i.aef, 0             ; 2 uses
  br i1 %.not.i5006, label %bb.up, label %bb.uo

bb.uo:                                            ; preds = %lean_dec.exit3984
  %i.aeg = lshr i64 %i.aee, 1
  %i.aeh = trunc i64 %i.aeg to i32
  br label %lean_obj_tag.exit5009

bb.up:                                            ; preds = %lean_dec.exit3984
  %i.aei = getelementptr i8, ptr %i.aed, i64 4
  %.val.i5008 = load i32, ptr %i.aei, align 4
  %i.aej = lshr i32 %.val.i5008, 24
  br label %lean_obj_tag.exit5009

lean_obj_tag.exit5009:                            ; preds = %bb.uo, %bb.up
  %.0.i5007 = phi i32 [ %i.aeh, %bb.uo ], [ %i.aej, %bb.up ]
  %i.aek = icmp eq i32 %.0.i5007, 0
  br i1 %i.aek, label %bb.uq, label %lean_dec.exit3966

bb.uq:                                            ; preds = %lean_obj_tag.exit5009
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aed, i64 8
  %i.aem = load ptr, ptr %i.ael, align 8, !tbaa !14 ; 12 uses
  %i.aen = ptrtoint ptr %i.aem to i64
  %i.aeo = and i64 %i.aen, 1
  %.not.i5010 = icmp eq i64 %i.aeo, 0
  br i1 %.not.i5010, label %bb.ur, label %lean_inc_n.exit5013

bb.ur:                                            ; preds = %bb.uq
  %.val.i.i5011 = load i32, ptr %i.aem, align 4, !tbaa !10 ; 3 uses
  %i.aep = icmp sgt i32 %.val.i.i5011, 0
  br i1 %i.aep, label %bb.us, label %bb.ut, !prof !11

bb.us:                                            ; preds = %bb.ur
  %i.aeq = add nuw i32 %.val.i.i5011, 8
  store i32 %i.aeq, ptr %i.aem, align 4, !tbaa !10
  br label %lean_inc_n.exit5013

bb.ut:                                            ; preds = %bb.ur
  %.not.i.i5012 = icmp eq i32 %.val.i.i5011, 0
  br i1 %.not.i.i5012, label %lean_inc_n.exit5013, label %bb.uu

bb.uu:                                            ; preds = %bb.ut
  %i.aer = atomicrmw sub ptr %i.aem, i32 8 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit5013

lean_inc_n.exit5013:                              ; preds = %bb.uq, %bb.us, %bb.ut, %bb.uu
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.aed, i32 noundef 1)
  %i.aes = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__20_once seq_cst, align 4, !tbaa !20
  %i.aet = icmp eq i32 %i.aes, 1
  br i1 %i.aet, label %bb.uv, label %bb.uw, !prof !11

bb.uv:                                            ; preds = %lean_inc_n.exit5013
  %i.aeu = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__20, align 8, !tbaa !14
  br label %lean_obj_once.exit5015

bb.uw:                                            ; preds = %lean_inc_n.exit5013
  %i.aev = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__20, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__20_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__20) #7
  br label %lean_obj_once.exit5015

lean_obj_once.exit5015:                           ; preds = %bb.uv, %bb.uw
  %.0.i5014 = phi ptr [ %i.aeu, %bb.uv ], [ %i.aev, %bb.uw ]
  %i.aew = ptrtoint ptr %i.wx to i64
  %i.aex = and i64 %i.aew, 1
  %.not.i5016 = icmp eq i64 %i.aex, 0             ; 2 uses
  br i1 %.not.i5016, label %bb.ux, label %lean_inc_n.exit5019

bb.ux:                                            ; preds = %lean_obj_once.exit5015
  %.val.i.i5017 = load i32, ptr %i.wx, align 4, !tbaa !10 ; 3 uses
  %i.aey = icmp sgt i32 %.val.i.i5017, 0
  br i1 %i.aey, label %bb.uy, label %bb.uz, !prof !11

bb.uy:                                            ; preds = %bb.ux
  %i.aez = add nuw i32 %.val.i.i5017, 2
  store i32 %i.aez, ptr %i.wx, align 4, !tbaa !10
  br label %lean_inc_n.exit5019

bb.uz:                                            ; preds = %bb.ux
  %.not.i.i5018 = icmp eq i32 %.val.i.i5017, 0
  br i1 %.not.i.i5018, label %lean_inc_n.exit5019, label %bb.va

bb.va:                                            ; preds = %bb.uz
  %i.afa = atomicrmw sub ptr %i.wx, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit5019

lean_inc_n.exit5019:                              ; preds = %lean_obj_once.exit5015, %bb.uy, %bb.uz, %bb.va
  %i.afb = ptrtoint ptr %i.ww to i64
  %i.afc = and i64 %i.afb, 1
  %.not.i5020 = icmp eq i64 %i.afc, 0             ; 2 uses
  br i1 %.not.i5020, label %bb.vb, label %lean_inc_n.exit5023

bb.vb:                                            ; preds = %lean_inc_n.exit5019
  %.val.i.i5021 = load i32, ptr %i.ww, align 4, !tbaa !10 ; 3 uses
  %i.afd = icmp sgt i32 %.val.i.i5021, 0
  br i1 %i.afd, label %bb.vc, label %bb.vd, !prof !11

bb.vc:                                            ; preds = %bb.vb
  %i.afe = add nuw i32 %.val.i.i5021, 2
  store i32 %i.afe, ptr %i.ww, align 4, !tbaa !10
  br label %lean_inc_n.exit5023

bb.vd:                                            ; preds = %bb.vb
  %.not.i.i5022 = icmp eq i32 %.val.i.i5021, 0
  br i1 %.not.i.i5022, label %lean_inc_n.exit5023, label %bb.ve

bb.ve:                                            ; preds = %bb.vd
  %i.aff = atomicrmw sub ptr %i.ww, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit5023

lean_inc_n.exit5023:                              ; preds = %lean_inc_n.exit5019, %bb.vc, %bb.vd, %bb.ve
  %i.afg = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.ww, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__21_value, ptr noundef %i.wx) #7
  %i.afh = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__2_value, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__3_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__19_value) #7
  %i.afi = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 8
  store ptr %i.afh, ptr %i.afj, align 8, !tbaa !14
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afi, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.afk, align 8, !tbaa !14
  %i.afl = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 8
  store ptr %i.afi, ptr %i.afm, align 8, !tbaa !14
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afl, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.afn, align 8, !tbaa !14
  %i.afo = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 8
  store ptr %i.aem, ptr %i.afp, align 8, !tbaa !14
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afo, i64 16
  store ptr %.0.i5014, ptr %i.afq, align 8, !tbaa !14
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afo, i64 24
  store ptr %i.afg, ptr %i.afr, align 8, !tbaa !14
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afo, i64 32
  store ptr %i.afl, ptr %i.afs, align 8, !tbaa !14
  %i.aft = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__33_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__34_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__11_value) #7
  %i.afu = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 8
  store ptr %i.aem, ptr %i.afv, align 8, !tbaa !14
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afu, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__12_value, ptr %i.afw, align 8, !tbaa !14
  %i.afx = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14_once seq_cst, align 4, !tbaa !20
  %i.afy = icmp eq i32 %i.afx, 1
  br i1 %i.afy, label %bb.vf, label %bb.vg, !prof !11

bb.vf:                                            ; preds = %lean_inc_n.exit5023
  %i.afz = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14, align 8, !tbaa !14
  br label %lean_obj_once.exit5029

bb.vg:                                            ; preds = %lean_inc_n.exit5023
  %i.aga = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14) #7
  br label %lean_obj_once.exit5029

lean_obj_once.exit5029:                           ; preds = %bb.vf, %bb.vg
  %.0.i5028 = phi ptr [ %i.afz, %bb.vf ], [ %i.aga, %bb.vg ]
  %i.agb = tail call ptr @l_Lean_Name_mkStr2(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__4_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__63_value) #7
  %i.agc = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.ww, ptr noundef %i.agb, ptr noundef %i.wx) #7
  %i.agd = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 8
  store ptr %i.aem, ptr %i.age, align 8, !tbaa !14
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agd, i64 16
  store ptr %.0.i5028, ptr %i.agf, align 8, !tbaa !14
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agd, i64 24
  store ptr %i.agc, ptr %i.agg, align 8, !tbaa !14
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agd, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.agh, align 8, !tbaa !14
  %i.agi = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.aem, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef nonnull %i.agd) #7
  %i.agj = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 8
  store ptr %i.aem, ptr %i.agk, align 8, !tbaa !14
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agj, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__15_value, ptr %i.agl, align 8, !tbaa !14
  %i.agm = tail call ptr @l_Lean_Syntax_node3(ptr noundef %i.aem, ptr noundef %i.aft, ptr noundef nonnull %i.afu, ptr noundef %i.agi, ptr noundef nonnull %i.agj) #7
  %i.agn = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.aem, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef %i.agm) #7
  %i.ago = tail call ptr @l_Lean_Syntax_node2(ptr noundef %i.aem, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__36_value, ptr noundef nonnull %i.afo, ptr noundef %i.agn) #7
  br i1 %.not.i3600, label %bb.vh, label %lean_inc.exit3511

bb.vh:                                            ; preds = %lean_obj_once.exit5029
  %.val.i.i5030 = load i32, ptr %15, align 4, !tbaa !10 ; 3 uses
  %i.agp = icmp sgt i32 %.val.i.i5030, 0
  br i1 %i.agp, label %bb.vi, label %bb.vj, !prof !11

bb.vi:                                            ; preds = %bb.vh
  %i.agq = add nuw i32 %.val.i.i5030, 1
  store i32 %i.agq, ptr %15, align 4, !tbaa !10
  br label %lean_inc.exit3511

bb.vj:                                            ; preds = %bb.vh
  %.not.i.i5031 = icmp eq i32 %.val.i.i5030, 0
  br i1 %.not.i.i5031, label %lean_inc.exit3511, label %bb.vk

end_hunk_20
begin_hunk_21_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2:bb.a
bb.aax:                                           ; preds = %bb.aaw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_dec.exit3936

lean_dec.exit3936:                                ; preds = %bb.aax, %bb.aaw, %bb.aav, %lean_dec.exit3938
  %i.ama = load i32, ptr %1, align 4, !tbaa !10   ; 3 uses
  %i.amb = icmp sgt i32 %i.ama, 1
  br i1 %i.amb, label %bb.aay, label %bb.aaz, !prof !11

bb.aay:                                           ; preds = %lean_dec.exit3936
  %i.amc = add nsw i32 %i.ama, -1
  store i32 %i.amc, ptr %1, align 4, !tbaa !10
  br label %lean_dec_ref.exit4607

bb.aaz:                                           ; preds = %lean_dec.exit3936
  %.not.i4606 = icmp eq i32 %i.ama, 0
  br i1 %.not.i4606, label %lean_dec_ref.exit4607, label %bb.aba

bb.aba:                                           ; preds = %bb.aaz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec_ref.exit4607

lean_dec_ref.exit4607:                            ; preds = %bb.aay, %bb.aaz, %bb.aba
  br i1 %.not.i3606, label %bb.abb, label %lean_dec.exit3934

bb.abb:                                           ; preds = %lean_dec_ref.exit4607
  %i.amd = load i32, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.ame = icmp sgt i32 %i.amd, 1
  br i1 %i.ame, label %bb.abc, label %bb.abd, !prof !11

bb.abc:                                           ; preds = %bb.abb
  %i.amf = add nsw i32 %i.amd, -1
  store i32 %i.amf, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit3934

bb.abd:                                           ; preds = %bb.abb
  %.not.i4204 = icmp eq i32 %i.amd, 0
  br i1 %.not.i4204, label %lean_dec.exit3934, label %bb.abe

bb.abe:                                           ; preds = %bb.abd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit3934

lean_dec.exit3934:                                ; preds = %bb.abe, %bb.abd, %bb.abc, %lean_dec_ref.exit4607
  %i.amg = getelementptr inbounds nuw i8, ptr %i.anq, i64 8
  %i.amh = load ptr, ptr %i.amg, align 8, !tbaa !14 ; 5 uses
  %.val4701 = load i32, ptr %i.anq, align 8, !tbaa !10
  %i.ami = icmp eq i32 %.val4701, 1
  br i1 %i.ami, label %lean_dec.exit.thread5765, label %bb.abf

bb.abf:                                           ; preds = %lean_dec.exit3934
  %i.amj = ptrtoint ptr %i.amh to i64
  %i.amk = and i64 %i.amj, 1
  %.not.i3492 = icmp eq i64 %i.amk, 0
  br i1 %.not.i3492, label %bb.abg, label %lean_inc.exit3493

bb.abg:                                           ; preds = %bb.abf
  %.val.i.i5070 = load i32, ptr %i.amh, align 4, !tbaa !10 ; 3 uses
  %i.aml = icmp sgt i32 %.val.i.i5070, 0
  br i1 %i.aml, label %bb.abh, label %bb.abi, !prof !11

bb.abh:                                           ; preds = %bb.abg
  %i.amm = add nuw i32 %.val.i.i5070, 1
  store i32 %i.amm, ptr %i.amh, align 4, !tbaa !10
  br label %lean_inc.exit3493

bb.abi:                                           ; preds = %bb.abg
  %.not.i.i5071 = icmp eq i32 %.val.i.i5070, 0
  br i1 %.not.i.i5071, label %lean_inc.exit3493, label %bb.abj

bb.abj:                                           ; preds = %bb.abi
  %i.amn = atomicrmw sub ptr %i.amh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3493

lean_inc.exit3493:                                ; preds = %bb.abj, %bb.abi, %bb.abh, %bb.abf
  br i1 %.not.i5081, label %bb.abk, label %bb.abo

bb.abk:                                           ; preds = %lean_inc.exit3493
  %i.amo = load i32, ptr %i.anq, align 8, !tbaa !10 ; 3 uses
  %i.amp = icmp sgt i32 %i.amo, 1
  br i1 %i.amp, label %bb.abl, label %bb.abm, !prof !11

bb.abl:                                           ; preds = %bb.abk
  %i.amq = add nsw i32 %i.amo, -1
  store i32 %i.amq, ptr %i.anq, align 8, !tbaa !10
  br label %bb.abo

bb.abm:                                           ; preds = %bb.abk
  %.not.i4206 = icmp eq i32 %i.amo, 0
  br i1 %.not.i4206, label %bb.abo, label %bb.abn

bb.abn:                                           ; preds = %bb.abm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.anq) #7
  br label %bb.abo

bb.abo:                                           ; preds = %lean_inc.exit3493, %bb.abl, %bb.abm, %bb.abn
  %i.amr = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0)
  br label %lean_dec.exit.thread5765.sink.split

lean_dec.exit3932:                                ; preds = %lean_obj_tag.exit5084
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.anq, i32 noundef 1)
  br label %lean_dec.exit3894.thread

bb.abp:                                           ; preds = %bb.ajm, %bb.ajl, %bb.ajk, %lean_dec.exit3886
  %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3387 = select i1 %i.azg, ptr @l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value, ptr @l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value ; 3 uses
  %.03158 = trunc i64 %i.azk to i8                ; 2 uses
  %.val.i.i5073 = load i32, ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3387, align 8, !tbaa !10 ; 2 uses
  %i.ams = icmp sgt i32 %.val.i.i5073, 0
  br i1 %i.ams, label %lean_inc_ref.exit5075, label %bb.abq, !prof !11

bb.abq:                                           ; preds = %bb.abp
  %.not.i.i5074 = icmp eq i32 %.val.i.i5073, 0
  br i1 %.not.i.i5074, label %lean_inc_ref.exit5075, label %bb.abr

bb.abr:                                           ; preds = %bb.abq
  %i.amt = atomicrmw sub ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3387, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit5075

lean_inc_ref.exit5075:                            ; preds = %bb.abp, %bb.abq, %bb.abr
  %i.amu = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 8
  store ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3387, ptr %i.amv, align 8, !tbaa !14
  %i.amw = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull %i.amu) #7
  %i.amx = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 8
  store ptr %i.azc, ptr %i.amy, align 8, !tbaa !14
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amx, i64 16
  store ptr %i.amw, ptr %i.amz, align 8, !tbaa !14
  %i.ana = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__23_once seq_cst, align 4, !tbaa !20
  %i.anb = icmp eq i32 %i.ana, 1
  br i1 %i.anb, label %bb.abs, label %bb.abt, !prof !11

bb.abs:                                           ; preds = %lean_inc_ref.exit5075
  %i.anc = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__23, align 8, !tbaa !14
  br label %lean_obj_once.exit5077

bb.abt:                                           ; preds = %lean_inc_ref.exit5075
  %i.and = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__23, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__23_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__23) #7
  br label %lean_obj_once.exit5077

lean_obj_once.exit5077:                           ; preds = %bb.abs, %bb.abt
  %.0.i5076 = phi ptr [ %i.anc, %bb.abs ], [ %i.and, %bb.abt ]
  %i.ane = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 8
  store ptr %i.amx, ptr %i.anf, align 8, !tbaa !14
  %i.ang = getelementptr inbounds nuw i8, ptr %i.ane, i64 16
  store ptr %.0.i5076, ptr %i.ang, align 8, !tbaa !14
  %i.anh = icmp eq i8 %.03158, 0
  %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value = select i1 %i.anh, ptr @l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value, ptr @l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value ; 3 uses
  %.val.i.i5078 = load i32, ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value, align 8, !tbaa !10 ; 2 uses
  %i.ani = icmp sgt i32 %.val.i.i5078, 0
  br i1 %i.ani, label %lean_inc_ref.exit5080, label %bb.abu, !prof !11

bb.abu:                                           ; preds = %lean_obj_once.exit5077
  %.not.i.i5079 = icmp eq i32 %.val.i.i5078, 0
  br i1 %.not.i.i5079, label %lean_inc_ref.exit5080, label %bb.abv

bb.abv:                                           ; preds = %bb.abu
  %i.anj = atomicrmw sub ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit5080

lean_inc_ref.exit5080:                            ; preds = %lean_obj_once.exit5077, %bb.abu, %bb.abv
  %i.ank = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 8
  store ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value, ptr %i.anl, align 8, !tbaa !14
  %i.anm = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull %i.ank) #7
  %i.ann = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 7, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 8
  store ptr %i.ane, ptr %i.ano, align 8, !tbaa !14
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ann, i64 16
  store ptr %i.anm, ptr %i.anp, align 8, !tbaa !14
  %i.anq = tail call ptr @l_Lean_addTrace___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__0___redArg(ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__4_value, ptr noundef nonnull %i.ann, ptr noundef nonnull %12, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %15) ; 9 uses
  %i.anr = ptrtoint ptr %i.anq to i64             ; 2 uses
  %i.ans = and i64 %i.anr, 1
  %.not.i5081 = icmp eq i64 %i.ans, 0             ; 2 uses
  br i1 %.not.i5081, label %bb.abx, label %bb.abw

bb.abw:                                           ; preds = %lean_inc_ref.exit5080
  %i.ant = lshr i64 %i.anr, 1
  %i.anu = trunc i64 %i.ant to i32
  br label %lean_obj_tag.exit5084

bb.abx:                                           ; preds = %lean_inc_ref.exit5080
  %i.anv = getelementptr i8, ptr %i.anq, i64 4
  %.val.i5083 = load i32, ptr %i.anv, align 4
  %i.anw = lshr i32 %.val.i5083, 24
  br label %lean_obj_tag.exit5084

lean_obj_tag.exit5084:                            ; preds = %bb.abw, %bb.abx
  %.0.i5082 = phi i32 [ %i.anu, %bb.abw ], [ %i.anw, %bb.abx ]
  %i.anx = icmp eq i32 %.0.i5082, 0
  br i1 %i.anx, label %lean_dec.exit3932, label %lean_dec.exit3948

bb.aby:                                           ; preds = %bb.aoj, %bb.aov, %bb.aon, %bb.aom, %bb.aol
  %i.any = load ptr, ptr %i.v, align 8, !tbaa !14
  %i.anz = load ptr, ptr %i.w, align 8, !tbaa !14 ; 8 uses
  %i.aoa = load ptr, ptr %i.x, align 8, !tbaa !14 ; 8 uses
  br i1 %.not.i3602, label %bb.abz, label %lean_dec.exit3930

bb.abz:                                           ; preds = %bb.aby
  %i.aob = load i32, ptr %i.dj, align 4, !tbaa !10 ; 3 uses
  %i.aoc = icmp sgt i32 %i.aob, 1
  br i1 %i.aoc, label %bb.aca, label %bb.acb, !prof !11

bb.aca:                                           ; preds = %bb.abz
  %i.aod = add nsw i32 %i.aob, -1
  store i32 %i.aod, ptr %i.dj, align 4, !tbaa !10
  br label %lean_dec.exit3930

bb.acb:                                           ; preds = %bb.abz
  %.not.i4208 = icmp eq i32 %i.aob, 0
  br i1 %.not.i4208, label %lean_dec.exit3930, label %bb.acc

bb.acc:                                           ; preds = %bb.acb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dj) #7
  br label %lean_dec.exit3930

lean_dec.exit3930:                                ; preds = %bb.acc, %bb.acb, %bb.aca, %bb.aby
  %i.aoe = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__1(i8 noundef zeroext 0, ptr noundef %i.any, ptr poison, ptr poison, ptr poison, ptr nonnull poison, ptr poison, ptr nonnull poison, ptr poison) ; 10 uses
  %i.aof = ptrtoint ptr %i.aoe to i64             ; 2 uses
  %i.aog = and i64 %i.aof, 1
  %.not.i5085 = icmp eq i64 %i.aog, 0             ; 2 uses
  br i1 %.not.i5085, label %bb.ace, label %bb.acd

bb.acd:                                           ; preds = %lean_dec.exit3930
  %i.aoh = lshr i64 %i.aof, 1
  %i.aoi = trunc i64 %i.aoh to i32
  br label %lean_obj_tag.exit5088

bb.ace:                                           ; preds = %lean_dec.exit3930
  %i.aoj = getelementptr i8, ptr %i.aoe, i64 4
  %.val.i5087 = load i32, ptr %i.aoj, align 4
  %i.aok = lshr i32 %.val.i5087, 24
  br label %lean_obj_tag.exit5088

lean_obj_tag.exit5088:                            ; preds = %bb.acd, %bb.ace
  %.0.i5086 = phi i32 [ %i.aoi, %bb.acd ], [ %i.aok, %bb.ace ]
  %i.aol = icmp eq i32 %.0.i5086, 0
  br i1 %i.aol, label %bb.acf, label %lean_dec.exit3926

bb.acf:                                           ; preds = %lean_obj_tag.exit5088
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aoe, i64 8
  %i.aon = load ptr, ptr %i.aom, align 8, !tbaa !14 ; 21 uses
  %i.aoo = ptrtoint ptr %i.aon to i64
  %i.aop = and i64 %i.aoo, 1
  %.not.i5089 = icmp eq i64 %i.aop, 0
  br i1 %.not.i5089, label %bb.acg, label %lean_inc_n.exit5092

bb.acg:                                           ; preds = %bb.acf
  %.val.i.i5090 = load i32, ptr %i.aon, align 4, !tbaa !10 ; 3 uses
  %i.aoq = icmp sgt i32 %.val.i.i5090, 0
  br i1 %i.aoq, label %bb.ach, label %bb.aci, !prof !11

bb.ach:                                           ; preds = %bb.acg
  %i.aor = add nuw i32 %.val.i.i5090, 17
  store i32 %i.aor, ptr %i.aon, align 4, !tbaa !10
  br label %lean_inc_n.exit5092

bb.aci:                                           ; preds = %bb.acg
  %.not.i.i5091 = icmp eq i32 %.val.i.i5090, 0
  br i1 %.not.i.i5091, label %lean_inc_n.exit5092, label %bb.acj

bb.acj:                                           ; preds = %bb.aci
  %i.aos = atomicrmw sub ptr %i.aon, i32 17 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit5092

lean_inc_n.exit5092:                              ; preds = %bb.acf, %bb.ach, %bb.aci, %bb.acj
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.aoe, i32 noundef 1)
  %i.aot = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__33_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__34_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__8_value) #7 ; 6 uses
  %i.aou = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 7 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 8
  store ptr %i.aon, ptr %i.aov, align 8, !tbaa !14
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aou, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__8_value, ptr %i.aow, align 8, !tbaa !14
  %i.aox = tail call ptr @l_Lean_Name_mkStr4(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___closed__6_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__33_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__34_value, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__9_value) #7 ; 6 uses
  %i.aoy = ptrtoint ptr %i.aoa to i64
  %i.aoz = and i64 %i.aoy, 1
  %.not.i5093 = icmp eq i64 %i.aoz, 0
  br i1 %.not.i5093, label %bb.ack, label %lean_inc_n.exit5096

bb.ack:                                           ; preds = %lean_inc_n.exit5092
  %.val.i.i5094 = load i32, ptr %i.aoa, align 4, !tbaa !10 ; 3 uses
  %i.apa = icmp sgt i32 %.val.i.i5094, 0
  br i1 %i.apa, label %bb.acl, label %bb.acm, !prof !11

bb.acl:                                           ; preds = %bb.ack
  %i.apb = add nuw i32 %.val.i.i5094, 4
  store i32 %i.apb, ptr %i.aoa, align 4, !tbaa !10
  br label %lean_inc_n.exit5096

bb.acm:                                           ; preds = %bb.ack
  %.not.i.i5095 = icmp eq i32 %.val.i.i5094, 0
  br i1 %.not.i.i5095, label %lean_inc_n.exit5096, label %bb.acn

bb.acn:                                           ; preds = %bb.acm
  %i.apc = atomicrmw sub ptr %i.aoa, i32 4 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit5096

lean_inc_n.exit5096:                              ; preds = %lean_inc_n.exit5092, %bb.acl, %bb.acm, %bb.acn
  %i.apd = ptrtoint ptr %i.anz to i64
  %i.ape = and i64 %i.apd, 1
  %.not.i5097 = icmp eq i64 %i.ape, 0
  br i1 %.not.i5097, label %bb.aco, label %lean_inc_n.exit5104

bb.aco:                                           ; preds = %lean_inc_n.exit5096
  %.val.i.i5098 = load i32, ptr %i.anz, align 4, !tbaa !10 ; 3 uses
  %i.apf = icmp sgt i32 %.val.i.i5098, 0
  br i1 %i.apf, label %bb.acp, label %bb.acq, !prof !11

bb.acp:                                           ; preds = %bb.aco
  %i.apg = add nuw i32 %.val.i.i5098, 4
  store i32 %i.apg, ptr %i.anz, align 4, !tbaa !10
  br label %lean_inc_n.exit5104

bb.acq:                                           ; preds = %bb.aco
  %.not.i.i5099 = icmp eq i32 %.val.i.i5098, 0
  br i1 %.not.i.i5099, label %lean_inc_n.exit5104, label %bb.acr

bb.acr:                                           ; preds = %bb.acq
  %i.aph = atomicrmw sub ptr %i.anz, i32 4 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit5104

lean_inc_n.exit5104:                              ; preds = %bb.acr, %bb.acq, %bb.acp, %lean_inc_n.exit5096
  %i.api = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.anz, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__51_value, ptr noundef %i.aoa) #7
  %.val.i.i5105 = load i32, ptr %.0.i5231, align 4, !tbaa !10 ; 3 uses
  %i.apj = icmp sgt i32 %.val.i.i5105, 0
  br i1 %i.apj, label %bb.acs, label %bb.act, !prof !11

bb.acs:                                           ; preds = %lean_inc_n.exit5104
  %i.apk = add nuw i32 %.val.i.i5105, 1
  store i32 %i.apk, ptr %.0.i5231, align 4, !tbaa !10
  br label %lean_inc_ref.exit5107

bb.act:                                           ; preds = %lean_inc_n.exit5104
  %.not.i.i5106 = icmp eq i32 %.val.i.i5105, 0
  br i1 %.not.i.i5106, label %lean_inc_ref.exit5107, label %bb.acu

bb.acu:                                           ; preds = %bb.act
  %i.apl = atomicrmw sub ptr %.0.i5231, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit5107

lean_inc_ref.exit5107:                            ; preds = %bb.acs, %bb.act, %bb.acu
  %i.apm = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 8
  store ptr %i.aon, ptr %i.apn, align 8, !tbaa !14
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apm, i64 16
  store ptr %.0.i5231, ptr %i.apo, align 8, !tbaa !14
  %i.app = getelementptr inbounds nuw i8, ptr %i.apm, i64 24
  store ptr %i.api, ptr %i.app, align 8, !tbaa !14
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apm, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.apq, align 8, !tbaa !14
  %i.apr = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__0_once seq_cst, align 4, !tbaa !20
  %i.aps = icmp eq i32 %i.apr, 1
  br i1 %i.aps, label %bb.acv, label %bb.acw, !prof !11

bb.acv:                                           ; preds = %lean_inc_ref.exit5107
  %i.apt = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__0, align 8, !tbaa !14
  br label %lean_obj_once.exit5109

bb.acw:                                           ; preds = %lean_inc_ref.exit5107
  %i.apu = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__0, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__0_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__0) #7
  br label %lean_obj_once.exit5109

lean_obj_once.exit5109:                           ; preds = %bb.acv, %bb.acw
  %.0.i5108 = phi ptr [ %i.apt, %bb.acv ], [ %i.apu, %bb.acw ]
  %i.apv = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.anz, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__1_value, ptr noundef %i.aoa) #7
  %i.apw = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 9 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 8
  store ptr %i.aon, ptr %i.apx, align 8, !tbaa !14
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apw, i64 16
  store ptr %.0.i5108, ptr %i.apy, align 8, !tbaa !14
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apw, i64 24
  store ptr %i.apv, ptr %i.apz, align 8, !tbaa !14
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apw, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.aqa, align 8, !tbaa !14
  %.val.i.i5110 = load i32, ptr %i.apw, align 8, !tbaa !10 ; 3 uses
  %i.aqb = icmp sgt i32 %.val.i.i5110, 0
  br i1 %i.aqb, label %bb.acx, label %bb.acy, !prof !11

bb.acx:                                           ; preds = %lean_obj_once.exit5109
  %i.aqc = add nuw i32 %.val.i.i5110, 1
  store i32 %i.aqc, ptr %i.apw, align 8, !tbaa !10
  br label %lean_inc_ref.exit5112

bb.acy:                                           ; preds = %lean_obj_once.exit5109
  %.not.i.i5111 = icmp eq i32 %.val.i.i5110, 0
  br i1 %.not.i.i5111, label %lean_inc_ref.exit5112, label %bb.acz

bb.acz:                                           ; preds = %bb.acy
  %i.aqd = atomicrmw sub ptr %i.apw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit5112

lean_inc_ref.exit5112:                            ; preds = %bb.acx, %bb.acy, %bb.acz
  %i.aqe = tail call ptr @l_Lean_Syntax_node2(ptr noundef %i.aon, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef nonnull %i.apm, ptr noundef nonnull %i.apw) #7
  %i.aqf = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 3, i32 noundef 0) ; 8 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 8
  store ptr %i.aon, ptr %i.aqg, align 8, !tbaa !14
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqf, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr %i.aqh, align 8, !tbaa !14
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqf, i64 24
  store ptr %.0.i5236, ptr %i.aqi, align 8, !tbaa !14
  %i.aqj = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 7 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 8
  store ptr %i.aon, ptr %i.aqk, align 8, !tbaa !14
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqj, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__12_value, ptr %i.aql, align 8, !tbaa !14
  %i.aqm = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__25_once seq_cst, align 4, !tbaa !20
end_hunk_21
begin_hunk_22_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2:bb.a

bb.bdc:                                           ; preds = %lean_alloc_ctor.exit5365
  %i.byo = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__71, align 8, !tbaa !14
  br label %lean_obj_once.exit5367

bb.bdd:                                           ; preds = %lean_alloc_ctor.exit5365
  %i.byp = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__71, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__71_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__71) #7
  br label %lean_obj_once.exit5367

lean_obj_once.exit5367:                           ; preds = %bb.bdc, %bb.bdd
  %.0.i5366 = phi ptr [ %i.byo, %bb.bdc ], [ %i.byp, %bb.bdd ]
  tail call void @lean_inc_heartbeat() #7
  %i.byq = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.byr = icmp eq ptr %i.byq, null
  br i1 %i.byr, label %bb.bde, label %lean_alloc_ctor.exit5368

bb.bde:                                           ; preds = %lean_obj_once.exit5367
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit5368:                         ; preds = %lean_obj_once.exit5367
  %i.bys = getelementptr inbounds nuw i8, ptr %i.byq, i64 4
  store i32 1, ptr %i.byq, align 4, !tbaa !10
  store i32 117571608, ptr %i.bys, align 4
  %i.byt = getelementptr inbounds nuw i8, ptr %i.byq, i64 8
  store ptr %i.byh, ptr %i.byt, align 8, !tbaa !14
  %i.byu = getelementptr inbounds nuw i8, ptr %i.byq, i64 16
  store ptr %.0.i5366, ptr %i.byu, align 8, !tbaa !14
  %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3388 = select i1 %i.cey, ptr @l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value, ptr @l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value ; 3 uses
  %.val.i.i5369 = load i32, ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3388, align 8, !tbaa !10 ; 2 uses
  %i.byv = icmp sgt i32 %.val.i.i5369, 0
  br i1 %i.byv, label %lean_inc_ref.exit5371, label %bb.bdf, !prof !11

bb.bdf:                                           ; preds = %lean_alloc_ctor.exit5368
  %.not.i.i5370 = icmp eq i32 %.val.i.i5369, 0
  br i1 %.not.i.i5370, label %lean_inc_ref.exit5371, label %bb.bdg

bb.bdg:                                           ; preds = %bb.bdf
  %i.byw = atomicrmw sub ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3388, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit5371

lean_inc_ref.exit5371:                            ; preds = %lean_alloc_ctor.exit5368, %bb.bdf, %bb.bdg
  tail call void @lean_inc_heartbeat() #7
  %i.byx = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #7 ; 5 uses
  %i.byy = icmp eq ptr %i.byx, null
  br i1 %i.byy, label %bb.bdh, label %lean_alloc_ctor.exit5372

bb.bdh:                                           ; preds = %lean_inc_ref.exit5371
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit5372:                         ; preds = %lean_inc_ref.exit5371
  %i.byz = getelementptr inbounds nuw i8, ptr %i.byx, i64 4
  store i32 1, ptr %i.byx, align 4, !tbaa !10
  store i32 50397200, ptr %i.byz, align 4
  %i.bza = getelementptr inbounds nuw i8, ptr %i.byx, i64 8
  store ptr %l_Lean_Elab_ConfigEval_evalBoolItem___closed__0_value.l_Lean_Elab_ConfigEval_evalBoolItem___closed__3_value3388, ptr %i.bza, align 8, !tbaa !14
  %i.bzb = tail call ptr @l_Lean_MessageData_ofFormat(ptr noundef nonnull %i.byx) #7
  tail call void @lean_inc_heartbeat() #7
  %i.bzc = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.bzd = icmp eq ptr %i.bzc, null
  br i1 %i.bzd, label %bb.bdi, label %lean_alloc_ctor.exit5373

bb.bdi:                                           ; preds = %lean_alloc_ctor.exit5372
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit5373:                         ; preds = %lean_alloc_ctor.exit5372
  %i.bze = getelementptr inbounds nuw i8, ptr %i.bzc, i64 4
  store i32 1, ptr %i.bzc, align 4, !tbaa !10
  store i32 117571608, ptr %i.bze, align 4
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.bzc, i64 8
  store ptr %i.byq, ptr %i.bzf, align 8, !tbaa !14
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bzc, i64 16
  store ptr %i.bzb, ptr %i.bzg, align 8, !tbaa !14
  %i.bzh = tail call ptr @l_Lean_addTrace___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__0___redArg(ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__4_value, ptr noundef nonnull %i.bzc, ptr noundef nonnull %12, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %15) ; 13 uses
  %i.bzi = ptrtoint ptr %i.bzh to i64             ; 2 uses
  %i.bzj = and i64 %i.bzi, 1
  %.not.i5374 = icmp eq i64 %i.bzj, 0             ; 2 uses
  br i1 %.not.i5374, label %bb.bdk, label %bb.bdj

bb.bdj:                                           ; preds = %lean_alloc_ctor.exit5373
  %i.bzk = lshr i64 %i.bzi, 1
  %i.bzl = trunc i64 %i.bzk to i32
  br label %lean_obj_tag.exit5377

bb.bdk:                                           ; preds = %lean_alloc_ctor.exit5373
  %i.bzm = getelementptr i8, ptr %i.bzh, i64 4
  %.val.i5376 = load i32, ptr %i.bzm, align 4
  %i.bzn = lshr i32 %.val.i5376, 24
  br label %lean_obj_tag.exit5377

lean_obj_tag.exit5377:                            ; preds = %bb.bdj, %bb.bdk
  %.0.i5375 = phi i32 [ %i.bzl, %bb.bdj ], [ %i.bzn, %bb.bdk ]
  %i.bzo = icmp eq i32 %.0.i5375, 0
  br i1 %i.bzo, label %bb.bag, label %bb.bap

bb.bdl:                                           ; preds = %lean_obj_tag.exit5452
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.cfk, i64 8 ; 2 uses
  %i.bzq = load ptr, ptr %i.bzp, align 8, !tbaa !14 ; 7 uses
  %i.bzr = ptrtoint ptr %i.bzq to i64             ; 2 uses
  %i.bzs = and i64 %i.bzr, 1
  %.not.i3420 = icmp eq i64 %i.bzs, 0             ; 2 uses
  br i1 %.not.i3420, label %bb.bdm, label %lean_inc.exit3421

bb.bdm:                                           ; preds = %bb.bdl
  %.val.i.i5378 = load i32, ptr %i.bzq, align 4, !tbaa !10 ; 3 uses
  %i.bzt = icmp sgt i32 %.val.i.i5378, 0
  br i1 %i.bzt, label %bb.bdn, label %bb.bdo, !prof !11

bb.bdn:                                           ; preds = %bb.bdm
  %i.bzu = add nuw i32 %.val.i.i5378, 1
  store i32 %i.bzu, ptr %i.bzq, align 4, !tbaa !10
  br label %lean_inc.exit3421

bb.bdo:                                           ; preds = %bb.bdm
  %.not.i.i5379 = icmp eq i32 %.val.i.i5378, 0
  br i1 %.not.i.i5379, label %lean_inc.exit3421, label %bb.bdp

bb.bdp:                                           ; preds = %bb.bdo
  %i.bzv = atomicrmw sub ptr %i.bzq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3421

lean_inc.exit3421:                                ; preds = %bb.bdp, %bb.bdo, %bb.bdn, %bb.bdl
  %.val.i5381 = load i32, ptr %i.cfk, align 8, !tbaa !10 ; 4 uses
  %i.bzw = icmp eq i32 %.val.i5381, 1
  br i1 %i.bzw, label %.preheader.i5383, label %bb.bdu

.preheader.i5383:                                 ; preds = %lean_inc.exit3421
  %i.bzx = load ptr, ptr %i.bzp, align 8, !tbaa !14 ; 4 uses
  %i.bzy = ptrtoint ptr %i.bzx to i64
  %i.bzz = and i64 %i.bzy, 1
  %.not.i.i5385 = icmp eq i64 %i.bzz, 0
  br i1 %.not.i.i5385, label %bb.bdq, label %lean_dec.exit.i5386

bb.bdq:                                           ; preds = %.preheader.i5383
  %i.caa = load i32, ptr %i.bzx, align 4, !tbaa !10 ; 3 uses
  %i.cab = icmp sgt i32 %i.caa, 1
  br i1 %i.cab, label %bb.bdr, label %bb.bds, !prof !11

bb.bdr:                                           ; preds = %bb.bdq
  %i.cac = add nsw i32 %i.caa, -1
  store i32 %i.cac, ptr %i.bzx, align 4, !tbaa !10
  br label %lean_dec.exit.i5386

bb.bds:                                           ; preds = %bb.bdq
  %.not.i7.i5390 = icmp eq i32 %i.caa, 0
  br i1 %.not.i7.i5390, label %lean_dec.exit.i5386, label %bb.bdt

bb.bdt:                                           ; preds = %bb.bds
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bzx) #7
  br label %lean_dec.exit.i5386

lean_dec.exit.i5386:                              ; preds = %bb.bdt, %bb.bds, %bb.bdr, %.preheader.i5383
  tail call void @lean_free_object(ptr noundef nonnull %i.cfk) #7
  br label %lean_dec_ref_known.exit5391

bb.bdu:                                           ; preds = %lean_inc.exit3421
  %i.cad = icmp sgt i32 %.val.i5381, 1
  br i1 %i.cad, label %bb.bdv, label %bb.bdw, !prof !11

bb.bdv:                                           ; preds = %bb.bdu
  %i.cae = add nsw i32 %.val.i5381, -1
  store i32 %i.cae, ptr %i.cfk, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit5391

bb.bdw:                                           ; preds = %bb.bdu
  %.not.i8.i5382 = icmp eq i32 %.val.i5381, 0
  br i1 %.not.i8.i5382, label %lean_dec_ref_known.exit5391, label %bb.bdx

bb.bdx:                                           ; preds = %bb.bdw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cfk) #7
  br label %lean_dec_ref_known.exit5391

lean_dec_ref_known.exit5391:                      ; preds = %lean_dec.exit.i5386, %bb.bdv, %bb.bdw, %bb.bdx
  %i.caf = inttoptr i64 %.03222 to ptr
  br i1 %.not.i3418, label %bb.bdy, label %lean_inc.exit3419

bb.bdy:                                           ; preds = %lean_dec_ref_known.exit5391
  %.val.i.i5392 = load i32, ptr %3, align 4, !tbaa !10 ; 3 uses
  %i.cag = icmp sgt i32 %.val.i.i5392, 0
  br i1 %i.cag, label %bb.bdz, label %bb.bea, !prof !11

bb.bdz:                                           ; preds = %bb.bdy
  %i.cah = add nuw i32 %.val.i.i5392, 1
  store i32 %i.cah, ptr %3, align 4, !tbaa !10
  br label %lean_inc.exit3419

bb.bea:                                           ; preds = %bb.bdy
  %.not.i.i5393 = icmp eq i32 %.val.i.i5392, 0
  br i1 %.not.i.i5393, label %lean_inc.exit3419, label %bb.beb

bb.beb:                                           ; preds = %bb.bea
  %i.cai = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3419

lean_inc.exit3419:                                ; preds = %bb.beb, %bb.bea, %bb.bdz, %lean_dec_ref_known.exit5391
  br i1 %.not.i3602, label %bb.bec, label %lean_inc.exit3417

bb.bec:                                           ; preds = %lean_inc.exit3419
  %.val.i.i5395 = load i32, ptr %i.dj, align 4, !tbaa !10 ; 3 uses
  %i.caj = icmp sgt i32 %.val.i.i5395, 0
  br i1 %i.caj, label %bb.bed, label %bb.bee, !prof !11

bb.bed:                                           ; preds = %bb.bec
  %i.cak = add nuw i32 %.val.i.i5395, 1
  store i32 %i.cak, ptr %i.dj, align 4, !tbaa !10
  br label %lean_inc.exit3417

bb.bee:                                           ; preds = %bb.bec
  %.not.i.i5396 = icmp eq i32 %.val.i.i5395, 0
  br i1 %.not.i.i5396, label %lean_inc.exit3417, label %bb.bef

bb.bef:                                           ; preds = %bb.bee
  %i.cal = atomicrmw sub ptr %i.dj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3417

lean_inc.exit3417:                                ; preds = %bb.bef, %bb.bee, %bb.bed, %lean_inc.exit3419
  br i1 %.not.i3592, label %bb.beg, label %lean_inc.exit3415

bb.beg:                                           ; preds = %lean_inc.exit3417
  %.val.i.i5398 = load i32, ptr %i.bg, align 4, !tbaa !10 ; 3 uses
  %i.cam = icmp sgt i32 %.val.i.i5398, 0
  br i1 %i.cam, label %bb.beh, label %bb.bei, !prof !11

bb.beh:                                           ; preds = %bb.beg
  %i.can = add nuw i32 %.val.i.i5398, 1
  store i32 %i.can, ptr %i.bg, align 4, !tbaa !10
  br label %lean_inc.exit3415

bb.bei:                                           ; preds = %bb.beg
  %.not.i.i5399 = icmp eq i32 %.val.i.i5398, 0
  br i1 %.not.i.i5399, label %lean_inc.exit3415, label %bb.bej

bb.bej:                                           ; preds = %bb.bei
  %i.cao = atomicrmw sub ptr %i.bg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3415

lean_inc.exit3415:                                ; preds = %bb.bej, %bb.bei, %bb.beh, %lean_inc.exit3417
  br i1 %.not.i3596, label %bb.bek, label %lean_inc.exit3413

bb.bek:                                           ; preds = %lean_inc.exit3415
  %.val.i.i5401 = load i32, ptr %i.ev, align 4, !tbaa !10 ; 3 uses
  %i.cap = icmp sgt i32 %.val.i.i5401, 0
  br i1 %i.cap, label %bb.bel, label %bb.bem, !prof !11

bb.bel:                                           ; preds = %bb.bek
  %i.caq = add nuw i32 %.val.i.i5401, 1
  store i32 %i.caq, ptr %i.ev, align 4, !tbaa !10
  br label %lean_inc.exit3413

bb.bem:                                           ; preds = %bb.bek
  %.not.i.i5402 = icmp eq i32 %.val.i.i5401, 0
  br i1 %.not.i.i5402, label %lean_inc.exit3413, label %bb.ben

bb.ben:                                           ; preds = %bb.bem
  %i.car = atomicrmw sub ptr %i.ev, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3413

lean_inc.exit3413:                                ; preds = %bb.ben, %bb.bem, %bb.bel, %lean_inc.exit3415
  %i.cas = tail call ptr @lean_alloc_object(i64 noundef 104) #7 ; 62 uses
  store i32 1, ptr %i.cas, align 4, !tbaa !10
  %i.cat = getelementptr inbounds nuw i8, ptr %i.cas, i64 4 ; 2 uses
  %i.cau = load i32, ptr %i.cat, align 4
  %i.cav = and i32 %i.cau, 65535
  %i.caw = or disjoint i32 %i.cav, -184549376
  store i32 %i.caw, ptr %i.cat, align 4
  %i.cax = getelementptr inbounds nuw i8, ptr %i.cas, i64 8
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__3___boxed, ptr %i.cax, align 8, !tbaa !14
  %i.cay = getelementptr inbounds nuw i8, ptr %i.cas, i64 16
  store i16 22, ptr %i.cay, align 8, !tbaa !22
  %i.caz = getelementptr inbounds nuw i8, ptr %i.cas, i64 18
  store i16 10, ptr %i.caz, align 2, !tbaa !22
  %i.cba = getelementptr inbounds nuw i8, ptr %i.cas, i64 24
  store ptr %i.ev, ptr %i.cba, align 8, !tbaa !14
  %i.cbb = getelementptr inbounds nuw i8, ptr %i.cas, i64 32
  store ptr %i.m, ptr %i.cbb, align 8, !tbaa !14
  %i.cbc = getelementptr inbounds nuw i8, ptr %i.cas, i64 40
  store ptr %i.caf, ptr %i.cbc, align 8, !tbaa !14
  %i.cbd = getelementptr inbounds nuw i8, ptr %i.cas, i64 48
  store ptr %i.bg, ptr %i.cbd, align 8, !tbaa !14
  %i.cbe = getelementptr inbounds nuw i8, ptr %i.cas, i64 56
  store <2 x ptr> <ptr @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__2_value, ptr @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct___closed__3_value>, ptr %i.cbe, align 8, !tbaa !14
  %i.cbf = getelementptr inbounds nuw i8, ptr %i.cas, i64 72
  store ptr %i.dj, ptr %i.cbf, align 8, !tbaa !14
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.cas, i64 80
  store ptr %3, ptr %i.cbg, align 8, !tbaa !14
  %i.cbh = getelementptr inbounds nuw i8, ptr %i.cas, i64 88
  store ptr %i.ge, ptr %i.cbh, align 8, !tbaa !14
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.cas, i64 96
  store ptr inttoptr (i64 3 to ptr), ptr %i.cbi, align 8, !tbaa !14
  br i1 %.not.i3420, label %bb.beo, label %lean_dec.exit3712

bb.beo:                                           ; preds = %lean_inc.exit3413
  %i.cbj = load i32, ptr %i.bzq, align 4, !tbaa !10 ; 3 uses
  %i.cbk = icmp sgt i32 %i.cbj, 1
  br i1 %i.cbk, label %bb.bep, label %bb.beq, !prof !11

bb.bep:                                           ; preds = %bb.beo
  %i.cbl = add nsw i32 %i.cbj, -1
  store i32 %i.cbl, ptr %i.bzq, align 4, !tbaa !10
  br label %lean_dec.exit3712

bb.beq:                                           ; preds = %bb.beo
  %.not.i4390 = icmp eq i32 %i.cbj, 0
  br i1 %.not.i4390, label %lean_dec.exit3712, label %bb.ber

bb.ber:                                           ; preds = %bb.beq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bzq) #7
  br label %lean_dec.exit3712

lean_dec.exit3712:                                ; preds = %bb.ber, %bb.beq, %bb.bep, %lean_inc.exit3413
  %i.cbm = and i64 %i.bzr, 510
  %i.cbn = icmp eq i64 %i.cbm, 0
  br i1 %i.cbn, label %lean_dec_ref_known.exit5345.thread, label %bb.bes

bb.bes:                                           ; preds = %lean_dec.exit3712
  %i.cbo = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__73_once seq_cst, align 4, !tbaa !20
  %i.cbp = icmp eq i32 %i.cbo, 1
  br i1 %i.cbp, label %bb.bet, label %bb.beu, !prof !11

bb.bet:                                           ; preds = %bb.bes
  %i.cbq = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__73, align 8, !tbaa !14
  br label %lean_obj_once.exit5405

bb.beu:                                           ; preds = %bb.bes
  %i.cbr = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__73, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__73_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__73) #7
  br label %lean_obj_once.exit5405

lean_obj_once.exit5405:                           ; preds = %bb.bet, %bb.beu
  %.0.i5404 = phi ptr [ %i.cbq, %bb.bet ], [ %i.cbr, %bb.beu ]
  br i1 %.not.i3592, label %bb.bev, label %lean_inc.exit3411

bb.bev:                                           ; preds = %lean_obj_once.exit5405
  %.val.i.i5406 = load i32, ptr %i.bg, align 4, !tbaa !10 ; 3 uses
  %i.cbs = icmp sgt i32 %.val.i.i5406, 0
  br i1 %i.cbs, label %bb.bew, label %bb.bex, !prof !11

bb.bew:                                           ; preds = %bb.bev
  %i.cbt = add nuw i32 %.val.i.i5406, 1
  store i32 %i.cbt, ptr %i.bg, align 4, !tbaa !10
  br label %lean_inc.exit3411

bb.bex:                                           ; preds = %bb.bev
  %.not.i.i5407 = icmp eq i32 %.val.i.i5406, 0
  br i1 %.not.i.i5407, label %lean_inc.exit3411, label %bb.bey

bb.bey:                                           ; preds = %bb.bex
  %i.cbu = atomicrmw sub ptr %i.bg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit3411

lean_inc.exit3411:                                ; preds = %bb.bey, %bb.bex, %bb.bew, %lean_obj_once.exit5405
  %i.cbv = tail call ptr @l_Lean_MessageData_ofName(ptr noundef %i.bg) #7
  tail call void @lean_inc_heartbeat() #7
  %i.cbw = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.cbx = icmp eq ptr %i.cbw, null
  br i1 %i.cbx, label %bb.bez, label %lean_alloc_ctor.exit5409

bb.bez:                                           ; preds = %lean_inc.exit3411
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit5409:                         ; preds = %lean_inc.exit3411
  %i.cby = getelementptr inbounds nuw i8, ptr %i.cbw, i64 4
  store i32 1, ptr %i.cbw, align 4, !tbaa !10
  store i32 117571608, ptr %i.cby, align 4
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.cbw, i64 8
  store ptr %.0.i5404, ptr %i.cbz, align 8, !tbaa !14
  %i.cca = getelementptr inbounds nuw i8, ptr %i.cbw, i64 16
  store ptr %i.cbv, ptr %i.cca, align 8, !tbaa !14
  %i.ccb = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__75_once seq_cst, align 4, !tbaa !20
  %i.ccc = icmp eq i32 %i.ccb, 1
  br i1 %i.ccc, label %bb.bfa, label %bb.bfb, !prof !11

bb.bfa:                                           ; preds = %lean_alloc_ctor.exit5409
  %i.ccd = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__75, align 8, !tbaa !14
  br label %lean_obj_once.exit5411

bb.bfb:                                           ; preds = %lean_alloc_ctor.exit5409
  %i.cce = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__75, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__75_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__75) #7
  br label %lean_obj_once.exit5411

lean_obj_once.exit5411:                           ; preds = %bb.bfa, %bb.bfb
  %.0.i5410 = phi ptr [ %i.ccd, %bb.bfa ], [ %i.cce, %bb.bfb ]
  tail call void @lean_inc_heartbeat() #7
  %i.ccf = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.ccg = icmp eq ptr %i.ccf, null
  br i1 %i.ccg, label %bb.bfc, label %bb.bcx

bb.bfc:                                           ; preds = %lean_obj_once.exit5411
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

bb.bfd:                                           ; preds = %lean_obj_tag.exit5452
  br i1 %.not.i4786, label %bb.bfe, label %lean_dec.exit3710

bb.bfe:                                           ; preds = %bb.bfd
  %i.cch = load i32, ptr %i.ge, align 4, !tbaa !10 ; 3 uses
  %i.cci = icmp sgt i32 %i.cch, 1
  br i1 %i.cci, label %bb.bff, label %bb.bfg, !prof !11

bb.bff:                                           ; preds = %bb.bfe
  %i.ccj = add nsw i32 %i.cch, -1
  store i32 %i.ccj, ptr %i.ge, align 4, !tbaa !10
  br label %lean_dec.exit3710

bb.bfg:                                           ; preds = %bb.bfe
end_hunk_22
begin_hunk_23_@l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie:bb.a

bb.br:                                            ; preds = %bb.bp
  %.not.i.i611 = icmp eq i32 %.val.i.i610, 0
  br i1 %.not.i.i611, label %lean_inc.exit418, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.cx = atomicrmw sub ptr %i.cs, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit418

lean_inc.exit418:                                 ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bo
  br i1 %.not.i606, label %bb.bt, label %lean_dec.exit493

bb.bt:                                            ; preds = %lean_inc.exit418
  %i.cy = load i32, ptr %i.cj, align 8, !tbaa !10 ; 3 uses
  %i.cz = icmp sgt i32 %i.cy, 1
  br i1 %i.cz, label %bb.bu, label %bb.bv, !prof !11

bb.bu:                                            ; preds = %bb.bt
  %i.da = add nsw i32 %i.cy, -1
  store i32 %i.da, ptr %i.cj, align 8, !tbaa !10
  br label %lean_dec.exit493

bb.bv:                                            ; preds = %bb.bt
  %.not.i501 = icmp eq i32 %i.cy, 0
  br i1 %.not.i501, label %lean_dec.exit493, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cj) #7
  br label %lean_dec.exit493

lean_dec.exit493:                                 ; preds = %bb.bn, %lean_inc.exit418, %bb.bu, %bb.bv, %bb.bw
  %.0408 = phi ptr [ inttoptr (i64 1 to ptr), %bb.bw ], [ inttoptr (i64 1 to ptr), %lean_inc.exit418 ], [ inttoptr (i64 1 to ptr), %bb.bu ], [ inttoptr (i64 1 to ptr), %bb.bv ], [ %i.cj, %bb.bn ] ; 6 uses
  %i.db = and i64 %.pre, 510
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %bb.bx, label %bb.gu

bb.bx:                                            ; preds = %lean_dec.exit493
  br i1 %.not.i421, label %bb.by, label %lean_inc.exit416

bb.by:                                            ; preds = %bb.bx
  %.val.i.i613 = load i32, ptr %i.br, align 4, !tbaa !10 ; 3 uses
  %i.dd = icmp sgt i32 %.val.i.i613, 0
  br i1 %i.dd, label %bb.bz, label %bb.ca, !prof !11

bb.bz:                                            ; preds = %bb.by
  %i.de = add nuw i32 %.val.i.i613, 1
  store i32 %i.de, ptr %i.br, align 4, !tbaa !10
  br label %lean_inc.exit416

bb.ca:                                            ; preds = %bb.by
  %.not.i.i614 = icmp eq i32 %.val.i.i613, 0
  br i1 %.not.i.i614, label %lean_inc.exit416, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.df = atomicrmw sub ptr %i.br, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit416

lean_inc.exit416:                                 ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.bx
  %i.dg = tail call ptr @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_HandlerTrie_find_x3f(ptr noundef %i.br, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__51_value, i8 noundef zeroext 0) ; 3 uses
  %i.dh = ptrtoint ptr %i.dg to i64               ; 2 uses
  %i.di = and i64 %i.dh, 1
  %.not.i616 = icmp eq i64 %i.di, 0
  br i1 %.not.i616, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %lean_inc.exit416
  %i.dj = lshr i64 %i.dh, 1
  %i.dk = trunc i64 %i.dj to i32
  br label %lean_obj_tag.exit619

bb.cd:                                            ; preds = %lean_inc.exit416
  %i.dl = getelementptr i8, ptr %i.dg, i64 4
  %.val.i618 = load i32, ptr %i.dl, align 4
  %i.dm = lshr i32 %.val.i618, 24
  br label %lean_obj_tag.exit619

lean_obj_tag.exit619:                             ; preds = %bb.cc, %bb.cd
  %.0.i617 = phi i32 [ %i.dk, %bb.cc ], [ %i.dm, %bb.cd ]
  %i.dn = icmp eq i32 %.0.i617, 0
  br i1 %i.dn, label %bb.ce, label %bb.ga

bb.ce:                                            ; preds = %lean_obj_tag.exit619
  %i.do = ptrtoint ptr %.0408 to i64
  %i.dp = and i64 %i.do, 1
  %.not.i620 = icmp eq i64 %i.dp, 0
  br i1 %.not.i620, label %bb.cf, label %lean_del_object.exit

bb.cf:                                            ; preds = %bb.ce
  tail call void @lean_free_object(ptr noundef nonnull %.0408) #7
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.ce, %bb.cf
  %i.dq = tail call ptr @l_Lean_mkConst(ptr noundef %3, ptr noundef nonnull inttoptr (i64 1 to ptr)) #7
  %i.dr = tail call ptr @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_hasInstance(ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__0_value, ptr noundef %i.dq, ptr noundef %5, ptr poison, ptr poison, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) ; 14 uses
  %i.ds = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.dt = and i64 %i.ds, 1
  %.not.i621 = icmp eq i64 %i.dt, 0               ; 3 uses
  br i1 %.not.i621, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %lean_del_object.exit
  %i.du = lshr i64 %i.ds, 1
  %i.dv = trunc i64 %i.du to i32
  br label %lean_obj_tag.exit624

bb.ch:                                            ; preds = %lean_del_object.exit
  %i.dw = getelementptr i8, ptr %i.dr, i64 4
  %.val.i623 = load i32, ptr %i.dw, align 4
  %i.dx = lshr i32 %.val.i623, 24
  br label %lean_obj_tag.exit624

lean_obj_tag.exit624:                             ; preds = %bb.cg, %bb.ch
  %.0.i622 = phi i32 [ %i.dv, %bb.cg ], [ %i.dx, %bb.ch ]
  %i.dy = icmp eq i32 %.0.i622, 0
  br i1 %i.dy, label %bb.ci, label %bb.ey

bb.ci:                                            ; preds = %lean_obj_tag.exit624
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !14 ; 7 uses
  %.val567 = load i32, ptr %i.dr, align 8, !tbaa !10
  %i.eb = icmp eq i32 %.val567, 1                 ; 3 uses
  %.pre675 = ptrtoint ptr %i.ea to i64            ; 2 uses
  %.pre677 = and i64 %.pre675, 1                  ; 2 uses
  br i1 %i.eb, label %lean_dec.exit491, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.not.i413 = icmp eq i64 %.pre677, 0
  br i1 %.not.i413, label %bb.ck, label %lean_inc.exit414

bb.ck:                                            ; preds = %bb.cj
  %.val.i.i625 = load i32, ptr %i.ea, align 4, !tbaa !10 ; 3 uses
  %i.ec = icmp sgt i32 %.val.i.i625, 0
  br i1 %i.ec, label %bb.cl, label %bb.cm, !prof !11

bb.cl:                                            ; preds = %bb.ck
  %i.ed = add nuw i32 %.val.i.i625, 1
  store i32 %i.ed, ptr %i.ea, align 4, !tbaa !10
  br label %lean_inc.exit414

bb.cm:                                            ; preds = %bb.ck
  %.not.i.i626 = icmp eq i32 %.val.i.i625, 0
  br i1 %.not.i.i626, label %lean_inc.exit414, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ee = atomicrmw sub ptr %i.ea, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit414

lean_inc.exit414:                                 ; preds = %bb.cn, %bb.cm, %bb.cl, %bb.cj
  br i1 %.not.i621, label %bb.co, label %lean_dec.exit491

bb.co:                                            ; preds = %lean_inc.exit414
  %i.ef = load i32, ptr %i.dr, align 8, !tbaa !10 ; 3 uses
  %i.eg = icmp sgt i32 %i.ef, 1
  br i1 %i.eg, label %bb.cp, label %bb.cq, !prof !11

bb.cp:                                            ; preds = %bb.co
  %i.eh = add nsw i32 %i.ef, -1
  store i32 %i.eh, ptr %i.dr, align 8, !tbaa !10
  br label %lean_dec.exit491

bb.cq:                                            ; preds = %bb.co
  %.not.i503 = icmp eq i32 %i.ef, 0
  br i1 %.not.i503, label %lean_dec.exit491, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dr) #7
  br label %lean_dec.exit491

lean_dec.exit491:                                 ; preds = %bb.ci, %lean_inc.exit414, %bb.cp, %bb.cq, %bb.cr
  %.0406 = phi ptr [ inttoptr (i64 1 to ptr), %bb.cr ], [ inttoptr (i64 1 to ptr), %lean_inc.exit414 ], [ inttoptr (i64 1 to ptr), %bb.cp ], [ inttoptr (i64 1 to ptr), %bb.cq ], [ %i.dr, %bb.ci ] ; 4 uses
  %.not.i488 = icmp eq i64 %.pre677, 0
  br i1 %.not.i488, label %bb.cs, label %lean_dec.exit489

bb.cs:                                            ; preds = %lean_dec.exit491
  %i.ei = load i32, ptr %i.ea, align 4, !tbaa !10 ; 3 uses
  %i.ej = icmp sgt i32 %i.ei, 1
  br i1 %i.ej, label %bb.ct, label %bb.cu, !prof !11

bb.ct:                                            ; preds = %bb.cs
  %i.ek = add nsw i32 %i.ei, -1
  store i32 %i.ek, ptr %i.ea, align 4, !tbaa !10
  br label %lean_dec.exit489

bb.cu:                                            ; preds = %bb.cs
  %.not.i505 = icmp eq i32 %i.ei, 0
  br i1 %.not.i505, label %lean_dec.exit489, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ea) #7
  br label %lean_dec.exit489

lean_dec.exit489:                                 ; preds = %bb.cv, %bb.cu, %bb.ct, %lean_dec.exit491
  %i.el = and i64 %.pre675, 510
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %bb.cw, label %bb.dm

bb.cw:                                            ; preds = %lean_dec.exit489
  %i.en = and i64 %.pre, 1
  %.not.i486 = icmp eq i64 %i.en, 0
  br i1 %.not.i486, label %bb.cx, label %lean_dec.exit487

bb.cx:                                            ; preds = %bb.cw
  %i.eo = load i32, ptr %i.cs, align 4, !tbaa !10 ; 3 uses
  %i.ep = icmp sgt i32 %i.eo, 1
  br i1 %i.ep, label %bb.cy, label %bb.cz, !prof !11

bb.cy:                                            ; preds = %bb.cx
  %i.eq = add nsw i32 %i.eo, -1
  store i32 %i.eq, ptr %i.cs, align 4, !tbaa !10
  br label %lean_dec.exit487

bb.cz:                                            ; preds = %bb.cx
  %.not.i507 = icmp eq i32 %i.eo, 0
  br i1 %.not.i507, label %lean_dec.exit487, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cs) #7
  br label %lean_dec.exit487

lean_dec.exit487:                                 ; preds = %bb.da, %bb.cz, %bb.cy, %bb.cw
  %i.er = ptrtoint ptr %.0400 to i64
  %i.es = and i64 %i.er, 1
  %.not.i628 = icmp eq i64 %i.es, 0
  br i1 %.not.i628, label %bb.db, label %lean_del_object.exit629

bb.db:                                            ; preds = %lean_dec.exit487
  tail call void @lean_free_object(ptr noundef nonnull %.0400) #7
  br label %lean_del_object.exit629

lean_del_object.exit629:                          ; preds = %lean_dec.exit487, %bb.db
  br i1 %.not.i423, label %bb.dc, label %lean_dec.exit485

bb.dc:                                            ; preds = %lean_del_object.exit629
  %i.et = load i32, ptr %1, align 4, !tbaa !10    ; 3 uses
  %i.eu = icmp sgt i32 %i.et, 1
  br i1 %i.eu, label %bb.dd, label %bb.de, !prof !11

bb.dd:                                            ; preds = %bb.dc
  %i.ev = add nsw i32 %i.et, -1
  store i32 %i.ev, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit485

bb.de:                                            ; preds = %bb.dc
  %.not.i509 = icmp eq i32 %i.et, 0
  br i1 %.not.i509, label %lean_dec.exit485, label %bb.df

bb.df:                                            ; preds = %bb.de
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit485

lean_dec.exit485:                                 ; preds = %bb.df, %bb.de, %bb.dd, %lean_del_object.exit629
  %i.ew = ptrtoint ptr %0 to i64
  %i.ex = and i64 %i.ew, 1
  %.not.i482 = icmp eq i64 %i.ex, 0
  br i1 %.not.i482, label %bb.dg, label %lean_dec.exit483

bb.dg:                                            ; preds = %lean_dec.exit485
  %i.ey = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.ez = icmp sgt i32 %i.ey, 1
  br i1 %i.ez, label %bb.dh, label %bb.di, !prof !11

bb.dh:                                            ; preds = %bb.dg
  %i.fa = add nsw i32 %i.ey, -1
  store i32 %i.fa, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit483

bb.di:                                            ; preds = %bb.dg
  %.not.i511 = icmp eq i32 %i.ey, 0
  br i1 %.not.i511, label %lean_dec.exit483, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit483

lean_dec.exit483:                                 ; preds = %bb.dj, %bb.di, %bb.dh, %lean_dec.exit485
  br i1 %i.eb, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %lean_dec.exit483
  %i.fb = getelementptr inbounds nuw i8, ptr %.0406, i64 8
  store ptr %i.br, ptr %i.fb, align 8, !tbaa !14
  br label %lean_dec.exit471

bb.dl:                                            ; preds = %lean_dec.exit483
  %i.fc = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr %i.br, ptr %i.fd, align 8, !tbaa !14
  br label %lean_dec.exit471

bb.dm:                                            ; preds = %lean_dec.exit489
  %i.fe = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !14
  %i.fg = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !14 ; 9 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !14 ; 9 uses
  %i.fk = and i64 %.pre, 1
  %.not.i480 = icmp eq i64 %i.fk, 0
  br i1 %.not.i480, label %bb.dn, label %lean_dec.exit481

bb.dn:                                            ; preds = %bb.dm
  %i.fl = load i32, ptr %i.cs, align 4, !tbaa !10 ; 3 uses
  %i.fm = icmp sgt i32 %i.fl, 1
  br i1 %i.fm, label %bb.do, label %bb.dp, !prof !11

bb.do:                                            ; preds = %bb.dn
  %i.fn = add nsw i32 %i.fl, -1
  store i32 %i.fn, ptr %i.cs, align 4, !tbaa !10
  br label %lean_dec.exit481

bb.dp:                                            ; preds = %bb.dn
  %.not.i513 = icmp eq i32 %i.fl, 0
  br i1 %.not.i513, label %lean_dec.exit481, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cs) #7
  br label %lean_dec.exit481

lean_dec.exit481:                                 ; preds = %bb.dq, %bb.dp, %bb.do, %bb.dm
  %i.fo = tail call ptr @l_Lean_SourceInfo_fromRef(ptr noundef %i.ff, i8 noundef zeroext 0) #7 ; 36 uses
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = and i64 %i.fp, 1
  %.not.i411 = icmp eq i64 %i.fq, 0               ; 2 uses
  br i1 %.not.i411, label %bb.dr, label %lean_inc.exit412

bb.dr:                                            ; preds = %lean_dec.exit481
  %.val.i.i630 = load i32, ptr %i.fo, align 4, !tbaa !10 ; 3 uses
  %i.fr = icmp sgt i32 %.val.i.i630, 0
  br i1 %i.fr, label %bb.ds, label %bb.dt, !prof !11

bb.ds:                                            ; preds = %bb.dr
  %i.fs = add nuw i32 %.val.i.i630, 1
  store i32 %i.fs, ptr %i.fo, align 4, !tbaa !10
  br label %lean_inc.exit412

bb.dt:                                            ; preds = %bb.dr
  %.not.i.i631 = icmp eq i32 %.val.i.i630, 0
  br i1 %.not.i.i631, label %lean_inc.exit412, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ft = atomicrmw sub ptr %i.fo, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit412

lean_inc.exit412:                                 ; preds = %bb.du, %bb.dt, %bb.ds, %lean_dec.exit481
  br i1 %i.c, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %lean_inc.exit412
  %i.fu = getelementptr inbounds nuw i8, ptr %.0400, i64 4 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4
  %i.fw = and i32 %i.fv, 16777215
  %i.fx = or disjoint i32 %i.fw, 33554432
  store i32 %i.fx, ptr %i.fu, align 4
  %i.fy = getelementptr inbounds nuw i8, ptr %.0400, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %.0400, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__8_value, ptr %i.fz, align 8, !tbaa !14
  store ptr %i.fo, ptr %i.fy, align 8, !tbaa !14
  br label %bb.dx

bb.dw:                                            ; preds = %lean_inc.exit412
  %i.ga = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr %i.fo, ptr %i.gb, align 8, !tbaa !14
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__8_value, ptr %i.gc, align 8, !tbaa !14
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.0403 = phi ptr [ %.0400, %bb.dv ], [ %i.ga, %bb.dw ]
  br i1 %.not.i411, label %bb.dy, label %lean_inc_n.exit

bb.dy:                                            ; preds = %bb.dx
  %.val.i.i634 = load i32, ptr %i.fo, align 4, !tbaa !10 ; 3 uses
  %i.gd = icmp sgt i32 %.val.i.i634, 0
  br i1 %i.gd, label %bb.dz, label %bb.ea, !prof !11

bb.dz:                                            ; preds = %bb.dy
  %i.ge = add nuw i32 %.val.i.i634, 26
  store i32 %i.ge, ptr %i.fo, align 4, !tbaa !10
  br label %lean_inc_n.exit

bb.ea:                                            ; preds = %bb.dy
  %.not.i.i635 = icmp eq i32 %.val.i.i634, 0
  br i1 %.not.i.i635, label %lean_inc_n.exit, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.gf = atomicrmw sub ptr %i.fo, i32 26 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit

lean_inc_n.exit:                                  ; preds = %bb.dx, %bb.dz, %bb.ea, %bb.eb
  %i.gg = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store ptr %i.fo, ptr %i.gh, align 8, !tbaa !14
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__11_value, ptr %i.gi, align 8, !tbaa !14
  %i.gj = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.fo, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__3_value, ptr noundef nonnull %i.gg) #7
  %i.gk = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__0_once seq_cst, align 4, !tbaa !20
  %i.gl = icmp eq i32 %i.gk, 1
  br i1 %i.gl, label %bb.ec, label %bb.ed, !prof !11

bb.ec:                                            ; preds = %lean_inc_n.exit
  %i.gm = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__0, align 8, !tbaa !14
  br label %lean_obj_once.exit

bb.ed:                                            ; preds = %lean_inc_n.exit
  %i.gn = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__0, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__0_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__0) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.ec, %bb.ed
  %.0.i636 = phi ptr [ %i.gm, %bb.ec ], [ %i.gn, %bb.ed ]
  %i.go = ptrtoint ptr %i.fj to i64
  %i.gp = and i64 %i.go, 1
  %.not.i637 = icmp eq i64 %i.gp, 0
  br i1 %.not.i637, label %bb.ee, label %lean_inc_n.exit640

bb.ee:                                            ; preds = %lean_obj_once.exit
  %.val.i.i638 = load i32, ptr %i.fj, align 4, !tbaa !10 ; 3 uses
  %i.gq = icmp sgt i32 %.val.i.i638, 0
  br i1 %i.gq, label %bb.ef, label %bb.eg, !prof !11

bb.ef:                                            ; preds = %bb.ee
  %i.gr = add nuw i32 %.val.i.i638, 5
  store i32 %i.gr, ptr %i.fj, align 4, !tbaa !10
  br label %lean_inc_n.exit640

bb.eg:                                            ; preds = %bb.ee
  %.not.i.i639 = icmp eq i32 %.val.i.i638, 0
  br i1 %.not.i.i639, label %lean_inc_n.exit640, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.gs = atomicrmw sub ptr %i.fj, i32 5 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit640

lean_inc_n.exit640:                               ; preds = %lean_obj_once.exit, %bb.ef, %bb.eg, %bb.eh
  %i.gt = ptrtoint ptr %i.fh to i64
  %i.gu = and i64 %i.gt, 1
  %.not.i641 = icmp eq i64 %i.gu, 0
  br i1 %.not.i641, label %bb.ei, label %lean_inc_n.exit644

bb.ei:                                            ; preds = %lean_inc_n.exit640
  %.val.i.i642 = load i32, ptr %i.fh, align 4, !tbaa !10 ; 3 uses
  %i.gv = icmp sgt i32 %.val.i.i642, 0
  br i1 %i.gv, label %bb.ej, label %bb.ek, !prof !11

bb.ej:                                            ; preds = %bb.ei
  %i.gw = add nuw i32 %.val.i.i642, 5
  store i32 %i.gw, ptr %i.fh, align 4, !tbaa !10
  br label %lean_inc_n.exit644

bb.ek:                                            ; preds = %bb.ei
  %.not.i.i643 = icmp eq i32 %.val.i.i642, 0
  br i1 %.not.i.i643, label %lean_inc_n.exit644, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.gx = atomicrmw sub ptr %i.fh, i32 5 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit644

lean_inc_n.exit644:                               ; preds = %lean_inc_n.exit640, %bb.ej, %bb.ek, %bb.el
  %i.gy = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.fh, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__1_value, ptr noundef %i.fj) #7
  %i.gz = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr %i.fo, ptr %i.ha, align 8, !tbaa !14
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store ptr %.0.i636, ptr %i.hb, align 8, !tbaa !14
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  store ptr %i.gy, ptr %i.hc, align 8, !tbaa !14
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.hd, align 8, !tbaa !14
  %i.he = tail call ptr @l_Lean_Syntax_node2(ptr noundef %i.fo, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef %i.gj, ptr noundef nonnull %i.gz) #7
  %i.hf = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__59_once seq_cst, align 4, !tbaa !20
  %i.hg = icmp eq i32 %i.hf, 1
  br i1 %i.hg, label %bb.em, label %bb.en, !prof !11

bb.em:                                            ; preds = %lean_inc_n.exit644
  %i.hh = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__59, align 8, !tbaa !14
  br label %lean_obj_once.exit646

bb.en:                                            ; preds = %lean_inc_n.exit644
  %i.hi = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__59, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__59_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__59) #7
  br label %lean_obj_once.exit646

lean_obj_once.exit646:                            ; preds = %bb.em, %bb.en
  %.0.i645 = phi ptr [ %i.hh, %bb.em ], [ %i.hi, %bb.en ]
  %i.hj = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 3, i32 noundef 0) ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store ptr %i.fo, ptr %i.hk, align 8, !tbaa !14
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr %i.hl, align 8, !tbaa !14
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  store ptr %.0.i645, ptr %i.hm, align 8, !tbaa !14
  %i.hn = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store ptr %i.fo, ptr %i.ho, align 8, !tbaa !14
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___lam__2___closed__12_value, ptr %i.hp, align 8, !tbaa !14
  %i.hq = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store ptr %i.fo, ptr %i.hr, align 8, !tbaa !14
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store ptr @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__8_value, ptr %i.hs, align 8, !tbaa !14
  %i.ht = load atomic i32, ptr @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__11_once seq_cst, align 4, !tbaa !20
  %i.hu = icmp eq i32 %i.ht, 1
  br i1 %i.hu, label %bb.eo, label %bb.ep, !prof !11

bb.eo:                                            ; preds = %lean_obj_once.exit646
  %i.hv = load ptr, ptr @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__11, align 8, !tbaa !14
  br label %lean_obj_once.exit648

bb.ep:                                            ; preds = %lean_obj_once.exit646
  %i.hw = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__11, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__11_once, ptr noundef nonnull @_init_l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__11) #7
  br label %lean_obj_once.exit648

lean_obj_once.exit648:                            ; preds = %bb.eo, %bb.ep
  %.0.i647 = phi ptr [ %i.hv, %bb.eo ], [ %i.hw, %bb.ep ]
  %i.hx = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.fh, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %i.fj) #7
  %i.hy = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store ptr %i.fo, ptr %i.hz, align 8, !tbaa !14
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  store ptr %.0.i647, ptr %i.ia, align 8, !tbaa !14
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  store ptr %i.hx, ptr %i.ib, align 8, !tbaa !14
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  store ptr @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__28_value, ptr %i.ic, align 8, !tbaa !14
  %i.id = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.fo, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__10_value, ptr noundef nonnull %i.hy) #7
  %i.ie = tail call ptr @l_Lean_Syntax_node2(ptr noundef %i.fo, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__7_value, ptr noundef nonnull %i.hq, ptr noundef %i.id) #7
  %i.if = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__9_once seq_cst, align 4, !tbaa !20
  %i.ig = icmp eq i32 %i.if, 1
  br i1 %i.ig, label %bb.eq, label %bb.er, !prof !11

bb.eq:                                            ; preds = %lean_obj_once.exit648
  %i.ih = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__9, align 8, !tbaa !14
  br label %lean_obj_once.exit650

bb.er:                                            ; preds = %lean_obj_once.exit648
  %i.ii = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__9, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__9_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__9) #7
  br label %lean_obj_once.exit650

lean_obj_once.exit650:                            ; preds = %bb.eq, %bb.er
  %.0.i649 = phi ptr [ %i.ih, %bb.eq ], [ %i.ii, %bb.er ]
  %i.ij = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.fh, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__10_value, ptr noundef %i.fj) #7
  %i.ik = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store ptr %i.fo, ptr %i.il, align 8, !tbaa !14
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store ptr %.0.i649, ptr %i.im, align 8, !tbaa !14
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  store ptr %i.ij, ptr %i.in, align 8, !tbaa !14
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  store ptr @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__31_value, ptr %i.io, align 8, !tbaa !14
  %i.ip = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  store ptr %i.fo, ptr %i.iq, align 8, !tbaa !14
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__12_value, ptr %i.ir, align 8, !tbaa !14
  %i.is = load atomic i32, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14_once seq_cst, align 4, !tbaa !20
  %i.it = icmp eq i32 %i.is, 1
  br i1 %i.it, label %bb.es, label %bb.et, !prof !11

bb.es:                                            ; preds = %lean_obj_once.exit650
  %i.iu = load ptr, ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14, align 8, !tbaa !14
  br label %lean_obj_once.exit652

bb.et:                                            ; preds = %lean_obj_once.exit650
  %i.iv = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14_once, ptr noundef nonnull @_init_l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__14) #7
  br label %lean_obj_once.exit652

lean_obj_once.exit652:                            ; preds = %bb.es, %bb.et
  %.0.i651 = phi ptr [ %i.iu, %bb.es ], [ %i.iv, %bb.et ]
  %i.iw = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.fh, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__33_value, ptr noundef %i.fj) #7
  %i.ix = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store ptr %i.fo, ptr %i.iy, align 8, !tbaa !14
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  store ptr %.0.i651, ptr %i.iz, align 8, !tbaa !14
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  store ptr %i.iw, ptr %i.ja, align 8, !tbaa !14
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.jb, align 8, !tbaa !14
  %i.jc = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.fo, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef nonnull %i.ix) #7
  %i.jd = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store ptr %i.fo, ptr %i.je, align 8, !tbaa !14
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__15_value, ptr %i.jf, align 8, !tbaa !14
  %i.jg = tail call ptr @l_Lean_Syntax_node3(ptr noundef %i.fo, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__32_value, ptr noundef nonnull %i.ip, ptr noundef %i.jc, ptr noundef nonnull %i.jd) #7
  %i.jh = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.fo, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef %i.jg) #7
  %i.ji = tail call ptr @l_Lean_Syntax_node2(ptr noundef %i.fo, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__36_value, ptr noundef nonnull %i.ik, ptr noundef %i.jh) #7
  %i.jj = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store ptr %i.fo, ptr %i.jk, align 8, !tbaa !14
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store ptr @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__34_value, ptr %i.jl, align 8, !tbaa !14
  %i.jm = load atomic i32, ptr @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__36_once seq_cst, align 4, !tbaa !20
  %i.jn = icmp eq i32 %i.jm, 1
  br i1 %i.jn, label %bb.eu, label %bb.ev, !prof !11

bb.eu:                                            ; preds = %lean_obj_once.exit652
  %i.jo = load ptr, ptr @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__36, align 8, !tbaa !14
  br label %lean_obj_once.exit654

bb.ev:                                            ; preds = %lean_obj_once.exit652
  %i.jp = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__36, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__36_once, ptr noundef nonnull @_init_l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__36) #7
  br label %lean_obj_once.exit654

lean_obj_once.exit654:                            ; preds = %bb.eu, %bb.ev
  %.0.i653 = phi ptr [ %i.jo, %bb.eu ], [ %i.jp, %bb.ev ]
  %i.jq = tail call ptr @l_Lean_addMacroScope(ptr noundef %i.fh, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__37_value, ptr noundef %i.fj) #7
  %i.jr = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 3, i32 noundef 4, i32 noundef 0) ; 5 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store ptr %i.fo, ptr %i.js, align 8, !tbaa !14
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  store ptr %.0.i653, ptr %i.jt, align 8, !tbaa !14
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  store ptr %i.jq, ptr %i.ju, align 8, !tbaa !14
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  store ptr @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__42_value, ptr %i.jv, align 8, !tbaa !14
  %i.jw = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.fo, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef %1) #7
  %i.jx = tail call ptr @l_Lean_Syntax_node2(ptr noundef %i.fo, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__36_value, ptr noundef nonnull %i.jr, ptr noundef %i.jw) #7
  %i.jy = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.fo, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__45_value, ptr noundef %i.jx) #7
  %i.jz = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store ptr %i.fo, ptr %i.ka, align 8, !tbaa !14
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store ptr @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__43_value, ptr %i.kb, align 8, !tbaa !14
  %i.kc = tail call ptr @l_Lean_Syntax_node5(ptr noundef %i.fo, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__5_value, ptr noundef %i.ie, ptr noundef %i.ji, ptr noundef nonnull %i.jj, ptr noundef %i.jy, ptr noundef nonnull %i.jz) #7
  %i.kd = tail call ptr @l_Lean_Syntax_node4(ptr noundef %i.fo, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__2_value, ptr noundef %i.he, ptr noundef nonnull %i.hj, ptr noundef nonnull %i.hn, ptr noundef %i.kc) #7
  %i.ke = tail call ptr @l_Lean_Syntax_node2(ptr noundef %i.fo, ptr noundef nonnull @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_mkTrie___closed__1_value, ptr noundef nonnull %.0403, ptr noundef %i.kd) #7
  %i.kf = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 5, i32 noundef 1) ; 7 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store ptr %0, ptr %i.kg, align 8, !tbaa !14
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  store ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__51_value, ptr %i.kh, align 8, !tbaa !14
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  store ptr %i.ke, ptr %i.ki, align 8, !tbaa !14
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.kj, align 8, !tbaa !14
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kf, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %i.kk, align 8, !tbaa !14
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kf, i64 48
  store i8 0, ptr %i.kl, align 8, !tbaa !18
  %i.km = tail call ptr @l___private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_HandlerTrie_insert(ptr noundef %i.br, ptr noundef nonnull %i.kf, ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Elab_ConfigEval_DeriveEvalConfigItem_0__Lean_Elab_ConfigEval_defEvalConfigItem_visitStruct_spec__2___closed__51_value) ; 2 uses
  br i1 %i.eb, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %lean_obj_once.exit654
  %i.kn = getelementptr inbounds nuw i8, ptr %.0406, i64 8
  store ptr %i.km, ptr %i.kn, align 8, !tbaa !14
  br label %lean_dec.exit471

bb.ex:                                            ; preds = %lean_obj_once.exit654
  %i.ko = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store ptr %i.km, ptr %i.kp, align 8, !tbaa !14
  br label %lean_dec.exit471

bb.ey:                                            ; preds = %lean_obj_tag.exit624
  %i.kq = and i64 %.pre, 1
  %.not.i478 = icmp eq i64 %i.kq, 0
  br i1 %.not.i478, label %bb.ez, label %lean_dec.exit479

bb.ez:                                            ; preds = %bb.ey
  %i.kr = load i32, ptr %i.cs, align 4, !tbaa !10 ; 3 uses
  %i.ks = icmp sgt i32 %i.kr, 1
  br i1 %i.ks, label %bb.fa, label %bb.fb, !prof !11

bb.fa:                                            ; preds = %bb.ez
  %i.kt = add nsw i32 %i.kr, -1
  store i32 %i.kt, ptr %i.cs, align 4, !tbaa !10
  br label %lean_dec.exit479

bb.fb:                                            ; preds = %bb.ez
  %.not.i515 = icmp eq i32 %i.kr, 0
  br i1 %.not.i515, label %lean_dec.exit479, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cs) #7
  br label %lean_dec.exit479

lean_dec.exit479:                                 ; preds = %bb.fc, %bb.fb, %bb.fa, %bb.ey
  br i1 %.not.i421, label %bb.fd, label %lean_dec.exit477

bb.fd:                                            ; preds = %lean_dec.exit479
  %i.ku = load i32, ptr %i.br, align 4, !tbaa !10 ; 3 uses
  %i.kv = icmp sgt i32 %i.ku, 1
  br i1 %i.kv, label %bb.fe, label %bb.ff, !prof !11

bb.fe:                                            ; preds = %bb.fd
  %i.kw = add nsw i32 %i.ku, -1
  store i32 %i.kw, ptr %i.br, align 4, !tbaa !10
  br label %lean_dec.exit477

bb.ff:                                            ; preds = %bb.fd
  %.not.i517 = icmp eq i32 %i.ku, 0
  br i1 %.not.i517, label %lean_dec.exit477, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #7
  br label %lean_dec.exit477

lean_dec.exit477:                                 ; preds = %bb.fg, %bb.ff, %bb.fe, %lean_dec.exit479
  %i.kx = ptrtoint ptr %.0400 to i64
  %i.ky = and i64 %i.kx, 1
  %.not.i655 = icmp eq i64 %i.ky, 0
  br i1 %.not.i655, label %bb.fh, label %lean_del_object.exit656

bb.fh:                                            ; preds = %lean_dec.exit477
  tail call void @lean_free_object(ptr noundef nonnull %.0400) #7
  br label %lean_del_object.exit656

lean_del_object.exit656:                          ; preds = %lean_dec.exit477, %bb.fh
  br i1 %.not.i423, label %bb.fi, label %lean_dec.exit475

bb.fi:                                            ; preds = %lean_del_object.exit656
  %i.kz = load i32, ptr %1, align 4, !tbaa !10    ; 3 uses
  %i.la = icmp sgt i32 %i.kz, 1
  br i1 %i.la, label %bb.fj, label %bb.fk, !prof !11

bb.fj:                                            ; preds = %bb.fi
  %i.lb = add nsw i32 %i.kz, -1
  store i32 %i.lb, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit475

bb.fk:                                            ; preds = %bb.fi
  %.not.i519 = icmp eq i32 %i.kz, 0
  br i1 %.not.i519, label %lean_dec.exit475, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit475

lean_dec.exit475:                                 ; preds = %bb.fl, %bb.fk, %bb.fj, %lean_del_object.exit656
  %i.lc = ptrtoint ptr %0 to i64
  %i.ld = and i64 %i.lc, 1
  %.not.i472 = icmp eq i64 %i.ld, 0
  br i1 %.not.i472, label %bb.fm, label %lean_dec.exit473

bb.fm:                                            ; preds = %lean_dec.exit475
  %i.le = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.lf = icmp sgt i32 %i.le, 1
  br i1 %i.lf, label %bb.fn, label %bb.fo, !prof !11

bb.fn:                                            ; preds = %bb.fm
  %i.lg = add nsw i32 %i.le, -1
  store i32 %i.lg, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit473

bb.fo:                                            ; preds = %bb.fm
  %.not.i521 = icmp eq i32 %i.le, 0
  br i1 %.not.i521, label %lean_dec.exit473, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit473

lean_dec.exit473:                                 ; preds = %bb.fp, %bb.fo, %bb.fn, %lean_dec.exit475
  %i.lh = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !14 ; 5 uses
  %.val566 = load i32, ptr %i.dr, align 8, !tbaa !10
  %i.lj = icmp eq i32 %.val566, 1
  br i1 %i.lj, label %lean_dec.exit471, label %bb.fq

bb.fq:                                            ; preds = %lean_dec.exit473
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = and i64 %i.lk, 1
  %.not.i409 = icmp eq i64 %i.ll, 0
  br i1 %.not.i409, label %bb.fr, label %lean_inc.exit410

bb.fr:                                            ; preds = %bb.fq
  %.val.i.i657 = load i32, ptr %i.li, align 4, !tbaa !10 ; 3 uses
  %i.lm = icmp sgt i32 %.val.i.i657, 0
  br i1 %i.lm, label %bb.fs, label %bb.ft, !prof !11

bb.fs:                                            ; preds = %bb.fr
  %i.ln = add nuw i32 %.val.i.i657, 1
  store i32 %i.ln, ptr %i.li, align 4, !tbaa !10
  br label %lean_inc.exit410

bb.ft:                                            ; preds = %bb.fr
  %.not.i.i658 = icmp eq i32 %.val.i.i657, 0
  br i1 %.not.i.i658, label %lean_inc.exit410, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.lo = atomicrmw sub ptr %i.li, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit410

lean_inc.exit410:                                 ; preds = %bb.fu, %bb.ft, %bb.fs, %bb.fq
  br i1 %.not.i621, label %bb.fv, label %bb.fz

bb.fv:                                            ; preds = %lean_inc.exit410
  %i.lp = load i32, ptr %i.dr, align 8, !tbaa !10 ; 3 uses
  %i.lq = icmp sgt i32 %i.lp, 1
  br i1 %i.lq, label %bb.fw, label %bb.fx, !prof !11

bb.fw:                                            ; preds = %bb.fv
  %i.lr = add nsw i32 %i.lp, -1
  store i32 %i.lr, ptr %i.dr, align 8, !tbaa !10
  br label %bb.fz

bb.fx:                                            ; preds = %bb.fv
  %.not.i523 = icmp eq i32 %i.lp, 0
  br i1 %.not.i523, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dr) #7
  br label %bb.fz

bb.fz:                                            ; preds = %lean_inc.exit410, %bb.fw, %bb.fx, %bb.fy
  %i.ls = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store ptr %i.li, ptr %i.lt, align 8, !tbaa !14
  br label %lean_dec.exit471

bb.ga:                                            ; preds = %lean_obj_tag.exit619
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.dg, i32 noundef 1)
  %i.lu = and i64 %.pre, 1
  %.not.i468 = icmp eq i64 %i.lu, 0
  br i1 %.not.i468, label %bb.gb, label %lean_dec.exit469

bb.gb:                                            ; preds = %bb.ga
  %i.lv = load i32, ptr %i.cs, align 4, !tbaa !10 ; 3 uses
  %i.lw = icmp sgt i32 %i.lv, 1
  br i1 %i.lw, label %bb.gc, label %bb.gd, !prof !11

bb.gc:                                            ; preds = %bb.gb
  %i.lx = add nsw i32 %i.lv, -1
  store i32 %i.lx, ptr %i.cs, align 4, !tbaa !10
  br label %lean_dec.exit469

bb.gd:                                            ; preds = %bb.gb
  %.not.i525 = icmp eq i32 %i.lv, 0
  br i1 %.not.i525, label %lean_dec.exit469, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cs) #7
  br label %lean_dec.exit469

lean_dec.exit469:                                 ; preds = %bb.ge, %bb.gd, %bb.gc, %bb.ga
  %i.ly = ptrtoint ptr %.0400 to i64
  %i.lz = and i64 %i.ly, 1
  %.not.i660 = icmp eq i64 %i.lz, 0
  br i1 %.not.i660, label %bb.gf, label %lean_del_object.exit661

bb.gf:                                            ; preds = %lean_dec.exit469
  tail call void @lean_free_object(ptr noundef nonnull %.0400) #7
  br label %lean_del_object.exit661

lean_del_object.exit661:                          ; preds = %lean_dec.exit469, %bb.gf
  br i1 %.not.i429, label %bb.gg, label %lean_dec.exit467

bb.gg:                                            ; preds = %lean_del_object.exit661
  %i.ma = load i32, ptr %3, align 4, !tbaa !10    ; 3 uses
  %i.mb = icmp sgt i32 %i.ma, 1
  br i1 %i.mb, label %bb.gh, label %bb.gi, !prof !11

bb.gh:                                            ; preds = %bb.gg
  %i.mc = add nsw i32 %i.ma, -1
  store i32 %i.mc, ptr %3, align 4, !tbaa !10
  br label %lean_dec.exit467

bb.gi:                                            ; preds = %bb.gg
  %.not.i527 = icmp eq i32 %i.ma, 0
  br i1 %.not.i527, label %lean_dec.exit467, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_dec.exit467

lean_dec.exit467:                                 ; preds = %bb.gj, %bb.gi, %bb.gh, %lean_del_object.exit661
  br i1 %.not.i423, label %bb.gk, label %lean_dec.exit465

bb.gk:                                            ; preds = %lean_dec.exit467
  %i.md = load i32, ptr %1, align 4, !tbaa !10    ; 3 uses
  %i.me = icmp sgt i32 %i.md, 1
  br i1 %i.me, label %bb.gl, label %bb.gm, !prof !11

bb.gl:                                            ; preds = %bb.gk
  %i.mf = add nsw i32 %i.md, -1
  store i32 %i.mf, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit465

bb.gm:                                            ; preds = %bb.gk
  %.not.i529 = icmp eq i32 %i.md, 0
  br i1 %.not.i529, label %lean_dec.exit465, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit465

lean_dec.exit465:                                 ; preds = %bb.gn, %bb.gm, %bb.gl, %lean_dec.exit467
  %i.mg = ptrtoint ptr %0 to i64
  %i.mh = and i64 %i.mg, 1
  %.not.i462 = icmp eq i64 %i.mh, 0
  br i1 %.not.i462, label %bb.go, label %lean_dec.exit463

bb.go:                                            ; preds = %lean_dec.exit465
  %i.mi = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.mj = icmp sgt i32 %i.mi, 1
  br i1 %i.mj, label %bb.gp, label %bb.gq, !prof !11

bb.gp:                                            ; preds = %bb.go
  %i.mk = add nsw i32 %i.mi, -1
  store i32 %i.mk, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit463

bb.gq:                                            ; preds = %bb.go
  %.not.i531 = icmp eq i32 %i.mi, 0
  br i1 %.not.i531, label %lean_dec.exit463, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit463

lean_dec.exit463:                                 ; preds = %bb.gr, %bb.gq, %bb.gp, %lean_dec.exit465
  br i1 %i.ct, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %lean_dec.exit463
  %i.ml = getelementptr inbounds nuw i8, ptr %.0408, i64 8
  store ptr %i.br, ptr %i.ml, align 8, !tbaa !14
  br label %lean_dec.exit471

bb.gt:                                            ; preds = %lean_dec.exit463
  %i.mm = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  store ptr %i.br, ptr %i.mn, align 8, !tbaa !14
  br label %lean_dec.exit471

bb.gu:                                            ; preds = %lean_dec.exit493
  %i.mo = and i64 %.pre, 1
  %.not.i460 = icmp eq i64 %i.mo, 0
  br i1 %.not.i460, label %bb.gv, label %lean_dec.exit461

bb.gv:                                            ; preds = %bb.gu
  %i.mp = load i32, ptr %i.cs, align 4, !tbaa !10 ; 3 uses
  %i.mq = icmp sgt i32 %i.mp, 1
  br i1 %i.mq, label %bb.gw, label %bb.gx, !prof !11

bb.gw:                                            ; preds = %bb.gv
  %i.mr = add nsw i32 %i.mp, -1
  store i32 %i.mr, ptr %i.cs, align 4, !tbaa !10
  br label %lean_dec.exit461

bb.gx:                                            ; preds = %bb.gv
  %.not.i533 = icmp eq i32 %i.mp, 0
  br i1 %.not.i533, label %lean_dec.exit461, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cs) #7
  br label %lean_dec.exit461

lean_dec.exit461:                                 ; preds = %bb.gy, %bb.gx, %bb.gw, %bb.gu
  %i.ms = ptrtoint ptr %.0400 to i64
  %i.mt = and i64 %i.ms, 1
  %.not.i662 = icmp eq i64 %i.mt, 0
  br i1 %.not.i662, label %bb.gz, label %lean_del_object.exit663

bb.gz:                                            ; preds = %lean_dec.exit461
  tail call void @lean_free_object(ptr noundef nonnull %.0400) #7
  br label %lean_del_object.exit663

lean_del_object.exit663:                          ; preds = %lean_dec.exit461, %bb.gz
  br i1 %.not.i429, label %bb.ha, label %lean_dec.exit459

bb.ha:                                            ; preds = %lean_del_object.exit663
  %i.mu = load i32, ptr %3, align 4, !tbaa !10    ; 3 uses
  %i.mv = icmp sgt i32 %i.mu, 1
  br i1 %i.mv, label %bb.hb, label %bb.hc, !prof !11

bb.hb:                                            ; preds = %bb.ha
  %i.mw = add nsw i32 %i.mu, -1
  store i32 %i.mw, ptr %3, align 4, !tbaa !10
  br label %lean_dec.exit459

bb.hc:                                            ; preds = %bb.ha
  %.not.i535 = icmp eq i32 %i.mu, 0
  br i1 %.not.i535, label %lean_dec.exit459, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #7
  br label %lean_dec.exit459

lean_dec.exit459:                                 ; preds = %bb.hd, %bb.hc, %bb.hb, %lean_del_object.exit663
  br i1 %.not.i423, label %bb.he, label %lean_dec.exit457

bb.he:                                            ; preds = %lean_dec.exit459
  %i.mx = load i32, ptr %1, align 4, !tbaa !10    ; 3 uses
  %i.my = icmp sgt i32 %i.mx, 1
  br i1 %i.my, label %bb.hf, label %bb.hg, !prof !11

bb.hf:                                            ; preds = %bb.he
  %i.mz = add nsw i32 %i.mx, -1
  store i32 %i.mz, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit457

bb.hg:                                            ; preds = %bb.he
  %.not.i537 = icmp eq i32 %i.mx, 0
  br i1 %.not.i537, label %lean_dec.exit457, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #7
  br label %lean_dec.exit457

lean_dec.exit457:                                 ; preds = %bb.hh, %bb.hg, %bb.hf, %lean_dec.exit459
  %i.na = ptrtoint ptr %0 to i64
  %i.nb = and i64 %i.na, 1
  %.not.i454 = icmp eq i64 %i.nb, 0
  br i1 %.not.i454, label %bb.hi, label %lean_dec.exit455

bb.hi:                                            ; preds = %lean_dec.exit457
  %i.nc = load i32, ptr %0, align 4, !tbaa !10    ; 3 uses
  %i.nd = icmp sgt i32 %i.nc, 1
  br i1 %i.nd, label %bb.hj, label %bb.hk, !prof !11

bb.hj:                                            ; preds = %bb.hi
  %i.ne = add nsw i32 %i.nc, -1
  store i32 %i.ne, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit455

bb.hk:                                            ; preds = %bb.hi
  %.not.i539 = icmp eq i32 %i.nc, 0
  br i1 %.not.i539, label %lean_dec.exit455, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #7
  br label %lean_dec.exit455

lean_dec.exit455:                                 ; preds = %bb.hl, %bb.hk, %bb.hj, %lean_dec.exit457
end_hunk_23
