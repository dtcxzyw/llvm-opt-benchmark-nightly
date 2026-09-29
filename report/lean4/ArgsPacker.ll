Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/ArgsPacker?download=true
inline.NumInlined: 1969
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Lean_Meta_ArgsPacker_Unary_packType_spec__0:bb.a
  store i32 %i.cu, ptr %i.cr, align 4
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  tail call void @lean_inc_heartbeat() #6
  %i.cv = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 4 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.bf, label %lean_alloc_ctor.exit181

bb.bf:                                            ; preds = %bb.be
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit181:                          ; preds = %bb.be
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store i32 1, ptr %i.cv, align 4, !tbaa !14
  store i32 16842768, ptr %i.cx, align 4
  br label %bb.bg

bb.bg:                                            ; preds = %lean_alloc_ctor.exit181, %bb.bd
  %.sink291 = phi ptr [ %i.cv, %lean_alloc_ctor.exit181 ], [ %.0124, %bb.bd ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sink291, i64 8
  store ptr %i.bz, ptr %i.cy, align 8, !tbaa !12
  %i.cz = tail call ptr @lean_alloc_object(i64 noundef 40) #6 ; 5 uses
  store i32 1, ptr %i.cz, align 4, !tbaa !14
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = and i32 %i.db, 65535
  %i.dd = or disjoint i32 %i.dc, -167772160
  store i32 %i.dd, ptr %i.da, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 0, ptr %i.de, align 8, !tbaa !10
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i64 2, ptr %i.df, align 8, !tbaa !10
  %i.dg = tail call ptr @lean_array_push(ptr noundef nonnull %i.cz, ptr noundef nonnull %.0120) #6
  %i.dh = tail call ptr @lean_array_push(ptr noundef %i.dg, ptr noundef nonnull %.sink291) #6
  %i.di = tail call ptr @l_Lean_Meta_mkAppOptM(ptr noundef nonnull @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Lean_Meta_ArgsPacker_Unary_packType_spec__0___closed__1_value, ptr noundef %i.dh, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %7, ptr noundef %8) #6 ; 8 uses
  %i.dj = ptrtoint ptr %i.di to i64               ; 2 uses
  %i.dk = and i64 %i.dj, 1
  %.not.i182 = icmp eq i64 %i.dk, 0
  br i1 %.not.i182, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dl = lshr i64 %i.dj, 1
  %i.dm = trunc i64 %i.dl to i32
  br label %lean_obj_tag.exit185

bb.bi:                                            ; preds = %bb.bg
  %i.dn = getelementptr i8, ptr %i.di, i64 4
  %.val.i184 = load i32, ptr %i.dn, align 4
  %i.do = lshr i32 %.val.i184, 24
  br label %lean_obj_tag.exit185

lean_obj_tag.exit185:                             ; preds = %bb.bh, %bb.bi
  %.0.i183 = phi i32 [ %i.dm, %bb.bh ], [ %i.do, %bb.bi ]
  %i.dp = icmp eq i32 %.0.i183, 0
  br i1 %i.dp, label %bb.bj, label %.loopexit

bb.bj:                                            ; preds = %lean_obj_tag.exit185
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !12 ; 6 uses
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = and i64 %i.ds, 1
  %.not.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i, label %bb.bk, label %lean_inc.exit

bb.bk:                                            ; preds = %bb.bj
  %.val.i.i186 = load i32, ptr %i.dr, align 4, !tbaa !14 ; 3 uses
  %i.du = icmp sgt i32 %.val.i.i186, 0
  br i1 %i.du, label %bb.bl, label %bb.bm, !prof !15

bb.bl:                                            ; preds = %bb.bk
  %i.dv = add nuw i32 %.val.i.i186, 1
  store i32 %i.dv, ptr %i.dr, align 4, !tbaa !14
  br label %lean_inc.exit

bb.bm:                                            ; preds = %bb.bk
  %.not.i.i187 = icmp eq i32 %.val.i.i186, 0
  br i1 %.not.i.i187, label %lean_inc.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dw = atomicrmw sub ptr %i.dr, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bj
  %.val.i189 = load i32, ptr %i.di, align 8, !tbaa !14 ; 4 uses
  %i.dx = icmp eq i32 %.val.i189, 1
  br i1 %i.dx, label %.preheader.i.preheader, label %bb.bs

.preheader.i.preheader:                           ; preds = %lean_inc.exit
  %i.dy = load ptr, ptr %i.dq, align 8, !tbaa !12 ; 4 uses
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = and i64 %i.dz, 1
  %.not.i.i190 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i190, label %bb.bo, label %lean_dec.exit.i

bb.bo:                                            ; preds = %.preheader.i.preheader
  %i.eb = load i32, ptr %i.dy, align 4, !tbaa !14 ; 3 uses
  %i.ec = icmp sgt i32 %i.eb, 1
  br i1 %i.ec, label %bb.bp, label %bb.bq, !prof !15

bb.bp:                                            ; preds = %bb.bo
  %i.ed = add nsw i32 %i.eb, -1
  store i32 %i.ed, ptr %i.dy, align 4, !tbaa !14
  br label %lean_dec.exit.i

bb.bq:                                            ; preds = %bb.bo
  %.not.i7.i = icmp eq i32 %i.eb, 0
  br i1 %.not.i7.i, label %lean_dec.exit.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dy) #6
  br label %lean_dec.exit.i

lean_dec.exit.i:                                  ; preds = %bb.br, %bb.bq, %bb.bp, %.preheader.i.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.di) #6
  br label %lean_dec.exit

bb.bs:                                            ; preds = %lean_inc.exit
  %i.ee = icmp sgt i32 %.val.i189, 1
  br i1 %i.ee, label %bb.bt, label %bb.bu, !prof !15

bb.bt:                                            ; preds = %bb.bs
  %i.ef = add nsw i32 %.val.i189, -1
  store i32 %i.ef, ptr %i.di, align 8, !tbaa !14
  br label %lean_dec.exit

bb.bu:                                            ; preds = %bb.bs
  %.not.i8.i = icmp eq i32 %.val.i189, 0
  br i1 %.not.i8.i, label %lean_dec.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.di) #6
  br label %lean_dec.exit

bb.bw:                                            ; preds = %lean_obj_tag.exit176
  %i.eg = ptrtoint ptr %.0124 to i64
  %i.eh = and i64 %i.eg, 1
  %.not.i191 = icmp eq i64 %i.eh, 0
  br i1 %.not.i191, label %bb.bx, label %lean_del_object.exit

