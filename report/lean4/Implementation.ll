Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Implementation?download=true
inline.NumInlined: 1158
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@l_Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_insertUnit___redArg:bb.a

bb.bs:                                            ; preds = %bb.br
  %i.dv = add nsw i32 %i.dt, -1
  store i32 %i.dv, ptr %i.av, align 4, !tbaa !10
  br label %lean_dec.exit166

bb.bt:                                            ; preds = %bb.br
  %.not.i194 = icmp eq i32 %i.dt, 0
  br i1 %.not.i194, label %lean_dec.exit166, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.av) #5
  br label %lean_dec.exit166

lean_dec.exit166:                                 ; preds = %bb.bu, %bb.bt, %bb.bs, %lean_array_fset.exit
  %i.dw = lshr i64 %i.de, 1
  %i.dx = trunc i64 %i.dw to i8
  br i1 %.not.i.i.i241, label %bb.bv, label %lean_dec.exit164

bb.bv:                                            ; preds = %lean_dec.exit166
  %i.dy = load i32, ptr %i.dd, align 4, !tbaa !10 ; 3 uses
  %i.dz = icmp sgt i32 %i.dy, 1
  br i1 %i.dz, label %bb.bw, label %bb.bx, !prof !13

bb.bw:                                            ; preds = %bb.bv
  %i.ea = add nsw i32 %i.dy, -1
  store i32 %i.ea, ptr %i.dd, align 4, !tbaa !10
  br label %lean_dec.exit164

bb.bx:                                            ; preds = %bb.bv
  %.not.i196 = icmp eq i32 %i.dy, 0
  br i1 %.not.i196, label %lean_dec.exit164, label %bb.by

bb.by:                                            ; preds = %bb.bx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dd) #5
  br label %lean_dec.exit164

lean_dec.exit164:                                 ; preds = %bb.by, %bb.bx, %bb.bw, %lean_dec.exit166
  %i.eb = tail call zeroext i8 @l_Std_Tactic_BVDecide_LRAT_Internal_Assignment_addAssignment(i8 noundef zeroext %i.bo, i8 noundef zeroext %i.dx) #5
  %i.ec = zext i8 %i.eb to i64
  %i.ed = shl nuw nsw i64 %i.ec, 1
  %i.ee = or disjoint i64 %i.ed, 1
  %i.ef = inttoptr i64 %i.ee to ptr
  %.val.i.i.i246 = load i32, ptr %.0.i.i.i, align 4, !tbaa !10
  %i.eg = icmp eq i32 %.val.i.i.i246, 1
  br i1 %i.eg, label %lean_ensure_exclusive_array.exit.i.i247, label %bb.bz

bb.bz:                                            ; preds = %lean_dec.exit164
  %i.eh = tail call ptr @lean_copy_expand_array_nonlinear(ptr noundef nonnull %.0.i.i.i, i1 noundef zeroext false) #5
  br label %lean_ensure_exclusive_array.exit.i.i247

lean_ensure_exclusive_array.exit.i.i247:          ; preds = %bb.bz, %lean_dec.exit164
  %.0.i.i.i248 = phi ptr [ %i.eh, %bb.bz ], [ %.0.i.i.i, %lean_dec.exit164 ] ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i.i.i248, i64 24
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.da ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !12 ; 4 uses
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = and i64 %i.el, 1
  %.not.i.i.i249 = icmp eq i64 %i.em, 0
  br i1 %.not.i.i.i249, label %bb.ca, label %lean_array_fset.exit251

bb.ca:                                            ; preds = %lean_ensure_exclusive_array.exit.i.i247
  %i.en = load i32, ptr %i.ek, align 4, !tbaa !10 ; 3 uses
  %i.eo = icmp sgt i32 %i.en, 1
  br i1 %i.eo, label %bb.cb, label %bb.cc, !prof !13

bb.cb:                                            ; preds = %bb.ca
  %i.ep = add nsw i32 %i.en, -1
  store i32 %i.ep, ptr %i.ek, align 4, !tbaa !10
  br label %lean_array_fset.exit251

bb.cc:                                            ; preds = %bb.ca
  %.not.i6.i.i250 = icmp eq i32 %i.en, 0
  br i1 %.not.i6.i.i250, label %lean_array_fset.exit251, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ek) #5
  br label %lean_array_fset.exit251

lean_array_fset.exit251:                          ; preds = %lean_ensure_exclusive_array.exit.i.i247, %bb.cb, %bb.cc, %bb.cd
  store ptr %i.ef, ptr %i.ej, align 8, !tbaa !12
  br i1 %.not.i134, label %bb.ce, label %lean_dec.exit168

bb.ce:                                            ; preds = %lean_array_fset.exit251
  %i.eq = load i32, ptr %i.ao, align 4, !tbaa !10 ; 3 uses
  %i.er = icmp sgt i32 %i.eq, 1
  br i1 %i.er, label %bb.cf, label %bb.cg, !prof !13

bb.cf:                                            ; preds = %bb.ce
  %i.es = add nsw i32 %i.eq, -1
  store i32 %i.es, ptr %i.ao, align 4, !tbaa !10
  br label %lean_dec.exit168

bb.cg:                                            ; preds = %bb.ce
  %.not.i198 = icmp eq i32 %i.eq, 0
  br i1 %.not.i198, label %lean_dec.exit168, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ao) #5
  br label %lean_dec.exit168

bb.ci:                                            ; preds = %lean_dec.exit158
  %i.et = getelementptr inbounds nuw i8, ptr %.0123, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %.0123, i64 16
  store ptr %i.ge, ptr %i.eu, align 8, !tbaa !12
  store ptr %.0125, ptr %i.et, align 8, !tbaa !12
  br label %bb.cl

bb.cj:                                            ; preds = %lean_dec.exit158
  tail call void @lean_inc_heartbeat() #5
  %i.ev = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.ck, label %lean_alloc_ctor.exit

bb.ck:                                            ; preds = %bb.cj
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.cj
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store i32 1, ptr %i.ev, align 4, !tbaa !10
  store i32 131096, ptr %i.ex, align 4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store ptr %.0125, ptr %i.ey, align 8, !tbaa !12
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store ptr %i.ge, ptr %i.ez, align 8, !tbaa !12
  br label %bb.cl

bb.cl:                                            ; preds = %lean_alloc_ctor.exit, %bb.ci
  %.0122 = phi ptr [ %.0123, %bb.ci ], [ %i.ev, %lean_alloc_ctor.exit ] ; 2 uses
  br i1 %i.by, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.fa = getelementptr inbounds nuw i8, ptr %.0131, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %.0131, i64 16
  store ptr %.0122, ptr %i.fb, align 8, !tbaa !12
  store ptr %i.cn, ptr %i.fa, align 8, !tbaa !12
  br label %lean_dec_ref.exit221

bb.cn:                                            ; preds = %bb.cl
  tail call void @lean_inc_heartbeat() #5
  %i.fc = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.co, label %lean_alloc_ctor.exit252

bb.co:                                            ; preds = %bb.cn
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit252:                          ; preds = %bb.cn
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  store i32 1, ptr %i.fc, align 4, !tbaa !10
  store i32 131096, ptr %i.fe, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr %i.cn, ptr %i.ff, align 8, !tbaa !12
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store ptr %.0122, ptr %i.fg, align 8, !tbaa !12
  br label %lean_dec_ref.exit221

lean_dec.exit168:                                 ; preds = %lean_array_fset.exit251, %bb.cf, %bb.cg, %bb.ch, %lean_dec.exit170, %bb.be, %bb.bf, %bb.bg
  %.0125 = phi ptr [ %i.al, %lean_dec.exit170 ], [ %i.al, %bb.bg ], [ %i.al, %bb.bf ], [ %i.al, %bb.be ], [ %.0.i.i.i248, %bb.ch ], [ %.0.i.i.i248, %bb.cg ], [ %.0.i.i.i248, %bb.cf ], [ %.0.i.i.i248, %lean_array_fset.exit251 ] ; 2 uses
  %i.fh = ptrtoint ptr %i.ak to i64               ; 3 uses
  %i.fi = and i64 %i.fh, 510
  %i.fj = icmp eq i64 %i.fi, 0
  %i.fk = and i64 %.pre-phi, 1
  %.not.i159 = icmp eq i64 %i.fk, 0               ; 2 uses
  br i1 %i.fj, label %bb.cp, label %bb.de

bb.cp:                                            ; preds = %lean_dec.exit168
  br i1 %.not.i159, label %bb.cq, label %lean_dec.exit160

bb.cq:                                            ; preds = %bb.cp
  %i.fl = load i32, ptr %.1.i, align 4, !tbaa !10 ; 3 uses
  %i.fm = icmp sgt i32 %i.fl, 1
  br i1 %i.fm, label %bb.cr, label %bb.cs, !prof !13

bb.cr:                                            ; preds = %bb.cq
  %i.fn = add nsw i32 %i.fl, -1
  store i32 %i.fn, ptr %.1.i, align 4, !tbaa !10
  br label %lean_dec.exit160

bb.cs:                                            ; preds = %bb.cq
  %.not.i200 = icmp eq i32 %i.fl, 0
  br i1 %.not.i200, label %lean_dec.exit160, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #5
  br label %lean_dec.exit160

lean_dec.exit160:                                 ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cp
  %i.fo = tail call zeroext i8 @l_Std_Tactic_BVDecide_LRAT_Internal_instBEqAssignment_beq(i8 noundef zeroext %i.bq, i8 noundef zeroext 3) #5
  %i.fp = icmp eq i8 %i.fo, 0
  %i.fq = and i64 %i.fh, 1
  %.not.i157 = icmp eq i64 %i.fq, 0               ; 2 uses
  br i1 %i.fp, label %bb.cu, label %bb.cz

bb.cu:                                            ; preds = %lean_dec.exit160
  br i1 %.not.i157, label %bb.cv, label %lean_dec.exit158

bb.cv:                                            ; preds = %bb.cu
  %i.fr = load i32, ptr %i.ak, align 4, !tbaa !10 ; 3 uses
  %i.fs = icmp sgt i32 %i.fr, 1
  br i1 %i.fs, label %bb.cw, label %bb.cx, !prof !13

bb.cw:                                            ; preds = %bb.cv
  %i.ft = add nsw i32 %i.fr, -1
  store i32 %i.ft, ptr %i.ak, align 4, !tbaa !10
  br label %lean_dec.exit158

bb.cx:                                            ; preds = %bb.cv
  %.not.i202 = icmp eq i32 %i.fr, 0
  br i1 %.not.i202, label %lean_dec.exit158, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ak) #5
  br label %lean_dec.exit158

bb.cz:                                            ; preds = %lean_dec.exit160
  br i1 %.not.i157, label %bb.da, label %lean_dec.exit158

bb.da:                                            ; preds = %bb.cz
  %i.fu = load i32, ptr %i.ak, align 4, !tbaa !10 ; 3 uses
  %i.fv = icmp sgt i32 %i.fu, 1
  br i1 %i.fv, label %bb.db, label %bb.dc, !prof !13

bb.db:                                            ; preds = %bb.da
  %i.fw = add nsw i32 %i.fu, -1
  store i32 %i.fw, ptr %i.ak, align 4, !tbaa !10
  br label %lean_dec.exit158

bb.dc:                                            ; preds = %bb.da
  %.not.i204 = icmp eq i32 %i.fu, 0
  br i1 %.not.i204, label %lean_dec.exit158, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ak) #5
  br label %lean_dec.exit158

bb.de:                                            ; preds = %lean_dec.exit168
  br i1 %.not.i159, label %bb.df, label %lean_dec.exit154

bb.df:                                            ; preds = %bb.de
  %i.fx = load i32, ptr %.1.i, align 4, !tbaa !10 ; 3 uses
  %i.fy = icmp sgt i32 %i.fx, 1
  br i1 %i.fy, label %bb.dg, label %bb.dh, !prof !13

bb.dg:                                            ; preds = %bb.df
  %i.fz = add nsw i32 %i.fx, -1
  store i32 %i.fz, ptr %.1.i, align 4, !tbaa !10
  br label %lean_dec.exit154

bb.dh:                                            ; preds = %bb.df
  %.not.i206 = icmp eq i32 %i.fx, 0
  br i1 %.not.i206, label %lean_dec.exit154, label %bb.di

bb.di:                                            ; preds = %bb.dh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #5
  br label %lean_dec.exit154

lean_dec.exit154:                                 ; preds = %bb.di, %bb.dh, %bb.dg, %bb.de
  %i.ga = and i64 %i.fh, 1
  %.not.i151 = icmp eq i64 %i.ga, 0
  br i1 %.not.i151, label %bb.dj, label %lean_dec.exit158

bb.dj:                                            ; preds = %lean_dec.exit154
  %i.gb = load i32, ptr %i.ak, align 4, !tbaa !10 ; 3 uses
  %i.gc = icmp sgt i32 %i.gb, 1
  br i1 %i.gc, label %bb.dk, label %bb.dl, !prof !13

bb.dk:                                            ; preds = %bb.dj
  %i.gd = add nsw i32 %i.gb, -1
  store i32 %i.gd, ptr %i.ak, align 4, !tbaa !10
  br label %lean_dec.exit158

bb.dl:                                            ; preds = %bb.dj
  %.not.i208 = icmp eq i32 %i.gb, 0
  br i1 %.not.i208, label %lean_dec.exit158, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ak) #5
  br label %lean_dec.exit158

lean_dec.exit158:                                 ; preds = %lean_dec.exit154, %bb.dk, %bb.dl, %bb.dm, %bb.cz, %bb.db, %bb.dc, %bb.dd, %bb.cu, %bb.cw, %bb.cx, %bb.cy
  %.1127 = phi i64 [ 1, %bb.cz ], [ 3, %bb.cu ], [ 3, %bb.cy ], [ 3, %bb.cx ], [ 3, %bb.cw ], [ 1, %bb.dd ], [ 1, %bb.dc ], [ 1, %bb.db ], [ 3, %bb.dm ], [ 3, %bb.dl ], [ 3, %bb.dk ], [ 3, %lean_dec.exit154 ]
  %i.ge = inttoptr i64 %.1127 to ptr              ; 2 uses
  br i1 %i.aj, label %bb.ci, label %bb.cj

bb.dn:                                            ; preds = %lean_dec.exit178
  %i.gf = and i64 %.pre-phi, 1
  %.not.i149 = icmp eq i64 %i.gf, 0
  br i1 %.not.i149, label %bb.do, label %lean_dec.exit150

bb.do:                                            ; preds = %bb.dn
  %i.gg = load i32, ptr %.1.i, align 4, !tbaa !10 ; 3 uses
  %i.gh = icmp sgt i32 %i.gg, 1
  br i1 %i.gh, label %bb.dp, label %bb.dq, !prof !13

bb.dp:                                            ; preds = %bb.do
  %i.gi = add nsw i32 %i.gg, -1
  store i32 %i.gi, ptr %.1.i, align 4, !tbaa !10
  br label %lean_dec.exit150

bb.dq:                                            ; preds = %bb.do
  %.not.i210 = icmp eq i32 %i.gg, 0
  br i1 %.not.i210, label %lean_dec.exit150, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i) #5
  br label %lean_dec.exit150

lean_dec.exit150:                                 ; preds = %bb.dr, %bb.dq, %bb.dp, %bb.dn
  br i1 %.not.i132, label %bb.ds, label %lean_dec.exit148

bb.ds:                                            ; preds = %lean_dec.exit150
  %i.gj = load i32, ptr %i.av, align 4, !tbaa !10 ; 3 uses
  %i.gk = icmp sgt i32 %i.gj, 1
  br i1 %i.gk, label %bb.dt, label %bb.du, !prof !13

bb.dt:                                            ; preds = %bb.ds
  %i.gl = add nsw i32 %i.gj, -1
  store i32 %i.gl, ptr %i.av, align 4, !tbaa !10
  br label %lean_dec.exit148

bb.du:                                            ; preds = %bb.ds
  %.not.i212 = icmp eq i32 %i.gj, 0
  br i1 %.not.i212, label %lean_dec.exit148, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.av) #5
  br label %lean_dec.exit148

lean_dec.exit148:                                 ; preds = %bb.dv, %bb.du, %bb.dt, %lean_dec.exit150
  br i1 %.not.i134, label %bb.dw, label %lean_dec.exit146

bb.dw:                                            ; preds = %lean_dec.exit148
  %i.gm = load i32, ptr %i.ao, align 4, !tbaa !10 ; 3 uses
  %i.gn = icmp sgt i32 %i.gm, 1
  br i1 %i.gn, label %bb.dx, label %bb.dy, !prof !13

bb.dx:                                            ; preds = %bb.dw
  %i.go = add nsw i32 %i.gm, -1
  store i32 %i.go, ptr %i.ao, align 4, !tbaa !10
  br label %lean_dec.exit146

bb.dy:                                            ; preds = %bb.dw
  %.not.i214 = icmp eq i32 %i.gm, 0
  br i1 %.not.i214, label %lean_dec.exit146, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ao) #5
  br label %lean_dec.exit146

lean_dec.exit146:                                 ; preds = %bb.dz, %bb.dy, %bb.dx, %lean_dec.exit148
  %i.gp = ptrtoint ptr %.0123 to i64
  %i.gq = and i64 %i.gp, 1
  %.not.i253 = icmp eq i64 %i.gq, 0
  br i1 %.not.i253, label %bb.ea, label %lean_del_object.exit

bb.ea:                                            ; preds = %lean_dec.exit146
  tail call void @lean_free_object(ptr noundef nonnull %.0123) #5
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %lean_dec.exit146, %bb.ea
  %i.gr = ptrtoint ptr %i.ak to i64
  %i.gs = and i64 %i.gr, 1
  %.not.i143 = icmp eq i64 %i.gs, 0
  br i1 %.not.i143, label %bb.eb, label %lean_dec.exit144

bb.eb:                                            ; preds = %lean_del_object.exit
  %i.gt = load i32, ptr %i.ak, align 4, !tbaa !10 ; 3 uses
  %i.gu = icmp sgt i32 %i.gt, 1
  br i1 %i.gu, label %bb.ec, label %bb.ed, !prof !13

bb.ec:                                            ; preds = %bb.eb
  %i.gv = add nsw i32 %i.gt, -1
  store i32 %i.gv, ptr %i.ak, align 4, !tbaa !10
  br label %lean_dec.exit144

bb.ed:                                            ; preds = %bb.eb
  %.not.i216 = icmp eq i32 %i.gt, 0
  br i1 %.not.i216, label %lean_dec.exit144, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ak) #5
  br label %lean_dec.exit144

lean_dec.exit144:                                 ; preds = %bb.ee, %bb.ed, %bb.ec, %lean_del_object.exit
  %i.gw = ptrtoint ptr %i.al to i64
  %i.gx = and i64 %i.gw, 1
  %.not.i142 = icmp eq i64 %i.gx, 0
  br i1 %.not.i142, label %bb.ef, label %lean_dec.exit

bb.ef:                                            ; preds = %lean_dec.exit144
  %i.gy = load i32, ptr %i.al, align 4, !tbaa !10 ; 3 uses
  %i.gz = icmp sgt i32 %i.gy, 1
  br i1 %i.gz, label %bb.eg, label %bb.eh, !prof !13

bb.eg:                                            ; preds = %bb.ef
  %i.ha = add nsw i32 %i.gy, -1
  store i32 %i.ha, ptr %i.al, align 4, !tbaa !10
  br label %lean_dec.exit

bb.eh:                                            ; preds = %bb.ef
  %.not.i218 = icmp eq i32 %i.gy, 0
  br i1 %.not.i218, label %lean_dec.exit, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.al) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.ei, %bb.eh, %bb.eg, %lean_dec.exit144
  %i.hb = load i32, ptr %1, align 8, !tbaa !10    ; 3 uses
  %i.hc = icmp sgt i32 %i.hb, 1
  br i1 %i.hc, label %bb.ej, label %bb.ek, !prof !13

bb.ej:                                            ; preds = %lean_dec.exit
  %i.hd = add nsw i32 %i.hb, -1
  store i32 %i.hd, ptr %1, align 8, !tbaa !10
  br label %lean_dec_ref.exit221

bb.ek:                                            ; preds = %lean_dec.exit
  %.not.i220 = icmp eq i32 %i.hb, 0
  br i1 %.not.i220, label %lean_dec_ref.exit221, label %bb.el

bb.el:                                            ; preds = %bb.ek
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec_ref.exit221

end_hunk_0
begin_hunk_1_@l_Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_confirmRupHint:bb.a
  %.not.i301 = icmp eq i32 %i.ch, 0
  br i1 %.not.i301, label %lean_dec.exit283, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.c) #5
  br label %lean_dec.exit283

lean_dec.exit283:                                 ; preds = %lean_inc.exit248, %bb.ax, %bb.ay, %bb.az, %bb.am, %bb.ao, %bb.ap, %bb.aq
  %.0239 = phi ptr [ %i.c, %bb.am ], [ %i.c, %bb.aq ], [ %i.c, %bb.ap ], [ %i.c, %bb.ao ], [ inttoptr (i64 1 to ptr), %bb.az ], [ inttoptr (i64 1 to ptr), %bb.ay ], [ inttoptr (i64 1 to ptr), %bb.ax ], [ inttoptr (i64 1 to ptr), %lean_inc.exit248 ] ; 3 uses
  %i.ck = getelementptr i8, ptr %1, i64 8
  %.val336 = load i64, ptr %i.ck, align 8, !tbaa !15
  %i.cl = shl i64 %.val336, 1
  %i.cm = or disjoint i64 %i.cl, 1
  %i.cn = inttoptr i64 %i.cm to ptr               ; 2 uses
  %i.co = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.cp = and i64 %i.co, 1
  %.not.i327 = icmp eq i64 %i.cp, 0
  br i1 %.not.i327, label %lean_nat_lt.exit, label %.split, !prof !16

