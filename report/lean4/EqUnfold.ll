inline.NumInlined: 1086
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@l_Lean_throwErrorAt___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getConstUnfoldEqnFor_x3f_spec__3_spec__6_spec__11_spec__14_spec__16___boxed:bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
lean_dec.exit.peel.begin:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = and i64 %i.a, 1
  %.not.i183.peel = icmp eq i64 %i.b, 0
  br i1 %.not.i183.peel, label %bb.b, label %bb.a

bb.a:                                             ; preds = %lean_dec.exit.peel.begin
  %i.c = lshr i64 %i.a, 1
  %i.d = trunc i64 %i.c to i32
  br label %lean_obj_tag.exit.peel

bb.b:                                             ; preds = %lean_dec.exit.peel.begin
  %i.e = getelementptr i8, ptr %2, i64 4
  %.val.i.peel = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.val.i.peel, 24
  br label %lean_obj_tag.exit.peel

lean_obj_tag.exit.peel:                           ; preds = %bb.b, %bb.a
  %.0.i.peel = phi i32 [ %i.d, %bb.a ], [ %i.f, %bb.b ]
  %i.g = icmp eq i32 %.0.i.peel, 0
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %lean_obj_tag.exit.peel
  %i.h = load i32, ptr %3, align 4, !tbaa !11     ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %.not.i179.peel = icmp eq i32 %i.h, 0
  br i1 %.not.i179.peel, label %lean_dec_ref.exit180.peel, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #5
  br label %lean_dec_ref.exit180.peel

bb.f:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %3, align 4, !tbaa !11
  br label %lean_dec_ref.exit180.peel

lean_dec_ref.exit180.peel:                        ; preds = %bb.f, %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !9    ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = and i64 %i.o, 1
  %.not.i161.peel = icmp eq i64 %i.p, 0           ; 2 uses
  br i1 %.not.i161.peel, label %bb.g, label %lean_inc.exit162.peel

bb.g:                                             ; preds = %lean_dec_ref.exit180.peel
  %.val.i.i.peel = load i32, ptr %i.l, align 4, !tbaa !11 ; 3 uses
  %i.q = icmp sgt i32 %.val.i.i.peel, 0
  br i1 %i.q, label %bb.j, label %bb.h, !prof !13

bb.h:                                             ; preds = %bb.g
  %.not.i.i.peel = icmp eq i32 %.val.i.i.peel, 0
  br i1 %.not.i.i.peel, label %lean_inc.exit162.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = atomicrmw sub ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit162.peel

bb.j:                                             ; preds = %bb.g
  %i.s = add nuw i32 %.val.i.i.peel, 1
  store i32 %i.s, ptr %i.l, align 4, !tbaa !11
  br label %lean_inc.exit162.peel

lean_inc.exit162.peel:                            ; preds = %bb.j, %bb.i, %bb.h, %lean_dec_ref.exit180.peel
  %.val.i.i184.peel = load i32, ptr %0, align 4, !tbaa !11 ; 3 uses
  %i.t = icmp sgt i32 %.val.i.i184.peel, 0
  br i1 %i.t, label %bb.m, label %bb.k, !prof !13

bb.k:                                             ; preds = %lean_inc.exit162.peel
  %.not.i.i185.peel = icmp eq i32 %.val.i.i184.peel, 0
  br i1 %.not.i.i185.peel, label %lean_inc_ref.exit186.peel, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit186.peel

bb.m:                                             ; preds = %lean_inc.exit162.peel
  %i.v = add nuw i32 %.val.i.i184.peel, 1
  store i32 %i.v, ptr %0, align 4, !tbaa !11
  br label %lean_inc_ref.exit186.peel

lean_inc_ref.exit186.peel:                        ; preds = %bb.m, %bb.l, %bb.k
  %i.w = tail call zeroext i8 @l_Lean_Environment_isSafeDefinition(ptr noundef nonnull %0, ptr noundef %i.l) #5 ; 2 uses
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %lean_dec.exit, label %.loopexit278

lean_dec.exit:                                    ; preds = %lean_inc_ref.exit186.peel, %lean_inc_ref.exit186
  %.0141 = phi ptr [ %i.an, %lean_inc_ref.exit186 ], [ %i.n, %lean_inc_ref.exit186.peel ] ; 4 uses
  %i.y = ptrtoint ptr %.0141 to i64               ; 2 uses
  %i.z = and i64 %i.y, 1
  %.not.i183 = icmp eq i64 %i.z, 0
  br i1 %.not.i183, label %bb.o, label %bb.n

bb.n:                                             ; preds = %lean_dec.exit
  %i.aa = lshr i64 %i.y, 1
  %i.ab = trunc i64 %i.aa to i32
  br label %lean_obj_tag.exit

bb.o:                                             ; preds = %lean_dec.exit
  %i.ac = getelementptr i8, ptr %.0141, i64 4
  %.val.i = load i32, ptr %i.ac, align 4
  %i.ad = lshr i32 %.val.i, 24
  br label %lean_obj_tag.exit