bb.bx:                                            ; preds = %bb.bw
  tail call void @lean_free_object(ptr noundef nonnull %.0124) #6
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %bb.bw, %bb.bx
  %i.ei = ptrtoint ptr %i.aq to i64
  %i.ej = and i64 %i.ei, 1
  %.not.i137 = icmp eq i64 %i.ej, 0
  br i1 %.not.i137, label %bb.by, label %.loopexit

bb.by:                                            ; preds = %lean_del_object.exit
  %i.ek = load i32, ptr %i.aq, align 4, !tbaa !14 ; 3 uses
  %i.el = icmp sgt i32 %i.ek, 1
  br i1 %i.el, label %bb.bz, label %bb.ca, !prof !15

bb.bz:                                            ; preds = %bb.by
  %i.em = add nsw i32 %i.ek, -1
  store i32 %i.em, ptr %i.aq, align 4, !tbaa !14
  br label %.loopexit

bb.ca:                                            ; preds = %bb.by
  %.not.i145 = icmp eq i32 %i.ek, 0
  br i1 %.not.i145, label %.loopexit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aq) #6
  br label %.loopexit

bb.cc:                                            ; preds = %lean_obj_tag.exit
  %i.en = load i32, ptr %.0106219, align 4, !tbaa !14 ; 3 uses
  %i.eo = icmp sgt i32 %i.en, 1
  br i1 %i.eo, label %bb.cd, label %bb.ce, !prof !15

bb.cd:                                            ; preds = %bb.cc
  %i.ep = add nsw i32 %i.en, -1
  store i32 %i.ep, ptr %.0106219, align 4, !tbaa !14
  br label %.loopexit

bb.ce:                                            ; preds = %bb.cc
  %.not.i147 = icmp eq i32 %i.en, 0
  br i1 %.not.i147, label %.loopexit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0106219) #6
  br label %.loopexit

lean_dec.exit:                                    ; preds = %bb.bv, %bb.bu, %bb.bt, %lean_dec.exit.i
  %i.eq = add nuw i64 %.099220, 1                 ; 3 uses
  %i.er = icmp ult i64 %i.eq, %2
  %i.es = zext i1 %i.er to i8
  %exitcond.not = icmp eq i64 %i.eq, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

.loopexit:                                        ; preds = %lean_obj_tag.exit185, %lean_alloc_ctor.exit, %lean_del_object.exit, %bb.cb, %bb.ca, %bb.bz, %bb.cd, %bb.ce, %bb.cf
  %.6.ph = phi ptr [ %i.ah, %bb.cf ], [ %i.ah, %bb.ce ], [ %i.ah, %bb.cd ], [ %i.bn, %bb.bz ], [ %i.bn, %bb.ca ], [ %i.bn, %bb.cb ], [ %i.j, %lean_alloc_ctor.exit ], [ %i.bn, %lean_del_object.exit ], [ %i.di, %lean_obj_tag.exit185 ]
  ret ptr %.6.ph
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc nonnull ptr @lean_alloc_ctor(i32 noundef range(i32 0, 8) %0, i32 noundef range(i32 1, 5) %1) unnamed_addr #0 {
lean_usize_add_checked.exit:
  %i.a = shl nuw nsw i32 %1, 3
  %narrow = add nuw nsw i32 %i.a, 8               ; 2 uses
  %i.b = zext nneg i32 %narrow to i64
  tail call void @lean_inc_heartbeat() #6
  %i.c = tail call noalias ptr @mi_malloc_small(i64 noundef %i.b) #6 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.a, label %lean_alloc_small_object.exit.i

bb.a:                                             ; preds = %lean_usize_add_checked.exit
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_small_object.exit.i:                   ; preds = %lean_usize_add_checked.exit
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 1, ptr %i.c, align 4, !tbaa !14
  %i.f = shl nuw nsw i32 %0, 24
  %i.g = shl nuw nsw i32 %1, 16
  %i.h = or disjoint i32 %i.f, %i.g
  %i.i = or disjoint i32 %i.h, %narrow
  store i32 %i.i, ptr %i.e, align 4
  ret ptr %i.c
}

