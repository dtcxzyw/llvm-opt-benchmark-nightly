Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/ExprDefEq?download=true
inline.NumInlined: 14717
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumUnrolled: 96
begin_hunk_0_@l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_unfoldReducibleDefEq:bb.a
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = and i64 %i.y, 1
  %.not.i268 = icmp eq i64 %i.z, 0                ; 4 uses
  br i1 %.not.i268, label %bb.m, label %lean_inc.exit269

bb.m:                                             ; preds = %bb.l
  %.val.i.i384 = load i32, ptr %i.x, align 4, !tbaa !11 ; 3 uses
  %i.aa = icmp sgt i32 %.val.i.i384, 0
  br i1 %i.aa, label %bb.n, label %bb.o, !prof !17

bb.n:                                             ; preds = %bb.m
  %i.ab = add nuw i32 %.val.i.i384, 1
  store i32 %i.ab, ptr %i.x, align 4, !tbaa !11
  br label %lean_inc.exit269

bb.o:                                             ; preds = %bb.m
  %.not.i.i385 = icmp eq i32 %.val.i.i384, 0
  br i1 %.not.i.i385, label %lean_inc.exit269, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = atomicrmw sub ptr %i.x, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit269

lean_inc.exit269:                                 ; preds = %bb.p, %bb.o, %bb.n, %bb.l
  %.val.i387 = load i32, ptr %i.o, align 8, !tbaa !11 ; 4 uses
  %i.ad = icmp eq i32 %.val.i387, 1
  br i1 %i.ad, label %.preheader.i.preheader, label %bb.u

.preheader.i.preheader:                           ; preds = %lean_inc.exit269
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !15  ; 4 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = and i64 %i.af, 1
  %.not.i.i388 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i388, label %bb.q, label %lean_dec.exit.i

bb.q:                                             ; preds = %.preheader.i.preheader
  %i.ah = load i32, ptr %i.ae, align 4, !tbaa !11 ; 3 uses
  %i.ai = icmp sgt i32 %i.ah, 1
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !17

bb.r:                                             ; preds = %bb.q
  %i.aj = add nsw i32 %i.ah, -1
  store i32 %i.aj, ptr %i.ae, align 4, !tbaa !11
  br label %lean_dec.exit.i

bb.s:                                             ; preds = %bb.q
  %.not.i7.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ae) #12
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.t, %bb.s, %bb.r, %.preheader.i.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.o) #12
  br label %lean_dec_ref_known.exit

bb.u:                                             ; preds = %lean_inc.exit269
  %i.ak = icmp sgt i32 %.val.i387, 1
  br i1 %i.ak, label %bb.v, label %bb.w, !prof !17

bb.v:                                             ; preds = %bb.u
  %i.al = add nsw i32 %.val.i387, -1
  store i32 %i.al, ptr %i.o, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit

bb.w:                                             ; preds = %bb.u
  %.not.i8.i = icmp eq i32 %.val.i387, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.o) #12
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.v, %bb.w, %bb.x
  %i.am = tail call ptr @l_Lean_ConstantInfo_name(ptr noundef %1) #12 ; 24 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 1
  %.not.i266 = icmp eq i64 %i.ao, 0               ; 7 uses
  br i1 %.not.i266, label %bb.y, label %lean_inc.exit267

bb.y:                                             ; preds = %lean_dec_ref_known.exit
  %.val.i.i389 = load i32, ptr %i.am, align 4, !tbaa !11 ; 3 uses
  %i.ap = icmp sgt i32 %.val.i.i389, 0
  br i1 %i.ap, label %bb.z, label %bb.aa, !prof !17

bb.z:                                             ; preds = %bb.y
  %i.aq = add nuw i32 %.val.i.i389, 1
  store i32 %i.aq, ptr %i.am, align 4, !tbaa !11
  br label %lean_inc.exit267

bb.aa:                                            ; preds = %bb.y
  %.not.i.i390 = icmp eq i32 %.val.i.i389, 0
  br i1 %.not.i.i390, label %lean_inc.exit267, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ar = atomicrmw sub ptr %i.am, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit267

lean_inc.exit267:                                 ; preds = %bb.ab, %bb.aa, %bb.z, %lean_dec_ref_known.exit
  %i.as = tail call ptr @l_Lean_isReducible___at___00__private_Lean_Meta_ExprDefEq_0__Lean_Meta_unfoldReducibleDefEq_spec__0(ptr noundef %i.am, ptr poison, ptr poison, ptr poison, ptr noundef %7) ; 13 uses
  %i.at = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.au = and i64 %i.at, 1
  %.not.i392 = icmp eq i64 %i.au, 0               ; 2 uses
  br i1 %.not.i392, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %lean_inc.exit267
  %i.av = lshr i64 %i.at, 1
  %i.aw = trunc i64 %i.av to i32
  br label %lean_obj_tag.exit395

