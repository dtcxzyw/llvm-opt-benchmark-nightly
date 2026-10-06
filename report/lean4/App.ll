Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/App?download=true
inline.NumInlined: 19390
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 126
loop-unroll.NumUnrolled: 126
begin_hunk_0_@l___private_Init_Data_Array_Basic_0__Array_findSomeRevM_x3f_find___at___00Lean_PersistentArray_findSomeRevM_x3f___at___00Lean_resolveLocalName___at___00__private_Lean_Elab_App_0__Lean_Elab_Term_resolveDottedIdentFn_go_spec__3_spec__5_spec__6___redArg:bb.a
  br i1 %.not.i216, label %bb.bd, label %lean_inc.exit217

bb.bd:                                            ; preds = %lean_dec.exit161
  %.val.i.i242 = load i32, ptr %i.cp, align 4, !tbaa !11 ; 3 uses
  %i.cs = icmp sgt i32 %.val.i.i242, 0
  br i1 %i.cs, label %bb.be, label %bb.bf, !prof !16

bb.be:                                            ; preds = %bb.bd
  %i.ct = add nuw i32 %.val.i.i242, 1
  store i32 %i.ct, ptr %i.cp, align 4, !tbaa !11
  br label %lean_inc.exit217

bb.bf:                                            ; preds = %bb.bd
  %.not.i.i243 = icmp eq i32 %.val.i.i242, 0
  br i1 %.not.i.i243, label %lean_inc.exit217, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cu = atomicrmw sub ptr %i.cp, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit217

lean_inc.exit217:                                 ; preds = %bb.bg, %bb.bf, %bb.be, %lean_dec.exit161
  %.val.i245 = load i32, ptr %i.cd, align 8, !tbaa !11 ; 4 uses
  %i.cv = icmp eq i32 %.val.i245, 1
  br i1 %i.cv, label %.preheader.i247.preheader, label %bb.bl

.preheader.i247.preheader:                        ; preds = %lean_inc.exit217
  %i.cw = load ptr, ptr %i.co, align 8, !tbaa !15 ; 4 uses
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = and i64 %i.cx, 1
  %.not.i.i249 = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i249, label %bb.bh, label %lean_dec.exit.i250

bb.bh:                                            ; preds = %.preheader.i247.preheader
  %i.cz = load i32, ptr %i.cw, align 4, !tbaa !11 ; 3 uses
  %i.da = icmp sgt i32 %i.cz, 1
  br i1 %i.da, label %bb.bi, label %bb.bj, !prof !16

bb.bi:                                            ; preds = %bb.bh
  %i.db = add nsw i32 %i.cz, -1
  store i32 %i.db, ptr %i.cw, align 4, !tbaa !11
  br label %lean_dec.exit.i250

bb.bj:                                            ; preds = %bb.bh
  %.not.i7.i254 = icmp eq i32 %i.cz, 0
  br i1 %.not.i7.i254, label %lean_dec.exit.i250, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cw) #10
  br label %lean_dec.exit.i250

lean_dec.exit.i250:                               ; preds = %bb.bk, %bb.bj, %bb.bi, %.preheader.i247.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.cd) #10
  br label %lean_dec_ref_known.exit255

bb.bl:                                            ; preds = %lean_inc.exit217
  %i.dc = icmp sgt i32 %.val.i245, 1
  br i1 %i.dc, label %bb.bm, label %bb.bn, !prof !16

bb.bm:                                            ; preds = %bb.bl
  %i.dd = add nsw i32 %.val.i245, -1
  store i32 %i.dd, ptr %i.cd, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit255

bb.bn:                                            ; preds = %bb.bl
  %.not.i8.i246 = icmp eq i32 %.val.i245, 0
  br i1 %.not.i8.i246, label %lean_dec_ref_known.exit255, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cd) #10
  br label %lean_dec_ref_known.exit255