declare ptr @lean_infer_type(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lean_array_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_Meta_mkLambdaFVars(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_Meta_mkAppOptM(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @lean_dec_ref_known(ptr noundef %0, i32 noundef range(i32 1, 3) %1) unnamed_addr #0 {
bb.a:
  %.val = load i32, ptr %0, align 4, !tbaa !14    ; 4 uses
  %i.a = icmp eq i32 %.val, 1
  br i1 %i.a, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %lean_dec.exit
  tail call void @lean_free_object(ptr noundef nonnull %0) #6
  br label %lean_dec_ref.exit9

bb.c:                                             ; preds = %.preheader, %lean_dec.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %lean_dec.exit ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 4 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %lean_dec.exit

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.d, align 4, !tbaa !14   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.f, !prof !15

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %i.d, align 4, !tbaa !14
  br label %lean_dec.exit

bb.f:                                             ; preds = %bb.d
  %.not.i7 = icmp eq i32 %i.g, 0
  br i1 %.not.i7, label %lean_dec.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.d) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !22

bb.h:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %.val, 1
  br i1 %i.j, label %bb.i, label %bb.j, !prof !15

bb.i:                                             ; preds = %bb.h
  %i.k = add nsw i32 %.val, -1
  store i32 %i.k, ptr %0, align 4, !tbaa !14
  br label %lean_dec_ref.exit9

bb.j:                                             ; preds = %bb.h
  %.not.i8 = icmp eq i32 %.val, 0
  br i1 %.not.i8, label %lean_dec_ref.exit9, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec_ref.exit9

lean_dec_ref.exit9:                               ; preds = %bb.k, %bb.j, %bb.i, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Lean_Meta_ArgsPacker_Unary_packType_spec__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef readnone captures(none) %9) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val42 = load i64, ptr %i.a, align 8, !tbaa !10
  %i.b = load i32, ptr %2, align 8, !tbaa !14     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %2, align 8, !tbaa !14
  br label %lean_dec.exit26

bb.c:                                             ; preds = %bb.a
  %.not.i27 = icmp eq i32 %i.b, 0
  br i1 %.not.i27, label %lean_dec.exit26, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #6
  br label %lean_dec.exit26

lean_dec.exit26:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %3, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !10
  %i.f = load i32, ptr %3, align 8, !tbaa !14     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !15

bb.e:                                             ; preds = %lean_dec.exit26
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %3, align 8, !tbaa !14
  br label %lean_dec.exit24

bb.f:                                             ; preds = %lean_dec.exit26
  %.not.i28 = icmp eq i32 %i.f, 0
  br i1 %.not.i28, label %lean_dec.exit24, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec.exit24

lean_dec.exit24:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.i = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00Lean_Meta_ArgsPacker_Unary_packType_spec__0(ptr noundef %0, ptr noundef %1, i64 noundef %.val42, i64 noundef %.val, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  %i.j = ptrtoint ptr %8 to i64
  %i.k = and i64 %i.j, 1
  %.not.i21 = icmp eq i64 %i.k, 0
  br i1 %.not.i21, label %bb.h, label %lean_dec.exit22

bb.h:                                             ; preds = %lean_dec.exit24
  %i.l = load i32, ptr %8, align 4, !tbaa !14     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.i, label %bb.j, !prof !15

bb.i:                                             ; preds = %bb.h
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %8, align 4, !tbaa !14
  br label %lean_dec.exit22

bb.j:                                             ; preds = %bb.h
  %.not.i30 = icmp eq i32 %i.l, 0
  br i1 %.not.i30, label %lean_dec.exit22, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #6
  br label %lean_dec.exit22

lean_dec.exit22:                                  ; preds = %bb.k, %bb.j, %bb.i, %lean_dec.exit24
  %i.o = load i32, ptr %7, align 4, !tbaa !14     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.l, label %bb.m, !prof !15

bb.l:                                             ; preds = %lean_dec.exit22
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %7, align 4, !tbaa !14
  br label %lean_dec_ref.exit41

bb.m:                                             ; preds = %lean_dec.exit22
  %.not.i40 = icmp eq i32 %i.o, 0
  br i1 %.not.i40, label %lean_dec_ref.exit41, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #6
  br label %lean_dec_ref.exit41

lean_dec_ref.exit41:                              ; preds = %bb.l, %bb.m, %bb.n
  %i.r = ptrtoint ptr %6 to i64
  %i.s = and i64 %i.r, 1
  %.not.i19 = icmp eq i64 %i.s, 0
  br i1 %.not.i19, label %bb.o, label %lean_dec.exit20

bb.o:                                             ; preds = %lean_dec_ref.exit41
  %i.t = load i32, ptr %6, align 4, !tbaa !14     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.p, label %bb.q, !prof !15

bb.p:                                             ; preds = %bb.o
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %6, align 4, !tbaa !14
end_hunk_0
begin_hunk_1_@l_Lean_Meta_withLocalDecl___at___00Lean_Meta_withLocalDeclD___at___00Lean_Meta_ArgsPacker_Unary_uncurryType_spec__1_spec__1:bb.a
  %i.a = tail call ptr @l_Lean_Meta_withLocalDecl___at___00Lean_Meta_withLocalDeclD___at___00Lean_Meta_ArgsPacker_Unary_uncurryType_spec__1_spec__1___redArg(ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_withLocalDecl___at___00Lean_Meta_withLocalDeclD___at___00Lean_Meta_ArgsPacker_Unary_uncurryType_spec__1_spec__1___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr nofree noundef readnone captures(none) %10) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = lshr i64 %i.a, 1
  %i.c = trunc i64 %i.b to i8
  %i.d = ptrtoint ptr %5 to i64
  %i.e = lshr i64 %i.d, 1
  %i.f = trunc i64 %i.e to i8
  %i.g = tail call ptr @l_Lean_Meta_withLocalDecl___at___00Lean_Meta_withLocalDeclD___at___00Lean_Meta_ArgsPacker_Unary_uncurryType_spec__1_spec__1___redArg(ptr noundef %1, i8 noundef zeroext %i.c, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %i.f, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  %i.h = ptrtoint ptr %9 to i64
  %i.i = and i64 %i.h, 1
  %.not.i16 = icmp eq i64 %i.i, 0
  br i1 %.not.i16, label %bb.b, label %lean_dec.exit17

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %9, align 4, !tbaa !14     ; 3 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %i.j, -1
  store i32 %i.l, ptr %9, align 4, !tbaa !14
  br label %lean_dec.exit17

bb.d:                                             ; preds = %bb.b
  %.not.i18 = icmp eq i32 %i.j, 0
  br i1 %.not.i18, label %lean_dec.exit17, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %9) #6
  br label %lean_dec.exit17

lean_dec.exit17:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.m = load i32, ptr %8, align 4, !tbaa !14     ; 3 uses
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %lean_dec.exit17
  %i.o = add nsw i32 %i.m, -1
  store i32 %i.o, ptr %8, align 4, !tbaa !14
  br label %lean_dec_ref.exit24

bb.g:                                             ; preds = %lean_dec.exit17
  %.not.i23 = icmp eq i32 %i.m, 0
  br i1 %.not.i23, label %lean_dec_ref.exit24, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #6
  br label %lean_dec_ref.exit24

lean_dec_ref.exit24:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.p = ptrtoint ptr %7 to i64
  %i.q = and i64 %i.p, 1
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit24
  %i.r = load i32, ptr %7, align 4, !tbaa !14     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.j, label %bb.k, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.t = add nsw i32 %i.r, -1
  store i32 %i.t, ptr %7, align 4, !tbaa !14
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i19 = icmp eq i32 %i.r, 0
  br i1 %.not.i19, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit24
  %i.u = load i32, ptr %6, align 4, !tbaa !14     ; 3 uses
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.m, label %bb.n, !prof !15

bb.m:                                             ; preds = %lean_dec.exit
  %i.w = add nsw i32 %i.u, -1
  store i32 %i.w, ptr %6, align 4, !tbaa !14
  br label %lean_dec_ref.exit22

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i21 = icmp eq i32 %i.u, 0
  br i1 %.not.i21, label %lean_dec_ref.exit22, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #6
  br label %lean_dec_ref.exit22

lean_dec_ref.exit22:                              ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.g
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_withLocalDeclD___at___00Lean_Meta_ArgsPacker_Unary_uncurryType_spec__1(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Meta_withLocalDecl___at___00Lean_Meta_withLocalDeclD___at___00Lean_Meta_ArgsPacker_Unary_uncurryType_spec__1_spec__1___redArg(ptr noundef %1, i8 noundef zeroext 0, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Meta_withLocalDeclD___at___00Lean_Meta_ArgsPacker_Unary_uncurryType_spec__1___boxed(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef readnone captures(none) %8) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_Meta_withLocalDecl___at___00Lean_Meta_withLocalDeclD___at___00Lean_Meta_ArgsPacker_Unary_uncurryType_spec__1_spec__1___redArg(ptr noundef %1, i8 noundef zeroext 0, ptr noundef %2, ptr noundef %3, i8 noundef zeroext 0, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %i.b = ptrtoint ptr %7 to i64
  %i.c = and i64 %i.b, 1
  %.not.i13 = icmp eq i64 %i.c, 0
  br i1 %.not.i13, label %bb.b, label %lean_dec.exit14

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %7, align 4, !tbaa !14     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %7, align 4, !tbaa !14
  br label %lean_dec.exit14

bb.d:                                             ; preds = %bb.b
  %.not.i15 = icmp eq i32 %i.d, 0
  br i1 %.not.i15, label %lean_dec.exit14, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #6
  br label %lean_dec.exit14

lean_dec.exit14:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %6, align 4, !tbaa !14     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %lean_dec.exit14
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %6, align 4, !tbaa !14
  br label %lean_dec_ref.exit21

bb.g:                                             ; preds = %lean_dec.exit14
  %.not.i20 = icmp eq i32 %i.g, 0
  br i1 %.not.i20, label %lean_dec_ref.exit21, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #6
  br label %lean_dec_ref.exit21

lean_dec_ref.exit21:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %5 to i64
  %i.k = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit21
  %i.l = load i32, ptr %5, align 4, !tbaa !14     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %5, align 4, !tbaa !14
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i16 = icmp eq i32 %i.l, 0
  br i1 %.not.i16, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit21
  %i.o = load i32, ptr %4, align 4, !tbaa !14     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !15

bb.m:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %4, align 4, !tbaa !14
  br label %lean_dec_ref.exit19

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i18 = icmp eq i32 %i.o, 0
  br i1 %.not.i18, label %lean_dec_ref.exit19, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #6
  br label %lean_dec_ref.exit19

lean_dec_ref.exit19:                              ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_addMessageContextFull___at___00Lean_throwError___at___00__private_Lean_Meta_ArgsPacker_0__Lean_Meta_ArgsPacker_Unary_casesOn_spec__0_spec__0(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @lean_st_ref_get(ptr noundef %4) #6 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 4 uses
  %.val.i.i = load i32, ptr %i.c, align 4, !tbaa !14 ; 3 uses
  %i.d = icmp sgt i32 %.val.i.i, 0
  br i1 %i.d, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i32 %.val.i.i, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !14
  br label %lean_inc_ref.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc_ref.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = atomicrmw sub ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit

lean_inc_ref.exit:                                ; preds = %bb.d, %bb.c, %bb.b
  %i.g = load i32, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.f, !prof !15

bb.e:                                             ; preds = %lean_inc_ref.exit
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !14
  br label %lean_dec.exit28

bb.f:                                             ; preds = %lean_inc_ref.exit
  %.not.i29 = icmp eq i32 %i.g, 0
  br i1 %.not.i29, label %lean_dec.exit28, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #6
  br label %lean_dec.exit28

lean_dec.exit28:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.j = tail call ptr @lean_st_ref_get(ptr noundef %2) #6 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12   ; 4 uses
  %.val.i.i32 = load i32, ptr %i.l, align 4, !tbaa !14 ; 3 uses
  %i.m = icmp sgt i32 %.val.i.i32, 0
  br i1 %i.m, label %bb.h, label %bb.i, !prof !15

bb.h:                                             ; preds = %lean_dec.exit28
  %i.n = add nuw i32 %.val.i.i32, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !14
  br label %lean_inc_ref.exit34

bb.i:                                             ; preds = %lean_dec.exit28
  %.not.i.i33 = icmp eq i32 %.val.i.i32, 0
  br i1 %.not.i.i33, label %lean_inc_ref.exit34, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = atomicrmw sub ptr %i.l, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit34

lean_inc_ref.exit34:                              ; preds = %bb.j, %bb.i, %bb.h
  %i.p = load i32, ptr %i.j, align 8, !tbaa !14   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 1
  br i1 %i.q, label %bb.k, label %bb.l, !prof !15

bb.k:                                             ; preds = %lean_inc_ref.exit34
  %i.r = add nsw i32 %i.p, -1
  store i32 %i.r, ptr %i.j, align 8, !tbaa !14
  br label %lean_dec.exit

bb.l:                                             ; preds = %lean_inc_ref.exit34
  %.not.i30 = icmp eq i32 %i.p, 0
  br i1 %.not.i30, label %lean_dec.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.j) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.m, %bb.l, %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !12   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !12   ; 4 uses
  %.val.i.i35 = load i32, ptr %i.v, align 4, !tbaa !14 ; 3 uses
  %i.w = icmp sgt i32 %.val.i.i35, 0
  br i1 %i.w, label %bb.n, label %bb.o, !prof !15

bb.n:                                             ; preds = %lean_dec.exit
  %i.x = add nuw i32 %.val.i.i35, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !14
  br label %lean_inc_ref.exit37

bb.o:                                             ; preds = %lean_dec.exit
  %.not.i.i36 = icmp eq i32 %.val.i.i35, 0
  br i1 %.not.i.i36, label %lean_inc_ref.exit37, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = atomicrmw sub ptr %i.v, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit37

lean_inc_ref.exit37:                              ; preds = %bb.n, %bb.o, %bb.p
  %.val.i.i38 = load i32, ptr %i.t, align 4, !tbaa !14 ; 3 uses
  %i.z = icmp sgt i32 %.val.i.i38, 0
  br i1 %i.z, label %bb.q, label %bb.r, !prof !15

bb.q:                                             ; preds = %lean_inc_ref.exit37
  %i.aa = add nuw i32 %.val.i.i38, 1
  store i32 %i.aa, ptr %i.t, align 4, !tbaa !14
  br label %lean_inc_ref.exit40

bb.r:                                             ; preds = %lean_inc_ref.exit37
  %.not.i.i39 = icmp eq i32 %.val.i.i38, 0
  br i1 %.not.i.i39, label %lean_inc_ref.exit40, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ab = atomicrmw sub ptr %i.t, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit40

lean_inc_ref.exit40:                              ; preds = %bb.q, %bb.r, %bb.s
  tail call void @lean_inc_heartbeat() #6
  %i.ac = tail call noalias ptr @mi_malloc_small(i64 noundef 40) #6 ; 8 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.t, label %lean_alloc_ctor.exit

bb.t:                                             ; preds = %lean_inc_ref.exit40
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc_ref.exit40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 1, ptr %i.ac, align 4, !tbaa !14
  store i32 262184, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.c, ptr %i.af, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.l, ptr %i.ag, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.t, ptr %i.ah, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.v, ptr %i.ai, align 8, !tbaa !12
  tail call void @lean_inc_heartbeat() #6
  %i.aj = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.u, label %lean_alloc_ctor.exit41

bb.u:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit41:                           ; preds = %lean_alloc_ctor.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 1, ptr %i.aj, align 4, !tbaa !14
  store i32 50462744, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ac, ptr %i.am, align 8, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %0, ptr %i.an, align 8, !tbaa !12
  tail call void @lean_inc_heartbeat() #6
  %i.ao = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.v, label %lean_alloc_ctor.exit42

bb.v:                                             ; preds = %lean_alloc_ctor.exit41
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit42:                           ; preds = %lean_alloc_ctor.exit41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 1, ptr %i.ao, align 4, !tbaa !14
  store i32 65552, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.aj, ptr %i.ar, align 8, !tbaa !12
  ret ptr %i.ao
}

declare ptr @lean_st_ref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define nonnull ptr @l_Lean_addMessageContextFull___at___00Lean_throwError___at___00__private_Lean_Meta_ArgsPacker_0__Lean_Meta_ArgsPacker_Unary_casesOn_spec__0_spec__0___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_addMessageContextFull___at___00Lean_throwError___at___00__private_Lean_Meta_ArgsPacker_0__Lean_Meta_ArgsPacker_Unary_casesOn_spec__0_spec__0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.b = ptrtoint ptr %4 to i64
  %i.c = and i64 %i.b, 1
  %.not.i10 = icmp eq i64 %i.c, 0
  br i1 %.not.i10, label %bb.b, label %lean_dec.exit11

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %4, align 4, !tbaa !14     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %4, align 4, !tbaa !14
  br label %lean_dec.exit11

bb.d:                                             ; preds = %bb.b
  %.not.i12 = icmp eq i32 %i.d, 0
  br i1 %.not.i12, label %lean_dec.exit11, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #6
  br label %lean_dec.exit11

lean_dec.exit11:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %3, align 4, !tbaa !14     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %lean_dec.exit11
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit18

bb.g:                                             ; preds = %lean_dec.exit11
  %.not.i17 = icmp eq i32 %i.g, 0
  br i1 %.not.i17, label %lean_dec_ref.exit18, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit18

lean_dec_ref.exit18:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %2 to i64
  %i.k = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit18
  %i.l = load i32, ptr %2, align 4, !tbaa !14     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %2, align 4, !tbaa !14
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i13 = icmp eq i32 %i.l, 0
  br i1 %.not.i13, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit18
  %i.o = load i32, ptr %1, align 4, !tbaa !14     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !15

bb.m:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit16

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i15 = icmp eq i32 %i.o, 0
  br i1 %.not.i15, label %lean_dec_ref.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit16

lean_dec_ref.exit16:                              ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_throwError___at___00__private_Lean_Meta_ArgsPacker_0__Lean_Meta_ArgsPacker_Unary_casesOn_spec__0___redArg(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 5 uses
  %i.c = tail call ptr @l_Lean_addMessageContextFull___at___00Lean_throwError___at___00__private_Lean_Meta_ArgsPacker_0__Lean_Meta_ArgsPacker_Unary_casesOn_spec__0_spec__0(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 5 uses
  %.val = load i32, ptr %i.c, align 8, !tbaa !14
  %i.f = icmp eq i32 %.val, 1                     ; 2 uses
  br i1 %i.f, label %lean_dec.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = and i64 %i.g, 1
  %.not.i32 = icmp eq i64 %i.h, 0
  br i1 %.not.i32, label %bb.c, label %lean_inc.exit33

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load i32, ptr %i.e, align 4, !tbaa !14 ; 3 uses
  %i.i = icmp sgt i32 %.val.i.i, 0
  br i1 %i.i, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw i32 %.val.i.i, 1
  store i32 %i.j, ptr %i.e, align 4, !tbaa !14
  br label %lean_inc.exit33

bb.e:                                             ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit33, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = atomicrmw sub ptr %i.e, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit33

lean_inc.exit33:                                  ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %5 = load i32, ptr %i.c, align 8, !tbaa !14     ; 3 uses
  %i.l = icmp sgt i32 %5, 1
  br i1 %i.l, label %bb.g, label %bb.h, !prof !15

bb.g:                                             ; preds = %lean_inc.exit33
  %i.m = add nsw i32 %5, -1
  store i32 %i.m, ptr %i.c, align 8, !tbaa !14
  br label %lean_dec.exit

bb.h:                                             ; preds = %lean_inc.exit33
  %.not.i35 = icmp eq i32 %5, 0
  br i1 %.not.i35, label %lean_dec.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.c) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.g, %bb.h, %bb.i, %bb.a
  %.031 = phi ptr [ %i.c, %bb.a ], [ inttoptr (i64 1 to ptr), %bb.i ], [ inttoptr (i64 1 to ptr), %bb.h ], [ inttoptr (i64 1 to ptr), %bb.g ] ; 2 uses
  %i.n = ptrtoint ptr %i.b to i64
  %i.o = and i64 %i.n, 1
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.j, label %lean_inc.exit

bb.j:                                             ; preds = %lean_dec.exit
  %.val.i.i36 = load i32, ptr %i.b, align 4, !tbaa !14 ; 3 uses
  %i.p = icmp sgt i32 %.val.i.i36, 0
  br i1 %i.p, label %bb.k, label %bb.l, !prof !15

bb.k:                                             ; preds = %bb.j
  %i.q = add nuw i32 %.val.i.i36, 1
  store i32 %i.q, ptr %i.b, align 4, !tbaa !14
  br label %lean_inc.exit

bb.l:                                             ; preds = %bb.j
  %.not.i.i37 = icmp eq i32 %.val.i.i36, 0
  br i1 %.not.i.i37, label %lean_inc.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = atomicrmw sub ptr %i.b, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.m, %bb.l, %bb.k, %lean_dec.exit
  tail call void @lean_inc_heartbeat() #6
  %i.s = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.n, label %lean_alloc_ctor.exit

bb.n:                                             ; preds = %lean_inc.exit
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_inc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 1, ptr %i.s, align 4, !tbaa !14
  store i32 131096, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.b, ptr %i.v, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.e, ptr %i.w, align 8, !tbaa !12
  br i1 %i.f, label %bb.o, label %bb.p

bb.o:                                             ; preds = %lean_alloc_ctor.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = and i32 %i.y, 16777215
  %i.aa = or disjoint i32 %i.z, 16777216
  store i32 %i.aa, ptr %i.x, align 4
  br label %bb.r

bb.p:                                             ; preds = %lean_alloc_ctor.exit
  tail call void @lean_inc_heartbeat() #6
  %i.ab = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.q, label %lean_alloc_ctor.exit39

bb.q:                                             ; preds = %bb.p
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit39:                           ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 1, ptr %i.ab, align 4, !tbaa !14
  store i32 16842768, ptr %i.ad, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %lean_alloc_ctor.exit39
  %.031.sink = phi ptr [ %.031, %bb.o ], [ %i.ab, %lean_alloc_ctor.exit39 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.031.sink, i64 8
  store ptr %i.s, ptr %i.ae, align 8, !tbaa !12
  ret ptr %.031.sink
}

; Function Attrs: nounwind uwtable
define ptr @l_Lean_throwError___at___00__private_Lean_Meta_ArgsPacker_0__Lean_Meta_ArgsPacker_Unary_casesOn_spec__0___redArg___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @l_Lean_throwError___at___00__private_Lean_Meta_ArgsPacker_0__Lean_Meta_ArgsPacker_Unary_casesOn_spec__0___redArg(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.b = ptrtoint ptr %4 to i64
  %i.c = and i64 %i.b, 1
  %.not.i10 = icmp eq i64 %i.c, 0
  br i1 %.not.i10, label %bb.b, label %lean_dec.exit11

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %4, align 4, !tbaa !14     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %4, align 4, !tbaa !14
  br label %lean_dec.exit11

bb.d:                                             ; preds = %bb.b
  %.not.i12 = icmp eq i32 %i.d, 0
  br i1 %.not.i12, label %lean_dec.exit11, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #6
  br label %lean_dec.exit11

lean_dec.exit11:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.g = load i32, ptr %3, align 4, !tbaa !14     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %lean_dec.exit11
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %3, align 4, !tbaa !14
  br label %lean_dec_ref.exit18

bb.g:                                             ; preds = %lean_dec.exit11
  %.not.i17 = icmp eq i32 %i.g, 0
  br i1 %.not.i17, label %lean_dec_ref.exit18, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %3) #6
  br label %lean_dec_ref.exit18

lean_dec_ref.exit18:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %2 to i64
  %i.k = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.i, label %lean_dec.exit

bb.i:                                             ; preds = %lean_dec_ref.exit18
  %i.l = load i32, ptr %2, align 4, !tbaa !14     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %2, align 4, !tbaa !14
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i13 = icmp eq i32 %i.l, 0
  br i1 %.not.i13, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %2) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit18
  %i.o = load i32, ptr %1, align 4, !tbaa !14     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !15

bb.m:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %1, align 4, !tbaa !14
  br label %lean_dec_ref.exit16

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i15 = icmp eq i32 %i.o, 0
  br i1 %.not.i15, label %lean_dec_ref.exit16, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #6
  br label %lean_dec_ref.exit16

lean_dec_ref.exit16:                              ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_ArgsPacker_0__Lean_Meta_ArgsPacker_Unary_casesOn___lam__1___boxed(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
end_hunk_1
begin_hunk_2_@l_Lean_Meta_ArgsPacker_curryParam___boxed:bb.a
bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %6, align 4, !tbaa !14
  br label %lean_dec.exit

bb.k:                                             ; preds = %bb.i
  %.not.i17 = icmp eq i32 %i.l, 0
  br i1 %.not.i17, label %lean_dec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %bb.l, %bb.k, %bb.j, %lean_dec_ref.exit22
  %i.o = load i32, ptr %5, align 4, !tbaa !14     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !15

bb.m:                                             ; preds = %lean_dec.exit
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %5, align 4, !tbaa !14
  br label %lean_dec_ref.exit20

bb.n:                                             ; preds = %lean_dec.exit
  %.not.i19 = icmp eq i32 %i.o, 0
  br i1 %.not.i19, label %lean_dec_ref.exit20, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #6
  br label %lean_dec_ref.exit20

lean_dec_ref.exit20:                              ; preds = %bb.m, %bb.n, %bb.o
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define ptr @runtime_initialize_Lean_Meta_ArgsPacker(i8 noundef zeroext %0) local_unnamed_addr #1 {
bb.a:
  %.b = load i1, ptr @_G_runtime_initialized, align 1
  br i1 %.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @lean_inc_heartbeat() #6
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %lean_io_result_mk_ok.exit

bb.c:                                             ; preds = %bb.b
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_io_result_mk_ok.exit:                        ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.a, align 4, !tbaa !14
  store i32 65552, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !tbaa !12
  br label %bb.y

bb.d:                                             ; preds = %bb.a
  store i1 true, ptr @_G_runtime_initialized, align 1
  %i.e = tail call ptr @runtime_initialize_Lean_Meta_AppBuilder(i8 noundef zeroext %0) #6 ; 5 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val31 = load i32, ptr %i.f, align 4
  %.mask.i = and i32 %.val31, -16777216
  %i.g = icmp eq i32 %.mask.i, 16777216
  br i1 %i.g, label %bb.y, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %i.e, align 4, !tbaa !14   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %bb.g, !prof !15

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %i.e, align 4, !tbaa !14
  br label %lean_dec_ref.exit27

bb.g:                                             ; preds = %bb.e
  %.not.i26 = icmp eq i32 %i.h, 0
  br i1 %.not.i26, label %lean_dec_ref.exit27, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.e) #6
  br label %lean_dec_ref.exit27

lean_dec_ref.exit27:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.k = tail call ptr @runtime_initialize_Lean_Meta_PProdN(i8 noundef zeroext %0) #6 ; 5 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val30 = load i32, ptr %i.l, align 4
  %.mask.i32 = and i32 %.val30, -16777216
  %i.m = icmp eq i32 %.mask.i32, 16777216
  br i1 %i.m, label %bb.y, label %bb.i

bb.i:                                             ; preds = %lean_dec_ref.exit27
  %i.n = load i32, ptr %i.k, align 4, !tbaa !14   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.j, label %bb.k, !prof !15

bb.j:                                             ; preds = %bb.i
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !14
  br label %lean_dec_ref.exit25

bb.k:                                             ; preds = %bb.i
  %.not.i24 = icmp eq i32 %i.n, 0
  br i1 %.not.i24, label %lean_dec_ref.exit25, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.k) #6
  br label %lean_dec_ref.exit25

lean_dec_ref.exit25:                              ; preds = %bb.j, %bb.k, %bb.l
  %i.q = tail call ptr @runtime_initialize_Lean_Meta_ArgsPacker_Basic(i8 noundef zeroext %0) #6 ; 5 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %.val29 = load i32, ptr %i.r, align 4
  %.mask.i33 = and i32 %.val29, -16777216
  %i.s = icmp eq i32 %.mask.i33, 16777216
  br i1 %i.s, label %bb.y, label %bb.m

bb.m:                                             ; preds = %lean_dec_ref.exit25
  %i.t = load i32, ptr %i.q, align 4, !tbaa !14   ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.n, label %bb.o, !prof !15

bb.n:                                             ; preds = %bb.m
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %i.q, align 4, !tbaa !14
  br label %lean_dec_ref.exit23

bb.o:                                             ; preds = %bb.m
  %.not.i22 = icmp eq i32 %i.t, 0
  br i1 %.not.i22, label %lean_dec_ref.exit23, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #6
  br label %lean_dec_ref.exit23

lean_dec_ref.exit23:                              ; preds = %bb.n, %bb.o, %bb.p
  %i.w = tail call ptr @runtime_initialize_Init_Omega(i8 noundef zeroext %0) #6 ; 5 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val28 = load i32, ptr %i.x, align 4
  %.mask.i34 = and i32 %.val28, -16777216
  %i.y = icmp eq i32 %.mask.i34, 16777216
  br i1 %i.y, label %bb.y, label %bb.q

bb.q:                                             ; preds = %lean_dec_ref.exit23
  %i.z = load i32, ptr %i.w, align 4, !tbaa !14   ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.r, label %bb.s, !prof !15

bb.r:                                             ; preds = %bb.q
  %i.ab = add nsw i32 %i.z, -1
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !14
  br label %lean_dec_ref.exit21

bb.s:                                             ; preds = %bb.q
  %.not.i20 = icmp eq i32 %i.z, 0
  br i1 %.not.i20, label %lean_dec_ref.exit21, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.w) #6
  br label %lean_dec_ref.exit21

lean_dec_ref.exit21:                              ; preds = %bb.r, %bb.s, %bb.t
  %i.ac = tail call ptr @runtime_initialize_Init_While(i8 noundef zeroext %0) #6 ; 5 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %.val = load i32, ptr %i.ad, align 4
  %.mask.i35 = and i32 %.val, -16777216
  %i.ae = icmp eq i32 %.mask.i35, 16777216
  br i1 %i.ae, label %bb.y, label %bb.u

bb.u:                                             ; preds = %lean_dec_ref.exit21
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !14 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.v, label %bb.w, !prof !15

bb.v:                                             ; preds = %bb.u
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !14
  br label %lean_dec_ref.exit

bb.w:                                             ; preds = %bb.u
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %lean_dec_ref.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ac) #6
  br label %lean_dec_ref.exit

lean_dec_ref.exit:                                ; preds = %bb.v, %bb.w, %bb.x
  %i.ai = tail call fastcc ptr @lean_io_result_mk_ok(ptr noundef nonnull inttoptr (i64 1 to ptr))
  br label %bb.y

bb.y:                                             ; preds = %lean_dec_ref.exit21, %lean_dec_ref.exit23, %lean_dec_ref.exit25, %lean_dec_ref.exit27, %bb.d, %lean_dec_ref.exit, %lean_io_result_mk_ok.exit
  %.0 = phi ptr [ %i.a, %lean_io_result_mk_ok.exit ], [ %i.ai, %lean_dec_ref.exit ], [ %i.e, %bb.d ], [ %i.k, %lean_dec_ref.exit27 ], [ %i.q, %lean_dec_ref.exit25 ], [ %i.w, %lean_dec_ref.exit23 ], [ %i.ac, %lean_dec_ref.exit21 ]
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc nonnull ptr @lean_io_result_mk_ok(ptr noundef %0) unnamed_addr #0 {
bb.a:
  tail call void @lean_inc_heartbeat() #6
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %lean_alloc_ctor.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.a, align 4, !tbaa !14
  store i32 65552, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.d, align 8, !tbaa !12
  ret ptr %i.a
}

