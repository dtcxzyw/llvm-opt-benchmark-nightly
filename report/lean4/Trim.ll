Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Trim?download=true
inline.NumInlined: 1345
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@l___private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run___redArg:bb.a
bb.as:                                            ; preds = %bb.aq
  %.not.i.i186 = icmp eq i32 %.val.i.i185, 0
  br i1 %.not.i.i186, label %lean_inc.exit147, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bj = atomicrmw sub ptr %i.bd, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit147

lean_inc.exit147:                                 ; preds = %bb.at, %bb.as, %bb.ar, %bb.ap
  br i1 %.not.i181, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %lean_inc.exit147
  %i.bk = load i32, ptr %i.ao, align 8, !tbaa !12 ; 3 uses
  %i.bl = icmp sgt i32 %i.bk, 1
  br i1 %i.bl, label %bb.av, label %bb.aw, !prof !14

bb.av:                                            ; preds = %bb.au
  %i.bm = add nsw i32 %i.bk, -1
  store i32 %i.bm, ptr %i.ao, align 8, !tbaa !12
  br label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %.not.i155 = icmp eq i32 %i.bk, 0
  br i1 %.not.i155, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ao) #6
  br label %bb.ay

bb.ay:                                            ; preds = %lean_inc.exit147, %bb.av, %bb.aw, %bb.ax
  tail call void @lean_inc_heartbeat() #6
  %i.bn = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.az, label %lean_dec.exit138.sink.split.sink.split

bb.az:                                            ; preds = %bb.ay
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

bb.ba:                                            ; preds = %lean_obj_tag.exit184
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !15 ; 5 uses
  %.val171 = load i32, ptr %i.ao, align 8, !tbaa !12
  %i.br = icmp eq i32 %.val171, 1                 ; 2 uses
  br i1 %i.br, label %lean_dec.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = and i64 %i.bs, 1
  %.not.i144 = icmp eq i64 %i.bt, 0
  br i1 %.not.i144, label %bb.bc, label %lean_inc.exit145

bb.bc:                                            ; preds = %bb.bb
  %.val.i.i189 = load i32, ptr %i.bq, align 4, !tbaa !12 ; 3 uses
  %i.bu = icmp sgt i32 %.val.i.i189, 0
  br i1 %i.bu, label %bb.bd, label %bb.be, !prof !14

bb.bd:                                            ; preds = %bb.bc
  %i.bv = add nuw i32 %.val.i.i189, 1
  store i32 %i.bv, ptr %i.bq, align 4, !tbaa !12
  br label %lean_inc.exit145

bb.be:                                            ; preds = %bb.bc
  %.not.i.i190 = icmp eq i32 %.val.i.i189, 0
  br i1 %.not.i.i190, label %lean_inc.exit145, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.bw = atomicrmw sub ptr %i.bq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit145

lean_inc.exit145:                                 ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bb
  br i1 %.not.i181, label %bb.bg, label %lean_dec.exit

bb.bg:                                            ; preds = %lean_inc.exit145
  %i.bx = load i32, ptr %i.ao, align 8, !tbaa !12 ; 3 uses
  %i.by = icmp sgt i32 %i.bx, 1
  br i1 %i.by, label %bb.bh, label %bb.bi, !prof !14

bb.bh:                                            ; preds = %bb.bg
  %i.bz = add nsw i32 %i.bx, -1
  store i32 %i.bz, ptr %i.ao, align 8, !tbaa !12
  br label %lean_dec.exit

bb.bi:                                            ; preds = %bb.bg
  %.not.i157 = icmp eq i32 %i.bx, 0
  br i1 %.not.i157, label %lean_dec.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ao) #6
  br label %lean_dec.exit

lean_dec.exit:                                    ; preds = %lean_inc.exit145, %bb.bh, %bb.bi, %bb.bj, %bb.ba
  %.0125 = phi ptr [ %i.ao, %bb.ba ], [ inttoptr (i64 1 to ptr), %bb.bj ], [ inttoptr (i64 1 to ptr), %bb.bi ], [ inttoptr (i64 1 to ptr), %bb.bh ], [ inttoptr (i64 1 to ptr), %lean_inc.exit145 ]
  %i.ca = load atomic i32, ptr @l___private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run___redArg___closed__3_once seq_cst, align 4, !tbaa !18
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %bb.bk, label %bb.bl, !prof !14

bb.bk:                                            ; preds = %lean_dec.exit
  %i.cc = load ptr, ptr @l___private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run___redArg___closed__3, align 8, !tbaa !15
  br label %lean_nat_lt.exit

bb.bl:                                            ; preds = %lean_dec.exit
  %i.cd = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run___redArg___closed__3, ptr noundef nonnull @l___private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run___redArg___closed__3_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run___redArg___closed__3) #6
  br label %lean_nat_lt.exit

lean_nat_lt.exit:                                 ; preds = %bb.bl, %bb.bk
  %.0.i192 = phi ptr [ %i.cc, %bb.bk ], [ %i.cd, %bb.bl ] ; 2 uses
  %i.ce = getelementptr i8, ptr %0, i64 8
  %.val = load i64, ptr %i.ce, align 8, !tbaa !9
  %.mask = and i64 %.val, 9223372036854775807     ; 2 uses
  %.not = icmp eq i64 %.mask, 0
  br i1 %.not, label %lean_inc.exit, label %.lr.ph.i199