lean_dec_ref_known.exit255:                       ; preds = %bb.bo, %bb.bn, %bb.bm, %lean_dec.exit.i250, %lean_obj_tag.exit241
  %.0137 = phi ptr [ %i.bx, %lean_obj_tag.exit241 ], [ %i.cp, %lean_dec.exit.i250 ], [ %i.cp, %bb.bm ], [ %i.cp, %bb.bn ], [ %i.cp, %bb.bo ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !15 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !15 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !15 ; 5 uses
  %.val = load i32, ptr %i.bv, align 8, !tbaa !11
  %i.dk = icmp eq i32 %.val, 1
  br i1 %i.dk, label %bb.bp, label %bb.bu

bb.bp:                                            ; preds = %lean_dec_ref_known.exit255
  %i.dl = load ptr, ptr %i.bw, align 8, !tbaa !15 ; 4 uses
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = and i64 %i.dm, 1
  %.not.i158 = icmp eq i64 %i.dn, 0
  br i1 %.not.i158, label %bb.bq, label %bb.cl

bb.bq:                                            ; preds = %bb.bp
  %i.do = load i32, ptr %i.dl, align 4, !tbaa !11 ; 3 uses
  %i.dp = icmp sgt i32 %i.do, 1
  br i1 %i.dp, label %bb.br, label %bb.bs, !prof !16

bb.br:                                            ; preds = %bb.bq
  %i.dq = add nsw i32 %i.do, -1
  store i32 %i.dq, ptr %i.dl, align 4, !tbaa !11
  br label %bb.cl

bb.bs:                                            ; preds = %bb.bq
  %.not.i179 = icmp eq i32 %i.do, 0
  br i1 %.not.i179, label %bb.cl, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dl) #10
  br label %bb.cl

bb.bu:                                            ; preds = %lean_dec_ref_known.exit255
  %i.dr = ptrtoint ptr %i.dj to i64
  %i.ds = and i64 %i.dr, 1
  %.not.i214 = icmp eq i64 %i.ds, 0
  br i1 %.not.i214, label %bb.bv, label %lean_inc.exit215

bb.bv:                                            ; preds = %bb.bu
  %.val.i.i256 = load i32, ptr %i.dj, align 4, !tbaa !11 ; 3 uses
  %i.dt = icmp sgt i32 %.val.i.i256, 0
  br i1 %i.dt, label %bb.bw, label %bb.bx, !prof !16

bb.bw:                                            ; preds = %bb.bv
  %i.du = add nuw i32 %.val.i.i256, 1
  store i32 %i.du, ptr %i.dj, align 4, !tbaa !11
  br label %lean_inc.exit215

bb.bx:                                            ; preds = %bb.bv
  %.not.i.i257 = icmp eq i32 %.val.i.i256, 0
  br i1 %.not.i.i257, label %lean_inc.exit215, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.dv = atomicrmw sub ptr %i.dj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit215

lean_inc.exit215:                                 ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bu
  %i.dw = ptrtoint ptr %i.dh to i64
  %i.dx = and i64 %i.dw, 1
  %.not.i212 = icmp eq i64 %i.dx, 0
  br i1 %.not.i212, label %bb.bz, label %lean_inc.exit213

bb.bz:                                            ; preds = %lean_inc.exit215
  %.val.i.i259 = load i32, ptr %i.dh, align 4, !tbaa !11 ; 3 uses
  %i.dy = icmp sgt i32 %.val.i.i259, 0
  br i1 %i.dy, label %bb.ca, label %bb.cb, !prof !16

bb.ca:                                            ; preds = %bb.bz
  %i.dz = add nuw i32 %.val.i.i259, 1
  store i32 %i.dz, ptr %i.dh, align 4, !tbaa !11
  br label %lean_inc.exit213

bb.cb:                                            ; preds = %bb.bz
  %.not.i.i260 = icmp eq i32 %.val.i.i259, 0
  br i1 %.not.i.i260, label %lean_inc.exit213, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ea = atomicrmw sub ptr %i.dh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit213

lean_inc.exit213:                                 ; preds = %bb.cc, %bb.cb, %bb.ca, %lean_inc.exit215
  %i.eb = ptrtoint ptr %i.df to i64
  %i.ec = and i64 %i.eb, 1
  %.not.i210 = icmp eq i64 %i.ec, 0
  br i1 %.not.i210, label %bb.cd, label %lean_inc.exit211

