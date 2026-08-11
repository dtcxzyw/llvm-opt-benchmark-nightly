inline.NumInlined: 10689
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 72
loop-unroll.NumUnrolled: 72
begin_hunk_0_@l_List_forIn_x27_loop___at___00__private_Lean_Elab_BuiltinCommand_0__Lean_Elab_Command_elabWhere_describeOpenDecls_spec__2___redArg___boxed:bb.a
  store i32 %i.n, ptr %0, align 4, !tbaa !13
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i11 = icmp eq i32 %i.l, 0
  br i1 %.not.i11, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit14
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Elab_BuiltinCommand_0__Lean_Elab_Command_elabWhere_describeOpenDecls(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_List_forIn_x27_loop___at___00__private_Lean_Elab_BuiltinCommand_0__Lean_Elab_Command_elabWhere_describeOpenDecls_spec__2___redArg(ptr noundef %0, ptr noundef nonnull @l___private_Lean_Elab_BuiltinCommand_0__Lean_Elab_Command_elabWhere_describeOpenDecls___closed__4_value, ptr noundef %1, ptr noundef %2) ; 12 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not.i250 = icmp eq i64 %i.c, 0                ; 2 uses
  br i1 %.not.i250, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %i.e = trunc i64 %i.d to i32
  br label %lean_obj_tag.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 4
  %.val.i = load i32, ptr %i.f, align 4
  %i.g = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.b, %bb.c
  %.0.i251 = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = icmp eq i32 %.0.i251, 0
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11   ; 16 uses
  br i1 %i.h, label %bb.d, label %bb.ds

bb.d:                                             ; preds = %lean_obj_tag.exit
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, 1
  %.not.i190 = icmp eq i64 %i.l, 0                ; 2 uses
  br i1 %.not.i190, label %bb.e, label %lean_inc.exit191

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !13 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i, 0
  br i1 %i.m, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %bb.e
  %i.n = add nuw i32 %.val.i.i, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !13
  br label %lean_inc.exit191

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit191, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = atomicrmw sub ptr %i.j, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit191

lean_inc.exit191:                                 ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %.val.i252 = load i32, ptr %i.a, align 8, !tbaa !13 ; 4 uses
  %i.p = icmp eq i32 %.val.i252, 1
  br i1 %i.p, label %.preheader.i.preheader, label %bb.m

.preheader.i.preheader:                           ; preds = %lean_inc.exit191
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !11   ; 4 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.r, 1
  %.not.i.i253 = icmp eq i64 %i.s, 0
  br i1 %.not.i.i253, label %bb.i, label %lean_dec.exit.i

bb.i:                                             ; preds = %.preheader.i.preheader
  %i.t = load i32, ptr %i.q, align 4, !tbaa !13   ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.j, label %bb.k, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %i.q, align 4, !tbaa !13
  br label %lean_dec.exit.i

bb.k:                                             ; preds = %bb.i
  %.not.i7.i = icmp eq i32 %i.t, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #8
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.l, %bb.k, %bb.j, %.preheader.i.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.a) #8
  br label %lean_dec_ref_known.exit

bb.m:                                             ; preds = %lean_inc.exit191
  %i.w = icmp sgt i32 %.val.i252, 1
  br i1 %i.w, label %bb.n, label %bb.o, !prof !15

bb.n:                                             ; preds = %bb.m
  %i.x = add nsw i32 %.val.i252, -1
  store i32 %i.x, ptr %i.a, align 8, !tbaa !13
  br label %lean_dec_ref_known.exit

bb.o:                                             ; preds = %bb.m
  %.not.i8.i = icmp eq i32 %.val.i252, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #8
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.n, %bb.o, %bb.p
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !11   ; 16 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !11 ; 15 uses
  %.val247 = load i32, ptr %i.j, align 8, !tbaa !13
  %i.ac = icmp eq i32 %.val247, 1                 ; 2 uses
  br i1 %i.ac, label %lean_nat_eq.exit, label %bb.q

bb.q:                                             ; preds = %lean_dec_ref_known.exit
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = and i64 %i.ad, 1
  %.not.i188 = icmp eq i64 %i.ae, 0
  br i1 %.not.i188, label %bb.r, label %lean_inc.exit189

bb.r:                                             ; preds = %bb.q
  %.val.i.i254 = load i32, ptr %i.ab, align 4, !tbaa !13 ; 3 uses
  %i.af = icmp sgt i32 %.val.i.i254, 0
  br i1 %i.af, label %bb.s, label %bb.t, !prof !15

bb.s:                                             ; preds = %bb.r
  %i.ag = add nuw i32 %.val.i.i254, 1
  store i32 %i.ag, ptr %i.ab, align 4, !tbaa !13
  br label %lean_inc.exit189

bb.t:                                             ; preds = %bb.r
  %.not.i.i255 = icmp eq i32 %.val.i.i254, 0
  br i1 %.not.i.i255, label %lean_inc.exit189, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ah = atomicrmw sub ptr %i.ab, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit189

lean_inc.exit189:                                 ; preds = %bb.u, %bb.t, %bb.s, %bb.q
  %i.ai = ptrtoint ptr %i.z to i64
  %i.aj = and i64 %i.ai, 1
  %.not.i186 = icmp eq i64 %i.aj, 0
  br i1 %.not.i186, label %bb.v, label %lean_inc.exit187

bb.v:                                             ; preds = %lean_inc.exit189
  %.val.i.i257 = load i32, ptr %i.z, align 4, !tbaa !13 ; 3 uses
  %i.ak = icmp sgt i32 %.val.i.i257, 0
  br i1 %i.ak, label %bb.w, label %bb.x, !prof !15

bb.w:                                             ; preds = %bb.v
  %i.al = add nuw i32 %.val.i.i257, 1
  store i32 %i.al, ptr %i.z, align 4, !tbaa !13
  br label %lean_inc.exit187

bb.x:                                             ; preds = %bb.v
  %.not.i.i258 = icmp eq i32 %.val.i.i257, 0
  br i1 %.not.i.i258, label %lean_inc.exit187, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.am = atomicrmw sub ptr %i.z, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit187

lean_inc.exit187:                                 ; preds = %bb.y, %bb.x, %bb.w, %lean_inc.exit189
  br i1 %.not.i190, label %bb.z, label %lean_nat_eq.exit

