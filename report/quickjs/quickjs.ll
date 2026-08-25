Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 84
loop-unroll.NumUnrolled: 174
begin_hunk_0_@JS_ReadObjectRec:bb.a
  %i.aag = add nsw i32 %i.aae, 1
  %i.aah = load ptr, ptr %0, align 8, !tbaa !954
  %i.aai = tail call fastcc i32 @js_realloc_array(ptr noundef %i.aah, ptr noundef nonnull %i.aab, i32 noundef 8, ptr noundef nonnull %i.aac, i32 noundef %i.aag), !inline_history !1021
  %.not.i.i.i281 = icmp eq i32 %i.aai, 0
  br i1 %.not.i.i.i281, label %js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i.i.i284, label %BC_add_object_ref.exit.i282

js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i.i.i284: ; preds = %js_resize_array.exit.i.i.i280
  %.pre.i.i.i285 = load i32, ptr %i.aad, align 8, !tbaa !988
  br label %js_resize_array.exit.thread.i.i.i286

js_resize_array.exit.thread.i.i.i286:             ; preds = %js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i.i.i284, %bb.ez
  %i.aaj = phi i32 [ %.pre.i.i.i285, %js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i.i.i284 ], [ %i.aae, %bb.ez ] ; 2 uses
  %i.aak = load ptr, ptr %i.aab, align 8, !tbaa !982
  %i.aal = add nsw i32 %i.aaj, 1
  store i32 %i.aal, ptr %i.aad, align 8, !tbaa !988
  %i.aam = sext i32 %i.aaj to i64
  %i.aan = getelementptr inbounds [8 x i8], ptr %i.aak, i64 %i.aam
  store ptr %i.zx, ptr %i.aan, align 8, !tbaa !212
  br label %bb.fa

bb.fa:                                            ; preds = %js_resize_array.exit.thread.i.i.i286, %bb.ey
  %i.aao = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.aap = trunc i64 %i.zp to i32
  %i.aaq = icmp ugt i32 %i.aap, -10
  br i1 %i.aaq, label %bb.fb, label %.thread168

bb.fb:                                            ; preds = %bb.fa
  %i.aar = inttoptr i64 %i.zo to ptr
  %i.aas = getelementptr inbounds i8, ptr %i.aar, i64 -4 ; 2 uses
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !8 ; 2 uses
  %i.aau = add nsw i32 %i.aat, -1
  store i32 %i.aau, ptr %i.aas, align 4, !tbaa !8
  %i.aav = icmp slt i32 %i.aat, 2
  br i1 %i.aav, label %bb.fc, label %.thread168

bb.fc:                                            ; preds = %bb.fb
  tail call fastcc void @js_free_value_rt(ptr noundef %i.aao, i64 %i.zo, i64 %i.zp), !inline_history !1022
  br label %.thread168

BC_add_object_ref.exit.i282:                      ; preds = %js_resize_array.exit.i.i.i280, %bb.ex, %bb.ew
  %.sroa.8.0.i = phi i64 [ 3, %bb.ew ], [ %i.zu, %bb.ex ], [ %i.zu, %js_resize_array.exit.i.i.i280 ] ; 2 uses
  %.sroa.03.0.i = phi i64 [ 0, %bb.ew ], [ %i.zt, %bb.ex ], [ %i.zt, %js_resize_array.exit.i.i.i280 ] ; 2 uses
  %i.aaw = load ptr, ptr %i.f, align 8, !tbaa !50 ; 3 uses
  %i.aax = trunc i64 %i.zp to i32
  %i.aay = icmp ugt i32 %i.aax, -10
  br i1 %i.aay, label %bb.fd, label %JS_FreeValue.exit25.i

bb.fd:                                            ; preds = %BC_add_object_ref.exit.i282
  %i.aaz = inttoptr i64 %i.zo to ptr
  %i.aba = getelementptr inbounds i8, ptr %i.aaz, i64 -4 ; 2 uses
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !8 ; 2 uses
  %i.abc = add nsw i32 %i.abb, -1
  store i32 %i.abc, ptr %i.aba, align 4, !tbaa !8
  %i.abd = icmp slt i32 %i.abb, 2
  br i1 %i.abd, label %bb.fe, label %JS_FreeValue.exit25.i

bb.fe:                                            ; preds = %bb.fd
  tail call fastcc void @js_free_value_rt(ptr noundef %i.aaw, i64 %i.zo, i64 %i.zp), !inline_history !1022
  %.pre.i283 = load ptr, ptr %i.f, align 8, !tbaa !50
  br label %JS_FreeValue.exit25.i

JS_FreeValue.exit25.i:                            ; preds = %bb.fe, %bb.fd, %BC_add_object_ref.exit.i282
  %i.abe = phi ptr [ %i.aaw, %BC_add_object_ref.exit.i282 ], [ %i.aaw, %bb.fd ], [ %.pre.i283, %bb.fe ]
  %i.abf = trunc i64 %.sroa.8.0.i to i32
  %i.abg = icmp ugt i32 %i.abf, -10
  br i1 %i.abg, label %bb.ff, label %.thread168

bb.ff:                                            ; preds = %JS_FreeValue.exit25.i
  %i.abh = inttoptr i64 %.sroa.03.0.i to ptr
  %i.abi = getelementptr inbounds i8, ptr %i.abh, i64 -4 ; 2 uses
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !8 ; 2 uses
  %i.abk = add nsw i32 %i.abj, -1
  store i32 %i.abk, ptr %i.abi, align 4, !tbaa !8
  %i.abl = icmp slt i32 %i.abj, 2
  br i1 %i.abl, label %bb.fg, label %.thread168

bb.fg:                                            ; preds = %bb.ff
  tail call fastcc void @js_free_value_rt(ptr noundef %i.abe, i64 %.sroa.03.0.i, i64 %.sroa.8.0.i), !inline_history !1022
  br label %.thread168

bb.fh:                                            ; preds = %bb.f
  %.not20.i.i.i287 = icmp ult ptr %i.x, %i.n
  br i1 %.not20.i.i.i287, label %.lr.ph.i.i.i294, label %get_leb128.exit.thread.i.i288, !prof !984

bb.fi:                                            ; preds = %.lr.ph.i.i.i294
  %.not.i.i.i299 = icmp ult ptr %i.acj, %i.n
  br i1 %.not.i.i.i299, label %.lr.ph.i.i.i294.1, label %get_leb128.exit.thread.i.i288, !prof !968

.lr.ph.i.i.i294.1:                                ; preds = %bb.fi
  %i.abm = getelementptr inbounds nuw i8, ptr %i.p, i64 3 ; 3 uses
  %i.abn = load i8, ptr %i.acj, align 1, !tbaa !35
  %.fr573 = freeze i8 %i.abn                      ; 2 uses
  %i.abo = and i8 %.fr573, 127
  %i.abp = zext nneg i8 %i.abo to i32
  %i.abq = shl nuw nsw i32 %i.abp, 7
  %i.abr = or disjoint i32 %i.abq, %i.acm         ; 2 uses
  %.not18.i.i.i298.1 = icmp sgt i8 %.fr573, -1
  br i1 %.not18.i.i.i298.1, label %get_leb128.exit.i.i301, label %bb.fj

bb.fj:                                            ; preds = %.lr.ph.i.i.i294.1
  %.not.i.i.i299.1 = icmp ult ptr %i.abm, %i.n
  br i1 %.not.i.i.i299.1, label %.lr.ph.i.i.i294.2, label %get_leb128.exit.thread.i.i288, !prof !968

.lr.ph.i.i.i294.2:                                ; preds = %bb.fj
  %i.abs = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 3 uses
  %i.abt = load i8, ptr %i.abm, align 1, !tbaa !35
  %.fr576 = freeze i8 %i.abt                      ; 2 uses
  %i.abu = and i8 %.fr576, 127
  %i.abv = zext nneg i8 %i.abu to i32
  %i.abw = shl nuw nsw i32 %i.abv, 14
  %i.abx = or disjoint i32 %i.abw, %i.abr         ; 2 uses
  %.not18.i.i.i298.2 = icmp sgt i8 %.fr576, -1
  br i1 %.not18.i.i.i298.2, label %get_leb128.exit.i.i301, label %bb.fk

bb.fk:                                            ; preds = %.lr.ph.i.i.i294.2
  %.not.i.i.i299.2 = icmp ult ptr %i.abs, %i.n
  br i1 %.not.i.i.i299.2, label %.lr.ph.i.i.i294.3, label %get_leb128.exit.thread.i.i288, !prof !968

.lr.ph.i.i.i294.3:                                ; preds = %bb.fk
  %i.aby = getelementptr inbounds nuw i8, ptr %i.p, i64 5 ; 3 uses
  %i.abz = load i8, ptr %i.abs, align 1, !tbaa !35
  %.fr579 = freeze i8 %i.abz                      ; 2 uses
  %i.aca = and i8 %.fr579, 127
  %i.acb = zext nneg i8 %i.aca to i32
  %i.acc = shl nuw nsw i32 %i.acb, 21
  %i.acd = or disjoint i32 %i.acc, %i.abx         ; 2 uses
  %.not18.i.i.i298.3 = icmp sgt i8 %.fr579, -1
  br i1 %.not18.i.i.i298.3, label %get_leb128.exit.i.i301, label %bb.fl

bb.fl:                                            ; preds = %.lr.ph.i.i.i294.3
  %.not.i.i.i299.3 = icmp ult ptr %i.aby, %i.n
  br i1 %.not.i.i.i299.3, label %.lr.ph.i.i.i294.4, label %get_leb128.exit.thread.i.i288, !prof !968

.lr.ph.i.i.i294.4:                                ; preds = %bb.fl
  %i.ace = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  %i.acf = load i8, ptr %i.aby, align 1, !tbaa !35
  %.fr581 = freeze i8 %i.acf                      ; 2 uses
  %i.acg = zext i8 %.fr581 to i32
  %i.ach = shl i32 %i.acg, 28
  %i.aci = or disjoint i32 %i.ach, %i.acd
  %.not18.i.i.i298.4 = icmp sgt i8 %.fr581, -1
  br i1 %.not18.i.i.i298.4, label %get_leb128.exit.i.i301, label %get_leb128.exit.thread.i.i288

.lr.ph.i.i.i294:                                  ; preds = %bb.fh
  %i.acj = getelementptr inbounds nuw i8, ptr %i.p, i64 2 ; 3 uses
  %i.ack = load i8, ptr %i.x, align 1, !tbaa !35
  %.fr = freeze i8 %i.ack                         ; 2 uses
  %i.acl = and i8 %.fr, 127
  %i.acm = zext nneg i8 %i.acl to i32             ; 2 uses
  %.not18.i.i.i298 = icmp sgt i8 %.fr, -1
  br i1 %.not18.i.i.i298, label %get_leb128.exit.i.i301, label %bb.fi

get_leb128.exit.i.i301:                           ; preds = %.lr.ph.i.i.i294.4, %.lr.ph.i.i.i294.3, %.lr.ph.i.i.i294.2, %.lr.ph.i.i.i294.1, %.lr.ph.i.i.i294
  %.lcssa568 = phi ptr [ %i.acj, %.lr.ph.i.i.i294 ], [ %i.abm, %.lr.ph.i.i.i294.1 ], [ %i.abs, %.lr.ph.i.i.i294.2 ], [ %i.aby, %.lr.ph.i.i.i294.3 ], [ %i.ace, %.lr.ph.i.i.i294.4 ]
  %.lcssa566 = phi i32 [ %i.acm, %.lr.ph.i.i.i294 ], [ %i.abr, %.lr.ph.i.i.i294.1 ], [ %i.abx, %.lr.ph.i.i.i294.2 ], [ %i.acd, %.lr.ph.i.i.i294.3 ], [ %i.aci, %.lr.ph.i.i.i294.4 ] ; 4 uses
  %i.acn = ptrtoint ptr %.lcssa568 to i64
  %i.aco = ptrtoint ptr %i.x to i64
  %i.acp = sub i64 %i.acn, %i.aco                 ; 2 uses
  %i.acq = and i64 %i.acp, 2147483648
  %.not.i.i302 = icmp eq i64 %i.acq, 0
  br i1 %.not.i.i302, label %bb.fn, label %get_leb128.exit.thread.i.i288, !prof !970

