Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/path?download=true
inline.NumInlined: 128
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@relative_path:bb.a
  %i.ax = getelementptr inbounds i8, ptr %1, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !17
  %.not131 = icmp eq i8 %i.ay, 47
  br i1 %.not131, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.lr.ph159
  tail call void @strbuf_add(ptr noundef nonnull %2, ptr noundef nonnull @.str.7, i64 noundef 3) #30
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %bb.q ], [ %i.aw, %bb.p ] ; 3 uses
  %i.az = getelementptr inbounds i8, ptr %1, i64 %indvars.iv171
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !17
  %.not132 = icmp eq i8 %i.ba, 47
  %indvars.iv.next172 = add nsw i64 %indvars.iv171, 1
  br i1 %.not132, label %bb.q, label %.backedge.loopexit, !llvm.loop !98

bb.r:                                             ; preds = %.lr.ph159
  %i.bb = add nsw i32 %.5158, 1
  br label %.backedge

.backedge.loopexit:                               ; preds = %bb.q
  %i.bc = trunc nsw i64 %indvars.iv171 to i32
  br label %.backedge

.backedge:                                        ; preds = %.backedge.loopexit, %bb.r
  %.5.be = phi i32 [ %i.bb, %bb.r ], [ %i.bc, %.backedge.loopexit ] ; 2 uses
  %i.bd = icmp slt i32 %.5.be, %i.d
  br i1 %i.bd, label %.lr.ph159, label %._crit_edge, !llvm.loop !99

._crit_edge:                                      ; preds = %.backedge
  %sext = shl i64 %i.c, 32
  %i.be = ashr exact i64 %sext, 32
  %i.bf = getelementptr i8, ptr %1, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !17
  %.not130 = icmp eq i8 %i.bh, 47
  br i1 %.not130, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  tail call void @strbuf_add(ptr noundef nonnull %2, ptr noundef nonnull @.str.7, i64 noundef 3) #30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge
  %i.bi = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ap) #29
  tail call void @strbuf_add(ptr noundef nonnull %2, ptr noundef nonnull %i.ap, i64 noundef %i.bi) #30
  %i.bj = load ptr, ptr %i.as, align 8, !tbaa !50
  br label %.thread.thread

.thread.thread:                                   ; preds = %.thread, %bb.a, %bb.k, %bb.e, %bb.d, %bb.c, %bb.t
  %.090 = phi ptr [ %0, %bb.e ], [ %.str.6., %bb.k ], [ %i.bj, %bb.t ], [ %0, %bb.d ], [ @.str.6, %bb.c ], [ %spec.select, %.thread ], [ @.str.6, %bb.a ]
  ret ptr %.090
}