.lr.ph.i199:                                      ; preds = %lean_nat_lt.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bv, %.lr.ph.i199
  %.02141.i200 = phi i64 [ 0, %.lr.ph.i199 ], [ %i.dc, %bb.bv ] ; 2 uses
  %.02540.i201 = phi ptr [ %.0.i192, %.lr.ph.i199 ], [ %.027.i208, %bb.bv ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.02141.i200
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !15 ; 8 uses
  %i.ci = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.cj = and i64 %i.ci, 1
  %.not.i30.i202 = icmp eq i64 %i.cj, 0
  br i1 %.not.i30.i202, label %lean_obj_tag.exit.i213, label %lean_obj_tag.exit.thread.i203

lean_obj_tag.exit.i213:                           ; preds = %bb.bm
  %i.ck = getelementptr i8, ptr %i.ch, i64 4
  %.val.i.i214 = load i32, ptr %i.ck, align 4
  %.mask.i215 = and i32 %.val.i.i214, -16777216
  %i.cl = icmp eq i32 %.mask.i215, 50331648
  br i1 %i.cl, label %bb.bv, label %bb.bn

lean_obj_tag.exit.thread.i203:                    ; preds = %bb.bm
  %i.cm = and i64 %i.ci, 8589934590
  %i.cn = icmp eq i64 %i.cm, 6
  br i1 %i.cn, label %bb.bv, label %.thread.i204

.thread.i204:                                     ; preds = %lean_obj_tag.exit.thread.i203
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !15
  br label %lean_inc.exit29.i205

bb.bn:                                            ; preds = %lean_obj_tag.exit.i213
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !15 ; 3 uses
  %.val.i.i.i216 = load i32, ptr %i.ch, align 8, !tbaa !12 ; 3 uses
  %i.cs = icmp sgt i32 %.val.i.i.i216, 0
  br i1 %i.cs, label %bb.bo, label %bb.bp, !prof !14

bb.bo:                                            ; preds = %bb.bn
  %i.ct = add nuw i32 %.val.i.i.i216, 1
  store i32 %i.ct, ptr %i.ch, align 8, !tbaa !12
  br label %lean_inc.exit29.i205

bb.bp:                                            ; preds = %bb.bn
  %.not.i.i.i217 = icmp eq i32 %.val.i.i.i216, 0
  br i1 %.not.i.i.i217, label %lean_inc.exit29.i205, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.cu = atomicrmw sub ptr %i.ch, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit29.i205

lean_inc.exit29.i205:                             ; preds = %bb.bq, %bb.bp, %bb.bo, %.thread.i204
  %i.cv = phi ptr [ %i.cp, %.thread.i204 ], [ %i.cr, %bb.bq ], [ %i.cr, %bb.bp ], [ %i.cr, %bb.bo ] ; 5 uses
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = and i64 %i.cw, 1
  %.not.i.i206 = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i206, label %bb.br, label %lean_inc.exit.i207

bb.br:                                            ; preds = %lean_inc.exit29.i205
  %.val.i.i31.i211 = load i32, ptr %i.cv, align 4, !tbaa !12 ; 3 uses
  %i.cy = icmp sgt i32 %.val.i.i31.i211, 0
  br i1 %i.cy, label %bb.bs, label %bb.bt, !prof !14

bb.bs:                                            ; preds = %bb.br
  %i.cz = add nuw i32 %.val.i.i31.i211, 1
  store i32 %i.cz, ptr %i.cv, align 4, !tbaa !12
  br label %lean_inc.exit.i207

bb.bt:                                            ; preds = %bb.br
  %.not.i.i32.i212 = icmp eq i32 %.val.i.i31.i211, 0
  br i1 %.not.i.i32.i212, label %lean_inc.exit.i207, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.da = atomicrmw sub ptr %i.cv, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i207

lean_inc.exit.i207:                               ; preds = %bb.bu, %bb.bt, %bb.bs, %lean_inc.exit29.i205
  %i.db = tail call ptr @l_Std_DHashMap_Internal_Raw_u2080_insert___at___00__private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run_spec__0___redArg(ptr noundef %.02540.i201, ptr noundef %i.cv, ptr noundef nonnull %i.ch)
  br label %bb.bv

bb.bv:                                            ; preds = %lean_inc.exit.i207, %lean_obj_tag.exit.thread.i203, %lean_obj_tag.exit.i213
  %.027.i208 = phi ptr [ %i.db, %lean_inc.exit.i207 ], [ %.02540.i201, %lean_obj_tag.exit.i213 ], [ %.02540.i201, %lean_obj_tag.exit.thread.i203 ] ; 6 uses
  %i.dc = add nuw nsw i64 %.02141.i200, 1         ; 2 uses
  %.not.i209 = icmp eq i64 %i.dc, %.mask
  br i1 %.not.i209, label %l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run_spec__2.exit, label %bb.bm

lean_inc.exit:                                    ; preds = %lean_nat_lt.exit, %l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run_spec__2.exit, %bb.cn, %bb.co, %bb.cp
  %.1130 = phi ptr [ %.027.i208, %l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run_spec__2.exit ], [ %.027.i208, %bb.cp ], [ %.027.i208, %bb.co ], [ %.027.i208, %bb.cn ], [ %.0.i192, %lean_nat_lt.exit ]
  %.1128 = phi ptr [ %i.fd, %l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run_spec__2.exit ], [ %i.fd, %bb.cp ], [ %i.fd, %bb.co ], [ %i.fd, %bb.cn ], [ inttoptr (i64 1 to ptr), %lean_nat_lt.exit ] ; 4 uses
  %i.dd = ptrtoint ptr %.1128 to i64              ; 2 uses
  %i.de = and i64 %i.dd, 1
  %.not.i219 = icmp eq i64 %i.de, 0
  br i1 %.not.i219, label %bb.bw, label %lean_mk_empty_byte_array.exit

bb.bw:                                            ; preds = %lean_inc.exit
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_mk_empty_byte_array.exit:                    ; preds = %lean_inc.exit
  %i.df = lshr i64 %i.dd, 1                       ; 3 uses
  %i.dg = add nuw i64 %i.df, 24
  %i.dh = tail call ptr @lean_alloc_object(i64 noundef %i.dg) #6 ; 5 uses
  store i32 1, ptr %i.dh, align 4, !tbaa !12
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = and i32 %i.dj, 65535
  %i.dl = or disjoint i32 %i.dk, -134152192
  store i32 %i.dl, ptr %i.di, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 0, ptr %i.dm, align 8, !tbaa !9
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i64 %i.df, ptr %i.dn, align 8, !tbaa !9
  %i.do = tail call ptr @l___private_Init_Data_Nat_Fold_0__Nat_foldTR_loop___at___00__private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run_spec__1___redArg(ptr noundef %.1128, ptr noundef nonnull %i.dh)
  br i1 %.not.i148, label %.critedge.i, label %.thread, !prof !11

.thread:                                          ; preds = %lean_mk_empty_byte_array.exit
  %i.dp = lshr i64 %i.aa, 1
  %i.dq = add nuw i64 %i.df, %i.dp                ; 3 uses
  %i.dr = icmp sgt i64 %i.dq, -1
  br i1 %i.dr, label %bb.bx, label %bb.by, !prof !14

bb.bx:                                            ; preds = %.thread
  %i.ds = shl nuw i64 %i.dq, 1
  %i.dt = or disjoint i64 %i.ds, 1
  %i.du = inttoptr i64 %i.dt to ptr
  br label %lean_nat_add.exit

bb.by:                                            ; preds = %.thread
  %i.dv = tail call ptr @lean_big_usize_to_nat(i64 noundef range(i64 0, -1) %i.dq) #6
  br label %lean_nat_add.exit

.critedge.i:                                      ; preds = %lean_mk_empty_byte_array.exit
  %i.dw = tail call ptr @lean_nat_big_add(ptr noundef %i.z, ptr noundef %.1128) #6
  br label %lean_nat_add.exit

lean_nat_add.exit:                                ; preds = %bb.by, %bb.bx, %.critedge.i
  %.0.i = phi ptr [ %i.dw, %.critedge.i ], [ %i.du, %bb.bx ], [ %i.dv, %bb.by ]
  %i.dx = load atomic i32, ptr @l___private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run___redArg___closed__1_once seq_cst, align 4, !tbaa !18
  %i.dy = icmp eq i32 %i.dx, 1
  br i1 %i.dy, label %bb.bz, label %bb.ca, !prof !14

bb.bz:                                            ; preds = %lean_nat_add.exit
  %i.dz = load ptr, ptr @l___private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run___redArg___closed__1, align 8, !tbaa !15
  br label %lean_obj_once.exit225

bb.ca:                                            ; preds = %lean_nat_add.exit
  %i.ea = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run___redArg___closed__1, ptr noundef nonnull @l___private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run___redArg___closed__1_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run___redArg___closed__1) #6
  br label %lean_obj_once.exit225