get_leb128.exit.thread.i.i288:                    ; preds = %bb.fi, %bb.fj, %bb.fk, %bb.fl, %.lr.ph.i.i.i294.4, %get_leb128.exit.i.i301, %bb.fh
  %i.acr = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.acs = load i32, ptr %i.acr, align 8, !tbaa !974
  %.not.i8.i.i289 = icmp eq i32 %i.acs, 0
  br i1 %.not.i8.i.i289, label %bb.fm, label %bc_get_leb128.exit.i290

bb.fm:                                            ; preds = %get_leb128.exit.thread.i.i288
  %i.act = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %i.e, ptr noundef nonnull @.str.226), !inline_history !1023 ; 0 uses
  br label %bc_get_leb128.exit.i290

bc_get_leb128.exit.i290:                          ; preds = %bb.fm, %get_leb128.exit.thread.i.i288
  store i32 -1, ptr %i.acr, align 8, !tbaa !974
  br label %.thread168

bb.fn:                                            ; preds = %get_leb128.exit.i.i301
  %i.acu = and i64 %i.acp, 2147483647
  %i.acv = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.acu
  store ptr %i.acv, ptr %i.o, align 8, !tbaa !972
  %i.acw = icmp eq i32 %.lcssa566, 0
  br i1 %i.acw, label %.thread168, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.acx = add i32 %.lcssa566, -1
  %i.acy = lshr i32 %i.acx, 2
  %i.acz = add nuw nsw i32 %i.acy, 1
  %i.ada = tail call fastcc ptr @js_bigint_new(ptr noundef %i.e, i32 noundef %i.acz), !inline_history !1024 ; 9 uses
  %.not33.i = icmp eq ptr %i.ada, null
  br i1 %.not33.i, label %.thread168, label %.preheader67.i

.preheader67.i:                                   ; preds = %bb.fo
  %i.adb = lshr i32 %.lcssa566, 2                 ; 2 uses
  %.not.i303 = icmp eq i32 %i.adb, 0
  br i1 %.not.i303, label %._crit_edge.i307, label %.lr.ph.i304

.lr.ph.i304:                                      ; preds = %.preheader67.i
  %i.adc = load ptr, ptr %i.m, align 8, !tbaa !958
  %i.add = ptrtoint ptr %i.adc to i64             ; 7 uses
  %i.ade = getelementptr i8, ptr %i.ada, i64 4    ; 6 uses
  %.promoted.i.a = load ptr, ptr %i.o, align 8, !tbaa !972 ; 9 uses
  %.promoted.i515 = ptrtoaddr ptr %.promoted.i.a to i64 ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.adb to i64 ; 4 uses
  %i.adf = add nsw i64 %wide.trip.count.i, -1
  %i.adg = sub i64 %i.add, %.promoted.i515
  %i.adh = tail call i64 @llvm.smin.i64(i64 %i.adg, i64 3)
  %i.adi = add i64 %i.add, 3
  %i.adj = add i64 %i.adh, %.promoted.i515
  %i.adk = sub i64 %i.adi, %i.adj
  %i.adl = lshr i64 %i.adk, 2
  %i.adm = tail call i64 @llvm.umin.i64(i64 %i.adf, i64 %i.adl) ; 2 uses
  %i.adn = add nuw nsw i64 %i.adm, 1              ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.adm, 30
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i304
  %scevgep = getelementptr i8, ptr %i.ada, i64 8
  %i.ado = add nsw i64 %wide.trip.count.i, -1
  %i.adp = add i64 %i.add, 3
  %i.adq = sub i64 %i.add, %.promoted.i515
  %smin = tail call i64 @llvm.smin.i64(i64 %i.adq, i64 3)
  %i.adr = add i64 %smin, %.promoted.i515
  %i.ads = sub i64 %i.adp, %i.adr
  %i.adt = lshr i64 %i.ads, 2
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ado, i64 %i.adt)
  %i.adu = shl nuw i64 %umin, 2                   ; 2 uses
  %scevgep516 = getelementptr i8, ptr %scevgep, i64 %i.adu ; 2 uses
  %scevgep517 = getelementptr i8, ptr %.promoted.i.a, i64 4
  %scevgep518 = getelementptr i8, ptr %scevgep517, i64 %i.adu ; 2 uses
  %bound0 = icmp ult ptr %i.o, %scevgep516
  %bound1 = icmp ult ptr %i.ade, %i.m
  %found.conflict = and i1 %bound0, %bound1
  %bound0519 = icmp ult ptr %i.o, %scevgep518
  %bound1520 = icmp ult ptr %.promoted.i.a, %i.m
  %found.conflict521 = and i1 %bound0519, %bound1520
  %conflict.rdx = or i1 %found.conflict, %found.conflict521
  %bound0522 = icmp ult ptr %i.ade, %scevgep518
  %bound1523 = icmp ult ptr %.promoted.i.a, %scevgep516
  %found.conflict524 = and i1 %bound0522, %bound1523
  %conflict.rdx525 = or i1 %conflict.rdx, %found.conflict524
  br i1 %conflict.rdx525, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.adv = and i64 %i.adn, 3                      ; 2 uses
  %i.adw = icmp eq i64 %i.adv, 0
  %i.adx = select i1 %i.adw, i64 4, i64 %i.adv
  %n.vec = sub nsw i64 %i.adn, %i.adx             ; 3 uses
  %i.ady = shl i64 %n.vec, 2
  %i.adz = getelementptr i8, ptr %.promoted.i.a, i64 %i.ady
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aea = shl i64 %index, 2                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted.i.a, i64 %i.aea ; 2 uses
  %i.aeb = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 1, !alias.scope !1025
  %wide.load527 = load <2 x i32>, ptr %i.aeb, align 1, !alias.scope !1025
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %index ; 2 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  store <2 x i32> %wide.load, ptr %i.aec, align 4, !tbaa !8, !alias.scope !1028, !noalias !1025
  store <2 x i32> %wide.load527, ptr %i.aed, align 4, !tbaa !8, !alias.scope !1028, !noalias !1025
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aee = icmp eq i64 %index.next, %n.vec
  br i1 %i.aee, label %middle.block, label %vector.body, !llvm.loop !1030

middle.block:                                     ; preds = %vector.body
  %i.aef = getelementptr i8, ptr %.promoted.i.a, i64 %i.aea
  %i.aeg = getelementptr i8, ptr %i.aef, i64 16
  store ptr %i.aeg, ptr %i.o, align 8, !tbaa !972, !alias.scope !1031, !noalias !1033
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i304, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i304 ], [ %n.vec, %middle.block ] ; 4 uses
  %.ph = phi ptr [ %.promoted.i.a, %vector.memcheck ], [ %.promoted.i.a, %.lr.ph.i304 ], [ %i.adz, %middle.block ] ; 4 uses
  %i.aeh = sub i64 %wide.trip.count.i, %indvars.iv.i.ph
  %i.aei = freeze i64 %i.aeh                      ; 2 uses
  %xtraiter = and i64 %i.aei, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aej = ptrtoint ptr %.ph to i64
  %i.aek = sub i64 %i.add, %i.aej
  %i.ael = icmp slt i64 %i.aek, 4
  br i1 %i.ael, label %.loopexit, label %scalar.ph.prol.loopexit.unr-lcssa, !prof !9

scalar.ph.prol.loopexit.unr-lcssa:                ; preds = %scalar.ph.prol
  %.val.i.i305.prol = load i32, ptr %.ph, align 1
  %i.aem = getelementptr inbounds nuw i8, ptr %.ph, i64 4 ; 2 uses
  store ptr %i.aem, ptr %i.o, align 8, !tbaa !972
  %i.aen = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %indvars.iv.i.ph
  store i32 %.val.i.i305.prol, ptr %i.aen, align 4, !tbaa !8
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.aem, %scalar.ph.prol.loopexit.unr-lcssa ]
  %i.aeo = icmp eq i64 %i.aei, 1
  br i1 %i.aeo, label %._crit_edge.i307, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %bb.fq
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.fq ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %5 = phi ptr [ %i.afb, %bb.fq ], [ %.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.aep = ptrtoint ptr %5 to i64
  %i.aeq = sub i64 %i.add, %i.aep
  %i.aer = icmp slt i64 %i.aeq, 4
  br i1 %i.aer, label %.loopexit, label %scalar.ph.1, !prof !9

.loopexit:                                        ; preds = %scalar.ph, %scalar.ph.1, %scalar.ph.prol
  %i.aes = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aet = load i32, ptr %i.aes, align 8, !tbaa !974
  %.not.i.i38.i = icmp eq i32 %i.aet, 0
  br i1 %.not.i.i38.i, label %bb.fp, label %bc_get_u32.exit.i

bb.fp:                                            ; preds = %.loopexit
  %i.aeu = load ptr, ptr %0, align 8, !tbaa !954
  %i.aev = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %i.aeu, ptr noundef nonnull @.str.226), !inline_history !1034 ; 0 uses
  br label %bc_get_u32.exit.i

bc_get_u32.exit.i:                                ; preds = %bb.fp, %.loopexit
  store i32 -1, ptr %i.aes, align 8, !tbaa !974
  br label %.thread168

scalar.ph.1:                                      ; preds = %scalar.ph
  %.val.i.i305 = load i32, ptr %5, align 1
  %i.aew = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  store ptr %i.aew, ptr %i.o, align 8, !tbaa !972
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %indvars.iv.i
  store i32 %.val.i.i305, ptr %i.aex, align 4, !tbaa !8
  %i.aey = ptrtoint ptr %i.aew to i64
  %i.aez = sub i64 %i.add, %i.aey
  %i.afa = icmp slt i64 %i.aez, 4
  br i1 %i.afa, label %.loopexit, label %bb.fq, !prof !9

bb.fq:                                            ; preds = %scalar.ph.1
  %.val.i.i305.1 = load i32, ptr %i.aew, align 1
  %i.afb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.afb, ptr %i.o, align 8, !tbaa !972
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %indvars.iv.i
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 4
  store i32 %.val.i.i305.1, ptr %i.afd, align 4, !tbaa !8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i306.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i306.1, label %._crit_edge.i307, label %scalar.ph, !llvm.loop !1035

._crit_edge.i307:                                 ; preds = %scalar.ph.prol.loopexit, %bb.fq, %.preheader67.i
  %i.afe = and i32 %.lcssa566, 3                  ; 4 uses
  %.not34.i = icmp eq i32 %i.afe, 0
  br i1 %.not34.i, label %thread-pre-split.i, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i307
  %i.aff = load ptr, ptr %i.m, align 8, !tbaa !958
  %i.afg = ptrtoint ptr %i.aff to i64             ; 3 uses
  %.promoted73.i = load ptr, ptr %i.o, align 8, !tbaa !972 ; 5 uses
  %i.afh = ptrtoint ptr %.promoted73.i to i64
  %i.afi = sub i64 %i.afg, %i.afh
  %i.afj = icmp slt i64 %i.afi, 1
  br i1 %i.afj, label %bb.fr, label %bb.ft, !prof !9

bb.fr:                                            ; preds = %bb.fw, %bb.fu, %.preheader.i
  %i.afk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.afl = load i32, ptr %i.afk, align 8, !tbaa !974
  %.not.i.i41.i = icmp eq i32 %i.afl, 0
  br i1 %.not.i.i41.i, label %bb.fs, label %bb.fy

bb.fs:                                            ; preds = %bb.fr
  %i.afm = load ptr, ptr %0, align 8, !tbaa !954
  %i.afn = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %i.afm, ptr noundef nonnull @.str.226), !inline_history !1036 ; 0 uses
  br label %bb.fy

bb.ft:                                            ; preds = %.preheader.i
  %i.afo = getelementptr inbounds nuw i8, ptr %.promoted73.i, i64 1 ; 3 uses
  store ptr %i.afo, ptr %i.o, align 8, !tbaa !972
  %i.afp = load i8, ptr %.promoted73.i, align 1, !tbaa !35
  %i.afq = zext i8 %i.afp to i32                  ; 2 uses
  %exitcond81.not.i = icmp eq i32 %i.afe, 1
  br i1 %exitcond81.not.i, label %.thread.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.afr = ptrtoint ptr %i.afo to i64
  %i.afs = sub i64 %i.afg, %i.afr
  %i.aft = icmp slt i64 %i.afs, 1
  br i1 %i.aft, label %bb.fr, label %bb.fv, !prof !9

