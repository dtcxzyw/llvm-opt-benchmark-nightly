Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3PreProc?download=true
inline.NumInlined: 6861
inline.NumDeleted: 1064
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z11V3PreLexlexv:bb.a
  %i.itl = icmp sgt i32 %i.itk, 0
  br i1 %i.itl, label %bb.afm, label %bb.afn

bb.afm:                                           ; preds = %bb.afl
  %i.itm = load ptr, ptr @V3PreLextext, align 8, !tbaa !9
  %i.itn = zext nneg i32 %i.itk to i64
  %i.ito = getelementptr i8, ptr %i.itm, i64 %i.itn
  %i.itp = getelementptr i8, ptr %i.ito, i64 -1
  %i.itq = load i8, ptr %i.itp, align 1, !tbaa !29
  %i.itr = icmp eq i8 %i.itq, 10
  %i.its = zext i1 %i.itr to i32
  %i.itt = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !15
  %i.itu = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !18
  %i.itv = getelementptr inbounds nuw [8 x i8], ptr %i.itt, i64 %i.itu
  %i.itw = load ptr, ptr %i.itv, align 8, !tbaa !20
  %i.itx = getelementptr inbounds nuw i8, ptr %i.itw, i64 40
  store i32 %i.its, ptr %i.itx, align 8, !tbaa !30
  br label %bb.afn

bb.afn:                                           ; preds = %bb.afm, %bb.afl
  %i.ity = load ptr, ptr @_ZN8V3PreLex13s_currentLexpE, align 8, !tbaa !34 ; 3 uses
  %i.itz = getelementptr inbounds nuw i8, ptr %i.ity, i64 56
  %i.iua = load ptr, ptr %i.itz, align 8, !tbaa !36, !noalias !704 ; 2 uses
  %i.iub = getelementptr inbounds nuw i8, ptr %i.ity, i64 64
  %i.iuc = load ptr, ptr %i.iub, align 8, !tbaa !44, !noalias !704
  %i.iud = icmp eq ptr %i.iua, %i.iuc
  br i1 %i.iud, label %bb.afo, label %_ZN8V3PreLex12curFilelinepEv.exit632

bb.afo:                                           ; preds = %bb.afn
  %i.iue = getelementptr inbounds nuw i8, ptr %i.ity, i64 80
  %i.iuf = load ptr, ptr %i.iue, align 8, !tbaa !45, !noalias !704
  %i.iug = getelementptr inbounds i8, ptr %i.iuf, i64 -8
  %i.iuh = load ptr, ptr %i.iug, align 8, !tbaa !46
  %i.iui = getelementptr inbounds nuw i8, ptr %i.iuh, i64 512
  br label %_ZN8V3PreLex12curFilelinepEv.exit632

_ZN8V3PreLex12curFilelinepEv.exit632:             ; preds = %bb.afn, %bb.afo
  %i.iuj = phi ptr [ %i.iui, %bb.afo ], [ %i.iua, %bb.afn ]
  %i.iuk = getelementptr inbounds i8, ptr %i.iuj, i64 -8
  %i.iul = load ptr, ptr %i.iuk, align 8, !tbaa !47
  %i.ium = load ptr, ptr %i.iul, align 8, !tbaa !49
  %i.iun = load ptr, ptr @V3PreLextext, align 8, !tbaa !9
  %i.iuo = sext i32 %i.itk to i64
  call void @_ZN8FileLine12forwardTokenEPKcmb(ptr noundef nonnull align 8 dereferenceable(48) %i.ium, ptr noundef %i.iun, i64 noundef %i.iuo, i1 noundef zeroext false)
  br label %.loopexit

bb.afp:                                           ; preds = %bb.ae
  %i.iup = load i32, ptr @V3PreLexleng, align 4, !tbaa !12 ; 3 uses
  %i.iuq = icmp sgt i32 %i.iup, 0
  %.pre1530.a = load ptr, ptr @V3PreLextext, align 8, !tbaa !9 ; 2 uses
  br i1 %i.iuq, label %bb.afq, label %bb.afr

bb.afq:                                           ; preds = %bb.afp
  %i.iur = zext nneg i32 %i.iup to i64
  %i.ius = getelementptr i8, ptr %.pre1530.a, i64 %i.iur
  %i.iut = getelementptr i8, ptr %i.ius, i64 -1
  %i.iuu = load i8, ptr %i.iut, align 1, !tbaa !29
  %i.iuv = icmp eq i8 %i.iuu, 10
  %i.iuw = zext i1 %i.iuv to i32
  %i.iux = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !15
  %i.iuy = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !18
  %i.iuz = getelementptr inbounds nuw [8 x i8], ptr %i.iux, i64 %i.iuy
  %i.iva = load ptr, ptr %i.iuz, align 8, !tbaa !20
  %i.ivb = getelementptr inbounds nuw i8, ptr %i.iva, i64 40
  store i32 %i.iuw, ptr %i.ivb, align 8, !tbaa !30
  br label %bb.afr

bb.afr:                                           ; preds = %bb.afp, %bb.afq
  %i.ivc = sext i32 %i.iup to i64
  %i.ivd = load ptr, ptr @V3PreLexout, align 8, !tbaa !13
  %i.ive = call i64 @fwrite(ptr noundef %.pre1530.a, i64 noundef %i.ivc, i64 noundef 1, ptr noundef %i.ivd) ; 0 uses
  br label %.backedge

bb.afs:                                           ; preds = %bb.ae
  %i.ivf = load ptr, ptr @V3PreLextext, align 8, !tbaa !9 ; 2 uses
  %i.ivg = load i8, ptr @_ZL12yy_hold_char, align 1, !tbaa !29
  store i8 %i.ivg, ptr %.3115, align 1, !tbaa !29
  %i.ivh = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !15 ; 2 uses
  %i.ivi = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !18 ; 2 uses
  %i.ivj = getelementptr inbounds nuw [8 x i8], ptr %i.ivh, i64 %i.ivi ; 3 uses
  %i.ivk = load ptr, ptr %i.ivj, align 8, !tbaa !20 ; 8 uses
  %i.ivl = getelementptr inbounds nuw i8, ptr %i.ivk, i64 56 ; 2 uses
  %i.ivm = load i32, ptr %i.ivl, align 8, !tbaa !707 ; 2 uses
  %i.ivn = icmp eq i32 %i.ivm, 0
  br i1 %i.ivn, label %bb.aft, label %._crit_edge1518

._crit_edge1518:                                  ; preds = %bb.afs
  %.pre1519 = load i32, ptr @_ZL10yy_n_chars, align 4, !tbaa !12
  br label %bb.afu

bb.aft:                                           ; preds = %bb.afs
  %i.ivo = getelementptr inbounds nuw i8, ptr %i.ivk, i64 28
  %i.ivp = load i32, ptr %i.ivo, align 4, !tbaa !26 ; 2 uses
  store i32 %i.ivp, ptr @_ZL10yy_n_chars, align 4, !tbaa !12
  %i.ivq = load ptr, ptr @V3PreLexin, align 8, !tbaa !13
  store ptr %i.ivq, ptr %i.ivk, align 8, !tbaa !28
  store i32 1, ptr %i.ivl, align 8, !tbaa !707
  br label %bb.afu

bb.afu:                                           ; preds = %._crit_edge1518, %bb.aft
  %i.ivr = phi i32 [ %i.ivm, %._crit_edge1518 ], [ 1, %bb.aft ]
  %i.ivs = phi i32 [ %.pre1519, %._crit_edge1518 ], [ %i.ivp, %bb.aft ]
  %i.ivt = load ptr, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !9 ; 4 uses
  %i.ivu = getelementptr inbounds nuw i8, ptr %i.ivk, i64 8
  %i.ivv = load ptr, ptr %i.ivu, align 8, !tbaa !24 ; 8 uses
  %i.ivw = ptrtoaddr ptr %i.ivv to i64
  %i.ivx = sext i32 %i.ivs to i64                 ; 2 uses
  %i.ivy = getelementptr inbounds i8, ptr %i.ivv, i64 %i.ivx ; 2 uses
  %.not336 = icmp ugt ptr %i.ivt, %i.ivy
  br i1 %.not336, label %bb.agf, label %bb.afv

bb.afv:                                           ; preds = %bb.afu
  %i.ivz = ptrtoint ptr %.3115 to i64
  %i.iwa = ptrtoint ptr %i.ivf to i64
  %i.iwb = sub i64 %i.ivz, %i.iwa
  %i.iwc = trunc i64 %i.iwb to i32
  %i.iwd = add nsw i32 %i.iwc, -1                 ; 2 uses
  %i.iwe = load ptr, ptr @V3PreLextext, align 8, !tbaa !9 ; 2 uses
  %i.iwf = sext i32 %i.iwd to i64
  %i.iwg = getelementptr inbounds i8, ptr %i.iwe, i64 %i.iwf ; 6 uses
  store ptr %i.iwg, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !9
  %i.iwh = load i32, ptr @_ZL8yy_start, align 4, !tbaa !12
  %i.iwi = getelementptr inbounds nuw i8, ptr %i.ivk, i64 40
  %i.iwj = load i32, ptr %i.iwi, align 8, !tbaa !30
  %i.iwk = add nsw i32 %i.iwj, %i.iwh             ; 2 uses
  %i.iwl = load i32, ptr @_ZL11yy_more_len, align 4, !tbaa !12 ; 2 uses
  %i.iwm = sext i32 %i.iwl to i64
  %i.iwn = getelementptr inbounds i8, ptr %i.iwe, i64 %i.iwm ; 4 uses
  %i.iwo = icmp slt i32 %i.iwl, %i.iwd
  br i1 %i.iwo, label %.lr.ph27.i, label %_ZL21yy_get_previous_statev.exit