declare void @strbuf_grow(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @remove_leading_path(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit63, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !17      ; 2 uses
  %.not42 = icmp eq i8 %i.a, 0
  br i1 %.not42, label %.loopexit63, label %.preheader62

.preheader62:                                     ; preds = %bb.b, %.preheader62.backedge
  %i.b = phi i8 [ %.be, %.preheader62.backedge ], [ %i.a, %bb.b ] ; 2 uses
  %.037 = phi i32 [ %.037.be, %.preheader62.backedge ], [ 0, %bb.b ] ; 2 uses
  %.0 = phi i32 [ %.0.be, %.preheader62.backedge ], [ 0, %bb.b ] ; 2 uses
  %i.c = sext i32 %.037 to i64                    ; 2 uses
  %i.d = sext i32 %.0 to i64                      ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17    ; 4 uses
  switch i8 %i.b, label %bb.d [
    i8 0, label %bb.f
    i8 47, label %bb.c
  ]

bb.c:                                             ; preds = %.preheader62
  %.not55 = icmp eq i8 %i.f, 47
  br i1 %.not55, label %.preheader61, label %.loopexit63

.preheader61:                                     ; preds = %bb.c, %.preheader61
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader61 ], [ %i.c, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %1, i64 %indvars.iv
  %i.h = load i8, ptr %i.g, align 1, !tbaa !17    ; 2 uses
  %.not56 = icmp eq i8 %i.h, 47
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %.not56, label %.preheader61, label %.preheader, !llvm.loop !100

.preheader:                                       ; preds = %.preheader61, %.preheader
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %.preheader ], [ %i.d, %.preheader61 ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %0, i64 %indvars.iv73
  %i.j = load i8, ptr %i.i, align 1, !tbaa !17
  %.not57 = icmp eq i8 %i.j, 47
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, 1
  br i1 %.not57, label %.preheader, label %.backedge.loopexit, !llvm.loop !101

bb.d:                                             ; preds = %.preheader62
  %.not50 = icmp eq i8 %i.f, %i.b
  br i1 %.not50, label %bb.e, label %.loopexit63

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i32 %.037, 1                     ; 2 uses
  %i.l = add nsw i32 %.0, 1
  %.phi.trans.insert.phi.trans.insert = sext i32 %i.k to i64
  %.phi.trans.insert81.phi.trans.insert = getelementptr inbounds i8, ptr %1, i64 %.phi.trans.insert.phi.trans.insert
  %.pre.pre = load i8, ptr %.phi.trans.insert81.phi.trans.insert, align 1, !tbaa !17
  br label %.preheader62.backedge

.backedge.loopexit:                               ; preds = %.preheader
  %i.m = trunc nsw i64 %indvars.iv to i32
  %i.n = trunc nsw i64 %indvars.iv73 to i32
  br label %.preheader62.backedge

.preheader62.backedge:                            ; preds = %.backedge.loopexit, %bb.e
  %.be = phi i8 [ %i.h, %.backedge.loopexit ], [ %.pre.pre, %bb.e ]
  %.037.be = phi i32 [ %i.m, %.backedge.loopexit ], [ %i.k, %bb.e ]
  %.0.be = phi i32 [ %i.n, %.backedge.loopexit ], [ %i.l, %bb.e ]
  br label %.preheader62, !llvm.loop !102

bb.f:                                             ; preds = %.preheader62
  %.not44 = icmp eq i8 %i.f, 0
  br i1 %.not44, label %.preheader97, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !17
  %.not58 = icmp eq i8 %i.q, 47
  %.not59 = icmp eq i8 %i.f, 47
  %or.cond = or i1 %.not59, %.not58
  br i1 %or.cond, label %.preheader97, label %.loopexit63

.preheader97:                                     ; preds = %bb.g, %bb.f
  br label %bb.h

bb.h:                                             ; preds = %.preheader97, %bb.h
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %bb.h ], [ %i.d, %.preheader97 ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %0, i64 %indvars.iv78
  %i.s = load i8, ptr %i.r, align 1, !tbaa !17
  %.not60 = icmp eq i8 %i.s, 47
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1
  br i1 %.not60, label %bb.h, label %bb.i, !llvm.loop !103

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds i8, ptr %0, i64 %indvars.iv78 ; 3 uses
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @remove_leading_path.buf, i64 8), align 8, !tbaa !48
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @remove_leading_path.buf, i64 16), align 8, !tbaa !50 ; 2 uses
  %.not9.i = icmp eq ptr %i.u, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr %i.u, align 1, !tbaa !17
  br label %strbuf_setlen.exit

bb.k:                                             ; preds = %bb.i
  %i.v = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !17
  %.not10.i = icmp eq i8 %i.v, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #31
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.j, %bb.k
  %i.w = load i8, ptr %i.t, align 1, !tbaa !17
  %.not48 = icmp eq i8 %i.w, 0
  br i1 %.not48, label %bb.m, label %bb.n

bb.m:                                             ; preds = %strbuf_setlen.exit
  tail call void @strbuf_add(ptr noundef nonnull @remove_leading_path.buf, ptr noundef nonnull @.str.8, i64 noundef 1) #30
  br label %bb.o

bb.n:                                             ; preds = %strbuf_setlen.exit
  %i.x = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #29
  tail call void @strbuf_add(ptr noundef nonnull @remove_leading_path.buf, ptr noundef nonnull %i.t, i64 noundef %i.x) #30
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @remove_leading_path.buf, i64 16), align 8, !tbaa !50
  br label %.loopexit63

