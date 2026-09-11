Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/format?download=true
inline.NumInlined: 2606
inline.NumDeleted: 709
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN3fmt3v116detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  %.not14.i.i340 = icmp eq i64 %i.yu, 0
  br i1 %.not14.i.i340, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit353, label %.lr.ph.i.i341

.lr.ph.i.i341:                                    ; preds = %bb.dp
  %i.yv = load ptr, ptr %5, align 8, !tbaa !223   ; 4 uses
  %xtraiter1029 = and i64 %i.yu, 1
  %i.yw = icmp eq i64 %i.yu, 1
  br i1 %i.yw, label %.epil.preheader1028, label %.lr.ph.i.i341.new

.lr.ph.i.i341.new:                                ; preds = %.lr.ph.i.i341
  %unroll_iter1033 = and i64 %i.yu, -2
  br label %bb.dq

._crit_edge.i.i345.unr-lcssa:                     ; preds = %bb.dq
  %lcmp.mod1030.not = icmp eq i64 %xtraiter1029, 0
  br i1 %lcmp.mod1030.not, label %._crit_edge.i.i345, label %.epil.preheader1028

.epil.preheader1028:                              ; preds = %._crit_edge.i.i345.unr-lcssa, %.lr.ph.i.i341
  %.013.i.i342.epil.init = phi i64 [ 0, %.lr.ph.i.i341 ], [ %i.zu, %._crit_edge.i.i345.unr-lcssa ]
  %.01112.i.i343.epil.init = phi i64 [ 0, %.lr.ph.i.i341 ], [ %i.zt, %._crit_edge.i.i345.unr-lcssa ]
  %lcmp.mod1032 = trunc i64 %i.yu to i1
  call void @llvm.assume(i1 %lcmp.mod1032)
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.yv, i64 %.013.i.i342.epil.init ; 2 uses
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !112
  %i.yz = zext i32 %i.yy to i64
  %i.za = mul nuw nsw i64 %i.yz, 10
  %i.zb = add nuw nsw i64 %i.za, %.01112.i.i343.epil.init ; 2 uses
  %i.zc = trunc i64 %i.zb to i32
  store i32 %i.zc, ptr %i.yx, align 4, !tbaa !112
  %i.zd = lshr i64 %i.zb, 32
  br label %._crit_edge.i.i345

._crit_edge.i.i345:                               ; preds = %._crit_edge.i.i345.unr-lcssa, %.epil.preheader1028
  %.lcssa1001 = phi i64 [ %i.zt, %._crit_edge.i.i345.unr-lcssa ], [ %i.zd, %.epil.preheader1028 ] ; 2 uses
  %i.ze = trunc nuw nsw i64 %.lcssa1001 to i32
  %.not.i.i346 = icmp eq i64 %.lcssa1001, 0
  br i1 %.not.i.i346, label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit353, label %bb.dr

bb.dq:                                            ; preds = %bb.dq, %.lr.ph.i.i341.new
  %.013.i.i342 = phi i64 [ 0, %.lr.ph.i.i341.new ], [ %i.zu, %bb.dq ] ; 3 uses
  %.01112.i.i343 = phi i64 [ 0, %.lr.ph.i.i341.new ], [ %i.zt, %bb.dq ]
  %niter1034 = phi i64 [ 0, %.lr.ph.i.i341.new ], [ %niter1034.next.1, %bb.dq ]
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.yv, i64 %.013.i.i342 ; 2 uses
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !112
  %i.zh = zext i32 %i.zg to i64
  %i.zi = mul nuw nsw i64 %i.zh, 10
  %i.zj = add nuw nsw i64 %i.zi, %.01112.i.i343   ; 2 uses
  %i.zk = trunc i64 %i.zj to i32
  store i32 %i.zk, ptr %i.zf, align 4, !tbaa !112
  %i.zl = lshr i64 %i.zj, 32
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %i.yv, i64 %.013.i.i342
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 4 ; 2 uses
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !112
  %i.zp = zext i32 %i.zo to i64
  %i.zq = mul nuw nsw i64 %i.zp, 10
  %i.zr = add nuw nsw i64 %i.zq, %i.zl            ; 2 uses
  %i.zs = trunc i64 %i.zr to i32
  store i32 %i.zs, ptr %i.zn, align 4, !tbaa !112
  %i.zt = lshr i64 %i.zr, 32                      ; 3 uses
  %i.zu = add nuw i64 %.013.i.i342, 2             ; 2 uses
  %niter1034.next.1 = add nuw i64 %niter1034, 2   ; 2 uses
  %niter1034.ncmp.1 = icmp eq i64 %niter1034.next.1, %unroll_iter1033
  br i1 %niter1034.ncmp.1, label %._crit_edge.i.i345.unr-lcssa, label %bb.dq, !llvm.loop !34

bb.dr:                                            ; preds = %._crit_edge.i.i345
  %i.zv = add i64 %i.yu, 1                        ; 3 uses
  %i.zw = load i64, ptr %i.a, align 8, !tbaa !224
  %i.zx = icmp ugt i64 %i.zv, %i.zw
  br i1 %i.zx, label %bb.ds, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i347

bb.ds:                                            ; preds = %bb.dr
  %i.zy = load ptr, ptr %i.b, align 8, !tbaa !222
  invoke void %i.zy(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.zv)
          to label %.noexc352 unwind label %bb.dt, !inline_history !513

.noexc352:                                        ; preds = %bb.ds
  %.pre.i.i.i349 = load i64, ptr %i.c, align 8, !tbaa !229 ; 2 uses
  %.pre2.i.i.i350 = add i64 %.pre.i.i.i349, 1
  %.pre.i351 = load ptr, ptr %5, align 8, !tbaa !223
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i347

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i347: ; preds = %.noexc352, %bb.dr
  %i.zz = phi ptr [ %i.yv, %bb.dr ], [ %.pre.i351, %.noexc352 ]
  %.pre-phi.i.i.i348 = phi i64 [ %i.zv, %bb.dr ], [ %.pre2.i.i.i350, %.noexc352 ]
  %i.aaa = phi i64 [ %i.yu, %bb.dr ], [ %.pre.i.i.i349, %.noexc352 ]
  store i64 %.pre-phi.i.i.i348, ptr %i.c, align 8, !tbaa !229
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.zz, i64 %i.aaa
  store i32 %i.ze, ptr %i.aab, align 4, !tbaa !112
  br label %_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit353

