Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/rel_context?download=true
inline.NumInlined: 1195
inline.NumDeleted: 748
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN7datalog11rel_context20reset_negated_tablesEv:bb.a
._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE5beginEv.exit
  %i.aj = phi ptr [ %i.g, %_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE5beginEv.exit ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.373 = phi i1 [ %.070404, %_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE5beginEv.exit ], [ %.373.ph, %._crit_edge.loopexit ] ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.ak, label %.critedge272, label %_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE4sizeEv.exit, !llvm.loop !509

bb.f:                                             ; preds = %.critedge272
  %i.al = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 64) ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.al, i8 0, i64 64, i1 false), !tbaa !299
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !518 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.critedge273.thread, label %_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE4sizeEv.exit87

.critedge273.thread:                              ; preds = %bb.f
  %i.ao = getelementptr i8, ptr %i.al, i64 64
  br label %.lr.ph.i.i.i90.preheader

_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE4sizeEv.exit87: ; preds = %bb.f, %.loopexit289.thread
  %indvars.iv502 = phi i64 [ %indvars.iv.next503, %.loopexit289.thread ], [ 1, %bb.f ] ; 3 uses
  %i.ap = phi ptr [ %i.il, %.loopexit289.thread ], [ %i.am, %bb.f ]
  %.sroa.0224.0451 = phi ptr [ %.sroa.0224.2.lcssa589, %.loopexit289.thread ], [ %i.al, %bb.f ] ; 2 uses
  %.sroa.18.0450 = phi i32 [ %.sroa.18.2.lcssa588, %.loopexit289.thread ], [ 8, %bb.f ] ; 2 uses
  %.sroa.33.0449 = phi i32 [ %.sroa.33.2.lcssa587, %.loopexit289.thread ], [ 0, %bb.f ]
  %.sroa.44.0448 = phi i32 [ %.sroa.44.2.lcssa586, %.loopexit289.thread ], [ 0, %bb.f ]
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !315
  %i.as = zext i32 %i.ar to i64
  %i.at = icmp samesign ult i64 %indvars.iv502, %i.as
  br i1 %i.at, label %.preheader291, label %.critedge273

.critedge273:                                     ; preds = %_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE4sizeEv.exit87, %.loopexit289.thread
  %.sroa.18.0.lcssa = phi i32 [ %.sroa.18.2.lcssa588, %.loopexit289.thread ], [ %.sroa.18.0450, %_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE4sizeEv.exit87 ] ; 2 uses
  %.sroa.0224.0.lcssa = phi ptr [ %.sroa.0224.2.lcssa589, %.loopexit289.thread ], [ %.sroa.0224.0451, %_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE4sizeEv.exit87 ] ; 4 uses
  %i.au = zext i32 %.sroa.18.0.lcssa to i64       ; 2 uses
  %.idx.i88 = shl nuw nsw i64 %i.au, 3
  %i.av = getelementptr i8, ptr %.sroa.0224.0.lcssa, i64 %.idx.i88 ; 2 uses
  %.not1.i.i.i89 = icmp eq i32 %.sroa.18.0.lcssa, 0
  br i1 %.not1.i.i.i89, label %.loopexit, label %.lr.ph.i.i.i90.preheader

.lr.ph.i.i.i90.preheader:                         ; preds = %.critedge273.thread, %.critedge273
  %i.aw = phi ptr [ %i.ao, %.critedge273.thread ], [ %i.av, %.critedge273 ] ; 4 uses
  %i.ax = phi i64 [ 8, %.critedge273.thread ], [ %i.au, %.critedge273 ] ; 2 uses
  %.sroa.0224.0.lcssa579 = phi ptr [ %i.al, %.critedge273.thread ], [ %.sroa.0224.0.lcssa, %.critedge273 ] ; 3 uses
  br label %.lr.ph.i.i.i90

.lr.ph.i.i.i90:                                   ; preds = %.lr.ph.i.i.i90.preheader, %bb.g
  %.sroa.0.0.i91 = phi ptr [ %i.ba, %bb.g ], [ %.sroa.0224.0.lcssa579, %.lr.ph.i.i.i90.preheader ] ; 3 uses
  %i.ay = load ptr, ptr %.sroa.0.0.i91, align 8, !tbaa !299
  %i.az = icmp ult ptr %i.ay, inttoptr (i64 2 to ptr)
  br i1 %i.az, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph.i.i.i90
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i91, i64 8 ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.ba, %i.aw
  br i1 %.not.i.i.i95, label %.loopexit, label %.lr.ph.i.i.i90, !llvm.loop !2

.loopexit289:                                     ; preds = %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit135
  br i1 %.6, label %.preheader291, label %.loopexit289.thread, !llvm.loop !510

.preheader291:                                    ; preds = %_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE4sizeEv.exit87, %.loopexit289
  %.sroa.0224.1447 = phi ptr [ %.sroa.0224.9, %.loopexit289 ], [ %.sroa.0224.0451, %_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE4sizeEv.exit87 ] ; 2 uses
  %.sroa.18.1446 = phi i32 [ %.sroa.18.7, %.loopexit289 ], [ %.sroa.18.0450, %_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE4sizeEv.exit87 ] ; 2 uses
  %.sroa.33.1445 = phi i32 [ %.sroa.33.7, %.loopexit289 ], [ %.sroa.33.0449, %_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE4sizeEv.exit87 ] ; 2 uses
  %.sroa.44.1444 = phi i32 [ %.sroa.44.7, %.loopexit289 ], [ %.sroa.44.0448, %_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE4sizeEv.exit87 ] ; 2 uses
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !518
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv502
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !520 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !300 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !295 ; 2 uses
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %.idx.i97 = shl nuw nsw i64 %i.bh, 3
  %i.bi = getelementptr i8, ptr %i.be, i64 %.idx.i97 ; 4 uses
  %.not1.i.i.i98 = icmp eq i32 %i.bg, 0
  br i1 %.not1.i.i.i98, label %.loopexit290, label %.lr.ph.i.i.i99

.lr.ph.i.i.i99:                                   ; preds = %.preheader291, %bb.h
  %.sroa.0.0.i100 = phi ptr [ %i.bl, %bb.h ], [ %i.be, %.preheader291 ] ; 3 uses
  %i.bj = load ptr, ptr %.sroa.0.0.i100, align 8, !tbaa !299
  %i.bk = icmp ult ptr %i.bj, inttoptr (i64 2 to ptr)
  br i1 %i.bk, label %bb.h, label %.loopexit290

bb.h:                                             ; preds = %.lr.ph.i.i.i99
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i100, i64 8 ; 2 uses
  %.not.i.i.i104 = icmp eq ptr %i.bl, %i.bi
  br i1 %.not.i.i.i104, label %.loopexit290, label %.lr.ph.i.i.i99, !llvm.loop !2

