Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/Revert?download=true
inline.NumInlined: 2018
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@l_Lean_Elab_Tactic_Do_ProofMode_elabMRevert:bb.a
bb.fi:                                            ; preds = %bb.fg
  %.not.i.i360 = icmp eq i32 %i.ir, 0
  br i1 %.not.i.i360, label %lean_dec.exit362, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.dm) #6
  br label %lean_dec.exit362

lean_dec.exit362:                                 ; preds = %bb.fh, %bb.fi, %bb.fj, %bb.ff
  %i.iu = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !10 ; 5 uses
  %.val472 = load i32, ptr %i.eh, align 8, !tbaa !12
  %i.iw = icmp eq i32 %.val472, 1
  br i1 %i.iw, label %lean_dec.exit354, label %bb.fk

bb.fk:                                            ; preds = %lean_dec.exit362
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = and i64 %i.ix, 1
  %.not.i450 = icmp eq i64 %i.iy, 0
  br i1 %.not.i450, label %bb.fl, label %lean_inc.exit451

bb.fl:                                            ; preds = %bb.fk
  %.val.i.i538 = load i32, ptr %i.iv, align 4, !tbaa !12 ; 3 uses
  %i.iz = icmp sgt i32 %.val.i.i538, 0
  br i1 %i.iz, label %bb.fm, label %bb.fn, !prof !13

bb.fm:                                            ; preds = %bb.fl
  %i.ja = add nuw i32 %.val.i.i538, 1
  store i32 %i.ja, ptr %i.iv, align 4, !tbaa !12
  br label %lean_inc.exit451

bb.fn:                                            ; preds = %bb.fl
  %.not.i.i539 = icmp eq i32 %.val.i.i538, 0
  br i1 %.not.i.i539, label %lean_inc.exit451, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.jb = atomicrmw add ptr %i.iv, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit451

lean_inc.exit451:                                 ; preds = %bb.fo, %bb.fn, %bb.fm, %bb.fk
  br i1 %.not.i499, label %bb.fp, label %bb.ft

bb.fp:                                            ; preds = %lean_inc.exit451
  %i.jc = load i32, ptr %i.eh, align 8, !tbaa !12 ; 3 uses
  %i.jd = icmp sgt i32 %i.jc, 1
  br i1 %i.jd, label %bb.fq, label %bb.fr, !prof !13

bb.fq:                                            ; preds = %bb.fp
  %i.je = add nsw i32 %i.jc, -1
  store i32 %i.je, ptr %i.eh, align 8, !tbaa !12
  br label %bb.ft

bb.fr:                                            ; preds = %bb.fp
  %.not.i.i356 = icmp eq i32 %i.jc, 0
  br i1 %.not.i.i356, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.eh) #6
  br label %bb.ft

bb.ft:                                            ; preds = %lean_inc.exit451, %bb.fs, %bb.fr, %bb.fq
  tail call void @lean_inc_heartbeat() #6
  %i.jf = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %bb.fu, label %lean_alloc_ctor.exit541

bb.fu:                                            ; preds = %bb.ft
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit541:                          ; preds = %bb.ft
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  store i32 1, ptr %i.jf, align 4, !tbaa !12
  store i32 16842768, ptr %i.jh, align 4
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store ptr %i.iv, ptr %i.ji, align 8, !tbaa !10
  br label %lean_dec.exit354

lean_dec.exit402:                                 ; preds = %lean_alloc_ctor.exit, %bb.bo, %bb.bp, %bb.bq, %bb.bm
  %.3306 = phi ptr [ %i.db, %lean_alloc_ctor.exit ], [ inttoptr (i64 1 to ptr), %bb.bp ], [ inttoptr (i64 1 to ptr), %bb.bq ], [ inttoptr (i64 1 to ptr), %bb.bo ], [ inttoptr (i64 1 to ptr), %bb.bm ] ; 11 uses
  %i.jj = tail call ptr @l_Lean_Elab_Tactic_Do_ProofMode_mStartMainGoal___redArg(ptr noundef %2, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) #6 ; 13 uses
  %i.jk = ptrtoint ptr %i.jj to i64               ; 2 uses
  %i.jl = and i64 %i.jk, 1
  %.not.i542 = icmp eq i64 %i.jl, 0               ; 2 uses
  br i1 %.not.i542, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %lean_dec.exit402
  %i.jm = lshr i64 %i.jk, 1
  %i.jn = trunc i64 %i.jm to i32
  br label %lean_obj_tag.exit545