bb.fv:                                            ; preds = %bb.fu
  %i.afu = getelementptr inbounds nuw i8, ptr %.promoted73.i, i64 2 ; 3 uses
  store ptr %i.afu, ptr %i.o, align 8, !tbaa !972
  %i.afv = load i8, ptr %i.afo, align 1, !tbaa !35
  %i.afw = zext i8 %i.afv to i32
  %i.afx = shl nuw nsw i32 %i.afw, 8
  %i.afy = or disjoint i32 %i.afx, %i.afq         ; 2 uses
  %exitcond81.not.i.1 = icmp eq i32 %i.afe, 2
  br i1 %exitcond81.not.i.1, label %.thread.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.afz = ptrtoint ptr %i.afu to i64
  %i.aga = sub i64 %i.afg, %i.afz
  %i.agb = icmp slt i64 %i.aga, 1
  br i1 %i.agb, label %bb.fr, label %bb.fx, !prof !9

bb.fx:                                            ; preds = %bb.fw
  %i.agc = getelementptr inbounds nuw i8, ptr %.promoted73.i, i64 3
  store ptr %i.agc, ptr %i.o, align 8, !tbaa !972
  %i.agd = load i8, ptr %i.afu, align 1, !tbaa !35
  %i.age = zext i8 %i.agd to i32
  %i.agf = shl nuw nsw i32 %i.age, 16
  %i.agg = or disjoint i32 %i.agf, %i.afy
  br label %.thread.i

.thread.i:                                        ; preds = %bb.fx, %bb.fv, %bb.ft
  %.lcssa564 = phi i32 [ %i.afq, %bb.ft ], [ %i.afy, %bb.fv ], [ %i.agg, %bb.fx ]
  %i.agh = shl nuw nsw i32 %i.afe, 3
  %i.agi = sub nuw nsw i32 32, %i.agh             ; 2 uses
  %i.agj = shl i32 %.lcssa564, %i.agi
  %i.agk = ashr exact i32 %i.agj, %i.agi
  %i.agl = getelementptr inbounds nuw i8, ptr %i.ada, i64 4
  %i.agm = load i32, ptr %i.ada, align 4, !tbaa !8 ; 2 uses
  %i.agn = add i32 %i.agm, -1
  %i.ago = zext i32 %i.agn to i64
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.agl, i64 %i.ago
  store i32 %i.agk, ptr %i.agp, align 4, !tbaa !8
  br label %bb.fz

bb.fy:                                            ; preds = %bb.fs, %bb.fr
  store i32 -1, ptr %i.afk, align 8, !tbaa !974
  br label %.thread168

thread-pre-split.i:                               ; preds = %._crit_edge.i307
  %.pr.i = load i32, ptr %i.ada, align 4, !tbaa !8
  br label %bb.fz

bb.fz:                                            ; preds = %thread-pre-split.i, %.thread.i
  %i.agq = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.agm, %.thread.i ]
  %i.agr = icmp eq i32 %i.agq, 1
  br i1 %i.agr, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.ags = load ptr, ptr %0, align 8, !tbaa !954
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ada, i64 4
  %i.agu = load i32, ptr %i.agt, align 4, !tbaa !8
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.agu to i64
  %i.agv = getelementptr inbounds nuw i8, ptr %i.ags, i64 16
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !50
  tail call void @js_free_rt(ptr noundef %i.agw, ptr noundef nonnull %i.ada), !inline_history !1024
  br label %.thread168

bb.gb:                                            ; preds = %bb.fz
  %i.agx = ptrtoint ptr %i.ada to i64
  br label %.thread168

bb.gc:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #49
  %i.agy = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.agz = load i8, ptr %i.agy, align 2, !tbaa !961, !range !58, !noundef !59
  %i.aha = trunc nuw i8 %i.agz to i1
  br i1 %i.aha, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.ahb = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.228) ; 0 uses
  br label %.thread171

bb.ge:                                            ; preds = %bb.gc
  %i.ahc = call fastcc i32 @bc_get_leb128(ptr noundef %0, ptr noundef nonnull %i.c)
  %.not137 = icmp eq i32 %i.ahc, 0
  br i1 %.not137, label %bb.gf, label %.thread171

bb.gf:                                            ; preds = %bb.ge
  %i.ahd = load i32, ptr %i.c, align 4, !tbaa !8  ; 3 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ahf = load i32, ptr %i.ahe, align 8, !tbaa !988 ; 2 uses
  %.not138 = icmp ult i32 %i.ahd, %i.ahf
  br i1 %.not138, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.ahg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !982
  %i.ahi = zext i32 %i.ahd to i64
  %i.ahj = getelementptr inbounds nuw [8 x i8], ptr %i.ahh, i64 %i.ahi
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !212 ; 3 uses
  %.not139 = icmp eq ptr %i.ahk, null
  br i1 %.not139, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.ahl = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.229, i32 noundef %i.ahd, i32 noundef %i.ahf) ; 0 uses
  br label %.thread171

.thread171:                                       ; preds = %bb.gd, %bb.gh, %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
  br label %.thread168

bb.gi:                                            ; preds = %bb.gg
  %i.ahm = ptrtoint ptr %i.ahk to i64
  %i.ahn = getelementptr inbounds i8, ptr %i.ahk, i64 -4 ; 2 uses
  %i.aho = load i32, ptr %i.ahn, align 4, !tbaa !8
  %i.ahp = add nsw i32 %i.aho, 1
  store i32 %i.ahp, ptr %i.ahn, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
  br label %.thread168

bb.gj:                                            ; preds = %bb.f
  %i.ahq = tail call fastcc { i64, i64 } @js_map_read(ptr noundef nonnull %0, i32 noundef 0), !inline_history !1037 ; 2 uses
  %i.ahr = extractvalue { i64, i64 } %i.ahq, 0
  %i.ahs = extractvalue { i64, i64 } %i.ahq, 1
end_hunk_0
begin_hunk_1_@JS_ReadModule:bb.a

bb.v:                                             ; preds = %bb.ah
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 1 ; 2 uses
  %i.dr = load i32, ptr %i.bw, align 8, !tbaa !222
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next319, %i.ds
  br i1 %i.dt, label %.lr.ph277, label %.loopexit237, !llvm.loop !1700

.lr.ph277:                                        ; preds = %.preheader236, %bb.v
  %indvars.iv318 = phi i64 [ %indvars.iv.next319, %bb.v ], [ 0, %.preheader236 ] ; 2 uses
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !225
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr %i.du, i64 %indvars.iv318 ; 6 uses
  %i.dw = load ptr, ptr %i.n, align 8, !tbaa !958 ; 6 uses
  %i.dx = load ptr, ptr %i.l, align 8, !tbaa !972 ; 8 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = icmp slt i64 %i.ea, 1
  br i1 %i.eb, label %bb.w, label %bb.y, !prof !9

bb.w:                                             ; preds = %.lr.ph277
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !974
  %.not.i.i171 = icmp eq i32 %i.ed, 0
  br i1 %.not.i.i171, label %bb.x, label %bc_get_u8.exit

bb.x:                                             ; preds = %bb.w
  %i.ee = load ptr, ptr %0, align 8, !tbaa !954
  %i.ef = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %i.ee, ptr noundef nonnull @.str.226), !inline_history !983 ; 0 uses
  br label %bc_get_u8.exit

bc_get_u8.exit:                                   ; preds = %bb.w, %bb.x
  store i32 -1, ptr %i.ec, align 8, !tbaa !974
  br label %.thread222

bb.y:                                             ; preds = %.lr.ph277
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dx, i64 1 ; 5 uses
  store ptr %i.eg, ptr %i.l, align 8, !tbaa !972
  %i.eh = load i8, ptr %i.dx, align 1, !tbaa !35  ; 3 uses
  %i.ei = zext i8 %i.eh to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store i32 %i.ei, ptr %i.ej, align 8, !tbaa !226
  %i.ek = icmp eq i8 %i.eh, 0
  br i1 %i.ek, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.el = tail call fastcc i32 @bc_get_leb128_int(ptr noundef %0, ptr noundef nonnull %i.dv)
  %.not146 = icmp eq i32 %i.el, 0
  br i1 %.not146, label %bb.ah, label %.thread222

bb.aa:                                            ; preds = %bb.y
  %.not20.i.i.i172 = icmp ult ptr %i.eg, %i.dw
  br i1 %.not20.i.i.i172, label %.lr.ph.i.i.i177, label %get_leb128.exit.thread.i.i173, !prof !984

bb.ab:                                            ; preds = %.lr.ph.i.i.i177
  %.not.i.i.i182 = icmp ult ptr %i.fj, %i.dw
  br i1 %.not.i.i.i182, label %.lr.ph.i.i.i177.1, label %get_leb128.exit.thread.i.i173, !prof !968

.lr.ph.i.i.i177.1:                                ; preds = %bb.ab
  %i.em = getelementptr inbounds nuw i8, ptr %i.dx, i64 3 ; 3 uses
  %i.en = load i8, ptr %i.fj, align 1, !tbaa !35  ; 2 uses
  %i.eo = and i8 %i.en, 127
  %i.ep = zext nneg i8 %i.eo to i32
  %i.eq = shl nuw nsw i32 %i.ep, 7
  %i.er = or disjoint i32 %i.eq, %i.fm            ; 2 uses
  %.not18.i.i.i181.1 = icmp sgt i8 %i.en, -1
  br i1 %.not18.i.i.i181.1, label %get_leb128.exit.i.i184, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i177.1
  %.not.i.i.i182.1 = icmp ult ptr %i.em, %i.dw
  br i1 %.not.i.i.i182.1, label %.lr.ph.i.i.i177.2, label %get_leb128.exit.thread.i.i173, !prof !968

.lr.ph.i.i.i177.2:                                ; preds = %bb.ac
  %i.es = getelementptr inbounds nuw i8, ptr %i.dx, i64 4 ; 3 uses
  %i.et = load i8, ptr %i.em, align 1, !tbaa !35  ; 2 uses
  %i.eu = and i8 %i.et, 127
  %i.ev = zext nneg i8 %i.eu to i32
  %i.ew = shl nuw nsw i32 %i.ev, 14
  %i.ex = or disjoint i32 %i.ew, %i.er            ; 2 uses
  %.not18.i.i.i181.2 = icmp sgt i8 %i.et, -1
  br i1 %.not18.i.i.i181.2, label %get_leb128.exit.i.i184, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i177.2
  %.not.i.i.i182.2 = icmp ult ptr %i.es, %i.dw
  br i1 %.not.i.i.i182.2, label %.lr.ph.i.i.i177.3, label %get_leb128.exit.thread.i.i173, !prof !968

.lr.ph.i.i.i177.3:                                ; preds = %bb.ad
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dx, i64 5 ; 3 uses
  %i.ez = load i8, ptr %i.es, align 1, !tbaa !35  ; 2 uses
  %i.fa = and i8 %i.ez, 127
  %i.fb = zext nneg i8 %i.fa to i32
  %i.fc = shl nuw nsw i32 %i.fb, 21
  %i.fd = or disjoint i32 %i.fc, %i.ex            ; 2 uses
  %.not18.i.i.i181.3 = icmp sgt i8 %i.ez, -1
  br i1 %.not18.i.i.i181.3, label %get_leb128.exit.i.i184, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i177.3
  %.not.i.i.i182.3 = icmp ult ptr %i.ey, %i.dw
  br i1 %.not.i.i.i182.3, label %.lr.ph.i.i.i177.4, label %get_leb128.exit.thread.i.i173, !prof !968

.lr.ph.i.i.i177.4:                                ; preds = %bb.ae
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dx, i64 6
  %i.ff = load i8, ptr %i.ey, align 1, !tbaa !35  ; 2 uses
  %i.fg = zext i8 %i.ff to i32
  %i.fh = shl i32 %i.fg, 28
  %i.fi = or disjoint i32 %i.fh, %i.fd
  %.not18.i.i.i181.4 = icmp sgt i8 %i.ff, -1
  br i1 %.not18.i.i.i181.4, label %get_leb128.exit.i.i184, label %get_leb128.exit.thread.i.i173