lean_obj_tag.exit:                                ; preds = %bb.n, %bb.o
  %.0.i = phi i32 [ %i.ab, %bb.n ], [ %i.ad, %bb.o ]
  %i.ae = icmp eq i32 %.0.i, 0
  br i1 %i.ae, label %.loopexit, label %lean_dec_ref.exit180

.loopexit:                                        ; preds = %lean_obj_tag.exit, %lean_obj_tag.exit.peel
  %.0143.lcssa = phi ptr [ %3, %lean_obj_tag.exit.peel ], [ @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__0_value, %lean_obj_tag.exit ]
  %i.af = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.p, label %bb.q, !prof !13

bb.p:                                             ; preds = %.loopexit
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit182

bb.q:                                             ; preds = %.loopexit
  %.not.i181 = icmp eq i32 %i.af, 0
  br i1 %.not.i181, label %lean_dec_ref.exit182, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit182

lean_dec_ref.exit182:                             ; preds = %bb.p, %bb.q, %bb.r
  tail call void @lean_inc_heartbeat() #5
  %i.ai = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.s, label %lean_dec.exit.thread267.sink.split

bb.s:                                             ; preds = %lean_dec_ref.exit182
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_dec_ref.exit180:                             ; preds = %lean_obj_tag.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.0141, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !9  ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0141, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !9
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = and i64 %i.ao, 1
  %.not.i161 = icmp eq i64 %i.ap, 0               ; 2 uses
  br i1 %.not.i161, label %bb.t, label %lean_inc.exit162

bb.t:                                             ; preds = %lean_dec_ref.exit180
  %.val.i.i = load i32, ptr %i.al, align 4, !tbaa !11 ; 3 uses
  %i.aq = icmp sgt i32 %.val.i.i, 0
  br i1 %i.aq, label %bb.u, label %bb.v, !prof !13

bb.u:                                             ; preds = %bb.t
  %i.ar = add nuw i32 %.val.i.i, 1
  store i32 %i.ar, ptr %i.al, align 4, !tbaa !11
  br label %lean_inc.exit162

bb.v:                                             ; preds = %bb.t
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit162, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = atomicrmw sub ptr %i.al, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit162

lean_inc.exit162:                                 ; preds = %bb.w, %bb.v, %bb.u, %lean_dec_ref.exit180
  %.val.i.i184 = load i32, ptr %0, align 4, !tbaa !11 ; 3 uses
  %i.at = icmp sgt i32 %.val.i.i184, 0
  br i1 %i.at, label %bb.x, label %bb.y, !prof !13

bb.x:                                             ; preds = %lean_inc.exit162
  %i.au = add nuw i32 %.val.i.i184, 1
  store i32 %i.au, ptr %0, align 4, !tbaa !11
  br label %lean_inc_ref.exit186

bb.y:                                             ; preds = %lean_inc.exit162
  %.not.i.i185 = icmp eq i32 %.val.i.i184, 0
  br i1 %.not.i.i185, label %lean_inc_ref.exit186, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.av = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit186

lean_inc_ref.exit186:                             ; preds = %bb.x, %bb.y, %bb.z
  %i.aw = tail call zeroext i8 @l_Lean_Environment_isSafeDefinition(ptr noundef nonnull %0, ptr noundef %i.al) #5 ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %lean_dec.exit, label %.loopexit278, !llvm.loop !26

.loopexit278:                                     ; preds = %lean_inc_ref.exit186, %lean_inc_ref.exit186.peel
  %.lcssa276 = phi i8 [ %i.w, %lean_inc_ref.exit186.peel ], [ %i.aw, %lean_inc_ref.exit186 ] ; 8 uses
  %.lcssa = phi ptr [ %i.l, %lean_inc_ref.exit186.peel ], [ %i.al, %lean_inc_ref.exit186 ] ; 4 uses
  %.not.i161.lcssa = phi i1 [ %.not.i161.peel, %lean_inc_ref.exit186.peel ], [ %.not.i161, %lean_inc_ref.exit186 ]
  %i.ay = load i32, ptr %0, align 4, !tbaa !11    ; 3 uses
  %i.az = icmp sgt i32 %i.ay, 1
  br i1 %i.az, label %bb.aa, label %bb.ab, !prof !13

bb.aa:                                            ; preds = %.loopexit278
  %i.ba = add nsw i32 %i.ay, -1
  store i32 %i.ba, ptr %0, align 4, !tbaa !11
  br label %lean_dec_ref.exit178

bb.ab:                                            ; preds = %.loopexit278
  %.not.i177 = icmp eq i32 %i.ay, 0
  br i1 %.not.i177, label %lean_dec_ref.exit178, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec_ref.exit178