.lr.ph27.i:                                       ; preds = %bb.afv, %._crit_edge.i
  %.01625.i = phi ptr [ %i.ixv, %._crit_edge.i ], [ %i.iwn, %bb.afv ] ; 3 uses
  %.01724.i = phi i32 [ %i.ixu, %._crit_edge.i ], [ %i.iwk, %bb.afv ] ; 3 uses
  %i.iwp = load i8, ptr %.01625.i, align 1, !tbaa !29 ; 2 uses
  %.not.i633 = icmp eq i8 %i.iwp, 0
  br i1 %.not.i633, label %bb.afx, label %bb.afw

bb.afw:                                           ; preds = %.lr.ph27.i
  %i.iwq = zext i8 %i.iwp to i64
  %i.iwr = getelementptr inbounds nuw i8, ptr @_ZL5yy_ec, i64 %i.iwq
  %i.iws = load i8, ptr %i.iwr, align 1, !tbaa !29
  br label %bb.afx

bb.afx:                                           ; preds = %bb.afw, %.lr.ph27.i
  %i.iwt = phi i8 [ %i.iws, %bb.afw ], [ 1, %.lr.ph27.i ] ; 2 uses
  %i.iwu = sext i32 %.01724.i to i64              ; 3 uses
  %i.iwv = getelementptr inbounds [4 x i8], ptr @_ZL9yy_accept, i64 %i.iwu
  %i.iww = load i32, ptr %i.iwv, align 4, !tbaa !12
  %.not20.i = icmp eq i32 %i.iww, 0
  br i1 %.not20.i, label %bb.afz, label %bb.afy

bb.afy:                                           ; preds = %bb.afx
  store i32 %.01724.i, ptr @_ZL23yy_last_accepting_state, align 4, !tbaa !12
  store ptr %.01625.i, ptr @_ZL22yy_last_accepting_cpos, align 8, !tbaa !9
  br label %bb.afz

bb.afz:                                           ; preds = %bb.afy, %bb.afx
  %i.iwx = getelementptr inbounds [4 x i8], ptr @_ZL7yy_base, i64 %i.iwu
  %i.iwy = load i32, ptr %i.iwx, align 4, !tbaa !12
  %i.iwz = zext i8 %i.iwt to i32
  %i.ixa = add nsw i32 %i.iwy, %i.iwz
  %i.ixb = sext i32 %i.ixa to i64                 ; 2 uses
  %i.ixc = getelementptr inbounds [4 x i8], ptr @_ZL6yy_chk, i64 %i.ixb
  %i.ixd = load i32, ptr %i.ixc, align 4, !tbaa !12
  %.not2122.i = icmp eq i32 %i.ixd, %.01724.i
  br i1 %.not2122.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.afz, %bb.agb
  %i.ixe = phi i64 [ %i.ixl, %bb.agb ], [ %i.iwu, %bb.afz ]
  %.023.i = phi i8 [ %.1.i, %bb.agb ], [ %i.iwt, %bb.afz ] ; 2 uses
  %i.ixf = getelementptr inbounds [4 x i8], ptr @_ZL6yy_def, i64 %i.ixe
  %i.ixg = load i32, ptr %i.ixf, align 4, !tbaa !12 ; 3 uses
  %i.ixh = icmp sgt i32 %i.ixg, 695
  br i1 %i.ixh, label %bb.aga, label %bb.agb

bb.aga:                                           ; preds = %.lr.ph.i
  %i.ixi = zext i8 %.023.i to i64
  %i.ixj = getelementptr inbounds nuw i8, ptr @_ZL7yy_meta, i64 %i.ixi
  %i.ixk = load i8, ptr %i.ixj, align 1, !tbaa !29
  br label %bb.agb

bb.agb:                                           ; preds = %bb.aga, %.lr.ph.i
  %.1.i = phi i8 [ %i.ixk, %bb.aga ], [ %.023.i, %.lr.ph.i ] ; 2 uses
  %i.ixl = sext i32 %i.ixg to i64                 ; 2 uses
  %i.ixm = getelementptr inbounds [4 x i8], ptr @_ZL7yy_base, i64 %i.ixl
  %i.ixn = load i32, ptr %i.ixm, align 4, !tbaa !12
  %i.ixo = zext i8 %.1.i to i32
  %i.ixp = add nsw i32 %i.ixn, %i.ixo
  %i.ixq = sext i32 %i.ixp to i64                 ; 2 uses
  %i.ixr = getelementptr inbounds [4 x i8], ptr @_ZL6yy_chk, i64 %i.ixq
  %i.ixs = load i32, ptr %i.ixr, align 4, !tbaa !12
  %.not21.i = icmp eq i32 %i.ixs, %i.ixg
  br i1 %.not21.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !708

._crit_edge.i:                                    ; preds = %bb.agb, %bb.afz
  %.lcssa.i = phi i64 [ %i.ixb, %bb.afz ], [ %i.ixq, %bb.agb ]
  %i.ixt = getelementptr inbounds [4 x i8], ptr @_ZL6yy_nxt, i64 %.lcssa.i
  %i.ixu = load i32, ptr %i.ixt, align 4, !tbaa !12 ; 2 uses
  %i.ixv = getelementptr inbounds nuw i8, ptr %.01625.i, i64 1 ; 2 uses
  %23 = icmp ult ptr %i.ixv, %i.iwg
  br i1 %23, label %.lr.ph27.i, label %_ZL21yy_get_previous_statev.exit, !llvm.loop !709

_ZL21yy_get_previous_statev.exit:                 ; preds = %._crit_edge.i, %bb.afv
  %.017.lcssa.i = phi i32 [ %i.iwk, %bb.afv ], [ %i.ixu, %._crit_edge.i ] ; 5 uses
  %i.ixw = sext i32 %.017.lcssa.i to i64          ; 3 uses
  %i.ixx = getelementptr inbounds [4 x i8], ptr @_ZL9yy_accept, i64 %i.ixw
  %i.ixy = load i32, ptr %i.ixx, align 4, !tbaa !12
  %.not.i634 = icmp eq i32 %i.ixy, 0
  br i1 %.not.i634, label %bb.agd, label %bb.agc

bb.agc:                                           ; preds = %_ZL21yy_get_previous_statev.exit
  store i32 %.017.lcssa.i, ptr @_ZL23yy_last_accepting_state, align 4, !tbaa !12
  store ptr %i.iwg, ptr @_ZL22yy_last_accepting_cpos, align 8, !tbaa !9
  br label %bb.agd

bb.agd:                                           ; preds = %bb.agc, %_ZL21yy_get_previous_statev.exit
  %i.ixz = getelementptr inbounds [4 x i8], ptr @_ZL7yy_base, i64 %i.ixw
  %i.iya = load i32, ptr %i.ixz, align 4, !tbaa !12
  %i.iyb = add nsw i32 %i.iya, 1
  %i.iyc = sext i32 %i.iyb to i64                 ; 2 uses
  %i.iyd = getelementptr inbounds [4 x i8], ptr @_ZL6yy_chk, i64 %i.iyc
  %i.iye = load i32, ptr %i.iyd, align 4, !tbaa !12
  %.not1415.i = icmp eq i32 %i.iye, %.017.lcssa.i
  br i1 %.not1415.i, label %_ZL16yy_try_NUL_transi.exit, label %.lr.ph.i635

.lr.ph.i635:                                      ; preds = %bb.agd, %.lr.ph.i635
  %i.iyf = phi i64 [ %i.iyi, %.lr.ph.i635 ], [ %i.ixw, %bb.agd ]
  %i.iyg = getelementptr inbounds [4 x i8], ptr @_ZL6yy_def, i64 %i.iyf
  %i.iyh = load i32, ptr %i.iyg, align 4, !tbaa !12 ; 2 uses
  %i.iyi = sext i32 %i.iyh to i64                 ; 2 uses
  %i.iyj = getelementptr inbounds [4 x i8], ptr @_ZL7yy_base, i64 %i.iyi
  %i.iyk = load i32, ptr %i.iyj, align 4, !tbaa !12
  %i.iyl = add nsw i32 %i.iyk, 1
  %i.iym = sext i32 %i.iyl to i64                 ; 2 uses
  %i.iyn = getelementptr inbounds [4 x i8], ptr @_ZL6yy_chk, i64 %i.iym
  %i.iyo = load i32, ptr %i.iyn, align 4, !tbaa !12
  %.not14.i = icmp eq i32 %i.iyo, %i.iyh
  br i1 %.not14.i, label %_ZL16yy_try_NUL_transi.exit, label %.lr.ph.i635, !llvm.loop !710