.lr.ph.i.i.i177:                                  ; preds = %bb.aa
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dx, i64 2 ; 3 uses
  %i.fk = load i8, ptr %i.eg, align 1, !tbaa !35  ; 2 uses
  %i.fl = and i8 %i.fk, 127
  %i.fm = zext nneg i8 %i.fl to i32               ; 2 uses
  %.not18.i.i.i181 = icmp sgt i8 %i.fk, -1
  br i1 %.not18.i.i.i181, label %get_leb128.exit.i.i184, label %bb.ab

get_leb128.exit.thread.i.i173:                    ; preds = %bb.aa, %.lr.ph.i.i.i177.4, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  store i32 0, ptr %i.dv, align 4, !tbaa !8
  br label %.loopexit239

get_leb128.exit.i.i184:                           ; preds = %.lr.ph.i.i.i177.4, %.lr.ph.i.i.i177.3, %.lr.ph.i.i.i177.2, %.lr.ph.i.i.i177.1, %.lr.ph.i.i.i177
  %.lcssa426 = phi ptr [ %i.fj, %.lr.ph.i.i.i177 ], [ %i.em, %.lr.ph.i.i.i177.1 ], [ %i.es, %.lr.ph.i.i.i177.2 ], [ %i.ey, %.lr.ph.i.i.i177.3 ], [ %i.fe, %.lr.ph.i.i.i177.4 ]
  %.lcssa424 = phi i32 [ %i.fm, %.lr.ph.i.i.i177 ], [ %i.er, %.lr.ph.i.i.i177.1 ], [ %i.ex, %.lr.ph.i.i.i177.2 ], [ %i.fd, %.lr.ph.i.i.i177.3 ], [ %i.fi, %.lr.ph.i.i.i177.4 ]
  store i32 %.lcssa424, ptr %i.dv, align 8, !tbaa !8
  %i.fn = ptrtoint ptr %.lcssa426 to i64
  %i.fo = ptrtoint ptr %i.eg to i64
  %i.fp = sub i64 %i.fn, %i.fo                    ; 2 uses
  %i.fq = and i64 %i.fp, 2147483648
  %.not.i.i185 = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i185, label %bb.ag, label %.loopexit239, !prof !970

.loopexit239:                                     ; preds = %get_leb128.exit.i.i184, %get_leb128.exit.thread.i.i173
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !974
  %.not.i8.i.i174 = icmp eq i32 %i.fs, 0
  br i1 %.not.i8.i.i174, label %bb.af, label %bc_get_leb128_int.exit186

bb.af:                                            ; preds = %.loopexit239
  %i.ft = load ptr, ptr %0, align 8, !tbaa !954
  %i.fu = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %i.ft, ptr noundef nonnull @.str.226), !inline_history !1696 ; 0 uses
  br label %bc_get_leb128_int.exit186

bc_get_leb128_int.exit186:                        ; preds = %.loopexit239, %bb.af
  store i32 -1, ptr %i.fr, align 8, !tbaa !974
  br label %.thread222

bb.ag:                                            ; preds = %get_leb128.exit.i.i184
  %i.fv = and i64 %i.fp, 2147483647
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.fv
  store ptr %i.fw, ptr %i.l, align 8, !tbaa !972
  %i.fx = getelementptr inbounds nuw i8, ptr %i.dv, i64 20
  %i.fy = tail call fastcc i32 @bc_get_atom(ptr noundef %0, ptr noundef nonnull %i.fx)
  %.not145 = icmp eq i32 %i.fy, 0
  br i1 %.not145, label %bb.ah, label %.thread222

bb.ah:                                            ; preds = %bb.ag, %bb.z
  %i.fz = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.ga = tail call fastcc i32 @bc_get_atom(ptr noundef %0, ptr noundef nonnull %i.fz)
  %.not147 = icmp eq i32 %i.ga, 0
  br i1 %.not147, label %bb.v, label %.thread222

.loopexit237:                                     ; preds = %bb.v, %.preheader236
  %.lcssa269 = phi i8 [ undef, %.preheader236 ], [ %i.eh, %bb.v ]
  store i8 %.lcssa269, ptr %i.b, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit237, %bb.t
  %i.gb = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 4 uses
  %i.gc = tail call fastcc i32 @bc_get_leb128_int(ptr noundef %0, ptr noundef nonnull %i.gb)
  %.not132 = icmp eq i32 %i.gc, 0
  br i1 %.not132, label %bb.aj, label %.thread222

bb.aj:                                            ; preds = %bb.ai
  %i.gd = load i32, ptr %i.gb, align 8, !tbaa !384 ; 3 uses
  %.not133 = icmp eq i32 %i.gd, 0
  br i1 %.not133, label %.loopexit233, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ge = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !1701
  %i.gf = sext i32 %i.gd to i64
  %i.gg = shl nsw i64 %i.gf, 2
  %i.gh = tail call ptr @js_mallocz(ptr noundef %i.c, i64 noundef %i.gg) ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %i.gh, ptr %i.gi, align 8, !tbaa !383
  %.not134 = icmp eq ptr %i.gh, null
  br i1 %.not134, label %.thread222, label %.preheader232

.preheader232:                                    ; preds = %bb.ak
  %i.gj = load i32, ptr %i.gb, align 8, !tbaa !384
  %i.gk = icmp sgt i32 %i.gj, 0
  br i1 %i.gk, label %.lr.ph279, label %.loopexit233

.lr.ph279:                                        ; preds = %.preheader232
  %i.gl = load ptr, ptr %i.n, align 8, !tbaa !958 ; 5 uses
  %.promoted280 = load ptr, ptr %i.l, align 8, !tbaa !972
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph279, %bb.ar
  %indvars.iv321 = phi i64 [ 0, %.lr.ph279 ], [ %indvars.iv.next322, %bb.ar ] ; 2 uses
  %1 = phi ptr [ %.promoted280, %.lr.ph279 ], [ %i.hx, %bb.ar ] ; 9 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv321 ; 2 uses
  %.not20.i.i.i187 = icmp ult ptr %1, %i.gl
  br i1 %.not20.i.i.i187, label %.lr.ph.i.i.i192, label %get_leb128.exit.thread.i.i188, !prof !984

bb.am:                                            ; preds = %.lr.ph.i.i.i192
  %.not.i.i.i197 = icmp ult ptr %i.hk, %i.gl
  br i1 %.not.i.i.i197, label %.lr.ph.i.i.i192.1, label %get_leb128.exit.thread.i.i188, !prof !968

.lr.ph.i.i.i192.1:                                ; preds = %bb.am
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %i.go = load i8, ptr %i.hk, align 1, !tbaa !35  ; 2 uses
  %i.gp = and i8 %i.go, 127
  %i.gq = zext nneg i8 %i.gp to i32
  %i.gr = shl nuw nsw i32 %i.gq, 7
  %i.gs = or disjoint i32 %i.gr, %i.hn            ; 2 uses
  %.not18.i.i.i196.1 = icmp sgt i8 %i.go, -1
  br i1 %.not18.i.i.i196.1, label %get_leb128.exit.i.i199, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i192.1
  %.not.i.i.i197.1 = icmp ult ptr %i.gn, %i.gl
  br i1 %.not.i.i.i197.1, label %.lr.ph.i.i.i192.2, label %get_leb128.exit.thread.i.i188, !prof !968

.lr.ph.i.i.i192.2:                                ; preds = %bb.an
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 3 uses
  %i.gu = load i8, ptr %i.gn, align 1, !tbaa !35  ; 2 uses
  %i.gv = and i8 %i.gu, 127
  %i.gw = zext nneg i8 %i.gv to i32
  %i.gx = shl nuw nsw i32 %i.gw, 14
  %i.gy = or disjoint i32 %i.gx, %i.gs            ; 2 uses
  %.not18.i.i.i196.2 = icmp sgt i8 %i.gu, -1
  br i1 %.not18.i.i.i196.2, label %get_leb128.exit.i.i199, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i.i192.2
  %.not.i.i.i197.2 = icmp ult ptr %i.gt, %i.gl
  br i1 %.not.i.i.i197.2, label %.lr.ph.i.i.i192.3, label %get_leb128.exit.thread.i.i188, !prof !968

.lr.ph.i.i.i192.3:                                ; preds = %bb.ao
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.ha = load i8, ptr %i.gt, align 1, !tbaa !35  ; 2 uses
  %i.hb = and i8 %i.ha, 127
  %i.hc = zext nneg i8 %i.hb to i32
  %i.hd = shl nuw nsw i32 %i.hc, 21
  %i.he = or disjoint i32 %i.hd, %i.gy            ; 2 uses
  %.not18.i.i.i196.3 = icmp sgt i8 %i.ha, -1
  br i1 %.not18.i.i.i196.3, label %get_leb128.exit.i.i199, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i192.3
  %.not.i.i.i197.3 = icmp ult ptr %i.gz, %i.gl
  br i1 %.not.i.i.i197.3, label %.lr.ph.i.i.i192.4, label %get_leb128.exit.thread.i.i188, !prof !968

.lr.ph.i.i.i192.4:                                ; preds = %bb.ap
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.hg = load i8, ptr %i.gz, align 1, !tbaa !35  ; 2 uses
  %i.hh = zext i8 %i.hg to i32
  %i.hi = shl i32 %i.hh, 28
  %i.hj = or disjoint i32 %i.hi, %i.he
  %.not18.i.i.i196.4 = icmp sgt i8 %i.hg, -1
  br i1 %.not18.i.i.i196.4, label %get_leb128.exit.i.i199, label %get_leb128.exit.thread.i.i188

.lr.ph.i.i.i192:                                  ; preds = %bb.al
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.hl = load i8, ptr %1, align 1, !tbaa !35     ; 2 uses
  %i.hm = and i8 %i.hl, 127
  %i.hn = zext nneg i8 %i.hm to i32               ; 2 uses
  %.not18.i.i.i196 = icmp sgt i8 %i.hl, -1
  br i1 %.not18.i.i.i196, label %get_leb128.exit.i.i199, label %bb.am

get_leb128.exit.thread.i.i188:                    ; preds = %bb.al, %.lr.ph.i.i.i192.4, %bb.am, %bb.an, %bb.ao, %bb.ap
  store i32 0, ptr %i.gm, align 4, !tbaa !8
  br label %.loopexit235

get_leb128.exit.i.i199:                           ; preds = %.lr.ph.i.i.i192.4, %.lr.ph.i.i.i192.3, %.lr.ph.i.i.i192.2, %.lr.ph.i.i.i192.1, %.lr.ph.i.i.i192
  %.lcssa416 = phi ptr [ %i.hk, %.lr.ph.i.i.i192 ], [ %i.gn, %.lr.ph.i.i.i192.1 ], [ %i.gt, %.lr.ph.i.i.i192.2 ], [ %i.gz, %.lr.ph.i.i.i192.3 ], [ %i.hf, %.lr.ph.i.i.i192.4 ]
  %.lcssa = phi i32 [ %i.hn, %.lr.ph.i.i.i192 ], [ %i.gs, %.lr.ph.i.i.i192.1 ], [ %i.gy, %.lr.ph.i.i.i192.2 ], [ %i.he, %.lr.ph.i.i.i192.3 ], [ %i.hj, %.lr.ph.i.i.i192.4 ]
  store i32 %.lcssa, ptr %i.gm, align 4, !tbaa !8
  %i.ho = ptrtoint ptr %.lcssa416 to i64
  %i.hp = ptrtoint ptr %1 to i64
  %i.hq = sub i64 %i.ho, %i.hp                    ; 2 uses
  %i.hr = and i64 %i.hq, 2147483648
  %.not.i.i200 = icmp eq i64 %i.hr, 0
  br i1 %.not.i.i200, label %bb.ar, label %.loopexit235, !prof !970

.loopexit235:                                     ; preds = %get_leb128.exit.i.i199, %get_leb128.exit.thread.i.i188
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !974
  %.not.i8.i.i189 = icmp eq i32 %i.ht, 0
  br i1 %.not.i8.i.i189, label %bb.aq, label %bc_get_leb128_int.exit201