bb.ad:                                            ; preds = %lean_inc.exit267
  %i.ax = getelementptr i8, ptr %i.as, i64 4
  %.val.i394 = load i32, ptr %i.ax, align 4
  %i.ay = lshr i32 %.val.i394, 24
  br label %lean_obj_tag.exit395

lean_obj_tag.exit395:                             ; preds = %bb.ac, %bb.ad
  %.0.i393 = phi i32 [ %i.aw, %bb.ac ], [ %i.ay, %bb.ad ]
  %i.az = icmp eq i32 %.0.i393, 0
  br i1 %i.az, label %bb.ae, label %bb.gd

bb.ae:                                            ; preds = %lean_obj_tag.exit395
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !15 ; 13 uses
  %i.bc = ptrtoint ptr %i.bb to i64               ; 3 uses
  %i.bd = and i64 %i.bc, 1
  %.not.i264 = icmp eq i64 %i.bd, 0               ; 4 uses
  br i1 %.not.i264, label %bb.af, label %lean_inc.exit265

bb.af:                                            ; preds = %bb.ae
  %.val.i.i396 = load i32, ptr %i.bb, align 4, !tbaa !11 ; 3 uses
  %i.be = icmp sgt i32 %.val.i.i396, 0
  br i1 %i.be, label %bb.ag, label %bb.ah, !prof !17

bb.ag:                                            ; preds = %bb.af
  %i.bf = add nuw i32 %.val.i.i396, 1
  store i32 %i.bf, ptr %i.bb, align 4, !tbaa !11
  br label %lean_inc.exit265

bb.ah:                                            ; preds = %bb.af
  %.not.i.i397 = icmp eq i32 %.val.i.i396, 0
  br i1 %.not.i.i397, label %lean_inc.exit265, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bg = atomicrmw sub ptr %i.bb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit265

lean_inc.exit265:                                 ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ae
  %.val.i399 = load i32, ptr %i.as, align 8, !tbaa !11 ; 4 uses
  %i.bh = icmp eq i32 %.val.i399, 1
  br i1 %i.bh, label %.preheader.i401.preheader, label %bb.an

.preheader.i401.preheader:                        ; preds = %lean_inc.exit265
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !15 ; 4 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = and i64 %i.bj, 1
  %.not.i.i403 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i403, label %bb.aj, label %lean_dec.exit.i404

bb.aj:                                            ; preds = %.preheader.i401.preheader
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !11 ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 1
  br i1 %i.bm, label %bb.ak, label %bb.al, !prof !17

bb.ak:                                            ; preds = %bb.aj
  %i.bn = add nsw i32 %i.bl, -1
  store i32 %i.bn, ptr %i.bi, align 4, !tbaa !11
  br label %lean_dec.exit.i404

bb.al:                                            ; preds = %bb.aj
  %.not.i7.i408 = icmp eq i32 %i.bl, 0
  br i1 %.not.i7.i408, label %lean_dec.exit.i404, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bi) #12
  br label %lean_dec.exit.i404

lean_dec.exit.i404:                               ; preds = %bb.am, %bb.al, %bb.ak, %.preheader.i401.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.as) #12
  br label %lean_dec_ref_known.exit409

bb.an:                                            ; preds = %lean_inc.exit265
  %i.bo = icmp sgt i32 %.val.i399, 1
  br i1 %i.bo, label %bb.ao, label %bb.ap, !prof !17

bb.ao:                                            ; preds = %bb.an
  %i.bp = add nsw i32 %.val.i399, -1
  store i32 %i.bp, ptr %i.as, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit409

bb.ap:                                            ; preds = %bb.an
  %.not.i8.i400 = icmp eq i32 %.val.i399, 0
  br i1 %.not.i8.i400, label %lean_dec_ref_known.exit409, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.as) #12
  br label %lean_dec_ref_known.exit409

lean_dec_ref_known.exit409:                       ; preds = %lean_dec.exit.i404, %bb.ao, %bb.ap, %bb.aq
  %8 = lshr i64 %i.y, 1
  %i.bq = and i64 %8, 255                         ; 2 uses
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.ar, label %bb.aw