.split:                                           ; preds = %lean_dec.exit283
  %i.cq = icmp ult ptr %3, %i.cn
  br i1 %i.cq, label %bb.ba, label %bb.dl

lean_nat_lt.exit:                                 ; preds = %lean_dec.exit283
  %i.cr = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %3, ptr noundef nonnull %i.cn) #5
  br i1 %i.cr, label %bb.ba, label %bb.dl

bb.ba:                                            ; preds = %.split, %lean_nat_lt.exit
  %i.cs = lshr i64 %i.co, 1
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cs
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !12 ; 3 uses
  %i.cw = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cx = and i64 %i.cw, 1
  %.not.i349 = icmp eq i64 %i.cx, 0
  br i1 %.not.i349, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cy = lshr i64 %i.cw, 1
  %i.cz = trunc i64 %i.cy to i32
  br label %lean_obj_tag.exit

bb.bc:                                            ; preds = %bb.ba
  %i.da = getelementptr i8, ptr %i.cv, i64 4
  %.val.i = load i32, ptr %i.da, align 4
  %i.db = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.bb, %bb.bc
  %.0.i350 = phi i32 [ %i.cz, %bb.bb ], [ %i.db, %bb.bc ]
  %i.dc = icmp eq i32 %.0.i350, 0
  br i1 %i.dc, label %bb.dl, label %bb.bd

bb.bd:                                            ; preds = %lean_obj_tag.exit
  %i.dd = ptrtoint ptr %.0239 to i64
  %i.de = and i64 %i.dd, 1
  %.not.i351 = icmp eq i64 %i.de, 0
  br i1 %.not.i351, label %bb.be, label %lean_del_object.exit

bb.be:                                            ; preds = %bb.bd
  tail call void @lean_free_object(ptr noundef nonnull %.0239) #5
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.bd, %bb.be
  %i.df = ptrtoint ptr %.0237 to i64
  %i.dg = and i64 %i.df, 1
  %.not.i352 = icmp eq i64 %i.dg, 0
  br i1 %.not.i352, label %bb.bf, label %lean_del_object.exit353

bb.bf:                                            ; preds = %lean_del_object.exit
  tail call void @lean_free_object(ptr noundef nonnull %.0237) #5
  br label %lean_del_object.exit353

lean_del_object.exit353:                          ; preds = %lean_del_object.exit, %bb.bf
  %i.dh = ptrtoint ptr %.0229 to i64
  %i.di = and i64 %i.dh, 1
  %.not.i354 = icmp eq i64 %i.di, 0
  br i1 %.not.i354, label %bb.bg, label %lean_del_object.exit355

bb.bg:                                            ; preds = %lean_del_object.exit353
  tail call void @lean_free_object(ptr noundef nonnull %.0229) #5
  br label %lean_del_object.exit355

lean_del_object.exit355:                          ; preds = %lean_del_object.exit353, %bb.bg
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !12 ; 5 uses
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = and i64 %i.dl, 1
  %.not.i245 = icmp eq i64 %i.dm, 0
  br i1 %.not.i245, label %bb.bh, label %lean_inc.exit246

bb.bh:                                            ; preds = %lean_del_object.exit355
  %.val.i.i356 = load i32, ptr %i.dk, align 4, !tbaa !10 ; 3 uses
  %i.dn = icmp sgt i32 %.val.i.i356, 0
  br i1 %i.dn, label %bb.bi, label %bb.bj, !prof !13

bb.bi:                                            ; preds = %bb.bh
  %i.do = add nuw i32 %.val.i.i356, 1
  store i32 %i.do, ptr %i.dk, align 4, !tbaa !10
  br label %lean_inc.exit246

bb.bj:                                            ; preds = %bb.bh
  %.not.i.i357 = icmp eq i32 %.val.i.i356, 0
  br i1 %.not.i.i357, label %lean_inc.exit246, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dp = atomicrmw sub ptr %i.dk, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit246

lean_inc.exit246:                                 ; preds = %bb.bk, %bb.bj, %bb.bi, %lean_del_object.exit355
  %i.dq = tail call ptr @l_Std_Tactic_BVDecide_LRAT_Internal_DefaultClause_reduce(ptr noundef %0, ptr noundef %i.dk, ptr noundef %i.be) #5 ; 7 uses
  %i.dr = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.ds = and i64 %i.dr, 1
  %.not.i359 = icmp eq i64 %i.ds, 0               ; 2 uses
  br i1 %.not.i359, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %lean_inc.exit246
  %i.dt = lshr i64 %i.dr, 1
  %i.du = trunc i64 %i.dt to i32
  br label %lean_obj_tag.exit362

bb.bm:                                            ; preds = %lean_inc.exit246
  %i.dv = getelementptr i8, ptr %i.dq, i64 4
  %.val.i361 = load i32, ptr %i.dv, align 4
  %i.dw = lshr i32 %.val.i361, 24
  br label %lean_obj_tag.exit362

lean_obj_tag.exit362:                             ; preds = %bb.bl, %bb.bm
  %.0.i360 = phi i32 [ %i.du, %bb.bl ], [ %i.dw, %bb.bm ]
  switch i32 %.0.i360, label %bb.dg [
    i32 2, label %bb.bn
    i32 3, label %bb.df
  ]

bb.bn:                                            ; preds = %lean_obj_tag.exit362
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !12 ; 13 uses
  %.val.i.i363 = load i32, ptr %i.dy, align 4, !tbaa !10 ; 3 uses
  %i.dz = icmp sgt i32 %.val.i.i363, 0
  br i1 %i.dz, label %bb.bo, label %bb.bp, !prof !13

bb.bo:                                            ; preds = %bb.bn
  %i.ea = add nuw i32 %.val.i.i363, 1
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !10
  br label %lean_dec.exit279

bb.bp:                                            ; preds = %bb.bn
  %.not.i.i364 = icmp eq i32 %.val.i.i363, 0
  br i1 %.not.i.i364, label %lean_dec.exit279, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.eb = atomicrmw sub ptr %i.dy, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_dec.exit279

lean_dec.exit279:                                 ; preds = %bb.bq, %bb.bp, %bb.bo
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.dq, i32 noundef 1)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !12 ; 7 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !12
  %i.eg = tail call fastcc ptr @lean_array_get(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %i.be, ptr noundef %i.ed) ; 4 uses
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = lshr i64 %i.eh, 1
  %i.ej = trunc i64 %i.ei to i8                   ; 2 uses
  %i.ek = ptrtoint ptr %i.eg to i64               ; 2 uses
  %i.el = lshr i64 %i.ek, 1
  %i.em = trunc i64 %i.el to i8
  %i.en = and i64 %i.ek, 1
  %.not.i276 = icmp eq i64 %i.en, 0
  br i1 %.not.i276, label %bb.br, label %lean_dec.exit277

bb.br:                                            ; preds = %lean_dec.exit279
  %i.eo = load i32, ptr %i.eg, align 4, !tbaa !10 ; 3 uses
  %i.ep = icmp sgt i32 %i.eo, 1
  br i1 %i.ep, label %bb.bs, label %bb.bt, !prof !13

bb.bs:                                            ; preds = %bb.br
  %i.eq = add nsw i32 %i.eo, -1
  store i32 %i.eq, ptr %i.eg, align 4, !tbaa !10
  br label %lean_dec.exit277

bb.bt:                                            ; preds = %bb.br
  %.not.i305 = icmp eq i32 %i.eo, 0
  br i1 %.not.i305, label %lean_dec.exit277, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.eg) #5
  br label %lean_dec.exit277

lean_dec.exit277:                                 ; preds = %bb.bu, %bb.bt, %bb.bs, %lean_dec.exit279
  %i.er = tail call zeroext i8 @l_Std_Tactic_BVDecide_LRAT_Internal_Assignment_hasAssignment(i8 noundef zeroext %i.ej, i8 noundef zeroext %i.em) #5
  %i.es = icmp eq i8 %i.er, 0
  br i1 %i.es, label %bb.bv, label %bb.cj

bb.bv:                                            ; preds = %lean_dec.exit277
  %i.et = and i64 %i.bb, 1
  %.not.i274 = icmp eq i64 %i.et, 0
  br i1 %.not.i274, label %bb.bw, label %lean_dec.exit275

bb.bw:                                            ; preds = %bb.bv
  %i.eu = load i32, ptr %i.ba, align 4, !tbaa !10 ; 3 uses
  %i.ev = icmp sgt i32 %i.eu, 1
  br i1 %i.ev, label %bb.bx, label %bb.by, !prof !13

bb.bx:                                            ; preds = %bb.bw
  %i.ew = add nsw i32 %i.eu, -1
  store i32 %i.ew, ptr %i.ba, align 4, !tbaa !10
  br label %lean_dec.exit275

bb.by:                                            ; preds = %bb.bw
  %.not.i307 = icmp eq i32 %i.eu, 0
  br i1 %.not.i307, label %lean_dec.exit275, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ba) #5
  br label %lean_dec.exit275

lean_dec.exit275:                                 ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bv
  %i.ex = getelementptr i8, ptr %i.be, i64 8
  %.val335 = load i64, ptr %i.ex, align 8, !tbaa !15
  %i.ey = shl i64 %.val335, 1
  %i.ez = or disjoint i64 %i.ey, 1
  %i.fa = inttoptr i64 %i.ez to ptr               ; 2 uses
  %i.fb = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.fc = and i64 %i.fb, 1
  %.not.i328 = icmp eq i64 %i.fc, 0
  br i1 %.not.i328, label %lean_nat_lt.exit331, label %.split409, !prof !16

.split409:                                        ; preds = %lean_dec.exit275
  %i.fd = icmp ult ptr %i.ed, %i.fa
  br i1 %i.fd, label %bb.ca, label %bb.de

lean_nat_lt.exit331:                              ; preds = %lean_dec.exit275
  %i.fe = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %i.ed, ptr noundef nonnull %i.fa) #5
  br i1 %i.fe, label %bb.ca, label %bb.de

bb.ca:                                            ; preds = %.split409, %lean_nat_lt.exit331
  %i.ff = lshr i64 %i.fb, 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.ff
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !12 ; 7 uses
  %i.fj = ptrtoint ptr %i.fi to i64               ; 2 uses
  %i.fk = and i64 %i.fj, 1
  %.not.i.i.i = icmp eq i64 %i.fk, 0
  br i1 %.not.i.i.i, label %bb.cb, label %lean_array_fget.exit

bb.cb:                                            ; preds = %bb.ca
  %.val.i.i.i.i = load i32, ptr %i.fi, align 4, !tbaa !10 ; 3 uses
  %i.fl = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.fl, label %bb.cc, label %bb.cd, !prof !13

bb.cc:                                            ; preds = %bb.cb
  %i.fm = add nuw i32 %.val.i.i.i.i, 1
  store i32 %i.fm, ptr %i.fi, align 4, !tbaa !10
  br label %bb.cf

bb.cd:                                            ; preds = %bb.cb
  %.not.i.i.i.i = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.fn = atomicrmw sub ptr %i.fi, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.cf

lean_array_fget.exit:                             ; preds = %bb.ca
  %i.fo = tail call fastcc ptr @lean_array_fset(ptr noundef nonnull %i.be, ptr noundef %i.ed, ptr noundef nonnull inttoptr (i64 1 to ptr))
  br label %lean_dec.exit273

bb.cf:                                            ; preds = %bb.cc, %bb.cd, %bb.ce
  %i.fp = tail call fastcc ptr @lean_array_fset(ptr noundef nonnull %i.be, ptr noundef %i.ed, ptr noundef nonnull inttoptr (i64 1 to ptr)) ; 3 uses
  %i.fq = load i32, ptr %i.fi, align 4, !tbaa !10 ; 3 uses
  %i.fr = icmp sgt i32 %i.fq, 1
  br i1 %i.fr, label %bb.cg, label %bb.ch, !prof !13

bb.cg:                                            ; preds = %bb.cf
  %i.fs = add nsw i32 %i.fq, -1
  store i32 %i.fs, ptr %i.fi, align 4, !tbaa !10
  br label %lean_dec.exit273

bb.ch:                                            ; preds = %bb.cf
  %.not.i309 = icmp eq i32 %i.fq, 0
  br i1 %.not.i309, label %lean_dec.exit273, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fi) #5
  br label %lean_dec.exit273

lean_dec.exit273:                                 ; preds = %lean_array_fget.exit, %bb.ci, %bb.ch, %bb.cg
  %i.ft = phi ptr [ %i.fp, %bb.ci ], [ %i.fp, %bb.ch ], [ %i.fp, %bb.cg ], [ %i.fo, %lean_array_fget.exit ]
  %.in = lshr i64 %i.fj, 1
  %i.fu = trunc i64 %.in to i8
  %i.fv = tail call zeroext i8 @l_Std_Tactic_BVDecide_LRAT_Internal_Assignment_addAssignment(i8 noundef zeroext %i.ej, i8 noundef zeroext %i.fu) #5
  %i.fw = zext i8 %i.fv to i64
  %i.fx = shl nuw nsw i64 %i.fw, 1
  %i.fy = or disjoint i64 %i.fx, 1
  %i.fz = inttoptr i64 %i.fy to ptr
  %i.ga = tail call fastcc ptr @lean_array_fset(ptr noundef %i.ft, ptr noundef %i.ed, ptr noundef nonnull %i.fz)
  br label %bb.de

bb.cj:                                            ; preds = %lean_dec.exit277
  %.val = load i32, ptr %i.dy, align 8, !tbaa !10 ; 4 uses
  %i.gb = icmp eq i32 %.val, 1                    ; 2 uses
  br i1 %i.gb, label %bb.ck, label %bb.ct

bb.ck:                                            ; preds = %bb.cj
  %i.gc = load ptr, ptr %i.ee, align 8, !tbaa !12 ; 4 uses
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = and i64 %i.gd, 1
  %.not.i270 = icmp eq i64 %i.ge, 0
  br i1 %.not.i270, label %bb.cl, label %lean_dec.exit271

bb.cl:                                            ; preds = %bb.ck
  %i.gf = load i32, ptr %i.gc, align 4, !tbaa !10 ; 3 uses
  %i.gg = icmp sgt i32 %i.gf, 1
  br i1 %i.gg, label %bb.cm, label %bb.cn, !prof !13

bb.cm:                                            ; preds = %bb.cl
  %i.gh = add nsw i32 %i.gf, -1
  store i32 %i.gh, ptr %i.gc, align 4, !tbaa !10
  br label %lean_dec.exit271

bb.cn:                                            ; preds = %bb.cl
  %.not.i311 = icmp eq i32 %i.gf, 0
  br i1 %.not.i311, label %lean_dec.exit271, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gc) #5
  br label %lean_dec.exit271

lean_dec.exit271:                                 ; preds = %bb.co, %bb.cn, %bb.cm, %bb.ck
  %i.gi = load ptr, ptr %i.ec, align 8, !tbaa !12 ; 4 uses
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = and i64 %i.gj, 1
  %.not.i268 = icmp eq i64 %i.gk, 0
  br i1 %.not.i268, label %bb.cp, label %lean_dec.exit269

bb.cp:                                            ; preds = %lean_dec.exit271
  %i.gl = load i32, ptr %i.gi, align 4, !tbaa !10 ; 3 uses
  %i.gm = icmp sgt i32 %i.gl, 1
  br i1 %i.gm, label %bb.cq, label %bb.cr, !prof !13

bb.cq:                                            ; preds = %bb.cp
  %i.gn = add nsw i32 %i.gl, -1
  store i32 %i.gn, ptr %i.gi, align 4, !tbaa !10
  br label %lean_dec.exit269

bb.cr:                                            ; preds = %bb.cp
  %.not.i313 = icmp eq i32 %i.gl, 0
  br i1 %.not.i313, label %lean_dec.exit269, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gi) #5
  br label %lean_dec.exit269

bb.ct:                                            ; preds = %bb.cj
  %i.go = icmp sgt i32 %.val, 1
  br i1 %i.go, label %bb.cu, label %bb.cv, !prof !13

bb.cu:                                            ; preds = %bb.ct
  %i.gp = add nsw i32 %.val, -1
  store i32 %i.gp, ptr %i.dy, align 8, !tbaa !10
  br label %lean_dec.exit269

bb.cv:                                            ; preds = %bb.ct
  %.not.i315 = icmp eq i32 %.val, 0
  br i1 %.not.i315, label %lean_dec.exit269, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dy) #5
  br label %lean_dec.exit269

lean_dec.exit269:                                 ; preds = %bb.cu, %bb.cv, %bb.cw, %lean_dec.exit271, %bb.cq, %bb.cr, %bb.cs
  %.0243 = phi ptr [ %i.dy, %lean_dec.exit271 ], [ %i.dy, %bb.cs ], [ %i.dy, %bb.cr ], [ %i.dy, %bb.cq ], [ inttoptr (i64 1 to ptr), %bb.cw ], [ inttoptr (i64 1 to ptr), %bb.cv ], [ inttoptr (i64 1 to ptr), %bb.cu ] ; 3 uses
  %i.gq = and i64 %i.bb, 1
  %.not.i = icmp eq i64 %i.gq, 0
  br i1 %.not.i, label %bb.cx, label %lean_inc.exit

bb.cx:                                            ; preds = %lean_dec.exit269
  %.val.i.i366 = load i32, ptr %i.ba, align 4, !tbaa !10 ; 3 uses
  %i.gr = icmp sgt i32 %.val.i.i366, 0
  br i1 %i.gr, label %bb.cy, label %bb.cz, !prof !13

bb.cy:                                            ; preds = %bb.cx
  %i.gs = add nuw i32 %.val.i.i366, 1
  store i32 %i.gs, ptr %i.ba, align 4, !tbaa !10
  br label %lean_inc.exit

bb.cz:                                            ; preds = %bb.cx
  %.not.i.i367 = icmp eq i32 %.val.i.i366, 0
  br i1 %.not.i.i367, label %lean_inc.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.gt = atomicrmw sub ptr %i.ba, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.da, %bb.cz, %bb.cy, %lean_dec.exit269
  br i1 %i.gb, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %lean_inc.exit
  %i.gu = getelementptr inbounds nuw i8, ptr %.0243, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %.0243, i64 16
  store ptr %i.ba, ptr %i.gv, align 8, !tbaa !12
  store ptr %i.ba, ptr %i.gu, align 8, !tbaa !12
  br label %bb.dd

bb.dc:                                            ; preds = %lean_inc.exit
  %i.gw = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2) ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store ptr %i.ba, ptr %i.gx, align 8, !tbaa !12
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store ptr %i.ba, ptr %i.gy, align 8, !tbaa !12
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.0241 = phi ptr [ %.0243, %bb.db ], [ %i.gw, %bb.dc ]
  %i.gz = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2) ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr %i.bu, ptr %i.ha, align 8, !tbaa !12
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store ptr %.0241, ptr %i.hb, align 8, !tbaa !12
  %i.hc = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2) ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store ptr %i.be, ptr %i.hd, align 8, !tbaa !12
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  store ptr %i.gz, ptr %i.he, align 8, !tbaa !12
  br label %lean_dec.exit261

bb.de:                                            ; preds = %.split409, %lean_dec.exit273, %lean_nat_lt.exit331
  %.0244 = phi ptr [ %i.ga, %lean_dec.exit273 ], [ %i.be, %lean_nat_lt.exit331 ], [ %i.be, %.split409 ]
  %i.hf = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 2) ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store ptr %i.dy, ptr %i.hg, align 8, !tbaa !12
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  store ptr %i.bu, ptr %i.hh, align 8, !tbaa !12
  %i.hi = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2) ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.hj, align 8, !tbaa !12
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.hk, align 8, !tbaa !12
  %i.hl = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2) ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store ptr %i.hf, ptr %i.hm, align 8, !tbaa !12
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store ptr %i.hi, ptr %i.hn, align 8, !tbaa !12
  %i.ho = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2) ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store ptr %.0244, ptr %i.hp, align 8, !tbaa !12
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store ptr %i.hl, ptr %i.hq, align 8, !tbaa !12
  br label %lean_dec.exit261

bb.df:                                            ; preds = %lean_obj_tag.exit362
  %i.hr = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2) ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store ptr %i.ba, ptr %i.hs, align 8, !tbaa !12
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store ptr inttoptr (i64 3 to ptr), ptr %i.ht, align 8, !tbaa !12
  %i.hu = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2) ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store ptr %i.bu, ptr %i.hv, align 8, !tbaa !12
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store ptr %i.hr, ptr %i.hw, align 8, !tbaa !12
  %i.hx = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2) ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store ptr %i.be, ptr %i.hy, align 8, !tbaa !12
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  store ptr %i.hu, ptr %i.hz, align 8, !tbaa !12
  br label %lean_dec.exit261

bb.dg:                                            ; preds = %lean_obj_tag.exit362
  br i1 %.not.i359, label %bb.dh, label %lean_dec.exit265