bb.aq:                                            ; preds = %.loopexit235
  %i.hu = load ptr, ptr %0, align 8, !tbaa !954
  %i.hv = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %i.hu, ptr noundef nonnull @.str.226), !inline_history !1696 ; 0 uses
  br label %bc_get_leb128_int.exit201

bc_get_leb128_int.exit201:                        ; preds = %.loopexit235, %bb.aq
  store i32 -1, ptr %i.hs, align 8, !tbaa !974
  br label %.thread222

bb.ar:                                            ; preds = %get_leb128.exit.i.i199
  %i.hw = and i64 %i.hq, 2147483647
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 %i.hw ; 2 uses
  store ptr %i.hx, ptr %i.l, align 8, !tbaa !972
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %i.hy = load i32, ptr %i.gb, align 8, !tbaa !384
  %i.hz = sext i32 %i.hy to i64
  %i.ia = icmp slt i64 %indvars.iv.next322, %i.hz
  br i1 %i.ia, label %bb.al, label %.loopexit233, !llvm.loop !1702

.loopexit233:                                     ; preds = %bb.ar, %.preheader232, %bb.aj
  %i.ib = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 4 uses
  %i.ic = tail call fastcc i32 @bc_get_leb128_int(ptr noundef %0, ptr noundef nonnull %i.ib)
  %.not135 = icmp eq i32 %i.ic, 0
  br i1 %.not135, label %bb.as, label %.thread222

bb.as:                                            ; preds = %.loopexit233
  %i.id = load i32, ptr %i.ib, align 8, !tbaa !386 ; 3 uses
  %.not136 = icmp eq i32 %i.id, 0
  br i1 %.not136, label %.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ie = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !1703
  %i.if = sext i32 %i.id to i64
  %i.ig = mul nsw i64 %i.if, 12
  %i.ih = tail call ptr @js_mallocz(ptr noundef %i.c, i64 noundef %i.ig) ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !385
  %.not137 = icmp eq ptr %i.ih, null
  br i1 %.not137, label %.thread222, label %.preheader

.preheader:                                       ; preds = %bb.at
  %i.ij = load i32, ptr %i.ib, align 8, !tbaa !386
  %i.ik = icmp sgt i32 %i.ij, 0
  br i1 %i.ik, label %.lr.ph282, label %.loopexit

bb.au:                                            ; preds = %bb.aw
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %i.il = load i32, ptr %i.ib, align 8, !tbaa !386
  %i.im = sext i32 %i.il to i64
  %i.in = icmp slt i64 %indvars.iv.next325, %i.im
  br i1 %i.in, label %.lr.ph282, label %.loopexit, !llvm.loop !1704

.lr.ph282:                                        ; preds = %.preheader, %bb.au
  %indvars.iv324 = phi i64 [ %indvars.iv.next325, %bb.au ], [ 0, %.preheader ] ; 2 uses
  %i.io = load ptr, ptr %i.ii, align 8, !tbaa !385
  %i.ip = getelementptr inbounds nuw [12 x i8], ptr %i.io, i64 %indvars.iv324 ; 3 uses
  %i.iq = tail call fastcc i32 @bc_get_leb128_int(ptr noundef %0, ptr noundef %i.ip)
  %.not139 = icmp eq i32 %i.iq, 0
  br i1 %.not139, label %bb.av, label %.thread222

bb.av:                                            ; preds = %.lr.ph282
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.is = tail call fastcc i32 @bc_get_atom(ptr noundef %0, ptr noundef nonnull %i.ir)
  %.not140 = icmp eq i32 %i.is, 0
  br i1 %.not140, label %bb.aw, label %.thread222

bb.aw:                                            ; preds = %bb.av
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.iu = tail call fastcc i32 @bc_get_leb128_int(ptr noundef %0, ptr noundef nonnull %i.it)
  %.not141 = icmp eq i32 %i.iu, 0
  br i1 %.not141, label %bb.au, label %.thread222

.loopexit:                                        ; preds = %bb.au, %.preheader, %bb.as
  %i.iv = call fastcc i32 @bc_get_u8(ptr noundef %0, ptr noundef %i.b)
  %.not138 = icmp eq i32 %i.iv, 0
  br i1 %.not138, label %bb.ax, label %.thread222

bb.ax:                                            ; preds = %.loopexit
  %i.iw = load i8, ptr %i.b, align 1, !tbaa !35
  %i.ix = icmp ne i8 %i.iw, 0
  %i.iy = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.iz = zext i1 %i.ix to i8
  store i8 %i.iz, ptr %i.iy, align 8, !tbaa !1212
  %i.ja = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.jb = tail call fastcc { i64, i64 } @JS_ReadObjectRec(ptr noundef %0) ; 2 uses
  %i.jc = extractvalue { i64, i64 } %i.jb, 0
  %i.jd = extractvalue { i64, i64 } %i.jb, 1      ; 2 uses
  store i64 %i.jc, ptr %i.ja, align 8, !tbaa !35
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store i64 %i.jd, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !72
  %i.je = and i64 %i.jd, 4294967295
  %i.jf = icmp eq i64 %i.je, 6
  br i1 %i.jf, label %.thread222, label %.thread227

.thread222:                                       ; preds = %bb.m, %.lr.ph, %bb.z, %bb.ag, %bb.ah, %bb.aw, %.lr.ph282, %bb.av, %bc_get_leb128_int.exit201, %bc_get_leb128_int.exit186, %bc_get_u8.exit, %bb.k, %bb.u, %bb.ak, %bb.at, %bb.ax, %.loopexit, %.loopexit233, %bb.ai, %bc_get_leb128_int.exit170, %bc_get_leb128_int.exit
  tail call fastcc void @js_free_module_def(ptr noundef %i.c, ptr noundef nonnull %i.f)
  br label %.thread227

.thread227:                                       ; preds = %bb.b, %bb.a, %.thread222, %bb.ax
  %.sroa.3112.0 = phi i64 [ %i.g, %bb.ax ], [ 0, %bb.b ], [ 0, %.thread222 ], [ 0, %bb.a ]
  %.sroa.4113.0 = phi i64 [ -3, %bb.ax ], [ 6, %bb.b ], [ 6, %.thread222 ], [ 6, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.3112.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.4113.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i64 } @JS_ReadSharedArrayBuffer(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !954    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !972  ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !958  ; 11 uses
  %.not20.i.i = icmp ult ptr %i.d, %i.f
  br i1 %.not20.i.i, label %.lr.ph.i.i, label %get_leb128.exit.thread.i, !prof !984

bb.b:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp ult ptr %i.ad, %i.f
  br i1 %.not.i.i, label %.lr.ph.i.i.1, label %get_leb128.exit.thread.i, !prof !968

.lr.ph.i.i.1:                                     ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.h = load i8, ptr %i.ad, align 1, !tbaa !35   ; 2 uses
  %i.i = and i8 %i.h, 127
  %i.j = zext nneg i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 7
  %i.l = or disjoint i32 %i.k, %i.ag              ; 2 uses
  %.not18.i.i.1 = icmp sgt i8 %i.h, -1
  br i1 %.not18.i.i.1, label %get_leb128.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.1
  %.not.i.i.1 = icmp ult ptr %i.g, %i.f
  br i1 %.not.i.i.1, label %.lr.ph.i.i.2, label %get_leb128.exit.thread.i, !prof !968

.lr.ph.i.i.2:                                     ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.n = load i8, ptr %i.g, align 1, !tbaa !35    ; 2 uses
  %i.o = and i8 %i.n, 127
  %i.p = zext nneg i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 14
  %i.r = or disjoint i32 %i.q, %i.l               ; 2 uses
  %.not18.i.i.2 = icmp sgt i8 %i.n, -1
  br i1 %.not18.i.i.2, label %get_leb128.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.2
  %.not.i.i.2 = icmp ult ptr %i.m, %i.f
  br i1 %.not.i.i.2, label %.lr.ph.i.i.3, label %get_leb128.exit.thread.i, !prof !968

.lr.ph.i.i.3:                                     ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  %i.t = load i8, ptr %i.m, align 1, !tbaa !35    ; 2 uses
  %i.u = and i8 %i.t, 127
  %i.v = zext nneg i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 21
  %i.x = or disjoint i32 %i.w, %i.r               ; 2 uses
  %.not18.i.i.3 = icmp sgt i8 %i.t, -1
  br i1 %.not18.i.i.3, label %get_leb128.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.3
  %.not.i.i.3 = icmp ult ptr %i.s, %i.f
  br i1 %.not.i.i.3, label %.lr.ph.i.i.4, label %get_leb128.exit.thread.i, !prof !968

.lr.ph.i.i.4:                                     ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.z = load i8, ptr %i.s, align 1, !tbaa !35    ; 2 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl i32 %i.aa, 28
  %i.ac = or disjoint i32 %i.ab, %i.x
  %.not18.i.i.4 = icmp sgt i8 %i.z, -1
  br i1 %.not18.i.i.4, label %get_leb128.exit.i, label %get_leb128.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.ae = load i8, ptr %i.d, align 1, !tbaa !35   ; 2 uses
  %i.af = and i8 %i.ae, 127
  %i.ag = zext nneg i8 %i.af to i32               ; 2 uses
  %.not18.i.i = icmp sgt i8 %i.ae, -1
  br i1 %.not18.i.i, label %get_leb128.exit.i, label %bb.b

get_leb128.exit.i:                                ; preds = %.lr.ph.i.i.4, %.lr.ph.i.i.3, %.lr.ph.i.i.2, %.lr.ph.i.i.1, %.lr.ph.i.i
  %.lcssa114 = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %i.g, %.lr.ph.i.i.1 ], [ %i.m, %.lr.ph.i.i.2 ], [ %i.s, %.lr.ph.i.i.3 ], [ %i.y, %.lr.ph.i.i.4 ]
  %.lcssa112 = phi i32 [ %i.ag, %.lr.ph.i.i ], [ %i.l, %.lr.ph.i.i.1 ], [ %i.r, %.lr.ph.i.i.2 ], [ %i.x, %.lr.ph.i.i.3 ], [ %i.ac, %.lr.ph.i.i.4 ] ; 2 uses
  %i.ah = ptrtoint ptr %.lcssa114 to i64
  %i.ai = ptrtoint ptr %i.d to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = and i64 %i.aj, 2147483648
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %bb.g, label %get_leb128.exit.thread.i, !prof !970

get_leb128.exit.thread.i:                         ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %.lr.ph.i.i.4, %bb.a, %get_leb128.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !974
  %.not.i8.i = icmp eq i32 %i.am, 0
  br i1 %.not.i8.i, label %bb.f, label %bc_get_leb128.exit

bb.f:                                             ; preds = %get_leb128.exit.thread.i
  %i.an = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %i.b, ptr noundef nonnull @.str.226), !inline_history !1689 ; 0 uses
  br label %bc_get_leb128.exit

bc_get_leb128.exit:                               ; preds = %get_leb128.exit.thread.i, %bb.f
  store i32 -1, ptr %i.al, align 8, !tbaa !974
  br label %JS_FreeValue.exit

bb.g:                                             ; preds = %get_leb128.exit.i
  %i.ao = and i64 %i.aj, 2147483647
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ao ; 10 uses
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !972
  %.not20.i.i33 = icmp ult ptr %i.ap, %i.f
end_hunk_1
begin_hunk_2_@js_math_imul:bb.a
  %i.w = trunc nuw i64 %i.v to i32                ; 2 uses
  %i.x = icmp slt i64 %.sroa.017.0.in.i.i.i, 0
  %i.y = icmp ne i64 %i.v, 2147483648
  %or.cond.i.i.i = select i1 %i.x, i1 %i.y, i1 false
  %i.z = sub nsw i32 0, %i.w
  %spec.select.i.i.i = select i1 %or.cond.i.i.i, i32 %i.z, i32 %i.w
  br label %bb.i

bb.h:                                             ; preds = %js_dup.exit.i.i
  %i.aa = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.017.0.in.i.i.i, i64 %.sroa.6.0.i.i.i, i32 noundef 0) #51, !inline_history !1065 ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = extractvalue { i64, i64 } %i.aa, 1      ; 2 uses
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = icmp eq i64 %i.ad, 6
  br i1 %i.ae, label %JS_ToUint32.exit, label %js_dup.exit.i.i