declare ptr @runtime_initialize_Lean_Meta_AppBuilder(i8 noundef zeroext) local_unnamed_addr #2

declare ptr @runtime_initialize_Lean_Meta_PProdN(i8 noundef zeroext) local_unnamed_addr #2

declare ptr @runtime_initialize_Lean_Meta_ArgsPacker_Basic(i8 noundef zeroext) local_unnamed_addr #2

declare ptr @runtime_initialize_Init_Omega(i8 noundef zeroext) local_unnamed_addr #2

declare ptr @runtime_initialize_Init_While(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @meta_initialize_Lean_Meta_ArgsPacker(i8 zeroext %0) local_unnamed_addr #1 {
bb.a:
  %.b = load i1, ptr @_G_meta_initialized, align 1
  br i1 %.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @lean_inc_heartbeat() #6
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %lean_io_result_mk_ok.exit

bb.c:                                             ; preds = %bb.b
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

bb.d:                                             ; preds = %bb.a
  store i1 true, ptr @_G_meta_initialized, align 1
  tail call void @lean_inc_heartbeat() #6
  %i.c = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %lean_io_result_mk_ok.exit

bb.e:                                             ; preds = %bb.d
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_io_result_mk_ok.exit:                        ; preds = %bb.d, %bb.b
  %.sink6 = phi ptr [ %i.a, %bb.b ], [ %i.c, %bb.d ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sink6, i64 4
  store i32 1, ptr %.sink6, align 4, !tbaa !14
  store i32 65552, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %.sink6, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8, !tbaa !12
  ret ptr %.sink6
}

; Function Attrs: nounwind uwtable
define ptr @initialize_Lean_Meta_ArgsPacker(i8 noundef zeroext %0) local_unnamed_addr #1 {
bb.a:
  %.b53 = load i1, ptr @_G_initialized, align 1
  br i1 %.b53, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.a
  tail call void @lean_inc_heartbeat() #6
  %i.a = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %lean_io_result_mk_ok.exit

bb.b:                                             ; preds = %tailrecurse._crit_edge
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_io_result_mk_ok.exit:                        ; preds = %tailrecurse._crit_edge
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 1, ptr %i.a, align 4, !tbaa !14
  store i32 65552, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !tbaa !12
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  store i1 true, ptr @_G_initialized, align 1
  %i.e = tail call ptr @initialize_Lean_Meta_AppBuilder(i8 noundef zeroext %0) #6 ; 5 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val46 = load i32, ptr %i.f, align 4
  %.mask.i = and i32 %.val46, -16777216
  %i.g = icmp eq i32 %.mask.i, 16777216
  br i1 %i.g, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.h = load i32, ptr %i.e, align 4, !tbaa !14   ; 3 uses
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.h, -1
  store i32 %i.j, ptr %i.e, align 4, !tbaa !14
  br label %lean_dec_ref.exit40

bb.e:                                             ; preds = %bb.c
  %.not.i39 = icmp eq i32 %i.h, 0
  br i1 %.not.i39, label %lean_dec_ref.exit40, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.e) #6
  br label %lean_dec_ref.exit40

