Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/CasesOnSameCtor?download=true
inline.NumInlined: 2810
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@l_Array_mapFinIdxM_map___at___00Lean_mkCasesOnSameCtor_spec__0___redArg___lam__0:bb.a

lean_dec.exit.i:                                  ; preds = %bb.p, %bb.o, %bb.n, %.preheader.i
  tail call void @lean_free_object(ptr noundef nonnull %i.g) #6
  br label %lean_dec_ref_known.exit

bb.q:                                             ; preds = %lean_inc.exit188
  %i.ac = icmp sgt i32 %.val.i277, 1
  br i1 %i.ac, label %bb.r, label %bb.s, !prof !14

bb.r:                                             ; preds = %bb.q
  %i.ad = add nsw i32 %.val.i277, -1
  store i32 %i.ad, ptr %i.g, align 8, !tbaa !11
  br label %lean_dec_ref_known.exit

bb.s:                                             ; preds = %bb.q
  %.not.i8.i = icmp eq i32 %.val.i277, 0
  br i1 %.not.i8.i, label %lean_dec_ref_known.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.g) #6
  br label %lean_dec_ref_known.exit

lean_dec_ref_known.exit:                          ; preds = %lean_dec.exit.i, %bb.r, %bb.s, %bb.t
  %.val.i.i279 = load i32, ptr %1, align 4, !tbaa !11 ; 3 uses
  %i.ae = icmp sgt i32 %.val.i.i279, 0
  br i1 %i.ae, label %bb.u, label %bb.v, !prof !14

bb.u:                                             ; preds = %lean_dec_ref_known.exit
  %i.af = add nuw i32 %.val.i.i279, 1
  store i32 %i.af, ptr %1, align 4, !tbaa !11
  br label %lean_inc_ref.exit281

bb.v:                                             ; preds = %lean_dec_ref_known.exit
  %.not.i.i280 = icmp eq i32 %.val.i.i279, 0
  br i1 %.not.i.i280, label %lean_inc_ref.exit281, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ag = atomicrmw add ptr %1, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit281

lean_inc_ref.exit281:                             ; preds = %bb.u, %bb.v, %bb.w
  %i.ah = tail call ptr @l_Lean_mkAppN(ptr noundef nonnull %1, ptr noundef %11) #6
  %i.ai = tail call ptr @l_Lean_mkAppN(ptr noundef nonnull %1, ptr noundef %12) #6
  %i.aj = tail call ptr @lean_alloc_object(i64 noundef 48) #6 ; 5 uses
  store i32 1, ptr %i.aj, align 4, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = and i32 %i.al, 65535
  %i.an = or disjoint i32 %i.am, -167772160
  store i32 %i.an, ptr %i.ak, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 3, ptr %i.ap, align 8, !tbaa !13
  %i.aq = tail call ptr @lean_array_push(ptr noundef nonnull %i.aj, ptr noundef %i.ah) #6
  %i.ar = tail call ptr @lean_array_push(ptr noundef %i.aq, ptr noundef %i.ai) #6
  %i.as = tail call ptr @lean_array_push(ptr noundef %i.ar, ptr noundef %i.p) #6 ; 4 uses
  %i.at = tail call ptr @l_Array_append___redArg(ptr noundef %10, ptr noundef %i.as) #6 ; 4 uses
  %i.au = load i32, ptr %i.as, align 4, !tbaa !11 ; 3 uses
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %bb.x, label %bb.y, !prof !14

bb.x:                                             ; preds = %lean_inc_ref.exit281
  %i.aw = add nsw i32 %i.au, -1
  store i32 %i.aw, ptr %i.as, align 4, !tbaa !11
  br label %lean_dec_ref.exit260

bb.y:                                             ; preds = %lean_inc_ref.exit281
  %.not.i259 = icmp eq i32 %i.au, 0
  br i1 %.not.i259, label %lean_dec_ref.exit260, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.as) #6
  br label %lean_dec_ref.exit260

lean_dec_ref.exit260:                             ; preds = %bb.x, %bb.y, %bb.z
  %i.ax = tail call ptr @l_Lean_mkAppN(ptr noundef %2, ptr noundef %i.at) #6
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !11 ; 3 uses
  %i.az = icmp sgt i32 %i.ay, 1
  br i1 %i.az, label %bb.aa, label %bb.ab, !prof !14

bb.aa:                                            ; preds = %lean_dec_ref.exit260
  %i.ba = add nsw i32 %i.ay, -1
  store i32 %i.ba, ptr %i.at, align 4, !tbaa !11
  br label %lean_dec_ref.exit258

bb.ab:                                            ; preds = %lean_dec_ref.exit260
  %.not.i257 = icmp eq i32 %i.ay, 0
  br i1 %.not.i257, label %lean_dec_ref.exit258, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.at) #6
  br label %lean_dec_ref.exit258

