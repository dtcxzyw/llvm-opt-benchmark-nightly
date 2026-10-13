Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 180
begin_hunk_0_@JS_ReadObjectRec:bb.a
  %i.aai = call fastcc i32 @js_realloc_array(ptr noundef %i.aah, ptr noundef nonnull %i.aab, i32 noundef 8, ptr noundef nonnull %i.aac, i32 noundef %i.aag), !inline_history !1443
  %.not.i.i.i281 = icmp eq i32 %i.aai, 0
  br i1 %.not.i.i.i281, label %js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i.i.i284, label %BC_add_object_ref.exit.i282

js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i.i.i284: ; preds = %js_resize_array.exit.i.i.i280
  %.pre.i.i.i285 = load i32, ptr %i.aad, align 8, !tbaa !635
  br label %js_resize_array.exit.thread.i.i.i286

js_resize_array.exit.thread.i.i.i286:             ; preds = %js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i.i.i284, %bb.ez
  %i.aaj = phi i32 [ %.pre.i.i.i285, %js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i.i.i284 ], [ %i.aae, %bb.ez ] ; 2 uses
  %i.aak = load ptr, ptr %i.aab, align 8, !tbaa !633
  %i.aal = add nsw i32 %i.aaj, 1
  store i32 %i.aal, ptr %i.aad, align 8, !tbaa !635
  %i.aam = sext i32 %i.aaj to i64
  %i.aan = getelementptr inbounds [8 x i8], ptr %i.aak, i64 %i.aam
  store ptr %i.zx, ptr %i.aan, align 8, !tbaa !336
  br label %bb.fa

bb.fa:                                            ; preds = %js_resize_array.exit.thread.i.i.i286, %bb.ey
  %i.aao = load ptr, ptr %i.f, align 8, !tbaa !232
  %i.aap = trunc i64 %i.zp to i32
  %i.aaq = icmp ugt i32 %i.aap, -10
  br i1 %i.aaq, label %bb.fb, label %.thread168

bb.fb:                                            ; preds = %bb.fa
  %i.aar = inttoptr i64 %i.zo to ptr
  %i.aas = getelementptr inbounds i8, ptr %i.aar, i64 -4 ; 2 uses
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !191 ; 2 uses
  %i.aau = add nsw i32 %i.aat, -1
  store i32 %i.aau, ptr %i.aas, align 4, !tbaa !191
  %i.aav = icmp slt i32 %i.aat, 2
  br i1 %i.aav, label %bb.fc, label %.thread168

bb.fc:                                            ; preds = %bb.fb
  call fastcc void @js_free_value_rt(ptr noundef %i.aao, i64 %i.zo, i64 %i.zp), !inline_history !1444
  br label %.thread168

BC_add_object_ref.exit.i282:                      ; preds = %js_resize_array.exit.i.i.i280, %bb.ex, %bb.ew
  %.sroa.8.0.i = phi i64 [ 3, %bb.ew ], [ %i.zu, %bb.ex ], [ %i.zu, %js_resize_array.exit.i.i.i280 ] ; 2 uses
  %.sroa.03.0.i = phi i64 [ 0, %bb.ew ], [ %i.zt, %bb.ex ], [ %i.zt, %js_resize_array.exit.i.i.i280 ] ; 2 uses
  %i.aaw = load ptr, ptr %i.f, align 8, !tbaa !232 ; 3 uses
  %i.aax = trunc i64 %i.zp to i32
  %i.aay = icmp ugt i32 %i.aax, -10
  br i1 %i.aay, label %bb.fd, label %JS_FreeValue.exit25.i

bb.fd:                                            ; preds = %BC_add_object_ref.exit.i282
  %i.aaz = inttoptr i64 %i.zo to ptr
  %i.aba = getelementptr inbounds i8, ptr %i.aaz, i64 -4 ; 2 uses
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !191 ; 2 uses
  %i.abc = add nsw i32 %i.abb, -1
  store i32 %i.abc, ptr %i.aba, align 4, !tbaa !191
  %i.abd = icmp slt i32 %i.abb, 2
  br i1 %i.abd, label %bb.fe, label %JS_FreeValue.exit25.i

bb.fe:                                            ; preds = %bb.fd
  call fastcc void @js_free_value_rt(ptr noundef %i.aaw, i64 %i.zo, i64 %i.zp), !inline_history !1444
  %.pre.i283 = load ptr, ptr %i.f, align 8, !tbaa !232
  br label %JS_FreeValue.exit25.i