.loopexit290:                                     ; preds = %.lr.ph.i.i.i99, %bb.h, %.preheader291
  %.sroa.0.1.i101 = phi ptr [ %i.be, %.preheader291 ], [ %i.bi, %bb.h ], [ %.sroa.0.0.i100, %.lr.ph.i.i.i99 ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bh ; 2 uses
  %.not270430 = icmp eq ptr %.sroa.0.1.i101, %i.bm
  br i1 %.not270430, label %.loopexit289.thread, label %.lr.ph438

.lr.ph438:                                        ; preds = %.loopexit290, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit135
  %.149436 = phi i1 [ %.6, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit135 ], [ false, %.loopexit290 ] ; 3 uses
  %.sroa.0220.0435 = phi ptr [ %.sroa.0220.2, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit135 ], [ %.sroa.0.1.i101, %.loopexit290 ] ; 2 uses
  %.sroa.0224.2434 = phi ptr [ %.sroa.0224.9, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit135 ], [ %.sroa.0224.1447, %.loopexit290 ] ; 7 uses
  %.sroa.18.2433 = phi i32 [ %.sroa.18.7, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit135 ], [ %.sroa.18.1446, %.loopexit290 ] ; 6 uses
  %.sroa.33.2432 = phi i32 [ %.sroa.33.7, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit135 ], [ %.sroa.33.1445, %.loopexit290 ] ; 3 uses
  %.sroa.44.2431 = phi i32 [ %.sroa.44.7, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit135 ], [ %.sroa.44.1444, %.loopexit290 ] ; 3 uses
  %i.bn = load ptr, ptr %.sroa.0220.0435, align 8, !tbaa !326 ; 16 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !377 ; 3 uses
  %i.bq = add i32 %.sroa.18.2433, -1
  %i.br = and i32 %i.bp, %i.bq                    ; 3 uses
  %i.bs = zext i32 %i.br to i64
  %.idx.i.i = shl nuw nsw i64 %i.bs, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0224.2434, i64 %.idx.i.i ; 3 uses
  %i.bu = zext i32 %.sroa.18.2433 to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0224.2434, i64 %i.bu
  %.not34.i.i = icmp eq i32 %i.br, %.sroa.18.2433
  br i1 %.not34.i.i, label %.preheader.i.i, label %.lr.ph.i.i108

.preheader.i.i:                                   ; preds = %bb.k, %.lr.ph438
  %.not2736.i.i = icmp eq i32 %i.br, 0
  br i1 %.not2736.i.i, label %.loopexit286, label %.lr.ph38.i.i

.lr.ph.i.i108:                                    ; preds = %.lr.ph438, %bb.k
  %.035.i.i = phi ptr [ %i.cc, %bb.k ], [ %i.bt, %.lr.ph438 ] ; 2 uses
  %i.bw = load ptr, ptr %.035.i.i, align 8, !tbaa !299 ; 4 uses
  %.not.i = icmp ult ptr %i.bw, inttoptr (i64 2 to ptr)
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i108
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !377
  %i.bz = icmp eq i32 %i.by, %i.bp
  %i.ca = icmp eq ptr %i.bw, %i.bn
  %or.cond.i.i = and i1 %i.ca, %i.bz
  br i1 %or.cond.i.i, label %.critedge, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i108
  %i.cb = icmp eq ptr %i.bw, null
  br i1 %i.cb, label %.loopexit286, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 8 ; 2 uses
  %.not.i.i109 = icmp eq ptr %i.cc, %i.bv
  br i1 %.not.i.i109, label %.preheader.i.i, label %.lr.ph.i.i108, !llvm.loop !511

.lr.ph38.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph38.i.i.backedge
  %.137.i.i = phi ptr [ %.137.i.i.be, %.lr.ph38.i.i.backedge ], [ %.sroa.0224.2434, %.preheader.i.i ] ; 3 uses
  %i.cd = load ptr, ptr %.137.i.i, align 8, !tbaa !299 ; 4 uses
  %i.ce = icmp ult ptr %i.cd, inttoptr (i64 2 to ptr)
  br i1 %i.ce, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph38.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !377
  %i.ch = icmp eq i32 %i.cg, %i.bp
  %i.ci = icmp eq ptr %i.cd, %i.bn
  %or.cond31.i.i = and i1 %i.ci, %i.ch
  br i1 %or.cond31.i.i, label %.critedge, label %bb.n

bb.m:                                             ; preds = %.lr.ph38.i.i
  %i.cj = icmp eq ptr %i.cd, null
  %i.ck = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 8 ; 2 uses
  %.not27.i.i = icmp eq ptr %i.ck, %i.bt
  %or.cond43.i.i = select i1 %i.cj, i1 true, i1 %.not27.i.i
  br i1 %or.cond43.i.i, label %.loopexit286, label %.lr.ph38.i.i.backedge

bb.n:                                             ; preds = %bb.l
  %.old.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 8 ; 2 uses
  %.not27.old.i.i = icmp eq ptr %.old.i.i, %i.bt
  br i1 %.not27.old.i.i, label %.loopexit286, label %.lr.ph38.i.i.backedge

.lr.ph38.i.i.backedge:                            ; preds = %bb.n, %bb.m
  %.137.i.i.be = phi ptr [ %i.ck, %bb.m ], [ %.old.i.i, %bb.n ]
  br label %.lr.ph38.i.i, !llvm.loop !512

.loopexit286:                                     ; preds = %bb.j, %bb.n, %bb.m, %.preheader.i.i
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7datalog8rule_set19get_predicate_rulesEP9func_decl(ptr noundef nonnull align 8 dereferenceable(248) %i.c, ptr noundef %i.bn)
          to label %.preheader unwind label %.loopexit.split-lp278.loopexit.split-lp

.preheader:                                       ; preds = %.loopexit286, %._crit_edge417
  %indvars.iv500 = phi i64 [ %indvars.iv.next501, %._crit_edge417 ], [ 0, %.loopexit286 ] ; 3 uses
  %.250428 = phi i1 [ %.351, %._crit_edge417 ], [ %.149436, %.loopexit286 ] ; 3 uses
  %.sroa.0224.3427 = phi ptr [ %.sroa.0224.5, %._crit_edge417 ], [ %.sroa.0224.2434, %.loopexit286 ] ; 11 uses
  %.sroa.18.3426 = phi i32 [ %.sroa.18.4, %._crit_edge417 ], [ %.sroa.18.2433, %.loopexit286 ] ; 10 uses
  %.sroa.33.3425 = phi i32 [ %.sroa.33.4, %._crit_edge417 ], [ %.sroa.33.2432, %.loopexit286 ] ; 9 uses
  %.sroa.44.3424 = phi i32 [ %.sroa.44.4, %._crit_edge417 ], [ %.sroa.44.2431, %.loopexit286 ] ; 5 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !378 ; 3 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %.critedge, label %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit

_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit:   ; preds = %.preheader
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 -4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !315
  %i.cq = zext i32 %i.cp to i64
  %i.cr = icmp samesign ult i64 %indvars.iv500, %i.cq
  br i1 %i.cr, label %bb.o, label %.critedge

bb.o:                                             ; preds = %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv500
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !379 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !524 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 68
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !525 ; 3 uses
  %i.cy = icmp ult i32 %i.cv, %i.cx               ; 2 uses
  br i1 %i.cy, label %bb.p, label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertERKPS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.cz = add i32 %.sroa.33.3425, %.sroa.44.3424
  %i.da = shl i32 %i.cz, 2
  %i.db = mul i32 %.sroa.18.3426, 3
  %i.dc = icmp ugt i32 %i.da, %i.db
  br i1 %i.dc, label %bb.q, label %..noexc_crit_edge

..noexc_crit_edge:                                ; preds = %bb.p
  %.pre507 = add i32 %.sroa.18.3426, -1
  %.pre509 = zext i32 %.sroa.18.3426 to i64
  br label %.noexc

bb.q:                                             ; preds = %bb.p
  %i.dd = shl i32 %.sroa.18.3426, 1               ; 6 uses
  %i.de = zext i32 %i.dd to i64                   ; 4 uses
  %i.df = shl nuw nsw i64 %i.de, 3                ; 2 uses
  %i.dg = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.df)
          to label %.noexc180 unwind label %.loopexit.split-lp278.loopexit ; 6 uses