bb.dh:                                            ; preds = %bb.dg
  %i.ia = load i32, ptr %i.dq, align 4, !tbaa !10 ; 3 uses
  %i.ib = icmp sgt i32 %i.ia, 1
  br i1 %i.ib, label %bb.di, label %bb.dj, !prof !13

bb.di:                                            ; preds = %bb.dh
  %i.ic = add nsw i32 %i.ia, -1
  store i32 %i.ic, ptr %i.dq, align 4, !tbaa !10
  br label %lean_dec.exit265

bb.dj:                                            ; preds = %bb.dh
  %.not.i317 = icmp eq i32 %i.ia, 0
  br i1 %.not.i317, label %lean_dec.exit265, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dq) #5
  br label %lean_dec.exit265

lean_dec.exit265:                                 ; preds = %bb.dk, %bb.dj, %bb.di, %bb.dg
  %i.id = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2) ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.ie, align 8, !tbaa !12
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  store ptr %i.ba, ptr %i.if, align 8, !tbaa !12
  %i.ig = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2) ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store ptr %i.bu, ptr %i.ih, align 8, !tbaa !12
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store ptr %i.id, ptr %i.ii, align 8, !tbaa !12
  %i.ij = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2) ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store ptr %i.be, ptr %i.ik, align 8, !tbaa !12
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  store ptr %i.ig, ptr %i.il, align 8, !tbaa !12
  br label %lean_dec.exit261

bb.dl:                                            ; preds = %.split, %lean_obj_tag.exit, %lean_nat_lt.exit
  br i1 %i.az, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  tail call void @lean_inc_heartbeat() #5
  %i.im = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 5 uses
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %bb.dn, label %lean_alloc_ctor.exit

bb.dn:                                            ; preds = %bb.dm
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.dm
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  store i32 1, ptr %i.im, align 4, !tbaa !10
  store i32 131096, ptr %i.io, align 4
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store ptr %i.ba, ptr %i.ip, align 8, !tbaa !12
  br label %bb.do

bb.do:                                            ; preds = %bb.dl, %lean_alloc_ctor.exit
  %.sink420 = phi ptr [ %i.im, %lean_alloc_ctor.exit ], [ %.0229, %bb.dl ] ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.sink420, i64 16
  store ptr inttoptr (i64 3 to ptr), ptr %i.iq, align 8, !tbaa !12
  br i1 %i.bv, label %bb.dr, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  tail call void @lean_inc_heartbeat() #5
  %i.ir = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 5 uses
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %bb.dq, label %lean_alloc_ctor.exit369

bb.dq:                                            ; preds = %bb.dp
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit369:                          ; preds = %bb.dp
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  store i32 1, ptr %i.ir, align 4, !tbaa !10
  store i32 131096, ptr %i.it, align 4
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store ptr %i.bu, ptr %i.iu, align 8, !tbaa !12
  br label %bb.dr

bb.dr:                                            ; preds = %bb.do, %lean_alloc_ctor.exit369
  %.sink421 = phi ptr [ %i.ir, %lean_alloc_ctor.exit369 ], [ %.0239, %bb.do ] ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.sink421, i64 16
  store ptr %.sink420, ptr %i.iv, align 8, !tbaa !12
  br i1 %i.bf, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.iw = getelementptr inbounds nuw i8, ptr %.0237, i64 16
  store ptr %.sink421, ptr %i.iw, align 8, !tbaa !12
  br label %lean_dec.exit261

bb.dt:                                            ; preds = %bb.dr
  tail call void @lean_inc_heartbeat() #5
  %i.ix = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %bb.du, label %lean_alloc_ctor.exit370

bb.du:                                            ; preds = %bb.dt
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit370:                          ; preds = %bb.dt
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  store i32 1, ptr %i.ix, align 4, !tbaa !10
  store i32 131096, ptr %i.iz, align 4
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store ptr %i.be, ptr %i.ja, align 8, !tbaa !12
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  store ptr %.sink421, ptr %i.jb, align 8, !tbaa !12
  br label %lean_dec.exit261

bb.dv:                                            ; preds = %lean_dec.exit291
end_hunk_1
begin_hunk_2_@l_Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_performRupCheck:bb.a
  %i.bx = load i32, ptr %i.av, align 8, !tbaa !10 ; 3 uses
  %i.by = icmp sgt i32 %i.bx, 1
  br i1 %i.by, label %bb.ar, label %bb.as, !prof !13

bb.ar:                                            ; preds = %lean_inc.exit
  %i.bz = add nsw i32 %i.bx, -1
  store i32 %i.bz, ptr %i.av, align 8, !tbaa !10
  br label %lean_dec_ref.exit99

bb.as:                                            ; preds = %lean_inc.exit
  %.not.i98 = icmp eq i32 %i.bx, 0
  br i1 %.not.i98, label %lean_dec_ref.exit99, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.av) #5
  br label %lean_dec_ref.exit99
}

; Function Attrs: nounwind uwtable
define noalias nonnull ptr @l_Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_performRupCheck___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_performRupCheck(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %i.b = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %2, align 4, !tbaa !10
  br label %lean_dec_ref.exit8

bb.c:                                             ; preds = %bb.a
  %.not.i7 = icmp eq i32 %i.b, 0
  br i1 %.not.i7, label %lean_dec_ref.exit8, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec_ref.exit8

lean_dec_ref.exit8:                               ; preds = %bb.b, %bb.c, %bb.d
  %i.e = ptrtoint ptr %0 to i64
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.e, label %lean_dec.exit

bb.e:                                             ; preds = %lean_dec_ref.exit8
  %i.g = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit

bb.g:                                             ; preds = %bb.e
  %.not.i6 = icmp eq i32 %i.g, 0
  br i1 %.not.i6, label %lean_dec.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.h, %bb.g, %bb.f, %lean_dec_ref.exit8
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_List_mapTR_loop___at___00Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_performRupAdd_spec__0(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.084 = phi ptr [ %1, %bb.a ], [ %.084.be, %.backedge ] ; 3 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %i.l, %.backedge ] ; 9 uses
  %i.a = ptrtoint ptr %.0 to i64                  ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i127 = icmp eq i64 %i.b, 0                ; 2 uses
  br i1 %.not.i127, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %.0, i64 4
  %.val.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = icmp eq i32 %.0.i, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %lean_obj_tag.exit
  %i.h = tail call ptr @l_List_reverse___redArg(ptr noundef %.084) #5
  ret ptr %i.h

bb.f:                                             ; preds = %lean_obj_tag.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12   ; 15 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12   ; 5 uses
  %.0.val = load i32, ptr %.0, align 8, !tbaa !10
  %i.m = icmp eq i32 %.0.val, 1                   ; 2 uses
  br i1 %i.m, label %lean_dec.exit116, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = and i64 %i.n, 1
  %.not.i106 = icmp eq i64 %i.o, 0
  br i1 %.not.i106, label %bb.h, label %lean_inc.exit107

bb.h:                                             ; preds = %bb.g
  %.val.i.i = load i32, ptr %i.l, align 4, !tbaa !10 ; 3 uses
  %i.p = icmp sgt i32 %.val.i.i, 0
  br i1 %i.p, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.q = add nuw i32 %.val.i.i, 1
  store i32 %i.q, ptr %i.l, align 4, !tbaa !10
  br label %lean_inc.exit107

bb.j:                                             ; preds = %bb.h
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit107, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = atomicrmw sub ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit107

lean_inc.exit107:                                 ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  %i.s = ptrtoint ptr %i.j to i64
  %i.t = and i64 %i.s, 1
  %.not.i104 = icmp eq i64 %i.t, 0
  br i1 %.not.i104, label %bb.l, label %lean_inc.exit105

bb.l:                                             ; preds = %lean_inc.exit107
  %.val.i.i128 = load i32, ptr %i.j, align 4, !tbaa !10 ; 3 uses
  %i.u = icmp sgt i32 %.val.i.i128, 0
  br i1 %i.u, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %bb.l
  %i.v = add nuw i32 %.val.i.i128, 1
  store i32 %i.v, ptr %i.j, align 4, !tbaa !10
  br label %lean_inc.exit105

bb.n:                                             ; preds = %bb.l
  %.not.i.i129 = icmp eq i32 %.val.i.i128, 0
  br i1 %.not.i.i129, label %lean_inc.exit105, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.w = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit105

lean_inc.exit105:                                 ; preds = %bb.o, %bb.n, %bb.m, %lean_inc.exit107
  br i1 %.not.i127, label %bb.p, label %lean_dec.exit116

bb.p:                                             ; preds = %lean_inc.exit105
  %i.x = load i32, ptr %.0, align 8, !tbaa !10    ; 3 uses
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %bb.q, label %bb.r, !prof !13

bb.q:                                             ; preds = %bb.p
  %i.z = add nsw i32 %i.x, -1
  store i32 %i.z, ptr %.0, align 8, !tbaa !10
  br label %lean_dec.exit116

bb.r:                                             ; preds = %bb.p
  %.not.i117 = icmp eq i32 %i.x, 0
  br i1 %.not.i117, label %lean_dec.exit116, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0) #5
  br label %lean_dec.exit116

lean_dec.exit116:                                 ; preds = %lean_inc.exit105, %bb.q, %bb.r, %bb.s, %bb.f
  %.094 = phi ptr [ %.0, %bb.f ], [ inttoptr (i64 1 to ptr), %bb.s ], [ inttoptr (i64 1 to ptr), %bb.r ], [ inttoptr (i64 1 to ptr), %bb.q ], [ inttoptr (i64 1 to ptr), %lean_inc.exit105 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !12 ; 7 uses
  %i.ad = ptrtoint ptr %i.ac to i64               ; 3 uses
  %i.ae = and i64 %i.ad, 510
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !12 ; 10 uses
  %.val126 = load i32, ptr %i.j, align 8, !tbaa !10
  %i.ah = icmp eq i32 %.val126, 1                 ; 2 uses
  br i1 %i.af, label %bb.t, label %bb.aj

bb.t:                                             ; preds = %lean_dec.exit116
  br i1 %i.ah, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.ai = and i64 %i.ad, 1
  %.not.i113 = icmp eq i64 %i.ai, 0
  br i1 %.not.i113, label %bb.v, label %bb.ah

bb.v:                                             ; preds = %bb.u
  %i.aj = load i32, ptr %i.ac, align 4, !tbaa !10 ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %bb.w, label %bb.x, !prof !13

bb.w:                                             ; preds = %bb.v
  %i.al = add nsw i32 %i.aj, -1
  store i32 %i.al, ptr %i.ac, align 4, !tbaa !10
  br label %bb.ah

bb.x:                                             ; preds = %bb.v
  %.not.i118 = icmp eq i32 %i.aj, 0
  br i1 %.not.i118, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ac) #5
  br label %bb.ah

bb.z:                                             ; preds = %bb.t
  %i.am = ptrtoint ptr %i.ag to i64
  %i.an = and i64 %i.am, 1
  %.not.i102 = icmp eq i64 %i.an, 0
  br i1 %.not.i102, label %bb.aa, label %lean_inc.exit103

bb.aa:                                            ; preds = %bb.z
  %.val.i.i131 = load i32, ptr %i.ag, align 4, !tbaa !10 ; 3 uses
  %i.ao = icmp sgt i32 %.val.i.i131, 0
  br i1 %i.ao, label %bb.ab, label %bb.ac, !prof !13

bb.ab:                                            ; preds = %bb.aa
  %i.ap = add nuw i32 %.val.i.i131, 1
  store i32 %i.ap, ptr %i.ag, align 4, !tbaa !10
  br label %lean_inc.exit103

bb.ac:                                            ; preds = %bb.aa
  %.not.i.i132 = icmp eq i32 %.val.i.i131, 0
  br i1 %.not.i.i132, label %lean_inc.exit103, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.aq = atomicrmw sub ptr %i.ag, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit103

lean_inc.exit103:                                 ; preds = %bb.z, %bb.ab, %bb.ac, %bb.ad
  %i.ar = load i32, ptr %i.j, align 8, !tbaa !10  ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %bb.ae, label %bb.af, !prof !13

bb.ae:                                            ; preds = %lean_inc.exit103
  %i.at = add nsw i32 %i.ar, -1
  store i32 %i.at, ptr %i.j, align 8, !tbaa !10
  br label %lean_dec.exit114

bb.af:                                            ; preds = %lean_inc.exit103
  %.not.i120 = icmp eq i32 %i.ar, 0
  br i1 %.not.i120, label %lean_dec.exit114, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #5
  br label %lean_dec.exit114

bb.ah:                                            ; preds = %bb.u, %bb.w, %bb.x, %bb.y
  store ptr inttoptr (i64 3 to ptr), ptr %i.ab, align 8, !tbaa !12
  br label %bb.az

lean_dec.exit114:                                 ; preds = %bb.ag, %bb.af, %bb.ae
  tail call void @lean_inc_heartbeat() #5
  %i.au = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.ai, label %lean_alloc_ctor.exit

bb.ai:                                            ; preds = %lean_dec.exit114
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_dec.exit114
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 1, ptr %i.au, align 4, !tbaa !10
  store i32 131096, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.ag, ptr %i.ax, align 8, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr inttoptr (i64 3 to ptr), ptr %i.ay, align 8, !tbaa !12
  br label %bb.az

bb.aj:                                            ; preds = %lean_dec.exit116
  br i1 %i.ah, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  %i.az = and i64 %i.ad, 1
  %.not.i109 = icmp eq i64 %i.az, 0
  br i1 %.not.i109, label %bb.al, label %bb.ax

bb.al:                                            ; preds = %bb.ak
  %i.ba = load i32, ptr %i.ac, align 4, !tbaa !10 ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 1
  br i1 %i.bb, label %bb.am, label %bb.an, !prof !13

bb.am:                                            ; preds = %bb.al
  %i.bc = add nsw i32 %i.ba, -1
  store i32 %i.bc, ptr %i.ac, align 4, !tbaa !10
  br label %bb.ax

bb.an:                                            ; preds = %bb.al
  %.not.i122 = icmp eq i32 %i.ba, 0
  br i1 %.not.i122, label %bb.ax, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ac) #5
  br label %bb.ax

bb.ap:                                            ; preds = %bb.aj
  %i.bd = ptrtoint ptr %i.ag to i64
  %i.be = and i64 %i.bd, 1
  %.not.i = icmp eq i64 %i.be, 0
  br i1 %.not.i, label %bb.aq, label %lean_inc.exit

bb.aq:                                            ; preds = %bb.ap
  %.val.i.i134 = load i32, ptr %i.ag, align 4, !tbaa !10 ; 3 uses
  %i.bf = icmp sgt i32 %.val.i.i134, 0
  br i1 %i.bf, label %bb.ar, label %bb.as, !prof !13

bb.ar:                                            ; preds = %bb.aq
  %i.bg = add nuw i32 %.val.i.i134, 1
  store i32 %i.bg, ptr %i.ag, align 4, !tbaa !10
  br label %lean_inc.exit

bb.as:                                            ; preds = %bb.aq
  %.not.i.i135 = icmp eq i32 %.val.i.i134, 0
  br i1 %.not.i.i135, label %lean_inc.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bh = atomicrmw sub ptr %i.ag, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ap, %bb.ar, %bb.as, %bb.at
  %i.bi = load i32, ptr %i.j, align 8, !tbaa !10  ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 1
  br i1 %i.bj, label %bb.au, label %bb.av, !prof !13

bb.au:                                            ; preds = %lean_inc.exit
  %i.bk = add nsw i32 %i.bi, -1
  store i32 %i.bk, ptr %i.j, align 8, !tbaa !10
  br label %lean_dec.exit110

bb.av:                                            ; preds = %lean_inc.exit
  %.not.i124 = icmp eq i32 %i.bi, 0
  br i1 %.not.i124, label %lean_dec.exit110, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #5
  br label %lean_dec.exit110

bb.ax:                                            ; preds = %bb.ak, %bb.am, %bb.an, %bb.ao
  store ptr inttoptr (i64 1 to ptr), ptr %i.ab, align 8, !tbaa !12
  br label %bb.az

lean_dec.exit110:                                 ; preds = %bb.aw, %bb.av, %bb.au
  tail call void @lean_inc_heartbeat() #5
  %i.bl = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.ay, label %lean_alloc_ctor.exit137

bb.ay:                                            ; preds = %lean_dec.exit110
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit137:                          ; preds = %lean_dec.exit110
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 1, ptr %i.bl, align 4, !tbaa !10
  store i32 131096, ptr %i.bn, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.ag, ptr %i.bo, align 8, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.bp, align 8, !tbaa !12
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %lean_alloc_ctor.exit137, %bb.ah, %lean_alloc_ctor.exit
  %.4 = phi ptr [ %i.au, %lean_alloc_ctor.exit ], [ %i.j, %bb.ah ], [ %i.j, %bb.ax ], [ %i.bl, %lean_alloc_ctor.exit137 ] ; 2 uses
  br i1 %i.m, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.bq = getelementptr inbounds nuw i8, ptr %.094, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.094, i64 16
  store ptr %.084, ptr %i.br, align 8, !tbaa !12
  store ptr %.4, ptr %i.bq, align 8, !tbaa !12
  br label %.backedge

bb.bb:                                            ; preds = %bb.az
  tail call void @lean_inc_heartbeat() #5
  %i.bs = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.bc, label %lean_alloc_ctor.exit138

bb.bc:                                            ; preds = %bb.bb
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit138:                          ; preds = %bb.bb
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 1, ptr %i.bs, align 4, !tbaa !10
  store i32 16908312, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %.4, ptr %i.bv, align 8, !tbaa !12
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store ptr %.084, ptr %i.bw, align 8, !tbaa !12
  br label %.backedge

.backedge:                                        ; preds = %lean_alloc_ctor.exit138, %bb.ba
  %.084.be = phi ptr [ %.094, %bb.ba ], [ %i.bs, %lean_alloc_ctor.exit138 ]
  br label %bb.b
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_performRupAdd(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = and i64 %i.a, 1
  %.not.i210 = icmp eq i64 %i.b, 0                ; 3 uses
  br i1 %.not.i210, label %bb.b, label %lean_inc.exit211

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load i32, ptr %2, align 4, !tbaa !10 ; 3 uses
  %i.c = icmp sgt i32 %.val.i.i, 0
  br i1 %i.c, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %.val.i.i, 1
  store i32 %i.d, ptr %2, align 4, !tbaa !10
  br label %lean_inc.exit211

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit211, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = atomicrmw sub ptr %2, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit211

lean_inc.exit211:                                 ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.f = tail call ptr @l_List_mapTR_loop___at___00Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_performRupAdd_spec__0(ptr noundef %2, ptr noundef nonnull inttoptr (i64 1 to ptr))
  %i.g = tail call ptr @l_Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_insertRupUnits(ptr poison, ptr noundef %1, ptr noundef %i.f) ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 12 uses
  %.val286 = load i32, ptr %i.g, align 8, !tbaa !10
  %i.l = icmp eq i32 %.val286, 1                  ; 2 uses
  %.pre = ptrtoint ptr %i.k to i64                ; 4 uses
  br i1 %i.l, label %lean_dec.exit244, label %bb.f

bb.f:                                             ; preds = %lean_inc.exit211
  %i.m = and i64 %.pre, 1
  %.not.i208 = icmp eq i64 %i.m, 0
  br i1 %.not.i208, label %bb.g, label %lean_inc.exit209

bb.g:                                             ; preds = %bb.f
  %.val.i.i287 = load i32, ptr %i.k, align 4, !tbaa !10 ; 3 uses
  %i.n = icmp sgt i32 %.val.i.i287, 0
  br i1 %i.n, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.o = add nuw i32 %.val.i.i287, 1
  store i32 %i.o, ptr %i.k, align 4, !tbaa !10
  br label %lean_inc.exit209

bb.i:                                             ; preds = %bb.g
  %.not.i.i288 = icmp eq i32 %.val.i.i287, 0
  br i1 %.not.i.i288, label %lean_inc.exit209, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = atomicrmw sub ptr %i.k, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit209

lean_inc.exit209:                                 ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  %i.q = ptrtoint ptr %i.i to i64
  %i.r = and i64 %i.q, 1
  %.not.i206 = icmp eq i64 %i.r, 0
  br i1 %.not.i206, label %bb.k, label %lean_inc.exit207

bb.k:                                             ; preds = %lean_inc.exit209
  %.val.i.i290 = load i32, ptr %i.i, align 4, !tbaa !10 ; 3 uses
  %i.s = icmp sgt i32 %.val.i.i290, 0
  br i1 %i.s, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.t = add nuw i32 %.val.i.i290, 1
  store i32 %i.t, ptr %i.i, align 4, !tbaa !10
  br label %lean_inc.exit207

bb.m:                                             ; preds = %bb.k
  %.not.i.i291 = icmp eq i32 %.val.i.i290, 0
  br i1 %.not.i.i291, label %lean_inc.exit207, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = atomicrmw sub ptr %i.i, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit207

lean_inc.exit207:                                 ; preds = %lean_inc.exit209, %bb.l, %bb.m, %bb.n
  %i.v = load i32, ptr %i.g, align 8, !tbaa !10   ; 3 uses
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.o, label %bb.p, !prof !13

bb.o:                                             ; preds = %lean_inc.exit207
  %i.x = add nsw i32 %i.v, -1
  store i32 %i.x, ptr %i.g, align 8, !tbaa !10
  br label %lean_dec.exit244

bb.p:                                             ; preds = %lean_inc.exit207
  %.not.i245 = icmp eq i32 %i.v, 0
  br i1 %.not.i245, label %lean_dec.exit244, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.g) #5
  br label %lean_dec.exit244