JS_FreeValue.exit25.i:                            ; preds = %bb.fe, %bb.fd, %BC_add_object_ref.exit.i282
  %i.abe = phi ptr [ %i.aaw, %BC_add_object_ref.exit.i282 ], [ %i.aaw, %bb.fd ], [ %.pre.i283, %bb.fe ]
  %i.abf = trunc i64 %.sroa.8.0.i to i32
  %i.abg = icmp ugt i32 %i.abf, -10
  br i1 %i.abg, label %bb.ff, label %.thread168

bb.ff:                                            ; preds = %JS_FreeValue.exit25.i
  %i.abh = inttoptr i64 %.sroa.03.0.i to ptr
  %i.abi = getelementptr inbounds i8, ptr %i.abh, i64 -4 ; 2 uses
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !191 ; 2 uses
  %i.abk = add nsw i32 %i.abj, -1
  store i32 %i.abk, ptr %i.abi, align 4, !tbaa !191
  %i.abl = icmp slt i32 %i.abj, 2
  br i1 %i.abl, label %bb.fg, label %.thread168

bb.fg:                                            ; preds = %bb.ff
  call fastcc void @js_free_value_rt(ptr noundef %i.abe, i64 %.sroa.03.0.i, i64 %.sroa.8.0.i), !inline_history !1444
  br label %.thread168

bb.fh:                                            ; preds = %bb.f
  %.not20.i.i.i287 = icmp ult ptr %i.x, %i.n
  br i1 %.not20.i.i.i287, label %.lr.ph.i.i.i294, label %get_leb128.exit.thread.i.i288, !prof !634

bb.fi:                                            ; preds = %.lr.ph.i.i.i294
  %.not.i.i.i299 = icmp ult ptr %i.acj, %i.n
  br i1 %.not.i.i.i299, label %.lr.ph.i.i.i294.1, label %get_leb128.exit.thread.i.i288, !prof !625

.lr.ph.i.i.i294.1:                                ; preds = %bb.fi
  %i.abm = getelementptr inbounds nuw i8, ptr %i.p, i64 3 ; 3 uses
  %i.abn = load i8, ptr %i.acj, align 1, !tbaa !218
  %.fr579 = freeze i8 %i.abn                      ; 2 uses
  %i.abo = and i8 %.fr579, 127
  %i.abp = zext nneg i8 %i.abo to i32
  %i.abq = shl nuw nsw i32 %i.abp, 7
  %i.abr = or disjoint i32 %i.abq, %i.acm         ; 2 uses
  %.not18.i.i.i298.1 = icmp sgt i8 %.fr579, -1
  br i1 %.not18.i.i.i298.1, label %get_leb128.exit.i.i301, label %bb.fj

bb.fj:                                            ; preds = %.lr.ph.i.i.i294.1
  %.not.i.i.i299.1 = icmp ult ptr %i.abm, %i.n
  br i1 %.not.i.i.i299.1, label %.lr.ph.i.i.i294.2, label %get_leb128.exit.thread.i.i288, !prof !625

.lr.ph.i.i.i294.2:                                ; preds = %bb.fj
  %i.abs = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 3 uses
  %i.abt = load i8, ptr %i.abm, align 1, !tbaa !218
  %.fr582 = freeze i8 %i.abt                      ; 2 uses
  %i.abu = and i8 %.fr582, 127
  %i.abv = zext nneg i8 %i.abu to i32
  %i.abw = shl nuw nsw i32 %i.abv, 14
  %i.abx = or disjoint i32 %i.abw, %i.abr         ; 2 uses
  %.not18.i.i.i298.2 = icmp sgt i8 %.fr582, -1
  br i1 %.not18.i.i.i298.2, label %get_leb128.exit.i.i301, label %bb.fk

bb.fk:                                            ; preds = %.lr.ph.i.i.i294.2
  %.not.i.i.i299.2 = icmp ult ptr %i.abs, %i.n
  br i1 %.not.i.i.i299.2, label %.lr.ph.i.i.i294.3, label %get_leb128.exit.thread.i.i288, !prof !625