lean_obj_once.exit225:                            ; preds = %bb.bz, %bb.ca
  %.0.i224 = phi ptr [ %i.dz, %bb.bz ], [ %i.ea, %bb.ca ]
  %i.eb = tail call ptr @lean_mk_array(ptr noundef %.0.i, ptr noundef %.0.i224) #6
  %i.ec = tail call ptr @lean_mk_array(ptr noundef %.1128, ptr noundef nonnull inttoptr (i64 1 to ptr)) #6
  tail call void @lean_inc_heartbeat() #6
  %i.ed = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #6 ; 7 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.cb, label %lean_alloc_ctor.exit226

bb.cb:                                            ; preds = %lean_obj_once.exit225
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit226:                          ; preds = %lean_obj_once.exit225
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  store i32 1, ptr %i.ed, align 4, !tbaa !12
  store i32 196640, ptr %i.ef, align 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %.1130, ptr %i.eg, align 8, !tbaa !15
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store ptr %i.z, ptr %i.eh, align 8, !tbaa !15
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  store ptr %i.bq, ptr %i.ei, align 8, !tbaa !15
  tail call void @lean_inc_heartbeat() #6
  %i.ej = tail call noalias ptr @mi_malloc_small(i64 noundef 32) #6 ; 7 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.cc, label %lean_alloc_ctor.exit227

bb.cc:                                            ; preds = %lean_alloc_ctor.exit226
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit227:                          ; preds = %lean_alloc_ctor.exit226
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  store i32 1, ptr %i.ej, align 4, !tbaa !12
  store i32 196640, ptr %i.el, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr %i.do, ptr %i.em, align 8, !tbaa !15
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store ptr %i.ec, ptr %i.en, align 8, !tbaa !15
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  store ptr %i.eb, ptr %i.eo, align 8, !tbaa !15
  %i.ep = tail call ptr @lean_apply_2(ptr noundef %1, ptr noundef nonnull %i.ed, ptr noundef nonnull %i.ej) #6 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !15 ; 6 uses
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = and i64 %i.es, 1
  %.not.i140 = icmp eq i64 %i.et, 0
  br i1 %.not.i140, label %bb.cd, label %lean_inc.exit141

bb.cd:                                            ; preds = %lean_alloc_ctor.exit227
  %.val.i.i228 = load i32, ptr %i.er, align 4, !tbaa !12 ; 3 uses
  %i.eu = icmp sgt i32 %.val.i.i228, 0
  br i1 %i.eu, label %bb.ce, label %bb.cf, !prof !14

bb.ce:                                            ; preds = %bb.cd
  %i.ev = add nuw i32 %.val.i.i228, 1
  store i32 %i.ev, ptr %i.er, align 4, !tbaa !12
  br label %lean_inc.exit141

bb.cf:                                            ; preds = %bb.cd
  %.not.i.i229 = icmp eq i32 %.val.i.i228, 0
  br i1 %.not.i.i229, label %lean_inc.exit141, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ew = atomicrmw sub ptr %i.er, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit141

lean_inc.exit141:                                 ; preds = %bb.cg, %bb.cf, %bb.ce, %lean_alloc_ctor.exit227
  %i.ex = load i32, ptr %i.ep, align 8, !tbaa !12 ; 3 uses
  %i.ey = icmp sgt i32 %i.ex, 1
  br i1 %i.ey, label %bb.ch, label %bb.ci, !prof !14

bb.ch:                                            ; preds = %lean_inc.exit141
  %i.ez = add nsw i32 %i.ex, -1
  store i32 %i.ez, ptr %i.ep, align 8, !tbaa !12
  br label %lean_dec_ref.exit160

bb.ci:                                            ; preds = %lean_inc.exit141
  %.not.i159 = icmp eq i32 %i.ex, 0
  br i1 %.not.i159, label %lean_dec_ref.exit160, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ep) #6
  br label %lean_dec_ref.exit160

lean_dec_ref.exit160:                             ; preds = %bb.ch, %bb.ci, %bb.cj
  br i1 %i.br, label %lean_dec.exit138.sink.split, label %bb.ck

bb.ck:                                            ; preds = %lean_dec_ref.exit160
  tail call void @lean_inc_heartbeat() #6
  %i.fa = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %bb.cl, label %lean_dec.exit138.sink.split.sink.split

bb.cl:                                            ; preds = %bb.ck
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run_spec__2.exit: ; preds = %bb.bv
  %i.fc = getelementptr inbounds nuw i8, ptr %.027.i208, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !15 ; 8 uses
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = and i64 %i.fe, 1
  %.not.i139 = icmp eq i64 %i.ff, 0
  br i1 %.not.i139, label %bb.cm, label %lean_inc.exit

bb.cm:                                            ; preds = %l___private_Init_Data_Array_Basic_0__Array_foldlMUnsafe_fold___at___00__private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run_spec__2.exit
  %.val.i.i232 = load i32, ptr %i.fd, align 4, !tbaa !12 ; 3 uses
  %i.fg = icmp sgt i32 %.val.i.i232, 0
  br i1 %i.fg, label %bb.cn, label %bb.co, !prof !14

bb.cn:                                            ; preds = %bb.cm
  %i.fh = add nuw i32 %.val.i.i232, 1
  store i32 %i.fh, ptr %i.fd, align 4, !tbaa !12
  br label %lean_inc.exit

bb.co:                                            ; preds = %bb.cm
  %.not.i.i233 = icmp eq i32 %.val.i.i232, 0
  br i1 %.not.i.i233, label %lean_inc.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.fi = atomicrmw sub ptr %i.fd, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_dec.exit138.sink.split.sink.split:           ; preds = %bb.ck, %bb.ay, %bb.q
  %.sink264 = phi ptr [ %i.w, %bb.q ], [ %i.bn, %bb.ay ], [ %i.fa, %bb.ck ] ; 3 uses
  %.sink261 = phi i32 [ 65552, %bb.q ], [ 65552, %bb.ay ], [ 16842768, %bb.ck ]
  %.sink.ph = phi ptr [ %i.m, %bb.q ], [ %i.bd, %bb.ay ], [ %i.er, %bb.ck ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.sink264, i64 4
  store i32 1, ptr %.sink264, align 4, !tbaa !12
  store i32 %.sink261, ptr %i.fj, align 4
  br label %lean_dec.exit138.sink.split

lean_dec.exit138.sink.split:                      ; preds = %lean_dec.exit138.sink.split.sink.split, %lean_dec_ref.exit160
  %.sink = phi ptr [ %i.er, %lean_dec_ref.exit160 ], [ %.sink.ph, %lean_dec.exit138.sink.split.sink.split ]
  %.5.ph = phi ptr [ %.0125, %lean_dec_ref.exit160 ], [ %.sink264, %lean_dec.exit138.sink.split.sink.split ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.5.ph, i64 8
  store ptr %.sink, ptr %i.fk, align 8, !tbaa !15
  br label %lean_dec.exit138

lean_dec.exit138:                                 ; preds = %lean_dec.exit138.sink.split, %lean_dec_ref.exit162, %lean_dec_ref.exit164
  %.5 = phi ptr [ %i.a, %lean_dec_ref.exit164 ], [ %i.ao, %lean_dec_ref.exit162 ], [ %.5.ph, %lean_dec.exit138.sink.split ]
  ret ptr %.5
}

; Function Attrs: nounwind uwtable
define internal nonnull ptr @_init_l___private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run___redArg___closed__3() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run___redArg___closed__2_once seq_cst, align 4, !tbaa !18
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run___redArg___closed__2, align 8, !tbaa !15
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run___redArg___closed__2, ptr noundef nonnull @l___private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run___redArg___closed__2_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run___redArg___closed__2) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  tail call void @lean_inc_heartbeat() #6
  %i.e = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %lean_alloc_ctor.exit

