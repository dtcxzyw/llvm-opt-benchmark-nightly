Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/ToLCNF?download=true
inline.NumInlined: 7327
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 61
loop-unroll.NumUnrolled: 61
begin_hunk_0_@l___private_Lean_Compiler_LCNF_ToLCNF_0__Lean_Compiler_LCNF_ToLCNF_toLCNF_visitProjFn:bb.a
  br i1 %.not.i243, label %bb.cn, label %lean_dec.exit211

bb.cn:                                            ; preds = %bb.cm
  %i.em = load i32, ptr %i.ac, align 4, !tbaa !11 ; 3 uses
  %i.en = icmp sgt i32 %i.em, 1
  br i1 %i.en, label %bb.co, label %bb.cp, !prof !16

bb.co:                                            ; preds = %bb.cn
  %i.eo = add nsw i32 %i.em, -1
  store i32 %i.eo, ptr %i.ac, align 4, !tbaa !11
  br label %lean_dec.exit211

bb.cp:                                            ; preds = %bb.cn
  %.not.i.i209 = icmp eq i32 %i.em, 0
  br i1 %.not.i.i209, label %lean_dec.exit211, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ac) #9
  br label %lean_dec.exit211

lean_dec.exit211:                                 ; preds = %bb.co, %bb.cp, %bb.cq, %bb.cm
  %i.ep = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.eq = icmp sgt i32 %i.ep, 1
  br i1 %i.eq, label %bb.cr, label %bb.cs, !prof !16

bb.cr:                                            ; preds = %lean_dec.exit211
  %i.er = add nsw i32 %i.ep, -1
  store i32 %i.er, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit184

bb.cs:                                            ; preds = %lean_dec.exit211
  %.not.i183 = icmp eq i32 %i.ep, 0
  br i1 %.not.i183, label %lean_dec_ref.exit184, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #9
  br label %lean_dec_ref.exit184

lean_dec_ref.exit184:                             ; preds = %bb.cr, %bb.cs, %bb.ct
  %i.es = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !15 ; 5 uses
  %.val250 = load i32, ptr %i.ay, align 8, !tbaa !11
  %i.eu = icmp eq i32 %.val250, 1
  br i1 %i.eu, label %lean_dec.exit215, label %bb.cu

bb.cu:                                            ; preds = %lean_dec_ref.exit184
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = and i64 %i.ev, 1
  %.not.i233 = icmp eq i64 %i.ew, 0
  br i1 %.not.i233, label %bb.cv, label %lean_inc.exit234

bb.cv:                                            ; preds = %bb.cu
  %.val.i.i304 = load i32, ptr %i.et, align 4, !tbaa !11 ; 3 uses
  %i.ex = icmp sgt i32 %.val.i.i304, 0
  br i1 %i.ex, label %bb.cw, label %bb.cx, !prof !16

bb.cw:                                            ; preds = %bb.cv
  %i.ey = add nuw i32 %.val.i.i304, 1
  store i32 %i.ey, ptr %i.et, align 4, !tbaa !11
  br label %lean_inc.exit234

bb.cx:                                            ; preds = %bb.cv
  %.not.i.i305 = icmp eq i32 %.val.i.i304, 0
  br i1 %.not.i.i305, label %lean_inc.exit234, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ez = atomicrmw add ptr %i.et, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit234

lean_inc.exit234:                                 ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cu
  br i1 %.not.i261, label %bb.cz, label %bb.dd

bb.cz:                                            ; preds = %lean_inc.exit234
  %i.fa = load i32, ptr %i.ay, align 8, !tbaa !11 ; 3 uses
  %i.fb = icmp sgt i32 %i.fa, 1
  br i1 %i.fb, label %bb.da, label %bb.db, !prof !16

bb.da:                                            ; preds = %bb.cz
  %i.fc = add nsw i32 %i.fa, -1
  store i32 %i.fc, ptr %i.ay, align 8, !tbaa !11
  br label %bb.dd