.lr.ph.i.i.i294.3:                                ; preds = %bb.fk
  %i.aby = getelementptr inbounds nuw i8, ptr %i.p, i64 5 ; 3 uses
  %i.abz = load i8, ptr %i.abs, align 1, !tbaa !218
  %.fr585 = freeze i8 %i.abz                      ; 2 uses
  %i.aca = and i8 %.fr585, 127
  %i.acb = zext nneg i8 %i.aca to i32
  %i.acc = shl nuw nsw i32 %i.acb, 21
  %i.acd = or disjoint i32 %i.acc, %i.abx         ; 2 uses
  %.not18.i.i.i298.3 = icmp sgt i8 %.fr585, -1
  br i1 %.not18.i.i.i298.3, label %get_leb128.exit.i.i301, label %bb.fl

bb.fl:                                            ; preds = %.lr.ph.i.i.i294.3
  %.not.i.i.i299.3 = icmp ult ptr %i.aby, %i.n
  br i1 %.not.i.i.i299.3, label %.lr.ph.i.i.i294.4, label %get_leb128.exit.thread.i.i288, !prof !625

.lr.ph.i.i.i294.4:                                ; preds = %bb.fl
  %i.ace = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  %i.acf = load i8, ptr %i.aby, align 1, !tbaa !218
  %.fr587 = freeze i8 %i.acf                      ; 2 uses
  %i.acg = zext i8 %.fr587 to i32
  %i.ach = shl i32 %i.acg, 28
  %i.aci = or disjoint i32 %i.ach, %i.acd
  %.not18.i.i.i298.4 = icmp sgt i8 %.fr587, -1
  br i1 %.not18.i.i.i298.4, label %get_leb128.exit.i.i301, label %get_leb128.exit.thread.i.i288

.lr.ph.i.i.i294:                                  ; preds = %bb.fh
  %i.acj = getelementptr inbounds nuw i8, ptr %i.p, i64 2 ; 3 uses
  %i.ack = load i8, ptr %i.x, align 1, !tbaa !218
  %.fr = freeze i8 %i.ack                         ; 2 uses
  %i.acl = and i8 %.fr, 127
  %i.acm = zext nneg i8 %i.acl to i32             ; 2 uses
  %.not18.i.i.i298 = icmp sgt i8 %.fr, -1
  br i1 %.not18.i.i.i298, label %get_leb128.exit.i.i301, label %bb.fi

get_leb128.exit.i.i301:                           ; preds = %.lr.ph.i.i.i294.4, %.lr.ph.i.i.i294.3, %.lr.ph.i.i.i294.2, %.lr.ph.i.i.i294.1, %.lr.ph.i.i.i294
  %.lcssa574 = phi ptr [ %i.acj, %.lr.ph.i.i.i294 ], [ %i.abm, %.lr.ph.i.i.i294.1 ], [ %i.abs, %.lr.ph.i.i.i294.2 ], [ %i.aby, %.lr.ph.i.i.i294.3 ], [ %i.ace, %.lr.ph.i.i.i294.4 ]
  %.lcssa572 = phi i32 [ %i.acm, %.lr.ph.i.i.i294 ], [ %i.abr, %.lr.ph.i.i.i294.1 ], [ %i.abx, %.lr.ph.i.i.i294.2 ], [ %i.acd, %.lr.ph.i.i.i294.3 ], [ %i.aci, %.lr.ph.i.i.i294.4 ] ; 4 uses
  %i.acn = ptrtoint ptr %.lcssa574 to i64
  %i.aco = ptrtoint ptr %i.x to i64
  %i.acp = sub i64 %i.acn, %i.aco                 ; 2 uses
  %i.acq = and i64 %i.acp, 2147483648
  %.not.i.i302 = icmp eq i64 %i.acq, 0
  br i1 %.not.i.i302, label %bb.fn, label %get_leb128.exit.thread.i.i288, !prof !626

get_leb128.exit.thread.i.i288:                    ; preds = %bb.fi, %bb.fj, %bb.fk, %bb.fl, %.lr.ph.i.i.i294.4, %get_leb128.exit.i.i301, %bb.fh
  %i.acr = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.acs = load i32, ptr %i.acr, align 8, !tbaa !629
  %.not.i8.i.i289 = icmp eq i32 %i.acs, 0
  br i1 %.not.i8.i.i289, label %bb.fm, label %bc_get_leb128.exit.i290

bb.fm:                                            ; preds = %get_leb128.exit.thread.i.i288
  %i.act = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %i.e, ptr noundef nonnull @.str.226), !inline_history !1445 ; 0 uses
  br label %bc_get_leb128.exit.i290

