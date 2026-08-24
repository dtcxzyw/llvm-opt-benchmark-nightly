Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3PreProc?download=true
inline.NumInlined: 6861
inline.NumDeleted: 1064
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z11V3PreLexlexv:bb.a
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
  %i.ixw = icmp ult ptr %i.ixv, %i.iwg
  br i1 %i.ixw, label %.lr.ph27.i, label %_ZL21yy_get_previous_statev.exit, !llvm.loop !709

_ZL21yy_get_previous_statev.exit:                 ; preds = %._crit_edge.i, %bb.afv
  %.017.lcssa.i = phi i32 [ %i.iwk, %bb.afv ], [ %i.ixu, %._crit_edge.i ] ; 5 uses
  %i.ixx = sext i32 %.017.lcssa.i to i64          ; 3 uses
  %i.ixy = getelementptr inbounds [4 x i8], ptr @_ZL9yy_accept, i64 %i.ixx
  %i.ixz = load i32, ptr %i.ixy, align 4, !tbaa !12
  %.not.i634 = icmp eq i32 %i.ixz, 0
  br i1 %.not.i634, label %bb.agd, label %bb.agc

bb.agc:                                           ; preds = %_ZL21yy_get_previous_statev.exit
  store i32 %.017.lcssa.i, ptr @_ZL23yy_last_accepting_state, align 4, !tbaa !12
  store ptr %i.iwg, ptr @_ZL22yy_last_accepting_cpos, align 8, !tbaa !9
  br label %bb.agd

bb.agd:                                           ; preds = %bb.agc, %_ZL21yy_get_previous_statev.exit
  %i.iya = getelementptr inbounds [4 x i8], ptr @_ZL7yy_base, i64 %i.ixx
  %i.iyb = load i32, ptr %i.iya, align 4, !tbaa !12
  %i.iyc = add nsw i32 %i.iyb, 1
  %i.iyd = sext i32 %i.iyc to i64                 ; 2 uses
  %i.iye = getelementptr inbounds [4 x i8], ptr @_ZL6yy_chk, i64 %i.iyd
  %i.iyf = load i32, ptr %i.iye, align 4, !tbaa !12
  %.not1415.i = icmp eq i32 %i.iyf, %.017.lcssa.i
  br i1 %.not1415.i, label %_ZL16yy_try_NUL_transi.exit, label %.lr.ph.i635

.lr.ph.i635:                                      ; preds = %bb.agd, %.lr.ph.i635
  %i.iyg = phi i64 [ %i.iyj, %.lr.ph.i635 ], [ %i.ixx, %bb.agd ]
  %i.iyh = getelementptr inbounds [4 x i8], ptr @_ZL6yy_def, i64 %i.iyg
  %i.iyi = load i32, ptr %i.iyh, align 4, !tbaa !12 ; 2 uses
  %i.iyj = sext i32 %i.iyi to i64                 ; 2 uses
  %i.iyk = getelementptr inbounds [4 x i8], ptr @_ZL7yy_base, i64 %i.iyj
  %i.iyl = load i32, ptr %i.iyk, align 4, !tbaa !12
  %i.iym = add nsw i32 %i.iyl, 1
  %i.iyn = sext i32 %i.iym to i64                 ; 2 uses
  %i.iyo = getelementptr inbounds [4 x i8], ptr @_ZL6yy_chk, i64 %i.iyn
  %i.iyp = load i32, ptr %i.iyo, align 4, !tbaa !12
  %.not14.i = icmp eq i32 %i.iyp, %i.iyi
  br i1 %.not14.i, label %_ZL16yy_try_NUL_transi.exit, label %.lr.ph.i635, !llvm.loop !710

_ZL16yy_try_NUL_transi.exit:                      ; preds = %.lr.ph.i635, %bb.agd
  %.lcssa.i637 = phi i64 [ %i.iyd, %bb.agd ], [ %i.iyn, %.lr.ph.i635 ]
  %i.iyq = getelementptr inbounds [4 x i8], ptr @_ZL6yy_nxt, i64 %.lcssa.i637
  %i.iyr = load i32, ptr %i.iyq, align 4, !tbaa !12 ; 2 uses
  switch i32 %i.iyr, label %bb.age [
    i32 695, label %.preheader.outer.backedge
    i32 0, label %.preheader.outer.backedge
  ]

bb.age:                                           ; preds = %_ZL16yy_try_NUL_transi.exit
  %i.iys = getelementptr inbounds nuw i8, ptr %i.iwg, i64 1 ; 2 uses
  store ptr %i.iys, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !9
  br label %.loopexit688.backedge

bb.agf:                                           ; preds = %bb.afu
  %i.iyt = load ptr, ptr @V3PreLextext, align 8, !tbaa !9 ; 8 uses
  %i.iyu = getelementptr i8, ptr %i.ivy, i64 1
  %i.iyv = icmp ugt ptr %i.ivt, %i.iyu
  br i1 %i.iyv, label %bb.agg, label %bb.agh

bb.agg:                                           ; preds = %bb.agf
  call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.237) #42
  unreachable

bb.agh:                                           ; preds = %bb.agf
  %i.iyw = getelementptr inbounds nuw i8, ptr %i.ivk, i64 52
  %i.iyx = load i32, ptr %i.iyw, align 4, !tbaa !711
  %i.iyy = icmp eq i32 %i.iyx, 0
  %i.iyz = ptrtoint ptr %i.ivt to i64             ; 2 uses
  %i.iza = ptrtoint ptr %i.iyt to i64             ; 3 uses
  br i1 %i.iyy, label %bb.agi, label %bb.agj

bb.agi:                                           ; preds = %bb.agh
  %i.izb = load i32, ptr @_ZL11yy_more_len, align 4, !tbaa !12
  %i.izc = sext i32 %i.izb to i64                 ; 3 uses
  %i.izd = add i64 %i.iza, %i.izc
  %i.ize = sub i64 %i.iyz, %i.izd
  %i.izf = icmp eq i64 %i.ize, 1
  br i1 %i.izf, label %_ZL21yy_get_previous_statev.exit654, label %_ZL18yy_get_next_bufferv.exit.thread681

bb.agj:                                           ; preds = %bb.agh
  %i.izg = xor i64 %i.iza, -1
  %i.izh = add i64 %i.izg, %i.iyz                 ; 8 uses
  %i.izi = trunc i64 %i.izh to i32                ; 9 uses
  %i.izj = icmp sgt i32 %i.izi, 0
  br i1 %i.izj, label %iter.check, label %._crit_edge.i638

iter.check:                                       ; preds = %bb.agj
  %i.izk = and i64 %i.izh, 2147483647             ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.izk, 4
  %i.izl = sub i64 %i.iza, %i.ivw
  %diff.check = icmp ugt i64 %i.izl, -32
  %or.cond2966 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond2966, label %.lr.ph.i640.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2951 = icmp samesign ult i64 %i.izk, 32
  br i1 %min.iters.check2951, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.izm = and i64 %i.izh, 28
  %n.vec = and i64 %i.izh, 2147483616             ; 6 uses
  %i.izn = trunc nuw nsw i64 %n.vec to i32
  %i.izo = getelementptr i8, ptr %i.iyt, i64 %n.vec
  %i.izp = getelementptr i8, ptr %i.ivv, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.iyt, i64 %index ; 2 uses
  %next.gep2952 = getelementptr i8, ptr %i.ivv, i64 %index ; 2 uses
  %i.izq = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !29
  %wide.load2953 = load <16 x i8>, ptr %i.izq, align 1, !tbaa !29
  %i.izr = getelementptr i8, ptr %next.gep2952, i64 16
  store <16 x i8> %wide.load, ptr %next.gep2952, align 1, !tbaa !29
  store <16 x i8> %wide.load2953, ptr %i.izr, align 1, !tbaa !29
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.izs = icmp eq i64 %index.next, %n.vec
  br i1 %i.izs, label %middle.block, label %vector.body, !llvm.loop !712

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.izk, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.izm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i640.preheader, label %vec.epilog.ph, !prof !715

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec2956 = and i64 %i.izh, 2147483644         ; 5 uses
  %i.izt = trunc nuw nsw i64 %n.vec2956 to i32
  %i.izu = getelementptr i8, ptr %i.iyt, i64 %n.vec2956
  %i.izv = getelementptr i8, ptr %i.ivv, i64 %n.vec2956
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2957 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2961, %vec.epilog.vector.body ] ; 3 uses
  %next.gep2958 = getelementptr i8, ptr %i.iyt, i64 %index2957
  %next.gep2959 = getelementptr i8, ptr %i.ivv, i64 %index2957
  %wide.load2960 = load <4 x i8>, ptr %next.gep2958, align 1, !tbaa !29
  store <4 x i8> %wide.load2960, ptr %next.gep2959, align 1, !tbaa !29
  %index.next2961 = add nuw i64 %index2957, 4     ; 2 uses
  %i.izw = icmp eq i64 %index.next2961, %n.vec2956
  br i1 %i.izw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !716

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n2962 = icmp eq i64 %i.izk, %n.vec2956
  br i1 %cmp.n2962, label %._crit_edge.loopexit.i, label %.lr.ph.i640.preheader

.lr.ph.i640.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03357.i.ph = phi i32 [ 0, %iter.check ], [ %i.izn, %vec.epilog.iter.check ], [ %i.izt, %vec.epilog.middle.block ]
  %.03456.i.ph = phi ptr [ %i.iyt, %iter.check ], [ %i.izo, %vec.epilog.iter.check ], [ %i.izu, %vec.epilog.middle.block ]
  %.03555.i.ph = phi ptr [ %i.ivv, %iter.check ], [ %i.izp, %vec.epilog.iter.check ], [ %i.izv, %vec.epilog.middle.block ]
  br label %.lr.ph.i640

.lr.ph.i640:                                      ; preds = %.lr.ph.i640.preheader, %.lr.ph.i640
  %.03357.i = phi i32 [ %i.jaa, %.lr.ph.i640 ], [ %.03357.i.ph, %.lr.ph.i640.preheader ]
  %.03456.i = phi ptr [ %i.izx, %.lr.ph.i640 ], [ %.03456.i.ph, %.lr.ph.i640.preheader ] ; 2 uses
  %.03555.i = phi ptr [ %i.izz, %.lr.ph.i640 ], [ %.03555.i.ph, %.lr.ph.i640.preheader ] ; 2 uses
  %i.izx = getelementptr inbounds nuw i8, ptr %.03456.i, i64 1
  %i.izy = load i8, ptr %.03456.i, align 1, !tbaa !29
  %i.izz = getelementptr inbounds nuw i8, ptr %.03555.i, i64 1
  store i8 %i.izy, ptr %.03555.i, align 1, !tbaa !29
  %i.jaa = add nuw nsw i32 %.03357.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.jaa, %i.izi
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i640, !llvm.loop !717

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i640, %vec.epilog.middle.block, %middle.block
  %.pre.i = load ptr, ptr %i.ivj, align 8, !tbaa !20 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.i, i64 56
  %.pre1520 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !707
  br label %._crit_edge.i638

._crit_edge.i638:                                 ; preds = %._crit_edge.loopexit.i, %bb.agj
  %i.jab = phi i32 [ %.pre1520, %._crit_edge.loopexit.i ], [ %i.ivr, %bb.agj ]
  %i.jac = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.ivk, %bb.agj ] ; 5 uses
  %i.jad = icmp eq i32 %i.jab, 2
  br i1 %i.jad, label %.thread48.i, label %bb.agk

.thread48.i:                                      ; preds = %._crit_edge.i638
  store i32 0, ptr @_ZL10yy_n_chars, align 4, !tbaa !12
  %i.jae = getelementptr inbounds nuw i8, ptr %i.jac, i64 28
  store i32 0, ptr %i.jae, align 4, !tbaa !26
  br label %bb.agn

bb.agk:                                           ; preds = %._crit_edge.i638
  %i.jaf = xor i32 %i.izi, -1                     ; 2 uses
  %.pn.in58.i = getelementptr inbounds nuw i8, ptr %i.jac, i64 24
  %.pn59.i = load i32, ptr %.pn.in58.i, align 8, !tbaa !22 ; 2 uses
  %.060.i = add i32 %.pn59.i, %i.jaf              ; 2 uses
  %i.jag = icmp slt i32 %.060.i, 1
  br i1 %i.jag, label %.lr.ph62.i, label %._crit_edge63.i

.lr.ph62.i:                                       ; preds = %bb.agk, %bb.agm
  %i.jah = phi i32 [ %.pn.i, %bb.agm ], [ %.pn59.i, %bb.agk ] ; 4 uses
  %i.jai = phi ptr [ %i.jbb, %bb.agm ], [ %i.jac, %bb.agk ] ; 3 uses
  %i.jaj = phi ptr [ %i.jba, %bb.agm ], [ %i.ivt, %bb.agk ]
  %i.jak = getelementptr inbounds nuw i8, ptr %i.jai, i64 8 ; 3 uses
  %i.jal = load ptr, ptr %i.jak, align 8, !tbaa !24 ; 2 uses
  %i.jam = ptrtoint ptr %i.jaj to i64
  %i.jan = ptrtoint ptr %i.jal to i64
  %i.jao = sub i64 %i.jam, %i.jan
  %i.jap = getelementptr inbounds nuw i8, ptr %i.jai, i64 32
  %i.jaq = load i32, ptr %i.jap, align 8, !tbaa !25
  %.not.i639 = icmp eq i32 %i.jaq, 0
  br i1 %.not.i639, label %.thread.i, label %bb.agl

.thread.i:                                        ; preds = %.lr.ph62.i
  store ptr null, ptr %i.jak, align 8, !tbaa !24
  br label %.loopexit.i

bb.agl:                                           ; preds = %.lr.ph62.i
  %i.jar = getelementptr inbounds nuw i8, ptr %i.jai, i64 24
  %i.jas = icmp slt i32 %i.jah, 1
  %i.jat = shl nuw nsw i32 %i.jah, 1
  %.nonneg.i = sub i32 0, %i.jah
  %i.jau = lshr i32 %.nonneg.i, 3
  %i.jav = sub nsw i32 %i.jah, %i.jau
  %storemerge42.i = select i1 %i.jas, i32 %i.jav, i32 %i.jat ; 2 uses
  store i32 %storemerge42.i, ptr %i.jar, align 8, !tbaa !22
  %i.jaw = add nsw i32 %storemerge42.i, 2
  %i.jax = sext i32 %i.jaw to i64
  %i.jay = call noalias noundef ptr @realloc(ptr noundef %i.jal, i64 noundef %i.jax) #43 ; 3 uses
  store ptr %i.jay, ptr %i.jak, align 8, !tbaa !24
  %.not43.i = icmp eq ptr %i.jay, null
  br i1 %.not43.i, label %.loopexit.i, label %bb.agm

.loopexit.i:                                      ; preds = %bb.agl, %.thread.i
  call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.238) #42
  unreachable

bb.agm:                                           ; preds = %bb.agl
  %sext44.i = shl i64 %i.jao, 32
  %i.jaz = ashr exact i64 %sext44.i, 32
  %i.jba = getelementptr inbounds i8, ptr %i.jay, i64 %i.jaz ; 2 uses
  store ptr %i.jba, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !9
  %i.jbb = load ptr, ptr %i.ivj, align 8, !tbaa !20 ; 3 uses
  %.pn.in.i = getelementptr inbounds nuw i8, ptr %i.jbb, i64 24
  %.pn.i = load i32, ptr %.pn.in.i, align 8, !tbaa !22 ; 2 uses
  %.0.i = add i32 %.pn.i, %i.jaf                  ; 2 uses
  %i.jbc = icmp slt i32 %.0.i, 1
  br i1 %i.jbc, label %.lr.ph62.i, label %._crit_edge63.i, !llvm.loop !718