_ZL16yy_try_NUL_transi.exit:                      ; preds = %.lr.ph.i635, %bb.agd
  %.lcssa.i637 = phi i64 [ %i.iyc, %bb.agd ], [ %i.iym, %.lr.ph.i635 ]
  %i.iyp = getelementptr inbounds [4 x i8], ptr @_ZL6yy_nxt, i64 %.lcssa.i637
  %i.iyq = load i32, ptr %i.iyp, align 4, !tbaa !12 ; 2 uses
  switch i32 %i.iyq, label %bb.age [
    i32 695, label %.preheader.outer.backedge
    i32 0, label %.preheader.outer.backedge
  ]

bb.age:                                           ; preds = %_ZL16yy_try_NUL_transi.exit
  %i.iyr = getelementptr inbounds nuw i8, ptr %i.iwg, i64 1 ; 2 uses
  store ptr %i.iyr, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !9
  br label %.loopexit688.backedge

bb.agf:                                           ; preds = %bb.afu
  %i.iys = load ptr, ptr @V3PreLextext, align 8, !tbaa !9 ; 8 uses
  %i.iyt = getelementptr i8, ptr %i.ivy, i64 1
  %i.iyu = icmp ugt ptr %i.ivt, %i.iyt
  br i1 %i.iyu, label %bb.agg, label %bb.agh

bb.agg:                                           ; preds = %bb.agf
  call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.237) #42
  unreachable

bb.agh:                                           ; preds = %bb.agf
  %i.iyv = getelementptr inbounds nuw i8, ptr %i.ivk, i64 52
  %i.iyw = load i32, ptr %i.iyv, align 4, !tbaa !711
  %i.iyx = icmp eq i32 %i.iyw, 0
  %i.iyy = ptrtoint ptr %i.ivt to i64             ; 2 uses
  %i.iyz = ptrtoint ptr %i.iys to i64             ; 3 uses
  br i1 %i.iyx, label %bb.agi, label %bb.agj

bb.agi:                                           ; preds = %bb.agh
  %i.iza = load i32, ptr @_ZL11yy_more_len, align 4, !tbaa !12
  %i.izb = sext i32 %i.iza to i64                 ; 3 uses
  %i.izc = add i64 %i.iyz, %i.izb
  %i.izd = sub i64 %i.iyy, %i.izc
  %i.ize = icmp eq i64 %i.izd, 1
  br i1 %i.ize, label %_ZL21yy_get_previous_statev.exit654, label %_ZL18yy_get_next_bufferv.exit.thread681

bb.agj:                                           ; preds = %bb.agh
  %i.izf = xor i64 %i.iyz, -1
  %i.izg = add i64 %i.izf, %i.iyy                 ; 8 uses
  %i.izh = trunc i64 %i.izg to i32                ; 9 uses
  %i.izi = icmp sgt i32 %i.izh, 0
  br i1 %i.izi, label %iter.check, label %._crit_edge.i638

iter.check:                                       ; preds = %bb.agj
  %i.izj = and i64 %i.izg, 2147483647             ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.izj, 4
  %i.izk = sub i64 %i.iyz, %i.ivw
  %diff.check = icmp ugt i64 %i.izk, -32
  %or.cond2966 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond2966, label %.lr.ph.i640.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2951 = icmp samesign ult i64 %i.izj, 32
  br i1 %min.iters.check2951, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.izl = and i64 %i.izg, 28
  %n.vec = and i64 %i.izg, 2147483616             ; 6 uses
  %i.izm = trunc nuw nsw i64 %n.vec to i32
  %i.izn = getelementptr i8, ptr %i.iys, i64 %n.vec
  %i.izo = getelementptr i8, ptr %i.ivv, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.iys, i64 %index ; 2 uses
  %next.gep2952 = getelementptr i8, ptr %i.ivv, i64 %index ; 2 uses
  %i.izp = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !29
  %wide.load2953 = load <16 x i8>, ptr %i.izp, align 1, !tbaa !29
  %i.izq = getelementptr i8, ptr %next.gep2952, i64 16
  store <16 x i8> %wide.load, ptr %next.gep2952, align 1, !tbaa !29
  store <16 x i8> %wide.load2953, ptr %i.izq, align 1, !tbaa !29
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.izr = icmp eq i64 %index.next, %n.vec
  br i1 %i.izr, label %middle.block, label %vector.body, !llvm.loop !712

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.izj, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.izl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i640.preheader, label %vec.epilog.ph, !prof !715

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec2956 = and i64 %i.izg, 2147483644         ; 5 uses
  %i.izs = trunc nuw nsw i64 %n.vec2956 to i32
  %i.izt = getelementptr i8, ptr %i.iys, i64 %n.vec2956
  %i.izu = getelementptr i8, ptr %i.ivv, i64 %n.vec2956
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2957 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2961, %vec.epilog.vector.body ] ; 3 uses
  %next.gep2958 = getelementptr i8, ptr %i.iys, i64 %index2957
  %next.gep2959 = getelementptr i8, ptr %i.ivv, i64 %index2957
  %wide.load2960 = load <4 x i8>, ptr %next.gep2958, align 1, !tbaa !29
  store <4 x i8> %wide.load2960, ptr %next.gep2959, align 1, !tbaa !29
  %index.next2961 = add nuw i64 %index2957, 4     ; 2 uses
  %i.izv = icmp eq i64 %index.next2961, %n.vec2956
  br i1 %i.izv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !716

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n2962 = icmp eq i64 %i.izj, %n.vec2956
  br i1 %cmp.n2962, label %._crit_edge.loopexit.i, label %.lr.ph.i640.preheader

.lr.ph.i640.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03357.i.ph = phi i32 [ 0, %iter.check ], [ %i.izm, %vec.epilog.iter.check ], [ %i.izs, %vec.epilog.middle.block ]
  %.03456.i.ph = phi ptr [ %i.iys, %iter.check ], [ %i.izn, %vec.epilog.iter.check ], [ %i.izt, %vec.epilog.middle.block ]
  %.03555.i.ph = phi ptr [ %i.ivv, %iter.check ], [ %i.izo, %vec.epilog.iter.check ], [ %i.izu, %vec.epilog.middle.block ]
  br label %.lr.ph.i640

.lr.ph.i640:                                      ; preds = %.lr.ph.i640.preheader, %.lr.ph.i640
  %.03357.i = phi i32 [ %i.izz, %.lr.ph.i640 ], [ %.03357.i.ph, %.lr.ph.i640.preheader ]
  %.03456.i = phi ptr [ %i.izw, %.lr.ph.i640 ], [ %.03456.i.ph, %.lr.ph.i640.preheader ] ; 2 uses
  %.03555.i = phi ptr [ %i.izy, %.lr.ph.i640 ], [ %.03555.i.ph, %.lr.ph.i640.preheader ] ; 2 uses
  %i.izw = getelementptr inbounds nuw i8, ptr %.03456.i, i64 1
  %i.izx = load i8, ptr %.03456.i, align 1, !tbaa !29
  %i.izy = getelementptr inbounds nuw i8, ptr %.03555.i, i64 1
  store i8 %i.izx, ptr %.03555.i, align 1, !tbaa !29
  %i.izz = add nuw nsw i32 %.03357.i, 1           ; 2 uses
  %exitcond.not.i.a = icmp eq i32 %i.izz, %i.izh
  br i1 %exitcond.not.i.a, label %._crit_edge.loopexit.i, label %.lr.ph.i640, !llvm.loop !717

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i640, %vec.epilog.middle.block, %middle.block
  %.pre.i = load ptr, ptr %i.ivj, align 8, !tbaa !20 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.i, i64 56
  %.pre1520 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !707
  br label %._crit_edge.i638

._crit_edge.i638:                                 ; preds = %._crit_edge.loopexit.i, %bb.agj
  %i.jaa = phi i32 [ %.pre1520, %._crit_edge.loopexit.i ], [ %i.ivr, %bb.agj ]
  %i.jab = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.ivk, %bb.agj ] ; 5 uses
  %i.jac = icmp eq i32 %i.jaa, 2
  br i1 %i.jac, label %.thread48.i, label %bb.agk

.thread48.i:                                      ; preds = %._crit_edge.i638
  store i32 0, ptr @_ZL10yy_n_chars, align 4, !tbaa !12
  %i.jad = getelementptr inbounds nuw i8, ptr %i.jab, i64 28
  store i32 0, ptr %i.jad, align 4, !tbaa !26
  br label %bb.agn