bb.ar:                                            ; preds = %lean_dec_ref_known.exit409
  br i1 %.not.i270, label %bb.as, label %lean_dec.exit308

bb.as:                                            ; preds = %bb.ar
  %i.bs = load i32, ptr %i.i, align 4, !tbaa !11  ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 1
  br i1 %i.bt, label %bb.at, label %bb.au, !prof !17

bb.at:                                            ; preds = %bb.as
  %i.bu = add nsw i32 %i.bs, -1
  store i32 %i.bu, ptr %i.i, align 4, !tbaa !11
  br label %lean_dec.exit308

bb.au:                                            ; preds = %bb.as
  %.not.i315 = icmp eq i32 %i.bs, 0
  br i1 %.not.i315, label %lean_dec.exit308, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.i) #12
  br label %lean_dec.exit308

bb.aw:                                            ; preds = %lean_dec_ref_known.exit409
  %i.bv = and i64 %i.bc, 510
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.ax, label %bb.bk

bb.ax:                                            ; preds = %bb.aw
  br i1 %.not.i264, label %bb.ay, label %lean_dec.exit312

bb.ay:                                            ; preds = %bb.ax
  %i.bx = load i32, ptr %i.bb, align 4, !tbaa !11 ; 3 uses
  %i.by = icmp sgt i32 %i.bx, 1
  br i1 %i.by, label %bb.az, label %bb.ba, !prof !17

bb.az:                                            ; preds = %bb.ay
  %i.bz = add nsw i32 %i.bx, -1
  store i32 %i.bz, ptr %i.bb, align 4, !tbaa !11
  br label %lean_dec.exit312

bb.ba:                                            ; preds = %bb.ay
  %.not.i316 = icmp eq i32 %i.bx, 0
  br i1 %.not.i316, label %lean_dec.exit312, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bb) #12
  br label %lean_dec.exit312

lean_dec.exit312:                                 ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ax
  br i1 %.not.i266, label %bb.bc, label %lean_dec.exit310

bb.bc:                                            ; preds = %lean_dec.exit312
  %i.ca = load i32, ptr %i.am, align 4, !tbaa !11 ; 3 uses
  %i.cb = icmp sgt i32 %i.ca, 1
  br i1 %i.cb, label %bb.bd, label %bb.be, !prof !17

bb.bd:                                            ; preds = %bb.bc
  %i.cc = add nsw i32 %i.ca, -1
  store i32 %i.cc, ptr %i.am, align 4, !tbaa !11
  br label %lean_dec.exit310

bb.be:                                            ; preds = %bb.bc
  %.not.i318 = icmp eq i32 %i.ca, 0
  br i1 %.not.i318, label %lean_dec.exit310, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.am) #12
  br label %lean_dec.exit310

lean_dec.exit310:                                 ; preds = %bb.bf, %bb.be, %bb.bd, %lean_dec.exit312
  br i1 %.not.i268, label %bb.bg, label %bb.bp

bb.bg:                                            ; preds = %lean_dec.exit310
  %i.cd = load i32, ptr %i.x, align 4, !tbaa !11  ; 3 uses
  %i.ce = icmp sgt i32 %i.cd, 1
  br i1 %i.ce, label %bb.bh, label %bb.bi, !prof !17

bb.bh:                                            ; preds = %bb.bg
  %i.cf = add nsw i32 %i.cd, -1
  store i32 %i.cf, ptr %i.x, align 4, !tbaa !11
  br label %bb.bp

bb.bi:                                            ; preds = %bb.bg
  %.not.i320 = icmp eq i32 %i.cd, 0
  br i1 %.not.i320, label %bb.bp, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.x) #12
  br label %bb.bp

bb.bk:                                            ; preds = %bb.aw
  br i1 %.not.i270, label %bb.bl, label %lean_dec.exit308

bb.bl:                                            ; preds = %bb.bk
  %i.cg = load i32, ptr %i.i, align 4, !tbaa !11  ; 3 uses
  %i.ch = icmp sgt i32 %i.cg, 1
  br i1 %i.ch, label %bb.bm, label %bb.bn, !prof !17

bb.bm:                                            ; preds = %bb.bl
  %i.ci = add nsw i32 %i.cg, -1
  store i32 %i.ci, ptr %i.i, align 4, !tbaa !11
  br label %lean_dec.exit308

bb.bn:                                            ; preds = %bb.bl
  %.not.i322 = icmp eq i32 %i.cg, 0
  br i1 %.not.i322, label %lean_dec.exit308, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.i) #12
  br label %lean_dec.exit308

