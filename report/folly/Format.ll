Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Format?download=true
inline.NumInlined: 2530
inline.NumDeleted: 819
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN3fmt2v96detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
bb.ee:                                            ; preds = %bb.ed
  %i.ye = trunc i32 %i.yd to i8
  %i.yf = add i8 %i.ye, 48
  %i.yg = load ptr, ptr %i.yb, align 8, !tbaa !37
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 %indvars.iv
  store i8 %i.yf, ptr %i.yh, align 1, !tbaa !45
  %i.yi = load i64, ptr %i.c, align 8, !tbaa !371 ; 7 uses
  %.not14.i.i325 = icmp eq i64 %i.yi, 0
  br i1 %.not14.i.i325, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit338, label %.lr.ph.i.i326

.lr.ph.i.i326:                                    ; preds = %bb.ee
  %i.yj = load ptr, ptr %i.a, align 8, !tbaa !360 ; 4 uses
  %xtraiter1106 = and i64 %i.yi, 1
  %i.yk = icmp eq i64 %i.yi, 1
  br i1 %i.yk, label %.epil.preheader1105, label %.lr.ph.i.i326.new

.lr.ph.i.i326.new:                                ; preds = %.lr.ph.i.i326
  %unroll_iter1110 = and i64 %i.yi, -2
  br label %bb.ef

._crit_edge.i.i330.unr-lcssa:                     ; preds = %bb.ef
  %lcmp.mod1107.not = icmp eq i64 %xtraiter1106, 0
  br i1 %lcmp.mod1107.not, label %._crit_edge.i.i330, label %.epil.preheader1105

.epil.preheader1105:                              ; preds = %._crit_edge.i.i330.unr-lcssa, %.lr.ph.i.i326
  %.013.i.i327.epil.init = phi i64 [ 0, %.lr.ph.i.i326 ], [ %i.zi, %._crit_edge.i.i330.unr-lcssa ]
  %.01112.i.i328.epil.init = phi i64 [ 0, %.lr.ph.i.i326 ], [ %i.zh, %._crit_edge.i.i330.unr-lcssa ]
  %lcmp.mod1109 = trunc i64 %i.yi to i1
  call void @llvm.assume(i1 %lcmp.mod1109)
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %.013.i.i327.epil.init ; 2 uses
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !65
  %i.yn = zext i32 %i.ym to i64
  %i.yo = mul nuw nsw i64 %i.yn, 10
  %i.yp = add nuw nsw i64 %i.yo, %.01112.i.i328.epil.init ; 2 uses
  %i.yq = trunc i64 %i.yp to i32
  store i32 %i.yq, ptr %i.yl, align 4, !tbaa !65
  %i.yr = lshr i64 %i.yp, 32
  br label %._crit_edge.i.i330

._crit_edge.i.i330:                               ; preds = %._crit_edge.i.i330.unr-lcssa, %.epil.preheader1105
  %.lcssa1078 = phi i64 [ %i.zh, %._crit_edge.i.i330.unr-lcssa ], [ %i.yr, %.epil.preheader1105 ] ; 2 uses
  %i.ys = trunc nuw nsw i64 %.lcssa1078 to i32
  %.not.i.i331 = icmp eq i64 %.lcssa1078, 0
  br i1 %.not.i.i331, label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit338, label %bb.eg

bb.ef:                                            ; preds = %bb.ef, %.lr.ph.i.i326.new
  %.013.i.i327 = phi i64 [ 0, %.lr.ph.i.i326.new ], [ %i.zi, %bb.ef ] ; 3 uses
  %.01112.i.i328 = phi i64 [ 0, %.lr.ph.i.i326.new ], [ %i.zh, %bb.ef ]
  %niter1111 = phi i64 [ 0, %.lr.ph.i.i326.new ], [ %niter1111.next.1, %bb.ef ]
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %.013.i.i327 ; 2 uses
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !65
  %i.yv = zext i32 %i.yu to i64
  %i.yw = mul nuw nsw i64 %i.yv, 10
  %i.yx = add nuw nsw i64 %i.yw, %.01112.i.i328   ; 2 uses
  %i.yy = trunc i64 %i.yx to i32
  store i32 %i.yy, ptr %i.yt, align 4, !tbaa !65
  %i.yz = lshr i64 %i.yx, 32
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %.013.i.i327
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 4 ; 2 uses
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !65
  %i.zd = zext i32 %i.zc to i64
  %i.ze = mul nuw nsw i64 %i.zd, 10
  %i.zf = add nuw nsw i64 %i.ze, %i.yz            ; 2 uses
  %i.zg = trunc i64 %i.zf to i32
  store i32 %i.zg, ptr %i.zb, align 4, !tbaa !65
  %i.zh = lshr i64 %i.zf, 32                      ; 3 uses
  %i.zi = add nuw i64 %.013.i.i327, 2             ; 2 uses
  %niter1111.next.1 = add nuw i64 %niter1111, 2   ; 2 uses
  %niter1111.ncmp.1 = icmp eq i64 %niter1111.next.1, %unroll_iter1110
  br i1 %niter1111.ncmp.1, label %._crit_edge.i.i330.unr-lcssa, label %bb.ef, !llvm.loop !379

bb.eg:                                            ; preds = %._crit_edge.i.i330
  %i.zj = add i64 %i.yi, 1                        ; 3 uses
  %i.zk = load i64, ptr %i.b, align 8, !tbaa !362
  %i.zl = icmp ugt i64 %i.zj, %i.zk
  br i1 %i.zl, label %bb.eh, label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i332

bb.eh:                                            ; preds = %bb.eg
  %i.zm = load ptr, ptr %5, align 8, !tbaa !41
  %i.zn = load ptr, ptr %i.zm, align 8
  invoke void %i.zn(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.zj)
          to label %.noexc337 unwind label %bb.ei, !inline_history !380

.noexc337:                                        ; preds = %bb.eh
  %.pre.i.i.i334 = load i64, ptr %i.c, align 8, !tbaa !371 ; 2 uses
  %.pre2.i.i.i335 = add i64 %.pre.i.i.i334, 1
  %.pre.i336 = load ptr, ptr %i.a, align 8, !tbaa !360
  br label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i332

_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i332: ; preds = %.noexc337, %bb.eg
  %i.zo = phi ptr [ %i.yj, %bb.eg ], [ %.pre.i336, %.noexc337 ]
  %.pre-phi.i.i.i333 = phi i64 [ %i.zj, %bb.eg ], [ %.pre2.i.i.i335, %.noexc337 ]
  %i.zp = phi i64 [ %i.yi, %bb.eg ], [ %.pre.i.i.i334, %.noexc337 ]
  store i64 %.pre-phi.i.i.i333, ptr %i.c, align 8, !tbaa !371
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.zo, i64 %i.zp
  store i32 %i.ys, ptr %i.zq, align 4, !tbaa !65
  br label %_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit338

_ZN3fmt2v96detail6bigintmLIiEERS2_T_.exit338:     ; preds = %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit.i.i332, %._crit_edge.i.i330, %bb.ee
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ed, !llvm.loop !385

