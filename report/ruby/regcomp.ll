begin_hunk_0
  br label %bb.m

common.ret25:                                     ; preds = %bb.f, %bb.e, %bb.c, %bb.d, %tailrecurse, %.split, %bb.g, %bb.m
  %common.ret25.op = phi i32 [ %spec.select, %bb.m ], [ %i.d, %bb.c ], [ %i.k, %bb.e ], [ 1, %bb.f ], [ %.135, %bb.d ], [ 0, %tailrecurse ], [ 0, %.split ], [ 0, %bb.g ]
  ret i32 %common.ret25.op

bb.m:                                             ; preds = %bb.l, %bb.i
end_hunk_0
begin_hunk_1
  %.not31 = icmp eq ptr %i.g, null
  br i1 %.not31, label %.critedge, label %bb.b, !llvm.loop !138

tailrecurse.backedge:                             ; preds = %tailrecurse, %bb.g, %bb.e, %.split
  %.sink = phi i64 [ 24, %bb.g ], [ 8, %.split ], [ 24, %bb.e ], [ 8, %tailrecurse ]
  %i.h = getelementptr i8, ptr %.tr, i64 %.sink
  %.tr.be = load ptr, ptr %i.h, align 8, !tbaa !34
  br label %tailrecurse
end_hunk_1
begin_hunk_2
  %.not37 = icmp eq ptr %i.g, null
  br i1 %.not37, label %.critedge, label %bb.b, !llvm.loop !218

tailrecurse.backedge.sink.split:                  ; preds = %tailrecurse, %bb.f, %bb.d
  %.sink63 = phi i64 [ 24, %bb.f ], [ 24, %bb.d ], [ 8, %tailrecurse ]
  %i.h = getelementptr i8, ptr %.tr, i64 %.sink63
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34
  br label %tailrecurse.backedge
end_hunk_2
begin_hunk_3
  br i1 %.not, label %.critedge, label %tailrecurse.backedge

.critedge:                                        ; preds = %bb.e, %bb.l, %tailrecurse, %.lr.ph.i, %bb.c, %bb.b, %._crit_edge.i, %bb.g
  %.1 = phi i32 [ -208, %.lr.ph.i ], [ 0, %bb.c ], [ -209, %bb.g ], [ 0, %._crit_edge.i ], [ %i.d, %bb.b ], [ -208, %bb.e ], [ 0, %tailrecurse ], [ 0, %bb.l ]
  ret i32 %.1
}

end_hunk_3
begin_hunk_4
  br label %common.ret117

common.ret117:                                    ; preds = %bb.j, %bb.k, %bb.h, %.thread, %bb.m, %bb.o, %bb.i, %.preheader, %tailrecurse, %.split, %bb.l, %bb.p
  %common.ret117.op = phi i32 [ %i.ar, %bb.p ], [ %i.p, %.preheader ], [ %i.x, %bb.j ], [ %.0.ph, %.thread ], [ 0, %bb.m ], [ %i.an, %bb.o ], [ %spec.select77, %bb.k ], [ %i.h, %bb.h ], [ %i.s, %bb.i ], [ 0, %tailrecurse ], [ 0, %.split ], [ 0, %bb.l ]
  ret i32 %common.ret117.op

bb.p:                                             ; preds = %bb.n
end_hunk_4
begin_hunk_5
.critedge.loopexit38:                             ; preds = %.split
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %tailrecurse, %bb.d, %bb.c, %bb.b, %.split, %.critedge.loopexit38
  %.1 = phi i32 [ 0, %.split ], [ %spec.select, %bb.b ], [ 0, %bb.e ], [ 0, %tailrecurse ], [ 0, %bb.d ], [ 3, %bb.c ], [ 2, %.critedge.loopexit38 ]
  ret i32 %.1
}

end_hunk_5
begin_hunk_6

; Function Attrs: nofree nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @check_type_tree(ptr noundef readonly captures(none) %0, i32 noundef range(i32 2, 4) %1) unnamed_addr #12 {
  br label %bb.a

bb.a:                                             ; preds = %3, %2
  %.tr = phi ptr [ %0, %2 ], [ %5, %3 ]           ; 2 uses
  %i.a = load i32, ptr %.tr, align 8, !tbaa !34   ; 2 uses
  %i.b = shl nuw i32 1, %i.a
  %i.c = and i32 %i.b, 2031
  %i.d = icmp eq i32 %i.c, 0