.noexc180:                                        ; preds = %bb.q
  %.not6.i.i.i.i.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not6.i.i.i.i.i.i, label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.noexc180
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dg, i8 0, i64 %i.df, i1 false), !tbaa !299
  br label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i

_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %.noexc180
  %i.dh = add i32 %i.dd, -1                       ; 3 uses
  %i.di = zext i32 %.sroa.18.3426 to i64
  %.idx.i.i175 = shl nuw nsw i64 %i.di, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0224.3427, i64 %.idx.i.i175
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.de
  %.not38.i.i = icmp eq i32 %.sroa.18.3426, 0
  br i1 %.not38.i.i, label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i, label %.lr.ph41.i.i

.lr.ph41.i.i:                                     ; preds = %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i, %.noexc182
  %.02839.i.i = phi ptr [ %i.dz, %.noexc182 ], [ %.sroa.0224.3427, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i ] ; 2 uses
  %i.dl = load ptr, ptr %.02839.i.i, align 8      ; 3 uses
  %i.dm = icmp ult ptr %i.dl, inttoptr (i64 2 to ptr)
  %i.dn = ptrtoint ptr %i.dl to i64
  br i1 %i.dm, label %.noexc182, label %bb.r

bb.r:                                             ; preds = %.lr.ph41.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !377
  %i.dq = and i32 %i.dp, %i.dh                    ; 3 uses
  %i.dr = zext i32 %i.dq to i64
  %.idx43.i.i = shl nuw nsw i64 %i.dr, 3
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.idx43.i.i ; 2 uses
  %.not2933.i.i = icmp eq i32 %i.dq, %i.dd
  br i1 %.not2933.i.i, label %.preheader.i.i177, label %.lr.ph.i.i176

.preheader.i.i177:                                ; preds = %bb.s, %bb.r
  %.not3035.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not3035.i.i, label %._crit_edge.i.i, label %.lr.ph37.i.i

.lr.ph.i.i176:                                    ; preds = %bb.r, %bb.s
  %.034.i.i = phi ptr [ %i.dv, %bb.s ], [ %i.ds, %bb.r ] ; 3 uses
  %i.dt = load ptr, ptr %.034.i.i, align 8, !tbaa !299
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %.noexc182.sink.split, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i176
  %i.dv = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 8 ; 2 uses
  %.not29.i.i = icmp eq ptr %i.dv, %i.dk
  br i1 %.not29.i.i, label %.preheader.i.i177, label %.lr.ph.i.i176, !llvm.loop !3

.lr.ph37.i.i:                                     ; preds = %.preheader.i.i177, %bb.t
  %.136.i.i = phi ptr [ %i.dy, %bb.t ], [ %i.dg, %.preheader.i.i177 ] ; 3 uses
  %i.dw = load ptr, ptr %.136.i.i, align 8, !tbaa !299
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %.noexc182.sink.split, label %bb.t

bb.t:                                             ; preds = %.lr.ph37.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.136.i.i, i64 8 ; 2 uses
  %.not30.i.i = icmp eq ptr %i.dy, %i.ds
  br i1 %.not30.i.i, label %._crit_edge.i.i, label %.lr.ph37.i.i, !llvm.loop !4

._crit_edge.i.i:                                  ; preds = %bb.t, %.preheader.i.i177
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.17, i32 noundef 213, ptr noundef nonnull @.str.18)
          to label %.noexc181 unwind label %.loopexit277

.noexc181:                                        ; preds = %._crit_edge.i.i
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %.noexc182 unwind label %.loopexit277

.noexc182.sink.split:                             ; preds = %.lr.ph.i.i176, %.lr.ph37.i.i
  %.136.i.i.lcssa.sink = phi ptr [ %.136.i.i, %.lr.ph37.i.i ], [ %.034.i.i, %.lr.ph.i.i176 ]
  store i64 %i.dn, ptr %.136.i.i.lcssa.sink, align 8, !tbaa !326
  br label %.noexc182

.noexc182:                                        ; preds = %.noexc182.sink.split, %.noexc181, %.lr.ph41.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.02839.i.i, i64 8 ; 2 uses
  %.not.i.i178 = icmp eq ptr %i.dz, %i.dj
  br i1 %.not.i.i178, label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i, label %.lr.ph41.i.i, !llvm.loop !5

_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i: ; preds = %.noexc182, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i
  %i.ea = icmp eq ptr %.sroa.0224.3427, null
  br i1 %i.ea, label %.noexc, label %bb.u

bb.u:                                             ; preds = %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.sroa.0224.3427)
          to label %.noexc unwind label %.loopexit.split-lp278.loopexit

.noexc:                                           ; preds = %..noexc_crit_edge, %bb.u, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i
  %.pre-phi510 = phi i64 [ %.pre509, %..noexc_crit_edge ], [ %i.de, %bb.u ], [ %i.de, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i ]
  %.pre-phi508 = phi i32 [ %.pre507, %..noexc_crit_edge ], [ %i.dh, %bb.u ], [ %i.dh, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i ]
  %.sroa.44.8 = phi i32 [ %.sroa.44.3424, %..noexc_crit_edge ], [ 0, %bb.u ], [ 0, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i ] ; 5 uses
  %.sroa.18.8 = phi i32 [ %.sroa.18.3426, %..noexc_crit_edge ], [ %i.dd, %bb.u ], [ %i.dd, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i ] ; 6 uses
  %.sroa.0224.12 = phi ptr [ %.sroa.0224.3427, %..noexc_crit_edge ], [ %i.dg, %bb.u ], [ %i.dg, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i ] ; 10 uses
  %i.eb = load i32, ptr %i.bo, align 4, !tbaa !377 ; 3 uses
  %i.ec = and i32 %i.eb, %.pre-phi508             ; 3 uses
  %i.ed = zext i32 %i.ec to i64
  %.idx.i143 = shl nuw nsw i64 %i.ed, 3
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0224.12, i64 %.idx.i143 ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0224.12, i64 %.pre-phi510
  %.not62.i = icmp eq i32 %i.ec, %.sroa.18.8
  br i1 %.not62.i, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.z, %.noexc
  %.044.lcssa.i = phi ptr [ null, %.noexc ], [ %.1.i, %bb.z ]
  %.not4765.i = icmp eq i32 %i.ec, 0
  br i1 %.not4765.i, label %._crit_edge.i, label %.lr.ph68.i

.lr.ph.i:                                         ; preds = %.noexc, %bb.z
  %.04464.i = phi ptr [ %.1.i, %bb.z ], [ null, %.noexc ] ; 3 uses
  %.04563.i = phi ptr [ %i.ep, %bb.z ], [ %i.ee, %.noexc ] ; 5 uses
  %i.eg = load ptr, ptr %.04563.i, align 8, !tbaa !299 ; 4 uses
  %i.eh = icmp ult ptr %i.eg, inttoptr (i64 2 to ptr)
  br i1 %i.eh, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !377
  %i.ek = icmp eq i32 %i.ej, %i.eb
  %i.el = icmp eq ptr %i.eg, %i.bn
  %or.cond.i = and i1 %i.el, %i.ek
  br i1 %or.cond.i, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  store ptr %i.bn, ptr %.04563.i, align 8, !tbaa !299
  br label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertERKPS1_.exit