bb.fw:                                            ; preds = %lean_dec.exit402
  %i.jo = getelementptr i8, ptr %i.jj, i64 4
  %.val.i544 = load i32, ptr %i.jo, align 4
  %i.jp = lshr i32 %.val.i544, 24
  br label %lean_obj_tag.exit545

lean_obj_tag.exit545:                             ; preds = %bb.fv, %bb.fw
  %.0.i543 = phi i32 [ %i.jn, %bb.fv ], [ %i.jp, %bb.fw ]
  %i.jq = icmp eq i32 %.0.i543, 0
  br i1 %i.jq, label %bb.fx, label %bb.ic

bb.fx:                                            ; preds = %lean_obj_tag.exit545
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !10 ; 13 uses
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = and i64 %i.jt, 1
  %.not.i448 = icmp eq i64 %i.ju, 0               ; 3 uses
  br i1 %.not.i448, label %bb.fy, label %lean_inc.exit449

bb.fy:                                            ; preds = %bb.fx
  %.val.i.i546 = load i32, ptr %i.js, align 4, !tbaa !12 ; 3 uses
  %i.jv = icmp sgt i32 %.val.i.i546, 0
  br i1 %i.jv, label %bb.fz, label %bb.ga, !prof !13

bb.fz:                                            ; preds = %bb.fy
  %i.jw = add nuw i32 %.val.i.i546, 1
  store i32 %i.jw, ptr %i.js, align 4, !tbaa !12
  br label %lean_inc.exit449

bb.ga:                                            ; preds = %bb.fy
  %.not.i.i547 = icmp eq i32 %.val.i.i546, 0
  br i1 %.not.i.i547, label %lean_inc.exit449, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.jx = atomicrmw add ptr %i.js, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit449

lean_inc.exit449:                                 ; preds = %bb.gb, %bb.ga, %bb.fz, %bb.fx
  %.val.i549 = load i32, ptr %i.jj, align 8, !tbaa !12 ; 4 uses
  %i.jy = icmp eq i32 %.val.i549, 1
  br i1 %i.jy, label %.preheader.i552, label %bb.gg

.preheader.i552:                                  ; preds = %lean_inc.exit449
  %i.jz = load ptr, ptr %i.jr, align 8, !tbaa !10 ; 4 uses
  %i.ka = ptrtoint ptr %i.jz to i64
  %i.kb = and i64 %i.ka, 1
  %.not.i7.i554 = icmp eq i64 %i.kb, 0
  br i1 %.not.i7.i554, label %bb.gc, label %lean_dec.exit.i555

bb.gc:                                            ; preds = %.preheader.i552
  %i.kc = load i32, ptr %i.jz, align 4, !tbaa !12 ; 3 uses
  %i.kd = icmp sgt i32 %i.kc, 1
  br i1 %i.kd, label %bb.gd, label %bb.ge, !prof !13

bb.gd:                                            ; preds = %bb.gc
  %i.ke = add nsw i32 %i.kc, -1
  store i32 %i.ke, ptr %i.jz, align 4, !tbaa !12
  br label %lean_dec.exit.i555

bb.ge:                                            ; preds = %bb.gc
  %.not.i.i.i558 = icmp eq i32 %i.kc, 0
  br i1 %.not.i.i.i558, label %lean_dec.exit.i555, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jz) #6
  br label %lean_dec.exit.i555

lean_dec.exit.i555:                               ; preds = %bb.gf, %bb.ge, %bb.gd, %.preheader.i552
  tail call void @lean_free_object(ptr noundef nonnull %i.jj) #6
  br label %lean_dec_ref_known.exit559

bb.gg:                                            ; preds = %lean_inc.exit449
  %i.kf = icmp sgt i32 %.val.i549, 1
  br i1 %i.kf, label %bb.gh, label %bb.gi, !prof !13

bb.gh:                                            ; preds = %bb.gg
  %i.kg = add nsw i32 %.val.i549, -1
  store i32 %i.kg, ptr %i.jj, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit559

bb.gi:                                            ; preds = %bb.gg
  %.not.i.i550 = icmp eq i32 %.val.i549, 0
  br i1 %.not.i.i550, label %lean_dec_ref_known.exit559, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jj) #6
  br label %lean_dec_ref_known.exit559

lean_dec_ref_known.exit559:                       ; preds = %lean_dec.exit.i555, %bb.gh, %bb.gi, %bb.gj
  %i.kh = ptrtoint ptr %.3306 to i64              ; 2 uses
  %i.ki = and i64 %i.kh, 1
  %.not.i560 = icmp eq i64 %i.ki, 0
  br i1 %.not.i560, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %lean_dec_ref_known.exit559
  %i.kj = lshr i64 %i.kh, 1
  %i.kk = trunc i64 %i.kj to i32
  br label %lean_obj_tag.exit563