lean_dec_ref.exit258:                             ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.bb = tail call ptr @l_Lean_Meta_mkForallFVars(ptr noundef %9, ptr noundef %i.ax, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %4, i8 noundef zeroext %5, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16) #6 ; 13 uses
  %i.bc = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bd = and i64 %i.bc, 1
  %.not.i282 = icmp eq i64 %i.bd, 0               ; 2 uses
  br i1 %.not.i282, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %lean_dec_ref.exit258
  %i.be = lshr i64 %i.bc, 1
  %i.bf = trunc i64 %i.be to i32
  br label %lean_obj_tag.exit285

bb.ae:                                            ; preds = %lean_dec_ref.exit258
  %i.bg = getelementptr i8, ptr %i.bb, i64 4
  %.val.i284 = load i32, ptr %i.bg, align 4
  %i.bh = lshr i32 %.val.i284, 24
  br label %lean_obj_tag.exit285

lean_obj_tag.exit285:                             ; preds = %bb.ad, %bb.ae
  %.0.i283 = phi i32 [ %i.bf, %bb.ad ], [ %i.bh, %bb.ae ]
  %i.bi = icmp eq i32 %.0.i283, 0
  br i1 %i.bi, label %bb.af, label %bb.cj

bb.af:                                            ; preds = %lean_obj_tag.exit285
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !16 ; 7 uses
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = and i64 %i.bl, 1
  %.not.i185 = icmp eq i64 %i.bm, 0
  br i1 %.not.i185, label %bb.ag, label %lean_inc.exit186

bb.ag:                                            ; preds = %bb.af
  %.val.i.i286 = load i32, ptr %i.bk, align 4, !tbaa !11 ; 3 uses
  %i.bn = icmp sgt i32 %.val.i.i286, 0
  br i1 %i.bn, label %bb.ah, label %bb.ai, !prof !14

bb.ah:                                            ; preds = %bb.ag
  %i.bo = add nuw i32 %.val.i.i286, 1
  store i32 %i.bo, ptr %i.bk, align 4, !tbaa !11
  br label %lean_inc.exit186

bb.ai:                                            ; preds = %bb.ag
  %.not.i.i287 = icmp eq i32 %.val.i.i286, 0
  br i1 %.not.i.i287, label %lean_inc.exit186, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bp = atomicrmw add ptr %i.bk, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit186

lean_inc.exit186:                                 ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af
  %.val.i289 = load i32, ptr %i.bb, align 8, !tbaa !11 ; 4 uses
  %i.bq = icmp eq i32 %.val.i289, 1
  br i1 %i.bq, label %.preheader.i291, label %bb.ao

.preheader.i291:                                  ; preds = %lean_inc.exit186
  %i.br = load ptr, ptr %i.bj, align 8, !tbaa !16 ; 4 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = and i64 %i.bs, 1
  %.not.i.i293 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i293, label %bb.ak, label %lean_dec.exit.i294

bb.ak:                                            ; preds = %.preheader.i291
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !11 ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, 1
  br i1 %i.bv, label %bb.al, label %bb.am, !prof !14

bb.al:                                            ; preds = %bb.ak
  %i.bw = add nsw i32 %i.bu, -1
  store i32 %i.bw, ptr %i.br, align 4, !tbaa !11
  br label %lean_dec.exit.i294

bb.am:                                            ; preds = %bb.ak
  %.not.i7.i297 = icmp eq i32 %i.bu, 0
  br i1 %.not.i7.i297, label %lean_dec.exit.i294, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.br) #6
  br label %lean_dec.exit.i294

lean_dec.exit.i294:                               ; preds = %bb.an, %bb.am, %bb.al, %.preheader.i291
  tail call void @lean_free_object(ptr noundef nonnull %i.bb) #6
  br label %bb.as

bb.ao:                                            ; preds = %lean_inc.exit186
  %i.bx = icmp sgt i32 %.val.i289, 1
  br i1 %i.bx, label %bb.ap, label %bb.aq, !prof !14

bb.ap:                                            ; preds = %bb.ao
  %i.by = add nsw i32 %.val.i289, -1
  store i32 %i.by, ptr %i.bb, align 8, !tbaa !11
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %.not.i8.i290 = icmp eq i32 %.val.i289, 0
  br i1 %.not.i8.i290, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bb) #6
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %lean_dec.exit.i294
  %i.bz = getelementptr i8, ptr %9, i64 8         ; 2 uses
  %.val271 = load i64, ptr %i.bz, align 8, !tbaa !13
  %i.ca = shl i64 %.val271, 1
  %i.cb = or disjoint i64 %i.ca, 1
  %i.cc = inttoptr i64 %i.cb to ptr               ; 2 uses
  %i.cd = ptrtoint ptr %6 to i64
  %i.ce = and i64 %i.cd, 1
  %.not = icmp eq i64 %i.ce, 0                    ; 3 uses
  br i1 %.not, label %lean_nat_eq.exit, label %.split, !prof !9