bb.x:                                             ; preds = %.lr.ph.i
  %i.em = icmp eq ptr %i.eg, null
  br i1 %i.em, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.not49.i = icmp ne ptr %.04464.i, null         ; 2 uses
  %i.en = sext i1 %.not49.i to i32
  %spec.select = add i32 %.sroa.44.8, %i.en
  %spec.select263 = select i1 %.not49.i, ptr %.04464.i, ptr %.04563.i
  store ptr %i.bn, ptr %spec.select263, align 8, !tbaa !299
  %i.eo = add i32 %.sroa.33.3425, 1
  br label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertERKPS1_.exit

bb.z:                                             ; preds = %bb.x, %bb.v
  %.1.i = phi ptr [ %.04563.i, %bb.x ], [ %.04464.i, %bb.v ] ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.04563.i, i64 8 ; 2 uses
  %.not.i144 = icmp eq ptr %i.ep, %i.ef
  br i1 %.not.i144, label %.preheader.i, label %.lr.ph.i, !llvm.loop !6

.lr.ph68.i:                                       ; preds = %.preheader.i, %bb.ae
  %.267.i = phi ptr [ %.3.i, %bb.ae ], [ %.044.lcssa.i, %.preheader.i ] ; 3 uses
  %.14666.i = phi ptr [ %i.ez, %bb.ae ], [ %.sroa.0224.12, %.preheader.i ] ; 5 uses
  %i.eq = load ptr, ptr %.14666.i, align 8, !tbaa !299 ; 4 uses
  %i.er = icmp ult ptr %i.eq, inttoptr (i64 2 to ptr)
  br i1 %i.er, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph68.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  %i.et = load i32, ptr %i.es, align 4, !tbaa !377
  %i.eu = icmp eq i32 %i.et, %i.eb
  %i.ev = icmp eq ptr %i.eq, %i.bn
  %or.cond53.i = and i1 %i.ev, %i.eu
  br i1 %or.cond53.i, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.bn, ptr %.14666.i, align 8, !tbaa !299
  br label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertERKPS1_.exit

bb.ac:                                            ; preds = %.lr.ph68.i
  %i.ew = icmp eq ptr %i.eq, null
  br i1 %i.ew, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.not48.i = icmp ne ptr %.267.i, null           ; 2 uses
  %i.ex = sext i1 %.not48.i to i32
  %spec.select264 = add i32 %.sroa.44.8, %i.ex
  %spec.select265 = select i1 %.not48.i, ptr %.267.i, ptr %.14666.i
  store ptr %i.bn, ptr %spec.select265, align 8, !tbaa !299
  %i.ey = add i32 %.sroa.33.3425, 1
  br label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertERKPS1_.exit

bb.ae:                                            ; preds = %bb.ac, %bb.aa
  %.3.i = phi ptr [ %.14666.i, %bb.ac ], [ %.267.i, %bb.aa ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.14666.i, i64 8 ; 2 uses
  %.not47.i = icmp eq ptr %i.ez, %i.ee
  br i1 %.not47.i, label %._crit_edge.i, label %.lr.ph68.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %bb.ae, %.preheader.i
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.17, i32 noundef 390, ptr noundef nonnull @.str.18)
          to label %.noexc146 unwind label %.loopexit.split-lp278.loopexit

.noexc146:                                        ; preds = %._crit_edge.i
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertERKPS1_.exit unwind label %.loopexit.split-lp278.loopexit

.loopexit277:                                     ; preds = %._crit_edge.i.i, %.noexc181
  %lpad.loopexit279 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp278

.loopexit.split-lp278.loopexit:                   ; preds = %bb.u, %bb.q, %.noexc146, %._crit_edge.i
  %.sroa.0224.4.ph.ph = phi ptr [ %.sroa.0224.12, %.noexc146 ], [ %.sroa.0224.12, %._crit_edge.i ], [ %.sroa.0224.3427, %bb.u ], [ %.sroa.0224.3427, %bb.q ]
  %lpad.loopexit282 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp278

.loopexit.split-lp278.loopexit.split-lp:          ; preds = %.loopexit286
  %lpad.loopexit.split-lp283 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp278

_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertERKPS1_.exit: ; preds = %.noexc146, %bb.w, %bb.y, %bb.ab, %bb.ad, %bb.o
  %.sroa.44.4 = phi i32 [ %.sroa.44.3424, %bb.o ], [ %.sroa.44.8, %bb.w ], [ %spec.select264, %bb.ad ], [ %.sroa.44.8, %bb.ab ], [ %spec.select, %bb.y ], [ %.sroa.44.8, %.noexc146 ] ; 4 uses
  %.sroa.33.4 = phi i32 [ %.sroa.33.3425, %bb.o ], [ %.sroa.33.3425, %bb.w ], [ %i.ey, %bb.ad ], [ %.sroa.33.3425, %bb.ab ], [ %i.eo, %bb.y ], [ %.sroa.33.3425, %.noexc146 ] ; 8 uses
  %.sroa.18.4 = phi i32 [ %.sroa.18.3426, %bb.o ], [ %.sroa.18.8, %bb.w ], [ %.sroa.18.8, %bb.ad ], [ %.sroa.18.8, %bb.ab ], [ %.sroa.18.8, %bb.y ], [ %.sroa.18.8, %.noexc146 ] ; 9 uses
  %.sroa.0224.5 = phi ptr [ %.sroa.0224.3427, %bb.o ], [ %.sroa.0224.12, %bb.w ], [ %.sroa.0224.12, %bb.ad ], [ %.sroa.0224.12, %bb.ab ], [ %.sroa.0224.12, %bb.y ], [ %.sroa.0224.12, %.noexc146 ] ; 13 uses
  %.351 = phi i1 [ %.250428, %bb.o ], [ true, %bb.w ], [ true, %bb.ad ], [ true, %bb.ab ], [ true, %bb.y ], [ true, %.noexc146 ] ; 2 uses
  %i.fa = add i32 %i.cx, -1
  %.not76408.not = icmp ult i32 %i.fa, %i.cv
  br i1 %.not76408.not, label %.lr.ph416, label %._crit_edge417

.lr.ph416:                                        ; preds = %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertERKPS1_.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ct, i64 80
  %i.fc = zext i32 %i.cx to i64
  %i.fd = add i32 %.sroa.18.4, -1                 ; 2 uses
  %i.fe = zext i32 %.sroa.18.4 to i64             ; 3 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0224.5, i64 %i.fe
  br label %bb.af

._crit_edge417:                                   ; preds = %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertERKPS1_.exit131, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertERKPS1_.exit
  %.pre-phi.a = phi i1 [ %i.cy, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertERKPS1_.exit ], [ false, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertERKPS1_.exit131 ]
  %indvars.iv.next501 = add nuw nsw i64 %indvars.iv500, 1
  br i1 %.pre-phi.a, label %.critedge, label %.preheader, !llvm.loop !513