bb.d:                                             ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit:                             ; preds = %lean_obj_once.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 1, ptr %i.e, align 4, !tbaa !12
  store i32 131096, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.h, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.0.i, ptr %i.i, align 8, !tbaa !15
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run___redArg___closed__1() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run___redArg___closed__0_once seq_cst, align 4, !tbaa !18
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run___redArg___closed__0, align 8, !tbaa !15
  br label %lean_obj_once.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run___redArg___closed__0, ptr noundef nonnull @l___private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run___redArg___closed__0_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_M_run___redArg___closed__0) #6
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.e = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.g, label %bb.d, !prof !11

bb.d:                                             ; preds = %lean_obj_once.exit
  %i.g = shl i64 %i.e, 31
  %i.h = ashr i64 %i.g, 32                        ; 2 uses
  %i.i = icmp sgt i64 %i.h, -2147483648
  br i1 %i.i, label %bb.e, label %bb.f, !prof !14

bb.e:                                             ; preds = %bb.d
  %.neg.i = mul i64 %i.h, 8589934590
  %i.j = and i64 %.neg.i, 8589934590
  %i.k = or disjoint i64 %i.j, 1
  %i.l = inttoptr i64 %i.k to ptr
  br label %lean_int_neg.exit

bb.f:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_mapping_spec__3___redArg:bb.a
  br label %lean_inc.exit435

lean_inc.exit435:                                 ; preds = %bb.am, %bb.al, %bb.ak, %lean_dec_ref_known.exit.thread
  br i1 %.not.i416, label %bb.an, label %lean_inc.exit433

bb.an:                                            ; preds = %lean_inc.exit435
  %.val.i.i515 = load i32, ptr %i.s, align 4, !tbaa !12 ; 3 uses
  %i.co = icmp sgt i32 %.val.i.i515, 0
  br i1 %i.co, label %bb.ao, label %bb.ap, !prof !14

bb.ao:                                            ; preds = %bb.an
  %i.cp = add nuw i32 %.val.i.i515, 1
  store i32 %i.cp, ptr %i.s, align 4, !tbaa !12
  br label %lean_inc.exit433

bb.ap:                                            ; preds = %bb.an
  %.not.i.i516 = icmp eq i32 %.val.i.i515, 0
  br i1 %.not.i.i516, label %lean_inc.exit433, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cq = atomicrmw sub ptr %i.s, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit433

lean_inc.exit433:                                 ; preds = %bb.aq, %bb.ap, %bb.ao, %lean_inc.exit435
  %.val.i.i518 = load i32, ptr %.4347632, align 4, !tbaa !12 ; 3 uses
  %i.cr = icmp sgt i32 %.val.i.i518, 0
  br i1 %i.cr, label %bb.ar, label %bb.as, !prof !14

bb.ar:                                            ; preds = %lean_inc.exit433
  %i.cs = add nuw i32 %.val.i.i518, 1
  store i32 %i.cs, ptr %.4347632, align 4, !tbaa !12
  br label %lean_inc_ref.exit520

bb.as:                                            ; preds = %lean_inc.exit433
  %.not.i.i519 = icmp eq i32 %.val.i.i518, 0
  br i1 %.not.i.i519, label %lean_inc_ref.exit520, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ct = atomicrmw sub ptr %.4347632, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit520

lean_inc_ref.exit520:                             ; preds = %bb.ar, %bb.as, %bb.at
  %i.cu = tail call ptr @lean_alloc_object(i64 noundef 56) #6 ; 13 uses
  store i32 1, ptr %i.cu, align 4, !tbaa !12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = and i32 %i.cw, 65535
  %i.cy = or disjoint i32 %i.cx, -184549376
  store i32 %i.cy, ptr %i.cv, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_mapping_spec__3___redArg___lam__0___boxed, ptr %i.cz, align 8, !tbaa !15
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i16 8, ptr %i.da, align 8, !tbaa !20
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 18
  store i16 4, ptr %i.db, align 2, !tbaa !20
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store ptr %.4347632, ptr %i.dc, align 8, !tbaa !15
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store ptr %i.s, ptr %i.dd, align 8, !tbaa !15
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  store ptr %i.u, ptr %i.de, align 8, !tbaa !15
  %i.df = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  store ptr inttoptr (i64 3 to ptr), ptr %i.df, align 8, !tbaa !15
  %i.dg = and i64 %i.f, %i.g
  %or.cond.not = icmp eq i64 %i.dg, 0
  br i1 %or.cond.not, label %lean_nat_eq.exit, label %.split, !prof !17

.split:                                           ; preds = %lean_inc_ref.exit520
  %i.dh = icmp eq ptr %.0273, %1
  br i1 %i.dh, label %bb.dc, label %bb.au

lean_nat_eq.exit:                                 ; preds = %lean_inc_ref.exit520
  %i.di = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %.0273, ptr noundef %1) #6
  br i1 %i.di, label %bb.dc, label %bb.au

bb.au:                                            ; preds = %.split, %lean_nat_eq.exit
  %i.dj = load i32, ptr %i.cu, align 8, !tbaa !12 ; 3 uses
  %i.dk = icmp sgt i32 %i.dj, 1
  br i1 %i.dk, label %bb.av, label %bb.aw, !prof !14

bb.av:                                            ; preds = %bb.au
  %i.dl = add nsw i32 %i.dj, -1
  store i32 %i.dl, ptr %i.cu, align 8, !tbaa !12
  br label %lean_dec_ref.exit494

bb.aw:                                            ; preds = %bb.au
  %.not.i493 = icmp eq i32 %i.dj, 0
  br i1 %.not.i493, label %lean_dec_ref.exit494, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.cu) #6
  br label %lean_dec_ref.exit494

lean_dec_ref.exit494:                             ; preds = %bb.ax, %bb.aw, %bb.av
  %i.dm = getelementptr i8, ptr %.4347632, i64 4
  %.val.i = load i32, ptr %i.dm, align 4
  %i.dn = lshr i32 %.val.i, 24
  %trunc = trunc nuw i32 %i.dn to i8
  switch i8 %trunc, label %bb.cx [
    i8 1, label %bb.ay
    i8 2, label %bb.bs
  ]

bb.ay:                                            ; preds = %lean_dec_ref.exit494
  %i.do = getelementptr inbounds nuw i8, ptr %.4347632, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !15 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 8
  %.val507 = load i64, ptr %i.dq, align 8, !tbaa !9
  br i1 %.not.i503, label %lean_inc.exit431, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.val.i.i523.a = load i32, ptr %.0273, align 4, !tbaa !12 ; 3 uses
  %i.dr = icmp sgt i32 %.val.i.i523.a, 0
  br i1 %i.dr, label %bb.ba, label %bb.bb, !prof !14

bb.ba:                                            ; preds = %bb.az
  %i.ds = add nuw i32 %.val.i.i523.a, 1
  store i32 %i.ds, ptr %.0273, align 4, !tbaa !12
  br label %lean_inc.exit431