.split:                                           ; preds = %bb.as
  %i.cf = icmp eq ptr %6, %i.cc
  br i1 %i.cf, label %bb.at, label %bb.et

lean_nat_eq.exit:                                 ; preds = %bb.as
  %i.cg = tail call zeroext i1 @lean_nat_big_eq(ptr noundef nonnull %i.cc, ptr noundef %6) #6
  br i1 %i.cg, label %bb.at, label %bb.et

bb.at:                                            ; preds = %.split, %lean_nat_eq.exit
  %i.ch = load atomic i32, ptr @l_Array_mapFinIdxM_map___at___00Lean_mkCasesOnSameCtor_spec__0___redArg___lam__0___closed__1_once seq_cst, align 4, !tbaa !21
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.au, label %bb.av, !prof !14

bb.au:                                            ; preds = %bb.at
  %i.cj = load ptr, ptr @l_Array_mapFinIdxM_map___at___00Lean_mkCasesOnSameCtor_spec__0___redArg___lam__0___closed__1, align 8, !tbaa !16
  br label %lean_obj_once.exit

bb.av:                                            ; preds = %bb.at
  %i.ck = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Array_mapFinIdxM_map___at___00Lean_mkCasesOnSameCtor_spec__0___redArg___lam__0___closed__1, ptr noundef nonnull @l_Array_mapFinIdxM_map___at___00Lean_mkCasesOnSameCtor_spec__0___redArg___lam__0___closed__1_once, ptr noundef nonnull @_init_l_Array_mapFinIdxM_map___at___00Lean_mkCasesOnSameCtor_spec__0___redArg___lam__0___closed__1) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.au, %bb.av
  %.0.i299 = phi ptr [ %i.cj, %bb.au ], [ %i.ck, %bb.av ]
  %i.cl = tail call ptr @l_Lean_mkArrow(ptr noundef %.0.i299, ptr noundef %i.bk, ptr noundef %15, ptr noundef %16) #6 ; 13 uses
  %i.cm = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.cn = and i64 %i.cm, 1
  %.not.i300 = icmp eq i64 %i.cn, 0               ; 2 uses
  br i1 %.not.i300, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %lean_obj_once.exit
  %i.co = lshr i64 %i.cm, 1
  %i.cp = trunc i64 %i.co to i32
  br label %lean_obj_tag.exit303

bb.ax:                                            ; preds = %lean_obj_once.exit
  %i.cq = getelementptr i8, ptr %i.cl, i64 4
  %.val.i302 = load i32, ptr %i.cq, align 4
  %i.cr = lshr i32 %.val.i302, 24
  br label %lean_obj_tag.exit303

lean_obj_tag.exit303:                             ; preds = %bb.aw, %bb.ax
  %.0.i301 = phi i32 [ %i.cp, %bb.aw ], [ %i.cr, %bb.ax ]
  %i.cs = icmp eq i32 %.0.i301, 0
  br i1 %i.cs, label %bb.ay, label %bb.bl

bb.ay:                                            ; preds = %lean_obj_tag.exit303
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !16 ; 8 uses
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = and i64 %i.cv, 1
  %.not.i183 = icmp eq i64 %i.cw, 0
  br i1 %.not.i183, label %bb.az, label %lean_inc.exit184

bb.az:                                            ; preds = %bb.ay
  %.val.i.i304 = load i32, ptr %i.cu, align 4, !tbaa !11 ; 3 uses
  %i.cx = icmp sgt i32 %.val.i.i304, 0
  br i1 %i.cx, label %bb.ba, label %bb.bb, !prof !14

bb.ba:                                            ; preds = %bb.az
  %i.cy = add nuw i32 %.val.i.i304, 1
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !11
  br label %lean_inc.exit184

bb.bb:                                            ; preds = %bb.az
  %.not.i.i305 = icmp eq i32 %.val.i.i304, 0
  br i1 %.not.i.i305, label %lean_inc.exit184, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cz = atomicrmw add ptr %i.cu, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit184

lean_inc.exit184:                                 ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.ay
  %.val.i307 = load i32, ptr %i.cl, align 8, !tbaa !11 ; 4 uses
  %i.da = icmp eq i32 %.val.i307, 1
  br i1 %i.da, label %.preheader.i309, label %bb.bh