bb.af:                                            ; preds = %.lr.ph416, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertERKPS1_.exit131
  %indvars.iv498 = phi i64 [ 0, %.lr.ph416 ], [ %indvars.iv.next499, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertERKPS1_.exit131 ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv498
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !380
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = and i64 %i.fi, -8
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !529 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !377 ; 3 uses
  %i.fp = and i32 %i.fo, %i.fd                    ; 3 uses
  %i.fq = zext i32 %i.fp to i64
  %.idx.i.i111 = shl nuw nsw i64 %i.fq, 3
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0224.5, i64 %.idx.i.i111 ; 3 uses
  %.not34.i.i112 = icmp eq i32 %i.fp, %.sroa.18.4
  br i1 %.not34.i.i112, label %.preheader.i.i118, label %.lr.ph.i.i113

.preheader.i.i118:                                ; preds = %bb.ai, %bb.af
  %.not2736.i.i119 = icmp eq i32 %i.fp, 0
  br i1 %.not2736.i.i119, label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertERKPS1_.exit131, label %.lr.ph38.i.i120

.lr.ph.i.i113:                                    ; preds = %bb.af, %bb.ai
  %.035.i.i114 = phi ptr [ %i.fy, %bb.ai ], [ %i.fr, %bb.af ] ; 2 uses
  %i.fs = load ptr, ptr %.035.i.i114, align 8, !tbaa !299 ; 4 uses
  %.not.i115 = icmp ult ptr %i.fs, inttoptr (i64 2 to ptr)
  br i1 %.not.i115, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i113
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !377
  %i.fv = icmp eq i32 %i.fu, %i.fo
  %i.fw = icmp eq ptr %i.fs, %i.fm
  %or.cond.i.i116 = and i1 %i.fw, %i.fv
  br i1 %or.cond.i.i116, label %_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit130, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i.i113
  %i.fx = icmp eq ptr %i.fs, null
  br i1 %i.fx, label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertERKPS1_.exit131, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.fy = getelementptr inbounds nuw i8, ptr %.035.i.i114, i64 8 ; 2 uses
  %.not.i.i117 = icmp eq ptr %i.fy, %i.ff
  br i1 %.not.i.i117, label %.preheader.i.i118, label %.lr.ph.i.i113, !llvm.loop !511

.lr.ph38.i.i120:                                  ; preds = %.preheader.i.i118, %.lr.ph38.i.i120.backedge
  %.137.i.i121 = phi ptr [ %.137.i.i121.be, %.lr.ph38.i.i120.backedge ], [ %.sroa.0224.5, %.preheader.i.i118 ] ; 3 uses
  %i.fz = load ptr, ptr %.137.i.i121, align 8, !tbaa !299 ; 4 uses
  %i.ga = icmp ult ptr %i.fz, inttoptr (i64 2 to ptr)
  br i1 %i.ga, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph38.i.i120
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !377
  %i.gd = icmp eq i32 %i.gc, %i.fo
  %i.ge = icmp eq ptr %i.fz, %i.fm
  %or.cond31.i.i122 = and i1 %i.ge, %i.gd
  br i1 %or.cond31.i.i122, label %_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit130, label %bb.al

bb.ak:                                            ; preds = %.lr.ph38.i.i120
  %i.gf = icmp eq ptr %i.fz, null
  %i.gg = getelementptr inbounds nuw i8, ptr %.137.i.i121, i64 8 ; 2 uses
  %.not27.i.i128 = icmp eq ptr %i.gg, %i.fr
  %or.cond43.i.i129 = select i1 %i.gf, i1 true, i1 %.not27.i.i128
  br i1 %or.cond43.i.i129, label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertERKPS1_.exit131, label %.lr.ph38.i.i120.backedge

bb.al:                                            ; preds = %bb.aj
  %.old.i.i123 = getelementptr inbounds nuw i8, ptr %.137.i.i121, i64 8 ; 2 uses
  %.not27.old.i.i124 = icmp eq ptr %.old.i.i123, %i.fr
  br i1 %.not27.old.i.i124, label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertERKPS1_.exit131, label %.lr.ph38.i.i120.backedge

.lr.ph38.i.i120.backedge:                         ; preds = %bb.al, %bb.ak
  %.137.i.i121.be = phi ptr [ %i.gg, %bb.ak ], [ %.old.i.i123, %bb.al ]
  br label %.lr.ph38.i.i120, !llvm.loop !512

_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit130: ; preds = %bb.ag, %bb.aj
  %i.gh = add i32 %.sroa.33.4, %.sroa.44.4
  %i.gi = shl i32 %i.gh, 2
  %i.gj = mul i32 %.sroa.18.4, 3
  %i.gk = icmp ugt i32 %i.gi, %i.gj
  br i1 %i.gk, label %bb.am, label %.noexc171

bb.am:                                            ; preds = %_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit130
  %i.gl = shl i32 %.sroa.18.4, 1                  ; 6 uses
  %i.gm = zext i32 %i.gl to i64                   ; 4 uses
  %i.gn = shl nuw nsw i64 %i.gm, 3                ; 2 uses
  %i.go = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.gn)
          to label %.noexc206 unwind label %.loopexit.split-lp ; 6 uses

.noexc206:                                        ; preds = %bb.am
  %.not6.i.i.i.i.i.i184 = icmp eq i32 %i.gl, 0
  br i1 %.not6.i.i.i.i.i.i184, label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i186, label %.lr.ph.preheader.i.i.i.i.i.i185

.lr.ph.preheader.i.i.i.i.i.i185:                  ; preds = %.noexc206
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.go, i8 0, i64 %i.gn, i1 false), !tbaa !299
  br label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i186

_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i186: ; preds = %.lr.ph.preheader.i.i.i.i.i.i185, %.noexc206
  %i.gp = add i32 %i.gl, -1                       ; 3 uses
  %.idx.i.i187 = shl nuw nsw i64 %i.fe, 3
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0224.5, i64 %.idx.i.i187
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gm
  %.not38.i.i188 = icmp eq i32 %.sroa.18.4, 0
  br i1 %.not38.i.i188, label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i205, label %.lr.ph41.i.i189

.lr.ph41.i.i189:                                  ; preds = %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i186, %.noexc208
  %.02839.i.i190 = phi ptr [ %i.hg, %.noexc208 ], [ %.sroa.0224.5, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i186 ] ; 2 uses
  %i.gs = load ptr, ptr %.02839.i.i190, align 8   ; 3 uses
  %i.gt = icmp ult ptr %i.gs, inttoptr (i64 2 to ptr)
  %i.gu = ptrtoint ptr %i.gs to i64
  br i1 %i.gt, label %.noexc208, label %bb.an

bb.an:                                            ; preds = %.lr.ph41.i.i189
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !377
  %i.gx = and i32 %i.gw, %i.gp                    ; 3 uses
  %i.gy = zext i32 %i.gx to i64
  %.idx43.i.i191 = shl nuw nsw i64 %i.gy, 3
  %i.gz = getelementptr inbounds nuw i8, ptr %i.go, i64 %.idx43.i.i191 ; 2 uses
  %.not2933.i.i192 = icmp eq i32 %i.gx, %i.gl
  br i1 %.not2933.i.i192, label %.preheader.i.i196, label %.lr.ph.i.i193

.preheader.i.i196:                                ; preds = %bb.ao, %bb.an
  %.not3035.i.i197 = icmp eq i32 %i.gx, 0
  br i1 %.not3035.i.i197, label %._crit_edge.i.i201, label %.lr.ph37.i.i198