bb.db:                                            ; preds = %bb.cz
  %.not.i.i205 = icmp eq i32 %i.fa, 0
  br i1 %.not.i.i205, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ay) #9
  br label %bb.dd

bb.dd:                                            ; preds = %lean_inc.exit234, %bb.dc, %bb.db, %bb.da
  tail call void @lean_inc_heartbeat() #9
  %i.fd = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 5 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.de, label %lean_alloc_ctor.exit307

bb.de:                                            ; preds = %bb.dd
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit307:                          ; preds = %bb.dd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store i32 1, ptr %i.fd, align 4, !tbaa !11
  store i32 16842768, ptr %i.ff, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr %i.et, ptr %i.fg, align 8, !tbaa !15
  br label %lean_dec.exit215

bb.df:                                            ; preds = %lean_obj_tag.exit
  %i.fh = load i32, ptr %i.m, align 4, !tbaa !11  ; 3 uses
  %i.fi = icmp sgt i32 %i.fh, 1
  br i1 %i.fi, label %bb.dg, label %bb.dh, !prof !16

bb.dg:                                            ; preds = %bb.df
  %i.fj = add nsw i32 %i.fh, -1
  store i32 %i.fj, ptr %i.m, align 4, !tbaa !11
  br label %lean_dec_ref.exit182

bb.dh:                                            ; preds = %bb.df
  %.not.i181 = icmp eq i32 %i.fh, 0
  br i1 %.not.i181, label %lean_dec_ref.exit182, label %bb.di

bb.di:                                            ; preds = %bb.dh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.m) #9
  br label %lean_dec_ref.exit182

lean_dec_ref.exit182:                             ; preds = %bb.dg, %bb.dh, %bb.di
  %i.fk = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.fl = icmp sgt i32 %i.fk, 1
  br i1 %i.fl, label %bb.dj, label %bb.dk, !prof !16

bb.dj:                                            ; preds = %lean_dec_ref.exit182
  %i.fm = add nsw i32 %i.fk, -1
  store i32 %i.fm, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit

bb.dk:                                            ; preds = %lean_dec_ref.exit182
  %.not.i180 = icmp eq i32 %i.fk, 0
  br i1 %.not.i180, label %lean_dec_ref.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #9
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.dj, %bb.dk, %bb.dl
  %i.fn = load atomic i32, ptr @l___private_Lean_Compiler_LCNF_ToLCNF_0__Lean_Compiler_LCNF_ToLCNF_toLCNF_visitProjFn___closed__1_once seq_cst, align 4, !tbaa !18
  %i.fo = icmp eq i32 %i.fn, 1
  br i1 %i.fo, label %bb.dm, label %bb.dn, !prof !16

bb.dm:                                            ; preds = %lean_dec_ref.exit
  %i.fp = load ptr, ptr @l___private_Lean_Compiler_LCNF_ToLCNF_0__Lean_Compiler_LCNF_ToLCNF_toLCNF_visitProjFn___closed__1, align 8, !tbaa !15
  br label %lean_obj_once.exit309

bb.dn:                                            ; preds = %lean_dec_ref.exit
  %i.fq = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Compiler_LCNF_ToLCNF_0__Lean_Compiler_LCNF_ToLCNF_toLCNF_visitProjFn___closed__1, ptr noundef nonnull @l___private_Lean_Compiler_LCNF_ToLCNF_0__Lean_Compiler_LCNF_ToLCNF_toLCNF_visitProjFn___closed__1_once, ptr noundef nonnull @_init_l___private_Lean_Compiler_LCNF_ToLCNF_0__Lean_Compiler_LCNF_ToLCNF_toLCNF_visitProjFn___closed__1) #9
  br label %lean_obj_once.exit309

