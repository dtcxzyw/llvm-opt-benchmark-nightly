Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/BuiltinCommand?download=true
inline.NumInlined: 10693
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 72
loop-unroll.NumUnrolled: 72
begin_hunk_0_@l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00Lean_Elab_Command_elabOmit_spec__2:bb.a

bb.bk:                                            ; preds = %bb.bj
  %i.dd = add nsw i32 %i.db, -1
  store i32 %i.dd, ptr %.0.i.i, align 4, !tbaa !14
  br label %lean_dec_ref.exit193

bb.bl:                                            ; preds = %bb.bj
  %.not.i192 = icmp eq i32 %i.db, 0
  br i1 %.not.i192, label %lean_dec_ref.exit193, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i.i) #8
  br label %lean_dec_ref.exit193

lean_dec_ref.exit193:                             ; preds = %bb.bk, %bb.bl, %bb.bm
  %i.de = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !12 ; 5 uses
  %.val = load i32, ptr %i.bz, align 8, !tbaa !14
  %i.dg = icmp eq i32 %.val, 1
  br i1 %i.dg, label %lean_dec.exit166.thread251, label %bb.bn

bb.bn:                                            ; preds = %lean_dec_ref.exit193
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = and i64 %i.dh, 1
  %.not.i146 = icmp eq i64 %i.di, 0
  br i1 %.not.i146, label %bb.bo, label %lean_inc.exit147

bb.bo:                                            ; preds = %bb.bn
  %.val.i.i214 = load i32, ptr %i.df, align 4, !tbaa !14 ; 3 uses
  %i.dj = icmp sgt i32 %.val.i.i214, 0
  br i1 %i.dj, label %bb.bp, label %bb.bq, !prof !15

bb.bp:                                            ; preds = %bb.bo
  %i.dk = add nuw i32 %.val.i.i214, 1
  store i32 %i.dk, ptr %i.df, align 4, !tbaa !14
  br label %lean_inc.exit147

bb.bq:                                            ; preds = %bb.bo
  %.not.i.i215 = icmp eq i32 %.val.i.i214, 0
  br i1 %.not.i.i215, label %lean_inc.exit147, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.dl = atomicrmw add ptr %i.df, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit147

lean_inc.exit147:                                 ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bn
  br i1 %.not.i207, label %bb.bs, label %bb.bw

bb.bs:                                            ; preds = %lean_inc.exit147
  %i.dm = load i32, ptr %i.bz, align 8, !tbaa !14 ; 3 uses
  %i.dn = icmp sgt i32 %i.dm, 1
  br i1 %i.dn, label %bb.bt, label %bb.bu, !prof !15

bb.bt:                                            ; preds = %bb.bs
  %i.do = add nsw i32 %i.dm, -1
  store i32 %i.do, ptr %i.bz, align 8, !tbaa !14
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  %.not.i178 = icmp eq i32 %i.dm, 0
  br i1 %.not.i178, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bz) #8
  br label %bb.bw

bb.bw:                                            ; preds = %lean_inc.exit147, %bb.bt, %bb.bu, %bb.bv
  tail call void @lean_inc_heartbeat() #8
  %i.dp = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.bx, label %lean_dec.exit166.thread251.sink.split

bb.bx:                                            ; preds = %bb.bw
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

bb.by:                                            ; preds = %lean_inc.exit151
  br i1 %.not.i.i, label %bb.bz, label %lean_dec.exit164

bb.bz:                                            ; preds = %bb.by
  %i.dr = load i32, ptr %i.e, align 4, !tbaa !14  ; 3 uses
  %i.ds = icmp sgt i32 %i.dr, 1
  br i1 %i.ds, label %bb.ca, label %bb.cb, !prof !15

bb.ca:                                            ; preds = %bb.bz
  %i.dt = add nsw i32 %i.dr, -1
  store i32 %i.dt, ptr %i.e, align 4, !tbaa !14
  br label %lean_dec.exit164

bb.cb:                                            ; preds = %bb.bz
  %.not.i180 = icmp eq i32 %i.dr, 0
  br i1 %.not.i180, label %lean_dec.exit164, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.e) #8
  br label %lean_dec.exit164

lean_dec.exit164:                                 ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.by
  %i.du = tail call ptr @l_Lean_Syntax_getArg(ptr noundef %i.as, ptr noundef nonnull inttoptr (i64 1 to ptr)) #8 ; 5 uses
  br i1 %.not.i150, label %bb.cd, label %lean_dec.exit162