lean_dec.exit244:                                 ; preds = %lean_inc.exit211, %bb.o, %bb.p, %bb.q
  %.0179 = phi ptr [ inttoptr (i64 1 to ptr), %bb.q ], [ %i.g, %lean_inc.exit211 ], [ inttoptr (i64 1 to ptr), %bb.o ], [ inttoptr (i64 1 to ptr), %bb.p ] ; 5 uses
  %i.y = and i64 %.pre, 510
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.r, label %bb.ff

bb.r:                                             ; preds = %lean_dec.exit244
  %i.aa = ptrtoint ptr %.0179 to i64
  %i.ab = and i64 %i.aa, 1
  %.not.i293 = icmp eq i64 %i.ab, 0
  br i1 %.not.i293, label %bb.s, label %lean_del_object.exit

bb.s:                                             ; preds = %bb.r
  tail call void @lean_free_object(ptr noundef nonnull %.0179) #5
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.r, %bb.s
  %i.ac = tail call ptr @l_Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_performRupCheck(ptr noundef %0, ptr noundef %i.i, ptr noundef %3) ; 11 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !12 ; 15 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = and i64 %i.ag, 1
  %.not.i204 = icmp eq i64 %i.ah, 0               ; 4 uses
  br i1 %.not.i204, label %bb.t, label %lean_inc.exit205

bb.t:                                             ; preds = %lean_del_object.exit
  %.val.i.i294 = load i32, ptr %i.af, align 4, !tbaa !10 ; 3 uses
  %i.ai = icmp sgt i32 %.val.i.i294, 0
  br i1 %i.ai, label %bb.u, label %bb.v, !prof !13

bb.u:                                             ; preds = %bb.t
  %i.aj = add nuw i32 %.val.i.i294, 1
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !10
  br label %lean_inc.exit205

bb.v:                                             ; preds = %bb.t
  %.not.i.i295 = icmp eq i32 %.val.i.i294, 0
  br i1 %.not.i.i295, label %lean_inc.exit205, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ak = atomicrmw sub ptr %i.af, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit205

lean_inc.exit205:                                 ; preds = %bb.w, %bb.v, %bb.u, %lean_del_object.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !12 ; 21 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = and i64 %i.ao, 1
  %.not.i202 = icmp eq i64 %i.ap, 0               ; 3 uses
  br i1 %.not.i202, label %bb.x, label %lean_inc.exit203

bb.x:                                             ; preds = %lean_inc.exit205
  %.val.i.i297 = load i32, ptr %i.an, align 4, !tbaa !10 ; 3 uses
  %i.aq = icmp sgt i32 %.val.i.i297, 0
  br i1 %i.aq, label %bb.y, label %bb.z, !prof !13

bb.y:                                             ; preds = %bb.x
  %i.ar = add nuw i32 %.val.i.i297, 1
  store i32 %i.ar, ptr %i.an, align 4, !tbaa !10
  br label %lean_inc.exit203

bb.z:                                             ; preds = %bb.x
  %.not.i.i298 = icmp eq i32 %.val.i.i297, 0
  br i1 %.not.i.i298, label %lean_inc.exit203, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.as = atomicrmw sub ptr %i.an, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit203

lean_inc.exit203:                                 ; preds = %bb.aa, %bb.z, %bb.y, %lean_inc.exit205
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !12 ; 8 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ax = and i64 %i.aw, 510
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.ab, label %bb.dy

bb.ab:                                            ; preds = %lean_inc.exit203
  %i.az = and i64 %i.aw, 1
  %.not.i200 = icmp eq i64 %i.az, 0               ; 2 uses
  br i1 %.not.i200, label %bb.ac, label %lean_inc.exit201

bb.ac:                                            ; preds = %bb.ab
  %.val.i.i300 = load i32, ptr %i.av, align 4, !tbaa !10 ; 3 uses
  %i.ba = icmp sgt i32 %.val.i.i300, 0
  br i1 %i.ba, label %bb.ad, label %bb.ae, !prof !13

bb.ad:                                            ; preds = %bb.ac
  %i.bb = add nuw i32 %.val.i.i300, 1
  store i32 %i.bb, ptr %i.av, align 4, !tbaa !10
  br label %lean_inc.exit201

bb.ae:                                            ; preds = %bb.ac
  %.not.i.i301 = icmp eq i32 %.val.i.i300, 0
  br i1 %.not.i.i301, label %lean_inc.exit201, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bc = atomicrmw sub ptr %i.av, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit201

lean_inc.exit201:                                 ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ab
  %i.bd = and i64 %.pre, 1
  %.not.i241 = icmp eq i64 %i.bd, 0
  br i1 %.not.i241, label %bb.ag, label %lean_dec.exit242

bb.ag:                                            ; preds = %lean_inc.exit201
  %i.be = load i32, ptr %i.k, align 4, !tbaa !10  ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 1
  br i1 %i.bf, label %bb.ah, label %bb.ai, !prof !13

bb.ah:                                            ; preds = %bb.ag
  %i.bg = add nsw i32 %i.be, -1
  store i32 %i.bg, ptr %i.k, align 4, !tbaa !10
  br label %lean_dec.exit242

bb.ai:                                            ; preds = %bb.ag
  %.not.i246 = icmp eq i32 %i.be, 0
  br i1 %.not.i246, label %lean_dec.exit242, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.k) #5
  br label %lean_dec.exit242

lean_dec.exit242:                                 ; preds = %bb.aj, %bb.ai, %bb.ah, %lean_inc.exit201
  %i.bh = load ptr, ptr %i.at, align 8, !tbaa !12 ; 8 uses
  %.val285 = load i32, ptr %i.an, align 8, !tbaa !10
  %i.bi = icmp eq i32 %.val285, 1                 ; 3 uses
  br i1 %i.bi, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %lean_dec.exit242
  %i.bj = load ptr, ptr %i.au, align 8, !tbaa !12 ; 4 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.bk, 1
  %.not.i239 = icmp eq i64 %i.bl, 0
  br i1 %.not.i239, label %bb.al, label %lean_dec.exit240

bb.al:                                            ; preds = %bb.ak
  %i.bm = load i32, ptr %i.bj, align 4, !tbaa !10 ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, 1
  br i1 %i.bn, label %bb.am, label %bb.an, !prof !13

bb.am:                                            ; preds = %bb.al
  %i.bo = add nsw i32 %i.bm, -1
  store i32 %i.bo, ptr %i.bj, align 4, !tbaa !10
  br label %lean_dec.exit240

bb.an:                                            ; preds = %bb.al
  %.not.i248 = icmp eq i32 %i.bm, 0
  br i1 %.not.i248, label %lean_dec.exit240, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bj) #5
  br label %lean_dec.exit240

bb.ap:                                            ; preds = %lean_dec.exit242
  %i.bp = ptrtoint ptr %i.bh to i64
  %i.bq = and i64 %i.bp, 1
  %.not.i198 = icmp eq i64 %i.bq, 0
  br i1 %.not.i198, label %bb.aq, label %lean_inc.exit199

bb.aq:                                            ; preds = %bb.ap
  %.val.i.i303 = load i32, ptr %i.bh, align 4, !tbaa !10 ; 3 uses
  %i.br = icmp sgt i32 %.val.i.i303, 0
  br i1 %i.br, label %bb.ar, label %bb.as, !prof !13

bb.ar:                                            ; preds = %bb.aq
  %i.bs = add nuw i32 %.val.i.i303, 1
  store i32 %i.bs, ptr %i.bh, align 4, !tbaa !10
  br label %lean_inc.exit199

bb.as:                                            ; preds = %bb.aq
  %.not.i.i304 = icmp eq i32 %.val.i.i303, 0
  br i1 %.not.i.i304, label %lean_inc.exit199, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bt = atomicrmw sub ptr %i.bh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit199

lean_inc.exit199:                                 ; preds = %bb.at, %bb.as, %bb.ar, %bb.ap
  br i1 %.not.i202, label %bb.au, label %lean_dec.exit240

bb.au:                                            ; preds = %lean_inc.exit199
  %i.bu = load i32, ptr %i.an, align 8, !tbaa !10 ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, 1
  br i1 %i.bv, label %bb.av, label %bb.aw, !prof !13

bb.av:                                            ; preds = %bb.au
  %i.bw = add nsw i32 %i.bu, -1
  store i32 %i.bw, ptr %i.an, align 8, !tbaa !10
  br label %lean_dec.exit240

bb.aw:                                            ; preds = %bb.au
  %.not.i250 = icmp eq i32 %i.bu, 0
  br i1 %.not.i250, label %lean_dec.exit240, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.an) #5
  br label %lean_dec.exit240

lean_dec.exit240:                                 ; preds = %lean_inc.exit199, %bb.av, %bb.aw, %bb.ax, %bb.ak, %bb.am, %bb.an, %bb.ao
  %.0183 = phi ptr [ %i.an, %bb.ak ], [ %i.an, %bb.ao ], [ %i.an, %bb.an ], [ %i.an, %bb.am ], [ inttoptr (i64 1 to ptr), %bb.ax ], [ inttoptr (i64 1 to ptr), %bb.aw ], [ inttoptr (i64 1 to ptr), %bb.av ], [ inttoptr (i64 1 to ptr), %lean_inc.exit199 ] ; 5 uses
  %i.bx = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.by = and i64 %i.bx, 1
  %.not.i235 = icmp eq i64 %i.by, 0
  br i1 %.not.i235, label %bb.ay, label %lean_dec.exit236

bb.ay:                                            ; preds = %lean_dec.exit240
  %i.bz = load i32, ptr %i.bh, align 4, !tbaa !10 ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 1
  br i1 %i.ca, label %bb.az, label %bb.ba, !prof !13

bb.az:                                            ; preds = %bb.ay
  %i.cb = add nsw i32 %i.bz, -1
  store i32 %i.cb, ptr %i.bh, align 4, !tbaa !10
  br label %lean_dec.exit236

bb.ba:                                            ; preds = %bb.ay
  %.not.i252 = icmp eq i32 %i.bz, 0
  br i1 %.not.i252, label %lean_dec.exit236, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bh) #5
  br label %lean_dec.exit236

lean_dec.exit236:                                 ; preds = %bb.bb, %bb.ba, %bb.az, %lean_dec.exit240
  %i.cc = and i64 %i.bx, 510
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.bc, label %bb.bv

bb.bc:                                            ; preds = %lean_dec.exit236
  br i1 %.not.i204, label %bb.bd, label %lean_dec.exit234

bb.bd:                                            ; preds = %bb.bc
  %i.ce = load i32, ptr %i.af, align 8, !tbaa !10 ; 3 uses
  %i.cf = icmp sgt i32 %i.ce, 1
  br i1 %i.cf, label %bb.be, label %bb.bf, !prof !13

bb.be:                                            ; preds = %bb.bd
  %i.cg = add nsw i32 %i.ce, -1
  store i32 %i.cg, ptr %i.af, align 8, !tbaa !10
  br label %lean_dec.exit234

bb.bf:                                            ; preds = %bb.bd
  %.not.i254 = icmp eq i32 %i.ce, 0
  br i1 %.not.i254, label %lean_dec.exit234, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.af) #5
  br label %lean_dec.exit234

lean_dec.exit234:                                 ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bc
  br i1 %.not.i210, label %bb.bh, label %lean_dec.exit232

bb.bh:                                            ; preds = %lean_dec.exit234
  %i.ch = load i32, ptr %2, align 4, !tbaa !10    ; 3 uses
  %i.ci = icmp sgt i32 %i.ch, 1
  br i1 %i.ci, label %bb.bi, label %bb.bj, !prof !13

bb.bi:                                            ; preds = %bb.bh
  %i.cj = add nsw i32 %i.ch, -1
  store i32 %i.cj, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit232

bb.bj:                                            ; preds = %bb.bh
  %.not.i256 = icmp eq i32 %i.ch, 0
  br i1 %.not.i256, label %lean_dec.exit232, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec.exit232

lean_dec.exit232:                                 ; preds = %bb.bk, %bb.bj, %bb.bi, %lean_dec.exit234
  %i.ck = load ptr, ptr %i.ad, align 8, !tbaa !12 ; 6 uses
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = and i64 %i.cl, 1
  %.not.i196 = icmp eq i64 %i.cm, 0
  br i1 %.not.i196, label %bb.bl, label %lean_inc.exit197

bb.bl:                                            ; preds = %lean_dec.exit232
  %.val.i.i306 = load i32, ptr %i.ck, align 4, !tbaa !10 ; 3 uses
  %i.cn = icmp sgt i32 %.val.i.i306, 0
  br i1 %i.cn, label %bb.bm, label %bb.bn, !prof !13

bb.bm:                                            ; preds = %bb.bl
  %i.co = add nuw i32 %.val.i.i306, 1
  store i32 %i.co, ptr %i.ck, align 4, !tbaa !10
  br label %lean_inc.exit197

bb.bn:                                            ; preds = %bb.bl
  %.not.i.i307 = icmp eq i32 %.val.i.i306, 0
  br i1 %.not.i.i307, label %lean_inc.exit197, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.cp = atomicrmw sub ptr %i.ck, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit197

lean_inc.exit197:                                 ; preds = %bb.bo, %bb.bn, %bb.bm, %lean_dec.exit232
  %i.cq = load i32, ptr %i.ac, align 8, !tbaa !10 ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 1
  br i1 %i.cr, label %bb.bp, label %bb.bq, !prof !13

bb.bp:                                            ; preds = %lean_inc.exit197
  %i.cs = add nsw i32 %i.cq, -1
  store i32 %i.cs, ptr %i.ac, align 8, !tbaa !10
  br label %lean_dec_ref.exit283

bb.bq:                                            ; preds = %lean_inc.exit197
  %.not.i282 = icmp eq i32 %i.cq, 0
  br i1 %.not.i282, label %lean_dec_ref.exit283, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ac) #5
  br label %lean_dec_ref.exit283

lean_dec_ref.exit283:                             ; preds = %bb.bp, %bb.bq, %bb.br
  br i1 %i.bi, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %lean_dec_ref.exit283
  %i.ct = getelementptr inbounds nuw i8, ptr %.0183, i64 8
  store ptr %i.ck, ptr %i.ct, align 8, !tbaa !12
  br label %bb.fn

bb.bt:                                            ; preds = %lean_dec_ref.exit283
  tail call void @lean_inc_heartbeat() #5
  %i.cu = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.bu, label %lean_alloc_ctor.exit

bb.bu:                                            ; preds = %bb.bt
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.bt
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store i32 1, ptr %i.cu, align 4, !tbaa !10
  store i32 131096, ptr %i.cw, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.ck, ptr %i.cx, align 8, !tbaa !12
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store ptr %i.av, ptr %i.cy, align 8, !tbaa !12
  br label %bb.fn

bb.bv:                                            ; preds = %lean_dec.exit236
  br i1 %.not.i200, label %bb.bw, label %lean_dec.exit230

bb.bw:                                            ; preds = %bb.bv
  %i.cz = load i32, ptr %i.av, align 4, !tbaa !10 ; 3 uses
  %i.da = icmp sgt i32 %i.cz, 1
  br i1 %i.da, label %bb.bx, label %bb.by, !prof !13

bb.bx:                                            ; preds = %bb.bw
  %i.db = add nsw i32 %i.cz, -1
  store i32 %i.db, ptr %i.av, align 4, !tbaa !10
  br label %lean_dec.exit230

bb.by:                                            ; preds = %bb.bw
  %.not.i258 = icmp eq i32 %i.cz, 0
  br i1 %.not.i258, label %lean_dec.exit230, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.av) #5
  br label %lean_dec.exit230

lean_dec.exit230:                                 ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bv
  %i.dc = load ptr, ptr %i.ad, align 8, !tbaa !12 ; 13 uses
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = and i64 %i.dd, 1
  %.not.i194 = icmp eq i64 %i.de, 0               ; 2 uses
  br i1 %.not.i194, label %bb.ca, label %lean_inc.exit195

bb.ca:                                            ; preds = %lean_dec.exit230
  %.val.i.i309 = load i32, ptr %i.dc, align 4, !tbaa !10 ; 3 uses
  %i.df = icmp sgt i32 %.val.i.i309, 0
  br i1 %i.df, label %bb.cb, label %bb.cc, !prof !13

bb.cb:                                            ; preds = %bb.ca
  %i.dg = add nuw i32 %.val.i.i309, 1
  store i32 %i.dg, ptr %i.dc, align 4, !tbaa !10
  br label %lean_inc.exit195

bb.cc:                                            ; preds = %bb.ca
  %.not.i.i310 = icmp eq i32 %.val.i.i309, 0
  br i1 %.not.i.i310, label %lean_inc.exit195, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.dh = atomicrmw sub ptr %i.dc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit195

lean_inc.exit195:                                 ; preds = %bb.cd, %bb.cc, %bb.cb, %lean_dec.exit230
  %i.di = load i32, ptr %i.ac, align 8, !tbaa !10 ; 3 uses
  %i.dj = icmp sgt i32 %i.di, 1
  br i1 %i.dj, label %bb.ce, label %bb.cf, !prof !13

bb.ce:                                            ; preds = %lean_inc.exit195
  %i.dk = add nsw i32 %i.di, -1
  store i32 %i.dk, ptr %i.ac, align 8, !tbaa !10
  br label %lean_dec_ref.exit281

bb.cf:                                            ; preds = %lean_inc.exit195
  %.not.i280 = icmp eq i32 %i.di, 0
  br i1 %.not.i280, label %lean_dec_ref.exit281, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ac) #5
  br label %lean_dec_ref.exit281

lean_dec_ref.exit281:                             ; preds = %bb.ce, %bb.cf, %bb.cg
  %i.dl = load ptr, ptr %i.al, align 8, !tbaa !12 ; 8 uses
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = and i64 %i.dm, 1
  %.not.i192 = icmp eq i64 %i.dn, 0               ; 2 uses
  br i1 %.not.i192, label %bb.ch, label %lean_inc.exit193

bb.ch:                                            ; preds = %lean_dec_ref.exit281
  %.val.i.i312 = load i32, ptr %i.dl, align 4, !tbaa !10 ; 3 uses
  %i.do = icmp sgt i32 %.val.i.i312, 0
  br i1 %i.do, label %bb.ci, label %bb.cj, !prof !13

bb.ci:                                            ; preds = %bb.ch
  %i.dp = add nuw i32 %.val.i.i312, 1
  store i32 %i.dp, ptr %i.dl, align 4, !tbaa !10
  br label %lean_inc.exit193

bb.cj:                                            ; preds = %bb.ch
  %.not.i.i313 = icmp eq i32 %.val.i.i312, 0
  br i1 %.not.i.i313, label %lean_inc.exit193, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.dq = atomicrmw sub ptr %i.dl, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit193

lean_inc.exit193:                                 ; preds = %bb.ck, %bb.cj, %bb.ci, %lean_dec_ref.exit281
  br i1 %.not.i204, label %bb.cl, label %lean_dec.exit228

bb.cl:                                            ; preds = %lean_inc.exit193
  %i.dr = load i32, ptr %i.af, align 8, !tbaa !10 ; 3 uses
  %i.ds = icmp sgt i32 %i.dr, 1
  br i1 %i.ds, label %bb.cm, label %bb.cn, !prof !13

bb.cm:                                            ; preds = %bb.cl
  %i.dt = add nsw i32 %i.dr, -1
  store i32 %i.dt, ptr %i.af, align 8, !tbaa !10
  br label %lean_dec.exit228

bb.cn:                                            ; preds = %bb.cl
  %.not.i260 = icmp eq i32 %i.dr, 0
  br i1 %.not.i260, label %lean_dec.exit228, label %bb.co

bb.co:                                            ; preds = %bb.cn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.af) #5
  br label %lean_dec.exit228

lean_dec.exit228:                                 ; preds = %bb.co, %bb.cn, %bb.cm, %lean_inc.exit193
  %i.du = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !12 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !12 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !12 ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !12 ; 5 uses
  %.val284 = load i32, ptr %i.dc, align 8, !tbaa !10
  %i.ec = icmp eq i32 %.val284, 1                 ; 2 uses
  br i1 %i.ec, label %lean_dec.exit226, label %bb.cp

bb.cp:                                            ; preds = %lean_dec.exit228
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = and i64 %i.ed, 1
  %.not.i190 = icmp eq i64 %i.ee, 0
  br i1 %.not.i190, label %bb.cq, label %lean_inc.exit191

bb.cq:                                            ; preds = %bb.cp
  %.val.i.i315 = load i32, ptr %i.eb, align 4, !tbaa !10 ; 3 uses
  %i.ef = icmp sgt i32 %.val.i.i315, 0
  br i1 %i.ef, label %bb.cr, label %bb.cs, !prof !13

bb.cr:                                            ; preds = %bb.cq
  %i.eg = add nuw i32 %.val.i.i315, 1
  store i32 %i.eg, ptr %i.eb, align 4, !tbaa !10
  br label %lean_inc.exit191

bb.cs:                                            ; preds = %bb.cq
  %.not.i.i316 = icmp eq i32 %.val.i.i315, 0
  br i1 %.not.i.i316, label %lean_inc.exit191, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.eh = atomicrmw sub ptr %i.eb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit191