bb.ei:                                            ; preds = %bb.eh, %bb.ed
  %i.zr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ej:                                            ; preds = %._crit_edge
  %i.zs = load i64, ptr %i.c, align 8, !tbaa !371
  %i.zt = trunc i64 %i.zs to i32
  %i.zu = load i32, ptr %i.e, align 8, !tbaa !363 ; 4 uses
  %i.zv = add nsw i32 %i.zu, %i.zt                ; 3 uses
  %i.zw = load i64, ptr %i.h, align 8, !tbaa !371
  %i.zx = trunc i64 %i.zw to i32
  %i.zy = load i32, ptr %i.j, align 8, !tbaa !363 ; 4 uses
  %i.zz = add nsw i32 %i.zy, %i.zx                ; 4 uses
  %i.aaa = add nsw i32 %i.zv, 1
  %i.aab = icmp slt i32 %i.aaa, %i.zz
  br i1 %i.aab, label %.thread429, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.aac = icmp sgt i32 %i.zv, %i.zz
  br i1 %i.aac, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit355, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.aad = call noundef i32 @llvm.smin.i32(i32 %i.zu, i32 %i.zy) ; 2 uses
  %.not.not.not55.i339 = icmp sgt i32 %i.zz, %i.aad
  br i1 %.not.not.not55.i339, label %.lr.ph.i341, label %bb.er

.lr.ph.i341:                                      ; preds = %bb.el
  %i.aae = load ptr, ptr %i.a, align 8
  %i.aaf = load ptr, ptr %i.f, align 8
  br label %bb.em

bb.em:                                            ; preds = %bb.eq, %.lr.ph.i341
  %.0.in57.i342 = phi i32 [ %i.zz, %.lr.ph.i341 ], [ %.058.i344, %bb.eq ] ; 4 uses
  %.03256.i343 = phi i64 [ 0, %.lr.ph.i341 ], [ %i.aay, %bb.eq ] ; 2 uses
  %.058.i344 = add nsw i32 %.0.in57.i342, -1      ; 4 uses
  %.not.i.i345 = icmp sgt i32 %.0.in57.i342, %i.zu
  %i.aag = icmp sle i32 %.0.in57.i342, %i.zv
  %or.cond.i346 = and i1 %.not.i.i345, %i.aag
  br i1 %or.cond.i346, label %bb.en, label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i350

bb.en:                                            ; preds = %bb.em
  %i.aah = sub nsw i32 %.058.i344, %i.zu
  %i.aai = zext i32 %i.aah to i64
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.aae, i64 %i.aai
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !65
  %i.aal = zext i32 %i.aak to i64
  %i.aam = shl nuw nsw i64 %i.aal, 1
  br label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i350

_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i350: ; preds = %bb.em, %bb.en
  %i.aan = phi i64 [ %i.aam, %bb.en ], [ 0, %bb.em ] ; 3 uses
  %.not.i45.i351 = icmp sgt i32 %.0.in57.i342, %i.zy
  br i1 %.not.i45.i351, label %bb.eo, label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i352

bb.eo:                                            ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i350
  %i.aao = sub nsw i32 %.058.i344, %i.zy
  %i.aap = zext i32 %i.aao to i64
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %i.aap
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !65
  %i.aas = zext i32 %i.aar to i64
  %i.aat = or disjoint i64 %.03256.i343, %i.aas
  br label %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i352

_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i352: ; preds = %bb.eo, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i350
  %i.aau = phi i64 [ %i.aat, %bb.eo ], [ %.03256.i343, %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i350 ] ; 3 uses
  %i.aav = icmp ugt i64 %i.aan, %i.aau
  br i1 %i.aav, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit355, label %bb.ep

bb.ep:                                            ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i352
  %i.aaw = sub nuw nsw i64 %i.aau, %i.aan         ; 2 uses
  %i.aax = icmp ugt i64 %i.aaw, 1
  br i1 %i.aax, label %.thread429, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.aay = shl nuw nsw i64 %i.aaw, 32
  %.not.not.not.i353 = icmp sgt i32 %.058.i344, %i.aad
  br i1 %.not.not.not.i353, label %bb.em, label %.thread.loopexit.i354, !llvm.loop !378

.thread.loopexit.i354:                            ; preds = %bb.eq
  %i.aaz = icmp ne i64 %i.aau, %i.aan
  br label %bb.er

bb.er:                                            ; preds = %bb.el, %.thread.loopexit.i354
  %.4.i340.ph = phi i1 [ false, %bb.el ], [ %i.aaz, %.thread.loopexit.i354 ]
  %i.aba = and i32 %i.yc, 1
  %.not99 = icmp eq i32 %i.aba, 0
  %or.cond112 = or i1 %.not99, %.4.i340.ph
  br i1 %or.cond112, label %.thread429, label %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit355

_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit355: ; preds = %_ZZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i352, %bb.ek, %bb.er
  %i.abb = icmp eq i32 %i.yc, 9
  br i1 %i.abb, label %bb.es, label %bb.ew

bb.es:                                            ; preds = %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit355
  %i.abc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !37
  %9 = zext nneg i32 %i.ul to i64
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 %9
  store i8 58, ptr %i.abe, align 1, !tbaa !45
  br i1 %.not676, label %.critedge, label %.lr.ph475

.lr.ph475:                                        ; preds = %bb.es, %bb.eu
  %indvars.iv513 = phi i64 [ %indvars.iv.next514, %bb.eu ], [ %i.xt, %bb.es ] ; 3 uses
  %indvars.iv.next514 = add nsw i64 %indvars.iv513, -1 ; 2 uses
  %i.abf = load ptr, ptr %i.abc, align 8, !tbaa !37
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 %indvars.iv.next514 ; 2 uses
  %i.abh = load i8, ptr %i.abg, align 1, !tbaa !45
  %i.abi = icmp eq i8 %i.abh, 58
  br i1 %i.abi, label %bb.eu, label %.critedge

.critedge:                                        ; preds = %.lr.ph475, %bb.eu, %bb.es
  %i.abj = load ptr, ptr %i.abc, align 8, !tbaa !37 ; 2 uses
  %i.abk = load i8, ptr %i.abj, align 1, !tbaa !45
  %i.abl = icmp eq i8 %i.abk, 58
  br i1 %i.abl, label %bb.ev, label %.loopexit

bb.et:                                            ; preds = %._crit_edge
  %i.abm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.eu:                                            ; preds = %.lr.ph475
  store i8 48, ptr %i.abg, align 1, !tbaa !45
  %i.abn = load ptr, ptr %i.abc, align 8, !tbaa !37
  %i.abo = getelementptr i8, ptr %i.abn, i64 %indvars.iv513
  %i.abp = getelementptr i8, ptr %i.abo, i64 -2   ; 2 uses
  %i.abq = load i8, ptr %i.abp, align 1, !tbaa !45
  %i.abr = add i8 %i.abq, 1
  store i8 %i.abr, ptr %i.abp, align 1, !tbaa !45
  %i.abs = icmp samesign ugt i64 %indvars.iv513, 2
  br i1 %i.abs, label %.lr.ph475, label %.critedge, !llvm.loop !386

bb.ev:                                            ; preds = %.critedge
  store i8 49, ptr %i.abj, align 1, !tbaa !45
  %i.abt = load i32, ptr %4, align 4, !tbaa !65
  %i.abu = add nsw i32 %i.abt, 1
  store i32 %i.abu, ptr %4, align 4, !tbaa !65
  br label %.loopexit

bb.ew:                                            ; preds = %_ZN3fmt2v96detail11add_compareERKNS1_6bigintES4_S4_.exit355
  %i.abv = add nsw i32 %i.yc, 1
  br label %.thread429