bb.gl:                                            ; preds = %lean_dec_ref_known.exit559
  %i.kl = getelementptr i8, ptr %.3306, i64 4
  %.val.i562 = load i32, ptr %i.kl, align 4
  %i.km = lshr i32 %.val.i562, 24
  br label %lean_obj_tag.exit563

lean_obj_tag.exit563:                             ; preds = %bb.gk, %bb.gl
  %.0.i561 = phi i32 [ %i.kk, %bb.gk ], [ %i.km, %bb.gl ]
  %i.kn = icmp eq i32 %.0.i561, 0
  %i.ko = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !10 ; 12 uses
  %i.kq = ptrtoint ptr %i.kp to i64               ; 2 uses
  %i.kr = and i64 %i.kq, 1
  %.not.i446 = icmp eq i64 %i.kr, 0               ; 2 uses
  br i1 %i.kn, label %bb.gm, label %bb.gz

bb.gm:                                            ; preds = %lean_obj_tag.exit563
  br i1 %.not.i446, label %bb.gn, label %lean_inc.exit447

bb.gn:                                            ; preds = %bb.gm
  %.val.i.i564 = load i32, ptr %i.kp, align 4, !tbaa !12 ; 3 uses
  %i.ks = icmp sgt i32 %.val.i.i564, 0
  br i1 %i.ks, label %bb.go, label %bb.gp, !prof !13

bb.go:                                            ; preds = %bb.gn
  %i.kt = add nuw i32 %.val.i.i564, 1
  store i32 %i.kt, ptr %i.kp, align 4, !tbaa !12
  br label %lean_inc.exit447

bb.gp:                                            ; preds = %bb.gn
  %.not.i.i565 = icmp eq i32 %.val.i.i564, 0
  br i1 %.not.i.i565, label %lean_inc.exit447, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.ku = atomicrmw add ptr %i.kp, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit447

lean_inc.exit447:                                 ; preds = %bb.gq, %bb.gp, %bb.go, %bb.gm
  %i.kv = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !10 ; 8 uses
  %i.kx = ptrtoint ptr %i.kw to i64
  %i.ky = and i64 %i.kx, 1
  %.not.i444 = icmp eq i64 %i.ky, 0
  br i1 %.not.i444, label %bb.gr, label %lean_inc.exit445

bb.gr:                                            ; preds = %lean_inc.exit447
  %.val.i.i567 = load i32, ptr %i.kw, align 4, !tbaa !12 ; 3 uses
  %i.kz = icmp sgt i32 %.val.i.i567, 0
  br i1 %i.kz, label %bb.gs, label %bb.gt, !prof !13

bb.gs:                                            ; preds = %bb.gr
  %i.la = add nuw i32 %.val.i.i567, 1
  store i32 %i.la, ptr %i.kw, align 4, !tbaa !12
  br label %lean_inc.exit445

bb.gt:                                            ; preds = %bb.gr
  %.not.i.i568 = icmp eq i32 %.val.i.i567, 0
  br i1 %.not.i.i568, label %lean_inc.exit445, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.lb = atomicrmw add ptr %i.kw, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit445

lean_inc.exit445:                                 ; preds = %bb.gu, %bb.gt, %bb.gs, %lean_inc.exit447
  br i1 %.not.i448, label %bb.gv, label %bb.is

bb.gv:                                            ; preds = %lean_inc.exit445
  %i.lc = load i32, ptr %i.js, align 8, !tbaa !12 ; 3 uses
  %i.ld = icmp sgt i32 %i.lc, 1
  br i1 %i.ld, label %bb.gw, label %bb.gx, !prof !13

bb.gw:                                            ; preds = %bb.gv
  %i.le = add nsw i32 %i.lc, -1
  store i32 %i.le, ptr %i.js, align 8, !tbaa !12
  br label %bb.is

bb.gx:                                            ; preds = %bb.gv
  %.not.i.i352 = icmp eq i32 %i.lc, 0
  br i1 %.not.i.i352, label %bb.is, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.js) #6
  br label %bb.is

bb.gz:                                            ; preds = %lean_obj_tag.exit563
  br i1 %.not.i446, label %bb.ha, label %lean_inc.exit443

bb.ha:                                            ; preds = %bb.gz
  %.val.i.i570 = load i32, ptr %i.kp, align 4, !tbaa !12 ; 3 uses
  %i.lf = icmp sgt i32 %.val.i.i570, 0
  br i1 %i.lf, label %bb.hb, label %bb.hc, !prof !13