bb.bb:                                            ; preds = %bb.az
  %.not.i.i524.a = icmp eq i32 %.val.i.i523.a, 0
  br i1 %.not.i.i524.a, label %lean_inc.exit431, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dt = atomicrmw sub ptr %.0273, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit431

lean_inc.exit431:                                 ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.ay
  %i.du = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_mapping_spec__0(ptr noundef %.0273, ptr noundef nonnull %i.dp, i64 noundef %.val507, i64 noundef 0, ptr noundef nonnull @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_mapping_spec__3___redArg___closed__0_value, ptr nonnull poison, ptr noundef nonnull %.0350) ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !15 ; 5 uses
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = and i64 %i.dx, 1
  %.not.i428.a = icmp eq i64 %i.dy, 0
  br i1 %.not.i428.a, label %bb.bd, label %lean_inc.exit429

bb.bd:                                            ; preds = %lean_inc.exit431
  %.val.i.i526 = load i32, ptr %i.dw, align 4, !tbaa !12 ; 3 uses
  %i.dz = icmp sgt i32 %.val.i.i526, 0
  br i1 %i.dz, label %bb.be, label %bb.bf, !prof !14

bb.be:                                            ; preds = %bb.bd
  %i.ea = add nuw i32 %.val.i.i526, 1
  store i32 %i.ea, ptr %i.dw, align 4, !tbaa !12
  br label %lean_inc.exit429

bb.bf:                                            ; preds = %bb.bd
  %.not.i.i527 = icmp eq i32 %.val.i.i526, 0
  br i1 %.not.i.i527, label %lean_inc.exit429, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.eb = atomicrmw sub ptr %i.dw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit429

lean_inc.exit429:                                 ; preds = %bb.bg, %bb.bf, %bb.be, %lean_inc.exit431
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !15 ; 5 uses
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = and i64 %i.ee, 1
  %.not.i426.a = icmp eq i64 %i.ef, 0
  br i1 %.not.i426.a, label %bb.bh, label %lean_inc.exit427

bb.bh:                                            ; preds = %lean_inc.exit429
  %.val.i.i529 = load i32, ptr %i.ed, align 4, !tbaa !12 ; 3 uses
  %i.eg = icmp sgt i32 %.val.i.i529, 0
  br i1 %i.eg, label %bb.bi, label %bb.bj, !prof !14

bb.bi:                                            ; preds = %bb.bh
  %i.eh = add nuw i32 %.val.i.i529, 1
  store i32 %i.eh, ptr %i.ed, align 4, !tbaa !12
  br label %lean_inc.exit427

bb.bj:                                            ; preds = %bb.bh
  %.not.i.i530 = icmp eq i32 %.val.i.i529, 0
  br i1 %.not.i.i530, label %lean_inc.exit427, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ei = atomicrmw sub ptr %i.ed, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit427

lean_inc.exit427:                                 ; preds = %bb.bk, %bb.bj, %bb.bi, %lean_inc.exit429
  %i.ej = load i32, ptr %i.du, align 8, !tbaa !12 ; 3 uses
  %i.ek = icmp sgt i32 %i.ej, 1
  br i1 %i.ek, label %bb.bl, label %bb.bm, !prof !14

bb.bl:                                            ; preds = %lean_inc.exit427
  %i.el = add nsw i32 %i.ej, -1
  store i32 %i.el, ptr %i.du, align 8, !tbaa !12
  br label %lean_dec_ref.exit492

bb.bm:                                            ; preds = %lean_inc.exit427
  %.not.i491 = icmp eq i32 %i.ej, 0
  br i1 %.not.i491, label %lean_dec_ref.exit492, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.du) #6
  br label %lean_dec_ref.exit492

lean_dec_ref.exit492:                             ; preds = %bb.bl, %bb.bm, %bb.bn
  %i.em = tail call ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_mapping_spec__3___redArg___lam__0(ptr noundef nonnull %.4347632, ptr noundef %i.s, ptr noundef %i.u, i8 noundef zeroext %6, ptr nonnull poison, ptr noundef %i.dw, ptr noundef nonnull %4, ptr noundef %i.ed) ; 4 uses
  br i1 %.not.i416, label %bb.bo, label %lean_dec.exit390.thread

bb.bo:                                            ; preds = %lean_dec_ref.exit492
  %i.en = load i32, ptr %i.s, align 4, !tbaa !12  ; 3 uses
  %i.eo = icmp sgt i32 %i.en, 1
  br i1 %i.eo, label %bb.bp, label %bb.bq, !prof !14

bb.bp:                                            ; preds = %bb.bo
  %i.ep = add nsw i32 %i.en, -1
  store i32 %i.ep, ptr %i.s, align 4, !tbaa !12
  br label %lean_dec.exit390.thread

bb.bq:                                            ; preds = %bb.bo
  %.not.i455 = icmp eq i32 %i.en, 0
  br i1 %.not.i455, label %lean_dec.exit390.thread, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.s) #6
  br label %lean_dec.exit390.thread

bb.bs:                                            ; preds = %lean_dec_ref.exit494
  %i.eq = getelementptr inbounds nuw i8, ptr %.4347632, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !15 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.4347632, i64 40
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !15 ; 2 uses
  %i.eu = getelementptr i8, ptr %i.er, i64 8
  %.val506 = load i64, ptr %i.eu, align 8, !tbaa !9
  br i1 %.not.i.i566, label %bb.bt, label %lean_inc_n.exit

bb.bt:                                            ; preds = %bb.bs
  %.val.i.i533 = load i32, ptr %.0273, align 4, !tbaa !12 ; 3 uses
  %i.ev = icmp sgt i32 %.val.i.i533, 0
  br i1 %i.ev, label %bb.bu, label %bb.bv, !prof !14

bb.bu:                                            ; preds = %bb.bt
  %i.ew = add nuw i32 %.val.i.i533, 2
  store i32 %i.ew, ptr %.0273, align 4, !tbaa !12
  br label %lean_inc_n.exit

bb.bv:                                            ; preds = %bb.bt
  %.not.i.i534 = icmp eq i32 %.val.i.i533, 0
  br i1 %.not.i.i534, label %lean_inc_n.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ex = atomicrmw sub ptr %.0273, i32 2 monotonic, align 4 ; 0 uses
  br label %lean_inc_n.exit

lean_inc_n.exit:                                  ; preds = %bb.bs, %bb.bu, %bb.bv, %bb.bw
  %i.ey = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_mapping_spec__0(ptr noundef %.0273, ptr noundef nonnull %i.er, i64 noundef %.val506, i64 noundef 0, ptr noundef nonnull @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_mapping_spec__3___redArg___closed__0_value, ptr nonnull poison, ptr noundef nonnull %.0350) ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !15 ; 5 uses
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = and i64 %i.fb, 1
  %.not.i424.a = icmp eq i64 %i.fc, 0
  br i1 %.not.i424.a, label %bb.bx, label %lean_inc.exit425

bb.bx:                                            ; preds = %lean_inc_n.exit
  %.val.i.i535 = load i32, ptr %i.fa, align 4, !tbaa !12 ; 3 uses
  %i.fd = icmp sgt i32 %.val.i.i535, 0
  br i1 %i.fd, label %bb.by, label %bb.bz, !prof !14

bb.by:                                            ; preds = %bb.bx
  %i.fe = add nuw i32 %.val.i.i535, 1
  store i32 %i.fe, ptr %i.fa, align 4, !tbaa !12
  br label %lean_inc.exit425

