Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/gmlscan?download=true
inline.NumInlined: 64
inline.NumDeleted: 22
begin_hunk_0_@gmllex:bb.a
  %.pre400 = load i32, ptr @yy_n_chars, align 4, !tbaa !12
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zz, i64 28
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !25 ; 2 uses
  store i32 %i.aae, ptr @yy_n_chars, align 4, !tbaa !12
  %i.aaf = load ptr, ptr @gmlin, align 8, !tbaa !9
  store ptr %i.aaf, ptr %i.zz, align 8, !tbaa !28
  store i32 1, ptr %i.aaa, align 8, !tbaa !36
  br label %bb.eb

bb.eb:                                            ; preds = %._crit_edge399, %bb.ea
  %i.aag = phi i32 [ %i.aab, %._crit_edge399 ], [ 1, %bb.ea ]
  %i.aah = phi i32 [ %.pre400, %._crit_edge399 ], [ %i.aae, %bb.ea ]
  %i.aai = load ptr, ptr @yy_c_buf_p, align 8, !tbaa !27 ; 4 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.zz, i64 8
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !23 ; 8 uses
  %i.aal = ptrtoaddr ptr %i.aak to i64
  %i.aam = sext i32 %i.aah to i64                 ; 2 uses
  %i.aan = getelementptr inbounds i8, ptr %i.aak, i64 %i.aam ; 2 uses
  %.not104 = icmp ugt ptr %i.aai, %i.aan
  br i1 %.not104, label %bb.em, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.aao = ptrtoint ptr %.346 to i64
  %i.aap = ptrtoint ptr %i.zu to i64
  %i.aaq = sub i64 %i.aao, %i.aap                 ; 2 uses
  %i.aar = trunc i64 %i.aaq to i32
  %i.aas = load ptr, ptr @gmltext, align 8, !tbaa !27 ; 4 uses
  %i.aat = shl i64 %i.aaq, 32
  %sext = add i64 %i.aat, -4294967296
  %i.aau = ashr exact i64 %sext, 32
  %i.aav = getelementptr inbounds i8, ptr %i.aas, i64 %i.aau ; 5 uses
  store ptr %i.aav, ptr @yy_c_buf_p, align 8, !tbaa !27
  %i.aaw = load i32, ptr @yy_start, align 4, !tbaa !12
  %i.aax = getelementptr inbounds nuw i8, ptr %i.zz, i64 40
  %i.aay = load i32, ptr %i.aax, align 8, !tbaa !30
  %i.aaz = add nsw i32 %i.aay, %i.aaw             ; 2 uses
  %i.aba = icmp sgt i32 %i.aar, 1
  br i1 %i.aba, label %.lr.ph26.i, label %yy_get_previous_state.exit

.lr.ph26.i:                                       ; preds = %bb.ec, %._crit_edge.i
  %.01624.i = phi ptr [ %i.acj, %._crit_edge.i ], [ %i.aas, %bb.ec ] ; 3 uses
  %.01723.i = phi i32 [ %i.aci, %._crit_edge.i ], [ %i.aaz, %bb.ec ] ; 3 uses
  %i.abb = load i8, ptr %.01624.i, align 1, !tbaa !29 ; 2 uses
  %.not.i111 = icmp eq i8 %i.abb, 0
  br i1 %.not.i111, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph26.i
  %i.abc = zext i8 %i.abb to i64
  %i.abd = getelementptr inbounds nuw i8, ptr @yy_ec, i64 %i.abc
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !29
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %.lr.ph26.i
  %i.abf = phi i8 [ %i.abe, %bb.ed ], [ 1, %.lr.ph26.i ] ; 2 uses
  %i.abg = sext i32 %.01723.i to i64              ; 3 uses
  %i.abh = getelementptr inbounds [2 x i8], ptr @yy_accept, i64 %i.abg
  %i.abi = load i16, ptr %i.abh, align 2, !tbaa !31
  %.not19.i = icmp eq i16 %i.abi, 0
  br i1 %.not19.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  store i32 %.01723.i, ptr @yy_last_accepting_state, align 4, !tbaa !12
  store ptr %.01624.i, ptr @yy_last_accepting_cpos, align 8, !tbaa !27
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %i.abj = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.abg
  %i.abk = load i16, ptr %i.abj, align 2, !tbaa !31
  %i.abl = sext i16 %i.abk to i64
  %i.abm = zext i8 %i.abf to i64                  ; 2 uses
  %i.abn = add nsw i64 %i.abl, %i.abm             ; 2 uses
  %i.abo = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.abn
  %i.abp = load i16, ptr %i.abo, align 2, !tbaa !31
  %i.abq = sext i16 %i.abp to i32
  %.not2021.i = icmp eq i32 %.01723.i, %i.abq
  br i1 %.not2021.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.eg, %bb.ei
  %i.abr = phi i64 [ %i.acc, %bb.ei ], [ %i.abm, %bb.eg ]
  %i.abs = phi i64 [ %i.aby, %bb.ei ], [ %i.abg, %bb.eg ]
  %.022.i = phi i8 [ %.1.i, %bb.ei ], [ %i.abf, %bb.eg ]
  %i.abt = getelementptr inbounds [2 x i8], ptr @yy_def, i64 %i.abs
  %i.abu = load i16, ptr %i.abt, align 2, !tbaa !31 ; 3 uses
  %i.abv = icmp sgt i16 %i.abu, 142
  br i1 %i.abv, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %.lr.ph.i
  %i.abw = getelementptr inbounds nuw i8, ptr @yy_meta, i64 %i.abr
  %i.abx = load i8, ptr %i.abw, align 1, !tbaa !29
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %.lr.ph.i
  %.1.i = phi i8 [ %i.abx, %bb.eh ], [ %.022.i, %.lr.ph.i ] ; 2 uses
  %i.aby = sext i16 %i.abu to i64                 ; 2 uses
  %i.abz = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.aby
  %i.aca = load i16, ptr %i.abz, align 2, !tbaa !31
  %i.acb = sext i16 %i.aca to i64
  %i.acc = zext i8 %.1.i to i64                   ; 2 uses
  %i.acd = add nsw i64 %i.acb, %i.acc             ; 2 uses
  %i.ace = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.acd
  %i.acf = load i16, ptr %i.ace, align 2, !tbaa !31
  %.not20.i = icmp eq i16 %i.abu, %i.acf
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !37