bb.hb:                                            ; preds = %bb.ha
  %i.lg = add nuw i32 %.val.i.i570, 1
  store i32 %i.lg, ptr %i.kp, align 4, !tbaa !12
  br label %lean_inc.exit443

bb.hc:                                            ; preds = %bb.ha
  %.not.i.i571 = icmp eq i32 %.val.i.i570, 0
  br i1 %.not.i.i571, label %lean_inc.exit443, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.lh = atomicrmw add ptr %i.kp, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit443

lean_inc.exit443:                                 ; preds = %bb.hd, %bb.hc, %bb.hb, %bb.gz
  %i.li = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !10 ; 8 uses
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = and i64 %i.lk, 1
  %.not.i440 = icmp eq i64 %i.ll, 0
  br i1 %.not.i440, label %bb.he, label %lean_inc.exit441

bb.he:                                            ; preds = %lean_inc.exit443
  %.val.i.i573 = load i32, ptr %i.lj, align 4, !tbaa !12 ; 3 uses
  %i.lm = icmp sgt i32 %.val.i.i573, 0
  br i1 %i.lm, label %bb.hf, label %bb.hg, !prof !13

bb.hf:                                            ; preds = %bb.he
  %i.ln = add nuw i32 %.val.i.i573, 1
  store i32 %i.ln, ptr %i.lj, align 4, !tbaa !12
  br label %lean_inc.exit441

bb.hg:                                            ; preds = %bb.he
  %.not.i.i574 = icmp eq i32 %.val.i.i573, 0
  br i1 %.not.i.i574, label %lean_inc.exit441, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.lo = atomicrmw add ptr %i.lj, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit441

lean_inc.exit441:                                 ; preds = %bb.hh, %bb.hg, %bb.hf, %lean_inc.exit443
  br i1 %.not.i448, label %bb.hi, label %lean_dec.exit350

bb.hi:                                            ; preds = %lean_inc.exit441
  %i.lp = load i32, ptr %i.js, align 8, !tbaa !12 ; 3 uses
  %i.lq = icmp sgt i32 %i.lp, 1
  br i1 %i.lq, label %bb.hj, label %bb.hk, !prof !13

bb.hj:                                            ; preds = %bb.hi
  %i.lr = add nsw i32 %i.lp, -1
  store i32 %i.lr, ptr %i.js, align 8, !tbaa !12
  br label %lean_dec.exit350

bb.hk:                                            ; preds = %bb.hi
  %.not.i.i348 = icmp eq i32 %i.lp, 0
  br i1 %.not.i.i348, label %lean_dec.exit350, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.js) #6
  br label %lean_dec.exit350

lean_dec.exit350:                                 ; preds = %bb.hj, %bb.hk, %bb.hl, %lean_inc.exit441
  %i.ls = getelementptr inbounds nuw i8, ptr %.3306, i64 8 ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !10 ; 8 uses
  %i.lu = ptrtoint ptr %i.lt to i64
  %i.lv = and i64 %i.lu, 1
  %.not.i438 = icmp eq i64 %i.lv, 0               ; 2 uses
  br i1 %.not.i438, label %bb.hm, label %lean_inc.exit439

bb.hm:                                            ; preds = %lean_dec.exit350
  %.val.i.i576 = load i32, ptr %i.lt, align 4, !tbaa !12 ; 3 uses
  %i.lw = icmp sgt i32 %.val.i.i576, 0
  br i1 %i.lw, label %bb.hn, label %bb.ho, !prof !13

bb.hn:                                            ; preds = %bb.hm
  %i.lx = add nuw i32 %.val.i.i576, 1
  store i32 %i.lx, ptr %i.lt, align 4, !tbaa !12
  br label %lean_inc.exit439

bb.ho:                                            ; preds = %bb.hm
  %.not.i.i577 = icmp eq i32 %.val.i.i576, 0
  br i1 %.not.i.i577, label %lean_inc.exit439, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.ly = atomicrmw add ptr %i.lt, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit439

lean_inc.exit439:                                 ; preds = %bb.hp, %bb.ho, %bb.hn, %lean_dec.exit350
  %.val.i579 = load i32, ptr %.3306, align 8, !tbaa !12 ; 4 uses
  %i.lz = icmp eq i32 %.val.i579, 1
  br i1 %i.lz, label %.preheader.i582, label %bb.hu