.preheader.i309:                                  ; preds = %lean_inc.exit184
  %i.db = load ptr, ptr %i.ct, align 8, !tbaa !16 ; 4 uses
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = and i64 %i.dc, 1
  %.not.i.i311 = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i311, label %bb.bd, label %lean_dec.exit.i312

bb.bd:                                            ; preds = %.preheader.i309
  %i.de = load i32, ptr %i.db, align 4, !tbaa !11 ; 3 uses
  %i.df = icmp sgt i32 %i.de, 1
  br i1 %i.df, label %bb.be, label %bb.bf, !prof !14

bb.be:                                            ; preds = %bb.bd
  %i.dg = add nsw i32 %i.de, -1
  store i32 %i.dg, ptr %i.db, align 4, !tbaa !11
  br label %lean_dec.exit.i312

bb.bf:                                            ; preds = %bb.bd
  %.not.i7.i315 = icmp eq i32 %i.de, 0
  br i1 %.not.i7.i315, label %lean_dec.exit.i312, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.db) #6
  br label %lean_dec.exit.i312

lean_dec.exit.i312:                               ; preds = %bb.bg, %bb.bf, %bb.be, %.preheader.i309
  tail call void @lean_free_object(ptr noundef nonnull %i.cl) #6
  br label %bb.et

bb.bh:                                            ; preds = %lean_inc.exit184
  %i.dh = icmp sgt i32 %.val.i307, 1
  br i1 %i.dh, label %bb.bi, label %bb.bj, !prof !14

bb.bi:                                            ; preds = %bb.bh
  %i.di = add nsw i32 %.val.i307, -1
  store i32 %i.di, ptr %i.cl, align 8, !tbaa !11
  br label %bb.et

bb.bj:                                            ; preds = %bb.bh
  %.not.i8.i308 = icmp eq i32 %.val.i307, 0
  br i1 %.not.i8.i308, label %bb.et, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cl) #6
  br label %bb.et

bb.bl:                                            ; preds = %lean_obj_tag.exit303
  %i.dj = ptrtoint ptr %7 to i64
  %i.dk = and i64 %i.dj, 1
  %.not.i218 = icmp eq i64 %i.dk, 0
  br i1 %.not.i218, label %bb.bm, label %lean_dec.exit219

bb.bm:                                            ; preds = %bb.bl
  %i.dl = load i32, ptr %7, align 4, !tbaa !11    ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 1
  br i1 %i.dm, label %bb.bn, label %bb.bo, !prof !14

bb.bn:                                            ; preds = %bb.bm
  %i.dn = add nsw i32 %i.dl, -1
  store i32 %i.dn, ptr %7, align 4, !tbaa !11
  br label %lean_dec.exit219

bb.bo:                                            ; preds = %bb.bm
  %.not.i220 = icmp eq i32 %i.dl, 0
  br i1 %.not.i220, label %lean_dec.exit219, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #6
  br label %lean_dec.exit219

lean_dec.exit219:                                 ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bl
  br i1 %.not, label %bb.bq, label %lean_dec.exit217

bb.bq:                                            ; preds = %lean_dec.exit219
  %i.do = load i32, ptr %6, align 4, !tbaa !11    ; 3 uses
  %i.dp = icmp sgt i32 %i.do, 1
  br i1 %i.dp, label %bb.br, label %bb.bs, !prof !14

bb.br:                                            ; preds = %bb.bq
  %i.dq = add nsw i32 %i.do, -1
  store i32 %i.dq, ptr %6, align 4, !tbaa !11
  br label %lean_dec.exit217

bb.bs:                                            ; preds = %bb.bq
  %.not.i221 = icmp eq i32 %i.do, 0
  br i1 %.not.i221, label %lean_dec.exit217, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #6
  br label %lean_dec.exit217

lean_dec.exit217:                                 ; preds = %bb.bt, %bb.bs, %bb.br, %lean_dec.exit219
  br i1 %.not.i189, label %bb.bu, label %lean_dec.exit215

bb.bu:                                            ; preds = %lean_dec.exit217
  %i.dr = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.ds = icmp sgt i32 %i.dr, 1
  br i1 %i.ds, label %bb.bv, label %bb.bw, !prof !14

bb.bv:                                            ; preds = %bb.bu
  %i.dt = add nsw i32 %i.dr, -1
  store i32 %i.dt, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit215

bb.bw:                                            ; preds = %bb.bu
  %.not.i223 = icmp eq i32 %i.dr, 0
  br i1 %.not.i223, label %lean_dec.exit215, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit215

lean_dec.exit215:                                 ; preds = %bb.bx, %bb.bw, %bb.bv, %lean_dec.exit217
  %i.du = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !16 ; 5 uses
  %.val269 = load i32, ptr %i.cl, align 8, !tbaa !11
  %i.dw = icmp eq i32 %.val269, 1
  br i1 %i.dw, label %lean_dec_ref_known.exit316, label %bb.by