lean_dec_ref.exit40:                              ; preds = %bb.d, %bb.e, %bb.f
  %i.k = tail call ptr @initialize_Lean_Meta_PProdN(i8 noundef zeroext %0) #6 ; 5 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val45 = load i32, ptr %i.l, align 4
  %.mask.i47 = and i32 %.val45, -16777216
  %i.m = icmp eq i32 %.mask.i47, 16777216
  br i1 %i.m, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %lean_dec_ref.exit40
  %i.n = load i32, ptr %i.k, align 4, !tbaa !14   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.h, label %bb.i, !prof !15

bb.h:                                             ; preds = %bb.g
  %i.p = add nsw i32 %i.n, -1
  store i32 %i.p, ptr %i.k, align 4, !tbaa !14
  br label %lean_dec_ref.exit38

bb.i:                                             ; preds = %bb.g
  %.not.i37 = icmp eq i32 %i.n, 0
  br i1 %.not.i37, label %lean_dec_ref.exit38, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.k) #6
  br label %lean_dec_ref.exit38

lean_dec_ref.exit38:                              ; preds = %bb.h, %bb.i, %bb.j
  %i.q = tail call ptr @initialize_Lean_Meta_ArgsPacker_Basic(i8 noundef zeroext %0) #6 ; 5 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %.val44 = load i32, ptr %i.r, align 4
  %.mask.i48 = and i32 %.val44, -16777216
  %i.s = icmp eq i32 %.mask.i48, 16777216
  br i1 %i.s, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %lean_dec_ref.exit38
  %i.t = load i32, ptr %i.q, align 4, !tbaa !14   ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.l, label %bb.m, !prof !15