.preheader.i582:                                  ; preds = %lean_inc.exit439
  %i.ma = load ptr, ptr %i.ls, align 8, !tbaa !10 ; 4 uses
  %i.mb = ptrtoint ptr %i.ma to i64
  %i.mc = and i64 %i.mb, 1
  %.not.i7.i584 = icmp eq i64 %i.mc, 0
  br i1 %.not.i7.i584, label %bb.hq, label %lean_dec.exit.i585

bb.hq:                                            ; preds = %.preheader.i582
  %i.md = load i32, ptr %i.ma, align 4, !tbaa !12 ; 3 uses
  %i.me = icmp sgt i32 %i.md, 1
  br i1 %i.me, label %bb.hr, label %bb.hs, !prof !13

bb.hr:                                            ; preds = %bb.hq
  %i.mf = add nsw i32 %i.md, -1
  store i32 %i.mf, ptr %i.ma, align 4, !tbaa !12
  br label %lean_dec.exit.i585

bb.hs:                                            ; preds = %bb.hq
  %.not.i.i.i588 = icmp eq i32 %i.md, 0
  br i1 %.not.i.i.i588, label %lean_dec.exit.i585, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ma) #6
  br label %lean_dec.exit.i585

lean_dec.exit.i585:                               ; preds = %bb.ht, %bb.hs, %bb.hr, %.preheader.i582
  tail call void @lean_free_object(ptr noundef nonnull %.3306) #6
  br label %lean_dec_ref_known.exit589

bb.hu:                                            ; preds = %lean_inc.exit439
  %i.mg = icmp sgt i32 %.val.i579, 1
  br i1 %i.mg, label %bb.hv, label %bb.hw, !prof !13

bb.hv:                                            ; preds = %bb.hu
  %i.mh = add nsw i32 %.val.i579, -1
  store i32 %i.mh, ptr %.3306, align 8, !tbaa !12
  br label %lean_dec_ref_known.exit589

bb.hw:                                            ; preds = %bb.hu
  %.not.i.i580 = icmp eq i32 %.val.i579, 0
  br i1 %.not.i.i580, label %lean_dec_ref_known.exit589, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.3306) #6
  br label %lean_dec_ref_known.exit589

lean_dec_ref_known.exit589:                       ; preds = %lean_dec.exit.i585, %bb.hv, %bb.hw, %bb.hx
  %i.mi = tail call ptr @l_Lean_TSyntax_getNat(ptr noundef %i.lt) #6 ; 4 uses
  br i1 %.not.i438, label %bb.hy, label %bb.is

bb.hy:                                            ; preds = %lean_dec_ref_known.exit589
  %i.mj = load i32, ptr %i.lt, align 4, !tbaa !12 ; 3 uses
  %i.mk = icmp sgt i32 %i.mj, 1
  br i1 %i.mk, label %bb.hz, label %bb.ia, !prof !13

bb.hz:                                            ; preds = %bb.hy
  %i.ml = add nsw i32 %i.mj, -1
  store i32 %i.ml, ptr %i.lt, align 4, !tbaa !12
  br label %bb.is

bb.ia:                                            ; preds = %bb.hy
  %.not.i.i344 = icmp eq i32 %i.mj, 0
  br i1 %.not.i.i344, label %bb.is, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.lt) #6
  br label %bb.is

bb.ic:                                            ; preds = %lean_obj_tag.exit545
  %i.mm = ptrtoint ptr %.3306 to i64
  %i.mn = and i64 %i.mm, 1
  %.not.i339 = icmp eq i64 %i.mn, 0
  br i1 %.not.i339, label %bb.id, label %lean_dec.exit342

bb.id:                                            ; preds = %bb.ic
  %i.mo = load i32, ptr %.3306, align 4, !tbaa !12 ; 3 uses
  %i.mp = icmp sgt i32 %i.mo, 1
  br i1 %i.mp, label %bb.ie, label %bb.if, !prof !13

bb.ie:                                            ; preds = %bb.id
  %i.mq = add nsw i32 %i.mo, -1
  store i32 %i.mq, ptr %.3306, align 4, !tbaa !12
  br label %lean_dec.exit342

bb.if:                                            ; preds = %bb.id
  %.not.i.i340 = icmp eq i32 %i.mo, 0
  br i1 %.not.i.i340, label %lean_dec.exit342, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.3306) #6
  br label %lean_dec.exit342

lean_dec.exit342:                                 ; preds = %bb.ie, %bb.if, %bb.ig, %bb.ic
  %i.mr = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !10 ; 5 uses
  %.val = load i32, ptr %i.jj, align 8, !tbaa !12
  %i.mt = icmp eq i32 %.val, 1
  br i1 %i.mt, label %lean_dec.exit354, label %bb.ih