bb.i:                                             ; preds = %bb.f, %bb.c, %bb.e, %bb.g
  %storemerge.i.i.i.ph = phi i32 [ %spec.select.i.i.i, %bb.g ], [ %i.o, %bb.e ], [ %.sroa.017.0.extract.trunc.i.i.i, %bb.c ], [ 0, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = icmp ugt i32 %i.aj, -10
  br i1 %i.ak, label %bb.j, label %js_dup.exit.i.i7.preheader

bb.j:                                             ; preds = %bb.i
  %i.al = inttoptr i64 %i.ag to ptr
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !8
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !8
  br label %js_dup.exit.i.i7.preheader

js_dup.exit.i.i7.preheader:                       ; preds = %bb.j, %bb.i
  br label %js_dup.exit.i.i7

js_dup.exit.i.i7:                                 ; preds = %js_dup.exit.i.i7.preheader, %bb.p
  %.sroa.017.0.in.i.i.i8 = phi i64 [ %i.bh, %bb.p ], [ %i.ag, %js_dup.exit.i.i7.preheader ] ; 6 uses
  %.sroa.6.0.i.i.i9 = phi i64 [ %i.bi, %bb.p ], [ %i.ai, %js_dup.exit.i.i7.preheader ] ; 2 uses
  %i.ap = trunc i64 %.sroa.6.0.i.i.i9 to i32
  switch i32 %i.ap, label %bb.p [
    i32 0, label %bb.k
    i32 1, label %bb.k
    i32 2, label %bb.k
    i32 3, label %bb.k
    i32 8, label %bb.l
  ]

bb.k:                                             ; preds = %js_dup.exit.i.i7, %js_dup.exit.i.i7, %js_dup.exit.i.i7, %js_dup.exit.i.i7
  %.sroa.017.0.extract.trunc.i.i.i15 = trunc i64 %.sroa.017.0.in.i.i.i8 to i32
  br label %bb.q

bb.l:                                             ; preds = %js_dup.exit.i.i7
  %i.aq = lshr i64 %.sroa.017.0.in.i.i.i8, 52
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  %i.as = and i32 %i.ar, 2047                     ; 3 uses
  %i.at = icmp samesign ult i32 %i.as, 1054
  br i1 %i.at, label %bb.m, label %bb.n, !prof !195

bb.m:                                             ; preds = %bb.l
  %.sroa.017.0.i.le.i.i14 = bitcast i64 %.sroa.017.0.in.i.i.i8 to double
  %i.au = fptosi double %.sroa.017.0.i.le.i.i14 to i32
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.av = icmp samesign ult i32 %i.as, 1107
  br i1 %i.av, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.aw = and i64 %.sroa.017.0.in.i.i.i8, 4503599627370495
  %i.ax = or disjoint i64 %i.aw, 4503599627370496
  %i.ay = add nsw i32 %i.as, -1043
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl i64 %i.ax, %i.az
  %i.bb = lshr i64 %i.ba, 32                      ; 2 uses
  %i.bc = trunc nuw i64 %i.bb to i32              ; 2 uses
  %i.bd = icmp slt i64 %.sroa.017.0.in.i.i.i8, 0
  %i.be = icmp ne i64 %i.bb, 2147483648
  %or.cond.i.i.i12 = select i1 %i.bd, i1 %i.be, i1 false
  %i.bf = sub nsw i32 0, %i.bc
  %spec.select.i.i.i13 = select i1 %or.cond.i.i.i12, i32 %i.bf, i32 %i.bc
  br label %bb.q

bb.p:                                             ; preds = %js_dup.exit.i.i7
  %i.bg = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.017.0.in.i.i.i8, i64 %.sroa.6.0.i.i.i9, i32 noundef 0) #51, !inline_history !1065 ; 2 uses
  %i.bh = extractvalue { i64, i64 } %i.bg, 0
  %i.bi = extractvalue { i64, i64 } %i.bg, 1      ; 2 uses
  %i.bj = and i64 %i.bi, 4294967295
  %i.bk = icmp eq i64 %i.bj, 6
  br i1 %i.bk, label %JS_ToUint32.exit, label %js_dup.exit.i.i7

bb.q:                                             ; preds = %bb.n, %bb.k, %bb.m, %bb.o
  %storemerge.i.i.i10.ph = phi i32 [ %spec.select.i.i.i13, %bb.o ], [ %i.au, %bb.m ], [ %.sroa.017.0.extract.trunc.i.i.i15, %bb.k ], [ 0, %bb.n ]
  %i.bl = mul i32 %storemerge.i.i.i10.ph, %storemerge.i.i.i.ph
  %.sroa.0.0.insert.ext.i = zext i32 %i.bl to i64
  br label %JS_ToUint32.exit

JS_ToUint32.exit:                                 ; preds = %bb.h, %bb.p, %bb.q
  %.sroa.05.0 = phi i64 [ %.sroa.0.0.insert.ext.i, %bb.q ], [ 0, %bb.p ], [ 0, %bb.h ]
  %.sroa.6.0 = phi i64 [ 0, %bb.q ], [ 6, %bb.p ], [ 6, %bb.h ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.05.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_math_clz32(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = load i64, ptr %4, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = icmp ugt i32 %i.d, -10
  br i1 %i.e, label %bb.b, label %js_dup.exit.i.i.preheader

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %i.a to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !8
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !8
  br label %js_dup.exit.i.i.preheader

js_dup.exit.i.i.preheader:                        ; preds = %bb.b, %bb.a
  br label %js_dup.exit.i.i

js_dup.exit.i.i:                                  ; preds = %js_dup.exit.i.i.preheader, %bb.h
  %.sroa.017.0.in.i.i.i = phi i64 [ %i.ab, %bb.h ], [ %i.a, %js_dup.exit.i.i.preheader ] ; 6 uses
  %.sroa.6.0.i.i.i = phi i64 [ %i.ac, %bb.h ], [ %i.c, %js_dup.exit.i.i.preheader ] ; 2 uses
  %i.j = trunc i64 %.sroa.6.0.i.i.i to i32
  switch i32 %i.j, label %bb.h [
    i32 0, label %bb.c
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 8, label %bb.d
  ]

bb.c:                                             ; preds = %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i
  %.sroa.017.0.extract.trunc.i.i.i = trunc i64 %.sroa.017.0.in.i.i.i to i32
  br label %bb.i

bb.d:                                             ; preds = %js_dup.exit.i.i
  %i.k = lshr i64 %.sroa.017.0.in.i.i.i, 52
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = and i32 %i.l, 2047                       ; 3 uses
  %i.n = icmp samesign ult i32 %i.m, 1054
  br i1 %i.n, label %bb.e, label %bb.f, !prof !195

bb.e:                                             ; preds = %bb.d
  %.sroa.017.0.i.le.i.i = bitcast i64 %.sroa.017.0.in.i.i.i to double
  %i.o = fptosi double %.sroa.017.0.i.le.i.i to i32
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.p = icmp samesign ult i32 %i.m, 1107
  br i1 %i.p, label %bb.g, label %JS_ToUint32.exit

bb.g:                                             ; preds = %bb.f
  %i.q = and i64 %.sroa.017.0.in.i.i.i, 4503599627370495
  %i.r = or disjoint i64 %i.q, 4503599627370496
  %i.s = add nsw i32 %i.m, -1043
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl i64 %i.r, %i.t
  %i.v = lshr i64 %i.u, 32                        ; 2 uses
  %i.w = trunc nuw i64 %i.v to i32                ; 2 uses
  %i.x = icmp slt i64 %.sroa.017.0.in.i.i.i, 0
  %i.y = icmp ne i64 %i.v, 2147483648
  %or.cond.i.i.i = select i1 %i.x, i1 %i.y, i1 false
  %i.z = sub nsw i32 0, %i.w
  %spec.select.i.i.i = select i1 %or.cond.i.i.i, i32 %i.z, i32 %i.w
  br label %bb.i

bb.h:                                             ; preds = %js_dup.exit.i.i
  %i.aa = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.017.0.in.i.i.i, i64 %.sroa.6.0.i.i.i, i32 noundef 0) #51, !inline_history !1065 ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = extractvalue { i64, i64 } %i.aa, 1      ; 2 uses
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = icmp eq i64 %i.ad, 6
  br i1 %i.ae, label %JS_ToUint32.exit, label %js_dup.exit.i.i

bb.i:                                             ; preds = %bb.c, %bb.e, %bb.g
  %storemerge.i.i.i.ph = phi i32 [ %spec.select.i.i.i, %bb.g ], [ %i.o, %bb.e ], [ %.sroa.017.0.extract.trunc.i.i.i, %bb.c ]
  %i.af = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %storemerge.i.i.i.ph, i1 false)
  %i.ag = zext nneg i32 %i.af to i64
  br label %JS_ToUint32.exit