._crit_edge.i:                                    ; preds = %bb.ei, %bb.eg
  %.lcssa.i = phi i64 [ %i.abn, %bb.eg ], [ %i.acd, %bb.ei ]
  %i.acg = getelementptr inbounds [2 x i8], ptr @yy_nxt, i64 %.lcssa.i
  %i.ach = load i16, ptr %i.acg, align 2, !tbaa !31
  %i.aci = sext i16 %i.ach to i32                 ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %.01624.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.acj, %i.aav
  br i1 %exitcond.not.i, label %yy_get_previous_state.exit, label %.lr.ph26.i, !llvm.loop !38

yy_get_previous_state.exit:                       ; preds = %._crit_edge.i, %bb.ec
  %.017.lcssa.i = phi i32 [ %i.aaz, %bb.ec ], [ %i.aci, %._crit_edge.i ] ; 4 uses
  %i.ack = sext i32 %.017.lcssa.i to i64          ; 3 uses
  %i.acl = getelementptr inbounds [2 x i8], ptr @yy_accept, i64 %i.ack
  %i.acm = load i16, ptr %i.acl, align 2, !tbaa !31
  %.not.i112 = icmp eq i16 %i.acm, 0
  br i1 %.not.i112, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %yy_get_previous_state.exit
  store i32 %.017.lcssa.i, ptr @yy_last_accepting_state, align 4, !tbaa !12
  store ptr %i.aav, ptr @yy_last_accepting_cpos, align 8, !tbaa !27
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %yy_get_previous_state.exit
  %i.acn = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.ack
  %i.aco = load i16, ptr %i.acn, align 2, !tbaa !31
  %i.acp = sext i16 %i.aco to i64
  %i.acq = add nsw i64 %i.acp, 1                  ; 2 uses
  %i.acr = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.acq
  %i.acs = load i16, ptr %i.acr, align 2, !tbaa !31
  %i.act = sext i16 %i.acs to i32
  %.not1415.i = icmp eq i32 %.017.lcssa.i, %i.act
  br i1 %.not1415.i, label %yy_try_NUL_trans.exit, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.ek, %.lr.ph.i113
  %i.acu = phi i64 [ %i.acx, %.lr.ph.i113 ], [ %i.ack, %bb.ek ]
  %i.acv = getelementptr inbounds [2 x i8], ptr @yy_def, i64 %i.acu
  %i.acw = load i16, ptr %i.acv, align 2, !tbaa !31 ; 2 uses
  %i.acx = sext i16 %i.acw to i64                 ; 2 uses
  %i.acy = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.acx
  %i.acz = load i16, ptr %i.acy, align 2, !tbaa !31
  %i.ada = sext i16 %i.acz to i64
  %i.adb = add nsw i64 %i.ada, 1                  ; 2 uses
  %i.adc = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.adb
  %i.add = load i16, ptr %i.adc, align 2, !tbaa !31
  %.not14.i = icmp eq i16 %i.acw, %i.add
  br i1 %.not14.i, label %yy_try_NUL_trans.exit, label %.lr.ph.i113, !llvm.loop !39

yy_try_NUL_trans.exit:                            ; preds = %.lr.ph.i113, %bb.ek
  %.lcssa.i115 = phi i64 [ %i.acq, %bb.ek ], [ %i.adb, %.lr.ph.i113 ] ; 2 uses
  %i.ade = getelementptr inbounds [2 x i8], ptr @yy_nxt, i64 %.lcssa.i115
  %i.adf = load i16, ptr %i.ade, align 2, !tbaa !31 ; 2 uses
  %i.adg = icmp eq i16 %i.adf, 142
  %.not105153 = icmp eq i64 %.lcssa.i115, 0
  %.not105 = or i1 %.not105153, %i.adg
  br i1 %.not105, label %.preheader.outer.backedge, label %bb.el

bb.el:                                            ; preds = %yy_try_NUL_trans.exit
  %i.adh = sext i16 %i.adf to i32
  %i.adi = getelementptr inbounds nuw i8, ptr %i.aav, i64 1 ; 2 uses
  store ptr %i.adi, ptr @yy_c_buf_p, align 8, !tbaa !27
  br label %.loopexit155.backedge

.loopexit155.backedge:                            ; preds = %._crit_edge.i131, %bb.el, %yy_get_next_buffer.exit.jt0
  %.047.be = phi i32 [ %i.adh, %bb.el ], [ %i.ajb, %yy_get_next_buffer.exit.jt0 ], [ %i.alf, %._crit_edge.i131 ]
  %.043.be = phi ptr [ %i.adi, %bb.el ], [ %i.ait, %yy_get_next_buffer.exit.jt0 ], [ %i.ait, %._crit_edge.i131 ]
  %.040.be = phi ptr [ %i.aas, %bb.el ], [ %i.aiq, %yy_get_next_buffer.exit.jt0 ], [ %i.aiq, %._crit_edge.i131 ]
  br label %.loopexit155

bb.em:                                            ; preds = %bb.eb
  %i.adj = load ptr, ptr @gmltext, align 8, !tbaa !27 ; 8 uses
  %i.adk = getelementptr i8, ptr %i.aan, i64 1
  %i.adl = icmp ugt ptr %i.aai, %i.adk
  br i1 %i.adl, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.8) #29
  unreachable

bb.eo:                                            ; preds = %bb.em
  %i.adm = getelementptr inbounds nuw i8, ptr %i.zz, i64 52
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !40
  %i.ado = icmp eq i32 %i.adn, 0
  %i.adp = ptrtoint ptr %i.aai to i64             ; 2 uses
  %i.adq = ptrtoint ptr %i.adj to i64             ; 3 uses
  br i1 %i.ado, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.adr = sub i64 %i.adp, %i.adq
  %i.ads = icmp eq i64 %i.adr, 1
  br i1 %i.ads, label %yy_get_previous_state.exit134, label %yy_get_next_buffer.exit.thread151

bb.eq:                                            ; preds = %bb.eo
  %i.adt = xor i64 %i.adq, -1
  %i.adu = add i64 %i.adt, %i.adp                 ; 8 uses
  %i.adv = trunc i64 %i.adu to i32                ; 8 uses
  %i.adw = icmp sgt i32 %i.adv, 0
  br i1 %i.adw, label %iter.check, label %._crit_edge.i116