._crit_edge63.i:                                  ; preds = %bb.agm, %bb.agk
  %i.jbd = phi ptr [ %i.jac, %bb.agk ], [ %i.jbb, %bb.agm ]
  %.0.lcssa.i = phi i32 [ %.060.i, %bb.agk ], [ %.0.i, %bb.agm ]
  %i.jbe = call i32 @llvm.umin.i32(i32 %.0.lcssa.i, i32 8192)
  %i.jbf = load ptr, ptr @_ZN8V3PreLex13s_currentLexpE, align 8, !tbaa !34
  %i.jbg = getelementptr inbounds nuw i8, ptr %i.jbd, i64 8
  %i.jbh = load ptr, ptr %i.jbg, align 8, !tbaa !24
  %sext.i = shl i64 %i.izh, 32
  %i.jbi = ashr exact i64 %sext.i, 32
  %i.jbj = getelementptr inbounds i8, ptr %i.jbh, i64 %i.jbi
  %i.jbk = zext nneg i32 %i.jbe to i64
  %i.jbl = call noundef i64 @_ZN8V3PreLex10inputToLexEPcm(ptr noundef nonnull align 8 dereferenceable(264) %i.jbf, ptr noundef %i.jbj, i64 noundef %i.jbk)
  %i.jbm = trunc i64 %i.jbl to i32                ; 5 uses
  store i32 %i.jbm, ptr @_ZL10yy_n_chars, align 4, !tbaa !12
  %i.jbn = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !15 ; 3 uses
  %i.jbo = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !18 ; 3 uses
  %i.jbp = getelementptr inbounds nuw [8 x i8], ptr %i.jbn, i64 %i.jbo
  %i.jbq = load ptr, ptr %i.jbp, align 8, !tbaa !20 ; 5 uses
  %i.jbr = getelementptr inbounds nuw i8, ptr %i.jbq, i64 28
  store i32 %i.jbm, ptr %i.jbr, align 4, !tbaa !26
  %i.jbs = icmp eq i32 %i.jbm, 0
  br i1 %i.jbs, label %bb.agn, label %bb.ago

bb.agn:                                           ; preds = %._crit_edge63.i, %.thread48.i
  %i.jbt = phi ptr [ %i.jac, %.thread48.i ], [ %i.jbq, %._crit_edge63.i ] ; 3 uses
  %i.jbu = phi i64 [ %i.ivi, %.thread48.i ], [ %i.jbo, %._crit_edge63.i ]
  %i.jbv = phi ptr [ %i.ivh, %.thread48.i ], [ %i.jbn, %._crit_edge63.i ]
  %i.jbw = load i32, ptr @_ZL11yy_more_len, align 4, !tbaa !12
  %i.jbx = icmp eq i32 %i.jbw, %i.izi
  br i1 %i.jbx, label %bb.agq, label %bb.agp

bb.ago:                                           ; preds = %._crit_edge63.i
  %i.jby = ptrtoint ptr %.3115 to i64
  %i.jbz = ptrtoint ptr %i.ivf to i64
  %i.jca = sub i64 %i.jby, %i.jbz
  %i.jcb = trunc i64 %i.jca to i32
  %i.jcc = add nsw i32 %i.jcb, -1                 ; 2 uses
  %i.jcd = add nsw i32 %i.jbm, %i.izi             ; 4 uses
  %i.jce = getelementptr inbounds nuw [8 x i8], ptr %i.jbn, i64 %i.jbo ; 3 uses
  %i.jcf = getelementptr inbounds nuw i8, ptr %i.jbq, i64 24
  %i.jcg = load i32, ptr %i.jcf, align 8, !tbaa !22
  %i.jch = icmp sgt i32 %i.jcd, %i.jcg
  br i1 %i.jch, label %bb.agr, label %._crit_edge72.i.jt0

bb.agp:                                           ; preds = %bb.agn
  %i.jci = getelementptr inbounds nuw i8, ptr %i.jbt, i64 56
  store i32 2, ptr %i.jci, align 8, !tbaa !707
  %i.jcj = getelementptr inbounds nuw [8 x i8], ptr %i.jbv, i64 %i.jbu ; 3 uses
  %i.jck = getelementptr inbounds nuw i8, ptr %i.jbt, i64 24
  %i.jcl = load i32, ptr %i.jck, align 8, !tbaa !22
  %i.jcm = icmp slt i32 %i.jcl, %i.izi
  %i.jcn = getelementptr inbounds nuw i8, ptr %i.jbt, i64 8
  %i.jco = load ptr, ptr %i.jcn, align 8, !tbaa !24 ; 2 uses
  br i1 %i.jcm, label %bb.ags, label %_ZL18yy_get_next_bufferv.exit.jt2

bb.agq:                                           ; preds = %bb.agn
  %i.jcp = load ptr, ptr @V3PreLexin, align 8, !tbaa !13
  call void @_Z15V3PreLexrestartP8_IO_FILE(ptr noundef %i.jcp)
  %.pre67.i = load i32, ptr @_ZL10yy_n_chars, align 4, !tbaa !12 ; 2 uses
  %.pre68.i = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !15 ; 2 uses
  %.pre69.i = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !18 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %.pre68.i, i64 %.pre69.i
  %.pre70.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !20 ; 3 uses
  %i.jcq = add nsw i32 %.pre67.i, %i.izi          ; 4 uses
  %i.jcr = getelementptr inbounds nuw [8 x i8], ptr %.pre68.i, i64 %.pre69.i ; 3 uses
  %i.jcs = getelementptr inbounds nuw i8, ptr %.pre70.i, i64 24
  %i.jct = load i32, ptr %i.jcs, align 8, !tbaa !22
  %i.jcu = icmp sgt i32 %i.jcq, %i.jct
  br i1 %i.jcu, label %bb.agt, label %._crit_edge72.i.jt1

._crit_edge72.i.jt0:                              ; preds = %bb.ago
  %.phi.trans.insert73.i.jt0 = getelementptr inbounds nuw i8, ptr %i.jbq, i64 8
  %.pre74.i.jt0 = load ptr, ptr %.phi.trans.insert73.i.jt0, align 8, !tbaa !24
  br label %_ZL18yy_get_next_bufferv.exit.jt0

._crit_edge72.i.jt1:                              ; preds = %bb.agq
  %.phi.trans.insert73.i.jt1 = getelementptr inbounds nuw i8, ptr %.pre70.i, i64 8
  %.pre74.i.jt1 = load ptr, ptr %.phi.trans.insert73.i.jt1, align 8, !tbaa !24
  br label %_ZL18yy_get_next_bufferv.exit.jt1

bb.agr:                                           ; preds = %bb.ago
  %i.jcv = ashr i32 %i.jbm, 1
  %i.jcw = add nsw i32 %i.jcd, %i.jcv             ; 2 uses
  %i.jcx = getelementptr inbounds nuw i8, ptr %i.jbq, i64 8
  %i.jcy = load ptr, ptr %i.jcx, align 8, !tbaa !24
  %i.jcz = sext i32 %i.jcw to i64
  %i.jda = call noalias noundef ptr @realloc(ptr noundef %i.jcy, i64 noundef %i.jcz) #43 ; 3 uses
  %i.jdb = load ptr, ptr %i.jce, align 8, !tbaa !20 ; 2 uses
  %i.jdc = getelementptr inbounds nuw i8, ptr %i.jdb, i64 8
  store ptr %i.jda, ptr %i.jdc, align 8, !tbaa !24
  %.not45.i.jt0 = icmp eq ptr %i.jda, null
  br i1 %.not45.i.jt0, label %.loopexit2009, label %bb.agu

bb.ags:                                           ; preds = %bb.agp
  %sext = shl i64 %i.izh, 32
  %i.jdd = ashr exact i64 %sext, 32
  %i.jde = call noalias noundef ptr @realloc(ptr noundef %i.jco, i64 noundef %i.jdd) #43 ; 3 uses
  %i.jdf = load ptr, ptr %i.jcj, align 8, !tbaa !20 ; 2 uses
  %i.jdg = getelementptr inbounds nuw i8, ptr %i.jdf, i64 8
  store ptr %i.jde, ptr %i.jdg, align 8, !tbaa !24
  %.not45.i.jt2 = icmp eq ptr %i.jde, null
  br i1 %.not45.i.jt2, label %.loopexit2009, label %bb.agv

bb.agt:                                           ; preds = %bb.agq
  %i.jdh = ashr i32 %.pre67.i, 1
  %i.jdi = add nsw i32 %i.jcq, %i.jdh             ; 2 uses
  %i.jdj = getelementptr inbounds nuw i8, ptr %.pre70.i, i64 8
  %i.jdk = load ptr, ptr %i.jdj, align 8, !tbaa !24
  %i.jdl = sext i32 %i.jdi to i64
  %i.jdm = call noalias noundef ptr @realloc(ptr noundef %i.jdk, i64 noundef %i.jdl) #43 ; 3 uses
  %i.jdn = load ptr, ptr %i.jcr, align 8, !tbaa !20 ; 2 uses
  %i.jdo = getelementptr inbounds nuw i8, ptr %i.jdn, i64 8
  store ptr %i.jdm, ptr %i.jdo, align 8, !tbaa !24
  %.not45.i.jt1 = icmp eq ptr %i.jdm, null
  br i1 %.not45.i.jt1, label %.loopexit2009, label %bb.agw

.loopexit2009:                                    ; preds = %bb.agr, %bb.ags, %bb.agt
  call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.239) #42
  unreachable

bb.agu:                                           ; preds = %bb.agr
  %i.jdp = add nsw i32 %i.jcw, -2
  %i.jdq = getelementptr inbounds nuw i8, ptr %i.jdb, i64 24
  store i32 %i.jdp, ptr %i.jdq, align 8, !tbaa !22
  br label %_ZL18yy_get_next_bufferv.exit.jt0

bb.agv:                                           ; preds = %bb.ags
  %i.jdr = add nsw i32 %i.izi, -2
  %i.jds = getelementptr inbounds nuw i8, ptr %i.jdf, i64 24
  store i32 %i.jdr, ptr %i.jds, align 8, !tbaa !22
  br label %_ZL18yy_get_next_bufferv.exit.jt2

bb.agw:                                           ; preds = %bb.agt
  %i.jdt = add nsw i32 %i.jdi, -2
  %i.jdu = getelementptr inbounds nuw i8, ptr %i.jdn, i64 24
  store i32 %i.jdt, ptr %i.jdu, align 8, !tbaa !22
  br label %_ZL18yy_get_next_bufferv.exit.jt1

_ZL18yy_get_next_bufferv.exit.jt0:                ; preds = %._crit_edge72.i.jt0, %bb.agu
  %i.jdv = phi ptr [ %i.jda, %bb.agu ], [ %.pre74.i.jt0, %._crit_edge72.i.jt0 ]
  store i32 %i.jcd, ptr @_ZL10yy_n_chars, align 4, !tbaa !12
  %i.jdw = sext i32 %i.jcd to i64                 ; 2 uses
  %i.jdx = getelementptr inbounds i8, ptr %i.jdv, i64 %i.jdw
  store i8 0, ptr %i.jdx, align 1, !tbaa !29
  %i.jdy = load ptr, ptr %i.jce, align 8, !tbaa !20
  %i.jdz = getelementptr inbounds nuw i8, ptr %i.jdy, i64 8
  %i.jea = load ptr, ptr %i.jdz, align 8, !tbaa !24
  %i.jeb = getelementptr i8, ptr %i.jea, i64 %i.jdw
  %i.jec = getelementptr i8, ptr %i.jeb, i64 1
  store i8 0, ptr %i.jec, align 1, !tbaa !29
  %i.jed = load ptr, ptr %i.jce, align 8, !tbaa !20
  %i.jee = getelementptr inbounds nuw i8, ptr %i.jed, i64 8
  %i.jef = load ptr, ptr %i.jee, align 8, !tbaa !24 ; 3 uses
  store ptr %i.jef, ptr @V3PreLextext, align 8, !tbaa !9
  %i.jeg = sext i32 %i.jcc to i64
  %i.jeh = getelementptr inbounds i8, ptr %i.jef, i64 %i.jeg ; 4 uses
  store ptr %i.jeh, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !9
  %i.jei = load i32, ptr @_ZL8yy_start, align 4, !tbaa !12
  %i.jej = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !15
  %i.jek = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !18
  %i.jel = getelementptr inbounds nuw [8 x i8], ptr %i.jej, i64 %i.jek
  %i.jem = load ptr, ptr %i.jel, align 8, !tbaa !20
  %i.jen = getelementptr inbounds nuw i8, ptr %i.jem, i64 40
  %i.jeo = load i32, ptr %i.jen, align 8, !tbaa !30
  %i.jep = add nsw i32 %i.jeo, %i.jei             ; 2 uses
  %i.jeq = load i32, ptr @_ZL11yy_more_len, align 4, !tbaa !12 ; 2 uses
  %i.jer = sext i32 %i.jeq to i64
  %i.jes = getelementptr inbounds i8, ptr %i.jef, i64 %i.jer ; 3 uses
  %i.jet = icmp slt i32 %i.jeq, %i.jcc
  br i1 %i.jet, label %.lr.ph27.i642, label %.loopexit688.backedge

.loopexit688.backedge:                            ; preds = %._crit_edge.i652, %_ZL18yy_get_next_bufferv.exit.jt0, %bb.age
  %.0119.be = phi ptr [ %i.jes, %_ZL18yy_get_next_bufferv.exit.jt0 ], [ %i.iwn, %bb.age ], [ %i.jes, %._crit_edge.i652 ]
  %.0112.be = phi ptr [ %i.jeh, %_ZL18yy_get_next_bufferv.exit.jt0 ], [ %i.iys, %bb.age ], [ %i.jeh, %._crit_edge.i652 ]
  %.0111.be = phi i32 [ %i.jep, %_ZL18yy_get_next_bufferv.exit.jt0 ], [ %i.iyr, %bb.age ], [ %i.jgu, %._crit_edge.i652 ]
  br label %.loopexit688

_ZL18yy_get_next_bufferv.exit.jt2:                ; preds = %bb.agp, %bb.agv
  %i.jeu = phi ptr [ %i.jde, %bb.agv ], [ %i.jco, %bb.agp ]
  store i32 %i.izi, ptr @_ZL10yy_n_chars, align 4, !tbaa !12
  %sext2482 = shl i64 %i.izh, 32
  %23 = ashr exact i64 %sext2482, 32              ; 2 uses
  %i.jev = getelementptr inbounds i8, ptr %i.jeu, i64 %23
  store i8 0, ptr %i.jev, align 1, !tbaa !29
  %i.jew = load ptr, ptr %i.jcj, align 8, !tbaa !20
  %i.jex = getelementptr inbounds nuw i8, ptr %i.jew, i64 8
  %i.jey = load ptr, ptr %i.jex, align 8, !tbaa !24
  %i.jez = getelementptr i8, ptr %i.jey, i64 %23
  %i.jfa = getelementptr i8, ptr %i.jez, i64 1
  store i8 0, ptr %i.jfa, align 1, !tbaa !29
  %i.jfb = load ptr, ptr %i.jcj, align 8, !tbaa !20
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

_ZL18yy_get_next_bufferv.exit.jt1:                ; preds = %._crit_edge72.i.jt1, %bb.agw
  %i.jfe = phi ptr [ %i.jdm, %bb.agw ], [ %.pre74.i.jt1, %._crit_edge72.i.jt1 ]
  store i32 %i.jcq, ptr @_ZL10yy_n_chars, align 4, !tbaa !12
  %i.jff = sext i32 %i.jcq to i64                 ; 2 uses
  %i.jfg = getelementptr inbounds i8, ptr %i.jfe, i64 %i.jff
  store i8 0, ptr %i.jfg, align 1, !tbaa !29
  %i.jfh = load ptr, ptr %i.jcr, align 8, !tbaa !20
  %i.jfi = getelementptr inbounds nuw i8, ptr %i.jfh, i64 8
  %i.jfj = load ptr, ptr %i.jfi, align 8, !tbaa !24
  %i.jfk = getelementptr i8, ptr %i.jfj, i64 %i.jff
  %i.jfl = getelementptr i8, ptr %i.jfk, i64 1
  store i8 0, ptr %i.jfl, align 1, !tbaa !29
  %i.jfm = load ptr, ptr %i.jcr, align 8, !tbaa !20
  %i.jfn = getelementptr inbounds nuw i8, ptr %i.jfm, i64 8
  %i.jfo = load ptr, ptr %i.jfn, align 8, !tbaa !24 ; 2 uses
  store ptr %i.jfo, ptr @V3PreLextext, align 8, !tbaa !9
  %.pre1529 = load i32, ptr @_ZL11yy_more_len, align 4, !tbaa !12
  %.pre1542 = sext i32 %.pre1529 to i64
  br label %_ZL21yy_get_previous_statev.exit654

