inline.NumInlined: 6675
inline.NumDeleted: 333
begin_hunk_0_@compile_attrasgn:bb.a

.sink.split:                                      ; preds = %.thread, %.thread117
  %.sink134 = phi ptr [ %i.ai, %.thread117 ], [ %i.w, %.thread ] ; 3 uses
  %.ph.a = phi i32 [ 0, %.thread117 ], [ 4, %.thread ]
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.al = getelementptr i8, ptr %.sink134, i64 16
end_hunk_0
begin_hunk_1_@compile_attrasgn:bb.a
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %i.an = phi i32 [ 0, %bb.e ], [ %.ph.a, %.sink.split ] ; 2 uses
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !7
  %i.ap = or i32 %i.ao, %i.an
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !7
end_hunk_1
begin_hunk_2_@compile_attrasgn:bb.a
  %i.ch = lshr i64 %i.cg, 15
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = load i32, ptr %i.aw, align 8, !tbaa !278
  %6 = shl nuw nsw i32 %i.an, 1
  %7 = or disjoint i32 %6, 1
  %8 = zext nneg i32 %7 to i64
  %i.ck = call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.ci, i32 noundef %i.cj, i64 noundef 145, i64 noundef 3, ptr noundef null, i64 noundef %8, ptr noundef null) ; 3 uses
  %i.cl = load ptr, ptr %i.az, align 8, !tbaa !11 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.ck, i64 16
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !34
end_hunk_2
begin_hunk_3_@ibf_dump_iseq_list_i:bb.a

.critedge.i88.i.i:                                ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %.016.lcssa.i89.i.i = phi i64 [ 0, %bb.ab ], [ %i.gy, %bb.w ], [ %i.ha, %bb.x ], [ %i.he, %bb.z ], [ %i.hc, %bb.y ], [ %i.hg, %bb.aa ]
  %.0.lcssa.i90.i.i = phi i32 [ 8, %bb.ab ], [ 0, %bb.w ], [ 1, %bb.x ], [ 3, %bb.z ], [ 2, %bb.y ], [ 4, %bb.aa ] ; 3 uses
  %3 = zext nneg i32 %.0.lcssa.i90.i.i to i64
  %i.hh = shl nuw nsw i64 %.016.lcssa.i89.i.i, 1
  %i.hi = or disjoint i64 %i.hh, 1
  %i.hj = shl i64 %i.hi, %3
  %i.hk = trunc i64 %i.hj to i8
  %i.hl = sub nuw nsw i32 8, %.0.lcssa.i90.i.i
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr i8, ptr %i.i, i64 %i.hm
  store i8 %i.hk, ptr %i.hn, align 1, !tbaa !20
  %i.ho = add nuw nsw i32 %.0.lcssa.i90.i.i, 1
  %i.hp = zext nneg i32 %i.ho to i64              ; 3 uses
  %.val.i91.i.i = load ptr, ptr %i.z, align 8, !tbaa !325
  %.val.val.i92.i.i = load i64, ptr %.val.i91.i.i, align 8, !tbaa !326 ; 2 uses
end_hunk_3
begin_hunk_4_@ibf_dump_iseq_list_i:bb.a

.critedge.i73.i.i:                                ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %ibf_dump_write_small_value.exit94.i.i
  %.016.lcssa.i74.i.i = phi i64 [ 0, %bb.al ], [ %i.ie, %ibf_dump_write_small_value.exit94.i.i ], [ %i.ig, %bb.ae ], [ 0, %bb.ak ], [ %i.ii, %bb.af ], [ %i.io, %bb.ai ], [ %i.ik, %bb.ag ], [ %i.iq, %bb.aj ], [ %i.im, %bb.ah ]
  %.0.lcssa.i75.i.i = phi i32 [ 8, %bb.al ], [ 0, %ibf_dump_write_small_value.exit94.i.i ], [ 1, %bb.ae ], [ 7, %bb.ak ], [ 2, %bb.af ], [ 5, %bb.ai ], [ 3, %bb.ag ], [ 6, %bb.aj ], [ 4, %bb.ah ] ; 3 uses
  %4 = zext nneg i32 %.0.lcssa.i75.i.i to i64
  %i.iu = shl nuw nsw i64 %.016.lcssa.i74.i.i, 1
  %i.iv = or disjoint i64 %i.iu, 1
  %i.iw = shl i64 %i.iv, %4
  %i.ix = trunc i64 %i.iw to i8
  %i.iy = sub nuw nsw i32 8, %.0.lcssa.i75.i.i
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr i8, ptr %i.j, i64 %i.iz
  store i8 %i.ix, ptr %i.ja, align 1, !tbaa !20
  %i.jb = add nuw nsw i32 %.0.lcssa.i75.i.i, 1
  %i.jc = zext nneg i32 %i.jb to i64              ; 3 uses
  %.val.i76.i.i = load ptr, ptr %i.z, align 8, !tbaa !325
  %.val.val.i77.i.i = load i64, ptr %.val.i76.i.i, align 8, !tbaa !326 ; 2 uses
end_hunk_4
begin_hunk_5_@ibf_dump_iseq_list_i:bb.a