.thread429:                                       ; preds = %bb.ep, %bb.ej, %bb.ew, %bb.er
  %.073 = phi i32 [ %i.abv, %bb.ew ], [ %i.yc, %bb.er ], [ %i.yc, %bb.ej ], [ %i.yc, %bb.ep ]
  %i.abw = trunc i32 %.073 to i8
  %i.abx = add i8 %i.abw, 48
  %i.aby = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !37
  %10 = zext nneg i32 %i.ul to i64
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 %10
  store i8 %i.abx, ptr %i.aca, align 1, !tbaa !45
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.thread429, %bb.ev, %.critedge, %bb.dz
  %i.acb = load ptr, ptr %i.p, align 8, !tbaa !360 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.acb, %i.s
  br i1 %.not.i.i.i, label %_ZN3fmt2v96detail6bigintD2Ev.exit, label %bb.ex

bb.ex:                                            ; preds = %.loopexit
  %i.acc = load i64, ptr %i.q, align 8, !tbaa !362
  %i.acd = shl i64 %i.acc, 2
  call void @_ZdlPvm(ptr noundef %i.acb, i64 noundef %i.acd) #35
  br label %_ZN3fmt2v96detail6bigintD2Ev.exit

_ZN3fmt2v96detail6bigintD2Ev.exit:                ; preds = %.loopexit, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.ace = load ptr, ptr %i.k, align 8, !tbaa !360 ; 2 uses
  %.not.i.i.i356 = icmp eq ptr %i.ace, %i.n
  br i1 %.not.i.i.i356, label %_ZN3fmt2v96detail6bigintD2Ev.exit357, label %bb.ey

bb.ey:                                            ; preds = %_ZN3fmt2v96detail6bigintD2Ev.exit
  %i.acf = load i64, ptr %i.l, align 8, !tbaa !362
  %i.acg = shl i64 %i.acf, 2
  call void @_ZdlPvm(ptr noundef %i.ace, i64 noundef %i.acg) #35
  br label %_ZN3fmt2v96detail6bigintD2Ev.exit357

_ZN3fmt2v96detail6bigintD2Ev.exit357:             ; preds = %_ZN3fmt2v96detail6bigintD2Ev.exit, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.ach = load ptr, ptr %i.f, align 8, !tbaa !360 ; 2 uses
  %.not.i.i.i358 = icmp eq ptr %i.ach, %i.i
  br i1 %.not.i.i.i358, label %_ZN3fmt2v96detail6bigintD2Ev.exit359, label %bb.ez

bb.ez:                                            ; preds = %_ZN3fmt2v96detail6bigintD2Ev.exit357
  %i.aci = load i64, ptr %i.g, align 8, !tbaa !362
  %i.acj = shl i64 %i.aci, 2
  call void @_ZdlPvm(ptr noundef %i.ach, i64 noundef %i.acj) #35
  br label %_ZN3fmt2v96detail6bigintD2Ev.exit359

_ZN3fmt2v96detail6bigintD2Ev.exit359:             ; preds = %_ZN3fmt2v96detail6bigintD2Ev.exit357, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.ack = load ptr, ptr %i.a, align 8, !tbaa !360 ; 2 uses
  %.not.i.i.i360 = icmp eq ptr %i.ack, %i.d
  br i1 %.not.i.i.i360, label %_ZN3fmt2v96detail6bigintD2Ev.exit361, label %bb.fa

bb.fa:                                            ; preds = %_ZN3fmt2v96detail6bigintD2Ev.exit359
  %i.acl = load i64, ptr %i.b, align 8, !tbaa !362
  %i.acm = shl i64 %i.acl, 2
  call void @_ZdlPvm(ptr noundef %i.ack, i64 noundef %i.acm) #35
  br label %_ZN3fmt2v96detail6bigintD2Ev.exit361

_ZN3fmt2v96detail6bigintD2Ev.exit361:             ; preds = %_ZN3fmt2v96detail6bigintD2Ev.exit359, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret void

.body:                                            ; preds = %.loopexit701, %.loopexit.split-lp702, %.loopexit434, %.loopexit.split-lp, %bb.bv, %bb.bz, %bb.ea, %bb.ei, %bb.cr, %bb.et
  %.pn101.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.kz, %bb.bv ], [ %i.xs, %bb.ea ], [ %i.abm, %bb.et ], [ %i.zr, %bb.ei ], [ %i.oq, %bb.cr ], [ %i.lg, %bb.bz ], [ %lpad.loopexit, %.loopexit434 ], [ %lpad.loopexit703, %.loopexit701 ], [ %lpad.loopexit.split-lp704, %.loopexit.split-lp702 ]
  %i.acn = load ptr, ptr %i.p, align 8, !tbaa !360 ; 2 uses
  %.not.i.i.i362 = icmp eq ptr %i.acn, %i.s
  br i1 %.not.i.i.i362, label %_ZN3fmt2v96detail6bigintD2Ev.exit363, label %bb.fb

bb.fb:                                            ; preds = %.body
  %i.aco = load i64, ptr %i.q, align 8, !tbaa !362
  %i.acp = shl i64 %i.aco, 2
  call void @_ZdlPvm(ptr noundef %i.acn, i64 noundef %i.acp) #35
  br label %_ZN3fmt2v96detail6bigintD2Ev.exit363

_ZN3fmt2v96detail6bigintD2Ev.exit363:             ; preds = %bb.fb, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.acq = load ptr, ptr %i.k, align 8, !tbaa !360 ; 2 uses
  %.not.i.i.i364 = icmp eq ptr %i.acq, %i.n
  br i1 %.not.i.i.i364, label %_ZN3fmt2v96detail6bigintD2Ev.exit365, label %bb.fc

bb.fc:                                            ; preds = %_ZN3fmt2v96detail6bigintD2Ev.exit363
  %i.acr = load i64, ptr %i.l, align 8, !tbaa !362
  %i.acs = shl i64 %i.acr, 2
  call void @_ZdlPvm(ptr noundef %i.acq, i64 noundef %i.acs) #35
  br label %_ZN3fmt2v96detail6bigintD2Ev.exit365

_ZN3fmt2v96detail6bigintD2Ev.exit365:             ; preds = %bb.fc, %_ZN3fmt2v96detail6bigintD2Ev.exit363
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.act = load ptr, ptr %i.f, align 8, !tbaa !360 ; 2 uses
  %.not.i.i.i366 = icmp eq ptr %i.act, %i.i
  br i1 %.not.i.i.i366, label %_ZN3fmt2v96detail6bigintD2Ev.exit367, label %bb.fd

bb.fd:                                            ; preds = %_ZN3fmt2v96detail6bigintD2Ev.exit365
  %i.acu = load i64, ptr %i.g, align 8, !tbaa !362
  %i.acv = shl i64 %i.acu, 2
  call void @_ZdlPvm(ptr noundef %i.act, i64 noundef %i.acv) #35
  br label %_ZN3fmt2v96detail6bigintD2Ev.exit367

_ZN3fmt2v96detail6bigintD2Ev.exit367:             ; preds = %bb.fd, %_ZN3fmt2v96detail6bigintD2Ev.exit365
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.acw = load ptr, ptr %i.a, align 8, !tbaa !360 ; 2 uses
  %.not.i.i.i368 = icmp eq ptr %i.acw, %i.d
  br i1 %.not.i.i.i368, label %_ZN3fmt2v96detail6bigintD2Ev.exit369, label %bb.fe