bb.bp:                                            ; preds = %lean_dec.exit310, %bb.bj, %bb.bi, %bb.bh
  %.val.i.i410 = load i32, ptr %2, align 4, !tbaa !11 ; 3 uses
  %i.cj = icmp sgt i32 %.val.i.i410, 0
  br i1 %i.cj, label %bb.bq, label %bb.br, !prof !17

bb.bq:                                            ; preds = %bb.bp
  %i.ck = add nuw i32 %.val.i.i410, 1
  store i32 %i.ck, ptr %2, align 4, !tbaa !11
  br label %lean_inc_ref.exit412

bb.br:                                            ; preds = %bb.bp
  %.not.i.i411 = icmp eq i32 %.val.i.i410, 0
  br i1 %.not.i.i411, label %lean_inc_ref.exit412, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.cl = atomicrmw sub ptr %2, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit412

lean_inc_ref.exit412:                             ; preds = %bb.bq, %bb.br, %bb.bs
  %i.cm = tail call ptr @l_Lean_Meta_unfoldDefinition_x3f(ptr noundef nonnull %2, i8 noundef zeroext 0, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #12 ; 11 uses
  %i.cn = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.co = and i64 %i.cn, 1
  %.not.i413 = icmp eq i64 %i.co, 0               ; 2 uses
  br i1 %.not.i413, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %lean_inc_ref.exit412
  %i.cp = lshr i64 %i.cn, 1
  %i.cq = trunc i64 %i.cp to i32
  br label %lean_obj_tag.exit416

bb.bu:                                            ; preds = %lean_inc_ref.exit412
  %i.cr = getelementptr i8, ptr %i.cm, i64 4
  %.val.i415 = load i32, ptr %i.cr, align 4
  %i.cs = lshr i32 %.val.i415, 24
  br label %lean_obj_tag.exit416

lean_obj_tag.exit416:                             ; preds = %bb.bt, %bb.bu
  %.0.i414 = phi i32 [ %i.cq, %bb.bt ], [ %i.cs, %bb.bu ]
  %i.ct = icmp eq i32 %.0.i414, 0
  br i1 %i.ct, label %bb.bv, label %bb.cp

bb.bv:                                            ; preds = %lean_obj_tag.exit416
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !15 ; 7 uses
  %i.cw = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cx = and i64 %i.cw, 1
  %.not.i262 = icmp eq i64 %i.cx, 0
  br i1 %.not.i262, label %bb.bw, label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  %.val.i.i417 = load i32, ptr %i.cv, align 4, !tbaa !11 ; 3 uses
  %i.cy = icmp sgt i32 %.val.i.i417, 0
  br i1 %i.cy, label %bb.bx, label %bb.by, !prof !17

bb.bx:                                            ; preds = %bb.bw
  %i.cz = add nuw i32 %.val.i.i417, 1
  store i32 %i.cz, ptr %i.cv, align 4, !tbaa !11
  br label %bb.cb

bb.by:                                            ; preds = %bb.bw
  %.not.i.i418 = icmp eq i32 %.val.i.i417, 0
  br i1 %.not.i.i418, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.da = atomicrmw sub ptr %i.cv, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bv
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.cm, i32 noundef 1)
  %i.db = lshr i64 %i.cw, 1
  %i.dc = trunc i64 %i.db to i32
  br label %lean_obj_tag.exit423

bb.cb:                                            ; preds = %bb.bz, %bb.by, %bb.bx
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.cm, i32 noundef 1)
  %i.dd = getelementptr i8, ptr %i.cv, i64 4
  %.val.i422 = load i32, ptr %i.dd, align 4
  %i.de = lshr i32 %.val.i422, 24
  br label %lean_obj_tag.exit423

lean_obj_tag.exit423:                             ; preds = %bb.ca, %bb.cb
  %.0.i421 = phi i32 [ %i.dc, %bb.ca ], [ %i.de, %bb.cb ]
  %i.df = icmp eq i32 %.0.i421, 0
  br i1 %i.df, label %bb.cc, label %bb.ch

bb.cc:                                            ; preds = %lean_obj_tag.exit423
  br i1 %.not.i270, label %bb.cd, label %lean_dec.exit304

end_hunk_0
begin_hunk_1_@l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_unfoldReducibleDefEq:bb.a
  br label %lean_dec.exit294

bb.ek:                                            ; preds = %bb.ei
  %.not.i334 = icmp eq i32 %i.fx, 0
  br i1 %.not.i334, label %lean_dec.exit294, label %bb.el