bc_get_leb128.exit.i290:                          ; preds = %bb.fm, %get_leb128.exit.thread.i.i288
  store i32 -1, ptr %i.acr, align 8, !tbaa !629
  br label %.thread168

bb.fn:                                            ; preds = %get_leb128.exit.i.i301
  %i.acu = and i64 %i.acp, 2147483647
  %i.acv = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.acu
  store ptr %i.acv, ptr %i.o, align 8, !tbaa !627
  %i.acw = icmp eq i32 %.lcssa572, 0
  br i1 %i.acw, label %.thread168, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.acx = add i32 %.lcssa572, -1
  %i.acy = lshr i32 %i.acx, 2
  %i.acz = add nuw nsw i32 %i.acy, 1
  %i.ada = call fastcc ptr @js_bigint_new(ptr noundef %i.e, i32 noundef %i.acz), !inline_history !1446 ; 9 uses
  %.not33.i = icmp eq ptr %i.ada, null
  br i1 %.not33.i, label %.thread168, label %.preheader67.i

.preheader67.i:                                   ; preds = %bb.fo
  %i.adb = lshr i32 %.lcssa572, 2                 ; 2 uses
  %.not.i303 = icmp eq i32 %i.adb, 0
  br i1 %.not.i303, label %._crit_edge.i308, label %.lr.ph.i304

.lr.ph.i304:                                      ; preds = %.preheader67.i
  %i.adc = load ptr, ptr %i.m, align 8, !tbaa !620
  %i.add = ptrtoint ptr %i.adc to i64             ; 5 uses
  %i.ade = getelementptr i8, ptr %i.ada, i64 4    ; 6 uses
  %wide.trip.count.i = zext nneg i32 %i.adb to i64 ; 3 uses
  %.pre.i305 = load ptr, ptr %i.o, align 8, !tbaa !627 ; 9 uses
  %.pre.i305527 = ptrtoaddr ptr %.pre.i305 to i64 ; 2 uses
  %5 = add nsw i64 %wide.trip.count.i, -1         ; 2 uses
  %i.adf = sub i64 %i.add, %.pre.i305527
  %i.adg = call i64 @llvm.smin.i64(i64 %i.adf, i64 3)
  %i.adh = add i64 %i.add, 3
  %i.adi = add i64 %i.adg, %.pre.i305527
  %i.adj = sub i64 %i.adh, %i.adi                 ; 2 uses
  %i.adk = lshr i64 %i.adj, 2
  %i.adl = call i64 @llvm.umin.i64(i64 %5, i64 %i.adk) ; 2 uses
  %i.adm = add nuw nsw i64 %i.adl, 1              ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.adl, 30
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i304
  %i.adn = lshr i64 %i.adj, 2
  %i.ado = call i64 @llvm.umin.i64(i64 %5, i64 %i.adn)
  %i.adp = shl nuw i64 %i.ado, 2                  ; 2 uses
  %i.adq = getelementptr i8, ptr %i.ada, i64 %i.adp
  %i.adr = getelementptr i8, ptr %i.adq, i64 8    ; 2 uses
  %i.ads = getelementptr i8, ptr %.pre.i305, i64 %i.adp
  %i.adt = getelementptr i8, ptr %i.ads, i64 4    ; 2 uses
  %bound0 = icmp ult ptr %i.o, %i.adr
  %bound1 = icmp ult ptr %i.ade, %i.m
  %found.conflict = and i1 %bound0, %bound1
  %bound0527 = icmp ult ptr %i.o, %i.adt
  %bound1528 = icmp ult ptr %.pre.i305, %i.m
  %found.conflict529 = and i1 %bound0527, %bound1528
  %conflict.rdx = or i1 %found.conflict, %found.conflict529
  %bound0530 = icmp ult ptr %i.ade, %i.adt
  %bound1531 = icmp ult ptr %.pre.i305, %i.adr
  %found.conflict532 = and i1 %bound0530, %bound1531
  %conflict.rdx533 = or i1 %conflict.rdx, %found.conflict532
  br i1 %conflict.rdx533, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.adu = and i64 %i.adm, 3                      ; 2 uses
  %i.adv = icmp eq i64 %i.adu, 0
  %i.adw = select i1 %i.adv, i64 4, i64 %i.adu
  %n.vec = sub nsw i64 %i.adm, %i.adw             ; 3 uses
  %i.adx = shl i64 %n.vec, 2
  %i.ady = getelementptr i8, ptr %.pre.i305, i64 %i.adx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.adz = shl i64 %index, 2                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.pre.i305, i64 %i.adz ; 2 uses
  %i.aea = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 1, !alias.scope !1457
  %wide.load535 = load <2 x i32>, ptr %i.aea, align 1, !alias.scope !1457
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %index ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  store <2 x i32> %wide.load, ptr %i.aeb, align 4, !tbaa !191, !alias.scope !1458, !noalias !1457
  store <2 x i32> %wide.load535, ptr %i.aec, align 4, !tbaa !191, !alias.scope !1458, !noalias !1457
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aed = icmp eq i64 %index.next, %n.vec
  br i1 %i.aed, label %middle.block, label %vector.body, !llvm.loop !1450