bb.cd:                                            ; preds = %lean_dec.exit164
  %i.dv = load i32, ptr %i.as, align 4, !tbaa !14 ; 3 uses
  %i.dw = icmp sgt i32 %i.dv, 1
  br i1 %i.dw, label %bb.ce, label %bb.cf, !prof !15

bb.ce:                                            ; preds = %bb.cd
  %i.dx = add nsw i32 %i.dv, -1
  store i32 %i.dx, ptr %i.as, align 4, !tbaa !14
  br label %lean_dec.exit162

bb.cf:                                            ; preds = %bb.cd
  %.not.i182 = icmp eq i32 %i.dv, 0
  br i1 %.not.i182, label %lean_dec.exit162, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.as) #8
  br label %lean_dec.exit162

lean_dec.exit162:                                 ; preds = %bb.cg, %bb.cf, %bb.ce, %lean_dec.exit164
  %i.dy = tail call ptr @l_Lean_TSyntax_getId(ptr noundef %i.du) #8
  %i.dz = ptrtoint ptr %i.du to i64
  %i.ea = and i64 %i.dz, 1
  %.not.i159 = icmp eq i64 %i.ea, 0
  br i1 %.not.i159, label %bb.ch, label %lean_dec.exit160

bb.ch:                                            ; preds = %lean_dec.exit162
  %i.eb = load i32, ptr %i.du, align 4, !tbaa !14 ; 3 uses
  %i.ec = icmp sgt i32 %i.eb, 1
  br i1 %i.ec, label %bb.ci, label %bb.cj, !prof !15

bb.ci:                                            ; preds = %bb.ch
  %i.ed = add nsw i32 %i.eb, -1
  store i32 %i.ed, ptr %i.du, align 4, !tbaa !14
  br label %lean_dec.exit160

bb.cj:                                            ; preds = %bb.ch
  %.not.i184 = icmp eq i32 %i.eb, 0
  br i1 %.not.i184, label %lean_dec.exit160, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.du) #8
  br label %lean_dec.exit160

lean_dec.exit160:                                 ; preds = %bb.ck, %bb.cj, %bb.ci, %lean_dec.exit162
  tail call void @lean_inc_heartbeat() #8
  %i.ee = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 5 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.cl, label %lean_alloc_ctor.exit218

bb.cl:                                            ; preds = %lean_dec.exit160
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit218:                          ; preds = %lean_dec.exit160
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store i32 1, ptr %i.ee, align 4, !tbaa !14
  store i32 65552, ptr %i.eg, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.dy, ptr %i.eh, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit244

bb.cm:                                            ; preds = %lean_inc.exit155
  %i.ei = tail call ptr @l_Lean_TSyntax_getId(ptr noundef nonnull %i.e) #8 ; 3 uses
  %i.ej = load i32, ptr %i.e, align 4, !tbaa !14  ; 3 uses
  %i.ek = icmp sgt i32 %i.ej, 1
  br i1 %i.ek, label %bb.cn, label %bb.co, !prof !15

bb.cn:                                            ; preds = %bb.cm
  %i.el = add nsw i32 %i.ej, -1
  store i32 %i.el, ptr %i.e, align 4, !tbaa !14
  br label %lean_dec.exit158

bb.co:                                            ; preds = %bb.cm
  %.not.i186 = icmp eq i32 %i.ej, 0
  br i1 %.not.i186, label %lean_dec.exit158, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.e) #8
  br label %lean_dec.exit158

lean_dec.exit158:                                 ; preds = %bb.cp, %bb.co, %bb.cn, %.thread262
  %i.em = phi ptr [ %i.ab, %.thread262 ], [ %i.ei, %bb.cp ], [ %i.ei, %bb.cn ], [ %i.ei, %bb.co ]
  tail call void @lean_inc_heartbeat() #8
  %i.en = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 5 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.cq, label %lean_alloc_ctor.exit219

bb.cq:                                            ; preds = %lean_dec.exit158
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_alloc_ctor.exit219:                          ; preds = %lean_dec.exit158
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i32 1, ptr %i.en, align 4, !tbaa !14
  store i32 65552, ptr %i.ep, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %i.em, ptr %i.eq, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit244

lean_dec_ref_known.exit244:                       ; preds = %lean_alloc_ctor.exit213, %lean_alloc_ctor.exit218, %38, %37, %35, %lean_dec.exit.i239, %lean_alloc_ctor.exit219
  %.4137 = phi ptr [ %.0.i.i200.sink, %38 ], [ %i.en, %lean_alloc_ctor.exit219 ], [ %.0.i.i200.sink, %lean_dec.exit.i239 ], [ %.0.i.i200.sink, %35 ], [ %.0.i.i200.sink, %37 ], [ %i.cx, %lean_alloc_ctor.exit213 ], [ %i.ee, %lean_alloc_ctor.exit218 ]
  %i.er = add i64 %.0119290, 1                    ; 2 uses
  %.val.i.i220 = load i32, ptr %.0.i.i, align 4, !tbaa !14
  %i.es = icmp eq i32 %.val.i.i220, 1
  br i1 %i.es, label %lean_ensure_exclusive_array.exit.i221, label %bb.cr