bb.bz:                                            ; preds = %bb.bx
  %.not.i.i536 = icmp eq i32 %.val.i.i535, 0
  br i1 %.not.i.i536, label %lean_inc.exit425, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ff = atomicrmw sub ptr %i.fa, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit425

lean_inc.exit425:                                 ; preds = %bb.ca, %bb.bz, %bb.by, %lean_inc_n.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !15 ; 5 uses
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = and i64 %i.fi, 1
  %.not.i422 = icmp eq i64 %i.fj, 0
  br i1 %.not.i422, label %bb.cb, label %lean_inc.exit423

bb.cb:                                            ; preds = %lean_inc.exit425
  %.val.i.i538 = load i32, ptr %i.fh, align 4, !tbaa !12 ; 3 uses
  %i.fk = icmp sgt i32 %.val.i.i538, 0
  br i1 %i.fk, label %bb.cc, label %bb.cd, !prof !14

bb.cc:                                            ; preds = %bb.cb
  %i.fl = add nuw i32 %.val.i.i538, 1
  store i32 %i.fl, ptr %i.fh, align 4, !tbaa !12
  br label %lean_inc.exit423

bb.cd:                                            ; preds = %bb.cb
  %.not.i.i539 = icmp eq i32 %.val.i.i538, 0
  br i1 %.not.i.i539, label %lean_inc.exit423, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.fm = atomicrmw sub ptr %i.fh, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit423

lean_inc.exit423:                                 ; preds = %bb.ce, %bb.cd, %bb.cc, %lean_inc.exit425
  %i.fn = load i32, ptr %i.ey, align 8, !tbaa !12 ; 3 uses
  %i.fo = icmp sgt i32 %i.fn, 1
  br i1 %i.fo, label %bb.cf, label %bb.cg, !prof !14

bb.cf:                                            ; preds = %lean_inc.exit423
  %i.fp = add nsw i32 %i.fn, -1
  store i32 %i.fp, ptr %i.ey, align 8, !tbaa !12
  br label %lean_dec_ref.exit490

bb.cg:                                            ; preds = %lean_inc.exit423
  %.not.i489 = icmp eq i32 %i.fn, 0
  br i1 %.not.i489, label %lean_dec_ref.exit490, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ey) #6
  br label %lean_dec_ref.exit490

lean_dec_ref.exit490:                             ; preds = %bb.cf, %bb.cg, %bb.ch
  %i.fq = getelementptr i8, ptr %i.et, i64 8
  %.val = load i64, ptr %i.fq, align 8, !tbaa !9
  %i.fr = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_forIn_x27Unsafe_loop___at___00__private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_mapping_spec__1(ptr noundef %.0273, ptr noundef %i.et, i64 noundef %.val, i64 noundef 0, ptr noundef %i.fa, ptr nonnull poison, ptr noundef %i.fh) ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !15 ; 5 uses
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = and i64 %i.fu, 1
  %.not.i420 = icmp eq i64 %i.fv, 0
  br i1 %.not.i420, label %bb.ci, label %lean_inc.exit421

bb.ci:                                            ; preds = %lean_dec_ref.exit490
  %.val.i.i541 = load i32, ptr %i.ft, align 4, !tbaa !12 ; 3 uses
  %i.fw = icmp sgt i32 %.val.i.i541, 0
  br i1 %i.fw, label %bb.cj, label %bb.ck, !prof !14

bb.cj:                                            ; preds = %bb.ci
  %i.fx = add nuw i32 %.val.i.i541, 1
  store i32 %i.fx, ptr %i.ft, align 4, !tbaa !12
  br label %lean_inc.exit421

bb.ck:                                            ; preds = %bb.ci
  %.not.i.i542 = icmp eq i32 %.val.i.i541, 0
  br i1 %.not.i.i542, label %lean_inc.exit421, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.fy = atomicrmw sub ptr %i.ft, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit421

lean_inc.exit421:                                 ; preds = %bb.cl, %bb.ck, %bb.cj, %lean_dec_ref.exit490
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !15 ; 5 uses
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = and i64 %i.gb, 1
  %.not.i418 = icmp eq i64 %i.gc, 0
  br i1 %.not.i418, label %bb.cm, label %lean_inc.exit419

bb.cm:                                            ; preds = %lean_inc.exit421
  %.val.i.i544 = load i32, ptr %i.ga, align 4, !tbaa !12 ; 3 uses
  %i.gd = icmp sgt i32 %.val.i.i544, 0
  br i1 %i.gd, label %bb.cn, label %bb.co, !prof !14

bb.cn:                                            ; preds = %bb.cm
  %i.ge = add nuw i32 %.val.i.i544, 1
  store i32 %i.ge, ptr %i.ga, align 4, !tbaa !12
  br label %lean_inc.exit419

bb.co:                                            ; preds = %bb.cm
  %.not.i.i545 = icmp eq i32 %.val.i.i544, 0
  br i1 %.not.i.i545, label %lean_inc.exit419, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.gf = atomicrmw sub ptr %i.ga, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit419

lean_inc.exit419:                                 ; preds = %bb.cp, %bb.co, %bb.cn, %lean_inc.exit421
  %i.gg = load i32, ptr %i.fr, align 8, !tbaa !12 ; 3 uses
  %i.gh = icmp sgt i32 %i.gg, 1
  br i1 %i.gh, label %bb.cq, label %bb.cr, !prof !14

bb.cq:                                            ; preds = %lean_inc.exit419
  %i.gi = add nsw i32 %i.gg, -1
  store i32 %i.gi, ptr %i.fr, align 8, !tbaa !12
  br label %lean_dec_ref.exit488

bb.cr:                                            ; preds = %lean_inc.exit419
  %.not.i487 = icmp eq i32 %i.gg, 0
  br i1 %.not.i487, label %lean_dec_ref.exit488, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.fr) #6
  br label %lean_dec_ref.exit488

lean_dec_ref.exit488:                             ; preds = %bb.cq, %bb.cr, %bb.cs
  %i.gj = tail call ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_mapping_spec__3___redArg___lam__0(ptr noundef nonnull %.4347632, ptr noundef %i.s, ptr noundef %i.u, i8 noundef zeroext %6, ptr nonnull poison, ptr noundef %i.ft, ptr noundef nonnull %4, ptr noundef %i.ga) ; 4 uses
  br i1 %.not.i416, label %bb.ct, label %lean_dec.exit390.thread

bb.ct:                                            ; preds = %lean_dec_ref.exit488
  %i.gk = load i32, ptr %i.s, align 4, !tbaa !12  ; 3 uses
  %i.gl = icmp sgt i32 %i.gk, 1
  br i1 %i.gl, label %bb.cu, label %bb.cv, !prof !14

bb.cu:                                            ; preds = %bb.ct
  %i.gm = add nsw i32 %i.gk, -1
  store i32 %i.gm, ptr %i.s, align 4, !tbaa !12
  br label %lean_dec.exit390.thread

bb.cv:                                            ; preds = %bb.ct
  %.not.i457 = icmp eq i32 %i.gk, 0
  br i1 %.not.i457, label %lean_dec.exit390.thread, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.s) #6
  br label %lean_dec.exit390.thread

