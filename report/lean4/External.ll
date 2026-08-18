inline.NumInlined: 1078
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@l_Std_Internal_Parsec_manyCore___at___00__private_Lean_Meta_Tactic_BVDecide_External_0__Lean_Meta_Tactic_BVDecide_External_ModelParser_parsePartialAssignment_spec__1:bb.a

bb.ep:                                            ; preds = %bb.eo
  %i.gz = add nuw i32 %.val.i.i447, 1
  store i32 %i.gz, ptr %i.gv, align 4, !tbaa !11
  br label %lean_inc.exit310

bb.eq:                                            ; preds = %bb.eo
  %.not.i.i448 = icmp eq i32 %.val.i.i447, 0
  br i1 %.not.i.i448, label %lean_inc.exit310, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ha = atomicrmw sub ptr %i.gv, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit310

lean_inc.exit310:                                 ; preds = %bb.er, %bb.eq, %bb.ep, %lean_inc.exit312
  %i.hb = load i32, ptr %i.gm, align 8, !tbaa !11 ; 3 uses
  %i.hc = icmp sgt i32 %i.hb, 1
  br i1 %i.hc, label %bb.es, label %bb.et, !prof !10

bb.es:                                            ; preds = %lean_inc.exit310
  %i.hd = add nsw i32 %i.hb, -1
  store i32 %i.hd, ptr %i.gm, align 8, !tbaa !11
  br label %lean_dec_ref.exit369

bb.et:                                            ; preds = %lean_inc.exit310
  %.not.i368 = icmp eq i32 %i.hb, 0
  br i1 %.not.i368, label %lean_dec_ref.exit369, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gm) #7
  br label %lean_dec_ref.exit369

lean_dec_ref.exit369:                             ; preds = %bb.es, %bb.et, %bb.eu
  br i1 %.not.i311, label %lean_nat_eq.exit380, label %.split831, !prof !9

.split831:                                        ; preds = %lean_dec_ref.exit369
  %i.he = icmp eq ptr %i.go, inttoptr (i64 1 to ptr)
  br i1 %i.he, label %bb.fl, label %bb.ev

lean_nat_eq.exit380:                              ; preds = %lean_dec_ref.exit369
  %i.hf = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %i.go, ptr noundef nonnull inttoptr (i64 1 to ptr)) #7
  br i1 %i.hf, label %bb.fl, label %bb.ev

bb.ev:                                            ; preds = %.split831, %lean_nat_eq.exit380
  br i1 %.not.i327.a, label %bb.ew, label %lean_dec.exit277

bb.ew:                                            ; preds = %bb.ev
  %i.hg = load i32, ptr %i.d, align 4, !tbaa !11  ; 3 uses
  %i.hh = icmp sgt i32 %i.hg, 1
  br i1 %i.hh, label %bb.ex, label %bb.ey, !prof !10

bb.ex:                                            ; preds = %bb.ew
  %i.hi = add nsw i32 %i.hg, -1
  store i32 %i.hi, ptr %i.d, align 4, !tbaa !11
  br label %lean_dec.exit277

bb.ey:                                            ; preds = %bb.ew
  %.not.i352 = icmp eq i32 %i.hg, 0
  br i1 %.not.i352, label %lean_dec.exit277, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.d) #7
  br label %lean_dec.exit277

lean_dec.exit277:                                 ; preds = %bb.ez, %bb.ey, %bb.ex, %bb.ev
  %i.hj = load i32, ptr %.0186, align 8, !tbaa !11 ; 3 uses
  %i.hk = icmp sgt i32 %i.hj, 1
  br i1 %i.hk, label %bb.fa, label %bb.fb, !prof !10

bb.fa:                                            ; preds = %lean_dec.exit277
  %i.hl = add nsw i32 %i.hj, -1
  store i32 %i.hl, ptr %.0186, align 8, !tbaa !11
  br label %lean_dec_ref.exit367

bb.fb:                                            ; preds = %lean_dec.exit277
  %.not.i366 = icmp eq i32 %i.hj, 0
  br i1 %.not.i366, label %lean_dec_ref.exit367, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0186) #7
  br label %lean_dec_ref.exit367