iter.check:                                       ; preds = %bb.eq
  %i.adx = and i64 %i.adu, 2147483647             ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.adx, 4
  %i.ady = sub i64 %i.adq, %i.aal
  %diff.check = icmp ugt i64 %i.ady, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i118.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check745 = icmp samesign ult i64 %i.adx, 32
  br i1 %min.iters.check745, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.adz = and i64 %i.adu, 28
  %n.vec = and i64 %i.adu, 2147483616             ; 6 uses
  %i.aea = trunc nuw nsw i64 %n.vec to i32
  %i.aeb = getelementptr i8, ptr %i.adj, i64 %n.vec
  %i.aec = getelementptr i8, ptr %i.aak, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.adj, i64 %index ; 2 uses
  %next.gep746 = getelementptr i8, ptr %i.aak, i64 %index ; 2 uses
  %i.aed = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !29
  %wide.load747 = load <16 x i8>, ptr %i.aed, align 1, !tbaa !29
  %i.aee = getelementptr i8, ptr %next.gep746, i64 16
  store <16 x i8> %wide.load, ptr %next.gep746, align 1, !tbaa !29
  store <16 x i8> %wide.load747, ptr %i.aee, align 1, !tbaa !29
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aef = icmp eq i64 %index.next, %n.vec
  br i1 %i.aef, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.adx, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.adz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i118.preheader, label %vec.epilog.ph, !prof !44

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec750 = and i64 %i.adu, 2147483644          ; 5 uses
  %i.aeg = trunc nuw nsw i64 %n.vec750 to i32
  %i.aeh = getelementptr i8, ptr %i.adj, i64 %n.vec750
  %i.aei = getelementptr i8, ptr %i.aak, i64 %n.vec750
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index751 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next755, %vec.epilog.vector.body ] ; 3 uses
  %next.gep752 = getelementptr i8, ptr %i.adj, i64 %index751
  %next.gep753 = getelementptr i8, ptr %i.aak, i64 %index751
  %wide.load754 = load <4 x i8>, ptr %next.gep752, align 1, !tbaa !29
  store <4 x i8> %wide.load754, ptr %next.gep753, align 1, !tbaa !29
  %index.next755 = add nuw i64 %index751, 4       ; 2 uses
  %i.aej = icmp eq i64 %index.next755, %n.vec750
  br i1 %i.aej, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !45

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n756 = icmp eq i64 %i.adx, %n.vec750
  br i1 %cmp.n756, label %._crit_edge.loopexit.i, label %.lr.ph.i118.preheader

.lr.ph.i118.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03356.i.ph = phi i32 [ 0, %iter.check ], [ %i.aea, %vec.epilog.iter.check ], [ %i.aeg, %vec.epilog.middle.block ]
  %.03455.i.ph = phi ptr [ %i.adj, %iter.check ], [ %i.aeb, %vec.epilog.iter.check ], [ %i.aeh, %vec.epilog.middle.block ]
  %.03554.i.ph = phi ptr [ %i.aak, %iter.check ], [ %i.aec, %vec.epilog.iter.check ], [ %i.aei, %vec.epilog.middle.block ]
  br label %.lr.ph.i118

.lr.ph.i118:                                      ; preds = %.lr.ph.i118.preheader, %.lr.ph.i118
  %.03356.i = phi i32 [ %i.aen, %.lr.ph.i118 ], [ %.03356.i.ph, %.lr.ph.i118.preheader ]
  %.03455.i = phi ptr [ %i.aek, %.lr.ph.i118 ], [ %.03455.i.ph, %.lr.ph.i118.preheader ] ; 2 uses
  %.03554.i = phi ptr [ %i.aem, %.lr.ph.i118 ], [ %.03554.i.ph, %.lr.ph.i118.preheader ] ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %.03455.i, i64 1
  %i.ael = load i8, ptr %.03455.i, align 1, !tbaa !29
  %i.aem = getelementptr inbounds nuw i8, ptr %.03554.i, i64 1
  store i8 %i.ael, ptr %.03554.i, align 1, !tbaa !29
  %i.aen = add nuw nsw i32 %.03356.i, 1           ; 2 uses
  %exitcond.not.i119 = icmp eq i32 %i.aen, %i.adv
  br i1 %exitcond.not.i119, label %._crit_edge.loopexit.i, label %.lr.ph.i118, !llvm.loop !46

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i118, %vec.epilog.middle.block, %middle.block
  %.pre.i = load ptr, ptr %i.zy, align 8, !tbaa !18 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.i, i64 56
  %.pre401 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !36
  br label %._crit_edge.i116

._crit_edge.i116:                                 ; preds = %._crit_edge.loopexit.i, %bb.eq
  %i.aeo = phi i32 [ %.pre401, %._crit_edge.loopexit.i ], [ %i.aag, %bb.eq ]
  %i.aep = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.zz, %bb.eq ] ; 5 uses
  %i.aeq = icmp eq i32 %i.aeo, 2
  br i1 %i.aeq, label %.thread49.i, label %bb.er

.thread49.i:                                      ; preds = %._crit_edge.i116
  store i32 0, ptr @yy_n_chars, align 4, !tbaa !12
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aep, i64 28
  store i32 0, ptr %i.aer, align 4, !tbaa !25
  br label %bb.ew

bb.er:                                            ; preds = %._crit_edge.i116
  %i.aes = xor i32 %i.adv, -1                     ; 2 uses
  %.pn.in57.i = getelementptr inbounds nuw i8, ptr %i.aep, i64 24
  %.pn58.i = load i32, ptr %.pn.in57.i, align 8, !tbaa !20 ; 2 uses
  %.059.i = add i32 %.pn58.i, %i.aes              ; 2 uses
  %i.aet = icmp slt i32 %.059.i, 1
  br i1 %i.aet, label %.lr.ph61.i, label %._crit_edge62.i

.lr.ph61.i:                                       ; preds = %bb.er, %bb.et
  %i.aeu = phi i32 [ %.pn.i, %bb.et ], [ %.pn58.i, %bb.er ] ; 4 uses
  %i.aev = phi ptr [ %i.afo, %bb.et ], [ %i.aep, %bb.er ] ; 3 uses
  %i.aew = phi ptr [ %i.afn, %bb.et ], [ %i.aai, %bb.er ]
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aev, i64 8 ; 3 uses
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !23 ; 2 uses
  %i.aez = ptrtoint ptr %i.aew to i64
  %i.afa = ptrtoint ptr %i.aey to i64
  %i.afb = sub i64 %i.aez, %i.afa
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aev, i64 32
  %i.afd = load i32, ptr %i.afc, align 8, !tbaa !24
  %.not.i117 = icmp eq i32 %i.afd, 0
  br i1 %.not.i117, label %.thread.i, label %bb.es