bb.z:                                             ; preds = %lean_inc.exit187
  %i.an = load i32, ptr %i.j, align 8, !tbaa !13  ; 3 uses
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %bb.aa, label %bb.ab, !prof !15

bb.aa:                                            ; preds = %bb.z
  %i.ap = add nsw i32 %i.an, -1
  store i32 %i.ap, ptr %i.j, align 8, !tbaa !13
  br label %lean_nat_eq.exit

bb.ab:                                            ; preds = %bb.z
  %.not.i213 = icmp eq i32 %i.an, 0
  br i1 %.not.i213, label %lean_nat_eq.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #8
  br label %lean_nat_eq.exit

lean_nat_eq.exit:                                 ; preds = %lean_dec_ref_known.exit, %bb.ac, %bb.ab, %bb.aa, %lean_inc.exit187
  %.0159 = phi ptr [ %i.j, %lean_dec_ref_known.exit ], [ inttoptr (i64 1 to ptr), %bb.ac ], [ inttoptr (i64 1 to ptr), %bb.ab ], [ inttoptr (i64 1 to ptr), %bb.aa ], [ inttoptr (i64 1 to ptr), %lean_inc.exit187 ] ; 10 uses
  %i.aq = getelementptr i8, ptr %i.ab, i64 8      ; 2 uses
  %.val249 = load i64, ptr %i.aq, align 8, !tbaa !9
  %.mask = and i64 %.val249, 9223372036854775807
  %i.ar = icmp eq i64 %.mask, 0                   ; 2 uses
  %3 = zext i1 %i.ar to i8
  br i1 %i.ar, label %bb.dn, label %bb.ad

bb.ad:                                            ; preds = %lean_nat_eq.exit
  %i.as = tail call ptr @l_Lean_Elab_Command_getRef___redArg(ptr noundef %1) #8 ; 13 uses
  %i.at = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.au = and i64 %i.at, 1
  %.not.i260 = icmp eq i64 %i.au, 0               ; 2 uses
  br i1 %.not.i260, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.av = lshr i64 %i.at, 1
  %i.aw = trunc i64 %i.av to i32
  br label %lean_obj_tag.exit263

bb.af:                                            ; preds = %bb.ad
  %i.ax = getelementptr i8, ptr %i.as, i64 4
  %.val.i262 = load i32, ptr %i.ax, align 4
  %i.ay = lshr i32 %.val.i262, 24
  br label %lean_obj_tag.exit263

lean_obj_tag.exit263:                             ; preds = %bb.ae, %bb.af
  %.0.i261 = phi i32 [ %i.aw, %bb.ae ], [ %i.ay, %bb.af ]
  %i.az = icmp eq i32 %.0.i261, 0
  br i1 %i.az, label %bb.ag, label %bb.ct

bb.ag:                                            ; preds = %lean_obj_tag.exit263
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !11 ; 11 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, 1
  %.not.i184 = icmp eq i64 %i.bd, 0               ; 3 uses
  br i1 %.not.i184, label %bb.ah, label %lean_inc.exit185

bb.ah:                                            ; preds = %bb.ag
  %.val.i.i264 = load i32, ptr %i.bb, align 4, !tbaa !13 ; 3 uses
  %i.be = icmp sgt i32 %.val.i.i264, 0
  br i1 %i.be, label %bb.ai, label %bb.aj, !prof !15

bb.ai:                                            ; preds = %bb.ah
  %i.bf = add nuw i32 %.val.i.i264, 1
  store i32 %i.bf, ptr %i.bb, align 4, !tbaa !13
  br label %lean_inc.exit185

bb.aj:                                            ; preds = %bb.ah
  %.not.i.i265 = icmp eq i32 %.val.i.i264, 0
  br i1 %.not.i.i265, label %lean_inc.exit185, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bg = atomicrmw sub ptr %i.bb, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit185

lean_inc.exit185:                                 ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ag
  %.val.i267 = load i32, ptr %i.as, align 8, !tbaa !13 ; 4 uses
  %i.bh = icmp eq i32 %.val.i267, 1
  br i1 %i.bh, label %.preheader.i269.preheader, label %bb.ap

.preheader.i269.preheader:                        ; preds = %lean_inc.exit185
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !11 ; 4 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = and i64 %i.bj, 1
  %.not.i.i271 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i271, label %bb.al, label %lean_dec.exit.i272

bb.al:                                            ; preds = %.preheader.i269.preheader
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !13 ; 3 uses
  %i.bm = icmp sgt i32 %i.bl, 1
  br i1 %i.bm, label %bb.am, label %bb.an, !prof !15

bb.am:                                            ; preds = %bb.al
  %i.bn = add nsw i32 %i.bl, -1
  store i32 %i.bn, ptr %i.bi, align 4, !tbaa !13
  br label %lean_dec.exit.i272

bb.an:                                            ; preds = %bb.al
  %.not.i7.i276 = icmp eq i32 %i.bl, 0
  br i1 %.not.i7.i276, label %lean_dec.exit.i272, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bi) #8
  br label %lean_dec.exit.i272

lean_dec.exit.i272:                               ; preds = %bb.ao, %bb.an, %bb.am, %.preheader.i269.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.as) #8
  br label %lean_dec_ref_known.exit277

bb.ap:                                            ; preds = %lean_inc.exit185
  %i.bo = icmp sgt i32 %.val.i267, 1
  br i1 %i.bo, label %bb.aq, label %bb.ar, !prof !15

bb.aq:                                            ; preds = %bb.ap
  %i.bp = add nsw i32 %.val.i267, -1
  store i32 %i.bp, ptr %i.as, align 8, !tbaa !13
  br label %lean_dec_ref_known.exit277

bb.ar:                                            ; preds = %bb.ap
  %.not.i8.i268 = icmp eq i32 %.val.i267, 0
  br i1 %.not.i8.i268, label %lean_dec_ref_known.exit277, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.as) #8
  br label %lean_dec_ref_known.exit277