lean_obj_once.exit309:                            ; preds = %bb.dm, %bb.dn
  %.0.i308 = phi ptr [ %i.fp, %bb.dm ], [ %i.fq, %bb.dn ]
  %i.fr = tail call ptr @l_panic___at___00__private_Lean_Compiler_LCNF_ToLCNF_0__Lean_Compiler_LCNF_ToLCNF_toLCNF_visitCore_spec__2(ptr noundef %.0.i308, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  br label %lean_dec.exit215

bb.do:                                            ; preds = %lean_dec.exit227
  %i.fs = tail call ptr @l_Lean_Expr_getAppNumArgs(ptr noundef %1) #9 ; 18 uses
  %i.ft = ptrtoint ptr %i.d to i64                ; 2 uses
  %i.fu = and i64 %i.ft, 1
  %.not.i = icmp eq i64 %i.fu, 0
  br i1 %.not.i, label %.critedge.i, label %bb.dp, !prof !9

bb.dp:                                            ; preds = %bb.do
  %i.fv = lshr i64 %i.ft, 1
  %i.fw = add nuw i64 %i.fv, 1                    ; 2 uses
  %i.fx = icmp sgt i64 %i.fw, -1
  br i1 %i.fx, label %bb.dq, label %bb.dr, !prof !16

bb.dq:                                            ; preds = %bb.dp
  %i.fy = shl nuw i64 %i.fw, 1
  %i.fz = or disjoint i64 %i.fy, 1
  %i.ga = inttoptr i64 %i.fz to ptr
  br label %lean_nat_add.exit

bb.dr:                                            ; preds = %bb.dp
  %i.gb = tail call ptr @lean_big_usize_to_nat(i64 noundef -9223372036854775808) #9
  br label %lean_nat_add.exit

.critedge.i:                                      ; preds = %bb.do
  %i.gc = tail call ptr @lean_nat_big_add(ptr noundef %i.d, ptr noundef nonnull inttoptr (i64 3 to ptr)) #9
  br label %lean_nat_add.exit

lean_nat_add.exit:                                ; preds = %bb.dr, %bb.dq, %.critedge.i
  %.0.i = phi ptr [ %i.gc, %.critedge.i ], [ %i.ga, %bb.dq ], [ %i.gb, %bb.dr ] ; 11 uses
  %i.gd = ptrtoint ptr %i.fs to i64               ; 4 uses
  %.not.i247 = trunc i64 %i.gd to i1              ; 3 uses
  %i.ge = ptrtoint ptr %.0.i to i64               ; 4 uses
  %i.gf = trunc i64 %i.ge to i1
  %or.cond = select i1 %.not.i247, i1 %i.gf, i1 false, !prof !19
  br i1 %or.cond, label %.split, label %lean_nat_lt.exit, !prof !19

.split:                                           ; preds = %lean_nat_add.exit
  %i.gg = icmp ult ptr %i.fs, %.0.i
  br i1 %i.gg, label %bb.ej, label %bb.ds

lean_nat_lt.exit:                                 ; preds = %lean_nat_add.exit
  %i.gh = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %i.fs, ptr noundef %.0.i) #9
  br i1 %i.gh, label %bb.ej, label %bb.ds

bb.ds:                                            ; preds = %.split, %lean_nat_lt.exit
  %i.gi = and i64 %i.ge, 1
  %.not.i200 = icmp eq i64 %i.gi, 0
  br i1 %.not.i200, label %bb.dt, label %lean_dec.exit203

bb.dt:                                            ; preds = %bb.ds
  %i.gj = load i32, ptr %.0.i, align 4, !tbaa !11 ; 3 uses
  %i.gk = icmp sgt i32 %i.gj, 1
  br i1 %i.gk, label %bb.du, label %bb.dv, !prof !16

bb.du:                                            ; preds = %bb.dt
  %i.gl = add nsw i32 %i.gj, -1
  store i32 %i.gl, ptr %.0.i, align 4, !tbaa !11
  br label %lean_dec.exit203