lean_dec_ref.exit178:                             ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.bb = load ptr, ptr @l_Lean_Meta_eqUnfoldThmSuffix, align 8, !tbaa !9 ; 3 uses
  %i.bc = icmp eq ptr %1, %i.bb
  br i1 %i.bc, label %lean_string_dec_eq.exit, label %bb.ad

bb.ad:                                            ; preds = %lean_dec_ref.exit178
  %i.bd = getelementptr i8, ptr %1, i64 8
  %.val7.i.i = load i64, ptr %i.bd, align 8, !tbaa !17
  %i.be = getelementptr i8, ptr %i.bb, i64 8
  %.val.i.i187 = load i64, ptr %i.be, align 8, !tbaa !17
  %i.bf = icmp eq i64 %.val7.i.i, %.val.i.i187
  br i1 %i.bf, label %bb.ae, label %lean_string_dec_eq.exit

bb.ae:                                            ; preds = %bb.ad
  %i.bg = tail call zeroext i1 @lean_string_eq_cold(ptr noundef nonnull %1, ptr noundef nonnull %i.bb) #5
  %i.bh = zext i1 %i.bg to i8
  br label %lean_string_dec_eq.exit

lean_string_dec_eq.exit:                          ; preds = %lean_dec_ref.exit178, %bb.ad, %bb.ae
  %i.bi = phi i8 [ 1, %lean_dec_ref.exit178 ], [ 0, %bb.ad ], [ %i.bh, %bb.ae ]
  tail call void @lean_inc_heartbeat() #5
  %i.bj = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #5 ; 18 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.af, label %lean_alloc_ctor.exit188

bb.af:                                            ; preds = %lean_string_dec_eq.exit
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit188:                          ; preds = %lean_string_dec_eq.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store i64 0, ptr %i.bm, align 8, !tbaa !17
  store i32 1, ptr %i.bj, align 8, !tbaa !11
  store i32 32, ptr %i.bl, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.bn, i8 0, i64 5, i1 false)
  store i8 %.lcssa276, ptr %i.bo, align 1, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 14
  store i8 %.lcssa276, ptr %i.bp, align 2, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 15
  store i8 0, ptr %i.bq, align 1, !tbaa !14
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i8 %.lcssa276, ptr %i.br, align 8, !tbaa !14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 17
  store i8 1, ptr %i.bs, align 1, !tbaa !14
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 18
  store i8 0, ptr %i.bt, align 2, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 19
  store i8 %.lcssa276, ptr %i.bu, align 1, !tbaa !14
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  store i8 %.lcssa276, ptr %i.bv, align 4, !tbaa !14
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 21
  store i8 %.lcssa276, ptr %i.bw, align 1, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 22
  store i8 2, ptr %i.bx, align 2, !tbaa !14
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.by, i8 %.lcssa276, i64 4, i1 false)
  %i.bz = tail call i64 @l___private_Lean_Meta_Basic_0__Lean_Meta_Config_toKey(ptr noundef nonnull %i.bj) #5
  tail call void @lean_inc_heartbeat() #5
  %i.ca = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.ag, label %lean_alloc_ctor.exit189

bb.ag:                                            ; preds = %lean_alloc_ctor.exit188
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit189:                          ; preds = %lean_alloc_ctor.exit188
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store i32 1, ptr %i.ca, align 4, !tbaa !11
  store i32 65560, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.bj, ptr %i.cd, align 8, !tbaa !9
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i64 %i.bz, ptr %i.ce, align 8, !tbaa !17
  %i.cf = load atomic i32, ptr @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__3_once seq_cst, align 4, !tbaa !19
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.ah, label %bb.ai, !prof !13

bb.ah:                                            ; preds = %lean_alloc_ctor.exit189
  %i.ch = load ptr, ptr @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__3, align 8, !tbaa !9
  br label %lean_obj_once.exit

bb.ai:                                            ; preds = %lean_alloc_ctor.exit189
  %i.ci = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__3, ptr noundef nonnull @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__3_once, ptr noundef nonnull @_init_l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__3) #5
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.ah, %bb.ai
  %.0.i190 = phi ptr [ %i.ch, %bb.ah ], [ %i.ci, %bb.ai ]
  tail call void @lean_inc_heartbeat() #5
  %i.cj = tail call noalias ptr @mi_malloc_small(i64 noundef 72) #5 ; 23 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.aj, label %lean_alloc_ctor.exit192