lean_dec_ref.exit367:                             ; preds = %bb.fa, %bb.fb, %bb.fc
  %i.hm = icmp ult ptr %i.go, inttoptr (i64 4294967296 to ptr)
  %or.cond.i451 = or i1 %i.hm, %.not.i311
  br i1 %or.cond.i451, label %lean_nat_to_int.exit453, label %bb.fd

bb.fd:                                            ; preds = %lean_dec_ref.exit367
  %i.hn = lshr i64 %i.gp, 1
  %i.ho = tail call ptr @lean_big_size_t_to_int(i64 noundef %i.hn) #7 ; 2 uses
  %.pre = ptrtoint ptr %i.ho to i64
  br label %lean_nat_to_int.exit453

lean_nat_to_int.exit453:                          ; preds = %lean_dec_ref.exit367, %bb.fd
  %.pre-phi = phi i64 [ %i.gp, %lean_dec_ref.exit367 ], [ %.pre, %bb.fd ] ; 2 uses
  %.1.i452 = phi ptr [ %i.go, %lean_dec_ref.exit367 ], [ %i.ho, %bb.fd ] ; 4 uses
  %i.hp = and i64 %.pre-phi, 1
  %.not.i454 = icmp eq i64 %i.hp, 0
  br i1 %.not.i454, label %bb.fh, label %bb.fe, !prof !9

bb.fe:                                            ; preds = %lean_nat_to_int.exit453
  %i.hq = shl i64 %.pre-phi, 31
  %i.hr = ashr i64 %i.hq, 32                      ; 2 uses
  %i.hs = icmp sgt i64 %i.hr, -2147483648
  br i1 %i.hs, label %bb.ff, label %bb.fg, !prof !10

bb.ff:                                            ; preds = %bb.fe
  %.neg.i = mul i64 %i.hr, 8589934590
  %i.ht = and i64 %.neg.i, 8589934590
  %i.hu = or disjoint i64 %i.ht, 1
  %i.hv = inttoptr i64 %i.hu to ptr
  br label %lean_int_neg.exit.thread

bb.fg:                                            ; preds = %bb.fe
  %i.hw = tail call ptr @lean_big_int64_to_int(i64 noundef 2147483648) #7
  br label %lean_int_neg.exit.thread

bb.fh:                                            ; preds = %lean_nat_to_int.exit453
  %i.hx = tail call ptr @lean_int_big_neg(ptr noundef %.1.i452) #7 ; 3 uses
  %i.hy = load i32, ptr %.1.i452, align 4, !tbaa !11 ; 3 uses
  %i.hz = icmp sgt i32 %i.hy, 1
  br i1 %i.hz, label %bb.fi, label %bb.fj, !prof !10

bb.fi:                                            ; preds = %bb.fh
  %i.ia = add nsw i32 %i.hy, -1
  store i32 %i.ia, ptr %.1.i452, align 4, !tbaa !11
  br label %lean_int_neg.exit.thread

bb.fj:                                            ; preds = %bb.fh
  %.not.i354 = icmp eq i32 %i.hy, 0
  br i1 %.not.i354, label %lean_int_neg.exit.thread, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.1.i452) #7
  br label %lean_int_neg.exit.thread

bb.fl:                                            ; preds = %.split831, %lean_nat_eq.exit380
  br i1 %.not.i309, label %bb.fm, label %lean_dec.exit273

bb.fm:                                            ; preds = %bb.fl
  %i.ib = load i32, ptr %i.gv, align 4, !tbaa !11 ; 3 uses
  %i.ic = icmp sgt i32 %i.ib, 1
  br i1 %i.ic, label %bb.fn, label %bb.fo, !prof !10

bb.fn:                                            ; preds = %bb.fm
  %i.id = add nsw i32 %i.ib, -1
  store i32 %i.id, ptr %i.gv, align 4, !tbaa !11
  br label %lean_dec.exit273

bb.fo:                                            ; preds = %bb.fm
  %.not.i356 = icmp eq i32 %i.ib, 0
  br i1 %.not.i356, label %lean_dec.exit273, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.gv) #7
  br label %lean_dec.exit273

lean_dec.exit273:                                 ; preds = %bb.fp, %bb.fo, %bb.fn, %bb.fl
  br i1 %.not.i311, label %bb.fq, label %lean_dec.exit271

