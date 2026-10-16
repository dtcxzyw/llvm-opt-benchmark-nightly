Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/ControlFlow?download=true
inline.NumInlined: 2260
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpAndMatchIteDecidable:bb.a
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !10 ; 4 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = and i64 %i.bf, 1
  %.not.i.i249 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i249, label %bb.ar, label %lean_dec.exit.i

bb.ar:                                            ; preds = %.preheader.i
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !12 ; 3 uses
  %i.bi = icmp sgt i32 %i.bh, 1
  br i1 %i.bi, label %bb.as, label %bb.at, !prof !13

bb.as:                                            ; preds = %bb.ar
  %i.bj = add nsw i32 %i.bh, -1
  store i32 %i.bj, ptr %i.be, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.at:                                            ; preds = %bb.ar
  %.not.i7.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.be) #4
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.au, %bb.at, %bb.as, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.ao) #4
  br label %lean_dec_ref_known.exit

bb.av:                                            ; preds = %lean_inc.exit163
  %i.bk = icmp sgt i32 %.val.i248, 1
  br i1 %i.bk, label %bb.aw, label %bb.ax, !prof !13

bb.aw:                                            ; preds = %bb.av
  %i.bl = add nsw i32 %.val.i248, -1
  store i32 %i.bl, ptr %i.ao, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.ax:                                            ; preds = %bb.av
  %.not.i8.i = icmp eq i32 %.val.i248, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ao) #4
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.aw, %bb.ax, %bb.ay
  br i1 %.not.i162, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %lean_dec_ref_known.exit
  %i.bm = lshr i64 %i.ay, 1
  %i.bn = trunc i64 %i.bm to i32
  br label %lean_obj_tag.exit253

bb.ba:                                            ; preds = %lean_dec_ref_known.exit
  %i.bo = getelementptr i8, ptr %i.ax, i64 4
  %.val.i252 = load i32, ptr %i.bo, align 4
  %i.bp = lshr i32 %.val.i252, 24
  br label %lean_obj_tag.exit253

lean_obj_tag.exit253:                             ; preds = %bb.az, %bb.ba
  %.0.i251 = phi i32 [ %i.bn, %bb.az ], [ %i.bp, %bb.ba ]
  %i.bq = icmp eq i32 %.0.i251, 0
  br i1 %i.bq, label %bb.bb, label %bb.cl

bb.bb:                                            ; preds = %lean_obj_tag.exit253
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 9
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !18  ; 2 uses
  %.val.i254 = load i32, ptr %i.ax, align 4, !tbaa !12 ; 4 uses
  %i.bt = icmp eq i32 %.val.i254, 1
  br i1 %i.bt, label %.preheader.i256, label %bb.bc

.preheader.i256:                                  ; preds = %bb.bb
  tail call void @lean_free_object(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref_known.exit258

bb.bc:                                            ; preds = %bb.bb
  %i.bu = icmp sgt i32 %.val.i254, 1
  br i1 %i.bu, label %bb.bd, label %bb.be, !prof !13

bb.bd:                                            ; preds = %bb.bc
  %i.bv = add nsw i32 %.val.i254, -1
  store i32 %i.bv, ptr %i.ax, align 4, !tbaa !12
  br label %lean_dec_ref_known.exit258

bb.be:                                            ; preds = %bb.bc
  %.not.i8.i255 = icmp eq i32 %.val.i254, 0
  br i1 %.not.i8.i255, label %lean_dec_ref_known.exit258, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref_known.exit258

lean_dec_ref_known.exit258:                       ; preds = %.preheader.i256, %bb.bd, %bb.be, %bb.bf
  %.val.i.i259 = load i32, ptr %3, align 4, !tbaa !12 ; 3 uses
  %i.bw = icmp sgt i32 %.val.i.i259, 0
  br i1 %i.bw, label %bb.bg, label %bb.bh, !prof !13

bb.bg:                                            ; preds = %lean_dec_ref_known.exit258
  %i.bx = add nuw i32 %.val.i.i259, 1
  store i32 %i.bx, ptr %3, align 4, !tbaa !12
  br label %lean_inc_ref.exit261

bb.bh:                                            ; preds = %lean_dec_ref_known.exit258
  %.not.i.i260 = icmp eq i32 %.val.i.i259, 0
  br i1 %.not.i.i260, label %lean_inc_ref.exit261, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.by = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit261

lean_inc_ref.exit261:                             ; preds = %bb.bg, %bb.bh, %bb.bi
  %i.bz = tail call ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_matchIteDecidable(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %3, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef %11, ptr noundef nonnull %12, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %15) ; 16 uses
  %i.ca = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cb = and i64 %i.ca, 1
  %.not.i262 = icmp eq i64 %i.cb, 0               ; 2 uses
  br i1 %.not.i262, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %lean_inc_ref.exit261
  %i.cc = lshr i64 %i.ca, 1
  %i.cd = trunc i64 %i.cc to i32
  br label %lean_obj_tag.exit265

bb.bk:                                            ; preds = %lean_inc_ref.exit261
  %i.ce = getelementptr i8, ptr %i.bz, i64 4
  %.val.i264 = load i32, ptr %i.ce, align 4
  %i.cf = lshr i32 %.val.i264, 24
  br label %lean_obj_tag.exit265

lean_obj_tag.exit265:                             ; preds = %bb.bj, %bb.bk
  %.0.i263 = phi i32 [ %i.cd, %bb.bj ], [ %i.cf, %bb.bk ]
  %i.cg = icmp eq i32 %.0.i263, 0
  br i1 %i.cg, label %bb.bl, label %lean_dec.exit188

bb.bl:                                            ; preds = %lean_obj_tag.exit265
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !10 ; 15 uses
  %i.cj = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.ck = and i64 %i.cj, 1
  %.not.i160 = icmp eq i64 %i.ck, 0
  br i1 %.not.i160, label %bb.bm, label %lean_inc.exit161.thread

bb.bm:                                            ; preds = %bb.bl
  %.val.i.i266 = load i32, ptr %i.ci, align 4, !tbaa !12 ; 3 uses
  %i.cl = icmp sgt i32 %.val.i.i266, 0
  br i1 %i.cl, label %bb.bn, label %bb.bo, !prof !13

bb.bn:                                            ; preds = %bb.bm
  %i.cm = add nuw i32 %.val.i.i266, 1
  store i32 %i.cm, ptr %i.ci, align 4, !tbaa !12
  br label %lean_inc.exit161

bb.bo:                                            ; preds = %bb.bm
  %.not.i.i267 = icmp eq i32 %.val.i.i266, 0
  br i1 %.not.i.i267, label %lean_inc.exit161, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.cn = atomicrmw sub ptr %i.ci, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit161

lean_inc.exit161:                                 ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.co = icmp eq i8 %i.bs, 0
  br i1 %i.co, label %bb.bq, label %lean_obj_tag.exit272

lean_inc.exit161.thread:                          ; preds = %bb.bl
  %i.cp = icmp eq i8 %i.bs, 0
  br i1 %i.cp, label %lean_dec.exit188, label %lean_obj_tag.exit272.thread

bb.bq:                                            ; preds = %lean_inc.exit161
  %i.cq = load i32, ptr %i.ci, align 4, !tbaa !12 ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 1
  br i1 %i.cr, label %bb.br, label %bb.bs, !prof !13

bb.br:                                            ; preds = %bb.bq
  %i.cs = add nsw i32 %i.cq, -1
  store i32 %i.cs, ptr %i.ci, align 4, !tbaa !12
  br label %lean_dec.exit188

bb.bs:                                            ; preds = %bb.bq
  %.not.i189 = icmp eq i32 %i.cq, 0
  br i1 %.not.i189, label %lean_dec.exit188, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ci) #4
  br label %lean_dec.exit188

lean_obj_tag.exit272:                             ; preds = %lean_inc.exit161
  %i.ct = getelementptr i8, ptr %i.ci, i64 4
  %.val.i271 = load i32, ptr %i.ct, align 4
  %i.cu = icmp ult i32 %.val.i271, 16777216
  %.0159.in.v = select i1 %i.cu, i64 9, i64 25
  %.0159.in = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.0159.in.v
  %.0159 = load i8, ptr %.0159.in, align 1, !tbaa !18
  %i.cv = icmp eq i8 %.0159, 0
  br i1 %i.cv, label %bb.bu, label %bb.ch

lean_obj_tag.exit272.thread:                      ; preds = %lean_inc.exit161.thread
  %i.cw = and i64 %i.cj, 8589934590
  %i.cx = icmp eq i64 %i.cw, 0
  %.0159.in.v332 = select i1 %i.cx, i64 9, i64 25
  %.0159.in333 = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.0159.in.v332
  %.0159334 = load i8, ptr %.0159.in333, align 1, !tbaa !18
  %i.cy = icmp eq i8 %.0159334, 0
  br i1 %i.cy, label %bb.bu, label %lean_dec.exit188

bb.bu:                                            ; preds = %lean_obj_tag.exit272.thread, %lean_obj_tag.exit272
  %.val216 = load i32, ptr %i.bz, align 8, !tbaa !12 ; 4 uses
  %i.cz = icmp eq i32 %.val216, 1
  br i1 %i.cz, label %bb.bv, label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  %i.da = load ptr, ptr %i.ch, align 8, !tbaa !10 ; 4 uses
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = and i64 %i.db, 1
  %.not.i185 = icmp eq i64 %i.dc, 0
  br i1 %.not.i185, label %bb.bw, label %bb.cf

bb.bw:                                            ; preds = %bb.bv
  %i.dd = load i32, ptr %i.da, align 4, !tbaa !12 ; 3 uses
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %bb.bx, label %bb.by, !prof !13

bb.bx:                                            ; preds = %bb.bw
  %i.df = add nsw i32 %i.dd, -1
  store i32 %i.df, ptr %i.da, align 4, !tbaa !12
  br label %bb.cf

bb.by:                                            ; preds = %bb.bw
  %.not.i190 = icmp eq i32 %i.dd, 0
  br i1 %.not.i190, label %bb.cf, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.da) #4
  br label %bb.cf

bb.ca:                                            ; preds = %bb.bu
  br i1 %.not.i262, label %bb.cb, label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  %i.dg = icmp sgt i32 %.val216, 1
  br i1 %i.dg, label %bb.cc, label %bb.cd, !prof !13

bb.cc:                                            ; preds = %bb.cb
  %i.dh = add nsw i32 %.val216, -1
  store i32 %i.dh, ptr %i.bz, align 8, !tbaa !12
  br label %bb.cg

bb.cd:                                            ; preds = %bb.cb
  %.not.i192 = icmp eq i32 %.val216, 0
  br i1 %.not.i192, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bz) #4
  br label %bb.cg

bb.cf:                                            ; preds = %bb.bv, %bb.bx, %bb.by, %bb.bz
  %i.di = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ci) #4
  store ptr %i.di, ptr %i.ch, align 8, !tbaa !10
  br label %lean_dec.exit188

bb.cg:                                            ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.ca
  %i.dj = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ci) #4
  %i.dk = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.dj, ptr %i.dl, align 8, !tbaa !10
  br label %lean_dec.exit188

bb.ch:                                            ; preds = %lean_obj_tag.exit272
  %i.dm = load i32, ptr %i.ci, align 4, !tbaa !12 ; 3 uses
  %i.dn = icmp sgt i32 %i.dm, 1
  br i1 %i.dn, label %bb.ci, label %bb.cj, !prof !13

bb.ci:                                            ; preds = %bb.ch
  %i.do = add nsw i32 %i.dm, -1
  store i32 %i.do, ptr %i.ci, align 4, !tbaa !12
  br label %lean_dec.exit188

bb.cj:                                            ; preds = %bb.ch
  %.not.i194 = icmp eq i32 %i.dm, 0
  br i1 %.not.i194, label %lean_dec.exit188, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ci) #4
  br label %lean_dec.exit188

bb.cl:                                            ; preds = %lean_obj_tag.exit253
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !10 ; 4 uses
  %.val.i.i273 = load i32, ptr %i.dq, align 4, !tbaa !12 ; 3 uses
  %i.dr = icmp sgt i32 %.val.i.i273, 0
  br i1 %i.dr, label %bb.cm, label %bb.cn, !prof !13

bb.cm:                                            ; preds = %bb.cl
  %i.ds = add nuw i32 %.val.i.i273, 1
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !12
  br label %lean_inc_ref.exit275

bb.cn:                                            ; preds = %bb.cl
  %.not.i.i274 = icmp eq i32 %.val.i.i273, 0
  br i1 %.not.i.i274, label %lean_inc_ref.exit275, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.dt = atomicrmw sub ptr %i.dq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit275

lean_inc_ref.exit275:                             ; preds = %bb.cm, %bb.cn, %bb.co
  %i.du = getelementptr inbounds nuw i8, ptr %i.ax, i64 25
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !18  ; 2 uses
  %.val.i276 = load i32, ptr %i.ax, align 8, !tbaa !12 ; 4 uses
  %i.dw = icmp eq i32 %.val.i276, 1
  br i1 %i.dw, label %.preheader.i278.preheader, label %bb.cx

.preheader.i278.preheader:                        ; preds = %lean_inc_ref.exit275
  %i.dx = load ptr, ptr %i.dp, align 8, !tbaa !10 ; 4 uses
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = and i64 %i.dy, 1
  %.not.i.i280 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i280, label %bb.cp, label %lean_dec.exit.i281

bb.cp:                                            ; preds = %.preheader.i278.preheader
  %i.ea = load i32, ptr %i.dx, align 4, !tbaa !12 ; 3 uses
  %i.eb = icmp sgt i32 %i.ea, 1
  br i1 %i.eb, label %bb.cq, label %bb.cr, !prof !13

bb.cq:                                            ; preds = %bb.cp
  %i.ec = add nsw i32 %i.ea, -1
  store i32 %i.ec, ptr %i.dx, align 4, !tbaa !12
  br label %lean_dec.exit.i281

bb.cr:                                            ; preds = %bb.cp
  %.not.i7.i285 = icmp eq i32 %i.ea, 0
  br i1 %.not.i7.i285, label %lean_dec.exit.i281, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dx) #4
  br label %lean_dec.exit.i281

lean_dec.exit.i281:                               ; preds = %bb.cs, %bb.cr, %bb.cq, %.preheader.i278.preheader
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !10 ; 4 uses
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = and i64 %i.ef, 1
  %.not.i.i280.1 = icmp eq i64 %i.eg, 0
  br i1 %.not.i.i280.1, label %bb.ct, label %lean_dec.exit.i281.1

bb.ct:                                            ; preds = %lean_dec.exit.i281
  %i.eh = load i32, ptr %i.ee, align 4, !tbaa !12 ; 3 uses
  %i.ei = icmp sgt i32 %i.eh, 1
  br i1 %i.ei, label %bb.cw, label %bb.cu, !prof !13

bb.cu:                                            ; preds = %bb.ct
  %.not.i7.i285.1 = icmp eq i32 %i.eh, 0
  br i1 %.not.i7.i285.1, label %lean_dec.exit.i281.1, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ee) #4
  br label %lean_dec.exit.i281.1

bb.cw:                                            ; preds = %bb.ct
  %i.ej = add nsw i32 %i.eh, -1
  store i32 %i.ej, ptr %i.ee, align 4, !tbaa !12
  br label %lean_dec.exit.i281.1

lean_dec.exit.i281.1:                             ; preds = %bb.cw, %bb.cv, %bb.cu, %lean_dec.exit.i281
  tail call void @lean_free_object(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref_known.exit286

bb.cx:                                            ; preds = %lean_inc_ref.exit275
  %i.ek = icmp sgt i32 %.val.i276, 1
  br i1 %i.ek, label %bb.cy, label %bb.cz, !prof !13

bb.cy:                                            ; preds = %bb.cx
  %i.el = add nsw i32 %.val.i276, -1
  store i32 %i.el, ptr %i.ax, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit286

bb.cz:                                            ; preds = %bb.cx
  %.not.i8.i277 = icmp eq i32 %.val.i276, 0
  br i1 %.not.i8.i277, label %lean_dec_ref_known.exit286, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref_known.exit286

lean_dec_ref_known.exit286:                       ; preds = %lean_dec.exit.i281.1, %bb.cy, %bb.cz, %bb.da
  %i.em = tail call ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_matchIteDecidable(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %i.dq, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef %11, ptr noundef nonnull %12, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %15) ; 16 uses
  %i.en = ptrtoint ptr %i.em to i64               ; 2 uses
  %i.eo = and i64 %i.en, 1
  %.not.i287 = icmp eq i64 %i.eo, 0               ; 2 uses
  br i1 %.not.i287, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %lean_dec_ref_known.exit286
  %i.ep = lshr i64 %i.en, 1
  %i.eq = trunc i64 %i.ep to i32
  br label %lean_obj_tag.exit290

bb.dc:                                            ; preds = %lean_dec_ref_known.exit286
  %i.er = getelementptr i8, ptr %i.em, i64 4
  %.val.i289 = load i32, ptr %i.er, align 4
  %i.es = lshr i32 %.val.i289, 24
  br label %lean_obj_tag.exit290

lean_obj_tag.exit290:                             ; preds = %bb.db, %bb.dc
  %.0.i288 = phi i32 [ %i.eq, %bb.db ], [ %i.es, %bb.dc ]
  %i.et = icmp eq i32 %.0.i288, 0
  br i1 %i.et, label %bb.dd, label %lean_dec.exit188

bb.dd:                                            ; preds = %lean_obj_tag.exit290
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !10 ; 15 uses
  %i.ew = ptrtoint ptr %i.ev to i64               ; 2 uses
  %i.ex = and i64 %i.ew, 1
  %.not.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i, label %bb.de, label %lean_inc.exit.thread

bb.de:                                            ; preds = %bb.dd
  %.val.i.i291 = load i32, ptr %i.ev, align 4, !tbaa !12 ; 3 uses
  %i.ey = icmp sgt i32 %.val.i.i291, 0
  br i1 %i.ey, label %bb.df, label %bb.dg, !prof !13

bb.df:                                            ; preds = %bb.de
  %i.ez = add nuw i32 %.val.i.i291, 1
  store i32 %i.ez, ptr %i.ev, align 4, !tbaa !12
  br label %lean_inc.exit

bb.dg:                                            ; preds = %bb.de
  %.not.i.i292 = icmp eq i32 %.val.i.i291, 0
  br i1 %.not.i.i292, label %lean_inc.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.fa = atomicrmw sub ptr %i.ev, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.dh, %bb.dg, %bb.df
  %i.fb = icmp eq i8 %i.dv, 0
  br i1 %i.fb, label %bb.di, label %lean_obj_tag.exit297

lean_inc.exit.thread:                             ; preds = %bb.dd
  %i.fc = icmp eq i8 %i.dv, 0
  br i1 %i.fc, label %lean_dec.exit188, label %lean_obj_tag.exit297.thread

bb.di:                                            ; preds = %lean_inc.exit
  %i.fd = load i32, ptr %i.ev, align 4, !tbaa !12 ; 3 uses
  %i.fe = icmp sgt i32 %i.fd, 1
  br i1 %i.fe, label %bb.dj, label %bb.dk, !prof !13

bb.dj:                                            ; preds = %bb.di
  %i.ff = add nsw i32 %i.fd, -1
  store i32 %i.ff, ptr %i.ev, align 4, !tbaa !12
  br label %lean_dec.exit188

bb.dk:                                            ; preds = %bb.di
  %.not.i196 = icmp eq i32 %i.fd, 0
  br i1 %.not.i196, label %lean_dec.exit188, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ev) #4
  br label %lean_dec.exit188

lean_obj_tag.exit297:                             ; preds = %lean_inc.exit
  %i.fg = getelementptr i8, ptr %i.ev, i64 4
  %.val.i296 = load i32, ptr %i.fg, align 4
  %i.fh = icmp ult i32 %.val.i296, 16777216
  %.0155.in.v = select i1 %i.fh, i64 9, i64 25
  %.0155.in = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.0155.in.v
  %.0155 = load i8, ptr %.0155.in, align 1, !tbaa !18
  %i.fi = icmp eq i8 %.0155, 0
  br i1 %i.fi, label %bb.dm, label %bb.dz

lean_obj_tag.exit297.thread:                      ; preds = %lean_inc.exit.thread
  %i.fj = and i64 %i.ew, 8589934590
  %i.fk = icmp eq i64 %i.fj, 0
  %.0155.in.v338 = select i1 %i.fk, i64 9, i64 25
  %.0155.in339 = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.0155.in.v338
  %.0155340 = load i8, ptr %.0155.in339, align 1, !tbaa !18
  %i.fl = icmp eq i8 %.0155340, 0
  br i1 %i.fl, label %bb.dm, label %lean_dec.exit188

bb.dm:                                            ; preds = %lean_obj_tag.exit297.thread, %lean_obj_tag.exit297
  %.val = load i32, ptr %i.em, align 8, !tbaa !12 ; 4 uses
  %i.fm = icmp eq i32 %.val, 1
  br i1 %i.fm, label %bb.dn, label %bb.ds

bb.dn:                                            ; preds = %bb.dm
  %i.fn = load ptr, ptr %i.eu, align 8, !tbaa !10 ; 4 uses
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = and i64 %i.fo, 1
  %.not.i177 = icmp eq i64 %i.fp, 0
  br i1 %.not.i177, label %bb.do, label %bb.dx

bb.do:                                            ; preds = %bb.dn
  %i.fq = load i32, ptr %i.fn, align 4, !tbaa !12 ; 3 uses
  %i.fr = icmp sgt i32 %i.fq, 1
  br i1 %i.fr, label %bb.dp, label %bb.dq, !prof !13

bb.dp:                                            ; preds = %bb.do
  %i.fs = add nsw i32 %i.fq, -1
  store i32 %i.fs, ptr %i.fn, align 4, !tbaa !12
  br label %bb.dx

bb.dq:                                            ; preds = %bb.do
  %.not.i198 = icmp eq i32 %i.fq, 0
  br i1 %.not.i198, label %bb.dx, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fn) #4
  br label %bb.dx

bb.ds:                                            ; preds = %bb.dm
  br i1 %.not.i287, label %bb.dt, label %bb.dy

bb.dt:                                            ; preds = %bb.ds
  %i.ft = icmp sgt i32 %.val, 1
  br i1 %i.ft, label %bb.du, label %bb.dv, !prof !13

bb.du:                                            ; preds = %bb.dt
  %i.fu = add nsw i32 %.val, -1
  store i32 %i.fu, ptr %i.em, align 8, !tbaa !12
  br label %bb.dy

bb.dv:                                            ; preds = %bb.dt
  %.not.i200 = icmp eq i32 %.val, 0
  br i1 %.not.i200, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.em) #4
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dn, %bb.dp, %bb.dq, %bb.dr
  %i.fv = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ev) #4
  store ptr %i.fv, ptr %i.eu, align 8, !tbaa !10
  br label %lean_dec.exit188

bb.dy:                                            ; preds = %bb.dw, %bb.dv, %bb.du, %bb.ds
  %i.fw = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ev) #4
  %i.fx = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr %i.fw, ptr %i.fy, align 8, !tbaa !10
  br label %lean_dec.exit188

bb.dz:                                            ; preds = %lean_obj_tag.exit297
  %i.fz = load i32, ptr %i.ev, align 4, !tbaa !12 ; 3 uses
  %i.ga = icmp sgt i32 %i.fz, 1
  br i1 %i.ga, label %bb.ea, label %bb.eb, !prof !13

bb.ea:                                            ; preds = %bb.dz
  %i.gb = add nsw i32 %i.fz, -1
  store i32 %i.gb, ptr %i.ev, align 4, !tbaa !12
  br label %lean_dec.exit188

bb.eb:                                            ; preds = %bb.dz
  %.not.i202 = icmp eq i32 %i.fz, 0
  br i1 %.not.i202, label %lean_dec.exit188, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ev) #4
  br label %lean_dec.exit188

bb.ed:                                            ; preds = %lean_obj_tag.exit
  %i.gc = load i32, ptr %6, align 4, !tbaa !12    ; 3 uses
  %i.gd = icmp sgt i32 %i.gc, 1
  br i1 %i.gd, label %bb.ee, label %bb.ef, !prof !13

bb.ee:                                            ; preds = %bb.ed
  %i.ge = add nsw i32 %i.gc, -1
  store i32 %i.ge, ptr %6, align 4, !tbaa !12
  br label %lean_dec_ref.exit215

bb.ef:                                            ; preds = %bb.ed
  %.not.i214 = icmp eq i32 %i.gc, 0
  br i1 %.not.i214, label %lean_dec_ref.exit215, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #4
  br label %lean_dec_ref.exit215

lean_dec_ref.exit215:                             ; preds = %bb.ee, %bb.ef, %bb.eg
  %i.gf = load i32, ptr %5, align 4, !tbaa !12    ; 3 uses
  %i.gg = icmp sgt i32 %i.gf, 1
  br i1 %i.gg, label %bb.eh, label %bb.ei, !prof !13

bb.eh:                                            ; preds = %lean_dec_ref.exit215
  %i.gh = add nsw i32 %i.gf, -1
  store i32 %i.gh, ptr %5, align 4, !tbaa !12
  br label %lean_dec_ref.exit213

bb.ei:                                            ; preds = %lean_dec_ref.exit215
  %.not.i212 = icmp eq i32 %i.gf, 0
  br i1 %.not.i212, label %lean_dec_ref.exit213, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #4
  br label %lean_dec_ref.exit213

lean_dec_ref.exit213:                             ; preds = %bb.eh, %bb.ei, %bb.ej
  %i.gi = load i32, ptr %4, align 4, !tbaa !12    ; 3 uses
  %i.gj = icmp sgt i32 %i.gi, 1
  br i1 %i.gj, label %bb.ek, label %bb.el, !prof !13

bb.ek:                                            ; preds = %lean_dec_ref.exit213
  %i.gk = add nsw i32 %i.gi, -1
  store i32 %i.gk, ptr %4, align 4, !tbaa !12
  br label %lean_dec_ref.exit211

bb.el:                                            ; preds = %lean_dec_ref.exit213
  %.not.i210 = icmp eq i32 %i.gi, 0
  br i1 %.not.i210, label %lean_dec_ref.exit211, label %bb.em

bb.em:                                            ; preds = %bb.el
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec_ref.exit211

lean_dec_ref.exit211:                             ; preds = %bb.ek, %bb.el, %bb.em
  %i.gl = load i32, ptr %3, align 4, !tbaa !12    ; 3 uses
  %i.gm = icmp sgt i32 %i.gl, 1
  br i1 %i.gm, label %bb.en, label %bb.eo, !prof !13

bb.en:                                            ; preds = %lean_dec_ref.exit211
  %i.gn = add nsw i32 %i.gl, -1
  store i32 %i.gn, ptr %3, align 4, !tbaa !12
  br label %lean_dec_ref.exit209

bb.eo:                                            ; preds = %lean_dec_ref.exit211
  %.not.i208 = icmp eq i32 %i.gl, 0
  br i1 %.not.i208, label %lean_dec_ref.exit209, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec_ref.exit209

lean_dec_ref.exit209:                             ; preds = %bb.en, %bb.eo, %bb.ep
  %i.go = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.gp = icmp sgt i32 %i.go, 1
  br i1 %i.gp, label %bb.eq, label %bb.er, !prof !13

bb.eq:                                            ; preds = %lean_dec_ref.exit209
  %i.gq = add nsw i32 %i.go, -1
  store i32 %i.gq, ptr %2, align 4, !tbaa !12
  br label %lean_dec_ref.exit207

bb.er:                                            ; preds = %lean_dec_ref.exit209
  %.not.i206 = icmp eq i32 %i.go, 0
  br i1 %.not.i206, label %lean_dec_ref.exit207, label %bb.es

bb.es:                                            ; preds = %bb.er
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec_ref.exit207

lean_dec_ref.exit207:                             ; preds = %bb.eq, %bb.er, %bb.es
  %i.gr = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.gs = icmp sgt i32 %i.gr, 1
  br i1 %i.gs, label %bb.et, label %bb.eu, !prof !13

bb.et:                                            ; preds = %lean_dec_ref.exit207
  %i.gt = add nsw i32 %i.gr, -1
  store i32 %i.gt, ptr %1, align 4, !tbaa !12
  br label %lean_dec.exit188

bb.eu:                                            ; preds = %lean_dec_ref.exit207
  %.not.i204 = icmp eq i32 %i.gr, 0
  br i1 %.not.i204, label %lean_dec.exit188, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec.exit188

lean_dec.exit188:                                 ; preds = %lean_obj_tag.exit297.thread, %lean_obj_tag.exit272.thread, %lean_inc.exit.thread, %lean_inc.exit161.thread, %bb.ev, %bb.eu, %bb.et, %bb.ea, %bb.eb, %bb.ec, %bb.dj, %bb.dk, %bb.dl, %bb.ci, %bb.cj, %bb.ck, %bb.br, %bb.bs, %bb.bt, %lean_obj_tag.exit265, %bb.cg, %bb.cf, %lean_obj_tag.exit290, %bb.dy, %bb.dx
  %.9 = phi ptr [ %i.em, %lean_obj_tag.exit297.thread ], [ %i.bz, %lean_obj_tag.exit265 ], [ %i.dk, %bb.cg ], [ %i.em, %lean_obj_tag.exit290 ], [ %i.ao, %bb.eu ], [ %i.bz, %bb.cf ], [ %i.fx, %bb.dy ], [ %i.bz, %lean_obj_tag.exit272.thread ], [ %i.em, %lean_inc.exit.thread ], [ %i.em, %bb.dx ], [ %i.bz, %bb.bt ], [ %i.bz, %bb.bs ], [ %i.bz, %bb.br ], [ %i.ao, %bb.ev ], [ %i.bz, %bb.ck ], [ %i.bz, %bb.cj ], [ %i.bz, %bb.ci ], [ %i.em, %bb.dl ], [ %i.em, %bb.dk ], [ %i.em, %bb.dj ], [ %i.bz, %lean_inc.exit161.thread ], [ %i.em, %bb.ec ], [ %i.em, %bb.eb ], [ %i.em, %bb.ea ], [ %i.ao, %bb.et ]
  ret ptr %.9
}

declare ptr @lean_sym_simp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef) local_unnamed_addr #1

end_hunk_0
begin_hunk_1_@l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpAndMatchIteDecidableCongr:bb.a
  %i.bb = add nuw i32 %.val.i.i260, 1
  store i32 %i.bb, ptr %i.ax, align 4, !tbaa !12
  br label %lean_inc.exit170

bb.ap:                                            ; preds = %bb.an
  %.not.i.i261 = icmp eq i32 %.val.i.i260, 0
  br i1 %.not.i.i261, label %lean_inc.exit170, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bc = atomicrmw sub ptr %i.ax, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit170

lean_inc.exit170:                                 ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am
  %.val.i263 = load i32, ptr %i.ao, align 8, !tbaa !12 ; 4 uses
  %i.bd = icmp eq i32 %.val.i263, 1
  br i1 %i.bd, label %.preheader.i, label %bb.av

.preheader.i:                                     ; preds = %lean_inc.exit170
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !10 ; 4 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = and i64 %i.bf, 1
  %.not.i.i264 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i264, label %bb.ar, label %lean_dec.exit.i

bb.ar:                                            ; preds = %.preheader.i
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !12 ; 3 uses
  %i.bi = icmp sgt i32 %i.bh, 1
  br i1 %i.bi, label %bb.as, label %bb.at, !prof !13

bb.as:                                            ; preds = %bb.ar
  %i.bj = add nsw i32 %i.bh, -1
  store i32 %i.bj, ptr %i.be, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.at:                                            ; preds = %bb.ar
  %.not.i7.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.be) #4
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.au, %bb.at, %bb.as, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.ao) #4
  br label %lean_dec_ref_known.exit

bb.av:                                            ; preds = %lean_inc.exit170
  %i.bk = icmp sgt i32 %.val.i263, 1
  br i1 %i.bk, label %bb.aw, label %bb.ax, !prof !13

bb.aw:                                            ; preds = %bb.av
  %i.bl = add nsw i32 %.val.i263, -1
  store i32 %i.bl, ptr %i.ao, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.ax:                                            ; preds = %bb.av
  %.not.i8.i = icmp eq i32 %.val.i263, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ao) #4
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.aw, %bb.ax, %bb.ay
  br i1 %.not.i169, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %lean_dec_ref_known.exit
  %i.bm = lshr i64 %i.ay, 1
  %i.bn = trunc i64 %i.bm to i32
  br label %lean_obj_tag.exit268

bb.ba:                                            ; preds = %lean_dec_ref_known.exit
  %i.bo = getelementptr i8, ptr %i.ax, i64 4
  %.val.i267 = load i32, ptr %i.bo, align 4
  %i.bp = lshr i32 %.val.i267, 24
  br label %lean_obj_tag.exit268

lean_obj_tag.exit268:                             ; preds = %bb.az, %bb.ba
  %.0.i266 = phi i32 [ %i.bn, %bb.az ], [ %i.bp, %bb.ba ]
  %i.bq = icmp eq i32 %.0.i266, 0
  br i1 %i.bq, label %bb.bb, label %bb.ci

bb.bb:                                            ; preds = %lean_obj_tag.exit268
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 9
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !18  ; 2 uses
  %.val.i269 = load i32, ptr %i.ax, align 4, !tbaa !12 ; 4 uses
  %i.bt = icmp eq i32 %.val.i269, 1
  br i1 %i.bt, label %.preheader.i271, label %bb.bc

.preheader.i271:                                  ; preds = %bb.bb
  tail call void @lean_free_object(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref_known.exit273

bb.bc:                                            ; preds = %bb.bb
  %i.bu = icmp sgt i32 %.val.i269, 1
  br i1 %i.bu, label %bb.bd, label %bb.be, !prof !13

bb.bd:                                            ; preds = %bb.bc
  %i.bv = add nsw i32 %.val.i269, -1
  store i32 %i.bv, ptr %i.ax, align 4, !tbaa !12
  br label %lean_dec_ref_known.exit273

bb.be:                                            ; preds = %bb.bc
  %.not.i8.i270 = icmp eq i32 %.val.i269, 0
  br i1 %.not.i8.i270, label %lean_dec_ref_known.exit273, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref_known.exit273

lean_dec_ref_known.exit273:                       ; preds = %.preheader.i271, %bb.bd, %bb.be, %bb.bf
  %i.bw = tail call ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_matchIteDecidableCongr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %16, ptr noundef nonnull %17, ptr noundef %18) ; 16 uses
  %i.bx = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.by = and i64 %i.bx, 1
  %.not.i274 = icmp eq i64 %i.by, 0               ; 2 uses
  br i1 %.not.i274, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %lean_dec_ref_known.exit273
  %i.bz = lshr i64 %i.bx, 1
  %i.ca = trunc i64 %i.bz to i32
  br label %lean_obj_tag.exit277

bb.bh:                                            ; preds = %lean_dec_ref_known.exit273
  %i.cb = getelementptr i8, ptr %i.bw, i64 4
  %.val.i276 = load i32, ptr %i.cb, align 4
  %i.cc = lshr i32 %.val.i276, 24
  br label %lean_obj_tag.exit277

lean_obj_tag.exit277:                             ; preds = %bb.bg, %bb.bh
  %.0.i275 = phi i32 [ %i.ca, %bb.bg ], [ %i.cc, %bb.bh ]
  %i.cd = icmp eq i32 %.0.i275, 0
  br i1 %i.cd, label %bb.bi, label %lean_dec.exit195

bb.bi:                                            ; preds = %lean_obj_tag.exit277
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !10 ; 15 uses
  %i.cg = ptrtoint ptr %i.cf to i64               ; 2 uses
  %i.ch = and i64 %i.cg, 1
  %.not.i167 = icmp eq i64 %i.ch, 0
  br i1 %.not.i167, label %bb.bj, label %lean_inc.exit168.thread

bb.bj:                                            ; preds = %bb.bi
  %.val.i.i278 = load i32, ptr %i.cf, align 4, !tbaa !12 ; 3 uses
  %i.ci = icmp sgt i32 %.val.i.i278, 0
  br i1 %i.ci, label %bb.bk, label %bb.bl, !prof !13

bb.bk:                                            ; preds = %bb.bj
  %i.cj = add nuw i32 %.val.i.i278, 1
  store i32 %i.cj, ptr %i.cf, align 4, !tbaa !12
  br label %lean_inc.exit168

bb.bl:                                            ; preds = %bb.bj
  %.not.i.i279 = icmp eq i32 %.val.i.i278, 0
  br i1 %.not.i.i279, label %lean_inc.exit168, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ck = atomicrmw sub ptr %i.cf, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit168

lean_inc.exit168:                                 ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.cl = icmp eq i8 %i.bs, 0
  br i1 %i.cl, label %bb.bn, label %lean_obj_tag.exit284

lean_inc.exit168.thread:                          ; preds = %bb.bi
  %i.cm = icmp eq i8 %i.bs, 0
  br i1 %i.cm, label %lean_dec.exit195, label %lean_obj_tag.exit284.thread

bb.bn:                                            ; preds = %lean_inc.exit168
  %i.cn = load i32, ptr %i.cf, align 4, !tbaa !12 ; 3 uses
  %i.co = icmp sgt i32 %i.cn, 1
  br i1 %i.co, label %bb.bo, label %bb.bp, !prof !13

bb.bo:                                            ; preds = %bb.bn
  %i.cp = add nsw i32 %i.cn, -1
  store i32 %i.cp, ptr %i.cf, align 4, !tbaa !12
  br label %lean_dec.exit195

bb.bp:                                            ; preds = %bb.bn
  %.not.i196 = icmp eq i32 %i.cn, 0
  br i1 %.not.i196, label %lean_dec.exit195, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cf) #4
  br label %lean_dec.exit195

lean_obj_tag.exit284:                             ; preds = %lean_inc.exit168
  %i.cq = getelementptr i8, ptr %i.cf, i64 4
  %.val.i283 = load i32, ptr %i.cq, align 4
  %i.cr = icmp ult i32 %.val.i283, 16777216
  %.0166.in.v = select i1 %i.cr, i64 9, i64 25
  %.0166.in = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.0166.in.v
  %.0166 = load i8, ptr %.0166.in, align 1, !tbaa !18
  %i.cs = icmp eq i8 %.0166, 0
  br i1 %i.cs, label %bb.br, label %bb.ce

lean_obj_tag.exit284.thread:                      ; preds = %lean_inc.exit168.thread
  %i.ct = and i64 %i.cg, 8589934590
  %i.cu = icmp eq i64 %i.ct, 0
  %.0166.in.v352 = select i1 %i.cu, i64 9, i64 25
  %.0166.in353 = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.0166.in.v352
  %.0166354 = load i8, ptr %.0166.in353, align 1, !tbaa !18
  %i.cv = icmp eq i8 %.0166354, 0
  br i1 %i.cv, label %bb.br, label %lean_dec.exit195

bb.br:                                            ; preds = %lean_obj_tag.exit284.thread, %lean_obj_tag.exit284
  %.val231 = load i32, ptr %i.bw, align 8, !tbaa !12 ; 4 uses
  %i.cw = icmp eq i32 %.val231, 1
  br i1 %i.cw, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %bb.br
  %i.cx = load ptr, ptr %i.ce, align 8, !tbaa !10 ; 4 uses
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = and i64 %i.cy, 1
  %.not.i192 = icmp eq i64 %i.cz, 0
  br i1 %.not.i192, label %bb.bt, label %bb.cc

bb.bt:                                            ; preds = %bb.bs
  %i.da = load i32, ptr %i.cx, align 4, !tbaa !12 ; 3 uses
  %i.db = icmp sgt i32 %i.da, 1
  br i1 %i.db, label %bb.bu, label %bb.bv, !prof !13

bb.bu:                                            ; preds = %bb.bt
  %i.dc = add nsw i32 %i.da, -1
  store i32 %i.dc, ptr %i.cx, align 4, !tbaa !12
  br label %bb.cc

bb.bv:                                            ; preds = %bb.bt
  %.not.i197 = icmp eq i32 %i.da, 0
  br i1 %.not.i197, label %bb.cc, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cx) #4
  br label %bb.cc

bb.bx:                                            ; preds = %bb.br
  br i1 %.not.i274, label %bb.by, label %bb.cd

bb.by:                                            ; preds = %bb.bx
  %i.dd = icmp sgt i32 %.val231, 1
  br i1 %i.dd, label %bb.bz, label %bb.ca, !prof !13

bb.bz:                                            ; preds = %bb.by
  %i.de = add nsw i32 %.val231, -1
  store i32 %i.de, ptr %i.bw, align 8, !tbaa !12
  br label %bb.cd

bb.ca:                                            ; preds = %bb.by
  %.not.i199 = icmp eq i32 %.val231, 0
  br i1 %.not.i199, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bw) #4
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bs, %bb.bu, %bb.bv, %bb.bw
  %i.df = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.cf) #4
  store ptr %i.df, ptr %i.ce, align 8, !tbaa !10
  br label %lean_dec.exit195

bb.cd:                                            ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.bx
  %i.dg = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.cf) #4
  %i.dh = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.dg, ptr %i.di, align 8, !tbaa !10
  br label %lean_dec.exit195

bb.ce:                                            ; preds = %lean_obj_tag.exit284
  %i.dj = load i32, ptr %i.cf, align 4, !tbaa !12 ; 3 uses
  %i.dk = icmp sgt i32 %i.dj, 1
  br i1 %i.dk, label %bb.cf, label %bb.cg, !prof !13

bb.cf:                                            ; preds = %bb.ce
  %i.dl = add nsw i32 %i.dj, -1
  store i32 %i.dl, ptr %i.cf, align 4, !tbaa !12
  br label %lean_dec.exit195

bb.cg:                                            ; preds = %bb.ce
  %.not.i201 = icmp eq i32 %i.dj, 0
  br i1 %.not.i201, label %lean_dec.exit195, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cf) #4
  br label %lean_dec.exit195

bb.ci:                                            ; preds = %lean_obj_tag.exit268
  %i.dm = load i32, ptr %8, align 4, !tbaa !12    ; 3 uses
  %i.dn = icmp sgt i32 %i.dm, 1
  br i1 %i.dn, label %bb.cj, label %bb.ck, !prof !13

bb.cj:                                            ; preds = %bb.ci
  %i.do = add nsw i32 %i.dm, -1
  store i32 %i.do, ptr %8, align 4, !tbaa !12
  br label %lean_dec_ref.exit230

bb.ck:                                            ; preds = %bb.ci
  %.not.i229 = icmp eq i32 %i.dm, 0
  br i1 %.not.i229, label %lean_dec_ref.exit230, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #4
  br label %lean_dec_ref.exit230

lean_dec_ref.exit230:                             ; preds = %bb.cj, %bb.ck, %bb.cl
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !10 ; 4 uses
  %.val.i.i285 = load i32, ptr %i.dq, align 4, !tbaa !12 ; 3 uses
  %i.dr = icmp sgt i32 %.val.i.i285, 0
  br i1 %i.dr, label %bb.cm, label %bb.cn, !prof !13

bb.cm:                                            ; preds = %lean_dec_ref.exit230
  %i.ds = add nuw i32 %.val.i.i285, 1
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !12
  br label %lean_inc_ref.exit287

bb.cn:                                            ; preds = %lean_dec_ref.exit230
  %.not.i.i286 = icmp eq i32 %.val.i.i285, 0
  br i1 %.not.i.i286, label %lean_inc_ref.exit287, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.dt = atomicrmw sub ptr %i.dq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit287

lean_inc_ref.exit287:                             ; preds = %bb.cm, %bb.cn, %bb.co
  %i.du = getelementptr inbounds nuw i8, ptr %i.ax, i64 25
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !18  ; 2 uses
  %.val.i288 = load i32, ptr %i.ax, align 8, !tbaa !12 ; 4 uses
  %i.dw = icmp eq i32 %.val.i288, 1
  br i1 %i.dw, label %.preheader.i290.preheader, label %bb.cx

.preheader.i290.preheader:                        ; preds = %lean_inc_ref.exit287
  %i.dx = load ptr, ptr %i.dp, align 8, !tbaa !10 ; 4 uses
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = and i64 %i.dy, 1
  %.not.i.i292 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i292, label %bb.cp, label %lean_dec.exit.i293

bb.cp:                                            ; preds = %.preheader.i290.preheader
  %i.ea = load i32, ptr %i.dx, align 4, !tbaa !12 ; 3 uses
  %i.eb = icmp sgt i32 %i.ea, 1
  br i1 %i.eb, label %bb.cq, label %bb.cr, !prof !13

bb.cq:                                            ; preds = %bb.cp
  %i.ec = add nsw i32 %i.ea, -1
  store i32 %i.ec, ptr %i.dx, align 4, !tbaa !12
  br label %lean_dec.exit.i293

bb.cr:                                            ; preds = %bb.cp
  %.not.i7.i297 = icmp eq i32 %i.ea, 0
  br i1 %.not.i7.i297, label %lean_dec.exit.i293, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dx) #4
  br label %lean_dec.exit.i293

lean_dec.exit.i293:                               ; preds = %bb.cs, %bb.cr, %bb.cq, %.preheader.i290.preheader
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !10 ; 4 uses
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = and i64 %i.ef, 1
  %.not.i.i292.1 = icmp eq i64 %i.eg, 0
  br i1 %.not.i.i292.1, label %bb.ct, label %lean_dec.exit.i293.1

bb.ct:                                            ; preds = %lean_dec.exit.i293
  %i.eh = load i32, ptr %i.ee, align 4, !tbaa !12 ; 3 uses
  %i.ei = icmp sgt i32 %i.eh, 1
  br i1 %i.ei, label %bb.cw, label %bb.cu, !prof !13

bb.cu:                                            ; preds = %bb.ct
  %.not.i7.i297.1 = icmp eq i32 %i.eh, 0
  br i1 %.not.i7.i297.1, label %lean_dec.exit.i293.1, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ee) #4
  br label %lean_dec.exit.i293.1

bb.cw:                                            ; preds = %bb.ct
  %i.ej = add nsw i32 %i.eh, -1
  store i32 %i.ej, ptr %i.ee, align 4, !tbaa !12
  br label %lean_dec.exit.i293.1

lean_dec.exit.i293.1:                             ; preds = %bb.cw, %bb.cv, %bb.cu, %lean_dec.exit.i293
  tail call void @lean_free_object(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref_known.exit298

bb.cx:                                            ; preds = %lean_inc_ref.exit287
  %i.ek = icmp sgt i32 %.val.i288, 1
  br i1 %i.ek, label %bb.cy, label %bb.cz, !prof !13

bb.cy:                                            ; preds = %bb.cx
  %i.el = add nsw i32 %.val.i288, -1
  store i32 %i.el, ptr %i.ax, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit298

bb.cz:                                            ; preds = %bb.cx
  %.not.i8.i289 = icmp eq i32 %.val.i288, 0
  br i1 %.not.i8.i289, label %lean_dec_ref_known.exit298, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref_known.exit298

lean_dec_ref_known.exit298:                       ; preds = %lean_dec.exit.i293.1, %bb.cy, %bb.cz, %bb.da
  %i.em = tail call ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_matchIteDecidableCongr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %i.dq, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %16, ptr noundef nonnull %17, ptr noundef %18) ; 16 uses
  %i.en = ptrtoint ptr %i.em to i64               ; 2 uses
  %i.eo = and i64 %i.en, 1
  %.not.i299 = icmp eq i64 %i.eo, 0               ; 2 uses
  br i1 %.not.i299, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %lean_dec_ref_known.exit298
  %i.ep = lshr i64 %i.en, 1
  %i.eq = trunc i64 %i.ep to i32
  br label %lean_obj_tag.exit302

bb.dc:                                            ; preds = %lean_dec_ref_known.exit298
  %i.er = getelementptr i8, ptr %i.em, i64 4
  %.val.i301 = load i32, ptr %i.er, align 4
  %i.es = lshr i32 %.val.i301, 24
  br label %lean_obj_tag.exit302

lean_obj_tag.exit302:                             ; preds = %bb.db, %bb.dc
  %.0.i300 = phi i32 [ %i.eq, %bb.db ], [ %i.es, %bb.dc ]
  %i.et = icmp eq i32 %.0.i300, 0
  br i1 %i.et, label %bb.dd, label %lean_dec.exit195

bb.dd:                                            ; preds = %lean_obj_tag.exit302
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !10 ; 15 uses
  %i.ew = ptrtoint ptr %i.ev to i64               ; 2 uses
  %i.ex = and i64 %i.ew, 1
  %.not.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i, label %bb.de, label %lean_inc.exit.thread

bb.de:                                            ; preds = %bb.dd
  %.val.i.i303 = load i32, ptr %i.ev, align 4, !tbaa !12 ; 3 uses
  %i.ey = icmp sgt i32 %.val.i.i303, 0
  br i1 %i.ey, label %bb.df, label %bb.dg, !prof !13

bb.df:                                            ; preds = %bb.de
  %i.ez = add nuw i32 %.val.i.i303, 1
  store i32 %i.ez, ptr %i.ev, align 4, !tbaa !12
  br label %lean_inc.exit

bb.dg:                                            ; preds = %bb.de
  %.not.i.i304 = icmp eq i32 %.val.i.i303, 0
  br i1 %.not.i.i304, label %lean_inc.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.fa = atomicrmw sub ptr %i.ev, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.dh, %bb.dg, %bb.df
  %i.fb = icmp eq i8 %i.dv, 0
  br i1 %i.fb, label %bb.di, label %lean_obj_tag.exit309

lean_inc.exit.thread:                             ; preds = %bb.dd
  %i.fc = icmp eq i8 %i.dv, 0
  br i1 %i.fc, label %lean_dec.exit195, label %lean_obj_tag.exit309.thread

bb.di:                                            ; preds = %lean_inc.exit
  %i.fd = load i32, ptr %i.ev, align 4, !tbaa !12 ; 3 uses
  %i.fe = icmp sgt i32 %i.fd, 1
  br i1 %i.fe, label %bb.dj, label %bb.dk, !prof !13

bb.dj:                                            ; preds = %bb.di
  %i.ff = add nsw i32 %i.fd, -1
  store i32 %i.ff, ptr %i.ev, align 4, !tbaa !12
  br label %lean_dec.exit195

bb.dk:                                            ; preds = %bb.di
  %.not.i203 = icmp eq i32 %i.fd, 0
  br i1 %.not.i203, label %lean_dec.exit195, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ev) #4
  br label %lean_dec.exit195

lean_obj_tag.exit309:                             ; preds = %lean_inc.exit
  %i.fg = getelementptr i8, ptr %i.ev, i64 4
  %.val.i308 = load i32, ptr %i.fg, align 4
  %i.fh = icmp ult i32 %.val.i308, 16777216
  %.0162.in.v = select i1 %i.fh, i64 9, i64 25
  %.0162.in = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.0162.in.v
  %.0162 = load i8, ptr %.0162.in, align 1, !tbaa !18
  %i.fi = icmp eq i8 %.0162, 0
  br i1 %i.fi, label %bb.dm, label %bb.dz

lean_obj_tag.exit309.thread:                      ; preds = %lean_inc.exit.thread
  %i.fj = and i64 %i.ew, 8589934590
  %i.fk = icmp eq i64 %i.fj, 0
  %.0162.in.v358 = select i1 %i.fk, i64 9, i64 25
  %.0162.in359 = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.0162.in.v358
  %.0162360 = load i8, ptr %.0162.in359, align 1, !tbaa !18
  %i.fl = icmp eq i8 %.0162360, 0
  br i1 %i.fl, label %bb.dm, label %lean_dec.exit195

bb.dm:                                            ; preds = %lean_obj_tag.exit309.thread, %lean_obj_tag.exit309
  %.val = load i32, ptr %i.em, align 8, !tbaa !12 ; 4 uses
  %i.fm = icmp eq i32 %.val, 1
  br i1 %i.fm, label %bb.dn, label %bb.ds

bb.dn:                                            ; preds = %bb.dm
  %i.fn = load ptr, ptr %i.eu, align 8, !tbaa !10 ; 4 uses
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = and i64 %i.fo, 1
  %.not.i184 = icmp eq i64 %i.fp, 0
  br i1 %.not.i184, label %bb.do, label %bb.dx

bb.do:                                            ; preds = %bb.dn
  %i.fq = load i32, ptr %i.fn, align 4, !tbaa !12 ; 3 uses
  %i.fr = icmp sgt i32 %i.fq, 1
  br i1 %i.fr, label %bb.dp, label %bb.dq, !prof !13

bb.dp:                                            ; preds = %bb.do
  %i.fs = add nsw i32 %i.fq, -1
  store i32 %i.fs, ptr %i.fn, align 4, !tbaa !12
  br label %bb.dx

bb.dq:                                            ; preds = %bb.do
  %.not.i205 = icmp eq i32 %i.fq, 0
  br i1 %.not.i205, label %bb.dx, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fn) #4
  br label %bb.dx

bb.ds:                                            ; preds = %bb.dm
  br i1 %.not.i299, label %bb.dt, label %bb.dy

bb.dt:                                            ; preds = %bb.ds
  %i.ft = icmp sgt i32 %.val, 1
  br i1 %i.ft, label %bb.du, label %bb.dv, !prof !13

bb.du:                                            ; preds = %bb.dt
  %i.fu = add nsw i32 %.val, -1
  store i32 %i.fu, ptr %i.em, align 8, !tbaa !12
  br label %bb.dy

bb.dv:                                            ; preds = %bb.dt
  %.not.i207 = icmp eq i32 %.val, 0
  br i1 %.not.i207, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.em) #4
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dn, %bb.dp, %bb.dq, %bb.dr
  %i.fv = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ev) #4
  store ptr %i.fv, ptr %i.eu, align 8, !tbaa !10
  br label %lean_dec.exit195

bb.dy:                                            ; preds = %bb.dw, %bb.dv, %bb.du, %bb.ds
  %i.fw = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ev) #4
  %i.fx = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr %i.fw, ptr %i.fy, align 8, !tbaa !10
  br label %lean_dec.exit195

bb.dz:                                            ; preds = %lean_obj_tag.exit309
  %i.fz = load i32, ptr %i.ev, align 4, !tbaa !12 ; 3 uses
  %i.ga = icmp sgt i32 %i.fz, 1
  br i1 %i.ga, label %bb.ea, label %bb.eb, !prof !13

bb.ea:                                            ; preds = %bb.dz
  %i.gb = add nsw i32 %i.fz, -1
  store i32 %i.gb, ptr %i.ev, align 4, !tbaa !12
  br label %lean_dec.exit195

bb.eb:                                            ; preds = %bb.dz
  %.not.i209 = icmp eq i32 %i.fz, 0
  br i1 %.not.i209, label %lean_dec.exit195, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ev) #4
  br label %lean_dec.exit195

bb.ed:                                            ; preds = %lean_obj_tag.exit
  %i.gc = load i32, ptr %9, align 4, !tbaa !12    ; 3 uses
  %i.gd = icmp sgt i32 %i.gc, 1
  br i1 %i.gd, label %bb.ee, label %bb.ef, !prof !13

bb.ee:                                            ; preds = %bb.ed
  %i.ge = add nsw i32 %i.gc, -1
  store i32 %i.ge, ptr %9, align 4, !tbaa !12
  br label %lean_dec_ref.exit228

bb.ef:                                            ; preds = %bb.ed
  %.not.i227 = icmp eq i32 %i.gc, 0
  br i1 %.not.i227, label %lean_dec_ref.exit228, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #4
  br label %lean_dec_ref.exit228

lean_dec_ref.exit228:                             ; preds = %bb.ee, %bb.ef, %bb.eg
  %i.gf = load i32, ptr %8, align 4, !tbaa !12    ; 3 uses
  %i.gg = icmp sgt i32 %i.gf, 1
  br i1 %i.gg, label %bb.eh, label %bb.ei, !prof !13

bb.eh:                                            ; preds = %lean_dec_ref.exit228
  %i.gh = add nsw i32 %i.gf, -1
  store i32 %i.gh, ptr %8, align 4, !tbaa !12
  br label %lean_dec_ref.exit226

bb.ei:                                            ; preds = %lean_dec_ref.exit228
  %.not.i225 = icmp eq i32 %i.gf, 0
  br i1 %.not.i225, label %lean_dec_ref.exit226, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #4
  br label %lean_dec_ref.exit226

lean_dec_ref.exit226:                             ; preds = %bb.eh, %bb.ei, %bb.ej
  %i.gi = load i32, ptr %7, align 4, !tbaa !12    ; 3 uses
  %i.gj = icmp sgt i32 %i.gi, 1
  br i1 %i.gj, label %bb.ek, label %bb.el, !prof !13

bb.ek:                                            ; preds = %lean_dec_ref.exit226
  %i.gk = add nsw i32 %i.gi, -1
  store i32 %i.gk, ptr %7, align 4, !tbaa !12
  br label %lean_dec_ref.exit224

bb.el:                                            ; preds = %lean_dec_ref.exit226
  %.not.i223 = icmp eq i32 %i.gi, 0
  br i1 %.not.i223, label %lean_dec_ref.exit224, label %bb.em

bb.em:                                            ; preds = %bb.el
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #4
  br label %lean_dec_ref.exit224

lean_dec_ref.exit224:                             ; preds = %bb.ek, %bb.el, %bb.em
  %i.gl = load i32, ptr %6, align 4, !tbaa !12    ; 3 uses
  %i.gm = icmp sgt i32 %i.gl, 1
  br i1 %i.gm, label %bb.en, label %bb.eo, !prof !13

bb.en:                                            ; preds = %lean_dec_ref.exit224
  %i.gn = add nsw i32 %i.gl, -1
  store i32 %i.gn, ptr %6, align 4, !tbaa !12
  br label %lean_dec_ref.exit222

bb.eo:                                            ; preds = %lean_dec_ref.exit224
  %.not.i221 = icmp eq i32 %i.gl, 0
  br i1 %.not.i221, label %lean_dec_ref.exit222, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #4
  br label %lean_dec_ref.exit222

lean_dec_ref.exit222:                             ; preds = %bb.en, %bb.eo, %bb.ep
  %i.go = load i32, ptr %5, align 4, !tbaa !12    ; 3 uses
  %i.gp = icmp sgt i32 %i.go, 1
  br i1 %i.gp, label %bb.eq, label %bb.er, !prof !13

bb.eq:                                            ; preds = %lean_dec_ref.exit222
  %i.gq = add nsw i32 %i.go, -1
  store i32 %i.gq, ptr %5, align 4, !tbaa !12
  br label %lean_dec_ref.exit220

bb.er:                                            ; preds = %lean_dec_ref.exit222
  %.not.i219 = icmp eq i32 %i.go, 0
  br i1 %.not.i219, label %lean_dec_ref.exit220, label %bb.es

bb.es:                                            ; preds = %bb.er
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #4
  br label %lean_dec_ref.exit220

lean_dec_ref.exit220:                             ; preds = %bb.eq, %bb.er, %bb.es
  %i.gr = load i32, ptr %4, align 4, !tbaa !12    ; 3 uses
  %i.gs = icmp sgt i32 %i.gr, 1
  br i1 %i.gs, label %bb.et, label %bb.eu, !prof !13

bb.et:                                            ; preds = %lean_dec_ref.exit220
  %i.gt = add nsw i32 %i.gr, -1
  store i32 %i.gt, ptr %4, align 4, !tbaa !12
  br label %lean_dec_ref.exit218

bb.eu:                                            ; preds = %lean_dec_ref.exit220
  %.not.i217 = icmp eq i32 %i.gr, 0
  br i1 %.not.i217, label %lean_dec_ref.exit218, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec_ref.exit218

lean_dec_ref.exit218:                             ; preds = %bb.et, %bb.eu, %bb.ev
  %i.gu = load i32, ptr %3, align 4, !tbaa !12    ; 3 uses
  %i.gv = icmp sgt i32 %i.gu, 1
  br i1 %i.gv, label %bb.ew, label %bb.ex, !prof !13

bb.ew:                                            ; preds = %lean_dec_ref.exit218
  %i.gw = add nsw i32 %i.gu, -1
  store i32 %i.gw, ptr %3, align 4, !tbaa !12
  br label %lean_dec_ref.exit216
end_hunk_1
begin_hunk_2_@l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpIteCbv___lam__2:bb.a
  br label %lean_obj_tag.exit898

bb.fn:                                            ; preds = %lean_dec_ref.exit777
  %i.gy = getelementptr i8, ptr %i.gt, i64 4
  %.val.i897 = load i32, ptr %i.gy, align 4
  %i.gz = lshr i32 %.val.i897, 24
  br label %lean_obj_tag.exit898

lean_obj_tag.exit898:                             ; preds = %bb.fm, %bb.fn
  %.0.i896 = phi i32 [ %i.gx, %bb.fm ], [ %i.gz, %bb.fn ]
  %i.ha = icmp eq i32 %.0.i896, 0
  br i1 %i.ha, label %bb.fo, label %bb.js

bb.fo:                                            ; preds = %lean_obj_tag.exit898
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !10 ; 16 uses
  %.val839 = load i32, ptr %i.gt, align 8, !tbaa !12
  %i.hd = icmp eq i32 %.val839, 1                 ; 2 uses
  %.pre = ptrtoint ptr %i.hc to i64               ; 6 uses
  br i1 %i.hd, label %lean_dec.exit624, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.he = and i64 %.pre, 1
  %.not.i574 = icmp eq i64 %i.he, 0
  br i1 %.not.i574, label %bb.fq, label %lean_inc.exit575

bb.fq:                                            ; preds = %bb.fp
  %.val.i.i899 = load i32, ptr %i.hc, align 4, !tbaa !12 ; 3 uses
  %i.hf = icmp sgt i32 %.val.i.i899, 0
  br i1 %i.hf, label %bb.fr, label %bb.fs, !prof !13

bb.fr:                                            ; preds = %bb.fq
  %i.hg = add nuw i32 %.val.i.i899, 1
  store i32 %i.hg, ptr %i.hc, align 4, !tbaa !12
  br label %lean_inc.exit575

bb.fs:                                            ; preds = %bb.fq
  %.not.i.i900 = icmp eq i32 %.val.i.i899, 0
  br i1 %.not.i.i900, label %lean_inc.exit575, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.hh = atomicrmw sub ptr %i.hc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit575

lean_inc.exit575:                                 ; preds = %bb.ft, %bb.fs, %bb.fr, %bb.fp
  br i1 %.not.i895, label %bb.fu, label %lean_dec.exit624

bb.fu:                                            ; preds = %lean_inc.exit575
  %i.hi = load i32, ptr %i.gt, align 8, !tbaa !12 ; 3 uses
  %i.hj = icmp sgt i32 %i.hi, 1
  br i1 %i.hj, label %bb.fv, label %bb.fw, !prof !13

bb.fv:                                            ; preds = %bb.fu
  %i.hk = add nsw i32 %i.hi, -1
  store i32 %i.hk, ptr %i.gt, align 8, !tbaa !12
  br label %lean_dec.exit624

bb.fw:                                            ; preds = %bb.fu
  %.not.i625 = icmp eq i32 %i.hi, 0
  br i1 %.not.i625, label %lean_dec.exit624, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gt) #4
  br label %lean_dec.exit624

lean_dec.exit624:                                 ; preds = %bb.fo, %lean_inc.exit575, %bb.fv, %bb.fw, %bb.fx
  %.0557 = phi ptr [ inttoptr (i64 1 to ptr), %bb.fx ], [ inttoptr (i64 1 to ptr), %lean_inc.exit575 ], [ inttoptr (i64 1 to ptr), %bb.fv ], [ inttoptr (i64 1 to ptr), %bb.fw ], [ %i.gt, %bb.fo ] ; 4 uses
  %i.hl = and i64 %.pre, 510
  %i.hm = icmp eq i64 %i.hl, 0
  br i1 %i.hm, label %bb.fy, label %bb.iz

bb.fy:                                            ; preds = %lean_dec.exit624
  %i.hn = ptrtoint ptr %.0557 to i64
  %i.ho = and i64 %i.hn, 1
  %.not.i902 = icmp eq i64 %i.ho, 0
  br i1 %.not.i902, label %bb.fz, label %lean_del_object.exit

bb.fz:                                            ; preds = %bb.fy
  tail call void @lean_free_object(ptr noundef nonnull %.0557) #4
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.fy, %bb.fz
  %i.hp = tail call ptr @l_Lean_Meta_Sym_isFalseExpr___redArg(ptr noundef nonnull %i.bv, ptr noundef nonnull %5) #4 ; 14 uses
  %i.hq = ptrtoint ptr %i.hp to i64               ; 2 uses
  %i.hr = and i64 %i.hq, 1
  %.not.i903 = icmp eq i64 %i.hr, 0               ; 3 uses
  br i1 %.not.i903, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %lean_del_object.exit
  %i.hs = lshr i64 %i.hq, 1
  %i.ht = trunc i64 %i.hs to i32
  br label %lean_obj_tag.exit906

bb.gb:                                            ; preds = %lean_del_object.exit
  %i.hu = getelementptr i8, ptr %i.hp, i64 4
  %.val.i905 = load i32, ptr %i.hu, align 4
  %i.hv = lshr i32 %.val.i905, 24
  br label %lean_obj_tag.exit906

lean_obj_tag.exit906:                             ; preds = %bb.ga, %bb.gb
  %.0.i904 = phi i32 [ %i.ht, %bb.ga ], [ %i.hv, %bb.gb ]
  %i.hw = icmp eq i32 %.0.i904, 0
  br i1 %i.hw, label %bb.gc, label %bb.hs

bb.gc:                                            ; preds = %lean_obj_tag.exit906
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !10 ; 7 uses
  %.val838 = load i32, ptr %i.hp, align 8, !tbaa !12
  %i.hz = icmp eq i32 %.val838, 1                 ; 2 uses
  %.pre994 = ptrtoint ptr %i.hy to i64            ; 2 uses
  %.pre996 = and i64 %.pre994, 1                  ; 2 uses
  br i1 %i.hz, label %lean_dec.exit622, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %.not.i572 = icmp eq i64 %.pre996, 0
  br i1 %.not.i572, label %bb.ge, label %lean_inc.exit573

bb.ge:                                            ; preds = %bb.gd
  %.val.i.i907 = load i32, ptr %i.hy, align 4, !tbaa !12 ; 3 uses
  %i.ia = icmp sgt i32 %.val.i.i907, 0
  br i1 %i.ia, label %bb.gf, label %bb.gg, !prof !13

bb.gf:                                            ; preds = %bb.ge
  %i.ib = add nuw i32 %.val.i.i907, 1
  store i32 %i.ib, ptr %i.hy, align 4, !tbaa !12
  br label %lean_inc.exit573

bb.gg:                                            ; preds = %bb.ge
  %.not.i.i908 = icmp eq i32 %.val.i.i907, 0
  br i1 %.not.i.i908, label %lean_inc.exit573, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.ic = atomicrmw sub ptr %i.hy, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit573

lean_inc.exit573:                                 ; preds = %bb.gh, %bb.gg, %bb.gf, %bb.gd
  br i1 %.not.i903, label %bb.gi, label %lean_dec.exit622

bb.gi:                                            ; preds = %lean_inc.exit573
  %i.id = load i32, ptr %i.hp, align 8, !tbaa !12 ; 3 uses
  %i.ie = icmp sgt i32 %i.id, 1
  br i1 %i.ie, label %bb.gj, label %bb.gk, !prof !13

bb.gj:                                            ; preds = %bb.gi
  %i.if = add nsw i32 %i.id, -1
  store i32 %i.if, ptr %i.hp, align 8, !tbaa !12
  br label %lean_dec.exit622

bb.gk:                                            ; preds = %bb.gi
  %.not.i626 = icmp eq i32 %i.id, 0
  br i1 %.not.i626, label %lean_dec.exit622, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hp) #4
  br label %lean_dec.exit622

lean_dec.exit622:                                 ; preds = %bb.gc, %lean_inc.exit573, %bb.gj, %bb.gk, %bb.gl
  %.0555 = phi ptr [ inttoptr (i64 1 to ptr), %bb.gl ], [ inttoptr (i64 1 to ptr), %lean_inc.exit573 ], [ inttoptr (i64 1 to ptr), %bb.gj ], [ inttoptr (i64 1 to ptr), %bb.gk ], [ %i.hp, %bb.gc ] ; 4 uses
  %.not.i619 = icmp eq i64 %.pre996, 0
  br i1 %.not.i619, label %bb.gm, label %lean_dec.exit620

bb.gm:                                            ; preds = %lean_dec.exit622
  %i.ig = load i32, ptr %i.hy, align 4, !tbaa !12 ; 3 uses
  %i.ih = icmp sgt i32 %i.ig, 1
  br i1 %i.ih, label %bb.gn, label %bb.go, !prof !13

bb.gn:                                            ; preds = %bb.gm
  %i.ii = add nsw i32 %i.ig, -1
  store i32 %i.ii, ptr %i.hy, align 4, !tbaa !12
  br label %lean_dec.exit620

bb.go:                                            ; preds = %bb.gm
  %.not.i628 = icmp eq i32 %i.ig, 0
  br i1 %.not.i628, label %lean_dec.exit620, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hy) #4
  br label %lean_dec.exit620

lean_dec.exit620:                                 ; preds = %bb.gp, %bb.go, %bb.gn, %lean_dec.exit622
  %i.ij = and i64 %.pre994, 510
  %i.ik = icmp eq i64 %i.ij, 0
  br i1 %i.ik, label %bb.gq, label %bb.gz

bb.gq:                                            ; preds = %lean_dec.exit620
  %i.il = ptrtoint ptr %.0555 to i64
  %i.im = and i64 %i.il, 1
  %.not.i910 = icmp eq i64 %i.im, 0
  br i1 %.not.i910, label %bb.gr, label %lean_del_object.exit911

bb.gr:                                            ; preds = %bb.gq
  tail call void @lean_free_object(ptr noundef nonnull %.0555) #4
  br label %lean_del_object.exit911

lean_del_object.exit911:                          ; preds = %bb.gq, %bb.gr
  %i.in = and i64 %.pre, 1
  %.not.i617 = icmp eq i64 %i.in, 0
  br i1 %.not.i617, label %bb.gs, label %lean_dec.exit618

bb.gs:                                            ; preds = %lean_del_object.exit911
  %i.io = load i32, ptr %i.hc, align 4, !tbaa !12 ; 3 uses
  %i.ip = icmp sgt i32 %i.io, 1
  br i1 %i.ip, label %bb.gt, label %bb.gu, !prof !13

bb.gt:                                            ; preds = %bb.gs
  %i.iq = add nsw i32 %i.io, -1
  store i32 %i.iq, ptr %i.hc, align 4, !tbaa !12
  br label %lean_dec.exit618

bb.gu:                                            ; preds = %bb.gs
  %.not.i630 = icmp eq i32 %i.io, 0
  br i1 %.not.i630, label %lean_dec.exit618, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hc) #4
  br label %lean_dec.exit618

lean_dec.exit618:                                 ; preds = %bb.gv, %bb.gu, %bb.gt, %lean_del_object.exit911
  %i.ir = tail call ptr @l_Lean_Meta_Sym_Simp_mkRflResult(i8 noundef zeroext %i.da, i8 noundef zeroext %i.gs) #4
  %i.is = tail call ptr @lean_alloc_object(i64 noundef 32) #4 ; 7 uses
  store i32 1, ptr %i.is, align 4, !tbaa !12
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 4 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4
  %i.iv = and i32 %i.iu, 65535
  %i.iw = or disjoint i32 %i.iv, -184549376
  store i32 %i.iw, ptr %i.it, align 4
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpIteCbv___lam__0___boxed, ptr %i.ix, align 8, !tbaa !10
  %i.iy = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  store i16 11, ptr %i.iy, align 8, !tbaa !20
  %i.iz = getelementptr inbounds nuw i8, ptr %i.is, i64 18
  store i16 1, ptr %i.iz, align 2, !tbaa !20
  %i.ja = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  store ptr %i.ir, ptr %i.ja, align 8, !tbaa !10
  %i.jb = tail call ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpAndMatchIteDecidable(ptr noundef %i.cz, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.n, ptr noundef nonnull %i.is, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10) ; 3 uses
  %i.jc = load i32, ptr %i.cz, align 4, !tbaa !12 ; 3 uses
  %i.jd = icmp sgt i32 %i.jc, 1
  br i1 %i.jd, label %bb.gw, label %bb.gx, !prof !13

bb.gw:                                            ; preds = %lean_dec.exit618
  %i.je = add nsw i32 %i.jc, -1
  store i32 %i.je, ptr %i.cz, align 4, !tbaa !12
  br label %lean_dec_ref.exit823.thread

bb.gx:                                            ; preds = %lean_dec.exit618
  %.not.i774 = icmp eq i32 %i.jc, 0
  br i1 %.not.i774, label %lean_dec_ref.exit823.thread, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cz) #4
  br label %lean_dec_ref.exit823.thread

bb.gz:                                            ; preds = %lean_dec.exit620
  %i.jf = load i32, ptr %i.bv, align 4, !tbaa !12 ; 3 uses
  %i.jg = icmp sgt i32 %i.jf, 1
  br i1 %i.jg, label %bb.ha, label %bb.hb, !prof !13

bb.ha:                                            ; preds = %bb.gz
  %i.jh = add nsw i32 %i.jf, -1
  store i32 %i.jh, ptr %i.bv, align 4, !tbaa !12
  br label %lean_dec_ref.exit773

bb.hb:                                            ; preds = %bb.gz
  %.not.i772 = icmp eq i32 %i.jf, 0
  br i1 %.not.i772, label %lean_dec_ref.exit773, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bv) #4
  br label %lean_dec_ref.exit773

lean_dec_ref.exit773:                             ; preds = %bb.ha, %bb.hb, %bb.hc
  %i.ji = load i32, ptr %i.ay, align 4, !tbaa !12 ; 3 uses
  %i.jj = icmp sgt i32 %i.ji, 1
  br i1 %i.jj, label %bb.hd, label %bb.he, !prof !13

bb.hd:                                            ; preds = %lean_dec_ref.exit773
  %i.jk = add nsw i32 %i.ji, -1
  store i32 %i.jk, ptr %i.ay, align 4, !tbaa !12
  br label %lean_dec_ref.exit771

bb.he:                                            ; preds = %lean_dec_ref.exit773
  %.not.i770 = icmp eq i32 %i.ji, 0
  br i1 %.not.i770, label %lean_dec_ref.exit771, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ay) #4
  br label %lean_dec_ref.exit771

lean_dec_ref.exit771:                             ; preds = %bb.hd, %bb.he, %bb.hf
  %i.jl = tail call ptr @l_Lean_Expr_constLevels_x21(ptr noundef %i.cz) #4
  %i.jm = load i32, ptr %i.cz, align 4, !tbaa !12 ; 3 uses
  %i.jn = icmp sgt i32 %i.jm, 1
  br i1 %i.jn, label %bb.hg, label %bb.hh, !prof !13

bb.hg:                                            ; preds = %lean_dec_ref.exit771
  %i.jo = add nsw i32 %i.jm, -1
  store i32 %i.jo, ptr %i.cz, align 4, !tbaa !12
  br label %lean_dec_ref.exit769

bb.hh:                                            ; preds = %lean_dec_ref.exit771
  %.not.i768 = icmp eq i32 %i.jm, 0
  br i1 %.not.i768, label %lean_dec_ref.exit769, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cz) #4
  br label %lean_dec_ref.exit769

lean_dec_ref.exit769:                             ; preds = %bb.hg, %bb.hh, %bb.hi
  %i.jp = tail call ptr @l_Lean_mkConst(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpIteCbv___lam__2___closed__2_value, ptr noundef %i.jl) #4
  %.val.i.i912 = load i32, ptr %i.n, align 4, !tbaa !12 ; 3 uses
  %i.jq = icmp sgt i32 %.val.i.i912, 0
  br i1 %i.jq, label %bb.hj, label %bb.hk, !prof !13

bb.hj:                                            ; preds = %lean_dec_ref.exit769
  %i.jr = add nuw i32 %.val.i.i912, 1
  store i32 %i.jr, ptr %i.n, align 4, !tbaa !12
  br label %lean_inc_ref.exit914

bb.hk:                                            ; preds = %lean_dec_ref.exit769
  %.not.i.i913 = icmp eq i32 %.val.i.i912, 0
  br i1 %.not.i.i913, label %lean_inc_ref.exit914, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.js = atomicrmw sub ptr %i.n, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit914

lean_inc_ref.exit914:                             ; preds = %bb.hj, %bb.hk, %bb.hl
  %i.jt = tail call ptr @l_Lean_mkApp3(ptr noundef %i.jp, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.n) #4
  %i.ju = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 2, i32 noundef 2) ; 6 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  store ptr %i.n, ptr %i.jv, align 8, !tbaa !10
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  store ptr %i.jt, ptr %i.jw, align 8, !tbaa !10
  %i.jx = and i64 %.pre, 1
  %.not.i615 = icmp eq i64 %i.jx, 0
  br i1 %.not.i615, label %bb.hm, label %lean_dec.exit616

bb.hm:                                            ; preds = %lean_inc_ref.exit914
  %i.jy = load i32, ptr %i.hc, align 4, !tbaa !12 ; 3 uses
  %i.jz = icmp sgt i32 %i.jy, 1
  br i1 %i.jz, label %bb.hn, label %bb.ho, !prof !13

bb.hn:                                            ; preds = %bb.hm
  %i.ka = add nsw i32 %i.jy, -1
  store i32 %i.ka, ptr %i.hc, align 4, !tbaa !12
  br label %lean_dec.exit616

bb.ho:                                            ; preds = %bb.hm
  %.not.i632 = icmp eq i32 %i.jy, 0
  br i1 %.not.i632, label %lean_dec.exit616, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hc) #4
  br label %lean_dec.exit616

lean_dec.exit616:                                 ; preds = %bb.hp, %bb.ho, %bb.hn, %lean_inc_ref.exit914
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  store i8 0, ptr %i.kb, align 8, !tbaa !18
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ju, i64 25
  store i8 %i.gs, ptr %i.kc, align 1, !tbaa !18
  br i1 %i.hz, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %lean_dec.exit616
  %i.kd = getelementptr inbounds nuw i8, ptr %.0555, i64 8
  store ptr %i.ju, ptr %i.kd, align 8, !tbaa !10
  br label %lean_dec_ref.exit823.thread

bb.hr:                                            ; preds = %lean_dec.exit616
  %i.ke = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  store ptr %i.ju, ptr %i.kf, align 8, !tbaa !10
  br label %lean_dec_ref.exit823.thread

bb.hs:                                            ; preds = %lean_obj_tag.exit906
  %i.kg = and i64 %.pre, 1
  %.not.i613 = icmp eq i64 %i.kg, 0
  br i1 %.not.i613, label %bb.ht, label %lean_dec.exit614

bb.ht:                                            ; preds = %bb.hs
  %i.kh = load i32, ptr %i.hc, align 4, !tbaa !12 ; 3 uses
  %i.ki = icmp sgt i32 %i.kh, 1
  br i1 %i.ki, label %bb.hu, label %bb.hv, !prof !13

bb.hu:                                            ; preds = %bb.ht
  %i.kj = add nsw i32 %i.kh, -1
  store i32 %i.kj, ptr %i.hc, align 4, !tbaa !12
  br label %lean_dec.exit614

bb.hv:                                            ; preds = %bb.ht
  %.not.i634 = icmp eq i32 %i.kh, 0
  br i1 %.not.i634, label %lean_dec.exit614, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hc) #4
  br label %lean_dec.exit614

lean_dec.exit614:                                 ; preds = %bb.hw, %bb.hv, %bb.hu, %bb.hs
  %i.kk = load i32, ptr %i.cz, align 4, !tbaa !12 ; 3 uses
  %i.kl = icmp sgt i32 %i.kk, 1
  br i1 %i.kl, label %bb.hx, label %bb.hy, !prof !13

bb.hx:                                            ; preds = %lean_dec.exit614
  %i.km = add nsw i32 %i.kk, -1
  store i32 %i.km, ptr %i.cz, align 4, !tbaa !12
  br label %lean_dec_ref.exit767

bb.hy:                                            ; preds = %lean_dec.exit614
  %.not.i766 = icmp eq i32 %i.kk, 0
  br i1 %.not.i766, label %lean_dec_ref.exit767, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cz) #4
  br label %lean_dec_ref.exit767

lean_dec_ref.exit767:                             ; preds = %bb.hx, %bb.hy, %bb.hz
  %i.kn = load i32, ptr %i.cv, align 4, !tbaa !12 ; 3 uses
  %i.ko = icmp sgt i32 %i.kn, 1
  br i1 %i.ko, label %bb.ia, label %bb.ib, !prof !13

bb.ia:                                            ; preds = %lean_dec_ref.exit767
  %i.kp = add nsw i32 %i.kn, -1
  store i32 %i.kp, ptr %i.cv, align 4, !tbaa !12
  br label %lean_dec_ref.exit765

bb.ib:                                            ; preds = %lean_dec_ref.exit767
  %.not.i764 = icmp eq i32 %i.kn, 0
  br i1 %.not.i764, label %lean_dec_ref.exit765, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cv) #4
  br label %lean_dec_ref.exit765

lean_dec_ref.exit765:                             ; preds = %bb.ia, %bb.ib, %bb.ic
  %i.kq = load i32, ptr %i.bv, align 4, !tbaa !12 ; 3 uses
  %i.kr = icmp sgt i32 %i.kq, 1
  br i1 %i.kr, label %bb.id, label %bb.ie, !prof !13

bb.id:                                            ; preds = %lean_dec_ref.exit765
  %i.ks = add nsw i32 %i.kq, -1
  store i32 %i.ks, ptr %i.bv, align 4, !tbaa !12
  br label %lean_dec_ref.exit763

bb.ie:                                            ; preds = %lean_dec_ref.exit765
  %.not.i762 = icmp eq i32 %i.kq, 0
  br i1 %.not.i762, label %lean_dec_ref.exit763, label %bb.if

bb.if:                                            ; preds = %bb.ie
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bv) #4
  br label %lean_dec_ref.exit763

lean_dec_ref.exit763:                             ; preds = %bb.id, %bb.ie, %bb.if
  %i.kt = load i32, ptr %i.ay, align 4, !tbaa !12 ; 3 uses
  %i.ku = icmp sgt i32 %i.kt, 1
  br i1 %i.ku, label %bb.ig, label %bb.ih, !prof !13

bb.ig:                                            ; preds = %lean_dec_ref.exit763
  %i.kv = add nsw i32 %i.kt, -1
  store i32 %i.kv, ptr %i.ay, align 4, !tbaa !12
  br label %lean_dec_ref.exit761

bb.ih:                                            ; preds = %lean_dec_ref.exit763
  %.not.i760 = icmp eq i32 %i.kt, 0
  br i1 %.not.i760, label %lean_dec_ref.exit761, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ay) #4
  br label %lean_dec_ref.exit761

lean_dec_ref.exit761:                             ; preds = %bb.ig, %bb.ih, %bb.ii
  %i.kw = load i32, ptr %i.ae, align 4, !tbaa !12 ; 3 uses
  %i.kx = icmp sgt i32 %i.kw, 1
  br i1 %i.kx, label %bb.ij, label %bb.ik, !prof !13

bb.ij:                                            ; preds = %lean_dec_ref.exit761
  %i.ky = add nsw i32 %i.kw, -1
  store i32 %i.ky, ptr %i.ae, align 4, !tbaa !12
  br label %lean_dec_ref.exit759

bb.ik:                                            ; preds = %lean_dec_ref.exit761
  %.not.i758 = icmp eq i32 %i.kw, 0
  br i1 %.not.i758, label %lean_dec_ref.exit759, label %bb.il

bb.il:                                            ; preds = %bb.ik
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #4
  br label %lean_dec_ref.exit759

lean_dec_ref.exit759:                             ; preds = %bb.ij, %bb.ik, %bb.il
  %i.kz = load i32, ptr %i.n, align 4, !tbaa !12  ; 3 uses
  %i.la = icmp sgt i32 %i.kz, 1
  br i1 %i.la, label %bb.im, label %bb.in, !prof !13

bb.im:                                            ; preds = %lean_dec_ref.exit759
  %i.lb = add nsw i32 %i.kz, -1
  store i32 %i.lb, ptr %i.n, align 4, !tbaa !12
  br label %lean_dec_ref.exit757

bb.in:                                            ; preds = %lean_dec_ref.exit759
  %.not.i756 = icmp eq i32 %i.kz, 0
  br i1 %.not.i756, label %lean_dec_ref.exit757, label %bb.io

bb.io:                                            ; preds = %bb.in
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit757

lean_dec_ref.exit757:                             ; preds = %bb.im, %bb.in, %bb.io
  %i.lc = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !10 ; 5 uses
  %.val837 = load i32, ptr %i.hp, align 8, !tbaa !12
  %i.le = icmp eq i32 %.val837, 1
  br i1 %i.le, label %lean_dec_ref.exit823.thread, label %bb.ip

bb.ip:                                            ; preds = %lean_dec_ref.exit757
  %i.lf = ptrtoint ptr %i.ld to i64
  %i.lg = and i64 %i.lf, 1
  %.not.i570 = icmp eq i64 %i.lg, 0
  br i1 %.not.i570, label %bb.iq, label %lean_inc.exit571

bb.iq:                                            ; preds = %bb.ip
  %.val.i.i915 = load i32, ptr %i.ld, align 4, !tbaa !12 ; 3 uses
  %i.lh = icmp sgt i32 %.val.i.i915, 0
  br i1 %i.lh, label %bb.ir, label %bb.is, !prof !13

bb.ir:                                            ; preds = %bb.iq
  %i.li = add nuw i32 %.val.i.i915, 1
  store i32 %i.li, ptr %i.ld, align 4, !tbaa !12
  br label %lean_inc.exit571

bb.is:                                            ; preds = %bb.iq
  %.not.i.i916 = icmp eq i32 %.val.i.i915, 0
  br i1 %.not.i.i916, label %lean_inc.exit571, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.lj = atomicrmw sub ptr %i.ld, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit571

lean_inc.exit571:                                 ; preds = %bb.it, %bb.is, %bb.ir, %bb.ip
  br i1 %.not.i903, label %bb.iu, label %bb.iy

bb.iu:                                            ; preds = %lean_inc.exit571
  %i.lk = load i32, ptr %i.hp, align 8, !tbaa !12 ; 3 uses
  %i.ll = icmp sgt i32 %i.lk, 1
  br i1 %i.ll, label %bb.iv, label %bb.iw, !prof !13

bb.iv:                                            ; preds = %bb.iu
  %i.lm = add nsw i32 %i.lk, -1
  store i32 %i.lm, ptr %i.hp, align 8, !tbaa !12
  br label %bb.iy

bb.iw:                                            ; preds = %bb.iu
  %.not.i636 = icmp eq i32 %i.lk, 0
  br i1 %.not.i636, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hp) #4
  br label %bb.iy

bb.iy:                                            ; preds = %lean_inc.exit571, %bb.iv, %bb.iw, %bb.ix
  %i.ln = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  store ptr %i.ld, ptr %i.lo, align 8, !tbaa !10
  br label %lean_dec_ref.exit823.thread

bb.iz:                                            ; preds = %lean_dec.exit624
  %i.lp = and i64 %.pre, 1
  %.not.i609 = icmp eq i64 %i.lp, 0
  br i1 %.not.i609, label %bb.ja, label %lean_dec.exit610

bb.ja:                                            ; preds = %bb.iz
  %i.lq = load i32, ptr %i.hc, align 4, !tbaa !12 ; 3 uses
  %i.lr = icmp sgt i32 %i.lq, 1
  br i1 %i.lr, label %bb.jb, label %bb.jc, !prof !13

bb.jb:                                            ; preds = %bb.ja
  %i.ls = add nsw i32 %i.lq, -1
  store i32 %i.ls, ptr %i.hc, align 4, !tbaa !12
  br label %lean_dec.exit610

bb.jc:                                            ; preds = %bb.ja
  %.not.i638 = icmp eq i32 %i.lq, 0
  br i1 %.not.i638, label %lean_dec.exit610, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hc) #4
  br label %lean_dec.exit610

lean_dec.exit610:                                 ; preds = %bb.jd, %bb.jc, %bb.jb, %bb.iz
end_hunk_2
begin_hunk_3_@l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpIteCbv___lam__2:bb.a
  br label %lean_obj_tag.exit933

bb.lk:                                            ; preds = %lean_dec.exit606
  %i.ou = getelementptr i8, ptr %i.op, i64 4
  %.val.i932 = load i32, ptr %i.ou, align 4
  %i.ov = lshr i32 %.val.i932, 24
  br label %lean_obj_tag.exit933

lean_obj_tag.exit933:                             ; preds = %bb.lj, %bb.lk
  %.0.i931 = phi i32 [ %i.ot, %bb.lj ], [ %i.ov, %bb.lk ]
  %i.ow = icmp eq i32 %.0.i931, 0
  br i1 %i.ow, label %bb.ll, label %bb.rv

bb.ll:                                            ; preds = %lean_obj_tag.exit933
  %i.ox = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !10 ; 16 uses
  %.val834 = load i32, ptr %i.op, align 8, !tbaa !12
  %i.oz = icmp eq i32 %.val834, 1                 ; 2 uses
  %.pre998 = ptrtoint ptr %i.oy to i64            ; 6 uses
  br i1 %i.oz, label %lean_dec.exit604, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.pa = and i64 %.pre998, 1
  %.not.i562 = icmp eq i64 %i.pa, 0
  br i1 %.not.i562, label %bb.ln, label %lean_inc.exit563

bb.ln:                                            ; preds = %bb.lm
  %.val.i.i934 = load i32, ptr %i.oy, align 4, !tbaa !12 ; 3 uses
  %i.pb = icmp sgt i32 %.val.i.i934, 0
  br i1 %i.pb, label %bb.lo, label %bb.lp, !prof !13

bb.lo:                                            ; preds = %bb.ln
  %i.pc = add nuw i32 %.val.i.i934, 1
  store i32 %i.pc, ptr %i.oy, align 4, !tbaa !12
  br label %lean_inc.exit563

bb.lp:                                            ; preds = %bb.ln
  %.not.i.i935 = icmp eq i32 %.val.i.i934, 0
  br i1 %.not.i.i935, label %lean_inc.exit563, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.pd = atomicrmw sub ptr %i.oy, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit563

lean_inc.exit563:                                 ; preds = %bb.lq, %bb.lp, %bb.lo, %bb.lm
  br i1 %.not.i930, label %bb.lr, label %lean_dec.exit604

bb.lr:                                            ; preds = %lean_inc.exit563
  %i.pe = load i32, ptr %i.op, align 8, !tbaa !12 ; 3 uses
  %i.pf = icmp sgt i32 %i.pe, 1
  br i1 %i.pf, label %bb.ls, label %bb.lt, !prof !13

bb.ls:                                            ; preds = %bb.lr
  %i.pg = add nsw i32 %i.pe, -1
  store i32 %i.pg, ptr %i.op, align 8, !tbaa !12
  br label %lean_dec.exit604

bb.lt:                                            ; preds = %bb.lr
  %.not.i644 = icmp eq i32 %i.pe, 0
  br i1 %.not.i644, label %lean_dec.exit604, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.op) #4
  br label %lean_dec.exit604

lean_dec.exit604:                                 ; preds = %bb.ll, %lean_inc.exit563, %bb.ls, %bb.lt, %bb.lu
  %.0518 = phi ptr [ inttoptr (i64 1 to ptr), %bb.lu ], [ inttoptr (i64 1 to ptr), %lean_inc.exit563 ], [ inttoptr (i64 1 to ptr), %bb.ls ], [ inttoptr (i64 1 to ptr), %bb.lt ], [ %i.op, %bb.ll ] ; 4 uses
  %i.ph = and i64 %.pre998, 510
  %i.pi = icmp eq i64 %i.ph, 0
  br i1 %i.pi, label %bb.lv, label %bb.qt

bb.lv:                                            ; preds = %lean_dec.exit604
  %i.pj = ptrtoint ptr %.0518 to i64
  %i.pk = and i64 %i.pj, 1
  %.not.i937 = icmp eq i64 %i.pk, 0
  br i1 %.not.i937, label %bb.lw, label %lean_del_object.exit938

bb.lw:                                            ; preds = %bb.lv
  tail call void @lean_free_object(ptr noundef nonnull %.0518) #4
  br label %lean_del_object.exit938

lean_del_object.exit938:                          ; preds = %bb.lv, %bb.lw
  %i.pl = tail call ptr @l_Lean_Meta_Sym_isFalseExpr___redArg(ptr noundef %i.nw, ptr noundef nonnull %5) #4 ; 14 uses
  %i.pm = ptrtoint ptr %i.pl to i64               ; 2 uses
  %i.pn = and i64 %i.pm, 1
  %.not.i939 = icmp eq i64 %i.pn, 0               ; 3 uses
  br i1 %.not.i939, label %bb.ly, label %bb.lx

bb.lx:                                            ; preds = %lean_del_object.exit938
  %i.po = lshr i64 %i.pm, 1
  %i.pp = trunc i64 %i.po to i32
  br label %lean_obj_tag.exit942

bb.ly:                                            ; preds = %lean_del_object.exit938
  %i.pq = getelementptr i8, ptr %i.pl, i64 4
  %.val.i941 = load i32, ptr %i.pq, align 4
  %i.pr = lshr i32 %.val.i941, 24
  br label %lean_obj_tag.exit942

lean_obj_tag.exit942:                             ; preds = %bb.lx, %bb.ly
  %.0.i940 = phi i32 [ %i.pp, %bb.lx ], [ %i.pr, %bb.ly ]
  %i.ps = icmp eq i32 %.0.i940, 0
  br i1 %i.ps, label %bb.lz, label %bb.pc

bb.lz:                                            ; preds = %lean_obj_tag.exit942
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !10 ; 7 uses
  %.val833 = load i32, ptr %i.pl, align 8, !tbaa !12
  %i.pv = icmp eq i32 %.val833, 1                 ; 2 uses
  %.pre1000 = ptrtoint ptr %i.pu to i64           ; 2 uses
  %.pre1002 = and i64 %.pre1000, 1                ; 2 uses
  br i1 %i.pv, label %lean_dec.exit602, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %.not.i560 = icmp eq i64 %.pre1002, 0
  br i1 %.not.i560, label %bb.mb, label %lean_inc.exit561

bb.mb:                                            ; preds = %bb.ma
  %.val.i.i943 = load i32, ptr %i.pu, align 4, !tbaa !12 ; 3 uses
  %i.pw = icmp sgt i32 %.val.i.i943, 0
  br i1 %i.pw, label %bb.mc, label %bb.md, !prof !13

bb.mc:                                            ; preds = %bb.mb
  %i.px = add nuw i32 %.val.i.i943, 1
  store i32 %i.px, ptr %i.pu, align 4, !tbaa !12
  br label %lean_inc.exit561

bb.md:                                            ; preds = %bb.mb
  %.not.i.i944 = icmp eq i32 %.val.i.i943, 0
  br i1 %.not.i.i944, label %lean_inc.exit561, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.py = atomicrmw sub ptr %i.pu, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit561

lean_inc.exit561:                                 ; preds = %bb.me, %bb.md, %bb.mc, %bb.ma
  br i1 %.not.i939, label %bb.mf, label %lean_dec.exit602

bb.mf:                                            ; preds = %lean_inc.exit561
  %i.pz = load i32, ptr %i.pl, align 8, !tbaa !12 ; 3 uses
  %i.qa = icmp sgt i32 %i.pz, 1
  br i1 %i.qa, label %bb.mg, label %bb.mh, !prof !13

bb.mg:                                            ; preds = %bb.mf
  %i.qb = add nsw i32 %i.pz, -1
  store i32 %i.qb, ptr %i.pl, align 8, !tbaa !12
  br label %lean_dec.exit602

bb.mh:                                            ; preds = %bb.mf
  %.not.i646 = icmp eq i32 %i.pz, 0
  br i1 %.not.i646, label %lean_dec.exit602, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.pl) #4
  br label %lean_dec.exit602

lean_dec.exit602:                                 ; preds = %bb.lz, %lean_inc.exit561, %bb.mg, %bb.mh, %bb.mi
  %.0516 = phi ptr [ inttoptr (i64 1 to ptr), %bb.mi ], [ inttoptr (i64 1 to ptr), %lean_inc.exit561 ], [ inttoptr (i64 1 to ptr), %bb.mg ], [ inttoptr (i64 1 to ptr), %bb.mh ], [ %i.pl, %bb.lz ] ; 4 uses
  %.not.i599 = icmp eq i64 %.pre1002, 0
  br i1 %.not.i599, label %bb.mj, label %lean_dec.exit600

bb.mj:                                            ; preds = %lean_dec.exit602
  %i.qc = load i32, ptr %i.pu, align 4, !tbaa !12 ; 3 uses
  %i.qd = icmp sgt i32 %i.qc, 1
  br i1 %i.qd, label %bb.mk, label %bb.ml, !prof !13

bb.mk:                                            ; preds = %bb.mj
  %i.qe = add nsw i32 %i.qc, -1
  store i32 %i.qe, ptr %i.pu, align 4, !tbaa !12
  br label %lean_dec.exit600

bb.ml:                                            ; preds = %bb.mj
  %.not.i648 = icmp eq i32 %i.qc, 0
  br i1 %.not.i648, label %lean_dec.exit600, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.pu) #4
  br label %lean_dec.exit600

lean_dec.exit600:                                 ; preds = %bb.mm, %bb.ml, %bb.mk, %lean_dec.exit602
  %i.qf = and i64 %.pre1000, 510
  %i.qg = icmp eq i64 %i.qf, 0
  br i1 %i.qg, label %bb.mn, label %bb.oa

bb.mn:                                            ; preds = %lean_dec.exit600
  %i.qh = ptrtoint ptr %.0516 to i64
  %i.qi = and i64 %i.qh, 1
  %.not.i946 = icmp eq i64 %i.qi, 0
  br i1 %.not.i946, label %bb.mo, label %lean_del_object.exit947

bb.mo:                                            ; preds = %bb.mn
  tail call void @lean_free_object(ptr noundef nonnull %.0516) #4
  br label %lean_del_object.exit947

lean_del_object.exit947:                          ; preds = %bb.mn, %bb.mo
  %i.qj = and i64 %.pre998, 1
  %.not.i597 = icmp eq i64 %i.qj, 0
  br i1 %.not.i597, label %bb.mp, label %lean_dec.exit598

bb.mp:                                            ; preds = %lean_del_object.exit947
  %i.qk = load i32, ptr %i.oy, align 4, !tbaa !12 ; 3 uses
  %i.ql = icmp sgt i32 %i.qk, 1
  br i1 %i.ql, label %bb.mq, label %bb.mr, !prof !13

bb.mq:                                            ; preds = %bb.mp
  %i.qm = add nsw i32 %i.qk, -1
  store i32 %i.qm, ptr %i.oy, align 4, !tbaa !12
  br label %lean_dec.exit598

bb.mr:                                            ; preds = %bb.mp
  %.not.i650 = icmp eq i32 %i.qk, 0
  br i1 %.not.i650, label %lean_dec.exit598, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.oy) #4
  br label %lean_dec.exit598

lean_dec.exit598:                                 ; preds = %bb.ms, %bb.mr, %bb.mq, %lean_del_object.exit947
  %i.qn = ptrtoint ptr %.0520 to i64
  %i.qo = and i64 %i.qn, 1
  %.not.i948 = icmp eq i64 %i.qo, 0
  br i1 %.not.i948, label %bb.mt, label %lean_del_object.exit949

bb.mt:                                            ; preds = %lean_dec.exit598
  tail call void @lean_free_object(ptr noundef nonnull %.0520) #4
  br label %lean_del_object.exit949

lean_del_object.exit949:                          ; preds = %lean_dec.exit598, %bb.mt
  %i.qp = load atomic i32, ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpIteCbv___lam__2___closed__6_once seq_cst, align 4, !tbaa !17
  %i.qq = icmp eq i32 %i.qp, 1
  br i1 %i.qq, label %bb.mu, label %bb.mv, !prof !13

bb.mu:                                            ; preds = %lean_del_object.exit949
  %i.qr = load ptr, ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpIteCbv___lam__2___closed__6, align 8, !tbaa !10
  br label %lean_obj_once.exit

bb.mv:                                            ; preds = %lean_del_object.exit949
  %i.qs = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpIteCbv___lam__2___closed__6, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpIteCbv___lam__2___closed__6_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpIteCbv___lam__2___closed__6) #4
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.mu, %bb.mv
  %.0.i950 = phi ptr [ %i.qr, %bb.mu ], [ %i.qs, %bb.mv ]
  %.val.i951 = load i32, ptr %i.ny, align 4, !tbaa !12 ; 3 uses
  %i.qt = icmp sgt i32 %.val.i951, 0
  br i1 %i.qt, label %bb.mw, label %bb.mx, !prof !13

bb.mw:                                            ; preds = %lean_obj_once.exit
  %i.qu = add nuw i32 %.val.i951, 2
  store i32 %i.qu, ptr %i.ny, align 4, !tbaa !12
  br label %lean_inc_ref_n.exit

bb.mx:                                            ; preds = %lean_obj_once.exit
  %.not.i952 = icmp eq i32 %.val.i951, 0
  br i1 %.not.i952, label %lean_inc_ref_n.exit, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.qv = atomicrmw sub ptr %i.ny, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref_n.exit

lean_inc_ref_n.exit:                              ; preds = %bb.mw, %bb.mx, %bb.my
  %.val.i953 = load i32, ptr %i.ay, align 4, !tbaa !12 ; 3 uses
  %i.qw = icmp sgt i32 %.val.i953, 0
  br i1 %i.qw, label %bb.mz, label %bb.na, !prof !13

bb.mz:                                            ; preds = %lean_inc_ref_n.exit
  %i.qx = add nuw i32 %.val.i953, 2
  store i32 %i.qx, ptr %i.ay, align 4, !tbaa !12
  br label %lean_inc_ref_n.exit955

bb.na:                                            ; preds = %lean_inc_ref_n.exit
  %.not.i954 = icmp eq i32 %.val.i953, 0
  br i1 %.not.i954, label %lean_inc_ref_n.exit955, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.qy = atomicrmw sub ptr %i.ay, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref_n.exit955

lean_inc_ref_n.exit955:                           ; preds = %bb.mz, %bb.na, %bb.nb
  %.val.i956 = load i32, ptr %i.nw, align 4, !tbaa !12 ; 3 uses
  %i.qz = icmp sgt i32 %.val.i956, 0
  br i1 %i.qz, label %bb.nc, label %bb.nd, !prof !13

bb.nc:                                            ; preds = %lean_inc_ref_n.exit955
  %i.ra = add nuw i32 %.val.i956, 2
  store i32 %i.ra, ptr %i.nw, align 4, !tbaa !12
  br label %lean_inc_ref_n.exit958

bb.nd:                                            ; preds = %lean_inc_ref_n.exit955
  %.not.i957 = icmp eq i32 %.val.i956, 0
  br i1 %.not.i957, label %lean_inc_ref_n.exit958, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.rb = atomicrmw sub ptr %i.nw, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref_n.exit958

lean_inc_ref_n.exit958:                           ; preds = %bb.nc, %bb.nd, %bb.ne
  %.val.i959 = load i32, ptr %i.bv, align 4, !tbaa !12 ; 3 uses
  %i.rc = icmp sgt i32 %.val.i959, 0
  br i1 %i.rc, label %bb.nf, label %bb.ng, !prof !13

bb.nf:                                            ; preds = %lean_inc_ref_n.exit958
  %i.rd = add nuw i32 %.val.i959, 2
  store i32 %i.rd, ptr %i.bv, align 4, !tbaa !12
  br label %lean_inc_ref_n.exit961

bb.ng:                                            ; preds = %lean_inc_ref_n.exit958
  %.not.i960 = icmp eq i32 %.val.i959, 0
  br i1 %.not.i960, label %lean_inc_ref_n.exit961, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.re = atomicrmw sub ptr %i.bv, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref_n.exit961

lean_inc_ref_n.exit961:                           ; preds = %bb.nf, %bb.ng, %bb.nh
  %i.rf = tail call ptr @l_Lean_mkApp4(ptr noundef %.0.i950, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.nw, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.ny) #4 ; 5 uses
  %i.rg = tail call ptr @l_Lean_Expr_getBoundedAppFn(ptr noundef nonnull inttoptr (i64 9 to ptr), ptr noundef nonnull %1) #4
  %i.rh = zext i8 %i.da to i64
  %i.ri = shl nuw nsw i64 %i.rh, 1
  %i.rj = or disjoint i64 %i.ri, 1
  %i.rk = inttoptr i64 %i.rj to ptr
  %i.rl = zext i8 %i.oa to i64
  %i.rm = shl nuw nsw i64 %i.rl, 1
  %i.rn = or disjoint i64 %i.rm, 1
  %i.ro = inttoptr i64 %i.rn to ptr
  %.val.i962 = load i32, ptr %i.n, align 4, !tbaa !12 ; 3 uses
  %i.rp = icmp sgt i32 %.val.i962, 0
  br i1 %i.rp, label %bb.ni, label %bb.nj, !prof !13

bb.ni:                                            ; preds = %lean_inc_ref_n.exit961
  %i.rq = add nuw i32 %.val.i962, 2
  store i32 %i.rq, ptr %i.n, align 4, !tbaa !12
  br label %lean_inc_ref_n.exit964

bb.nj:                                            ; preds = %lean_inc_ref_n.exit961
  %.not.i963 = icmp eq i32 %.val.i962, 0
  br i1 %.not.i963, label %lean_inc_ref_n.exit964, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.rr = atomicrmw sub ptr %i.n, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref_n.exit964

lean_inc_ref_n.exit964:                           ; preds = %bb.ni, %bb.nj, %bb.nk
  %.val.i965 = load i32, ptr %i.ae, align 4, !tbaa !12 ; 3 uses
  %i.rs = icmp sgt i32 %.val.i965, 0
  br i1 %i.rs, label %bb.nl, label %bb.nm, !prof !13

bb.nl:                                            ; preds = %lean_inc_ref_n.exit964
  %i.rt = add nuw i32 %.val.i965, 2
  store i32 %i.rt, ptr %i.ae, align 4, !tbaa !12
  br label %lean_inc_ref_n.exit967

bb.nm:                                            ; preds = %lean_inc_ref_n.exit964
  %.not.i966 = icmp eq i32 %.val.i965, 0
  br i1 %.not.i966, label %lean_inc_ref_n.exit967, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.ru = atomicrmw sub ptr %i.ae, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref_n.exit967

lean_inc_ref_n.exit967:                           ; preds = %bb.nl, %bb.nm, %bb.nn
  %.val.i.i968 = load i32, ptr %i.rf, align 4, !tbaa !12 ; 3 uses
  %i.rv = icmp sgt i32 %.val.i.i968, 0
  br i1 %i.rv, label %bb.no, label %bb.np, !prof !13

bb.no:                                            ; preds = %lean_inc_ref_n.exit967
  %i.rw = add nuw i32 %.val.i.i968, 1
  store i32 %i.rw, ptr %i.rf, align 4, !tbaa !12
  br label %lean_inc_ref.exit970

bb.np:                                            ; preds = %lean_inc_ref_n.exit967
  %.not.i.i969 = icmp eq i32 %.val.i.i968, 0
  br i1 %.not.i.i969, label %lean_inc_ref.exit970, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %i.rx = atomicrmw sub ptr %i.rf, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit970

lean_inc_ref.exit970:                             ; preds = %bb.no, %bb.np, %bb.nq
  %i.ry = tail call ptr @lean_alloc_object(i64 noundef 96) #4 ; 15 uses
  store i32 1, ptr %i.ry, align 4, !tbaa !12
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 4 ; 2 uses
  %i.sa = load i32, ptr %i.rz, align 4
  %i.sb = and i32 %i.sa, 65535
  %i.sc = or disjoint i32 %i.sb, -184549376
  store i32 %i.sc, ptr %i.rz, align 4
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  store ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpIteCbv___lam__1___boxed, ptr %i.sd, align 8, !tbaa !10
  %i.se = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  store i16 19, ptr %i.se, align 8, !tbaa !20
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ry, i64 18
  store i16 9, ptr %i.sf, align 2, !tbaa !20
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ry, i64 24
  store ptr %i.rg, ptr %i.sg, align 8, !tbaa !10
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ry, i64 32
  store ptr %i.nw, ptr %i.sh, align 8, !tbaa !10
  %i.si = getelementptr inbounds nuw i8, ptr %i.ry, i64 40
  store ptr %i.rf, ptr %i.si, align 8, !tbaa !10
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ry, i64 48
  store ptr %i.ae, ptr %i.sj, align 8, !tbaa !10
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ry, i64 56
  store ptr %i.n, ptr %i.sk, align 8, !tbaa !10
  %i.sl = getelementptr inbounds nuw i8, ptr %i.ry, i64 64
  store ptr %1, ptr %i.sl, align 8, !tbaa !10
  %i.sm = getelementptr inbounds nuw i8, ptr %i.ry, i64 72
  store ptr %i.ny, ptr %i.sm, align 8, !tbaa !10
  %i.sn = getelementptr inbounds nuw i8, ptr %i.ry, i64 80
  store ptr %i.rk, ptr %i.sn, align 8, !tbaa !10
end_hunk_3
begin_hunk_4_@l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpIteCbv___lam__2:bb.a
bb.nu:                                            ; preds = %lean_inc_ref.exit973
  %i.st = add nuw i32 %.val.i.i974, 1
  store i32 %i.st, ptr %i.cz, align 4, !tbaa !12
  br label %lean_inc_ref.exit976

bb.nv:                                            ; preds = %lean_inc_ref.exit973
  %.not.i.i975 = icmp eq i32 %.val.i.i974, 0
  br i1 %.not.i.i975, label %lean_inc_ref.exit976, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.su = atomicrmw sub ptr %i.cz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit976

lean_inc_ref.exit976:                             ; preds = %bb.nu, %bb.nv, %bb.nw
  %i.sv = tail call ptr @lean_alloc_object(i64 noundef 104) #4 ; 16 uses
  store i32 1, ptr %i.sv, align 4, !tbaa !12
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 4 ; 2 uses
  %i.sx = load i32, ptr %i.sw, align 4
  %i.sy = and i32 %i.sx, 65535
  %i.sz = or disjoint i32 %i.sy, -184549376
  store i32 %i.sz, ptr %i.sw, align 4
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  store ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpAndMatchIteDecidableCongr___boxed, ptr %i.ta, align 8, !tbaa !10
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sv, i64 16
  store i16 20, ptr %i.tb, align 8, !tbaa !20
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sv, i64 18
  store i16 10, ptr %i.tc, align 2, !tbaa !20
  %i.td = getelementptr inbounds nuw i8, ptr %i.sv, i64 24
  store ptr %i.cz, ptr %i.td, align 8, !tbaa !10
  %i.te = getelementptr inbounds nuw i8, ptr %i.sv, i64 32
  store ptr %i.cv, ptr %i.te, align 8, !tbaa !10
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sv, i64 40
  store ptr %i.bv, ptr %i.tf, align 8, !tbaa !10
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sv, i64 48
  store ptr %i.ay, ptr %i.tg, align 8, !tbaa !10
  %i.th = getelementptr inbounds nuw i8, ptr %i.sv, i64 56
  store ptr %i.ae, ptr %i.th, align 8, !tbaa !10
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sv, i64 64
  store ptr %i.n, ptr %i.ti, align 8, !tbaa !10
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sv, i64 72
  store ptr %i.nw, ptr %i.tj, align 8, !tbaa !10
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sv, i64 80
  store ptr %i.ny, ptr %i.tk, align 8, !tbaa !10
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sv, i64 88
  store ptr %i.rf, ptr %i.tl, align 8, !tbaa !10
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sv, i64 96
  store ptr %i.ry, ptr %i.tm, align 8, !tbaa !10
  %i.tn = tail call ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpAndMatchIteDecidable(ptr noundef nonnull %i.cz, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.n, ptr noundef nonnull %i.sv, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10) ; 3 uses
  %i.to = load i32, ptr %i.cz, align 4, !tbaa !12 ; 3 uses
  %i.tp = icmp sgt i32 %i.to, 1
  br i1 %i.tp, label %bb.nx, label %bb.ny, !prof !13

bb.nx:                                            ; preds = %lean_inc_ref.exit976
  %i.tq = add nsw i32 %i.to, -1
  store i32 %i.tq, ptr %i.cz, align 4, !tbaa !12
  br label %lean_dec_ref.exit823.thread

bb.ny:                                            ; preds = %lean_inc_ref.exit976
  %.not.i736 = icmp eq i32 %i.to, 0
  br i1 %.not.i736, label %lean_dec_ref.exit823.thread, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cz) #4
  br label %lean_dec_ref.exit823.thread

bb.oa:                                            ; preds = %lean_dec.exit600
  %i.tr = load i32, ptr %i.nw, align 4, !tbaa !12 ; 3 uses
  %i.ts = icmp sgt i32 %i.tr, 1
  br i1 %i.ts, label %bb.ob, label %bb.oc, !prof !13

bb.ob:                                            ; preds = %bb.oa
  %i.tt = add nsw i32 %i.tr, -1
  store i32 %i.tt, ptr %i.nw, align 4, !tbaa !12
  br label %lean_dec_ref.exit735

bb.oc:                                            ; preds = %bb.oa
  %.not.i734 = icmp eq i32 %i.tr, 0
  br i1 %.not.i734, label %lean_dec_ref.exit735, label %bb.od

bb.od:                                            ; preds = %bb.oc
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.nw) #4
  br label %lean_dec_ref.exit735

lean_dec_ref.exit735:                             ; preds = %bb.ob, %bb.oc, %bb.od
  %i.tu = load i32, ptr %i.cz, align 4, !tbaa !12 ; 3 uses
  %i.tv = icmp sgt i32 %i.tu, 1
  br i1 %i.tv, label %bb.oe, label %bb.of, !prof !13

bb.oe:                                            ; preds = %lean_dec_ref.exit735
  %i.tw = add nsw i32 %i.tu, -1
  store i32 %i.tw, ptr %i.cz, align 4, !tbaa !12
  br label %lean_dec_ref.exit733

bb.of:                                            ; preds = %lean_dec_ref.exit735
  %.not.i732 = icmp eq i32 %i.tu, 0
  br i1 %.not.i732, label %lean_dec_ref.exit733, label %bb.og

bb.og:                                            ; preds = %bb.of
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cz) #4
  br label %lean_dec_ref.exit733

lean_dec_ref.exit733:                             ; preds = %bb.oe, %bb.of, %bb.og
  %i.tx = load i32, ptr %i.cv, align 4, !tbaa !12 ; 3 uses
  %i.ty = icmp sgt i32 %i.tx, 1
  br i1 %i.ty, label %bb.oh, label %bb.oi, !prof !13

bb.oh:                                            ; preds = %lean_dec_ref.exit733
  %i.tz = add nsw i32 %i.tx, -1
  store i32 %i.tz, ptr %i.cv, align 4, !tbaa !12
  br label %lean_dec_ref.exit731

bb.oi:                                            ; preds = %lean_dec_ref.exit733
  %.not.i730 = icmp eq i32 %i.tx, 0
  br i1 %.not.i730, label %lean_dec_ref.exit731, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cv) #4
  br label %lean_dec_ref.exit731

lean_dec_ref.exit731:                             ; preds = %bb.oh, %bb.oi, %bb.oj
  %i.ua = load i32, ptr %i.bv, align 4, !tbaa !12 ; 3 uses
  %i.ub = icmp sgt i32 %i.ua, 1
  br i1 %i.ub, label %bb.ok, label %bb.ol, !prof !13

bb.ok:                                            ; preds = %lean_dec_ref.exit731
  %i.uc = add nsw i32 %i.ua, -1
  store i32 %i.uc, ptr %i.bv, align 4, !tbaa !12
  br label %lean_dec_ref.exit729

bb.ol:                                            ; preds = %lean_dec_ref.exit731
  %.not.i728 = icmp eq i32 %i.ua, 0
  br i1 %.not.i728, label %lean_dec_ref.exit729, label %bb.om

bb.om:                                            ; preds = %bb.ol
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bv) #4
  br label %lean_dec_ref.exit729

lean_dec_ref.exit729:                             ; preds = %bb.ok, %bb.ol, %bb.om
  %i.ud = load i32, ptr %i.ay, align 4, !tbaa !12 ; 3 uses
  %i.ue = icmp sgt i32 %i.ud, 1
  br i1 %i.ue, label %bb.on, label %bb.oo, !prof !13

bb.on:                                            ; preds = %lean_dec_ref.exit729
  %i.uf = add nsw i32 %i.ud, -1
  store i32 %i.uf, ptr %i.ay, align 4, !tbaa !12
  br label %lean_dec_ref.exit727

bb.oo:                                            ; preds = %lean_dec_ref.exit729
  %.not.i726 = icmp eq i32 %i.ud, 0
  br i1 %.not.i726, label %lean_dec_ref.exit727, label %bb.op

bb.op:                                            ; preds = %bb.oo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ay) #4
  br label %lean_dec_ref.exit727

lean_dec_ref.exit727:                             ; preds = %bb.on, %bb.oo, %bb.op
  %i.ug = load i32, ptr %i.ae, align 4, !tbaa !12 ; 3 uses
  %i.uh = icmp sgt i32 %i.ug, 1
  br i1 %i.uh, label %bb.oq, label %bb.or, !prof !13

bb.oq:                                            ; preds = %lean_dec_ref.exit727
  %i.ui = add nsw i32 %i.ug, -1
  store i32 %i.ui, ptr %i.ae, align 4, !tbaa !12
  br label %lean_dec_ref.exit725

bb.or:                                            ; preds = %lean_dec_ref.exit727
  %.not.i724 = icmp eq i32 %i.ug, 0
  br i1 %.not.i724, label %lean_dec_ref.exit725, label %bb.os

bb.os:                                            ; preds = %bb.or
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #4
  br label %lean_dec_ref.exit725

lean_dec_ref.exit725:                             ; preds = %bb.oq, %bb.or, %bb.os
  %i.uj = tail call ptr @l_Lean_Expr_replaceFn(ptr noundef nonnull %1, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpIteCbv___lam__2___closed__8_value) #4
  %i.uk = tail call ptr @l_Lean_Expr_app___override(ptr noundef %i.uj, ptr noundef %i.ny) #4 ; 2 uses
  br i1 %i.ob, label %bb.ot, label %bb.ou

bb.ot:                                            ; preds = %lean_dec_ref.exit725
  %i.ul = getelementptr inbounds nuw i8, ptr %.0520, i64 8
  %i.um = getelementptr inbounds nuw i8, ptr %.0520, i64 16
  store ptr %i.uk, ptr %i.um, align 8, !tbaa !10
  store ptr %i.n, ptr %i.ul, align 8, !tbaa !10
  br label %bb.ov

bb.ou:                                            ; preds = %lean_dec_ref.exit725
  %i.un = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 2, i32 noundef 2) ; 3 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  store ptr %i.n, ptr %i.uo, align 8, !tbaa !10
  %i.up = getelementptr inbounds nuw i8, ptr %i.un, i64 16
  store ptr %i.uk, ptr %i.up, align 8, !tbaa !10
  br label %bb.ov

bb.ov:                                            ; preds = %bb.ou, %bb.ot
  %.0514 = phi ptr [ %.0520, %bb.ot ], [ %i.un, %bb.ou ] ; 4 uses
  %i.uq = and i64 %.pre998, 1
  %.not.i595 = icmp eq i64 %i.uq, 0
  br i1 %.not.i595, label %bb.ow, label %lean_dec.exit596

bb.ow:                                            ; preds = %bb.ov
  %i.ur = load i32, ptr %i.oy, align 4, !tbaa !12 ; 3 uses
  %i.us = icmp sgt i32 %i.ur, 1
  br i1 %i.us, label %bb.ox, label %bb.oy, !prof !13

bb.ox:                                            ; preds = %bb.ow
  %i.ut = add nsw i32 %i.ur, -1
  store i32 %i.ut, ptr %i.oy, align 4, !tbaa !12
  br label %lean_dec.exit596

bb.oy:                                            ; preds = %bb.ow
  %.not.i652 = icmp eq i32 %i.ur, 0
  br i1 %.not.i652, label %lean_dec.exit596, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.oy) #4
  br label %lean_dec.exit596

lean_dec.exit596:                                 ; preds = %bb.oz, %bb.oy, %bb.ox, %bb.ov
  %i.uu = getelementptr inbounds nuw i8, ptr %.0514, i64 24
  store i8 0, ptr %i.uu, align 1, !tbaa !18
  %i.uv = getelementptr inbounds nuw i8, ptr %.0514, i64 25
  store i8 %i.oa, ptr %i.uv, align 1, !tbaa !18
  br i1 %i.pv, label %bb.pa, label %bb.pb

bb.pa:                                            ; preds = %lean_dec.exit596
  %i.uw = getelementptr inbounds nuw i8, ptr %.0516, i64 8
  store ptr %.0514, ptr %i.uw, align 8, !tbaa !10
  br label %lean_dec_ref.exit823.thread

bb.pb:                                            ; preds = %lean_dec.exit596
  %i.ux = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  store ptr %.0514, ptr %i.uy, align 8, !tbaa !10
  br label %lean_dec_ref.exit823.thread

bb.pc:                                            ; preds = %lean_obj_tag.exit942
  %i.uz = and i64 %.pre998, 1
  %.not.i593 = icmp eq i64 %i.uz, 0
  br i1 %.not.i593, label %bb.pd, label %lean_dec.exit594

bb.pd:                                            ; preds = %bb.pc
  %i.va = load i32, ptr %i.oy, align 4, !tbaa !12 ; 3 uses
  %i.vb = icmp sgt i32 %i.va, 1
  br i1 %i.vb, label %bb.pe, label %bb.pf, !prof !13

bb.pe:                                            ; preds = %bb.pd
  %i.vc = add nsw i32 %i.va, -1
  store i32 %i.vc, ptr %i.oy, align 4, !tbaa !12
  br label %lean_dec.exit594

bb.pf:                                            ; preds = %bb.pd
  %.not.i654 = icmp eq i32 %i.va, 0
  br i1 %.not.i654, label %lean_dec.exit594, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.oy) #4
  br label %lean_dec.exit594

lean_dec.exit594:                                 ; preds = %bb.pg, %bb.pf, %bb.pe, %bb.pc
  %i.vd = ptrtoint ptr %.0520 to i64
  %i.ve = and i64 %i.vd, 1
  %.not.i977 = icmp eq i64 %i.ve, 0
  br i1 %.not.i977, label %bb.ph, label %lean_del_object.exit978

bb.ph:                                            ; preds = %lean_dec.exit594
  tail call void @lean_free_object(ptr noundef nonnull %.0520) #4
  br label %lean_del_object.exit978

lean_del_object.exit978:                          ; preds = %lean_dec.exit594, %bb.ph
  %i.vf = load i32, ptr %i.ny, align 4, !tbaa !12 ; 3 uses
  %i.vg = icmp sgt i32 %i.vf, 1
  br i1 %i.vg, label %bb.pi, label %bb.pj, !prof !13

bb.pi:                                            ; preds = %lean_del_object.exit978
  %i.vh = add nsw i32 %i.vf, -1
  store i32 %i.vh, ptr %i.ny, align 4, !tbaa !12
  br label %lean_dec_ref.exit723

bb.pj:                                            ; preds = %lean_del_object.exit978
  %.not.i722 = icmp eq i32 %i.vf, 0
  br i1 %.not.i722, label %lean_dec_ref.exit723, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ny) #4
  br label %lean_dec_ref.exit723

lean_dec_ref.exit723:                             ; preds = %bb.pi, %bb.pj, %bb.pk
  %i.vi = load i32, ptr %i.nw, align 4, !tbaa !12 ; 3 uses
  %i.vj = icmp sgt i32 %i.vi, 1
  br i1 %i.vj, label %bb.pl, label %bb.pm, !prof !13

bb.pl:                                            ; preds = %lean_dec_ref.exit723
  %i.vk = add nsw i32 %i.vi, -1
  store i32 %i.vk, ptr %i.nw, align 4, !tbaa !12
  br label %lean_dec_ref.exit721

bb.pm:                                            ; preds = %lean_dec_ref.exit723
  %.not.i720 = icmp eq i32 %i.vi, 0
  br i1 %.not.i720, label %lean_dec_ref.exit721, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.nw) #4
  br label %lean_dec_ref.exit721

lean_dec_ref.exit721:                             ; preds = %bb.pl, %bb.pm, %bb.pn
  %i.vl = load i32, ptr %i.cz, align 4, !tbaa !12 ; 3 uses
  %i.vm = icmp sgt i32 %i.vl, 1
  br i1 %i.vm, label %bb.po, label %bb.pp, !prof !13

bb.po:                                            ; preds = %lean_dec_ref.exit721
  %i.vn = add nsw i32 %i.vl, -1
  store i32 %i.vn, ptr %i.cz, align 4, !tbaa !12
  br label %lean_dec_ref.exit719

bb.pp:                                            ; preds = %lean_dec_ref.exit721
  %.not.i718 = icmp eq i32 %i.vl, 0
  br i1 %.not.i718, label %lean_dec_ref.exit719, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cz) #4
  br label %lean_dec_ref.exit719

lean_dec_ref.exit719:                             ; preds = %bb.po, %bb.pp, %bb.pq
  %i.vo = load i32, ptr %i.cv, align 4, !tbaa !12 ; 3 uses
  %i.vp = icmp sgt i32 %i.vo, 1
  br i1 %i.vp, label %bb.pr, label %bb.ps, !prof !13

bb.pr:                                            ; preds = %lean_dec_ref.exit719
  %i.vq = add nsw i32 %i.vo, -1
  store i32 %i.vq, ptr %i.cv, align 4, !tbaa !12
  br label %lean_dec_ref.exit717

bb.ps:                                            ; preds = %lean_dec_ref.exit719
  %.not.i716 = icmp eq i32 %i.vo, 0
  br i1 %.not.i716, label %lean_dec_ref.exit717, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cv) #4
  br label %lean_dec_ref.exit717

lean_dec_ref.exit717:                             ; preds = %bb.pr, %bb.ps, %bb.pt
  %i.vr = load i32, ptr %i.bv, align 4, !tbaa !12 ; 3 uses
  %i.vs = icmp sgt i32 %i.vr, 1
  br i1 %i.vs, label %bb.pu, label %bb.pv, !prof !13

bb.pu:                                            ; preds = %lean_dec_ref.exit717
  %i.vt = add nsw i32 %i.vr, -1
  store i32 %i.vt, ptr %i.bv, align 4, !tbaa !12
  br label %lean_dec_ref.exit715

bb.pv:                                            ; preds = %lean_dec_ref.exit717
  %.not.i714 = icmp eq i32 %i.vr, 0
  br i1 %.not.i714, label %lean_dec_ref.exit715, label %bb.pw

bb.pw:                                            ; preds = %bb.pv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bv) #4
  br label %lean_dec_ref.exit715

lean_dec_ref.exit715:                             ; preds = %bb.pu, %bb.pv, %bb.pw
  %i.vu = load i32, ptr %i.ay, align 4, !tbaa !12 ; 3 uses
  %i.vv = icmp sgt i32 %i.vu, 1
  br i1 %i.vv, label %bb.px, label %bb.py, !prof !13

bb.px:                                            ; preds = %lean_dec_ref.exit715
  %i.vw = add nsw i32 %i.vu, -1
  store i32 %i.vw, ptr %i.ay, align 4, !tbaa !12
  br label %lean_dec_ref.exit713

bb.py:                                            ; preds = %lean_dec_ref.exit715
  %.not.i712 = icmp eq i32 %i.vu, 0
  br i1 %.not.i712, label %lean_dec_ref.exit713, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ay) #4
  br label %lean_dec_ref.exit713

lean_dec_ref.exit713:                             ; preds = %bb.px, %bb.py, %bb.pz
  %i.vx = load i32, ptr %i.ae, align 4, !tbaa !12 ; 3 uses
  %i.vy = icmp sgt i32 %i.vx, 1
  br i1 %i.vy, label %bb.qa, label %bb.qb, !prof !13

bb.qa:                                            ; preds = %lean_dec_ref.exit713
  %i.vz = add nsw i32 %i.vx, -1
  store i32 %i.vz, ptr %i.ae, align 4, !tbaa !12
  br label %lean_dec_ref.exit711

bb.qb:                                            ; preds = %lean_dec_ref.exit713
  %.not.i710 = icmp eq i32 %i.vx, 0
  br i1 %.not.i710, label %lean_dec_ref.exit711, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #4
  br label %lean_dec_ref.exit711

lean_dec_ref.exit711:                             ; preds = %bb.qa, %bb.qb, %bb.qc
  %i.wa = load i32, ptr %i.n, align 4, !tbaa !12  ; 3 uses
  %i.wb = icmp sgt i32 %i.wa, 1
  br i1 %i.wb, label %bb.qd, label %bb.qe, !prof !13

bb.qd:                                            ; preds = %lean_dec_ref.exit711
  %i.wc = add nsw i32 %i.wa, -1
  store i32 %i.wc, ptr %i.n, align 4, !tbaa !12
  br label %lean_dec_ref.exit709

bb.qe:                                            ; preds = %lean_dec_ref.exit711
  %.not.i708 = icmp eq i32 %i.wa, 0
  br i1 %.not.i708, label %lean_dec_ref.exit709, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.n) #4
  br label %lean_dec_ref.exit709

lean_dec_ref.exit709:                             ; preds = %bb.qd, %bb.qe, %bb.qf
  %i.wd = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.we = icmp sgt i32 %i.wd, 1
  br i1 %i.we, label %bb.qg, label %bb.qh, !prof !13

bb.qg:                                            ; preds = %lean_dec_ref.exit709
  %i.wf = add nsw i32 %i.wd, -1
  store i32 %i.wf, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit707

bb.qh:                                            ; preds = %lean_dec_ref.exit709
  %.not.i706 = icmp eq i32 %i.wd, 0
  br i1 %.not.i706, label %lean_dec_ref.exit707, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec_ref.exit707

lean_dec_ref.exit707:                             ; preds = %bb.qg, %bb.qh, %bb.qi
  %i.wg = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !10 ; 5 uses
  %.val832 = load i32, ptr %i.pl, align 8, !tbaa !12
  %i.wi = icmp eq i32 %.val832, 1
  br i1 %i.wi, label %lean_dec_ref.exit823.thread, label %bb.qj

bb.qj:                                            ; preds = %lean_dec_ref.exit707
  %i.wj = ptrtoint ptr %i.wh to i64
  %i.wk = and i64 %i.wj, 1
  %.not.i558 = icmp eq i64 %i.wk, 0
  br i1 %.not.i558, label %bb.qk, label %lean_inc.exit559

bb.qk:                                            ; preds = %bb.qj
  %.val.i.i979 = load i32, ptr %i.wh, align 4, !tbaa !12 ; 3 uses
  %i.wl = icmp sgt i32 %.val.i.i979, 0
  br i1 %i.wl, label %bb.ql, label %bb.qm, !prof !13

end_hunk_4
begin_hunk_5_@l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpAndMatchDIteDecidable:bb.a
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !10 ; 4 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = and i64 %i.bf, 1
  %.not.i.i249 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i249, label %bb.ar, label %lean_dec.exit.i

bb.ar:                                            ; preds = %.preheader.i
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !12 ; 3 uses
  %i.bi = icmp sgt i32 %i.bh, 1
  br i1 %i.bi, label %bb.as, label %bb.at, !prof !13

bb.as:                                            ; preds = %bb.ar
  %i.bj = add nsw i32 %i.bh, -1
  store i32 %i.bj, ptr %i.be, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.at:                                            ; preds = %bb.ar
  %.not.i7.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.be) #4
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.au, %bb.at, %bb.as, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.ao) #4
  br label %lean_dec_ref_known.exit

bb.av:                                            ; preds = %lean_inc.exit163
  %i.bk = icmp sgt i32 %.val.i248, 1
  br i1 %i.bk, label %bb.aw, label %bb.ax, !prof !13

bb.aw:                                            ; preds = %bb.av
  %i.bl = add nsw i32 %.val.i248, -1
  store i32 %i.bl, ptr %i.ao, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.ax:                                            ; preds = %bb.av
  %.not.i8.i = icmp eq i32 %.val.i248, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ao) #4
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.aw, %bb.ax, %bb.ay
  br i1 %.not.i162, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %lean_dec_ref_known.exit
  %i.bm = lshr i64 %i.ay, 1
  %i.bn = trunc i64 %i.bm to i32
  br label %lean_obj_tag.exit253

bb.ba:                                            ; preds = %lean_dec_ref_known.exit
  %i.bo = getelementptr i8, ptr %i.ax, i64 4
  %.val.i252 = load i32, ptr %i.bo, align 4
  %i.bp = lshr i32 %.val.i252, 24
  br label %lean_obj_tag.exit253

lean_obj_tag.exit253:                             ; preds = %bb.az, %bb.ba
  %.0.i251 = phi i32 [ %i.bn, %bb.az ], [ %i.bp, %bb.ba ]
  %i.bq = icmp eq i32 %.0.i251, 0
  br i1 %i.bq, label %bb.bb, label %bb.cl

bb.bb:                                            ; preds = %lean_obj_tag.exit253
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 9
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !18  ; 2 uses
  %.val.i254 = load i32, ptr %i.ax, align 4, !tbaa !12 ; 4 uses
  %i.bt = icmp eq i32 %.val.i254, 1
  br i1 %i.bt, label %.preheader.i256, label %bb.bc

.preheader.i256:                                  ; preds = %bb.bb
  tail call void @lean_free_object(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref_known.exit258

bb.bc:                                            ; preds = %bb.bb
  %i.bu = icmp sgt i32 %.val.i254, 1
  br i1 %i.bu, label %bb.bd, label %bb.be, !prof !13

bb.bd:                                            ; preds = %bb.bc
  %i.bv = add nsw i32 %.val.i254, -1
  store i32 %i.bv, ptr %i.ax, align 4, !tbaa !12
  br label %lean_dec_ref_known.exit258

bb.be:                                            ; preds = %bb.bc
  %.not.i8.i255 = icmp eq i32 %.val.i254, 0
  br i1 %.not.i8.i255, label %lean_dec_ref_known.exit258, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref_known.exit258

lean_dec_ref_known.exit258:                       ; preds = %.preheader.i256, %bb.bd, %bb.be, %bb.bf
  %.val.i.i259 = load i32, ptr %3, align 4, !tbaa !12 ; 3 uses
  %i.bw = icmp sgt i32 %.val.i.i259, 0
  br i1 %i.bw, label %bb.bg, label %bb.bh, !prof !13

bb.bg:                                            ; preds = %lean_dec_ref_known.exit258
  %i.bx = add nuw i32 %.val.i.i259, 1
  store i32 %i.bx, ptr %3, align 4, !tbaa !12
  br label %lean_inc_ref.exit261

bb.bh:                                            ; preds = %lean_dec_ref_known.exit258
  %.not.i.i260 = icmp eq i32 %.val.i.i259, 0
  br i1 %.not.i.i260, label %lean_inc_ref.exit261, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.by = atomicrmw sub ptr %3, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit261

lean_inc_ref.exit261:                             ; preds = %bb.bg, %bb.bh, %bb.bi
  %i.bz = tail call ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_matchDIteDecidable(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %3, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef %11, ptr noundef nonnull %12, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %15) ; 16 uses
  %i.ca = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cb = and i64 %i.ca, 1
  %.not.i262 = icmp eq i64 %i.cb, 0               ; 2 uses
  br i1 %.not.i262, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %lean_inc_ref.exit261
  %i.cc = lshr i64 %i.ca, 1
  %i.cd = trunc i64 %i.cc to i32
  br label %lean_obj_tag.exit265

bb.bk:                                            ; preds = %lean_inc_ref.exit261
  %i.ce = getelementptr i8, ptr %i.bz, i64 4
  %.val.i264 = load i32, ptr %i.ce, align 4
  %i.cf = lshr i32 %.val.i264, 24
  br label %lean_obj_tag.exit265

lean_obj_tag.exit265:                             ; preds = %bb.bj, %bb.bk
  %.0.i263 = phi i32 [ %i.cd, %bb.bj ], [ %i.cf, %bb.bk ]
  %i.cg = icmp eq i32 %.0.i263, 0
  br i1 %i.cg, label %bb.bl, label %lean_dec.exit188

bb.bl:                                            ; preds = %lean_obj_tag.exit265
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !10 ; 15 uses
  %i.cj = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.ck = and i64 %i.cj, 1
  %.not.i160 = icmp eq i64 %i.ck, 0
  br i1 %.not.i160, label %bb.bm, label %lean_inc.exit161.thread

bb.bm:                                            ; preds = %bb.bl
  %.val.i.i266 = load i32, ptr %i.ci, align 4, !tbaa !12 ; 3 uses
  %i.cl = icmp sgt i32 %.val.i.i266, 0
  br i1 %i.cl, label %bb.bn, label %bb.bo, !prof !13

bb.bn:                                            ; preds = %bb.bm
  %i.cm = add nuw i32 %.val.i.i266, 1
  store i32 %i.cm, ptr %i.ci, align 4, !tbaa !12
  br label %lean_inc.exit161

bb.bo:                                            ; preds = %bb.bm
  %.not.i.i267 = icmp eq i32 %.val.i.i266, 0
  br i1 %.not.i.i267, label %lean_inc.exit161, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.cn = atomicrmw sub ptr %i.ci, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit161

lean_inc.exit161:                                 ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.co = icmp eq i8 %i.bs, 0
  br i1 %i.co, label %bb.bq, label %lean_obj_tag.exit272

lean_inc.exit161.thread:                          ; preds = %bb.bl
  %i.cp = icmp eq i8 %i.bs, 0
  br i1 %i.cp, label %lean_dec.exit188, label %lean_obj_tag.exit272.thread

bb.bq:                                            ; preds = %lean_inc.exit161
  %i.cq = load i32, ptr %i.ci, align 4, !tbaa !12 ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 1
  br i1 %i.cr, label %bb.br, label %bb.bs, !prof !13

bb.br:                                            ; preds = %bb.bq
  %i.cs = add nsw i32 %i.cq, -1
  store i32 %i.cs, ptr %i.ci, align 4, !tbaa !12
  br label %lean_dec.exit188

bb.bs:                                            ; preds = %bb.bq
  %.not.i189 = icmp eq i32 %i.cq, 0
  br i1 %.not.i189, label %lean_dec.exit188, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ci) #4
  br label %lean_dec.exit188

lean_obj_tag.exit272:                             ; preds = %lean_inc.exit161
  %i.ct = getelementptr i8, ptr %i.ci, i64 4
  %.val.i271 = load i32, ptr %i.ct, align 4
  %i.cu = icmp ult i32 %.val.i271, 16777216
  %.0159.in.v = select i1 %i.cu, i64 9, i64 25
  %.0159.in = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.0159.in.v
  %.0159 = load i8, ptr %.0159.in, align 1, !tbaa !18
  %i.cv = icmp eq i8 %.0159, 0
  br i1 %i.cv, label %bb.bu, label %bb.ch

lean_obj_tag.exit272.thread:                      ; preds = %lean_inc.exit161.thread
  %i.cw = and i64 %i.cj, 8589934590
  %i.cx = icmp eq i64 %i.cw, 0
  %.0159.in.v332 = select i1 %i.cx, i64 9, i64 25
  %.0159.in333 = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.0159.in.v332
  %.0159334 = load i8, ptr %.0159.in333, align 1, !tbaa !18
  %i.cy = icmp eq i8 %.0159334, 0
  br i1 %i.cy, label %bb.bu, label %lean_dec.exit188

bb.bu:                                            ; preds = %lean_obj_tag.exit272.thread, %lean_obj_tag.exit272
  %.val216 = load i32, ptr %i.bz, align 8, !tbaa !12 ; 4 uses
  %i.cz = icmp eq i32 %.val216, 1
  br i1 %i.cz, label %bb.bv, label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  %i.da = load ptr, ptr %i.ch, align 8, !tbaa !10 ; 4 uses
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = and i64 %i.db, 1
  %.not.i185 = icmp eq i64 %i.dc, 0
  br i1 %.not.i185, label %bb.bw, label %bb.cf

bb.bw:                                            ; preds = %bb.bv
  %i.dd = load i32, ptr %i.da, align 4, !tbaa !12 ; 3 uses
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %bb.bx, label %bb.by, !prof !13

bb.bx:                                            ; preds = %bb.bw
  %i.df = add nsw i32 %i.dd, -1
  store i32 %i.df, ptr %i.da, align 4, !tbaa !12
  br label %bb.cf

bb.by:                                            ; preds = %bb.bw
  %.not.i190 = icmp eq i32 %i.dd, 0
  br i1 %.not.i190, label %bb.cf, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.da) #4
  br label %bb.cf

bb.ca:                                            ; preds = %bb.bu
  br i1 %.not.i262, label %bb.cb, label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  %i.dg = icmp sgt i32 %.val216, 1
  br i1 %i.dg, label %bb.cc, label %bb.cd, !prof !13

bb.cc:                                            ; preds = %bb.cb
  %i.dh = add nsw i32 %.val216, -1
  store i32 %i.dh, ptr %i.bz, align 8, !tbaa !12
  br label %bb.cg

bb.cd:                                            ; preds = %bb.cb
  %.not.i192 = icmp eq i32 %.val216, 0
  br i1 %.not.i192, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bz) #4
  br label %bb.cg

bb.cf:                                            ; preds = %bb.bv, %bb.bx, %bb.by, %bb.bz
  %i.di = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ci) #4
  store ptr %i.di, ptr %i.ch, align 8, !tbaa !10
  br label %lean_dec.exit188

bb.cg:                                            ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.ca
  %i.dj = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ci) #4
  %i.dk = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.dj, ptr %i.dl, align 8, !tbaa !10
  br label %lean_dec.exit188

bb.ch:                                            ; preds = %lean_obj_tag.exit272
  %i.dm = load i32, ptr %i.ci, align 4, !tbaa !12 ; 3 uses
  %i.dn = icmp sgt i32 %i.dm, 1
  br i1 %i.dn, label %bb.ci, label %bb.cj, !prof !13

bb.ci:                                            ; preds = %bb.ch
  %i.do = add nsw i32 %i.dm, -1
  store i32 %i.do, ptr %i.ci, align 4, !tbaa !12
  br label %lean_dec.exit188

bb.cj:                                            ; preds = %bb.ch
  %.not.i194 = icmp eq i32 %i.dm, 0
  br i1 %.not.i194, label %lean_dec.exit188, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ci) #4
  br label %lean_dec.exit188

bb.cl:                                            ; preds = %lean_obj_tag.exit253
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !10 ; 4 uses
  %.val.i.i273 = load i32, ptr %i.dq, align 4, !tbaa !12 ; 3 uses
  %i.dr = icmp sgt i32 %.val.i.i273, 0
  br i1 %i.dr, label %bb.cm, label %bb.cn, !prof !13

bb.cm:                                            ; preds = %bb.cl
  %i.ds = add nuw i32 %.val.i.i273, 1
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !12
  br label %lean_inc_ref.exit275

bb.cn:                                            ; preds = %bb.cl
  %.not.i.i274 = icmp eq i32 %.val.i.i273, 0
  br i1 %.not.i.i274, label %lean_inc_ref.exit275, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.dt = atomicrmw sub ptr %i.dq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit275

lean_inc_ref.exit275:                             ; preds = %bb.cm, %bb.cn, %bb.co
  %i.du = getelementptr inbounds nuw i8, ptr %i.ax, i64 25
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !18  ; 2 uses
  %.val.i276 = load i32, ptr %i.ax, align 8, !tbaa !12 ; 4 uses
  %i.dw = icmp eq i32 %.val.i276, 1
  br i1 %i.dw, label %.preheader.i278.preheader, label %bb.cx

.preheader.i278.preheader:                        ; preds = %lean_inc_ref.exit275
  %i.dx = load ptr, ptr %i.dp, align 8, !tbaa !10 ; 4 uses
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = and i64 %i.dy, 1
  %.not.i.i280 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i280, label %bb.cp, label %lean_dec.exit.i281

bb.cp:                                            ; preds = %.preheader.i278.preheader
  %i.ea = load i32, ptr %i.dx, align 4, !tbaa !12 ; 3 uses
  %i.eb = icmp sgt i32 %i.ea, 1
  br i1 %i.eb, label %bb.cq, label %bb.cr, !prof !13

bb.cq:                                            ; preds = %bb.cp
  %i.ec = add nsw i32 %i.ea, -1
  store i32 %i.ec, ptr %i.dx, align 4, !tbaa !12
  br label %lean_dec.exit.i281

bb.cr:                                            ; preds = %bb.cp
  %.not.i7.i285 = icmp eq i32 %i.ea, 0
  br i1 %.not.i7.i285, label %lean_dec.exit.i281, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dx) #4
  br label %lean_dec.exit.i281

lean_dec.exit.i281:                               ; preds = %bb.cs, %bb.cr, %bb.cq, %.preheader.i278.preheader
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !10 ; 4 uses
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = and i64 %i.ef, 1
  %.not.i.i280.1 = icmp eq i64 %i.eg, 0
  br i1 %.not.i.i280.1, label %bb.ct, label %lean_dec.exit.i281.1

bb.ct:                                            ; preds = %lean_dec.exit.i281
  %i.eh = load i32, ptr %i.ee, align 4, !tbaa !12 ; 3 uses
  %i.ei = icmp sgt i32 %i.eh, 1
  br i1 %i.ei, label %bb.cw, label %bb.cu, !prof !13

bb.cu:                                            ; preds = %bb.ct
  %.not.i7.i285.1 = icmp eq i32 %i.eh, 0
  br i1 %.not.i7.i285.1, label %lean_dec.exit.i281.1, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ee) #4
  br label %lean_dec.exit.i281.1

bb.cw:                                            ; preds = %bb.ct
  %i.ej = add nsw i32 %i.eh, -1
  store i32 %i.ej, ptr %i.ee, align 4, !tbaa !12
  br label %lean_dec.exit.i281.1

lean_dec.exit.i281.1:                             ; preds = %bb.cw, %bb.cv, %bb.cu, %lean_dec.exit.i281
  tail call void @lean_free_object(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref_known.exit286

bb.cx:                                            ; preds = %lean_inc_ref.exit275
  %i.ek = icmp sgt i32 %.val.i276, 1
  br i1 %i.ek, label %bb.cy, label %bb.cz, !prof !13

bb.cy:                                            ; preds = %bb.cx
  %i.el = add nsw i32 %.val.i276, -1
  store i32 %i.el, ptr %i.ax, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit286

bb.cz:                                            ; preds = %bb.cx
  %.not.i8.i277 = icmp eq i32 %.val.i276, 0
  br i1 %.not.i8.i277, label %lean_dec_ref_known.exit286, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref_known.exit286

lean_dec_ref_known.exit286:                       ; preds = %lean_dec.exit.i281.1, %bb.cy, %bb.cz, %bb.da
  %i.em = tail call ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_matchDIteDecidable(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %i.dq, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef %11, ptr noundef nonnull %12, ptr noundef %13, ptr noundef nonnull %14, ptr noundef %15) ; 16 uses
  %i.en = ptrtoint ptr %i.em to i64               ; 2 uses
  %i.eo = and i64 %i.en, 1
  %.not.i287 = icmp eq i64 %i.eo, 0               ; 2 uses
  br i1 %.not.i287, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %lean_dec_ref_known.exit286
  %i.ep = lshr i64 %i.en, 1
  %i.eq = trunc i64 %i.ep to i32
  br label %lean_obj_tag.exit290

bb.dc:                                            ; preds = %lean_dec_ref_known.exit286
  %i.er = getelementptr i8, ptr %i.em, i64 4
  %.val.i289 = load i32, ptr %i.er, align 4
  %i.es = lshr i32 %.val.i289, 24
  br label %lean_obj_tag.exit290

lean_obj_tag.exit290:                             ; preds = %bb.db, %bb.dc
  %.0.i288 = phi i32 [ %i.eq, %bb.db ], [ %i.es, %bb.dc ]
  %i.et = icmp eq i32 %.0.i288, 0
  br i1 %i.et, label %bb.dd, label %lean_dec.exit188

bb.dd:                                            ; preds = %lean_obj_tag.exit290
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !10 ; 15 uses
  %i.ew = ptrtoint ptr %i.ev to i64               ; 2 uses
  %i.ex = and i64 %i.ew, 1
  %.not.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i, label %bb.de, label %lean_inc.exit.thread

bb.de:                                            ; preds = %bb.dd
  %.val.i.i291 = load i32, ptr %i.ev, align 4, !tbaa !12 ; 3 uses
  %i.ey = icmp sgt i32 %.val.i.i291, 0
  br i1 %i.ey, label %bb.df, label %bb.dg, !prof !13

bb.df:                                            ; preds = %bb.de
  %i.ez = add nuw i32 %.val.i.i291, 1
  store i32 %i.ez, ptr %i.ev, align 4, !tbaa !12
  br label %lean_inc.exit

bb.dg:                                            ; preds = %bb.de
  %.not.i.i292 = icmp eq i32 %.val.i.i291, 0
  br i1 %.not.i.i292, label %lean_inc.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.fa = atomicrmw sub ptr %i.ev, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.dh, %bb.dg, %bb.df
  %i.fb = icmp eq i8 %i.dv, 0
  br i1 %i.fb, label %bb.di, label %lean_obj_tag.exit297

lean_inc.exit.thread:                             ; preds = %bb.dd
  %i.fc = icmp eq i8 %i.dv, 0
  br i1 %i.fc, label %lean_dec.exit188, label %lean_obj_tag.exit297.thread

bb.di:                                            ; preds = %lean_inc.exit
  %i.fd = load i32, ptr %i.ev, align 4, !tbaa !12 ; 3 uses
  %i.fe = icmp sgt i32 %i.fd, 1
  br i1 %i.fe, label %bb.dj, label %bb.dk, !prof !13

bb.dj:                                            ; preds = %bb.di
  %i.ff = add nsw i32 %i.fd, -1
  store i32 %i.ff, ptr %i.ev, align 4, !tbaa !12
  br label %lean_dec.exit188

bb.dk:                                            ; preds = %bb.di
  %.not.i196 = icmp eq i32 %i.fd, 0
  br i1 %.not.i196, label %lean_dec.exit188, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ev) #4
  br label %lean_dec.exit188

lean_obj_tag.exit297:                             ; preds = %lean_inc.exit
  %i.fg = getelementptr i8, ptr %i.ev, i64 4
  %.val.i296 = load i32, ptr %i.fg, align 4
  %i.fh = icmp ult i32 %.val.i296, 16777216
  %.0155.in.v = select i1 %i.fh, i64 9, i64 25
  %.0155.in = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.0155.in.v
  %.0155 = load i8, ptr %.0155.in, align 1, !tbaa !18
  %i.fi = icmp eq i8 %.0155, 0
  br i1 %i.fi, label %bb.dm, label %bb.dz

lean_obj_tag.exit297.thread:                      ; preds = %lean_inc.exit.thread
  %i.fj = and i64 %i.ew, 8589934590
  %i.fk = icmp eq i64 %i.fj, 0
  %.0155.in.v338 = select i1 %i.fk, i64 9, i64 25
  %.0155.in339 = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.0155.in.v338
  %.0155340 = load i8, ptr %.0155.in339, align 1, !tbaa !18
  %i.fl = icmp eq i8 %.0155340, 0
  br i1 %i.fl, label %bb.dm, label %lean_dec.exit188

bb.dm:                                            ; preds = %lean_obj_tag.exit297.thread, %lean_obj_tag.exit297
  %.val = load i32, ptr %i.em, align 8, !tbaa !12 ; 4 uses
  %i.fm = icmp eq i32 %.val, 1
  br i1 %i.fm, label %bb.dn, label %bb.ds

bb.dn:                                            ; preds = %bb.dm
  %i.fn = load ptr, ptr %i.eu, align 8, !tbaa !10 ; 4 uses
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = and i64 %i.fo, 1
  %.not.i177 = icmp eq i64 %i.fp, 0
  br i1 %.not.i177, label %bb.do, label %bb.dx

bb.do:                                            ; preds = %bb.dn
  %i.fq = load i32, ptr %i.fn, align 4, !tbaa !12 ; 3 uses
  %i.fr = icmp sgt i32 %i.fq, 1
  br i1 %i.fr, label %bb.dp, label %bb.dq, !prof !13

bb.dp:                                            ; preds = %bb.do
  %i.fs = add nsw i32 %i.fq, -1
  store i32 %i.fs, ptr %i.fn, align 4, !tbaa !12
  br label %bb.dx

bb.dq:                                            ; preds = %bb.do
  %.not.i198 = icmp eq i32 %i.fq, 0
  br i1 %.not.i198, label %bb.dx, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fn) #4
  br label %bb.dx

bb.ds:                                            ; preds = %bb.dm
  br i1 %.not.i287, label %bb.dt, label %bb.dy

bb.dt:                                            ; preds = %bb.ds
  %i.ft = icmp sgt i32 %.val, 1
  br i1 %i.ft, label %bb.du, label %bb.dv, !prof !13

bb.du:                                            ; preds = %bb.dt
  %i.fu = add nsw i32 %.val, -1
  store i32 %i.fu, ptr %i.em, align 8, !tbaa !12
  br label %bb.dy

bb.dv:                                            ; preds = %bb.dt
  %.not.i200 = icmp eq i32 %.val, 0
  br i1 %.not.i200, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.em) #4
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dn, %bb.dp, %bb.dq, %bb.dr
  %i.fv = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ev) #4
  store ptr %i.fv, ptr %i.eu, align 8, !tbaa !10
  br label %lean_dec.exit188

bb.dy:                                            ; preds = %bb.dw, %bb.dv, %bb.du, %bb.ds
  %i.fw = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ev) #4
  %i.fx = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr %i.fw, ptr %i.fy, align 8, !tbaa !10
  br label %lean_dec.exit188

bb.dz:                                            ; preds = %lean_obj_tag.exit297
  %i.fz = load i32, ptr %i.ev, align 4, !tbaa !12 ; 3 uses
  %i.ga = icmp sgt i32 %i.fz, 1
  br i1 %i.ga, label %bb.ea, label %bb.eb, !prof !13

bb.ea:                                            ; preds = %bb.dz
  %i.gb = add nsw i32 %i.fz, -1
  store i32 %i.gb, ptr %i.ev, align 4, !tbaa !12
  br label %lean_dec.exit188

bb.eb:                                            ; preds = %bb.dz
  %.not.i202 = icmp eq i32 %i.fz, 0
  br i1 %.not.i202, label %lean_dec.exit188, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ev) #4
  br label %lean_dec.exit188

bb.ed:                                            ; preds = %lean_obj_tag.exit
  %i.gc = load i32, ptr %6, align 4, !tbaa !12    ; 3 uses
  %i.gd = icmp sgt i32 %i.gc, 1
  br i1 %i.gd, label %bb.ee, label %bb.ef, !prof !13

bb.ee:                                            ; preds = %bb.ed
  %i.ge = add nsw i32 %i.gc, -1
  store i32 %i.ge, ptr %6, align 4, !tbaa !12
  br label %lean_dec_ref.exit215

bb.ef:                                            ; preds = %bb.ed
  %.not.i214 = icmp eq i32 %i.gc, 0
  br i1 %.not.i214, label %lean_dec_ref.exit215, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #4
  br label %lean_dec_ref.exit215

lean_dec_ref.exit215:                             ; preds = %bb.ee, %bb.ef, %bb.eg
  %i.gf = load i32, ptr %5, align 4, !tbaa !12    ; 3 uses
  %i.gg = icmp sgt i32 %i.gf, 1
  br i1 %i.gg, label %bb.eh, label %bb.ei, !prof !13

bb.eh:                                            ; preds = %lean_dec_ref.exit215
  %i.gh = add nsw i32 %i.gf, -1
  store i32 %i.gh, ptr %5, align 4, !tbaa !12
  br label %lean_dec_ref.exit213

bb.ei:                                            ; preds = %lean_dec_ref.exit215
  %.not.i212 = icmp eq i32 %i.gf, 0
  br i1 %.not.i212, label %lean_dec_ref.exit213, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #4
  br label %lean_dec_ref.exit213

lean_dec_ref.exit213:                             ; preds = %bb.eh, %bb.ei, %bb.ej
  %i.gi = load i32, ptr %4, align 4, !tbaa !12    ; 3 uses
  %i.gj = icmp sgt i32 %i.gi, 1
  br i1 %i.gj, label %bb.ek, label %bb.el, !prof !13

bb.ek:                                            ; preds = %lean_dec_ref.exit213
  %i.gk = add nsw i32 %i.gi, -1
  store i32 %i.gk, ptr %4, align 4, !tbaa !12
  br label %lean_dec_ref.exit211

bb.el:                                            ; preds = %lean_dec_ref.exit213
  %.not.i210 = icmp eq i32 %i.gi, 0
  br i1 %.not.i210, label %lean_dec_ref.exit211, label %bb.em

bb.em:                                            ; preds = %bb.el
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec_ref.exit211

lean_dec_ref.exit211:                             ; preds = %bb.ek, %bb.el, %bb.em
  %i.gl = load i32, ptr %3, align 4, !tbaa !12    ; 3 uses
  %i.gm = icmp sgt i32 %i.gl, 1
  br i1 %i.gm, label %bb.en, label %bb.eo, !prof !13

bb.en:                                            ; preds = %lean_dec_ref.exit211
  %i.gn = add nsw i32 %i.gl, -1
  store i32 %i.gn, ptr %3, align 4, !tbaa !12
  br label %lean_dec_ref.exit209

bb.eo:                                            ; preds = %lean_dec_ref.exit211
  %.not.i208 = icmp eq i32 %i.gl, 0
  br i1 %.not.i208, label %lean_dec_ref.exit209, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec_ref.exit209

lean_dec_ref.exit209:                             ; preds = %bb.en, %bb.eo, %bb.ep
  %i.go = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.gp = icmp sgt i32 %i.go, 1
  br i1 %i.gp, label %bb.eq, label %bb.er, !prof !13

bb.eq:                                            ; preds = %lean_dec_ref.exit209
  %i.gq = add nsw i32 %i.go, -1
  store i32 %i.gq, ptr %2, align 4, !tbaa !12
  br label %lean_dec_ref.exit207

bb.er:                                            ; preds = %lean_dec_ref.exit209
  %.not.i206 = icmp eq i32 %i.go, 0
  br i1 %.not.i206, label %lean_dec_ref.exit207, label %bb.es

bb.es:                                            ; preds = %bb.er
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec_ref.exit207

lean_dec_ref.exit207:                             ; preds = %bb.eq, %bb.er, %bb.es
  %i.gr = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.gs = icmp sgt i32 %i.gr, 1
  br i1 %i.gs, label %bb.et, label %bb.eu, !prof !13

bb.et:                                            ; preds = %lean_dec_ref.exit207
  %i.gt = add nsw i32 %i.gr, -1
  store i32 %i.gt, ptr %1, align 4, !tbaa !12
  br label %lean_dec.exit188

bb.eu:                                            ; preds = %lean_dec_ref.exit207
  %.not.i204 = icmp eq i32 %i.gr, 0
  br i1 %.not.i204, label %lean_dec.exit188, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec.exit188

lean_dec.exit188:                                 ; preds = %lean_obj_tag.exit297.thread, %lean_obj_tag.exit272.thread, %lean_inc.exit.thread, %lean_inc.exit161.thread, %bb.ev, %bb.eu, %bb.et, %bb.ea, %bb.eb, %bb.ec, %bb.dj, %bb.dk, %bb.dl, %bb.ci, %bb.cj, %bb.ck, %bb.br, %bb.bs, %bb.bt, %lean_obj_tag.exit265, %bb.cg, %bb.cf, %lean_obj_tag.exit290, %bb.dy, %bb.dx
  %.9 = phi ptr [ %i.em, %lean_obj_tag.exit297.thread ], [ %i.bz, %lean_obj_tag.exit265 ], [ %i.dk, %bb.cg ], [ %i.em, %lean_obj_tag.exit290 ], [ %i.ao, %bb.eu ], [ %i.bz, %bb.cf ], [ %i.fx, %bb.dy ], [ %i.bz, %lean_obj_tag.exit272.thread ], [ %i.em, %lean_inc.exit.thread ], [ %i.em, %bb.dx ], [ %i.bz, %bb.bt ], [ %i.bz, %bb.bs ], [ %i.bz, %bb.br ], [ %i.ao, %bb.ev ], [ %i.bz, %bb.ck ], [ %i.bz, %bb.cj ], [ %i.bz, %bb.ci ], [ %i.em, %bb.dl ], [ %i.em, %bb.dk ], [ %i.em, %bb.dj ], [ %i.bz, %lean_inc.exit161.thread ], [ %i.em, %bb.ec ], [ %i.em, %bb.eb ], [ %i.em, %bb.ea ], [ %i.ao, %bb.et ]
  ret ptr %.9
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpAndMatchDIteDecidable___boxed(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 4 uses
end_hunk_5
begin_hunk_6_@l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpAndMatchDIteDecidableCongr:bb.a
  %i.bb = add nuw i32 %.val.i.i260, 1
  store i32 %i.bb, ptr %i.ax, align 4, !tbaa !12
  br label %lean_inc.exit170

bb.ap:                                            ; preds = %bb.an
  %.not.i.i261 = icmp eq i32 %.val.i.i260, 0
  br i1 %.not.i.i261, label %lean_inc.exit170, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bc = atomicrmw sub ptr %i.ax, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit170

lean_inc.exit170:                                 ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am
  %.val.i263 = load i32, ptr %i.ao, align 8, !tbaa !12 ; 4 uses
  %i.bd = icmp eq i32 %.val.i263, 1
  br i1 %i.bd, label %.preheader.i, label %bb.av

.preheader.i:                                     ; preds = %lean_inc.exit170
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !10 ; 4 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = and i64 %i.bf, 1
  %.not.i.i264 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i264, label %bb.ar, label %lean_dec.exit.i

bb.ar:                                            ; preds = %.preheader.i
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !12 ; 3 uses
  %i.bi = icmp sgt i32 %i.bh, 1
  br i1 %i.bi, label %bb.as, label %bb.at, !prof !13

bb.as:                                            ; preds = %bb.ar
  %i.bj = add nsw i32 %i.bh, -1
  store i32 %i.bj, ptr %i.be, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.at:                                            ; preds = %bb.ar
  %.not.i7.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.be) #4
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.au, %bb.at, %bb.as, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.ao) #4
  br label %lean_dec_ref_known.exit

bb.av:                                            ; preds = %lean_inc.exit170
  %i.bk = icmp sgt i32 %.val.i263, 1
  br i1 %i.bk, label %bb.aw, label %bb.ax, !prof !13

bb.aw:                                            ; preds = %bb.av
  %i.bl = add nsw i32 %.val.i263, -1
  store i32 %i.bl, ptr %i.ao, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.ax:                                            ; preds = %bb.av
  %.not.i8.i = icmp eq i32 %.val.i263, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ao) #4
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.aw, %bb.ax, %bb.ay
  br i1 %.not.i169, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %lean_dec_ref_known.exit
  %i.bm = lshr i64 %i.ay, 1
  %i.bn = trunc i64 %i.bm to i32
  br label %lean_obj_tag.exit268

bb.ba:                                            ; preds = %lean_dec_ref_known.exit
  %i.bo = getelementptr i8, ptr %i.ax, i64 4
  %.val.i267 = load i32, ptr %i.bo, align 4
  %i.bp = lshr i32 %.val.i267, 24
  br label %lean_obj_tag.exit268

lean_obj_tag.exit268:                             ; preds = %bb.az, %bb.ba
  %.0.i266 = phi i32 [ %i.bn, %bb.az ], [ %i.bp, %bb.ba ]
  %i.bq = icmp eq i32 %.0.i266, 0
  br i1 %i.bq, label %bb.bb, label %bb.ci

bb.bb:                                            ; preds = %lean_obj_tag.exit268
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 9
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !18  ; 2 uses
  %.val.i269 = load i32, ptr %i.ax, align 4, !tbaa !12 ; 4 uses
  %i.bt = icmp eq i32 %.val.i269, 1
  br i1 %i.bt, label %.preheader.i271, label %bb.bc

.preheader.i271:                                  ; preds = %bb.bb
  tail call void @lean_free_object(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref_known.exit273

bb.bc:                                            ; preds = %bb.bb
  %i.bu = icmp sgt i32 %.val.i269, 1
  br i1 %i.bu, label %bb.bd, label %bb.be, !prof !13

bb.bd:                                            ; preds = %bb.bc
  %i.bv = add nsw i32 %.val.i269, -1
  store i32 %i.bv, ptr %i.ax, align 4, !tbaa !12
  br label %lean_dec_ref_known.exit273

bb.be:                                            ; preds = %bb.bc
  %.not.i8.i270 = icmp eq i32 %.val.i269, 0
  br i1 %.not.i8.i270, label %lean_dec_ref_known.exit273, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref_known.exit273

lean_dec_ref_known.exit273:                       ; preds = %.preheader.i271, %bb.bd, %bb.be, %bb.bf
  %i.bw = tail call ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_matchDIteDecidableCongr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %16, ptr noundef nonnull %17, ptr noundef %18) ; 16 uses
  %i.bx = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.by = and i64 %i.bx, 1
  %.not.i274 = icmp eq i64 %i.by, 0               ; 2 uses
  br i1 %.not.i274, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %lean_dec_ref_known.exit273
  %i.bz = lshr i64 %i.bx, 1
  %i.ca = trunc i64 %i.bz to i32
  br label %lean_obj_tag.exit277

bb.bh:                                            ; preds = %lean_dec_ref_known.exit273
  %i.cb = getelementptr i8, ptr %i.bw, i64 4
  %.val.i276 = load i32, ptr %i.cb, align 4
  %i.cc = lshr i32 %.val.i276, 24
  br label %lean_obj_tag.exit277

lean_obj_tag.exit277:                             ; preds = %bb.bg, %bb.bh
  %.0.i275 = phi i32 [ %i.ca, %bb.bg ], [ %i.cc, %bb.bh ]
  %i.cd = icmp eq i32 %.0.i275, 0
  br i1 %i.cd, label %bb.bi, label %lean_dec.exit195

bb.bi:                                            ; preds = %lean_obj_tag.exit277
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !10 ; 15 uses
  %i.cg = ptrtoint ptr %i.cf to i64               ; 2 uses
  %i.ch = and i64 %i.cg, 1
  %.not.i167 = icmp eq i64 %i.ch, 0
  br i1 %.not.i167, label %bb.bj, label %lean_inc.exit168.thread

bb.bj:                                            ; preds = %bb.bi
  %.val.i.i278 = load i32, ptr %i.cf, align 4, !tbaa !12 ; 3 uses
  %i.ci = icmp sgt i32 %.val.i.i278, 0
  br i1 %i.ci, label %bb.bk, label %bb.bl, !prof !13

bb.bk:                                            ; preds = %bb.bj
  %i.cj = add nuw i32 %.val.i.i278, 1
  store i32 %i.cj, ptr %i.cf, align 4, !tbaa !12
  br label %lean_inc.exit168

bb.bl:                                            ; preds = %bb.bj
  %.not.i.i279 = icmp eq i32 %.val.i.i278, 0
  br i1 %.not.i.i279, label %lean_inc.exit168, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ck = atomicrmw sub ptr %i.cf, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit168

lean_inc.exit168:                                 ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.cl = icmp eq i8 %i.bs, 0
  br i1 %i.cl, label %bb.bn, label %lean_obj_tag.exit284

lean_inc.exit168.thread:                          ; preds = %bb.bi
  %i.cm = icmp eq i8 %i.bs, 0
  br i1 %i.cm, label %lean_dec.exit195, label %lean_obj_tag.exit284.thread

bb.bn:                                            ; preds = %lean_inc.exit168
  %i.cn = load i32, ptr %i.cf, align 4, !tbaa !12 ; 3 uses
  %i.co = icmp sgt i32 %i.cn, 1
  br i1 %i.co, label %bb.bo, label %bb.bp, !prof !13

bb.bo:                                            ; preds = %bb.bn
  %i.cp = add nsw i32 %i.cn, -1
  store i32 %i.cp, ptr %i.cf, align 4, !tbaa !12
  br label %lean_dec.exit195

bb.bp:                                            ; preds = %bb.bn
  %.not.i196 = icmp eq i32 %i.cn, 0
  br i1 %.not.i196, label %lean_dec.exit195, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cf) #4
  br label %lean_dec.exit195

lean_obj_tag.exit284:                             ; preds = %lean_inc.exit168
  %i.cq = getelementptr i8, ptr %i.cf, i64 4
  %.val.i283 = load i32, ptr %i.cq, align 4
  %i.cr = icmp ult i32 %.val.i283, 16777216
  %.0166.in.v = select i1 %i.cr, i64 9, i64 25
  %.0166.in = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.0166.in.v
  %.0166 = load i8, ptr %.0166.in, align 1, !tbaa !18
  %i.cs = icmp eq i8 %.0166, 0
  br i1 %i.cs, label %bb.br, label %bb.ce

lean_obj_tag.exit284.thread:                      ; preds = %lean_inc.exit168.thread
  %i.ct = and i64 %i.cg, 8589934590
  %i.cu = icmp eq i64 %i.ct, 0
  %.0166.in.v352 = select i1 %i.cu, i64 9, i64 25
  %.0166.in353 = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.0166.in.v352
  %.0166354 = load i8, ptr %.0166.in353, align 1, !tbaa !18
  %i.cv = icmp eq i8 %.0166354, 0
  br i1 %i.cv, label %bb.br, label %lean_dec.exit195

bb.br:                                            ; preds = %lean_obj_tag.exit284.thread, %lean_obj_tag.exit284
  %.val231 = load i32, ptr %i.bw, align 8, !tbaa !12 ; 4 uses
  %i.cw = icmp eq i32 %.val231, 1
  br i1 %i.cw, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %bb.br
  %i.cx = load ptr, ptr %i.ce, align 8, !tbaa !10 ; 4 uses
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = and i64 %i.cy, 1
  %.not.i192 = icmp eq i64 %i.cz, 0
  br i1 %.not.i192, label %bb.bt, label %bb.cc

bb.bt:                                            ; preds = %bb.bs
  %i.da = load i32, ptr %i.cx, align 4, !tbaa !12 ; 3 uses
  %i.db = icmp sgt i32 %i.da, 1
  br i1 %i.db, label %bb.bu, label %bb.bv, !prof !13

bb.bu:                                            ; preds = %bb.bt
  %i.dc = add nsw i32 %i.da, -1
  store i32 %i.dc, ptr %i.cx, align 4, !tbaa !12
  br label %bb.cc

bb.bv:                                            ; preds = %bb.bt
  %.not.i197 = icmp eq i32 %i.da, 0
  br i1 %.not.i197, label %bb.cc, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cx) #4
  br label %bb.cc

bb.bx:                                            ; preds = %bb.br
  br i1 %.not.i274, label %bb.by, label %bb.cd

bb.by:                                            ; preds = %bb.bx
  %i.dd = icmp sgt i32 %.val231, 1
  br i1 %i.dd, label %bb.bz, label %bb.ca, !prof !13

bb.bz:                                            ; preds = %bb.by
  %i.de = add nsw i32 %.val231, -1
  store i32 %i.de, ptr %i.bw, align 8, !tbaa !12
  br label %bb.cd

bb.ca:                                            ; preds = %bb.by
  %.not.i199 = icmp eq i32 %.val231, 0
  br i1 %.not.i199, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bw) #4
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bs, %bb.bu, %bb.bv, %bb.bw
  %i.df = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.cf) #4
  store ptr %i.df, ptr %i.ce, align 8, !tbaa !10
  br label %lean_dec.exit195

bb.cd:                                            ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.bx
  %i.dg = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.cf) #4
  %i.dh = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.dg, ptr %i.di, align 8, !tbaa !10
  br label %lean_dec.exit195

bb.ce:                                            ; preds = %lean_obj_tag.exit284
  %i.dj = load i32, ptr %i.cf, align 4, !tbaa !12 ; 3 uses
  %i.dk = icmp sgt i32 %i.dj, 1
  br i1 %i.dk, label %bb.cf, label %bb.cg, !prof !13

bb.cf:                                            ; preds = %bb.ce
  %i.dl = add nsw i32 %i.dj, -1
  store i32 %i.dl, ptr %i.cf, align 4, !tbaa !12
  br label %lean_dec.exit195

bb.cg:                                            ; preds = %bb.ce
  %.not.i201 = icmp eq i32 %i.dj, 0
  br i1 %.not.i201, label %lean_dec.exit195, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cf) #4
  br label %lean_dec.exit195

bb.ci:                                            ; preds = %lean_obj_tag.exit268
  %i.dm = load i32, ptr %8, align 4, !tbaa !12    ; 3 uses
  %i.dn = icmp sgt i32 %i.dm, 1
  br i1 %i.dn, label %bb.cj, label %bb.ck, !prof !13

bb.cj:                                            ; preds = %bb.ci
  %i.do = add nsw i32 %i.dm, -1
  store i32 %i.do, ptr %8, align 4, !tbaa !12
  br label %lean_dec_ref.exit230

bb.ck:                                            ; preds = %bb.ci
  %.not.i229 = icmp eq i32 %i.dm, 0
  br i1 %.not.i229, label %lean_dec_ref.exit230, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #4
  br label %lean_dec_ref.exit230

lean_dec_ref.exit230:                             ; preds = %bb.cj, %bb.ck, %bb.cl
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !10 ; 4 uses
  %.val.i.i285 = load i32, ptr %i.dq, align 4, !tbaa !12 ; 3 uses
  %i.dr = icmp sgt i32 %.val.i.i285, 0
  br i1 %i.dr, label %bb.cm, label %bb.cn, !prof !13

bb.cm:                                            ; preds = %lean_dec_ref.exit230
  %i.ds = add nuw i32 %.val.i.i285, 1
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !12
  br label %lean_inc_ref.exit287

bb.cn:                                            ; preds = %lean_dec_ref.exit230
  %.not.i.i286 = icmp eq i32 %.val.i.i285, 0
  br i1 %.not.i.i286, label %lean_inc_ref.exit287, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.dt = atomicrmw sub ptr %i.dq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit287

lean_inc_ref.exit287:                             ; preds = %bb.cm, %bb.cn, %bb.co
  %i.du = getelementptr inbounds nuw i8, ptr %i.ax, i64 25
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !18  ; 2 uses
  %.val.i288 = load i32, ptr %i.ax, align 8, !tbaa !12 ; 4 uses
  %i.dw = icmp eq i32 %.val.i288, 1
  br i1 %i.dw, label %.preheader.i290.preheader, label %bb.cx

.preheader.i290.preheader:                        ; preds = %lean_inc_ref.exit287
  %i.dx = load ptr, ptr %i.dp, align 8, !tbaa !10 ; 4 uses
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = and i64 %i.dy, 1
  %.not.i.i292 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i292, label %bb.cp, label %lean_dec.exit.i293

bb.cp:                                            ; preds = %.preheader.i290.preheader
  %i.ea = load i32, ptr %i.dx, align 4, !tbaa !12 ; 3 uses
  %i.eb = icmp sgt i32 %i.ea, 1
  br i1 %i.eb, label %bb.cq, label %bb.cr, !prof !13

bb.cq:                                            ; preds = %bb.cp
  %i.ec = add nsw i32 %i.ea, -1
  store i32 %i.ec, ptr %i.dx, align 4, !tbaa !12
  br label %lean_dec.exit.i293

bb.cr:                                            ; preds = %bb.cp
  %.not.i7.i297 = icmp eq i32 %i.ea, 0
  br i1 %.not.i7.i297, label %lean_dec.exit.i293, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dx) #4
  br label %lean_dec.exit.i293

lean_dec.exit.i293:                               ; preds = %bb.cs, %bb.cr, %bb.cq, %.preheader.i290.preheader
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !10 ; 4 uses
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = and i64 %i.ef, 1
  %.not.i.i292.1 = icmp eq i64 %i.eg, 0
  br i1 %.not.i.i292.1, label %bb.ct, label %lean_dec.exit.i293.1

bb.ct:                                            ; preds = %lean_dec.exit.i293
  %i.eh = load i32, ptr %i.ee, align 4, !tbaa !12 ; 3 uses
  %i.ei = icmp sgt i32 %i.eh, 1
  br i1 %i.ei, label %bb.cw, label %bb.cu, !prof !13

bb.cu:                                            ; preds = %bb.ct
  %.not.i7.i297.1 = icmp eq i32 %i.eh, 0
  br i1 %.not.i7.i297.1, label %lean_dec.exit.i293.1, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ee) #4
  br label %lean_dec.exit.i293.1

bb.cw:                                            ; preds = %bb.ct
  %i.ej = add nsw i32 %i.eh, -1
  store i32 %i.ej, ptr %i.ee, align 4, !tbaa !12
  br label %lean_dec.exit.i293.1

lean_dec.exit.i293.1:                             ; preds = %bb.cw, %bb.cv, %bb.cu, %lean_dec.exit.i293
  tail call void @lean_free_object(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref_known.exit298

bb.cx:                                            ; preds = %lean_inc_ref.exit287
  %i.ek = icmp sgt i32 %.val.i288, 1
  br i1 %i.ek, label %bb.cy, label %bb.cz, !prof !13

bb.cy:                                            ; preds = %bb.cx
  %i.el = add nsw i32 %.val.i288, -1
  store i32 %i.el, ptr %i.ax, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit298

bb.cz:                                            ; preds = %bb.cx
  %.not.i8.i289 = icmp eq i32 %.val.i288, 0
  br i1 %.not.i8.i289, label %lean_dec_ref_known.exit298, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref_known.exit298

lean_dec_ref_known.exit298:                       ; preds = %lean_dec.exit.i293.1, %bb.cy, %bb.cz, %bb.da
  %i.em = tail call ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_matchDIteDecidableCongr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %i.dq, ptr noundef %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %16, ptr noundef nonnull %17, ptr noundef %18) ; 16 uses
  %i.en = ptrtoint ptr %i.em to i64               ; 2 uses
  %i.eo = and i64 %i.en, 1
  %.not.i299 = icmp eq i64 %i.eo, 0               ; 2 uses
  br i1 %.not.i299, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %lean_dec_ref_known.exit298
  %i.ep = lshr i64 %i.en, 1
  %i.eq = trunc i64 %i.ep to i32
  br label %lean_obj_tag.exit302

bb.dc:                                            ; preds = %lean_dec_ref_known.exit298
  %i.er = getelementptr i8, ptr %i.em, i64 4
  %.val.i301 = load i32, ptr %i.er, align 4
  %i.es = lshr i32 %.val.i301, 24
  br label %lean_obj_tag.exit302

lean_obj_tag.exit302:                             ; preds = %bb.db, %bb.dc
  %.0.i300 = phi i32 [ %i.eq, %bb.db ], [ %i.es, %bb.dc ]
  %i.et = icmp eq i32 %.0.i300, 0
  br i1 %i.et, label %bb.dd, label %lean_dec.exit195

bb.dd:                                            ; preds = %lean_obj_tag.exit302
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !10 ; 15 uses
  %i.ew = ptrtoint ptr %i.ev to i64               ; 2 uses
  %i.ex = and i64 %i.ew, 1
  %.not.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i, label %bb.de, label %lean_inc.exit.thread

bb.de:                                            ; preds = %bb.dd
  %.val.i.i303 = load i32, ptr %i.ev, align 4, !tbaa !12 ; 3 uses
  %i.ey = icmp sgt i32 %.val.i.i303, 0
  br i1 %i.ey, label %bb.df, label %bb.dg, !prof !13

bb.df:                                            ; preds = %bb.de
  %i.ez = add nuw i32 %.val.i.i303, 1
  store i32 %i.ez, ptr %i.ev, align 4, !tbaa !12
  br label %lean_inc.exit

bb.dg:                                            ; preds = %bb.de
  %.not.i.i304 = icmp eq i32 %.val.i.i303, 0
  br i1 %.not.i.i304, label %lean_inc.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.fa = atomicrmw sub ptr %i.ev, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.dh, %bb.dg, %bb.df
  %i.fb = icmp eq i8 %i.dv, 0
  br i1 %i.fb, label %bb.di, label %lean_obj_tag.exit309

lean_inc.exit.thread:                             ; preds = %bb.dd
  %i.fc = icmp eq i8 %i.dv, 0
  br i1 %i.fc, label %lean_dec.exit195, label %lean_obj_tag.exit309.thread

bb.di:                                            ; preds = %lean_inc.exit
  %i.fd = load i32, ptr %i.ev, align 4, !tbaa !12 ; 3 uses
  %i.fe = icmp sgt i32 %i.fd, 1
  br i1 %i.fe, label %bb.dj, label %bb.dk, !prof !13

bb.dj:                                            ; preds = %bb.di
  %i.ff = add nsw i32 %i.fd, -1
  store i32 %i.ff, ptr %i.ev, align 4, !tbaa !12
  br label %lean_dec.exit195

bb.dk:                                            ; preds = %bb.di
  %.not.i203 = icmp eq i32 %i.fd, 0
  br i1 %.not.i203, label %lean_dec.exit195, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ev) #4
  br label %lean_dec.exit195

lean_obj_tag.exit309:                             ; preds = %lean_inc.exit
  %i.fg = getelementptr i8, ptr %i.ev, i64 4
  %.val.i308 = load i32, ptr %i.fg, align 4
  %i.fh = icmp ult i32 %.val.i308, 16777216
  %.0162.in.v = select i1 %i.fh, i64 9, i64 25
  %.0162.in = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.0162.in.v
  %.0162 = load i8, ptr %.0162.in, align 1, !tbaa !18
  %i.fi = icmp eq i8 %.0162, 0
  br i1 %i.fi, label %bb.dm, label %bb.dz

lean_obj_tag.exit309.thread:                      ; preds = %lean_inc.exit.thread
  %i.fj = and i64 %i.ew, 8589934590
  %i.fk = icmp eq i64 %i.fj, 0
  %.0162.in.v358 = select i1 %i.fk, i64 9, i64 25
  %.0162.in359 = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.0162.in.v358
  %.0162360 = load i8, ptr %.0162.in359, align 1, !tbaa !18
  %i.fl = icmp eq i8 %.0162360, 0
  br i1 %i.fl, label %bb.dm, label %lean_dec.exit195

bb.dm:                                            ; preds = %lean_obj_tag.exit309.thread, %lean_obj_tag.exit309
  %.val = load i32, ptr %i.em, align 8, !tbaa !12 ; 4 uses
  %i.fm = icmp eq i32 %.val, 1
  br i1 %i.fm, label %bb.dn, label %bb.ds

bb.dn:                                            ; preds = %bb.dm
  %i.fn = load ptr, ptr %i.eu, align 8, !tbaa !10 ; 4 uses
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = and i64 %i.fo, 1
  %.not.i184 = icmp eq i64 %i.fp, 0
  br i1 %.not.i184, label %bb.do, label %bb.dx

bb.do:                                            ; preds = %bb.dn
  %i.fq = load i32, ptr %i.fn, align 4, !tbaa !12 ; 3 uses
  %i.fr = icmp sgt i32 %i.fq, 1
  br i1 %i.fr, label %bb.dp, label %bb.dq, !prof !13

bb.dp:                                            ; preds = %bb.do
  %i.fs = add nsw i32 %i.fq, -1
  store i32 %i.fs, ptr %i.fn, align 4, !tbaa !12
  br label %bb.dx

bb.dq:                                            ; preds = %bb.do
  %.not.i205 = icmp eq i32 %i.fq, 0
  br i1 %.not.i205, label %bb.dx, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fn) #4
  br label %bb.dx

bb.ds:                                            ; preds = %bb.dm
  br i1 %.not.i299, label %bb.dt, label %bb.dy

bb.dt:                                            ; preds = %bb.ds
  %i.ft = icmp sgt i32 %.val, 1
  br i1 %i.ft, label %bb.du, label %bb.dv, !prof !13

bb.du:                                            ; preds = %bb.dt
  %i.fu = add nsw i32 %.val, -1
  store i32 %i.fu, ptr %i.em, align 8, !tbaa !12
  br label %bb.dy

bb.dv:                                            ; preds = %bb.dt
  %.not.i207 = icmp eq i32 %.val, 0
  br i1 %.not.i207, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.em) #4
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dn, %bb.dp, %bb.dq, %bb.dr
  %i.fv = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ev) #4
  store ptr %i.fv, ptr %i.eu, align 8, !tbaa !10
  br label %lean_dec.exit195

bb.dy:                                            ; preds = %bb.dw, %bb.dv, %bb.du, %bb.ds
  %i.fw = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ev) #4
  %i.fx = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr %i.fw, ptr %i.fy, align 8, !tbaa !10
  br label %lean_dec.exit195

bb.dz:                                            ; preds = %lean_obj_tag.exit309
  %i.fz = load i32, ptr %i.ev, align 4, !tbaa !12 ; 3 uses
  %i.ga = icmp sgt i32 %i.fz, 1
  br i1 %i.ga, label %bb.ea, label %bb.eb, !prof !13

bb.ea:                                            ; preds = %bb.dz
  %i.gb = add nsw i32 %i.fz, -1
  store i32 %i.gb, ptr %i.ev, align 4, !tbaa !12
  br label %lean_dec.exit195

bb.eb:                                            ; preds = %bb.dz
  %.not.i209 = icmp eq i32 %i.fz, 0
  br i1 %.not.i209, label %lean_dec.exit195, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ev) #4
  br label %lean_dec.exit195

bb.ed:                                            ; preds = %lean_obj_tag.exit
  %i.gc = load i32, ptr %9, align 4, !tbaa !12    ; 3 uses
  %i.gd = icmp sgt i32 %i.gc, 1
  br i1 %i.gd, label %bb.ee, label %bb.ef, !prof !13

bb.ee:                                            ; preds = %bb.ed
  %i.ge = add nsw i32 %i.gc, -1
  store i32 %i.ge, ptr %9, align 4, !tbaa !12
  br label %lean_dec_ref.exit228

bb.ef:                                            ; preds = %bb.ed
  %.not.i227 = icmp eq i32 %i.gc, 0
  br i1 %.not.i227, label %lean_dec_ref.exit228, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #4
  br label %lean_dec_ref.exit228

lean_dec_ref.exit228:                             ; preds = %bb.ee, %bb.ef, %bb.eg
  %i.gf = load i32, ptr %8, align 4, !tbaa !12    ; 3 uses
  %i.gg = icmp sgt i32 %i.gf, 1
  br i1 %i.gg, label %bb.eh, label %bb.ei, !prof !13

bb.eh:                                            ; preds = %lean_dec_ref.exit228
  %i.gh = add nsw i32 %i.gf, -1
  store i32 %i.gh, ptr %8, align 4, !tbaa !12
  br label %lean_dec_ref.exit226

bb.ei:                                            ; preds = %lean_dec_ref.exit228
  %.not.i225 = icmp eq i32 %i.gf, 0
  br i1 %.not.i225, label %lean_dec_ref.exit226, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #4
  br label %lean_dec_ref.exit226

lean_dec_ref.exit226:                             ; preds = %bb.eh, %bb.ei, %bb.ej
  %i.gi = load i32, ptr %7, align 4, !tbaa !12    ; 3 uses
  %i.gj = icmp sgt i32 %i.gi, 1
  br i1 %i.gj, label %bb.ek, label %bb.el, !prof !13

bb.ek:                                            ; preds = %lean_dec_ref.exit226
  %i.gk = add nsw i32 %i.gi, -1
  store i32 %i.gk, ptr %7, align 4, !tbaa !12
  br label %lean_dec_ref.exit224

bb.el:                                            ; preds = %lean_dec_ref.exit226
  %.not.i223 = icmp eq i32 %i.gi, 0
  br i1 %.not.i223, label %lean_dec_ref.exit224, label %bb.em

bb.em:                                            ; preds = %bb.el
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #4
  br label %lean_dec_ref.exit224

lean_dec_ref.exit224:                             ; preds = %bb.ek, %bb.el, %bb.em
  %i.gl = load i32, ptr %6, align 4, !tbaa !12    ; 3 uses
  %i.gm = icmp sgt i32 %i.gl, 1
  br i1 %i.gm, label %bb.en, label %bb.eo, !prof !13

bb.en:                                            ; preds = %lean_dec_ref.exit224
  %i.gn = add nsw i32 %i.gl, -1
  store i32 %i.gn, ptr %6, align 4, !tbaa !12
  br label %lean_dec_ref.exit222

bb.eo:                                            ; preds = %lean_dec_ref.exit224
  %.not.i221 = icmp eq i32 %i.gl, 0
  br i1 %.not.i221, label %lean_dec_ref.exit222, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #4
  br label %lean_dec_ref.exit222

lean_dec_ref.exit222:                             ; preds = %bb.en, %bb.eo, %bb.ep
  %i.go = load i32, ptr %5, align 4, !tbaa !12    ; 3 uses
  %i.gp = icmp sgt i32 %i.go, 1
  br i1 %i.gp, label %bb.eq, label %bb.er, !prof !13

bb.eq:                                            ; preds = %lean_dec_ref.exit222
  %i.gq = add nsw i32 %i.go, -1
  store i32 %i.gq, ptr %5, align 4, !tbaa !12
  br label %lean_dec_ref.exit220

bb.er:                                            ; preds = %lean_dec_ref.exit222
  %.not.i219 = icmp eq i32 %i.go, 0
  br i1 %.not.i219, label %lean_dec_ref.exit220, label %bb.es

bb.es:                                            ; preds = %bb.er
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #4
  br label %lean_dec_ref.exit220

lean_dec_ref.exit220:                             ; preds = %bb.eq, %bb.er, %bb.es
  %i.gr = load i32, ptr %4, align 4, !tbaa !12    ; 3 uses
  %i.gs = icmp sgt i32 %i.gr, 1
  br i1 %i.gs, label %bb.et, label %bb.eu, !prof !13

bb.et:                                            ; preds = %lean_dec_ref.exit220
  %i.gt = add nsw i32 %i.gr, -1
  store i32 %i.gt, ptr %4, align 4, !tbaa !12
  br label %lean_dec_ref.exit218

bb.eu:                                            ; preds = %lean_dec_ref.exit220
  %.not.i217 = icmp eq i32 %i.gr, 0
  br i1 %.not.i217, label %lean_dec_ref.exit218, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec_ref.exit218

lean_dec_ref.exit218:                             ; preds = %bb.et, %bb.eu, %bb.ev
  %i.gu = load i32, ptr %3, align 4, !tbaa !12    ; 3 uses
  %i.gv = icmp sgt i32 %i.gu, 1
  br i1 %i.gv, label %bb.ew, label %bb.ex, !prof !13

bb.ew:                                            ; preds = %lean_dec_ref.exit218
  %i.gw = add nsw i32 %i.gu, -1
  store i32 %i.gw, ptr %3, align 4, !tbaa !12
  br label %lean_dec_ref.exit216
end_hunk_6
begin_hunk_7_@l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpAndMatchDecideDecidable:bb.a
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !10 ; 4 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = and i64 %i.bf, 1
  %.not.i.i232 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i232, label %bb.ar, label %lean_dec.exit.i

bb.ar:                                            ; preds = %.preheader.i
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !12 ; 3 uses
  %i.bi = icmp sgt i32 %i.bh, 1
  br i1 %i.bi, label %bb.as, label %bb.at, !prof !13

bb.as:                                            ; preds = %bb.ar
  %i.bj = add nsw i32 %i.bh, -1
  store i32 %i.bj, ptr %i.be, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.at:                                            ; preds = %bb.ar
  %.not.i7.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.be) #4
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.au, %bb.at, %bb.as, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.ao) #4
  br label %lean_dec_ref_known.exit

bb.av:                                            ; preds = %lean_inc.exit152
  %i.bk = icmp sgt i32 %.val.i231, 1
  br i1 %i.bk, label %bb.aw, label %bb.ax, !prof !13

bb.aw:                                            ; preds = %bb.av
  %i.bl = add nsw i32 %.val.i231, -1
  store i32 %i.bl, ptr %i.ao, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.ax:                                            ; preds = %bb.av
  %.not.i8.i = icmp eq i32 %.val.i231, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ao) #4
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.aw, %bb.ax, %bb.ay
  br i1 %.not.i151, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %lean_dec_ref_known.exit
  %i.bm = lshr i64 %i.ay, 1
  %i.bn = trunc i64 %i.bm to i32
  br label %lean_obj_tag.exit236

bb.ba:                                            ; preds = %lean_dec_ref_known.exit
  %i.bo = getelementptr i8, ptr %i.ax, i64 4
  %.val.i235 = load i32, ptr %i.bo, align 4
  %i.bp = lshr i32 %.val.i235, 24
  br label %lean_obj_tag.exit236

lean_obj_tag.exit236:                             ; preds = %bb.az, %bb.ba
  %.0.i234 = phi i32 [ %i.bn, %bb.az ], [ %i.bp, %bb.ba ]
  %i.bq = icmp eq i32 %.0.i234, 0
  br i1 %i.bq, label %bb.bb, label %bb.cl

bb.bb:                                            ; preds = %lean_obj_tag.exit236
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 9
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !18  ; 2 uses
  %.val.i237 = load i32, ptr %i.ax, align 4, !tbaa !12 ; 4 uses
  %i.bt = icmp eq i32 %.val.i237, 1
  br i1 %i.bt, label %.preheader.i239, label %bb.bc

.preheader.i239:                                  ; preds = %bb.bb
  tail call void @lean_free_object(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref_known.exit241

bb.bc:                                            ; preds = %bb.bb
  %i.bu = icmp sgt i32 %.val.i237, 1
  br i1 %i.bu, label %bb.bd, label %bb.be, !prof !13

bb.bd:                                            ; preds = %bb.bc
  %i.bv = add nsw i32 %.val.i237, -1
  store i32 %i.bv, ptr %i.ax, align 4, !tbaa !12
  br label %lean_dec_ref_known.exit241

bb.be:                                            ; preds = %bb.bc
  %.not.i8.i238 = icmp eq i32 %.val.i237, 0
  br i1 %.not.i8.i238, label %lean_dec_ref_known.exit241, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref_known.exit241

lean_dec_ref_known.exit241:                       ; preds = %.preheader.i239, %bb.bd, %bb.be, %bb.bf
  %.val.i.i242 = load i32, ptr %1, align 4, !tbaa !12 ; 3 uses
  %i.bw = icmp sgt i32 %.val.i.i242, 0
  br i1 %i.bw, label %bb.bg, label %bb.bh, !prof !13

bb.bg:                                            ; preds = %lean_dec_ref_known.exit241
  %i.bx = add nuw i32 %.val.i.i242, 1
  store i32 %i.bx, ptr %1, align 4, !tbaa !12
  br label %lean_inc_ref.exit244

bb.bh:                                            ; preds = %lean_dec_ref_known.exit241
  %.not.i.i243 = icmp eq i32 %.val.i.i242, 0
  br i1 %.not.i.i243, label %lean_inc_ref.exit244, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.by = atomicrmw sub ptr %1, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit244

lean_inc_ref.exit244:                             ; preds = %bb.bg, %bb.bh, %bb.bi
  %i.bz = tail call ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_matchDecideDecidable(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef %11) ; 16 uses
  %i.ca = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cb = and i64 %i.ca, 1
  %.not.i245 = icmp eq i64 %i.cb, 0               ; 2 uses
  br i1 %.not.i245, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %lean_inc_ref.exit244
  %i.cc = lshr i64 %i.ca, 1
  %i.cd = trunc i64 %i.cc to i32
  br label %lean_obj_tag.exit248

bb.bk:                                            ; preds = %lean_inc_ref.exit244
  %i.ce = getelementptr i8, ptr %i.bz, i64 4
  %.val.i247 = load i32, ptr %i.ce, align 4
  %i.cf = lshr i32 %.val.i247, 24
  br label %lean_obj_tag.exit248

lean_obj_tag.exit248:                             ; preds = %bb.bj, %bb.bk
  %.0.i246 = phi i32 [ %i.cd, %bb.bj ], [ %i.cf, %bb.bk ]
  %i.cg = icmp eq i32 %.0.i246, 0
  br i1 %i.cg, label %bb.bl, label %lean_dec.exit177

bb.bl:                                            ; preds = %lean_obj_tag.exit248
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !10 ; 15 uses
  %i.cj = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.ck = and i64 %i.cj, 1
  %.not.i149 = icmp eq i64 %i.ck, 0
  br i1 %.not.i149, label %bb.bm, label %lean_inc.exit150.thread

bb.bm:                                            ; preds = %bb.bl
  %.val.i.i249 = load i32, ptr %i.ci, align 4, !tbaa !12 ; 3 uses
  %i.cl = icmp sgt i32 %.val.i.i249, 0
  br i1 %i.cl, label %bb.bn, label %bb.bo, !prof !13

bb.bn:                                            ; preds = %bb.bm
  %i.cm = add nuw i32 %.val.i.i249, 1
  store i32 %i.cm, ptr %i.ci, align 4, !tbaa !12
  br label %lean_inc.exit150

bb.bo:                                            ; preds = %bb.bm
  %.not.i.i250 = icmp eq i32 %.val.i.i249, 0
  br i1 %.not.i.i250, label %lean_inc.exit150, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.cn = atomicrmw sub ptr %i.ci, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit150

lean_inc.exit150:                                 ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.co = icmp eq i8 %i.bs, 0
  br i1 %i.co, label %bb.bq, label %lean_obj_tag.exit255

lean_inc.exit150.thread:                          ; preds = %bb.bl
  %i.cp = icmp eq i8 %i.bs, 0
  br i1 %i.cp, label %lean_dec.exit177, label %lean_obj_tag.exit255.thread

bb.bq:                                            ; preds = %lean_inc.exit150
  %i.cq = load i32, ptr %i.ci, align 4, !tbaa !12 ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 1
  br i1 %i.cr, label %bb.br, label %bb.bs, !prof !13

bb.br:                                            ; preds = %bb.bq
  %i.cs = add nsw i32 %i.cq, -1
  store i32 %i.cs, ptr %i.ci, align 4, !tbaa !12
  br label %lean_dec.exit177

bb.bs:                                            ; preds = %bb.bq
  %.not.i178 = icmp eq i32 %i.cq, 0
  br i1 %.not.i178, label %lean_dec.exit177, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ci) #4
  br label %lean_dec.exit177

lean_obj_tag.exit255:                             ; preds = %lean_inc.exit150
  %i.ct = getelementptr i8, ptr %i.ci, i64 4
  %.val.i254 = load i32, ptr %i.ct, align 4
  %i.cu = icmp ult i32 %.val.i254, 16777216
  %.0148.in.v = select i1 %i.cu, i64 9, i64 25
  %.0148.in = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.0148.in.v
  %.0148 = load i8, ptr %.0148.in, align 1, !tbaa !18
  %i.cv = icmp eq i8 %.0148, 0
  br i1 %i.cv, label %bb.bu, label %bb.ch

lean_obj_tag.exit255.thread:                      ; preds = %lean_inc.exit150.thread
  %i.cw = and i64 %i.cj, 8589934590
  %i.cx = icmp eq i64 %i.cw, 0
  %.0148.in.v309 = select i1 %i.cx, i64 9, i64 25
  %.0148.in310 = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.0148.in.v309
  %.0148311 = load i8, ptr %.0148.in310, align 1, !tbaa !18
  %i.cy = icmp eq i8 %.0148311, 0
  br i1 %i.cy, label %bb.bu, label %lean_dec.exit177

bb.bu:                                            ; preds = %lean_obj_tag.exit255.thread, %lean_obj_tag.exit255
  %.val199 = load i32, ptr %i.bz, align 8, !tbaa !12 ; 4 uses
  %i.cz = icmp eq i32 %.val199, 1
  br i1 %i.cz, label %bb.bv, label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  %i.da = load ptr, ptr %i.ch, align 8, !tbaa !10 ; 4 uses
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = and i64 %i.db, 1
  %.not.i174 = icmp eq i64 %i.dc, 0
  br i1 %.not.i174, label %bb.bw, label %bb.cf

bb.bw:                                            ; preds = %bb.bv
  %i.dd = load i32, ptr %i.da, align 4, !tbaa !12 ; 3 uses
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %bb.bx, label %bb.by, !prof !13

bb.bx:                                            ; preds = %bb.bw
  %i.df = add nsw i32 %i.dd, -1
  store i32 %i.df, ptr %i.da, align 4, !tbaa !12
  br label %bb.cf

bb.by:                                            ; preds = %bb.bw
  %.not.i179 = icmp eq i32 %i.dd, 0
  br i1 %.not.i179, label %bb.cf, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.da) #4
  br label %bb.cf

bb.ca:                                            ; preds = %bb.bu
  br i1 %.not.i245, label %bb.cb, label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  %i.dg = icmp sgt i32 %.val199, 1
  br i1 %i.dg, label %bb.cc, label %bb.cd, !prof !13

bb.cc:                                            ; preds = %bb.cb
  %i.dh = add nsw i32 %.val199, -1
  store i32 %i.dh, ptr %i.bz, align 8, !tbaa !12
  br label %bb.cg

bb.cd:                                            ; preds = %bb.cb
  %.not.i181 = icmp eq i32 %.val199, 0
  br i1 %.not.i181, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bz) #4
  br label %bb.cg

bb.cf:                                            ; preds = %bb.bv, %bb.bx, %bb.by, %bb.bz
  %i.di = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ci) #4
  store ptr %i.di, ptr %i.ch, align 8, !tbaa !10
  br label %lean_dec.exit177

bb.cg:                                            ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.ca
  %i.dj = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ci) #4
  %i.dk = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.dj, ptr %i.dl, align 8, !tbaa !10
  br label %lean_dec.exit177

bb.ch:                                            ; preds = %lean_obj_tag.exit255
  %i.dm = load i32, ptr %i.ci, align 4, !tbaa !12 ; 3 uses
  %i.dn = icmp sgt i32 %i.dm, 1
  br i1 %i.dn, label %bb.ci, label %bb.cj, !prof !13

bb.ci:                                            ; preds = %bb.ch
  %i.do = add nsw i32 %i.dm, -1
  store i32 %i.do, ptr %i.ci, align 4, !tbaa !12
  br label %lean_dec.exit177

bb.cj:                                            ; preds = %bb.ch
  %.not.i183 = icmp eq i32 %i.dm, 0
  br i1 %.not.i183, label %lean_dec.exit177, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ci) #4
  br label %lean_dec.exit177

bb.cl:                                            ; preds = %lean_obj_tag.exit236
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !10 ; 4 uses
  %.val.i.i256 = load i32, ptr %i.dq, align 4, !tbaa !12 ; 3 uses
  %i.dr = icmp sgt i32 %.val.i.i256, 0
  br i1 %i.dr, label %bb.cm, label %bb.cn, !prof !13

bb.cm:                                            ; preds = %bb.cl
  %i.ds = add nuw i32 %.val.i.i256, 1
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !12
  br label %lean_inc_ref.exit258

bb.cn:                                            ; preds = %bb.cl
  %.not.i.i257 = icmp eq i32 %.val.i.i256, 0
  br i1 %.not.i.i257, label %lean_inc_ref.exit258, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.dt = atomicrmw sub ptr %i.dq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit258

lean_inc_ref.exit258:                             ; preds = %bb.cm, %bb.cn, %bb.co
  %i.du = getelementptr inbounds nuw i8, ptr %i.ax, i64 25
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !18  ; 2 uses
  %.val.i259 = load i32, ptr %i.ax, align 8, !tbaa !12 ; 4 uses
  %i.dw = icmp eq i32 %.val.i259, 1
  br i1 %i.dw, label %.preheader.i261.preheader, label %bb.cx

.preheader.i261.preheader:                        ; preds = %lean_inc_ref.exit258
  %i.dx = load ptr, ptr %i.dp, align 8, !tbaa !10 ; 4 uses
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = and i64 %i.dy, 1
  %.not.i.i263 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i263, label %bb.cp, label %lean_dec.exit.i264

bb.cp:                                            ; preds = %.preheader.i261.preheader
  %i.ea = load i32, ptr %i.dx, align 4, !tbaa !12 ; 3 uses
  %i.eb = icmp sgt i32 %i.ea, 1
  br i1 %i.eb, label %bb.cq, label %bb.cr, !prof !13

bb.cq:                                            ; preds = %bb.cp
  %i.ec = add nsw i32 %i.ea, -1
  store i32 %i.ec, ptr %i.dx, align 4, !tbaa !12
  br label %lean_dec.exit.i264

bb.cr:                                            ; preds = %bb.cp
  %.not.i7.i268 = icmp eq i32 %i.ea, 0
  br i1 %.not.i7.i268, label %lean_dec.exit.i264, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dx) #4
  br label %lean_dec.exit.i264

lean_dec.exit.i264:                               ; preds = %bb.cs, %bb.cr, %bb.cq, %.preheader.i261.preheader
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !10 ; 4 uses
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = and i64 %i.ef, 1
  %.not.i.i263.1 = icmp eq i64 %i.eg, 0
  br i1 %.not.i.i263.1, label %bb.ct, label %lean_dec.exit.i264.1

bb.ct:                                            ; preds = %lean_dec.exit.i264
  %i.eh = load i32, ptr %i.ee, align 4, !tbaa !12 ; 3 uses
  %i.ei = icmp sgt i32 %i.eh, 1
  br i1 %i.ei, label %bb.cw, label %bb.cu, !prof !13

bb.cu:                                            ; preds = %bb.ct
  %.not.i7.i268.1 = icmp eq i32 %i.eh, 0
  br i1 %.not.i7.i268.1, label %lean_dec.exit.i264.1, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ee) #4
  br label %lean_dec.exit.i264.1

bb.cw:                                            ; preds = %bb.ct
  %i.ej = add nsw i32 %i.eh, -1
  store i32 %i.ej, ptr %i.ee, align 4, !tbaa !12
  br label %lean_dec.exit.i264.1

lean_dec.exit.i264.1:                             ; preds = %bb.cw, %bb.cv, %bb.cu, %lean_dec.exit.i264
  tail call void @lean_free_object(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref_known.exit269

bb.cx:                                            ; preds = %lean_inc_ref.exit258
  %i.ek = icmp sgt i32 %.val.i259, 1
  br i1 %i.ek, label %bb.cy, label %bb.cz, !prof !13

bb.cy:                                            ; preds = %bb.cx
  %i.el = add nsw i32 %.val.i259, -1
  store i32 %i.el, ptr %i.ax, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit269

bb.cz:                                            ; preds = %bb.cx
  %.not.i8.i260 = icmp eq i32 %.val.i259, 0
  br i1 %.not.i8.i260, label %lean_dec_ref_known.exit269, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref_known.exit269

lean_dec_ref_known.exit269:                       ; preds = %lean_dec.exit.i264.1, %bb.cy, %bb.cz, %bb.da
  %i.em = tail call ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_matchDecideDecidable(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.dq, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6, ptr noundef %7, ptr noundef nonnull %8, ptr noundef %9, ptr noundef nonnull %10, ptr noundef %11) ; 16 uses
  %i.en = ptrtoint ptr %i.em to i64               ; 2 uses
  %i.eo = and i64 %i.en, 1
  %.not.i270 = icmp eq i64 %i.eo, 0               ; 2 uses
  br i1 %.not.i270, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %lean_dec_ref_known.exit269
  %i.ep = lshr i64 %i.en, 1
  %i.eq = trunc i64 %i.ep to i32
  br label %lean_obj_tag.exit273

bb.dc:                                            ; preds = %lean_dec_ref_known.exit269
  %i.er = getelementptr i8, ptr %i.em, i64 4
  %.val.i272 = load i32, ptr %i.er, align 4
  %i.es = lshr i32 %.val.i272, 24
  br label %lean_obj_tag.exit273

lean_obj_tag.exit273:                             ; preds = %bb.db, %bb.dc
  %.0.i271 = phi i32 [ %i.eq, %bb.db ], [ %i.es, %bb.dc ]
  %i.et = icmp eq i32 %.0.i271, 0
  br i1 %i.et, label %bb.dd, label %lean_dec.exit177

bb.dd:                                            ; preds = %lean_obj_tag.exit273
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !10 ; 15 uses
  %i.ew = ptrtoint ptr %i.ev to i64               ; 2 uses
  %i.ex = and i64 %i.ew, 1
  %.not.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i, label %bb.de, label %lean_inc.exit.thread

bb.de:                                            ; preds = %bb.dd
  %.val.i.i274 = load i32, ptr %i.ev, align 4, !tbaa !12 ; 3 uses
  %i.ey = icmp sgt i32 %.val.i.i274, 0
  br i1 %i.ey, label %bb.df, label %bb.dg, !prof !13

bb.df:                                            ; preds = %bb.de
  %i.ez = add nuw i32 %.val.i.i274, 1
  store i32 %i.ez, ptr %i.ev, align 4, !tbaa !12
  br label %lean_inc.exit

bb.dg:                                            ; preds = %bb.de
  %.not.i.i275 = icmp eq i32 %.val.i.i274, 0
  br i1 %.not.i.i275, label %lean_inc.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.fa = atomicrmw sub ptr %i.ev, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.dh, %bb.dg, %bb.df
  %i.fb = icmp eq i8 %i.dv, 0
  br i1 %i.fb, label %bb.di, label %lean_obj_tag.exit280

lean_inc.exit.thread:                             ; preds = %bb.dd
  %i.fc = icmp eq i8 %i.dv, 0
  br i1 %i.fc, label %lean_dec.exit177, label %lean_obj_tag.exit280.thread

bb.di:                                            ; preds = %lean_inc.exit
  %i.fd = load i32, ptr %i.ev, align 4, !tbaa !12 ; 3 uses
  %i.fe = icmp sgt i32 %i.fd, 1
  br i1 %i.fe, label %bb.dj, label %bb.dk, !prof !13

bb.dj:                                            ; preds = %bb.di
  %i.ff = add nsw i32 %i.fd, -1
  store i32 %i.ff, ptr %i.ev, align 4, !tbaa !12
  br label %lean_dec.exit177

bb.dk:                                            ; preds = %bb.di
  %.not.i185 = icmp eq i32 %i.fd, 0
  br i1 %.not.i185, label %lean_dec.exit177, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ev) #4
  br label %lean_dec.exit177

lean_obj_tag.exit280:                             ; preds = %lean_inc.exit
  %i.fg = getelementptr i8, ptr %i.ev, i64 4
  %.val.i279 = load i32, ptr %i.fg, align 4
  %i.fh = icmp ult i32 %.val.i279, 16777216
  %.0144.in.v = select i1 %i.fh, i64 9, i64 25
  %.0144.in = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.0144.in.v
  %.0144 = load i8, ptr %.0144.in, align 1, !tbaa !18
  %i.fi = icmp eq i8 %.0144, 0
  br i1 %i.fi, label %bb.dm, label %bb.dz

lean_obj_tag.exit280.thread:                      ; preds = %lean_inc.exit.thread
  %i.fj = and i64 %i.ew, 8589934590
  %i.fk = icmp eq i64 %i.fj, 0
  %.0144.in.v315 = select i1 %i.fk, i64 9, i64 25
  %.0144.in316 = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.0144.in.v315
  %.0144317 = load i8, ptr %.0144.in316, align 1, !tbaa !18
  %i.fl = icmp eq i8 %.0144317, 0
  br i1 %i.fl, label %bb.dm, label %lean_dec.exit177

bb.dm:                                            ; preds = %lean_obj_tag.exit280.thread, %lean_obj_tag.exit280
  %.val = load i32, ptr %i.em, align 8, !tbaa !12 ; 4 uses
  %i.fm = icmp eq i32 %.val, 1
  br i1 %i.fm, label %bb.dn, label %bb.ds

bb.dn:                                            ; preds = %bb.dm
  %i.fn = load ptr, ptr %i.eu, align 8, !tbaa !10 ; 4 uses
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = and i64 %i.fo, 1
  %.not.i166 = icmp eq i64 %i.fp, 0
  br i1 %.not.i166, label %bb.do, label %bb.dx

bb.do:                                            ; preds = %bb.dn
  %i.fq = load i32, ptr %i.fn, align 4, !tbaa !12 ; 3 uses
  %i.fr = icmp sgt i32 %i.fq, 1
  br i1 %i.fr, label %bb.dp, label %bb.dq, !prof !13

bb.dp:                                            ; preds = %bb.do
  %i.fs = add nsw i32 %i.fq, -1
  store i32 %i.fs, ptr %i.fn, align 4, !tbaa !12
  br label %bb.dx

bb.dq:                                            ; preds = %bb.do
  %.not.i187 = icmp eq i32 %i.fq, 0
  br i1 %.not.i187, label %bb.dx, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fn) #4
  br label %bb.dx

bb.ds:                                            ; preds = %bb.dm
  br i1 %.not.i270, label %bb.dt, label %bb.dy

bb.dt:                                            ; preds = %bb.ds
  %i.ft = icmp sgt i32 %.val, 1
  br i1 %i.ft, label %bb.du, label %bb.dv, !prof !13

bb.du:                                            ; preds = %bb.dt
  %i.fu = add nsw i32 %.val, -1
  store i32 %i.fu, ptr %i.em, align 8, !tbaa !12
  br label %bb.dy

bb.dv:                                            ; preds = %bb.dt
  %.not.i189 = icmp eq i32 %.val, 0
  br i1 %.not.i189, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.em) #4
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dn, %bb.dp, %bb.dq, %bb.dr
  %i.fv = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ev) #4
  store ptr %i.fv, ptr %i.eu, align 8, !tbaa !10
  br label %lean_dec.exit177

bb.dy:                                            ; preds = %bb.dw, %bb.dv, %bb.du, %bb.ds
  %i.fw = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ev) #4
  %i.fx = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr %i.fw, ptr %i.fy, align 8, !tbaa !10
  br label %lean_dec.exit177

bb.dz:                                            ; preds = %lean_obj_tag.exit280
  %i.fz = load i32, ptr %i.ev, align 4, !tbaa !12 ; 3 uses
  %i.ga = icmp sgt i32 %i.fz, 1
  br i1 %i.ga, label %bb.ea, label %bb.eb, !prof !13

bb.ea:                                            ; preds = %bb.dz
  %i.gb = add nsw i32 %i.fz, -1
  store i32 %i.gb, ptr %i.ev, align 4, !tbaa !12
  br label %lean_dec.exit177

bb.eb:                                            ; preds = %bb.dz
  %.not.i191 = icmp eq i32 %i.fz, 0
  br i1 %.not.i191, label %lean_dec.exit177, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ev) #4
  br label %lean_dec.exit177

bb.ed:                                            ; preds = %lean_obj_tag.exit
  %i.gc = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.gd = icmp sgt i32 %i.gc, 1
  br i1 %i.gd, label %bb.ee, label %bb.ef, !prof !13

bb.ee:                                            ; preds = %bb.ed
  %i.ge = add nsw i32 %i.gc, -1
  store i32 %i.ge, ptr %2, align 4, !tbaa !12
  br label %lean_dec_ref.exit198

bb.ef:                                            ; preds = %bb.ed
  %.not.i197 = icmp eq i32 %i.gc, 0
  br i1 %.not.i197, label %lean_dec_ref.exit198, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec_ref.exit198

lean_dec_ref.exit198:                             ; preds = %bb.ee, %bb.ef, %bb.eg
  %i.gf = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.gg = icmp sgt i32 %i.gf, 1
  br i1 %i.gg, label %bb.eh, label %bb.ei, !prof !13

bb.eh:                                            ; preds = %lean_dec_ref.exit198
  %i.gh = add nsw i32 %i.gf, -1
  store i32 %i.gh, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit196

bb.ei:                                            ; preds = %lean_dec_ref.exit198
  %.not.i195 = icmp eq i32 %i.gf, 0
  br i1 %.not.i195, label %lean_dec_ref.exit196, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec_ref.exit196

lean_dec_ref.exit196:                             ; preds = %bb.eh, %bb.ei, %bb.ej
  %i.gi = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.gj = icmp sgt i32 %i.gi, 1
  br i1 %i.gj, label %bb.ek, label %bb.el, !prof !13

bb.ek:                                            ; preds = %lean_dec_ref.exit196
  %i.gk = add nsw i32 %i.gi, -1
  store i32 %i.gk, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit177

bb.el:                                            ; preds = %lean_dec_ref.exit196
  %.not.i193 = icmp eq i32 %i.gi, 0
  br i1 %.not.i193, label %lean_dec.exit177, label %bb.em

bb.em:                                            ; preds = %bb.el
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec.exit177

lean_dec.exit177:                                 ; preds = %lean_obj_tag.exit280.thread, %lean_obj_tag.exit255.thread, %lean_inc.exit.thread, %lean_inc.exit150.thread, %bb.em, %bb.el, %bb.ek, %bb.ea, %bb.eb, %bb.ec, %bb.dj, %bb.dk, %bb.dl, %bb.ci, %bb.cj, %bb.ck, %bb.br, %bb.bs, %bb.bt, %lean_obj_tag.exit248, %bb.cg, %bb.cf, %lean_obj_tag.exit273, %bb.dy, %bb.dx
  %.9 = phi ptr [ %i.em, %lean_obj_tag.exit280.thread ], [ %i.bz, %lean_obj_tag.exit248 ], [ %i.dk, %bb.cg ], [ %i.em, %lean_obj_tag.exit273 ], [ %i.ao, %bb.el ], [ %i.bz, %bb.cf ], [ %i.fx, %bb.dy ], [ %i.bz, %lean_obj_tag.exit255.thread ], [ %i.em, %lean_inc.exit.thread ], [ %i.em, %bb.dx ], [ %i.bz, %bb.bt ], [ %i.bz, %bb.bs ], [ %i.bz, %bb.br ], [ %i.ao, %bb.em ], [ %i.bz, %bb.ck ], [ %i.bz, %bb.cj ], [ %i.bz, %bb.ci ], [ %i.em, %bb.dl ], [ %i.em, %bb.dk ], [ %i.em, %bb.dj ], [ %i.bz, %lean_inc.exit150.thread ], [ %i.em, %bb.ec ], [ %i.em, %bb.eb ], [ %i.em, %bb.ea ], [ %i.ao, %bb.ek ]
  ret ptr %.9
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpAndMatchDecideDecidable___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr nofree noundef readnone captures(none) %12) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpAndMatchDecideDecidable(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11)
  %i.b = ptrtoint ptr %11 to i64
  %i.c = and i64 %i.b, 1
  %.not.i28 = icmp eq i64 %i.c, 0
  br i1 %.not.i28, label %bb.b, label %lean_dec.exit29

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %11, align 4, !tbaa !12    ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %11, align 4, !tbaa !12
  br label %lean_dec.exit29

bb.d:                                             ; preds = %bb.b
  %.not.i30 = icmp eq i32 %i.d, 0
  br i1 %.not.i30, label %lean_dec.exit29, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %11) #4
  br label %lean_dec.exit29

lean_dec.exit29:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %10, align 4, !tbaa !12    ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %lean_dec.exit29
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %10, align 4, !tbaa !12
  br label %lean_dec_ref.exit46

bb.g:                                             ; preds = %lean_dec.exit29
  %.not.i45 = icmp eq i32 %i.g, 0
  br i1 %.not.i45, label %lean_dec_ref.exit46, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #4
  br label %lean_dec_ref.exit46

lean_dec_ref.exit46:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %9 to i64
  %i.k = and i64 %i.j, 1
  %.not.i26 = icmp eq i64 %i.k, 0
  br i1 %.not.i26, label %bb.i, label %lean_dec.exit27

bb.i:                                             ; preds = %lean_dec_ref.exit46
  %i.l = load i32, ptr %9, align 4, !tbaa !12     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
end_hunk_7
begin_hunk_8_@l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpAndMatchDecideDecidableCongr:bb.a
  %i.bb = add nuw i32 %.val.i.i243, 1
  store i32 %i.bb, ptr %i.ax, align 4, !tbaa !12
  br label %lean_inc.exit159

bb.ap:                                            ; preds = %bb.an
  %.not.i.i244 = icmp eq i32 %.val.i.i243, 0
  br i1 %.not.i.i244, label %lean_inc.exit159, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bc = atomicrmw sub ptr %i.ax, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit159

lean_inc.exit159:                                 ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am
  %.val.i246 = load i32, ptr %i.ao, align 8, !tbaa !12 ; 4 uses
  %i.bd = icmp eq i32 %.val.i246, 1
  br i1 %i.bd, label %.preheader.i, label %bb.av

.preheader.i:                                     ; preds = %lean_inc.exit159
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !10 ; 4 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = and i64 %i.bf, 1
  %.not.i.i247 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i247, label %bb.ar, label %lean_dec.exit.i

bb.ar:                                            ; preds = %.preheader.i
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !12 ; 3 uses
  %i.bi = icmp sgt i32 %i.bh, 1
  br i1 %i.bi, label %bb.as, label %bb.at, !prof !13

bb.as:                                            ; preds = %bb.ar
  %i.bj = add nsw i32 %i.bh, -1
  store i32 %i.bj, ptr %i.be, align 4, !tbaa !12
  br label %lean_dec.exit.i

bb.at:                                            ; preds = %bb.ar
  %.not.i7.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.be) #4
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.au, %bb.at, %bb.as, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.ao) #4
  br label %lean_dec_ref_known.exit

bb.av:                                            ; preds = %lean_inc.exit159
  %i.bk = icmp sgt i32 %.val.i246, 1
  br i1 %i.bk, label %bb.aw, label %bb.ax, !prof !13

bb.aw:                                            ; preds = %bb.av
  %i.bl = add nsw i32 %.val.i246, -1
  store i32 %i.bl, ptr %i.ao, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit

bb.ax:                                            ; preds = %bb.av
  %.not.i8.i = icmp eq i32 %.val.i246, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ao) #4
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.aw, %bb.ax, %bb.ay
  br i1 %.not.i158, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %lean_dec_ref_known.exit
  %i.bm = lshr i64 %i.ay, 1
  %i.bn = trunc i64 %i.bm to i32
  br label %lean_obj_tag.exit251

bb.ba:                                            ; preds = %lean_dec_ref_known.exit
  %i.bo = getelementptr i8, ptr %i.ax, i64 4
  %.val.i250 = load i32, ptr %i.bo, align 4
  %i.bp = lshr i32 %.val.i250, 24
  br label %lean_obj_tag.exit251

lean_obj_tag.exit251:                             ; preds = %bb.az, %bb.ba
  %.0.i249 = phi i32 [ %i.bn, %bb.az ], [ %i.bp, %bb.ba ]
  %i.bq = icmp eq i32 %.0.i249, 0
  br i1 %i.bq, label %bb.bb, label %bb.ci

bb.bb:                                            ; preds = %lean_obj_tag.exit251
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 9
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !18  ; 2 uses
  %.val.i252 = load i32, ptr %i.ax, align 4, !tbaa !12 ; 4 uses
  %i.bt = icmp eq i32 %.val.i252, 1
  br i1 %i.bt, label %.preheader.i254, label %bb.bc

.preheader.i254:                                  ; preds = %bb.bb
  tail call void @lean_free_object(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref_known.exit256

bb.bc:                                            ; preds = %bb.bb
  %i.bu = icmp sgt i32 %.val.i252, 1
  br i1 %i.bu, label %bb.bd, label %bb.be, !prof !13

bb.bd:                                            ; preds = %bb.bc
  %i.bv = add nsw i32 %.val.i252, -1
  store i32 %i.bv, ptr %i.ax, align 4, !tbaa !12
  br label %lean_dec_ref_known.exit256

bb.be:                                            ; preds = %bb.bc
  %.not.i8.i253 = icmp eq i32 %.val.i252, 0
  br i1 %.not.i8.i253, label %lean_dec_ref_known.exit256, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref_known.exit256

lean_dec_ref_known.exit256:                       ; preds = %.preheader.i254, %bb.bd, %bb.be, %bb.bf
  %i.bw = tail call ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_matchDecideDecidableCongr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14) ; 16 uses
  %i.bx = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.by = and i64 %i.bx, 1
  %.not.i257 = icmp eq i64 %i.by, 0               ; 2 uses
  br i1 %.not.i257, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %lean_dec_ref_known.exit256
  %i.bz = lshr i64 %i.bx, 1
  %i.ca = trunc i64 %i.bz to i32
  br label %lean_obj_tag.exit260

bb.bh:                                            ; preds = %lean_dec_ref_known.exit256
  %i.cb = getelementptr i8, ptr %i.bw, i64 4
  %.val.i259 = load i32, ptr %i.cb, align 4
  %i.cc = lshr i32 %.val.i259, 24
  br label %lean_obj_tag.exit260

lean_obj_tag.exit260:                             ; preds = %bb.bg, %bb.bh
  %.0.i258 = phi i32 [ %i.ca, %bb.bg ], [ %i.cc, %bb.bh ]
  %i.cd = icmp eq i32 %.0.i258, 0
  br i1 %i.cd, label %bb.bi, label %lean_dec.exit184

bb.bi:                                            ; preds = %lean_obj_tag.exit260
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !10 ; 15 uses
  %i.cg = ptrtoint ptr %i.cf to i64               ; 2 uses
  %i.ch = and i64 %i.cg, 1
  %.not.i156 = icmp eq i64 %i.ch, 0
  br i1 %.not.i156, label %bb.bj, label %lean_inc.exit157.thread

bb.bj:                                            ; preds = %bb.bi
  %.val.i.i261 = load i32, ptr %i.cf, align 4, !tbaa !12 ; 3 uses
  %i.ci = icmp sgt i32 %.val.i.i261, 0
  br i1 %i.ci, label %bb.bk, label %bb.bl, !prof !13

bb.bk:                                            ; preds = %bb.bj
  %i.cj = add nuw i32 %.val.i.i261, 1
  store i32 %i.cj, ptr %i.cf, align 4, !tbaa !12
  br label %lean_inc.exit157

bb.bl:                                            ; preds = %bb.bj
  %.not.i.i262 = icmp eq i32 %.val.i.i261, 0
  br i1 %.not.i.i262, label %lean_inc.exit157, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ck = atomicrmw sub ptr %i.cf, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit157

lean_inc.exit157:                                 ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.cl = icmp eq i8 %i.bs, 0
  br i1 %i.cl, label %bb.bn, label %lean_obj_tag.exit267

lean_inc.exit157.thread:                          ; preds = %bb.bi
  %i.cm = icmp eq i8 %i.bs, 0
  br i1 %i.cm, label %lean_dec.exit184, label %lean_obj_tag.exit267.thread

bb.bn:                                            ; preds = %lean_inc.exit157
  %i.cn = load i32, ptr %i.cf, align 4, !tbaa !12 ; 3 uses
  %i.co = icmp sgt i32 %i.cn, 1
  br i1 %i.co, label %bb.bo, label %bb.bp, !prof !13

bb.bo:                                            ; preds = %bb.bn
  %i.cp = add nsw i32 %i.cn, -1
  store i32 %i.cp, ptr %i.cf, align 4, !tbaa !12
  br label %lean_dec.exit184

bb.bp:                                            ; preds = %bb.bn
  %.not.i185 = icmp eq i32 %i.cn, 0
  br i1 %.not.i185, label %lean_dec.exit184, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cf) #4
  br label %lean_dec.exit184

lean_obj_tag.exit267:                             ; preds = %lean_inc.exit157
  %i.cq = getelementptr i8, ptr %i.cf, i64 4
  %.val.i266 = load i32, ptr %i.cq, align 4
  %i.cr = icmp ult i32 %.val.i266, 16777216
  %.0155.in.v = select i1 %i.cr, i64 9, i64 25
  %.0155.in = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.0155.in.v
  %.0155 = load i8, ptr %.0155.in, align 1, !tbaa !18
  %i.cs = icmp eq i8 %.0155, 0
  br i1 %i.cs, label %bb.br, label %bb.ce

lean_obj_tag.exit267.thread:                      ; preds = %lean_inc.exit157.thread
  %i.ct = and i64 %i.cg, 8589934590
  %i.cu = icmp eq i64 %i.ct, 0
  %.0155.in.v329 = select i1 %i.cu, i64 9, i64 25
  %.0155.in330 = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.0155.in.v329
  %.0155331 = load i8, ptr %.0155.in330, align 1, !tbaa !18
  %i.cv = icmp eq i8 %.0155331, 0
  br i1 %i.cv, label %bb.br, label %lean_dec.exit184

bb.br:                                            ; preds = %lean_obj_tag.exit267.thread, %lean_obj_tag.exit267
  %.val214 = load i32, ptr %i.bw, align 8, !tbaa !12 ; 4 uses
  %i.cw = icmp eq i32 %.val214, 1
  br i1 %i.cw, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %bb.br
  %i.cx = load ptr, ptr %i.ce, align 8, !tbaa !10 ; 4 uses
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = and i64 %i.cy, 1
  %.not.i181 = icmp eq i64 %i.cz, 0
  br i1 %.not.i181, label %bb.bt, label %bb.cc

bb.bt:                                            ; preds = %bb.bs
  %i.da = load i32, ptr %i.cx, align 4, !tbaa !12 ; 3 uses
  %i.db = icmp sgt i32 %i.da, 1
  br i1 %i.db, label %bb.bu, label %bb.bv, !prof !13

bb.bu:                                            ; preds = %bb.bt
  %i.dc = add nsw i32 %i.da, -1
  store i32 %i.dc, ptr %i.cx, align 4, !tbaa !12
  br label %bb.cc

bb.bv:                                            ; preds = %bb.bt
  %.not.i186 = icmp eq i32 %i.da, 0
  br i1 %.not.i186, label %bb.cc, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cx) #4
  br label %bb.cc

bb.bx:                                            ; preds = %bb.br
  br i1 %.not.i257, label %bb.by, label %bb.cd

bb.by:                                            ; preds = %bb.bx
  %i.dd = icmp sgt i32 %.val214, 1
  br i1 %i.dd, label %bb.bz, label %bb.ca, !prof !13

bb.bz:                                            ; preds = %bb.by
  %i.de = add nsw i32 %.val214, -1
  store i32 %i.de, ptr %i.bw, align 8, !tbaa !12
  br label %bb.cd

bb.ca:                                            ; preds = %bb.by
  %.not.i188 = icmp eq i32 %.val214, 0
  br i1 %.not.i188, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bw) #4
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bs, %bb.bu, %bb.bv, %bb.bw
  %i.df = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.cf) #4
  store ptr %i.df, ptr %i.ce, align 8, !tbaa !10
  br label %lean_dec.exit184

bb.cd:                                            ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.bx
  %i.dg = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.cf) #4
  %i.dh = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.dg, ptr %i.di, align 8, !tbaa !10
  br label %lean_dec.exit184

bb.ce:                                            ; preds = %lean_obj_tag.exit267
  %i.dj = load i32, ptr %i.cf, align 4, !tbaa !12 ; 3 uses
  %i.dk = icmp sgt i32 %i.dj, 1
  br i1 %i.dk, label %bb.cf, label %bb.cg, !prof !13

bb.cf:                                            ; preds = %bb.ce
  %i.dl = add nsw i32 %i.dj, -1
  store i32 %i.dl, ptr %i.cf, align 4, !tbaa !12
  br label %lean_dec.exit184

bb.cg:                                            ; preds = %bb.ce
  %.not.i190 = icmp eq i32 %i.dj, 0
  br i1 %.not.i190, label %lean_dec.exit184, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cf) #4
  br label %lean_dec.exit184

bb.ci:                                            ; preds = %lean_obj_tag.exit251
  %i.dm = load i32, ptr %4, align 4, !tbaa !12    ; 3 uses
  %i.dn = icmp sgt i32 %i.dm, 1
  br i1 %i.dn, label %bb.cj, label %bb.ck, !prof !13

bb.cj:                                            ; preds = %bb.ci
  %i.do = add nsw i32 %i.dm, -1
  store i32 %i.do, ptr %4, align 4, !tbaa !12
  br label %lean_dec_ref.exit213

bb.ck:                                            ; preds = %bb.ci
  %.not.i212 = icmp eq i32 %i.dm, 0
  br i1 %.not.i212, label %lean_dec_ref.exit213, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec_ref.exit213

lean_dec_ref.exit213:                             ; preds = %bb.cj, %bb.ck, %bb.cl
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !10 ; 4 uses
  %.val.i.i268 = load i32, ptr %i.dq, align 4, !tbaa !12 ; 3 uses
  %i.dr = icmp sgt i32 %.val.i.i268, 0
  br i1 %i.dr, label %bb.cm, label %bb.cn, !prof !13

bb.cm:                                            ; preds = %lean_dec_ref.exit213
  %i.ds = add nuw i32 %.val.i.i268, 1
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !12
  br label %lean_inc_ref.exit270

bb.cn:                                            ; preds = %lean_dec_ref.exit213
  %.not.i.i269 = icmp eq i32 %.val.i.i268, 0
  br i1 %.not.i.i269, label %lean_inc_ref.exit270, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.dt = atomicrmw sub ptr %i.dq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit270

lean_inc_ref.exit270:                             ; preds = %bb.cm, %bb.cn, %bb.co
  %i.du = getelementptr inbounds nuw i8, ptr %i.ax, i64 25
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !18  ; 2 uses
  %.val.i271 = load i32, ptr %i.ax, align 8, !tbaa !12 ; 4 uses
  %i.dw = icmp eq i32 %.val.i271, 1
  br i1 %i.dw, label %.preheader.i273.preheader, label %bb.cx

.preheader.i273.preheader:                        ; preds = %lean_inc_ref.exit270
  %i.dx = load ptr, ptr %i.dp, align 8, !tbaa !10 ; 4 uses
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = and i64 %i.dy, 1
  %.not.i.i275 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i275, label %bb.cp, label %lean_dec.exit.i276

bb.cp:                                            ; preds = %.preheader.i273.preheader
  %i.ea = load i32, ptr %i.dx, align 4, !tbaa !12 ; 3 uses
  %i.eb = icmp sgt i32 %i.ea, 1
  br i1 %i.eb, label %bb.cq, label %bb.cr, !prof !13

bb.cq:                                            ; preds = %bb.cp
  %i.ec = add nsw i32 %i.ea, -1
  store i32 %i.ec, ptr %i.dx, align 4, !tbaa !12
  br label %lean_dec.exit.i276

bb.cr:                                            ; preds = %bb.cp
  %.not.i7.i280 = icmp eq i32 %i.ea, 0
  br i1 %.not.i7.i280, label %lean_dec.exit.i276, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dx) #4
  br label %lean_dec.exit.i276

lean_dec.exit.i276:                               ; preds = %bb.cs, %bb.cr, %bb.cq, %.preheader.i273.preheader
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !10 ; 4 uses
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = and i64 %i.ef, 1
  %.not.i.i275.1 = icmp eq i64 %i.eg, 0
  br i1 %.not.i.i275.1, label %bb.ct, label %lean_dec.exit.i276.1

bb.ct:                                            ; preds = %lean_dec.exit.i276
  %i.eh = load i32, ptr %i.ee, align 4, !tbaa !12 ; 3 uses
  %i.ei = icmp sgt i32 %i.eh, 1
  br i1 %i.ei, label %bb.cw, label %bb.cu, !prof !13

bb.cu:                                            ; preds = %bb.ct
  %.not.i7.i280.1 = icmp eq i32 %i.eh, 0
  br i1 %.not.i7.i280.1, label %lean_dec.exit.i276.1, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ee) #4
  br label %lean_dec.exit.i276.1

bb.cw:                                            ; preds = %bb.ct
  %i.ej = add nsw i32 %i.eh, -1
  store i32 %i.ej, ptr %i.ee, align 4, !tbaa !12
  br label %lean_dec.exit.i276.1

lean_dec.exit.i276.1:                             ; preds = %bb.cw, %bb.cv, %bb.cu, %lean_dec.exit.i276
  tail call void @lean_free_object(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref_known.exit281

bb.cx:                                            ; preds = %lean_inc_ref.exit270
  %i.ek = icmp sgt i32 %.val.i271, 1
  br i1 %i.ek, label %bb.cy, label %bb.cz, !prof !13

bb.cy:                                            ; preds = %bb.cx
  %i.el = add nsw i32 %.val.i271, -1
  store i32 %i.el, ptr %i.ax, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit281

bb.cz:                                            ; preds = %bb.cx
  %.not.i8.i272 = icmp eq i32 %.val.i271, 0
  br i1 %.not.i8.i272, label %lean_dec_ref_known.exit281, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ax) #4
  br label %lean_dec_ref_known.exit281

lean_dec_ref_known.exit281:                       ; preds = %lean_dec.exit.i276.1, %bb.cy, %bb.cz, %bb.da
  %i.em = tail call ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_matchDecideDecidableCongr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.dq, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10, ptr noundef nonnull %11, ptr noundef %12, ptr noundef nonnull %13, ptr noundef %14) ; 16 uses
  %i.en = ptrtoint ptr %i.em to i64               ; 2 uses
  %i.eo = and i64 %i.en, 1
  %.not.i282 = icmp eq i64 %i.eo, 0               ; 2 uses
  br i1 %.not.i282, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %lean_dec_ref_known.exit281
  %i.ep = lshr i64 %i.en, 1
  %i.eq = trunc i64 %i.ep to i32
  br label %lean_obj_tag.exit285

bb.dc:                                            ; preds = %lean_dec_ref_known.exit281
  %i.er = getelementptr i8, ptr %i.em, i64 4
  %.val.i284 = load i32, ptr %i.er, align 4
  %i.es = lshr i32 %.val.i284, 24
  br label %lean_obj_tag.exit285

lean_obj_tag.exit285:                             ; preds = %bb.db, %bb.dc
  %.0.i283 = phi i32 [ %i.eq, %bb.db ], [ %i.es, %bb.dc ]
  %i.et = icmp eq i32 %.0.i283, 0
  br i1 %i.et, label %bb.dd, label %lean_dec.exit184

bb.dd:                                            ; preds = %lean_obj_tag.exit285
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !10 ; 15 uses
  %i.ew = ptrtoint ptr %i.ev to i64               ; 2 uses
  %i.ex = and i64 %i.ew, 1
  %.not.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i, label %bb.de, label %lean_inc.exit.thread

bb.de:                                            ; preds = %bb.dd
  %.val.i.i286 = load i32, ptr %i.ev, align 4, !tbaa !12 ; 3 uses
  %i.ey = icmp sgt i32 %.val.i.i286, 0
  br i1 %i.ey, label %bb.df, label %bb.dg, !prof !13

bb.df:                                            ; preds = %bb.de
  %i.ez = add nuw i32 %.val.i.i286, 1
  store i32 %i.ez, ptr %i.ev, align 4, !tbaa !12
  br label %lean_inc.exit

bb.dg:                                            ; preds = %bb.de
  %.not.i.i287 = icmp eq i32 %.val.i.i286, 0
  br i1 %.not.i.i287, label %lean_inc.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.fa = atomicrmw sub ptr %i.ev, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.dh, %bb.dg, %bb.df
  %i.fb = icmp eq i8 %i.dv, 0
  br i1 %i.fb, label %bb.di, label %lean_obj_tag.exit292

lean_inc.exit.thread:                             ; preds = %bb.dd
  %i.fc = icmp eq i8 %i.dv, 0
  br i1 %i.fc, label %lean_dec.exit184, label %lean_obj_tag.exit292.thread

bb.di:                                            ; preds = %lean_inc.exit
  %i.fd = load i32, ptr %i.ev, align 4, !tbaa !12 ; 3 uses
  %i.fe = icmp sgt i32 %i.fd, 1
  br i1 %i.fe, label %bb.dj, label %bb.dk, !prof !13

bb.dj:                                            ; preds = %bb.di
  %i.ff = add nsw i32 %i.fd, -1
  store i32 %i.ff, ptr %i.ev, align 4, !tbaa !12
  br label %lean_dec.exit184

bb.dk:                                            ; preds = %bb.di
  %.not.i192 = icmp eq i32 %i.fd, 0
  br i1 %.not.i192, label %lean_dec.exit184, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ev) #4
  br label %lean_dec.exit184

lean_obj_tag.exit292:                             ; preds = %lean_inc.exit
  %i.fg = getelementptr i8, ptr %i.ev, i64 4
  %.val.i291 = load i32, ptr %i.fg, align 4
  %i.fh = icmp ult i32 %.val.i291, 16777216
  %.0151.in.v = select i1 %i.fh, i64 9, i64 25
  %.0151.in = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.0151.in.v
  %.0151 = load i8, ptr %.0151.in, align 1, !tbaa !18
  %i.fi = icmp eq i8 %.0151, 0
  br i1 %i.fi, label %bb.dm, label %bb.dz

lean_obj_tag.exit292.thread:                      ; preds = %lean_inc.exit.thread
  %i.fj = and i64 %i.ew, 8589934590
  %i.fk = icmp eq i64 %i.fj, 0
  %.0151.in.v335 = select i1 %i.fk, i64 9, i64 25
  %.0151.in336 = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.0151.in.v335
  %.0151337 = load i8, ptr %.0151.in336, align 1, !tbaa !18
  %i.fl = icmp eq i8 %.0151337, 0
  br i1 %i.fl, label %bb.dm, label %lean_dec.exit184

bb.dm:                                            ; preds = %lean_obj_tag.exit292.thread, %lean_obj_tag.exit292
  %.val = load i32, ptr %i.em, align 8, !tbaa !12 ; 4 uses
  %i.fm = icmp eq i32 %.val, 1
  br i1 %i.fm, label %bb.dn, label %bb.ds

bb.dn:                                            ; preds = %bb.dm
  %i.fn = load ptr, ptr %i.eu, align 8, !tbaa !10 ; 4 uses
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = and i64 %i.fo, 1
  %.not.i173 = icmp eq i64 %i.fp, 0
  br i1 %.not.i173, label %bb.do, label %bb.dx

bb.do:                                            ; preds = %bb.dn
  %i.fq = load i32, ptr %i.fn, align 4, !tbaa !12 ; 3 uses
  %i.fr = icmp sgt i32 %i.fq, 1
  br i1 %i.fr, label %bb.dp, label %bb.dq, !prof !13

bb.dp:                                            ; preds = %bb.do
  %i.fs = add nsw i32 %i.fq, -1
  store i32 %i.fs, ptr %i.fn, align 4, !tbaa !12
  br label %bb.dx

bb.dq:                                            ; preds = %bb.do
  %.not.i194 = icmp eq i32 %i.fq, 0
  br i1 %.not.i194, label %bb.dx, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fn) #4
  br label %bb.dx

bb.ds:                                            ; preds = %bb.dm
  br i1 %.not.i282, label %bb.dt, label %bb.dy

bb.dt:                                            ; preds = %bb.ds
  %i.ft = icmp sgt i32 %.val, 1
  br i1 %i.ft, label %bb.du, label %bb.dv, !prof !13

bb.du:                                            ; preds = %bb.dt
  %i.fu = add nsw i32 %.val, -1
  store i32 %i.fu, ptr %i.em, align 8, !tbaa !12
  br label %bb.dy

bb.dv:                                            ; preds = %bb.dt
  %.not.i196 = icmp eq i32 %.val, 0
  br i1 %.not.i196, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.em) #4
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dn, %bb.dp, %bb.dq, %bb.dr
  %i.fv = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ev) #4
  store ptr %i.fv, ptr %i.eu, align 8, !tbaa !10
  br label %lean_dec.exit184

bb.dy:                                            ; preds = %bb.dw, %bb.dv, %bb.du, %bb.ds
  %i.fw = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ev) #4
  %i.fx = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr %i.fw, ptr %i.fy, align 8, !tbaa !10
  br label %lean_dec.exit184

bb.dz:                                            ; preds = %lean_obj_tag.exit292
  %i.fz = load i32, ptr %i.ev, align 4, !tbaa !12 ; 3 uses
  %i.ga = icmp sgt i32 %i.fz, 1
  br i1 %i.ga, label %bb.ea, label %bb.eb, !prof !13

bb.ea:                                            ; preds = %bb.dz
  %i.gb = add nsw i32 %i.fz, -1
  store i32 %i.gb, ptr %i.ev, align 4, !tbaa !12
  br label %lean_dec.exit184

bb.eb:                                            ; preds = %bb.dz
  %.not.i198 = icmp eq i32 %i.fz, 0
  br i1 %.not.i198, label %lean_dec.exit184, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ev) #4
  br label %lean_dec.exit184

bb.ed:                                            ; preds = %lean_obj_tag.exit
  %i.gc = load i32, ptr %5, align 4, !tbaa !12    ; 3 uses
  %i.gd = icmp sgt i32 %i.gc, 1
  br i1 %i.gd, label %bb.ee, label %bb.ef, !prof !13

bb.ee:                                            ; preds = %bb.ed
  %i.ge = add nsw i32 %i.gc, -1
  store i32 %i.ge, ptr %5, align 4, !tbaa !12
  br label %lean_dec_ref.exit211

bb.ef:                                            ; preds = %bb.ed
  %.not.i210 = icmp eq i32 %i.gc, 0
  br i1 %.not.i210, label %lean_dec_ref.exit211, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #4
  br label %lean_dec_ref.exit211

lean_dec_ref.exit211:                             ; preds = %bb.ee, %bb.ef, %bb.eg
  %i.gf = load i32, ptr %4, align 4, !tbaa !12    ; 3 uses
  %i.gg = icmp sgt i32 %i.gf, 1
  br i1 %i.gg, label %bb.eh, label %bb.ei, !prof !13

bb.eh:                                            ; preds = %lean_dec_ref.exit211
  %i.gh = add nsw i32 %i.gf, -1
  store i32 %i.gh, ptr %4, align 4, !tbaa !12
  br label %lean_dec_ref.exit209

bb.ei:                                            ; preds = %lean_dec_ref.exit211
  %.not.i208 = icmp eq i32 %i.gf, 0
  br i1 %.not.i208, label %lean_dec_ref.exit209, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #4
  br label %lean_dec_ref.exit209

lean_dec_ref.exit209:                             ; preds = %bb.eh, %bb.ei, %bb.ej
  %i.gi = load i32, ptr %3, align 4, !tbaa !12    ; 3 uses
  %i.gj = icmp sgt i32 %i.gi, 1
  br i1 %i.gj, label %bb.ek, label %bb.el, !prof !13

bb.ek:                                            ; preds = %lean_dec_ref.exit209
  %i.gk = add nsw i32 %i.gi, -1
  store i32 %i.gk, ptr %3, align 4, !tbaa !12
  br label %lean_dec_ref.exit207

bb.el:                                            ; preds = %lean_dec_ref.exit209
  %.not.i206 = icmp eq i32 %i.gi, 0
  br i1 %.not.i206, label %lean_dec_ref.exit207, label %bb.em

bb.em:                                            ; preds = %bb.el
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #4
  br label %lean_dec_ref.exit207

lean_dec_ref.exit207:                             ; preds = %bb.ek, %bb.el, %bb.em
  %i.gl = load i32, ptr %2, align 4, !tbaa !12    ; 3 uses
  %i.gm = icmp sgt i32 %i.gl, 1
  br i1 %i.gm, label %bb.en, label %bb.eo, !prof !13

bb.en:                                            ; preds = %lean_dec_ref.exit207
  %i.gn = add nsw i32 %i.gl, -1
  store i32 %i.gn, ptr %2, align 4, !tbaa !12
  br label %lean_dec_ref.exit205

bb.eo:                                            ; preds = %lean_dec_ref.exit207
  %.not.i204 = icmp eq i32 %i.gl, 0
  br i1 %.not.i204, label %lean_dec_ref.exit205, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #4
  br label %lean_dec_ref.exit205

lean_dec_ref.exit205:                             ; preds = %bb.en, %bb.eo, %bb.ep
  %i.go = load i32, ptr %1, align 4, !tbaa !12    ; 3 uses
  %i.gp = icmp sgt i32 %i.go, 1
  br i1 %i.gp, label %bb.eq, label %bb.er, !prof !13

bb.eq:                                            ; preds = %lean_dec_ref.exit205
  %i.gq = add nsw i32 %i.go, -1
  store i32 %i.gq, ptr %1, align 4, !tbaa !12
  br label %lean_dec_ref.exit203

bb.er:                                            ; preds = %lean_dec_ref.exit205
  %.not.i202 = icmp eq i32 %i.go, 0
  br i1 %.not.i202, label %lean_dec_ref.exit203, label %bb.es

bb.es:                                            ; preds = %bb.er
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #4
  br label %lean_dec_ref.exit203

lean_dec_ref.exit203:                             ; preds = %bb.eq, %bb.er, %bb.es
  %i.gr = load i32, ptr %0, align 4, !tbaa !12    ; 3 uses
  %i.gs = icmp sgt i32 %i.gr, 1
  br i1 %i.gs, label %bb.et, label %bb.eu, !prof !13

bb.et:                                            ; preds = %lean_dec_ref.exit203
  %i.gt = add nsw i32 %i.gr, -1
  store i32 %i.gt, ptr %0, align 4, !tbaa !12
  br label %lean_dec.exit184

bb.eu:                                            ; preds = %lean_dec_ref.exit203
  %.not.i200 = icmp eq i32 %i.gr, 0
  br i1 %.not.i200, label %lean_dec.exit184, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #4
  br label %lean_dec.exit184

lean_dec.exit184:                                 ; preds = %lean_obj_tag.exit292.thread, %lean_obj_tag.exit267.thread, %lean_inc.exit.thread, %lean_inc.exit157.thread, %bb.ev, %bb.eu, %bb.et, %bb.ea, %bb.eb, %bb.ec, %bb.dj, %bb.dk, %bb.dl, %bb.cf, %bb.cg, %bb.ch, %bb.bo, %bb.bp, %bb.bq, %lean_obj_tag.exit260, %bb.cd, %bb.cc, %lean_obj_tag.exit285, %bb.dy, %bb.dx
  %.9 = phi ptr [ %i.em, %lean_obj_tag.exit292.thread ], [ %i.bw, %lean_obj_tag.exit260 ], [ %i.dh, %bb.cd ], [ %i.em, %lean_obj_tag.exit285 ], [ %i.ao, %bb.eu ], [ %i.bw, %bb.cc ], [ %i.fx, %bb.dy ], [ %i.bw, %lean_obj_tag.exit267.thread ], [ %i.em, %lean_inc.exit.thread ], [ %i.em, %bb.dx ], [ %i.bw, %bb.bq ], [ %i.bw, %bb.bp ], [ %i.bw, %bb.bo ], [ %i.ao, %bb.ev ], [ %i.bw, %bb.ch ], [ %i.bw, %bb.cg ], [ %i.bw, %bb.cf ], [ %i.em, %bb.dl ], [ %i.em, %bb.dk ], [ %i.em, %bb.dj ], [ %i.bw, %lean_inc.exit157.thread ], [ %i.em, %bb.ec ], [ %i.em, %bb.eb ], [ %i.em, %bb.ea ], [ %i.ao, %bb.et ]
  ret ptr %.9
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpAndMatchDecideDecidableCongr___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr nofree noundef readnone captures(none) %15) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpAndMatchDecideDecidableCongr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14)
end_hunk_8
begin_hunk_9_@l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpDecideCbv___lam__0:bb.a
bb.ig:                                            ; preds = %bb.if
  %i.lx = add nsw i32 %i.lv, -1
  store i32 %i.lx, ptr %i.ci, align 8, !tbaa !12
  br label %lean_dec.exit682

bb.ih:                                            ; preds = %bb.if
  %.not.i730 = icmp eq i32 %i.lv, 0
  br i1 %.not.i730, label %lean_dec.exit682, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ci) #4
  br label %lean_dec.exit682

lean_dec.exit682:                                 ; preds = %lean_inc.exit625, %bb.ig, %bb.ih, %bb.ii, %bb.hv
  %.0552 = phi ptr [ %i.ci, %bb.hv ], [ inttoptr (i64 1 to ptr), %bb.ii ], [ inttoptr (i64 1 to ptr), %bb.ih ], [ inttoptr (i64 1 to ptr), %bb.ig ], [ inttoptr (i64 1 to ptr), %lean_inc.exit625 ] ; 16 uses
  %i.ly = tail call ptr @l_Lean_Meta_Sym_isTrueExpr___redArg(ptr noundef %i.lf, ptr noundef nonnull %5) #4 ; 13 uses
  %i.lz = ptrtoint ptr %i.ly to i64               ; 2 uses
  %i.ma = and i64 %i.lz, 1
  %.not.i940 = icmp eq i64 %i.ma, 0               ; 2 uses
  br i1 %.not.i940, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %lean_dec.exit682
  %i.mb = lshr i64 %i.lz, 1
  %i.mc = trunc i64 %i.mb to i32
  br label %lean_obj_tag.exit943

bb.ik:                                            ; preds = %lean_dec.exit682
  %i.md = getelementptr i8, ptr %i.ly, i64 4
  %.val.i942 = load i32, ptr %i.md, align 4
  %i.me = lshr i32 %.val.i942, 24
  br label %lean_obj_tag.exit943

lean_obj_tag.exit943:                             ; preds = %bb.ij, %bb.ik
  %.0.i941 = phi i32 [ %i.mc, %bb.ij ], [ %i.me, %bb.ik ]
  %i.mf = icmp eq i32 %.0.i941, 0
  br i1 %i.mf, label %bb.il, label %bb.rj

bb.il:                                            ; preds = %lean_obj_tag.exit943
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 2 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !10 ; 19 uses
  %i.mi = ptrtoint ptr %i.mh to i64               ; 2 uses
  %i.mj = and i64 %i.mi, 1
  %.not.i622 = icmp eq i64 %i.mj, 0               ; 6 uses
  br i1 %.not.i622, label %bb.im, label %lean_inc.exit623

bb.im:                                            ; preds = %bb.il
  %.val.i.i944 = load i32, ptr %i.mh, align 4, !tbaa !12 ; 3 uses
  %i.mk = icmp sgt i32 %.val.i.i944, 0
  br i1 %i.mk, label %bb.in, label %bb.io, !prof !13

bb.in:                                            ; preds = %bb.im
  %i.ml = add nuw i32 %.val.i.i944, 1
  store i32 %i.ml, ptr %i.mh, align 4, !tbaa !12
  br label %lean_inc.exit623

bb.io:                                            ; preds = %bb.im
  %.not.i.i945 = icmp eq i32 %.val.i.i944, 0
  br i1 %.not.i.i945, label %lean_inc.exit623, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.mm = atomicrmw sub ptr %i.mh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit623

lean_inc.exit623:                                 ; preds = %bb.ip, %bb.io, %bb.in, %bb.il
  %.val.i947 = load i32, ptr %i.ly, align 8, !tbaa !12 ; 4 uses
  %i.mn = icmp eq i32 %.val.i947, 1
  br i1 %i.mn, label %.preheader.i949, label %bb.iu

.preheader.i949:                                  ; preds = %lean_inc.exit623
  %i.mo = load ptr, ptr %i.mg, align 8, !tbaa !10 ; 4 uses
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = and i64 %i.mp, 1
  %.not.i.i951 = icmp eq i64 %i.mq, 0
  br i1 %.not.i.i951, label %bb.iq, label %lean_dec.exit.i952

bb.iq:                                            ; preds = %.preheader.i949
  %i.mr = load i32, ptr %i.mo, align 4, !tbaa !12 ; 3 uses
  %i.ms = icmp sgt i32 %i.mr, 1
  br i1 %i.ms, label %bb.ir, label %bb.is, !prof !13

bb.ir:                                            ; preds = %bb.iq
  %i.mt = add nsw i32 %i.mr, -1
  store i32 %i.mt, ptr %i.mo, align 4, !tbaa !12
  br label %lean_dec.exit.i952

bb.is:                                            ; preds = %bb.iq
  %.not.i7.i956 = icmp eq i32 %i.mr, 0
  br i1 %.not.i7.i956, label %lean_dec.exit.i952, label %bb.it

bb.it:                                            ; preds = %bb.is
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.mo) #4
  br label %lean_dec.exit.i952

lean_dec.exit.i952:                               ; preds = %bb.it, %bb.is, %bb.ir, %.preheader.i949
  tail call void @lean_free_object(ptr noundef nonnull %i.ly) #4
  br label %lean_dec_ref_known.exit957

bb.iu:                                            ; preds = %lean_inc.exit623
  %i.mu = icmp sgt i32 %.val.i947, 1
  br i1 %i.mu, label %bb.iv, label %bb.iw, !prof !13

bb.iv:                                            ; preds = %bb.iu
  %i.mv = add nsw i32 %.val.i947, -1
  store i32 %i.mv, ptr %i.ly, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit957

bb.iw:                                            ; preds = %bb.iu
  %.not.i8.i948 = icmp eq i32 %.val.i947, 0
  br i1 %.not.i8.i948, label %lean_dec_ref_known.exit957, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ly) #4
  br label %lean_dec_ref_known.exit957

lean_dec_ref_known.exit957:                       ; preds = %lean_dec.exit.i952, %bb.iv, %bb.iw, %bb.ix
  %i.mw = and i64 %i.mi, 510
  %i.mx = icmp eq i64 %i.mw, 0
  br i1 %i.mx, label %bb.iy, label %bb.pn

bb.iy:                                            ; preds = %lean_dec_ref_known.exit957
  %i.my = tail call ptr @l_Lean_Meta_Sym_isFalseExpr___redArg(ptr noundef %i.lf, ptr noundef nonnull %5) #4 ; 11 uses
  %i.mz = ptrtoint ptr %i.my to i64               ; 2 uses
  %i.na = and i64 %i.mz, 1
  %.not.i958 = icmp eq i64 %i.na, 0               ; 2 uses
  br i1 %.not.i958, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.nb = lshr i64 %i.mz, 1
  %i.nc = trunc i64 %i.nb to i32
  br label %lean_obj_tag.exit961

bb.ja:                                            ; preds = %bb.iy
  %i.nd = getelementptr i8, ptr %i.my, i64 4
  %.val.i960 = load i32, ptr %i.nd, align 4
  %i.ne = lshr i32 %.val.i960, 24
  br label %lean_obj_tag.exit961

lean_obj_tag.exit961:                             ; preds = %bb.iz, %bb.ja
  %.0.i959 = phi i32 [ %i.nc, %bb.iz ], [ %i.ne, %bb.ja ]
  %i.nf = icmp eq i32 %.0.i959, 0
  br i1 %i.nf, label %bb.jb, label %bb.ol

bb.jb:                                            ; preds = %lean_obj_tag.exit961
  %i.ng = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !10 ; 7 uses
  %i.ni = ptrtoint ptr %i.nh to i64               ; 2 uses
  %i.nj = and i64 %i.ni, 1
  %.not.i620 = icmp eq i64 %i.nj, 0
  br i1 %.not.i620, label %bb.jc, label %lean_inc.exit621

bb.jc:                                            ; preds = %bb.jb
  %.val.i.i962 = load i32, ptr %i.nh, align 4, !tbaa !12 ; 3 uses
  %i.nk = icmp sgt i32 %.val.i.i962, 0
  br i1 %i.nk, label %bb.jd, label %bb.je, !prof !13

bb.jd:                                            ; preds = %bb.jc
  %i.nl = add nuw i32 %.val.i.i962, 1
  store i32 %i.nl, ptr %i.nh, align 4, !tbaa !12
  br label %bb.jg

bb.je:                                            ; preds = %bb.jc
  %.not.i.i963 = icmp eq i32 %.val.i.i962, 0
  br i1 %.not.i.i963, label %bb.jg, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.nm = atomicrmw sub ptr %i.nh, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.jg

lean_inc.exit621:                                 ; preds = %bb.jb
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.my, i32 noundef 1)
  br label %lean_dec.exit680

bb.jg:                                            ; preds = %bb.jf, %bb.je, %bb.jd
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.my, i32 noundef 1)
  %i.nn = load i32, ptr %i.nh, align 4, !tbaa !12 ; 3 uses
  %i.no = icmp sgt i32 %i.nn, 1
  br i1 %i.no, label %bb.jh, label %bb.ji, !prof !13

bb.jh:                                            ; preds = %bb.jg
  %i.np = add nsw i32 %i.nn, -1
  store i32 %i.np, ptr %i.nh, align 4, !tbaa !12
  br label %lean_dec.exit680

bb.ji:                                            ; preds = %bb.jg
  %.not.i732 = icmp eq i32 %i.nn, 0
  br i1 %.not.i732, label %lean_dec.exit680, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.nh) #4
  br label %lean_dec.exit680

lean_dec.exit680:                                 ; preds = %bb.jj, %bb.ji, %bb.jh, %lean_inc.exit621
  %i.nq = and i64 %i.ni, 510
  %i.nr = icmp eq i64 %i.nq, 0
  br i1 %i.nr, label %bb.jk, label %bb.ml

bb.jk:                                            ; preds = %lean_dec.exit680
  br i1 %.not.i622, label %bb.jl, label %lean_dec.exit678

bb.jl:                                            ; preds = %bb.jk
  %i.ns = load i32, ptr %i.mh, align 4, !tbaa !12 ; 3 uses
  %i.nt = icmp sgt i32 %i.ns, 1
  br i1 %i.nt, label %bb.jm, label %bb.jn, !prof !13

bb.jm:                                            ; preds = %bb.jl
  %i.nu = add nsw i32 %i.ns, -1
  store i32 %i.nu, ptr %i.mh, align 4, !tbaa !12
  br label %lean_dec.exit678

bb.jn:                                            ; preds = %bb.jl
  %.not.i734 = icmp eq i32 %i.ns, 0
  br i1 %.not.i734, label %lean_dec.exit678, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.mh) #4
  br label %lean_dec.exit678

lean_dec.exit678:                                 ; preds = %bb.jo, %bb.jn, %bb.jm, %bb.jk
  %i.nv = ptrtoint ptr %.0552 to i64
  %i.nw = and i64 %i.nv, 1
  %.not.i965 = icmp eq i64 %i.nw, 0
  br i1 %.not.i965, label %bb.jp, label %lean_del_object.exit

bb.jp:                                            ; preds = %lean_dec.exit678
  tail call void @lean_free_object(ptr noundef nonnull %.0552) #4
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %lean_dec.exit678, %bb.jp
  %.val.i.i966 = load i32, ptr %i.lf, align 4, !tbaa !12 ; 3 uses
  %i.nx = icmp sgt i32 %.val.i.i966, 0
  br i1 %i.nx, label %bb.jq, label %bb.jr, !prof !13

bb.jq:                                            ; preds = %lean_del_object.exit
  %i.ny = add nuw i32 %.val.i.i966, 1
  store i32 %i.ny, ptr %i.lf, align 4, !tbaa !12
  br label %lean_inc_ref.exit968

bb.jr:                                            ; preds = %lean_del_object.exit
  %.not.i.i967 = icmp eq i32 %.val.i.i966, 0
  br i1 %.not.i.i967, label %lean_inc_ref.exit968, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.nz = atomicrmw sub ptr %i.lf, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit968

lean_inc_ref.exit968:                             ; preds = %bb.jq, %bb.jr, %bb.js
  %i.oa = tail call ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_trySynthComputableInstance(ptr noundef nonnull %i.lf, ptr nonnull poison, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef nonnull %9, ptr noundef %10) ; 11 uses
  %i.ob = ptrtoint ptr %i.oa to i64               ; 2 uses
  %i.oc = and i64 %i.ob, 1
  %.not.i969 = icmp eq i64 %i.oc, 0               ; 2 uses
  br i1 %.not.i969, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %lean_inc_ref.exit968
  %i.od = lshr i64 %i.ob, 1
  %i.oe = trunc i64 %i.od to i32
  br label %lean_obj_tag.exit972

bb.ju:                                            ; preds = %lean_inc_ref.exit968
  %i.of = getelementptr i8, ptr %i.oa, i64 4
  %.val.i971 = load i32, ptr %i.of, align 4
  %i.og = lshr i32 %.val.i971, 24
  br label %lean_obj_tag.exit972

lean_obj_tag.exit972:                             ; preds = %bb.jt, %bb.ju
  %.0.i970 = phi i32 [ %i.oe, %bb.jt ], [ %i.og, %bb.ju ]
  %i.oh = icmp eq i32 %.0.i970, 0
  br i1 %i.oh, label %bb.jv, label %bb.lo

bb.jv:                                            ; preds = %lean_obj_tag.exit972
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !10 ; 7 uses
  %i.ok = ptrtoint ptr %i.oj to i64               ; 2 uses
  %i.ol = and i64 %i.ok, 1
  %.not.i618 = icmp eq i64 %i.ol, 0
  br i1 %.not.i618, label %bb.jw, label %bb.ka

bb.jw:                                            ; preds = %bb.jv
  %.val.i.i973 = load i32, ptr %i.oj, align 4, !tbaa !12 ; 3 uses
  %i.om = icmp sgt i32 %.val.i.i973, 0
  br i1 %i.om, label %bb.jx, label %bb.jy, !prof !13

bb.jx:                                            ; preds = %bb.jw
  %i.on = add nuw i32 %.val.i.i973, 1
  store i32 %i.on, ptr %i.oj, align 4, !tbaa !12
  br label %bb.kb

bb.jy:                                            ; preds = %bb.jw
  %.not.i.i974 = icmp eq i32 %.val.i.i973, 0
  br i1 %.not.i.i974, label %bb.kb, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.oo = atomicrmw sub ptr %i.oj, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.kb

bb.ka:                                            ; preds = %bb.jv
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.oa, i32 noundef 1)
  %i.op = lshr i64 %i.ok, 1
  %i.oq = trunc i64 %i.op to i32
  br label %lean_obj_tag.exit979

bb.kb:                                            ; preds = %bb.jz, %bb.jy, %bb.jx
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.oa, i32 noundef 1)
  %i.or = getelementptr i8, ptr %i.oj, i64 4
  %.val.i978 = load i32, ptr %i.or, align 4
  %i.os = lshr i32 %.val.i978, 24
  br label %lean_obj_tag.exit979

lean_obj_tag.exit979:                             ; preds = %bb.ka, %bb.kb
  %.0.i977 = phi i32 [ %i.oq, %bb.ka ], [ %i.os, %bb.kb ]
  %i.ot = icmp eq i32 %.0.i977, 0
  br i1 %i.ot, label %bb.kc, label %bb.kr

bb.kc:                                            ; preds = %lean_obj_tag.exit979
  %i.ou = load atomic i32, ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpIteCbv___lam__2___closed__6_once seq_cst, align 4, !tbaa !17
  %i.ov = icmp eq i32 %i.ou, 1
  br i1 %i.ov, label %bb.kd, label %bb.ke, !prof !13

bb.kd:                                            ; preds = %bb.kc
  %i.ow = load ptr, ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpIteCbv___lam__2___closed__6, align 8, !tbaa !10
  br label %lean_obj_once.exit981

bb.ke:                                            ; preds = %bb.kc
  %i.ox = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpIteCbv___lam__2___closed__6, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpIteCbv___lam__2___closed__6_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpIteCbv___lam__2___closed__6) #4
  br label %lean_obj_once.exit981

lean_obj_once.exit981:                            ; preds = %bb.kd, %bb.ke
  %.0.i980 = phi ptr [ %i.ow, %bb.kd ], [ %i.ox, %bb.ke ]
  %.val.i.i982 = load i32, ptr %i.lh, align 4, !tbaa !12 ; 3 uses
  %i.oy = icmp sgt i32 %.val.i.i982, 0
  br i1 %i.oy, label %bb.kf, label %bb.kg, !prof !13

bb.kf:                                            ; preds = %lean_obj_once.exit981
  %i.oz = add nuw i32 %.val.i.i982, 1
  store i32 %i.oz, ptr %i.lh, align 4, !tbaa !12
  br label %lean_inc_ref.exit984

bb.kg:                                            ; preds = %lean_obj_once.exit981
  %.not.i.i983 = icmp eq i32 %.val.i.i982, 0
  br i1 %.not.i.i983, label %lean_inc_ref.exit984, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.pa = atomicrmw sub ptr %i.lh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit984

lean_inc_ref.exit984:                             ; preds = %bb.kf, %bb.kg, %bb.kh
  %.val.i.i985 = load i32, ptr %i.h, align 4, !tbaa !12 ; 3 uses
  %i.pb = icmp sgt i32 %.val.i.i985, 0
  br i1 %i.pb, label %bb.ki, label %bb.kj, !prof !13

bb.ki:                                            ; preds = %lean_inc_ref.exit984
  %i.pc = add nuw i32 %.val.i.i985, 1
  store i32 %i.pc, ptr %i.h, align 4, !tbaa !12
  br label %lean_inc_ref.exit987

bb.kj:                                            ; preds = %lean_inc_ref.exit984
  %.not.i.i986 = icmp eq i32 %.val.i.i985, 0
  br i1 %.not.i.i986, label %lean_inc_ref.exit987, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.pd = atomicrmw sub ptr %i.h, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit987

lean_inc_ref.exit987:                             ; preds = %bb.ki, %bb.kj, %bb.kk
  %.val.i.i988 = load i32, ptr %i.lf, align 4, !tbaa !12 ; 3 uses
  %i.pe = icmp sgt i32 %.val.i.i988, 0
  br i1 %i.pe, label %bb.kl, label %bb.km, !prof !13

bb.kl:                                            ; preds = %lean_inc_ref.exit987
  %i.pf = add nuw i32 %.val.i.i988, 1
  store i32 %i.pf, ptr %i.lf, align 4, !tbaa !12
  br label %lean_inc_ref.exit990

bb.km:                                            ; preds = %lean_inc_ref.exit987
  %.not.i.i989 = icmp eq i32 %.val.i.i988, 0
  br i1 %.not.i.i989, label %lean_inc_ref.exit990, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.pg = atomicrmw sub ptr %i.lf, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit990

lean_inc_ref.exit990:                             ; preds = %bb.kl, %bb.km, %bb.kn
  %.val.i.i991 = load i32, ptr %i.v, align 4, !tbaa !12 ; 3 uses
  %i.ph = icmp sgt i32 %.val.i.i991, 0
  br i1 %i.ph, label %bb.ko, label %bb.kp, !prof !13

bb.ko:                                            ; preds = %lean_inc_ref.exit990
  %i.pi = add nuw i32 %.val.i.i991, 1
  store i32 %i.pi, ptr %i.v, align 4, !tbaa !12
  br label %lean_inc_ref.exit993

bb.kp:                                            ; preds = %lean_inc_ref.exit990
  %.not.i.i992 = icmp eq i32 %.val.i.i991, 0
  br i1 %.not.i.i992, label %lean_inc_ref.exit993, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.pj = atomicrmw sub ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit993

lean_inc_ref.exit993:                             ; preds = %bb.ko, %bb.kp, %bb.kq
  %i.pk = tail call ptr @l_Lean_mkApp4(ptr noundef %.0.i980, ptr noundef nonnull %i.v, ptr noundef nonnull %i.lf, ptr noundef nonnull %i.h, ptr noundef nonnull %i.lh) #4
  br label %bb.kw

bb.kr:                                            ; preds = %lean_obj_tag.exit979
  %i.pl = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !10 ; 5 uses
  %i.pn = ptrtoint ptr %i.pm to i64
  %i.po = and i64 %i.pn, 1
end_hunk_9
begin_hunk_10_@l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpDecideCbv___lam__0:bb.a
  br label %lean_dec_ref.exit795

bb.lz:                                            ; preds = %lean_dec_ref.exit797
  %.not.i794 = icmp eq i32 %i.rw, 0
  br i1 %.not.i794, label %lean_dec_ref.exit795, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.h) #4
  br label %lean_dec_ref.exit795

lean_dec_ref.exit795:                             ; preds = %bb.ly, %bb.lz, %bb.ma
  %i.rz = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !10 ; 5 uses
  %.val835 = load i32, ptr %i.oa, align 8, !tbaa !12
  %i.sb = icmp eq i32 %.val835, 1
  br i1 %i.sb, label %lean_dec_ref.exit825.thread, label %bb.mb

bb.mb:                                            ; preds = %lean_dec_ref.exit795
  %i.sc = ptrtoint ptr %i.sa to i64
  %i.sd = and i64 %i.sc, 1
  %.not.i614 = icmp eq i64 %i.sd, 0
  br i1 %.not.i614, label %bb.mc, label %lean_inc.exit615

bb.mc:                                            ; preds = %bb.mb
  %.val.i.i1014 = load i32, ptr %i.sa, align 4, !tbaa !12 ; 3 uses
  %i.se = icmp sgt i32 %.val.i.i1014, 0
  br i1 %i.se, label %bb.md, label %bb.me, !prof !13

bb.md:                                            ; preds = %bb.mc
  %i.sf = add nuw i32 %.val.i.i1014, 1
  store i32 %i.sf, ptr %i.sa, align 4, !tbaa !12
  br label %lean_inc.exit615

bb.me:                                            ; preds = %bb.mc
  %.not.i.i1015 = icmp eq i32 %.val.i.i1014, 0
  br i1 %.not.i.i1015, label %lean_inc.exit615, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.sg = atomicrmw sub ptr %i.sa, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit615

lean_inc.exit615:                                 ; preds = %bb.mf, %bb.me, %bb.md, %bb.mb
  br i1 %.not.i969, label %bb.mg, label %bb.mk

bb.mg:                                            ; preds = %lean_inc.exit615
  %i.sh = load i32, ptr %i.oa, align 8, !tbaa !12 ; 3 uses
  %i.si = icmp sgt i32 %i.sh, 1
  br i1 %i.si, label %bb.mh, label %bb.mi, !prof !13

bb.mh:                                            ; preds = %bb.mg
  %i.sj = add nsw i32 %i.sh, -1
  store i32 %i.sj, ptr %i.oa, align 8, !tbaa !12
  br label %bb.mk

bb.mi:                                            ; preds = %bb.mg
  %.not.i736 = icmp eq i32 %i.sh, 0
  br i1 %.not.i736, label %bb.mk, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.oa) #4
  br label %bb.mk

bb.mk:                                            ; preds = %lean_inc.exit615, %bb.mh, %bb.mi, %bb.mj
  %i.sk = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  store ptr %i.sa, ptr %i.sl, align 8, !tbaa !10
  br label %lean_dec_ref.exit825.thread

bb.ml:                                            ; preds = %lean_dec.exit680
  %i.sm = load i32, ptr %i.lf, align 4, !tbaa !12 ; 3 uses
  %i.sn = icmp sgt i32 %i.sm, 1
  br i1 %i.sn, label %bb.mm, label %bb.mn, !prof !13

bb.mm:                                            ; preds = %bb.ml
  %i.so = add nsw i32 %i.sm, -1
  store i32 %i.so, ptr %i.lf, align 4, !tbaa !12
  br label %lean_dec_ref.exit793

bb.mn:                                            ; preds = %bb.ml
  %.not.i792 = icmp eq i32 %i.sm, 0
  br i1 %.not.i792, label %lean_dec_ref.exit793, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.lf) #4
  br label %lean_dec_ref.exit793

lean_dec_ref.exit793:                             ; preds = %bb.mm, %bb.mn, %bb.mo
  %i.sp = tail call ptr @l_Lean_Meta_Sym_getBoolFalseExpr___redArg(ptr noundef nonnull %5) #4 ; 14 uses
  %i.sq = ptrtoint ptr %i.sp to i64               ; 2 uses
  %i.sr = and i64 %i.sq, 1
  %.not.i1017 = icmp eq i64 %i.sr, 0              ; 3 uses
  br i1 %.not.i1017, label %bb.mq, label %bb.mp

bb.mp:                                            ; preds = %lean_dec_ref.exit793
  %i.ss = lshr i64 %i.sq, 1
  %i.st = trunc i64 %i.ss to i32
  br label %lean_obj_tag.exit1020

bb.mq:                                            ; preds = %lean_dec_ref.exit793
  %i.su = getelementptr i8, ptr %i.sp, i64 4
  %.val.i1019 = load i32, ptr %i.su, align 4
  %i.sv = lshr i32 %.val.i1019, 24
  br label %lean_obj_tag.exit1020

lean_obj_tag.exit1020:                            ; preds = %bb.mp, %bb.mq
  %.0.i1018 = phi i32 [ %i.st, %bb.mp ], [ %i.sv, %bb.mq ]
  %i.sw = icmp eq i32 %.0.i1018, 0
  br i1 %i.sw, label %bb.mr, label %bb.nm

bb.mr:                                            ; preds = %lean_obj_tag.exit1020
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !10 ; 6 uses
  %.val834 = load i32, ptr %i.sp, align 8, !tbaa !12
  %i.sz = icmp eq i32 %.val834, 1                 ; 2 uses
  br i1 %i.sz, label %lean_dec.exit674, label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.ta = ptrtoint ptr %i.sy to i64
  %i.tb = and i64 %i.ta, 1
  %.not.i612 = icmp eq i64 %i.tb, 0
  br i1 %.not.i612, label %bb.mt, label %lean_inc.exit613

bb.mt:                                            ; preds = %bb.ms
  %.val.i.i1021 = load i32, ptr %i.sy, align 4, !tbaa !12 ; 3 uses
  %i.tc = icmp sgt i32 %.val.i.i1021, 0
  br i1 %i.tc, label %bb.mu, label %bb.mv, !prof !13

bb.mu:                                            ; preds = %bb.mt
  %i.td = add nuw i32 %.val.i.i1021, 1
  store i32 %i.td, ptr %i.sy, align 4, !tbaa !12
  br label %lean_inc.exit613

bb.mv:                                            ; preds = %bb.mt
  %.not.i.i1022 = icmp eq i32 %.val.i.i1021, 0
  br i1 %.not.i.i1022, label %lean_inc.exit613, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.te = atomicrmw sub ptr %i.sy, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit613

lean_inc.exit613:                                 ; preds = %bb.mw, %bb.mv, %bb.mu, %bb.ms
  br i1 %.not.i1017, label %bb.mx, label %lean_dec.exit674

bb.mx:                                            ; preds = %lean_inc.exit613
  %i.tf = load i32, ptr %i.sp, align 8, !tbaa !12 ; 3 uses
  %i.tg = icmp sgt i32 %i.tf, 1
  br i1 %i.tg, label %bb.my, label %bb.mz, !prof !13

bb.my:                                            ; preds = %bb.mx
  %i.th = add nsw i32 %i.tf, -1
  store i32 %i.th, ptr %i.sp, align 8, !tbaa !12
  br label %lean_dec.exit674

bb.mz:                                            ; preds = %bb.mx
  %.not.i738 = icmp eq i32 %i.tf, 0
  br i1 %.not.i738, label %lean_dec.exit674, label %bb.na

bb.na:                                            ; preds = %bb.mz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.sp) #4
  br label %lean_dec.exit674

lean_dec.exit674:                                 ; preds = %lean_inc.exit613, %bb.my, %bb.mz, %bb.na, %bb.mr
  %.0546 = phi ptr [ %i.sp, %bb.mr ], [ inttoptr (i64 1 to ptr), %bb.na ], [ inttoptr (i64 1 to ptr), %bb.mz ], [ inttoptr (i64 1 to ptr), %bb.my ], [ inttoptr (i64 1 to ptr), %lean_inc.exit613 ] ; 2 uses
  %i.ti = load atomic i32, ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpDecideCbv___lam__0___closed__11_once seq_cst, align 4, !tbaa !17
  %i.tj = icmp eq i32 %i.ti, 1
  br i1 %i.tj, label %bb.nb, label %bb.nc, !prof !13

bb.nb:                                            ; preds = %lean_dec.exit674
  %i.tk = load ptr, ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpDecideCbv___lam__0___closed__11, align 8, !tbaa !10
  br label %lean_obj_once.exit1025

bb.nc:                                            ; preds = %lean_dec.exit674
  %i.tl = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpDecideCbv___lam__0___closed__11, ptr noundef nonnull @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpDecideCbv___lam__0___closed__11_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Sym_Simp_simpDecideCbv___lam__0___closed__11) #4
  br label %lean_obj_once.exit1025

lean_obj_once.exit1025:                           ; preds = %bb.nb, %bb.nc
  %.0.i1024 = phi ptr [ %i.tk, %bb.nb ], [ %i.tl, %bb.nc ]
  %i.tm = tail call ptr @l_Lean_mkApp3(ptr noundef %.0.i1024, ptr noundef nonnull %i.v, ptr noundef nonnull %i.h, ptr noundef %i.lh) #4 ; 2 uses
  br i1 %i.lk, label %bb.nd, label %bb.ne

bb.nd:                                            ; preds = %lean_obj_once.exit1025
  %i.tn = getelementptr inbounds nuw i8, ptr %.0552, i64 8
  %i.to = getelementptr inbounds nuw i8, ptr %.0552, i64 16
  store ptr %i.tm, ptr %i.to, align 8, !tbaa !10
  store ptr %i.sy, ptr %i.tn, align 8, !tbaa !10
  br label %bb.nf

bb.ne:                                            ; preds = %lean_obj_once.exit1025
  %i.tp = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 2, i32 noundef 2) ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  store ptr %i.sy, ptr %i.tq, align 8, !tbaa !10
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  store ptr %i.tm, ptr %i.tr, align 8, !tbaa !10
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.nd
  %.0544 = phi ptr [ %.0552, %bb.nd ], [ %i.tp, %bb.ne ] ; 4 uses
  br i1 %.not.i622, label %bb.ng, label %lean_dec.exit672

bb.ng:                                            ; preds = %bb.nf
  %i.ts = load i32, ptr %i.mh, align 4, !tbaa !12 ; 3 uses
  %i.tt = icmp sgt i32 %i.ts, 1
  br i1 %i.tt, label %bb.nh, label %bb.ni, !prof !13

bb.nh:                                            ; preds = %bb.ng
  %i.tu = add nsw i32 %i.ts, -1
  store i32 %i.tu, ptr %i.mh, align 4, !tbaa !12
  br label %lean_dec.exit672

bb.ni:                                            ; preds = %bb.ng
  %.not.i740 = icmp eq i32 %i.ts, 0
  br i1 %.not.i740, label %lean_dec.exit672, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.mh) #4
  br label %lean_dec.exit672

lean_dec.exit672:                                 ; preds = %bb.nj, %bb.ni, %bb.nh, %bb.nf
  %i.tv = getelementptr inbounds nuw i8, ptr %.0544, i64 24
  store i8 0, ptr %i.tv, align 1, !tbaa !18
  %i.tw = getelementptr inbounds nuw i8, ptr %.0544, i64 25
  store i8 %i.lj, ptr %i.tw, align 1, !tbaa !18
  br i1 %i.sz, label %bb.nk, label %bb.nl

bb.nk:                                            ; preds = %lean_dec.exit672
  %i.tx = getelementptr inbounds nuw i8, ptr %.0546, i64 8
  store ptr %.0544, ptr %i.tx, align 8, !tbaa !10
  br label %lean_dec_ref.exit825.thread

bb.nl:                                            ; preds = %lean_dec.exit672
  %i.ty = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  store ptr %.0544, ptr %i.tz, align 8, !tbaa !10
  br label %lean_dec_ref.exit825.thread

bb.nm:                                            ; preds = %lean_obj_tag.exit1020
  br i1 %.not.i622, label %bb.nn, label %lean_dec.exit670

bb.nn:                                            ; preds = %bb.nm
  %i.ua = load i32, ptr %i.mh, align 4, !tbaa !12 ; 3 uses
  %i.ub = icmp sgt i32 %i.ua, 1
  br i1 %i.ub, label %bb.no, label %bb.np, !prof !13

bb.no:                                            ; preds = %bb.nn
  %i.uc = add nsw i32 %i.ua, -1
  store i32 %i.uc, ptr %i.mh, align 4, !tbaa !12
  br label %lean_dec.exit670

bb.np:                                            ; preds = %bb.nn
  %.not.i742 = icmp eq i32 %i.ua, 0
  br i1 %.not.i742, label %lean_dec.exit670, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.mh) #4
  br label %lean_dec.exit670

lean_dec.exit670:                                 ; preds = %bb.nq, %bb.np, %bb.no, %bb.nm
  %i.ud = ptrtoint ptr %.0552 to i64
  %i.ue = and i64 %i.ud, 1
  %.not.i1026 = icmp eq i64 %i.ue, 0
  br i1 %.not.i1026, label %bb.nr, label %lean_del_object.exit1027

bb.nr:                                            ; preds = %lean_dec.exit670
  tail call void @lean_free_object(ptr noundef nonnull %.0552) #4
  br label %lean_del_object.exit1027

lean_del_object.exit1027:                         ; preds = %lean_dec.exit670, %bb.nr
  %i.uf = load i32, ptr %i.lh, align 4, !tbaa !12 ; 3 uses
  %i.ug = icmp sgt i32 %i.uf, 1
  br i1 %i.ug, label %bb.ns, label %bb.nt, !prof !13

bb.ns:                                            ; preds = %lean_del_object.exit1027
  %i.uh = add nsw i32 %i.uf, -1
  store i32 %i.uh, ptr %i.lh, align 4, !tbaa !12
  br label %lean_dec_ref.exit791

bb.nt:                                            ; preds = %lean_del_object.exit1027
  %.not.i790 = icmp eq i32 %i.uf, 0
  br i1 %.not.i790, label %lean_dec_ref.exit791, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.lh) #4
  br label %lean_dec_ref.exit791

lean_dec_ref.exit791:                             ; preds = %bb.ns, %bb.nt, %bb.nu
  %i.ui = load i32, ptr %i.v, align 4, !tbaa !12  ; 3 uses
  %i.uj = icmp sgt i32 %i.ui, 1
  br i1 %i.uj, label %bb.nv, label %bb.nw, !prof !13

bb.nv:                                            ; preds = %lean_dec_ref.exit791
  %i.uk = add nsw i32 %i.ui, -1
  store i32 %i.uk, ptr %i.v, align 4, !tbaa !12
  br label %lean_dec_ref.exit789

bb.nw:                                            ; preds = %lean_dec_ref.exit791
  %.not.i788 = icmp eq i32 %i.ui, 0
  br i1 %.not.i788, label %lean_dec_ref.exit789, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.v) #4
  br label %lean_dec_ref.exit789

lean_dec_ref.exit789:                             ; preds = %bb.nv, %bb.nw, %bb.nx
  %i.ul = load i32, ptr %i.h, align 4, !tbaa !12  ; 3 uses
  %i.um = icmp sgt i32 %i.ul, 1
  br i1 %i.um, label %bb.ny, label %bb.nz, !prof !13

bb.ny:                                            ; preds = %lean_dec_ref.exit789
  %i.un = add nsw i32 %i.ul, -1
  store i32 %i.un, ptr %i.h, align 4, !tbaa !12
  br label %lean_dec_ref.exit787

bb.nz:                                            ; preds = %lean_dec_ref.exit789
  %.not.i786 = icmp eq i32 %i.ul, 0
  br i1 %.not.i786, label %lean_dec_ref.exit787, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.h) #4
  br label %lean_dec_ref.exit787

lean_dec_ref.exit787:                             ; preds = %bb.ny, %bb.nz, %bb.oa
  %i.uo = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !10 ; 5 uses
  %.val833 = load i32, ptr %i.sp, align 8, !tbaa !12
  %i.uq = icmp eq i32 %.val833, 1
  br i1 %i.uq, label %lean_dec_ref.exit825.thread, label %bb.ob

bb.ob:                                            ; preds = %lean_dec_ref.exit787
  %i.ur = ptrtoint ptr %i.up to i64
  %i.us = and i64 %i.ur, 1
  %.not.i610 = icmp eq i64 %i.us, 0
  br i1 %.not.i610, label %bb.oc, label %lean_inc.exit611

bb.oc:                                            ; preds = %bb.ob
  %.val.i.i1028 = load i32, ptr %i.up, align 4, !tbaa !12 ; 3 uses
  %i.ut = icmp sgt i32 %.val.i.i1028, 0
  br i1 %i.ut, label %bb.od, label %bb.oe, !prof !13

bb.od:                                            ; preds = %bb.oc
  %i.uu = add nuw i32 %.val.i.i1028, 1
  store i32 %i.uu, ptr %i.up, align 4, !tbaa !12
  br label %lean_inc.exit611

bb.oe:                                            ; preds = %bb.oc
  %.not.i.i1029 = icmp eq i32 %.val.i.i1028, 0
  br i1 %.not.i.i1029, label %lean_inc.exit611, label %bb.of

bb.of:                                            ; preds = %bb.oe
  %i.uv = atomicrmw sub ptr %i.up, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit611

lean_inc.exit611:                                 ; preds = %bb.of, %bb.oe, %bb.od, %bb.ob
  br i1 %.not.i1017, label %bb.og, label %bb.ok

bb.og:                                            ; preds = %lean_inc.exit611
  %i.uw = load i32, ptr %i.sp, align 8, !tbaa !12 ; 3 uses
  %i.ux = icmp sgt i32 %i.uw, 1
  br i1 %i.ux, label %bb.oh, label %bb.oi, !prof !13

bb.oh:                                            ; preds = %bb.og
  %i.uy = add nsw i32 %i.uw, -1
  store i32 %i.uy, ptr %i.sp, align 8, !tbaa !12
  br label %bb.ok

bb.oi:                                            ; preds = %bb.og
  %.not.i744 = icmp eq i32 %i.uw, 0
  br i1 %.not.i744, label %bb.ok, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.sp) #4
  br label %bb.ok

bb.ok:                                            ; preds = %lean_inc.exit611, %bb.oh, %bb.oi, %bb.oj
  %i.uz = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  store ptr %i.up, ptr %i.va, align 8, !tbaa !10
  br label %lean_dec_ref.exit825.thread

bb.ol:                                            ; preds = %lean_obj_tag.exit961
  br i1 %.not.i622, label %bb.om, label %lean_dec.exit666

bb.om:                                            ; preds = %bb.ol
  %i.vb = load i32, ptr %i.mh, align 4, !tbaa !12 ; 3 uses
  %i.vc = icmp sgt i32 %i.vb, 1
  br i1 %i.vc, label %bb.on, label %bb.oo, !prof !13

bb.on:                                            ; preds = %bb.om
  %i.vd = add nsw i32 %i.vb, -1
  store i32 %i.vd, ptr %i.mh, align 4, !tbaa !12
  br label %lean_dec.exit666

bb.oo:                                            ; preds = %bb.om
  %.not.i746 = icmp eq i32 %i.vb, 0
  br i1 %.not.i746, label %lean_dec.exit666, label %bb.op

bb.op:                                            ; preds = %bb.oo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.mh) #4
  br label %lean_dec.exit666

lean_dec.exit666:                                 ; preds = %bb.op, %bb.oo, %bb.on, %bb.ol
  %i.ve = ptrtoint ptr %.0552 to i64
  %i.vf = and i64 %i.ve, 1
  %.not.i1031 = icmp eq i64 %i.vf, 0
  br i1 %.not.i1031, label %bb.oq, label %lean_del_object.exit1032

bb.oq:                                            ; preds = %lean_dec.exit666
  tail call void @lean_free_object(ptr noundef nonnull %.0552) #4
  br label %lean_del_object.exit1032

lean_del_object.exit1032:                         ; preds = %lean_dec.exit666, %bb.oq
  %i.vg = load i32, ptr %i.lh, align 4, !tbaa !12 ; 3 uses
  %i.vh = icmp sgt i32 %i.vg, 1
  br i1 %i.vh, label %bb.or, label %bb.os, !prof !13

bb.or:                                            ; preds = %lean_del_object.exit1032
  %i.vi = add nsw i32 %i.vg, -1
  store i32 %i.vi, ptr %i.lh, align 4, !tbaa !12
  br label %lean_dec_ref.exit785

bb.os:                                            ; preds = %lean_del_object.exit1032
  %.not.i784 = icmp eq i32 %i.vg, 0
  br i1 %.not.i784, label %lean_dec_ref.exit785, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.lh) #4
  br label %lean_dec_ref.exit785

lean_dec_ref.exit785:                             ; preds = %bb.or, %bb.os, %bb.ot
  %i.vj = load i32, ptr %i.lf, align 4, !tbaa !12 ; 3 uses
  %i.vk = icmp sgt i32 %i.vj, 1
  br i1 %i.vk, label %bb.ou, label %bb.ov, !prof !13

bb.ou:                                            ; preds = %lean_dec_ref.exit785
  %i.vl = add nsw i32 %i.vj, -1
  store i32 %i.vl, ptr %i.lf, align 4, !tbaa !12
  br label %lean_dec_ref.exit783

bb.ov:                                            ; preds = %lean_dec_ref.exit785
  %.not.i782 = icmp eq i32 %i.vj, 0
  br i1 %.not.i782, label %lean_dec_ref.exit783, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.lf) #4
  br label %lean_dec_ref.exit783

lean_dec_ref.exit783:                             ; preds = %bb.ou, %bb.ov, %bb.ow
  %i.vm = load i32, ptr %i.v, align 4, !tbaa !12  ; 3 uses
  %i.vn = icmp sgt i32 %i.vm, 1
  br i1 %i.vn, label %bb.ox, label %bb.oy, !prof !13

bb.ox:                                            ; preds = %lean_dec_ref.exit783
  %i.vo = add nsw i32 %i.vm, -1
  store i32 %i.vo, ptr %i.v, align 4, !tbaa !12
  br label %lean_dec_ref.exit781

bb.oy:                                            ; preds = %lean_dec_ref.exit783
  %.not.i780 = icmp eq i32 %i.vm, 0
  br i1 %.not.i780, label %lean_dec_ref.exit781, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.v) #4
  br label %lean_dec_ref.exit781

lean_dec_ref.exit781:                             ; preds = %bb.ox, %bb.oy, %bb.oz
  %i.vp = load i32, ptr %i.h, align 4, !tbaa !12  ; 3 uses
  %i.vq = icmp sgt i32 %i.vp, 1
  br i1 %i.vq, label %bb.pa, label %bb.pb, !prof !13

bb.pa:                                            ; preds = %lean_dec_ref.exit781
  %i.vr = add nsw i32 %i.vp, -1
  store i32 %i.vr, ptr %i.h, align 4, !tbaa !12
  br label %lean_dec_ref.exit779

bb.pb:                                            ; preds = %lean_dec_ref.exit781
  %.not.i778 = icmp eq i32 %i.vp, 0
  br i1 %.not.i778, label %lean_dec_ref.exit779, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.h) #4
  br label %lean_dec_ref.exit779

lean_dec_ref.exit779:                             ; preds = %bb.pa, %bb.pb, %bb.pc
  %i.vs = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !10 ; 5 uses
  %.val832 = load i32, ptr %i.my, align 8, !tbaa !12
  %i.vu = icmp eq i32 %.val832, 1
  br i1 %i.vu, label %lean_dec_ref.exit825.thread, label %bb.pd

bb.pd:                                            ; preds = %lean_dec_ref.exit779
  %i.vv = ptrtoint ptr %i.vt to i64
  %i.vw = and i64 %i.vv, 1
  %.not.i608 = icmp eq i64 %i.vw, 0
  br i1 %.not.i608, label %bb.pe, label %lean_inc.exit609

bb.pe:                                            ; preds = %bb.pd
  %.val.i.i1033 = load i32, ptr %i.vt, align 4, !tbaa !12 ; 3 uses
  %i.vx = icmp sgt i32 %.val.i.i1033, 0
  br i1 %i.vx, label %bb.pf, label %bb.pg, !prof !13

bb.pf:                                            ; preds = %bb.pe
  %i.vy = add nuw i32 %.val.i.i1033, 1
  store i32 %i.vy, ptr %i.vt, align 4, !tbaa !12
  br label %lean_inc.exit609

bb.pg:                                            ; preds = %bb.pe
  %.not.i.i1034 = icmp eq i32 %.val.i.i1033, 0
  br i1 %.not.i.i1034, label %lean_inc.exit609, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.vz = atomicrmw sub ptr %i.vt, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit609

lean_inc.exit609:                                 ; preds = %bb.ph, %bb.pg, %bb.pf, %bb.pd
  br i1 %.not.i958, label %bb.pi, label %bb.pm

bb.pi:                                            ; preds = %lean_inc.exit609
  %i.wa = load i32, ptr %i.my, align 8, !tbaa !12 ; 3 uses
  %i.wb = icmp sgt i32 %i.wa, 1
  br i1 %i.wb, label %bb.pj, label %bb.pk, !prof !13

bb.pj:                                            ; preds = %bb.pi
  %i.wc = add nsw i32 %i.wa, -1
  store i32 %i.wc, ptr %i.my, align 8, !tbaa !12
  br label %bb.pm

bb.pk:                                            ; preds = %bb.pi
  %.not.i748 = icmp eq i32 %i.wa, 0
  br i1 %.not.i748, label %bb.pm, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.my) #4
  br label %bb.pm

bb.pm:                                            ; preds = %lean_inc.exit609, %bb.pj, %bb.pk, %bb.pl
  %i.wd = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  store ptr %i.vt, ptr %i.we, align 8, !tbaa !10
  br label %lean_dec_ref.exit825.thread

bb.pn:                                            ; preds = %lean_dec_ref_known.exit957
  br i1 %.not.i622, label %bb.po, label %lean_dec.exit662

bb.po:                                            ; preds = %bb.pn
  %i.wf = load i32, ptr %i.mh, align 4, !tbaa !12 ; 3 uses
  %i.wg = icmp sgt i32 %i.wf, 1
  br i1 %i.wg, label %bb.pp, label %bb.pq, !prof !13

bb.pp:                                            ; preds = %bb.po
  %i.wh = add nsw i32 %i.wf, -1
  store i32 %i.wh, ptr %i.mh, align 4, !tbaa !12
  br label %lean_dec.exit662

bb.pq:                                            ; preds = %bb.po
  %.not.i750 = icmp eq i32 %i.wf, 0
  br i1 %.not.i750, label %lean_dec.exit662, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.mh) #4
  br label %lean_dec.exit662

lean_dec.exit662:                                 ; preds = %bb.pr, %bb.pq, %bb.pp, %bb.pn
  %i.wi = load i32, ptr %i.lf, align 4, !tbaa !12 ; 3 uses
  %i.wj = icmp sgt i32 %i.wi, 1
  br i1 %i.wj, label %bb.ps, label %bb.pt, !prof !13

bb.ps:                                            ; preds = %lean_dec.exit662
  %i.wk = add nsw i32 %i.wi, -1
  store i32 %i.wk, ptr %i.lf, align 4, !tbaa !12
  br label %lean_dec_ref.exit777

bb.pt:                                            ; preds = %lean_dec.exit662
  %.not.i776 = icmp eq i32 %i.wi, 0
  br i1 %.not.i776, label %lean_dec_ref.exit777, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.lf) #4
  br label %lean_dec_ref.exit777

lean_dec_ref.exit777:                             ; preds = %bb.ps, %bb.pt, %bb.pu
  %i.wl = tail call ptr @l_Lean_Meta_Sym_getBoolTrueExpr___redArg(ptr noundef nonnull %5) #4 ; 14 uses
  %i.wm = ptrtoint ptr %i.wl to i64               ; 2 uses
  %i.wn = and i64 %i.wm, 1
  %.not.i1036 = icmp eq i64 %i.wn, 0              ; 3 uses
  br i1 %.not.i1036, label %bb.pw, label %bb.pv

bb.pv:                                            ; preds = %lean_dec_ref.exit777
  %i.wo = lshr i64 %i.wm, 1
  %i.wp = trunc i64 %i.wo to i32
  br label %lean_obj_tag.exit1039
end_hunk_10
begin_hunk_11_@l_Lean_Meta_Tactic_Cbv_tryMatcher:bb.a
  %.not.i855 = icmp eq i64 %i.nh, 0
  br i1 %.not.i855, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %lean_dec.exit619
  %i.ni = lshr i64 %i.ng, 1
  %i.nj = trunc i64 %i.ni to i32
  br label %lean_obj_tag.exit858

bb.il:                                            ; preds = %lean_dec.exit619
  %i.nk = getelementptr i8, ptr %i.mx, i64 4
  %.val.i857 = load i32, ptr %i.nk, align 4
  %i.nl = lshr i32 %.val.i857, 24
  br label %lean_obj_tag.exit858

lean_obj_tag.exit858:                             ; preds = %bb.ik, %bb.il
  %.0.i856 = phi i32 [ %i.nj, %bb.ik ], [ %i.nl, %bb.il ]
  %i.nm = icmp eq i32 %.0.i856, 0
  br i1 %i.nm, label %bb.im, label %.thread

bb.im:                                            ; preds = %lean_obj_tag.exit858
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !10 ; 22 uses
  %i.np = ptrtoint ptr %i.no to i64               ; 2 uses
  %i.nq = and i64 %i.np, 1
  %.not.i575 = icmp eq i64 %i.nq, 0               ; 2 uses
  br i1 %.not.i575, label %bb.in, label %lean_inc.exit576

bb.in:                                            ; preds = %bb.im
  %.val.i.i859 = load i32, ptr %i.no, align 4, !tbaa !12 ; 3 uses
  %i.nr = icmp sgt i32 %.val.i.i859, 0
  br i1 %i.nr, label %bb.io, label %bb.ip, !prof !13

bb.io:                                            ; preds = %bb.in
  %i.ns = add nuw i32 %.val.i.i859, 1
  store i32 %i.ns, ptr %i.no, align 4, !tbaa !12
  br label %bb.ir

bb.ip:                                            ; preds = %bb.in
  %.not.i.i860 = icmp eq i32 %.val.i.i859, 0
  br i1 %.not.i.i860, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.nt = atomicrmw sub ptr %i.no, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.ir

lean_inc.exit576:                                 ; preds = %bb.im
  %i.nu = lshr i64 %i.np, 1
  %i.nv = trunc i64 %i.nu to i32
  br label %lean_obj_tag.exit865

bb.ir:                                            ; preds = %bb.iq, %bb.ip, %bb.io
  %i.nw = getelementptr i8, ptr %i.no, i64 4
  %.val.i864 = load i32, ptr %i.nw, align 4
  %i.nx = lshr i32 %.val.i864, 24
  br label %lean_obj_tag.exit865

lean_obj_tag.exit865:                             ; preds = %lean_inc.exit576, %bb.ir
  %.0.i863 = phi i32 [ %i.nv, %lean_inc.exit576 ], [ %i.nx, %bb.ir ]
  %i.ny = icmp eq i32 %.0.i863, 0
  %i.nz = getelementptr inbounds nuw i8, ptr %i.no, i64 8 ; 3 uses
  br i1 %i.ny, label %bb.is, label %bb.kh

bb.is:                                            ; preds = %lean_obj_tag.exit865
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !18
  %i.ob = icmp eq i8 %i.oa, 0
  br i1 %i.ob, label %bb.it, label %bb.kg

bb.it:                                            ; preds = %bb.is
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.mx, i32 noundef 1)
  %i.oc = getelementptr inbounds nuw i8, ptr %i.no, i64 9
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !18  ; 2 uses
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.no, i32 noundef 0)
  %.val.i.i866 = load i32, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.oe = icmp sgt i32 %.val.i.i866, 0
  br i1 %i.oe, label %bb.iu, label %bb.iv, !prof !13

bb.iu:                                            ; preds = %bb.it
  %i.of = add nuw i32 %.val.i.i866, 1
  store i32 %i.of, ptr %0, align 4, !tbaa !12
  br label %lean_inc_ref.exit868

bb.iv:                                            ; preds = %bb.it
  %.not.i.i867 = icmp eq i32 %.val.i.i866, 0
  br i1 %.not.i.i867, label %lean_inc_ref.exit868, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.og = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit868

lean_inc_ref.exit868:                             ; preds = %bb.iu, %bb.iv, %bb.iw
  br i1 %.not.i593, label %bb.ix, label %lean_inc.exit574

bb.ix:                                            ; preds = %lean_inc_ref.exit868
  %.val.i.i869 = load i32, ptr %i.z, align 4, !tbaa !12 ; 3 uses
  %i.oh = icmp sgt i32 %.val.i.i869, 0
  br i1 %i.oh, label %bb.iy, label %bb.iz, !prof !13

bb.iy:                                            ; preds = %bb.ix
  %i.oi = add nuw i32 %.val.i.i869, 1
  store i32 %i.oi, ptr %i.z, align 4, !tbaa !12
  br label %lean_inc.exit574

bb.iz:                                            ; preds = %bb.ix
  %.not.i.i870 = icmp eq i32 %.val.i.i869, 0
  br i1 %.not.i.i870, label %lean_inc.exit574, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.oj = atomicrmw sub ptr %i.z, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit574

lean_inc.exit574:                                 ; preds = %bb.ja, %bb.iz, %bb.iy, %lean_inc_ref.exit868
  %i.ok = tail call ptr @l___private_Lean_Meta_Tactic_Cbv_ControlFlow_0__Lean_Meta_Tactic_Cbv_tryMatchEquations(ptr noundef %i.z, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) ; 19 uses
  %i.ol = ptrtoint ptr %i.ok to i64               ; 11 uses
  %i.om = and i64 %i.ol, 1
  %.not.i872 = icmp eq i64 %i.om, 0               ; 2 uses
  br i1 %.not.i872, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %lean_inc.exit574
  %i.on = lshr i64 %i.ol, 1
  %i.oo = trunc i64 %i.on to i32
  br label %lean_obj_tag.exit875

bb.jc:                                            ; preds = %lean_inc.exit574
  %i.op = getelementptr i8, ptr %i.ok, i64 4
  %.val.i874 = load i32, ptr %i.op, align 4
  %i.oq = lshr i32 %.val.i874, 24
  br label %lean_obj_tag.exit875

lean_obj_tag.exit875:                             ; preds = %bb.jb, %bb.jc
  %.0.i873 = phi i32 [ %i.oo, %bb.jb ], [ %i.oq, %bb.jc ]
  %i.or = icmp eq i32 %.0.i873, 0
  br i1 %i.or, label %bb.jd, label %.thread

bb.jd:                                            ; preds = %lean_obj_tag.exit875
  %i.os = getelementptr inbounds nuw i8, ptr %i.ok, i64 8 ; 2 uses
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !10 ; 14 uses
  %i.ou = ptrtoint ptr %i.ot to i64               ; 2 uses
  %i.ov = and i64 %i.ou, 1
  %.not.i571 = icmp eq i64 %i.ov, 0
  br i1 %.not.i571, label %bb.je, label %lean_inc.exit572.thread

bb.je:                                            ; preds = %bb.jd
  %.val.i.i876 = load i32, ptr %i.ot, align 4, !tbaa !12 ; 3 uses
  %i.ow = icmp sgt i32 %.val.i.i876, 0
  br i1 %i.ow, label %bb.jf, label %bb.jg, !prof !13

bb.jf:                                            ; preds = %bb.je
  %i.ox = add nuw i32 %.val.i.i876, 1
  store i32 %i.ox, ptr %i.ot, align 4, !tbaa !12
  br label %lean_inc.exit572

bb.jg:                                            ; preds = %bb.je
  %.not.i.i877 = icmp eq i32 %.val.i.i876, 0
  br i1 %.not.i.i877, label %lean_inc.exit572, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.oy = atomicrmw sub ptr %i.ot, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit572

lean_inc.exit572:                                 ; preds = %bb.jh, %bb.jg, %bb.jf
  %i.oz = icmp eq i8 %i.od, 0
  br i1 %i.oz, label %bb.ji, label %lean_obj_tag.exit882

lean_inc.exit572.thread:                          ; preds = %bb.jd
  %i.pa = icmp eq i8 %i.od, 0
  br i1 %i.pa, label %.thread, label %lean_obj_tag.exit882.thread

bb.ji:                                            ; preds = %lean_inc.exit572
  %i.pb = load i32, ptr %i.ot, align 4, !tbaa !12 ; 3 uses
  %i.pc = icmp sgt i32 %i.pb, 1
  br i1 %i.pc, label %bb.jj, label %bb.jk, !prof !13

bb.jj:                                            ; preds = %bb.ji
  %i.pd = add nsw i32 %i.pb, -1
  store i32 %i.pd, ptr %i.ot, align 4, !tbaa !12
  br label %.thread

bb.jk:                                            ; preds = %bb.ji
  %.not.i681 = icmp eq i32 %i.pb, 0
  br i1 %.not.i681, label %.thread, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ot) #4
  br label %.thread

lean_obj_tag.exit882:                             ; preds = %lean_inc.exit572
  %i.pe = getelementptr i8, ptr %i.ot, i64 4
  %.val.i881 = load i32, ptr %i.pe, align 4
  %i.pf = icmp ult i32 %.val.i881, 16777216
  %.0500.in.v = select i1 %i.pf, i64 9, i64 25
  %.0500.in = getelementptr inbounds nuw i8, ptr %i.ot, i64 %.0500.in.v
  %.0500 = load i8, ptr %.0500.in, align 1, !tbaa !18
  %i.pg = icmp eq i8 %.0500, 0
  br i1 %i.pg, label %bb.jm, label %bb.kc

lean_obj_tag.exit882.thread:                      ; preds = %lean_inc.exit572.thread
  %i.ph = and i64 %i.ou, 8589934590
  %i.pi = icmp eq i64 %i.ph, 0
  %.0500.in.v1133 = select i1 %i.pi, i64 9, i64 25
  %.0500.in1134 = getelementptr inbounds nuw i8, ptr %i.ot, i64 %.0500.in.v1133
  %.05001135 = load i8, ptr %.0500.in1134, align 1, !tbaa !18
  %i.pj = icmp eq i8 %.05001135, 0
  br i1 %i.pj, label %bb.jm, label %.thread

bb.jm:                                            ; preds = %lean_obj_tag.exit882.thread, %lean_obj_tag.exit882
  %.val749 = load i32, ptr %i.ok, align 8, !tbaa !12 ; 4 uses
  %i.pk = icmp eq i32 %.val749, 1                 ; 2 uses
  br i1 %i.pk, label %bb.jn, label %bb.js

bb.jn:                                            ; preds = %bb.jm
  %i.pl = load ptr, ptr %i.os, align 8, !tbaa !10 ; 4 uses
  %i.pm = ptrtoint ptr %i.pl to i64
  %i.pn = and i64 %i.pm, 1
  %.not.i614 = icmp eq i64 %i.pn, 0
  br i1 %.not.i614, label %bb.jo, label %lean_dec.exit615

bb.jo:                                            ; preds = %bb.jn
  %i.po = load i32, ptr %i.pl, align 4, !tbaa !12 ; 3 uses
  %i.pp = icmp sgt i32 %i.po, 1
  br i1 %i.pp, label %bb.jp, label %bb.jq, !prof !13

bb.jp:                                            ; preds = %bb.jo
  %i.pq = add nsw i32 %i.po, -1
  store i32 %i.pq, ptr %i.pl, align 4, !tbaa !12
  br label %lean_dec.exit615

bb.jq:                                            ; preds = %bb.jo
  %.not.i683 = icmp eq i32 %i.po, 0
  br i1 %.not.i683, label %lean_dec.exit615, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.pl) #4
  br label %lean_dec.exit615

bb.js:                                            ; preds = %bb.jm
  br i1 %.not.i872, label %bb.jt, label %lean_dec.exit615

bb.jt:                                            ; preds = %bb.js
  %i.pr = icmp sgt i32 %.val749, 1
  br i1 %i.pr, label %bb.ju, label %bb.jv, !prof !13

bb.ju:                                            ; preds = %bb.jt
  %i.ps = add nsw i32 %.val749, -1
  store i32 %i.ps, ptr %i.ok, align 8, !tbaa !12
  br label %lean_dec.exit615

bb.jv:                                            ; preds = %bb.jt
  %.not.i685 = icmp eq i32 %.val749, 0
  br i1 %.not.i685, label %lean_dec.exit615, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ok) #4
  br label %lean_dec.exit615

lean_dec.exit615:                                 ; preds = %bb.js, %bb.ju, %bb.jv, %bb.jw, %bb.jn, %bb.jp, %bb.jq, %bb.jr
  %.0490 = phi ptr [ %i.ok, %bb.jn ], [ %i.ok, %bb.jr ], [ %i.ok, %bb.jq ], [ %i.ok, %bb.jp ], [ inttoptr (i64 1 to ptr), %bb.jw ], [ inttoptr (i64 1 to ptr), %bb.jv ], [ inttoptr (i64 1 to ptr), %bb.ju ], [ inttoptr (i64 1 to ptr), %bb.js ] ; 2 uses
  %i.pt = tail call ptr @l_Lean_Meta_Sym_Simp_Result_withContextDependent(ptr noundef nonnull %i.ot) #4 ; 7 uses
  %.val.i.i883 = load i32, ptr %i.pt, align 4, !tbaa !12 ; 3 uses
  %i.pu = icmp sgt i32 %.val.i.i883, 0
  br i1 %i.pu, label %bb.jx, label %bb.jy, !prof !13

bb.jx:                                            ; preds = %lean_dec.exit615
  %i.pv = add nuw i32 %.val.i.i883, 1
  store i32 %i.pv, ptr %i.pt, align 4, !tbaa !12
  br label %lean_inc_ref.exit885

bb.jy:                                            ; preds = %lean_dec.exit615
  %.not.i.i884 = icmp eq i32 %.val.i.i883, 0
  br i1 %.not.i.i884, label %lean_inc_ref.exit885, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.pw = atomicrmw sub ptr %i.pt, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit885

lean_inc_ref.exit885:                             ; preds = %bb.jx, %bb.jy, %bb.jz
  br i1 %i.pk, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %lean_inc_ref.exit885
  %i.px = getelementptr inbounds nuw i8, ptr %.0490, i64 8
  store ptr %i.pt, ptr %i.px, align 8, !tbaa !10
  br label %lean_inc.exit584

bb.kb:                                            ; preds = %lean_inc_ref.exit885
  %i.py = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  store ptr %i.pt, ptr %i.pz, align 8, !tbaa !10
  br label %lean_inc.exit584

bb.kc:                                            ; preds = %lean_obj_tag.exit882
  %i.qa = load i32, ptr %i.ot, align 4, !tbaa !12 ; 3 uses
  %i.qb = icmp sgt i32 %i.qa, 1
  br i1 %i.qb, label %bb.kd, label %bb.ke, !prof !13

bb.kd:                                            ; preds = %bb.kc
  %i.qc = add nsw i32 %i.qa, -1
  store i32 %i.qc, ptr %i.ot, align 4, !tbaa !12
  br label %.thread

bb.ke:                                            ; preds = %bb.kc
  %.not.i687 = icmp eq i32 %i.qa, 0
  br i1 %.not.i687, label %.thread, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ot) #4
  br label %.thread

bb.kg:                                            ; preds = %bb.is
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.no, i32 noundef 0)
  br label %.thread

bb.kh:                                            ; preds = %lean_obj_tag.exit865
  %i.qd = getelementptr inbounds nuw i8, ptr %i.no, i64 24
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !18
  %i.qf = icmp eq i8 %i.qe, 0
  br i1 %i.qf, label %bb.ki, label %bb.of

bb.ki:                                            ; preds = %bb.kh
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.mx, i32 noundef 1)
  %i.qg = load ptr, ptr %i.nz, align 8, !tbaa !10 ; 17 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !10 ; 9 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.no, i64 25
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !18  ; 4 uses
  %.val748 = load i32, ptr %i.no, align 8, !tbaa !12
  %i.ql = icmp eq i32 %.val748, 1                 ; 2 uses
  br i1 %i.ql, label %lean_dec.exit609, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.qm = ptrtoint ptr %i.qi to i64
  %i.qn = and i64 %i.qm, 1
  %.not.i569 = icmp eq i64 %i.qn, 0
  br i1 %.not.i569, label %bb.kk, label %lean_inc.exit570

bb.kk:                                            ; preds = %bb.kj
  %.val.i.i886 = load i32, ptr %i.qi, align 4, !tbaa !12 ; 3 uses
  %i.qo = icmp sgt i32 %.val.i.i886, 0
  br i1 %i.qo, label %bb.kl, label %bb.km, !prof !13

bb.kl:                                            ; preds = %bb.kk
  %i.qp = add nuw i32 %.val.i.i886, 1
  store i32 %i.qp, ptr %i.qi, align 4, !tbaa !12
  br label %lean_inc.exit570

bb.km:                                            ; preds = %bb.kk
  %.not.i.i887 = icmp eq i32 %.val.i.i886, 0
  br i1 %.not.i.i887, label %lean_inc.exit570, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.qq = atomicrmw sub ptr %i.qi, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit570

lean_inc.exit570:                                 ; preds = %bb.kn, %bb.km, %bb.kl, %bb.kj
  %i.qr = ptrtoint ptr %i.qg to i64
  %i.qs = and i64 %i.qr, 1
  %.not.i567 = icmp eq i64 %i.qs, 0
  br i1 %.not.i567, label %bb.ko, label %lean_inc.exit568

bb.ko:                                            ; preds = %lean_inc.exit570
  %.val.i.i889 = load i32, ptr %i.qg, align 4, !tbaa !12 ; 3 uses
  %i.qt = icmp sgt i32 %.val.i.i889, 0
  br i1 %i.qt, label %bb.kp, label %bb.kq, !prof !13

bb.kp:                                            ; preds = %bb.ko
  %i.qu = add nuw i32 %.val.i.i889, 1
  store i32 %i.qu, ptr %i.qg, align 4, !tbaa !12
  br label %lean_inc.exit568

bb.kq:                                            ; preds = %bb.ko
  %.not.i.i890 = icmp eq i32 %.val.i.i889, 0
  br i1 %.not.i.i890, label %lean_inc.exit568, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.qv = atomicrmw sub ptr %i.qg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit568

lean_inc.exit568:                                 ; preds = %bb.kr, %bb.kq, %bb.kp, %lean_inc.exit570
  br i1 %.not.i575, label %bb.ks, label %lean_dec.exit609

bb.ks:                                            ; preds = %lean_inc.exit568
  %i.qw = load i32, ptr %i.no, align 8, !tbaa !12 ; 3 uses
  %i.qx = icmp sgt i32 %i.qw, 1
  br i1 %i.qx, label %bb.kt, label %bb.ku, !prof !13

bb.kt:                                            ; preds = %bb.ks
  %i.qy = add nsw i32 %i.qw, -1
  store i32 %i.qy, ptr %i.no, align 8, !tbaa !12
  br label %lean_dec.exit609

bb.ku:                                            ; preds = %bb.ks
  %.not.i689 = icmp eq i32 %i.qw, 0
  br i1 %.not.i689, label %lean_dec.exit609, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.no) #4
  br label %lean_dec.exit609

lean_dec.exit609:                                 ; preds = %lean_inc.exit568, %bb.kt, %bb.ku, %bb.kv, %bb.ki
  %.0485 = phi ptr [ %i.no, %bb.ki ], [ inttoptr (i64 1 to ptr), %bb.kv ], [ inttoptr (i64 1 to ptr), %bb.ku ], [ inttoptr (i64 1 to ptr), %bb.kt ], [ inttoptr (i64 1 to ptr), %lean_inc.exit568 ] ; 5 uses
  %.val.i.i892 = load i32, ptr %i.qg, align 4, !tbaa !12 ; 3 uses
  %i.qz = icmp sgt i32 %.val.i.i892, 0
  br i1 %i.qz, label %bb.kw, label %bb.kx, !prof !13
end_hunk_11