bb.l:                                             ; preds = %bb.k
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %i.q, align 4, !tbaa !14
  br label %lean_dec_ref.exit36

bb.m:                                             ; preds = %bb.k
  %.not.i35 = icmp eq i32 %i.t, 0
  br i1 %.not.i35, label %lean_dec_ref.exit36, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.q) #6
  br label %lean_dec_ref.exit36

lean_dec_ref.exit36:                              ; preds = %bb.l, %bb.m, %bb.n
  %i.w = tail call ptr @initialize_Init_Omega(i8 noundef zeroext %0) #6 ; 5 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val43 = load i32, ptr %i.x, align 4
  %.mask.i49 = and i32 %.val43, -16777216
  %i.y = icmp eq i32 %.mask.i49, 16777216
  br i1 %i.y, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %lean_dec_ref.exit36
  %i.z = load i32, ptr %i.w, align 4, !tbaa !14   ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %bb.p, label %bb.q, !prof !15

bb.p:                                             ; preds = %bb.o
  %i.ab = add nsw i32 %i.z, -1
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !14
  br label %lean_dec_ref.exit34

bb.q:                                             ; preds = %bb.o
  %.not.i33 = icmp eq i32 %i.z, 0
  br i1 %.not.i33, label %lean_dec_ref.exit34, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.w) #6
  br label %lean_dec_ref.exit34