.lr.ph.i.i193:                                    ; preds = %bb.an, %bb.ao
  %.034.i.i194 = phi ptr [ %i.hc, %bb.ao ], [ %i.gz, %bb.an ] ; 3 uses
  %i.ha = load ptr, ptr %.034.i.i194, align 8, !tbaa !299
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %.noexc208.sink.split, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i193
  %i.hc = getelementptr inbounds nuw i8, ptr %.034.i.i194, i64 8 ; 2 uses
  %.not29.i.i195 = icmp eq ptr %i.hc, %i.gr
  br i1 %.not29.i.i195, label %.preheader.i.i196, label %.lr.ph.i.i193, !llvm.loop !3

.lr.ph37.i.i198:                                  ; preds = %.preheader.i.i196, %bb.ap
  %.136.i.i199 = phi ptr [ %i.hf, %bb.ap ], [ %i.go, %.preheader.i.i196 ] ; 3 uses
  %i.hd = load ptr, ptr %.136.i.i199, align 8, !tbaa !299
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %.noexc208.sink.split, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph37.i.i198
  %i.hf = getelementptr inbounds nuw i8, ptr %.136.i.i199, i64 8 ; 2 uses
  %.not30.i.i200 = icmp eq ptr %i.hf, %i.gz
  br i1 %.not30.i.i200, label %._crit_edge.i.i201, label %.lr.ph37.i.i198, !llvm.loop !4

._crit_edge.i.i201:                               ; preds = %bb.ap, %.preheader.i.i196
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.17, i32 noundef 213, ptr noundef nonnull @.str.18)
          to label %.noexc207 unwind label %.loopexit274

.noexc207:                                        ; preds = %._crit_edge.i.i201
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %.noexc208 unwind label %.loopexit274

.noexc208.sink.split:                             ; preds = %.lr.ph.i.i193, %.lr.ph37.i.i198
  %.136.i.i199.lcssa.sink = phi ptr [ %.136.i.i199, %.lr.ph37.i.i198 ], [ %.034.i.i194, %.lr.ph.i.i193 ]
  store i64 %i.gu, ptr %.136.i.i199.lcssa.sink, align 8, !tbaa !326
  br label %.noexc208

.noexc208:                                        ; preds = %.noexc208.sink.split, %.noexc207, %.lr.ph41.i.i189
  %i.hg = getelementptr inbounds nuw i8, ptr %.02839.i.i190, i64 8 ; 2 uses
  %.not.i.i202 = icmp eq ptr %i.hg, %i.gq
  br i1 %.not.i.i202, label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i205, label %.lr.ph41.i.i189, !llvm.loop !5

_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i205: ; preds = %.noexc208, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit.i186
  %i.hh = icmp eq ptr %.sroa.0224.5, null
  br i1 %i.hh, label %.noexc171, label %bb.aq

bb.aq:                                            ; preds = %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i205
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.sroa.0224.5)
          to label %.noexc171 unwind label %.loopexit.split-lp

.noexc171:                                        ; preds = %bb.aq, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i205, %_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit130
  %.pre-phi506 = phi i64 [ %i.gm, %bb.aq ], [ %i.gm, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i205 ], [ %i.fe, %_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit130 ]
  %.pre-phi505 = phi i32 [ %i.gp, %bb.aq ], [ %i.gp, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i205 ], [ %i.fd, %_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit130 ]
  %.sroa.44.12 = phi i32 [ 0, %bb.aq ], [ 0, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i205 ], [ %.sroa.44.4, %_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit130 ] ; 5 uses
  %.sroa.18.9 = phi i32 [ %i.gl, %bb.aq ], [ %i.gl, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i205 ], [ %.sroa.18.4, %_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit130 ] ; 6 uses
  %.sroa.0224.13 = phi ptr [ %i.go, %bb.aq ], [ %i.go, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.i205 ], [ %.sroa.0224.5, %_ZNK14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit130 ] ; 10 uses
  %i.hi = load i32, ptr %i.bo, align 4, !tbaa !377 ; 3 uses
  %i.hj = and i32 %i.hi, %.pre-phi505             ; 3 uses
  %i.hk = zext i32 %i.hj to i64
  %.idx.i148 = shl nuw nsw i64 %i.hk, 3
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0224.13, i64 %.idx.i148 ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0224.13, i64 %.pre-phi506
  %.not62.i149 = icmp eq i32 %i.hj, %.sroa.18.9
  br i1 %.not62.i149, label %.preheader.i156, label %.lr.ph.i150

.preheader.i156:                                  ; preds = %bb.av, %.noexc171
  %.044.lcssa.i157 = phi ptr [ null, %.noexc171 ], [ %.1.i154, %bb.av ]
  %.not4765.i158 = icmp eq i32 %i.hj, 0
  br i1 %.not4765.i158, label %._crit_edge.i165, label %.lr.ph68.i159

.lr.ph.i150:                                      ; preds = %.noexc171, %bb.av
  %.04464.i151 = phi ptr [ %.1.i154, %bb.av ], [ null, %.noexc171 ] ; 3 uses
  %.04563.i152 = phi ptr [ %i.hw, %bb.av ], [ %i.hl, %.noexc171 ] ; 5 uses
  %i.hn = load ptr, ptr %.04563.i152, align 8, !tbaa !299 ; 4 uses
  %i.ho = icmp ult ptr %i.hn, inttoptr (i64 2 to ptr)
  br i1 %i.ho, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i150
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 12
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !377
  %i.hr = icmp eq i32 %i.hq, %i.hi
  %i.hs = icmp eq ptr %i.hn, %i.bn
  %or.cond.i153 = and i1 %i.hs, %i.hr
  br i1 %or.cond.i153, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  store ptr %i.bn, ptr %.04563.i152, align 8, !tbaa !299
  br label %.critedge

bb.at:                                            ; preds = %.lr.ph.i150
  %i.ht = icmp eq ptr %i.hn, null
  br i1 %i.ht, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %.not49.i168 = icmp ne ptr %.04464.i151, null   ; 2 uses
  %i.hu = sext i1 %.not49.i168 to i32
  %spec.select266 = add i32 %.sroa.44.12, %i.hu
  %spec.select267 = select i1 %.not49.i168, ptr %.04464.i151, ptr %.04563.i152
  store ptr %i.bn, ptr %spec.select267, align 8, !tbaa !299
  %i.hv = add i32 %.sroa.33.4, 1
  br label %.critedge