bb.by:                                            ; preds = %lean_dec.exit215
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = and i64 %i.dx, 1
end_hunk_0
begin_hunk_1_@l_Array_mapFinIdxM_map___at___00Lean_mkCasesOnSameCtor_spec__0___redArg___lam__0:bb.a
  %i.ff = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.dg, label %lean_dec_ref_known.exit316.sink.split

bb.dg:                                            ; preds = %bb.df
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

bb.dh:                                            ; preds = %lean_obj_tag.exit
  %i.fh = load i32, ptr %10, align 4, !tbaa !11   ; 3 uses
  %i.fi = icmp sgt i32 %i.fh, 1
  br i1 %i.fi, label %bb.di, label %bb.dj, !prof !14

bb.di:                                            ; preds = %bb.dh
  %i.fj = add nsw i32 %i.fh, -1
  store i32 %i.fj, ptr %10, align 4, !tbaa !11
  br label %lean_dec_ref.exit256

bb.dj:                                            ; preds = %bb.dh
  %.not.i255 = icmp eq i32 %i.fh, 0
  br i1 %.not.i255, label %lean_dec_ref.exit256, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %10) #6
  br label %lean_dec_ref.exit256

lean_dec_ref.exit256:                             ; preds = %bb.di, %bb.dj, %bb.dk
  %i.fk = ptrtoint ptr %7 to i64
  %i.fl = and i64 %i.fk, 1
  %.not.i202 = icmp eq i64 %i.fl, 0
  br i1 %.not.i202, label %bb.dl, label %lean_dec.exit203

bb.dl:                                            ; preds = %lean_dec_ref.exit256
  %i.fm = load i32, ptr %7, align 4, !tbaa !11    ; 3 uses
  %i.fn = icmp sgt i32 %i.fm, 1
  br i1 %i.fn, label %bb.dm, label %bb.dn, !prof !14

bb.dm:                                            ; preds = %bb.dl
  %i.fo = add nsw i32 %i.fm, -1
  store i32 %i.fo, ptr %7, align 4, !tbaa !11
  br label %lean_dec.exit203

bb.dn:                                            ; preds = %bb.dl
  %.not.i235 = icmp eq i32 %i.fm, 0
  br i1 %.not.i235, label %lean_dec.exit203, label %bb.do

bb.do:                                            ; preds = %bb.dn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #6
  br label %lean_dec.exit203

lean_dec.exit203:                                 ; preds = %bb.do, %bb.dn, %bb.dm, %lean_dec_ref.exit256
  %i.fp = ptrtoint ptr %6 to i64
  %i.fq = and i64 %i.fp, 1
  %.not.i200 = icmp eq i64 %i.fq, 0
  br i1 %.not.i200, label %bb.dp, label %lean_dec.exit201

bb.dp:                                            ; preds = %lean_dec.exit203
  %i.fr = load i32, ptr %6, align 4, !tbaa !11    ; 3 uses
  %i.fs = icmp sgt i32 %i.fr, 1
  br i1 %i.fs, label %bb.dq, label %bb.dr, !prof !14

bb.dq:                                            ; preds = %bb.dp
  %i.ft = add nsw i32 %i.fr, -1
  store i32 %i.ft, ptr %6, align 4, !tbaa !11
  br label %lean_dec.exit201

bb.dr:                                            ; preds = %bb.dp
  %.not.i237 = icmp eq i32 %i.fr, 0
  br i1 %.not.i237, label %lean_dec.exit201, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #6
  br label %lean_dec.exit201

lean_dec.exit201:                                 ; preds = %bb.ds, %bb.dr, %bb.dq, %lean_dec.exit203
  %i.fu = load i32, ptr %2, align 4, !tbaa !11    ; 3 uses
  %i.fv = icmp sgt i32 %i.fu, 1
  br i1 %i.fv, label %bb.dt, label %bb.du, !prof !14

bb.dt:                                            ; preds = %lean_dec.exit201
  %i.fw = add nsw i32 %i.fu, -1
  store i32 %i.fw, ptr %2, align 4, !tbaa !11
  br label %lean_dec_ref.exit254

bb.du:                                            ; preds = %lean_dec.exit201
  %.not.i253 = icmp eq i32 %i.fu, 0
  br i1 %.not.i253, label %lean_dec_ref.exit254, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #6
  br label %lean_dec_ref.exit254

lean_dec_ref.exit254:                             ; preds = %bb.dt, %bb.du, %bb.dv
  %i.fx = load i32, ptr %1, align 4, !tbaa !11    ; 3 uses
  %i.fy = icmp sgt i32 %i.fx, 1
  br i1 %i.fy, label %bb.dw, label %bb.dx, !prof !14

