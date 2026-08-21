inline.NumInlined: 318
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_PyCfg_OptimizeCodeUnit:bb.a
  %i.act = load i32, ptr %i.kq, align 4, !tbaa !39
  store i32 %i.act, ptr %i.je, align 8, !tbaa !40
  store i32 0, ptr %i.jf, align 4
  store i64 40, ptr %i.jg, align 8, !tbaa !41
  store i32 16, ptr %i.jh, align 8, !tbaa !42
  store i32 0, ptr %i.ji, align 4
  %i.acu = add i32 %i.ks, 1
  %i.acv = call i32 @_Py_CArray_EnsureCapacity(ptr noundef nonnull %8, i32 noundef %i.acu) #8
  %i.acw = icmp eq i32 %i.acv, -1
  br i1 %i.acw, label %basicblock_next_instr.exit.thread.i.i.i319.i.i, label %basicblock_next_instr.exit.i.i.i316.i.i

basicblock_next_instr.exit.thread.i.i.i319.i.i:   ; preds = %basicblock_last_instr.exit.thread.i.i315.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %jump_thread.exit324.i.i

basicblock_next_instr.exit.i.i.i316.i.i:          ; preds = %basicblock_last_instr.exit.thread.i.i315.i.i
  %i.acx = load ptr, ptr %8, align 8, !tbaa !37   ; 2 uses
  store ptr %i.acx, ptr %i.kp, align 8, !tbaa !23
  %i.acy = load i32, ptr %i.je, align 8, !tbaa !40
  store i32 %i.acy, ptr %i.kq, align 4, !tbaa !39
  %i.acz = load i32, ptr %i.kn, align 8, !tbaa !28 ; 3 uses
  %i.ada = add i32 %i.acz, 1
  store i32 %i.ada, ptr %i.kn, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  %i.adb = icmp slt i32 %i.acz, 0
  br i1 %i.adb, label %jump_thread.exit324.i.i, label %basicblock_last_instr.exit13.i.i317.i.i

basicblock_last_instr.exit13.i.i317.i.i:          ; preds = %basicblock_next_instr.exit.i.i.i316.i.i
  %i.adc = zext nneg i32 %i.acz to i64
  %i.add = getelementptr [40 x i8], ptr %i.acx, i64 %i.adc ; 3 uses
  store i32 %i.kw, ptr %i.add, align 8, !tbaa !29
  %i.ade = getelementptr i8, ptr %i.add, i64 4
  store i32 %i.acs, ptr %i.ade, align 4, !tbaa !43
  %i.adf = getelementptr i8, ptr %i.add, i64 8
  store <2 x i64> %i.ach, ptr %i.adf, align 8
  %i.adg = load i32, ptr %i.kn, align 8, !tbaa !28 ; 2 uses
  %i.adh = icmp sgt i32 %i.adg, 0
  call void @llvm.assume(i1 %i.adh)
  %i.adi = load ptr, ptr %i.kp, align 8, !tbaa !23
  %i.adj = zext nneg i32 %i.adg to i64
  %i.adk = getelementptr [40 x i8], ptr %i.adi, i64 %i.adj
  %i.adl = getelementptr i8, ptr %i.adk, i64 -16
  store ptr %i.acf, ptr %i.adl, align 8, !tbaa !45
  br label %jump_thread.exit324.i.i

jump_thread.exit324.i.i:                          ; preds = %basicblock_last_instr.exit13.i.i317.i.i, %basicblock_next_instr.exit.i.i.i316.i.i, %basicblock_next_instr.exit.thread.i.i.i319.i.i, %bb.et, %bb.er
  %.neg.i.i = sext i1 %.not.i314.i.i to i32
  %i.adm = add i32 %.0205471.i.i, %.neg.i.i
  br label %fold_constant_intrinsic_list_to_tuple.exit.i.i

bb.eu:                                            ; preds = %bb.bw
  %i.adn = icmp eq i32 %i.lq, 112
  br i1 %i.adn, label %bb.ev, label %fold_constant_intrinsic_list_to_tuple.exit.i.i

bb.ev:                                            ; preds = %bb.eu
  %i.ado = sext i32 %i.ll to i64
  %i.adp = getelementptr [40 x i8], ptr %i.kt, i64 %i.ado ; 2 uses
  %i.adq = getelementptr i8, ptr %i.adp, i64 4
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !43
  %i.ads = icmp eq i32 %.fr.i.i.i, %i.adr
  br i1 %i.ads, label %bb.ew, label %fold_constant_intrinsic_list_to_tuple.exit.i.i