bb.fq:                                            ; preds = %lean_dec.exit273
  %i.ie = load i32, ptr %i.go, align 4, !tbaa !11 ; 3 uses
  %i.if = icmp sgt i32 %i.ie, 1
  br i1 %i.if, label %bb.fr, label %bb.fs, !prof !10

bb.fr:                                            ; preds = %bb.fq
  %i.ig = add nsw i32 %i.ie, -1
  store i32 %i.ig, ptr %i.go, align 4, !tbaa !11
  br label %lean_dec.exit271

bb.fs:                                            ; preds = %bb.fq
  %.not.i358 = icmp eq i32 %i.ie, 0
  br i1 %.not.i358, label %lean_dec.exit271, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.go) #7
  br label %lean_dec.exit271

lean_dec.exit271:                                 ; preds = %bb.ft, %bb.fs, %bb.fr, %lean_dec.exit273
  br i1 %.not.i327.a, label %bb.fu, label %lean_dec.exit.thread

bb.fu:                                            ; preds = %lean_dec.exit271
  %.val.i.i456.a = load i32, ptr %i.d, align 4, !tbaa !11 ; 3 uses
  %i.ih = icmp sgt i32 %.val.i.i456.a, 0
  br i1 %i.ih, label %bb.fv, label %bb.fw, !prof !10

bb.fv:                                            ; preds = %bb.fu
  %i.ii = add nuw i32 %.val.i.i456.a, 1
  store i32 %i.ii, ptr %i.d, align 4, !tbaa !11
  br label %bb.fy

bb.fw:                                            ; preds = %bb.fu
  %.not.i.i457.a = icmp eq i32 %.val.i.i456.a, 0
  br i1 %.not.i.i457.a, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.ij = atomicrmw sub ptr %i.d, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.fy

bb.fy:                                            ; preds = %bb.gs, %bb.gr, %bb.gq, %bb.gx, %bb.gw, %bb.gv, %bb.t, %bb.s, %bb.r, %bb.af, %bb.ae, %bb.ad, %bb.cr, %bb.cq, %bb.cp, %bb.dh, %bb.dg, %bb.df, %bb.fx, %bb.fw, %bb.fv, %bb.j, %bb.i, %bb.h
  %.11241512 = phi ptr [ inttoptr (i64 1 to ptr), %bb.j ], [ @l___private_Lean_Meta_Tactic_BVDecide_External_0__Lean_Meta_Tactic_BVDecide_External_ModelParser_parsePartialAssignment_wsLit___closed__9_value, %bb.gs ], [ inttoptr (i64 1 to ptr), %bb.h ], [ inttoptr (i64 1 to ptr), %bb.i ], [ %.0.i400, %bb.t ], [ %.0.i400, %bb.s ], [ %.0.i400, %bb.r ], [ inttoptr (i64 1 to ptr), %bb.af ], [ inttoptr (i64 1 to ptr), %bb.ae ], [ inttoptr (i64 1 to ptr), %bb.ad ], [ @l___private_Lean_Meta_Tactic_BVDecide_External_0__Lean_Meta_Tactic_BVDecide_External_ModelParser_parsePartialAssignment_wsLit___closed__14_value, %bb.cr ], [ @l___private_Lean_Meta_Tactic_BVDecide_External_0__Lean_Meta_Tactic_BVDecide_External_ModelParser_parsePartialAssignment_wsLit___closed__14_value, %bb.cq ], [ @l___private_Lean_Meta_Tactic_BVDecide_External_0__Lean_Meta_Tactic_BVDecide_External_ModelParser_parsePartialAssignment_wsLit___closed__14_value, %bb.cp ], [ inttoptr (i64 1 to ptr), %bb.dh ], [ inttoptr (i64 1 to ptr), %bb.dg ], [ inttoptr (i64 1 to ptr), %bb.df ], [ @l___private_Lean_Meta_Tactic_BVDecide_External_0__Lean_Meta_Tactic_BVDecide_External_ModelParser_parsePartialAssignment_wsLit___closed__14_value, %bb.fx ], [ @l___private_Lean_Meta_Tactic_BVDecide_External_0__Lean_Meta_Tactic_BVDecide_External_ModelParser_parsePartialAssignment_wsLit___closed__14_value, %bb.fw ], [ @l___private_Lean_Meta_Tactic_BVDecide_External_0__Lean_Meta_Tactic_BVDecide_External_ModelParser_parsePartialAssignment_wsLit___closed__14_value, %bb.fv ], [ @l___private_Lean_Meta_Tactic_BVDecide_External_0__Lean_Meta_Tactic_BVDecide_External_ModelParser_parsePartialAssignment_wsLit___closed__9_value, %bb.gv ], [ @l___private_Lean_Meta_Tactic_BVDecide_External_0__Lean_Meta_Tactic_BVDecide_External_ModelParser_parsePartialAssignment_wsLit___closed__9_value, %bb.gw ], [ @l___private_Lean_Meta_Tactic_BVDecide_External_0__Lean_Meta_Tactic_BVDecide_External_ModelParser_parsePartialAssignment_wsLit___closed__9_value, %bb.gx ], [ @l___private_Lean_Meta_Tactic_BVDecide_External_0__Lean_Meta_Tactic_BVDecide_External_ModelParser_parsePartialAssignment_wsLit___closed__9_value, %bb.gq ], [ @l___private_Lean_Meta_Tactic_BVDecide_External_0__Lean_Meta_Tactic_BVDecide_External_ModelParser_parsePartialAssignment_wsLit___closed__9_value, %bb.gr ] ; 5 uses
  %i.ik = tail call zeroext i1 @lean_nat_big_eq(ptr noundef nonnull %i.d, ptr noundef nonnull %i.d) #7 ; 4 uses
  %i.il = load i32, ptr %i.d, align 4, !tbaa !11  ; 3 uses
  %i.im = icmp sgt i32 %i.il, 1
  br i1 %i.im, label %bb.fz, label %bb.ga, !prof !10