.lr.ph27.i642:                                    ; preds = %_ZL18yy_get_next_bufferv.exit.jt0, %._crit_edge.i652
  %.01625.i643 = phi ptr [ %i.jgv, %._crit_edge.i652 ], [ %i.jes, %_ZL18yy_get_next_bufferv.exit.jt0 ] ; 3 uses
  %.01724.i644 = phi i32 [ %i.jgu, %._crit_edge.i652 ], [ %i.jep, %_ZL18yy_get_next_bufferv.exit.jt0 ] ; 3 uses
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
  %i.jgw = icmp ult ptr %i.jgv, %i.jeh
  br i1 %i.jgw, label %.lr.ph27.i642, label %.loopexit688.backedge, !llvm.loop !709

_ZL18yy_get_next_bufferv.exit.thread681:          ; preds = %bb.agi, %_ZL18yy_get_next_bufferv.exit.jt2
  %.pre-phi1547 = phi i64 [ %.pre1546, %_ZL18yy_get_next_bufferv.exit.jt2 ], [ %i.izc, %bb.agi ]
  %.pre-phi1545 = phi i64 [ %.pre1544, %_ZL18yy_get_next_bufferv.exit.jt2 ], [ %i.ivx, %bb.agi ]
  %i.jgx = phi ptr [ %i.jfd, %_ZL18yy_get_next_bufferv.exit.jt2 ], [ %i.iyt, %bb.agi ]
  %i.jgy = phi ptr [ %.pre1526, %_ZL18yy_get_next_bufferv.exit.jt2 ], [ %i.ivv, %bb.agi ]
  %i.jgz = phi ptr [ %.pre1524, %_ZL18yy_get_next_bufferv.exit.jt2 ], [ %i.ivk, %bb.agi ]
  %i.jha = getelementptr inbounds i8, ptr %i.jgy, i64 %.pre-phi1545 ; 5 uses
  store ptr %i.jha, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !9
  %i.jhb = load i32, ptr @_ZL8yy_start, align 4, !tbaa !12
  %i.jhc = getelementptr inbounds nuw i8, ptr %i.jgz, i64 40
  %i.jhd = load i32, ptr %i.jhc, align 8, !tbaa !30
  %i.jhe = add nsw i32 %i.jhd, %i.jhb             ; 2 uses
  %i.jhf = getelementptr inbounds i8, ptr %i.jgx, i64 %.pre-phi1547 ; 4 uses
  %i.jhg = icmp ult ptr %i.jhf, %i.jha
  br i1 %i.jhg, label %.lr.ph27.i656, label %.preheader.outer.backedge

.lr.ph27.i656:                                    ; preds = %_ZL18yy_get_next_bufferv.exit.thread681, %._crit_edge.i666
  %.01625.i657 = phi ptr [ %i.jin, %._crit_edge.i666 ], [ %i.jhf, %_ZL18yy_get_next_bufferv.exit.thread681 ] ; 3 uses
  %.01724.i658 = phi i32 [ %i.jim, %._crit_edge.i666 ], [ %i.jhe, %_ZL18yy_get_next_bufferv.exit.thread681 ] ; 3 uses
  %i.jhh = load i8, ptr %.01625.i657, align 1, !tbaa !29 ; 2 uses
  %.not.i659 = icmp eq i8 %i.jhh, 0
  br i1 %.not.i659, label %bb.ahe, label %bb.ahd

bb.ahd:                                           ; preds = %.lr.ph27.i656
  %i.jhi = zext i8 %i.jhh to i64
  %i.jhj = getelementptr inbounds nuw i8, ptr @_ZL5yy_ec, i64 %i.jhi
  %i.jhk = load i8, ptr %i.jhj, align 1, !tbaa !29
  br label %bb.ahe

bb.ahe:                                           ; preds = %bb.ahd, %.lr.ph27.i656
  %i.jhl = phi i8 [ %i.jhk, %bb.ahd ], [ 1, %.lr.ph27.i656 ] ; 2 uses
  %i.jhm = sext i32 %.01724.i658 to i64           ; 3 uses
  %i.jhn = getelementptr inbounds [4 x i8], ptr @_ZL9yy_accept, i64 %i.jhm
  %i.jho = load i32, ptr %i.jhn, align 4, !tbaa !12
  %.not20.i660 = icmp eq i32 %i.jho, 0
  br i1 %.not20.i660, label %bb.ahg, label %bb.ahf

bb.ahf:                                           ; preds = %bb.ahe
  store i32 %.01724.i658, ptr @_ZL23yy_last_accepting_state, align 4, !tbaa !12
  store ptr %.01625.i657, ptr @_ZL22yy_last_accepting_cpos, align 8, !tbaa !9
  br label %bb.ahg

bb.ahg:                                           ; preds = %bb.ahf, %bb.ahe
  %i.jhp = getelementptr inbounds [4 x i8], ptr @_ZL7yy_base, i64 %i.jhm
  %i.jhq = load i32, ptr %i.jhp, align 4, !tbaa !12
  %i.jhr = zext i8 %i.jhl to i32
  %i.jhs = add nsw i32 %i.jhq, %i.jhr
  %i.jht = sext i32 %i.jhs to i64                 ; 2 uses
  %i.jhu = getelementptr inbounds [4 x i8], ptr @_ZL6yy_chk, i64 %i.jht
  %i.jhv = load i32, ptr %i.jhu, align 4, !tbaa !12
  %.not2122.i661 = icmp eq i32 %i.jhv, %.01724.i658
  br i1 %.not2122.i661, label %._crit_edge.i666, label %.lr.ph.i662

.lr.ph.i662:                                      ; preds = %bb.ahg, %bb.ahi
  %i.jhw = phi i64 [ %i.jid, %bb.ahi ], [ %i.jhm, %bb.ahg ]
  %.023.i663 = phi i8 [ %.1.i664, %bb.ahi ], [ %i.jhl, %bb.ahg ] ; 2 uses
  %i.jhx = getelementptr inbounds [4 x i8], ptr @_ZL6yy_def, i64 %i.jhw
  %i.jhy = load i32, ptr %i.jhx, align 4, !tbaa !12 ; 3 uses
  %i.jhz = icmp sgt i32 %i.jhy, 695
  br i1 %i.jhz, label %bb.ahh, label %bb.ahi

bb.ahh:                                           ; preds = %.lr.ph.i662
  %i.jia = zext i8 %.023.i663 to i64
  %i.jib = getelementptr inbounds nuw i8, ptr @_ZL7yy_meta, i64 %i.jia
  %i.jic = load i8, ptr %i.jib, align 1, !tbaa !29
  br label %bb.ahi

bb.ahi:                                           ; preds = %bb.ahh, %.lr.ph.i662
  %.1.i664 = phi i8 [ %i.jic, %bb.ahh ], [ %.023.i663, %.lr.ph.i662 ] ; 2 uses
  %i.jid = sext i32 %i.jhy to i64                 ; 2 uses
  %i.jie = getelementptr inbounds [4 x i8], ptr @_ZL7yy_base, i64 %i.jid
  %i.jif = load i32, ptr %i.jie, align 4, !tbaa !12
  %i.jig = zext i8 %.1.i664 to i32
  %i.jih = add nsw i32 %i.jif, %i.jig
  %i.jii = sext i32 %i.jih to i64                 ; 2 uses
  %i.jij = getelementptr inbounds [4 x i8], ptr @_ZL6yy_chk, i64 %i.jii
  %i.jik = load i32, ptr %i.jij, align 4, !tbaa !12
  %.not21.i665 = icmp eq i32 %i.jik, %i.jhy
  br i1 %.not21.i665, label %._crit_edge.i666, label %.lr.ph.i662, !llvm.loop !708

._crit_edge.i666:                                 ; preds = %bb.ahi, %bb.ahg
  %.lcssa.i667 = phi i64 [ %i.jht, %bb.ahg ], [ %i.jii, %bb.ahi ]
  %i.jil = getelementptr inbounds [4 x i8], ptr @_ZL6yy_nxt, i64 %.lcssa.i667
  %i.jim = load i32, ptr %i.jil, align 4, !tbaa !12 ; 2 uses
  %i.jin = getelementptr inbounds nuw i8, ptr %.01625.i657, i64 1 ; 2 uses
  %i.jio = icmp ult ptr %i.jin, %i.jha
  br i1 %i.jio, label %.lr.ph27.i656, label %.preheader.outer.backedge, !llvm.loop !709

_ZL21yy_get_previous_statev.exit654:              ; preds = %bb.agi, %_ZL18yy_get_next_bufferv.exit.jt1
  %.pre-phi1543 = phi i64 [ %.pre1542, %_ZL18yy_get_next_bufferv.exit.jt1 ], [ %i.izc, %bb.agi ]
  %i.jip = phi ptr [ %i.jfo, %_ZL18yy_get_next_bufferv.exit.jt1 ], [ %i.iyt, %bb.agi ]
  %i.jiq = getelementptr inbounds i8, ptr %i.jip, i64 %.pre-phi1543
  store ptr %i.jiq, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !9
  %i.jir = load i32, ptr @_ZL8yy_start, align 4, !tbaa !12
  %i.jis = add nsw i32 %i.jir, -1
  %i.jit = sdiv i32 %i.jis, 2
  %i.jiu = add nsw i32 %i.jit, 180
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
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.b, 25                     ; 2 uses
  store i32 %i.c, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 2                      ; 2 uses
  %.not4 = icmp eq ptr %.pre, null
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias noundef ptr @malloc(i64 noundef %i.e) #41
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.pre, i64 noundef %i.e) #43
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ] ; 3 uses
  store ptr %storemerge, ptr @_ZL14yy_start_stack, align 8, !tbaa !729
  %.not5 = icmp eq ptr %storemerge, null
  br i1 %.not5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.242) #42
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.a
  %i.h = phi ptr [ %storemerge, %bb.e ], [ %.pre, %bb.a ]
  %i.i = load i32, ptr @_ZL8yy_start, align 4, !tbaa !12
  %i.j = add nsw i32 %i.i, -1
  %i.k = sdiv i32 %i.j, 2
  %i.l = add nsw i32 %i.a, 1
  store i32 %i.l, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !12
  %i.m = sext i32 %i.a to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.m
  store i32 %i.k, ptr %i.n, align 4, !tbaa !12
  %i.o = shl nuw nsw i32 %0, 1
  %i.p = or disjoint i32 %i.o, 1
  store i32 %i.p, ptr @_ZL8yy_start, align 4, !tbaa !12
  ret void
}

declare void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32)) #5

declare noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8) #5

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev() #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7V3Error1sEv.exit, !prof !262

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #44
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7V3Error1sEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #44
  br label %_ZN7V3Error1sEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #44
  resume { ptr, i32 } %i.e

_ZN7V3Error1sEv.exit:                             ; preds = %bb.a, %bb.b, %bb.d
  %i.f = tail call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.235, ptr nonnull @.str.236, i32 481, ptr null)
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !263
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.509) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #44 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  store i64 %i.d, ptr %i.a, align 8, !tbaa !18
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !128
  %i.g = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.g, ptr %i.b, align 8, !tbaa !29
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !29
  store i8 %i.i, ptr %i.h, align 1, !tbaa !29
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !264
  %i.l = load ptr, ptr %0, align 8, !tbaa !128
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #4 align 2

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK8FileLine11filenameEscB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #2 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8FileLine8filenameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(48) %1)
  tail call void @_ZN7VString8quoteAnyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 noundef signext 92, i8 noundef signext 92)
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #2 align 2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK8FileLine10lastLinenoEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !176
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i16, ptr %i.c, align 8, !tbaa !180
  %i.e = zext i16 %i.d to i32
  %i.f = add nsw i32 %i.b, %i.e
  ret i32 %i.f
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL14V3PreLexerrorfPKc(ptr noundef %0) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr @_ZN8V3PreLex13s_currentLexpE, align 8, !tbaa !34 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36, !noalias !731 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44, !noalias !731
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN8V3PreLex12curFilelinepEv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45, !noalias !731
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 512
  br label %_ZN8V3PreLex12curFilelinepEv.exit

_ZN8V3PreLex12curFilelinepEv.exit:                ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ %i.c, %bb.a ]
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.p = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.q = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.c, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, !prof !262

bb.c:                                             ; preds = %_ZN8V3PreLex12curFilelinepEv.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #44
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = tail call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #44 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #44
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op
end_hunk_0
begin_hunk_1_@_Z19V3PreLex_scan_bytesPKci:bb.a
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.37) #42
  unreachable

._crit_edge:                                      ; preds = %.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr align 1 %0, i64 %i.d, i1 false), !tbaa !29
  %i.g = sext i32 %1 to i64
  %i.h = getelementptr i8, ptr %i.c, i64 %i.g     ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !29
  store i8 0, ptr %i.h, align 1, !tbaa !29
  %i.j = icmp ugt i32 %1, -3
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.k = tail call noalias noundef dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #41 ; 13 uses
  %.not24.i = icmp eq ptr %i.k, null
  br i1 %.not24.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.36) #42
  unreachable