.thread.i:                                        ; preds = %.lr.ph61.i
  store ptr null, ptr %i.aex, align 8, !tbaa !23
  br label %.loopexit.i

bb.es:                                            ; preds = %.lr.ph61.i
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aev, i64 24
  %i.aff = icmp slt i32 %i.aeu, 1
  %i.afg = shl nuw nsw i32 %i.aeu, 1
  %.nonneg.i = sub i32 0, %i.aeu
  %i.afh = lshr i32 %.nonneg.i, 3
  %i.afi = sub nsw i32 %i.aeu, %i.afh
  %storemerge43.i = select i1 %i.aff, i32 %i.afi, i32 %i.afg ; 2 uses
  store i32 %storemerge43.i, ptr %i.afe, align 8, !tbaa !20
  %i.afj = add nsw i32 %storemerge43.i, 2
  %i.afk = sext i32 %i.afj to i64
  %i.afl = tail call noalias noundef ptr @realloc(ptr noundef %i.aey, i64 noundef %i.afk) #30 ; 3 uses
  store ptr %i.afl, ptr %i.aex, align 8, !tbaa !23
  %.not44.i = icmp eq ptr %i.afl, null
  br i1 %.not44.i, label %.loopexit.i, label %bb.et

.loopexit.i:                                      ; preds = %bb.es, %.thread.i
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.9) #29
  unreachable

bb.et:                                            ; preds = %bb.es
  %sext45.i = shl i64 %i.afb, 32
  %i.afm = ashr exact i64 %sext45.i, 32
  %i.afn = getelementptr inbounds i8, ptr %i.afl, i64 %i.afm ; 2 uses
  store ptr %i.afn, ptr @yy_c_buf_p, align 8, !tbaa !27
  %i.afo = load ptr, ptr %i.zy, align 8, !tbaa !18 ; 3 uses
  %.pn.in.i = getelementptr inbounds nuw i8, ptr %i.afo, i64 24
  %.pn.i = load i32, ptr %.pn.in.i, align 8, !tbaa !20 ; 2 uses
  %.0.i = add i32 %.pn.i, %i.aes                  ; 2 uses
  %i.afp = icmp slt i32 %.0.i, 1
  br i1 %i.afp, label %.lr.ph61.i, label %._crit_edge62.i, !llvm.loop !47

._crit_edge62.i:                                  ; preds = %bb.et, %bb.er
  %i.afq = phi ptr [ %i.aep, %bb.er ], [ %i.afo, %bb.et ]
  %.0.lcssa.i = phi i32 [ %.059.i, %bb.er ], [ %.0.i, %bb.et ]
  %i.afr = tail call i32 @llvm.umin.i32(i32 %.0.lcssa.i, i32 8192)
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afq, i64 8
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !23
  %sext.i = shl i64 %i.adu, 32
  %i.afu = ashr exact i64 %sext.i, 32
  %i.afv = getelementptr inbounds i8, ptr %i.aft, i64 %i.afu
  %i.afw = zext nneg i32 %i.afr to i64
  %i.afx = load ptr, ptr @Ifile, align 8, !tbaa !9
  %i.afy = tail call i64 @fread(ptr noundef %i.afv, i64 noundef 1, i64 noundef %i.afw, ptr noundef %i.afx)
  %i.afz = trunc i64 %i.afy to i32                ; 6 uses
  store i32 %i.afz, ptr @yy_n_chars, align 4, !tbaa !12
  %i.aga = icmp slt i32 %i.afz, 0
  br i1 %i.aga, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %._crit_edge62.i
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.10) #29
  unreachable

bb.ev:                                            ; preds = %._crit_edge62.i
  %i.agb = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !13 ; 3 uses
  %i.agc = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !16 ; 3 uses
  %i.agd = getelementptr inbounds nuw [8 x i8], ptr %i.agb, i64 %i.agc
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !18 ; 5 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 28
  store i32 %i.afz, ptr %i.agf, align 4, !tbaa !25
  %i.agg = icmp eq i32 %i.afz, 0
  br i1 %i.agg, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev, %.thread49.i
  %i.agh = phi ptr [ %i.aep, %.thread49.i ], [ %i.age, %bb.ev ] ; 3 uses
  %i.agi = phi i64 [ %i.zx, %.thread49.i ], [ %i.agc, %bb.ev ]
  %i.agj = phi ptr [ %i.zw, %.thread49.i ], [ %i.agb, %bb.ev ]
  %i.agk = icmp eq i32 %i.adv, 0
  br i1 %i.agk, label %bb.ez, label %bb.ey

bb.ex:                                            ; preds = %bb.ev
  %i.agl = ptrtoint ptr %.346 to i64
  %i.agm = ptrtoint ptr %i.zu to i64
  %i.agn = sub i64 %i.agl, %i.agm                 ; 2 uses
  %i.ago = trunc i64 %i.agn to i32
  %i.agp = add nsw i32 %i.afz, %i.adv             ; 4 uses
  %i.agq = getelementptr inbounds nuw [8 x i8], ptr %i.agb, i64 %i.agc ; 3 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %i.age, i64 24
  %i.ags = load i32, ptr %i.agr, align 8, !tbaa !20
  %i.agt = icmp sgt i32 %i.agp, %i.ags
  br i1 %i.agt, label %bb.fa, label %._crit_edge71.i.jt0

bb.ey:                                            ; preds = %bb.ew
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agh, i64 56
  store i32 2, ptr %i.agu, align 8, !tbaa !36
  %i.agv = getelementptr inbounds nuw [8 x i8], ptr %i.agj, i64 %i.agi ; 3 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agh, i64 24
  %i.agx = load i32, ptr %i.agw, align 8, !tbaa !20
  %i.agy = icmp slt i32 %i.agx, %i.adv
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agh, i64 8
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !23 ; 2 uses
  br i1 %i.agy, label %bb.fb, label %yy_get_next_buffer.exit.jt2