bb.cr:                                            ; preds = %lean_dec_ref_known.exit244
  %i.et = tail call ptr @lean_copy_expand_array_nonlinear(ptr noundef nonnull %.0.i.i, i1 noundef zeroext false) #8
  br label %lean_ensure_exclusive_array.exit.i221

lean_ensure_exclusive_array.exit.i221:            ; preds = %bb.cr, %lean_dec_ref_known.exit244
  %.0.i.i222 = phi ptr [ %i.et, %bb.cr ], [ %.0.i.i, %lean_dec_ref_known.exit244 ] ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.i.i222, i64 24
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.0119290 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !12 ; 4 uses
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = and i64 %i.ex, 1
  %.not.i.i223 = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i223, label %bb.cs, label %lean_dec.exit

bb.cs:                                            ; preds = %lean_ensure_exclusive_array.exit.i221
  %i.ez = load i32, ptr %i.ew, align 4, !tbaa !14 ; 3 uses
  %i.fa = icmp sgt i32 %i.ez, 1
  br i1 %i.fa, label %bb.ct, label %bb.cu, !prof !15

bb.ct:                                            ; preds = %bb.cs
  %i.fb = add nsw i32 %i.ez, -1
  store i32 %i.fb, ptr %i.ew, align 4, !tbaa !14
  br label %lean_dec.exit

bb.cu:                                            ; preds = %bb.cs
  %.not.i6.i225 = icmp eq i32 %i.ez, 0
  br i1 %.not.i6.i225, label %lean_dec.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ew) #8
  br label %lean_dec.exit

lean_dec.exit166:                                 ; preds = %lean_obj_once.exit.i204, %lean_obj_once.exit.i
  %.sink354 = phi ptr [ %i.aq, %lean_obj_once.exit.i ], [ %i.bj, %lean_obj_once.exit.i204 ] ; 15 uses
  %.0.i.i200.sink = phi ptr [ %.0.i.i200, %lean_obj_once.exit.i ], [ %.0.i.i205, %lean_obj_once.exit.i204 ] ; 11 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sink354, i64 4
  store i32 1, ptr %.sink354, align 4, !tbaa !14
  store i32 16842768, ptr %i.fc, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %.sink354, i64 8
  store ptr %.0.i.i200.sink, ptr %i.fd, align 8, !tbaa !12
  %9 = ptrtoint ptr %.sink354 to i64
  %10 = and i64 %9, 8589934591
  %or.cond = icmp eq i64 %10, 1
  br i1 %or.cond, label %11, label %lean_obj_tag.exit230.thread

11:                                               ; preds = %lean_dec.exit166
  %12 = getelementptr inbounds nuw i8, ptr %.sink354, i64 8
  %13 = ptrtoint ptr %.0.i.i200.sink to i64
  %14 = and i64 %13, 1
  %.not.i144 = icmp eq i64 %14, 0
  br i1 %.not.i144, label %15, label %lean_inc.exit145

15:                                               ; preds = %11
  %.val.i.i231 = load i32, ptr %.0.i.i200.sink, align 4, !tbaa !14 ; 3 uses
  %16 = icmp sgt i32 %.val.i.i231, 0
  br i1 %16, label %17, label %19, !prof !15

17:                                               ; preds = %15
  %18 = add nuw i32 %.val.i.i231, 1
  store i32 %18, ptr %.0.i.i200.sink, align 4, !tbaa !14
  br label %lean_inc.exit145

19:                                               ; preds = %15
  %.not.i.i232 = icmp eq i32 %.val.i.i231, 0
  br i1 %.not.i.i232, label %lean_inc.exit145, label %20

20:                                               ; preds = %19
  %21 = atomicrmw add ptr %.0.i.i200.sink, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit145

lean_inc.exit145:                                 ; preds = %20, %19, %17, %11
  %.val.i234 = load i32, ptr %.sink354, align 8, !tbaa !14 ; 4 uses
  %22 = icmp eq i32 %.val.i234, 1
  br i1 %22, label %.preheader.i236, label %33