lean_inc.exit191:                                 ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cp
  %i.ei = ptrtoint ptr %i.dz to i64
  %i.ej = and i64 %i.ei, 1
  %.not.i188 = icmp eq i64 %i.ej, 0
  br i1 %.not.i188, label %bb.cu, label %lean_inc.exit189

bb.cu:                                            ; preds = %lean_inc.exit191
  %.val.i.i318 = load i32, ptr %i.dz, align 4, !tbaa !10 ; 3 uses
  %i.ek = icmp sgt i32 %.val.i.i318, 0
  br i1 %i.ek, label %bb.cv, label %bb.cw, !prof !13

bb.cv:                                            ; preds = %bb.cu
  %i.el = add nuw i32 %.val.i.i318, 1
  store i32 %i.el, ptr %i.dz, align 4, !tbaa !10
  br label %lean_inc.exit189

bb.cw:                                            ; preds = %bb.cu
  %.not.i.i319 = icmp eq i32 %.val.i.i318, 0
  br i1 %.not.i.i319, label %lean_inc.exit189, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.em = atomicrmw sub ptr %i.dz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit189

lean_inc.exit189:                                 ; preds = %bb.cx, %bb.cw, %bb.cv, %lean_inc.exit191
  %i.en = ptrtoint ptr %i.dx to i64
  %i.eo = and i64 %i.en, 1
  %.not.i186 = icmp eq i64 %i.eo, 0
  br i1 %.not.i186, label %bb.cy, label %lean_inc.exit187

bb.cy:                                            ; preds = %lean_inc.exit189
  %.val.i.i321 = load i32, ptr %i.dx, align 4, !tbaa !10 ; 3 uses
  %i.ep = icmp sgt i32 %.val.i.i321, 0
  br i1 %i.ep, label %bb.cz, label %bb.da, !prof !13

bb.cz:                                            ; preds = %bb.cy
  %i.eq = add nuw i32 %.val.i.i321, 1
  store i32 %i.eq, ptr %i.dx, align 4, !tbaa !10
  br label %lean_inc.exit187

bb.da:                                            ; preds = %bb.cy
  %.not.i.i322 = icmp eq i32 %.val.i.i321, 0
  br i1 %.not.i.i322, label %lean_inc.exit187, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.er = atomicrmw sub ptr %i.dx, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit187

lean_inc.exit187:                                 ; preds = %bb.db, %bb.da, %bb.cz, %lean_inc.exit189
  %i.es = ptrtoint ptr %i.dv to i64
  %i.et = and i64 %i.es, 1
  %.not.i184 = icmp eq i64 %i.et, 0
  br i1 %.not.i184, label %bb.dc, label %lean_inc.exit185

bb.dc:                                            ; preds = %lean_inc.exit187
  %.val.i.i324 = load i32, ptr %i.dv, align 4, !tbaa !10 ; 3 uses
  %i.eu = icmp sgt i32 %.val.i.i324, 0
  br i1 %i.eu, label %bb.dd, label %bb.de, !prof !13

bb.dd:                                            ; preds = %bb.dc
  %i.ev = add nuw i32 %.val.i.i324, 1
  store i32 %i.ev, ptr %i.dv, align 4, !tbaa !10
  br label %lean_inc.exit185

end_hunk_2
begin_hunk_3_@l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_getRatClauseIndices_spec__1:bb.a
  %i.as = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %i.ai, ptr noundef %i.al) #5
  br i1 %i.as, label %bb.k, label %select.unfold.i.backedge

bb.k:                                             ; preds = %lean_nat_eq.exit.i, %.split.i
  %i.at = ptrtoint ptr %i.aj to i64
  %i.au = and i64 %i.at, 510
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = ptrtoint ptr %i.an to i64
  %i.ax = and i64 %i.aw, 510
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = xor i1 %i.av, %i.ay
  br i1 %i.az, label %select.unfold.i.backedge, label %bb.l

select.unfold.i.backedge:                         ; preds = %bb.k, %lean_nat_eq.exit.i, %.split.i
  br label %select.unfold.i

bb.l:                                             ; preds = %bb.k
  br i1 %.not.i34, label %bb.m, label %lean_inc.exit

bb.m:                                             ; preds = %bb.l
  %.val.i.i37 = load i32, ptr %i.g, align 4, !tbaa !10 ; 3 uses
  %i.ba = icmp sgt i32 %.val.i.i37, 0
  br i1 %i.ba, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %bb.m
  %i.bb = add nuw i32 %.val.i.i37, 1
  store i32 %i.bb, ptr %i.g, align 4, !tbaa !10
  br label %lean_inc.exit

bb.o:                                             ; preds = %bb.m
  %.not.i.i38 = icmp eq i32 %.val.i.i37, 0
  br i1 %.not.i.i38, label %lean_inc.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = atomicrmw sub ptr %i.g, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.p, %bb.o, %bb.n, %bb.l
  %i.bd = tail call ptr @lean_array_push(ptr noundef %.03046, ptr noundef %i.g) #5
  br label %.loopexit

.loopexit:                                        ; preds = %lean_obj_tag.exit.i, %lean_inc.exit, %lean_obj_tag.exit
  %.133 = phi ptr [ %.03046, %lean_obj_tag.exit ], [ %i.bd, %lean_inc.exit ], [ %.03046, %lean_obj_tag.exit.i ] ; 2 uses
  %i.be = add i64 %.02647, 1                      ; 2 uses
  %.not = icmp eq i64 %i.be, %5
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.030.lcssa = phi ptr [ %6, %bb.a ], [ %.133, %.loopexit ]
  ret ptr %.030.lcssa
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_getRatClauseIndices_spec__1___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %4, i64 8
  %.val30 = load i64, ptr %i.a, align 8, !tbaa !15
  %i.b = load i32, ptr %4, align 8, !tbaa !10     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %4, align 8, !tbaa !10
  br label %lean_dec.exit18

bb.c:                                             ; preds = %bb.a
  %.not.i19 = icmp eq i32 %i.b, 0
  br i1 %.not.i19, label %lean_dec.exit18, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #5
  br label %lean_dec.exit18

lean_dec.exit18:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %5, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !15
  %i.f = load i32, ptr %5, align 8, !tbaa !10     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %lean_dec.exit18
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %5, align 8, !tbaa !10
  br label %lean_dec.exit16

bb.f:                                             ; preds = %lean_dec.exit18
  %.not.i20 = icmp eq i32 %i.f, 0
  br i1 %.not.i20, label %lean_dec.exit16, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #5
  br label %lean_dec.exit16

lean_dec.exit16:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.i = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_getRatClauseIndices_spec__1(ptr noundef %0, ptr poison, ptr noundef %2, ptr noundef %3, i64 noundef %.val30, i64 noundef %.val, ptr noundef %6)
  %i.j = load i32, ptr %3, align 4, !tbaa !10     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %lean_dec.exit16
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %3, align 4, !tbaa !10
  br label %lean_dec_ref.exit29

bb.i:                                             ; preds = %lean_dec.exit16
  %.not.i28 = icmp eq i32 %i.j, 0
  br i1 %.not.i28, label %lean_dec_ref.exit29, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #5
  br label %lean_dec_ref.exit29

lean_dec_ref.exit29:                              ; preds = %bb.h, %bb.i, %bb.j
  %i.m = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.k, label %bb.l, !prof !13

bb.k:                                             ; preds = %lean_dec_ref.exit29
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %2, align 4, !tbaa !10
  br label %lean_dec_ref.exit27

bb.l:                                             ; preds = %lean_dec_ref.exit29
  %.not.i26 = icmp eq i32 %i.m, 0
  br i1 %.not.i26, label %lean_dec_ref.exit27, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec_ref.exit27

lean_dec_ref.exit27:                              ; preds = %bb.k, %bb.l, %bb.m
  %i.p = ptrtoint ptr %1 to i64
  %i.q = and i64 %i.p, 1
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.n, label %lean_dec.exit

bb.n:                                             ; preds = %lean_dec_ref.exit27
  %i.r = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.o, label %bb.p, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit

bb.p:                                             ; preds = %bb.n
  %.not.i22 = icmp eq i32 %i.r, 0
  br i1 %.not.i22, label %lean_dec.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.q, %bb.p, %bb.o, %lean_dec_ref.exit27
  %i.u = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.r, label %bb.s, !prof !13

bb.r:                                             ; preds = %lean_dec.exit
  %i.w = add nsw i32 %i.u, -1
  store i32 %i.w, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit25

bb.s:                                             ; preds = %lean_dec.exit
  %.not.i24 = icmp eq i32 %i.u, 0
  br i1 %.not.i24, label %lean_dec_ref.exit25, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit25

lean_dec_ref.exit25:                              ; preds = %bb.r, %bb.s, %bb.t
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_getRatClauseIndices(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 7 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.e = and i64 %i.d, 510
  %i.f = icmp eq i64 %i.e, 0
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !12   ; 10 uses
  %.val139 = load i32, ptr %2, align 8, !tbaa !10
  %i.h = icmp eq i32 %.val139, 1                  ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.d, 1
  %.not.i114 = icmp eq i64 %i.i, 0
  br i1 %.not.i114, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.c, align 4, !tbaa !10   ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %i.c, align 4, !tbaa !10
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %.not.i116 = icmp eq i32 %i.j, 0
  br i1 %.not.i116, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.c) #5
  br label %bb.p

bb.h:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = and i64 %i.m, 1
  %.not.i107 = icmp eq i64 %i.n, 0
  br i1 %.not.i107, label %bb.i, label %lean_inc.exit108

bb.i:                                             ; preds = %bb.h
  %.val.i.i = load i32, ptr %i.g, align 4, !tbaa !10 ; 3 uses
  %i.o = icmp sgt i32 %.val.i.i, 0
  br i1 %i.o, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.p = add nuw i32 %.val.i.i, 1
  store i32 %i.p, ptr %i.g, align 4, !tbaa !10
  br label %lean_inc.exit108

bb.k:                                             ; preds = %bb.i
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit108, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = atomicrmw sub ptr %i.g, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit108

lean_inc.exit108:                                 ; preds = %bb.h, %bb.j, %bb.k, %bb.l
  %i.r = load i32, ptr %2, align 8, !tbaa !10     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %lean_inc.exit108
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %2, align 8, !tbaa !10
  br label %lean_dec.exit115

bb.n:                                             ; preds = %lean_inc.exit108
  %.not.i117 = icmp eq i32 %i.r, 0
  br i1 %.not.i117, label %lean_dec.exit115, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec.exit115

bb.p:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store ptr inttoptr (i64 3 to ptr), ptr %i.b, align 8, !tbaa !12
  br label %lean_nat_lt.exit

lean_dec.exit115:                                 ; preds = %bb.o, %bb.n, %bb.m
  tail call void @lean_inc_heartbeat() #5
  %i.u = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.q, label %lean_alloc_ctor.exit

bb.q:                                             ; preds = %lean_dec.exit115
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_dec.exit115
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 1, ptr %i.u, align 4, !tbaa !10
  store i32 131096, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.g, ptr %i.x, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr inttoptr (i64 3 to ptr), ptr %i.y, align 8, !tbaa !12
  br label %lean_nat_lt.exit

bb.r:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.z = and i64 %i.d, 1
  %.not.i110 = icmp eq i64 %i.z, 0
  br i1 %.not.i110, label %bb.t, label %bb.af

bb.t:                                             ; preds = %bb.s
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !10  ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.u, label %bb.v, !prof !13

bb.u:                                             ; preds = %bb.t
  %i.ac = add nsw i32 %i.aa, -1
  store i32 %i.ac, ptr %i.c, align 4, !tbaa !10
  br label %bb.af

bb.v:                                             ; preds = %bb.t
  %.not.i119 = icmp eq i32 %i.aa, 0
  br i1 %.not.i119, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.c) #5
  br label %bb.af

bb.x:                                             ; preds = %bb.r
  %i.ad = ptrtoint ptr %i.g to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %bb.y, label %lean_inc.exit

bb.y:                                             ; preds = %bb.x
  %.val.i.i142 = load i32, ptr %i.g, align 4, !tbaa !10 ; 3 uses
  %i.af = icmp sgt i32 %.val.i.i142, 0
  br i1 %i.af, label %bb.z, label %bb.aa, !prof !13

bb.z:                                             ; preds = %bb.y
  %i.ag = add nuw i32 %.val.i.i142, 1
  store i32 %i.ag, ptr %i.g, align 4, !tbaa !10
  br label %lean_inc.exit

bb.aa:                                            ; preds = %bb.y
  %.not.i.i143 = icmp eq i32 %.val.i.i142, 0
  br i1 %.not.i.i143, label %lean_inc.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ah = atomicrmw sub ptr %i.g, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.x, %bb.z, %bb.aa, %bb.ab
  %i.ai = load i32, ptr %2, align 8, !tbaa !10    ; 3 uses
  %i.aj = icmp sgt i32 %i.ai, 1
  br i1 %i.aj, label %bb.ac, label %bb.ad, !prof !13

bb.ac:                                            ; preds = %lean_inc.exit
  %i.ak = add nsw i32 %i.ai, -1
  store i32 %i.ak, ptr %2, align 8, !tbaa !10
  br label %lean_dec.exit111

bb.ad:                                            ; preds = %lean_inc.exit
  %.not.i121 = icmp eq i32 %i.ai, 0
  br i1 %.not.i121, label %lean_dec.exit111, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec.exit111

bb.af:                                            ; preds = %bb.s, %bb.u, %bb.v, %bb.w
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !tbaa !12
  br label %lean_nat_lt.exit

lean_dec.exit111:                                 ; preds = %bb.ae, %bb.ad, %bb.ac
  tail call void @lean_inc_heartbeat() #5
  %i.al = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.ag, label %lean_alloc_ctor.exit145

bb.ag:                                            ; preds = %lean_dec.exit111
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit145:                          ; preds = %lean_dec.exit111
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 1, ptr %i.al, align 4, !tbaa !10
  store i32 131096, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.g, ptr %i.ao, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.ap, align 8, !tbaa !12
  br label %lean_nat_lt.exit

lean_nat_lt.exit:                                 ; preds = %lean_alloc_ctor.exit, %bb.p, %lean_alloc_ctor.exit145, %bb.af
  %.4 = phi ptr [ %i.u, %lean_alloc_ctor.exit ], [ %2, %bb.p ], [ %2, %bb.af ], [ %i.al, %lean_alloc_ctor.exit145 ] ; 7 uses
  %i.aq = getelementptr i8, ptr %1, i64 8
  %.val141 = load i64, ptr %i.aq, align 8, !tbaa !15
  %i.ar = shl i64 %.val141, 1
  %i.as = or disjoint i64 %i.ar, 1
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = tail call ptr @l_Array_range(ptr noundef nonnull %i.at) #5 ; 8 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %.val140 = load i64, ptr %i.av, align 8, !tbaa !15
  %.mask = and i64 %.val140, 9223372036854775807  ; 2 uses
  %.not = icmp eq i64 %.mask, 0
  br i1 %.not, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %lean_nat_lt.exit
  %i.aw = load i32, ptr %i.au, align 8, !tbaa !10 ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %bb.ai, label %bb.aj, !prof !13

bb.ai:                                            ; preds = %bb.ah
  %i.ay = add nsw i32 %i.aw, -1
  store i32 %i.ay, ptr %i.au, align 8, !tbaa !10
  br label %lean_dec_ref.exit134

bb.aj:                                            ; preds = %bb.ah
  %.not.i133 = icmp eq i32 %i.aw, 0
  br i1 %.not.i133, label %lean_dec_ref.exit134, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.au) #5
  br label %lean_dec_ref.exit134

end_hunk_3
begin_hunk_4_@l_Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_performRatCheck:bb.a
  store i32 %i.he, ptr %i.ge, align 4, !tbaa !10
  br label %lean_inc.exit

bb.dz:                                            ; preds = %bb.dx
  %.not.i.i402 = icmp eq i32 %.val.i.i401, 0
  br i1 %.not.i.i402, label %lean_inc.exit, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.hf = atomicrmw sub ptr %i.ge, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ea, %bb.dz, %bb.dy, %lean_inc.exit239
  br i1 %.not.i250, label %bb.eb, label %lean_dec.exit288

bb.eb:                                            ; preds = %lean_inc.exit
  %i.hg = load i32, ptr %i.et, align 8, !tbaa !10 ; 3 uses
  %i.hh = icmp sgt i32 %i.hg, 1
  br i1 %i.hh, label %bb.ec, label %bb.ed, !prof !13

bb.ec:                                            ; preds = %bb.eb
  %i.hi = add nsw i32 %i.hg, -1
  store i32 %i.hi, ptr %i.et, align 8, !tbaa !10
  br label %lean_dec.exit288

bb.ed:                                            ; preds = %bb.eb
  %.not.i320 = icmp eq i32 %i.hg, 0
  br i1 %.not.i320, label %lean_dec.exit288, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.et) #5
  br label %lean_dec.exit288

lean_dec.exit288:                                 ; preds = %lean_inc.exit, %bb.ec, %bb.ed, %bb.ee, %lean_dec.exit290
  %.0226 = phi ptr [ %i.et, %lean_dec.exit290 ], [ inttoptr (i64 1 to ptr), %bb.ee ], [ inttoptr (i64 1 to ptr), %bb.ed ], [ inttoptr (i64 1 to ptr), %bb.ec ], [ inttoptr (i64 1 to ptr), %lean_inc.exit ]
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ei, %lean_dec.exit288
  %.08.i = phi ptr [ %i.fc, %lean_dec.exit288 ], [ %i.ht, %bb.ei ] ; 4 uses
  %.0.i404 = phi ptr [ %i.gk, %lean_dec.exit288 ], [ %i.hu, %bb.ei ] ; 2 uses
  %i.hj = ptrtoint ptr %.08.i to i64              ; 2 uses
  %i.hk = and i64 %i.hj, 1
  %.not.i.i405 = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i405, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.hl = lshr i64 %i.hj, 1
  %i.hm = trunc i64 %i.hl to i32
  br label %lean_obj_tag.exit.i

bb.eh:                                            ; preds = %bb.ef
  %i.hn = getelementptr i8, ptr %.08.i, i64 4
  %.val.i.i406 = load i32, ptr %i.hn, align 4
  %i.ho = lshr i32 %.val.i.i406, 24
  br label %lean_obj_tag.exit.i

lean_obj_tag.exit.i:                              ; preds = %bb.eh, %bb.eg
  %.0.i.i = phi i32 [ %i.hm, %bb.eg ], [ %i.ho, %bb.eh ]
  %i.hp = icmp eq i32 %.0.i.i, 0
  br i1 %i.hp, label %l_List_foldl___at___00Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_restoreAssignments_spec__0___redArg.exit, label %bb.ei

bb.ei:                                            ; preds = %lean_obj_tag.exit.i
  %i.hq = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !12
  %i.hs = getelementptr inbounds nuw i8, ptr %.08.i, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !12
  %i.hu = tail call ptr @l_Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_clearUnit___redArg(ptr noundef %.0.i404, ptr noundef %i.hr)
  br label %bb.ef

l_List_foldl___at___00Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_restoreAssignments_spec__0___redArg.exit: ; preds = %lean_obj_tag.exit.i
  br i1 %.not.i248, label %bb.ej, label %lean_dec.exit286

bb.ej:                                            ; preds = %l_List_foldl___at___00Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_restoreAssignments_spec__0___redArg.exit
  %i.hv = load i32, ptr %i.fc, align 4, !tbaa !10 ; 3 uses
  %i.hw = icmp sgt i32 %i.hv, 1
  br i1 %i.hw, label %bb.ek, label %bb.el, !prof !13

bb.ek:                                            ; preds = %bb.ej
  %i.hx = add nsw i32 %i.hv, -1
  store i32 %i.hx, ptr %i.fc, align 4, !tbaa !10
  br label %lean_dec.exit286

bb.el:                                            ; preds = %bb.ej
  %.not.i322 = icmp eq i32 %i.hv, 0
  br i1 %.not.i322, label %lean_dec.exit286, label %bb.em

bb.em:                                            ; preds = %bb.el
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fc) #5
  br label %lean_dec.exit286

lean_dec.exit286:                                 ; preds = %bb.em, %bb.el, %bb.ek, %l_List_foldl___at___00Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_restoreAssignments_spec__0___redArg.exit
  br i1 %i.gl, label %bb.ep, label %bb.en

bb.en:                                            ; preds = %lean_dec.exit286
  tail call void @lean_inc_heartbeat() #5
  %i.hy = tail call noalias ptr @mi_malloc_small(i64 noundef 40) #5 ; 7 uses
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %bb.eo, label %lean_alloc_ctor.exit407

bb.eo:                                            ; preds = %bb.en
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit407:                          ; preds = %bb.en
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  store i32 1, ptr %i.hy, align 4, !tbaa !10
  store i32 262184, ptr %i.ia, align 4
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store ptr %i.ge, ptr %i.ib, align 8, !tbaa !12
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  store ptr %i.gg, ptr %i.ic, align 8, !tbaa !12
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  store ptr %i.gi, ptr %i.id, align 8, !tbaa !12
  br label %bb.ep