bb.dw:                                            ; preds = %lean_dec_ref.exit254
  %i.fz = add nsw i32 %i.fx, -1
  store i32 %i.fz, ptr %1, align 4, !tbaa !11
  br label %lean_dec_ref.exit252

bb.dx:                                            ; preds = %lean_dec_ref.exit254
  %.not.i251 = icmp eq i32 %i.fx, 0
  br i1 %.not.i251, label %lean_dec_ref.exit252, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit252

lean_dec_ref.exit252:                             ; preds = %bb.dw, %bb.dx, %bb.dy
  br i1 %.not.i189, label %bb.dz, label %lean_dec.exit199

bb.dz:                                            ; preds = %lean_dec_ref.exit252
  %i.ga = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.gb = icmp sgt i32 %i.ga, 1
  br i1 %i.gb, label %bb.ea, label %bb.eb, !prof !14

bb.ea:                                            ; preds = %bb.dz
  %i.gc = add nsw i32 %i.ga, -1
  store i32 %i.gc, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit199

bb.eb:                                            ; preds = %bb.dz
  %.not.i239 = icmp eq i32 %i.ga, 0
  br i1 %.not.i239, label %lean_dec.exit199, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit199

lean_dec.exit199:                                 ; preds = %bb.ec, %bb.eb, %bb.ea, %lean_dec_ref.exit252
  %i.gd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !16 ; 5 uses
  %.val = load i32, ptr %i.g, align 8, !tbaa !11
  %i.gf = icmp eq i32 %.val, 1
  br i1 %i.gf, label %lean_dec_ref_known.exit316, label %bb.ed

bb.ed:                                            ; preds = %lean_dec.exit199
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = and i64 %i.gg, 1
  %.not.i178 = icmp eq i64 %i.gh, 0
  br i1 %.not.i178, label %bb.ee, label %lean_inc.exit

bb.ee:                                            ; preds = %bb.ed
  %.val.i.i324 = load i32, ptr %i.ge, align 4, !tbaa !11 ; 3 uses
  %i.gi = icmp sgt i32 %.val.i.i324, 0
  br i1 %i.gi, label %bb.ef, label %bb.eg, !prof !14

bb.ef:                                            ; preds = %bb.ee
  %i.gj = add nuw i32 %.val.i.i324, 1
  store i32 %i.gj, ptr %i.ge, align 4, !tbaa !11
  br label %lean_inc.exit

bb.eg:                                            ; preds = %bb.ee
  %.not.i.i325 = icmp eq i32 %.val.i.i324, 0
  br i1 %.not.i.i325, label %lean_inc.exit, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.gk = atomicrmw add ptr %i.ge, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.eh, %bb.eg, %bb.ef, %bb.ed
  br i1 %.not.i272, label %bb.ei, label %bb.em

bb.ei:                                            ; preds = %lean_inc.exit
  %i.gl = load i32, ptr %i.g, align 8, !tbaa !11  ; 3 uses
  %i.gm = icmp sgt i32 %i.gl, 1
  br i1 %i.gm, label %bb.ej, label %bb.ek, !prof !14

bb.ej:                                            ; preds = %bb.ei
  %i.gn = add nsw i32 %i.gl, -1
  store i32 %i.gn, ptr %i.g, align 8, !tbaa !11
  br label %bb.em

bb.ek:                                            ; preds = %bb.ei
  %.not.i241 = icmp eq i32 %i.gl, 0
  br i1 %.not.i241, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.g) #6
  br label %bb.em

bb.em:                                            ; preds = %lean_inc.exit, %bb.ej, %bb.ek, %bb.el
  tail call void @lean_inc_heartbeat() #6
  %i.go = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 2 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %bb.en, label %lean_dec_ref_known.exit316.sink.split

bb.en:                                            ; preds = %bb.em
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_dec_ref_known.exit348:                       ; preds = %bb.gc, %bb.gb, %bb.ga, %bb.fn, %bb.fm, %bb.fl, %lean_dec.exit.i344.1
  %.sink = phi ptr [ %i.ia, %bb.fn ], [ %i.ia, %lean_dec.exit.i344.1 ], [ %i.ia, %bb.fl ], [ %i.ia, %bb.fm ], [ %i.jn, %bb.ga ], [ %i.jn, %bb.gb ], [ %i.jn, %bb.gc ]
  %i.gq = tail call ptr @l_Lean_Name_str___override(ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef %.sink) #6
  %.val270 = load i64, ptr %i.bz, align 8, !tbaa !13
  %i.gr = shl i64 %.val270, 1
  %i.gs = or disjoint i64 %i.gr, 1
  %i.gt = inttoptr i64 %i.gs to ptr               ; 3 uses
  br i1 %.not, label %.critedge.i265, label %bb.eo, !prof !9