.loopexit63:                                      ; preds = %bb.d, %bb.c, %bb.g, %bb.a, %bb.b, %bb.o
  %.039 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %i.y, %bb.o ], [ %0, %bb.g ], [ %0, %bb.c ], [ %0, %bb.d ]
  ret ptr %.039
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 1) i32 @normalize_path_copy_len(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #16 {
bb.a:
  %.val = load i8, ptr %1, align 1, !tbaa !17
  %i.a = icmp eq i8 %.val, 47                     ; 2 uses
  %i.b = zext i1 %i.a to i64                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  br i1 %i.a, label %iter.check, label %.preheader108

iter.check:                                       ; preds = %bb.a
  %i.d = ptrtoaddr ptr %0 to i64
  %i.e = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.f = add i64 %i.e, %i.b
  %i.g = add i64 %i.e, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.g)
  %i.h = sub i64 %umax, %i.e                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.h, 8
  %i.i = sub i64 %i.e, %i.d
  %diff.check = icmp ugt i64 %i.i, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check182 = icmp ult i64 %i.h, 32
  br i1 %min.iters.check182, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.h, 24
  %n.vec = and i64 %i.h, -32                      ; 5 uses
  %i.k = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep183 = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.m = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !17
  %wide.load184 = load <16 x i8>, ptr %i.m, align 1, !tbaa !17
  %i.n = getelementptr i8, ptr %next.gep183, i64 16
  store <16 x i8> %wide.load, ptr %next.gep183, align 1, !tbaa !17
  store <16 x i8> %wide.load184, ptr %i.n, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.preheader108, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !63

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec186 = and i64 %i.h, -8                    ; 4 uses
  %i.p = getelementptr i8, ptr %1, i64 %n.vec186  ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 %n.vec186  ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index187 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next191, %vec.epilog.vector.body ] ; 3 uses
  %next.gep188 = getelementptr i8, ptr %1, i64 %index187
  %next.gep189 = getelementptr i8, ptr %0, i64 %index187
  %wide.load190 = load <8 x i8>, ptr %next.gep188, align 1, !tbaa !17
  store <8 x i8> %wide.load190, ptr %next.gep189, align 1, !tbaa !17
  %index.next191 = add nuw i64 %index187, 8       ; 2 uses
  %i.r = icmp eq i64 %index.next191, %n.vec186
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !105

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n192 = icmp eq i64 %i.h, %n.vec186
  br i1 %cmp.n192, label %.preheader108, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.054114.ph = phi ptr [ %1, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ]
  %.057113.ph = phi ptr [ %0, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader108:                                    ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.057.lcssa = phi ptr [ %0, %bb.a ], [ %i.q, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.u, %.lr.ph ] ; 7 uses
  %.054.lcssa = phi ptr [ %1, %bb.a ], [ %i.p, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %i.s, %.lr.ph ]
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.054114 = phi ptr [ %i.s, %.lr.ph ], [ %.054114.ph, %.lr.ph.preheader ] ; 2 uses
  %.057113 = phi ptr [ %i.u, %.lr.ph ], [ %.057113.ph, %.lr.ph.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.054114, i64 1 ; 3 uses
  %i.t = load i8, ptr %.054114, align 1, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %.057113, i64 1 ; 2 uses
  store i8 %i.t, ptr %.057113, align 1, !tbaa !17
  %i.v = icmp ult ptr %i.s, %i.c
  br i1 %i.v, label %.lr.ph, label %.preheader108, !llvm.loop !106

bb.b:                                             ; preds = %.preheader108, %bb.b
  %.0.i = phi ptr [ %i.x, %bb.b ], [ %.054.lcssa, %.preheader108 ] ; 4 uses
  %i.w = load i8, ptr %.0.i, align 1, !tbaa !17   ; 3 uses
  %.not.i = icmp eq i8 %i.w, 47
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br i1 %.not.i, label %bb.b, label %skip_slashes.exit.preheader, !llvm.loop !1

skip_slashes.exit.preheader:                      ; preds = %bb.b
  %.not81 = icmp eq ptr %2, null
  %i.y = ptrtoint ptr %.057.lcssa to i64
  br i1 %.not81, label %skip_slashes.exit.us.outer, label %skip_slashes.exit

skip_slashes.exit.us.outer.backedge:              ; preds = %.preheader.us.preheader, %.preheader.us, %.lr.ph118.us
  %.ph.be = phi i8 [ %i.av, %.lr.ph118.us ], [ %.pr.us137, %.preheader.us ], [ %.pr.us137, %.preheader.us.preheader ]
  %.158.us.ph198.be = phi ptr [ %i.at, %.lr.ph118.us ], [ %.461.us181, %.preheader.us.preheader ], [ %i.ak, %.preheader.us ]
  %.155.us.ph.be = phi ptr [ %.4117.us, %.lr.ph118.us ], [ %.6.us, %.preheader.us ], [ %.6.us, %.preheader.us.preheader ]
  br label %skip_slashes.exit.us.outer

skip_slashes.exit.us.outer:                       ; preds = %skip_slashes.exit.preheader, %skip_slashes.exit.us.outer.backedge
  %.ph = phi i8 [ %.ph.be, %skip_slashes.exit.us.outer.backedge ], [ %i.w, %skip_slashes.exit.preheader ]
  %.158.us.ph198 = phi ptr [ %.158.us.ph198.be, %skip_slashes.exit.us.outer.backedge ], [ %.057.lcssa, %skip_slashes.exit.preheader ] ; 2 uses
  %.155.us.ph = phi ptr [ %.155.us.ph.be, %skip_slashes.exit.us.outer.backedge ], [ %.0.i, %skip_slashes.exit.preheader ]
  br label %skip_slashes.exit.us

skip_slashes.exit.us:                             ; preds = %bb.h, %skip_slashes.exit.us.outer
  %i.z = phi i8 [ %.ph, %skip_slashes.exit.us.outer ], [ %i.an, %bb.h ]
  %.155.us = phi ptr [ %.155.us.ph, %skip_slashes.exit.us.outer ], [ %.0.i84.us, %bb.h ] ; 8 uses
  %i.aa = icmp eq i8 %i.z, 46
  br i1 %i.aa, label %bb.c, label %.preheader195

bb.c:                                             ; preds = %skip_slashes.exit.us
  %i.ab = getelementptr inbounds nuw i8, ptr %.155.us, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !17
  switch i8 %i.ac, label %.preheader195 [
    i8 0, label %.preheader195.loopexit.split.loop.exit230
    i8 47, label %bb.g
    i8 46, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.155.us, i64 2 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !17  ; 2 uses
  switch i8 %i.ae, label %.preheader195 [
    i8 0, label %skip_slashes.exit89.us
    i8 47, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.155.us, i64 3
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i87.us = phi ptr [ %i.af, %bb.e ], [ %i.ah, %bb.f ] ; 3 uses
  %i.ag = load i8, ptr %.0.i87.us, align 1, !tbaa !17 ; 2 uses
  %.not.i88.us = icmp eq i8 %i.ag, 47
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i87.us, i64 1
  br i1 %.not.i88.us, label %bb.f, label %skip_slashes.exit89.us, !llvm.loop !1

skip_slashes.exit89.us:                           ; preds = %bb.f, %bb.d
  %.pr.us137 = phi i8 [ %i.ae, %bb.d ], [ %i.ag, %bb.f ] ; 2 uses
  %.6.us = phi ptr [ %i.ad, %bb.d ], [ %.0.i87.us, %bb.f ] ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.158.us.ph198, i64 -1 ; 2 uses
  %.not79.us = icmp ugt ptr %i.ai, %.057.lcssa
  br i1 %.not79.us, label %.preheader.us.preheader, label %skip_slashes.exit86

.preheader.us:                                    ; preds = %.preheader.us.preheader
  %i.aj = icmp ult ptr %.057.lcssa, %i.ak
  br i1 %i.aj, label %.preheader.us.preheader, label %skip_slashes.exit.us.outer.backedge, !llvm.loop !2

.preheader.us.preheader:                          ; preds = %skip_slashes.exit89.us, %.preheader.us
  %.461.us181 = phi ptr [ %i.ak, %.preheader.us ], [ %i.ai, %skip_slashes.exit89.us ] ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.461.us181, i64 -1 ; 4 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !17
  %.not80.us = icmp eq i8 %i.al, 47
  br i1 %.not80.us, label %skip_slashes.exit.us.outer.backedge, label %.preheader.us, !llvm.loop !2

bb.g:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %.155.us, i64 2
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.0.i84.us = phi ptr [ %i.am, %bb.g ], [ %i.ao, %bb.h ] ; 3 uses
  %i.an = load i8, ptr %.0.i84.us, align 1, !tbaa !17 ; 2 uses
  %.not.i85.us = icmp eq i8 %i.an, 47
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i84.us, i64 1
  br i1 %.not.i85.us, label %bb.h, label %skip_slashes.exit.us, !llvm.loop !1

.preheader195.loopexit.split.loop.exit230:        ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %.155.us, i64 1
  br label %.preheader195

.preheader195:                                    ; preds = %.preheader195.loopexit.split.loop.exit230, %skip_slashes.exit.us, %bb.c, %bb.d
  %.3.us.ph = phi ptr [ %.155.us, %bb.d ], [ %.155.us, %bb.c ], [ %i.ap, %.preheader195.loopexit.split.loop.exit230 ], [ %.155.us, %skip_slashes.exit.us ]
  br label %bb.i

bb.i:                                             ; preds = %.preheader195, %bb.j
  %.259.us = phi ptr [ %i.as, %bb.j ], [ %.158.us.ph198, %.preheader195 ] ; 5 uses
  %.3.us = phi ptr [ %i.aq, %bb.j ], [ %.3.us.ph, %.preheader195 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.3.us, i64 1 ; 2 uses
  %i.ar = load i8, ptr %.3.us, align 1, !tbaa !17 ; 2 uses
  switch i8 %i.ar, label %bb.j [
    i8 0, label %.split.us
    i8 47, label %.lr.ph118.us.preheader
  ]

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %.259.us, i64 1
  store i8 %i.ar, ptr %.259.us, align 1, !tbaa !17
  br label %bb.i, !llvm.loop !3

.lr.ph118.us.preheader:                           ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %.259.us, i64 1
  store i8 47, ptr %.259.us, align 1, !tbaa !17
  br label %.lr.ph118.us

.lr.ph118.us:                                     ; preds = %.lr.ph118.us.preheader, %.lr.ph118.us
  %.4117.us = phi ptr [ %i.au, %.lr.ph118.us ], [ %i.aq, %.lr.ph118.us.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.4117.us, i64 1
  %i.av = load i8, ptr %.4117.us, align 1, !tbaa !17 ; 2 uses
  %.not106.us = icmp eq i8 %i.av, 47
  br i1 %.not106.us, label %.lr.ph118.us, label %skip_slashes.exit.us.outer.backedge, !llvm.loop !4

thread-pre-split:                                 ; preds = %bb.m, %.lr.ph118, %.critedge2, %bb.s
  %.562.ph = phi ptr [ %.461.lcssa, %.critedge2 ], [ %.461.lcssa, %bb.s ], [ %i.bl, %.lr.ph118 ], [ %.158, %bb.m ]
  %.7.ph = phi ptr [ %.6, %.critedge2 ], [ %.6, %bb.s ], [ %.4117, %.lr.ph118 ], [ %.0.i84, %bb.m ] ; 2 uses
  %.pr = load i8, ptr %.7.ph, align 1, !tbaa !17
  br label %skip_slashes.exit

skip_slashes.exit:                                ; preds = %skip_slashes.exit.preheader, %thread-pre-split
  %i.aw = phi i8 [ %.pr, %thread-pre-split ], [ %i.w, %skip_slashes.exit.preheader ]
  %.158 = phi ptr [ %.562.ph, %thread-pre-split ], [ %.057.lcssa, %skip_slashes.exit.preheader ] ; 3 uses
  %.155 = phi ptr [ %.7.ph, %thread-pre-split ], [ %.0.i, %skip_slashes.exit.preheader ] ; 7 uses
  %i.ax = icmp eq i8 %i.aw, 46
  br i1 %i.ax, label %bb.k, label %.preheader206

bb.k:                                             ; preds = %skip_slashes.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %.155, i64 1 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !17
  switch i8 %i.az, label %.fold.split [
    i8 0, label %.preheader206
    i8 47, label %bb.l
    i8 46, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %.155, i64 2
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.0.i84 = phi ptr [ %i.ba, %bb.l ], [ %i.bc, %bb.m ] ; 3 uses
  %i.bb = load i8, ptr %.0.i84, align 1, !tbaa !17
  %.not.i85 = icmp eq i8 %i.bb, 47
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i84, i64 1
  br i1 %.not.i85, label %bb.m, label %thread-pre-split, !llvm.loop !1

bb.n:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %.155, i64 2 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !17
  switch i8 %i.be, label %.preheader206 [
    i8 0, label %skip_slashes.exit89
    i8 47, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %.155, i64 3
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.0.i87 = phi ptr [ %i.bf, %bb.o ], [ %i.bh, %bb.p ] ; 3 uses
  %i.bg = load i8, ptr %.0.i87, align 1, !tbaa !17
  %.not.i88 = icmp eq i8 %i.bg, 47
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i87, i64 1
  br i1 %.not.i88, label %bb.p, label %skip_slashes.exit89, !llvm.loop !1

.fold.split:                                      ; preds = %bb.k
  br label %.preheader206

.preheader206:                                    ; preds = %bb.n, %bb.k, %.fold.split, %skip_slashes.exit
  %.3.ph = phi ptr [ %.155, %skip_slashes.exit ], [ %.155, %.fold.split ], [ %i.ay, %bb.k ], [ %.155, %bb.n ]
  br label %bb.q

bb.q:                                             ; preds = %.preheader206, %bb.r
  %.259 = phi ptr [ %i.bk, %bb.r ], [ %.158, %.preheader206 ] ; 5 uses
  %.3 = phi ptr [ %i.bi, %bb.r ], [ %.3.ph, %.preheader206 ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  %i.bj = load i8, ptr %.3, align 1, !tbaa !17    ; 2 uses
  switch i8 %i.bj, label %bb.r [
    i8 0, label %.split.us
    i8 47, label %.lr.ph118.preheader
  ]

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %.259, i64 1
  store i8 %i.bj, ptr %.259, align 1, !tbaa !17
  br label %bb.q, !llvm.loop !3

.lr.ph118.preheader:                              ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %.259, i64 1
  store i8 47, ptr %.259, align 1, !tbaa !17
  br label %.lr.ph118

.lr.ph118:                                        ; preds = %.lr.ph118.preheader, %.lr.ph118
  %.4117 = phi ptr [ %i.bm, %.lr.ph118 ], [ %i.bi, %.lr.ph118.preheader ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.4117, i64 1
  %i.bn = load i8, ptr %.4117, align 1, !tbaa !17
  %.not106 = icmp eq i8 %i.bn, 47
  br i1 %.not106, label %.lr.ph118, label %thread-pre-split, !llvm.loop !4

skip_slashes.exit89:                              ; preds = %bb.p, %bb.n
  %.6 = phi ptr [ %i.bd, %bb.n ], [ %.0.i87, %bb.p ] ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %.158, i64 -1 ; 2 uses
  %.not79 = icmp ugt ptr %i.bo, %.057.lcssa
  br i1 %.not79, label %.preheader.preheader, label %skip_slashes.exit86

.preheader:                                       ; preds = %.preheader.preheader
  %i.bp = icmp ult ptr %.057.lcssa, %i.bq
  br i1 %i.bp, label %.preheader.preheader, label %.critedge2, !llvm.loop !2

.preheader.preheader:                             ; preds = %skip_slashes.exit89, %.preheader
  %.461180 = phi ptr [ %i.bq, %.preheader ], [ %i.bo, %skip_slashes.exit89 ] ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %.461180, i64 -1 ; 4 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !17
  %.not80 = icmp eq i8 %i.br, 47
  br i1 %.not80, label %.critedge2, label %.preheader, !llvm.loop !2

.critedge2:                                       ; preds = %.preheader, %.preheader.preheader
  %.461.lcssa = phi ptr [ %i.bq, %.preheader ], [ %.461180, %.preheader.preheader ] ; 3 uses
  %i.bs = load i32, ptr %2, align 4, !tbaa !56
  %i.bt = sext i32 %i.bs to i64
  %i.bu = ptrtoint ptr %.461.lcssa to i64
  %i.bv = sub i64 %i.bu, %i.y                     ; 2 uses
  %i.bw = icmp slt i64 %i.bv, %i.bt
  br i1 %i.bw, label %bb.s, label %thread-pre-split

bb.s:                                             ; preds = %.critedge2
  %i.bx = trunc i64 %i.bv to i32
  store i32 %i.bx, ptr %2, align 4, !tbaa !56
  br label %thread-pre-split

.split.us:                                        ; preds = %bb.q, %bb.i
  %.us-phi = phi ptr [ %.259.us, %bb.i ], [ %.259, %bb.q ]
  store i8 0, ptr %.us-phi, align 1, !tbaa !17
  br label %skip_slashes.exit86

skip_slashes.exit86:                              ; preds = %skip_slashes.exit89, %skip_slashes.exit89.us, %.split.us
  %.2 = phi i32 [ 0, %.split.us ], [ -1, %skip_slashes.exit89.us ], [ -1, %skip_slashes.exit89 ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 1) i32 @normalize_path_copy(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #17 {
bb.a:
  %.val.i = load i8, ptr %1, align 1, !tbaa !17
  %i.a = icmp eq i8 %.val.i, 47                   ; 2 uses
  %i.b = zext i1 %i.a to i64                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  br i1 %i.a, label %iter.check, label %.preheader108.i

iter.check:                                       ; preds = %bb.a
  %i.d = ptrtoaddr ptr %0 to i64
  %i.e = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.f = add i64 %i.e, %i.b
  %i.g = add i64 %i.e, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.g)
  %i.h = sub i64 %umax, %i.e                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.h, 8
  %i.i = sub i64 %i.e, %i.d
  %diff.check = icmp ugt i64 %i.i, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check48 = icmp ult i64 %i.h, 32
  br i1 %min.iters.check48, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.h, 24
  %n.vec = and i64 %i.h, -32                      ; 5 uses
  %i.k = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep49 = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.m = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !17
  %wide.load50 = load <16 x i8>, ptr %i.m, align 1, !tbaa !17
  %i.n = getelementptr i8, ptr %next.gep49, i64 16
  store <16 x i8> %wide.load, ptr %next.gep49, align 1, !tbaa !17
  store <16 x i8> %wide.load50, ptr %i.n, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.preheader108.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !63

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %i.h, -8                     ; 4 uses
  %i.p = getelementptr i8, ptr %1, i64 %n.vec52   ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 %n.vec52   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 3 uses
  %next.gep54 = getelementptr i8, ptr %1, i64 %index53
  %next.gep55 = getelementptr i8, ptr %0, i64 %index53
  %wide.load56 = load <8 x i8>, ptr %next.gep54, align 1, !tbaa !17
  store <8 x i8> %wide.load56, ptr %next.gep55, align 1, !tbaa !17
  %index.next57 = add nuw i64 %index53, 8         ; 2 uses
  %i.r = icmp eq i64 %index.next57, %n.vec52
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !108

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %i.h, %n.vec52
  br i1 %cmp.n58, label %.preheader108.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.054114.i.ph = phi ptr [ %1, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ]
  %.057113.i.ph = phi ptr [ %0, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.preheader108.i:                                  ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  %.057.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.q, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.u, %.lr.ph.i ] ; 3 uses
  %.054.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.p, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %i.s, %.lr.ph.i ]
  br label %bb.b

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.054114.i = phi ptr [ %i.s, %.lr.ph.i ], [ %.054114.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057113.i = phi ptr [ %i.u, %.lr.ph.i ], [ %.057113.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.054114.i, i64 1 ; 3 uses
  %i.t = load i8, ptr %.054114.i, align 1, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %.057113.i, i64 1 ; 2 uses
  store i8 %i.t, ptr %.057113.i, align 1, !tbaa !17
  %i.v = icmp ult ptr %i.s, %i.c
  br i1 %i.v, label %.lr.ph.i, label %.preheader108.i, !llvm.loop !109

bb.b:                                             ; preds = %bb.b, %.preheader108.i
  %.0.i.i = phi ptr [ %i.x, %bb.b ], [ %.054.lcssa.i, %.preheader108.i ] ; 3 uses
  %i.w = load i8, ptr %.0.i.i, align 1, !tbaa !17 ; 2 uses
  %.not.i.i = icmp eq i8 %i.w, 47
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br i1 %.not.i.i, label %bb.b, label %skip_slashes.exit.us.i.outer, !llvm.loop !1

skip_slashes.exit.us.i.outer.backedge:            ; preds = %.preheader.us.i, %.preheader.us.i.preheader, %thread-pre-split.us.i.loopexit
  %.ph.be = phi i8 [ %i.at, %thread-pre-split.us.i.loopexit ], [ %.pr.us137.i, %.preheader.us.i.preheader ], [ %.pr.us137.i, %.preheader.us.i ]
  %.158.us.i.ph62.be = phi ptr [ %i.au, %thread-pre-split.us.i.loopexit ], [ %i.aj, %.preheader.us.i ], [ %.461.us.i47, %.preheader.us.i.preheader ]
  %.155.us.i.ph.be = phi ptr [ %.4117.us.i, %thread-pre-split.us.i.loopexit ], [ %.6.us.i, %.preheader.us.i.preheader ], [ %.6.us.i, %.preheader.us.i ]
  br label %skip_slashes.exit.us.i.outer

skip_slashes.exit.us.i.outer:                     ; preds = %bb.b, %skip_slashes.exit.us.i.outer.backedge
  %.ph = phi i8 [ %.ph.be, %skip_slashes.exit.us.i.outer.backedge ], [ %i.w, %bb.b ]
  %.158.us.i.ph62 = phi ptr [ %.158.us.i.ph62.be, %skip_slashes.exit.us.i.outer.backedge ], [ %.057.lcssa.i, %bb.b ] ; 2 uses
  %.155.us.i.ph = phi ptr [ %.155.us.i.ph.be, %skip_slashes.exit.us.i.outer.backedge ], [ %.0.i.i, %bb.b ]
  br label %skip_slashes.exit.us.i

skip_slashes.exit.us.i:                           ; preds = %bb.h, %skip_slashes.exit.us.i.outer
  %i.y = phi i8 [ %.ph, %skip_slashes.exit.us.i.outer ], [ %i.am, %bb.h ]
  %.155.us.i = phi ptr [ %.155.us.i.ph, %skip_slashes.exit.us.i.outer ], [ %.0.i84.us.i, %bb.h ] ; 8 uses
  %i.z = icmp eq i8 %i.y, 46
  br i1 %i.z, label %bb.c, label %.preheader

bb.c:                                             ; preds = %skip_slashes.exit.us.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.155.us.i, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !17
  switch i8 %i.ab, label %.preheader [
    i8 0, label %.preheader.loopexit.split.loop.exit83
    i8 47, label %bb.g
    i8 46, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.155.us.i, i64 2 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !17  ; 2 uses
  switch i8 %i.ad, label %.preheader [
    i8 0, label %skip_slashes.exit89.us.i
    i8 47, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.155.us.i, i64 3
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i87.us.i = phi ptr [ %i.ae, %bb.e ], [ %i.ag, %bb.f ] ; 3 uses
  %i.af = load i8, ptr %.0.i87.us.i, align 1, !tbaa !17 ; 2 uses
  %.not.i88.us.i = icmp eq i8 %i.af, 47
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i87.us.i, i64 1
  br i1 %.not.i88.us.i, label %bb.f, label %skip_slashes.exit89.us.i, !llvm.loop !1

skip_slashes.exit89.us.i:                         ; preds = %bb.f, %bb.d
  %.pr.us137.i = phi i8 [ %i.ad, %bb.d ], [ %i.af, %bb.f ] ; 2 uses
  %.6.us.i = phi ptr [ %i.ac, %bb.d ], [ %.0.i87.us.i, %bb.f ] ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.158.us.i.ph62, i64 -1 ; 2 uses
  %.not79.us.i = icmp ugt ptr %i.ah, %.057.lcssa.i
  br i1 %.not79.us.i, label %.preheader.us.i.preheader, label %normalize_path_copy_len.exit

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader
  %i.ai = icmp ult ptr %.057.lcssa.i, %i.aj
  br i1 %i.ai, label %.preheader.us.i.preheader, label %skip_slashes.exit.us.i.outer.backedge, !llvm.loop !2

.preheader.us.i.preheader:                        ; preds = %skip_slashes.exit89.us.i, %.preheader.us.i
  %.461.us.i47 = phi ptr [ %i.aj, %.preheader.us.i ], [ %i.ah, %skip_slashes.exit89.us.i ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.461.us.i47, i64 -1 ; 4 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17
  %.not80.us.i = icmp eq i8 %i.ak, 47
  br i1 %.not80.us.i, label %skip_slashes.exit.us.i.outer.backedge, label %.preheader.us.i, !llvm.loop !2

bb.g:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.155.us.i, i64 2
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.0.i84.us.i = phi ptr [ %i.al, %bb.g ], [ %i.an, %bb.h ] ; 3 uses
  %i.am = load i8, ptr %.0.i84.us.i, align 1, !tbaa !17 ; 2 uses
  %.not.i85.us.i = icmp eq i8 %i.am, 47
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i84.us.i, i64 1
  br i1 %.not.i85.us.i, label %bb.h, label %skip_slashes.exit.us.i, !llvm.loop !1

.preheader.loopexit.split.loop.exit83:            ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.155.us.i, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.split.loop.exit83, %skip_slashes.exit.us.i, %bb.c, %bb.d
  %.3.us.i.ph = phi ptr [ %.155.us.i, %bb.d ], [ %.155.us.i, %bb.c ], [ %i.ao, %.preheader.loopexit.split.loop.exit83 ], [ %.155.us.i, %skip_slashes.exit.us.i ]
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.j
  %.259.us.i = phi ptr [ %i.ar, %bb.j ], [ %.158.us.i.ph62, %.preheader ] ; 5 uses
  %.3.us.i = phi ptr [ %i.ap, %bb.j ], [ %.3.us.i.ph, %.preheader ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.3.us.i, i64 1 ; 2 uses
  %i.aq = load i8, ptr %.3.us.i, align 1, !tbaa !17 ; 2 uses
  switch i8 %i.aq, label %bb.j [
    i8 0, label %.split.us.i
    i8 47, label %.lr.ph118.us.preheader.i
  ]

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.259.us.i, i64 1
  store i8 %i.aq, ptr %.259.us.i, align 1, !tbaa !17
  br label %bb.i, !llvm.loop !3

.lr.ph118.us.preheader.i:                         ; preds = %bb.i
  store i8 47, ptr %.259.us.i, align 1, !tbaa !17
  br label %.lr.ph118.us.i

.lr.ph118.us.i:                                   ; preds = %.lr.ph118.us.i, %.lr.ph118.us.preheader.i
  %.4117.us.i = phi ptr [ %i.as, %.lr.ph118.us.i ], [ %i.ap, %.lr.ph118.us.preheader.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.4117.us.i, i64 1
  %i.at = load i8, ptr %.4117.us.i, align 1, !tbaa !17 ; 2 uses
  %.not106.us.i = icmp eq i8 %i.at, 47
  br i1 %.not106.us.i, label %.lr.ph118.us.i, label %thread-pre-split.us.i.loopexit, !llvm.loop !4

thread-pre-split.us.i.loopexit:                   ; preds = %.lr.ph118.us.i
  %i.au = getelementptr inbounds nuw i8, ptr %.259.us.i, i64 1
  br label %skip_slashes.exit.us.i.outer.backedge

.split.us.i:                                      ; preds = %bb.i
  store i8 0, ptr %.259.us.i, align 1, !tbaa !17
end_hunk_0