bb.ep:                                            ; preds = %lean_dec.exit286, %lean_alloc_ctor.exit407
  %.sink458 = phi ptr [ %i.hy, %lean_alloc_ctor.exit407 ], [ %.0226, %lean_dec.exit286 ] ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.sink458, i64 32
  store ptr %.0.i404, ptr %i.ie, align 8, !tbaa !12
  %i.if = tail call ptr @l_Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_clearRatUnits___redArg(ptr noundef nonnull %.sink458) ; 6 uses
  %i.ig = ptrtoint ptr %i.fo to i64               ; 2 uses
  %i.ih = and i64 %i.ig, 1
  %.not.i283 = icmp eq i64 %i.ih, 0
  br i1 %.not.i283, label %bb.eq, label %lean_dec.exit284

bb.eq:                                            ; preds = %bb.ep
  %i.ii = load i32, ptr %i.fo, align 4, !tbaa !10 ; 3 uses
  %i.ij = icmp sgt i32 %i.ii, 1
  br i1 %i.ij, label %bb.er, label %bb.es, !prof !13

bb.er:                                            ; preds = %bb.eq
  %i.ik = add nsw i32 %i.ii, -1
  store i32 %i.ik, ptr %i.fo, align 4, !tbaa !10
  br label %lean_dec.exit284

bb.es:                                            ; preds = %bb.eq
  %.not.i324 = icmp eq i32 %i.ii, 0
  br i1 %.not.i324, label %lean_dec.exit284, label %bb.et

bb.et:                                            ; preds = %bb.es
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fo) #5
  br label %lean_dec.exit284

lean_dec.exit284:                                 ; preds = %bb.et, %bb.es, %bb.er, %bb.ep
  %i.il = and i64 %i.ig, 510
  %i.im = icmp eq i64 %i.il, 0
  %i.in = ptrtoint ptr %i.fm to i64               ; 2 uses
  %i.io = and i64 %i.in, 1
  %.not.i281 = icmp eq i64 %i.io, 0               ; 2 uses
  br i1 %i.im, label %bb.eu, label %bb.fk

bb.eu:                                            ; preds = %lean_dec.exit284
  br i1 %.not.i281, label %bb.ev, label %lean_dec.exit282

bb.ev:                                            ; preds = %bb.eu
  %i.ip = load i32, ptr %i.fm, align 4, !tbaa !10 ; 3 uses
  %i.iq = icmp sgt i32 %i.ip, 1
  br i1 %i.iq, label %bb.ew, label %bb.ex, !prof !13

bb.ew:                                            ; preds = %bb.ev
  %i.ir = add nsw i32 %i.ip, -1
  store i32 %i.ir, ptr %i.fm, align 4, !tbaa !10
  br label %lean_dec.exit282

bb.ex:                                            ; preds = %bb.ev
  %.not.i326 = icmp eq i32 %i.ip, 0
  br i1 %.not.i326, label %lean_dec.exit282, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fm) #5
  br label %lean_dec.exit282

lean_dec.exit282:                                 ; preds = %bb.ey, %bb.ex, %bb.ew, %bb.eu
  %i.is = and i64 %i.in, 510
  %i.it = icmp eq i64 %i.is, 0
  br i1 %i.it, label %bb.ez, label %bb.fc

bb.ez:                                            ; preds = %lean_dec.exit282
  br i1 %i.fp, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.iu = getelementptr inbounds nuw i8, ptr %.0228, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %.0228, i64 16
  store ptr %i.df, ptr %i.iv, align 8, !tbaa !12
  store ptr %i.if, ptr %i.iu, align 8, !tbaa !12
  br label %bb.ge

bb.fb:                                            ; preds = %bb.ez
  %i.iw = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2) ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store ptr %i.if, ptr %i.ix, align 8, !tbaa !12
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  store ptr %i.df, ptr %i.iy, align 8, !tbaa !12
  br label %bb.ge

bb.fc:                                            ; preds = %lean_dec.exit282
  %i.iz = and i64 %.pre413, 1
  %.not.i279 = icmp eq i64 %i.iz, 0
  br i1 %.not.i279, label %bb.fd, label %lean_dec.exit280

bb.fd:                                            ; preds = %bb.fc
  %i.ja = load i32, ptr %i.df, align 4, !tbaa !10 ; 3 uses
  %i.jb = icmp sgt i32 %i.ja, 1
  br i1 %i.jb, label %bb.fe, label %bb.ff, !prof !13

bb.fe:                                            ; preds = %bb.fd
  %i.jc = add nsw i32 %i.ja, -1
  store i32 %i.jc, ptr %i.df, align 4, !tbaa !10
  br label %lean_dec.exit280

bb.ff:                                            ; preds = %bb.fd
  %.not.i328 = icmp eq i32 %i.ja, 0
  br i1 %.not.i328, label %lean_dec.exit280, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.df) #5
  br label %lean_dec.exit280

lean_dec.exit280:                                 ; preds = %bb.fg, %bb.ff, %bb.fe, %bb.fc
  br i1 %i.fp, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %lean_dec.exit280
  %i.jd = getelementptr inbounds nuw i8, ptr %.0228, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %.0228, i64 16
  store ptr inttoptr (i64 3 to ptr), ptr %i.je, align 8, !tbaa !12
  store ptr %i.if, ptr %i.jd, align 8, !tbaa !12
  br label %bb.ge

bb.fi:                                            ; preds = %lean_dec.exit280
  tail call void @lean_inc_heartbeat() #5
  %i.jf = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %bb.fj, label %lean_alloc_ctor.exit408

bb.fj:                                            ; preds = %bb.fi
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit408:                          ; preds = %bb.fi
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  store i32 1, ptr %i.jf, align 4, !tbaa !10
  store i32 131096, ptr %i.jh, align 4
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store ptr %i.if, ptr %i.ji, align 8, !tbaa !12
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store ptr inttoptr (i64 3 to ptr), ptr %i.jj, align 8, !tbaa !12
  br label %bb.ge

bb.fk:                                            ; preds = %lean_dec.exit284
  br i1 %.not.i281, label %bb.fl, label %lean_dec.exit278

bb.fl:                                            ; preds = %bb.fk
  %i.jk = load i32, ptr %i.fm, align 4, !tbaa !10 ; 3 uses
  %i.jl = icmp sgt i32 %i.jk, 1
  br i1 %i.jl, label %bb.fm, label %bb.fn, !prof !13

bb.fm:                                            ; preds = %bb.fl
  %i.jm = add nsw i32 %i.jk, -1
  store i32 %i.jm, ptr %i.fm, align 4, !tbaa !10
  br label %lean_dec.exit278

bb.fn:                                            ; preds = %bb.fl
  %.not.i330 = icmp eq i32 %i.jk, 0
  br i1 %.not.i330, label %lean_dec.exit278, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fm) #5
  br label %lean_dec.exit278

lean_dec.exit278:                                 ; preds = %bb.fo, %bb.fn, %bb.fm, %bb.fk
  br i1 %i.fp, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %lean_dec.exit278
  %i.jn = getelementptr inbounds nuw i8, ptr %.0228, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %.0228, i64 16
  store ptr %i.df, ptr %i.jo, align 8, !tbaa !12
  store ptr %i.if, ptr %i.jn, align 8, !tbaa !12
  br label %bb.ge

bb.fq:                                            ; preds = %lean_dec.exit278
  tail call void @lean_inc_heartbeat() #5
  %i.jp = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %bb.fr, label %lean_alloc_ctor.exit409

bb.fr:                                            ; preds = %bb.fq
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit409:                          ; preds = %bb.fq
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  store i32 1, ptr %i.jp, align 4, !tbaa !10
  store i32 131096, ptr %i.jr, align 4
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store ptr %i.if, ptr %i.js, align 8, !tbaa !12
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  store ptr %i.df, ptr %i.jt, align 8, !tbaa !12
  br label %bb.ge

bb.fs:                                            ; preds = %lean_dec.exit296
  %i.ju = and i64 %.pre413, 1
  %.not.i275 = icmp eq i64 %i.ju, 0
  br i1 %.not.i275, label %bb.ft, label %lean_dec.exit276

bb.ft:                                            ; preds = %bb.fs
  %i.jv = load i32, ptr %i.df, align 4, !tbaa !10 ; 3 uses
  %i.jw = icmp sgt i32 %i.jv, 1
  br i1 %i.jw, label %bb.fu, label %bb.fv, !prof !13

bb.fu:                                            ; preds = %bb.ft
  %i.jx = add nsw i32 %i.jv, -1
  store i32 %i.jx, ptr %i.df, align 4, !tbaa !10
  br label %lean_dec.exit276

bb.fv:                                            ; preds = %bb.ft
  %.not.i332 = icmp eq i32 %i.jv, 0
  br i1 %.not.i332, label %lean_dec.exit276, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.df) #5
  br label %lean_dec.exit276

lean_dec.exit276:                                 ; preds = %bb.fw, %bb.fv, %bb.fu, %bb.fs
  %i.jy = ptrtoint ptr %i.aj to i64
  %i.jz = and i64 %i.jy, 1
  %.not.i274 = icmp eq i64 %i.jz, 0
  br i1 %.not.i274, label %bb.fx, label %lean_dec.exit

bb.fx:                                            ; preds = %lean_dec.exit276
  %i.ka = load i32, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.kb = icmp sgt i32 %i.ka, 1
  br i1 %i.kb, label %bb.fy, label %bb.fz, !prof !13

bb.fy:                                            ; preds = %bb.fx
  %i.kc = add nsw i32 %i.ka, -1
  store i32 %i.kc, ptr %i.aj, align 4, !tbaa !10
  br label %lean_dec.exit

bb.fz:                                            ; preds = %bb.fx
  %.not.i334 = icmp eq i32 %i.ka, 0
  br i1 %.not.i334, label %lean_dec.exit, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aj) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.ga, %bb.fz, %bb.fy, %lean_dec.exit276
  %i.kd = tail call ptr @l_Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_clearRatUnits___redArg(ptr noundef %i.dd) ; 2 uses
  br i1 %i.dg, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %lean_dec.exit
  %i.ke = getelementptr inbounds nuw i8, ptr %.0230, i64 8
  %i.kf = getelementptr inbounds nuw i8, ptr %.0230, i64 16
  store ptr inttoptr (i64 3 to ptr), ptr %i.kf, align 8, !tbaa !12
  store ptr %i.kd, ptr %i.ke, align 8, !tbaa !12
  br label %bb.ge

bb.gc:                                            ; preds = %lean_dec.exit
  tail call void @lean_inc_heartbeat() #5
  %i.kg = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %bb.gd, label %lean_alloc_ctor.exit410

bb.gd:                                            ; preds = %bb.gc
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit410:                          ; preds = %bb.gc
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  store i32 1, ptr %i.kg, align 4, !tbaa !10
  store i32 131096, ptr %i.ki, align 4
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store ptr %i.kd, ptr %i.kj, align 8, !tbaa !12
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store ptr inttoptr (i64 3 to ptr), ptr %i.kk, align 8, !tbaa !12
  br label %bb.ge

bb.ge:                                            ; preds = %lean_alloc_ctor.exit410, %bb.gb, %lean_alloc_ctor.exit409, %bb.fp, %bb.fa, %bb.fb, %bb.fh, %lean_alloc_ctor.exit408, %bb.aw, %lean_alloc_ctor.exit360
  %.11 = phi ptr [ %i.ce, %lean_alloc_ctor.exit360 ], [ %.0237, %bb.aw ], [ %i.jp, %lean_alloc_ctor.exit409 ], [ %i.jf, %lean_alloc_ctor.exit408 ], [ %i.iw, %bb.fb ], [ %.0228, %bb.fa ], [ %.0228, %bb.fh ], [ %.0228, %bb.fp ], [ %.0230, %bb.gb ], [ %i.kg, %lean_alloc_ctor.exit410 ]
  ret ptr %.11
}

; Function Attrs: nounwind uwtable
define ptr @l_Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_performRatCheck___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_performRatCheck(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %i.b = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %2, align 4, !tbaa !10
  br label %lean_dec_ref.exit9

bb.c:                                             ; preds = %bb.a
  %.not.i8 = icmp eq i32 %i.b, 0
  br i1 %.not.i8, label %lean_dec_ref.exit9, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec_ref.exit9

lean_dec_ref.exit9:                               ; preds = %bb.b, %bb.c, %bb.d
  %i.e = ptrtoint ptr %0 to i64
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.e, label %lean_dec.exit
end_hunk_4
begin_hunk_5_@l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_performRatAdd_spec__1___boxed:bb.a
  %i.m = load i32, ptr %3, align 4, !tbaa !10     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %lean_dec.exit16
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %3, align 4, !tbaa !10
  br label %lean_dec_ref.exit27

bb.i:                                             ; preds = %lean_dec.exit16
  %.not.i26 = icmp eq i32 %i.m, 0
  br i1 %.not.i26, label %lean_dec_ref.exit27, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #5
  br label %lean_dec_ref.exit27

lean_dec_ref.exit27:                              ; preds = %bb.h, %bb.i, %bb.j
  %i.p = ptrtoint ptr %1 to i64
  %i.q = and i64 %i.p, 1
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.k, label %lean_dec.exit

bb.k:                                             ; preds = %lean_dec_ref.exit27
  %i.r = load i32, ptr %1, align 4, !tbaa !10     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.l, label %bb.m, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %1, align 4, !tbaa !10
  br label %lean_dec.exit

bb.m:                                             ; preds = %bb.k
  %.not.i22 = icmp eq i32 %i.r, 0
  br i1 %.not.i22, label %lean_dec.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.n, %bb.m, %bb.l, %lean_dec_ref.exit27
  %i.u = load i32, ptr %0, align 4, !tbaa !10     ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.o, label %bb.p, !prof !13

bb.o:                                             ; preds = %lean_dec.exit
  %i.w = add nsw i32 %i.u, -1
  store i32 %i.w, ptr %0, align 4, !tbaa !10
  br label %lean_dec_ref.exit25

bb.p:                                             ; preds = %lean_dec.exit
  %.not.i24 = icmp eq i32 %i.u, 0
  br i1 %.not.i24, label %lean_dec_ref.exit25, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit25

lean_dec_ref.exit25:                              ; preds = %bb.o, %bb.p, %bb.q
  ret ptr %i.l
}

; Function Attrs: nounwind uwtable
define ptr @l_List_mapTR_loop___at___00Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_performRatAdd_spec__0(i8 noundef zeroext %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i8 %0 to i64
  %i.b = shl nuw nsw i64 %i.a, 1
  %i.c = or disjoint i64 %i.b, 1
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.084 = phi ptr [ %2, %bb.a ], [ %.084.be, %.backedge ] ; 3 uses
  %.0 = phi ptr [ %1, %bb.a ], [ %i.p, %.backedge ] ; 9 uses
  %i.e = ptrtoint ptr %.0 to i64                  ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i127 = icmp eq i64 %i.f, 0                ; 2 uses
  br i1 %.not.i127, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i64 %i.e, 1
  %i.h = trunc i64 %i.g to i32
  br label %lean_obj_tag.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.0, i64 4
  %.val.i = load i32, ptr %i.i, align 4
  %i.j = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  %i.k = icmp eq i32 %.0.i, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %lean_obj_tag.exit
  %i.l = tail call ptr @l_List_reverse___redArg(ptr noundef %.084) #5
  ret ptr %i.l

bb.f:                                             ; preds = %lean_obj_tag.exit
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12   ; 15 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12   ; 5 uses
  %.0.val = load i32, ptr %.0, align 8, !tbaa !10
  %i.q = icmp eq i32 %.0.val, 1                   ; 2 uses
  br i1 %i.q, label %lean_dec.exit116, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = and i64 %i.r, 1
  %.not.i106 = icmp eq i64 %i.s, 0
  br i1 %.not.i106, label %bb.h, label %lean_inc.exit107

bb.h:                                             ; preds = %bb.g
  %.val.i.i = load i32, ptr %i.p, align 4, !tbaa !10 ; 3 uses
  %i.t = icmp sgt i32 %.val.i.i, 0
  br i1 %i.t, label %bb.i, label %bb.j, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.u = add nuw i32 %.val.i.i, 1
  store i32 %i.u, ptr %i.p, align 4, !tbaa !10
  br label %lean_inc.exit107

bb.j:                                             ; preds = %bb.h
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit107, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = atomicrmw sub ptr %i.p, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit107

lean_inc.exit107:                                 ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  %i.w = ptrtoint ptr %i.n to i64
  %i.x = and i64 %i.w, 1
  %.not.i104 = icmp eq i64 %i.x, 0
  br i1 %.not.i104, label %bb.l, label %lean_inc.exit105

bb.l:                                             ; preds = %lean_inc.exit107
  %.val.i.i128 = load i32, ptr %i.n, align 4, !tbaa !10 ; 3 uses
  %i.y = icmp sgt i32 %.val.i.i128, 0
  br i1 %i.y, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %bb.l
  %i.z = add nuw i32 %.val.i.i128, 1
  store i32 %i.z, ptr %i.n, align 4, !tbaa !10
  br label %lean_inc.exit105

bb.n:                                             ; preds = %bb.l
  %.not.i.i129 = icmp eq i32 %.val.i.i128, 0
  br i1 %.not.i.i129, label %lean_inc.exit105, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = atomicrmw sub ptr %i.n, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit105

lean_inc.exit105:                                 ; preds = %bb.o, %bb.n, %bb.m, %lean_inc.exit107
  br i1 %.not.i127, label %bb.p, label %lean_dec.exit116

bb.p:                                             ; preds = %lean_inc.exit105
  %i.ab = load i32, ptr %.0, align 8, !tbaa !10   ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.q, label %bb.r, !prof !13

bb.q:                                             ; preds = %bb.p
  %i.ad = add nsw i32 %i.ab, -1
  store i32 %i.ad, ptr %.0, align 8, !tbaa !10
  br label %lean_dec.exit116

bb.r:                                             ; preds = %bb.p
  %.not.i117 = icmp eq i32 %i.ab, 0
  br i1 %.not.i117, label %lean_dec.exit116, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0) #5
  br label %lean_dec.exit116

lean_dec.exit116:                                 ; preds = %lean_inc.exit105, %bb.q, %bb.r, %bb.s, %bb.f
  %.094 = phi ptr [ %.0, %bb.f ], [ inttoptr (i64 1 to ptr), %bb.s ], [ inttoptr (i64 1 to ptr), %bb.r ], [ inttoptr (i64 1 to ptr), %bb.q ], [ inttoptr (i64 1 to ptr), %lean_inc.exit105 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !12 ; 7 uses
  %i.ah = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.ai = and i64 %i.ah, 510
  %i.aj = icmp eq i64 %i.ai, 0
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !12 ; 10 uses
  %.val126 = load i32, ptr %i.n, align 8, !tbaa !10
  %i.al = icmp eq i32 %.val126, 1                 ; 2 uses
  br i1 %i.aj, label %bb.t, label %bb.ak

bb.t:                                             ; preds = %lean_dec.exit116
  br i1 %i.al, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.am = and i64 %i.ah, 1
  %.not.i113 = icmp eq i64 %i.am, 0
  br i1 %.not.i113, label %bb.v, label %bb.ah

bb.v:                                             ; preds = %bb.u
  %i.an = load i32, ptr %i.ag, align 4, !tbaa !10 ; 3 uses
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %bb.w, label %bb.x, !prof !13

bb.w:                                             ; preds = %bb.v
  %i.ap = add nsw i32 %i.an, -1
  store i32 %i.ap, ptr %i.ag, align 4, !tbaa !10
  br label %bb.ah

bb.x:                                             ; preds = %bb.v
  %.not.i118 = icmp eq i32 %i.an, 0
  br i1 %.not.i118, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ag) #5
  br label %bb.ah

bb.z:                                             ; preds = %bb.t
  %i.aq = ptrtoint ptr %i.ak to i64
  %i.ar = and i64 %i.aq, 1
  %.not.i102 = icmp eq i64 %i.ar, 0
  br i1 %.not.i102, label %bb.aa, label %lean_inc.exit103

bb.aa:                                            ; preds = %bb.z
  %.val.i.i131 = load i32, ptr %i.ak, align 4, !tbaa !10 ; 3 uses
  %i.as = icmp sgt i32 %.val.i.i131, 0
  br i1 %i.as, label %bb.ab, label %bb.ac, !prof !13

bb.ab:                                            ; preds = %bb.aa
  %i.at = add nuw i32 %.val.i.i131, 1
  store i32 %i.at, ptr %i.ak, align 4, !tbaa !10
  br label %lean_inc.exit103

bb.ac:                                            ; preds = %bb.aa
  %.not.i.i132 = icmp eq i32 %.val.i.i131, 0
  br i1 %.not.i.i132, label %lean_inc.exit103, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.au = atomicrmw sub ptr %i.ak, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit103

lean_inc.exit103:                                 ; preds = %bb.z, %bb.ab, %bb.ac, %bb.ad
  %i.av = load i32, ptr %i.n, align 8, !tbaa !10  ; 3 uses
  %i.aw = icmp sgt i32 %i.av, 1
  br i1 %i.aw, label %bb.ae, label %bb.af, !prof !13

bb.ae:                                            ; preds = %lean_inc.exit103
  %i.ax = add nsw i32 %i.av, -1
  store i32 %i.ax, ptr %i.n, align 8, !tbaa !10
  br label %bb.ai

bb.af:                                            ; preds = %lean_inc.exit103
  %.not.i120 = icmp eq i32 %i.av, 0
  br i1 %.not.i120, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #5
  br label %bb.ai