bb.el:                                            ; preds = %bb.ek
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.am) #12
  br label %lean_dec.exit294

lean_dec.exit294:                                 ; preds = %bb.el, %bb.ek, %bb.ej, %bb.eh
  %i.ga = tail call ptr @l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_unfoldDefEq(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  br label %lean_dec.exit300

bb.em:                                            ; preds = %lean_obj_tag.exit443
  %i.gb = load i32, ptr %3, align 4, !tbaa !11    ; 3 uses
  %i.gc = icmp sgt i32 %i.gb, 1
  br i1 %i.gc, label %bb.en, label %bb.eo, !prof !17

bb.en:                                            ; preds = %bb.em
  %i.gd = add nsw i32 %i.gb, -1
  store i32 %i.gd, ptr %3, align 4, !tbaa !11
  br label %lean_dec_ref.exit371

bb.eo:                                            ; preds = %bb.em
  %.not.i370 = icmp eq i32 %i.gb, 0
  br i1 %.not.i370, label %lean_dec_ref.exit371, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #12
  br label %lean_dec_ref.exit371

lean_dec_ref.exit371:                             ; preds = %bb.en, %bb.eo, %bb.ep
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !15 ; 5 uses
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = and i64 %i.gg, 1
  %.not.i254 = icmp eq i64 %i.gh, 0
  br i1 %.not.i254, label %bb.eq, label %lean_inc.exit255

bb.eq:                                            ; preds = %lean_dec_ref.exit371
  %.val.i.i444 = load i32, ptr %i.gf, align 4, !tbaa !11 ; 3 uses
  %i.gi = icmp sgt i32 %.val.i.i444, 0
  br i1 %i.gi, label %bb.er, label %bb.es, !prof !17

bb.er:                                            ; preds = %bb.eq
  %i.gj = add nuw i32 %.val.i.i444, 1
  store i32 %i.gj, ptr %i.gf, align 4, !tbaa !11
  br label %lean_inc.exit255

bb.es:                                            ; preds = %bb.eq
  %.not.i.i445 = icmp eq i32 %.val.i.i444, 0
  br i1 %.not.i.i445, label %lean_inc.exit255, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.gk = atomicrmw sub ptr %i.gf, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit255

lean_inc.exit255:                                 ; preds = %bb.et, %bb.es, %bb.er, %lean_dec_ref.exit371
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.fm, i32 noundef 1)
  %i.gl = tail call ptr @l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_isDefEqRight(ptr noundef %i.am, ptr noundef %2, ptr noundef %i.gf, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  br label %lean_dec.exit300

bb.eu:                                            ; preds = %lean_obj_tag.exit436
  br i1 %.not.i266, label %bb.ev, label %lean_dec.exit292

bb.ev:                                            ; preds = %bb.eu
  %i.gm = load i32, ptr %i.am, align 4, !tbaa !11 ; 3 uses
  %i.gn = icmp sgt i32 %i.gm, 1
  br i1 %i.gn, label %bb.ew, label %bb.ex, !prof !17

bb.ew:                                            ; preds = %bb.ev
  %i.go = add nsw i32 %i.gm, -1
  store i32 %i.go, ptr %i.am, align 4, !tbaa !11
  br label %lean_dec.exit292

bb.ex:                                            ; preds = %bb.ev
  %.not.i336 = icmp eq i32 %i.gm, 0
  br i1 %.not.i336, label %lean_dec.exit292, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.am) #12
  br label %lean_dec.exit292

lean_dec.exit292:                                 ; preds = %bb.ey, %bb.ex, %bb.ew, %bb.eu
  %i.gp = load i32, ptr %3, align 4, !tbaa !11    ; 3 uses
  %i.gq = icmp sgt i32 %i.gp, 1
  br i1 %i.gq, label %bb.ez, label %bb.fa, !prof !17

bb.ez:                                            ; preds = %lean_dec.exit292
  %i.gr = add nsw i32 %i.gp, -1
  store i32 %i.gr, ptr %3, align 4, !tbaa !11
  br label %lean_dec_ref.exit369

bb.fa:                                            ; preds = %lean_dec.exit292
  %.not.i368 = icmp eq i32 %i.gp, 0
  br i1 %.not.i368, label %lean_dec_ref.exit369, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #12
  br label %lean_dec_ref.exit369

lean_dec_ref.exit369:                             ; preds = %bb.ez, %bb.fa, %bb.fb
  %i.gs = load i32, ptr %2, align 4, !tbaa !11    ; 3 uses
  %i.gt = icmp sgt i32 %i.gs, 1
  br i1 %i.gt, label %bb.fc, label %bb.fd, !prof !17