bb.ez:                                            ; preds = %bb.ew
  %i.ahb = load ptr, ptr @gmlin, align 8, !tbaa !9
  tail call void @gmlrestart(ptr noundef %i.ahb)
  %.pre66.i = load i32, ptr @yy_n_chars, align 4, !tbaa !12 ; 5 uses
  %.pre67.i = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !13 ; 2 uses
  %.pre68.i = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !16 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %.pre67.i, i64 %.pre68.i
  %.pre69.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !18 ; 3 uses
  %i.ahc = getelementptr inbounds nuw [8 x i8], ptr %.pre67.i, i64 %.pre68.i ; 3 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %.pre69.i, i64 24
  %i.ahe = load i32, ptr %i.ahd, align 8, !tbaa !20
  %i.ahf = icmp sgt i32 %.pre66.i, %i.ahe
  br i1 %i.ahf, label %bb.fc, label %._crit_edge71.i.jt1

._crit_edge71.i.jt0:                              ; preds = %bb.ex
  %.phi.trans.insert72.i.jt0 = getelementptr inbounds nuw i8, ptr %i.age, i64 8
  %.pre73.i.jt0 = load ptr, ptr %.phi.trans.insert72.i.jt0, align 8, !tbaa !23
  br label %yy_get_next_buffer.exit.jt0

._crit_edge71.i.jt1:                              ; preds = %bb.ez
  %.phi.trans.insert72.i.jt1 = getelementptr inbounds nuw i8, ptr %.pre69.i, i64 8
  %.pre73.i.jt1 = load ptr, ptr %.phi.trans.insert72.i.jt1, align 8, !tbaa !23
  br label %yy_get_next_buffer.exit.jt1

bb.fa:                                            ; preds = %bb.ex
  %i.ahg = lshr i32 %i.afz, 1
  %i.ahh = add nsw i32 %i.agp, %i.ahg             ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.age, i64 8
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !23
  %i.ahk = sext i32 %i.ahh to i64
  %i.ahl = tail call noalias noundef ptr @realloc(ptr noundef %i.ahj, i64 noundef %i.ahk) #30 ; 3 uses
  %i.ahm = load ptr, ptr %i.agq, align 8, !tbaa !18 ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  store ptr %i.ahl, ptr %i.ahn, align 8, !tbaa !23
  %.not46.i.jt0 = icmp eq ptr %i.ahl, null
  br i1 %.not46.i.jt0, label %.loopexit509, label %bb.fd

bb.fb:                                            ; preds = %bb.ey
  %sext610.a = shl i64 %i.adu, 32
  %i.aho = ashr exact i64 %sext610.a, 32
  %i.ahp = tail call noalias noundef ptr @realloc(ptr noundef %i.aha, i64 noundef %i.aho) #30 ; 3 uses
  %i.ahq = load ptr, ptr %i.agv, align 8, !tbaa !18 ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 8
  store ptr %i.ahp, ptr %i.ahr, align 8, !tbaa !23
  %.not46.i.jt2 = icmp eq ptr %i.ahp, null
  br i1 %.not46.i.jt2, label %.loopexit509, label %bb.fe

bb.fc:                                            ; preds = %bb.ez
  %i.ahs = ashr i32 %.pre66.i, 1
  %i.aht = add nsw i32 %.pre66.i, %i.ahs          ; 2 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %.pre69.i, i64 8
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !23
  %i.ahw = sext i32 %i.aht to i64
  %i.ahx = tail call noalias noundef ptr @realloc(ptr noundef %i.ahv, i64 noundef %i.ahw) #30 ; 3 uses
  %i.ahy = load ptr, ptr %i.ahc, align 8, !tbaa !18 ; 2 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 8
  store ptr %i.ahx, ptr %i.ahz, align 8, !tbaa !23
  %.not46.i.jt1 = icmp eq ptr %i.ahx, null
  br i1 %.not46.i.jt1, label %.loopexit509, label %bb.ff

.loopexit509:                                     ; preds = %bb.fa, %bb.fb, %bb.fc
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str.11) #29
  unreachable

bb.fd:                                            ; preds = %bb.fa
  %i.aia = add nsw i32 %i.ahh, -2
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahm, i64 24
  store i32 %i.aia, ptr %i.aib, align 8, !tbaa !20
  br label %yy_get_next_buffer.exit.jt0

bb.fe:                                            ; preds = %bb.fb
  %i.aic = add nsw i32 %i.adv, -2
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ahq, i64 24
  store i32 %i.aic, ptr %i.aid, align 8, !tbaa !20
  br label %yy_get_next_buffer.exit.jt2

bb.ff:                                            ; preds = %bb.fc
  %i.aie = add nsw i32 %i.aht, -2
  %i.aif = getelementptr inbounds nuw i8, ptr %i.ahy, i64 24
  store i32 %i.aie, ptr %i.aif, align 8, !tbaa !20
  br label %yy_get_next_buffer.exit.jt1

yy_get_next_buffer.exit.jt0:                      ; preds = %._crit_edge71.i.jt0, %bb.fd
  %i.aig = phi ptr [ %i.ahl, %bb.fd ], [ %.pre73.i.jt0, %._crit_edge71.i.jt0 ]
  store i32 %i.agp, ptr @yy_n_chars, align 4, !tbaa !12
  %i.aih = sext i32 %i.agp to i64                 ; 2 uses
  %i.aii = getelementptr inbounds i8, ptr %i.aig, i64 %i.aih
  store i8 0, ptr %i.aii, align 1, !tbaa !29
  %i.aij = load ptr, ptr %i.agq, align 8, !tbaa !18
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 8
  %i.ail = load ptr, ptr %i.aik, align 8, !tbaa !23
  %i.aim = getelementptr i8, ptr %i.ail, i64 %i.aih
  %i.ain = getelementptr i8, ptr %i.aim, i64 1
  store i8 0, ptr %i.ain, align 1, !tbaa !29
  %i.aio = load ptr, ptr %i.agq, align 8, !tbaa !18
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 8
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !23 ; 5 uses
  store ptr %i.aiq, ptr @gmltext, align 8, !tbaa !27
  %i.air = shl i64 %i.agn, 32
  %sext609 = add i64 %i.air, -4294967296
  %i.ais = ashr exact i64 %sext609, 32
  %i.ait = getelementptr inbounds i8, ptr %i.aiq, i64 %i.ais ; 4 uses
  store ptr %i.ait, ptr @yy_c_buf_p, align 8, !tbaa !27
  %i.aiu = load i32, ptr @yy_start, align 4, !tbaa !12
  %i.aiv = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !13
  %i.aiw = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !16
  %i.aix = getelementptr inbounds nuw [8 x i8], ptr %i.aiv, i64 %i.aiw
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !18
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 40
  %i.aja = load i32, ptr %i.aiz, align 8, !tbaa !30
  %i.ajb = add nsw i32 %i.aja, %i.aiu             ; 2 uses
  %i.ajc = icmp sgt i32 %i.ago, 1
  br i1 %i.ajc, label %.lr.ph26.i121, label %.loopexit155.backedge