bb.ew:                                            ; preds = %bb.ev
  %i.adt = getelementptr i8, ptr %i.kv, i64 8
  %i.adu = load i32, ptr %i.adt, align 8, !tbaa !52
  %i.adv = getelementptr i8, ptr %i.adp, i64 8
  %i.adw = load i32, ptr %i.adv, align 8, !tbaa !52
  %i.adx = icmp eq i32 %i.adu, %i.adw
  br i1 %i.adx, label %bb.ex, label %fold_constant_intrinsic_list_to_tuple.exit.i.i

bb.ex:                                            ; preds = %bb.ew
  store i32 31, ptr %i.kv, align 8, !tbaa !29
  store i32 0, ptr %i.kx, align 4, !tbaa !43
  br label %fold_constant_intrinsic_list_to_tuple.exit.i.i

bb.ey:                                            ; preds = %bb.bw
  %i.ady = icmp eq i32 %.fr.i.i.i, 1
  br i1 %i.ady, label %bb.ez, label %fold_constant_intrinsic_list_to_tuple.exit.i.i

bb.ez:                                            ; preds = %bb.ey
  store i32 27, ptr %i.kv, align 8, !tbaa !29
  store i32 0, ptr %i.kx, align 4, !tbaa !43
  br label %fold_constant_intrinsic_list_to_tuple.exit.i.i

bb.fa:                                            ; preds = %bb.bw
  %i.adz = icmp eq i32 %i.lq, 33
  %i.aea = and i32 %.fr.i.i.i, 1
  %i.aeb = icmp eq i32 %i.aea, 0
  %or.cond.i.i = and i1 %i.aeb, %i.adz
  br i1 %or.cond.i.i, label %bb.fb, label %fold_constant_intrinsic_list_to_tuple.exit.i.i

bb.fb:                                            ; preds = %bb.fa
  store i32 92, ptr %i.kv, align 8, !tbaa !29
  %i.aec = or disjoint i32 %.fr.i.i.i, 1
  store i32 %i.aec, ptr %i.kx, align 4, !tbaa !43
  %i.aed = sext i32 %i.ll to i64
  %i.aee = getelementptr [40 x i8], ptr %i.kt, i64 %i.aed ; 2 uses
  store i32 27, ptr %i.aee, align 8, !tbaa !29
  %i.aef = getelementptr i8, ptr %i.aee, i64 4
  store i32 0, ptr %i.aef, align 4, !tbaa !43
  br label %fold_constant_intrinsic_list_to_tuple.exit.i.i

bb.fc:                                            ; preds = %bb.bw
  %i.aeg = icmp eq i32 %i.lq, 39
  br i1 %i.aeg, label %bb.fd, label %fold_constant_intrinsic_list_to_tuple.exit.i.i

bb.fd:                                            ; preds = %bb.fc
  store i32 27, ptr %i.kv, align 8, !tbaa !29
  store i32 0, ptr %i.kx, align 4, !tbaa !43
  %i.aeh = sext i32 %i.ll to i64
  %i.aei = getelementptr [40 x i8], ptr %i.kt, i64 %i.aeh ; 2 uses
  store i32 56, ptr %i.aei, align 8, !tbaa !29
  %i.aej = or i32 %.fr.i.i.i, 16
  %i.aek = getelementptr i8, ptr %i.aei, i64 4
  store i32 %i.aej, ptr %i.aek, align 4, !tbaa !43
  br label %fold_constant_intrinsic_list_to_tuple.exit.i.i

bb.fe:                                            ; preds = %bb.bw, %bb.bw
  switch i32 %i.lq, label %fold_constant_intrinsic_list_to_tuple.exit.i.i [
    i32 39, label %bb.ff
    i32 42, label %bb.fg
  ]

bb.ff:                                            ; preds = %bb.fe
  store i32 27, ptr %i.kv, align 8, !tbaa !29
  store i32 0, ptr %i.kx, align 4, !tbaa !43
  %i.ael = sext i32 %i.ll to i64
  %i.aem = getelementptr [40 x i8], ptr %i.kt, i64 %i.ael ; 2 uses
  store i32 %i.kw, ptr %i.aem, align 8, !tbaa !29
  %i.aen = getelementptr i8, ptr %i.aem, i64 4
  store i32 %.fr.i.i.i, ptr %i.aen, align 4, !tbaa !43
  br label %fold_constant_intrinsic_list_to_tuple.exit.i.i