bb.fz:                                            ; preds = %bb.fy
  %i.in = add nsw i32 %i.il, -1                   ; 2 uses
  store i32 %i.in, ptr %i.d, align 4, !tbaa !11
  br label %bb.gc

bb.ga:                                            ; preds = %bb.fy
  %.not.i360 = icmp eq i32 %i.il, 0
  br i1 %.not.i360, label %.thread846, label %bb.gb

.thread846:                                       ; preds = %bb.ga
  br i1 %i.ik, label %lean_dec.exit.thread, label %bb.ge

bb.gb:                                            ; preds = %bb.ga
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.d) #7
  %.pr = load i32, ptr %i.d, align 4, !tbaa !11
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.fz
  %i.io = phi i32 [ %.pr, %bb.gb ], [ %i.in, %bb.fz ] ; 3 uses
  %i.ip = icmp sgt i32 %i.io, 1
  br i1 %i.ip, label %.split852, label %bb.gd, !prof !24

.split852:                                        ; preds = %bb.gc
  %i.iq = add nsw i32 %i.io, -1
  store i32 %i.iq, ptr %i.d, align 4, !tbaa !11
  br i1 %i.ik, label %lean_dec.exit.thread, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %.not.i362 = icmp eq i32 %i.io, 0
  br i1 %.not.i362, label %lean_dec.exit, label %.split850

.split850:                                        ; preds = %bb.gd
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.d) #7
  br i1 %i.ik, label %lean_dec.exit.thread, label %bb.ge

lean_dec.exit:                                    ; preds = %bb.gd
  br i1 %i.ik, label %lean_dec.exit.thread, label %bb.ge

bb.ge:                                            ; preds = %.split852, %.thread846, %.split850, %lean_dec.exit
  %i.ir = load i32, ptr %.0184, align 4, !tbaa !11 ; 3 uses
  %i.is = icmp sgt i32 %i.ir, 1
  br i1 %i.is, label %bb.gf, label %bb.gg, !prof !10

bb.gf:                                            ; preds = %bb.ge
  %i.it = add nsw i32 %i.ir, -1
  store i32 %i.it, ptr %.0184, align 4, !tbaa !11
  br label %lean_dec_ref.exit365

bb.gg:                                            ; preds = %bb.ge
  %.not.i364 = icmp eq i32 %i.ir, 0
  br i1 %.not.i364, label %lean_dec_ref.exit365, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0184) #7
  br label %lean_dec_ref.exit365