yy_get_next_buffer.exit.jt2:                      ; preds = %bb.ey, %bb.fe
  %i.ajd = phi ptr [ %i.ahp, %bb.fe ], [ %i.aha, %bb.ey ]
  store i32 %i.adv, ptr @yy_n_chars, align 4, !tbaa !12
  %sext610 = shl i64 %i.adu, 32
  %0 = ashr exact i64 %sext610, 32                ; 2 uses
  %i.aje = getelementptr inbounds i8, ptr %i.ajd, i64 %0
  store i8 0, ptr %i.aje, align 1, !tbaa !29
  %i.ajf = load ptr, ptr %i.agv, align 8, !tbaa !18
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 8
  %i.ajh = load ptr, ptr %i.ajg, align 8, !tbaa !23
  %i.aji = getelementptr i8, ptr %i.ajh, i64 %0
  %i.ajj = getelementptr i8, ptr %i.aji, i64 1
  store i8 0, ptr %i.ajj, align 1, !tbaa !29
  %i.ajk = load ptr, ptr %i.agv, align 8, !tbaa !18
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 8
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !23 ; 2 uses
  store ptr %i.ajm, ptr @gmltext, align 8, !tbaa !27
  %.pre402 = load ptr, ptr @yy_buffer_stack, align 8, !tbaa !13
  %.pre403 = load i64, ptr @yy_buffer_stack_top, align 8, !tbaa !16
  %.phi.trans.insert404 = getelementptr inbounds nuw [8 x i8], ptr %.pre402, i64 %.pre403
  %.pre405 = load ptr, ptr %.phi.trans.insert404, align 8, !tbaa !18 ; 2 uses
  %.phi.trans.insert406 = getelementptr inbounds nuw i8, ptr %.pre405, i64 8
  %.pre407 = load ptr, ptr %.phi.trans.insert406, align 8, !tbaa !23
  %.pre408 = load i32, ptr @yy_n_chars, align 4, !tbaa !12
  %.pre415 = sext i32 %.pre408 to i64
  br label %yy_get_next_buffer.exit.thread151

yy_get_next_buffer.exit.jt1:                      ; preds = %._crit_edge71.i.jt1, %bb.ff
  %i.ajn = phi ptr [ %i.ahx, %bb.ff ], [ %.pre73.i.jt1, %._crit_edge71.i.jt1 ]
  store i32 %.pre66.i, ptr @yy_n_chars, align 4, !tbaa !12
  %i.ajo = sext i32 %.pre66.i to i64              ; 2 uses
  %i.ajp = getelementptr inbounds i8, ptr %i.ajn, i64 %i.ajo
  store i8 0, ptr %i.ajp, align 1, !tbaa !29
  %i.ajq = load ptr, ptr %i.ahc, align 8, !tbaa !18
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 8
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !23
  %i.ajt = getelementptr i8, ptr %i.ajs, i64 %i.ajo
  %i.aju = getelementptr i8, ptr %i.ajt, i64 1
  store i8 0, ptr %i.aju, align 1, !tbaa !29
  %i.ajv = load ptr, ptr %i.ahc, align 8, !tbaa !18
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 8
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !23 ; 2 uses
  store ptr %i.ajx, ptr @gmltext, align 8, !tbaa !27
  br label %yy_get_previous_state.exit134

.lr.ph26.i121:                                    ; preds = %yy_get_next_buffer.exit.jt0, %._crit_edge.i131
  %.01624.i122 = phi ptr [ %i.alg, %._crit_edge.i131 ], [ %i.aiq, %yy_get_next_buffer.exit.jt0 ] ; 3 uses
  %.01723.i123 = phi i32 [ %i.alf, %._crit_edge.i131 ], [ %i.ajb, %yy_get_next_buffer.exit.jt0 ] ; 3 uses
  %i.ajy = load i8, ptr %.01624.i122, align 1, !tbaa !29 ; 2 uses
  %.not.i124 = icmp eq i8 %i.ajy, 0
  br i1 %.not.i124, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %.lr.ph26.i121
  %i.ajz = zext i8 %i.ajy to i64
  %i.aka = getelementptr inbounds nuw i8, ptr @yy_ec, i64 %i.ajz
  %i.akb = load i8, ptr %i.aka, align 1, !tbaa !29
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %.lr.ph26.i121
  %i.akc = phi i8 [ %i.akb, %bb.fg ], [ 1, %.lr.ph26.i121 ] ; 2 uses
  %i.akd = sext i32 %.01723.i123 to i64           ; 3 uses
  %i.ake = getelementptr inbounds [2 x i8], ptr @yy_accept, i64 %i.akd
  %i.akf = load i16, ptr %i.ake, align 2, !tbaa !31
  %.not19.i125 = icmp eq i16 %i.akf, 0
  br i1 %.not19.i125, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  store i32 %.01723.i123, ptr @yy_last_accepting_state, align 4, !tbaa !12
  store ptr %.01624.i122, ptr @yy_last_accepting_cpos, align 8, !tbaa !27
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.akg = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.akd
  %i.akh = load i16, ptr %i.akg, align 2, !tbaa !31
  %i.aki = sext i16 %i.akh to i64
  %i.akj = zext i8 %i.akc to i64                  ; 2 uses
  %i.akk = add nsw i64 %i.aki, %i.akj             ; 2 uses
  %i.akl = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.akk
  %i.akm = load i16, ptr %i.akl, align 2, !tbaa !31
  %i.akn = sext i16 %i.akm to i32
  %.not2021.i126 = icmp eq i32 %.01723.i123, %i.akn
  br i1 %.not2021.i126, label %._crit_edge.i131, label %.lr.ph.i127