_ZN3fmt3v116detail6bigintmLIiEERS2_T_.exit353:    ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i347, %._crit_edge.i.i345, %bb.dp
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !516

bb.dt:                                            ; preds = %bb.ds, %.lr.ph
  %i.aac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.du:                                            ; preds = %._crit_edge
  %i.aad = load i64, ptr %i.c, align 8, !tbaa !229
  %i.aae = trunc i64 %i.aad to i32
  %i.aaf = load i32, ptr %i.e, align 8, !tbaa !228 ; 4 uses
  %i.aag = add nsw i32 %i.aaf, %i.aae             ; 3 uses
  %i.aah = load i64, ptr %i.h, align 8, !tbaa !229
  %i.aai = trunc i64 %i.aah to i32
  %i.aaj = load i32, ptr %i.j, align 8, !tbaa !228 ; 4 uses
  %i.aak = add nsw i32 %i.aaj, %i.aai             ; 4 uses
  %i.aal = add nsw i32 %i.aag, 1
  %i.aam = icmp slt i32 %i.aal, %i.aak
  br i1 %i.aam, label %.thread446, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.aan = icmp sgt i32 %i.aag, %i.aak
  br i1 %i.aan, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit370, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.aao = call noundef i32 @llvm.smin.i32(i32 %i.aaf, i32 %i.aaj) ; 2 uses
  %.not.not.not55.i354 = icmp sgt i32 %i.aak, %i.aao
  br i1 %.not.not.not55.i354, label %.lr.ph.i356, label %bb.ec

.lr.ph.i356:                                      ; preds = %bb.dw
  %i.aap = load ptr, ptr %5, align 8
  %i.aaq = load ptr, ptr %6, align 8
  br label %bb.dx

bb.dx:                                            ; preds = %bb.eb, %.lr.ph.i356
  %.0.in57.i357 = phi i32 [ %i.aak, %.lr.ph.i356 ], [ %.058.i359, %bb.eb ] ; 4 uses
  %.03256.i358 = phi i64 [ 0, %.lr.ph.i356 ], [ %i.abj, %bb.eb ] ; 2 uses
  %.058.i359 = add nsw i32 %.0.in57.i357, -1      ; 4 uses
  %.not.i.i360 = icmp sgt i32 %.0.in57.i357, %i.aaf
  %i.aar = icmp sle i32 %.0.in57.i357, %i.aag
  %or.cond.i361 = and i1 %.not.i.i360, %i.aar
  br i1 %or.cond.i361, label %bb.dy, label %_ZZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i365

bb.dy:                                            ; preds = %bb.dx
  %i.aas = sub nsw i32 %.058.i359, %i.aaf
  %i.aat = zext i32 %i.aas to i64
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.aap, i64 %i.aat
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !112
  %i.aaw = zext i32 %i.aav to i64
  %i.aax = shl nuw nsw i64 %i.aaw, 1
  br label %_ZZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i365

_ZZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i365: ; preds = %bb.dx, %bb.dy
  %i.aay = phi i64 [ %i.aax, %bb.dy ], [ 0, %bb.dx ] ; 3 uses
  %.not.i45.i366 = icmp sgt i32 %.0.in57.i357, %i.aaj
  br i1 %.not.i45.i366, label %bb.dz, label %_ZZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i367

bb.dz:                                            ; preds = %_ZZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i365
  %i.aaz = sub nsw i32 %.058.i359, %i.aaj
  %i.aba = zext i32 %i.aaz to i64
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %i.aaq, i64 %i.aba
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !112
  %i.abd = zext i32 %i.abc to i64
  %i.abe = or disjoint i64 %.03256.i358, %i.abd
  br label %_ZZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i367

_ZZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i367: ; preds = %bb.dz, %_ZZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i365
  %i.abf = phi i64 [ %i.abe, %bb.dz ], [ %.03256.i358, %_ZZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit44.i365 ] ; 3 uses
  %i.abg = icmp ugt i64 %i.aay, %i.abf
  br i1 %i.abg, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit370, label %bb.ea

bb.ea:                                            ; preds = %_ZZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i367
  %i.abh = sub nuw nsw i64 %i.abf, %i.aay         ; 2 uses
  %i.abi = icmp ugt i64 %i.abh, 1
  br i1 %i.abi, label %.thread446, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.abj = shl nuw nsw i64 %i.abh, 32
  %.not.not.not.i368 = icmp sgt i32 %.058.i359, %i.aao
  br i1 %.not.not.not.i368, label %bb.dx, label %.thread.loopexit.i369, !llvm.loop !512

.thread.loopexit.i369:                            ; preds = %bb.eb
  %i.abk = icmp ne i64 %i.abf, %i.aay
  br label %bb.ec

bb.ec:                                            ; preds = %bb.dw, %.thread.loopexit.i369
  %.4.i355.ph = phi i1 [ false, %bb.dw ], [ %i.abk, %.thread.loopexit.i369 ]
  %i.abl = and i32 %i.yo, 1
  %.not101 = icmp eq i32 %i.abl, 0
  %or.cond117 = or i1 %.not101, %.4.i355.ph
  br i1 %or.cond117, label %.thread446, label %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit370

_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit370: ; preds = %_ZZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_ENKUlS4_iE_clES4_i.exit46.i367, %bb.dv, %bb.ec
  %i.abm = icmp eq i32 %i.yo, 9
  br i1 %i.abm, label %bb.ed, label %bb.em