bb.e:                                             ; preds = %._crit_edge
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.38) #42
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i32 %1, ptr %i.l, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.c, ptr %i.m, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.c, ptr %i.n, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  store i32 0, ptr %i.o, align 8, !tbaa !25
  store ptr null, ptr %i.k, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  store i32 %1, ptr %i.p, align 4, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 0, ptr %i.q, align 4, !tbaa !781
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i32 1, ptr %i.r, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  store i32 0, ptr %i.s, align 4, !tbaa !711
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i32 0, ptr %i.t, align 8, !tbaa !707
  tail call void @_Z25V3PreLex_switch_to_bufferP15yy_buffer_state(ptr noundef nonnull %i.k)
  store i32 1, ptr %i.o, align 8, !tbaa !25
  ret ptr %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_Z18V3PreLexget_linenov() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @V3PreLexlineno, align 4, !tbaa !12
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_Z14V3PreLexget_inv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @V3PreLexin, align 8, !tbaa !13
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_Z15V3PreLexget_outv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @V3PreLexout, align 8, !tbaa !13
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_Z16V3PreLexget_lengv() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @V3PreLexleng, align 4, !tbaa !12
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_Z16V3PreLexget_textv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @V3PreLextext, align 8, !tbaa !9
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z18V3PreLexset_linenoi(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  store i32 %0, ptr @V3PreLexlineno, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z14V3PreLexset_inP8_IO_FILE(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  store ptr %0, ptr @V3PreLexin, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z15V3PreLexset_outP8_IO_FILE(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  store ptr %0, ptr @V3PreLexout, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_Z17V3PreLexget_debugv() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @V3PreLex_flex_debug, align 4, !tbaa !12
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_Z17V3PreLexset_debugi(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  store i32 %0, ptr @V3PreLex_flex_debug, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef i32 @_Z19V3PreLexlex_destroyv() local_unnamed_addr #18 {
bb.a:
  %.pr = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !15 ; 5 uses
  %.not7 = icmp eq ptr %.pr, null
  br i1 %.not7, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !18 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pr, i64 %.pre
  %.pre10 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !20 ; 4 uses
  %i.a = icmp eq ptr %.pre10, null
  br i1 %i.a, label %.critedge, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.preheader
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %.pr, i64 %.pre
  store ptr null, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %.pre10, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !25
  %.not7.i = icmp eq i32 %i.d, 0
  br i1 %.not7.i, label %_Z24V3PreLexpop_buffer_statev.exit, label %bb.b

bb.b:                                             ; preds = %.critedge.i
  %i.e = getelementptr inbounds nuw i8, ptr %.pre10, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  tail call void @free(ptr noundef %i.f) #44
  %.pre11 = load ptr, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !15
  %.pre12 = load i64, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !18
  br label %_Z24V3PreLexpop_buffer_statev.exit

_Z24V3PreLexpop_buffer_statev.exit:               ; preds = %.critedge.i, %bb.b
  %i.g = phi i64 [ %.pre, %.critedge.i ], [ %.pre12, %bb.b ]
  %i.h = phi ptr [ %.pr, %.critedge.i ], [ %.pre11, %bb.b ] ; 2 uses
  tail call void @free(ptr noundef nonnull %.pre10) #44
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  store ptr null, ptr %i.i, align 8, !tbaa !20
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.preheader, %_Z24V3PreLexpop_buffer_statev.exit, %bb.a
  %.lcssa = phi ptr [ null, %bb.a ], [ %i.h, %_Z24V3PreLexpop_buffer_statev.exit ], [ %.pr, %.lr.ph.preheader ]
  tail call void @free(ptr noundef %.lcssa) #44
  %i.j = load ptr, ptr @_ZL14yy_start_stack, align 8, !tbaa !729
  tail call void @free(ptr noundef %i.j) #44
  store ptr null, ptr @_ZL15yy_buffer_stack, align 8, !tbaa !15
  store i64 0, ptr @_ZL19yy_buffer_stack_top, align 8, !tbaa !18
  store i64 0, ptr @_ZL19yy_buffer_stack_max, align 8, !tbaa !18
  store ptr null, ptr @_ZL10yy_c_buf_p, align 8, !tbaa !9
  store i1 false, ptr @_ZL7yy_init, align 4
  store i32 0, ptr @_ZL8yy_start, align 4, !tbaa !12
  store i32 0, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !12
  store i32 0, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12
  store ptr null, ptr @_ZL14yy_start_stack, align 8, !tbaa !729
  store ptr null, ptr @V3PreLexin, align 8, !tbaa !13
  store ptr null, ptr @V3PreLexout, align 8, !tbaa !13
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define dso_local noalias noundef ptr @_Z15V3PreLexreallocPvm(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #20 {
bb.a:
  %i.a = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #43
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8V3PreLex15pushStateDefArgEi(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !12 ; 3 uses
  %i.b = load i32, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12 ; 2 uses
  %.not.i = icmp slt i32 %i.a, %i.b
  %.pre.i = load ptr, ptr @_ZL14yy_start_stack, align 8, !tbaa !729 ; 3 uses
  br i1 %.not.i, label %_ZL13yy_push_statei.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.b, 25                     ; 2 uses
  store i32 %i.c, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 2                      ; 2 uses
  %.not4.i = icmp eq ptr %.pre.i, null
  br i1 %.not4.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias noundef ptr @malloc(i64 noundef %i.e) #41
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.pre.i, i64 noundef %i.e) #43
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge.i = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ] ; 3 uses
  store ptr %storemerge.i, ptr @_ZL14yy_start_stack, align 8, !tbaa !729
  %.not5.i = icmp eq ptr %storemerge.i, null
  br i1 %.not5.i, label %bb.f, label %_ZL13yy_push_statei.exit

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.242) #42
  unreachable

_ZL13yy_push_statei.exit:                         ; preds = %bb.a, %bb.e
  %i.h = phi ptr [ %storemerge.i, %bb.e ], [ %.pre.i, %bb.a ]
  %i.i = load i32, ptr @_ZL8yy_start, align 4, !tbaa !12
  %i.j = add nsw i32 %i.i, -1
  %i.k = sdiv i32 %i.j, 2
  %i.l = add nsw i32 %i.a, 1
  store i32 %i.l, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !12
  %i.m = sext i32 %i.a to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.m
  store i32 %i.k, ptr %i.n, align 4, !tbaa !12
  store i32 3, ptr @_ZL8yy_start, align 4, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %1, ptr %i.o, align 8, !tbaa !286
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.r = load i64, ptr %i.q, align 8, !tbaa !264
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef 0, i64 noundef %i.r, ptr noundef nonnull @.str.2, i64 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8V3PreLex16pushStateDefFormEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !12 ; 3 uses
  %i.b = load i32, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12 ; 2 uses
  %.not.i = icmp slt i32 %i.a, %i.b
  %.pre.i = load ptr, ptr @_ZL14yy_start_stack, align 8, !tbaa !729 ; 3 uses
  br i1 %.not.i, label %_ZL13yy_push_statei.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.b, 25                     ; 2 uses
  store i32 %i.c, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 2                      ; 2 uses
  %.not4.i = icmp eq ptr %.pre.i, null
  br i1 %.not4.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias noundef ptr @malloc(i64 noundef %i.e) #41
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.pre.i, i64 noundef %i.e) #43
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge.i = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ] ; 3 uses
  store ptr %storemerge.i, ptr @_ZL14yy_start_stack, align 8, !tbaa !729
  %.not5.i = icmp eq ptr %storemerge.i, null
  br i1 %.not5.i, label %bb.f, label %_ZL13yy_push_statei.exit

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.242) #42
  unreachable

_ZL13yy_push_statei.exit:                         ; preds = %bb.a, %bb.e
  %i.h = phi ptr [ %storemerge.i, %bb.e ], [ %.pre.i, %bb.a ]
  %i.i = load i32, ptr @_ZL8yy_start, align 4, !tbaa !12
  %i.j = add nsw i32 %i.i, -1
  %i.k = sdiv i32 %i.j, 2
  %i.l = add nsw i32 %i.a, 1
  store i32 %i.l, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !12
  %i.m = sext i32 %i.a to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.m
  store i32 %i.k, ptr %i.n, align 4, !tbaa !12
  store i32 13, ptr @_ZL8yy_start, align 4, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 0, ptr %i.o, align 8, !tbaa !286
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.r = load i64, ptr %i.q, align 8, !tbaa !264
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef 0, i64 noundef %i.r, ptr noundef nonnull @.str.2, i64 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8V3PreLex17pushStateDefValueEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !12 ; 3 uses
  %i.b = load i32, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12 ; 2 uses
  %.not.i = icmp slt i32 %i.a, %i.b
  %.pre.i = load ptr, ptr @_ZL14yy_start_stack, align 8, !tbaa !729 ; 3 uses
  br i1 %.not.i, label %_ZL13yy_push_statei.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.b, 25                     ; 2 uses
  store i32 %i.c, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 2                      ; 2 uses
  %.not4.i = icmp eq ptr %.pre.i, null
  br i1 %.not4.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias noundef ptr @malloc(i64 noundef %i.e) #41
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.pre.i, i64 noundef %i.e) #43
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge.i = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ] ; 3 uses
  store ptr %storemerge.i, ptr @_ZL14yy_start_stack, align 8, !tbaa !729
  %.not5.i = icmp eq ptr %storemerge.i, null
  br i1 %.not5.i, label %bb.f, label %_ZL13yy_push_statei.exit

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.242) #42
  unreachable

_ZL13yy_push_statei.exit:                         ; preds = %bb.a, %bb.e
  %i.h = phi ptr [ %storemerge.i, %bb.e ], [ %.pre.i, %bb.a ]
  %i.i = load i32, ptr @_ZL8yy_start, align 4, !tbaa !12
  %i.j = add nsw i32 %i.i, -1
  %i.k = sdiv i32 %i.j, 2
  %i.l = add nsw i32 %i.a, 1
  store i32 %i.l, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !12
  %i.m = sext i32 %i.a to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.m
  store i32 %i.k, ptr %i.n, align 4, !tbaa !12
  store i32 15, ptr @_ZL8yy_start, align 4, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 0, ptr %i.o, align 8, !tbaa !286
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.r = load i64, ptr %i.q, align 8, !tbaa !264
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef 0, i64 noundef %i.r, ptr noundef nonnull @.str.2, i64 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8V3PreLex13pushStateExprEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !12 ; 3 uses
  %i.b = load i32, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12 ; 2 uses
  %.not.i = icmp slt i32 %i.a, %i.b
  %.pre.i = load ptr, ptr @_ZL14yy_start_stack, align 8, !tbaa !729 ; 3 uses
  br i1 %.not.i, label %_ZL13yy_push_statei.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.b, 25                     ; 2 uses
  store i32 %i.c, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 2                      ; 2 uses
  %.not4.i = icmp eq ptr %.pre.i, null
  br i1 %.not4.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias noundef ptr @malloc(i64 noundef %i.e) #41
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.pre.i, i64 noundef %i.e) #43
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge.i = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ] ; 3 uses
  store ptr %storemerge.i, ptr @_ZL14yy_start_stack, align 8, !tbaa !729
  %.not5.i = icmp eq ptr %storemerge.i, null
  br i1 %.not5.i, label %bb.f, label %_ZL13yy_push_statei.exit

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.242) #42
  unreachable

_ZL13yy_push_statei.exit:                         ; preds = %bb.a, %bb.e
  %i.h = phi ptr [ %storemerge.i, %bb.e ], [ %.pre.i, %bb.a ]
  %i.i = load i32, ptr @_ZL8yy_start, align 4, !tbaa !12
  %i.j = add nsw i32 %i.i, -1
  %i.k = sdiv i32 %i.j, 2
  %i.l = add nsw i32 %i.a, 1
  store i32 %i.l, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !12
  %i.m = sext i32 %i.a to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.m
  store i32 %i.k, ptr %i.n, align 4, !tbaa !12
  store i32 19, ptr @_ZL8yy_start, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8V3PreLex20pushStateIncFilenameEv(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !12 ; 3 uses
  %i.b = load i32, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12 ; 2 uses
  %.not.i = icmp slt i32 %i.a, %i.b
  %.pre.i = load ptr, ptr @_ZL14yy_start_stack, align 8, !tbaa !729 ; 3 uses
  br i1 %.not.i, label %_ZL13yy_push_statei.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.b, 25                     ; 2 uses
  store i32 %i.c, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 2                      ; 2 uses
  %.not4.i = icmp eq ptr %.pre.i, null
  br i1 %.not4.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias noundef ptr @malloc(i64 noundef %i.e) #41
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.pre.i, i64 noundef %i.e) #43
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge.i = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ] ; 3 uses
  store ptr %storemerge.i, ptr @_ZL14yy_start_stack, align 8, !tbaa !729
  %.not5.i = icmp eq ptr %storemerge.i, null
  br i1 %.not5.i, label %bb.f, label %_ZL13yy_push_statei.exit

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.242) #42
  unreachable

_ZL13yy_push_statei.exit:                         ; preds = %bb.a, %bb.e
  %i.h = phi ptr [ %storemerge.i, %bb.e ], [ %.pre.i, %bb.a ]
  %i.i = load i32, ptr @_ZL8yy_start, align 4, !tbaa !12
  %i.j = add nsw i32 %i.i, -1
  %i.k = sdiv i32 %i.j, 2
  %i.l = add nsw i32 %i.a, 1
  store i32 %i.l, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !12
  %i.m = sext i32 %i.a to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.m
  store i32 %i.k, ptr %i.n, align 4, !tbaa !12
  store i32 21, ptr @_ZL8yy_start, align 4, !tbaa !12
  store i1 true, ptr @_ZL12yy_more_flag, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN8V3PreLex17pushStatePassthruEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(264) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !12 ; 3 uses
  %i.b = load i32, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12 ; 2 uses
  %.not.i = icmp slt i32 %i.a, %i.b
  %.pre.i = load ptr, ptr @_ZL14yy_start_stack, align 8, !tbaa !729 ; 3 uses
  br i1 %.not.i, label %_ZL13yy_push_statei.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.b, 25                     ; 2 uses
  store i32 %i.c, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 2                      ; 2 uses
  %.not4.i = icmp eq ptr %.pre.i, null
  br i1 %.not4.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noalias noundef ptr @malloc(i64 noundef %i.e) #41
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.pre.i, i64 noundef %i.e) #43
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge.i = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.d ] ; 3 uses
  store ptr %storemerge.i, ptr @_ZL14yy_start_stack, align 8, !tbaa !729
  %.not5.i = icmp eq ptr %storemerge.i, null
  br i1 %.not5.i, label %bb.f, label %_ZL13yy_push_statei.exit

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.242) #42
  unreachable

_ZL13yy_push_statei.exit:                         ; preds = %bb.a, %bb.e
  %i.h = phi ptr [ %storemerge.i, %bb.e ], [ %.pre.i, %bb.a ]
  %i.i = load i32, ptr @_ZL8yy_start, align 4, !tbaa !12
  %i.j = add nsw i32 %i.i, -1
  %i.k = sdiv i32 %i.j, 2
  %i.l = add nsw i32 %i.a, 1
  store i32 %i.l, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !12
  %i.m = sext i32 %i.a to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.m
  store i32 %i.k, ptr %i.n, align 4, !tbaa !12
  store i32 23, ptr @_ZL8yy_start, align 4, !tbaa !12
  store i1 true, ptr @_ZL12yy_more_flag, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN8V3PreLex10setYYDebugEb(i1 noundef zeroext %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = zext i1 %0 to i32
  store i32 %i.a, ptr @V3PreLex_flex_debug, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN8V3PreLex9newStreamEP8FileLinePS_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #50 ; 6 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %2, ptr %i.b, align 8, !tbaa !782
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 noundef 0)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.d, i8 0, i64 10, i1 false)
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !782
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !783
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !783
  %i.i = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 972), align 4, !tbaa !784, !range !119, !noundef !120
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !12 ; 3 uses
  %i.l = load i32, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12 ; 2 uses
  %.not.i.i = icmp slt i32 %i.k, %i.l
  %.pre.i.i = load ptr, ptr @_ZL14yy_start_stack, align 8, !tbaa !729 ; 3 uses
  br i1 %.not.i.i, label %_ZN8V3PreLex17pushStatePassthruEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i32 %i.l, 25                     ; 2 uses
  store i32 %i.m, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 2                      ; 2 uses
  %.not4.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not4.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = tail call noalias noundef ptr @malloc(i64 noundef %i.o) #41
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.pre.i.i, i64 noundef %i.o) #43
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %storemerge.i.i = phi ptr [ %i.p, %bb.e ], [ %i.q, %bb.f ] ; 3 uses
  store ptr %storemerge.i.i, ptr @_ZL14yy_start_stack, align 8, !tbaa !729
  %.not5.i.i = icmp eq ptr %storemerge.i.i, null
  br i1 %.not5.i.i, label %bb.h, label %_ZN8V3PreLex17pushStatePassthruEv.exit

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.242) #42
  unreachable

_ZN8V3PreLex17pushStatePassthruEv.exit:           ; preds = %bb.c, %bb.g
  %i.r = phi ptr [ %storemerge.i.i, %bb.g ], [ %.pre.i.i, %bb.c ]
  %i.s = load i32, ptr @_ZL8yy_start, align 4, !tbaa !12
  %i.t = add nsw i32 %i.s, -1
  %i.u = sdiv i32 %i.t, 2
  %i.v = add nsw i32 %i.k, 1
  store i32 %i.v, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !12
  %i.w = sext i32 %i.k to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.w
  store i32 %i.u, ptr %i.x, align 4, !tbaa !12
  store i32 23, ptr @_ZL8yy_start, align 4, !tbaa !12
  store i1 true, ptr @_ZL12yy_more_flag, align 4
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #45
  resume { ptr, i32 } %i.y

bb.j:                                             ; preds = %_ZN8V3PreLex17pushStatePassthruEv.exit, %bb.b
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #23

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9V3Options20debugPreprocPassthruEv(ptr noundef nonnull align 8 dereferenceable(1728) %0) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 780
  %i.b = load i8, ptr %i.a, align 4, !tbaa !784, !range !119, !noundef !120
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 401) i32 @_ZN8V3PreLex3lexEv(ptr noundef nonnull align 8 dereferenceable(264) %0) local_unnamed_addr #2 align 2 {
bb.a:
  store ptr %0, ptr @_ZN8V3PreLex13s_currentLexpE, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36, !noalias !785 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44, !noalias !785
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN8V3PreLex12curFilelinepEv.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45, !noalias !785
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 512
  br label %_ZN8V3PreLex12curFilelinepEv.exit

_ZN8V3PreLex12curFilelinepEv.exit:                ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ]
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.n, ptr %i.o, align 8, !tbaa !788
  %i.p = tail call noundef i32 @_Z11V3PreLexlexv()
  ret i32 %i.p
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN8V3PreLex10inputToLexEPcm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(264) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36, !noalias !789 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44, !noalias !789
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_ZN8V3PreLex10curStreampEv.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !45, !noalias !789
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 512
  br label %_ZN8V3PreLex10curStreampEv.exit