bb.ah:                                            ; preds = %bb.u, %bb.w, %bb.x, %bb.y
  store ptr %i.d, ptr %i.af, align 8, !tbaa !12
  br label %bb.ba

bb.ai:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  tail call void @lean_inc_heartbeat() #5
  %i.ay = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.aj, label %lean_alloc_ctor.exit

bb.aj:                                            ; preds = %bb.ai
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.ai
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 1, ptr %i.ay, align 4, !tbaa !10
  store i32 131096, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.ak, ptr %i.bb, align 8, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %i.d, ptr %i.bc, align 8, !tbaa !12
  br label %bb.ba

bb.ak:                                            ; preds = %lean_dec.exit116
  br i1 %i.al, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.bd = and i64 %i.ah, 1
  %.not.i109 = icmp eq i64 %i.bd, 0
  br i1 %.not.i109, label %bb.am, label %bb.ay

bb.am:                                            ; preds = %bb.al
  %i.be = load i32, ptr %i.ag, align 4, !tbaa !10 ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 1
  br i1 %i.bf, label %bb.an, label %bb.ao, !prof !13

bb.an:                                            ; preds = %bb.am
  %i.bg = add nsw i32 %i.be, -1
  store i32 %i.bg, ptr %i.ag, align 4, !tbaa !10
  br label %bb.ay

bb.ao:                                            ; preds = %bb.am
  %.not.i122 = icmp eq i32 %i.be, 0
  br i1 %.not.i122, label %bb.ay, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ag) #5
  br label %bb.ay

bb.aq:                                            ; preds = %bb.ak
  %i.bh = ptrtoint ptr %i.ak to i64
  %i.bi = and i64 %i.bh, 1
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %bb.ar, label %lean_inc.exit

bb.ar:                                            ; preds = %bb.aq
  %.val.i.i134 = load i32, ptr %i.ak, align 4, !tbaa !10 ; 3 uses
  %i.bj = icmp sgt i32 %.val.i.i134, 0
  br i1 %i.bj, label %bb.as, label %bb.at, !prof !13

bb.as:                                            ; preds = %bb.ar
  %i.bk = add nuw i32 %.val.i.i134, 1
  store i32 %i.bk, ptr %i.ak, align 4, !tbaa !10
  br label %lean_inc.exit

bb.at:                                            ; preds = %bb.ar
  %.not.i.i135 = icmp eq i32 %.val.i.i134, 0
  br i1 %.not.i.i135, label %lean_inc.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bl = atomicrmw sub ptr %i.ak, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.aq, %bb.as, %bb.at, %bb.au
  %i.bm = load i32, ptr %i.n, align 8, !tbaa !10  ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, 1
  br i1 %i.bn, label %bb.av, label %bb.aw, !prof !13

bb.av:                                            ; preds = %lean_inc.exit
  %i.bo = add nsw i32 %i.bm, -1
  store i32 %i.bo, ptr %i.n, align 8, !tbaa !10
  br label %lean_dec.exit110

bb.aw:                                            ; preds = %lean_inc.exit
  %.not.i124 = icmp eq i32 %i.bm, 0
  br i1 %.not.i124, label %lean_dec.exit110, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #5
  br label %lean_dec.exit110

bb.ay:                                            ; preds = %bb.al, %bb.an, %bb.ao, %bb.ap
  store ptr inttoptr (i64 1 to ptr), ptr %i.af, align 8, !tbaa !12
  br label %bb.ba

lean_dec.exit110:                                 ; preds = %bb.ax, %bb.aw, %bb.av
  tail call void @lean_inc_heartbeat() #5
  %i.bp = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.az, label %lean_alloc_ctor.exit137

bb.az:                                            ; preds = %lean_dec.exit110
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit137:                          ; preds = %lean_dec.exit110
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 1, ptr %i.bp, align 4, !tbaa !10
  store i32 131096, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.ak, ptr %i.bs, align 8, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.bt, align 8, !tbaa !12
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %lean_alloc_ctor.exit137, %bb.ah, %lean_alloc_ctor.exit
  %.4 = phi ptr [ %i.ay, %lean_alloc_ctor.exit ], [ %i.n, %bb.ah ], [ %i.n, %bb.ay ], [ %i.bp, %lean_alloc_ctor.exit137 ] ; 2 uses
  br i1 %i.q, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.bu = getelementptr inbounds nuw i8, ptr %.094, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.094, i64 16
  store ptr %.084, ptr %i.bv, align 8, !tbaa !12
  store ptr %.4, ptr %i.bu, align 8, !tbaa !12
  br label %.backedge

bb.bc:                                            ; preds = %bb.ba
  tail call void @lean_inc_heartbeat() #5
  %i.bw = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.bd, label %lean_alloc_ctor.exit138

bb.bd:                                            ; preds = %bb.bc
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit138:                          ; preds = %bb.bc
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i32 1, ptr %i.bw, align 4, !tbaa !10
  store i32 16908312, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %.4, ptr %i.bz, align 8, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr %.084, ptr %i.ca, align 8, !tbaa !12
  br label %.backedge

.backedge:                                        ; preds = %lean_alloc_ctor.exit138, %bb.bb
end_hunk_5
begin_hunk_6_@l_Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_performRatAdd:bb.a
  %i.ea = ptrtoint ptr %i.dd to i64
  %i.eb = and i64 %i.ea, 1
  %.not.i327 = icmp eq i64 %i.eb, 0
  br i1 %.not.i327, label %bb.ch, label %lean_inc.exit328

bb.ch:                                            ; preds = %lean_inc.exit330
  %.val.i.i530 = load i32, ptr %i.dd, align 4, !tbaa !10 ; 3 uses
  %i.ec = icmp sgt i32 %.val.i.i530, 0
  br i1 %i.ec, label %bb.ci, label %bb.cj, !prof !13

bb.ci:                                            ; preds = %bb.ch
  %i.ed = add nuw i32 %.val.i.i530, 1
  store i32 %i.ed, ptr %i.dd, align 4, !tbaa !10
  br label %lean_inc.exit328

bb.cj:                                            ; preds = %bb.ch
  %.not.i.i531 = icmp eq i32 %.val.i.i530, 0
  br i1 %.not.i.i531, label %lean_inc.exit328, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ee = atomicrmw sub ptr %i.dd, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit328

lean_inc.exit328:                                 ; preds = %lean_inc.exit330, %bb.ci, %bb.cj, %bb.ck
  %i.ef = load i32, ptr %.4311585, align 8, !tbaa !10 ; 3 uses
  %i.eg = icmp sgt i32 %i.ef, 1
  br i1 %i.eg, label %bb.cl, label %bb.cm, !prof !13

bb.cl:                                            ; preds = %lean_inc.exit328
  %i.eh = add nsw i32 %i.ef, -1
  store i32 %i.eh, ptr %.4311585, align 8, !tbaa !10
  br label %lean_dec.exit393

bb.cm:                                            ; preds = %lean_inc.exit328
  %.not.i409 = icmp eq i32 %i.ef, 0
  br i1 %.not.i409, label %lean_dec.exit393, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.4311585) #5
  br label %lean_dec.exit393

lean_dec.exit393:                                 ; preds = %bb.cl, %bb.cm, %bb.cn, %lean_dec_ref.exit474
  %.0317 = phi ptr [ %.4311585, %lean_dec_ref.exit474 ], [ inttoptr (i64 1 to ptr), %bb.cn ], [ inttoptr (i64 1 to ptr), %bb.cm ], [ inttoptr (i64 1 to ptr), %bb.cl ]
  br label %bb.co

bb.co:                                            ; preds = %bb.cr, %lean_dec.exit393
  %.08.i = phi ptr [ %i.bu, %lean_dec.exit393 ], [ %i.es, %bb.cr ] ; 4 uses
  %.0.i533 = phi ptr [ %i.dj, %lean_dec.exit393 ], [ %i.et, %bb.cr ] ; 2 uses
  %i.ei = ptrtoint ptr %.08.i to i64              ; 2 uses
  %i.ej = and i64 %i.ei, 1
  %.not.i.i534 = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i534, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ek = lshr i64 %i.ei, 1
  %i.el = trunc i64 %i.ek to i32
  br label %lean_obj_tag.exit.i

bb.cq:                                            ; preds = %bb.co
  %i.em = getelementptr i8, ptr %.08.i, i64 4
  %.val.i.i535 = load i32, ptr %i.em, align 4
  %i.en = lshr i32 %.val.i.i535, 24
  br label %lean_obj_tag.exit.i

lean_obj_tag.exit.i:                              ; preds = %bb.cq, %bb.cp
  %.0.i.i = phi i32 [ %i.el, %bb.cp ], [ %i.en, %bb.cq ]
  %i.eo = icmp eq i32 %.0.i.i, 0
  br i1 %i.eo, label %l_List_foldl___at___00Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_restoreAssignments_spec__0___redArg.exit, label %bb.cr

bb.cr:                                            ; preds = %lean_obj_tag.exit.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !12
  %i.er = getelementptr inbounds nuw i8, ptr %.08.i, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !12
  %i.et = tail call ptr @l_Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_clearUnit___redArg(ptr noundef %.0.i533, ptr noundef %i.eq)
  br label %bb.co

l_List_foldl___at___00Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_restoreAssignments_spec__0___redArg.exit: ; preds = %lean_obj_tag.exit.i
  %i.eu = ptrtoint ptr %i.bu to i64
  %i.ev = and i64 %i.eu, 1
  %.not.i390 = icmp eq i64 %i.ev, 0
  br i1 %.not.i390, label %bb.cs, label %lean_dec.exit391

bb.cs:                                            ; preds = %l_List_foldl___at___00Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_restoreAssignments_spec__0___redArg.exit
  %i.ew = load i32, ptr %i.bu, align 4, !tbaa !10 ; 3 uses
  %i.ex = icmp sgt i32 %i.ew, 1
  br i1 %i.ex, label %bb.ct, label %bb.cu, !prof !13

bb.ct:                                            ; preds = %bb.cs
  %i.ey = add nsw i32 %i.ew, -1
  store i32 %i.ey, ptr %i.bu, align 4, !tbaa !10
  br label %lean_dec.exit391

bb.cu:                                            ; preds = %bb.cs
  %.not.i411 = icmp eq i32 %i.ew, 0
  br i1 %.not.i411, label %lean_dec.exit391, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bu) #5
  br label %lean_dec.exit391

lean_dec.exit391:                                 ; preds = %bb.cv, %bb.cu, %bb.ct, %l_List_foldl___at___00Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_restoreAssignments_spec__0___redArg.exit
  br i1 %i.dk, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %lean_dec.exit391
  tail call void @lean_inc_heartbeat() #5
  %i.ez = tail call noalias ptr @mi_malloc_small(i64 noundef 40) #5 ; 7 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %bb.cx, label %lean_alloc_ctor.exit536

bb.cx:                                            ; preds = %bb.cw
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit536:                          ; preds = %bb.cw
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  store i32 1, ptr %i.ez, align 4, !tbaa !10
  store i32 262184, ptr %i.fb, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store ptr %i.dd, ptr %i.fc, align 8, !tbaa !12
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store ptr %i.df, ptr %i.fd, align 8, !tbaa !12
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  store ptr %i.dh, ptr %i.fe, align 8, !tbaa !12
  br label %bb.cy

bb.cy:                                            ; preds = %lean_dec.exit391, %lean_alloc_ctor.exit536
  %.sink675 = phi ptr [ %i.ez, %lean_alloc_ctor.exit536 ], [ %.0317, %lean_dec.exit391 ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sink675, i64 32
  store ptr %.0.i533, ptr %i.ff, align 8, !tbaa !12
  %i.fg = tail call ptr @l_Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_clearRupUnits(ptr poison, ptr noundef nonnull %.sink675)
  %i.fh = tail call ptr @l_Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_insert___redArg(ptr noundef %i.fg, ptr noundef %2) ; 2 uses
  br i1 %i.bx, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.fi = getelementptr inbounds nuw i8, ptr %.0312, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %.0312, i64 16
  store ptr inttoptr (i64 3 to ptr), ptr %i.fj, align 8, !tbaa !12
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !12
  br label %lean_dec_ref.exit474.thread587

bb.da:                                            ; preds = %bb.cy
  tail call void @lean_inc_heartbeat() #5
  %i.fk = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %bb.db, label %lean_alloc_ctor.exit537

bb.db:                                            ; preds = %bb.da
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit537:                          ; preds = %bb.da
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  store i32 1, ptr %i.fk, align 4, !tbaa !10
  store i32 131096, ptr %i.fm, align 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.fh, ptr %i.fn, align 8, !tbaa !12
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store ptr inttoptr (i64 3 to ptr), ptr %i.fo, align 8, !tbaa !12
  br label %lean_dec_ref.exit474.thread587

lean_dec.exit395:                                 ; preds = %lean_dec.exit397, %bb.br, %bb.bs, %bb.bt
  %.0319 = phi ptr [ inttoptr (i64 1 to ptr), %bb.bt ], [ %i.bw, %lean_dec.exit397 ], [ inttoptr (i64 1 to ptr), %bb.br ], [ inttoptr (i64 1 to ptr), %bb.bs ] ; 9 uses
  %i.fp = and i64 %.pre, 510
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %bb.dc, label %bb.fj

bb.dc:                                            ; preds = %lean_dec.exit395
  br i1 %.not.i349, label %bb.dd, label %lean_dec.exit389

bb.dd:                                            ; preds = %bb.dc
  %i.fr = load i32, ptr %i.ah, align 4, !tbaa !10 ; 3 uses
  %i.fs = icmp sgt i32 %i.fr, 1
  br i1 %i.fs, label %bb.de, label %bb.df, !prof !13

bb.de:                                            ; preds = %bb.dd
  %i.ft = add nsw i32 %i.fr, -1
  store i32 %i.ft, ptr %i.ah, align 4, !tbaa !10
  br label %lean_dec.exit389

bb.df:                                            ; preds = %bb.dd
  %.not.i413 = icmp eq i32 %i.fr, 0
  br i1 %.not.i413, label %lean_dec.exit389, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ah) #5
  br label %lean_dec.exit389

lean_dec.exit389:                                 ; preds = %bb.dg, %bb.df, %bb.de, %bb.dc
  %i.fu = ptrtoint ptr %i.cm to i64               ; 3 uses
  %i.fv = and i64 %i.fu, 510
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %bb.dh, label %bb.el

bb.dh:                                            ; preds = %lean_dec.exit389
  %i.fx = and i64 %.pre, 1
  %.not.i386 = icmp eq i64 %i.fx, 0
  br i1 %.not.i386, label %bb.di, label %lean_nat_lt.exit

bb.di:                                            ; preds = %bb.dh
  %i.fy = load i32, ptr %i.co, align 4, !tbaa !10 ; 3 uses
  %i.fz = icmp sgt i32 %i.fy, 1
  br i1 %i.fz, label %bb.dj, label %bb.dk, !prof !13

bb.dj:                                            ; preds = %bb.di
  %i.ga = add nsw i32 %i.fy, -1
  store i32 %i.ga, ptr %i.co, align 4, !tbaa !10
  br label %lean_nat_lt.exit

bb.dk:                                            ; preds = %bb.di
  %.not.i415 = icmp eq i32 %i.fy, 0
  br i1 %.not.i415, label %lean_nat_lt.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.co) #5
  br label %lean_nat_lt.exit

lean_nat_lt.exit:                                 ; preds = %bb.dh, %bb.dj, %bb.dk, %bb.dl
  %i.gb = getelementptr i8, ptr %5, i64 8
  %.val490 = load i64, ptr %i.gb, align 8, !tbaa !15
  %.mask = and i64 %.val490, 9223372036854775807  ; 2 uses
  %.not = icmp eq i64 %.mask, 0
  br i1 %.not, label %bb.dm, label %bb.du

bb.dm:                                            ; preds = %lean_nat_lt.exit
  %i.gc = ptrtoint ptr %.0295 to i64
  %i.gd = and i64 %i.gc, 1
  %.not.i538 = icmp eq i64 %i.gd, 0
  br i1 %.not.i538, label %bb.dn, label %lean_del_object.exit

bb.dn:                                            ; preds = %bb.dm
  tail call void @lean_free_object(ptr noundef nonnull %.0295) #5
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.dm, %bb.dn
  %i.ge = load i32, ptr %5, align 8, !tbaa !10    ; 3 uses
  %i.gf = icmp sgt i32 %i.ge, 1
  br i1 %i.gf, label %bb.do, label %bb.dp, !prof !13

bb.do:                                            ; preds = %lean_del_object.exit
  %i.gg = add nsw i32 %i.ge, -1
  store i32 %i.gg, ptr %5, align 8, !tbaa !10
  br label %lean_dec_ref.exit476

bb.dp:                                            ; preds = %lean_del_object.exit
  %.not.i475 = icmp eq i32 %i.ge, 0
  br i1 %.not.i475, label %lean_dec_ref.exit476, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #5
  br label %lean_dec_ref.exit476

lean_dec_ref.exit476:                             ; preds = %bb.do, %bb.dp, %bb.dq
  %i.gh = load i32, ptr %3, align 4, !tbaa !10    ; 3 uses
  %i.gi = icmp sgt i32 %i.gh, 1
  br i1 %i.gi, label %bb.dr, label %bb.ds, !prof !13

bb.dr:                                            ; preds = %lean_dec_ref.exit476
  %i.gj = add nsw i32 %i.gh, -1
  store i32 %i.gj, ptr %3, align 4, !tbaa !10
  br label %.thread

bb.ds:                                            ; preds = %lean_dec_ref.exit476
  %.not.i473 = icmp eq i32 %i.gh, 0
  br i1 %.not.i473, label %.thread, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #5
  br label %.thread

bb.du:                                            ; preds = %lean_nat_lt.exit
  %i.gk = ptrtoint ptr %i.be to i64
  %i.gl = and i64 %i.gk, 1
  %.not.i325 = icmp eq i64 %i.gl, 0               ; 2 uses
  br i1 %.not.i325, label %bb.dv, label %lean_inc.exit326

bb.dv:                                            ; preds = %bb.du
  %.val.i.i539 = load i32, ptr %i.be, align 4, !tbaa !10 ; 3 uses
  %i.gm = icmp sgt i32 %.val.i.i539, 0
  br i1 %i.gm, label %bb.dw, label %bb.dx, !prof !13

bb.dw:                                            ; preds = %bb.dv
  %i.gn = add nuw i32 %.val.i.i539, 1
  store i32 %i.gn, ptr %i.be, align 4, !tbaa !10
  br label %lean_inc.exit326

bb.dx:                                            ; preds = %bb.dv
  %.not.i.i540 = icmp eq i32 %.val.i.i539, 0
  br i1 %.not.i.i540, label %lean_inc.exit326, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.go = atomicrmw sub ptr %i.be, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit326

lean_inc.exit326:                                 ; preds = %bb.dy, %bb.dx, %bb.dw, %bb.du
  br i1 %i.bf, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %lean_inc.exit326
  %i.gp = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2) ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store ptr %i.be, ptr %i.gq, align 8, !tbaa !12
  br label %bb.ea

bb.ea:                                            ; preds = %lean_inc.exit326, %bb.dz
  %.sink676 = phi ptr [ %i.gp, %bb.dz ], [ %.0295, %lean_inc.exit326 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.sink676, i64 16
  store ptr inttoptr (i64 3 to ptr), ptr %i.gr, align 8, !tbaa !12
  br i1 %.not.i325, label %bb.eb, label %lean_dec.exit383

bb.eb:                                            ; preds = %bb.ea
  %i.gs = load i32, ptr %i.be, align 4, !tbaa !10 ; 3 uses
  %i.gt = icmp sgt i32 %i.gs, 1
  br i1 %i.gt, label %bb.ec, label %bb.ed, !prof !13

bb.ec:                                            ; preds = %bb.eb
  %i.gu = add nsw i32 %i.gs, -1
  store i32 %i.gu, ptr %i.be, align 4, !tbaa !10
  br label %lean_dec.exit383

bb.ed:                                            ; preds = %bb.eb
  %.not.i419 = icmp eq i32 %i.gs, 0
  br i1 %.not.i419, label %lean_dec.exit383, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.be) #5
  br label %lean_dec.exit383

lean_dec.exit383:                                 ; preds = %bb.ee, %bb.ed, %bb.ec, %bb.ea
  %i.gv = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_performRatAdd_spec__1(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %5, i64 noundef 0, i64 noundef %.mask, ptr noundef nonnull %.sink676) ; 5 uses
  %i.gw = load i32, ptr %5, align 8, !tbaa !10    ; 3 uses
  %i.gx = icmp sgt i32 %i.gw, 1
  br i1 %i.gx, label %bb.ef, label %bb.eg, !prof !13

bb.ef:                                            ; preds = %lean_dec.exit383
  %i.gy = add nsw i32 %i.gw, -1
  store i32 %i.gy, ptr %5, align 8, !tbaa !10
  br label %lean_dec_ref.exit468

bb.eg:                                            ; preds = %lean_dec.exit383
  %.not.i467 = icmp eq i32 %i.gw, 0
  br i1 %.not.i467, label %lean_dec_ref.exit468, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #5
  br label %lean_dec_ref.exit468