bb.aj:                                            ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit192:                          ; preds = %lean_obj_once.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  store i64 0, ptr %i.cm, align 8, !tbaa !17
  store i32 1, ptr %i.cj, align 8, !tbaa !11
  store i32 458824, ptr %i.cl, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  store ptr %i.ca, ptr %i.cn, align 8, !tbaa !9
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr inttoptr (i64 3 to ptr), ptr %i.co, align 8, !tbaa !9
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store ptr %.0.i190, ptr %i.cp, align 8, !tbaa !9
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  store ptr @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__4_value, ptr %i.cq, align 8, !tbaa !9
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %i.cr, align 8, !tbaa !9
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.cs, align 8, !tbaa !9
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  store ptr inttoptr (i64 1 to ptr), ptr %i.ct, align 8, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 67
  store i8 %i.bi, ptr %i.cu, align 1, !tbaa !14
  %i.cv = load atomic i32, ptr @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__8_once seq_cst, align 4, !tbaa !19
  %i.cw = icmp eq i32 %i.cv, 1
  br i1 %i.cw, label %bb.ak, label %bb.al, !prof !13

bb.ak:                                            ; preds = %lean_alloc_ctor.exit192
  %i.cx = load ptr, ptr @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__8, align 8, !tbaa !9
  br label %lean_obj_once.exit194

bb.al:                                            ; preds = %lean_alloc_ctor.exit192
  %i.cy = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__8, ptr noundef nonnull @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__8_once, ptr noundef nonnull @_init_l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__8) #5
  br label %lean_obj_once.exit194

lean_obj_once.exit194:                            ; preds = %bb.ak, %bb.al
  %.0.i193 = phi ptr [ %i.cx, %bb.ak ], [ %i.cy, %bb.al ]
  %i.cz = tail call ptr @lean_st_mk_ref(ptr noundef %.0.i193) #5 ; 10 uses
  br i1 %.not.i161.lcssa, label %bb.am, label %lean_inc.exit160

bb.am:                                            ; preds = %lean_obj_once.exit194
  %.val.i.i195 = load i32, ptr %.lcssa, align 4, !tbaa !11 ; 3 uses
  %i.da = icmp sgt i32 %.val.i.i195, 0
  br i1 %i.da, label %bb.an, label %bb.ao, !prof !13

bb.an:                                            ; preds = %bb.am
  %i.db = add nuw i32 %.val.i.i195, 1
  store i32 %i.db, ptr %.lcssa, align 4, !tbaa !11
  br label %lean_inc.exit160

bb.ao:                                            ; preds = %bb.am
  %.not.i.i196 = icmp eq i32 %.val.i.i195, 0
  br i1 %.not.i.i196, label %lean_inc.exit160, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dc = atomicrmw sub ptr %.lcssa, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit160

lean_inc.exit160:                                 ; preds = %bb.ap, %bb.ao, %bb.an, %lean_obj_once.exit194
  %i.dd = tail call ptr @l_Lean_Meta_getConstUnfoldEqnFor_x3f(ptr noundef %.lcssa, ptr noundef nonnull %i.cj, ptr noundef %i.cz, ptr noundef %4, ptr noundef %5) ; 18 uses
  %.val.i198 = load i32, ptr %i.cj, align 8, !tbaa !11 ; 4 uses
  %i.de = icmp eq i32 %.val.i198, 1
  br i1 %i.de, label %.preheader.i.preheader, label %bb.bs

.preheader.i.preheader:                           ; preds = %lean_inc.exit160
  %i.df = load ptr, ptr %i.cn, align 8, !tbaa !9  ; 4 uses
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = and i64 %i.dg, 1
  %.not.i.i199 = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i199, label %bb.aq, label %lean_dec.exit.i

bb.aq:                                            ; preds = %.preheader.i.preheader
  %i.di = load i32, ptr %i.df, align 4, !tbaa !11 ; 3 uses
  %i.dj = icmp sgt i32 %i.di, 1
  br i1 %i.dj, label %bb.ar, label %bb.as, !prof !13

bb.ar:                                            ; preds = %bb.aq
  %i.dk = add nsw i32 %i.di, -1
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !11
  br label %lean_dec.exit.i

bb.as:                                            ; preds = %bb.aq
end_hunk_0
begin_hunk_1_@l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg:lean_dec.exit.peel.begin
  br label %lean_obj_tag.exit221

lean_obj_tag.exit221:                             ; preds = %bb.cy, %bb.cz
  %.0.i219 = phi i32 [ %i.gr, %bb.cy ], [ %i.gt, %bb.cz ]
  %i.gu = icmp eq i32 %.0.i219, 0
  %i.gv = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !9  ; 13 uses
  br i1 %i.gu, label %bb.da, label %bb.dn

bb.da:                                            ; preds = %lean_obj_tag.exit221
  %i.gx = ptrtoint ptr %i.gw to i64               ; 5 uses
  %i.gy = and i64 %i.gx, 1
  %.not.i155 = icmp eq i64 %i.gy, 0
  br i1 %.not.i155, label %bb.db, label %lean_inc.exit156

bb.db:                                            ; preds = %bb.da
  %.val.i.i222 = load i32, ptr %i.gw, align 4, !tbaa !11 ; 3 uses
  %i.gz = icmp sgt i32 %.val.i.i222, 0
  br i1 %i.gz, label %bb.dc, label %bb.dd, !prof !13