lean_dec_ref_known.exit277:                       ; preds = %lean_dec.exit.i272, %bb.aq, %bb.ar, %bb.as
  %i.bq = tail call ptr @l_Lean_Elab_Command_getCurrMacroScope___redArg(ptr noundef %1) #8 ; 9 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bs = and i64 %i.br, 1
  %.not.i278 = icmp eq i64 %i.bs, 0               ; 2 uses
  br i1 %.not.i278, label %bb.au, label %bb.at

bb.at:                                            ; preds = %lean_dec_ref_known.exit277
  %i.bt = lshr i64 %i.br, 1
  %i.bu = trunc i64 %i.bt to i32
  br label %lean_obj_tag.exit281

bb.au:                                            ; preds = %lean_dec_ref_known.exit277
  %i.bv = getelementptr i8, ptr %i.bq, i64 4
  %.val.i280 = load i32, ptr %i.bv, align 4
  %i.bw = lshr i32 %.val.i280, 24
  br label %lean_obj_tag.exit281

lean_obj_tag.exit281:                             ; preds = %bb.at, %bb.au
  %.0.i279 = phi i32 [ %i.bu, %bb.at ], [ %i.bw, %bb.au ]
  %i.bx = icmp eq i32 %.0.i279, 0
  br i1 %i.bx, label %bb.av, label %bb.bw

bb.av:                                            ; preds = %lean_obj_tag.exit281
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.bq, i32 noundef 1)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !11 ; 2 uses
  %i.ca = tail call ptr @l_Lean_SourceInfo_fromRef(ptr noundef %i.bb, i8 noundef zeroext %3) #8 ; 12 uses
  br i1 %.not.i184, label %bb.aw, label %lean_dec.exit210

bb.aw:                                            ; preds = %bb.av
  %i.cb = load i32, ptr %i.bb, align 4, !tbaa !13 ; 3 uses
  %i.cc = icmp sgt i32 %i.cb, 1
  br i1 %i.cc, label %bb.ax, label %bb.ay, !prof !15

bb.ax:                                            ; preds = %bb.aw
  %i.cd = add nsw i32 %i.cb, -1
  store i32 %i.cd, ptr %i.bb, align 4, !tbaa !13
  br label %lean_dec.exit210

bb.ay:                                            ; preds = %bb.aw
  %.not.i214 = icmp eq i32 %i.cb, 0
  br i1 %.not.i214, label %lean_dec.exit210, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bb) #8
  br label %lean_dec.exit210

lean_dec.exit210:                                 ; preds = %bb.az, %bb.ay, %bb.ax, %bb.av
  %i.ce = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.cf = and i64 %i.ce, 1
  %.not.i282 = icmp eq i64 %i.cf, 0
  br i1 %.not.i282, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %lean_dec.exit210
  %i.cg = lshr i64 %i.ce, 1
  %i.ch = trunc i64 %i.cg to i32
  br label %lean_obj_tag.exit285

bb.bb:                                            ; preds = %lean_dec.exit210
  %i.ci = getelementptr i8, ptr %i.bz, i64 4
  %.val.i284 = load i32, ptr %i.ci, align 4
  %i.cj = lshr i32 %.val.i284, 24
  br label %lean_obj_tag.exit285

lean_obj_tag.exit285:                             ; preds = %bb.ba, %bb.bb
  %.0.i283 = phi i32 [ %i.ch, %bb.ba ], [ %i.cj, %bb.bb ]
  %i.ck = icmp eq i32 %.0.i283, 0
  br i1 %i.ck, label %bb.bc, label %lean_dec_ref.exit239

bb.bc:                                            ; preds = %lean_obj_tag.exit285
  %i.cl = tail call ptr @l_Lean_getMainModule___at___00Lean_Elab_Command_elabSection_spec__0___redArg(ptr noundef %2) ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !13 ; 3 uses
  %i.cn = icmp sgt i32 %i.cm, 1
  br i1 %i.cn, label %bb.bd, label %bb.be, !prof !15

bb.bd:                                            ; preds = %bb.bc
  %i.co = add nsw i32 %i.cm, -1
  store i32 %i.co, ptr %i.cl, align 4, !tbaa !13
  br label %lean_dec_ref.exit239

bb.be:                                            ; preds = %bb.bc
  %.not.i238 = icmp eq i32 %i.cm, 0
  br i1 %.not.i238, label %lean_dec_ref.exit239, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #8
  br label %lean_dec_ref.exit239

lean_dec_ref.exit239:                             ; preds = %bb.bf, %bb.be, %bb.bd, %lean_obj_tag.exit285
  %i.cp = ptrtoint ptr %i.ca to i64
  %i.cq = and i64 %i.cp, 1
  %.not.i182 = icmp eq i64 %i.cq, 0               ; 2 uses
  br i1 %.not.i182, label %bb.bg, label %lean_inc.exit183

bb.bg:                                            ; preds = %lean_dec_ref.exit239
  %.val.i.i286 = load i32, ptr %i.ca, align 4, !tbaa !13 ; 3 uses
  %i.cr = icmp sgt i32 %.val.i.i286, 0
  br i1 %i.cr, label %bb.bh, label %bb.bi, !prof !15

bb.bh:                                            ; preds = %bb.bg
  %i.cs = add nuw i32 %.val.i.i286, 1
  store i32 %i.cs, ptr %i.ca, align 4, !tbaa !13
  br label %lean_inc.exit183

bb.bi:                                            ; preds = %bb.bg
  %.not.i.i287 = icmp eq i32 %.val.i.i286, 0
  br i1 %.not.i.i287, label %lean_inc.exit183, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ct = atomicrmw sub ptr %i.ca, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit183

lean_inc.exit183:                                 ; preds = %bb.bj, %bb.bi, %bb.bh, %lean_dec_ref.exit239
  br i1 %i.ac, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %lean_inc.exit183
  %i.cu = getelementptr inbounds nuw i8, ptr %.0159, i64 4 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = and i32 %i.cv, 16777215
  %i.cx = or disjoint i32 %i.cw, 33554432
  store i32 %i.cx, ptr %i.cu, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %.0159, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %.0159, i64 16
  store ptr @l_Lean_Elab_Command_elabOpen___closed__0_value, ptr %i.cz, align 8, !tbaa !11
  store ptr %i.ca, ptr %i.cy, align 8, !tbaa !11
  br label %bb.bm