bb.cx:                                            ; preds = %lean_dec_ref.exit494
  %i.gn = tail call ptr @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_mapping_spec__3___redArg___lam__0(ptr noundef nonnull %.4347632, ptr noundef %i.s, ptr noundef %i.u, i8 noundef zeroext %6, ptr nonnull poison, ptr noundef nonnull @l_WellFounded_opaqueFix_u2083___at___00__private_Lean_Meta_Tactic_BVDecide_LRAT_Trim_0__Lean_Meta_Tactic_BVDecide_LRAT_trim_mapping_spec__3___redArg___closed__0_value, ptr noundef nonnull %4, ptr noundef nonnull %.0350) ; 4 uses
  br i1 %.not.i416, label %bb.cy, label %lean_dec.exit390.thread

bb.cy:                                            ; preds = %bb.cx
  %i.go = load i32, ptr %i.s, align 4, !tbaa !12  ; 3 uses
  %i.gp = icmp sgt i32 %i.go, 1
  br i1 %i.gp, label %bb.cz, label %bb.da, !prof !14

bb.cz:                                            ; preds = %bb.cy
  %i.gq = add nsw i32 %i.go, -1
  store i32 %i.gq, ptr %i.s, align 4, !tbaa !12
  br label %lean_dec.exit390.thread

bb.da:                                            ; preds = %bb.cy
  %.not.i459 = icmp eq i32 %i.go, 0
  br i1 %.not.i459, label %lean_dec.exit390.thread, label %bb.db

bb.db:                                            ; preds = %bb.da
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.s) #6
  br label %lean_dec.exit390.thread

bb.dc:                                            ; preds = %.split, %lean_nat_eq.exit
  %i.gr = load i32, ptr %.4347632, align 4, !tbaa !12 ; 3 uses
  %i.gs = icmp sgt i32 %i.gr, 1
  br i1 %i.gs, label %bb.dd, label %bb.de, !prof !14

bb.dd:                                            ; preds = %bb.dc
  %i.gt = add nsw i32 %i.gr, -1
  store i32 %i.gt, ptr %.4347632, align 4, !tbaa !12
  br label %lean_dec_ref.exit486

bb.de:                                            ; preds = %bb.dc
  %.not.i485 = icmp eq i32 %i.gr, 0
  br i1 %.not.i485, label %lean_dec_ref.exit486, label %bb.df

bb.df:                                            ; preds = %bb.de
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.4347632) #6
  br label %lean_dec_ref.exit486

lean_dec_ref.exit486:                             ; preds = %bb.dd, %bb.de, %bb.df
  br i1 %.not.i434.a, label %bb.dg, label %lean_dec.exit382

bb.dg:                                            ; preds = %lean_dec_ref.exit486
  %i.gu = load i32, ptr %i.u, align 4, !tbaa !12  ; 3 uses
  %i.gv = icmp sgt i32 %i.gu, 1
  br i1 %i.gv, label %bb.dh, label %bb.di, !prof !14

bb.dh:                                            ; preds = %bb.dg
  %i.gw = add nsw i32 %i.gu, -1
  store i32 %i.gw, ptr %i.u, align 4, !tbaa !12
  br label %lean_dec.exit382

bb.di:                                            ; preds = %bb.dg
  %.not.i461 = icmp eq i32 %i.gu, 0
  br i1 %.not.i461, label %lean_dec.exit382, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.u) #6
  br label %lean_dec.exit382

lean_dec.exit382:                                 ; preds = %bb.dj, %bb.di, %bb.dh, %lean_dec_ref.exit486
  br i1 %.not.i416, label %bb.dk, label %bb.iy

bb.dk:                                            ; preds = %lean_dec.exit382
  %i.gx = load i32, ptr %i.s, align 4, !tbaa !12  ; 3 uses
  %i.gy = icmp sgt i32 %i.gx, 1
  br i1 %i.gy, label %bb.dl, label %bb.dm, !prof !14

bb.dl:                                            ; preds = %bb.dk
  %i.gz = add nsw i32 %i.gx, -1
  store i32 %i.gz, ptr %i.s, align 4, !tbaa !12
  br label %bb.iy

bb.dm:                                            ; preds = %bb.dk
  %.not.i463 = icmp eq i32 %i.gx, 0
  br i1 %.not.i463, label %bb.iy, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.s) #6
  br label %bb.iy

lean_dec.exit396:                                 ; preds = %.thread624, %bb.ag, %bb.ah, %bb.ai, %lean_dec.exit398, %bb.ac, %bb.ad, %bb.ae
  %.0351 = phi i8 [ %i.bx, %lean_dec.exit398 ], [ %i.bx, %bb.ae ], [ %i.bx, %bb.ad ], [ %i.bx, %bb.ac ], [ %i.bl, %.thread624 ], [ %i.cf, %bb.ai ], [ %i.cf, %bb.ag ], [ %i.cf, %bb.ah ]
  %i.ha = icmp eq i8 %.0351, 1                    ; 2 uses
  %6 = zext i1 %i.ha to i8                        ; 3 uses
  br i1 %i.ha, label %bb.dr, label %bb.do

bb.do:                                            ; preds = %lean_dec.exit396
  br i1 %i.v, label %lean_dec.exit390, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  tail call void @lean_inc_heartbeat() #6
  %i.hb = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #6 ; 6 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %bb.dq, label %lean_alloc_ctor.exit547

bb.dq:                                            ; preds = %bb.dp
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit547:                          ; preds = %bb.dp
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  store i32 1, ptr %i.hb, align 4, !tbaa !12
  store i32 131096, ptr %i.hd, align 4
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store ptr %i.s, ptr %i.he, align 8, !tbaa !15
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store ptr %i.u, ptr %i.hf, align 8, !tbaa !15
  br label %lean_dec.exit390

bb.dr:                                            ; preds = %lean_dec.exit396
  %.val.i.i548 = load i32, ptr %i.aq, align 4, !tbaa !12 ; 3 uses
  %i.hg = icmp sgt i32 %.val.i.i548, 0
  br i1 %i.hg, label %bb.ds, label %bb.dt, !prof !14

bb.ds:                                            ; preds = %bb.dr
  %i.hh = add nuw i32 %.val.i.i548, 1
  store i32 %i.hh, ptr %i.aq, align 4, !tbaa !12
  br label %lean_inc_ref.exit550

bb.dt:                                            ; preds = %bb.dr
  %.not.i.i549 = icmp eq i32 %.val.i.i548, 0
  br i1 %.not.i.i549, label %lean_inc_ref.exit550, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.hi = atomicrmw sub ptr %i.aq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit550

lean_inc_ref.exit550:                             ; preds = %bb.ds, %bb.dt, %bb.du
  %.val.i.i551 = load i32, ptr %i.ao, align 4, !tbaa !12 ; 3 uses
  %i.hj = icmp sgt i32 %.val.i.i551, 0
  br i1 %i.hj, label %bb.dv, label %bb.dw, !prof !14

bb.dv:                                            ; preds = %lean_inc_ref.exit550
  %i.hk = add nuw i32 %.val.i.i551, 1
  store i32 %i.hk, ptr %i.ao, align 4, !tbaa !12
  br label %lean_inc_ref.exit553