bb.ih:                                            ; preds = %lean_dec.exit342
  %i.mu = ptrtoint ptr %i.ms to i64
  %i.mv = and i64 %i.mu, 1
  %.not.i436 = icmp eq i64 %i.mv, 0
  br i1 %.not.i436, label %bb.ii, label %lean_inc.exit437

bb.ii:                                            ; preds = %bb.ih
  %.val.i.i590 = load i32, ptr %i.ms, align 4, !tbaa !12 ; 3 uses
  %i.mw = icmp sgt i32 %.val.i.i590, 0
  br i1 %i.mw, label %bb.ij, label %bb.ik, !prof !13

bb.ij:                                            ; preds = %bb.ii
  %i.mx = add nuw i32 %.val.i.i590, 1
  store i32 %i.mx, ptr %i.ms, align 4, !tbaa !12
  br label %lean_inc.exit437

bb.ik:                                            ; preds = %bb.ii
  %.not.i.i591 = icmp eq i32 %.val.i.i590, 0
  br i1 %.not.i.i591, label %lean_inc.exit437, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.my = atomicrmw add ptr %i.ms, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit437

lean_inc.exit437:                                 ; preds = %bb.il, %bb.ik, %bb.ij, %bb.ih
  br i1 %.not.i542, label %bb.im, label %bb.iq

bb.im:                                            ; preds = %lean_inc.exit437
  %i.mz = load i32, ptr %i.jj, align 8, !tbaa !12 ; 3 uses
  %i.na = icmp sgt i32 %i.mz, 1
  br i1 %i.na, label %bb.in, label %bb.io, !prof !13

bb.in:                                            ; preds = %bb.im
  %i.nb = add nsw i32 %i.mz, -1
  store i32 %i.nb, ptr %i.jj, align 8, !tbaa !12
  br label %bb.iq

bb.io:                                            ; preds = %bb.im
  %.not.i.i = icmp eq i32 %i.mz, 0
  br i1 %.not.i.i, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.jj) #6
  br label %bb.iq

bb.iq:                                            ; preds = %lean_inc.exit437, %bb.ip, %bb.io, %bb.in
  tail call void @lean_inc_heartbeat() #6
  %i.nc = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.nd = icmp eq ptr %i.nc, null
  br i1 %i.nd, label %bb.ir, label %lean_alloc_ctor.exit593

bb.ir:                                            ; preds = %bb.iq
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit593:                          ; preds = %bb.iq
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  store i32 1, ptr %i.nc, align 4, !tbaa !12
  store i32 16842768, ptr %i.ne, align 4
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  store ptr %i.ms, ptr %i.nf, align 8, !tbaa !10
  br label %lean_dec.exit354

bb.is:                                            ; preds = %lean_dec_ref_known.exit589, %lean_inc.exit445, %bb.gw, %bb.gx, %bb.gy, %bb.hz, %bb.ia, %bb.ib
  %.2285.ph = phi ptr [ %i.mi, %lean_dec_ref_known.exit589 ], [ inttoptr (i64 3 to ptr), %lean_inc.exit445 ], [ inttoptr (i64 3 to ptr), %bb.gw ], [ inttoptr (i64 3 to ptr), %bb.gx ], [ inttoptr (i64 3 to ptr), %bb.gy ], [ %i.mi, %bb.hz ], [ %i.mi, %bb.ia ], [ %i.mi, %bb.ib ]
  %.2249.ph = phi ptr [ %i.lj, %lean_dec_ref_known.exit589 ], [ %i.kw, %lean_inc.exit445 ], [ %i.kw, %bb.gw ], [ %i.kw, %bb.gx ], [ %i.kw, %bb.gy ], [ %i.lj, %bb.hz ], [ %i.lj, %bb.ia ], [ %i.lj, %bb.ib ]
  %i.ng = and i64 %i.kq, 1
  %.not.i435 = icmp eq i64 %i.ng, 0
  br i1 %.not.i435, label %bb.it, label %lean_inc.exit

bb.it:                                            ; preds = %bb.is
  %.val.i.i594 = load i32, ptr %i.kp, align 4, !tbaa !12 ; 3 uses
  %i.nh = icmp sgt i32 %.val.i.i594, 0
  br i1 %i.nh, label %bb.iu, label %bb.iv, !prof !13