lean_dec_ref.exit365:                             ; preds = %bb.gf, %bb.gg, %bb.gh
  %i.iu = ptrtoint ptr %.11241512 to i64
  %i.iv = and i64 %i.iu, 1
  %.not.i305 = icmp eq i64 %i.iv, 0
  br i1 %.not.i305, label %bb.gi, label %lean_inc.exit306

bb.gi:                                            ; preds = %lean_dec_ref.exit365
  %.val.i.i459 = load i32, ptr %.11241512, align 4, !tbaa !11 ; 3 uses
  %i.iw = icmp sgt i32 %.val.i.i459, 0
  br i1 %i.iw, label %bb.gj, label %bb.gk, !prof !10

bb.gj:                                            ; preds = %bb.gi
  %i.ix = add nuw i32 %.val.i.i459, 1
  store i32 %i.ix, ptr %.11241512, align 4, !tbaa !11
  br label %lean_inc.exit306

bb.gk:                                            ; preds = %bb.gi
  %.not.i.i460 = icmp eq i32 %.val.i.i459, 0
  br i1 %.not.i.i460, label %lean_inc.exit306, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.iy = atomicrmw sub ptr %.11241512, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit306

lean_inc.exit306:                                 ; preds = %bb.gl, %bb.gk, %bb.gj, %lean_dec_ref.exit365
  tail call void @lean_inc_heartbeat() #7
  %i.iz = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 2 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %bb.gm, label %lean_alloc_ctor.exit462

bb.gm:                                            ; preds = %lean_inc.exit306
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_dec.exit.thread:                             ; preds = %lean_nat_lt.exit.thread, %bb.go, %bb.gt, %lean_obj_once.exit, %lean_dec.exit301, %lean_dec.exit289, %lean_dec.exit285, %lean_dec.exit271, %.split852, %.thread846, %.split850, %lean_dec.exit
  tail call void @lean_inc_heartbeat() #7
  %i.jb = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 2 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %bb.gn, label %lean_alloc_ctor.exit462

bb.gn:                                            ; preds = %lean_dec.exit.thread
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

bb.go:                                            ; preds = %bb.dx, %bb.dw, %bb.dv, %bb.dl, %bb.dt, %bb.dp, %bb.do, %bb.dn
  br i1 %.not.i327.a, label %bb.gp, label %lean_dec.exit.thread

bb.gp:                                            ; preds = %bb.go
  %.val.i.i464 = load i32, ptr %i.d, align 4, !tbaa !11 ; 3 uses
  %i.jd = icmp sgt i32 %.val.i.i464, 0
  br i1 %i.jd, label %bb.gq, label %bb.gr, !prof !10

bb.gq:                                            ; preds = %bb.gp
  %i.je = add nuw i32 %.val.i.i464, 1
  store i32 %i.je, ptr %i.d, align 4, !tbaa !11
  br label %bb.fy

bb.gr:                                            ; preds = %bb.gp
  %.not.i.i465 = icmp eq i32 %.val.i.i464, 0
  br i1 %.not.i.i465, label %bb.fy, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.jf = atomicrmw sub ptr %i.d, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.fy

bb.gt:                                            ; preds = %bb.ax, %bb.am, %bb.au, %bb.aw, %bb.aq, %bb.ap, %bb.ao, %bb.ay
  br i1 %.not.i327.a, label %bb.gu, label %lean_dec.exit.thread

bb.gu:                                            ; preds = %bb.gt
  %.val.i.i467 = load i32, ptr %i.d, align 4, !tbaa !11 ; 3 uses
  %i.jg = icmp sgt i32 %.val.i.i467, 0
  br i1 %i.jg, label %bb.gv, label %bb.gw, !prof !10

bb.gv:                                            ; preds = %bb.gu
  %i.jh = add nuw i32 %.val.i.i467, 1
  store i32 %i.jh, ptr %i.d, align 4, !tbaa !11
  br label %bb.fy

bb.gw:                                            ; preds = %bb.gu
  %.not.i.i468 = icmp eq i32 %.val.i.i467, 0
  br i1 %.not.i.i468, label %bb.fy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.ji = atomicrmw sub ptr %i.d, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.fy