.preheader.i236:                                  ; preds = %lean_inc.exit145
  %23 = load ptr, ptr %12, align 8, !tbaa !12     ; 4 uses
  %24 = ptrtoint ptr %23 to i64
  %25 = and i64 %24, 1
  %.not.i.i238 = icmp eq i64 %25, 0
  br i1 %.not.i.i238, label %26, label %lean_dec.exit.i239

26:                                               ; preds = %.preheader.i236
  %27 = load i32, ptr %23, align 4, !tbaa !14     ; 3 uses
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %31, !prof !15

29:                                               ; preds = %26
  %30 = add nsw i32 %27, -1
  store i32 %30, ptr %23, align 4, !tbaa !14
  br label %lean_dec.exit.i239

31:                                               ; preds = %26
  %.not.i7.i243 = icmp eq i32 %27, 0
  br i1 %.not.i7.i243, label %lean_dec.exit.i239, label %32

32:                                               ; preds = %31
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %23) #8
  br label %lean_dec.exit.i239

lean_dec.exit.i239:                               ; preds = %32, %31, %29, %.preheader.i236
  tail call void @lean_free_object(ptr noundef nonnull %.sink354) #8
  br label %lean_dec_ref_known.exit244

33:                                               ; preds = %lean_inc.exit145
  %34 = icmp sgt i32 %.val.i234, 1
  br i1 %34, label %35, label %37, !prof !15

35:                                               ; preds = %33
  %36 = add nsw i32 %.val.i234, -1
  store i32 %36, ptr %.sink354, align 8, !tbaa !14
  br label %lean_dec_ref_known.exit244

37:                                               ; preds = %33
  %.not.i8.i235 = icmp eq i32 %.val.i234, 0
  br i1 %.not.i8.i235, label %lean_dec_ref_known.exit244, label %38

38:                                               ; preds = %37
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.sink354) #8
  br label %lean_dec_ref_known.exit244

lean_obj_tag.exit230.thread:                      ; preds = %lean_dec.exit166
  %39 = load i32, ptr %.0.i.i, align 4, !tbaa !14 ; 3 uses
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %bb.cw, label %bb.cx, !prof !15

bb.cw:                                            ; preds = %lean_obj_tag.exit230.thread
  %i.fe = add nsw i32 %39, -1
  store i32 %i.fe, ptr %.0.i.i, align 4, !tbaa !14
  br label %lean_dec_ref.exit191

bb.cx:                                            ; preds = %lean_obj_tag.exit230.thread
  %.not.i190 = icmp eq i32 %39, 0
  br i1 %.not.i190, label %lean_dec_ref.exit191, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i.i) #8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sink354, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !12
  br label %lean_dec_ref.exit191

lean_dec_ref.exit191:                             ; preds = %bb.cw, %bb.cx, %bb.cy
  %i.ff = phi ptr [ %.0.i.i200.sink, %bb.cw ], [ %.0.i.i200.sink, %bb.cx ], [ %.pre, %bb.cy ] ; 5 uses
  %.2140.val = load i32, ptr %.sink354, align 4, !tbaa !14
  %i.fg = icmp eq i32 %.2140.val, 1
  br i1 %i.fg, label %lean_dec.exit166.thread251, label %bb.cz

bb.cz:                                            ; preds = %lean_dec_ref.exit191
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = and i64 %i.fh, 1
  %.not.i = icmp eq i64 %i.fi, 0
  br i1 %.not.i, label %bb.da, label %lean_inc.exit

bb.da:                                            ; preds = %bb.cz
  %.val.i.i245 = load i32, ptr %i.ff, align 4, !tbaa !14 ; 3 uses
  %i.fj = icmp sgt i32 %.val.i.i245, 0
  br i1 %i.fj, label %bb.db, label %bb.dc, !prof !15

bb.db:                                            ; preds = %bb.da
  %i.fk = add nuw i32 %.val.i.i245, 1
  store i32 %i.fk, ptr %i.ff, align 4, !tbaa !14
  br label %lean_inc.exit

bb.dc:                                            ; preds = %bb.da
  %.not.i.i246 = icmp eq i32 %.val.i.i245, 0
  br i1 %.not.i.i246, label %lean_inc.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.fl = atomicrmw add ptr %i.ff, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.cz, %bb.db, %bb.dc, %bb.dd
  %i.fm = load i32, ptr %.sink354, align 4, !tbaa !14 ; 3 uses
  %i.fn = icmp sgt i32 %i.fm, 1
  br i1 %i.fn, label %bb.de, label %bb.df, !prof !15