middle.block:                                     ; preds = %vector.body
  %i.aee = getelementptr i8, ptr %.pre.i305, i64 %i.adz
  %i.aef = getelementptr i8, ptr %i.aee, i64 16
  store ptr %i.aef, ptr %i.o, align 8, !tbaa !627, !alias.scope !1459, !noalias !1460
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i304, %middle.block
  %.ph = phi ptr [ %.pre.i305, %vector.memcheck ], [ %.pre.i305, %.lr.ph.i304 ], [ %i.ady, %middle.block ] ; 4 uses
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i304 ], [ %n.vec, %middle.block ] ; 4 uses
  %i.aeg = sub i64 %wide.trip.count.i, %indvars.iv.i.ph
  %i.aeh = freeze i64 %i.aeg                      ; 2 uses
  %xtraiter = and i64 %i.aeh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aei = ptrtoint ptr %.ph to i64
  %i.aej = sub i64 %i.add, %i.aei
  %i.aek = icmp slt i64 %i.aej, 4
  br i1 %i.aek, label %.loopexit, label %scalar.ph.prol.loopexit.unr-lcssa, !prof !192

scalar.ph.prol.loopexit.unr-lcssa:                ; preds = %scalar.ph.prol
  %.val.i.i306.prol = load i32, ptr %.ph, align 1
  %i.ael = getelementptr inbounds nuw i8, ptr %.ph, i64 4 ; 2 uses
  store ptr %i.ael, ptr %i.o, align 8, !tbaa !627
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %indvars.iv.i.ph
  store i32 %.val.i.i306.prol, ptr %i.aem, align 4, !tbaa !191
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol.loopexit.unr-lcssa, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.ael, %scalar.ph.prol.loopexit.unr-lcssa ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol.loopexit.unr-lcssa ]
  %i.aen = icmp eq i64 %i.aeh, 1
  br i1 %i.aen, label %._crit_edge.i308, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %bb.fq
  %i.aeo = phi ptr [ %i.afb, %bb.fq ], [ %.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.fq ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.aep = ptrtoint ptr %i.aeo to i64
  %i.aeq = sub i64 %i.add, %i.aep
  %i.aer = icmp slt i64 %i.aeq, 4
  br i1 %i.aer, label %.loopexit, label %scalar.ph.1, !prof !192

.loopexit:                                        ; preds = %scalar.ph, %scalar.ph.1, %scalar.ph.prol
  %i.aes = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aet = load i32, ptr %i.aes, align 8, !tbaa !629
  %.not.i.i38.i = icmp eq i32 %i.aet, 0
  br i1 %.not.i.i38.i, label %bb.fp, label %bc_get_u32.exit.i

bb.fp:                                            ; preds = %.loopexit
  %i.aeu = load ptr, ptr %0, align 8, !tbaa !618
  %i.aev = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %i.aeu, ptr noundef nonnull @.str.226), !inline_history !1452 ; 0 uses
  br label %bc_get_u32.exit.i

bc_get_u32.exit.i:                                ; preds = %bb.fp, %.loopexit
  store i32 -1, ptr %i.aes, align 8, !tbaa !629
  br label %.thread168

scalar.ph.1:                                      ; preds = %scalar.ph
  %.val.i.i306 = load i32, ptr %i.aeo, align 1
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aeo, i64 4 ; 3 uses
  store ptr %i.aew, ptr %i.o, align 8, !tbaa !627
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %indvars.iv.i
  store i32 %.val.i.i306, ptr %i.aex, align 4, !tbaa !191
  %i.aey = ptrtoint ptr %i.aew to i64
  %i.aez = sub i64 %i.add, %i.aey
  %i.afa = icmp slt i64 %i.aez, 4
  br i1 %i.afa, label %.loopexit, label %bb.fq, !prof !192