bb.dc:                                            ; preds = %bb.db
  %i.ha = add nuw i32 %.val.i.i222, 1
  store i32 %i.ha, ptr %i.gw, align 4, !tbaa !11
  br label %lean_inc.exit156

bb.dd:                                            ; preds = %bb.db
  %.not.i.i223 = icmp eq i32 %.val.i.i222, 0
  br i1 %.not.i.i223, label %lean_inc.exit156, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.hb = atomicrmw sub ptr %i.gw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit156

lean_inc.exit156:                                 ; preds = %bb.de, %bb.dd, %bb.dc, %bb.da
  %.val.i225 = load i32, ptr %i.dd, align 8, !tbaa !11 ; 4 uses
  %i.hc = icmp eq i32 %.val.i225, 1
  br i1 %i.hc, label %.preheader.i227.preheader, label %bb.dj

.preheader.i227.preheader:                        ; preds = %lean_inc.exit156
  %i.hd = load ptr, ptr %i.gv, align 8, !tbaa !9  ; 4 uses
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = and i64 %i.he, 1
  %.not.i.i229 = icmp eq i64 %i.hf, 0
  br i1 %.not.i.i229, label %bb.df, label %lean_dec.exit.i230

bb.df:                                            ; preds = %.preheader.i227.preheader
  %i.hg = load i32, ptr %i.hd, align 4, !tbaa !11 ; 3 uses
  %i.hh = icmp sgt i32 %i.hg, 1
  br i1 %i.hh, label %bb.dg, label %bb.dh, !prof !13

bb.dg:                                            ; preds = %bb.df
  %i.hi = add nsw i32 %i.hg, -1
  store i32 %i.hi, ptr %i.hd, align 4, !tbaa !11
  br label %lean_dec.exit.i230

bb.dh:                                            ; preds = %bb.df
  %.not.i7.i234 = icmp eq i32 %i.hg, 0
  br i1 %.not.i7.i234, label %lean_dec.exit.i230, label %bb.di

bb.di:                                            ; preds = %bb.dh
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hd) #5
  br label %lean_dec.exit.i230

lean_dec.exit.i230:                               ; preds = %bb.di, %bb.dh, %bb.dg, %.preheader.i227.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.dd) #5
  br label %lean_dec.exit167

bb.dj:                                            ; preds = %lean_inc.exit156
  %i.hj = icmp sgt i32 %.val.i225, 1
  br i1 %i.hj, label %bb.dk, label %bb.dl, !prof !13

bb.dk:                                            ; preds = %bb.dj
  %i.hk = add nsw i32 %.val.i225, -1
  store i32 %i.hk, ptr %i.dd, align 8, !tbaa !11
  br label %lean_dec.exit167

bb.dl:                                            ; preds = %bb.dj
  %.not.i8.i226 = icmp eq i32 %.val.i225, 0
  br i1 %.not.i8.i226, label %lean_dec.exit167, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dd) #5
  br label %lean_dec.exit167

bb.dn:                                            ; preds = %lean_obj_tag.exit221
  %.val = load i32, ptr %i.dd, align 8, !tbaa !11
  %i.hl = icmp eq i32 %.val, 1
  br i1 %i.hl, label %lean_dec.exit.thread267, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.hm = ptrtoint ptr %i.gw to i64
  %i.hn = and i64 %i.hm, 1
  %.not.i = icmp eq i64 %i.hn, 0
  br i1 %.not.i, label %bb.dp, label %lean_inc.exit

bb.dp:                                            ; preds = %bb.do
  %.val.i.i236 = load i32, ptr %i.gw, align 4, !tbaa !11 ; 3 uses
  %i.ho = icmp sgt i32 %.val.i.i236, 0
  br i1 %i.ho, label %bb.dq, label %bb.dr, !prof !13

bb.dq:                                            ; preds = %bb.dp
  %i.hp = add nuw i32 %.val.i.i236, 1
  store i32 %i.hp, ptr %i.gw, align 4, !tbaa !11
  br label %lean_inc.exit

bb.dr:                                            ; preds = %bb.dp
  %.not.i.i237 = icmp eq i32 %.val.i.i236, 0
  br i1 %.not.i.i237, label %lean_inc.exit, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.hq = atomicrmw sub ptr %i.gw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.ds, %bb.dr, %bb.dq, %bb.do
  br i1 %.not.i200, label %bb.dt, label %bb.dx

bb.dt:                                            ; preds = %lean_inc.exit
  %i.hr = load i32, ptr %i.dd, align 8, !tbaa !11 ; 3 uses
  %i.hs = icmp sgt i32 %i.hr, 1
  br i1 %i.hs, label %bb.du, label %bb.dv, !prof !13

bb.du:                                            ; preds = %bb.dt
  %i.ht = add nsw i32 %i.hr, -1
  store i32 %i.ht, ptr %i.dd, align 8, !tbaa !11
  br label %bb.dx