lean_dec_ref.exit34:                              ; preds = %bb.p, %bb.q, %bb.r
  %i.ac = tail call ptr @initialize_Init_While(i8 noundef zeroext %0) #6 ; 5 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %.val42 = load i32, ptr %i.ad, align 4
  %.mask.i50 = and i32 %.val42, -16777216
  %i.ae = icmp eq i32 %.mask.i50, 16777216
  br i1 %i.ae, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %lean_dec_ref.exit34
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !14 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 1
  br i1 %i.ag, label %bb.t, label %bb.u, !prof !15

bb.t:                                             ; preds = %bb.s
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %i.ac, align 4, !tbaa !14
  br label %lean_dec_ref.exit32

bb.u:                                             ; preds = %bb.s
  %.not.i31 = icmp eq i32 %i.af, 0
  br i1 %.not.i31, label %lean_dec_ref.exit32, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ac) #6
  br label %lean_dec_ref.exit32

lean_dec_ref.exit32:                              ; preds = %bb.t, %bb.u, %bb.v
  %i.ai = tail call ptr @runtime_initialize_Lean_Meta_ArgsPacker(i8 noundef zeroext %0) ; 5 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  %.val41 = load i32, ptr %i.aj, align 4
  %.mask.i51 = and i32 %.val41, -16777216
  %i.ak = icmp eq i32 %.mask.i51, 16777216
  br i1 %i.ak, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %lean_dec_ref.exit32
  %i.al = load i32, ptr %i.ai, align 4, !tbaa !14 ; 3 uses
end_hunk_2