bb.fq:                                            ; preds = %scalar.ph.1
  %.val.i.i306.1 = load i32, ptr %i.aew, align 1
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aeo, i64 8 ; 2 uses
  store ptr %i.afb, ptr %i.o, align 8, !tbaa !627
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %indvars.iv.i
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 4
  store i32 %.val.i.i306.1, ptr %i.afd, align 4, !tbaa !191
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i307.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i307.1, label %._crit_edge.i308, label %scalar.ph, !llvm.loop !1453

._crit_edge.i308:                                 ; preds = %scalar.ph.prol.loopexit, %bb.fq, %.preheader67.i
  %i.afe = and i32 %.lcssa572, 3                  ; 4 uses
  %.not34.i = icmp eq i32 %i.afe, 0
  br i1 %.not34.i, label %thread-pre-split.i, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i308
  %i.aff = load ptr, ptr %i.m, align 8, !tbaa !620
  %i.afg = ptrtoint ptr %i.aff to i64             ; 3 uses
  %.promoted.i = load ptr, ptr %i.o, align 8, !tbaa !627 ; 5 uses
  %i.afh = ptrtoint ptr %.promoted.i to i64
  %i.afi = sub i64 %i.afg, %i.afh
  %i.afj = icmp slt i64 %i.afi, 1
  br i1 %i.afj, label %bb.fr, label %bb.ft, !prof !192

bb.fr:                                            ; preds = %bb.fw, %bb.fu, %.preheader.i
  %i.afk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.afl = load i32, ptr %i.afk, align 8, !tbaa !629
  %.not.i.i41.i = icmp eq i32 %i.afl, 0
  br i1 %.not.i.i41.i, label %bb.fs, label %bb.fy

bb.fs:                                            ; preds = %bb.fr
  %i.afm = load ptr, ptr %0, align 8, !tbaa !618
  %i.afn = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %i.afm, ptr noundef nonnull @.str.226), !inline_history !1454 ; 0 uses
  br label %bb.fy

bb.ft:                                            ; preds = %.preheader.i
  %i.afo = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 1 ; 3 uses
  store ptr %i.afo, ptr %i.o, align 8, !tbaa !627
  %i.afp = load i8, ptr %.promoted.i, align 1, !tbaa !218
  %i.afq = zext i8 %i.afp to i32                  ; 2 uses
  %exitcond80.not.i = icmp eq i32 %i.afe, 1
  br i1 %exitcond80.not.i, label %.thread.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.afr = ptrtoint ptr %i.afo to i64
  %i.afs = sub i64 %i.afg, %i.afr
  %i.aft = icmp slt i64 %i.afs, 1
  br i1 %i.aft, label %bb.fr, label %bb.fv, !prof !192

bb.fv:                                            ; preds = %bb.fu
  %i.afu = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 2 ; 3 uses
  store ptr %i.afu, ptr %i.o, align 8, !tbaa !627
  %i.afv = load i8, ptr %i.afo, align 1, !tbaa !218
  %i.afw = zext i8 %i.afv to i32
  %i.afx = shl nuw nsw i32 %i.afw, 8
  %i.afy = or disjoint i32 %i.afx, %i.afq         ; 2 uses
  %exitcond80.not.i.1 = icmp eq i32 %i.afe, 2
  br i1 %exitcond80.not.i.1, label %.thread.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.afz = ptrtoint ptr %i.afu to i64
  %i.aga = sub i64 %i.afg, %i.afz
  %i.agb = icmp slt i64 %i.aga, 1
  br i1 %i.agb, label %bb.fr, label %bb.fx, !prof !192

bb.fx:                                            ; preds = %bb.fw
  %i.agc = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 3
  store ptr %i.agc, ptr %i.o, align 8, !tbaa !627
  %i.agd = load i8, ptr %i.afu, align 1, !tbaa !218
  %i.age = zext i8 %i.agd to i32
  %i.agf = shl nuw nsw i32 %i.age, 16
  %i.agg = or disjoint i32 %i.agf, %i.afy
  br label %.thread.i

.thread.i:                                        ; preds = %bb.fx, %bb.fv, %bb.ft
  %.lcssa570 = phi i32 [ %i.afq, %bb.ft ], [ %i.afy, %bb.fv ], [ %i.agg, %bb.fx ]
  %i.agh = shl nuw nsw i32 %i.afe, 3
end_hunk_0