bb.de:                                            ; preds = %lean_inc.exit
  %i.fo = add nsw i32 %i.fm, -1
  store i32 %i.fo, ptr %.sink354, align 4, !tbaa !14
  br label %bb.dh

bb.df:                                            ; preds = %lean_inc.exit
  %.not.i188 = icmp eq i32 %i.fm, 0
  br i1 %.not.i188, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.sink354) #8
  br label %bb.dh

bb.dh:                                            ; preds = %bb.de, %bb.df, %bb.dg
  tail call void @lean_inc_heartbeat() #8
  %i.fp = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #8 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.di, label %lean_dec.exit166.thread251.sink.split

bb.di:                                            ; preds = %bb.dh
  tail call void @lean_internal_panic_out_of_memory() #9
  unreachable

lean_dec.exit:                                    ; preds = %bb.cv, %bb.cu, %bb.ct, %lean_ensure_exclusive_array.exit.i221
  store ptr %.4137, ptr %i.ev, align 8, !tbaa !12
  %exitcond.not = icmp eq i64 %i.er, %0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

lean_dec.exit166.thread251.sink.split:            ; preds = %bb.dh, %bb.bw, %._crit_edge
  %.sink361 = phi ptr [ %i.a, %._crit_edge ], [ %i.dp, %bb.bw ], [ %i.fp, %bb.dh ] ; 4 uses
  %.sink358 = phi i32 [ 65552, %._crit_edge ], [ 16842768, %bb.bw ], [ 16842768, %bb.dh ]
  %.sink = phi ptr [ %.0122.lcssa, %._crit_edge ], [ %i.df, %bb.bw ], [ %i.ff, %bb.dh ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.sink361, i64 4
  store i32 1, ptr %.sink361, align 4, !tbaa !14
  store i32 %.sink358, ptr %i.fr, align 4
  %i.fs = getelementptr inbounds nuw i8, ptr %.sink361, i64 8
  store ptr %.sink, ptr %i.fs, align 8, !tbaa !12
  br label %lean_dec.exit166.thread251

lean_dec.exit166.thread251:                       ; preds = %lean_dec.exit166.thread251.sink.split, %lean_dec_ref.exit193, %lean_dec_ref.exit191
  %.9.ph = phi ptr [ %.sink354, %lean_dec_ref.exit191 ], [ %i.bz, %lean_dec_ref.exit193 ], [ %.sink361, %lean_dec.exit166.thread251.sink.split ]
  ret ptr %.9.ph
}

declare ptr @l_Lean_Elab_Term_elabTermAndSynthesize___boxed(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00Lean_Elab_Command_elabOmit_spec__2___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef readnone captures(none) %9) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val42 = load i64, ptr %i.a, align 8, !tbaa !10
  %i.b = load i32, ptr %0, align 8, !tbaa !14     ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -1
  store i32 %i.d, ptr %0, align 8, !tbaa !14
  br label %lean_dec.exit26

bb.c:                                             ; preds = %bb.a
  %.not.i27 = icmp eq i32 %i.b, 0
  br i1 %.not.i27, label %lean_dec.exit26, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #8
  br label %lean_dec.exit26

lean_dec.exit26:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %1, i64 8
  %.val = load i64, ptr %i.e, align 8, !tbaa !10
  %i.f = load i32, ptr %1, align 8, !tbaa !14     ; 3 uses
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.f, !prof !15

bb.e:                                             ; preds = %lean_dec.exit26
  %i.h = add nsw i32 %i.f, -1
  store i32 %i.h, ptr %1, align 8, !tbaa !14
  br label %lean_dec.exit24

bb.f:                                             ; preds = %lean_dec.exit26
  %.not.i28 = icmp eq i32 %i.f, 0
  br i1 %.not.i28, label %lean_dec.exit24, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #8
  br label %lean_dec.exit24

lean_dec.exit24:                                  ; preds = %bb.g, %bb.f, %bb.e
  %i.i = tail call ptr @l___private_Init_Data_Array_Basic_0__Array_mapMUnsafe_map___at___00Lean_Elab_Command_elabOmit_spec__2(i64 noundef %.val42, i64 noundef %.val, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8)
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
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #8
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
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #8
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
  br label %lean_dec.exit20

bb.q:                                             ; preds = %bb.o
  %.not.i32 = icmp eq i32 %i.t, 0
  br i1 %.not.i32, label %lean_dec.exit20, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #8
  br label %lean_dec.exit20

lean_dec.exit20:                                  ; preds = %bb.r, %bb.q, %bb.p, %lean_dec_ref.exit41
  %i.w = load i32, ptr %5, align 4, !tbaa !14     ; 3 uses
end_hunk_0