bb.dv:                                            ; preds = %bb.dt
  %.not.i175 = icmp eq i32 %i.hr, 0
  br i1 %.not.i175, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dd) #5
  br label %bb.dx

bb.dx:                                            ; preds = %lean_inc.exit, %bb.du, %bb.dv, %bb.dw
  tail call void @lean_inc_heartbeat() #5
  %i.hu = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 2 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %bb.dy, label %lean_dec.exit.thread267.sink.split

bb.dy:                                            ; preds = %bb.dx
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_dec.exit167:                                 ; preds = %bb.dm, %bb.dl, %bb.dk, %lean_dec.exit.i230, %lean_dec.exit169, %bb.cq, %bb.cr, %bb.cs
  %.pre-phi = phi i64 [ %i.gx, %bb.dm ], [ %i.gx, %bb.dl ], [ %i.gx, %bb.dk ], [ %i.gx, %lean_dec.exit.i230 ], [ %i.fm, %lean_dec.exit169 ], [ %i.fm, %bb.cq ], [ %i.fm, %bb.cr ], [ %i.fm, %bb.cs ] ; 2 uses
  %.0152 = phi ptr [ %i.gw, %bb.dm ], [ %i.gw, %bb.dl ], [ %i.gw, %bb.dk ], [ %i.gw, %lean_dec.exit.i230 ], [ %i.fl, %lean_dec.exit169 ], [ %i.fl, %bb.cq ], [ %i.fl, %bb.cr ], [ %i.fl, %bb.cs ] ; 6 uses
  %i.hw = and i64 %.pre-phi, 1
  %.not.i240 = icmp eq i64 %i.hw, 0
  br i1 %.not.i240, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %lean_dec.exit167
  %i.hx = lshr i64 %.pre-phi, 1
  %i.hy = trunc i64 %i.hx to i32
  br label %lean_obj_tag.exit243

bb.ea:                                            ; preds = %lean_dec.exit167
  %i.hz = getelementptr i8, ptr %.0152, i64 4
  %.val.i242.a = load i32, ptr %i.hz, align 4
  %i.ia = lshr i32 %.val.i242.a, 24
  br label %lean_obj_tag.exit243

lean_obj_tag.exit243:                             ; preds = %bb.dz, %bb.ea
  %.0.i241 = phi i32 [ %i.hy, %bb.dz ], [ %i.ia, %bb.ea ]
  %i.ib = icmp eq i32 %.0.i241, 0
  br i1 %i.ib, label %bb.ek, label %bb.eb

bb.eb:                                            ; preds = %lean_obj_tag.exit243
  %.val.i244 = load i32, ptr %.0152, align 4, !tbaa !11 ; 4 uses
  %i.ic = icmp eq i32 %.val.i244, 1
  br i1 %i.ic, label %.preheader.i246, label %bb.eg

.preheader.i246:                                  ; preds = %bb.eb
  %i.id = getelementptr inbounds nuw i8, ptr %.0152, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !9  ; 4 uses
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = and i64 %i.if, 1
  %.not.i.i248 = icmp eq i64 %i.ig, 0
  br i1 %.not.i.i248, label %bb.ec, label %lean_dec.exit.i249

bb.ec:                                            ; preds = %.preheader.i246
  %i.ih = load i32, ptr %i.ie, align 4, !tbaa !11 ; 3 uses
  %i.ii = icmp sgt i32 %i.ih, 1
  br i1 %i.ii, label %bb.ed, label %bb.ee, !prof !13

bb.ed:                                            ; preds = %bb.ec
  %i.ij = add nsw i32 %i.ih, -1
  store i32 %i.ij, ptr %i.ie, align 4, !tbaa !11
  br label %lean_dec.exit.i249

bb.ee:                                            ; preds = %bb.ec
  %.not.i7.i253 = icmp eq i32 %i.ih, 0
  br i1 %.not.i7.i253, label %lean_dec.exit.i249, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ie) #5
  br label %lean_dec.exit.i249

lean_dec.exit.i249:                               ; preds = %bb.ef, %bb.ee, %bb.ed, %.preheader.i246
  tail call void @lean_free_object(ptr noundef nonnull %.0152) #5
  br label %lean_dec_ref_known.exit252

bb.eg:                                            ; preds = %bb.eb
  %i.ik = icmp sgt i32 %.val.i244, 1
  br i1 %i.ik, label %bb.eh, label %bb.ei, !prof !13

bb.eh:                                            ; preds = %bb.eg
  %i.il = add nsw i32 %.val.i244, -1
  store i32 %i.il, ptr %.0152, align 4, !tbaa !11
  br label %lean_dec_ref_known.exit252

bb.ei:                                            ; preds = %bb.eg
  %.not.i8.i245 = icmp eq i32 %.val.i244, 0
  br i1 %.not.i8.i245, label %lean_dec_ref_known.exit252, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0152) #5
  br label %lean_dec_ref_known.exit252