bb.ed:                                            ; preds = %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit370
  %i.abn = load ptr, ptr %3, align 8, !tbaa !85
  %i.abo = sext i32 %i.va to i64
  %i.abp = getelementptr inbounds i8, ptr %i.abn, i64 %i.abo
  store i8 58, ptr %i.abp, align 1, !tbaa !82
  br i1 %.not496, label %.critedge, label %.lr.ph494

.lr.ph494:                                        ; preds = %bb.ed, %bb.ef
  %indvars.iv534 = phi i64 [ %indvars.iv.next535, %bb.ef ], [ %i.yg, %bb.ed ] ; 3 uses
  %indvars.iv.next535 = add nsw i64 %indvars.iv534, -1 ; 2 uses
  %i.abq = load ptr, ptr %3, align 8, !tbaa !85
  %9 = and i64 %indvars.iv.next535, 4294967295
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 %9 ; 2 uses
  %i.abs = load i8, ptr %i.abr, align 1, !tbaa !82
  %i.abt = icmp eq i8 %i.abs, 58
  br i1 %i.abt, label %bb.ef, label %.critedge

.critedge:                                        ; preds = %.lr.ph494, %bb.ef, %bb.ed
  %i.abu = load ptr, ptr %3, align 8, !tbaa !85   ; 2 uses
  %i.abv = load i8, ptr %i.abu, align 1, !tbaa !82
  %i.abw = icmp eq i8 %i.abv, 58
  br i1 %i.abw, label %bb.eg, label %.loopexit

bb.ee:                                            ; preds = %._crit_edge
  %i.abx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ef:                                            ; preds = %.lr.ph494
  store i8 48, ptr %i.abr, align 1, !tbaa !82
  %i.aby = load ptr, ptr %3, align 8, !tbaa !85
  %i.abz = getelementptr i8, ptr %i.aby, i64 %indvars.iv534
  %i.aca = getelementptr i8, ptr %i.abz, i64 -2   ; 2 uses
  %i.acb = load i8, ptr %i.aca, align 1, !tbaa !82
  %i.acc = add i8 %i.acb, 1
  store i8 %i.acc, ptr %i.aca, align 1, !tbaa !82
  %10 = trunc nuw i64 %indvars.iv534 to i32
  %11 = icmp sgt i32 %10, 2
  br i1 %11, label %.lr.ph494, label %.critedge, !llvm.loop !517

bb.eg:                                            ; preds = %.critedge
  store i8 49, ptr %i.abu, align 1, !tbaa !82
  %i.acd = and i32 %1, 4
  %.not102 = icmp eq i32 %i.acd, 0
  br i1 %.not102, label %bb.el, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ace = load i64, ptr %i.yn, align 8, !tbaa !72 ; 2 uses
  %i.acf = add i64 %i.ace, 1                      ; 3 uses
  %i.acg = load i64, ptr %i.yh, align 8, !tbaa !86
  %i.ach = icmp ugt i64 %i.acf, %i.acg
  br i1 %i.ach, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.aci = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !84
  invoke void %i.acj(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.acf)
          to label %.noexc374 unwind label %bb.ek, !inline_history !4

.noexc374:                                        ; preds = %bb.ei
  %.pre.i372 = load i64, ptr %i.yn, align 8, !tbaa !72 ; 2 uses
  %.pre2.i373 = add i64 %.pre.i372, 1
  br label %bb.ej

bb.ej:                                            ; preds = %.noexc374, %bb.eh
  %.pre-phi.i371 = phi i64 [ %i.acf, %bb.eh ], [ %.pre2.i373, %.noexc374 ]
  %i.ack = phi i64 [ %i.ace, %bb.eh ], [ %.pre.i372, %.noexc374 ]
  %i.acl = load ptr, ptr %3, align 8, !tbaa !85
  store i64 %.pre-phi.i371, ptr %i.yn, align 8, !tbaa !72
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 %i.ack
  store i8 48, ptr %i.acm, align 1, !tbaa !82
  br label %.loopexit

bb.ek:                                            ; preds = %bb.ei
  %i.acn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.el:                                            ; preds = %bb.eg
  %i.aco = load i32, ptr %4, align 4, !tbaa !112
  %i.acp = add nsw i32 %i.aco, 1
  store i32 %i.acp, ptr %4, align 4, !tbaa !112
  br label %.loopexit

bb.em:                                            ; preds = %_ZN3fmt3v116detail11add_compareERKNS1_6bigintES4_S4_.exit370
  %i.acq = add nsw i32 %i.yo, 1
  br label %.thread446

.thread446:                                       ; preds = %bb.ea, %bb.du, %bb.em, %bb.ec
  %.076 = phi i32 [ %i.acq, %bb.em ], [ %i.yo, %bb.ec ], [ %i.yo, %bb.du ], [ %i.yo, %bb.ea ]
  %i.acr = trunc i32 %.076 to i8
  %i.acs = add i8 %i.acr, 48
  %i.act = load ptr, ptr %3, align 8, !tbaa !85
  %i.acu = sext i32 %i.va to i64
  %i.acv = getelementptr inbounds i8, ptr %i.act, i64 %i.acu
  store i8 %i.acs, ptr %i.acv, align 1, !tbaa !82
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.thread446, %bb.ej, %bb.el, %.critedge, %bb.dm
  %i.acw = load ptr, ptr %8, align 8, !tbaa !223  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.acw, %i.s
  br i1 %.not.i.i.i, label %_ZN3fmt3v116detail6bigintD2Ev.exit, label %bb.en

bb.en:                                            ; preds = %.loopexit
  %i.acx = load i64, ptr %i.p, align 8, !tbaa !224
  %i.acy = shl i64 %i.acx, 2
  call void @_ZdlPvm(ptr noundef %i.acw, i64 noundef %i.acy) #33
  br label %_ZN3fmt3v116detail6bigintD2Ev.exit