bb.iu:                                            ; preds = %bb.it
  %i.ni = add nuw i32 %.val.i.i594, 1
  store i32 %i.ni, ptr %i.kp, align 4, !tbaa !12
  br label %lean_inc.exit

bb.iv:                                            ; preds = %bb.it
  %.not.i.i595 = icmp eq i32 %.val.i.i594, 0
  br i1 %.not.i.i595, label %lean_inc.exit, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.nj = atomicrmw add ptr %i.kp, i32 -1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.iw, %bb.iv, %bb.iu, %bb.is
  %i.nk = tail call ptr @lean_alloc_object(i64 noundef 56) #6 ; 10 uses
  store i32 1, ptr %i.nk, align 4, !tbaa !12
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 4 ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 4
  %i.nn = and i32 %i.nm, 65535
  %i.no = or disjoint i32 %i.nn, -184549376
  store i32 %i.no, ptr %i.nl, align 4
  %i.np = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  store ptr @l_Lean_Elab_Tactic_Do_ProofMode_elabMRevert___lam__1___boxed, ptr %i.np, align 8, !tbaa !10
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  store i16 13, ptr %i.nq, align 8, !tbaa !15
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nk, i64 18
  store i16 4, ptr %i.nr, align 2, !tbaa !15
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nk, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.ns, align 8, !tbaa !10
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nk, i64 32
  store ptr %.2249.ph, ptr %i.nt, align 8, !tbaa !10
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nk, i64 40
  store ptr %.2285.ph, ptr %i.nu, align 8, !tbaa !10
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nk, i64 48
  store ptr %i.kp, ptr %i.nv, align 8, !tbaa !10
  %i.nw = tail call ptr @l_Lean_MVarId_withContext___at___00Lean_Elab_Tactic_Do_ProofMode_elabMRevert_spec__3___redArg(ptr noundef %i.kp, ptr noundef nonnull %i.nk, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  br label %lean_dec.exit354

lean_dec.exit354:                                 ; preds = %lean_dec.exit362, %lean_dec.exit370, %lean_alloc_ctor.exit541, %lean_obj_once.exit, %lean_inc.exit455, %bb.fe, %l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_Do_ProofMode_elabMRevert_spec__0___redArg.exit498, %l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_Do_ProofMode_elabMRevert_spec__0___redArg.exit489, %lean_dec.exit410, %l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_Do_ProofMode_elabMRevert_spec__0___redArg.exit480, %lean_alloc_ctor.exit593, %lean_dec.exit342, %lean_inc.exit, %l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_Do_ProofMode_elabMRevert_spec__0___redArg.exit
  %.13 = phi ptr [ %i.r, %l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_Do_ProofMode_elabMRevert_spec__0___redArg.exit ], [ %i.nw, %lean_inc.exit ], [ %i.ar, %l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_Do_ProofMode_elabMRevert_spec__0___redArg.exit480 ], [ %i.jj, %lean_dec.exit342 ], [ %i.nc, %lean_alloc_ctor.exit593 ], [ %i.eh, %lean_dec.exit362 ], [ %i.jf, %lean_alloc_ctor.exit541 ], [ %i.ip, %bb.fe ], [ %i.hj, %lean_inc.exit455 ], [ %i.hx, %lean_obj_once.exit ], [ %i.ed, %l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_Do_ProofMode_elabMRevert_spec__0___redArg.exit498 ], [ %i.cv, %lean_dec.exit410 ], [ %i.ff, %lean_dec.exit370 ], [ %i.bz, %l_Lean_Elab_throwUnsupportedSyntax___at___00Lean_Elab_Tactic_Do_ProofMode_elabMRevert_spec__0___redArg.exit489 ]
  ret ptr %.13
}