bb.bl:                                            ; preds = %lean_inc.exit183
  %i.da = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.ca, ptr %i.db, align 8, !tbaa !11
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store ptr @l_Lean_Elab_Command_elabOpen___closed__0_value, ptr %i.dc, align 8, !tbaa !11
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.0168 = phi ptr [ %.0159, %bb.bk ], [ %i.da, %bb.bl ]
  %i.dd = load atomic i32, ptr @l_Lean_Elab_Command_elabSection___closed__11_once seq_cst, align 4, !tbaa !22
  %i.de = icmp eq i32 %i.dd, 1
  br i1 %i.de, label %bb.bn, label %bb.bo, !prof !15

bb.bn:                                            ; preds = %bb.bm
  %i.df = load ptr, ptr @l_Lean_Elab_Command_elabSection___closed__11, align 8, !tbaa !11
  br label %lean_obj_once.exit

bb.bo:                                            ; preds = %bb.bm
  %i.dg = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_Command_elabSection___closed__11, ptr noundef nonnull @l_Lean_Elab_Command_elabSection___closed__11_once, ptr noundef nonnull @_init_l_Lean_Elab_Command_elabSection___closed__11) #8
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.bn, %bb.bo
  %.0.i289 = phi ptr [ %i.df, %bb.bn ], [ %i.dg, %bb.bo ]
  %.val248 = load i64, ptr %i.aq, align 8, !tbaa !9
  %i.dh = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00__private_Lean_Elab_BuiltinCommand_0__Lean_Elab_Command_elabWhere_describeOpenDecls_spec__0(i64 noundef %.val248, i64 noundef 0, ptr noundef nonnull %i.ab) ; 4 uses
  %i.di = tail call ptr @l_Array_append___redArg(ptr noundef %.0.i289, ptr noundef %i.dh) #8
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !13 ; 3 uses
  %i.dk = icmp sgt i32 %i.dj, 1
  br i1 %i.dk, label %bb.bp, label %bb.bq, !prof !15

bb.bp:                                            ; preds = %lean_obj_once.exit
  %i.dl = add nsw i32 %i.dj, -1
  store i32 %i.dl, ptr %i.dh, align 4, !tbaa !13
  br label %lean_dec_ref.exit237

bb.bq:                                            ; preds = %lean_obj_once.exit
  %.not.i236 = icmp eq i32 %i.dj, 0
  br i1 %.not.i236, label %lean_dec_ref.exit237, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dh) #8
  br label %lean_dec_ref.exit237

lean_dec_ref.exit237:                             ; preds = %bb.bp, %bb.bq, %bb.br
  br i1 %.not.i182, label %bb.bs, label %lean_inc_n.exit

bb.bs:                                            ; preds = %lean_dec_ref.exit237
  %.val.i.i291 = load i32, ptr %i.ca, align 4, !tbaa !13 ; 3 uses
  %i.dm = icmp sgt i32 %.val.i.i291, 0
  br i1 %i.dm, label %bb.bt, label %bb.bu, !prof !15

bb.bt:                                            ; preds = %bb.bs
  %i.dn = add nuw i32 %.val.i.i291, 2
  store i32 %i.dn, ptr %i.ca, align 4, !tbaa !13
  br label %lean_inc_n.exit

bb.bu:                                            ; preds = %bb.bs
  %.not.i.i292 = icmp eq i32 %.val.i.i291, 0
  br i1 %.not.i.i292, label %lean_inc_n.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.do = atomicrmw sub ptr %i.ca, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit

lean_inc_n.exit:                                  ; preds = %lean_dec_ref.exit237, %bb.bt, %bb.bu, %bb.bv
  %i.dp = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 3, i32 noundef 0) ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.ca, ptr %i.dq, align 8, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store ptr @l_Lean_Elab_Command_elabSection___closed__10_value, ptr %i.dr, align 8, !tbaa !11
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  store ptr %i.di, ptr %i.ds, align 8, !tbaa !11
  %i.dt = tail call ptr @l_Lean_Syntax_node1(ptr noundef %i.ca, ptr noundef nonnull @l_Lean_Elab_OpenDecl_elabOpenDecl___at___00Lean_Elab_Command_elabOpen_spec__0___closed__1_value, ptr noundef nonnull %i.dp) #8
  %i.du = tail call ptr @l_Lean_Syntax_node2(ptr noundef %i.ca, ptr noundef nonnull @l_Lean_Elab_Command_elabOpen___closed__1_value, ptr noundef nonnull %.0168, ptr noundef %i.dt) #8
  %i.dv = tail call ptr @l_Lean_MessageData_ofSyntax(ptr noundef %i.du) #8
  %i.dw = tail call ptr @lean_array_push(ptr noundef %i.z, ptr noundef %i.dv) #8
  br label %lean_nat_eq.exit244

bb.bw:                                            ; preds = %lean_obj_tag.exit281
  br i1 %.not.i184, label %bb.bx, label %lean_dec.exit208

bb.bx:                                            ; preds = %bb.bw
  %i.dx = load i32, ptr %i.bb, align 4, !tbaa !13 ; 3 uses
  %i.dy = icmp sgt i32 %i.dx, 1
  br i1 %i.dy, label %bb.by, label %bb.bz, !prof !15

bb.by:                                            ; preds = %bb.bx
  %i.dz = add nsw i32 %i.dx, -1
  store i32 %i.dz, ptr %i.bb, align 4, !tbaa !13
  br label %lean_dec.exit208

bb.bz:                                            ; preds = %bb.bx
  %.not.i216 = icmp eq i32 %i.dx, 0
  br i1 %.not.i216, label %lean_dec.exit208, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bb) #8
  br label %lean_dec.exit208

end_hunk_0
begin_hunk_1_@l_Lean_Elab_Command_elabWhere___redArg:bb.a
  br label %lean_dec.exit1491

lean_dec.exit1491:                                ; preds = %bb.hv, %bb.hu, %bb.ht, %lean_dec_ref.exit1746
  br i1 %.not.i1365, label %bb.hw, label %lean_dec.exit1489

bb.hw:                                            ; preds = %lean_dec.exit1491
  %i.ms = load i32, ptr %i.be, align 4, !tbaa !13 ; 3 uses
  %i.mt = icmp sgt i32 %i.ms, 1
  br i1 %i.mt, label %bb.hx, label %bb.hy, !prof !15