bb.fg:                                            ; preds = %bb.fe
  store i32 27, ptr %i.kv, align 8, !tbaa !29
  store i32 0, ptr %i.kx, align 4, !tbaa !43
  %i.aeo = xor i32 %.fr.i.i.i, 1
  %i.aep = sext i32 %i.ll to i64
  %i.aeq = getelementptr [40 x i8], ptr %i.kt, i64 %i.aep ; 2 uses
  store i32 %i.kw, ptr %i.aeq, align 8, !tbaa !29
  %i.aer = getelementptr i8, ptr %i.aeq, i64 4
  store i32 %i.aeo, ptr %i.aer, align 4, !tbaa !43
  br label %fold_constant_intrinsic_list_to_tuple.exit.i.i

bb.fh:                                            ; preds = %bb.bw
  %i.aes = icmp eq i32 %i.lq, 39
  br i1 %i.aes, label %bb.fi, label %fold_constant_intrinsic_list_to_tuple.exit.i.i

bb.fi:                                            ; preds = %bb.fh
  store i32 27, ptr %i.kv, align 8, !tbaa !29
  store i32 0, ptr %i.kx, align 4, !tbaa !43
  br label %fold_constant_intrinsic_list_to_tuple.exit.i.i

bb.fj:                                            ; preds = %bb.bw
  switch i32 %i.lq, label %bb.fm [
    i32 39, label %bb.fk
    i32 42, label %bb.fl
  ]

bb.fk:                                            ; preds = %bb.fj
  store i32 27, ptr %i.kv, align 8, !tbaa !29
  store i32 0, ptr %i.kx, align 4, !tbaa !43
  %i.aet = sext i32 %i.ll to i64
  %i.aeu = getelementptr [40 x i8], ptr %i.kt, i64 %i.aet ; 2 uses
  store i32 42, ptr %i.aeu, align 8, !tbaa !29
  %i.aev = getelementptr i8, ptr %i.aeu, i64 4
  store i32 0, ptr %i.aev, align 4, !tbaa !43
  br label %fold_constant_intrinsic_list_to_tuple.exit.i.i

bb.fl:                                            ; preds = %bb.fj
  store i32 27, ptr %i.kv, align 8, !tbaa !29
  store i32 0, ptr %i.kx, align 4, !tbaa !43
  %i.aew = sext i32 %i.ll to i64
  %i.aex = getelementptr [40 x i8], ptr %i.kt, i64 %i.aew ; 2 uses
  store i32 27, ptr %i.aex, align 8, !tbaa !29
  %i.aey = getelementptr i8, ptr %i.aex, i64 4
  store i32 0, ptr %i.aey, align 4, !tbaa !43
  br label %fold_constant_intrinsic_list_to_tuple.exit.i.i

bb.fm:                                            ; preds = %bb.fj, %bb.bw, %bb.bw
  %i.aez = call fastcc i32 @fold_const_unaryop(ptr nonnull %i.kt, i32 noundef %.0205471.i.i, ptr noundef %1, ptr noundef %2)
  %i.afa = icmp eq i32 %i.aez, -1
  br i1 %i.afa, label %.loopexit82.i, label %fold_constant_intrinsic_list_to_tuple.exit.i.i

bb.fn:                                            ; preds = %bb.bw
  switch i32 %.fr.i.i.i, label %fold_constant_intrinsic_list_to_tuple.exit.i.i [
    i32 6, label %bb.fo
    i32 5, label %bb.gq
  ]

bb.fo:                                            ; preds = %bb.fn
  %i.afb = icmp eq i32 %i.lq, 16
  br i1 %i.afb, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  store i32 27, ptr %i.kv, align 8, !tbaa !29
  store i32 0, ptr %i.kx, align 4, !tbaa !43
  br label %fold_constant_intrinsic_list_to_tuple.exit.i.i

bb.fq:                                            ; preds = %bb.fo
  %i.afc = add i32 %.0205471.i.i, -1              ; 4 uses
  %i.afd = icmp slt i32 %i.afc, 0
  br i1 %i.afd, label %fold_constant_intrinsic_list_to_tuple.exit.i.i, label %.lr.ph.i325.i.i