_ZN8V3PreLex10curStreampEv.exit:                  ; preds = %bb.a, %bb.b
  %i.p = phi ptr [ %i.o, %bb.b ], [ %i.g, %bb.a ]
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47   ; 7 uses
  %i.s = tail call noundef i32 @_ZL5debugv()
  %i.t = icmp sgt i32 %i.s, 9
  br i1 %i.t, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN8V3PreLex10curStreampEv.exit
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.39, i64 noundef 23) ; 0 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %2) ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.40, i64 noundef 4) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !792 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !792
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 3
  %i.ah = icmp ne ptr %i.aa, null
  %.neg.i.i = sext i1 %i.ah to i64
  %i.ai = add nsw i64 %i.ag, %.neg.i.i
  %i.aj = shl nsw i64 %i.ai, 4
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !793
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !794
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 5
  %i.ar = add nsw i64 %i.aj, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !795
  %i.au = load ptr, ptr %i.y, align 8, !tbaa !793
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 5
  %i.az = add nsw i64 %i.ar, %i.ay
  %i.ba = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef %i.az) ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !734
  %i.bc = getelementptr i8, ptr %i.bb, i64 -24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 240
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !796 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt16__throw_bad_castv() #42
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !803
  %.not.i1.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 67
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !29
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bg)
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !734
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call noundef signext i8 %i.bn(ptr noundef nonnull align 8 dereferenceable(570) %i.bg, i8 noundef signext 10), !inline_history !808
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi i8 [ %i.bk, %bb.e ], [ %i.bo, %bb.f ]
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i8 noundef signext %.0.i.i.i)
  %i.bq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp) ; 0 uses
  tail call void @_ZN8V3PreLex9dumpStackEv(ptr noundef nonnull align 8 dereferenceable(264) %0)
  br label %bb.g

bb.g:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZN8V3PreLex10curStreampEv.exit
  %.not124 = icmp eq i64 %2, 0
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %bb.g
  %.044 = phi ptr [ %i.r, %bb.g ], [ %i.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ] ; 6 uses
  br i1 %.not124, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %.044, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %.044, i64 64
  %i.ca = getelementptr inbounds nuw i8, ptr %.044, i64 32 ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.044, i64 48 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.044, i64 40 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.044, i64 56 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %.041121 = phi i64 [ 0, %.lr.ph ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ] ; 4 uses
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !793
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !793
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %.critedge, label %bb.j
end_hunk_1
begin_hunk_2_@_ZN12V3PreProcImp13getStateTokenEv:bb.a

bb.f:                                             ; preds = %bb.d
  %i.oz = load ptr, ptr %i.bq, align 8, !tbaa !1189, !noalias !1237 ; 2 uses
  %i.pa = load ptr, ptr %i.br, align 8, !tbaa !1193, !noalias !1237
  %i.pb = icmp eq ptr %i.oz, %i.pa
  br i1 %i.pb, label %bb.g, label %_ZNK12V3PreProcImp5stateEv.exit755

bb.g:                                             ; preds = %bb.f
  %i.pc = load ptr, ptr %i.bs, align 8, !tbaa !1194, !noalias !1237
  %i.pd = getelementptr inbounds i8, ptr %i.pc, i64 -8
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !777
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 512
  br label %_ZNK12V3PreProcImp5stateEv.exit755

_ZNK12V3PreProcImp5stateEv.exit755:               ; preds = %bb.f, %bb.g
  %i.pg = phi ptr [ %i.pf, %bb.g ], [ %i.oz, %bb.f ]
  %i.ph = getelementptr inbounds i8, ptr %i.pg, i64 -1
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !965
  %.not377 = icmp eq i8 %i.pi, 16
  %spec.select = select i1 %.not377, i32 311, i32 304
  br label %.thread2586

bb.h:                                             ; preds = %bb.d
  %i.pj = load i32, ptr %i.bg, align 8, !tbaa !914
  %.not734 = icmp eq i32 %i.pj, 0
  br i1 %.not734, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.pk = load ptr, ptr %i.af, align 8, !tbaa !970
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 192
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !971
  switch i32 %i.pm, label %_ZN12V3PreProcImp8statePopEv.exit.thread [
    i32 2, label %bb.j
    i32 0, label %._crit_edge.i.i767
  ]

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #44
  store ptr %i.bl, ptr %1, align 8, !tbaa !263
  store i64 0, ptr %i.bm, align 8, !tbaa !264
  store i8 0, ptr %i.bl, align 8, !tbaa !29
  %i.pn = load ptr, ptr @V3PreLextext, align 8, !tbaa !9
  %i.po = load i32, ptr @V3PreLexleng, align 4, !tbaa !12
  %i.pp = sext i32 %i.po to i64
  %i.pq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef 0, ptr noundef %i.pn, i64 noundef %i.pp)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit unwind label %bb.l ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit: ; preds = %bb.j
  invoke void @_ZN12V3PreProcImp7commentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  %i.pr = load i64, ptr %i.bj, align 8, !tbaa !264
  %i.ps = icmp eq i64 %i.pr, 0
  br i1 %i.ps, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #44
  store ptr %i.bn, ptr %2, align 8, !tbaa !263
  store i8 32, ptr %i.bn, align 8, !tbaa !29
  store i64 1, ptr %i.bo, align 8, !tbaa !264
  store i8 0, ptr %i.np, align 1, !tbaa !29
  %i.pt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull %i.bn, i64 noundef 1)
          to label %_ZN12V3PreProcImp16insertUnreadbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.m ; 0 uses

_ZN12V3PreProcImp16insertUnreadbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %i.pu = load ptr, ptr %2, align 8, !tbaa !128   ; 2 uses
  %i.pv = icmp eq ptr %i.pu, %i.bn
  br i1 %i.pv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN12V3PreProcImp16insertUnreadbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.pw = load i64, ptr %i.bn, align 8, !tbaa !29
  %i.px = add i64 %i.pw, 1
  call void @_ZdlPvm(ptr noundef %i.pu, i64 noundef %i.px) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN12V3PreProcImp16insertUnreadbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  br label %bb.n

bb.l:                                             ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i
  %lpad.loopexit2650 = landingpad { ptr, i32 }
          cleanup
  %.pre5306 = load ptr, ptr %2, align 8, !tbaa !128 ; 2 uses
  %i.pz = icmp eq ptr %.pre5306, %i.bn
  br i1 %i.pz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit760, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i758

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i758: ; preds = %bb.m
  %i.qa = load i64, ptr %i.bn, align 8, !tbaa !29
  %i.qb = add i64 %i.qa, 1
  call void @_ZdlPvm(ptr noundef %.pre5306, i64 noundef %i.qb) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit760

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit760: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i758
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  br label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.k
  %i.qc = load ptr, ptr %1, align 8, !tbaa !128   ; 2 uses
  %i.qd = icmp eq ptr %i.qc, %i.bl
  br i1 %i.qd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit763, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i761

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i761: ; preds = %bb.n
  %i.qe = load i64, ptr %i.bl, align 8, !tbaa !29
  %i.qf = add i64 %i.qe, 1
  call void @_ZdlPvm(ptr noundef %i.qc, i64 noundef %i.qf) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit763

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit763: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i761
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  br label %bb.r

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit760, %bb.l
  %.pn738.pn = phi { ptr, i32 } [ %lpad.loopexit2650, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit760 ], [ %i.py, %bb.l ]
  %i.qg = load ptr, ptr %1, align 8, !tbaa !128   ; 2 uses
  %i.qh = icmp eq ptr %i.qg, %i.bl
  br i1 %i.qh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit766, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i764

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i764: ; preds = %bb.o
  %i.qi = load i64, ptr %i.bl, align 8, !tbaa !29
  %i.qj = add i64 %i.qi, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qj) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit766

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit766: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i764
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #44
  br label %common.resume

._crit_edge.i.i767:                               ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  store ptr %i.bh, ptr %3, align 8, !tbaa !263
  store i8 32, ptr %i.bh, align 8, !tbaa !29
  store i64 1, ptr %i.bi, align 8, !tbaa !264
  store i8 0, ptr %i.no, align 1, !tbaa !29
  %i.qk = load i64, ptr %i.bj, align 8, !tbaa !264
  %i.ql = icmp eq i64 %i.qk, 4611686018427387903
  br i1 %i.ql, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i771

bb.p:                                             ; preds = %._crit_edge.i.i767
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.512) #42
          to label %.noexc772 unwind label %.loopexit.split-lp2644

.noexc772:                                        ; preds = %bb.p
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i771: ; preds = %._crit_edge.i.i767
  %i.qm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull %i.bh, i64 noundef 1)
          to label %_ZN12V3PreProcImp16insertUnreadbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit774 unwind label %.loopexit2643 ; 0 uses

_ZN12V3PreProcImp16insertUnreadbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit774: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i771
  %i.qn = load ptr, ptr %3, align 8, !tbaa !128   ; 2 uses
  %i.qo = icmp eq ptr %i.qn, %i.bh
  br i1 %i.qo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i775

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i775: ; preds = %_ZN12V3PreProcImp16insertUnreadbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit774
  %i.qp = load i64, ptr %i.bh, align 8, !tbaa !29
  %i.qq = add i64 %i.qp, 1
  call void @_ZdlPvm(ptr noundef %i.qn, i64 noundef %i.qq) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777: ; preds = %_ZN12V3PreProcImp16insertUnreadbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit774, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i775
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %bb.r

.loopexit2643:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.i771
  %lpad.loopexit2645 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp2644:                           ; preds = %bb.p
  %lpad.loopexit.split-lp2646 = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp2644, %.loopexit2643
  %lpad.phi2647 = phi { ptr, i32 } [ %lpad.loopexit2645, %.loopexit2643 ], [ %lpad.loopexit.split-lp2646, %.loopexit.split-lp2644 ]
  %i.qr = load ptr, ptr %3, align 8, !tbaa !128   ; 2 uses
  %i.qs = icmp eq ptr %i.qr, %i.bh
  br i1 %i.qs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778: ; preds = %bb.q
  %i.qt = load i64, ptr %i.bh, align 8, !tbaa !29
  %i.qu = add i64 %i.qt, 1
  call void @_ZdlPvm(ptr noundef %i.qr, i64 noundef %i.qu) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br label %common.resume

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit763, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777, %bb.h
  %i.qv = load i32, ptr @V3PreLexleng, align 4, !tbaa !12 ; 5 uses
  %.not4992 = icmp eq i32 %i.qv, 0
  br i1 %.not4992, label %_ZN12V3PreProcImp8statePopEv.exit.backedge, label %.lr.ph

_ZN12V3PreProcImp8statePopEv.exit.backedge:       ; preds = %_ZN12V3PreProcImp8statePopEv.exit.loopexit.unr-lcssa, %bb.b, %.epil.preheader, %bb.r, %bb.ja, %_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit1742, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1731, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1753, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1703, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1616, %bb.nc, %bb.in, %bb.aoq, %_ZNSt5stackI11VPreIfEntrySt5dequeIS0_SaIS0_EEE3topEv.exit2232, %bb.agp, %bb.afp, %bb.afq, %_ZNSt5stackIN12V3PreProcImp9ProcStateESt5dequeIS1_SaIS1_EEE3popEv.exit.i1883, %_ZNSt5stackIN12V3PreProcImp9ProcStateESt5dequeIS1_SaIS1_EEE3popEv.exit.i1852, %_ZNSt5stackIN12V3PreProcImp9ProcStateESt5dequeIS1_SaIS1_EEE3popEv.exit.i1534, %_ZNSt5stackIN12V3PreProcImp9ProcStateESt5dequeIS1_SaIS1_EEE3popEv.exit.i1039, %_ZNSt5stackIN12V3PreProcImp9ProcStateESt5dequeIS1_SaIS1_EEE3popEv.exit.i, %bb.anv, %bb.aom, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2228, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2160, %bb.adx, %_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2147, %_ZN12V3PreProcImp9defExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit1168.thread, %bb.jv, %bb.jz, %bb.lw, %bb.lx, %bb.ly, %bb.lz, %bb.ma, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1326, %bb.lv, %_ZNK12V3PreProcImp5stateEv.exit1237, %bb.kt, %bb.ij, %bb.ik, %bb.il, %bb.cq, %_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2507, %_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2470, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2465, %_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2157, %_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2155, %_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2153, %_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2151, %_ZN12V3PreProcImp9statePushENS_9ProcStateE.exit2149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit2145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2065, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2026, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1829, %bb.xc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %bb.qi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1382, %_ZN8V3PreLex17pushStateDefValueEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1129, %bb.hh, %bb.hg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit925, %bb.x
  br label %_ZN12V3PreProcImp8statePopEv.exit

.lr.ph:                                           ; preds = %bb.r
  %i.qw = load ptr, ptr @V3PreLextext, align 8, !tbaa !9 ; 3 uses
  %i.qx = icmp eq i32 %i.qv, 1
  br i1 %i.qx, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %i.qy = and i32 %i.qv, -2
  %unroll_iter = sext i32 %i.qy to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.w, %.lr.ph.new
  %.01534987 = phi i64 [ 0, %.lr.ph.new ], [ %i.rk, %bb.w ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.w ]
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qw, i64 %.01534987
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !29
  %i.rb = icmp eq i8 %i.ra, 10
  br i1 %i.rb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.rc = load i32, ptr %i.bp, align 4, !tbaa !954
  %i.rd = add nsw i32 %i.rc, 1
  store i32 %i.rd, ptr %i.bp, align 4, !tbaa !954
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.re = getelementptr inbounds nuw i8, ptr %i.qw, i64 %.01534987
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 1
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !29
  %i.rh = icmp eq i8 %i.rg, 10
  br i1 %i.rh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ri = load i32, ptr %i.bp, align 4, !tbaa !954
  %i.rj = add nsw i32 %i.ri, 1
  store i32 %i.rj, ptr %i.bp, align 4, !tbaa !954
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.rk = add nuw i64 %.01534987, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN12V3PreProcImp8statePopEv.exit.loopexit.unr-lcssa, label %bb.s, !llvm.loop !1240

bb.x:                                             ; preds = %bb.d
  %i.rl = load ptr, ptr %i.af, align 8, !tbaa !970
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 248
  %i.rn = load i32, ptr %i.rm, align 8, !tbaa !1241
  call void @_ZN12V3PreProcImp14addLineCommentEi(ptr noundef nonnull align 8 dereferenceable(1032) %0, i32 noundef %i.rn)
  br label %_ZN12V3PreProcImp8statePopEv.exit.backedge

bb.y:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44
  %i.ro = load ptr, ptr @V3PreLextext, align 8, !tbaa !9
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 1 ; 2 uses
  %i.rq = load i32, ptr @V3PreLexleng, align 4, !tbaa !12
  %i.rr = sext i32 %i.rq to i64
  %i.rs = add nsw i64 %i.rr, -1                   ; 4 uses
  store ptr %i.ag, ptr %4, align 8, !tbaa !263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #44
  store i64 %i.rs, ptr %i.ae, align 8, !tbaa !18
  %i.rt = icmp ugt i64 %i.rs, 15
  br i1 %i.rt, label %.noexc.i782, label %._crit_edge.i.i781

.noexc.i782:                                      ; preds = %bb.y
  %i.ru = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i64 noundef 0)
          to label %.noexc783 unwind label %bb.am ; 2 uses

.noexc783:                                        ; preds = %.noexc.i782
  store ptr %i.ru, ptr %4, align 8, !tbaa !128
  %i.rv = load i64, ptr %i.ae, align 8, !tbaa !18
  store i64 %i.rv, ptr %i.ag, align 8, !tbaa !29
  br label %._crit_edge.i.i781