JS_ToUint32.exit:                                 ; preds = %bb.h, %bb.f, %bb.i
  %.sroa.02.0 = phi i64 [ %i.ag, %bb.i ], [ 32, %bb.f ], [ 0, %bb.h ]
  %.sroa.4.0 = phi i64 [ 0, %bb.i ], [ 0, %bb.f ], [ 6, %bb.h ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.02.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_math_sumPrecise(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.SumPreciseState, align 8    ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %i.b = load i64, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = tail call fastcc { i64, i64 } @JS_GetIterator(ptr noundef %0, i64 %i.b, i64 %i.d, i1 noundef zeroext false) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0        ; 7 uses
  %i.g = extractvalue { i64, i64 } %i.e, 1        ; 8 uses
  %i.h = and i64 %i.g, 4294967295
  %i.i = icmp eq i64 %i.h, 6
  br i1 %i.i, label %JS_FreeValue.exit60, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %i.f, i64 %i.g, i32 noundef 114, i64 %i.f, i64 %i.g, i1 noundef zeroext false), !inline_history !272 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 4 uses
  %i.l = extractvalue { i64, i64 } %i.j, 1        ; 5 uses
  %i.m = and i64 %i.l, 4294967295
  %i.n = icmp eq i64 %i.m, 6
  br i1 %i.n, label %sum_precise_get_result.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 276
  store i64 0, ptr %5, align 8, !tbaa !72
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 272
  %i.p = call fastcc { i64, i64 } @JS_IteratorNext(ptr noundef %0, i64 %i.f, i64 %i.g, i64 %i.k, i64 %i.l, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.a) ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 1        ; 2 uses
  %i.r = and i64 %i.q, 4294967295
  %i.s = icmp eq i64 %i.r, 6
  br i1 %i.s, label %sum_precise_get_result.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %sum_precise_add.exit
  %i.t = phi i32 [ %i.dg, %sum_precise_add.exit ], [ 0, %bb.c ] ; 7 uses
  %7 = phi i64 [ %i.dj, %sum_precise_add.exit ], [ %i.q, %bb.c ] ; 2 uses
  %.pn = phi { i64, i64 } [ %i.di, %sum_precise_add.exit ], [ %i.p, %bb.c ]
  %8 = phi i32 [ %i.dh, %sum_precise_add.exit ], [ 1, %bb.c ] ; 20 uses
  %i.u = extractvalue { i64, i64 } %.pn, 0        ; 4 uses
  %i.v = load i32, ptr %i.a, align 4, !tbaa !8
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.d, label %bb.v

bb.d:                                             ; preds = %.lr.ph
  %i.w = trunc i64 %7 to i32                      ; 2 uses
  switch i32 %i.w, label %bb.f [
    i32 8, label %bb.i
    i32 0, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %.sroa.014.0.extract.trunc = trunc i64 %i.u to i32
  %i.x = sitofp i32 %.sroa.014.0.extract.trunc to double
  %i.y = bitcast double %i.x to i64
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !50
  %i.ab = icmp ugt i32 %i.w, -10
  br i1 %i.ab, label %bb.g, label %JS_FreeValue.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = inttoptr i64 %i.u to ptr
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8  ; 2 uses
  %i.af = add nsw i32 %i.ae, -1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !8
  %i.ag = icmp slt i32 %i.ae, 2
  br i1 %i.ag, label %bb.h, label %JS_FreeValue.exit

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @js_free_value_rt(ptr noundef %i.aa, i64 %i.u, i64 %7), !inline_history !143
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.f, %bb.g, %bb.h
  %i.ah = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.738) ; 0 uses
  %i.ai = tail call fastcc i32 @JS_IteratorClose(ptr noundef nonnull %0, i64 %i.f, i64 %i.g, i1 noundef zeroext true) ; 0 uses
  br label %sum_precise_get_result.exit

bb.i:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i64 [ %i.y, %bb.e ], [ %i.u, %bb.d ]  ; 6 uses
  %.neg.i = ashr i64 %.0, 63                      ; 4 uses
  %i.aj = lshr i64 %.0, 63                        ; 4 uses
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = lshr i64 %.0, 52
  %i.am = trunc nuw nsw i64 %i.al to i32
  %i.an = and i32 %i.am, 2047                     ; 2 uses
  %i.ao = and i64 %.0, 4503599627370495           ; 4 uses
  switch i32 %i.an, label %bb.n [
    i32 2047, label %bb.j
    i32 0, label %bb.l
  ], !prof !1059

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = icmp eq i32 %i.t, 4
  %or.cond = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %or.cond, label %sum_precise_add.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = icmp slt i64 %.0, 0
  %or.cond140.v.i = select i1 %i.ar, i32 2, i32 3
  %or.cond140.i = icmp eq i32 %i.t, %or.cond140.v.i
  %i.as = or disjoint i32 %i.ak, 2
  %spec.select = select i1 %or.cond140.i, i32 4, i32 %i.as
  br label %sum_precise_add.exit

bb.l:                                             ; preds = %bb.i
  %i.at = icmp eq i64 %i.ao, 0
  br i1 %i.at, label %bb.m, label %bb.o, !prof !195

bb.m:                                             ; preds = %bb.l
  %i.au = icmp ne i32 %i.t, 0
  %i.av = icmp slt i64 %.0, 0
  %or.cond5.i = or i1 %i.av, %i.au
  %spec.store.select = select i1 %or.cond5.i, i32 %i.t, i32 1 ; 2 uses
  store i32 %spec.store.select, ptr %i.o, align 4
  br label %sum_precise_add.exit

bb.n:                                             ; preds = %bb.i
  %i.aw = or disjoint i64 %i.ao, 4503599627370496
  %i.ax = add nsw i32 %i.an, -1                   ; 2 uses
  %i.ay = lshr i32 %i.ax, 6
  %i.az = and i32 %i.ax, 63
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.0128.i = phi i32 [ %i.az, %bb.n ], [ 0, %bb.l ] ; 3 uses
  %.0122.i = phi i32 [ %i.ay, %bb.n ], [ 0, %bb.l ] ; 6 uses
  %.0.i = phi i64 [ %i.aw, %bb.n ], [ %i.ao, %bb.l ] ; 2 uses
  %i.ba = icmp ugt i32 %i.t, 1
  br i1 %i.ba, label %sum_precise_add.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = sext i32 %8 to i64                      ; 5 uses
  %i.bc = getelementptr [8 x i8], ptr %5, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 -8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !72
  %i.bf = ashr i64 %i.be, 63                      ; 4 uses
  %.not143.i = icmp sgt i32 %8, %.0122.i
  br i1 %.not143.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.p
  %i.bg = add nuw nsw i32 %.0122.i, 1
  %i.bh = sub i32 %.0122.i, %8                    ; 2 uses
  %i.bi = zext i32 %i.bh to i64
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bh, 3
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bj, 8589934588              ; 3 uses
  %i.bk = add nsw i64 %n.vec, %i.bb
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bf, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %5, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %gep, align 8, !tbaa !72
  store <2 x i64> %broadcast.splat, ptr %i.bl, align 8, !tbaa !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !2199

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.bb, %.lr.ph.preheader.i ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv.i
  store i64 %i.bf, ptr %i.bn, align 8, !tbaa !72
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.bg, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !2200

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.p
  %i.bo = zext nneg i32 %.0128.i to i64
  %i.bp = shl i64 %.0.i, %i.bo
  %i.bq = zext nneg i32 %.0122.i to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.bq ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !72 ; 2 uses
  %i.bt = xor i64 %i.bp, %.neg.i
  %i.bu = add i64 %i.bs, %i.bt                    ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.bs
  %i.bw = add i64 %i.bu, %i.aj                    ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.aj
  %i.by = or i1 %i.bv, %i.bx
  %i.bz = zext i1 %i.by to i64                    ; 3 uses
  store i64 %i.bw, ptr %i.br, align 8, !tbaa !72
  %i.ca = icmp samesign ugt i32 %.0128.i, 11
  br i1 %i.ca, label %bb.q, label %bb.s

bb.q:                                             ; preds = %._crit_edge.i
  %i.cb = add nuw nsw i32 %.0122.i, 1             ; 3 uses
  %.not137.i = icmp slt i32 %i.cb, %8
  %.phi.trans.insert.i = zext nneg i32 %i.cb to i64
  %.phi.trans.insert153.i = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.phi.trans.insert.i ; 2 uses
  br i1 %.not137.i, label %._crit_edge152.i, label %bb.r

._crit_edge152.i:                                 ; preds = %bb.q
  %.pre.i = load i64, ptr %.phi.trans.insert153.i, align 8, !tbaa !72
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge152.i
  %i.cc = phi i64 [ %.pre.i, %._crit_edge152.i ], [ %i.bf, %bb.q ] ; 2 uses
  %i.cd = sub nuw nsw i32 64, %.0128.i
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = lshr i64 %.0.i, %i.ce
  %i.cg = xor i64 %i.cf, %.neg.i
  %i.ch = add i64 %i.cc, %i.cg                    ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cc
  %i.cj = add i64 %i.ch, %i.bz                    ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.bz
  %i.cl = or i1 %i.ci, %i.ck
  %i.cm = zext i1 %i.cl to i64
  store i64 %i.cj, ptr %.phi.trans.insert153.i, align 8, !tbaa !72
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i
  %.1123.i = phi i32 [ %i.cb, %bb.r ], [ %.0122.i, %._crit_edge.i ] ; 2 uses
  %.0121.i = phi i64 [ %i.cm, %bb.r ], [ %i.bz, %._crit_edge.i ] ; 2 uses
  %i.cn = add nuw nsw i32 %.1123.i, 1             ; 3 uses
  %.not138.i = icmp slt i32 %i.cn, %8
  br i1 %.not138.i, label %.preheader.preheader.i, label %..loopexit_crit_edge.i

..loopexit_crit_edge.i:                           ; preds = %bb.s
  %.pre154.i = zext nneg i32 %i.cn to i64
  br label %.loopexit.i

.preheader.preheader.i:                           ; preds = %bb.s
  %i.co = zext nneg i32 %.1123.i to i64
  %i.cp = add nuw nsw i64 %i.co, 1
  %wide.trip.count.i = zext nneg i32 %8 to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.t, %.preheader.preheader.i
  %indvars.iv148.i = phi i64 [ %i.cp, %.preheader.preheader.i ], [ %indvars.iv.next149.i, %bb.t ] ; 2 uses
  %.1146.i = phi i64 [ %.0121.i, %.preheader.preheader.i ], [ %i.cy, %bb.t ] ; 3 uses
  %i.cq = icmp eq i64 %.1146.i, %i.aj
  br i1 %i.cq, label %sum_precise_add.exit, label %bb.t

bb.t:                                             ; preds = %.preheader.i
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv148.i ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !72 ; 2 uses
  %i.ct = add i64 %i.cs, %.neg.i                  ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cs
  %i.cv = add i64 %i.ct, %.1146.i                 ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %.1146.i
  %i.cx = or i1 %i.cu, %i.cw
  %i.cy = zext i1 %i.cx to i64                    ; 2 uses
  store i64 %i.cv, ptr %i.cr, align 8, !tbaa !72
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %exitcond151.not.i = icmp eq i64 %indvars.iv.next149.i, %wide.trip.count.i
  br i1 %exitcond151.not.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !2201

.loopexit.i:                                      ; preds = %bb.t, %..loopexit_crit_edge.i
  %.pre-phi155.i = phi i64 [ %.pre154.i, %..loopexit_crit_edge.i ], [ %i.bb, %bb.t ]
  %.0124.i = phi i32 [ %i.cn, %..loopexit_crit_edge.i ], [ %8, %bb.t ] ; 2 uses
  %.2.i = phi i64 [ %.0121.i, %..loopexit_crit_edge.i ], [ %i.cy, %bb.t ]
  %i.cz = add nsw i64 %i.bf, %.neg.i
  %i.da = add nsw i64 %i.cz, %.2.i                ; 2 uses
  %i.db = getelementptr [8 x i8], ptr %5, i64 %.pre-phi155.i ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 -8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !72
  %i.de = ashr i64 %i.dd, 63
  %.not139.i = icmp eq i64 %i.da, %i.de
  br i1 %.not139.i, label %sum_precise_add.exit, label %bb.u

bb.u:                                             ; preds = %.loopexit.i
  %i.df = add nuw nsw i32 %.0124.i, 1
  store i64 %i.da, ptr %i.db, align 8, !tbaa !72
  br label %sum_precise_add.exit

sum_precise_add.exit:                             ; preds = %.preheader.i, %bb.k, %bb.j, %.loopexit.i, %bb.u, %bb.m, %bb.o
  %i.dg = phi i32 [ %spec.store.select, %bb.m ], [ 4, %bb.j ], [ %spec.select, %bb.k ], [ 1, %.loopexit.i ], [ %i.t, %bb.o ], [ 1, %bb.u ], [ 1, %.preheader.i ]
  %i.dh = phi i32 [ %8, %bb.m ], [ %8, %bb.j ], [ %8, %bb.k ], [ %.0124.i, %.loopexit.i ], [ %8, %bb.o ], [ %i.df, %bb.u ], [ %8, %.preheader.i ]
  %i.di = call fastcc { i64, i64 } @JS_IteratorNext(ptr noundef %0, i64 %i.f, i64 %i.g, i64 %i.k, i64 %i.l, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.a) ; 2 uses
  %i.dj = extractvalue { i64, i64 } %i.di, 1      ; 2 uses
  %i.dk = and i64 %i.dj, 4294967295
  %i.dl = icmp eq i64 %i.dk, 6
  br i1 %i.dl, label %sum_precise_get_result.exit, label %.lr.ph

bb.v:                                             ; preds = %.lr.ph
  store i32 %8, ptr %6, align 8
  switch i32 %i.t, label %sum_precise_get_result.exit [
    i32 1, label %bb.z
    i32 4, label %bb.y
    i32 2, label %bb.w
    i32 3, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  br label %sum_precise_get_result.exit

bb.x:                                             ; preds = %bb.v
  br label %sum_precise_get_result.exit

bb.y:                                             ; preds = %bb.v
  br label %sum_precise_get_result.exit

bb.z:                                             ; preds = %bb.v
  %i.dm = sext i32 %8 to i64
  %i.dn = getelementptr [8 x i8], ptr %5, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 -8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !72 ; 2 uses
  %i.dq = and i64 %i.dp, -9223372036854775808     ; 3 uses
  %.not85.i = icmp slt i64 %i.dp, 0
  %i.dr = icmp sgt i32 %8, 0                      ; 2 uses
  %or.cond96.i = and i1 %i.dr, %.not85.i
  br i1 %or.cond96.i, label %.lr.ph.preheader.i53, label %.loopexit89.i

.lr.ph.preheader.i53:                             ; preds = %bb.z
  %wide.trip.count.i54 = zext nneg i32 %8 to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i54, 1
  %i.ds = icmp eq i32 %8, 1
  br i1 %i.ds, label %.lr.ph.i55.epil.preheader, label %.lr.ph.preheader.i53.new

.lr.ph.preheader.i53.new:                         ; preds = %.lr.ph.preheader.i53
  %unroll_iter = and i64 %wide.trip.count.i54, 2147483646
  br label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55, %.lr.ph.preheader.i53.new
  %indvars.iv.i56 = phi i64 [ 0, %.lr.ph.preheader.i53.new ], [ %indvars.iv.next.i57.1, %.lr.ph.i55 ] ; 3 uses
  %.07591.i = phi i64 [ 1, %.lr.ph.preheader.i53.new ], [ %i.ef, %.lr.ph.i55 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i53.new ], [ %niter.next.1, %.lr.ph.i55 ]
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i56 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !72
  %i.dv = xor i64 %i.du, -1
  %i.dw = add i64 %.07591.i, %i.dv                ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %.07591.i
  %i.dy = zext i1 %i.dx to i64                    ; 2 uses
  store i64 %i.dw, ptr %i.dt, align 8, !tbaa !72
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i56
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !72
  %i.ec = xor i64 %i.eb, -1
  %i.ed = add i64 %i.dy, %i.ec                    ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.dy
  %i.ef = zext i1 %i.ee to i64                    ; 2 uses
  store i64 %i.ed, ptr %i.ea, align 8, !tbaa !72
  %indvars.iv.next.i57.1 = add nuw nsw i64 %indvars.iv.i56, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph93.i.preheader.loopexit.unr-lcssa, label %.lr.ph.i55, !llvm.loop !2202

.loopexit89.i:                                    ; preds = %bb.z
  br i1 %i.dr, label %.lr.ph93.i.preheader, label %.critedge.i

.lr.ph93.i.preheader.loopexit.unr-lcssa:          ; preds = %.lr.ph.i55
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph93.i.preheader, label %.lr.ph.i55.epil.preheader

.lr.ph.i55.epil.preheader:                        ; preds = %.lr.ph93.i.preheader.loopexit.unr-lcssa, %.lr.ph.preheader.i53
  %indvars.iv.i56.epil.init = phi i64 [ 0, %.lr.ph.preheader.i53 ], [ %indvars.iv.next.i57.1, %.lr.ph93.i.preheader.loopexit.unr-lcssa ]
  %.07591.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i53 ], [ %i.ef, %.lr.ph93.i.preheader.loopexit.unr-lcssa ]
  %lcmp.mod141 = trunc i32 %8 to i1
  tail call void @llvm.assume(i1 %lcmp.mod141)
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i56.epil.init ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !72
  %i.ei = xor i64 %i.eh, -1
  %i.ej = add i64 %.07591.i.epil.init, %i.ei
  store i64 %i.ej, ptr %i.eg, align 8, !tbaa !72
  br label %.lr.ph93.i.preheader

.lr.ph93.i.preheader:                             ; preds = %.lr.ph.i55.epil.preheader, %.lr.ph93.i.preheader.loopexit.unr-lcssa, %.loopexit89.i
  br label %.lr.ph93.i

.lr.ph93.i:                                       ; preds = %.lr.ph93.i.preheader, %bb.aa
  %.07292.i = phi i32 [ %i.ep, %bb.aa ], [ %8, %.lr.ph93.i.preheader ] ; 4 uses
  %i.ek = zext nneg i32 %.07292.i to i64
  %i.el = getelementptr [8 x i8], ptr %5, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.el, i64 -8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !72
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %bb.aa, label %.critedge.i

bb.aa:                                            ; preds = %.lr.ph93.i
  %i.ep = add nsw i32 %.07292.i, -1
  %i.eq = icmp sgt i32 %.07292.i, 1
  br i1 %i.eq, label %.lr.ph93.i, label %sum_precise_get_result.exit, !llvm.loop !2203

.critedge.i:                                      ; preds = %.lr.ph93.i, %.loopexit89.i
  %.072.lcssa.i = phi i32 [ %8, %.loopexit89.i ], [ %.07292.i, %.lr.ph93.i ] ; 5 uses
  switch i32 %.072.lcssa.i, label %bb.ad [
    i32 0, label %sum_precise_get_result.exit
    i32 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %.critedge.i
  %i.er = load i64, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.es = icmp ult i64 %i.er, 4503599627370496
  br i1 %i.es, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.et = or disjoint i64 %i.er, %i.dq
  br label %sum_precise_get_result.exit

bb.ad:                                            ; preds = %bb.ab, %.critedge.i
  %i.eu = shl nsw i32 %.072.lcssa.i, 6
  %i.ev = add nsw i32 %.072.lcssa.i, -1           ; 3 uses
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ew
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !72 ; 3 uses
  %i.ez = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ey, i1 true) ; 4 uses
  %i.fa = trunc nuw nsw i64 %i.ez to i32
  %i.fb = sub nsw i32 %i.eu, %i.fa
  %.not86.i = icmp eq i64 %i.ez, 0
  br i1 %.not86.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fc = shl i64 %i.ey, %i.ez                    ; 2 uses
  %i.fd = icmp sgt i32 %.072.lcssa.i, 1
  br i1 %i.fd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fe = add nsw i32 %.072.lcssa.i, -2           ; 2 uses
  %i.ff = sub nuw nsw i64 64, %i.ez               ; 2 uses
  %i.fg = zext nneg i32 %i.fe to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !72 ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.ff
  %i.fj = xor i64 %notmask.i, -1
  %i.fk = and i64 %i.fi, %i.fj
  %i.fl = lshr i64 %i.fi, %i.ff
  %i.fm = icmp ne i64 %i.fk, 0
  %i.fn = zext i1 %i.fm to i64
  %i.fo = or i64 %i.fl, %i.fn
  %i.fp = or i64 %i.fo, %i.fc
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.076.i = phi i64 [ %i.fp, %bb.af ], [ %i.fc, %bb.ae ], [ %i.ey, %bb.ad ] ; 4 uses
  %.074.i = phi i32 [ %i.fe, %bb.af ], [ %i.ev, %bb.ae ], [ %i.ev, %bb.ad ] ; 2 uses
  %i.fq = and i64 %.076.i, 1023
  %i.fr = icmp eq i64 %i.fq, 0
  %i.fs = icmp sgt i32 %.074.i, 0
  %or.cond.i = and i1 %i.fr, %i.fs
  br i1 %or.cond.i, label %.preheader.preheader.i51, label %.loopexit.i50

.preheader.preheader.i51:                         ; preds = %bb.ag
  %i.ft = zext nneg i32 %.074.i to i64
  br label %.preheader.i52

bb.ah:                                            ; preds = %.preheader.i52
  %.old1.i = icmp samesign ugt i64 %indvars.iv98.i, 1
  br i1 %.old1.i, label %.preheader.i52, label %.loopexit.i50

.preheader.i52:                                   ; preds = %bb.ah, %.preheader.preheader.i51
  %indvars.iv98.i = phi i64 [ %i.ft, %.preheader.preheader.i51 ], [ %indvars.iv.next99.i, %bb.ah ] ; 2 uses
  %indvars.iv.next99.i = add nsw i64 %indvars.iv98.i, -1 ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next99.i
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !72
  %.not87.i = icmp eq i64 %i.fv, 0
  br i1 %.not87.i, label %bb.ah, label %bb.ai, !llvm.loop !2204

bb.ai:                                            ; preds = %.preheader.i52
  %i.fw = or disjoint i64 %.076.i, 1
  br label %.loopexit.i50

.loopexit.i50:                                    ; preds = %bb.ah, %bb.ai, %bb.ag
  %.177.i = phi i64 [ %i.fw, %bb.ai ], [ %.076.i, %bb.ag ], [ %.076.i, %bb.ah ] ; 2 uses
  %i.fx = lshr i64 %.177.i, 11
  %i.fy = and i64 %i.fx, 1
  %i.fz = add i64 %.177.i, 1023
  %i.ga = add i64 %i.fz, %i.fy
  %i.gb = lshr i64 %i.ga, 11                      ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 0
  %spec.select.v.i = select i1 %i.gc, i32 -51, i32 -52
  %spec.select.i = add nsw i32 %spec.select.v.i, %i.fb ; 2 uses
  %i.gd = icmp sgt i32 %spec.select.i, 2046
  br i1 %i.gd, label %bb.aj, label %bb.ak, !prof !9

bb.aj:                                            ; preds = %.loopexit.i50
  %i.ge = or disjoint i64 %i.dq, 9218868437227405312
  br label %sum_precise_get_result.exit

bb.ak:                                            ; preds = %.loopexit.i50
  %i.gf = and i64 %i.gb, 4503599627370495
  %i.gg = zext i32 %spec.select.i to i64
  %i.gh = shl i64 %i.gg, 52
  %i.gi = or disjoint i64 %i.gh, %i.gf
  %i.gj = or i64 %i.gi, %i.dq
  br label %sum_precise_get_result.exit

sum_precise_get_result.exit:                      ; preds = %sum_precise_add.exit, %bb.aa, %bb.c, %bb.ak, %bb.aj, %bb.ac, %.critedge.i, %bb.y, %bb.x, %bb.w, %bb.v, %bb.b, %JS_FreeValue.exit
  %.sroa.6.0 = phi i64 [ 6, %bb.b ], [ 6, %bb.c ], [ 6, %JS_FreeValue.exit ], [ 8, %bb.v ], [ 8, %bb.w ], [ 8, %bb.x ], [ 8, %bb.y ], [ 8, %bb.ak ], [ 8, %.critedge.i ], [ 8, %bb.ac ], [ 8, %bb.aj ], [ 8, %bb.aa ], [ 6, %sum_precise_add.exit ] ; 3 uses
  %.sroa.013.sroa.5.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %JS_FreeValue.exit ], [ -9223372036854775808, %bb.v ], [ 9218868437227405312, %bb.w ], [ -4503599627370496, %bb.x ], [ 9221120237041090560, %bb.y ], [ %i.gj, %bb.ak ], [ 0, %.critedge.i ], [ %i.et, %bb.ac ], [ %i.ge, %bb.aj ], [ 0, %bb.aa ], [ 0, %sum_precise_add.exit ] ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !50 ; 3 uses
  %i.gm = trunc i64 %i.g to i32
  %i.gn = icmp ugt i32 %i.gm, -10
  br i1 %i.gn, label %bb.al, label %JS_FreeValue.exit59