bb.av:                                            ; preds = %bb.at, %bb.ar
  %.1.i154 = phi ptr [ %.04563.i152, %bb.at ], [ %.04464.i151, %bb.ar ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.04563.i152, i64 8 ; 2 uses
  %.not.i155 = icmp eq ptr %i.hw, %i.hm
  br i1 %.not.i155, label %.preheader.i156, label %.lr.ph.i150, !llvm.loop !6

.lr.ph68.i159:                                    ; preds = %.preheader.i156, %bb.ba
  %.267.i160 = phi ptr [ %.3.i163, %bb.ba ], [ %.044.lcssa.i157, %.preheader.i156 ] ; 3 uses
  %.14666.i161 = phi ptr [ %i.ig, %bb.ba ], [ %.sroa.0224.13, %.preheader.i156 ] ; 5 uses
  %i.hx = load ptr, ptr %.14666.i161, align 8, !tbaa !299 ; 4 uses
  %i.hy = icmp ult ptr %i.hx, inttoptr (i64 2 to ptr)
  br i1 %i.hy, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph68.i159
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !377
  %i.ib = icmp eq i32 %i.ia, %i.hi
  %i.ic = icmp eq ptr %i.hx, %i.bn
  %or.cond53.i162 = and i1 %i.ic, %i.ib
  br i1 %or.cond53.i162, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  store ptr %i.bn, ptr %.14666.i161, align 8, !tbaa !299
  br label %.critedge

bb.ay:                                            ; preds = %.lr.ph68.i159
  %i.id = icmp eq ptr %i.hx, null
  br i1 %i.id, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %.not48.i166 = icmp ne ptr %.267.i160, null     ; 2 uses
  %i.ie = sext i1 %.not48.i166 to i32
  %spec.select268 = add i32 %.sroa.44.12, %i.ie
  %spec.select269 = select i1 %.not48.i166, ptr %.267.i160, ptr %.14666.i161
  store ptr %i.bn, ptr %spec.select269, align 8, !tbaa !299
  %i.if = add i32 %.sroa.33.4, 1
  br label %.critedge

bb.ba:                                            ; preds = %bb.ay, %bb.aw
  %.3.i163 = phi ptr [ %.14666.i161, %bb.ay ], [ %.267.i160, %bb.aw ]
  %i.ig = getelementptr inbounds nuw i8, ptr %.14666.i161, i64 8 ; 2 uses
  %.not47.i164 = icmp eq ptr %i.ig, %i.hl
  br i1 %.not47.i164, label %._crit_edge.i165, label %.lr.ph68.i159, !llvm.loop !7

._crit_edge.i165:                                 ; preds = %bb.ba, %.preheader.i156
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.17, i32 noundef 390, ptr noundef nonnull @.str.18)
          to label %.noexc172 unwind label %.loopexit.split-lp

.noexc172:                                        ; preds = %._crit_edge.i165
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %.critedge unwind label %.loopexit.split-lp

.loopexit274:                                     ; preds = %._crit_edge.i.i201, %.noexc207
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp278

.loopexit.split-lp:                               ; preds = %._crit_edge.i165, %.noexc172, %bb.am, %bb.aq
  %.sroa.0224.7.ph = phi ptr [ %.sroa.0224.5, %bb.am ], [ %.sroa.0224.5, %bb.aq ], [ %.sroa.0224.13, %._crit_edge.i165 ], [ %.sroa.0224.13, %.noexc172 ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp278

_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertERKPS1_.exit131: ; preds = %bb.ah, %bb.ak, %bb.al, %.preheader.i.i118
  %indvars.iv.next499 = add nuw nsw i64 %indvars.iv498, 1 ; 2 uses
  %.not653 = icmp samesign ult i64 %indvars.iv.next499, %i.fc
  br i1 %.not653, label %bb.af, label %._crit_edge417, !llvm.loop !514

.critedge:                                        ; preds = %bb.i, %bb.l, %.preheader, %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit, %._crit_edge417, %.noexc172, %bb.as, %bb.az, %bb.ax, %bb.au
  %.sroa.44.7 = phi i32 [ %.sroa.44.2431, %bb.l ], [ %spec.select268, %bb.az ], [ %.sroa.44.12, %bb.as ], [ %.sroa.44.12, %.noexc172 ], [ %.sroa.44.3424, %.preheader ], [ %spec.select266, %bb.au ], [ %.sroa.44.12, %bb.ax ], [ %.sroa.44.4, %._crit_edge417 ], [ %.sroa.44.3424, %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit ], [ %.sroa.44.2431, %bb.i ] ; 3 uses
  %.sroa.33.7 = phi i32 [ %.sroa.33.2432, %bb.l ], [ %i.if, %bb.az ], [ %.sroa.33.4, %bb.as ], [ %.sroa.33.4, %.noexc172 ], [ %.sroa.33.3425, %.preheader ], [ %i.hv, %bb.au ], [ %.sroa.33.4, %bb.ax ], [ %.sroa.33.4, %._crit_edge417 ], [ %.sroa.33.3425, %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit ], [ %.sroa.33.2432, %bb.i ] ; 3 uses
  %.sroa.18.7 = phi i32 [ %.sroa.18.2433, %bb.l ], [ %.sroa.18.9, %bb.az ], [ %.sroa.18.9, %bb.as ], [ %.sroa.18.9, %.noexc172 ], [ %.sroa.18.3426, %.preheader ], [ %.sroa.18.9, %bb.au ], [ %.sroa.18.9, %bb.ax ], [ %.sroa.18.4, %._crit_edge417 ], [ %.sroa.18.3426, %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit ], [ %.sroa.18.2433, %bb.i ] ; 3 uses
  %.sroa.0224.9 = phi ptr [ %.sroa.0224.2434, %bb.l ], [ %.sroa.0224.13, %bb.az ], [ %.sroa.0224.13, %bb.as ], [ %.sroa.0224.13, %.noexc172 ], [ %.sroa.0224.3427, %.preheader ], [ %.sroa.0224.13, %bb.au ], [ %.sroa.0224.13, %bb.ax ], [ %.sroa.0224.5, %._crit_edge417 ], [ %.sroa.0224.3427, %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit ], [ %.sroa.0224.2434, %bb.i ] ; 3 uses
  %.6 = phi i1 [ %.149436, %bb.l ], [ true, %bb.az ], [ true, %bb.as ], [ true, %.noexc172 ], [ %.250428, %.preheader ], [ true, %bb.au ], [ true, %bb.ax ], [ %.351, %._crit_edge417 ], [ %.250428, %_ZNK6vectorIPN7datalog4ruleELb0EjE4sizeEv.exit ], [ %.149436, %bb.i ] ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.0220.0435, i64 8 ; 3 uses
  %.not1.i.i132 = icmp eq ptr %i.ih, %i.bi
  br i1 %.not1.i.i132, label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit135, label %.lr.ph.i.i133

.lr.ph.i.i133:                                    ; preds = %.critedge, %bb.bb
  %.sroa.0220.1 = phi ptr [ %i.ik, %bb.bb ], [ %i.ih, %.critedge ] ; 3 uses
  %i.ii = load ptr, ptr %.sroa.0220.1, align 8, !tbaa !299
  %i.ij = icmp ult ptr %i.ii, inttoptr (i64 2 to ptr)
  br i1 %i.ij, label %bb.bb, label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit135

bb.bb:                                            ; preds = %.lr.ph.i.i133
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0220.1, i64 8 ; 3 uses
  %.not.i.i134 = icmp eq ptr %i.ik, %i.bi
  br i1 %.not.i.i134, label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit135, label %.lr.ph.i.i133, !llvm.loop !2

_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit135: ; preds = %.lr.ph.i.i133, %bb.bb, %.critedge
  %.sroa.0220.2 = phi ptr [ %i.ih, %.critedge ], [ %.sroa.0220.1, %.lr.ph.i.i133 ], [ %i.ik, %bb.bb ] ; 2 uses
  %.not270 = icmp eq ptr %.sroa.0220.2, %i.bm
  br i1 %.not270, label %.loopexit289, label %.lr.ph438

.loopexit289.thread:                              ; preds = %.loopexit290, %.loopexit289
  %.sroa.0224.2.lcssa589 = phi ptr [ %.sroa.0224.9, %.loopexit289 ], [ %.sroa.0224.1447, %.loopexit290 ] ; 2 uses
  %.sroa.18.2.lcssa588 = phi i32 [ %.sroa.18.7, %.loopexit289 ], [ %.sroa.18.1446, %.loopexit290 ] ; 2 uses
  %.sroa.33.2.lcssa587 = phi i32 [ %.sroa.33.7, %.loopexit289 ], [ %.sroa.33.1445, %.loopexit290 ]
  %.sroa.44.2.lcssa586 = phi i32 [ %.sroa.44.7, %.loopexit289 ], [ %.sroa.44.1444, %.loopexit290 ]
  %indvars.iv.next503 = add nuw nsw i64 %indvars.iv502, 1
  %i.il = load ptr, ptr %i.d, align 8, !tbaa !518 ; 2 uses
  %i.im = icmp eq ptr %i.il, null
  br i1 %i.im, label %.critedge273, label %_ZNK6vectorIP13obj_hashtableI9func_declELb0EjE4sizeEv.exit87, !llvm.loop !515

.loopexit:                                        ; preds = %.lr.ph.i.i.i90, %bb.g, %.critedge273
  %i.in = phi ptr [ %i.av, %.critedge273 ], [ %i.aw, %bb.g ], [ %i.aw, %.lr.ph.i.i.i90 ] ; 2 uses
  %i.io = phi i64 [ 0, %.critedge273 ], [ %i.ax, %bb.g ], [ %i.ax, %.lr.ph.i.i.i90 ]
  %.sroa.0224.0.lcssa580 = phi ptr [ %.sroa.0224.0.lcssa, %.critedge273 ], [ %.sroa.0224.0.lcssa579, %bb.g ], [ %.sroa.0224.0.lcssa579, %.lr.ph.i.i.i90 ] ; 4 uses
  %.sroa.0.1.i92 = phi ptr [ %.sroa.0224.0.lcssa, %.critedge273 ], [ %.sroa.0.0.i91, %.lr.ph.i.i.i90 ], [ %i.aw, %bb.g ] ; 2 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0224.0.lcssa580, i64 %i.io ; 2 uses
  %.not457 = icmp eq ptr %.sroa.0.1.i92, %i.ip
  br i1 %.not457, label %._crit_edge461, label %.lr.ph460

._crit_edge461:                                   ; preds = %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit141, %.loopexit
  %i.iq = icmp eq ptr %.sroa.0224.0.lcssa580, null
  br i1 %i.iq, label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge461
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.sroa.0224.0.lcssa580)
          to label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EED2Ev.exit unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ir = landingpad { ptr, i32 }
          catch ptr null
  %i.is = extractvalue { ptr, i32 } %i.ir, 0
  tail call void @__clang_call_terminate(ptr %i.is) #25
  unreachable