.lr.ph.i127:                                      ; preds = %bb.fj, %bb.fl
  %i.ako = phi i64 [ %i.akz, %bb.fl ], [ %i.akj, %bb.fj ]
  %i.akp = phi i64 [ %i.akv, %bb.fl ], [ %i.akd, %bb.fj ]
  %.022.i128 = phi i8 [ %.1.i129, %bb.fl ], [ %i.akc, %bb.fj ]
  %i.akq = getelementptr inbounds [2 x i8], ptr @yy_def, i64 %i.akp
  %i.akr = load i16, ptr %i.akq, align 2, !tbaa !31 ; 3 uses
  %i.aks = icmp sgt i16 %i.akr, 142
  br i1 %i.aks, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %.lr.ph.i127
  %i.akt = getelementptr inbounds nuw i8, ptr @yy_meta, i64 %i.ako
  %i.aku = load i8, ptr %i.akt, align 1, !tbaa !29
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %.lr.ph.i127
  %.1.i129 = phi i8 [ %i.aku, %bb.fk ], [ %.022.i128, %.lr.ph.i127 ] ; 2 uses
  %i.akv = sext i16 %i.akr to i64                 ; 2 uses
  %i.akw = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.akv
  %i.akx = load i16, ptr %i.akw, align 2, !tbaa !31
  %i.aky = sext i16 %i.akx to i64
  %i.akz = zext i8 %.1.i129 to i64                ; 2 uses
  %i.ala = add nsw i64 %i.aky, %i.akz             ; 2 uses
  %i.alb = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.ala
  %i.alc = load i16, ptr %i.alb, align 2, !tbaa !31
  %.not20.i130 = icmp eq i16 %i.akr, %i.alc
  br i1 %.not20.i130, label %._crit_edge.i131, label %.lr.ph.i127, !llvm.loop !37

._crit_edge.i131:                                 ; preds = %bb.fl, %bb.fj
  %.lcssa.i132 = phi i64 [ %i.akk, %bb.fj ], [ %i.ala, %bb.fl ]
  %i.ald = getelementptr inbounds [2 x i8], ptr @yy_nxt, i64 %.lcssa.i132
  %i.ale = load i16, ptr %i.ald, align 2, !tbaa !31
  %i.alf = sext i16 %i.ale to i32                 ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %.01624.i122, i64 1 ; 2 uses
  %exitcond.not.i133 = icmp eq ptr %i.alg, %i.ait
  br i1 %exitcond.not.i133, label %.loopexit155.backedge, label %.lr.ph26.i121, !llvm.loop !38

yy_get_next_buffer.exit.thread151:                ; preds = %bb.ep, %yy_get_next_buffer.exit.jt2
  %.pre-phi = phi i64 [ %.pre415, %yy_get_next_buffer.exit.jt2 ], [ %i.aam, %bb.ep ]
  %i.alh = phi ptr [ %i.ajm, %yy_get_next_buffer.exit.jt2 ], [ %i.adj, %bb.ep ] ; 4 uses
  %i.ali = phi ptr [ %.pre407, %yy_get_next_buffer.exit.jt2 ], [ %i.aak, %bb.ep ]
  %i.alj = phi ptr [ %.pre405, %yy_get_next_buffer.exit.jt2 ], [ %i.zz, %bb.ep ]
  %i.alk = getelementptr inbounds i8, ptr %i.ali, i64 %.pre-phi ; 5 uses
  store ptr %i.alk, ptr @yy_c_buf_p, align 8, !tbaa !27
  %i.all = load i32, ptr @yy_start, align 4, !tbaa !12
  %i.alm = getelementptr inbounds nuw i8, ptr %i.alj, i64 40
  %i.aln = load i32, ptr %i.alm, align 8, !tbaa !30
  %i.alo = add nsw i32 %i.aln, %i.all             ; 2 uses
  %i.alp = icmp ult ptr %i.alh, %i.alk
  br i1 %i.alp, label %.lr.ph26.i136, label %.preheader.outer.backedge

.lr.ph26.i136:                                    ; preds = %yy_get_next_buffer.exit.thread151, %._crit_edge.i146
  %.01624.i137 = phi ptr [ %i.amy, %._crit_edge.i146 ], [ %i.alh, %yy_get_next_buffer.exit.thread151 ] ; 3 uses
  %.01723.i138 = phi i32 [ %i.amx, %._crit_edge.i146 ], [ %i.alo, %yy_get_next_buffer.exit.thread151 ] ; 3 uses
  %i.alq = load i8, ptr %.01624.i137, align 1, !tbaa !29 ; 2 uses
  %.not.i139 = icmp eq i8 %i.alq, 0
  br i1 %.not.i139, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %.lr.ph26.i136
  %i.alr = zext i8 %i.alq to i64
  %i.als = getelementptr inbounds nuw i8, ptr @yy_ec, i64 %i.alr
  %i.alt = load i8, ptr %i.als, align 1, !tbaa !29
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %.lr.ph26.i136
  %i.alu = phi i8 [ %i.alt, %bb.fm ], [ 1, %.lr.ph26.i136 ] ; 2 uses
  %i.alv = sext i32 %.01723.i138 to i64           ; 3 uses
  %i.alw = getelementptr inbounds [2 x i8], ptr @yy_accept, i64 %i.alv
  %i.alx = load i16, ptr %i.alw, align 2, !tbaa !31
  %.not19.i140 = icmp eq i16 %i.alx, 0
  br i1 %.not19.i140, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  store i32 %.01723.i138, ptr @yy_last_accepting_state, align 4, !tbaa !12
  store ptr %.01624.i137, ptr @yy_last_accepting_cpos, align 8, !tbaa !27
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.aly = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.alv
  %i.alz = load i16, ptr %i.aly, align 2, !tbaa !31
  %i.ama = sext i16 %i.alz to i64
  %i.amb = zext i8 %i.alu to i64                  ; 2 uses
  %i.amc = add nsw i64 %i.ama, %i.amb             ; 2 uses
  %i.amd = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.amc
  %i.ame = load i16, ptr %i.amd, align 2, !tbaa !31
  %i.amf = sext i16 %i.ame to i32
  %.not2021.i141 = icmp eq i32 %.01723.i138, %i.amf
  br i1 %.not2021.i141, label %._crit_edge.i146, label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %bb.fp, %bb.fr
  %i.amg = phi i64 [ %i.amr, %bb.fr ], [ %i.amb, %bb.fp ]
  %i.amh = phi i64 [ %i.amn, %bb.fr ], [ %i.alv, %bb.fp ]
  %.022.i143 = phi i8 [ %.1.i144, %bb.fr ], [ %i.alu, %bb.fp ]
  %i.ami = getelementptr inbounds [2 x i8], ptr @yy_def, i64 %i.amh
  %i.amj = load i16, ptr %i.ami, align 2, !tbaa !31 ; 3 uses
  %i.amk = icmp sgt i16 %i.amj, 142
  br i1 %i.amk, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %.lr.ph.i142
  %i.aml = getelementptr inbounds nuw i8, ptr @yy_meta, i64 %i.amg
  %i.amm = load i8, ptr %i.aml, align 1, !tbaa !29
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %.lr.ph.i142
  %.1.i144 = phi i8 [ %i.amm, %bb.fq ], [ %.022.i143, %.lr.ph.i142 ] ; 2 uses
  %i.amn = sext i16 %i.amj to i64                 ; 2 uses
  %i.amo = getelementptr inbounds [2 x i8], ptr @yy_base, i64 %i.amn
  %i.amp = load i16, ptr %i.amo, align 2, !tbaa !31
  %i.amq = sext i16 %i.amp to i64
  %i.amr = zext i8 %.1.i144 to i64                ; 2 uses
  %i.ams = add nsw i64 %i.amq, %i.amr             ; 2 uses
  %i.amt = getelementptr inbounds [2 x i8], ptr @yy_chk, i64 %i.ams
  %i.amu = load i16, ptr %i.amt, align 2, !tbaa !31
  %.not20.i145 = icmp eq i16 %i.amj, %i.amu
  br i1 %.not20.i145, label %._crit_edge.i146, label %.lr.ph.i142, !llvm.loop !37