bb.agk:                                           ; preds = %._crit_edge.i638
  %i.jae = xor i32 %i.izh, -1                     ; 2 uses
  %.pn.in58.i = getelementptr inbounds nuw i8, ptr %i.jab, i64 24
  %.pn59.i = load i32, ptr %.pn.in58.i, align 8, !tbaa !22 ; 2 uses
  %.060.i = add i32 %.pn59.i, %i.jae              ; 2 uses
  %i.jaf = icmp slt i32 %.060.i, 1
  br i1 %i.jaf, label %.lr.ph62.i, label %._crit_edge63.i

.lr.ph62.i:                                       ; preds = %bb.agk, %bb.agm
  %i.jag = phi i32 [ %.pn.i, %bb.agm ], [ %.pn59.i, %bb.agk ] ; 4 uses
  %i.jah = phi ptr [ %i.jba, %bb.agm ], [ %i.jab, %bb.agk ] ; 3 uses
  %i.jai = phi ptr [ %i.jaz, %bb.agm ], [ %i.ivt, %bb.agk ]
  %i.jaj = getelementptr inbounds nuw i8, ptr %i.jah, i64 8 ; 3 uses
  %i.jak = load ptr, ptr %i.jaj, align 8, !tbaa !24 ; 2 uses
  %i.jal = ptrtoint ptr %i.jai to i64
end_hunk_0
begin_hunk_1_@_Z11V3PreLexlexv:bb.a
  %i.jdc = ashr exact i64 %sext, 32
  %i.jdd = call noalias noundef ptr @realloc(ptr noundef %i.jcn, i64 noundef %i.jdc) #43 ; 3 uses
  %i.jde = load ptr, ptr %i.jci, align 8, !tbaa !20 ; 2 uses
  %i.jdf = getelementptr inbounds nuw i8, ptr %i.jde, i64 8
  store ptr %i.jdd, ptr %i.jdf, align 8, !tbaa !24
  %.not45.i.jt2 = icmp eq ptr %i.jdd, null
  br i1 %.not45.i.jt2, label %.loopexit2008, label %bb.agv

bb.agt:                                           ; preds = %bb.agq
  %i.jdg = ashr i32 %.pre67.i, 1
  %i.jdh = add nsw i32 %i.jcp, %i.jdg             ; 2 uses
  %i.jdi = getelementptr inbounds nuw i8, ptr %.pre70.i, i64 8
  %i.jdj = load ptr, ptr %i.jdi, align 8, !tbaa !24
  %i.jdk = sext i32 %i.jdh to i64
  %i.jdl = call noalias noundef ptr @realloc(ptr noundef %i.jdj, i64 noundef %i.jdk) #43 ; 3 uses
  %i.jdm = load ptr, ptr %i.jcq, align 8, !tbaa !20 ; 2 uses
  %i.jdn = getelementptr inbounds nuw i8, ptr %i.jdm, i64 8
  store ptr %i.jdl, ptr %i.jdn, align 8, !tbaa !24
  %.not45.i.jt1 = icmp eq ptr %i.jdl, null
  br i1 %.not45.i.jt1, label %.loopexit2008, label %bb.agw

.loopexit2008:                                    ; preds = %bb.agr, %bb.ags, %bb.agt
  call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.239) #42
  unreachable

bb.agu:                                           ; preds = %bb.agr
  %i.jdo = add nsw i32 %i.jcv, -2
  %i.jdp = getelementptr inbounds nuw i8, ptr %i.jda, i64 24
  store i32 %i.jdo, ptr %i.jdp, align 8, !tbaa !22
  br label %_ZL18yy_get_next_bufferv.exit.jt0

bb.agv:                                           ; preds = %bb.ags
  %i.jdq = add nsw i32 %i.izh, -2
  %i.jdr = getelementptr inbounds nuw i8, ptr %i.jde, i64 24
  store i32 %i.jdq, ptr %i.jdr, align 8, !tbaa !22
  br label %_ZL18yy_get_next_bufferv.exit.jt2

bb.agw:                                           ; preds = %bb.agt
  %i.jds = add nsw i32 %i.jdh, -2
  %i.jdt = getelementptr inbounds nuw i8, ptr %i.jdm, i64 24
  store i32 %i.jds, ptr %i.jdt, align 8, !tbaa !22
  br label %_ZL18yy_get_next_bufferv.exit.jt1

_ZL18yy_get_next_bufferv.exit.jt0:                ; preds = %._crit_edge71.i.jt0, %bb.agu
  %i.jdu = phi ptr [ %i.jcz, %bb.agu ], [ %.pre73.i.jt0, %._crit_edge71.i.jt0 ]
  store i32 %i.jcc, ptr @_ZL10yy_n_chars, align 4, !tbaa !12
  %i.jdv = sext i32 %i.jcc to i64                 ; 2 uses
  %i.jdw = getelementptr inbounds i8, ptr %i.jdu, i64 %i.jdv
  store i8 0, ptr %i.jdw, align 1, !tbaa !29
  %i.jdx = load ptr, ptr %i.jcd, align 8, !tbaa !20
  %i.jdy = getelementptr inbounds nuw i8, ptr %i.jdx, i64 8
  %i.jdz = load ptr, ptr %i.jdy, align 8, !tbaa !24
  %i.jea = getelementptr i8, ptr %i.jdz, i64 %i.jdv
  %i.jeb = getelementptr i8, ptr %i.jea, i64 1
  store i8 0, ptr %i.jeb, align 1, !tbaa !29
  %i.jec = load ptr, ptr %i.jcd, align 8, !tbaa !20
  %i.jed = getelementptr inbounds nuw i8, ptr %i.jec, i64 8
  %i.jee = load ptr, ptr %i.jed, align 8, !tbaa !24 ; 3 uses
  store ptr %i.jee, ptr @V3PreLextext, align 8, !tbaa !9
  %i.jef = sext i32 %i.jcb to i64
  %i.jeg = getelementptr inbounds i8, ptr %i.jee, i64 %i.jef ; 4 uses
  store ptr %i.jeg, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !9
  %i.jeh = load i32, ptr @_ZL8yy_start, align 4, !tbaa !12
  %i.jei = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !15
  %i.jej = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !18
  %i.jek = getelementptr inbounds nuw [8 x i8], ptr %i.jei, i64 %i.jej
  %i.jel = load ptr, ptr %i.jek, align 8, !tbaa !20
  %i.jem = getelementptr inbounds nuw i8, ptr %i.jel, i64 40
  %i.jen = load i32, ptr %i.jem, align 8, !tbaa !30
  %i.jeo = add nsw i32 %i.jen, %i.jeh             ; 2 uses
  %i.jep = load i32, ptr @_ZL11yy_more_len, align 4, !tbaa !12 ; 2 uses
  %i.jeq = sext i32 %i.jep to i64
  %i.jer = getelementptr inbounds i8, ptr %i.jee, i64 %i.jeq ; 3 uses
  %i.jes = icmp slt i32 %i.jep, %i.jcb
  br i1 %i.jes, label %.lr.ph27.i642, label %.loopexit688.backedge

.loopexit688.backedge:                            ; preds = %._crit_edge.i652, %_ZL18yy_get_next_bufferv.exit.jt0, %bb.age
  %.0119.be = phi ptr [ %i.jer, %_ZL18yy_get_next_bufferv.exit.jt0 ], [ %i.iwn, %bb.age ], [ %i.jer, %._crit_edge.i652 ]
  %.0112.be = phi ptr [ %i.jeg, %_ZL18yy_get_next_bufferv.exit.jt0 ], [ %i.iyr, %bb.age ], [ %i.jeg, %._crit_edge.i652 ]
  %.0111.be = phi i32 [ %i.jeo, %_ZL18yy_get_next_bufferv.exit.jt0 ], [ %i.iyq, %bb.age ], [ %i.jgu, %._crit_edge.i652 ]
  br label %.loopexit688

_ZL18yy_get_next_bufferv.exit.jt2:                ; preds = %bb.agp, %bb.agv
  %i.jet = phi ptr [ %i.jdd, %bb.agv ], [ %i.jcn, %bb.agp ]
  store i32 %i.izh, ptr @_ZL10yy_n_chars, align 4, !tbaa !12
  %sext2482 = shl i64 %i.izg, 32
  %i.jeu = ashr exact i64 %sext2482, 32           ; 2 uses
  %i.jev = getelementptr inbounds i8, ptr %i.jet, i64 %i.jeu
  store i8 0, ptr %i.jev, align 1, !tbaa !29
  %i.jew = load ptr, ptr %i.jci, align 8, !tbaa !20
  %i.jex = getelementptr inbounds nuw i8, ptr %i.jew, i64 8
  %i.jey = load ptr, ptr %i.jex, align 8, !tbaa !24
  %i.jez = getelementptr i8, ptr %i.jey, i64 %i.jeu
  %i.jfa = getelementptr i8, ptr %i.jez, i64 1
  store i8 0, ptr %i.jfa, align 1, !tbaa !29
  %i.jfb = load ptr, ptr %i.jci, align 8, !tbaa !20
  %i.jfc = getelementptr inbounds nuw i8, ptr %i.jfb, i64 8
  %i.jfd = load ptr, ptr %i.jfc, align 8, !tbaa !24 ; 2 uses
  store ptr %i.jfd, ptr @V3PreLextext, align 8, !tbaa !9
  %.pre1521 = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !15
  %.pre1522 = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !18
  %.phi.trans.insert1523 = getelementptr inbounds nuw [8 x i8], ptr %.pre1521, i64 %.pre1522
  %.pre1524 = load ptr, ptr %.phi.trans.insert1523, align 8, !tbaa !20 ; 2 uses
  %.phi.trans.insert1525 = getelementptr inbounds nuw i8, ptr %.pre1524, i64 8
  %.pre1526 = load ptr, ptr %.phi.trans.insert1525, align 8, !tbaa !24
  %.pre1527 = load i32, ptr @_ZL10yy_n_chars, align 4, !tbaa !12
  %.pre1528 = load i32, ptr @_ZL11yy_more_len, align 4, !tbaa !12
  %.pre1544 = sext i32 %.pre1527 to i64
  %.pre1546 = sext i32 %.pre1528 to i64
  br label %_ZL18yy_get_next_bufferv.exit.thread681