_ZN3fmt3v116detail6bigintD2Ev.exit:               ; preds = %.loopexit, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.acz = load ptr, ptr %7, align 8, !tbaa !223  ; 2 uses
  %.not.i.i.i376 = icmp eq ptr %i.acz, %i.n
  br i1 %.not.i.i.i376, label %_ZN3fmt3v116detail6bigintD2Ev.exit377, label %bb.eo

bb.eo:                                            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit
  %i.ada = load i64, ptr %i.k, align 8, !tbaa !224
  %i.adb = shl i64 %i.ada, 2
  call void @_ZdlPvm(ptr noundef %i.acz, i64 noundef %i.adb) #33
  br label %_ZN3fmt3v116detail6bigintD2Ev.exit377

_ZN3fmt3v116detail6bigintD2Ev.exit377:            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.adc = load ptr, ptr %6, align 8, !tbaa !223  ; 2 uses
  %.not.i.i.i378 = icmp eq ptr %i.adc, %i.i
  br i1 %.not.i.i.i378, label %_ZN3fmt3v116detail6bigintD2Ev.exit379, label %bb.ep

bb.ep:                                            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit377
  %i.add = load i64, ptr %i.f, align 8, !tbaa !224
  %i.ade = shl i64 %i.add, 2
  call void @_ZdlPvm(ptr noundef %i.adc, i64 noundef %i.ade) #33
  br label %_ZN3fmt3v116detail6bigintD2Ev.exit379

_ZN3fmt3v116detail6bigintD2Ev.exit379:            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit377, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.adf = load ptr, ptr %5, align 8, !tbaa !223  ; 2 uses
  %.not.i.i.i380 = icmp eq ptr %i.adf, %i.d
  br i1 %.not.i.i.i380, label %_ZN3fmt3v116detail6bigintD2Ev.exit381, label %bb.eq

bb.eq:                                            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit379
  %i.adg = load i64, ptr %i.a, align 8, !tbaa !224
  %i.adh = shl i64 %i.adg, 2
  call void @_ZdlPvm(ptr noundef %i.adf, i64 noundef %i.adh) #33
  br label %_ZN3fmt3v116detail6bigintD2Ev.exit381

_ZN3fmt3v116detail6bigintD2Ev.exit381:            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit379, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret void