lean_dec_ref.exit468:                             ; preds = %bb.ef, %bb.eg, %bb.eh
  %i.gz = load i32, ptr %3, align 4, !tbaa !10    ; 3 uses
  %i.ha = icmp sgt i32 %i.gz, 1
  br i1 %i.ha, label %bb.ei, label %bb.ej, !prof !13

bb.ei:                                            ; preds = %lean_dec_ref.exit468
  %i.hb = add nsw i32 %i.gz, -1
  store i32 %i.hb, ptr %3, align 4, !tbaa !10
  br label %bb.hc

bb.ej:                                            ; preds = %lean_dec_ref.exit468
  %.not.i465 = icmp eq i32 %i.gz, 0
  br i1 %.not.i465, label %bb.hc, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #5
  br label %bb.hc

bb.el:                                            ; preds = %lean_dec.exit389
  %i.hc = ptrtoint ptr %.0319 to i64
  %i.hd = and i64 %i.hc, 1
  %.not.i544 = icmp eq i64 %i.hd, 0
  br i1 %.not.i544, label %bb.em, label %lean_del_object.exit545

bb.em:                                            ; preds = %bb.el
  tail call void @lean_free_object(ptr noundef nonnull %.0319) #5
  br label %lean_del_object.exit545

lean_del_object.exit545:                          ; preds = %bb.el, %bb.em
  %i.he = and i64 %i.fu, 1
  %.not.i380 = icmp eq i64 %i.he, 0
  br i1 %.not.i380, label %bb.en, label %lean_dec.exit381

bb.en:                                            ; preds = %lean_del_object.exit545
  %i.hf = load i32, ptr %i.cm, align 4, !tbaa !10 ; 3 uses
  %i.hg = icmp sgt i32 %i.hf, 1
  br i1 %i.hg, label %bb.eo, label %bb.ep, !prof !13

bb.eo:                                            ; preds = %bb.en
  %i.hh = add nsw i32 %i.hf, -1
  store i32 %i.hh, ptr %i.cm, align 4, !tbaa !10
  br label %lean_dec.exit381

bb.ep:                                            ; preds = %bb.en
  %.not.i421 = icmp eq i32 %i.hf, 0
  br i1 %.not.i421, label %lean_dec.exit381, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #5
  br label %lean_dec.exit381

lean_dec.exit381:                                 ; preds = %bb.eq, %bb.ep, %bb.eo, %lean_del_object.exit545
  %i.hi = ptrtoint ptr %.0312 to i64
  %i.hj = and i64 %i.hi, 1
  %.not.i546 = icmp eq i64 %i.hj, 0
  br i1 %.not.i546, label %bb.er, label %lean_del_object.exit547

bb.er:                                            ; preds = %lean_dec.exit381
  tail call void @lean_free_object(ptr noundef nonnull %.0312) #5
  br label %lean_del_object.exit547

end_hunk_6
begin_hunk_7_@l_Std_Tactic_BVDecide_LRAT_Internal_DefaultFormula_performRatAdd:bb.a
  br i1 %.not.i370, label %bb.fu, label %lean_dec.exit371

bb.fu:                                            ; preds = %lean_del_object.exit552
  %i.it = load i32, ptr %i.bu, align 4, !tbaa !10 ; 3 uses
  %i.iu = icmp sgt i32 %i.it, 1
  br i1 %i.iu, label %bb.fv, label %bb.fw, !prof !13

bb.fv:                                            ; preds = %bb.fu
  %i.iv = add nsw i32 %i.it, -1
  store i32 %i.iv, ptr %i.bu, align 4, !tbaa !10
  br label %lean_dec.exit371

bb.fw:                                            ; preds = %bb.fu
  %.not.i431 = icmp eq i32 %i.it, 0
  br i1 %.not.i431, label %lean_dec.exit371, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bu) #5
  br label %lean_dec.exit371

lean_dec.exit371:                                 ; preds = %bb.fx, %bb.fw, %bb.fv, %lean_del_object.exit552
  %i.iw = load i32, ptr %5, align 4, !tbaa !10    ; 3 uses
  %i.ix = icmp sgt i32 %i.iw, 1
  br i1 %i.ix, label %bb.fy, label %bb.fz, !prof !13

bb.fy:                                            ; preds = %lean_dec.exit371
  %i.iy = add nsw i32 %i.iw, -1
  store i32 %i.iy, ptr %5, align 4, !tbaa !10
  br label %lean_dec_ref.exit460

bb.fz:                                            ; preds = %lean_dec.exit371
  %.not.i459 = icmp eq i32 %i.iw, 0
  br i1 %.not.i459, label %lean_dec_ref.exit460, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #5
  br label %lean_dec_ref.exit460

lean_dec_ref.exit460:                             ; preds = %bb.fy, %bb.fz, %bb.ga
  %i.iz = load i32, ptr %3, align 4, !tbaa !10    ; 3 uses
  %i.ja = icmp sgt i32 %i.iz, 1
  br i1 %i.ja, label %bb.gb, label %bb.gc, !prof !13

bb.gb:                                            ; preds = %lean_dec_ref.exit460
  %i.jb = add nsw i32 %i.iz, -1
  store i32 %i.jb, ptr %3, align 4, !tbaa !10
  br label %lean_dec_ref.exit458

bb.gc:                                            ; preds = %lean_dec_ref.exit460
  %.not.i457 = icmp eq i32 %i.iz, 0
  br i1 %.not.i457, label %lean_dec_ref.exit458, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #5
  br label %lean_dec_ref.exit458

lean_dec_ref.exit458:                             ; preds = %bb.gb, %bb.gc, %bb.gd
  br i1 %.not.i351, label %bb.ge, label %lean_dec.exit369

bb.ge:                                            ; preds = %lean_dec_ref.exit458
  %i.jc = load i32, ptr %2, align 4, !tbaa !10    ; 3 uses
  %i.jd = icmp sgt i32 %i.jc, 1
  br i1 %i.jd, label %bb.gf, label %bb.gg, !prof !13

bb.gf:                                            ; preds = %bb.ge
  %i.je = add nsw i32 %i.jc, -1
  store i32 %i.je, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit369

bb.gg:                                            ; preds = %bb.ge
  %.not.i433 = icmp eq i32 %i.jc, 0
  br i1 %.not.i433, label %lean_dec.exit369, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec.exit369

lean_dec.exit369:                                 ; preds = %bb.gh, %bb.gg, %bb.gf, %lean_dec_ref.exit458
  br i1 %i.bf, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %lean_dec.exit369
  %i.jf = getelementptr inbounds nuw i8, ptr %.0295, i64 16
  store ptr %i.ah, ptr %i.jf, align 8, !tbaa !12
  br label %lean_dec_ref.exit474.thread587

bb.gj:                                            ; preds = %lean_dec.exit369
  tail call void @lean_inc_heartbeat() #5
  %i.jg = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.jh = icmp eq ptr %i.jg, null
  br i1 %i.jh, label %bb.gk, label %lean_alloc_ctor.exit553

bb.gk:                                            ; preds = %bb.gj
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit553:                          ; preds = %bb.gj
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  store i32 1, ptr %i.jg, align 4, !tbaa !10
  store i32 131096, ptr %i.ji, align 4
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store ptr %i.be, ptr %i.jj, align 8, !tbaa !12
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store ptr %i.ah, ptr %i.jk, align 8, !tbaa !12
  br label %lean_dec_ref.exit474.thread587

lean_dec_ref.exit442:                             ; preds = %bb.hr, %bb.hq, %bb.hp, %lean_dec_ref.exit456
  %i.jl = and i64 %i.kr, 510
  %i.jm = icmp eq i64 %i.jl, 0
  br i1 %i.jm, label %bb.gl, label %.thread

bb.gl:                                            ; preds = %lean_dec_ref.exit442
  %i.jn = ptrtoint ptr %.0312 to i64
  %i.jo = and i64 %i.jn, 1
  %.not.i554 = icmp eq i64 %i.jo, 0
  br i1 %.not.i554, label %bb.gm, label %lean_del_object.exit555

bb.gm:                                            ; preds = %bb.gl
  tail call void @lean_free_object(ptr noundef nonnull %.0312) #5
  br label %lean_del_object.exit555

lean_del_object.exit555:                          ; preds = %bb.gl, %bb.gm
  %i.jp = ptrtoint ptr %i.bu to i64
  %i.jq = and i64 %i.jp, 1
  %.not.i366 = icmp eq i64 %i.jq, 0
  br i1 %.not.i366, label %bb.gn, label %lean_dec.exit367

bb.gn:                                            ; preds = %lean_del_object.exit555
  %i.jr = load i32, ptr %i.bu, align 4, !tbaa !10 ; 3 uses
  %i.js = icmp sgt i32 %i.jr, 1
  br i1 %i.js, label %bb.go, label %bb.gp, !prof !13

bb.go:                                            ; preds = %bb.gn
  %i.jt = add nsw i32 %i.jr, -1
  store i32 %i.jt, ptr %i.bu, align 4, !tbaa !10
  br label %lean_dec.exit367

bb.gp:                                            ; preds = %bb.gn
  %.not.i435 = icmp eq i32 %i.jr, 0
  br i1 %.not.i435, label %lean_dec.exit367, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bu) #5
  br label %lean_dec.exit367

lean_dec.exit367:                                 ; preds = %bb.gq, %bb.gp, %bb.go, %lean_del_object.exit555
  br i1 %.not.i351, label %bb.gr, label %lean_dec.exit365

bb.gr:                                            ; preds = %lean_dec.exit367
  %i.ju = load i32, ptr %2, align 4, !tbaa !10    ; 3 uses
  %i.jv = icmp sgt i32 %i.ju, 1
  br i1 %i.jv, label %bb.gs, label %bb.gt, !prof !13

bb.gs:                                            ; preds = %bb.gr
  %i.jw = add nsw i32 %i.ju, -1
  store i32 %i.jw, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit365

bb.gt:                                            ; preds = %bb.gr
  %.not.i437 = icmp eq i32 %i.ju, 0
  br i1 %.not.i437, label %lean_dec.exit365, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec.exit365

lean_dec.exit365:                                 ; preds = %bb.gu, %bb.gt, %bb.gs, %lean_dec.exit367
  br i1 %i.cp, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %lean_dec.exit365
  %i.jx = getelementptr inbounds nuw i8, ptr %.0319, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %.0319, i64 16
  store ptr %i.cm, ptr %i.jy, align 8, !tbaa !12
  store ptr %i.kj, ptr %i.jx, align 8, !tbaa !12
  br label %lean_dec_ref.exit474.thread587

bb.gw:                                            ; preds = %lean_dec.exit365
  %i.jz = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 2) ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store ptr %i.kj, ptr %i.ka, align 8, !tbaa !12
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store ptr %i.cm, ptr %i.kb, align 8, !tbaa !12
  br label %lean_dec_ref.exit474.thread587

.thread:                                          ; preds = %bb.ds, %bb.dt, %bb.dr, %lean_dec_ref.exit442
  %.4311585 = phi ptr [ %i.kj, %lean_dec_ref.exit442 ], [ %i.be, %bb.dr ], [ %i.be, %bb.dt ], [ %i.be, %bb.ds ] ; 9 uses
  %i.kc = ptrtoint ptr %.0319 to i64
  %i.kd = and i64 %i.kc, 1
  %.not.i556 = icmp eq i64 %i.kd, 0
  br i1 %.not.i556, label %bb.gx, label %lean_del_object.exit557

bb.gx:                                            ; preds = %.thread
  tail call void @lean_free_object(ptr noundef nonnull %.0319) #5
  br label %lean_del_object.exit557

lean_del_object.exit557:                          ; preds = %.thread, %bb.gx
  %i.ke = and i64 %i.fu, 1
  %.not.i362 = icmp eq i64 %i.ke, 0
  br i1 %.not.i362, label %bb.gy, label %lean_dec_ref.exit474

bb.gy:                                            ; preds = %lean_del_object.exit557
  %i.kf = load i32, ptr %i.cm, align 4, !tbaa !10 ; 3 uses
  %i.kg = icmp sgt i32 %i.kf, 1
  br i1 %i.kg, label %bb.gz, label %bb.ha, !prof !13

bb.gz:                                            ; preds = %bb.gy
  %i.kh = add nsw i32 %i.kf, -1
  store i32 %i.kh, ptr %i.cm, align 4, !tbaa !10
  br label %lean_dec_ref.exit474

bb.ha:                                            ; preds = %bb.gy
  %.not.i439 = icmp eq i32 %i.kf, 0
  br i1 %.not.i439, label %lean_dec_ref.exit474, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cm) #5
  br label %lean_dec_ref.exit474

bb.hc:                                            ; preds = %bb.ei, %bb.ej, %bb.ek
  %i.ki = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !12 ; 7 uses
  %i.kk = ptrtoint ptr %i.kj to i64
  %i.kl = and i64 %i.kk, 1
  %.not.i323 = icmp eq i64 %i.kl, 0
  br i1 %.not.i323, label %bb.hd, label %lean_inc.exit324

bb.hd:                                            ; preds = %bb.hc
  %.val.i.i558 = load i32, ptr %i.kj, align 4, !tbaa !10 ; 3 uses
  %i.km = icmp sgt i32 %.val.i.i558, 0
  br i1 %i.km, label %bb.he, label %bb.hf, !prof !13

bb.he:                                            ; preds = %bb.hd
  %i.kn = add nuw i32 %.val.i.i558, 1
  store i32 %i.kn, ptr %i.kj, align 4, !tbaa !10
  br label %lean_inc.exit324

bb.hf:                                            ; preds = %bb.hd
  %.not.i.i559 = icmp eq i32 %.val.i.i558, 0
  br i1 %.not.i.i559, label %lean_inc.exit324, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.ko = atomicrmw sub ptr %i.kj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit324

lean_inc.exit324:                                 ; preds = %bb.hg, %bb.hf, %bb.he, %bb.hc
  %i.kp = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !12 ; 7 uses
  %i.kr = ptrtoint ptr %i.kq to i64               ; 2 uses
  %i.ks = and i64 %i.kr, 1
  %.not.i321 = icmp eq i64 %i.ks, 0               ; 2 uses
  br i1 %.not.i321, label %bb.hh, label %lean_inc.exit322

bb.hh:                                            ; preds = %lean_inc.exit324
  %.val.i.i561 = load i32, ptr %i.kq, align 4, !tbaa !10 ; 3 uses
  %i.kt = icmp sgt i32 %.val.i.i561, 0
  br i1 %i.kt, label %bb.hi, label %bb.hj, !prof !13

bb.hi:                                            ; preds = %bb.hh
  %i.ku = add nuw i32 %.val.i.i561, 1
  store i32 %i.ku, ptr %i.kq, align 4, !tbaa !10
  br label %lean_inc.exit322

bb.hj:                                            ; preds = %bb.hh
  %.not.i.i562 = icmp eq i32 %.val.i.i561, 0
  br i1 %.not.i.i562, label %lean_inc.exit322, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.kv = atomicrmw sub ptr %i.kq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit322

lean_inc.exit322:                                 ; preds = %bb.hk, %bb.hj, %bb.hi, %lean_inc.exit324
  %i.kw = load i32, ptr %i.gv, align 8, !tbaa !10 ; 3 uses
  %i.kx = icmp sgt i32 %i.kw, 1
  br i1 %i.kx, label %bb.hl, label %bb.hm, !prof !13

bb.hl:                                            ; preds = %lean_inc.exit322
  %i.ky = add nsw i32 %i.kw, -1
  store i32 %i.ky, ptr %i.gv, align 8, !tbaa !10
  br label %lean_dec_ref.exit456

bb.hm:                                            ; preds = %lean_inc.exit322
  %.not.i455 = icmp eq i32 %i.kw, 0
  br i1 %.not.i455, label %lean_dec_ref.exit456, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gv) #5
  br label %lean_dec_ref.exit456

lean_dec_ref.exit456:                             ; preds = %bb.hl, %bb.hm, %bb.hn
  br i1 %.not.i321, label %bb.ho, label %lean_dec_ref.exit442

bb.ho:                                            ; preds = %lean_dec_ref.exit456
  %i.kz = load i32, ptr %i.kq, align 4, !tbaa !10 ; 3 uses
  %i.la = icmp sgt i32 %i.kz, 1
  br i1 %i.la, label %bb.hp, label %bb.hq, !prof !13

bb.hp:                                            ; preds = %bb.ho
  %i.lb = add nsw i32 %i.kz, -1
  store i32 %i.lb, ptr %i.kq, align 4, !tbaa !10
  br label %lean_dec_ref.exit442

bb.hq:                                            ; preds = %bb.ho
  %.not.i441 = icmp eq i32 %i.kz, 0
  br i1 %.not.i441, label %lean_dec_ref.exit442, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.kq) #5
  br label %lean_dec_ref.exit442

bb.hs:                                            ; preds = %lean_inc.exit350
  %i.lc = load i32, ptr %i.ah, align 4, !tbaa !10 ; 3 uses
  %i.ld = icmp sgt i32 %i.lc, 1
  br i1 %i.ld, label %bb.ht, label %bb.hu, !prof !13

bb.ht:                                            ; preds = %bb.hs
  %i.le = add nsw i32 %i.lc, -1
  store i32 %i.le, ptr %i.ah, align 4, !tbaa !10
  br label %lean_dec.exit359

bb.hu:                                            ; preds = %bb.hs
  %.not.i443 = icmp eq i32 %i.lc, 0
  br i1 %.not.i443, label %lean_dec.exit359, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ah) #5
  br label %lean_dec.exit359

lean_dec.exit359:                                 ; preds = %lean_inc.exit350.thread, %bb.hv, %bb.hu, %bb.ht
  %i.lf = load i32, ptr %5, align 4, !tbaa !10    ; 3 uses
  %i.lg = icmp sgt i32 %i.lf, 1
  br i1 %i.lg, label %bb.hw, label %bb.hx, !prof !13

bb.hw:                                            ; preds = %lean_dec.exit359
  %i.lh = add nsw i32 %i.lf, -1
  store i32 %i.lh, ptr %5, align 4, !tbaa !10
  br label %lean_dec_ref.exit454

bb.hx:                                            ; preds = %lean_dec.exit359
  %.not.i453 = icmp eq i32 %i.lf, 0
  br i1 %.not.i453, label %lean_dec_ref.exit454, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #5
  br label %lean_dec_ref.exit454

lean_dec_ref.exit454:                             ; preds = %bb.hw, %bb.hx, %bb.hy
  %i.li = load i32, ptr %3, align 4, !tbaa !10    ; 3 uses
  %i.lj = icmp sgt i32 %i.li, 1
  br i1 %i.lj, label %bb.hz, label %bb.ia, !prof !13

bb.hz:                                            ; preds = %lean_dec_ref.exit454
  %i.lk = add nsw i32 %i.li, -1
  store i32 %i.lk, ptr %3, align 4, !tbaa !10
  br label %lean_dec_ref.exit452

bb.ia:                                            ; preds = %lean_dec_ref.exit454
  %.not.i451 = icmp eq i32 %i.li, 0
  br i1 %.not.i451, label %lean_dec_ref.exit452, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #5
  br label %lean_dec_ref.exit452

lean_dec_ref.exit452:                             ; preds = %bb.hz, %bb.ia, %bb.ib
  br i1 %.not.i351, label %bb.ic, label %lean_dec.exit357

bb.ic:                                            ; preds = %lean_dec_ref.exit452
  %i.ll = load i32, ptr %2, align 4, !tbaa !10    ; 3 uses
  %i.lm = icmp sgt i32 %i.ll, 1
  br i1 %i.lm, label %bb.id, label %bb.ie, !prof !13

bb.id:                                            ; preds = %bb.ic
  %i.ln = add nsw i32 %i.ll, -1
  store i32 %i.ln, ptr %2, align 4, !tbaa !10
  br label %lean_dec.exit357

bb.ie:                                            ; preds = %bb.ic
  %.not.i445 = icmp eq i32 %i.ll, 0
  br i1 %.not.i445, label %lean_dec.exit357, label %bb.if

bb.if:                                            ; preds = %bb.ie
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #5
  br label %lean_dec.exit357

lean_dec.exit357:                                 ; preds = %bb.if, %bb.ie, %bb.id, %lean_dec_ref.exit452
  %i.lo = load ptr, ptr %i.af, align 8, !tbaa !12 ; 5 uses
  %.val = load i32, ptr %i.ae, align 8, !tbaa !10
  %i.lp = icmp eq i32 %.val, 1
  br i1 %i.lp, label %bb.ig, label %bb.il

bb.ig:                                            ; preds = %lean_dec.exit357
  %i.lq = load ptr, ptr %i.ag, align 8, !tbaa !12 ; 4 uses
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = and i64 %i.lr, 1
  %.not.i354 = icmp eq i64 %i.ls, 0
  br i1 %.not.i354, label %bb.ih, label %bb.it

bb.ih:                                            ; preds = %bb.ig
  %i.lt = load i32, ptr %i.lq, align 4, !tbaa !10 ; 3 uses
  %i.lu = icmp sgt i32 %i.lt, 1
  br i1 %i.lu, label %bb.ii, label %bb.ij, !prof !13

bb.ii:                                            ; preds = %bb.ih
  %i.lv = add nsw i32 %i.lt, -1
  store i32 %i.lv, ptr %i.lq, align 4, !tbaa !10
  br label %bb.it

bb.ij:                                            ; preds = %bb.ih
end_hunk_7