lean_int_neg.exit.thread:                         ; preds = %bb.fg, %bb.ff, %bb.fi, %bb.fj, %bb.fk, %bb.ce, %lean_dec_ref.exit371
  %.10201 = phi ptr [ %i.hx, %bb.fj ], [ %i.cv, %lean_dec_ref.exit371 ], [ %i.dv, %bb.ce ], [ %i.hx, %bb.fi ], [ %i.hx, %bb.fk ], [ %i.hw, %bb.fg ], [ %i.hv, %bb.ff ]
  %.10 = phi ptr [ %i.gv, %bb.fj ], [ %i.dc, %lean_dec_ref.exit371 ], [ %i.dc, %bb.ce ], [ %i.gv, %bb.fi ], [ %i.gv, %bb.fk ], [ %i.gv, %bb.fg ], [ %i.gv, %bb.ff ]
  %i.jj = tail call ptr @lean_array_push(ptr noundef %.0184, ptr noundef %.10201) #7
  br label %bb.b

lean_alloc_ctor.exit462:                          ; preds = %lean_dec.exit.thread, %lean_inc.exit306
  %.sink965 = phi ptr [ %i.iz, %lean_inc.exit306 ], [ %i.jb, %lean_dec.exit.thread ] ; 5 uses
  %.sink = phi i32 [ 16908312, %lean_inc.exit306 ], [ 131096, %lean_dec.exit.thread ]
  %.0184901.sink = phi ptr [ %.11241512, %lean_inc.exit306 ], [ %.0184, %lean_dec.exit.thread ]
  %i.jk = getelementptr inbounds nuw i8, ptr %.sink965, i64 4
  store i32 1, ptr %.sink965, align 4, !tbaa !11
  store i32 %.sink, ptr %i.jk, align 4
  %i.jl = getelementptr inbounds nuw i8, ptr %.sink965, i64 8
  store ptr %.0186, ptr %i.jl, align 8, !tbaa !13
  %i.jm = getelementptr inbounds nuw i8, ptr %.sink965, i64 16
  store ptr %.0184901.sink, ptr %i.jm, align 8, !tbaa !13
  ret ptr %.sink965
}