.body:                                            ; preds = %.loopexit451, %.loopexit.split-lp, %bb.bf, %bb.bj, %bb.dk, %bb.dt, %bb.cc, %bb.cb, %bb.ek, %bb.ee
  %.pn106.pn.pn.pn.pn = phi { ptr, i32 } [ %i.abx, %bb.ee ], [ %i.acn, %bb.ek ], [ %i.xu, %bb.dk ], [ %i.aac, %bb.dt ], [ %i.ls, %bb.bf ], [ %i.pi, %bb.cb ], [ %i.lz, %bb.bj ], [ %i.pj, %bb.cc ], [ %lpad.loopexit, %.loopexit451 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.adi = load ptr, ptr %8, align 8, !tbaa !223  ; 2 uses
  %.not.i.i.i382 = icmp eq ptr %i.adi, %i.s
  br i1 %.not.i.i.i382, label %_ZN3fmt3v116detail6bigintD2Ev.exit383, label %bb.er

bb.er:                                            ; preds = %.body
  %i.adj = load i64, ptr %i.p, align 8, !tbaa !224
  %i.adk = shl i64 %i.adj, 2
  call void @_ZdlPvm(ptr noundef %i.adi, i64 noundef %i.adk) #33
  br label %_ZN3fmt3v116detail6bigintD2Ev.exit383

_ZN3fmt3v116detail6bigintD2Ev.exit383:            ; preds = %bb.er, %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.adl = load ptr, ptr %7, align 8, !tbaa !223  ; 2 uses
  %.not.i.i.i384 = icmp eq ptr %i.adl, %i.n
  br i1 %.not.i.i.i384, label %_ZN3fmt3v116detail6bigintD2Ev.exit385, label %bb.es

bb.es:                                            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit383
  %i.adm = load i64, ptr %i.k, align 8, !tbaa !224
  %i.adn = shl i64 %i.adm, 2
  call void @_ZdlPvm(ptr noundef %i.adl, i64 noundef %i.adn) #33
  br label %_ZN3fmt3v116detail6bigintD2Ev.exit385

_ZN3fmt3v116detail6bigintD2Ev.exit385:            ; preds = %bb.es, %_ZN3fmt3v116detail6bigintD2Ev.exit383
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.ado = load ptr, ptr %6, align 8, !tbaa !223  ; 2 uses
  %.not.i.i.i386 = icmp eq ptr %i.ado, %i.i
  br i1 %.not.i.i.i386, label %_ZN3fmt3v116detail6bigintD2Ev.exit387, label %bb.et

bb.et:                                            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit385
  %i.adp = load i64, ptr %i.f, align 8, !tbaa !224
  %i.adq = shl i64 %i.adp, 2
  call void @_ZdlPvm(ptr noundef %i.ado, i64 noundef %i.adq) #33
  br label %_ZN3fmt3v116detail6bigintD2Ev.exit387

_ZN3fmt3v116detail6bigintD2Ev.exit387:            ; preds = %bb.et, %_ZN3fmt3v116detail6bigintD2Ev.exit385
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.adr = load ptr, ptr %5, align 8, !tbaa !223  ; 2 uses
  %.not.i.i.i388 = icmp eq ptr %i.adr, %i.d
  br i1 %.not.i.i.i388, label %_ZN3fmt3v116detail6bigintD2Ev.exit389, label %bb.eu

bb.eu:                                            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit387
  %i.ads = load i64, ptr %i.a, align 8, !tbaa !224
  %i.adt = shl i64 %i.ads, 2
  call void @_ZdlPvm(ptr noundef %i.adr, i64 noundef %i.adt) #33
  br label %_ZN3fmt3v116detail6bigintD2Ev.exit389

_ZN3fmt3v116detail6bigintD2Ev.exit389:            ; preds = %_ZN3fmt3v116detail6bigintD2Ev.exit387, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %.pn106.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(172) ptr @_ZN3fmt3v116detail6bigintlSEi(ptr noundef nonnull align 8 dereferenceable(172) %0, i32 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = sdiv i32 %1, 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !228
  %i.d = add nsw i32 %i.c, %i.a
  store i32 %i.d, ptr %i.b, align 8, !tbaa !228
  %i.e = srem i32 %1, 32                          ; 4 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !229  ; 7 uses
  %.not19 = icmp eq i64 %i.h, 0
  br i1 %.not19, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !223    ; 2 uses
  %i.j = sub nsw i32 32, %i.e                     ; 2 uses
  %min.iters.check = icmp ult i64 %i.h, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.h, -8                       ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert24 = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat25 = shufflevector <4 x i32> %broadcast.splatinsert24, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.n, %vector.body ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3fmt3v116detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE:bb.a
  br i1 %i.fv, label %bb.ag, label %_ZZN3fmt3v116detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEEENKUljPcE_clEjS8_.exit

bb.ag:                                            ; preds = %bb.af
  %i.fw = and i64 %i.fp, 4294967280
  %i.fx = mul nuw nsw i64 %i.fw, 100              ; 3 uses
  %i.fy = lshr i64 %i.fx, 32                      ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.eo, i64 %indvars.iv.next.i.1
  %i.ga = shl nuw nsw i64 %i.fy, 1
  %i.gb = getelementptr inbounds nuw i8, ptr @.str.15, i64 %i.ga
  %i.gc = load i16, ptr %i.gb, align 1
  store i16 %i.gc, ptr %i.fz, align 1
  %indvars.iv.next.i.2 = add nuw nsw i64 %i.fe, 6 ; 2 uses
  %i.gd = icmp samesign ult i64 %indvars.iv.next.i.2, %i.ff
  br i1 %i.gd, label %bb.ah, label %_ZZN3fmt3v116detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEEENKUljPcE_clEjS8_.exit

bb.ah:                                            ; preds = %bb.ag
  %i.ge = and i64 %i.fx, 4294967232
  %i.gf = mul nuw nsw i64 %i.ge, 100              ; 2 uses
  %i.gg = lshr i64 %i.gf, 32                      ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.eo, i64 %indvars.iv.next.i.2
  %i.gi = shl nuw nsw i64 %i.gg, 1
  %i.gj = getelementptr inbounds nuw i8, ptr @.str.15, i64 %i.gi
  %i.gk = load i16, ptr %i.gj, align 1
  store i16 %i.gk, ptr %i.gh, align 1
  br label %_ZZN3fmt3v116detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEEENKUljPcE_clEjS8_.exit

_ZZN3fmt3v116detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEEENKUljPcE_clEjS8_.exit: ; preds = %bb.ah, %bb.ag, %bb.af, %.lr.ph.i
  %.lcssa314 = phi i64 [ %i.fh, %.lr.ph.i ], [ %i.fp, %bb.af ], [ %i.fx, %bb.ag ], [ %i.gf, %bb.ah ]
  %.lcssa313 = phi i64 [ %i.fi, %.lr.ph.i ], [ %i.fq, %bb.af ], [ %i.fy, %bb.ag ], [ %i.gg, %bb.ah ] ; 2 uses
  %i.gl = icmp samesign ult i32 %.0211, 10
  br i1 %i.gl, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %_ZZN3fmt3v116detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEEENKUljPcE_clEjS8_.exit
  %.not141 = icmp eq i32 %.0211, 9
  br i1 %.not141, label %bb.aj, label %.thread293

.thread293:                                       ; preds = %bb.ae, %bb.ai
  %.2234290299 = phi i64 [ %.lcssa314, %bb.ai ], [ %.0232, %bb.ae ]
  %.1229292298.in = phi i64 [ %.lcssa313, %bb.ai ], [ %.0228.in, %bb.ae ]
  %i.gm = trunc i64 %.2234290299 to i32           ; 2 uses
  %i.gn = sub nuw nsw i32 8, %i.en
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr @.str.47, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !768
  %.not142 = icmp ugt i32 %i.gq, %i.gm
  br i1 %.not142, label %bb.as, label %.critedge149

bb.aj:                                            ; preds = %bb.ai
  %i.gr = icmp ugt i64 %i.em, 5000000000
  br i1 %i.gr, label %.critedge149.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gs = icmp eq i64 %i.em, 5000000000
  %i.gt = trunc i64 %.lcssa313 to i1
  %i.gu = or i1 %i.di, %i.gt
  %or.cond247 = select i1 %i.gs, i1 %i.gu, i1 false
  br i1 %or.cond247, label %.critedge149.thread, label %.critedge151

bb.al:                                            ; preds = %_ZZN3fmt3v116detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEEENKUljPcE_clEjS8_.exit
  %i.gv = zext i64 %i.em to i128
  %i.gw = mul nuw nsw i128 %i.gv, 1844674407370955162
  %i.gx = lshr i128 %i.gw, 64                     ; 2 uses
  %i.gy = trunc i128 %i.gx to i32
  %i.gz = trunc i64 %i.em to i32
  %.neg139 = mul i32 %i.gy, -10
  %i.ha = add i32 %.neg139, %i.gz                 ; 3 uses
  %i.hb = add nsw i32 %.0211, -9                  ; 3 uses
  %i.hc = load ptr, ptr %3, align 8, !tbaa !85
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 9 ; 3 uses
  %i.he = and i32 %i.hb, 1
  %.not.i161 = icmp eq i32 %i.he, 0
  %i.hf = trunc nuw nsw i128 %i.gx to i64
  %i.hg = and i64 %i.hf, 4294967295               ; 2 uses
  br i1 %.not.i161, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hh = mul nuw nsw i64 %i.hg, 720575941
  %i.hi = lshr i64 %i.hh, 24
  %i.hj = add nuw nsw i64 %i.hi, 1                ; 2 uses
  %i.hk = lshr i64 %i.hj, 32                      ; 2 uses
  %i.hl = trunc nuw nsw i64 %i.hk to i8
  %i.hm = add nuw nsw i8 %i.hl, 48
  store i8 %i.hm, ptr %i.hd, align 1, !tbaa !82
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.hn = mul nuw nsw i64 %i.hg, 450359963
  %i.ho = lshr i64 %i.hn, 20
  %i.hp = add nuw nsw i64 %i.ho, 1                ; 2 uses
  %i.hq = lshr i64 %i.hp, 32                      ; 2 uses
  %i.hr = shl nuw nsw i64 %i.hq, 1
  %i.hs = getelementptr inbounds nuw i8, ptr @.str.15, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 1
  store i16 %i.ht, ptr %i.hd, align 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.3235 = phi i64 [ %i.hp, %bb.an ], [ %i.hj, %bb.am ] ; 2 uses
  %.2230.in = phi i64 [ %i.hq, %bb.an ], [ %i.hk, %bb.am ]
  %.0.i162 = phi i32 [ 2, %bb.an ], [ 1, %bb.am ] ; 2 uses
  %i.hu = icmp samesign ult i32 %.0.i162, %i.hb
  br i1 %i.hu, label %.lr.ph.i163, label %_ZZN3fmt3v116detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEEENKUljPcE_clEjS8_.exit166.thread

.lr.ph.i163:                                      ; preds = %bb.ao
  %i.hv = zext nneg i32 %.0.i162 to i64
  %i.hw = zext nneg i32 %i.hb to i64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.i163
  %.4 = phi i64 [ %.3235, %.lr.ph.i163 ], [ %i.hy, %bb.ap ]
  %indvars.iv.i164 = phi i64 [ %i.hv, %.lr.ph.i163 ], [ %indvars.iv.next.i165, %bb.ap ] ; 2 uses
  %i.hx = and i64 %.4, 4294967295
  %i.hy = mul nuw nsw i64 %i.hx, 100              ; 3 uses
  %i.hz = lshr i64 %i.hy, 32                      ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hd, i64 %indvars.iv.i164
  %i.ib = shl nuw nsw i64 %i.hz, 1
  %i.ic = getelementptr inbounds nuw i8, ptr @.str.15, i64 %i.ib
  %i.id = load i16, ptr %i.ic, align 1
  store i16 %i.id, ptr %i.ia, align 1
  %indvars.iv.next.i165 = add nuw nsw i64 %indvars.iv.i164, 2 ; 2 uses
  %i.ie = icmp samesign ult i64 %indvars.iv.next.i165, %i.hw
  br i1 %i.ie, label %bb.ap, label %_ZZN3fmt3v116detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEEENKUljPcE_clEjS8_.exit166, !llvm.loop !764

_ZZN3fmt3v116detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEEENKUljPcE_clEjS8_.exit166: ; preds = %bb.ap
  %i.if = icmp samesign ult i32 %.0211, 18
  br i1 %i.if, label %_ZZN3fmt3v116detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEEENKUljPcE_clEjS8_.exit166.thread, label %bb.aq

_ZZN3fmt3v116detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEEENKUljPcE_clEjS8_.exit166.thread: ; preds = %bb.ao, %_ZZN3fmt3v116detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEEENKUljPcE_clEjS8_.exit166
  %.3231239.in = phi i64 [ %i.hz, %_ZZN3fmt3v116detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEEENKUljPcE_clEjS8_.exit166 ], [ %.2230.in, %bb.ao ]
  %.5238 = phi i64 [ %i.hy, %_ZZN3fmt3v116detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEEENKUljPcE_clEjS8_.exit166 ], [ %.3235, %bb.ao ]
  %i.ig = trunc i64 %.5238 to i32                 ; 2 uses
  %i.ih = sub nuw nsw i32 17, %.0211
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr @.str.47, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !768
  %.not140 = icmp ugt i32 %i.ik, %i.ig
  br i1 %.not140, label %.split241, label %.critedge149.thread

.split241:                                        ; preds = %_ZZN3fmt3v116detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEEENKUljPcE_clEjS8_.exit166.thread
  %.3231239 = trunc nuw nsw i64 %.3231239.in to i32
  %i.il = lshr i32 %i.ig, 31
  %i.im = icmp ne i32 %i.ha, 0
  %i.in = or i1 %i.im, %i.di
  %i.io = zext i1 %i.in to i32
  %i.ip = or i32 %i.io, %.3231239
  %i.iq = and i32 %i.il, %i.ip
  %i.ir = trunc nuw i32 %i.iq to i1
  br i1 %i.ir, label %.critedge149.thread, label %.critedge151

bb.aq:                                            ; preds = %_ZZN3fmt3v116detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEEENKUljPcE_clEjS8_.exit166
  %i.is = icmp ugt i32 %i.ha, 5
  br i1 %i.is, label %.critedge149.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.it = icmp eq i32 %i.ha, 5
  %i.iu = trunc i64 %i.hz to i1
  %i.iv = or i1 %i.di, %i.iu
  %or.cond249 = select i1 %i.it, i1 %i.iv, i1 false
  br i1 %or.cond249, label %.critedge149.thread, label %.critedge151

bb.as:                                            ; preds = %.thread293
  %.1229292298 = trunc nsw i64 %.1229292298.in to i32
  %i.iw = lshr i32 %i.gm, 31
  %i.ix = or i64 %i.em, %i.df
  %i.iy = icmp ne i64 %i.ix, 0
  %i.iz = zext i1 %i.iy to i32
  %i.ja = or i32 %.1229292298, %i.iz
  %i.jb = and i32 %i.ja, %i.iw
  %i.jc = trunc nuw i32 %i.jb to i1
  br i1 %i.jc, label %.critedge149, label %.critedge151

.critedge149.thread:                              ; preds = %bb.ar, %bb.ak, %.split241, %bb.aj, %_ZZN3fmt3v116detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEEENKUljPcE_clEjS8_.exit166.thread, %bb.aq
  %i.jd = load ptr, ptr %3, align 8, !tbaa !85
  %i.je = zext nneg i32 %.0211 to i64             ; 2 uses
  %i.jf = getelementptr i8, ptr %i.jd, i64 %i.je
  %i.jg = getelementptr i8, ptr %i.jf, i64 -1     ; 2 uses
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !82
  %i.ji = add i8 %i.jh, 1
  store i8 %i.ji, ptr %i.jg, align 1, !tbaa !82
  br label %.lr.ph.preheader

.critedge149:                                     ; preds = %.thread293, %bb.as
  %i.jj = load ptr, ptr %3, align 8, !tbaa !85
  %i.jk = zext nneg i32 %.0211 to i64             ; 2 uses
  %i.jl = getelementptr i8, ptr %i.jj, i64 %i.jk
  %i.jm = getelementptr i8, ptr %i.jl, i64 -1     ; 2 uses
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !82
  %i.jo = add i8 %i.jn, 1
  store i8 %i.jo, ptr %i.jm, align 1, !tbaa !82
  %.not265 = icmp eq i32 %.0211, 1
  br i1 %.not265, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge149.thread, %.critedge149
  %i.jp = phi i64 [ %i.je, %.critedge149.thread ], [ %i.jk, %.critedge149 ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.at
  %indvars.iv = phi i64 [ %i.jp, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.at ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.jq = load ptr, ptr %3, align 8, !tbaa !85
  %5 = and i64 %indvars.iv.next, 4294967295
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %5 ; 2 uses
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !82
  %i.jt = icmp sgt i8 %i.js, 57
  br i1 %i.jt, label %bb.at, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.at, %.critedge149
  %i.ju = phi i64 [ 1, %.critedge149 ], [ %i.jp, %bb.at ], [ %i.jp, %.lr.ph ]
  %i.jv = load ptr, ptr %3, align 8, !tbaa !85    ; 2 uses
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !82
  %i.jx = icmp sgt i8 %i.jw, 57
  br i1 %i.jx, label %bb.au, label %.critedge151

bb.at:                                            ; preds = %.lr.ph
  store i8 48, ptr %i.jr, align 1, !tbaa !82
  %i.jy = load ptr, ptr %3, align 8, !tbaa !85
  %i.jz = getelementptr i8, ptr %i.jy, i64 %indvars.iv
  %i.ka = getelementptr i8, ptr %i.jz, i64 -2     ; 2 uses
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !82
  %i.kc = add i8 %i.kb, 1
  store i8 %i.kc, ptr %i.ka, align 1, !tbaa !82
  %6 = trunc nuw i64 %indvars.iv to i32
  %7 = icmp sgt i32 %6, 2
  br i1 %7, label %.lr.ph, label %.critedge, !llvm.loop !765

bb.au:                                            ; preds = %.critedge
  store i8 49, ptr %i.jv, align 1, !tbaa !82
  br i1 %i.c, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.kd = add nuw nsw i32 %.0211, 1
  %i.ke = load ptr, ptr %3, align 8, !tbaa !85
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.ju
  store i8 48, ptr %i.kf, align 1, !tbaa !82
  br label %.critedge151

bb.aw:                                            ; preds = %bb.au
  %i.kg = add nsw i32 %i.ei, 1
  store i32 %i.kg, ptr %i.a, align 4, !tbaa !112
  br label %.critedge151

.critedge151:                                     ; preds = %.split241, %bb.ar, %bb.ak, %.critedge, %bb.aw, %bb.av, %bb.as
  %.1212 = phi i32 [ %i.kd, %bb.av ], [ %.0211, %bb.aw ], [ %.0211, %.critedge ], [ %.0211, %bb.as ], [ 9, %bb.ak ], [ 18, %bb.ar ], [ %.0211, %.split241 ]
  %i.kh = zext nneg i32 %.1212 to i64             ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !86 ; 2 uses
  %i.kk = icmp ult i64 %i.kj, %i.kh
  br i1 %i.kk, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.critedge151
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !84
  tail call void %i.km(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.kh), !inline_history !33
  %.pre.i168 = load i64, ptr %i.ki, align 8, !tbaa !86
  br label %bb.ay

.thread243:                                       ; preds = %bb.t
  %i.kn = add nsw i32 %i.ax, -3
  %i.ko = add nsw i32 %i.kn, %.0118
  store i32 %i.ko, ptr %i.a, align 4, !tbaa !112
  %i.kp = and i32 %.sroa.1.0.extract.trunc, 131072
  %.not144 = icmp eq i32 %i.kp, 0
  br i1 %.not144, label %bb.ba, label %bb.az

bb.ay:                                            ; preds = %bb.ax, %.critedge151
  %i.kq = phi i64 [ %i.kj, %.critedge151 ], [ %.pre.i168, %bb.ax ]
  %..i167 = tail call i64 @llvm.umin.i64(i64 %i.kh, i64 %i.kq)
  %i.kr = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %..i167, ptr %i.kr, align 8, !tbaa !72
  br label %.thread

bb.az:                                            ; preds = %.thread243
  %i.ks = fptrunc double %0 to float
  %i.kt = bitcast float %i.ks to i32              ; 2 uses
  %i.ku = and i32 %i.kt, 8388607                  ; 2 uses
  %i.kv = zext nneg i32 %i.ku to i128             ; 2 uses
  %i.kw = and i32 %i.kt, 2139095040               ; 3 uses
  %i.kx = icmp eq i32 %i.kw, 0                    ; 2 uses
  %i.ky = lshr exact i32 %i.kw, 23
  %i.kz = or disjoint i128 %i.kv, 8388608
  %i.la = add nsw i32 %i.ky, -150
  %storemerge.i = select i1 %i.kx, i128 %i.kv, i128 %i.kz
  %.0.i170 = select i1 %i.kx, i32 -149, i32 %i.la
  %i.lb = icmp eq i32 %i.ku, 0
  %i.lc = icmp samesign ugt i32 %i.kw, 16777215
  %i.ld = and i1 %i.lb, %i.lc
  br label %bb.bb

bb.ba:                                            ; preds = %.thread243
  %i.le = zext nneg i64 %i.ak to i128             ; 2 uses
  %i.lf = or disjoint i128 %i.le, 4503599627370496
  %i.lg = add nsw i32 %i.an, -1075
  %storemerge.i171 = select i1 %.not, i128 %i.le, i128 %i.lf
  %.0.i172 = select i1 %.not, i32 -1074, i32 %i.lg
  %i.lh = icmp eq i64 %i.ak, 0
  %i.li = icmp samesign ugt i64 %i.al, 9007199254740991
  %i.lj = and i1 %i.lh, %i.li
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sroa.0.0 = phi i128 [ %storemerge.i171, %bb.ba ], [ %storemerge.i, %bb.az ]
  %.sroa.6.0 = phi i32 [ %.0.i172, %bb.ba ], [ %.0.i170, %bb.az ]
  %i.lk = phi i1 [ %i.lj, %bb.ba ], [ %i.ld, %bb.az ]
  %spec.select = zext i1 %i.lk to i32             ; 2 uses
  %i.ll = or disjoint i32 %spec.select, 4
  %.1124 = select i1 %i.c, i32 %i.ll, i32 %spec.select
  %i.lm = tail call i32 @llvm.umin.i32(i32 %.0211, i32 767)
  store i128 %.sroa.0.0, ptr %4, align 16, !tbaa !220
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !112
  call void @_ZN3fmt3v116detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi(ptr noundef nonnull byval(%"struct.fmt::v11::detail::basic_fp") align 16 %4, i32 noundef %.1124, i32 noundef %i.lm, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %.thread

.thread:                                          ; preds = %bb.ay, %bb.w, %bb.aa, %bb.z, %bb.bb
  %i.ln = and i32 %.sroa.1.0.extract.trunc, 262144
  %.not145 = icmp ne i32 %i.ln, 0
  %or.cond153.not = select i1 %i.c, i1 true, i1 %.not145
  br i1 %or.cond153.not, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %.thread
  %i.lo = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !72 ; 2 uses
  %.not146260 = icmp eq i64 %i.lp, 0
  br i1 %.not146260, label %.critedge3.thread, label %.lr.ph262

.lr.ph262:                                        ; preds = %bb.bc
  %.promoted = load i32, ptr %i.a, align 4
  %i.lq = load ptr, ptr %3, align 8, !tbaa !85
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph262, %bb.be
  %.0261 = phi i64 [ %i.lp, %.lr.ph262 ], [ %i.ls, %bb.be ] ; 5 uses
  %i.lr = phi i32 [ %.promoted, %.lr.ph262 ], [ %i.lw, %bb.be ]
  %i.ls = add i64 %.0261, -1                      ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.ls
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !82
  %i.lv = icmp eq i8 %i.lu, 48
  br i1 %i.lv, label %bb.be, label %.critedge3

bb.be:                                            ; preds = %bb.bd
  %i.lw = add nsw i32 %i.lr, 1                    ; 2 uses
  store i32 %i.lw, ptr %i.a, align 4, !tbaa !112
  %.not146 = icmp eq i64 %i.ls, 0
  br i1 %.not146, label %.critedge3.thread, label %bb.bd, !llvm.loop !766

.critedge3.thread:                                ; preds = %bb.be, %bb.bc
  %i.lx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !86
  br label %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit175

.critedge3:                                       ; preds = %bb.bd
  %i.lz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !86 ; 2 uses
  %i.mb = icmp ugt i64 %.0261, %i.ma
  br i1 %i.mb, label %bb.bf, label %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit175

bb.bf:                                            ; preds = %.critedge3
  %i.mc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !84
  call void %i.md(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %.0261), !inline_history !33
  %.pre.i174 = load i64, ptr %i.lz, align 8, !tbaa !86
  br label %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit175

_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit175: ; preds = %.critedge3.thread, %.critedge3, %bb.bf
  %.0.lcssa302 = phi i64 [ %.0261, %.critedge3 ], [ %.0261, %bb.bf ], [ 0, %.critedge3.thread ]
  %i.me = phi i64 [ %i.ma, %.critedge3 ], [ %.pre.i174, %bb.bf ], [ %i.ly, %.critedge3.thread ]
  %..i173 = call i64 @llvm.umin.i64(i64 %.0.lcssa302, i64 %i.me)
  store i64 %..i173, ptr %i.lo, align 8, !tbaa !72
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit175, %.thread
  %i.mf = load i32, ptr %i.a, align 4, !tbaa !112
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.j, %bb.i
  %.0116 = phi i32 [ %.sroa.469.0.extract.trunc, %bb.i ], [ %i.ah, %bb.j ], [ %i.mf, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  %.1117 = phi i32 [ %i.z, %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit ], [ 0, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit ], [ %.0116, %bb.bh ]
  ret i32 %.1117
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEmTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %0, i64 noundef %1) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 5 uses
  %i.b = or i64 %1, 1
  %i.c = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = xor i64 %i.c, 63
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail15do_count_digitsEmE9bsr2log10, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !82
  %i.g = zext i8 %i.f to i64                      ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !73
  %i.j = icmp ult i64 %1, %i.i
  %.neg.i.i = sext i1 %i.j to i64
  %i.k = add nsw i64 %.neg.i.i, %i.g              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !72   ; 2 uses
  %i.n = add i64 %i.k, %i.m                       ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !86
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !84
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.n), !inline_history !8
  %.pre.i = load i64, ptr %i.o, align 8, !tbaa !86
  %i.t = icmp ult i64 %.pre.i, %i.n
  br i1 %i.t, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit: ; preds = %bb.a, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i
  store i64 %i.n, ptr %i.l, align 8, !tbaa !72
  %i.u = load ptr, ptr %0, align 8, !tbaa !85     ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v116detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.k ; 2 uses
end_hunk_1