bb.cd:                                            ; preds = %lean_inc.exit213
  %.val.i.i262 = load i32, ptr %i.df, align 4, !tbaa !11 ; 3 uses
  %i.ed = icmp sgt i32 %.val.i.i262, 0
  br i1 %i.ed, label %bb.ce, label %bb.cf, !prof !16

bb.ce:                                            ; preds = %bb.cd
  %i.ee = add nuw i32 %.val.i.i262, 1
  store i32 %i.ee, ptr %i.df, align 4, !tbaa !11
  br label %lean_inc.exit211

bb.cf:                                            ; preds = %bb.cd
  %.not.i.i263 = icmp eq i32 %.val.i.i262, 0
  br i1 %.not.i.i263, label %lean_inc.exit211, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ef = atomicrmw sub ptr %i.df, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit211

lean_inc.exit211:                                 ; preds = %lean_inc.exit213, %bb.ce, %bb.cf, %bb.cg
  %i.eg = load i32, ptr %i.bv, align 8, !tbaa !11 ; 3 uses
  %i.eh = icmp sgt i32 %i.eg, 1
  br i1 %i.eh, label %bb.ch, label %bb.ci, !prof !16

bb.ch:                                            ; preds = %lean_inc.exit211
  %i.ei = add nsw i32 %i.eg, -1
  store i32 %i.ei, ptr %i.bv, align 8, !tbaa !11
  br label %lean_dec.exit159

bb.ci:                                            ; preds = %lean_inc.exit211
  %.not.i181 = icmp eq i32 %i.eg, 0
  br i1 %.not.i181, label %lean_dec.exit159, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bv) #10
  br label %lean_dec.exit159

lean_dec.exit159:                                 ; preds = %bb.cj, %bb.ci, %bb.ch
  tail call void @lean_inc_heartbeat() #10
  %i.ej = tail call noalias ptr @mi_malloc_small(i64 noundef 40) #10 ; 7 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.ck, label %.thread

bb.ck:                                            ; preds = %lean_dec.exit159
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

.thread:                                          ; preds = %lean_dec.exit159
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  store i32 262184, ptr %i.el, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr %.0137, ptr %i.em, align 8, !tbaa !15
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store ptr %i.df, ptr %i.en, align 8, !tbaa !15
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  store ptr %i.dh, ptr %i.eo, align 8, !tbaa !15
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  store ptr %i.dj, ptr %i.ep, align 8, !tbaa !15
  br label %bb.cm

bb.cl:                                            ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bp
  store ptr %.0137, ptr %i.bw, align 8, !tbaa !15
  %.val.i.i265.pre = load i32, ptr %i.bv, align 8, !tbaa !11 ; 3 uses
  %i.eq = icmp sgt i32 %.val.i.i265.pre, 0
  br i1 %i.eq, label %bb.cm, label %bb.cn, !prof !43

bb.cm:                                            ; preds = %.thread, %bb.cl
  %.0124357 = phi ptr [ %i.ej, %.thread ], [ %i.bv, %bb.cl ] ; 2 uses
  %.val.i.i265355 = phi i32 [ 1, %.thread ], [ %.val.i.i265.pre, %bb.cl ]
  %i.er = add nuw i32 %.val.i.i265355, 1
  store i32 %i.er, ptr %.0124357, align 4, !tbaa !11
  br label %lean_inc_ref.exit267

bb.cn:                                            ; preds = %bb.cl
  %.not.i.i266 = icmp eq i32 %.val.i.i265.pre, 0
  br i1 %.not.i.i266, label %lean_inc_ref.exit267, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.es = atomicrmw sub ptr %i.bv, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit267

lean_inc_ref.exit267:                             ; preds = %bb.cm, %bb.cn, %bb.co
  %.0124356 = phi ptr [ %.0124357, %bb.cm ], [ %i.bv, %bb.cn ], [ %i.bv, %bb.co ] ; 11 uses
  %i.et = tail call ptr @l_Lean_MacroScopesView_review(ptr noundef nonnull %.0124356) #10 ; 10 uses
  %i.eu = tail call zeroext i8 @l_Lean_Name_isPrefixOf(ptr noundef %3, ptr noundef %i.et) #10
  %i.ev = icmp eq i8 %i.eu, 0
  br i1 %i.ev, label %bb.cp, label %bb.di