lean_dec_ref_known.exit252:                       ; preds = %lean_dec.exit.i249, %bb.eh, %bb.ei, %bb.ej
  %6 = zext i8 %.lcssa276 to i64
  %7 = shl nuw nsw i64 %6, 1
  %8 = or disjoint i64 %7, 1
  br label %bb.ek

bb.ek:                                            ; preds = %lean_obj_tag.exit243, %lean_dec_ref_known.exit252
  %.0148.ph = phi i64 [ %8, %lean_dec_ref_known.exit252 ], [ 1, %lean_obj_tag.exit243 ]
  tail call void @lean_inc_heartbeat() #5
  %i.im = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 5 uses
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %bb.el, label %lean_alloc_ctor.exit255

bb.el:                                            ; preds = %bb.ek
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit255:                          ; preds = %bb.ek
  %i.io = inttoptr i64 %.0148.ph to ptr
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  store i32 1, ptr %i.im, align 4, !tbaa !11
  store i32 16842768, ptr %i.ip, align 4
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store ptr %i.io, ptr %i.iq, align 8, !tbaa !9
  tail call void @lean_inc_heartbeat() #5
  %i.ir = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %bb.em, label %lean_alloc_ctor.exit256

bb.em:                                            ; preds = %lean_alloc_ctor.exit255
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit256:                          ; preds = %lean_alloc_ctor.exit255
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  store i32 1, ptr %i.ir, align 4, !tbaa !11
  store i32 131096, ptr %i.it, align 4
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store ptr %i.im, ptr %i.iu, align 8, !tbaa !9
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.iv, align 8, !tbaa !9
  tail call void @lean_inc_heartbeat() #5
  %i.iw = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 2 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %bb.en, label %lean_dec.exit.thread267.sink.split

bb.en:                                            ; preds = %lean_alloc_ctor.exit256
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_dec.exit.thread267.sink.split:               ; preds = %lean_alloc_ctor.exit256, %bb.dx, %lean_dec_ref.exit182
  %.sink331 = phi ptr [ %i.ai, %lean_dec_ref.exit182 ], [ %i.hu, %bb.dx ], [ %i.iw, %lean_alloc_ctor.exit256 ] ; 4 uses
  %.sink328 = phi i32 [ 65552, %lean_dec_ref.exit182 ], [ 16842768, %bb.dx ], [ 65552, %lean_alloc_ctor.exit256 ]
  %.sink = phi ptr [ %.0143.lcssa, %lean_dec_ref.exit182 ], [ %i.gw, %bb.dx ], [ %i.ir, %lean_alloc_ctor.exit256 ]
  %i.iy = getelementptr inbounds nuw i8, ptr %.sink331, i64 4
  store i32 1, ptr %.sink331, align 4, !tbaa !11
  store i32 %.sink328, ptr %i.iy, align 4
  %i.iz = getelementptr inbounds nuw i8, ptr %.sink331, i64 8
  store ptr %.sink, ptr %i.iz, align 8, !tbaa !9
  br label %lean_dec.exit.thread267

lean_dec.exit.thread267:                          ; preds = %lean_dec.exit.thread267.sink.split, %bb.dn
  %.4 = phi ptr [ %i.dd, %bb.dn ], [ %.sink331, %lean_dec.exit.thread267.sink.split ]
  ret ptr %.4
}

declare zeroext i8 @l_Lean_Environment_isSafeDefinition(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @l___private_Lean_Meta_Basic_0__Lean_Meta_Config_toKey(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal nonnull ptr @_init_l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getConstUnfoldEqnFor_x3f_spec__3_spec__6_spec__11_spec__14_spec__15_spec__16___redArg___closed__4_once seq_cst, align 4, !tbaa !19
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getConstUnfoldEqnFor_x3f_spec__3_spec__6_spec__11_spec__14_spec__15_spec__16___redArg___closed__4, align 8, !tbaa !9
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getConstUnfoldEqnFor_x3f_spec__3_spec__6_spec__11_spec__14_spec__15_spec__16___redArg___closed__4, ptr noundef nonnull @l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getConstUnfoldEqnFor_x3f_spec__3_spec__6_spec__11_spec__14_spec__15_spec__16___redArg___closed__4_once, ptr noundef nonnull @_init_l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getConstUnfoldEqnFor_x3f_spec__3_spec__6_spec__11_spec__14_spec__15_spec__16___redArg___closed__4) #5
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = load atomic i32, ptr @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__2_once seq_cst, align 4, !tbaa !19
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__2, align 8, !tbaa !9
  br label %lean_obj_once.exit8

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__2, ptr noundef nonnull @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__2_once, ptr noundef nonnull @_init_l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__2) #5
  br label %lean_obj_once.exit8

lean_obj_once.exit8:                              ; preds = %bb.d, %bb.e
  %.0.i7 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ]
  tail call void @lean_inc_heartbeat() #5
  %i.i = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #5 ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %lean_alloc_ctor.exit