bb.hx:                                            ; preds = %bb.hw
  %i.mu = add nsw i32 %i.ms, -1
  store i32 %i.mu, ptr %i.be, align 4, !tbaa !13
  br label %lean_dec.exit1489

bb.hy:                                            ; preds = %bb.hw
  %.not.i1553 = icmp eq i32 %i.ms, 0
  br i1 %.not.i1553, label %lean_dec.exit1489, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.be) #8
  br label %lean_dec.exit1489

lean_dec.exit1489:                                ; preds = %bb.hz, %bb.hy, %bb.hx, %lean_dec.exit1491
  %i.mv = load i32, ptr %i.z, align 4, !tbaa !13  ; 3 uses
  %i.mw = icmp sgt i32 %i.mv, 1
  br i1 %i.mw, label %bb.ia, label %bb.ib, !prof !15

bb.ia:                                            ; preds = %lean_dec.exit1489
  %i.mx = add nsw i32 %i.mv, -1
  store i32 %i.mx, ptr %i.z, align 4, !tbaa !13
  br label %lean_dec_ref.exit1744

bb.ib:                                            ; preds = %lean_dec.exit1489
  %.not.i1743 = icmp eq i32 %i.mv, 0
  br i1 %.not.i1743, label %lean_dec_ref.exit1744, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.z) #8
  br label %lean_dec_ref.exit1744

lean_dec_ref.exit1744:                            ; preds = %bb.ia, %bb.ib, %bb.ic
  %i.my = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !11 ; 5 uses
  %.val1783 = load i32, ptr %i.jw, align 8, !tbaa !13
  %i.na = icmp eq i32 %.val1783, 1
  br i1 %i.na, label %lean_dec.exit, label %bb.id

bb.id:                                            ; preds = %lean_dec_ref.exit1744
  %i.nb = ptrtoint ptr %i.mz to i64
  %i.nc = and i64 %i.nb, 1
  %.not.i1343 = icmp eq i64 %i.nc, 0
  br i1 %.not.i1343, label %bb.ie, label %lean_inc.exit1344

bb.ie:                                            ; preds = %bb.id
  %.val.i.i1886 = load i32, ptr %i.mz, align 4, !tbaa !13 ; 3 uses
  %i.nd = icmp sgt i32 %.val.i.i1886, 0
  br i1 %i.nd, label %bb.if, label %bb.ig, !prof !15

bb.if:                                            ; preds = %bb.ie
  %i.ne = add nuw i32 %.val.i.i1886, 1
  store i32 %i.ne, ptr %i.mz, align 4, !tbaa !13
  br label %lean_inc.exit1344

bb.ig:                                            ; preds = %bb.ie
  %.not.i.i1887 = icmp eq i32 %.val.i.i1886, 0
  br i1 %.not.i.i1887, label %lean_inc.exit1344, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.nf = atomicrmw sub ptr %i.mz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1344

lean_inc.exit1344:                                ; preds = %bb.ih, %bb.ig, %bb.if, %bb.id
  br i1 %.not.i1868, label %bb.ii, label %bb.im

bb.ii:                                            ; preds = %lean_inc.exit1344
  %i.ng = load i32, ptr %i.jw, align 8, !tbaa !13 ; 3 uses
  %i.nh = icmp sgt i32 %i.ng, 1
  br i1 %i.nh, label %bb.ij, label %bb.ik, !prof !15

bb.ij:                                            ; preds = %bb.ii
  %i.ni = add nsw i32 %i.ng, -1
  store i32 %i.ni, ptr %i.jw, align 8, !tbaa !13
  br label %bb.im

bb.ik:                                            ; preds = %bb.ii
  %.not.i1555 = icmp eq i32 %i.ng, 0
  br i1 %.not.i1555, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jw) #8
  br label %bb.im

bb.im:                                            ; preds = %lean_inc.exit1344, %bb.ij, %bb.ik, %bb.il
  %i.nj = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  store ptr %i.mz, ptr %i.nk, align 8, !tbaa !11
  br label %lean_dec.exit

bb.in:                                            ; preds = %lean_dec_ref.exit1740
  br i1 %.not.i1365, label %bb.io, label %lean_dec_ref.exit1752

bb.io:                                            ; preds = %bb.in
  %i.nl = load i32, ptr %i.be, align 4, !tbaa !13 ; 3 uses
  %i.nm = icmp sgt i32 %i.nl, 1
  br i1 %i.nm, label %bb.ip, label %bb.iq, !prof !15

bb.ip:                                            ; preds = %bb.io
  %i.nn = add nsw i32 %i.nl, -1
  store i32 %i.nn, ptr %i.be, align 4, !tbaa !13
  br label %lean_dec_ref.exit1752

bb.iq:                                            ; preds = %bb.io
  %.not.i1557 = icmp eq i32 %i.nl, 0
  br i1 %.not.i1557, label %lean_dec_ref.exit1752, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.be) #8
  br label %lean_dec_ref.exit1752

bb.is:                                            ; preds = %bb.jv, %bb.jw, %lean_obj_tag.exit1909, %bb.ju
  %i.no = ptrtoint ptr %i.pn to i64
  %i.np = and i64 %i.no, 1
  %.not.i1889 = icmp eq i64 %i.np, 0
  br i1 %.not.i1889, label %bb.it, label %lean_inc_n.exit1892

bb.it:                                            ; preds = %bb.is
  %.val.i.i1890 = load i32, ptr %i.pn, align 4, !tbaa !13 ; 3 uses
  %i.nq = icmp sgt i32 %.val.i.i1890, 0
  br i1 %i.nq, label %bb.iu, label %bb.iv, !prof !15

bb.iu:                                            ; preds = %bb.it
  %i.nr = add nuw i32 %.val.i.i1890, 2
  store i32 %i.nr, ptr %i.pn, align 4, !tbaa !13
  br label %lean_inc_n.exit1892

bb.iv:                                            ; preds = %bb.it
  %.not.i.i1891 = icmp eq i32 %.val.i.i1890, 0
  br i1 %.not.i.i1891, label %lean_inc_n.exit1892, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.ns = atomicrmw sub ptr %i.pn, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit1892