_ZL18yy_get_next_bufferv.exit.jt1:                ; preds = %._crit_edge71.i.jt1, %bb.agw
  %i.jfe = phi ptr [ %i.jdl, %bb.agw ], [ %.pre73.i.jt1, %._crit_edge71.i.jt1 ]
  store i32 %i.jcp, ptr @_ZL10yy_n_chars, align 4, !tbaa !12
  %i.jff = sext i32 %i.jcp to i64                 ; 2 uses
  %i.jfg = getelementptr inbounds i8, ptr %i.jfe, i64 %i.jff
  store i8 0, ptr %i.jfg, align 1, !tbaa !29
  %i.jfh = load ptr, ptr %i.jcq, align 8, !tbaa !20
  %i.jfi = getelementptr inbounds nuw i8, ptr %i.jfh, i64 8
  %i.jfj = load ptr, ptr %i.jfi, align 8, !tbaa !24
  %i.jfk = getelementptr i8, ptr %i.jfj, i64 %i.jff
  %i.jfl = getelementptr i8, ptr %i.jfk, i64 1
  store i8 0, ptr %i.jfl, align 1, !tbaa !29
  %i.jfm = load ptr, ptr %i.jcq, align 8, !tbaa !20
  %i.jfn = getelementptr inbounds nuw i8, ptr %i.jfm, i64 8
  %i.jfo = load ptr, ptr %i.jfn, align 8, !tbaa !24 ; 2 uses
  store ptr %i.jfo, ptr @V3PreLextext, align 8, !tbaa !9
  %.pre1529 = load i32, ptr @_ZL11yy_more_len, align 4, !tbaa !12
  %.pre1542 = sext i32 %.pre1529 to i64
  br label %_ZL21yy_get_previous_statev.exit654

.lr.ph27.i642:                                    ; preds = %_ZL18yy_get_next_bufferv.exit.jt0, %._crit_edge.i652
  %.01625.i643 = phi ptr [ %i.jgv, %._crit_edge.i652 ], [ %i.jer, %_ZL18yy_get_next_bufferv.exit.jt0 ] ; 3 uses
  %.01724.i644 = phi i32 [ %i.jgu, %._crit_edge.i652 ], [ %i.jeo, %_ZL18yy_get_next_bufferv.exit.jt0 ] ; 3 uses
  %i.jfp = load i8, ptr %.01625.i643, align 1, !tbaa !29 ; 2 uses
  %.not.i645 = icmp eq i8 %i.jfp, 0
  br i1 %.not.i645, label %bb.agy, label %bb.agx

bb.agx:                                           ; preds = %.lr.ph27.i642
  %i.jfq = zext i8 %i.jfp to i64
  %i.jfr = getelementptr inbounds nuw i8, ptr @_ZL5yy_ec, i64 %i.jfq
  %i.jfs = load i8, ptr %i.jfr, align 1, !tbaa !29
  br label %bb.agy

bb.agy:                                           ; preds = %bb.agx, %.lr.ph27.i642
  %i.jft = phi i8 [ %i.jfs, %bb.agx ], [ 1, %.lr.ph27.i642 ] ; 2 uses
  %i.jfu = sext i32 %.01724.i644 to i64           ; 3 uses
  %i.jfv = getelementptr inbounds [4 x i8], ptr @_ZL9yy_accept, i64 %i.jfu
  %i.jfw = load i32, ptr %i.jfv, align 4, !tbaa !12
  %.not20.i646 = icmp eq i32 %i.jfw, 0
  br i1 %.not20.i646, label %bb.aha, label %bb.agz

bb.agz:                                           ; preds = %bb.agy
  store i32 %.01724.i644, ptr @_ZL23yy_last_accepting_state, align 4, !tbaa !12
  store ptr %.01625.i643, ptr @_ZL22yy_last_accepting_cpos, align 8, !tbaa !9
  br label %bb.aha

bb.aha:                                           ; preds = %bb.agz, %bb.agy
  %i.jfx = getelementptr inbounds [4 x i8], ptr @_ZL7yy_base, i64 %i.jfu
  %i.jfy = load i32, ptr %i.jfx, align 4, !tbaa !12
  %i.jfz = zext i8 %i.jft to i32
  %i.jga = add nsw i32 %i.jfy, %i.jfz
  %i.jgb = sext i32 %i.jga to i64                 ; 2 uses
  %i.jgc = getelementptr inbounds [4 x i8], ptr @_ZL6yy_chk, i64 %i.jgb
  %i.jgd = load i32, ptr %i.jgc, align 4, !tbaa !12
  %.not2122.i647 = icmp eq i32 %i.jgd, %.01724.i644
  br i1 %.not2122.i647, label %._crit_edge.i652, label %.lr.ph.i648

.lr.ph.i648:                                      ; preds = %bb.aha, %bb.ahc
  %i.jge = phi i64 [ %i.jgl, %bb.ahc ], [ %i.jfu, %bb.aha ]
  %.023.i649 = phi i8 [ %.1.i650, %bb.ahc ], [ %i.jft, %bb.aha ] ; 2 uses
  %i.jgf = getelementptr inbounds [4 x i8], ptr @_ZL6yy_def, i64 %i.jge
  %i.jgg = load i32, ptr %i.jgf, align 4, !tbaa !12 ; 3 uses
  %i.jgh = icmp sgt i32 %i.jgg, 695
  br i1 %i.jgh, label %bb.ahb, label %bb.ahc

bb.ahb:                                           ; preds = %.lr.ph.i648
  %i.jgi = zext i8 %.023.i649 to i64
  %i.jgj = getelementptr inbounds nuw i8, ptr @_ZL7yy_meta, i64 %i.jgi
  %i.jgk = load i8, ptr %i.jgj, align 1, !tbaa !29
  br label %bb.ahc

bb.ahc:                                           ; preds = %bb.ahb, %.lr.ph.i648
  %.1.i650 = phi i8 [ %i.jgk, %bb.ahb ], [ %.023.i649, %.lr.ph.i648 ] ; 2 uses
  %i.jgl = sext i32 %i.jgg to i64                 ; 2 uses
  %i.jgm = getelementptr inbounds [4 x i8], ptr @_ZL7yy_base, i64 %i.jgl
  %i.jgn = load i32, ptr %i.jgm, align 4, !tbaa !12
  %i.jgo = zext i8 %.1.i650 to i32
  %i.jgp = add nsw i32 %i.jgn, %i.jgo
  %i.jgq = sext i32 %i.jgp to i64                 ; 2 uses
  %i.jgr = getelementptr inbounds [4 x i8], ptr @_ZL6yy_chk, i64 %i.jgq
  %i.jgs = load i32, ptr %i.jgr, align 4, !tbaa !12
  %.not21.i651 = icmp eq i32 %i.jgs, %i.jgg
  br i1 %.not21.i651, label %._crit_edge.i652, label %.lr.ph.i648, !llvm.loop !708

._crit_edge.i652:                                 ; preds = %bb.ahc, %bb.aha
  %.lcssa.i653 = phi i64 [ %i.jgb, %bb.aha ], [ %i.jgq, %bb.ahc ]
  %i.jgt = getelementptr inbounds [4 x i8], ptr @_ZL6yy_nxt, i64 %.lcssa.i653
  %i.jgu = load i32, ptr %i.jgt, align 4, !tbaa !12 ; 2 uses
  %i.jgv = getelementptr inbounds nuw i8, ptr %.01625.i643, i64 1 ; 2 uses
  %24 = icmp ult ptr %i.jgv, %i.jeg
  br i1 %24, label %.lr.ph27.i642, label %.loopexit688.backedge, !llvm.loop !709