bb.fe:                                            ; preds = %_ZN3fmt2v96detail6bigintD2Ev.exit367
  %i.acx = load i64, ptr %i.b, align 8, !tbaa !362
  %i.acy = shl i64 %i.acx, 2
  call void @_ZdlPvm(ptr noundef %i.acw, i64 noundef %i.acy) #35
  br label %_ZN3fmt2v96detail6bigintD2Ev.exit369

_ZN3fmt2v96detail6bigintD2Ev.exit369:             ; preds = %_ZN3fmt2v96detail6bigintD2Ev.exit367, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  resume { ptr, i32 } %.pn101.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(172) ptr @_ZN3fmt2v96detail6bigintlSEi(ptr noundef nonnull align 8 dereferenceable(172) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = sdiv i32 %1, 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !363
  %i.d = add nsw i32 %i.c, %i.a
  store i32 %i.d, ptr %i.b, align 8, !tbaa !363
  %i.e = srem i32 %1, 32                          ; 4 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !371  ; 7 uses
  %.not19 = icmp eq i64 %i.h, 0
  br i1 %.not19, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !360  ; 2 uses
  %i.k = sub nsw i32 32, %i.e                     ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.h, -8                       ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert24 = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat25 = shufflevector <4 x i32> %broadcast.splatinsert24, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.o, %vector.body ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.l, align 4, !tbaa !65 ; 2 uses
  %wide.load26 = load <4 x i32>, ptr %i.m, align 4, !tbaa !65 ; 2 uses
  %i.n = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.o = lshr <4 x i32> %wide.load26, %broadcast.splat ; 3 uses
  %i.p = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.n, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.q = shufflevector <4 x i32> %i.n, <4 x i32> %i.o, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.r = shl <4 x i32> %wide.load, %broadcast.splat25
  %i.s = shl <4 x i32> %wide.load26, %broadcast.splat25
  %i.t = add <4 x i32> %i.r, %i.p
  %i.u = add <4 x i32> %i.s, %i.q
  store <4 x i32> %i.t, ptr %i.l, align 4, !tbaa !65
  store <4 x i32> %i.u, ptr %i.m, align 4, !tbaa !65
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !387

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.o, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.01418.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.017.ph = phi i32 [ 0, %.lr.ph ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.y, %scalar.ph ] ; 2 uses
  %.not = icmp eq i32 %.lcssa, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.c

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01418 = phi i64 [ %i.ab, %scalar.ph ], [ %.01418.ph, %scalar.ph.preheader ] ; 2 uses
  %.017 = phi i32 [ %i.y, %scalar.ph ], [ %.017.ph, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.01418 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !65   ; 2 uses
  %i.y = lshr i32 %i.x, %i.k                      ; 2 uses
  %i.z = shl i32 %i.x, %i.e
  %i.aa = add i32 %i.z, %.017
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !65
  %i.ab = add nuw i64 %.01418, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !390

bb.c:                                             ; preds = %._crit_edge
  %i.ac = add i64 %i.h, 1                         ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !362
  %i.af = icmp ugt i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.d, label %_ZN3fmt2v96detail6bufferIjE9push_backERKj.exit

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %0, align 8, !tbaa !41
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ac), !call_target !391, !inline_history !448
end_hunk_0
begin_hunk_1_@_ZN3fmt2v96detail6bigint13divmod_assignERKS2_:bb.a
  %.126.i = phi i64 [ 1, %.lr.ph27.i ], [ %i.eo, %bb.i ]
  %i.el = zext i32 %i.ek to i64
  %i.em = sub nsw i64 %i.el, %.126.i              ; 3 uses
  %i.en = trunc i64 %i.em to i32                  ; 2 uses
  %i.eo = lshr i64 %i.em, 63
  %.not13.i = icmp sgt i64 %i.em, -1
  br i1 %.not13.i, label %._crit_edge.i15, label %bb.i, !llvm.loop !459

._crit_edge.i15:                                  ; preds = %bb.i
  store i32 %i.en, ptr %i.dj, align 4, !tbaa !65
  br label %.preheader.thread.i

.preheader.thread.i:                              ; preds = %._crit_edge.i15, %.preheader.i, %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26
  %i.ep = load ptr, ptr %i.cl, align 8
  %smin.i.i = tail call i32 @llvm.smin.i32(i32 %i.cq, i32 1) ; 2 uses
  %i.eq = trunc i64 %i.cp to i32                  ; 2 uses
  %i.er = icmp sgt i32 %i.eq, 1
  br i1 %i.er, label %.lr.ph102, label %.critedge.i.i

.lr.ph102:                                        ; preds = %.preheader.thread.i
  %i.es = and i64 %i.cp, 2147483647
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.et = trunc nuw i64 %i.ew to i32              ; 2 uses
  %i.eu = icmp sgt i32 %i.et, 1
  br i1 %i.eu, label %bb.k, label %.critedge.i.i, !llvm.loop !460

bb.k:                                             ; preds = %.lr.ph102, %bb.j
  %i.ev = phi i32 [ %i.eq, %.lr.ph102 ], [ %i.et, %bb.j ]
  %indvars.iv.i14.i101 = phi i64 [ %i.es, %.lr.ph102 ], [ %i.ew, %bb.j ]
  %i.ew = add nsw i64 %indvars.iv.i14.i101, -1    ; 3 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !65
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.j, label %..critedge.i.i_crit_edge, !llvm.loop !460

..critedge.i.i_crit_edge:                         ; preds = %bb.k
  br label %.critedge.i.i, !llvm.loop !460

.critedge.i.i:                                    ; preds = %bb.j, %..critedge.i.i_crit_edge, %.preheader.thread.i
  %.0.in.lcssa.i.i = phi i32 [ %smin.i.i, %.preheader.thread.i ], [ %i.ev, %..critedge.i.i_crit_edge ], [ %smin.i.i, %bb.j ]
  %i.fa = zext i32 %.0.in.lcssa.i.i to i64        ; 3 uses
  %i.fb = load i64, ptr %i.cm, align 8, !tbaa !362 ; 2 uses
  %i.fc = icmp ult i64 %i.fb, %i.fa
  br i1 %i.fc, label %bb.l, label %_ZN3fmt2v96detail6bigint16subtract_alignedERKS2_.exit

bb.l:                                             ; preds = %.critedge.i.i
  %i.fd = load ptr, ptr %0, align 8, !tbaa !41
  %i.fe = load ptr, ptr %i.fd, align 8
  tail call void %i.fe(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.fa), !call_target !391, !inline_history !461
  %.pre.i.i.i.i = load i64, ptr %i.cm, align 8, !tbaa !362
  br label %_ZN3fmt2v96detail6bigint16subtract_alignedERKS2_.exit

_ZN3fmt2v96detail6bigint16subtract_alignedERKS2_.exit: ; preds = %.critedge.i.i, %bb.l
  %i.ff = phi i64 [ %i.fb, %.critedge.i.i ], [ %.pre.i.i.i.i, %bb.l ]
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.fa, i64 %i.ff) ; 5 uses
  store i64 %..i.i.i.i, ptr %i.a, align 8, !tbaa !371
  %i.fg = add nuw nsw i32 %.0, 1                  ; 4 uses
  %i.fh = trunc nuw i64 %..i.i.i.i to i32         ; 3 uses
  %i.fi = load i32, ptr %i.d, align 8, !tbaa !363 ; 2 uses
  %i.fj = add nsw i32 %i.fi, %i.fh                ; 2 uses
  %i.fk = load i64, ptr %i.g, align 8, !tbaa !371 ; 2 uses
  %i.fl = trunc i64 %i.fk to i32                  ; 4 uses
  %i.fm = load i32, ptr %i.j, align 8, !tbaa !363
  %i.fn = add nsw i32 %i.fm, %i.fl                ; 2 uses
  %.not.i16 = icmp eq i32 %i.fj, %i.fn
  br i1 %.not.i16, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN3fmt2v96detail6bigint16subtract_alignedERKS2_.exit
  %i.fo = icmp sgt i32 %i.fj, %i.fn
  br i1 %i.fo, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit

bb.n:                                             ; preds = %_ZN3fmt2v96detail6bigint16subtract_alignedERKS2_.exit
  %i.fp = sub nsw i32 %i.fh, %i.fl
  %spec.store.select.i18 = tail call i32 @llvm.smax.i32(i32 %i.fp, i32 0) ; 3 uses
  %i.fq = load ptr, ptr %i.cl, align 8
  %i.fr = load ptr, ptr %i.ac, align 8
  %smin62 = tail call i32 @llvm.smin.i32(i32 %spec.store.select.i18, i32 %i.fh)
  %i.fs = trunc nuw i64 %..i.i.i.i to i32
  %.not35.not.i21106 = icmp slt i32 %spec.store.select.i18, %i.fs
  br i1 %.not35.not.i21106, label %.lr.ph110, label %._crit_edge111

bb.o:                                             ; preds = %.lr.ph110
  %i.ft = trunc nuw i64 %i.fu to i32
  %.not35.not.i21 = icmp slt i32 %spec.store.select.i18, %i.ft
  br i1 %.not35.not.i21, label %.lr.ph110, label %._crit_edge111, !llvm.loop !381

.lr.ph110:                                        ; preds = %bb.n, %bb.o
  %.0.in.i20108 = phi i32 [ %.0.i23, %bb.o ], [ %i.fl, %bb.n ]
  %indvars.iv.i19107 = phi i64 [ %i.fu, %bb.o ], [ %..i.i.i.i, %bb.n ]
  %i.fu = add nsw i64 %indvars.iv.i19107, -1      ; 3 uses
  %.0.i23 = add nsw i32 %.0.in.i20108, -1         ; 3 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !65 ; 2 uses
  %i.fx = zext i32 %.0.i23 to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !65 ; 2 uses
  %.not37.i24 = icmp eq i32 %i.fw, %i.fz
  br i1 %.not37.i24, label %bb.o, label %.loopexit.i25, !llvm.loop !381

._crit_edge111:                                   ; preds = %bb.o, %bb.n
  %.0.in.i20.lcssa = phi i32 [ %i.fl, %bb.n ], [ %.0.i23, %bb.o ]
  %or.cond.not48 = icmp sgt i32 %.0.in.i20.lcssa, %smin62
  br i1 %or.cond.not48, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge

.loopexit.i25:                                    ; preds = %.lr.ph110
  %i.ga = icmp ugt i32 %i.fw, %i.fz
  br i1 %i.ga, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge, label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit

_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26.backedge: ; preds = %.loopexit.i25, %bb.m, %._crit_edge111
  br label %_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit26, !llvm.loop !462

_ZN3fmt2v96detail7compareERKNS1_6bigintES4_.exit: ; preds = %._crit_edge111, %.loopexit.i25, %bb.m, %._crit_edge, %bb.b, %.loopexit.i
  %.010 = phi i32 [ 0, %bb.b ], [ 0, %.loopexit.i ], [ 0, %._crit_edge ], [ %i.fg, %bb.m ], [ %i.fg, %.loopexit.i25 ], [ %i.fg, %._crit_edge111 ]
  ret i32 %.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE4growEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !362  ; 3 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.f, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.g = tail call i64 @llvm.umax.i64(i64 %1, i64 4611686018427387903)
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %1, %bb.a ]    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !360  ; 4 uses
  %i.j = icmp ugt i64 %.0, 2305843009213693951
  br i1 %i.j, label %bb.d, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit, !prof !227

bb.d:                                             ; preds = %.thread, %bb.c
  %.027 = phi i64 [ %i.g, %.thread ], [ %.0, %bb.c ]
  %i.k = icmp ugt i64 %.027, 4611686018427387903
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit:     ; preds = %bb.c
  %i.l = shl nuw nsw i64 %.0, 2
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #37 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !371  ; 3 uses
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit
  %.idx = shl nuw nsw i64 %i.o, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.m, ptr align 4 %i.i, i64 %.idx, i1 false)
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit
  %i.q = icmp eq i64 %i.o, 1
  br i1 %i.q, label %bb.i, label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %bb.h
  %i.r = load i32, ptr %i.i, align 4, !tbaa !65
  store i32 %i.r, ptr %i.m, align 4, !tbaa !65
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit

_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit:  ; preds = %bb.g, %bb.h, %bb.i
  store ptr %i.m, ptr %i.h, align 8, !tbaa !360
  store i64 %.0, ptr %i.a, align 8, !tbaa !362
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.i, %i.s
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit
  %i.t = shl i64 %i.b, 2
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.t) #35
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v96detail6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(172) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v9::basic_memory_buffer.45", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !371  ; 10 uses
  %i.c = trunc i64 %i.b to i32                    ; 9 uses
  %i.d = shl i32 %i.c, 1                          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN3fmt2v919basic_memory_bufferIjLm32ESaIjEEE, i64 16), ptr %1, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !360  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !362  ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = icmp eq ptr %i.h, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  store ptr %i.m, ptr %i.e, align 8, !tbaa !360
  store i64 %i.j, ptr %i.f, align 8, !tbaa !362
  %.not6.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not6.i.i.i, label %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %.idx.i.i = shl i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.k, i64 %.idx.i.i, i1 false), !tbaa !65
  br label %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i

bb.c:                                             ; preds = %bb.a
  store ptr %i.h, ptr %i.e, align 8, !tbaa !360
  store i64 %i.j, ptr %i.f, align 8, !tbaa !362
  store ptr %i.k, ptr %i.g, align 8, !tbaa !360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i

_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i.preheader, %bb.c, %bb.b
  %i.n = phi ptr [ %i.m, %.lr.ph.i.i.i.preheader ], [ %i.h, %bb.c ], [ %i.m, %bb.b ] ; 4 uses
  %i.o = phi i64 [ %i.j, %.lr.ph.i.i.i.preheader ], [ 0, %bb.c ], [ %i.j, %bb.b ]
  %i.p = icmp ugt i64 %i.b, %i.j
  br i1 %i.p, label %bb.d, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit

bb.d:                                             ; preds = %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i
  %i.q = lshr i64 %i.j, 1
  %i.r = add i64 %i.q, %i.j                       ; 3 uses
  %i.s = icmp ugt i64 %i.b, %i.r
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %i.r, 4611686018427387903
  br i1 %i.t, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.u = call i64 @llvm.umax.i64(i64 %i.b, i64 4611686018427387903)
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i64 [ %i.r, %bb.e ], [ %i.b, %bb.d ] ; 5 uses
  %i.v = icmp ugt i64 %.0.i, 2305843009213693951
  br i1 %i.v, label %bb.g, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i, !prof !227

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.027.i = phi i64 [ %i.u, %.thread.i ], [ %.0.i, %bb.f ]
  %i.w = icmp ugt i64 %.027.i, 4611686018427387903
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc110 unwind label %bb.n

.noexc110:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc111 unwind label %bb.n

.noexc111:                                        ; preds = %bb.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i:   ; preds = %bb.f
  %i.x = shl nuw nsw i64 %.0.i, 2
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #37
          to label %.noexc112 unwind label %bb.n  ; 3 uses

.noexc112:                                        ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !371 ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, 1
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !21

bb.j:                                             ; preds = %.noexc112
  %.idx.i = shl nuw nsw i64 %i.aa, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.y, ptr align 4 %i.n, i64 %.idx.i, i1 false)
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i

bb.k:                                             ; preds = %.noexc112
  %i.ac = icmp eq i64 %i.aa, 1
  br i1 %i.ac, label %bb.l, label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !65
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !65
  br label %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i

_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  store ptr %i.y, ptr %i.e, align 8, !tbaa !360
  store i64 %.0.i, ptr %i.f, align 8, !tbaa !362
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i = icmp eq ptr %i.n, %i.ae
  br i1 %.not.i, label %.noexc.i, label %bb.m

bb.m:                                             ; preds = %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i
  %i.af = shl i64 %i.j, 2
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.af) #35
  %.pre.i.i.i.i.pre = load i64, ptr %i.f, align 8, !tbaa !362
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.m, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i
  %.pre.i.i.i.i = phi i64 [ %.pre.i.i.i.i.pre, %bb.m ], [ %.0.i, %_ZSt18uninitialized_copyIPjS0_ET0_T_S2_S1_.exit.i ]
  %.pre = load i64, ptr %i.i, align 8, !tbaa !362
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit

bb.n:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i, %bb.i, %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #36
  unreachable

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit: ; preds = %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i, %.noexc.i
  %i.ai = phi i64 [ %i.o, %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i ], [ %.pre, %.noexc.i ] ; 2 uses
  %i.aj = phi i64 [ %i.j, %_ZN3fmt2v96detail8copy_strIjPjS3_EET1_T0_S5_S4_.exit.i.i ], [ %.pre.i.i.i.i, %.noexc.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %..i.i.i.i = call i64 @llvm.umin.i64(i64 %i.b, i64 %i.aj)
  store i64 %..i.i.i.i, ptr %i.ak, align 8, !tbaa !371
  %i.al = zext i32 %i.d to i64                    ; 3 uses
  %i.am = icmp ult i64 %i.ai, %i.al
  br i1 %i.am, label %bb.o, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit

bb.o:                                             ; preds = %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit
  %i.an = load ptr, ptr %0, align 8, !tbaa !41
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef %i.al)
          to label %.noexc unwind label %bb.p, !inline_history !463

.noexc:                                           ; preds = %bb.o
  %.pre.i.i45 = load i64, ptr %i.i, align 8, !tbaa !362
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit: ; preds = %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit, %.noexc
  %i.ap = phi i64 [ %i.ai, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEEC2EOS3_.exit ], [ %.pre.i.i45, %.noexc ] ; 3 uses
  %..i.i = call i64 @llvm.umin.i64(i64 %i.al, i64 %i.ap) ; 4 uses
  store i64 %..i.i, ptr %i.a, align 8, !tbaa !371
  %i.aq = icmp sgt i32 %i.c, 0
  %.pre93.pre94 = load ptr, ptr %i.g, align 8     ; 2 uses
  br i1 %i.aq, label %.preheader49.lr.ph, label %.preheader

.preheader49.lr.ph:                               ; preds = %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !360 ; 6 uses
  %wide.trip.count79 = and i64 %i.b, 2147483647
  br label %.preheader49