lean_inc_n.exit1892:                              ; preds = %bb.is, %bb.iu, %bb.iv, %bb.iw
  %i.nt = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  store ptr %i.pn, ptr %i.nu, align 8, !tbaa !11
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  store ptr @l_Lean_Elab_Command_elabVariable___closed__0_value, ptr %i.nv, align 8, !tbaa !11
  %i.nw = load atomic i32, ptr @l_Lean_Elab_Command_elabSection___closed__11_once seq_cst, align 4, !tbaa !22
  %i.nx = icmp eq i32 %i.nw, 1
  br i1 %i.nx, label %bb.ix, label %bb.iy, !prof !15

bb.ix:                                            ; preds = %lean_inc_n.exit1892
  %i.ny = load ptr, ptr @l_Lean_Elab_Command_elabSection___closed__11, align 8, !tbaa !11
  br label %lean_obj_once.exit1894

bb.iy:                                            ; preds = %lean_inc_n.exit1892
  %i.nz = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Elab_Command_elabSection___closed__11, ptr noundef nonnull @l_Lean_Elab_Command_elabSection___closed__11_once, ptr noundef nonnull @_init_l_Lean_Elab_Command_elabSection___closed__11) #8
  br label %lean_obj_once.exit1894

lean_obj_once.exit1894:                           ; preds = %bb.ix, %bb.iy
  %.0.i1893 = phi ptr [ %i.ny, %bb.ix ], [ %i.nz, %bb.iy ]
  %i.oa = tail call ptr @l_Array_append___redArg(ptr noundef %.0.i1893, ptr noundef %i.pm) #8
  %i.ob = load i32, ptr %i.pm, align 4, !tbaa !13 ; 3 uses
  %i.oc = icmp sgt i32 %i.ob, 1
  br i1 %i.oc, label %bb.iz, label %bb.ja, !prof !15

bb.iz:                                            ; preds = %lean_obj_once.exit1894
  %i.od = add nsw i32 %i.ob, -1
  store i32 %i.od, ptr %i.pm, align 4, !tbaa !13
  br label %lean_dec_ref.exit1742

bb.ja:                                            ; preds = %lean_obj_once.exit1894
  %.not.i1741 = icmp eq i32 %i.ob, 0
  br i1 %.not.i1741, label %lean_dec_ref.exit1742, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.pm) #8
  br label %lean_dec_ref.exit1742

lean_dec_ref.exit1742:                            ; preds = %bb.iz, %bb.ja, %bb.jb
  %i.oe = tail call fastcc ptr @lean_alloc_ctor(i32 noundef 1, i32 noundef 3, i32 noundef 0) ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  store ptr %i.pn, ptr %i.of, align 8, !tbaa !11
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  store ptr @l_Lean_Elab_Command_elabSection___closed__10_value, ptr %i.og, align 8, !tbaa !11
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 24
  store ptr %i.oa, ptr %i.oh, align 8, !tbaa !11
  %i.oi = tail call ptr @l_Lean_Syntax_node2(ptr noundef %i.pn, ptr noundef nonnull @l_Lean_Elab_Command_elabVariable___closed__1_value, ptr noundef nonnull %i.nt, ptr noundef nonnull %i.oe) #8
  %i.oj = tail call ptr @l_Lean_MessageData_ofSyntax(ptr noundef %i.oi) #8
  %i.ok = tail call ptr @lean_array_push(ptr noundef %.01084, ptr noundef %i.oj) #8
  br label %lean_dec_ref.exit1740

lean_nat_eq.exit:                                 ; preds = %bb.qk, %bb.qj, %bb.qi, %bb.qg, %lean_alloc_ctor.exit1922
  %.01084 = phi ptr [ %i.tn, %lean_alloc_ctor.exit1922 ], [ %.11111, %bb.qk ], [ %.11111, %bb.qj ], [ %.11111, %bb.qi ], [ %.11111, %bb.qg ] ; 10 uses
  %i.ol = getelementptr i8, ptr %i.az, i64 8      ; 2 uses
  %.val1791 = load i64, ptr %i.ol, align 8, !tbaa !9
  %.mask = and i64 %.val1791, 9223372036854775807
  %i.om = icmp eq i64 %.mask, 0                   ; 2 uses
  %2 = zext i1 %i.om to i8
  br i1 %i.om, label %bb.mf, label %bb.jc

bb.jc:                                            ; preds = %lean_nat_eq.exit
  %i.on = tail call ptr @l_Lean_Elab_Command_getRef___redArg(ptr noundef %0) #8 ; 10 uses
  %i.oo = ptrtoint ptr %i.on to i64               ; 2 uses
  %i.op = and i64 %i.oo, 1
  %.not.i1895 = icmp eq i64 %i.op, 0              ; 2 uses
  br i1 %.not.i1895, label %bb.je, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.oq = lshr i64 %i.oo, 1
  %i.or = trunc i64 %i.oq to i32
  br label %lean_obj_tag.exit1898

bb.je:                                            ; preds = %bb.jc
  %i.os = getelementptr i8, ptr %i.on, i64 4
  %.val.i1897 = load i32, ptr %i.os, align 4
  %i.ot = lshr i32 %.val.i1897, 24
  br label %lean_obj_tag.exit1898

lean_obj_tag.exit1898:                            ; preds = %bb.jd, %bb.je
  %.0.i1896 = phi i32 [ %i.or, %bb.jd ], [ %i.ot, %bb.je ]
  %i.ou = icmp eq i32 %.0.i1896, 0
  br i1 %i.ou, label %bb.jf, label %bb.ld

bb.jf:                                            ; preds = %lean_obj_tag.exit1898
  %i.ov = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !11 ; 11 uses
  %i.ox = ptrtoint ptr %i.ow to i64
  %i.oy = and i64 %i.ox, 1
  %.not.i1341 = icmp eq i64 %i.oy, 0              ; 3 uses
  br i1 %.not.i1341, label %bb.jg, label %lean_inc.exit1342

bb.jg:                                            ; preds = %bb.jf
  %.val.i.i1899 = load i32, ptr %i.ow, align 4, !tbaa !13 ; 3 uses
  %i.oz = icmp sgt i32 %.val.i.i1899, 0
  br i1 %i.oz, label %bb.jh, label %bb.ji, !prof !15