._crit_edge.i.i781:                               ; preds = %.noexc783, %bb.y
  %i.rw = phi ptr [ %i.ru, %.noexc783 ], [ %i.ag, %bb.y ] ; 2 uses
  switch i64 %i.rs, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i781
  %i.rx = load i8, ptr %i.rp, align 1, !tbaa !29
  store i8 %i.rx, ptr %i.rw, align 1, !tbaa !29
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i781
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rw, ptr nonnull align 1 %i.rp, i64 %i.rs, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i781
  %i.ry = load i64, ptr %i.ae, align 8, !tbaa !18 ; 2 uses
  store i64 %i.ry, ptr %i.ah, align 8, !tbaa !264
  %i.rz = load ptr, ptr %4, align 8, !tbaa !128
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.ry
  store i8 0, ptr %i.sa, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #44
  %i.sb = load ptr, ptr %i.ai, align 8, !tbaa !911 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.sb, null
  br i1 %.not10.i.i.i.i, label %_ZN12V3PreProcImp9defExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ab
  %i.sc = load i64, ptr %i.ah, align 8, !tbaa !264 ; 4 uses
  %i.sd = load ptr, ptr %4, align 8               ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.sb, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i.i ]
  %i.se = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.sf = load i64, ptr %i.se, align 8, !tbaa !264 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.sc, i64 %i.sf) ; 2 uses
  %i.sg = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.sg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.ac
  %i.sh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !128
  %i.sj = call i32 @memcmp(ptr noundef %i.si, ptr noundef %i.sd, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #44 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.sj, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.ac
  %i.sk = sub i64 %i.sf, %i.sc
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.sk, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i.i

_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.sj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.sl = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %.19.i.i.i.i = select i1 %i.sl, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.sl, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !990 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_7VDefineESt10_Select1stIS9_ESt4lessIS6_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i, label %bb.ac, !llvm.loop !991

_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_7VDefineESt10_Select1stIS9_ESt4lessIS6_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i: ; preds = %_ZNKSt4lessIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERS6_S8_.exit.i.i.i.i
  %i.sm = icmp eq ptr %.19.i.i.i.i, %i.aj
  br i1 %i.sm, label %_ZN12V3PreProcImp9defExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt8_Rb_treeIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS6_7VDefineESt10_Select1stIS9_ESt4lessIS6_ESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i
  %i.sn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.so = load i64, ptr %i.sn, align 8, !tbaa !264 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.so, i64 %i.sc) ; 2 uses
  %i.sp = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.sp, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.ad
  %i.sq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !128
  %i.ss = call i32 @memcmp(ptr noundef %i.sd, ptr noundef %i.sr, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #44 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ss, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZN12V3PreProcImp9defExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.ad
  %i.st = sub i64 %i.sc, %i.so
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.st, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZN12V3PreProcImp9defExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN12V3PreProcImp9defExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ss, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.su = icmp sgt i32 %.0.i.i.i.i.i.i, -1
  br i1 %i.su, label %bb.ae, label %_ZN12V3PreProcImp9defExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

bb.ae:                                            ; preds = %_ZN12V3PreProcImp9defExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.sv = invoke noundef i32 @_ZN9V3PreProc5debugEv()
          to label %bb.af unwind label %bb.an

bb.af:                                            ; preds = %bb.ae
  %i.sw = icmp sgt i32 %i.sv, 4
  br i1 %i.sw, label %bb.ag, label %bb.ba, !prof !830

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #44
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.ah unwind label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %i.sx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.64, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ap ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #44
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.65, i32 noundef 1109)
          to label %bb.ai unwind label %bb.aq

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.sy = load ptr, ptr %6, align 8, !tbaa !128
  %i.sz = load i64, ptr %i.ak, align 8, !tbaa !264
  %i.ta = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.sy, i64 noundef %i.sz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ar ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.ai
  %i.tb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ta, ptr noundef nonnull @.str.166, i64 noundef 12)
end_hunk_2
begin_hunk_3_@_ZN12V3PreProcImp13getStateTokenEv:bb.a
  %i.aqm = call noundef i32 @_ZN9V3PreProc5debugEv()
  %i.aqn = icmp sgt i32 %i.aqm, 3
  br i1 %i.aqn, label %bb.hn, label %bb.ic, !prof !830

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #44
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %45)
  %i.aqo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull @.str.64, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1079 unwind label %bb.hs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1079: ; preds = %bb.hn
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #44
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %46, ptr noundef nonnull @.str.65, i32 noundef 1192)
          to label %bb.ho unwind label %bb.ht

bb.ho:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1079
  %i.aqp = load ptr, ptr %46, align 8, !tbaa !128
  %i.aqq = load i64, ptr %i.iy, align 8, !tbaa !264
  %i.aqr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef %i.aqp, i64 noundef %i.aqq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1081 unwind label %bb.hu

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1081: ; preds = %bb.ho
  %i.aqs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aqr, ptr noundef nonnull @.str.178, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1083 unwind label %bb.hu ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1083: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1081
  %i.aqt = load ptr, ptr %46, align 8, !tbaa !128 ; 2 uses
  %i.aqu = icmp eq ptr %i.aqt, %i.iz
  br i1 %i.aqu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1086, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1084

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1084: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1083
  %i.aqv = load i64, ptr %i.iz, align 8, !tbaa !29
  %i.aqw = add i64 %i.aqv, 1
  call void @_ZdlPvm(ptr noundef %i.aqt, i64 noundef %i.aqw) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1086

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1086: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1083, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1084
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #44
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %47, ptr noundef nonnull align 8 dereferenceable(112) %45)
          to label %bb.hp unwind label %bb.hv

bb.hp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1086
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #44
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %48, ptr noundef nonnull align 8 dereferenceable(112) %45)
          to label %bb.hq unwind label %bb.hw

bb.hq:                                            ; preds = %bb.hp
  %i.aqx = load i64, ptr %i.ja, align 8, !tbaa !264 ; 2 uses
  %i.aqy = load ptr, ptr %47, align 8, !tbaa !128 ; 2 uses
  %i.aqz = getelementptr i8, ptr %i.aqy, i64 %i.aqx
  %i.ara = getelementptr i8, ptr %i.aqz, i64 -1
  %i.arb = load i8, ptr %i.ara, align 1, !tbaa !29
  %.not584 = icmp eq i8 %i.arb, 10
  %i.arc = load ptr, ptr %48, align 8, !tbaa !128 ; 2 uses
  %i.ard = icmp eq ptr %i.arc, %i.jb
  br i1 %i.ard, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1088, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1087

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1088: ; preds = %bb.hq
  %i.are = icmp ult i64 %i.aqx, 16
  call void @llvm.assume(i1 %i.are)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1089

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1087: ; preds = %bb.hq
  %i.arf = load i64, ptr %i.jb, align 8, !tbaa !29
  %i.arg = add i64 %i.arf, 1
  call void @_ZdlPvm(ptr noundef %i.arc, i64 noundef %i.arg) #45
  %.pre5332.a = load ptr, ptr %47, align 8, !tbaa !128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1089

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1089: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1088, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1087
  %i.arh = phi ptr [ %i.aqy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i1088 ], [ %.pre5332.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1087 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #44
  %i.ari = icmp eq ptr %i.arh, %i.jc
  br i1 %i.ari, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1092, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1090

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1090: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1089
  %i.arj = load i64, ptr %i.jc, align 8, !tbaa !29
  %i.ark = add i64 %i.arj, 1
  call void @_ZdlPvm(ptr noundef %i.arh, i64 noundef %i.ark) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1092

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1092: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1089, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1090
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #44
  br i1 %.not584, label %bb.hx, label %bb.hr

bb.hr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1092
  %i.arl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %45, i8 noundef signext 10)
          to label %bb.hx unwind label %bb.hs     ; 0 uses

bb.hs:                                            ; preds = %bb.hn, %bb.hr
  %i.arm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.ht:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1079
  %i.arn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1095

bb.hu:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1081, %bb.ho
  %i.aro = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.arp = load ptr, ptr %46, align 8, !tbaa !128 ; 2 uses
  %i.arq = icmp eq ptr %i.arp, %i.iz
  br i1 %i.arq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1095, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1093

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1093: ; preds = %bb.hu
  %i.arr = load i64, ptr %i.iz, align 8, !tbaa !29
  %i.ars = add i64 %i.arr, 1
  call void @_ZdlPvm(ptr noundef %i.arp, i64 noundef %i.ars) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1095

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1095: ; preds = %bb.hu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1093, %bb.ht
  %.pn580 = phi { ptr, i32 } [ %i.arn, %bb.ht ], [ %i.aro, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1093 ], [ %i.aro, %bb.hu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #44
  br label %bb.ib

bb.hv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1086
  %i.art = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1098

bb.hw:                                            ; preds = %bb.hp
  %i.aru = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #44
  %i.arv = load ptr, ptr %47, align 8, !tbaa !128 ; 2 uses
  %i.arw = icmp eq ptr %i.arv, %i.jc
  br i1 %i.arw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1098, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1096

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1096: ; preds = %bb.hw
  %i.arx = load i64, ptr %i.jc, align 8, !tbaa !29
  %i.ary = add i64 %i.arx, 1
  call void @_ZdlPvm(ptr noundef %i.arv, i64 noundef %i.ary) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1098

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1098: ; preds = %bb.hw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1096, %bb.hv
  %.pn582 = phi { ptr, i32 } [ %i.art, %bb.hv ], [ %i.aru, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1096 ], [ %i.aru, %bb.hw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #44
  br label %bb.ib

bb.hx:                                            ; preds = %bb.hr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1092
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #44
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %49, ptr noundef nonnull align 8 dereferenceable(112) %45)
          to label %bb.hy unwind label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.arz = load ptr, ptr %49, align 8, !tbaa !128
  %i.asa = load i64, ptr %i.jd, align 8, !tbaa !264
  %i.asb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.arz, i64 noundef %i.asa)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1100 unwind label %bb.ia ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1100: ; preds = %bb.hy
  %i.asc = load ptr, ptr %49, align 8, !tbaa !128 ; 2 uses
  %i.asd = icmp eq ptr %i.asc, %i.je
  br i1 %i.asd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1101: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1100
  %i.ase = load i64, ptr %i.je, align 8, !tbaa !29
  %i.asf = add i64 %i.ase, 1
  call void @_ZdlPvm(ptr noundef %i.asc, i64 noundef %i.asf) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1103: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1101
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #44
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %45) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #44
  br label %bb.ic

bb.hz:                                            ; preds = %bb.hx
  %i.asg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1106

bb.ia:                                            ; preds = %bb.hy
  %i.ash = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.asi = load ptr, ptr %49, align 8, !tbaa !128 ; 2 uses
  %i.asj = icmp eq ptr %i.asi, %i.je
  br i1 %i.asj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1104: ; preds = %bb.ia
  %i.ask = load i64, ptr %i.je, align 8, !tbaa !29
  %i.asl = add i64 %i.ask, 1
  call void @_ZdlPvm(ptr noundef %i.asi, i64 noundef %i.asl) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1106: ; preds = %bb.ia, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1104, %bb.hz
  %.pn585 = phi { ptr, i32 } [ %i.asg, %bb.hz ], [ %i.ash, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1104 ], [ %i.ash, %bb.ia ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #44
  br label %bb.ib

bb.ib:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1098, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1095, %bb.hs
  %.pn585.pn = phi { ptr, i32 } [ %.pn585, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1106 ], [ %i.arm, %bb.hs ], [ %.pn582, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1098 ], [ %.pn580, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1095 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %45) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #44
  br label %common.resume

bb.ic:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1103, %bb.hm
  %i.asm = load i32, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !12 ; 3 uses
  %i.asn = load i32, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12 ; 2 uses
  %.not.i.i1107 = icmp slt i32 %i.asm, %i.asn
  %.pre.i.i1108 = load ptr, ptr @_ZL14yy_start_stack, align 8, !tbaa !729 ; 3 uses
  br i1 %.not.i.i1107, label %_ZN8V3PreLex13pushStateExprEv.exit, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.aso = add nsw i32 %i.asn, 25                 ; 2 uses
  store i32 %i.aso, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12
  %i.asp = sext i32 %i.aso to i64
  %i.asq = shl nsw i64 %i.asp, 2                  ; 2 uses
  %.not4.i.i = icmp eq ptr %.pre.i.i1108, null
  br i1 %.not4.i.i, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  %i.asr = call noalias noundef ptr @malloc(i64 noundef %i.asq) #41
  br label %bb.ig

bb.if:                                            ; preds = %bb.id
  %i.ass = call noalias noundef ptr @realloc(ptr noundef nonnull %.pre.i.i1108, i64 noundef %i.asq) #43
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ie
  %storemerge.i.i = phi ptr [ %i.asr, %bb.ie ], [ %i.ass, %bb.if ] ; 3 uses
  store ptr %storemerge.i.i, ptr @_ZL14yy_start_stack, align 8, !tbaa !729
  %.not5.i.i = icmp eq ptr %storemerge.i.i, null
  br i1 %.not5.i.i, label %bb.ih, label %_ZN8V3PreLex13pushStateExprEv.exit

bb.ih:                                            ; preds = %bb.ig
  call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.242) #42
  unreachable

_ZN8V3PreLex13pushStateExprEv.exit:               ; preds = %bb.ic, %bb.ig
  %i.ast = phi ptr [ %storemerge.i.i, %bb.ig ], [ %.pre.i.i1108, %bb.ic ]
  %i.asu = load i32, ptr @_ZL8yy_start, align 4, !tbaa !12
  %i.asv = add nsw i32 %i.asu, -1
  %i.asw = sdiv i32 %i.asv, 2
  %i.asx = add nsw i32 %i.asm, 1
  store i32 %i.asx, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !12
  %i.asy = sext i32 %i.asm to i64
  %i.asz = getelementptr inbounds [4 x i8], ptr %i.ast, i64 %i.asy
  store i32 %i.asw, ptr %i.asz, align 4, !tbaa !12
  store i32 19, ptr @_ZL8yy_start, align 4, !tbaa !12
  %i.ata = load ptr, ptr %i.af, align 8, !tbaa !970
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ata, i64 104
  %i.atc = load ptr, ptr %i.atb, align 8, !tbaa !788
  call void @_ZN9V3PreExpr5resetEP8FileLine(ptr noundef nonnull align 8 dereferenceable(352) %i.ha, ptr noundef %i.atc)
  store i32 1, ptr %i.hg, align 8, !tbaa !964
  %i.atd = load ptr, ptr %i.bq, align 8, !tbaa !1189, !noalias !1271 ; 2 uses
  %i.ate = load ptr, ptr %i.br, align 8, !tbaa !1193, !noalias !1271
  %i.atf = icmp eq ptr %i.atd, %i.ate
  br i1 %i.atf, label %bb.ii, label %_ZNK12V3PreProcImp5stateEv.exit1110

bb.ii:                                            ; preds = %_ZN8V3PreLex13pushStateExprEv.exit
  %i.atg = load ptr, ptr %i.bs, align 8, !tbaa !1194, !noalias !1271
  %i.ath = getelementptr inbounds i8, ptr %i.atg, i64 -8
  %i.ati = load ptr, ptr %i.ath, align 8, !tbaa !777
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 512
  br label %_ZNK12V3PreProcImp5stateEv.exit1110

_ZNK12V3PreProcImp5stateEv.exit1110:              ; preds = %_ZN8V3PreLex13pushStateExprEv.exit, %bb.ii
  %i.atk = phi ptr [ %i.atj, %bb.ii ], [ %i.atd, %_ZN8V3PreLex13pushStateExprEv.exit ]
  %i.atl = getelementptr inbounds i8, ptr %i.atk, i64 -1
  %i.atm = load i8, ptr %i.atl, align 1, !tbaa !965
  switch i8 %i.atm, label %bb.im [
    i8 3, label %bb.ij
    i8 4, label %bb.ik
    i8 5, label %bb.il
  ]

bb.ij:                                            ; preds = %_ZNK12V3PreProcImp5stateEv.exit1110
  call void @_ZN12V3PreProcImp11stateChangeENS_9ProcStateE(ptr noundef nonnull align 8 dereferenceable(1032) %0, i8 noundef zeroext 11)
  br label %_ZN12V3PreProcImp8statePopEv.exit.backedge

bb.ik:                                            ; preds = %_ZNK12V3PreProcImp5stateEv.exit1110
  call void @_ZN12V3PreProcImp11stateChangeENS_9ProcStateE(ptr noundef nonnull align 8 dereferenceable(1032) %0, i8 noundef zeroext 12)
  br label %_ZN12V3PreProcImp8statePopEv.exit.backedge

bb.il:                                            ; preds = %_ZNK12V3PreProcImp5stateEv.exit1110
  call void @_ZN12V3PreProcImp11stateChangeENS_9ProcStateE(ptr noundef nonnull align 8 dereferenceable(1032) %0, i8 noundef zeroext 13)
  br label %_ZN12V3PreProcImp8statePopEv.exit.backedge