bb.dw:                                            ; preds = %lean_inc_ref.exit550
  %.not.i.i552 = icmp eq i32 %.val.i.i551, 0
  br i1 %.not.i.i552, label %lean_inc_ref.exit553, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.hl = atomicrmw sub ptr %i.ao, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit553

lean_inc_ref.exit553:                             ; preds = %bb.dv, %bb.dw, %bb.dx
  %.val.i.i554 = load i32, ptr %i.am, align 8, !tbaa !12 ; 3 uses
  %i.hm = icmp sgt i32 %.val.i.i554, 0
  br i1 %i.hm, label %bb.dy, label %bb.dz, !prof !14

bb.dy:                                            ; preds = %lean_inc_ref.exit553
  %i.hn = add nuw i32 %.val.i.i554, 1
  store i32 %i.hn, ptr %i.am, align 8, !tbaa !12
  br label %lean_inc_ref.exit556

bb.dz:                                            ; preds = %lean_inc_ref.exit553
  %.not.i.i555 = icmp eq i32 %.val.i.i554, 0
  br i1 %.not.i.i555, label %lean_inc_ref.exit556, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ho = atomicrmw sub ptr %i.am, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit556

lean_inc_ref.exit556:                             ; preds = %bb.dy, %bb.dz, %bb.ea
  %i.hp = ptrtoint ptr %.0320 to i64
  %i.hq = and i64 %i.hp, 1
  %.not.i557 = icmp eq i64 %i.hq, 0
  br i1 %.not.i557, label %bb.eb, label %lean_del_object.exit

bb.eb:                                            ; preds = %lean_inc_ref.exit556
  tail call void @lean_free_object(ptr noundef nonnull %.0320) #6
  br label %lean_del_object.exit

lean_del_object.exit:                             ; preds = %lean_inc_ref.exit556, %bb.eb
  %.0277.val = load i32, ptr %.0277, align 8, !tbaa !12 ; 4 uses
  %i.hr = icmp eq i32 %.0277.val, 1               ; 2 uses
  br i1 %i.hr, label %bb.ec, label %bb.ep

bb.ec:                                            ; preds = %lean_del_object.exit
  %i.hs = load ptr, ptr %i.ap, align 8, !tbaa !15 ; 4 uses
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = and i64 %i.ht, 1
  %.not.i377.a = icmp eq i64 %i.hu, 0
  br i1 %.not.i377.a, label %bb.ed, label %lean_dec.exit378

bb.ed:                                            ; preds = %bb.ec
  %i.hv = load i32, ptr %i.hs, align 4, !tbaa !12 ; 3 uses
  %i.hw = icmp sgt i32 %i.hv, 1
  br i1 %i.hw, label %bb.ee, label %bb.ef, !prof !14

bb.ee:                                            ; preds = %bb.ed
  %i.hx = add nsw i32 %i.hv, -1
  store i32 %i.hx, ptr %i.hs, align 4, !tbaa !12
  br label %lean_dec.exit378

bb.ef:                                            ; preds = %bb.ed
  %.not.i465 = icmp eq i32 %i.hv, 0
  br i1 %.not.i465, label %lean_dec.exit378, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hs) #6
  br label %lean_dec.exit378

lean_dec.exit378:                                 ; preds = %bb.eg, %bb.ef, %bb.ee, %bb.ec
  %i.hy = load ptr, ptr %i.an, align 8, !tbaa !15 ; 4 uses
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = and i64 %i.hz, 1
  %.not.i375 = icmp eq i64 %i.ia, 0
  br i1 %.not.i375, label %bb.eh, label %lean_dec.exit376

bb.eh:                                            ; preds = %lean_dec.exit378
  %i.ib = load i32, ptr %i.hy, align 4, !tbaa !12 ; 3 uses
  %i.ic = icmp sgt i32 %i.ib, 1
  br i1 %i.ic, label %bb.ei, label %bb.ej, !prof !14

bb.ei:                                            ; preds = %bb.eh
  %i.id = add nsw i32 %i.ib, -1
  store i32 %i.id, ptr %i.hy, align 4, !tbaa !12
  br label %lean_dec.exit376

bb.ej:                                            ; preds = %bb.eh
  %.not.i467 = icmp eq i32 %i.ib, 0
  br i1 %.not.i467, label %lean_dec.exit376, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.hy) #6
  br label %lean_dec.exit376

lean_dec.exit376:                                 ; preds = %bb.ek, %bb.ej, %bb.ei, %lean_dec.exit378
  %i.ie = load ptr, ptr %i.al, align 8, !tbaa !15 ; 4 uses
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = and i64 %i.if, 1
  %.not.i373 = icmp eq i64 %i.ig, 0
  br i1 %.not.i373, label %bb.el, label %lean_dec.exit374

bb.el:                                            ; preds = %lean_dec.exit376
  %i.ih = load i32, ptr %i.ie, align 4, !tbaa !12 ; 3 uses
  %i.ii = icmp sgt i32 %i.ih, 1
  br i1 %i.ii, label %bb.em, label %bb.en, !prof !14

bb.em:                                            ; preds = %bb.el
  %i.ij = add nsw i32 %i.ih, -1
  store i32 %i.ij, ptr %i.ie, align 4, !tbaa !12
  br label %lean_dec.exit374

bb.en:                                            ; preds = %bb.el
  %.not.i469 = icmp eq i32 %i.ih, 0
  br i1 %.not.i469, label %lean_dec.exit374, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ie) #6
  br label %lean_dec.exit374

bb.ep:                                            ; preds = %lean_del_object.exit
  %i.ik = icmp sgt i32 %.0277.val, 1
  br i1 %i.ik, label %bb.eq, label %bb.er, !prof !14

bb.eq:                                            ; preds = %bb.ep
  %i.il = add nsw i32 %.0277.val, -1
  store i32 %i.il, ptr %.0277, align 8, !tbaa !12
  br label %lean_dec.exit374

bb.er:                                            ; preds = %bb.ep
  %.not.i471 = icmp eq i32 %.0277.val, 0
  br i1 %.not.i471, label %lean_dec.exit374, label %bb.es

bb.es:                                            ; preds = %bb.er
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0277) #6
  br label %lean_dec.exit374

lean_dec.exit374:                                 ; preds = %bb.eq, %bb.er, %bb.es, %lean_dec.exit376, %bb.em, %bb.en, %bb.eo
  %.0353 = phi ptr [ %.0277, %lean_dec.exit376 ], [ %.0277, %bb.eo ], [ %.0277, %bb.en ], [ %.0277, %bb.em ], [ inttoptr (i64 1 to ptr), %bb.es ], [ inttoptr (i64 1 to ptr), %bb.er ], [ inttoptr (i64 1 to ptr), %bb.eq ] ; 2 uses
  br i1 %.not.i503, label %bb.et, label %.critedge.i, !prof !14

bb.et:                                            ; preds = %lean_dec.exit374
  %i.im = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.in = and i64 %i.im, 1
  %.not738 = icmp eq i64 %i.in, 0
  br i1 %.not738, label %.critedge.i, label %bb.eu, !prof !11

bb.eu:                                            ; preds = %bb.et
  %i.io = lshr i64 %i.g, 1                        ; 2 uses
  %i.ip = lshr i64 %i.im, 1                       ; 2 uses
  %i.iq = icmp samesign ult i64 %i.io, %i.ip
end_hunk_1