bb.dv:                                            ; preds = %bb.dt
  %.not.i.i201 = icmp eq i32 %i.gj, 0
  br i1 %.not.i.i201, label %lean_dec.exit203, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i) #9
  br label %lean_dec.exit203

lean_dec.exit203:                                 ; preds = %bb.du, %bb.dv, %bb.dw, %bb.ds
  %i.gm = tail call ptr @l_Lean_Expr_getAppFn(ptr noundef %1) #9
  %i.gn = load atomic i32, ptr @l___private_Lean_Compiler_LCNF_ToLCNF_0__Lean_Compiler_LCNF_ToLCNF_toLCNF_visitCtor___closed__0_once seq_cst, align 4, !tbaa !18
  %i.go = icmp eq i32 %i.gn, 1
  br i1 %i.go, label %bb.dx, label %bb.dy, !prof !16

bb.dx:                                            ; preds = %lean_dec.exit203
  %i.gp = load ptr, ptr @l___private_Lean_Compiler_LCNF_ToLCNF_0__Lean_Compiler_LCNF_ToLCNF_toLCNF_visitCtor___closed__0, align 8, !tbaa !15
  br label %lean_obj_once.exit312

bb.dy:                                            ; preds = %lean_dec.exit203
  %i.gq = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Compiler_LCNF_ToLCNF_0__Lean_Compiler_LCNF_ToLCNF_toLCNF_visitCtor___closed__0, ptr noundef nonnull @l___private_Lean_Compiler_LCNF_ToLCNF_0__Lean_Compiler_LCNF_ToLCNF_toLCNF_visitCtor___closed__0_once, ptr noundef nonnull @_init_l___private_Lean_Compiler_LCNF_ToLCNF_0__Lean_Compiler_LCNF_ToLCNF_toLCNF_visitCtor___closed__0) #9
  br label %lean_obj_once.exit312

lean_obj_once.exit312:                            ; preds = %bb.dx, %bb.dy
  %.0.i311 = phi ptr [ %i.gp, %bb.dx ], [ %i.gq, %bb.dy ] ; 2 uses
  br i1 %.not.i247, label %bb.ed, label %bb.dz

bb.dz:                                            ; preds = %lean_obj_once.exit312
  %.val.i.i313 = load i32, ptr %i.fs, align 4, !tbaa !11 ; 3 uses
  %i.gr = icmp sgt i32 %.val.i.i313, 0
  br i1 %i.gr, label %bb.ea, label %bb.eb, !prof !16

bb.ea:                                            ; preds = %bb.dz
  %i.gs = add nuw i32 %.val.i.i313, 1
  store i32 %i.gs, ptr %i.fs, align 4, !tbaa !11
  br label %bb.ef

bb.eb:                                            ; preds = %bb.dz
  %.not.i.i314 = icmp eq i32 %.val.i.i313, 0
  br i1 %.not.i.i314, label %bb.ef, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.gt = atomicrmw add ptr %i.fs, i32 -1 monotonic, align 4 ; 0 uses
  br label %bb.ef

bb.ed:                                            ; preds = %lean_obj_once.exit312
  %i.gu = tail call ptr @lean_mk_array(ptr noundef %i.fs, ptr noundef %.0.i311) #9 ; 2 uses
  %i.gv = icmp ult ptr %i.fs, inttoptr (i64 2 to ptr)
  br i1 %i.gv, label %lean_dec.exit199, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.gw = add i64 %i.gd, -2
  %i.gx = inttoptr i64 %i.gw to ptr
  br label %lean_dec.exit199

bb.ef:                                            ; preds = %bb.ec, %bb.eb, %bb.ea
  %i.gy = tail call ptr @lean_mk_array(ptr noundef nonnull %i.fs, ptr noundef %.0.i311) #9 ; 3 uses
  %i.gz = tail call ptr @lean_nat_big_sub(ptr noundef nonnull %i.fs, ptr noundef nonnull inttoptr (i64 3 to ptr)) #9 ; 3 uses
  %i.ha = load i32, ptr %i.fs, align 4, !tbaa !11 ; 3 uses
  %i.hb = icmp sgt i32 %i.ha, 1
  br i1 %i.hb, label %bb.eg, label %bb.eh, !prof !16