bb.im:                                            ; preds = %_ZNK12V3PreProcImp5stateEv.exit1110
  %i.atn = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.65, i32 noundef 1200) ; 0 uses
  %i.ato = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.atp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ato, ptr noundef nonnull @.str.179)
  call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.atp) #42
  unreachable

bb.in:                                            ; preds = %_ZNK12V3PreProcImp5stateEv.exit1077, %bb.hk, %bb.hj
  %i.atq = load i32, ptr %i.bg, align 8, !tbaa !914
  %.not579 = icmp eq i32 %i.atq, 0
  br i1 %.not579, label %_ZN12V3PreProcImp8statePopEv.exit.thread, label %_ZN12V3PreProcImp8statePopEv.exit.backedge

bb.io:                                            ; preds = %bb.ee
  %i.atr = load ptr, ptr %i.af, align 8, !tbaa !970
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atr, i64 104
  %i.att = load ptr, ptr %i.ats, align 8, !tbaa !788
  %i.atu = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.atv = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.atw = icmp eq i8 %i.atv, 0
  br i1 %i.atw, label %bb.ip, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, !prof !262

bb.ip:                                            ; preds = %bb.io
  %i.atx = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #44
  %.not.i.i1111 = icmp eq i32 %i.atx, 0
  br i1 %.not.i.i1111, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.ir unwind label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %i.aty = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #44
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit766, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit882, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit928, %bb.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004, %bb.gh, %bb.he, %bb.ib, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1348, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1394, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1494, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1505, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1548, %bb.wx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1838, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1850, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1894, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2035, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2068, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2163, %bb.afm, %bb.agg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2468, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2476, %bb.aol, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2518, %bb.kp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1243, %bb.ls, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1338, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1292, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1203, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1762, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1740, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1706, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1631, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1622, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1619, %bb.sj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1591, %bb.ado, %bb.yj, %bb.xy, %bb.xk, %bb.qq, %bb.nh, %bb.mm, %bb.is
  %common.resume.op = phi { ptr, i32 } [ %i.atz, %bb.is ], [ %i.bhz, %bb.mm ], [ %i.blu, %bb.nh ], [ %i.caf, %bb.qq ], [ %i.czo, %bb.xk ], [ %i.dcb, %bb.xy ], [ %i.ddn, %bb.yj ], [ %i.ebo, %bb.ado ], [ %.pn738.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit766 ], [ %lpad.phi2647, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780 ], [ %.pn731.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit928 ], [ %.pn719.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2518 ], [ %.pn716, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2163 ], [ %.pn713.pn, %bb.afm ], [ %.pn706, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2231 ], [ %.pn703.pn, %bb.agg ], [ %.pn692.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2468 ], [ %.pn625, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2476 ], [ %.pn622.pn, %bb.aol ], [ %.pn612.pn, %bb.ex ], [ %.pn605, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1004 ], [ %.pn602.pn, %bb.gh ], [ %.pn594.pn, %bb.he ], [ %.pn585.pn, %bb.ib ], [ %.pn575.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1138 ], [ %.pn400.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit882 ], [ %i.blf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1348 ], [ %.pn538.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1394 ], [ %.pn535.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1494 ], [ %.pn520.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1414 ], [ %.pn517.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1505 ], [ %.pn511.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1548 ], [ %.pn557.pn, %bb.kp ], [ %.pn463.pn, %bb.wx ], [ %.pn454.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1838 ], [ %i.dck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1850 ], [ %.pn447.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1894 ], [ %.pn441.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2035 ], [ %lpad.phi2677, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2068 ], [ %.pn412, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2131 ], [ %i.ebx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2143 ], [ %.pn571.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1203 ], [ %.pn544, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1292 ], [ %.pn546.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1338 ], [ %.pn568, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1243 ], [ %.pn565.pn, %bb.ls ], [ %.pn508, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1622 ], [ %i.cka, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1619 ], [ %.pn506, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1706 ], [ %i.ckw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1631 ], [ %.pn482.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1740 ], [ %.pn478.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1762 ], [ %.pn475.pn, %bb.sj ], [ %.pn466, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1591 ]
  resume { ptr, i32 } %common.resume.op

bb.is:                                            ; preds = %bb.iq
  %i.atz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #44
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit:            ; preds = %bb.io, %bb.ip, %bb.ir
  %i.aua = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.235, ptr nonnull @.str.236, i32 481, ptr null)
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #44
  call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  store ptr %i.ke, ptr %51, align 8, !tbaa !263, !alias.scope !1274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #44, !noalias !1274
  store i64 30, ptr %i.aa, align 8, !tbaa !18, !noalias !1274
  %i.aub = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i64 noundef 0) ; 2 uses
  store ptr %i.aub, ptr %51, align 8, !tbaa !128, !alias.scope !1274
  %i.auc = load i64, ptr %i.aa, align 8, !tbaa !18, !noalias !1274 ; 3 uses
  store i64 %i.auc, ptr %i.ke, align 8, !tbaa !29, !alias.scope !1274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.aub, ptr noundef nonnull align 1 dereferenceable(30) @.str.180, i64 30, i1 false)
  store i64 %i.auc, ptr %i.kf, align 8, !tbaa !264, !alias.scope !1274
  %i.aud = load ptr, ptr %51, align 8, !tbaa !128, !alias.scope !1274
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 %i.auc
  store i8 0, ptr %i.aue, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #44, !noalias !1274
  %i.auf = call noundef ptr @_ZN12V3PreProcImp9tokenNameEi(i32 noundef %.3148) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  %i.aug = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.auf) #44, !noalias !1277 ; 2 uses
  %i.auh = load i64, ptr %i.kf, align 8, !tbaa !264, !noalias !1277
  %i.aui = sub i64 4611686018427387903, %i.auh
  %i.auj = icmp ult i64 %i.aui, %i.aug
  br i1 %i.auj, label %bb.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.it:                                            ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.512) #42
          to label %.noexc1113.a unwind label %.loopexit.split-lp2749

.noexc1113.a:                                     ; preds = %bb.it
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit
  %i.auk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull %i.auf, i64 noundef %i.aug)
          to label %.noexc1114 unwind label %.loopexit2748 ; 6 uses

.noexc1114:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.kg, ptr %50, align 8, !tbaa !263, !alias.scope !1277
  %i.aul = load ptr, ptr %i.auk, align 8, !tbaa !128 ; 2 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %i.auk, i64 16 ; 5 uses
  %i.aun = icmp eq ptr %i.aul, %i.aum
  br i1 %i.aun, label %bb.iu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1112

bb.iu:                                            ; preds = %.noexc1114
  %i.auo = getelementptr inbounds nuw i8, ptr %i.auk, i64 8
  %i.aup = load i64, ptr %i.auo, align 8, !tbaa !264 ; 3 uses
  %i.auq = icmp ult i64 %i.aup, 16
  call void @llvm.assume(i1 %i.auq)
  %i.aur = add nuw nsw i64 %i.aup, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kg, ptr noundef nonnull align 8 dereferenceable(1) %i.aum, i64 %i.aur, i1 false)
  br label %bb.iv

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1112: ; preds = %.noexc1114
  store ptr %i.aul, ptr %50, align 8, !tbaa !128, !alias.scope !1277
  %i.aus = load i64, ptr %i.aum, align 8, !tbaa !29
  store i64 %i.aus, ptr %i.kg, align 8, !tbaa !29, !alias.scope !1277
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.auk, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !264
  br label %bb.iv

bb.iv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1112, %bb.iu
  %i.aut = phi i64 [ %i.aup, %bb.iu ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1112 ]
  %i.auu = getelementptr inbounds nuw i8, ptr %i.auk, i64 8
  store i64 %i.aut, ptr %i.kh, align 8, !tbaa !264, !alias.scope !1277
  store ptr %i.aum, ptr %i.auk, align 8, !tbaa !128
  store i64 0, ptr %i.auu, align 8, !tbaa !264
  store i8 0, ptr %i.aum, align 8, !tbaa !29
  %i.auv = load ptr, ptr %50, align 8, !tbaa !128
  %i.auw = load i64, ptr %i.kh, align 8, !tbaa !264
  %i.aux = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aua, ptr noundef %i.auv, i64 noundef %i.auw)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1116 unwind label %bb.ix

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1116: ; preds = %bb.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #44
  store ptr %i.ki, ptr %52, align 8, !tbaa !263
  store i64 0, ptr %i.kj, align 8, !tbaa !264
  store i8 0, ptr %i.ki, align 8, !tbaa !29
  invoke void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.att, ptr noundef nonnull align 8 dereferenceable(112) %i.aux, ptr noundef nonnull align 8 dereferenceable(32) %52)
          to label %bb.iw unwind label %bb.iy

bb.iw:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1116
  %i.auy = load ptr, ptr %52, align 8, !tbaa !128 ; 2 uses
  %i.auz = icmp eq ptr %i.auy, %i.ki
  br i1 %i.auz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1121: ; preds = %bb.iw
  %i.ava = load i64, ptr %i.ki, align 8, !tbaa !29
  %i.avb = add i64 %i.ava, 1
  call void @_ZdlPvm(ptr noundef %i.auy, i64 noundef %i.avb) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1123: ; preds = %bb.iw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1121
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #44
  %i.avc = load ptr, ptr %50, align 8, !tbaa !128 ; 2 uses
  %i.avd = icmp eq ptr %i.avc, %i.kg
  br i1 %i.avd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1124: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1123
  %i.ave = load i64, ptr %i.kg, align 8, !tbaa !29
  %i.avf = add i64 %i.ave, 1
  call void @_ZdlPvm(ptr noundef %i.avc, i64 noundef %i.avf) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1126: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1124
  %i.avg = load ptr, ptr %51, align 8, !tbaa !128 ; 2 uses
  %i.avh = icmp eq ptr %i.avg, %i.ke
  br i1 %i.avh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1127: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1126
  %i.avi = load i64, ptr %i.ke, align 8, !tbaa !29
  %i.avj = add i64 %i.avi, 1
  call void @_ZdlPvm(ptr noundef %i.avg, i64 noundef %i.avj) #45
end_hunk_3
begin_hunk_4_@_ZN12V3PreProcImp13getStateTokenEv:bb.a
  store i8 0, ptr %i.iw, align 8, !tbaa !29
  invoke void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.bht, ptr noundef nonnull align 8 dereferenceable(112) %i.bjj, ptr noundef nonnull align 8 dereferenceable(32) %83)
          to label %bb.mt unwind label %bb.mv

bb.mt:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1310
  %i.bjk = load ptr, ptr %83, align 8, !tbaa !128 ; 2 uses
  %i.bjl = icmp eq ptr %i.bjk, %i.iw
  br i1 %i.bjl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1315

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1315: ; preds = %bb.mt
  %i.bjm = load i64, ptr %i.iw, align 8, !tbaa !29
  %i.bjn = add i64 %i.bjm, 1
  call void @_ZdlPvm(ptr noundef %i.bjk, i64 noundef %i.bjn) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1317

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1317: ; preds = %bb.mt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1315
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #44
  %i.bjo = load ptr, ptr %80, align 8, !tbaa !128 ; 2 uses
  %i.bjp = icmp eq ptr %i.bjo, %i.iu
  br i1 %i.bjp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1318: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1317
  %i.bjq = load i64, ptr %i.iu, align 8, !tbaa !29
  %i.bjr = add i64 %i.bjq, 1
  call void @_ZdlPvm(ptr noundef %i.bjo, i64 noundef %i.bjr) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1320

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1320: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1317, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1318
  %i.bjs = load ptr, ptr %81, align 8, !tbaa !128 ; 2 uses
  %i.bjt = icmp eq ptr %i.bjs, %i.is
  br i1 %i.bjt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1323, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1321: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1320
  %i.bju = load i64, ptr %i.is, align 8, !tbaa !29
  %i.bjv = add i64 %i.bju, 1
  call void @_ZdlPvm(ptr noundef %i.bjs, i64 noundef %i.bjv) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1323

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1323: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1320, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1321
  %i.bjw = load ptr, ptr %82, align 8, !tbaa !128 ; 2 uses
  %i.bjx = icmp eq ptr %i.bjw, %i.iq
  br i1 %i.bjx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1326, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1324

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1324: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1323
  %i.bjy = load i64, ptr %i.iq, align 8, !tbaa !29
  %i.bjz = add i64 %i.bjy, 1
  call void @_ZdlPvm(ptr noundef %i.bjw, i64 noundef %i.bjz) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1326

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1326: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1323, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1324
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #44
  br label %_ZN12V3PreProcImp8statePopEv.exit.backedge

.loopexit2738:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1295
  %lpad.loopexit2740 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1335

.loopexit.split-lp2739:                           ; preds = %bb.mn
  %lpad.loopexit.split-lp2741 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1335

.loopexit2743:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1302
  %lpad.loopexit2745 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1332

.loopexit.split-lp2744:                           ; preds = %bb.mq
  %lpad.loopexit.split-lp2746 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1332

bb.mu:                                            ; preds = %bb.ms
  %i.bka = landingpad { ptr, i32 }
          cleanup
  br label %bb.mw

bb.mv:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1310
  %i.bkb = landingpad { ptr, i32 }
          cleanup
  %i.bkc = load ptr, ptr %83, align 8, !tbaa !128 ; 2 uses
  %i.bkd = icmp eq ptr %i.bkc, %i.iw
  br i1 %i.bkd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1329, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1327: ; preds = %bb.mv
  %i.bke = load i64, ptr %i.iw, align 8, !tbaa !29
  %i.bkf = add i64 %i.bke, 1
  call void @_ZdlPvm(ptr noundef %i.bkc, i64 noundef %i.bkf) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1329

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1329: ; preds = %bb.mv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1327
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #44
  br label %bb.mw

bb.mw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1329, %bb.mu
  %.pn546.pn = phi { ptr, i32 } [ %i.bkb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1329 ], [ %i.bka, %bb.mu ] ; 2 uses
  %i.bkg = load ptr, ptr %80, align 8, !tbaa !128 ; 2 uses
  %i.bkh = icmp eq ptr %i.bkg, %i.iu
  br i1 %i.bkh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1332, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1330

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1330: ; preds = %bb.mw
  %i.bki = load i64, ptr %i.iu, align 8, !tbaa !29
  %i.bkj = add i64 %i.bki, 1
  call void @_ZdlPvm(ptr noundef %i.bkg, i64 noundef %i.bkj) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1332

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1332: ; preds = %bb.mw, %.loopexit2743, %.loopexit.split-lp2744, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1330
  %.pn546.pn.pn = phi { ptr, i32 } [ %.pn546.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1330 ], [ %lpad.loopexit.split-lp2746, %.loopexit.split-lp2744 ], [ %lpad.loopexit2745, %.loopexit2743 ], [ %.pn546.pn, %bb.mw ] ; 2 uses
  %i.bkk = load ptr, ptr %81, align 8, !tbaa !128 ; 2 uses
  %i.bkl = icmp eq ptr %i.bkk, %i.is
  br i1 %i.bkl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1335, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1333

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1333: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1332
  %i.bkm = load i64, ptr %i.is, align 8, !tbaa !29
  %i.bkn = add i64 %i.bkm, 1
  call void @_ZdlPvm(ptr noundef %i.bkk, i64 noundef %i.bkn) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1335

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1335: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1332, %.loopexit2738, %.loopexit.split-lp2739, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1333
  %.pn546.pn.pn.pn = phi { ptr, i32 } [ %.pn546.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1333 ], [ %lpad.loopexit.split-lp2741, %.loopexit.split-lp2739 ], [ %lpad.loopexit2740, %.loopexit2738 ], [ %.pn546.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1332 ]
  %i.bko = load ptr, ptr %82, align 8, !tbaa !128 ; 2 uses
  %i.bkp = icmp eq ptr %i.bko, %i.iq
  br i1 %i.bkp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1336

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1336: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1335
  %i.bkq = load i64, ptr %i.iq, align 8, !tbaa !29
  %i.bkr = add i64 %i.bkq, 1
  call void @_ZdlPvm(ptr noundef %i.bko, i64 noundef %i.bkr) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1338

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1338: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1335, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1336
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #44
  br label %common.resume