_ZL18yy_get_next_bufferv.exit.thread681:          ; preds = %bb.agi, %_ZL18yy_get_next_bufferv.exit.jt2
  %.pre-phi1547 = phi i64 [ %.pre1546, %_ZL18yy_get_next_bufferv.exit.jt2 ], [ %i.izb, %bb.agi ]
  %.pre-phi1545 = phi i64 [ %.pre1544, %_ZL18yy_get_next_bufferv.exit.jt2 ], [ %i.ivx, %bb.agi ]
  %i.jgw = phi ptr [ %i.jfd, %_ZL18yy_get_next_bufferv.exit.jt2 ], [ %i.iys, %bb.agi ]
  %i.jgx = phi ptr [ %.pre1526, %_ZL18yy_get_next_bufferv.exit.jt2 ], [ %i.ivv, %bb.agi ]
  %i.jgy = phi ptr [ %.pre1524, %_ZL18yy_get_next_bufferv.exit.jt2 ], [ %i.ivk, %bb.agi ]
  %i.jgz = getelementptr inbounds i8, ptr %i.jgx, i64 %.pre-phi1545 ; 5 uses
  store ptr %i.jgz, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !9
  %i.jha = load i32, ptr @_ZL8yy_start, align 4, !tbaa !12
  %i.jhb = getelementptr inbounds nuw i8, ptr %i.jgy, i64 40
  %i.jhc = load i32, ptr %i.jhb, align 8, !tbaa !30
  %i.jhd = add nsw i32 %i.jhc, %i.jha             ; 2 uses
  %i.jhe = getelementptr inbounds i8, ptr %i.jgw, i64 %.pre-phi1547 ; 4 uses
  %i.jhf = icmp ult ptr %i.jhe, %i.jgz
  br i1 %i.jhf, label %.lr.ph27.i656, label %.preheader.outer.backedge

.lr.ph27.i656:                                    ; preds = %_ZL18yy_get_next_bufferv.exit.thread681, %._crit_edge.i666
  %.01625.i657 = phi ptr [ %i.jim, %._crit_edge.i666 ], [ %i.jhe, %_ZL18yy_get_next_bufferv.exit.thread681 ] ; 3 uses
  %.01724.i658 = phi i32 [ %i.jil, %._crit_edge.i666 ], [ %i.jhd, %_ZL18yy_get_next_bufferv.exit.thread681 ] ; 3 uses
  %i.jhg = load i8, ptr %.01625.i657, align 1, !tbaa !29 ; 2 uses
  %.not.i659 = icmp eq i8 %i.jhg, 0
  br i1 %.not.i659, label %bb.ahe, label %bb.ahd

bb.ahd:                                           ; preds = %.lr.ph27.i656
  %i.jhh = zext i8 %i.jhg to i64
  %i.jhi = getelementptr inbounds nuw i8, ptr @_ZL5yy_ec, i64 %i.jhh
  %i.jhj = load i8, ptr %i.jhi, align 1, !tbaa !29
  br label %bb.ahe

bb.ahe:                                           ; preds = %bb.ahd, %.lr.ph27.i656
  %i.jhk = phi i8 [ %i.jhj, %bb.ahd ], [ 1, %.lr.ph27.i656 ] ; 2 uses
  %i.jhl = sext i32 %.01724.i658 to i64           ; 3 uses
  %i.jhm = getelementptr inbounds [4 x i8], ptr @_ZL9yy_accept, i64 %i.jhl
  %i.jhn = load i32, ptr %i.jhm, align 4, !tbaa !12
  %.not20.i660 = icmp eq i32 %i.jhn, 0
  br i1 %.not20.i660, label %bb.ahg, label %bb.ahf

bb.ahf:                                           ; preds = %bb.ahe
  store i32 %.01724.i658, ptr @_ZL23yy_last_accepting_state, align 4, !tbaa !12
  store ptr %.01625.i657, ptr @_ZL22yy_last_accepting_cpos, align 8, !tbaa !9
  br label %bb.ahg

bb.ahg:                                           ; preds = %bb.ahf, %bb.ahe
  %i.jho = getelementptr inbounds [4 x i8], ptr @_ZL7yy_base, i64 %i.jhl
  %i.jhp = load i32, ptr %i.jho, align 4, !tbaa !12
  %i.jhq = zext i8 %i.jhk to i32
  %i.jhr = add nsw i32 %i.jhp, %i.jhq
  %i.jhs = sext i32 %i.jhr to i64                 ; 2 uses
  %i.jht = getelementptr inbounds [4 x i8], ptr @_ZL6yy_chk, i64 %i.jhs
  %i.jhu = load i32, ptr %i.jht, align 4, !tbaa !12
  %.not2122.i661 = icmp eq i32 %i.jhu, %.01724.i658
  br i1 %.not2122.i661, label %._crit_edge.i666, label %.lr.ph.i662

.lr.ph.i662:                                      ; preds = %bb.ahg, %bb.ahi
  %i.jhv = phi i64 [ %i.jic, %bb.ahi ], [ %i.jhl, %bb.ahg ]
  %.023.i663 = phi i8 [ %.1.i664, %bb.ahi ], [ %i.jhk, %bb.ahg ] ; 2 uses
  %i.jhw = getelementptr inbounds [4 x i8], ptr @_ZL6yy_def, i64 %i.jhv
  %i.jhx = load i32, ptr %i.jhw, align 4, !tbaa !12 ; 3 uses
  %i.jhy = icmp sgt i32 %i.jhx, 695
  br i1 %i.jhy, label %bb.ahh, label %bb.ahi

bb.ahh:                                           ; preds = %.lr.ph.i662
  %i.jhz = zext i8 %.023.i663 to i64
  %i.jia = getelementptr inbounds nuw i8, ptr @_ZL7yy_meta, i64 %i.jhz
  %i.jib = load i8, ptr %i.jia, align 1, !tbaa !29
  br label %bb.ahi

bb.ahi:                                           ; preds = %bb.ahh, %.lr.ph.i662
  %.1.i664 = phi i8 [ %i.jib, %bb.ahh ], [ %.023.i663, %.lr.ph.i662 ] ; 2 uses
  %i.jic = sext i32 %i.jhx to i64                 ; 2 uses
  %i.jid = getelementptr inbounds [4 x i8], ptr @_ZL7yy_base, i64 %i.jic
  %i.jie = load i32, ptr %i.jid, align 4, !tbaa !12
  %i.jif = zext i8 %.1.i664 to i32
  %i.jig = add nsw i32 %i.jie, %i.jif
  %i.jih = sext i32 %i.jig to i64                 ; 2 uses
  %i.jii = getelementptr inbounds [4 x i8], ptr @_ZL6yy_chk, i64 %i.jih
  %i.jij = load i32, ptr %i.jii, align 4, !tbaa !12
  %.not21.i665 = icmp eq i32 %i.jij, %i.jhx
  br i1 %.not21.i665, label %._crit_edge.i666, label %.lr.ph.i662, !llvm.loop !708

._crit_edge.i666:                                 ; preds = %bb.ahi, %bb.ahg
  %.lcssa.i667 = phi i64 [ %i.jhs, %bb.ahg ], [ %i.jih, %bb.ahi ]
  %i.jik = getelementptr inbounds [4 x i8], ptr @_ZL6yy_nxt, i64 %.lcssa.i667
  %i.jil = load i32, ptr %i.jik, align 4, !tbaa !12 ; 2 uses
  %i.jim = getelementptr inbounds nuw i8, ptr %.01625.i657, i64 1 ; 2 uses
  %25 = icmp ult ptr %i.jim, %i.jgz
  br i1 %25, label %.lr.ph27.i656, label %.preheader.outer.backedge, !llvm.loop !709

_ZL21yy_get_previous_statev.exit654:              ; preds = %bb.agi, %_ZL18yy_get_next_bufferv.exit.jt1
  %.pre-phi1543 = phi i64 [ %.pre1542, %_ZL18yy_get_next_bufferv.exit.jt1 ], [ %i.izb, %bb.agi ]
  %i.jin = phi ptr [ %i.jfo, %_ZL18yy_get_next_bufferv.exit.jt1 ], [ %i.iys, %bb.agi ]
  %i.jio = getelementptr inbounds i8, ptr %i.jin, i64 %.pre-phi1543
  store ptr %i.jio, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !9
  %i.jip = load i32, ptr @_ZL8yy_start, align 4, !tbaa !12
  %i.jiq = add nsw i32 %i.jip, -1
  %i.jir = sdiv i32 %i.jiq, 2
  %i.jis = add nsw i32 %i.jir, 180
  br label %bb.ae

bb.ahj:                                           ; preds = %bb.ae
  call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.34) #42
  unreachable