bb.f:                                             ; preds = %lean_obj_once.exit8
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_obj_once.exit8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 1, ptr %i.i, align 4, !tbaa !11
  store i32 196640, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.0.i7, ptr %i.l, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.0.i, ptr %i.m, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr inttoptr (i64 3 to ptr), ptr %i.n, align 8, !tbaa !9
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define internal nonnull ptr @_init_l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__8() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__7_once seq_cst, align 4, !tbaa !19
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__7, align 8, !tbaa !9
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__7, ptr noundef nonnull @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__7_once, ptr noundef nonnull @_init_l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__7) #5
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = load atomic i32, ptr @l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getConstUnfoldEqnFor_x3f_spec__3_spec__6_spec__11_spec__14_spec__15_spec__16___redArg___closed__4_once seq_cst, align 4, !tbaa !19
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = load ptr, ptr @l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getConstUnfoldEqnFor_x3f_spec__3_spec__6_spec__11_spec__14_spec__15_spec__16___redArg___closed__4, align 8, !tbaa !9
  br label %lean_obj_once.exit12

bb.e:                                             ; preds = %lean_obj_once.exit
  %i.h = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getConstUnfoldEqnFor_x3f_spec__3_spec__6_spec__11_spec__14_spec__15_spec__16___redArg___closed__4, ptr noundef nonnull @l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getConstUnfoldEqnFor_x3f_spec__3_spec__6_spec__11_spec__14_spec__15_spec__16___redArg___closed__4_once, ptr noundef nonnull @_init_l_Lean_mkUnknownIdentifierMessageCore___at___00Lean_mkUnknownIdentifierMessage___at___00Lean_throwUnknownIdentifierAt___at___00Lean_throwUnknownConstantAt___at___00Lean_throwUnknownConstant___at___00Lean_getConstInfo___at___00Lean_Meta_getConstUnfoldEqnFor_x3f_spec__3_spec__6_spec__11_spec__14_spec__15_spec__16___redArg___closed__4) #5
  br label %lean_obj_once.exit12

lean_obj_once.exit12:                             ; preds = %bb.d, %bb.e
  %.0.i11 = phi ptr [ %i.g, %bb.d ], [ %i.h, %bb.e ]
  %i.i = load atomic i32, ptr @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__6_once seq_cst, align 4, !tbaa !19
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %lean_obj_once.exit12
  %i.k = load ptr, ptr @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__6, align 8, !tbaa !9
  br label %lean_obj_once.exit14

bb.g:                                             ; preds = %lean_obj_once.exit12
  %i.l = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__6, ptr noundef nonnull @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__6_once, ptr noundef nonnull @_init_l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__6) #5
  br label %lean_obj_once.exit14

lean_obj_once.exit14:                             ; preds = %bb.f, %bb.g
  %.0.i13 = phi ptr [ %i.k, %bb.f ], [ %i.l, %bb.g ]
  %i.m = load atomic i32, ptr @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__5_once seq_cst, align 4, !tbaa !19
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %lean_obj_once.exit14
  %i.o = load ptr, ptr @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__5, align 8, !tbaa !9
  br label %lean_obj_once.exit16

bb.i:                                             ; preds = %lean_obj_once.exit14
  %i.p = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__5, ptr noundef nonnull @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__5_once, ptr noundef nonnull @_init_l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___closed__5) #5
  br label %lean_obj_once.exit16

lean_obj_once.exit16:                             ; preds = %bb.h, %bb.i
  %.0.i15 = phi ptr [ %i.o, %bb.h ], [ %i.p, %bb.i ]
  tail call void @lean_inc_heartbeat() #5
  %i.q = tail call noalias ptr @mi_malloc_small(i64 noundef 48) #5 ; 9 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.j, label %lean_alloc_ctor.exit

bb.j:                                             ; preds = %lean_obj_once.exit16
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_obj_once.exit16
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 1, ptr %i.q, align 4, !tbaa !11
  store i32 327728, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.0.i15, ptr %i.t, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %.0.i13, ptr %i.u, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr inttoptr (i64 3 to ptr), ptr %i.v, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %.0.i11, ptr %i.w, align 8, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %.0.i, ptr %i.x, align 8, !tbaa !9
  ret ptr %i.q
}

declare ptr @lean_st_mk_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @l_List_forIn_x27_loop___at___00__private_Lean_Elab_PreDefinition_EqUnfold_0__Lean_Meta_initFn_00___x40_Lean_Elab_PreDefinition_EqUnfold_1356299382____hygCtx___hyg_2__spec__0___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %i.b = ptrtoint ptr %5 to i64
  %i.c = and i64 %i.b, 1
  %.not.i11 = icmp eq i64 %i.c, 0
  br i1 %.not.i11, label %bb.b, label %lean_dec.exit12

end_hunk_1