bb.mx:                                            ; preds = %_ZNK12V3PreProcImp5stateEv.exit929
  switch i32 %.3148, label %bb.nd [
    i32 309, label %bb.my
    i32 304, label %bb.nc
  ]

bb.my:                                            ; preds = %bb.mx
  %i.bks = load ptr, ptr %i.af, align 8, !tbaa !970
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bks, i64 216
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.gp, ptr noundef nonnull align 8 dereferenceable(32) %i.bkt)
  %i.bku = call noundef i32 @_ZN9V3PreProc5debugEv()
  %i.bkv = icmp sgt i32 %i.bku, 4
  br i1 %i.bkv, label %bb.mz, label %bb.nb

bb.mz:                                            ; preds = %bb.my
  %i.bkw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.193, i64 noundef 12) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #44
  call void @_ZN8V3PreLex12cleanDbgStrgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %84, ptr noundef nonnull align 8 dereferenceable(32) %i.gp)
  %i.bkx = load ptr, ptr %84, align 8, !tbaa !128
  %i.bky = load i64, ptr %i.gq, align 8, !tbaa !264
  %i.bkz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bkx, i64 noundef %i.bky)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1340 unwind label %bb.na

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1340: ; preds = %bb.mz
  %i.bla = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bkz, ptr noundef nonnull @.str.77, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1342 unwind label %bb.na ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1342: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1340
  %i.blb = load ptr, ptr %84, align 8, !tbaa !128 ; 2 uses
  %i.blc = icmp eq ptr %i.blb, %i.gr
  br i1 %i.blc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1343: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1342
  %i.bld = load i64, ptr %i.gr, align 8, !tbaa !29
  %i.ble = add i64 %i.bld, 1
  call void @_ZdlPvm(ptr noundef %i.blb, i64 noundef %i.ble) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1345: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit1342, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1343
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #44
  br label %bb.nb

bb.na:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1340, %bb.mz
  %i.blf = landingpad { ptr, i32 }
          cleanup
  %i.blg = load ptr, ptr %84, align 8, !tbaa !128 ; 2 uses
  %i.blh = icmp eq ptr %i.blg, %i.gr
  br i1 %i.blh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1346: ; preds = %bb.na
  %i.bli = load i64, ptr %i.gr, align 8, !tbaa !29
  %i.blj = add i64 %i.bli, 1
  call void @_ZdlPvm(ptr noundef %i.blg, i64 noundef %i.blj) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1348

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1348: ; preds = %bb.na, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1346
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #44
  br label %common.resume

bb.nb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1345, %bb.my
  call void @_ZN12V3PreProcImp11stateChangeENS_9ProcStateE(ptr noundef nonnull align 8 dereferenceable(1032) %0, i8 noundef zeroext 9)
  %i.blk = load ptr, ptr %i.af, align 8, !tbaa !970 ; 3 uses
  %241 = load i32, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !12 ; 3 uses
  %242 = load i32, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12 ; 2 uses
  %.not.i.i1348 = icmp slt i32 %241, %242
  %.pre.i.i1349 = load ptr, ptr @_ZL14yy_start_stack, align 8, !tbaa !729 ; 3 uses
  br i1 %.not.i.i1348, label %_ZN8V3PreLex17pushStateDefValueEv.exit, label %243

243:                                              ; preds = %bb.nb
  %244 = add nsw i32 %242, 25                     ; 2 uses
  store i32 %244, ptr @_ZL20yy_start_stack_depth, align 4, !tbaa !12
  %245 = sext i32 %244 to i64
  %246 = shl nsw i64 %245, 2                      ; 2 uses
  %.not4.i.i1350 = icmp eq ptr %.pre.i.i1349, null
  br i1 %.not4.i.i1350, label %247, label %249

247:                                              ; preds = %243
  %248 = call noalias noundef ptr @malloc(i64 noundef %246) #41
  br label %251

249:                                              ; preds = %243
  %250 = call noalias noundef ptr @realloc(ptr noundef nonnull %.pre.i.i1349, i64 noundef %246) #43
  br label %251

251:                                              ; preds = %249, %247
  %storemerge.i.i1351 = phi ptr [ %248, %247 ], [ %250, %249 ] ; 3 uses
  store ptr %storemerge.i.i1351, ptr @_ZL14yy_start_stack, align 8, !tbaa !729
  %.not5.i.i1352 = icmp eq ptr %storemerge.i.i1351, null
  br i1 %.not5.i.i1352, label %252, label %_ZN8V3PreLex17pushStateDefValueEv.exit

252:                                              ; preds = %251
  call fastcc void @_ZL14yy_fatal_errorPKc(ptr noundef nonnull @.str.242) #42
  unreachable

_ZN8V3PreLex17pushStateDefValueEv.exit:           ; preds = %bb.nb, %251
  %253 = phi ptr [ %storemerge.i.i1351, %251 ], [ %.pre.i.i1349, %bb.nb ]
  %254 = load i32, ptr @_ZL8yy_start, align 4, !tbaa !12
  %255 = add nsw i32 %254, -1
  %256 = sdiv i32 %255, 2
  %257 = add nsw i32 %241, 1
  store i32 %257, ptr @_ZL18yy_start_stack_ptr, align 4, !tbaa !12
  %258 = sext i32 %241 to i64
  %259 = getelementptr inbounds [4 x i8], ptr %253, i64 %258
  store i32 %256, ptr %259, align 4, !tbaa !12
  store i32 15, ptr @_ZL8yy_start, align 4, !tbaa !12
  %260 = getelementptr inbounds nuw i8, ptr %i.blk, i64 208
  store i32 0, ptr %260, align 8, !tbaa !286
  %261 = getelementptr inbounds nuw i8, ptr %i.blk, i64 216
  %262 = getelementptr inbounds nuw i8, ptr %i.blk, i64 224
  %263 = load i64, ptr %262, align 8, !tbaa !264
  %264 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %261, i64 noundef 0, i64 noundef %263, ptr noundef nonnull @.str.2, i64 noundef 0) ; 0 uses
  br label %_ZN12V3PreProcImp8statePopEv.exit.backedge

bb.nc:                                            ; preds = %bb.mx
  %i.bll = load i32, ptr %i.bg, align 8, !tbaa !914
  %.not543 = icmp eq i32 %i.bll, 0
  br i1 %.not543, label %_ZN12V3PreProcImp8statePopEv.exit.thread, label %_ZN12V3PreProcImp8statePopEv.exit.backedge

bb.nd:                                            ; preds = %bb.mx
  %i.blm = load ptr, ptr %i.af, align 8, !tbaa !970
  %i.bln = getelementptr inbounds nuw i8, ptr %i.blm, i64 104
  %i.blo = load ptr, ptr %i.bln, align 8, !tbaa !788
  %i.blp = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.blq = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.blr = icmp eq i8 %i.blq, 0
  br i1 %i.blr, label %bb.ne, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit1350, !prof !262

bb.ne:                                            ; preds = %bb.nd
  %i.bls = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #44
  %.not.i.i1349 = icmp eq i32 %i.bls, 0
  br i1 %.not.i.i1349, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit1350, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.ng unwind label %bb.nh

bb.ng:                                            ; preds = %bb.nf
  %i.blt = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #44
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit1350

bb.nh:                                            ; preds = %bb.nf
  %i.blu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #44
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit1350:        ; preds = %bb.nd, %bb.ne, %bb.ng
  %i.blv = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.235, ptr nonnull @.str.236, i32 481, ptr null)
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %86) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #44
  call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  store ptr %i.gs, ptr %87, align 8, !tbaa !263, !alias.scope !1302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #44, !noalias !1302
  store i64 42, ptr %i.x, align 8, !tbaa !18, !noalias !1302
  %i.blw = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %87, ptr noundef nonnull align 8 dereferenceable(8) %i.x, i64 noundef 0) ; 3 uses
  store ptr %i.blw, ptr %87, align 8, !tbaa !128, !alias.scope !1302
  %i.blx = load i64, ptr %i.x, align 8, !tbaa !18, !noalias !1302 ; 3 uses
  store i64 %i.blx, ptr %i.gs, align 8, !tbaa !29, !alias.scope !1302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.blw, ptr noundef nonnull align 1 dereferenceable(42) @.str.194, i64 42, i1 false)
  store i64 %i.blx, ptr %i.gt, align 8, !tbaa !264, !alias.scope !1302
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blw, i64 %i.blx
  store i8 0, ptr %i.bly, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #44, !noalias !1302
  %i.blz = call noundef ptr @_ZN12V3PreProcImp9tokenNameEi(i32 noundef %.3148) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %i.bma = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.blz) #44, !noalias !1305 ; 2 uses
  %i.bmb = load i64, ptr %i.gt, align 8, !tbaa !264, !noalias !1305
  %i.bmc = sub i64 4611686018427387903, %i.bmb
  %i.bmd = icmp ult i64 %i.bmc, %i.bma
  br i1 %i.bmd, label %bb.ni, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1351

bb.ni:                                            ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit1350
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.512) #42
          to label %.noexc1355 unwind label %.loopexit.split-lp2724

.noexc1355:                                       ; preds = %bb.ni
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1351: ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit1350
  %i.bme = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %87, ptr noundef nonnull %i.blz, i64 noundef %i.bma)
          to label %.noexc1356 unwind label %.loopexit2723 ; 6 uses

.noexc1356:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1351
  store ptr %i.gu, ptr %86, align 8, !tbaa !263, !alias.scope !1305
  %i.bmf = load ptr, ptr %i.bme, align 8, !tbaa !128 ; 2 uses
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.bme, i64 16 ; 5 uses
  %i.bmh = icmp eq ptr %i.bmf, %i.bmg
  br i1 %i.bmh, label %bb.nj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1352

bb.nj:                                            ; preds = %.noexc1356
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.bme, i64 8
  %i.bmj = load i64, ptr %i.bmi, align 8, !tbaa !264 ; 3 uses
  %i.bmk = icmp ult i64 %i.bmj, 16
  call void @llvm.assume(i1 %i.bmk)
  %i.bml = add nuw nsw i64 %i.bmj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gu, ptr noundef nonnull align 8 dereferenceable(1) %i.bmg, i64 %i.bml, i1 false)
  br label %bb.nk

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1352: ; preds = %.noexc1356
  store ptr %i.bmf, ptr %86, align 8, !tbaa !128, !alias.scope !1305
  %i.bmm = load i64, ptr %i.bmg, align 8, !tbaa !29
  store i64 %i.bmm, ptr %i.gu, align 8, !tbaa !29, !alias.scope !1305
  %.phi.trans.insert.i1353 = getelementptr inbounds nuw i8, ptr %i.bme, i64 8
  %.pre.i1354 = load i64, ptr %.phi.trans.insert.i1353, align 8, !tbaa !264
  br label %bb.nk

bb.nk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1352, %bb.nj
  %i.bmn = phi i64 [ %i.bmj, %bb.nj ], [ %.pre.i1354, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1352 ]
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bme, i64 8
  store i64 %i.bmn, ptr %i.gv, align 8, !tbaa !264, !alias.scope !1305
  store ptr %i.bmg, ptr %i.bme, align 8, !tbaa !128
  store i64 0, ptr %i.bmo, align 8, !tbaa !264
  store i8 0, ptr %i.bmg, align 8, !tbaa !29
  call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  %i.bmp = load i64, ptr %i.gv, align 8, !tbaa !264, !noalias !1308
  %i.bmq = icmp eq i64 %i.bmp, 4611686018427387903
  br i1 %i.bmq, label %bb.nl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1358

bb.nl:                                            ; preds = %bb.nk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.512) #42
          to label %.noexc1362 unwind label %.loopexit.split-lp2729

.noexc1362:                                       ; preds = %bb.nl
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1358: ; preds = %bb.nk
  %i.bmr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %86, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc1363 unwind label %.loopexit2728 ; 6 uses

.noexc1363:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i1358
  store ptr %i.gw, ptr %85, align 8, !tbaa !263, !alias.scope !1308
  %i.bms = load ptr, ptr %i.bmr, align 8, !tbaa !128 ; 2 uses
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bmr, i64 16 ; 5 uses
  %i.bmu = icmp eq ptr %i.bms, %i.bmt
  br i1 %i.bmu, label %bb.nm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1359

bb.nm:                                            ; preds = %.noexc1363
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bmr, i64 8
  %i.bmw = load i64, ptr %i.bmv, align 8, !tbaa !264 ; 3 uses
  %i.bmx = icmp ult i64 %i.bmw, 16
  call void @llvm.assume(i1 %i.bmx)
  %i.bmy = add nuw nsw i64 %i.bmw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gw, ptr noundef nonnull align 8 dereferenceable(1) %i.bmt, i64 %i.bmy, i1 false)
  br label %bb.nn

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1359: ; preds = %.noexc1363
  store ptr %i.bms, ptr %85, align 8, !tbaa !128, !alias.scope !1308
  %i.bmz = load i64, ptr %i.bmt, align 8, !tbaa !29
  store i64 %i.bmz, ptr %i.gw, align 8, !tbaa !29, !alias.scope !1308
  %.phi.trans.insert.i1360 = getelementptr inbounds nuw i8, ptr %i.bmr, i64 8
  %.pre.i1361 = load i64, ptr %.phi.trans.insert.i1360, align 8, !tbaa !264
  br label %bb.nn

bb.nn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1359, %bb.nm
  %i.bna = phi i64 [ %i.bmw, %bb.nm ], [ %.pre.i1361, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1359 ]
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bmr, i64 8
  store i64 %i.bna, ptr %i.gx, align 8, !tbaa !264, !alias.scope !1308
  store ptr %i.bmt, ptr %i.bmr, align 8, !tbaa !128
  store i64 0, ptr %i.bnb, align 8, !tbaa !264
  store i8 0, ptr %i.bmt, align 8, !tbaa !29
  %i.bnc = load ptr, ptr %85, align 8, !tbaa !128
  %i.bnd = load i64, ptr %i.gx, align 8, !tbaa !264
  %i.bne = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.blv, ptr noundef %i.bnc, i64 noundef %i.bnd)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1366 unwind label %bb.np

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1366: ; preds = %bb.nn
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #44
  store ptr %i.gy, ptr %88, align 8, !tbaa !263
  store i64 0, ptr %i.gz, align 8, !tbaa !264
  store i8 0, ptr %i.gy, align 8, !tbaa !29
  invoke void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.blo, ptr noundef nonnull align 8 dereferenceable(112) %i.bne, ptr noundef nonnull align 8 dereferenceable(32) %88)
          to label %bb.no unwind label %bb.nq

bb.no:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit1366
  %i.bnf = load ptr, ptr %88, align 8, !tbaa !128 ; 2 uses
  %i.bng = icmp eq ptr %i.bnf, %i.gy
  br i1 %i.bng, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1373, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1371

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1371: ; preds = %bb.no
  %i.bnh = load i64, ptr %i.gy, align 8, !tbaa !29
  %i.bni = add i64 %i.bnh, 1
  call void @_ZdlPvm(ptr noundef %i.bnf, i64 noundef %i.bni) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1373

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1373: ; preds = %bb.no, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1371
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #44
  %i.bnj = load ptr, ptr %85, align 8, !tbaa !128 ; 2 uses
  %i.bnk = icmp eq ptr %i.bnj, %i.gw
  br i1 %i.bnk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1376, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1374

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1374: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1373
  %i.bnl = load i64, ptr %i.gw, align 8, !tbaa !29
  %i.bnm = add i64 %i.bnl, 1
  call void @_ZdlPvm(ptr noundef %i.bnj, i64 noundef %i.bnm) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1376

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1376: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1373, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1374
  %i.bnn = load ptr, ptr %86, align 8, !tbaa !128 ; 2 uses
  %i.bno = icmp eq ptr %i.bnn, %i.gu
  br i1 %i.bno, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1379, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1377

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1377: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1376
  %i.bnp = load i64, ptr %i.gu, align 8, !tbaa !29
  %i.bnq = add i64 %i.bnp, 1
  call void @_ZdlPvm(ptr noundef %i.bnn, i64 noundef %i.bnq) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1379

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1379: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1376, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1377
  %i.bnr = load ptr, ptr %87, align 8, !tbaa !128 ; 2 uses
end_hunk_4