bb.cp:                                            ; preds = %lean_inc_ref.exit267
  %i.ew = load i32, ptr %.0124356, align 4, !tbaa !11 ; 3 uses
  %i.ex = icmp sgt i32 %i.ew, 1
  br i1 %i.ex, label %bb.cq, label %bb.cr, !prof !16

bb.cq:                                            ; preds = %bb.cp
  %i.ey = add nsw i32 %i.ew, -1
  store i32 %i.ey, ptr %.0124356, align 4, !tbaa !11
  br label %lean_dec_ref.exit202

bb.cr:                                            ; preds = %bb.cp
  %.not.i201 = icmp eq i32 %i.ew, 0
  br i1 %.not.i201, label %lean_dec_ref.exit202, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0124356) #10
  br label %lean_dec_ref.exit202

lean_dec_ref.exit202:                             ; preds = %bb.cq, %bb.cr, %bb.cs
  br i1 %.not.i208, label %bb.ct, label %lean_inc.exit209

bb.ct:                                            ; preds = %lean_dec_ref.exit202
  %.val.i.i268 = load i32, ptr %3, align 4, !tbaa !11 ; 3 uses
  %i.ez = icmp sgt i32 %.val.i.i268, 0
  br i1 %i.ez, label %bb.cu, label %bb.cv, !prof !16

bb.cu:                                            ; preds = %bb.ct
  %i.fa = add nuw i32 %.val.i.i268, 1
  store i32 %i.fa, ptr %3, align 4, !tbaa !11
  br label %lean_inc.exit209

bb.cv:                                            ; preds = %bb.ct
  %.not.i.i269 = icmp eq i32 %.val.i.i268, 0
  br i1 %.not.i.i269, label %lean_inc.exit209, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.fb = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit209

lean_inc.exit209:                                 ; preds = %bb.cw, %bb.cv, %bb.cu, %lean_dec_ref.exit202
  %.val.i.i271 = load i32, ptr %4, align 4, !tbaa !11 ; 3 uses
  %i.fc = icmp sgt i32 %.val.i.i271, 0
  br i1 %i.fc, label %bb.cx, label %bb.cy, !prof !16

bb.cx:                                            ; preds = %lean_inc.exit209
  %i.fd = add nuw i32 %.val.i.i271, 1
  store i32 %i.fd, ptr %4, align 4, !tbaa !11
  br label %lean_inc_ref.exit273

bb.cy:                                            ; preds = %lean_inc.exit209
  %.not.i.i272 = icmp eq i32 %.val.i.i271, 0
  br i1 %.not.i.i272, label %lean_inc_ref.exit273, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.fe = atomicrmw sub ptr %4, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit273

lean_inc_ref.exit273:                             ; preds = %bb.cx, %bb.cy, %bb.cz
  %i.ff = ptrtoint ptr %i.aj to i64
  %i.fg = and i64 %i.ff, 1
  %.not.i206 = icmp eq i64 %i.fg, 0
  br i1 %.not.i206, label %bb.da, label %lean_inc.exit207

bb.da:                                            ; preds = %lean_inc_ref.exit273
  %.val.i.i274 = load i32, ptr %i.aj, align 4, !tbaa !11 ; 3 uses
  %i.fh = icmp sgt i32 %.val.i.i274, 0
  br i1 %i.fh, label %bb.db, label %bb.dc, !prof !16

bb.db:                                            ; preds = %bb.da
  %i.fi = add nuw i32 %.val.i.i274, 1
  store i32 %i.fi, ptr %i.aj, align 4, !tbaa !11
  br label %lean_inc.exit207

bb.dc:                                            ; preds = %bb.da
  %.not.i.i275 = icmp eq i32 %.val.i.i274, 0
  br i1 %.not.i.i275, label %lean_inc.exit207, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.fj = atomicrmw sub ptr %i.aj, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit207