bb.eg:                                            ; preds = %bb.ef
  %i.hc = add nsw i32 %i.ha, -1
  store i32 %i.hc, ptr %i.fs, align 4, !tbaa !11
  br label %lean_dec.exit199

bb.eh:                                            ; preds = %bb.ef
  %.not.i.i197 = icmp eq i32 %i.ha, 0
  br i1 %.not.i.i197, label %lean_dec.exit199, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fs) #9
  br label %lean_dec.exit199

lean_dec.exit199:                                 ; preds = %bb.ee, %bb.ed, %bb.eg, %bb.eh, %bb.ei
  %.1.i174343 = phi ptr [ %i.gz, %bb.eg ], [ %i.gz, %bb.ei ], [ %i.gz, %bb.eh ], [ inttoptr (i64 1 to ptr), %bb.ed ], [ %i.gx, %bb.ee ]
  %i.hd = phi ptr [ %i.gy, %bb.eg ], [ %i.gy, %bb.ei ], [ %i.gy, %bb.eh ], [ %i.gu, %bb.ed ], [ %i.gu, %bb.ee ]
  %i.he = tail call ptr @l___private_Lean_Expr_0__Lean_Expr_getAppArgsAux(ptr noundef %1, ptr noundef %i.hd, ptr noundef %.1.i174343) #9
  %i.hf = tail call ptr @l___private_Lean_Compiler_LCNF_ToLCNF_0__Lean_Compiler_LCNF_ToLCNF_toLCNF_visitAppDefaultConst(ptr noundef %i.gm, ptr noundef %i.he, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  br label %lean_dec.exit215

bb.ej:                                            ; preds = %.split, %lean_nat_lt.exit
  %i.hg = and i64 %i.ge, 1
  %.not.i170 = icmp eq i64 %i.hg, 0               ; 2 uses
  br i1 %.not.i170, label %lean_nat_sub.exit, label %bb.ek, !prof !9

bb.ek:                                            ; preds = %bb.ej
  %i.hh = and i64 %i.gd, 1
  %.not = icmp eq i64 %i.hh, 0
  br i1 %.not, label %lean_nat_sub.exit.thread346, label %bb.el, !prof !9

lean_nat_sub.exit.thread346:                      ; preds = %bb.ek
  %i.hi = tail call ptr @lean_nat_big_sub(ptr noundef %.0.i, ptr noundef %i.fs) #9
  br label %bb.en

bb.el:                                            ; preds = %bb.ek
  %i.hj = lshr i64 %i.ge, 1                       ; 2 uses
  %i.hk = lshr i64 %i.gd, 1                       ; 2 uses
  %i.hl = icmp samesign ult i64 %i.hj, %i.hk
  br i1 %i.hl, label %lean_dec.exit191, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.hm = sub nuw nsw i64 %i.hj, %i.hk
  %i.hn = shl nuw i64 %i.hm, 1
  %i.ho = or disjoint i64 %i.hn, 1
  %i.hp = inttoptr i64 %i.ho to ptr
  br label %lean_dec.exit191

lean_nat_sub.exit:                                ; preds = %bb.ej
  %i.hq = tail call ptr @lean_nat_big_sub(ptr noundef %.0.i, ptr noundef %i.fs) #9 ; 2 uses
  br i1 %.not.i247, label %lean_dec.exit195.thread, label %bb.en

bb.en:                                            ; preds = %lean_nat_sub.exit.thread346, %lean_nat_sub.exit
  %i.hr = phi ptr [ %i.hi, %lean_nat_sub.exit.thread346 ], [ %i.hq, %lean_nat_sub.exit ] ; 2 uses
  %i.hs = load i32, ptr %i.fs, align 4, !tbaa !11 ; 3 uses
  %i.ht = icmp sgt i32 %i.hs, 1
  br i1 %i.ht, label %bb.eo, label %bb.ep, !prof !16

bb.eo:                                            ; preds = %bb.en
  %i.hu = add nsw i32 %i.hs, -1
  store i32 %i.hu, ptr %i.fs, align 4, !tbaa !11
  br label %lean_dec.exit195

bb.ep:                                            ; preds = %bb.en
  %.not.i.i193 = icmp eq i32 %i.hs, 0
  br i1 %.not.i.i193, label %lean_dec.exit195, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fs) #9
  br label %lean_dec.exit195