bb.eo:                                            ; preds = %lean_dec_ref_known.exit348
  %i.gu = icmp eq ptr %6, %i.gt
  br label %lean_nat_eq.exit267

.critedge.i265:                                   ; preds = %lean_dec_ref_known.exit348
  %i.gv = tail call zeroext i1 @lean_nat_big_eq(ptr noundef nonnull %i.gt, ptr noundef %6) #6
  br label %lean_nat_eq.exit267

lean_nat_eq.exit267:                              ; preds = %bb.eo, %.critedge.i265
  %.0.i266 = phi i1 [ %i.gu, %bb.eo ], [ %i.gv, %.critedge.i265 ]
  tail call void @lean_inc_heartbeat() #6
  %i.gw = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #6 ; 7 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %bb.ep, label %lean_alloc_ctor.exit328

bb.ep:                                            ; preds = %lean_nat_eq.exit267
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit328:                          ; preds = %lean_nat_eq.exit267
  %i.gy = zext i1 %.0.i266 to i8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 24 ; 2 uses
  store i64 0, ptr %i.ha, align 8, !tbaa !13
  store i32 1, ptr %i.gw, align 8, !tbaa !11
  store i32 131104, ptr %i.gz, align 4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store ptr %i.gt, ptr %i.hb, align 8, !tbaa !16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store ptr %6, ptr %i.hc, align 8, !tbaa !16
  store i8 %i.gy, ptr %i.ha, align 8, !tbaa !19
  tail call void @lean_inc_heartbeat() #6
  %i.hd = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %bb.eq, label %lean_alloc_ctor.exit329

bb.eq:                                            ; preds = %lean_alloc_ctor.exit328
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit329:                          ; preds = %lean_alloc_ctor.exit328
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  store i32 1, ptr %i.hd, align 4, !tbaa !11
  store i32 131096, ptr %i.hf, align 4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store ptr %i.gq, ptr %i.hg, align 8, !tbaa !16
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store ptr %.2163.ph, ptr %i.hh, align 8, !tbaa !16
  tail call void @lean_inc_heartbeat() #6
  %i.hi = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %bb.er, label %lean_alloc_ctor.exit330

bb.er:                                            ; preds = %lean_alloc_ctor.exit329
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

lean_alloc_ctor.exit330:                          ; preds = %lean_alloc_ctor.exit329
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  store i32 1, ptr %i.hi, align 4, !tbaa !11
  store i32 131096, ptr %i.hk, align 4
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store ptr %i.hd, ptr %i.hl, align 8, !tbaa !16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  store ptr %i.gw, ptr %i.hm, align 8, !tbaa !16
  tail call void @lean_inc_heartbeat() #6
  %i.hn = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 2 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %bb.es, label %lean_dec_ref_known.exit316.sink.split

bb.es:                                            ; preds = %lean_alloc_ctor.exit330
  tail call void @lean_internal_panic_out_of_memory() #5
  unreachable

bb.et:                                            ; preds = %.split, %lean_nat_eq.exit, %bb.bk, %lean_dec.exit.i312, %bb.bi, %bb.bj
  %.2163.ph = phi ptr [ %i.cu, %bb.bj ], [ %i.cu, %bb.bi ], [ %i.cu, %lean_dec.exit.i312 ], [ %i.bk, %lean_nat_eq.exit ], [ %i.cu, %bb.bk ], [ %i.bk, %.split ]
  %i.hp = ptrtoint ptr %7 to i64                  ; 2 uses
  %i.hq = and i64 %i.hp, 1
  %.not.i332 = icmp eq i64 %i.hq, 0
  br i1 %.not.i332, label %lean_obj_tag.exit335, label %lean_obj_tag.exit335.thread

lean_obj_tag.exit335:                             ; preds = %bb.et
  %i.hr = getelementptr i8, ptr %7, i64 4
  %.val.i334 = load i32, ptr %i.hr, align 4
  %.mask = and i32 %.val.i334, -16777216
  %i.hs = icmp eq i32 %.mask, 16777216
  br i1 %i.hs, label %bb.eu, label %bb.fo

lean_obj_tag.exit335.thread:                      ; preds = %bb.et
  %i.ht = and i64 %i.hp, 8589934590
  %i.hu = icmp eq i64 %i.ht, 2
  br i1 %i.hu, label %bb.eu, label %lean_dec.exit193

bb.eu:                                            ; preds = %lean_obj_tag.exit335.thread, %lean_obj_tag.exit335
  br i1 %.not.i189, label %bb.ev, label %lean_dec.exit195