.lr.ph460:                                        ; preds = %.loopexit, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit141
  %.sroa.0211.0458 = phi ptr [ %.sroa.0211.2, %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit141 ], [ %.sroa.0.1.i92, %.loopexit ] ; 2 uses
  %i.it = load ptr, ptr %.sroa.0211.0458, align 8, !tbaa !326
  %i.iu = load ptr, ptr %0, align 8, !tbaa !227
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 208
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = invoke noundef nonnull align 8 dereferenceable(28) ptr %i.iw(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %i.it)
          to label %bb.be unwind label %bb.bh     ; 4 uses

bb.be:                                            ; preds = %.lr.ph460
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !227
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = invoke noundef zeroext i1 %i.ja(ptr noundef nonnull align 8 dereferenceable(28) %i.ix)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %bb.be
  br i1 %i.jb, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jc = load ptr, ptr %i.ix, align 8, !tbaa !227
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 64
  %i.je = load ptr, ptr %i.jd, align 8
  invoke void %i.je(ptr noundef nonnull align 8 dereferenceable(28) %i.ix)
          to label %bb.bi unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be, %.lr.ph460
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp278

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0211.0458, i64 8 ; 3 uses
  %.not1.i.i138 = icmp eq ptr %i.jg, %i.in
  br i1 %.not1.i.i138, label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit141, label %.lr.ph.i.i139

.lr.ph.i.i139:                                    ; preds = %bb.bi, %bb.bj
  %.sroa.0211.1 = phi ptr [ %i.jj, %bb.bj ], [ %i.jg, %bb.bi ] ; 3 uses
  %i.jh = load ptr, ptr %.sroa.0211.1, align 8, !tbaa !299
  %i.ji = icmp ult ptr %i.jh, inttoptr (i64 2 to ptr)
  br i1 %i.ji, label %bb.bj, label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit141

bb.bj:                                            ; preds = %.lr.ph.i.i139
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0211.1, i64 8 ; 3 uses
  %.not.i.i140 = icmp eq ptr %i.jj, %i.in
  br i1 %.not.i.i140, label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit141, label %.lr.ph.i.i139, !llvm.loop !2

_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8iteratorppEv.exit141: ; preds = %.lr.ph.i.i139, %bb.bj, %bb.bi
  %.sroa.0211.2 = phi ptr [ %i.jg, %bb.bi ], [ %.sroa.0211.1, %.lr.ph.i.i139 ], [ %i.jj, %bb.bj ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0211.2, %i.ip
  br i1 %.not, label %._crit_edge461, label %.lr.ph460

_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EED2Ev.exit: ; preds = %bb.a, %bb.bc, %._crit_edge461, %.critedge272
  ret void

.loopexit.split-lp278:                            ; preds = %.loopexit274, %.loopexit.split-lp, %.loopexit277, %.loopexit.split-lp278.loopexit.split-lp, %.loopexit.split-lp278.loopexit, %bb.bh
  %.sroa.0224.11 = phi ptr [ %.sroa.0224.0.lcssa580, %bb.bh ], [ %.sroa.0224.2434, %.loopexit.split-lp278.loopexit.split-lp ], [ %.sroa.0224.3427, %.loopexit277 ], [ %.sroa.0224.4.ph.ph, %.loopexit.split-lp278.loopexit ], [ %.sroa.0224.5, %.loopexit274 ], [ %.sroa.0224.7.ph, %.loopexit.split-lp ] ; 2 uses
  %.pn77.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jf, %bb.bh ], [ %lpad.loopexit.split-lp283, %.loopexit.split-lp278.loopexit.split-lp ], [ %lpad.loopexit279, %.loopexit277 ], [ %lpad.loopexit282, %.loopexit.split-lp278.loopexit ], [ %lpad.loopexit, %.loopexit274 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.jk = icmp eq ptr %.sroa.0224.11, null
  br i1 %i.jk, label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EED2Ev.exit142, label %bb.bk

bb.bk:                                            ; preds = %.loopexit.split-lp278
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.sroa.0224.11)
          to label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EED2Ev.exit142 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jl = landingpad { ptr, i32 }
          catch ptr null
  %i.jm = extractvalue { ptr, i32 } %i.jl, 0
  tail call void @__clang_call_terminate(ptr %i.jm) #25
  unreachable

_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EED2Ev.exit142: ; preds = %.loopexit.split-lp278, %bb.bk
  resume { ptr, i32 } %.pn77.pn.pn.pn.pn.pn
}

declare noundef ptr @_ZNK7datalog8rule_set8get_predEP9func_decl(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !314  ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !315  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i
  %.06.i = phi ptr [ %i.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i ], [ %i.b, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit ] ; 2 uses
  %i.i = load ptr, ptr %.06.i, align 8, !tbaa !316 ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !317, !nonnull !217, !align !218
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !304
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4, !tbaa !304
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.j, ptr noundef nonnull %i.i)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i unwind label %bb.e

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.h
  br i1 %i.p, label %.lr.ph.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !314 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit
  %i.q = phi ptr [ %.pre, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit ], [ %i.b, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit ]
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.r)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #25
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %bb.a, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7
  ret void
end_hunk_0