.loopexit:                                        ; preds = %bb.aad, %bb.lt, %bb.kl, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %bb.ae, %_ZN8V3PreLex12curFilelinepEv.exit468, %bb.hy, %_ZN8V3PreLex12curFilelinepEv.exit460, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464, %_ZN8V3PreLex12curFilelinepEv.exit387, %_ZN8V3PreLex12curFilelinepEv.exit632, %_ZN8V3PreLex12curFilelinepEv.exit627, %_ZN8V3PreLex12curFilelinepEv.exit626, %_ZN8V3PreLex12curFilelinepEv.exit625, %_ZN8V3PreLex12curFilelinepEv.exit624, %_ZN8V3PreLex12curFilelinepEv.exit623, %_ZN8V3PreLex12curFilelinepEv.exit622, %_ZN8V3PreLex12curFilelinepEv.exit621, %_ZN8V3PreLex12curFilelinepEv.exit620, %_ZN8V3PreLex12curFilelinepEv.exit619, %_ZN8V3PreLex12curFilelinepEv.exit618, %_ZN8V3PreLex12curFilelinepEv.exit617, %_ZN8V3PreLex12curFilelinepEv.exit616, %_ZN8V3PreLex12curFilelinepEv.exit615, %_ZN8V3PreLex12curFilelinepEv.exit614, %_ZN8V3PreLex12curFilelinepEv.exit613, %_ZN8V3PreLex12curFilelinepEv.exit612, %_ZN8V3PreLex12curFilelinepEv.exit611, %_ZN8V3PreLex12curFilelinepEv.exit610, %_ZN8V3PreLex12curFilelinepEv.exit609, %_ZN8V3PreLex12curFilelinepEv.exit608, %bb.aat, %bb.aam, %_ZN8V3PreLex12curFilelinepEv.exit589, %_ZN8V3PreLex12curFilelinepEv.exit586, %_ZN8V3PreLex12curFilelinepEv.exit585, %_ZN8V3PreLex12curFilelinepEv.exit582, %_ZN8V3PreLex12curFilelinepEv.exit581, %_ZN8V3PreLex12curFilelinepEv.exit580, %_ZN8V3PreLex12curFilelinepEv.exit579, %_ZN8V3PreLex12curFilelinepEv.exit578, %_ZN8V3PreLex12curFilelinepEv.exit577, %_ZN8V3PreLex12curFilelinepEv.exit576, %_ZN8V3PreLex12curFilelinepEv.exit575, %_ZN8V3PreLex12curFilelinepEv.exit574, %_ZN8V3PreLex12curFilelinepEv.exit573, %_ZN8V3PreLex12curFilelinepEv.exit572, %_ZN8V3PreLex12curFilelinepEv.exit571, %_ZN8V3PreLex12curFilelinepEv.exit570, %_ZN8V3PreLex12curFilelinepEv.exit569, %_ZN8V3PreLex12curFilelinepEv.exit568, %_ZN8V3PreLex12curFilelinepEv.exit558, %_ZN8V3PreLex12curFilelinepEv.exit557, %_ZN8V3PreLex12curFilelinepEv.exit554, %_ZN8V3PreLex12curFilelinepEv.exit537, %_ZN8V3PreLex12curFilelinepEv.exit534, %bb.re, %_ZN8V3PreLex12curFilelinepEv.exit529, %_ZN8V3PreLex12curFilelinepEv.exit528, %_ZN8V3PreLex12curFilelinepEv.exit527, %_ZN8V3PreLex12curFilelinepEv.exit524, %_ZN8V3PreLex12curFilelinepEv.exit523, %_ZN8V3PreLex12curFilelinepEv.exit522, %_ZN8V3PreLex12curFilelinepEv.exit521, %_ZN8V3PreLex12curFilelinepEv.exit520, %_ZN8V3PreLex12curFilelinepEv.exit517, %_ZN8V3PreLex12curFilelinepEv.exit516, %_ZN8V3PreLex12curFilelinepEv.exit515, %_ZN8V3PreLex12curFilelinepEv.exit514, %_ZN8V3PreLex12curFilelinepEv.exit513, %_ZN8V3PreLex12curFilelinepEv.exit508, %_ZN8V3PreLex12curFilelinepEv.exit507, %_ZN8V3PreLex12curFilelinepEv.exit506, %_ZN8V3PreLex12curFilelinepEv.exit505, %_ZN8V3PreLex12curFilelinepEv.exit504, %_ZN8V3PreLex12curFilelinepEv.exit503, %_ZN8V3PreLex12curFilelinepEv.exit502, %_ZN8V3PreLex12curFilelinepEv.exit501, %_ZN8V3PreLex12curFilelinepEv.exit500, %_ZN8V3PreLex12curFilelinepEv.exit499, %_ZN8V3PreLex12curFilelinepEv.exit498, %_ZN8V3PreLex12curFilelinepEv.exit494, %_ZN8V3PreLex12curFilelinepEv.exit489, %_ZN8V3PreLex12curFilelinepEv.exit488, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475, %_ZN8V3PreLex12curFilelinepEv.exit470, %bb.if, %_ZN8V3PreLex12curFilelinepEv.exit469, %bb.hj, %bb.ga, %_ZN8V3PreLex12curFilelinepEv.exit435, %_ZN8V3PreLex12curFilelinepEv.exit434, %_ZN8V3PreLex12curFilelinepEv.exit433, %_ZN8V3PreLex12curFilelinepEv.exit432, %_ZN8V3PreLex12curFilelinepEv.exit431, %_ZN8V3PreLex12curFilelinepEv.exit430, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426, %_ZN8V3PreLex12curFilelinepEv.exit421, %bb.el, %_ZN8V3PreLex12curFilelinepEv.exit386, %_ZN8V3PreLex12curFilelinepEv.exit385, %_ZN8V3PreLex12curFilelinepEv.exit384, %_ZN8V3PreLex12curFilelinepEv.exit383, %_ZN8V3PreLex12curFilelinepEv.exit382, %_ZN8V3PreLex12curFilelinepEv.exit381, %_ZN8V3PreLex12curFilelinepEv.exit380, %_ZN8V3PreLex12curFilelinepEv.exit379, %_ZN8V3PreLex12curFilelinepEv.exit378, %_ZN8V3PreLex12curFilelinepEv.exit377, %_ZN8V3PreLex12curFilelinepEv.exit376, %_ZN8V3PreLex12curFilelinepEv.exit375, %_ZN8V3PreLex12curFilelinepEv.exit374, %_ZN8V3PreLex12curFilelinepEv.exit
  %.0 = phi i32 [ 305, %_ZN8V3PreLex12curFilelinepEv.exit ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit374 ], [ 264, %_ZN8V3PreLex12curFilelinepEv.exit375 ], [ 261, %_ZN8V3PreLex12curFilelinepEv.exit376 ], [ 262, %_ZN8V3PreLex12curFilelinepEv.exit377 ], [ 263, %_ZN8V3PreLex12curFilelinepEv.exit378 ], [ 259, %_ZN8V3PreLex12curFilelinepEv.exit379 ], [ 257, %_ZN8V3PreLex12curFilelinepEv.exit380 ], [ 258, %_ZN8V3PreLex12curFilelinepEv.exit381 ], [ 256, %_ZN8V3PreLex12curFilelinepEv.exit382 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit383 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit384 ], [ 260, %_ZN8V3PreLex12curFilelinepEv.exit385 ], [ 265, %_ZN8V3PreLex12curFilelinepEv.exit386 ], [ 304, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit464 ], [ %., %_ZN8V3PreLex12curFilelinepEv.exit387 ], [ 304, %bb.el ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit421 ], [ 304, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit426 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit430 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit431 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit432 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit433 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit434 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit435 ], [ 304, %bb.ga ], [ 304, %bb.hj ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit632 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit460 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit469 ], [ 304, %bb.if ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit470 ], [ 304, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475 ], [ 301, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit488 ], [ 400, %_ZN8V3PreLex12curFilelinepEv.exit489 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit468 ], [ 400, %_ZN8V3PreLex12curFilelinepEv.exit494 ], [ 304, %bb.hy ], [ 310, %_ZN8V3PreLex12curFilelinepEv.exit498 ], [ 400, %_ZN8V3PreLex12curFilelinepEv.exit499 ], [ 311, %_ZN8V3PreLex12curFilelinepEv.exit500 ], [ 310, %_ZN8V3PreLex12curFilelinepEv.exit501 ], [ 300, %_ZN8V3PreLex12curFilelinepEv.exit502 ], [ 312, %_ZN8V3PreLex12curFilelinepEv.exit503 ], [ 306, %_ZN8V3PreLex12curFilelinepEv.exit504 ], [ 313, %_ZN8V3PreLex12curFilelinepEv.exit505 ], [ 314, %_ZN8V3PreLex12curFilelinepEv.exit506 ], [ 305, %_ZN8V3PreLex12curFilelinepEv.exit507 ], [ 305, %_ZN8V3PreLex12curFilelinepEv.exit508 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit513 ], [ 400, %_ZN8V3PreLex12curFilelinepEv.exit514 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit515 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit516 ], [ 400, %_ZN8V3PreLex12curFilelinepEv.exit517 ], [ 301, %_ZN8V3PreLex12curFilelinepEv.exit520 ], [ 305, %_ZN8V3PreLex12curFilelinepEv.exit521 ], [ 305, %_ZN8V3PreLex12curFilelinepEv.exit522 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit523 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit524 ], [ 309, %_ZN8V3PreLex12curFilelinepEv.exit527 ], [ 309, %_ZN8V3PreLex12curFilelinepEv.exit528 ], [ 309, %_ZN8V3PreLex12curFilelinepEv.exit529 ], [ 309, %bb.re ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit534 ], [ 309, %_ZN8V3PreLex12curFilelinepEv.exit537 ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit554 ], [ 302, %_ZN8V3PreLex12curFilelinepEv.exit557 ], [ 302, %_ZN8V3PreLex12curFilelinepEv.exit558 ], [ 400, %_ZN8V3PreLex12curFilelinepEv.exit568 ], [ 400, %_ZN8V3PreLex12curFilelinepEv.exit569 ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit570 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit571 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit572 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit573 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit574 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit575 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit576 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit577 ], [ 300, %_ZN8V3PreLex12curFilelinepEv.exit578 ], [ 305, %_ZN8V3PreLex12curFilelinepEv.exit579 ], [ 305, %_ZN8V3PreLex12curFilelinepEv.exit580 ], [ 304, %_ZN8V3PreLex12curFilelinepEv.exit581 ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit582 ], [ 400, %_ZN8V3PreLex12curFilelinepEv.exit585 ], [ 305, %_ZN8V3PreLex12curFilelinepEv.exit586 ], [ 310, %_ZN8V3PreLex12curFilelinepEv.exit589 ], [ 0, %bb.ae ], [ 307, %bb.aam ], [ 307, %bb.aat ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit608 ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit609 ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit610 ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit611 ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit612 ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit613 ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit614 ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit615 ], [ 305, %_ZN8V3PreLex12curFilelinepEv.exit616 ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit617 ], [ 303, %_ZN8V3PreLex12curFilelinepEv.exit618 ], [ 400, %_ZN8V3PreLex12curFilelinepEv.exit619 ], [ 306, %_ZN8V3PreLex12curFilelinepEv.exit620 ], [ 313, %_ZN8V3PreLex12curFilelinepEv.exit621 ], [ 305, %_ZN8V3PreLex12curFilelinepEv.exit622 ], [ 0, %_ZN8V3PreLex12curFilelinepEv.exit623 ], [ 300, %_ZN8V3PreLex12curFilelinepEv.exit624 ], [ 312, %_ZN8V3PreLex12curFilelinepEv.exit625 ], [ 314, %_ZN8V3PreLex12curFilelinepEv.exit626 ], [ 305, %_ZN8V3PreLex12curFilelinepEv.exit627 ], [ 0, %bb.ae ], [ 0, %bb.ae ], [ 0, %bb.ae ], [ 0, %bb.ae ], [ 0, %bb.ae ], [ 0, %bb.ae ], [ 0, %bb.ae ], [ 301, %bb.lt ], [ 301, %bb.kl ], [ 304, %bb.aad ]
  ret i32 %.0