bb.jh:                                            ; preds = %bb.jg
  %i.pa = add nuw i32 %.val.i.i1899, 1
  store i32 %i.pa, ptr %i.ow, align 4, !tbaa !13
  br label %lean_inc.exit1342

bb.ji:                                            ; preds = %bb.jg
  %.not.i.i1900 = icmp eq i32 %.val.i.i1899, 0
  br i1 %.not.i.i1900, label %lean_inc.exit1342, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.pb = atomicrmw sub ptr %i.ow, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1342

lean_inc.exit1342:                                ; preds = %bb.jj, %bb.ji, %bb.jh, %bb.jf
  tail call fastcc void @lean_dec_ref_known(ptr noundef nonnull %i.on, i32 noundef 1)
  %i.pc = tail call ptr @l_Lean_Elab_Command_getCurrMacroScope___redArg(ptr noundef %0) #8 ; 9 uses
  %i.pd = ptrtoint ptr %i.pc to i64               ; 2 uses
  %i.pe = and i64 %i.pd, 1
  %.not.i1902 = icmp eq i64 %i.pe, 0              ; 2 uses
  br i1 %.not.i1902, label %bb.jl, label %bb.jk

bb.jk:                                            ; preds = %lean_inc.exit1342
  %i.pf = lshr i64 %i.pd, 1
  %i.pg = trunc i64 %i.pf to i32
  br label %lean_obj_tag.exit1905

bb.jl:                                            ; preds = %lean_inc.exit1342
  %i.ph = getelementptr i8, ptr %i.pc, i64 4
  %.val.i1904 = load i32, ptr %i.ph, align 4
  %i.pi = lshr i32 %.val.i1904, 24
  br label %lean_obj_tag.exit1905

lean_obj_tag.exit1905:                            ; preds = %bb.jk, %bb.jl
  %.0.i1903 = phi i32 [ %i.pg, %bb.jk ], [ %i.pi, %bb.jl ]
  %i.pj = icmp eq i32 %.0.i1903, 0
  br i1 %i.pj, label %bb.jm, label %bb.jx

bb.jm:                                            ; preds = %lean_obj_tag.exit1905
  tail call fastcc void @lean_dec_ref_known(ptr noundef %i.pc, i32 noundef 1)
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !11 ; 2 uses
  %.val1788 = load i64, ptr %i.ol, align 8, !tbaa !9
  %i.pm = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00Lean_Elab_Command_elabWhere_spec__2(i64 noundef %.val1788, i64 noundef 0, ptr noundef nonnull %i.az) ; 4 uses
  %i.pn = tail call ptr @l_Lean_SourceInfo_fromRef(ptr noundef %i.ow, i8 noundef zeroext %2) #8 ; 7 uses
  br i1 %.not.i1341, label %bb.jn, label %lean_dec.exit1483

bb.jn:                                            ; preds = %bb.jm
  %i.po = load i32, ptr %i.ow, align 4, !tbaa !13 ; 3 uses
  %i.pp = icmp sgt i32 %i.po, 1
  br i1 %i.pp, label %bb.jo, label %bb.jp, !prof !15

bb.jo:                                            ; preds = %bb.jn
  %i.pq = add nsw i32 %i.po, -1
  store i32 %i.pq, ptr %i.ow, align 4, !tbaa !13
  br label %lean_dec.exit1483

bb.jp:                                            ; preds = %bb.jn
  %.not.i1559 = icmp eq i32 %i.po, 0
  br i1 %.not.i1559, label %lean_dec.exit1483, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ow) #8
  br label %lean_dec.exit1483

lean_dec.exit1483:                                ; preds = %bb.jq, %bb.jp, %bb.jo, %bb.jm
  %i.pr = ptrtoint ptr %i.pl to i64               ; 2 uses
  %i.ps = and i64 %i.pr, 1
  %.not.i1906 = icmp eq i64 %i.ps, 0
  br i1 %.not.i1906, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %lean_dec.exit1483
  %i.pt = lshr i64 %i.pr, 1
  %i.pu = trunc i64 %i.pt to i32
  br label %lean_obj_tag.exit1909

bb.js:                                            ; preds = %lean_dec.exit1483
  %i.pv = getelementptr i8, ptr %i.pl, i64 4
  %.val.i1908 = load i32, ptr %i.pv, align 4
  %i.pw = lshr i32 %.val.i1908, 24
  br label %lean_obj_tag.exit1909

lean_obj_tag.exit1909:                            ; preds = %bb.jr, %bb.js
  %.0.i1907 = phi i32 [ %i.pu, %bb.jr ], [ %i.pw, %bb.js ]
  %i.px = icmp eq i32 %.0.i1907, 0
  br i1 %i.px, label %bb.jt, label %bb.is

bb.jt:                                            ; preds = %lean_obj_tag.exit1909
  %i.py = tail call ptr @l_Lean_getMainModule___at___00Lean_Elab_Command_elabSection_spec__0___redArg(ptr noundef %1) ; 3 uses
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !13 ; 3 uses
  %i.qa = icmp sgt i32 %i.pz, 1
  br i1 %i.qa, label %bb.ju, label %bb.jv, !prof !15

bb.ju:                                            ; preds = %bb.jt
  %i.qb = add nsw i32 %i.pz, -1
  store i32 %i.qb, ptr %i.py, align 4, !tbaa !13
  br label %bb.is

bb.jv:                                            ; preds = %bb.jt
  %.not.i1739 = icmp eq i32 %i.pz, 0
  br i1 %.not.i1739, label %bb.is, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.py) #8
  br label %bb.is

bb.jx:                                            ; preds = %lean_obj_tag.exit1905
  br i1 %.not.i1341, label %bb.jy, label %lean_dec.exit1481

bb.jy:                                            ; preds = %bb.jx
  %i.qc = load i32, ptr %i.ow, align 4, !tbaa !13 ; 3 uses
  %i.qd = icmp sgt i32 %i.qc, 1
  br i1 %i.qd, label %bb.jz, label %bb.ka, !prof !15

bb.jz:                                            ; preds = %bb.jy
  %i.qe = add nsw i32 %i.qc, -1
  store i32 %i.qe, ptr %i.ow, align 4, !tbaa !13
  br label %lean_dec.exit1481