bb.al:                                            ; preds = %sum_precise_get_result.exit
  %i.go = inttoptr i64 %i.f to ptr
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -4 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !8  ; 2 uses
  %i.gr = add nsw i32 %i.gq, -1
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !8
  %i.gs = icmp slt i32 %i.gq, 2
  br i1 %i.gs, label %bb.am, label %JS_FreeValue.exit59

bb.am:                                            ; preds = %bb.al
  tail call fastcc void @js_free_value_rt(ptr noundef %i.gl, i64 %i.f, i64 %i.g), !inline_history !143
  %.pre = load ptr, ptr %i.gk, align 8, !tbaa !50
  br label %JS_FreeValue.exit59

JS_FreeValue.exit59:                              ; preds = %sum_precise_get_result.exit, %bb.al, %bb.am
  %i.gt = phi ptr [ %i.gl, %sum_precise_get_result.exit ], [ %i.gl, %bb.al ], [ %.pre, %bb.am ]
  %i.gu = trunc i64 %i.l to i32
  %i.gv = icmp ugt i32 %i.gu, -10
  br i1 %i.gv, label %bb.an, label %JS_FreeValue.exit60

bb.an:                                            ; preds = %JS_FreeValue.exit59
  %i.gw = inttoptr i64 %i.k to ptr
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 -4 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !8  ; 2 uses
  %i.gz = add nsw i32 %i.gy, -1
  store i32 %i.gz, ptr %i.gx, align 4, !tbaa !8
  %i.ha = icmp slt i32 %i.gy, 2
  br i1 %i.ha, label %bb.ao, label %JS_FreeValue.exit60

bb.ao:                                            ; preds = %bb.an
  tail call fastcc void @js_free_value_rt(ptr noundef %i.gt, i64 %i.k, i64 %i.l), !inline_history !143
  br label %JS_FreeValue.exit60

JS_FreeValue.exit60:                              ; preds = %bb.ao, %bb.an, %JS_FreeValue.exit59, %bb.a
  %.sroa.447.0 = phi i64 [ 6, %bb.a ], [ %.sroa.6.0, %JS_FreeValue.exit59 ], [ %.sroa.6.0, %bb.an ], [ %.sroa.6.0, %bb.ao ]
  %.sroa.045.0.insert.insert = phi i64 [ 0, %bb.a ], [ %.sroa.013.sroa.5.0, %JS_FreeValue.exit59 ], [ %.sroa.013.sroa.5.0, %bb.an ], [ %.sroa.013.sroa.5.0, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.045.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.447.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cosh(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sinh(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tanh(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acosh(double noundef) local_unnamed_addr #37

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asinh(double noundef) local_unnamed_addr #37
end_hunk_2