bb.ev:                                            ; preds = %bb.eu
  %i.hv = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.hw = icmp sgt i32 %i.hv, 1
  br i1 %i.hw, label %bb.ew, label %bb.ex, !prof !14

bb.ew:                                            ; preds = %bb.ev
  %i.hx = add nsw i32 %i.hv, -1
  store i32 %i.hx, ptr %0, align 4, !tbaa !11
  br label %lean_dec.exit195

bb.ex:                                            ; preds = %bb.ev
  %.not.i243 = icmp eq i32 %i.hv, 0
  br i1 %.not.i243, label %lean_dec.exit195, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit195

lean_dec.exit195:                                 ; preds = %bb.ey, %bb.ex, %bb.ew, %bb.eu
  %i.hy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !16 ; 7 uses
  %.val.i.i336 = load i32, ptr %i.ia, align 4, !tbaa !11 ; 3 uses
  %i.ib = icmp sgt i32 %.val.i.i336, 0
  br i1 %i.ib, label %bb.ez, label %bb.fa, !prof !14

bb.ez:                                            ; preds = %lean_dec.exit195
  %i.ic = add nuw i32 %.val.i.i336, 1
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !11
  br label %lean_inc_ref.exit338

bb.fa:                                            ; preds = %lean_dec.exit195
  %.not.i.i337 = icmp eq i32 %.val.i.i336, 0
  br i1 %.not.i.i337, label %lean_inc_ref.exit338, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.id = atomicrmw add ptr %i.ia, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit338

lean_inc_ref.exit338:                             ; preds = %bb.ez, %bb.fa, %bb.fb
  %.val.i339 = load i32, ptr %7, align 8, !tbaa !11 ; 4 uses
  %i.ie = icmp eq i32 %.val.i339, 1
  br i1 %i.ie, label %.preheader.i341.preheader, label %bb.fk

.preheader.i341.preheader:                        ; preds = %lean_inc_ref.exit338
  %i.if = load ptr, ptr %i.hy, align 8, !tbaa !16 ; 4 uses
  %i.ig = ptrtoint ptr %i.if to i64
  %i.ih = and i64 %i.ig, 1
  %.not.i.i343 = icmp eq i64 %i.ih, 0
  br i1 %.not.i.i343, label %bb.fc, label %lean_dec.exit.i344

bb.fc:                                            ; preds = %.preheader.i341.preheader
  %i.ii = load i32, ptr %i.if, align 4, !tbaa !11 ; 3 uses
  %i.ij = icmp sgt i32 %i.ii, 1
  br i1 %i.ij, label %bb.fd, label %bb.fe, !prof !14

bb.fd:                                            ; preds = %bb.fc
  %i.ik = add nsw i32 %i.ii, -1
  store i32 %i.ik, ptr %i.if, align 4, !tbaa !11
  br label %lean_dec.exit.i344

bb.fe:                                            ; preds = %bb.fc
  %.not.i7.i347 = icmp eq i32 %i.ii, 0
  br i1 %.not.i7.i347, label %lean_dec.exit.i344, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.if) #6
  br label %lean_dec.exit.i344

lean_dec.exit.i344:                               ; preds = %bb.ff, %bb.fe, %bb.fd, %.preheader.i341.preheader
  %i.il = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !16 ; 4 uses
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = and i64 %i.in, 1
  %.not.i.i343.1 = icmp eq i64 %i.io, 0
  br i1 %.not.i.i343.1, label %bb.fg, label %lean_dec.exit.i344.1

bb.fg:                                            ; preds = %lean_dec.exit.i344
  %i.ip = load i32, ptr %i.im, align 4, !tbaa !11 ; 3 uses
  %i.iq = icmp sgt i32 %i.ip, 1
  br i1 %i.iq, label %bb.fj, label %bb.fh, !prof !14

bb.fh:                                            ; preds = %bb.fg
  %.not.i7.i347.1 = icmp eq i32 %i.ip, 0
  br i1 %.not.i7.i347.1, label %lean_dec.exit.i344.1, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.im) #6
  br label %lean_dec.exit.i344.1

bb.fj:                                            ; preds = %bb.fg
  %i.ir = add nsw i32 %i.ip, -1
  store i32 %i.ir, ptr %i.im, align 4, !tbaa !11
  br label %lean_dec.exit.i344.1

lean_dec.exit.i344.1:                             ; preds = %bb.fj, %bb.fi, %bb.fh, %lean_dec.exit.i344
  tail call void @lean_free_object(ptr noundef nonnull %7) #6
  br label %lean_dec_ref_known.exit348

bb.fk:                                            ; preds = %lean_inc_ref.exit338
  %i.is = icmp sgt i32 %.val.i339, 1
  br i1 %i.is, label %bb.fl, label %bb.fm, !prof !14

end_hunk_1