bb.fc:                                            ; preds = %lean_dec_ref.exit369
  %i.gu = add nsw i32 %i.gs, -1
  store i32 %i.gu, ptr %2, align 4, !tbaa !11
  br label %lean_dec_ref.exit367

bb.fd:                                            ; preds = %lean_dec_ref.exit369
  %.not.i366 = icmp eq i32 %i.gs, 0
  br i1 %.not.i366, label %lean_dec_ref.exit367, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #12
  br label %lean_dec_ref.exit367

lean_dec_ref.exit367:                             ; preds = %bb.fc, %bb.fd, %bb.fe
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !15 ; 5 uses
  %.val381 = load i32, ptr %i.fd, align 8, !tbaa !11
  %i.gx = icmp eq i32 %.val381, 1
  br i1 %i.gx, label %lean_dec.exit300, label %bb.ff

bb.ff:                                            ; preds = %lean_dec_ref.exit367
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = and i64 %i.gy, 1
  %.not.i252 = icmp eq i64 %i.gz, 0
  br i1 %.not.i252, label %bb.fg, label %lean_inc.exit253

bb.fg:                                            ; preds = %bb.ff
  %.val.i.i447 = load i32, ptr %i.gw, align 4, !tbaa !11 ; 3 uses
  %i.ha = icmp sgt i32 %.val.i.i447, 0
  br i1 %i.ha, label %bb.fh, label %bb.fi, !prof !17

bb.fh:                                            ; preds = %bb.fg
  %i.hb = add nuw i32 %.val.i.i447, 1
  store i32 %i.hb, ptr %i.gw, align 4, !tbaa !11
  br label %lean_inc.exit253

bb.fi:                                            ; preds = %bb.fg
  %.not.i.i448 = icmp eq i32 %.val.i.i447, 0
  br i1 %.not.i.i448, label %lean_inc.exit253, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.hc = atomicrmw sub ptr %i.gw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit253

lean_inc.exit253:                                 ; preds = %bb.fj, %bb.fi, %bb.fh, %bb.ff
  br i1 %.not.i433, label %bb.fk, label %bb.fo

bb.fk:                                            ; preds = %lean_inc.exit253
  %i.hd = load i32, ptr %i.fd, align 8, !tbaa !11 ; 3 uses
  %i.he = icmp sgt i32 %i.hd, 1
  br i1 %i.he, label %bb.fl, label %bb.fm, !prof !17

bb.fl:                                            ; preds = %bb.fk
  %i.hf = add nsw i32 %i.hd, -1
  store i32 %i.hf, ptr %i.fd, align 8, !tbaa !11
  br label %bb.fo

bb.fm:                                            ; preds = %bb.fk
  %.not.i338 = icmp eq i32 %i.hd, 0
  br i1 %.not.i338, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fd) #12
  br label %bb.fo

bb.fo:                                            ; preds = %lean_inc.exit253, %bb.fl, %bb.fm, %bb.fn
  %i.hg = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store ptr %i.gw, ptr %i.hh, align 8, !tbaa !15
  br label %lean_dec.exit300

lean_dec.exit308:                                 ; preds = %bb.ar, %bb.at, %bb.au, %bb.av, %bb.bo, %bb.bn, %bb.bm, %bb.bk
  br i1 %.not.i268, label %bb.fp, label %lean_dec.exit288

bb.fp:                                            ; preds = %lean_dec.exit308
  %i.hi = load i32, ptr %i.x, align 4, !tbaa !11  ; 3 uses
  %i.hj = icmp sgt i32 %i.hi, 1
  br i1 %i.hj, label %bb.fq, label %bb.fr, !prof !17

bb.fq:                                            ; preds = %bb.fp
  %i.hk = add nsw i32 %i.hi, -1
  store i32 %i.hk, ptr %i.x, align 4, !tbaa !11
  br label %lean_dec.exit288

bb.fr:                                            ; preds = %bb.fp
  %.not.i340 = icmp eq i32 %i.hi, 0
  br i1 %.not.i340, label %lean_dec.exit288, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.x) #12
  br label %lean_dec.exit288

lean_dec.exit288:                                 ; preds = %bb.fs, %bb.fr, %bb.fq, %lean_dec.exit308
  %.not = icmp eq i64 %i.bq, 0
  br i1 %.not, label %bb.dk, label %bb.ft