lean_dec.exit195:                                 ; preds = %bb.eo, %bb.ep, %bb.eq
  br i1 %.not.i170, label %lean_dec.exit195.thread, label %lean_dec.exit191

lean_dec.exit195.thread:                          ; preds = %lean_nat_sub.exit, %lean_dec.exit195
  %.1.i345349 = phi ptr [ %i.hr, %lean_dec.exit195 ], [ %i.hq, %lean_nat_sub.exit ] ; 3 uses
  %i.hv = load i32, ptr %.0.i, align 4, !tbaa !11 ; 3 uses
  %i.hw = icmp sgt i32 %i.hv, 1
  br i1 %i.hw, label %bb.er, label %bb.es, !prof !16

bb.er:                                            ; preds = %lean_dec.exit195.thread
  %i.hx = add nsw i32 %i.hv, -1
  store i32 %i.hx, ptr %.0.i, align 4, !tbaa !11
  br label %lean_dec.exit191

bb.es:                                            ; preds = %lean_dec.exit195.thread
  %.not.i.i189 = icmp eq i32 %i.hv, 0
  br i1 %.not.i.i189, label %lean_dec.exit191, label %bb.et

bb.et:                                            ; preds = %bb.es
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i) #9
  br label %lean_dec.exit191

lean_dec.exit191:                                 ; preds = %bb.el, %bb.em, %bb.er, %bb.es, %bb.et, %lean_dec.exit195
  %.1.i345348 = phi ptr [ %i.hr, %lean_dec.exit195 ], [ %.1.i345349, %bb.er ], [ %.1.i345349, %bb.et ], [ %.1.i345349, %bb.es ], [ inttoptr (i64 1 to ptr), %bb.el ], [ %i.hp, %bb.em ]
  %i.hy = tail call ptr @l_Lean_Compiler_LCNF_ToLCNF_etaExpandN___redArg(ptr noundef %1, ptr noundef %.1.i345348, ptr noundef %3, ptr noundef %6, ptr noundef %7) ; 12 uses
  %i.hz = ptrtoint ptr %i.hy to i64               ; 2 uses
  %i.ia = and i64 %i.hz, 1
  %.not.i316 = icmp eq i64 %i.ia, 0               ; 2 uses
  br i1 %.not.i316, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %lean_dec.exit191
  %i.ib = lshr i64 %i.hz, 1
  %i.ic = trunc i64 %i.ib to i32
  br label %lean_obj_tag.exit319

bb.ev:                                            ; preds = %lean_dec.exit191
  %i.id = getelementptr i8, ptr %i.hy, i64 4
  %.val.i318 = load i32, ptr %i.id, align 4
  %i.ie = lshr i32 %.val.i318, 24
  br label %lean_obj_tag.exit319

lean_obj_tag.exit319:                             ; preds = %bb.eu, %bb.ev
  %.0.i317 = phi i32 [ %i.ic, %bb.eu ], [ %i.ie, %bb.ev ]
  %i.if = icmp eq i32 %.0.i317, 0
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 2 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !15 ; 10 uses
  br i1 %i.if, label %bb.ew, label %bb.fj