.critedge.i.i.i:                                  ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %ibf_dump_object.exit.i.i, %ibf_dump_object.exit.thread.i.i
  %.016.lcssa.i.i.i = phi i64 [ 0, %bb.ax ], [ %.041.i.i, %ibf_dump_object.exit.i.i ], [ %i.kc, %bb.aq ], [ 0, %bb.aw ], [ %i.ke, %bb.ar ], [ %i.kk, %bb.au ], [ %i.kg, %bb.as ], [ %i.km, %bb.av ], [ %i.ki, %bb.at ], [ 0, %ibf_dump_object.exit.thread.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ 8, %bb.ax ], [ 0, %ibf_dump_object.exit.i.i ], [ 1, %bb.aq ], [ 7, %bb.aw ], [ 2, %bb.ar ], [ 5, %bb.au ], [ 3, %bb.as ], [ 6, %bb.av ], [ 4, %bb.at ], [ 0, %ibf_dump_object.exit.thread.i.i ] ; 3 uses
  %5 = zext nneg i32 %.0.lcssa.i.i.i to i64
  %i.kq = shl nuw nsw i64 %.016.lcssa.i.i.i, 1
  %i.kr = or disjoint i64 %i.kq, 1
  %i.ks = shl i64 %i.kr, %5
  %i.kt = trunc i64 %i.ks to i8
  %i.ku = sub nuw nsw i32 8, %.0.lcssa.i.i.i
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = getelementptr i8, ptr %i.k, i64 %i.kv
  store i8 %i.kt, ptr %i.kw, align 1, !tbaa !20
  %i.kx = add nuw nsw i32 %.0.lcssa.i.i.i, 1
  %i.ky = zext nneg i32 %i.kx to i64              ; 3 uses
  %.val.i62.i.i = load ptr, ptr %i.z, align 8, !tbaa !325
  %.val.val.i63.i.i = load i64, ptr %.val.i62.i.i, align 8, !tbaa !326 ; 2 uses
end_hunk_5
begin_hunk_6_@ibf_dump_iseq_list_i:bb.a

.critedge.i.i232.i:                               ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %ibf_dump_object.exit.i226.i
  %.016.lcssa.i.i233.i = phi i64 [ 0, %bb.cg ], [ %.pre-phi.i.i.i, %ibf_dump_object.exit.i226.i ], [ %i.tj, %bb.cc ], [ %i.tn, %bb.ce ], [ %i.tl, %bb.cd ], [ %i.tp, %bb.cf ]
  %.0.lcssa.i.i234.i = phi i32 [ 8, %bb.cg ], [ 0, %ibf_dump_object.exit.i226.i ], [ 1, %bb.cc ], [ 3, %bb.ce ], [ 2, %bb.cd ], [ 4, %bb.cf ] ; 3 uses
  %6 = zext nneg i32 %.0.lcssa.i.i234.i to i64
  %i.tr = shl nuw nsw i64 %.016.lcssa.i.i233.i, 1
  %i.ts = or disjoint i64 %i.tr, 1
  %i.tt = shl i64 %i.ts, %6
  %i.tu = trunc i64 %i.tt to i8
  %i.tv = sub nuw nsw i32 8, %.0.lcssa.i.i234.i
  %i.tw = zext nneg i32 %i.tv to i64
  %i.tx = getelementptr i8, ptr %i.c, i64 %i.tw
  store i8 %i.tu, ptr %i.tx, align 1, !tbaa !20
  %i.ty = add nuw nsw i32 %.0.lcssa.i.i234.i, 1
  %i.tz = zext nneg i32 %i.ty to i64              ; 3 uses
  %.val.i44.i.i = load ptr, ptr %i.z, align 8, !tbaa !325
  %.val.val.i45.i.i = load i64, ptr %.val.i44.i.i, align 8, !tbaa !326 ; 2 uses
end_hunk_6
begin_hunk_7_@ibf_dump_write_small_value:bb.a

.critedge:                                        ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.016.lcssa = phi i64 [ 0, %bb.i ], [ %1, %bb.a ], [ %i.d, %bb.b ], [ 0, %bb.h ], [ %i.g, %bb.c ], [ %i.p, %bb.f ], [ %i.j, %bb.d ], [ %i.s, %bb.g ], [ %i.m, %bb.e ]
  %.0.lcssa = phi i32 [ 8, %bb.i ], [ 0, %bb.a ], [ 1, %bb.b ], [ 7, %bb.h ], [ 2, %bb.c ], [ 5, %bb.f ], [ 3, %bb.d ], [ 6, %bb.g ], [ 4, %bb.e ] ; 3 uses
  %2 = zext nneg i32 %.0.lcssa to i64
  %i.y = shl nuw nsw i64 %.016.lcssa, 1
  %i.z = or disjoint i64 %i.y, 1
  %i.aa = shl i64 %i.z, %2
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = sub nuw nsw i32 8, %.0.lcssa
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr i8, ptr %i.a, i64 %i.ad
  store i8 %i.ab, ptr %i.ae, align 1, !tbaa !20
  %i.af = add nuw nsw i32 %.0.lcssa, 1
  %i.ag = zext nneg i32 %i.af to i64              ; 3 uses
  %i.ah = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.ah, align 8, !tbaa !325
end_hunk_7