._crit_edge.i146:                                 ; preds = %bb.fr, %bb.fp
  %.lcssa.i147 = phi i64 [ %i.amc, %bb.fp ], [ %i.ams, %bb.fr ]
  %i.amv = getelementptr inbounds [2 x i8], ptr @yy_nxt, i64 %.lcssa.i147
  %i.amw = load i16, ptr %i.amv, align 2, !tbaa !31
  %i.amx = sext i16 %i.amw to i32                 ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %.01624.i137, i64 1 ; 2 uses
  %exitcond.not.i148 = icmp eq ptr %i.amy, %i.alk
  br i1 %exitcond.not.i148, label %.preheader.outer.backedge, label %.lr.ph26.i136, !llvm.loop !38

yy_get_previous_state.exit134:                    ; preds = %bb.ep, %yy_get_next_buffer.exit.jt1
  %i.amz = phi ptr [ %i.adj, %bb.ep ], [ %i.ajx, %yy_get_next_buffer.exit.jt1 ]
  store ptr %i.amz, ptr @yy_c_buf_p, align 8, !tbaa !27
  %i.ana = load i32, ptr @yy_start, align 4, !tbaa !12
  %i.anb = add nsw i32 %i.ana, -1
  %i.anc = sdiv i32 %i.anb, 2
  %i.and = add nuw nsw i32 %i.anc, 41
  br label %bb.ab

bb.fs:                                            ; preds = %bb.ab
  tail call fastcc void @yy_fatal_error(ptr noundef nonnull @.str) #29
  unreachable

.loopexit:                                        ; preds = %bb.ab, %bb.ab, %bb.cm, %bb.cn, %bb.ck, %bb.cl, %bb.ci, %bb.cj, %bb.cg, %bb.ch, %bb.ce, %bb.cf, %bb.cc, %bb.cd, %bb.ca, %bb.cb, %bb.by, %bb.bz, %bb.bw, %bb.bx, %bb.bu, %bb.bv, %bb.bs, %bb.bt, %bb.bq, %bb.br, %bb.bo, %bb.bp, %bb.bm, %bb.bn, %bb.bk, %bb.bl, %bb.bi, %bb.bj, %bb.bg, %bb.bh, %bb.be, %bb.bf, %bb.bc, %bb.bd, %bb.ba, %bb.bb, %bb.ay, %bb.az, %bb.aw, %bb.ax, %bb.au, %bb.av, %bb.as, %bb.at, %bb.aq, %bb.ar, %bb.ao, %bb.ap, %bb.am, %bb.an, %bb.ad, %bb.ae, %bb.dv, %endstr.exit, %gv_strdup.exit109, %gv_strdup.exit108, %gv_strdup.exit
  %.054 = phi i32 [ 283, %bb.cm ], [ -1, %bb.ad ], [ 258, %bb.am ], [ 259, %bb.ao ], [ 260, %bb.aq ], [ 261, %bb.as ], [ 287, %bb.au ], [ 262, %bb.aw ], [ 263, %bb.ay ], [ 264, %bb.ba ], [ 265, %bb.bc ], [ 266, %bb.be ], [ 267, %bb.bg ], [ 268, %bb.bi ], [ 269, %bb.bk ], [ 270, %bb.bm ], [ 271, %bb.bo ], [ 272, %bb.bq ], [ 273, %bb.bs ], [ 274, %bb.bu ], [ 275, %bb.bw ], [ 276, %bb.by ], [ 277, %bb.ca ], [ 278, %bb.cc ], [ 279, %bb.ce ], [ 280, %bb.cg ], [ 281, %bb.ci ], [ 282, %bb.ck ], [ 284, %gv_strdup.exit ], [ 285, %gv_strdup.exit108 ], [ 288, %gv_strdup.exit109 ], [ 286, %endstr.exit ], [ %i.zd, %bb.dv ], [ -1, %bb.ae ], [ 258, %bb.an ], [ 259, %bb.ap ], [ 260, %bb.ar ], [ 261, %bb.at ], [ 287, %bb.av ], [ 262, %bb.ax ], [ 263, %bb.az ], [ 264, %bb.bb ], [ 265, %bb.bd ], [ 266, %bb.bf ], [ 267, %bb.bh ], [ 268, %bb.bj ], [ 269, %bb.bl ], [ 270, %bb.bn ], [ 271, %bb.bp ], [ 272, %bb.br ], [ 273, %bb.bt ], [ 274, %bb.bv ], [ 275, %bb.bx ], [ 276, %bb.bz ], [ 277, %bb.cb ], [ 278, %bb.cd ], [ 279, %bb.cf ], [ 280, %bb.ch ], [ 281, %bb.cj ], [ 282, %bb.cl ], [ 283, %bb.cn ], [ 0, %bb.ab ], [ 0, %bb.ab ]
  ret i32 %.054
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @gml_create_buffer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c
end_hunk_0