.preheader49:                                     ; preds = %.preheader49.lr.ph, %bb.r
  %indvars.iv74 = phi i64 [ 1, %.preheader49.lr.ph ], [ %indvars.iv.next75, %bb.r ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader49.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 5 uses
  %.03753 = phi i128 [ 0, %.preheader49.lr.ph ], [ %i.ce, %bb.r ] ; 2 uses
  %xtraiter = and i64 %indvars.iv74, 1
  %i.as = icmp eq i64 %indvars.iv, 0
  br i1 %i.as, label %.epil.preheader, label %.preheader49.new

.preheader49.new:                                 ; preds = %.preheader49
  %unroll_iter = and i64 %indvars.iv74, 9223372036854775806
  br label %bb.q

.preheader.loopexit:                              ; preds = %bb.r
  %.pre93.pre = load ptr, ptr %i.g, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit
  %.pre93 = phi ptr [ %.pre93.pre94, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit ], [ %.pre93.pre, %.preheader.loopexit ] ; 2 uses
  %.037.lcssa = phi i128 [ 0, %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit ], [ %i.ce, %.preheader.loopexit ]
  %i.at = icmp sgt i32 %i.d, %i.c
  br i1 %i.at, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %.preheader
  %i.au = load ptr, ptr %i.e, align 8             ; 6 uses
  %sext = shl i64 %i.b, 32
  %i.av = ashr exact i64 %sext, 32                ; 2 uses
  %i.aw = add i32 %i.c, -2
  %indvars.iv85.prol = add nsw i64 %i.av, -1      ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv85.prol
  br label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.q:                                             ; preds = %bb.q, %.preheader49.new
  %indvars.iv67 = phi i64 [ 0, %.preheader49.new ], [ %indvars.iv.next68.1, %bb.q ] ; 3 uses
  %indvars.iv65 = phi i64 [ %indvars.iv, %.preheader49.new ], [ %indvars.iv.next66.1, %bb.q ] ; 3 uses
  %.150 = phi i128 [ %.03753, %.preheader49.new ], [ %i.bs, %bb.q ]
  %niter = phi i64 [ 0, %.preheader49.new ], [ %niter.next.1, %bb.q ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv67
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !65
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv65
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !65
  %i.be = zext i32 %i.bd to i64
  %i.bf = mul nuw i64 %i.be, %i.bb
  %i.bg = zext i64 %i.bf to i128
  %i.bh = add i128 %.150, %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv67
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !65
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr [4 x i8], ptr %i.ar, i64 %indvars.iv65
  %i.bn = getelementptr i8, ptr %i.bm, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !65
  %i.bp = zext i32 %i.bo to i64
  %i.bq = mul nuw i64 %i.bp, %i.bl
  %i.br = zext i64 %i.bq to i128
  %i.bs = add i128 %i.bh, %i.br                   ; 3 uses
  %indvars.iv.next68.1 = add nuw nsw i64 %indvars.iv67, 2 ; 2 uses
  %indvars.iv.next66.1 = add nsw i64 %indvars.iv65, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.q, !llvm.loop !464

.unr-lcssa:                                       ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.r, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader49
  %indvars.iv67.epil.init = phi i64 [ 0, %.preheader49 ], [ %indvars.iv.next68.1, %.unr-lcssa ]
  %indvars.iv65.epil.init = phi i64 [ %indvars.iv, %.preheader49 ], [ %indvars.iv.next66.1, %.unr-lcssa ]
  %.150.epil.init = phi i128 [ %.03753, %.preheader49 ], [ %i.bs, %.unr-lcssa ]
  %lcmp.mod150 = trunc i64 %indvars.iv74 to i1
  call void @llvm.assume(i1 %lcmp.mod150)
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv67.epil.init
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !65
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv65.epil.init
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !65
  %i.by = zext i32 %i.bx to i64
  %i.bz = mul nuw i64 %i.by, %i.bv
  %i.ca = zext i64 %i.bz to i128
  %i.cb = add i128 %.150.epil.init, %i.ca
  br label %bb.r

bb.r:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa147 = phi i128 [ %i.bs, %.unr-lcssa ], [ %i.cb, %.epil.preheader ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.pre93.pre94, i64 %indvars.iv
  %i.cd = trunc i128 %.lcssa147 to i32
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !65
  %i.ce = lshr i128 %.lcssa147, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %exitcond80.not = icmp eq i64 %indvars.iv.next, %wide.trip.count79
  br i1 %exitcond80.not, label %.preheader.loopexit, label %.preheader49, !llvm.loop !465

._crit_edge62.loopexit:                           ; preds = %._crit_edge
  %.pre92 = load ptr, ptr %i.g, align 8
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %._crit_edge62.loopexit, %.preheader
  %i.cf = phi ptr [ %.pre92, %._crit_edge62.loopexit ], [ %.pre93, %.preheader ]
  %i.cg = trunc nuw i64 %..i.i to i32
  %smin.i = call i32 @llvm.smin.i32(i32 %i.cg, i32 1) ; 2 uses
  %i.ch = trunc nuw i64 %..i.i to i32             ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, 1
  br i1 %i.ci, label %.lr.ph142, label %.critedge.i

bb.s:                                             ; preds = %.lr.ph142
  %i.cj = trunc nuw i64 %i.cm to i32              ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 1
  br i1 %i.ck, label %.lr.ph142, label %.critedge.i, !llvm.loop !460

.lr.ph142:                                        ; preds = %._crit_edge62, %bb.s
  %i.cl = phi i32 [ %i.cj, %bb.s ], [ %i.ch, %._crit_edge62 ]
  %indvars.iv.i141 = phi i64 [ %i.cm, %bb.s ], [ %..i.i, %._crit_edge62 ]
  %i.cm = add nsw i64 %indvars.iv.i141, -1        ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !65
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.s, label %..critedge.i_crit_edge, !llvm.loop !460

..critedge.i_crit_edge:                           ; preds = %.lr.ph142
  br label %.critedge.i, !llvm.loop !460

.critedge.i:                                      ; preds = %bb.s, %..critedge.i_crit_edge, %._crit_edge62
  %.0.in.lcssa.i = phi i32 [ %smin.i, %._crit_edge62 ], [ %i.cl, %..critedge.i_crit_edge ], [ %smin.i, %bb.s ]
  %i.cq = zext i32 %.0.in.lcssa.i to i64          ; 3 uses
  %i.cr = icmp ult i64 %i.ap, %i.cq
  br i1 %i.cr, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.critedge.i
  %i.cs = load ptr, ptr %0, align 8, !tbaa !41
  %i.ct = load ptr, ptr %i.cs, align 8
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.cq)
          to label %.noexc46 unwind label %bb.x, !inline_history !466

.noexc46:                                         ; preds = %bb.t
  %.pre.i.i.i = load i64, ptr %i.i, align 8, !tbaa !362
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph61, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph61 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv81 = phi i32 [ %i.c, %.lr.ph61 ], [ %indvars.iv.next82, %._crit_edge ] ; 3 uses
  %.259 = phi i128 [ %.037.lcssa, %.lr.ph61 ], [ %i.ed, %._crit_edge ] ; 3 uses
  %reass.sub = sub i32 %indvars.iv81, %i.c        ; 2 uses
  %.reass.reass = add i32 %reass.sub, 1           ; 3 uses
  %i.cu = icmp slt i32 %.reass.reass, %i.c
  br i1 %i.cu, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.u
  %i.cv = sub i32 %indvar, %i.c
  %i.cw = and i32 %i.cv, 1
  %lcmp.mod152.not.not = icmp eq i32 %i.cw, 0
  br i1 %lcmp.mod152.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %2 = add i32 %reass.sub, 2
  %3 = zext nneg i32 %.reass.reass to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %3
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !65
  %i.cz = zext i32 %i.cy to i64
  %i.da = load i32, ptr %i.ax, align 4, !tbaa !65
  %i.db = zext i32 %i.da to i64
  %i.dc = mul nuw i64 %i.db, %i.cz
  %i.dd = zext i64 %i.dc to i128
  %i.de = add nsw i128 %.259, %i.dd               ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa146.unr = phi i128 [ poison, %.lr.ph.preheader ], [ %i.de, %.lr.ph.prol ]
  %indvars.iv85.in.unr = phi i64 [ %i.av, %.lr.ph.preheader ], [ %indvars.iv85.prol, %.lr.ph.prol ]
  %.057.unr = phi i32 [ %.reass.reass, %.lr.ph.preheader ], [ %2, %.lr.ph.prol ]
  %.355.unr = phi i128 [ %.259, %.lr.ph.preheader ], [ %i.de, %.lr.ph.prol ]
  %i.df = icmp eq i32 %i.aw, %indvar
  br i1 %i.df, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv85.in = phi i64 [ %indvars.iv85.1, %.lr.ph ], [ %indvars.iv85.in.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.057 = phi i32 [ %5, %.lr.ph ], [ %.057.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.355 = phi i128 [ %i.dz, %.lr.ph ], [ %.355.unr, %.lr.ph.prol.loopexit ]
  %4 = zext nneg i32 %.057 to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !65
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv85.in
  %i.dk = getelementptr i8, ptr %i.dj, i64 -4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !65
  %i.dm = zext i32 %i.dl to i64
  %i.dn = mul nuw i64 %i.dm, %i.di
  %i.do = zext i64 %i.dn to i128
  %i.dp = add i128 %.355, %i.do
  %indvars.iv85.1 = add nsw i64 %indvars.iv85.in, -2 ; 2 uses
  %5 = add nsw i32 %.057, 2                       ; 2 uses
  %6 = sext i32 %.057 to i64
  %i.dq = getelementptr [4 x i8], ptr %i.au, i64 %6
  %i.dr = getelementptr i8, ptr %i.dq, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !65
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv85.1
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !65
  %i.dw = zext i32 %i.dv to i64
  %i.dx = mul nuw i64 %i.dw, %i.dt
  %i.dy = zext i64 %i.dx to i128
  %i.dz = add i128 %i.dp, %i.dy                   ; 2 uses
  %exitcond.1 = icmp eq i32 %5, %i.c
  br i1 %exitcond.1, label %._crit_edge, label %.lr.ph, !llvm.loop !467

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.u
  %.3.lcssa = phi i128 [ %.259, %bb.u ], [ %.lcssa146.unr, %.lr.ph.prol.loopexit ], [ %i.dz, %.lr.ph ] ; 2 uses
  %i.ea = zext i32 %indvars.iv81 to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.pre93, i64 %i.ea
  %i.ec = trunc i128 %.3.lcssa to i32
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !65
  %i.ed = lshr i128 %.3.lcssa, 32
  %indvars.iv.next82 = add nsw i32 %indvars.iv81, 1 ; 2 uses
  %exitcond91.not = icmp eq i32 %indvars.iv.next82, %i.d
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond91.not, label %._crit_edge62.loopexit, label %bb.u, !llvm.loop !468

bb.v:                                             ; preds = %.noexc46, %.critedge.i
  %i.ee = phi i64 [ %i.ap, %.critedge.i ], [ %.pre.i.i.i, %.noexc46 ]
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.cq, i64 %i.ee)
  store i64 %..i.i.i, ptr %i.a, align 8, !tbaa !371
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !363
  %i.eh = shl nsw i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ef, align 8, !tbaa !363
  %i.ei = load ptr, ptr %i.e, align 8, !tbaa !360 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i = icmp eq ptr %i.ei, %i.ej
  br i1 %.not.i.i, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ek = load i64, ptr %i.f, align 8, !tbaa !362
  %i.el = shl i64 %i.ek, 2
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #35
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret void

bb.x:                                             ; preds = %bb.t
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.p ], [ %i.em, %bb.x ]
  %i.en = load ptr, ptr %i.e, align 8, !tbaa !360 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i.i47 = icmp eq ptr %i.en, %i.eo
  br i1 %.not.i.i47, label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit48, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ep = load i64, ptr %i.f, align 8, !tbaa !362
  %i.eq = shl i64 %i.ep, 2
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #35
  br label %_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit48

_ZN3fmt2v919basic_memory_bufferIjLm32ESaIjEED2Ev.exit48: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3fmt2v912format_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt2v912format_errorE, i64 16), ptr %0, align 8, !tbaa !41
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN3fmt2v912format_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #11

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 %3, ptr %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v9::detail::float_specs", align 8 ; 2 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %i.e = alloca i8, align 1                       ; 8 uses
  %6 = alloca %class.anon.58, align 8             ; 12 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.fmt::v9::detail::digit_grouping", align 8 ; 12 uses
  %8 = alloca %class.anon.60, align 8             ; 13 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.fmt::v9::detail::digit_grouping", align 8 ; 12 uses
  %10 = alloca %class.anon.61, align 8            ; 12 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i8, align 1                       ; 5 uses
  %11 = alloca %class.anon.62, align 8            ; 10 uses
  %.fr140 = freeze i64 %3                         ; 4 uses
  store i64 %.fr140, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.k = load ptr, ptr %1, align 8, !tbaa !349    ; 2 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !351  ; 9 uses
  store i32 %i.m, ptr %i.b, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i8 48, ptr %i.c, align 1, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  %i.n = lshr i64 %.fr140, 32                     ; 2 uses
  %i.o = trunc nuw i64 %i.n to i32                ; 7 uses
  %i.p = lshr i64 %.fr140, 40
  %i.q = trunc i64 %i.p to i8                     ; 3 uses
  store i8 %i.q, ptr %i.d, align 1, !tbaa !248
  %.not = icmp ne i8 %i.q, 0
  %i.r = zext i1 %.not to i32
  %i.s = add i32 %i.m, %i.r
  %i.t = zext i32 %i.s to i64                     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.u = and i32 %i.o, 131072                     ; 3 uses
  %.not65 = icmp eq i32 %i.u, 0
  %i.v = trunc i64 %.fr140 to i32                 ; 7 uses
  br i1 %.not65, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = tail call noundef signext i8 @_ZN3fmt2v96detail18decimal_point_implIcEET_NS1_10locale_refE(ptr %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.x = phi i8 [ %i.w, %bb.b ], [ 46, %bb.a ]    ; 3 uses
  store i8 %i.x, ptr %i.e, align 1, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !352  ; 3 uses
  %i.aa = add nsw i32 %i.m, %i.z                  ; 10 uses
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  %i.ac = trunc i64 %i.n to i8
  switch i8 %i.ac, label %_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread115 [
    i8 1, label %_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread
    i8 0, label %_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit
  ]

_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit: ; preds = %bb.c
  %i.ad = icmp slt i32 %i.aa, -3
  %i.ae = icmp sgt i32 %i.v, 0
  %spec.select.i = select i1 %i.ae, i32 %i.v, i32 16
  %i.af = icmp sgt i32 %i.aa, %spec.select.i
  %i.ag = or i1 %i.ad, %i.af
  br i1 %i.ag, label %_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread, label %_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread115

_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread: ; preds = %bb.c, %_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit
  %i.ah = and i32 %i.o, 524288
  %.not73 = icmp eq i32 %i.ah, 0
  br i1 %.not73, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread
  %i.ai = sub nsw i32 %i.v, %i.m
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 0) ; 2 uses
  %i.aj = zext nneg i32 %spec.store.select to i64
  %i.ak = add nuw nsw i64 %i.aj, %i.t
  br label %bb.g

bb.e:                                             ; preds = %_ZZN3fmt2v96detail14do_write_floatINS0_8appenderENS1_14big_decimal_fpEcNS1_14digit_groupingIcEEEET_S7_RKT0_RKNS0_18basic_format_specsIT1_EENS1_11float_specsENS1_10locale_refEENKUlvE_clEv.exit.thread
  %i.al = icmp eq i32 %i.m, 1
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr %i.e, align 1, !tbaa !45
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.am = phi i8 [ %i.x, %bb.d ], [ 0, %bb.f ], [ %i.x, %bb.e ] ; 2 uses
  %.054 = phi i32 [ %spec.store.select, %bb.d ], [ 0, %bb.f ], [ 0, %bb.e ]
  %.0 = phi i64 [ %i.ak, %bb.d ], [ %i.t, %bb.f ], [ %i.t, %bb.e ]
  %i.an = and i32 %i.o, 65536
  %.not75 = icmp eq i32 %i.an, 0
  %i.ao = select i1 %.not75, i8 101, i8 69
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i8 %i.q, ptr %6, align 8, !tbaa !469
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.k, ptr %i.ap, align 8, !tbaa !471
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.m, ptr %i.aq, align 8, !tbaa !472
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i8 %i.am, ptr %i.ar, align 4, !tbaa !473
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %.054, ptr %i.as, align 8, !tbaa !474
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i8 48, ptr %i.at, align 4, !tbaa !475
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 29
  store i8 %i.ao, ptr %i.au, align 1, !tbaa !476
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %i.ab, ptr %i.av, align 8, !tbaa !477
  %i.aw = load i32, ptr %2, align 4, !tbaa !165   ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %.not74.not = icmp eq i8 %i.am, 0
  %i.ay = select i1 %.not74.not, i64 2, i64 3
  %i.az = icmp slt i32 %i.aa, 1
  %i.ba = sub nsw i32 1, %i.aa
  %i.bb = select i1 %i.az, i32 %i.ba, i32 %i.ab   ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 99
  %i.bd = icmp sgt i32 %i.bb, 999
  %i.be = select i1 %i.bd, i64 4, i64 3
  %.060 = select i1 %i.bc, i64 %i.be, i64 2
  %i.bf = add nuw nsw i64 %.0, %.060
  %i.bg = add nuw nsw i64 %i.bf, %i.ay
  %i.bh = zext nneg i32 %i.aw to i64
  %i.bi = tail call i64 @llvm.usub.sat.i64(i64 %i.bh, i64 %i.bg) ; 3 uses
end_hunk_1