lean_inc.exit207:                                 ; preds = %bb.dd, %bb.dc, %bb.db, %lean_inc_ref.exit273
  %i.fk = tail call ptr @l___private_Lean_ResolveName_0__Lean_resolveLocalName_go(ptr noundef %i.aj, ptr noundef nonnull %4, ptr noundef %i.et, ptr noundef %3) #10 ; 4 uses
  %i.fl = ptrtoint ptr %i.et to i64
  %i.fm = and i64 %i.fl, 1
  %.not.i154 = icmp eq i64 %i.fm, 0
  br i1 %.not.i154, label %bb.de, label %lean_dec.exit155.thread

bb.de:                                            ; preds = %lean_inc.exit207
  %i.fn = load i32, ptr %i.et, align 4, !tbaa !11 ; 3 uses
  %i.fo = icmp sgt i32 %i.fn, 1
  br i1 %i.fo, label %bb.df, label %bb.dg, !prof !16

bb.df:                                            ; preds = %bb.de
  %i.fp = add nsw i32 %i.fn, -1
  store i32 %i.fp, ptr %i.et, align 4, !tbaa !11
  br label %lean_dec.exit155.thread

bb.dg:                                            ; preds = %bb.de
  %.not.i183 = icmp eq i32 %i.fn, 0
  br i1 %.not.i183, label %lean_dec.exit155.thread, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.et) #10
  br label %lean_dec.exit155.thread

bb.di:                                            ; preds = %lean_inc_ref.exit267
  %i.fq = ptrtoint ptr %i.et to i64
  %i.fr = and i64 %i.fq, 1
  %.not.i152 = icmp eq i64 %i.fr, 0
  br i1 %.not.i152, label %bb.dj, label %lean_dec.exit153

bb.dj:                                            ; preds = %bb.di
  %i.fs = load i32, ptr %i.et, align 4, !tbaa !11 ; 3 uses
  %i.ft = icmp sgt i32 %i.fs, 1
  br i1 %i.ft, label %bb.dk, label %bb.dl, !prof !16

bb.dk:                                            ; preds = %bb.dj
  %i.fu = add nsw i32 %i.fs, -1
  store i32 %i.fu, ptr %i.et, align 4, !tbaa !11
  br label %lean_dec.exit153

bb.dl:                                            ; preds = %bb.dj
  %.not.i185 = icmp eq i32 %i.fs, 0
  br i1 %.not.i185, label %lean_dec.exit153, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.et) #10
  br label %lean_dec.exit153

lean_dec.exit153:                                 ; preds = %bb.dm, %bb.dl, %bb.dk, %bb.di
  %i.fv = tail call ptr @l_Lean_LocalDecl_userName(ptr noundef %i.aj) #10
  %i.fw = tail call ptr @l_Lean_extractMacroScopes(ptr noundef %i.fv) #10 ; 4 uses
  %i.fx = tail call zeroext i8 @l_Lean_MacroScopesView_isSuffixOf(ptr noundef %i.fw, ptr noundef %4) #10
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !11 ; 3 uses
  %i.fz = icmp sgt i32 %i.fy, 1
  br i1 %i.fz, label %bb.dn, label %bb.do, !prof !16

bb.dn:                                            ; preds = %lean_dec.exit153
  %i.ga = add nsw i32 %i.fy, -1
  store i32 %i.ga, ptr %i.fw, align 4, !tbaa !11
  br label %lean_dec_ref.exit200

bb.do:                                            ; preds = %lean_dec.exit153
  %.not.i199 = icmp eq i32 %i.fy, 0
  br i1 %.not.i199, label %lean_dec_ref.exit200, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fw) #10
  br label %lean_dec_ref.exit200

lean_dec_ref.exit200:                             ; preds = %bb.dn, %bb.do, %bb.dp
  %i.gb = icmp eq i8 %i.fx, 0
  br i1 %i.gb, label %bb.dq, label %bb.du

bb.dq:                                            ; preds = %lean_dec_ref.exit200
  %i.gc = load i32, ptr %.0124356, align 4, !tbaa !11 ; 3 uses
  %i.gd = icmp sgt i32 %i.gc, 1
  br i1 %i.gd, label %bb.dr, label %bb.ds, !prof !16

bb.dr:                                            ; preds = %bb.dq
end_hunk_0