declare zeroext i8 @l_Lean_Syntax_isOfKind(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @l_Lean_Syntax_getArg(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @l_Lean_Syntax_matchesNull(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @l_Lean_Syntax_isNone(ptr noundef) local_unnamed_addr #1

declare ptr @l_Lean_Elab_Tactic_getMainGoal___redArg(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @l_Lean_MVarId_getType(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @l_Lean_Elab_Tactic_Do_ProofMode_parseMGoal_x3f(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @_init_l_Lean_Elab_Tactic_Do_ProofMode_elabMRevert___closed__11() #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_stringToMessageData(ptr noundef nonnull @l_Lean_Elab_Tactic_Do_ProofMode_elabMRevert___closed__10_value) #6
  ret ptr %i.a
}

declare ptr @l_Lean_Elab_Tactic_Do_ProofMode_mStartMainGoal___redArg(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @l_Lean_TSyntax_getNat(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @l_Lean_Elab_Tactic_Do_ProofMode_elabMRevert___boxed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr nofree readnone captures(none) %9) #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_Elab_Tactic_Do_ProofMode_elabMRevert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8)
  %i.b = ptrtoint ptr %8 to i64
  %i.c = and i64 %i.b, 1
  %.not.i33 = icmp eq i64 %i.c, 0
  br i1 %.not.i33, label %bb.b, label %lean_dec.exit36

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %8, align 4, !tbaa !12     ; 3 uses
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, -1
  store i32 %i.f, ptr %8, align 4, !tbaa !12
  br label %lean_dec.exit36

bb.d:                                             ; preds = %bb.b
  %.not.i.i34 = icmp eq i32 %i.d, 0
  br i1 %.not.i.i34, label %lean_dec.exit36, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %8) #6
  br label %lean_dec.exit36

lean_dec.exit36:                                  ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  %i.g = load i32, ptr %7, align 4, !tbaa !12     ; 3 uses
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %lean_dec.exit36
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %7, align 4, !tbaa !12
  br label %lean_dec_ref.exit23

bb.g:                                             ; preds = %lean_dec.exit36
  %.not.i22 = icmp eq i32 %i.g, 0
  br i1 %.not.i22, label %lean_dec_ref.exit23, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %7) #6
  br label %lean_dec_ref.exit23

lean_dec_ref.exit23:                              ; preds = %bb.f, %bb.g, %bb.h
  %i.j = ptrtoint ptr %6 to i64
  %i.k = and i64 %i.j, 1
  %.not.i29 = icmp eq i64 %i.k, 0
  br i1 %.not.i29, label %bb.i, label %lean_dec.exit32

bb.i:                                             ; preds = %lean_dec_ref.exit23
  %i.l = load i32, ptr %6, align 4, !tbaa !12     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.k, !prof !13

bb.j:                                             ; preds = %bb.i
  %i.n = add nsw i32 %i.l, -1
  store i32 %i.n, ptr %6, align 4, !tbaa !12
  br label %lean_dec.exit32

bb.k:                                             ; preds = %bb.i
  %.not.i.i30 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i30, label %lean_dec.exit32, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %6) #6
  br label %lean_dec.exit32

lean_dec.exit32:                                  ; preds = %bb.j, %bb.k, %bb.l, %lean_dec_ref.exit23
  %i.o = load i32, ptr %5, align 4, !tbaa !12     ; 3 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.m, label %bb.n, !prof !13

bb.m:                                             ; preds = %lean_dec.exit32
  %i.q = add nsw i32 %i.o, -1
  store i32 %i.q, ptr %5, align 4, !tbaa !12
  br label %lean_dec_ref.exit21

bb.n:                                             ; preds = %lean_dec.exit32
  %.not.i20 = icmp eq i32 %i.o, 0
  br i1 %.not.i20, label %lean_dec_ref.exit21, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %5) #6
  br label %lean_dec_ref.exit21

lean_dec_ref.exit21:                              ; preds = %bb.m, %bb.n, %bb.o
  %i.r = ptrtoint ptr %4 to i64
  %i.s = and i64 %i.r, 1
  %.not.i25 = icmp eq i64 %i.s, 0
  br i1 %.not.i25, label %bb.p, label %lean_dec.exit28

bb.p:                                             ; preds = %lean_dec_ref.exit21
  %i.t = load i32, ptr %4, align 4, !tbaa !12     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 1
  br i1 %i.u, label %bb.q, label %bb.r, !prof !13

bb.q:                                             ; preds = %bb.p
  %i.v = add nsw i32 %i.t, -1
  store i32 %i.v, ptr %4, align 4, !tbaa !12
  br label %lean_dec.exit28

bb.r:                                             ; preds = %bb.p
  %.not.i.i26 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i26, label %lean_dec.exit28, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %4) #6
  br label %lean_dec.exit28

lean_dec.exit28:                                  ; preds = %bb.q, %bb.r, %bb.s, %lean_dec_ref.exit21
  %i.w = load i32, ptr %3, align 4, !tbaa !12     ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.t, label %bb.u, !prof !13

bb.t:                                             ; preds = %lean_dec.exit28
  %i.y = add nsw i32 %i.w, -1
  store i32 %i.y, ptr %3, align 4, !tbaa !12
  br label %lean_dec_ref.exit19

bb.u:                                             ; preds = %lean_dec.exit28
  %.not.i18 = icmp eq i32 %i.w, 0
  br i1 %.not.i18, label %lean_dec_ref.exit19, label %bb.v
end_hunk_0