bb.ahk:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit478, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429, %bb.em
  %.pn368.pn.pn = phi { ptr, i32 } [ %.pn368.pn, %bb.em ], [ %.pn352, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit429 ], [ %.pn350, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451 ], [ %.pn348, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit444 ], [ %.pn345, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459 ], [ %.pn342, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit467 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit478 ], [ %i.bkg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486 ]
  resume { ptr, i32 } %.pn368.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_Z22V3PreLex_create_bufferP8_IO_FILEi(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #41 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.35) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %1, ptr %i.b, align 8, !tbaa !22
  %i.c = add nsw i32 %1, 2
  %i.d = sext i32 %i.c to i64
  %i.e = tail call noalias noundef ptr @malloc(i64 noundef %i.d) #41 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !24
  %.not9 = icmp eq ptr %i.e, null
  br i1 %.not9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.35) #42
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 1, ptr %i.g, align 8, !tbaa !25
  tail call fastcc void @_ZL20V3PreLex_init_bufferP15yy_buffer_stateP8_IO_FILE(ptr noundef nonnull %i.a, ptr noundef %0)
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @_ZN8FileLine12forwardTokenEPKcmb(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL9linenoIncv() unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @_ZN8V3PreLex13s_currentLexpE, align 8, !tbaa !34 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36, !noalias !719 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44, !noalias !719
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_ZN8V3PreLex10curStreampEv.exit.i, label %_ZN8V3PreLex10curStreampEv.exit.thread.i

_ZN8V3PreLex10curStreampEv.exit.i:                ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45, !noalias !719
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 504
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.n = load i32, ptr %i.m, align 8, !tbaa !722  ; 2 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_ZN8V3PreLex12curFilelinepEv.exit.i, label %_ZN8V3PreLex10curStreampEv.exit1.i

_ZN8V3PreLex10curStreampEv.exit.thread.i:         ; preds = %bb.a
  %i.o = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.r = load i32, ptr %i.q, align 8, !tbaa !722  ; 2 uses
  %.not2.i = icmp eq i32 %i.r, 0
  br i1 %.not2.i, label %_ZN8V3PreLex12curFilelinepEv.exit.i, label %_ZN8V3PreLex10curStreampEv.exit1.i

_ZN8V3PreLex10curStreampEv.exit1.i:               ; preds = %_ZN8V3PreLex10curStreampEv.exit.thread.i, %_ZN8V3PreLex10curStreampEv.exit.i
  %i.s = phi i32 [ %i.r, %_ZN8V3PreLex10curStreampEv.exit.thread.i ], [ %i.n, %_ZN8V3PreLex10curStreampEv.exit.i ]
  %i.t = phi ptr [ %i.p, %_ZN8V3PreLex10curStreampEv.exit.thread.i ], [ %i.l, %_ZN8V3PreLex10curStreampEv.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.v = add nsw i32 %i.s, -1
  store i32 %i.v, ptr %i.u, align 8, !tbaa !722
  br label %_ZN8V3PreLex9linenoIncEv.exit

_ZN8V3PreLex12curFilelinepEv.exit.i:              ; preds = %_ZN8V3PreLex10curStreampEv.exit.thread.i, %_ZN8V3PreLex10curStreampEv.exit.i
  %i.w = phi ptr [ %i.p, %_ZN8V3PreLex10curStreampEv.exit.thread.i ], [ %i.l, %_ZN8V3PreLex10curStreampEv.exit.i ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.z = load i16, ptr %i.y, align 8, !tbaa !180  ; 2 uses
  %i.aa = icmp eq i16 %i.z, -1
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN8V3PreLex12curFilelinepEv.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !176
  %i.ad = add nsw i32 %i.ac, 65536
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !176
  br label %_ZN8FileLine9linenoIncEv.exit.i

bb.c:                                             ; preds = %_ZN8V3PreLex12curFilelinepEv.exit.i
  %i.ae = add nuw i16 %i.z, 1
  br label %_ZN8FileLine9linenoIncEv.exit.i

_ZN8FileLine9linenoIncEv.exit.i:                  ; preds = %bb.c, %bb.b
  %storemerge.i.i = phi i16 [ %i.ae, %bb.c ], [ 0, %bb.b ]
  store i16 %storemerge.i.i, ptr %i.y, align 8, !tbaa !180
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, -72057589742960641
  %i.ai = or disjoint i64 %i.ah, 4294967296
  store i64 %i.ai, ptr %i.af, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = and i32 %i.ak, -2
  %i.am = add i32 %i.al, 2
  %i.an = and i32 %i.ak, 1
  %i.ao = or disjoint i32 %i.am, %i.an
  store i32 %i.ao, ptr %i.aj, align 4
  br label %_ZN8V3PreLex9linenoIncEv.exit

_ZN8V3PreLex9linenoIncEv.exit:                    ; preds = %_ZN8V3PreLex10curStreampEv.exit1.i, %_ZN8FileLine9linenoIncEv.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8V3PreLex13lineDirectiveEPKc(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36, !noalias !723 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44, !noalias !723
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN8V3PreLex12curFilelinepEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45, !noalias !723
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 512
  br label %_ZN8V3PreLex12curFilelinepEv.exit

_ZN8V3PreLex12curFilelinepEv.exit:                ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ]
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @_ZN8FileLine13lineDirectiveEPKcRi(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !36, !noalias !726 ; 2 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !44, !noalias !726
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %_ZN8V3PreLex12curFilelinepEv.exit2

bb.c:                                             ; preds = %_ZN8V3PreLex12curFilelinepEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !45, !noalias !726
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !46
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 512
  br label %_ZN8V3PreLex12curFilelinepEv.exit2

_ZN8V3PreLex12curFilelinepEv.exit2:               ; preds = %_ZN8V3PreLex12curFilelinepEv.exit, %bb.c
  %i.x = phi ptr [ %i.w, %bb.c ], [ %i.p, %_ZN8V3PreLex12curFilelinepEv.exit ]
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !49
  %i.ab = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8FileLine8filenameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.aa)
  tail call void @_ZN6V3File12addSrcDependERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL13yy_push_statei(i32 noundef range(i32 1, 21) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !12 ; 3 uses
  %i.b = load i32, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12 ; 2 uses
  %.not = icmp slt i32 %i.a, %i.b
  %.pre = load ptr, ptr @_ZL14yy_start_stack, align 8, !tbaa !729 ; 3 uses
end_hunk_1