end_hunk_6
begin_hunk_7

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %i.e = phi i32 [ %i.n, %tailrecurse.backedge ], [ %i.a, %bb.a ]
  %.tr48 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %.tr, %bb.a ] ; 6 uses
  switch i32 %i.e, label %.critedge41 [
    i32 8, label %.preheader
    i32 9, label %.preheader
end_hunk_7
begin_hunk_8
  %.not39 = icmp eq ptr %i.k, null
  br i1 %.not39, label %.critedge41, label %bb.b, !llvm.loop !228

tailrecurse.backedge.sink.split:                  ; preds = %.lr.ph
  %i.l = getelementptr i8, ptr %.tr48, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %tailrecurse.backedge.sink.split, %bb.f
  %.tr.be = phi ptr [ %i.m, %tailrecurse.backedge.sink.split ], [ %i.z, %bb.f ] ; 2 uses
  %i.n = load i32, ptr %.tr.be, align 8, !tbaa !34 ; 2 uses
  %i.o = shl nuw i32 1, %i.n
  %i.p = and i32 %i.o, 2031
end_hunk_8
begin_hunk_9
  %i.s = load i32, ptr %i.r, align 8, !tbaa !145
  %i.t = and i32 %i.s, %1
  %.not38 = icmp eq i32 %i.t, 0
  br i1 %.not38, label %.critedge41, label %3

3:                                                ; preds = %bb.d
  %4 = getelementptr i8, ptr %.tr48, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !137
  br label %bb.a

bb.e:                                             ; preds = %.lr.ph
  %i.u = getelementptr i8, ptr %.tr48, i64 4
end_hunk_9
begin_hunk_10
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %.critedge41, label %tailrecurse.backedge

.critedge41:                                      ; preds = %tailrecurse.backedge, %bb.e, %.lr.ph, %bb.f, %bb.c, %bb.b, %bb.a, %bb.d
  %.1 = phi i32 [ 1, %bb.a ], [ 0, %bb.c ], [ 1, %bb.d ], [ 1, %bb.b ], [ 0, %.lr.ph ], [ 1, %tailrecurse.backedge ], [ 0, %bb.f ], [ 1, %bb.e ]
  ret i32 %.1
}

end_hunk_10
begin_hunk_11
  br i1 %i.ig, label %bb.bp, label %bb.bq

common.ret181:                                    ; preds = %bb.bz, %bb.cf, %bb.cd, %bb.cc, %bb.ce, %bb.at, %bb.aq, %bb.ar, %bb.as, %bb.ao, %bb.d, %bb.f, %add_compile_string_length.exit.i, %bb.g, %add_compile_string_length.exit82.i, %bb.ad, %bb.am, %bb.au, %bb.ay, %bb.az, %bb.be, %bb.bf, %bb.bg, %bb.bj, %._crit_edge100.a, %bb.bn, %.thread, %bb.br, %bb.bs, %.split.i, %bb.bx, %bb.by, %bb.ca, %bb.cb, %bb.cg, %bb.ci, %bb.cj, %.split.i77, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.a, %compile_length_string_raw_node.exit, %bb.b, %.preheader, %.preheader82, %bb.bp
  %common.ret181.op = phi i32 [ %i.in, %bb.bp ], [ %i.d, %.preheader ], [ 1, %bb.cj ], [ -6, %bb.a ], [ %i.kp, %bb.cm ], [ 1, %compile_length_string_raw_node.exit ], [ %i.r, %bb.d ], [ %i.ft, %bb.ar ], [ 0, %bb.f ], [ 0, %bb.g ], [ 1, %.split.i77 ], [ 5, %bb.at ], [ 33, %bb.ad ], [ %i.hy, %._crit_edge100.a ], [ %i.fl, %bb.ao ], [ %i.fv, %bb.as ], [ 3, %bb.aq ], [ %i.ae, %add_compile_string_length.exit.i ], [ %i.ed, %add_compile_string_length.exit82.i ], [ %i.fe, %bb.am ], [ %i.gd, %bb.au ], [ %i.gq, %bb.ay ], [ %i.gr, %bb.az ], [ %i.hf, %bb.be ], [ %i.hh, %bb.bf ], [ %i.hj, %bb.bg ], [ %i.ho, %bb.bj ], [ %i.id, %.thread ], [ %i.ic, %bb.bn ], [ %i.jq, %bb.cc ], [ %i.iq, %bb.br ], [ -11, %bb.cb ], [ -6, %.split.i ], [ %i.kd, %bb.cg ], [ -6, %bb.bs ], [ %i.jh, %bb.bx ], [ %i.ji, %bb.by ], [ %i.jj, %bb.bz ], [ -11, %bb.cd ], [ %i.jk, %bb.ca ], [ %i.jy, %bb.ce ], [ %spec.select, %bb.cf ], [ %i.kg, %bb.ci ], [ %i.kq, %bb.cn ], [ %i.kn, %bb.ck ], [ %i.ko, %bb.cl ], [ %i.f, %bb.b ], [ %i.k, %.preheader82 ]
  ret i32 %common.ret181.op

bb.bp:                                            ; preds = %bb.bo
end_hunk_11