bb.ew:                                            ; preds = %lean_obj_tag.exit319
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = and i64 %i.ii, 1
  %.not.i229 = icmp eq i64 %i.ij, 0
  br i1 %.not.i229, label %bb.ex, label %lean_inc.exit230

bb.ex:                                            ; preds = %bb.ew
  %.val.i.i320 = load i32, ptr %i.ih, align 4, !tbaa !11 ; 3 uses
  %i.ik = icmp sgt i32 %.val.i.i320, 0
  br i1 %i.ik, label %bb.ey, label %bb.ez, !prof !16

bb.ey:                                            ; preds = %bb.ex
  %i.il = add nuw i32 %.val.i.i320, 1
  store i32 %i.il, ptr %i.ih, align 4, !tbaa !11
  br label %lean_inc.exit230

bb.ez:                                            ; preds = %bb.ex
  %.not.i.i321 = icmp eq i32 %.val.i.i320, 0
  br i1 %.not.i.i321, label %lean_inc.exit230, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.im = atomicrmw add ptr %i.ih, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit230

lean_inc.exit230:                                 ; preds = %bb.fa, %bb.ez, %bb.ey, %bb.ew
  %.val.i323 = load i32, ptr %i.hy, align 8, !tbaa !11 ; 4 uses
  %i.in = icmp eq i32 %.val.i323, 1
  br i1 %i.in, label %.preheader.i326, label %bb.ff

.preheader.i326:                                  ; preds = %lean_inc.exit230
  %i.io = load ptr, ptr %i.ig, align 8, !tbaa !15 ; 4 uses
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = and i64 %i.ip, 1
  %.not.i7.i328 = icmp eq i64 %i.iq, 0
  br i1 %.not.i7.i328, label %bb.fb, label %lean_dec.exit.i329

bb.fb:                                            ; preds = %.preheader.i326
  %i.ir = load i32, ptr %i.io, align 4, !tbaa !11 ; 3 uses
  %i.is = icmp sgt i32 %i.ir, 1
  br i1 %i.is, label %bb.fc, label %bb.fd, !prof !16

bb.fc:                                            ; preds = %bb.fb
  %i.it = add nsw i32 %i.ir, -1
  store i32 %i.it, ptr %i.io, align 4, !tbaa !11
  br label %lean_dec.exit.i329

bb.fd:                                            ; preds = %bb.fb
  %.not.i.i.i332 = icmp eq i32 %i.ir, 0
  br i1 %.not.i.i.i332, label %lean_dec.exit.i329, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.io) #9
  br label %lean_dec.exit.i329

lean_dec.exit.i329:                               ; preds = %bb.fe, %bb.fd, %bb.fc, %.preheader.i326
  tail call void @lean_free_object(ptr noundef nonnull %i.hy) #9
  br label %lean_dec_ref_known.exit333

bb.ff:                                            ; preds = %lean_inc.exit230
  %i.iu = icmp sgt i32 %.val.i323, 1
  br i1 %i.iu, label %bb.fg, label %bb.fh, !prof !16

bb.fg:                                            ; preds = %bb.ff
  %i.iv = add nsw i32 %.val.i323, -1
  store i32 %i.iv, ptr %i.hy, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit333

bb.fh:                                            ; preds = %bb.ff
  %.not.i.i324 = icmp eq i32 %.val.i323, 0
  br i1 %.not.i.i324, label %lean_dec_ref_known.exit333, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hy) #9
  br label %lean_dec_ref_known.exit333