.lr.ph.i325.i.i:                                  ; preds = %bb.fq
  %i.afe = zext nneg i32 %i.afc to i64
  br label %bb.fr

bb.fr:                                            ; preds = %bb.gp, %.lr.ph.i325.i.i
  %indvars.iv.i326.i.i = phi i64 [ %i.afe, %.lr.ph.i325.i.i ], [ %indvars.iv.next.i328.i.i, %bb.gp ] ; 4 uses
  %.046103.i.i.i = phi i8 [ 1, %.lr.ph.i325.i.i ], [ %.147.i.i.i, %bb.gp ] ; 4 uses
  %.048102.i.i.i = phi i32 [ 0, %.lr.ph.i325.i.i ], [ %.8.i.i.i, %bb.gp ] ; 5 uses
  %i.aff = getelementptr [40 x i8], ptr %i.kt, i64 %indvars.iv.i326.i.i ; 2 uses
  %i.afg = load i32, ptr %i.aff, align 8, !tbaa !29 ; 5 uses
  %i.afh = getelementptr i8, ptr %i.aff, i64 4
  %i.afi = load i32, ptr %i.afh, align 4, !tbaa !43 ; 2 uses
  %i.afj = icmp eq i32 %i.afg, 27
  br i1 %i.afj, label %bb.gp, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.afk = icmp eq i32 %i.afg, 46
  %i.afl = icmp eq i32 %i.afi, 0
  %or.cond.i.i31.i = select i1 %i.afk, i1 %i.afl, i1 false
  br i1 %or.cond.i.i31.i, label %bb.ft, label %bb.gk

bb.ft:                                            ; preds = %bb.fs
  %i.afm = trunc nuw nsw i64 %indvars.iv.i326.i.i to i32 ; 2 uses
  %i.afn = trunc nuw i8 %.046103.i.i.i to i1
  br i1 %i.afn, label %bb.fu, label %fold_constant_intrinsic_list_to_tuple.exit.i.i

bb.fu:                                            ; preds = %bb.ft
  %i.afo = sext i32 %.048102.i.i.i to i64
  %i.afp = call ptr @PyTuple_New(i64 noundef %i.afo) #8 ; 11 uses
  %i.afq = icmp eq ptr %i.afp, null
  br i1 %i.afq, label %.loopexit82.i, label %.preheader.i329.i.i

.preheader.i329.i.i:                              ; preds = %bb.fu
  %.not66107.i.i.i = icmp slt i32 %i.afc, %i.afm
  br i1 %.not66107.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph110.i.i.i

.lr.ph110.i.i.i:                                  ; preds = %.preheader.i329.i.i
  %i.afr = getelementptr i8, ptr %i.afp, i64 32
  br label %bb.fv

bb.fv:                                            ; preds = %nop_out.exit.i332.i.i, %.lr.ph110.i.i.i
  %.0109.i.i.i = phi i32 [ %i.afc, %.lr.ph110.i.i.i ], [ %i.agz, %nop_out.exit.i332.i.i ] ; 3 uses
  %.149108.i.i.i = phi i32 [ %.048102.i.i.i, %.lr.ph110.i.i.i ], [ %.452.i.i.i, %nop_out.exit.i332.i.i ] ; 3 uses
  %i.afs = load ptr, ptr %i.kp, align 8, !tbaa !23
  %i.aft = zext nneg i32 %.0109.i.i.i to i64
  %i.afu = getelementptr [40 x i8], ptr %i.afs, i64 %i.aft ; 5 uses
  %i.afv = load i32, ptr %i.afu, align 8, !tbaa !29 ; 4 uses
  %i.afw = icmp eq i32 %i.afv, 27
  br i1 %i.afw, label %nop_out.exit.i332.i.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.afx = sext i32 %i.afv to i64
  %i.afy = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.afx
  %i.afz = getelementptr i8, ptr %i.afy, i64 4
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !32
  %i.agb = and i32 %i.aga, 2
  %i.agc = icmp eq i32 %i.agb, 0
  %i.agd = icmp ne i32 %i.afv, 94
  %.not94.i.i.i = and i1 %i.agd, %i.agc
  br i1 %.not94.i.i.i, label %nop_out.exit.loopexit.i.i.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.age = getelementptr i8, ptr %i.afu, i64 4
  %i.agf = load i32, ptr %i.age, align 4, !tbaa !43 ; 2 uses
  switch i32 %i.afv, label %get_const_value.exit.thread74.i.i.i [
    i32 82, label %bb.fy
    i32 94, label %get_const_value.exit.i330.i.i
  ]