bb.ft:                                            ; preds = %lean_dec.exit288
  br i1 %.not.i264, label %bb.fu, label %lean_dec.exit286

bb.fu:                                            ; preds = %bb.ft
  %i.hl = load i32, ptr %i.bb, align 4, !tbaa !11 ; 3 uses
  %i.hm = icmp sgt i32 %i.hl, 1
  br i1 %i.hm, label %bb.fv, label %bb.fw, !prof !17

bb.fv:                                            ; preds = %bb.fu
  %i.hn = add nsw i32 %i.hl, -1
  store i32 %i.hn, ptr %i.bb, align 4, !tbaa !11
  br label %lean_dec.exit286

bb.fw:                                            ; preds = %bb.fu
  %.not.i342 = icmp eq i32 %i.hl, 0
  br i1 %.not.i342, label %lean_dec.exit286, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bb) #12
  br label %lean_dec.exit286

lean_dec.exit286:                                 ; preds = %bb.fx, %bb.fw, %bb.fv, %bb.ft
  br i1 %.not.i266, label %bb.fy, label %bb.gc

bb.fy:                                            ; preds = %lean_dec.exit286
  %i.ho = load i32, ptr %i.am, align 4, !tbaa !11 ; 3 uses
  %i.hp = icmp sgt i32 %i.ho, 1
  br i1 %i.hp, label %bb.fz, label %bb.ga, !prof !17

bb.fz:                                            ; preds = %bb.fy
  %i.hq = add nsw i32 %i.ho, -1
  store i32 %i.hq, ptr %i.am, align 4, !tbaa !11
  br label %bb.gc

bb.ga:                                            ; preds = %bb.fy
  %.not.i344 = icmp eq i32 %i.ho, 0
  br i1 %.not.i344, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.am) #12
  br label %bb.gc

bb.gc:                                            ; preds = %lean_dec.exit286, %bb.fz, %bb.ga, %bb.gb
  %i.hr = tail call ptr @l___private_Lean_Meta_ExprDefEq_0__Lean_Meta_unfoldDefEq(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  br label %lean_dec.exit300

bb.gd:                                            ; preds = %lean_obj_tag.exit395
  br i1 %.not.i266, label %bb.ge, label %lean_dec.exit282

bb.ge:                                            ; preds = %bb.gd
  %i.hs = load i32, ptr %i.am, align 4, !tbaa !11 ; 3 uses
  %i.ht = icmp sgt i32 %i.hs, 1
  br i1 %i.ht, label %bb.gf, label %bb.gg, !prof !17

bb.gf:                                            ; preds = %bb.ge
  %i.hu = add nsw i32 %i.hs, -1
  store i32 %i.hu, ptr %i.am, align 4, !tbaa !11
  br label %lean_dec.exit282

bb.gg:                                            ; preds = %bb.ge
  %.not.i346 = icmp eq i32 %i.hs, 0
  br i1 %.not.i346, label %lean_dec.exit282, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.am) #12
  br label %lean_dec.exit282

lean_dec.exit282:                                 ; preds = %bb.gh, %bb.gg, %bb.gf, %bb.gd
  br i1 %.not.i268, label %bb.gi, label %lean_dec.exit280

bb.gi:                                            ; preds = %lean_dec.exit282
  %i.hv = load i32, ptr %i.x, align 4, !tbaa !11  ; 3 uses
  %i.hw = icmp sgt i32 %i.hv, 1
  br i1 %i.hw, label %bb.gj, label %bb.gk, !prof !17

bb.gj:                                            ; preds = %bb.gi
  %i.hx = add nsw i32 %i.hv, -1
  store i32 %i.hx, ptr %i.x, align 4, !tbaa !11
  br label %lean_dec.exit280

bb.gk:                                            ; preds = %bb.gi
  %.not.i348 = icmp eq i32 %i.hv, 0
  br i1 %.not.i348, label %lean_dec.exit280, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.x) #12
  br label %lean_dec.exit280

lean_dec.exit280:                                 ; preds = %bb.gl, %bb.gk, %bb.gj, %lean_dec.exit282
  br i1 %.not.i270, label %bb.gm, label %lean_dec.exit278

bb.gm:                                            ; preds = %lean_dec.exit280
  %i.hy = load i32, ptr %i.i, align 4, !tbaa !11  ; 3 uses
  %i.hz = icmp sgt i32 %i.hy, 1
  br i1 %i.hz, label %bb.gn, label %bb.go, !prof !17

bb.gn:                                            ; preds = %bb.gm
  %i.ia = add nsw i32 %i.hy, -1
  store i32 %i.ia, ptr %i.i, align 4, !tbaa !11
  br label %lean_dec.exit278