declare ptr @lean_array_push(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @l___private_Lean_Meta_Tactic_BVDecide_External_0__Lean_Meta_Tactic_BVDecide_External_ModelParser_parsePartialAssignment(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 14 uses
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %.val486 = load i64, ptr %i.e, align 8, !tbaa !17
  %i.f = shl i64 %.val486, 1
  %i.g = or disjoint i64 %i.f, 1
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.j = and i64 %i.i, 1
  %.not.i474 = icmp eq i64 %i.j, 0                ; 5 uses
  br i1 %.not.i474, label %lean_nat_lt.exit, label %.split, !prof !9

.split:                                           ; preds = %bb.a
  %i.k = icmp ult ptr %i.d, %i.h
  br i1 %i.k, label %bb.d, label %bb.b

lean_nat_lt.exit:                                 ; preds = %bb.a
  %i.l = tail call zeroext i1 @lean_nat_big_lt(ptr noundef %i.d, ptr noundef nonnull %i.h) #7
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.split, %lean_nat_lt.exit
  tail call void @lean_inc_heartbeat() #7
  %i.m = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %lean_alloc_ctor.exit

bb.c:                                             ; preds = %bb.b
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 1, ptr %i.m, align 4, !tbaa !11
  store i32 16908312, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %0, ptr %i.p, align 8, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.q, align 8, !tbaa !13
  br label %lean_inc.exit397

bb.d:                                             ; preds = %.split, %lean_nat_lt.exit
  %i.r = load atomic i32, ptr @l___private_Lean_Meta_Tactic_BVDecide_External_0__Lean_Meta_Tactic_BVDecide_External_ModelParser_parsePartialAssignment___closed__0_once seq_cst, align 4, !tbaa !19
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr @l___private_Lean_Meta_Tactic_BVDecide_External_0__Lean_Meta_Tactic_BVDecide_External_ModelParser_parsePartialAssignment___closed__0, align 1, !tbaa !21
  br label %lean_uint8_once.exit

bb.f:                                             ; preds = %bb.d
  %i.u = tail call zeroext i8 @lean_uint8_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_BVDecide_External_0__Lean_Meta_Tactic_BVDecide_External_ModelParser_parsePartialAssignment___closed__0, ptr noundef nonnull @l___private_Lean_Meta_Tactic_BVDecide_External_0__Lean_Meta_Tactic_BVDecide_External_ModelParser_parsePartialAssignment___closed__0_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_BVDecide_External_0__Lean_Meta_Tactic_BVDecide_External_ModelParser_parsePartialAssignment___closed__0) #7
  br label %lean_uint8_once.exit

lean_uint8_once.exit:                             ; preds = %bb.e, %bb.f
  %.0.i488 = phi i8 [ %i.t, %bb.e ], [ %i.u, %bb.f ]
  %i.v = lshr i64 %i.i, 1                         ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  %i.y = load i8, ptr %i.x, align 1, !tbaa !21
  %.not = icmp eq i8 %i.y, %.0.i488
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %lean_uint8_once.exit
  %i.z = load atomic i32, ptr @l___private_Lean_Meta_Tactic_BVDecide_External_0__Lean_Meta_Tactic_BVDecide_External_ModelParser_parsePartialAssignment___closed__5_once seq_cst, align 4, !tbaa !19
  %i.aa = icmp eq i32 %i.z, 1
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr @l___private_Lean_Meta_Tactic_BVDecide_External_0__Lean_Meta_Tactic_BVDecide_External_ModelParser_parsePartialAssignment___closed__5, align 8, !tbaa !13
  br label %lean_obj_once.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Meta_Tactic_BVDecide_External_0__Lean_Meta_Tactic_BVDecide_External_ModelParser_parsePartialAssignment___closed__5, ptr noundef nonnull @l___private_Lean_Meta_Tactic_BVDecide_External_0__Lean_Meta_Tactic_BVDecide_External_ModelParser_parsePartialAssignment___closed__5_once, ptr noundef nonnull @_init_l___private_Lean_Meta_Tactic_BVDecide_External_0__Lean_Meta_Tactic_BVDecide_External_ModelParser_parsePartialAssignment___closed__5) #7
  br label %lean_obj_once.exit

lean_obj_once.exit:                               ; preds = %bb.h, %bb.i
  %.0.i489 = phi ptr [ %i.ab, %bb.h ], [ %i.ac, %bb.i ]
  tail call void @lean_inc_heartbeat() #7
  %i.ad = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #7 ; 6 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %lean_alloc_ctor.exit490

bb.j:                                             ; preds = %lean_obj_once.exit
  tail call void @lean_internal_panic_out_of_memory() #8
  unreachable

lean_alloc_ctor.exit490:                          ; preds = %lean_obj_once.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 1, ptr %i.ad, align 4, !tbaa !11
  store i32 16908312, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %0, ptr %i.ag, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %.0.i489, ptr %i.ah, align 8, !tbaa !13
  br label %lean_inc.exit397

bb.k:                                             ; preds = %lean_uint8_once.exit
  br i1 %.not.i474, label %bb.l, label %lean_inc.exit419

bb.l:                                             ; preds = %bb.k
  %.val.i.i = load i32, ptr %i.d, align 4, !tbaa !11 ; 3 uses
  %i.ai = icmp sgt i32 %.val.i.i, 0
  br i1 %i.ai, label %bb.m, label %bb.n, !prof !10

bb.m:                                             ; preds = %bb.l
  %i.aj = add nuw i32 %.val.i.i, 1
  store i32 %i.aj, ptr %i.d, align 4, !tbaa !11
  br label %lean_inc.exit419

bb.n:                                             ; preds = %bb.l
  %.not.i.i = icmp eq i32 %.val.i.i, 0
  br i1 %.not.i.i, label %lean_inc.exit419, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = atomicrmw sub ptr %i.d, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit419

lean_inc.exit419:                                 ; preds = %bb.o, %bb.n, %bb.m, %bb.k
  %.val.i.i491 = load i32, ptr %i.b, align 8, !tbaa !11 ; 3 uses
  %i.al = icmp sgt i32 %.val.i.i491, 0
  br i1 %i.al, label %bb.p, label %bb.q, !prof !10

end_hunk_0