bb.fy:                                            ; preds = %bb.fx
  %i.agg = load ptr, ptr %i.du, align 8, !tbaa !57
  %i.agh = sext i32 %i.agf to i64
  %i.agi = getelementptr [8 x i8], ptr %i.agg, i64 %i.agh
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !49 ; 5 uses
  %i.agk = icmp eq ptr %i.agj, null
  br i1 %i.agk, label %get_const_value.exit.thread74.i.i.i, label %bb.fz

get_const_value.exit.thread74.i.i.i:              ; preds = %bb.fy, %bb.fx
  %i.agl = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !49
  call void @PyErr_SetString(ptr noundef %i.agl, ptr noundef nonnull @.str.2) #8
  br label %.loopexit.i341.i.i

bb.fz:                                            ; preds = %bb.fy
  %i.agm = load i32, ptr %i.agj, align 8, !tbaa !64 ; 2 uses
  %i.agn = icmp ugt i32 %i.agm, -1073741825
  br i1 %i.agn, label %nop_out.exit.loopexit.sink.split.i.i.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.ago = add nuw i32 %i.agm, 1
  store i32 %i.ago, ptr %i.agj, align 8, !tbaa !64
  br label %nop_out.exit.loopexit.sink.split.i.i.i

get_const_value.exit.i330.i.i:                    ; preds = %bb.fx
  %i.agp = sext i32 %i.agf to i64
  %i.agq = call ptr @PyLong_FromLong(i64 noundef %i.agp) #8 ; 2 uses
  %.not68.i.i.i = icmp eq ptr %i.agq, null
  br i1 %.not68.i.i.i, label %.loopexit.i341.i.i, label %nop_out.exit.loopexit.sink.split.i.i.i

.loopexit.i341.i.i:                               ; preds = %get_const_value.exit.i330.i.i, %get_const_value.exit.thread74.i.i.i
  %i.agr = load i32, ptr %i.afp, align 8, !tbaa !64 ; 2 uses
  %.not.i.i342.i.i = icmp sgt i32 %i.agr, -1
  br i1 %.not.i.i342.i.i, label %bb.gb, label %.loopexit82.i

bb.gb:                                            ; preds = %.loopexit.i341.i.i
  %i.ags = add nsw i32 %i.agr, -1                 ; 2 uses
  store i32 %i.ags, ptr %i.afp, align 8, !tbaa !64
  %i.agt = icmp eq i32 %i.ags, 0
  br i1 %i.agt, label %bb.gc, label %.loopexit82.i

bb.gc:                                            ; preds = %bb.gb
  call void @_Py_Dealloc(ptr noundef nonnull %i.afp) #8
  br label %.loopexit82.i

nop_out.exit.loopexit.sink.split.i.i.i:           ; preds = %get_const_value.exit.i330.i.i, %bb.ga, %bb.fz
  %.sink.i331.i.i = phi ptr [ %i.agq, %get_const_value.exit.i330.i.i ], [ %i.agj, %bb.fz ], [ %i.agj, %bb.ga ]
  %i.agu = add i32 %.149108.i.i.i, -1             ; 2 uses
  %i.agv = sext i32 %i.agu to i64
  %i.agw = getelementptr [8 x i8], ptr %i.afr, i64 %i.agv
  store ptr %.sink.i331.i.i, ptr %i.agw, align 8, !tbaa !49
  br label %nop_out.exit.loopexit.i.i.i

nop_out.exit.loopexit.i.i.i:                      ; preds = %nop_out.exit.loopexit.sink.split.i.i.i, %bb.fw
  %.351.i.i.i = phi i32 [ %.149108.i.i.i, %bb.fw ], [ %i.agu, %nop_out.exit.loopexit.sink.split.i.i.i ]
  %i.agx = getelementptr i8, ptr %i.afu, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agx, i8 -1, i64 16, i1 false)
  %i.agy = getelementptr i8, ptr %i.afu, i64 4
  store i32 27, ptr %i.afu, align 8, !tbaa !29
  store i32 0, ptr %i.agy, align 4, !tbaa !43
  br label %nop_out.exit.i332.i.i