bb.go:                                            ; preds = %bb.gm
  %.not.i350 = icmp eq i32 %i.hy, 0
  br i1 %.not.i350, label %lean_dec.exit278, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.i) #12
  br label %lean_dec.exit278

lean_dec.exit278:                                 ; preds = %bb.gp, %bb.go, %bb.gn, %lean_dec.exit280
  %i.ib = load i32, ptr %3, align 4, !tbaa !11    ; 3 uses
  %i.ic = icmp sgt i32 %i.ib, 1
  br i1 %i.ic, label %bb.gq, label %bb.gr, !prof !17

bb.gq:                                            ; preds = %lean_dec.exit278
  %i.id = add nsw i32 %i.ib, -1
  store i32 %i.id, ptr %3, align 4, !tbaa !11
  br label %lean_dec_ref.exit365

bb.gr:                                            ; preds = %lean_dec.exit278
  %.not.i364 = icmp eq i32 %i.ib, 0
  br i1 %.not.i364, label %lean_dec_ref.exit365, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #12
  br label %lean_dec_ref.exit365

lean_dec_ref.exit365:                             ; preds = %bb.gq, %bb.gr, %bb.gs
  %i.ie = load i32, ptr %2, align 4, !tbaa !11    ; 3 uses
  %i.if = icmp sgt i32 %i.ie, 1
  br i1 %i.if, label %bb.gt, label %bb.gu, !prof !17

bb.gt:                                            ; preds = %lean_dec_ref.exit365
  %i.ig = add nsw i32 %i.ie, -1
  store i32 %i.ig, ptr %2, align 4, !tbaa !11
  br label %lean_dec_ref.exit363

bb.gu:                                            ; preds = %lean_dec_ref.exit365
  %.not.i362 = icmp eq i32 %i.ie, 0
  br i1 %.not.i362, label %lean_dec_ref.exit363, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #12
  br label %lean_dec_ref.exit363

lean_dec_ref.exit363:                             ; preds = %bb.gt, %bb.gu, %bb.gv
  %i.ih = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !15 ; 5 uses
  %.val380 = load i32, ptr %i.as, align 8, !tbaa !11
  %i.ij = icmp eq i32 %.val380, 1
  br i1 %i.ij, label %lean_dec.exit300, label %bb.gw

bb.gw:                                            ; preds = %lean_dec_ref.exit363
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = and i64 %i.ik, 1
  %.not.i250 = icmp eq i64 %i.il, 0
  br i1 %.not.i250, label %bb.gx, label %lean_inc.exit251

bb.gx:                                            ; preds = %bb.gw
  %.val.i.i450 = load i32, ptr %i.ii, align 4, !tbaa !11 ; 3 uses
  %i.im = icmp sgt i32 %.val.i.i450, 0
  br i1 %i.im, label %bb.gy, label %bb.gz, !prof !17

bb.gy:                                            ; preds = %bb.gx
  %i.in = add nuw i32 %.val.i.i450, 1
  store i32 %i.in, ptr %i.ii, align 4, !tbaa !11
  br label %lean_inc.exit251

bb.gz:                                            ; preds = %bb.gx
  %.not.i.i451 = icmp eq i32 %.val.i.i450, 0
  br i1 %.not.i.i451, label %lean_inc.exit251, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.io = atomicrmw sub ptr %i.ii, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit251

lean_inc.exit251:                                 ; preds = %bb.ha, %bb.gz, %bb.gy, %bb.gw
  br i1 %.not.i392, label %bb.hb, label %bb.hf

bb.hb:                                            ; preds = %lean_inc.exit251
  %i.ip = load i32, ptr %i.as, align 8, !tbaa !11 ; 3 uses
  %i.iq = icmp sgt i32 %i.ip, 1
  br i1 %i.iq, label %bb.hc, label %bb.hd, !prof !17

bb.hc:                                            ; preds = %bb.hb
  %i.ir = add nsw i32 %i.ip, -1
  store i32 %i.ir, ptr %i.as, align 8, !tbaa !11
  br label %bb.hf

bb.hd:                                            ; preds = %bb.hb
  %.not.i352 = icmp eq i32 %i.ip, 0
  br i1 %.not.i352, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.as) #12
  br label %bb.hf

bb.hf:                                            ; preds = %lean_inc.exit251, %bb.hc, %bb.hd, %bb.he
  tail call void @lean_inc_heartbeat() #12
end_hunk_1