lean_dec_ref_known.exit333:                       ; preds = %lean_dec.exit.i329, %bb.fg, %bb.fh, %bb.fi
  %i.iw = tail call ptr @l___private_Lean_Compiler_LCNF_ToLCNF_0__Lean_Compiler_LCNF_ToLCNF_toLCNF_visit(ptr noundef %i.ih, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  br label %lean_dec.exit215

bb.fj:                                            ; preds = %lean_obj_tag.exit319
  %.val = load i32, ptr %i.hy, align 8, !tbaa !11
  %i.ix = icmp eq i32 %.val, 1
  br i1 %i.ix, label %lean_dec.exit215, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.iy = ptrtoint ptr %i.ih to i64
  %i.iz = and i64 %i.iy, 1
  %.not.i228 = icmp eq i64 %i.iz, 0
  br i1 %.not.i228, label %bb.fl, label %lean_inc.exit

bb.fl:                                            ; preds = %bb.fk
  %.val.i.i334 = load i32, ptr %i.ih, align 4, !tbaa !11 ; 3 uses
  %i.ja = icmp sgt i32 %.val.i.i334, 0
  br i1 %i.ja, label %bb.fm, label %bb.fn, !prof !16

bb.fm:                                            ; preds = %bb.fl
  %i.jb = add nuw i32 %.val.i.i334, 1
  store i32 %i.jb, ptr %i.ih, align 4, !tbaa !11
  br label %lean_inc.exit

bb.fn:                                            ; preds = %bb.fl
  %.not.i.i335 = icmp eq i32 %.val.i.i334, 0
  br i1 %.not.i.i335, label %lean_inc.exit, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.jc = atomicrmw add ptr %i.ih, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.fo, %bb.fn, %bb.fm, %bb.fk
  br i1 %.not.i316, label %bb.fp, label %bb.ft

bb.fp:                                            ; preds = %lean_inc.exit
  %i.jd = load i32, ptr %i.hy, align 8, !tbaa !11 ; 3 uses
  %i.je = icmp sgt i32 %i.jd, 1
  br i1 %i.je, label %bb.fq, label %bb.fr, !prof !16

bb.fq:                                            ; preds = %bb.fp
  %i.jf = add nsw i32 %i.jd, -1
  store i32 %i.jf, ptr %i.hy, align 8, !tbaa !11
  br label %bb.ft

bb.fr:                                            ; preds = %bb.fp
  %.not.i.i = icmp eq i32 %i.jd, 0
  br i1 %.not.i.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hy) #9
  br label %bb.ft

bb.ft:                                            ; preds = %lean_inc.exit, %bb.fs, %bb.fr, %bb.fq
  tail call void @lean_inc_heartbeat() #9
  %i.jg = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #9 ; 5 uses
  %i.jh = icmp eq ptr %i.jg, null
  br i1 %i.jh, label %bb.fu, label %lean_alloc_ctor.exit337

bb.fu:                                            ; preds = %bb.ft
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit337:                          ; preds = %bb.ft
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  store i32 1, ptr %i.jg, align 4, !tbaa !11
  store i32 16842768, ptr %i.ji, align 4
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store ptr %i.ih, ptr %i.jj, align 8, !tbaa !15
  br label %lean_dec.exit215

lean_dec.exit215:                                 ; preds = %bb.fj, %lean_dec_ref.exit184, %lean_dec_ref.exit186, %lean_dec.exit199, %lean_alloc_ctor.exit337, %lean_dec_ref_known.exit333, %lean_obj_once.exit309, %lean_alloc_ctor.exit307, %lean_dec.exit219, %lean_alloc_ctor.exit
  %.8 = phi ptr [ %i.bw, %lean_dec_ref.exit186 ], [ %i.fr, %lean_obj_once.exit309 ], [ %i.ay, %lean_dec_ref.exit184 ], [ %i.dt, %lean_dec.exit219 ], [ %i.ei, %lean_alloc_ctor.exit ], [ %i.fd, %lean_alloc_ctor.exit307 ], [ %i.hf, %lean_dec.exit199 ], [ %i.iw, %lean_dec_ref_known.exit333 ], [ %i.jg, %lean_alloc_ctor.exit337 ], [ %i.hy, %bb.fj ]
  ret ptr %.8
}

declare zeroext i8 @l_Lean_Compiler_LCNF_isRuntimeBuiltinType(ptr noundef) local_unnamed_addr #2

end_hunk_0