nop_out.exit.i332.i.i:                            ; preds = %nop_out.exit.loopexit.i.i.i, %bb.fv
  %.452.i.i.i = phi i32 [ %.149108.i.i.i, %bb.fv ], [ %.351.i.i.i, %nop_out.exit.loopexit.i.i.i ]
  %i.agz = add nsw i32 %.0109.i.i.i, -1
  %.not66.not.i.i.i = icmp sgt i32 %.0109.i.i.i, %i.afm
  br i1 %.not66.not.i.i.i, label %bb.fv, label %._crit_edge.i.i.i, !llvm.loop !77

._crit_edge.i.i.i:                                ; preds = %nop_out.exit.i332.i.i, %.preheader.i329.i.i
  %i.aha = getelementptr i8, ptr %i.afp, i64 8
  %.val.i.i.i333.i.i = load ptr, ptr %i.aha, align 8, !tbaa !65
  %.not.i17.i.i334.i.i = icmp eq ptr %.val.i.i.i333.i.i, @PyLong_Type
  br i1 %.not.i17.i.i334.i.i, label %bb.gd, label %.thread.i.i335.i.i

bb.gd:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.ahb = call i64 @PyLong_AsLongAndOverflow(ptr noundef nonnull %i.afp, ptr noundef nonnull %i.d) #8 ; 3 uses
  %i.ahc = icmp eq i64 %i.ahb, -1
  br i1 %i.ahc, label %maybe_instr_make_load_smallint.exit.i.i338.i.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.ahd = load i32, ptr %i.d, align 4, !tbaa !7
  %i.ahe = icmp eq i32 %i.ahd, 0
  %i.ahf = icmp ult i64 %i.ahb, 256
  %or.cond3.i.i.i336.i.i = and i1 %i.ahf, %i.ahe
  br i1 %or.cond3.i.i.i336.i.i, label %bb.gi, label %.thread24.i.i337.i.i

.thread24.i.i337.i.i:                             ; preds = %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.thread.i.i335.i.i

maybe_instr_make_load_smallint.exit.i.i338.i.i:   ; preds = %bb.gd
  %i.ahg = call ptr @PyErr_Occurred() #8
  %.not18.i.not.i.i339.i.i = icmp eq ptr %i.ahg, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br i1 %.not18.i.not.i.i339.i.i, label %.thread.i.i335.i.i, label %bb.gf

bb.gf:                                            ; preds = %maybe_instr_make_load_smallint.exit.i.i338.i.i
  %i.ahh = load i32, ptr %i.afp, align 8, !tbaa !64 ; 2 uses
  %.not.i.i.i340.i.i = icmp sgt i32 %i.ahh, -1
  br i1 %.not.i.i.i340.i.i, label %bb.gg, label %.loopexit82.i

bb.gg:                                            ; preds = %bb.gf
  %i.ahi = add nsw i32 %i.ahh, -1                 ; 2 uses
  store i32 %i.ahi, ptr %i.afp, align 8, !tbaa !64
  %i.ahj = icmp eq i32 %i.ahi, 0
  br i1 %i.ahj, label %bb.gh, label %.loopexit82.i

bb.gh:                                            ; preds = %bb.gg
  call void @_Py_Dealloc(ptr noundef nonnull %i.afp) #8
  br label %.loopexit82.i

bb.gi:                                            ; preds = %bb.ge
  store i32 94, ptr %i.kv, align 8, !tbaa !29
  %i.ahk = trunc nuw nsw i64 %i.ahb to i32
  store i32 %i.ahk, ptr %i.kx, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %fold_constant_intrinsic_list_to_tuple.exit.i.i