bb.ka:                                            ; preds = %bb.jy
  %.not.i1561 = icmp eq i32 %i.qc, 0
  br i1 %.not.i1561, label %lean_dec.exit1481, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ow) #8
  br label %lean_dec.exit1481

lean_dec.exit1481:                                ; preds = %bb.kb, %bb.ka, %bb.jz, %bb.jx
  %i.qf = load i32, ptr %.01084, align 4, !tbaa !13 ; 3 uses
  %i.qg = icmp sgt i32 %i.qf, 1
  br i1 %i.qg, label %bb.kc, label %bb.kd, !prof !15

bb.kc:                                            ; preds = %lean_dec.exit1481
  %i.qh = add nsw i32 %i.qf, -1
  store i32 %i.qh, ptr %.01084, align 4, !tbaa !13
  br label %lean_dec_ref.exit1738

bb.kd:                                            ; preds = %lean_dec.exit1481
  %.not.i1737 = icmp eq i32 %i.qf, 0
  br i1 %.not.i1737, label %lean_dec_ref.exit1738, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.01084) #8
  br label %lean_dec_ref.exit1738

lean_dec_ref.exit1738:                            ; preds = %bb.kc, %bb.kd, %bb.ke
  br i1 %.not.i1363, label %bb.kf, label %lean_dec.exit1479

bb.kf:                                            ; preds = %lean_dec_ref.exit1738
  %i.qi = load i32, ptr %i.bl, align 4, !tbaa !13 ; 3 uses
  %i.qj = icmp sgt i32 %i.qi, 1
  br i1 %i.qj, label %bb.kg, label %bb.kh, !prof !15

bb.kg:                                            ; preds = %bb.kf
  %i.qk = add nsw i32 %i.qi, -1
  store i32 %i.qk, ptr %i.bl, align 4, !tbaa !13
  br label %lean_dec.exit1479

bb.kh:                                            ; preds = %bb.kf
  %.not.i1563 = icmp eq i32 %i.qi, 0
  br i1 %.not.i1563, label %lean_dec.exit1479, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bl) #8
  br label %lean_dec.exit1479

lean_dec.exit1479:                                ; preds = %bb.ki, %bb.kh, %bb.kg, %lean_dec_ref.exit1738
  br i1 %.not.i1365, label %bb.kj, label %lean_dec.exit1477

bb.kj:                                            ; preds = %lean_dec.exit1479
  %i.ql = load i32, ptr %i.be, align 4, !tbaa !13 ; 3 uses
  %i.qm = icmp sgt i32 %i.ql, 1
  br i1 %i.qm, label %bb.kk, label %bb.kl, !prof !15

bb.kk:                                            ; preds = %bb.kj
  %i.qn = add nsw i32 %i.ql, -1
  store i32 %i.qn, ptr %i.be, align 4, !tbaa !13
  br label %lean_dec.exit1477

bb.kl:                                            ; preds = %bb.kj
  %.not.i1565 = icmp eq i32 %i.ql, 0
  br i1 %.not.i1565, label %lean_dec.exit1477, label %bb.km

bb.km:                                            ; preds = %bb.kl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.be) #8
  br label %lean_dec.exit1477

lean_dec.exit1477:                                ; preds = %bb.km, %bb.kl, %bb.kk, %lean_dec.exit1479
  %i.qo = load i32, ptr %i.az, align 8, !tbaa !13 ; 3 uses
  %i.qp = icmp sgt i32 %i.qo, 1
  br i1 %i.qp, label %bb.kn, label %bb.ko, !prof !15

bb.kn:                                            ; preds = %lean_dec.exit1477
  %i.qq = add nsw i32 %i.qo, -1
  store i32 %i.qq, ptr %i.az, align 8, !tbaa !13
  br label %lean_dec_ref.exit1736

bb.ko:                                            ; preds = %lean_dec.exit1477
  %.not.i1735 = icmp eq i32 %i.qo, 0
  br i1 %.not.i1735, label %lean_dec_ref.exit1736, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.az) #8
  br label %lean_dec_ref.exit1736

lean_dec_ref.exit1736:                            ; preds = %bb.kn, %bb.ko, %bb.kp
  %i.qr = load i32, ptr %i.z, align 4, !tbaa !13  ; 3 uses
  %i.qs = icmp sgt i32 %i.qr, 1
  br i1 %i.qs, label %bb.kq, label %bb.kr, !prof !15

bb.kq:                                            ; preds = %lean_dec_ref.exit1736
  %i.qt = add nsw i32 %i.qr, -1
  store i32 %i.qt, ptr %i.z, align 4, !tbaa !13
  br label %lean_dec_ref.exit1734

bb.kr:                                            ; preds = %lean_dec_ref.exit1736
  %.not.i1733 = icmp eq i32 %i.qr, 0
  br i1 %.not.i1733, label %lean_dec_ref.exit1734, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.z) #8
  br label %lean_dec_ref.exit1734

lean_dec_ref.exit1734:                            ; preds = %bb.kq, %bb.kr, %bb.ks
  %i.qu = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !11 ; 5 uses
  %.val1782 = load i32, ptr %i.pc, align 8, !tbaa !13
  %i.qw = icmp eq i32 %.val1782, 1
  br i1 %i.qw, label %lean_dec.exit, label %bb.kt

bb.kt:                                            ; preds = %lean_dec_ref.exit1734
  %i.qx = ptrtoint ptr %i.qv to i64
  %i.qy = and i64 %i.qx, 1
  %.not.i1339 = icmp eq i64 %i.qy, 0
  br i1 %.not.i1339, label %bb.ku, label %lean_inc.exit1340

bb.ku:                                            ; preds = %bb.kt
  %.val.i.i1910 = load i32, ptr %i.qv, align 4, !tbaa !13 ; 3 uses
  %i.qz = icmp sgt i32 %.val.i.i1910, 0
  br i1 %i.qz, label %bb.kv, label %bb.kw, !prof !15

bb.kv:                                            ; preds = %bb.ku
  %i.ra = add nuw i32 %.val.i.i1910, 1
  store i32 %i.ra, ptr %i.qv, align 4, !tbaa !13
  br label %lean_inc.exit1340
end_hunk_1