.thread.i.i335.i.i:                               ; preds = %maybe_instr_make_load_smallint.exit.i.i338.i.i, %.thread24.i.i337.i.i, %._crit_edge.i.i.i
  %i.ahl = call fastcc i32 @add_const(ptr noundef nonnull %i.afp, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.ahm = icmp eq i32 %i.ahl, -1
  br i1 %i.ahm, label %.loopexit82.i, label %bb.gj

bb.gj:                                            ; preds = %.thread.i.i335.i.i
  store i32 82, ptr %i.kv, align 8, !tbaa !29
  store i32 %i.ahl, ptr %i.kx, align 4, !tbaa !43
  br label %fold_constant_intrinsic_list_to_tuple.exit.i.i

bb.gk:                                            ; preds = %bb.fs
  %i.ahn = trunc nuw i8 %.046103.i.i.i to i1
  br i1 %i.ahn, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.aho = icmp ne i32 %i.afg, 78
  %i.ahp = icmp ne i32 %i.afi, 1
  %or.cond5.i.i.i = select i1 %i.aho, i1 true, i1 %i.ahp
  br i1 %or.cond5.i.i.i, label %fold_constant_intrinsic_list_to_tuple.exit.i.i, label %bb.go

bb.gm:                                            ; preds = %bb.gk
  %i.ahq = sext i32 %i.afg to i64
  %i.ahr = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.ahq
  %i.ahs = getelementptr i8, ptr %i.ahr, i64 4
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !32
  %i.ahu = and i32 %i.aht, 2
  %i.ahv = icmp eq i32 %i.ahu, 0
  %i.ahw = icmp ne i32 %i.afg, 94
  %.not92.i.i.i = and i1 %i.ahw, %i.ahv
  br i1 %.not92.i.i.i, label %fold_constant_intrinsic_list_to_tuple.exit.i.i, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.ahx = add i32 %.048102.i.i.i, 1
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gl
  %.7.i327.i.i = phi i32 [ %.048102.i.i.i, %bb.gl ], [ %i.ahx, %bb.gn ]
  %i.ahy = xor i8 %.046103.i.i.i, 1
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.fr
  %.8.i.i.i = phi i32 [ %.048102.i.i.i, %bb.fr ], [ %.7.i327.i.i, %bb.go ]
  %.147.i.i.i = phi i8 [ %.046103.i.i.i, %bb.fr ], [ %i.ahy, %bb.go ]
  %indvars.iv.next.i328.i.i = add nsw i64 %indvars.iv.i326.i.i, -1
  %i.ahz = icmp slt i64 %indvars.iv.i326.i.i, 1
  br i1 %i.ahz, label %fold_constant_intrinsic_list_to_tuple.exit.i.i, label %bb.fr, !llvm.loop !78

bb.gq:                                            ; preds = %bb.fn
  %i.aia = call fastcc i32 @fold_const_unaryop(ptr nonnull %i.kt, i32 noundef %.0205471.i.i, ptr noundef %1, ptr noundef %2)
  %i.aib = icmp eq i32 %i.aia, -1
  br i1 %i.aib, label %.loopexit82.i, label %fold_constant_intrinsic_list_to_tuple.exit.i.i

bb.gr:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.aic = add i32 %.0205471.i.i, -1              ; 2 uses
  %i.aid = icmp sgt i32 %i.aic, -1
  br i1 %i.aid, label %.lr.ph.i.i343.i.i, label %fold_const_binop.exit.i.i

.lr.ph.i.i343.i.i:                                ; preds = %bb.gr
  %i.aie = zext nneg i32 %i.aic to i64
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gv, %.lr.ph.i.i343.i.i
  %indvars.iv.i.i344.i.i = phi i64 [ %i.aie, %.lr.ph.i.i343.i.i ], [ %indvars.iv.next.i.i348.i.i, %bb.gv ] ; 3 uses
  %.01225.i.i345.i.i = phi i32 [ 2, %.lr.ph.i.i343.i.i ], [ %.1.ph.i.i347.i.i, %bb.gv ] ; 2 uses
  %i.aif = getelementptr [40 x i8], ptr %i.kt, i64 %indvars.iv.i.i344.i.i ; 2 uses
  %i.aig = load i32, ptr %i.aif, align 8, !tbaa !29 ; 3 uses
  %i.aih = icmp eq i32 %i.aig, 27
  br i1 %i.aih, label %bb.gv, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.aii = sext i32 %i.aig to i64
  %i.aij = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.aii
  %i.aik = getelementptr i8, ptr %i.aij, i64 4
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !32
  %i.aim = and i32 %i.ail, 2
  %i.ain = icmp eq i32 %i.aim, 0
  %i.aio = icmp ne i32 %i.aig, 94
  %.not22.i.i346.i.i = and i1 %i.aio, %i.ain
  br i1 %.not22.i.i346.i.i, label %fold_const_binop.exit.i.i, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.aip = add nsw i32 %.01225.i.i345.i.i, -1     ; 2 uses
  %i.aiq = zext nneg i32 %i.aip to i64
  %i.air = getelementptr [8 x i8], ptr %i.c, i64 %i.aiq
  store ptr %i.aif, ptr %i.air, align 8, !tbaa !68
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gs
  %.1.ph.i.i347.i.i = phi i32 [ %i.aip, %bb.gu ], [ %.01225.i.i345.i.i, %bb.gs ] ; 3 uses
  %indvars.iv.next.i.i348.i.i = add nsw i64 %indvars.iv.i.i344.i.i, -1
  %i.ais = icmp sgt i64 %indvars.iv.i.i344.i.i, 0
  %i.ait = icmp sgt i32 %.1.ph.i.i347.i.i, 0
  %i.aiu = select i1 %i.ais, i1 %i.ait, i1 false
  br i1 %i.aiu, label %bb.gs, label %get_const_loading_instrs.exit.i349.i.i, !llvm.loop !69

get_const_loading_instrs.exit.i349.i.i:           ; preds = %bb.gv
  %i.aiv = icmp eq i32 %.1.ph.i.i347.i.i, 0
  br i1 %i.aiv, label %bb.gw, label %fold_const_binop.exit.i.i

bb.gw:                                            ; preds = %get_const_loading_instrs.exit.i349.i.i
  %i.aiw = load ptr, ptr %i.c, align 16, !tbaa !68 ; 4 uses
  %i.aix = load i32, ptr %i.aiw, align 8, !tbaa !29
  %i.aiy = getelementptr i8, ptr %i.aiw, i64 4    ; 2 uses
  %i.aiz = load i32, ptr %i.aiy, align 4, !tbaa !43 ; 2 uses
  switch i32 %i.aix, label %get_const_value.exit.thread6.i.i.i [
    i32 82, label %bb.gx
    i32 94, label %get_const_value.exit.i350.i.i
  ]

bb.gx:                                            ; preds = %bb.gw
  %i.aja = load ptr, ptr %i.du, align 8, !tbaa !57
  %i.ajb = sext i32 %i.aiz to i64
  %i.ajc = getelementptr [8 x i8], ptr %i.aja, i64 %i.ajb
  %i.ajd = load ptr, ptr %i.ajc, align 8, !tbaa !49 ; 5 uses
  %i.aje = icmp eq ptr %i.ajd, null
  br i1 %i.aje, label %get_const_value.exit.thread6.i.i.i, label %bb.gy

get_const_value.exit.thread6.i.i.i:               ; preds = %bb.gx, %bb.gw
  %i.ajf = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !49
  call void @PyErr_SetString(ptr noundef %i.ajf, ptr noundef nonnull @.str.2) #8
  br label %fold_const_binop.exit.thread.i.i

bb.gy:                                            ; preds = %bb.gx
  %i.ajg = load i32, ptr %i.ajd, align 8, !tbaa !64 ; 2 uses
  %i.ajh = icmp ugt i32 %i.ajg, -1073741825
  br i1 %i.ajh, label %get_const_value.exit.thread.i.i.i, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.aji = add nuw i32 %i.ajg, 1
  store i32 %i.aji, ptr %i.ajd, align 8, !tbaa !64
  br label %get_const_value.exit.thread.i.i.i

get_const_value.exit.i350.i.i:                    ; preds = %bb.gw
  %i.ajj = sext i32 %i.aiz to i64
  %i.ajk = call ptr @PyLong_FromLong(i64 noundef %i.ajj) #8 ; 2 uses
  %i.ajl = icmp eq ptr %i.ajk, null
  br i1 %i.ajl, label %fold_const_binop.exit.thread.i.i, label %get_const_value.exit.thread.i.i.i

get_const_value.exit.thread.i.i.i:                ; preds = %get_const_value.exit.i350.i.i, %bb.gz, %bb.gy
  %.07.i5.i.i.i = phi ptr [ %i.ajk, %get_const_value.exit.i350.i.i ], [ %i.ajd, %bb.gy ], [ %i.ajd, %bb.gz ] ; 27 uses
  %i.ajm = load ptr, ptr %i.jd, align 8, !tbaa !68 ; 4 uses
  %i.ajn = load i32, ptr %i.ajm, align 8, !tbaa !29
  %i.ajo = getelementptr i8, ptr %i.ajm, i64 4    ; 2 uses
  %i.ajp = load i32, ptr %i.ajo, align 4, !tbaa !43 ; 2 uses
  switch i32 %i.ajn, label %get_const_value.exit34.thread10.i.i.i [
    i32 82, label %bb.ha
    i32 94, label %get_const_value.exit34.i.i.i
  ]

end_hunk_0
