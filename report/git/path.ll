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
  %i.d = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.e = add i64 %i.d, %i.b
  %i.f = add i64 %i.d, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.f)
  %i.g = sub i64 %umax, %i.d                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.g, 8
  %3 = ptrtoaddr ptr %0 to i64
  %4 = ptrtoaddr ptr %1 to i64
  %i.h = sub i64 %4, %3
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check182 = icmp ult i64 %i.g, 32
  br i1 %min.iters.check182, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %i.g, 24
  %n.vec = and i64 %i.g, -32                      ; 5 uses
  %i.j = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep183 = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !17
  %wide.load184 = load <16 x i8>, ptr %i.l, align 1, !tbaa !17
  %i.m = getelementptr i8, ptr %next.gep183, i64 16
  store <16 x i8> %wide.load, ptr %next.gep183, align 1, !tbaa !17
  store <16 x i8> %wide.load184, ptr %i.m, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %.preheader108, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !63

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec186 = and i64 %i.g, -8                    ; 4 uses
  %i.o = getelementptr i8, ptr %1, i64 %n.vec186  ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 %n.vec186  ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index187 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next191, %vec.epilog.vector.body ] ; 3 uses
  %next.gep188 = getelementptr i8, ptr %1, i64 %index187
  %next.gep189 = getelementptr i8, ptr %0, i64 %index187
  %wide.load190 = load <8 x i8>, ptr %next.gep188, align 1, !tbaa !17
  store <8 x i8> %wide.load190, ptr %next.gep189, align 1, !tbaa !17
  %index.next191 = add nuw i64 %index187, 8       ; 2 uses
  %i.q = icmp eq i64 %index.next191, %n.vec186
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !105

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n192 = icmp eq i64 %i.g, %n.vec186
  br i1 %cmp.n192, label %.preheader108, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.054114.ph = phi ptr [ %1, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ]
  %.057113.ph = phi ptr [ %0, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader108:                                    ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.057.lcssa = phi ptr [ %0, %bb.a ], [ %i.p, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %i.t, %.lr.ph ] ; 7 uses
  %.054.lcssa = phi ptr [ %1, %bb.a ], [ %i.o, %vec.epilog.middle.block ], [ %i.j, %middle.block ], [ %i.r, %.lr.ph ]
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.054114 = phi ptr [ %i.r, %.lr.ph ], [ %.054114.ph, %.lr.ph.preheader ] ; 2 uses
  %.057113 = phi ptr [ %i.t, %.lr.ph ], [ %.057113.ph, %.lr.ph.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.054114, i64 1 ; 3 uses
  %i.s = load i8, ptr %.054114, align 1, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %.057113, i64 1 ; 2 uses
  store i8 %i.s, ptr %.057113, align 1, !tbaa !17
  %i.u = icmp ult ptr %i.r, %i.c
  br i1 %i.u, label %.lr.ph, label %.preheader108, !llvm.loop !106

bb.b:                                             ; preds = %.preheader108, %bb.b
  %.0.i = phi ptr [ %i.w, %bb.b ], [ %.054.lcssa, %.preheader108 ] ; 4 uses
  %i.v = load i8, ptr %.0.i, align 1, !tbaa !17   ; 3 uses
  %.not.i = icmp eq i8 %i.v, 47
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br i1 %.not.i, label %bb.b, label %skip_slashes.exit.preheader, !llvm.loop !1

skip_slashes.exit.preheader:                      ; preds = %bb.b
  %.not81 = icmp eq ptr %2, null
  %i.x = ptrtoint ptr %.057.lcssa to i64
  br i1 %.not81, label %skip_slashes.exit.us.outer, label %skip_slashes.exit

skip_slashes.exit.us.outer.backedge:              ; preds = %.preheader.us.preheader, %.preheader.us, %.lr.ph118.us
  %.ph.be = phi i8 [ %i.au, %.lr.ph118.us ], [ %.pr.us137, %.preheader.us ], [ %.pr.us137, %.preheader.us.preheader ]
  %.158.us.ph198.be = phi ptr [ %i.as, %.lr.ph118.us ], [ %.461.us181, %.preheader.us.preheader ], [ %i.aj, %.preheader.us ]
  %.155.us.ph.be = phi ptr [ %.4117.us, %.lr.ph118.us ], [ %.6.us, %.preheader.us ], [ %.6.us, %.preheader.us.preheader ]
  br label %skip_slashes.exit.us.outer

skip_slashes.exit.us.outer:                       ; preds = %skip_slashes.exit.preheader, %skip_slashes.exit.us.outer.backedge
  %.ph = phi i8 [ %.ph.be, %skip_slashes.exit.us.outer.backedge ], [ %i.v, %skip_slashes.exit.preheader ]
  %.158.us.ph198 = phi ptr [ %.158.us.ph198.be, %skip_slashes.exit.us.outer.backedge ], [ %.057.lcssa, %skip_slashes.exit.preheader ] ; 2 uses
  %.155.us.ph = phi ptr [ %.155.us.ph.be, %skip_slashes.exit.us.outer.backedge ], [ %.0.i, %skip_slashes.exit.preheader ]
  br label %skip_slashes.exit.us

skip_slashes.exit.us:                             ; preds = %bb.h, %skip_slashes.exit.us.outer
  %i.y = phi i8 [ %.ph, %skip_slashes.exit.us.outer ], [ %i.am, %bb.h ]
  %.155.us = phi ptr [ %.155.us.ph, %skip_slashes.exit.us.outer ], [ %.0.i84.us, %bb.h ] ; 8 uses
  %i.z = icmp eq i8 %i.y, 46
  br i1 %i.z, label %bb.c, label %.preheader195

bb.c:                                             ; preds = %skip_slashes.exit.us
  %i.aa = getelementptr inbounds nuw i8, ptr %.155.us, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !17
  switch i8 %i.ab, label %.preheader195 [
    i8 0, label %.preheader195.loopexit.split.loop.exit230
    i8 47, label %bb.g
    i8 46, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.155.us, i64 2 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !17  ; 2 uses
  switch i8 %i.ad, label %.preheader195 [
    i8 0, label %skip_slashes.exit89.us
    i8 47, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.155.us, i64 3
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i87.us = phi ptr [ %i.ae, %bb.e ], [ %i.ag, %bb.f ] ; 3 uses
  %i.af = load i8, ptr %.0.i87.us, align 1, !tbaa !17 ; 2 uses
  %.not.i88.us = icmp eq i8 %i.af, 47
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i87.us, i64 1
  br i1 %.not.i88.us, label %bb.f, label %skip_slashes.exit89.us, !llvm.loop !1

skip_slashes.exit89.us:                           ; preds = %bb.f, %bb.d
  %.pr.us137 = phi i8 [ %i.ad, %bb.d ], [ %i.af, %bb.f ] ; 2 uses
  %.6.us = phi ptr [ %i.ac, %bb.d ], [ %.0.i87.us, %bb.f ] ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.158.us.ph198, i64 -1 ; 2 uses
  %.not79.us = icmp ugt ptr %i.ah, %.057.lcssa
  br i1 %.not79.us, label %.preheader.us.preheader, label %skip_slashes.exit86

.preheader.us:                                    ; preds = %.preheader.us.preheader
  %i.ai = icmp ult ptr %.057.lcssa, %i.aj
  br i1 %i.ai, label %.preheader.us.preheader, label %skip_slashes.exit.us.outer.backedge, !llvm.loop !2

.preheader.us.preheader:                          ; preds = %skip_slashes.exit89.us, %.preheader.us
  %.461.us181 = phi ptr [ %i.aj, %.preheader.us ], [ %i.ah, %skip_slashes.exit89.us ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.461.us181, i64 -1 ; 4 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17
  %.not80.us = icmp eq i8 %i.ak, 47
  br i1 %.not80.us, label %skip_slashes.exit.us.outer.backedge, label %.preheader.us, !llvm.loop !2

bb.g:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.155.us, i64 2
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.0.i84.us = phi ptr [ %i.al, %bb.g ], [ %i.an, %bb.h ] ; 3 uses
  %i.am = load i8, ptr %.0.i84.us, align 1, !tbaa !17 ; 2 uses
  %.not.i85.us = icmp eq i8 %i.am, 47
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i84.us, i64 1
  br i1 %.not.i85.us, label %bb.h, label %skip_slashes.exit.us, !llvm.loop !1

.preheader195.loopexit.split.loop.exit230:        ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.155.us, i64 1
  br label %.preheader195

.preheader195:                                    ; preds = %.preheader195.loopexit.split.loop.exit230, %skip_slashes.exit.us, %bb.c, %bb.d
  %.3.us.ph = phi ptr [ %.155.us, %bb.d ], [ %.155.us, %bb.c ], [ %i.ao, %.preheader195.loopexit.split.loop.exit230 ], [ %.155.us, %skip_slashes.exit.us ]
  br label %bb.i

bb.i:                                             ; preds = %.preheader195, %bb.j
  %.259.us = phi ptr [ %i.ar, %bb.j ], [ %.158.us.ph198, %.preheader195 ] ; 5 uses
  %.3.us = phi ptr [ %i.ap, %bb.j ], [ %.3.us.ph, %.preheader195 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.3.us, i64 1 ; 2 uses
  %i.aq = load i8, ptr %.3.us, align 1, !tbaa !17 ; 2 uses
  switch i8 %i.aq, label %bb.j [
    i8 0, label %.split.us
    i8 47, label %.lr.ph118.us.preheader
  ]

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.259.us, i64 1
  store i8 %i.aq, ptr %.259.us, align 1, !tbaa !17
  br label %bb.i, !llvm.loop !3

.lr.ph118.us.preheader:                           ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %.259.us, i64 1
  store i8 47, ptr %.259.us, align 1, !tbaa !17
  br label %.lr.ph118.us

.lr.ph118.us:                                     ; preds = %.lr.ph118.us.preheader, %.lr.ph118.us
  %.4117.us = phi ptr [ %i.at, %.lr.ph118.us ], [ %i.ap, %.lr.ph118.us.preheader ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.4117.us, i64 1
  %i.au = load i8, ptr %.4117.us, align 1, !tbaa !17 ; 2 uses
  %.not106.us = icmp eq i8 %i.au, 47
  br i1 %.not106.us, label %.lr.ph118.us, label %skip_slashes.exit.us.outer.backedge, !llvm.loop !4

thread-pre-split:                                 ; preds = %bb.m, %.lr.ph118, %.critedge2, %bb.s
  %.562.ph = phi ptr [ %.461.lcssa, %.critedge2 ], [ %.461.lcssa, %bb.s ], [ %i.bk, %.lr.ph118 ], [ %.158, %bb.m ]
  %.7.ph = phi ptr [ %.6, %.critedge2 ], [ %.6, %bb.s ], [ %.4117, %.lr.ph118 ], [ %.0.i84, %bb.m ] ; 2 uses
  %.pr = load i8, ptr %.7.ph, align 1, !tbaa !17
  br label %skip_slashes.exit

skip_slashes.exit:                                ; preds = %skip_slashes.exit.preheader, %thread-pre-split
  %i.av = phi i8 [ %.pr, %thread-pre-split ], [ %i.v, %skip_slashes.exit.preheader ]
  %.158 = phi ptr [ %.562.ph, %thread-pre-split ], [ %.057.lcssa, %skip_slashes.exit.preheader ] ; 3 uses
  %.155 = phi ptr [ %.7.ph, %thread-pre-split ], [ %.0.i, %skip_slashes.exit.preheader ] ; 7 uses
  %i.aw = icmp eq i8 %i.av, 46
  br i1 %i.aw, label %bb.k, label %.preheader206

bb.k:                                             ; preds = %skip_slashes.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %.155, i64 1 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !17
  switch i8 %i.ay, label %.fold.split [
    i8 0, label %.preheader206
    i8 47, label %bb.l
    i8 46, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %.155, i64 2
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.0.i84 = phi ptr [ %i.az, %bb.l ], [ %i.bb, %bb.m ] ; 3 uses
  %i.ba = load i8, ptr %.0.i84, align 1, !tbaa !17
  %.not.i85 = icmp eq i8 %i.ba, 47
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i84, i64 1
  br i1 %.not.i85, label %bb.m, label %thread-pre-split, !llvm.loop !1

bb.n:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.155, i64 2 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17
  switch i8 %i.bd, label %.preheader206 [
    i8 0, label %skip_slashes.exit89
    i8 47, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %.155, i64 3
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.0.i87 = phi ptr [ %i.be, %bb.o ], [ %i.bg, %bb.p ] ; 3 uses
  %i.bf = load i8, ptr %.0.i87, align 1, !tbaa !17
  %.not.i88 = icmp eq i8 %i.bf, 47
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i87, i64 1
  br i1 %.not.i88, label %bb.p, label %skip_slashes.exit89, !llvm.loop !1

.fold.split:                                      ; preds = %bb.k
  br label %.preheader206

.preheader206:                                    ; preds = %bb.n, %bb.k, %.fold.split, %skip_slashes.exit
  %.3.ph = phi ptr [ %.155, %skip_slashes.exit ], [ %.155, %.fold.split ], [ %i.ax, %bb.k ], [ %.155, %bb.n ]
  br label %bb.q

bb.q:                                             ; preds = %.preheader206, %bb.r
  %.259 = phi ptr [ %i.bj, %bb.r ], [ %.158, %.preheader206 ] ; 5 uses
  %.3 = phi ptr [ %i.bh, %bb.r ], [ %.3.ph, %.preheader206 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.3, i64 1 ; 2 uses
  %i.bi = load i8, ptr %.3, align 1, !tbaa !17    ; 2 uses
  switch i8 %i.bi, label %bb.r [
    i8 0, label %.split.us
    i8 47, label %.lr.ph118.preheader
  ]

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %.259, i64 1
  store i8 %i.bi, ptr %.259, align 1, !tbaa !17
  br label %bb.q, !llvm.loop !3

.lr.ph118.preheader:                              ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %.259, i64 1
  store i8 47, ptr %.259, align 1, !tbaa !17
  br label %.lr.ph118

.lr.ph118:                                        ; preds = %.lr.ph118.preheader, %.lr.ph118
  %.4117 = phi ptr [ %i.bl, %.lr.ph118 ], [ %i.bh, %.lr.ph118.preheader ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.4117, i64 1
  %i.bm = load i8, ptr %.4117, align 1, !tbaa !17
  %.not106 = icmp eq i8 %i.bm, 47
  br i1 %.not106, label %.lr.ph118, label %thread-pre-split, !llvm.loop !4

skip_slashes.exit89:                              ; preds = %bb.p, %bb.n
  %.6 = phi ptr [ %i.bc, %bb.n ], [ %.0.i87, %bb.p ] ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %.158, i64 -1 ; 2 uses
  %.not79 = icmp ugt ptr %i.bn, %.057.lcssa
  br i1 %.not79, label %.preheader.preheader, label %skip_slashes.exit86

.preheader:                                       ; preds = %.preheader.preheader
  %i.bo = icmp ult ptr %.057.lcssa, %i.bp
  br i1 %i.bo, label %.preheader.preheader, label %.critedge2, !llvm.loop !2

.preheader.preheader:                             ; preds = %skip_slashes.exit89, %.preheader
  %.461180 = phi ptr [ %i.bp, %.preheader ], [ %i.bn, %skip_slashes.exit89 ] ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.461180, i64 -1 ; 4 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !17
  %.not80 = icmp eq i8 %i.bq, 47
  br i1 %.not80, label %.critedge2, label %.preheader, !llvm.loop !2

.critedge2:                                       ; preds = %.preheader, %.preheader.preheader
  %.461.lcssa = phi ptr [ %i.bp, %.preheader ], [ %.461180, %.preheader.preheader ] ; 3 uses
  %i.br = load i32, ptr %2, align 4, !tbaa !56
  %i.bs = sext i32 %i.br to i64
  %i.bt = ptrtoint ptr %.461.lcssa to i64
  %i.bu = sub i64 %i.bt, %i.x                     ; 2 uses
  %i.bv = icmp slt i64 %i.bu, %i.bs
  br i1 %i.bv, label %bb.s, label %thread-pre-split

bb.s:                                             ; preds = %.critedge2
  %i.bw = trunc i64 %i.bu to i32
  store i32 %i.bw, ptr %2, align 4, !tbaa !56
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
  %i.d = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.e = add i64 %i.d, %i.b
  %i.f = add i64 %i.d, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.f)
  %i.g = sub i64 %umax, %i.d                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.g, 8
  %2 = ptrtoaddr ptr %0 to i64
  %3 = ptrtoaddr ptr %1 to i64
  %i.h = sub i64 %3, %2
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check48 = icmp ult i64 %i.g, 32
  br i1 %min.iters.check48, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %i.g, 24
  %n.vec = and i64 %i.g, -32                      ; 5 uses
  %i.j = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep49 = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !17
  %wide.load50 = load <16 x i8>, ptr %i.l, align 1, !tbaa !17
  %i.m = getelementptr i8, ptr %next.gep49, i64 16
  store <16 x i8> %wide.load, ptr %next.gep49, align 1, !tbaa !17
  store <16 x i8> %wide.load50, ptr %i.m, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %.preheader108.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !63

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %i.g, -8                     ; 4 uses
  %i.o = getelementptr i8, ptr %1, i64 %n.vec52   ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 %n.vec52   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 3 uses
  %next.gep54 = getelementptr i8, ptr %1, i64 %index53
  %next.gep55 = getelementptr i8, ptr %0, i64 %index53
  %wide.load56 = load <8 x i8>, ptr %next.gep54, align 1, !tbaa !17
  store <8 x i8> %wide.load56, ptr %next.gep55, align 1, !tbaa !17
  %index.next57 = add nuw i64 %index53, 8         ; 2 uses
  %i.q = icmp eq i64 %index.next57, %n.vec52
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !108

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %i.g, %n.vec52
  br i1 %cmp.n58, label %.preheader108.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.054114.i.ph = phi ptr [ %1, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ]
  %.057113.i.ph = phi ptr [ %0, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.preheader108.i:                                  ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  %.057.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.p, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %.054.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.o, %vec.epilog.middle.block ], [ %i.j, %middle.block ], [ %i.r, %.lr.ph.i ]
  br label %bb.b

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.054114.i = phi ptr [ %i.r, %.lr.ph.i ], [ %.054114.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057113.i = phi ptr [ %i.t, %.lr.ph.i ], [ %.057113.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.054114.i, i64 1 ; 3 uses
  %i.s = load i8, ptr %.054114.i, align 1, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %.057113.i, i64 1 ; 2 uses
  store i8 %i.s, ptr %.057113.i, align 1, !tbaa !17
  %i.u = icmp ult ptr %i.r, %i.c
  br i1 %i.u, label %.lr.ph.i, label %.preheader108.i, !llvm.loop !109

bb.b:                                             ; preds = %bb.b, %.preheader108.i
  %.0.i.i = phi ptr [ %i.w, %bb.b ], [ %.054.lcssa.i, %.preheader108.i ] ; 3 uses
  %i.v = load i8, ptr %.0.i.i, align 1, !tbaa !17 ; 2 uses
  %.not.i.i = icmp eq i8 %i.v, 47
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br i1 %.not.i.i, label %bb.b, label %skip_slashes.exit.us.i.outer, !llvm.loop !1

skip_slashes.exit.us.i.outer.backedge:            ; preds = %.preheader.us.i, %.preheader.us.i.preheader, %thread-pre-split.us.i.loopexit
  %.ph.be = phi i8 [ %i.as, %thread-pre-split.us.i.loopexit ], [ %.pr.us137.i, %.preheader.us.i.preheader ], [ %.pr.us137.i, %.preheader.us.i ]
  %.158.us.i.ph62.be = phi ptr [ %i.at, %thread-pre-split.us.i.loopexit ], [ %i.ai, %.preheader.us.i ], [ %.461.us.i47, %.preheader.us.i.preheader ]
  %.155.us.i.ph.be = phi ptr [ %.4117.us.i, %thread-pre-split.us.i.loopexit ], [ %.6.us.i, %.preheader.us.i.preheader ], [ %.6.us.i, %.preheader.us.i ]
  br label %skip_slashes.exit.us.i.outer

skip_slashes.exit.us.i.outer:                     ; preds = %bb.b, %skip_slashes.exit.us.i.outer.backedge
  %.ph = phi i8 [ %.ph.be, %skip_slashes.exit.us.i.outer.backedge ], [ %i.v, %bb.b ]
  %.158.us.i.ph62 = phi ptr [ %.158.us.i.ph62.be, %skip_slashes.exit.us.i.outer.backedge ], [ %.057.lcssa.i, %bb.b ] ; 2 uses
  %.155.us.i.ph = phi ptr [ %.155.us.i.ph.be, %skip_slashes.exit.us.i.outer.backedge ], [ %.0.i.i, %bb.b ]
  br label %skip_slashes.exit.us.i

skip_slashes.exit.us.i:                           ; preds = %bb.h, %skip_slashes.exit.us.i.outer
  %i.x = phi i8 [ %.ph, %skip_slashes.exit.us.i.outer ], [ %i.al, %bb.h ]
  %.155.us.i = phi ptr [ %.155.us.i.ph, %skip_slashes.exit.us.i.outer ], [ %.0.i84.us.i, %bb.h ] ; 8 uses
  %i.y = icmp eq i8 %i.x, 46
  br i1 %i.y, label %bb.c, label %.preheader

bb.c:                                             ; preds = %skip_slashes.exit.us.i
  %i.z = getelementptr inbounds nuw i8, ptr %.155.us.i, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !17
  switch i8 %i.aa, label %.preheader [
    i8 0, label %.preheader.loopexit.split.loop.exit83
    i8 47, label %bb.g
    i8 46, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.155.us.i, i64 2 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !17  ; 2 uses
  switch i8 %i.ac, label %.preheader [
    i8 0, label %skip_slashes.exit89.us.i
    i8 47, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.155.us.i, i64 3
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i87.us.i = phi ptr [ %i.ad, %bb.e ], [ %i.af, %bb.f ] ; 3 uses
  %i.ae = load i8, ptr %.0.i87.us.i, align 1, !tbaa !17 ; 2 uses
  %.not.i88.us.i = icmp eq i8 %i.ae, 47
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i87.us.i, i64 1
  br i1 %.not.i88.us.i, label %bb.f, label %skip_slashes.exit89.us.i, !llvm.loop !1

skip_slashes.exit89.us.i:                         ; preds = %bb.f, %bb.d
  %.pr.us137.i = phi i8 [ %i.ac, %bb.d ], [ %i.ae, %bb.f ] ; 2 uses
  %.6.us.i = phi ptr [ %i.ab, %bb.d ], [ %.0.i87.us.i, %bb.f ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.158.us.i.ph62, i64 -1 ; 2 uses
  %.not79.us.i = icmp ugt ptr %i.ag, %.057.lcssa.i
  br i1 %.not79.us.i, label %.preheader.us.i.preheader, label %normalize_path_copy_len.exit

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader
  %i.ah = icmp ult ptr %.057.lcssa.i, %i.ai
  br i1 %i.ah, label %.preheader.us.i.preheader, label %skip_slashes.exit.us.i.outer.backedge, !llvm.loop !2

.preheader.us.i.preheader:                        ; preds = %skip_slashes.exit89.us.i, %.preheader.us.i
  %.461.us.i47 = phi ptr [ %i.ai, %.preheader.us.i ], [ %i.ag, %skip_slashes.exit89.us.i ] ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.461.us.i47, i64 -1 ; 4 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !17
  %.not80.us.i = icmp eq i8 %i.aj, 47
  br i1 %.not80.us.i, label %skip_slashes.exit.us.i.outer.backedge, label %.preheader.us.i, !llvm.loop !2

bb.g:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.155.us.i, i64 2
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.0.i84.us.i = phi ptr [ %i.ak, %bb.g ], [ %i.am, %bb.h ] ; 3 uses
  %i.al = load i8, ptr %.0.i84.us.i, align 1, !tbaa !17 ; 2 uses
  %.not.i85.us.i = icmp eq i8 %i.al, 47
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i84.us.i, i64 1
  br i1 %.not.i85.us.i, label %bb.h, label %skip_slashes.exit.us.i, !llvm.loop !1

.preheader.loopexit.split.loop.exit83:            ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %.155.us.i, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.split.loop.exit83, %skip_slashes.exit.us.i, %bb.c, %bb.d
  %.3.us.i.ph = phi ptr [ %.155.us.i, %bb.d ], [ %.155.us.i, %bb.c ], [ %i.an, %.preheader.loopexit.split.loop.exit83 ], [ %.155.us.i, %skip_slashes.exit.us.i ]
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.j
  %.259.us.i = phi ptr [ %i.aq, %bb.j ], [ %.158.us.i.ph62, %.preheader ] ; 5 uses
  %.3.us.i = phi ptr [ %i.ao, %bb.j ], [ %.3.us.i.ph, %.preheader ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.3.us.i, i64 1 ; 2 uses
  %i.ap = load i8, ptr %.3.us.i, align 1, !tbaa !17 ; 2 uses
  switch i8 %i.ap, label %bb.j [
    i8 0, label %.split.us.i
    i8 47, label %.lr.ph118.us.preheader.i
  ]

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.259.us.i, i64 1
  store i8 %i.ap, ptr %.259.us.i, align 1, !tbaa !17
  br label %bb.i, !llvm.loop !3

.lr.ph118.us.preheader.i:                         ; preds = %bb.i
  store i8 47, ptr %.259.us.i, align 1, !tbaa !17
  br label %.lr.ph118.us.i

.lr.ph118.us.i:                                   ; preds = %.lr.ph118.us.i, %.lr.ph118.us.preheader.i
  %.4117.us.i = phi ptr [ %i.ar, %.lr.ph118.us.i ], [ %i.ao, %.lr.ph118.us.preheader.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.4117.us.i, i64 1
  %i.as = load i8, ptr %.4117.us.i, align 1, !tbaa !17 ; 2 uses
  %.not106.us.i = icmp eq i8 %i.as, 47
  br i1 %.not106.us.i, label %.lr.ph118.us.i, label %thread-pre-split.us.i.loopexit, !llvm.loop !4

thread-pre-split.us.i.loopexit:                   ; preds = %.lr.ph118.us.i
  %i.at = getelementptr inbounds nuw i8, ptr %.259.us.i, i64 1
  br label %skip_slashes.exit.us.i.outer.backedge

.split.us.i:                                      ; preds = %bb.i
  store i8 0, ptr %.259.us.i, align 1, !tbaa !17
  br label %normalize_path_copy_len.exit

normalize_path_copy_len.exit:                     ; preds = %skip_slashes.exit89.us.i, %.split.us.i
  %.2.i = phi i32 [ 0, %.split.us.i ], [ -1, %skip_slashes.exit89.us.i ]
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @strbuf_normalize_path(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 4 uses
  %1 = alloca %struct.strbuf, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) @__const.do_submodule_path.git_submodule_dir, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !48
  call void @strbuf_grow(ptr noundef nonnull %1, i64 noundef %i.c) #30
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 10 uses
  %.val.i.i = load i8, ptr %i.g, align 1, !tbaa !17
  %i.h = icmp eq i8 %.val.i.i, 47                 ; 2 uses
  %i.i = zext i1 %i.h to i64                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  br i1 %i.h, label %iter.check, label %.preheader108.i.i

iter.check:                                       ; preds = %bb.a
  %i.k = ptrtoaddr ptr %i.g to i64                ; 3 uses
  %i.l = add i64 %i.k, %i.i
  %i.m = add i64 %i.k, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.l, i64 %i.m)
  %i.n = sub i64 %umax, %i.k                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.n, 8
  %2 = ptrtoaddr ptr %i.e to i64
  %3 = ptrtoaddr ptr %i.g to i64
  %i.o = sub i64 %3, %2
  %diff.check = icmp ugt i64 %i.o, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check49 = icmp ult i64 %i.n, 32
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.n, 24
  %n.vec = and i64 %i.n, -32                      ; 5 uses
  %i.q = getelementptr i8, ptr %i.g, i64 %n.vec   ; 2 uses
  %i.r = getelementptr i8, ptr %i.e, i64 %n.vec   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.g, i64 %index ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.e, i64 %index ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !17
  %wide.load51 = load <16 x i8>, ptr %i.s, align 1, !tbaa !17
  %i.t = getelementptr i8, ptr %next.gep50, i64 16
  store <16 x i8> %wide.load, ptr %next.gep50, align 1, !tbaa !17
  store <16 x i8> %wide.load51, ptr %i.t, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %.preheader108.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !63

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec53 = and i64 %i.n, -8                     ; 4 uses
  %i.v = getelementptr i8, ptr %i.g, i64 %n.vec53 ; 2 uses
  %i.w = getelementptr i8, ptr %i.e, i64 %n.vec53 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index54 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 3 uses
  %next.gep55 = getelementptr i8, ptr %i.g, i64 %index54
  %next.gep56 = getelementptr i8, ptr %i.e, i64 %index54
  %wide.load57 = load <8 x i8>, ptr %next.gep55, align 1, !tbaa !17
  store <8 x i8> %wide.load57, ptr %next.gep56, align 1, !tbaa !17
  %index.next58 = add nuw i64 %index54, 8         ; 2 uses
  %i.x = icmp eq i64 %index.next58, %n.vec53
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !111

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %i.n, %n.vec53
  br i1 %cmp.n59, label %.preheader108.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.054114.i.i.ph = phi ptr [ %i.g, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ]
  %.057113.i.i.ph = phi ptr [ %i.e, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.preheader108.i.i:                                ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.a
  %.057.lcssa.i.i = phi ptr [ %i.e, %bb.a ], [ %i.w, %vec.epilog.middle.block ], [ %i.r, %middle.block ], [ %i.aa, %.lr.ph.i.i ] ; 3 uses
  %.054.lcssa.i.i = phi ptr [ %i.g, %bb.a ], [ %i.v, %vec.epilog.middle.block ], [ %i.q, %middle.block ], [ %i.y, %.lr.ph.i.i ]
  br label %bb.b

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.054114.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.054114.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057113.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.057113.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.054114.i.i, i64 1 ; 3 uses
  %i.z = load i8, ptr %.054114.i.i, align 1, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %.057113.i.i, i64 1 ; 2 uses
  store i8 %i.z, ptr %.057113.i.i, align 1, !tbaa !17
  %i.ab = icmp ult ptr %i.y, %i.j
  br i1 %i.ab, label %.lr.ph.i.i, label %.preheader108.i.i, !llvm.loop !112

bb.b:                                             ; preds = %bb.b, %.preheader108.i.i
  %.0.i.i.i = phi ptr [ %i.ad, %bb.b ], [ %.054.lcssa.i.i, %.preheader108.i.i ] ; 3 uses
  %i.ac = load i8, ptr %.0.i.i.i, align 1, !tbaa !17 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.ac, 47
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br i1 %.not.i.i.i, label %bb.b, label %skip_slashes.exit.us.i.i.outer, !llvm.loop !1

skip_slashes.exit.us.i.i.outer.backedge:          ; preds = %.preheader.us.i.i, %.preheader.us.i.i.preheader, %thread-pre-split.us.i.loopexit.i
  %.ph.be = phi i8 [ %i.az, %thread-pre-split.us.i.loopexit.i ], [ %.pr.us137.i.i, %.preheader.us.i.i.preheader ], [ %.pr.us137.i.i, %.preheader.us.i.i ]
  %.158.us.i.i.ph63.be = phi ptr [ %i.ba, %thread-pre-split.us.i.loopexit.i ], [ %i.ap, %.preheader.us.i.i ], [ %.461.us.i.i48, %.preheader.us.i.i.preheader ]
  %.155.us.i.i.ph.be = phi ptr [ %.4117.us.i.i, %thread-pre-split.us.i.loopexit.i ], [ %.6.us.i.i, %.preheader.us.i.i.preheader ], [ %.6.us.i.i, %.preheader.us.i.i ]
  br label %skip_slashes.exit.us.i.i.outer

skip_slashes.exit.us.i.i.outer:                   ; preds = %bb.b, %skip_slashes.exit.us.i.i.outer.backedge
  %.ph = phi i8 [ %.ph.be, %skip_slashes.exit.us.i.i.outer.backedge ], [ %i.ac, %bb.b ]
  %.158.us.i.i.ph63 = phi ptr [ %.158.us.i.i.ph63.be, %skip_slashes.exit.us.i.i.outer.backedge ], [ %.057.lcssa.i.i, %bb.b ] ; 2 uses
  %.155.us.i.i.ph = phi ptr [ %.155.us.i.i.ph.be, %skip_slashes.exit.us.i.i.outer.backedge ], [ %.0.i.i.i, %bb.b ]
  br label %skip_slashes.exit.us.i.i

skip_slashes.exit.us.i.i:                         ; preds = %bb.h, %skip_slashes.exit.us.i.i.outer
  %i.ae = phi i8 [ %.ph, %skip_slashes.exit.us.i.i.outer ], [ %i.as, %bb.h ]
  %.155.us.i.i = phi ptr [ %.155.us.i.i.ph, %skip_slashes.exit.us.i.i.outer ], [ %.0.i84.us.i.i, %bb.h ] ; 8 uses
  %i.af = icmp eq i8 %i.ae, 46
  br i1 %i.af, label %bb.c, label %.preheader

bb.c:                                             ; preds = %skip_slashes.exit.us.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.155.us.i.i, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !17
  switch i8 %i.ah, label %.preheader [
    i8 0, label %.preheader.loopexit.split.loop.exit84
    i8 47, label %bb.g
    i8 46, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.155.us.i.i, i64 2 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !17  ; 2 uses
  switch i8 %i.aj, label %.preheader [
    i8 0, label %skip_slashes.exit89.us.i.i
    i8 47, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %.155.us.i.i, i64 3
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i87.us.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.am, %bb.f ] ; 3 uses
  %i.al = load i8, ptr %.0.i87.us.i.i, align 1, !tbaa !17 ; 2 uses
  %.not.i88.us.i.i = icmp eq i8 %i.al, 47
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i87.us.i.i, i64 1
  br i1 %.not.i88.us.i.i, label %bb.f, label %skip_slashes.exit89.us.i.i, !llvm.loop !1

skip_slashes.exit89.us.i.i:                       ; preds = %bb.f, %bb.d
  %.pr.us137.i.i = phi i8 [ %i.aj, %bb.d ], [ %i.al, %bb.f ] ; 2 uses
  %.6.us.i.i = phi ptr [ %i.ai, %bb.d ], [ %.0.i87.us.i.i, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.158.us.i.i.ph63, i64 -1 ; 2 uses
  %.not79.us.i.i = icmp ugt ptr %i.an, %.057.lcssa.i.i
  br i1 %.not79.us.i.i, label %.preheader.us.i.i.preheader, label %.loopexit

.preheader.us.i.i:                                ; preds = %.preheader.us.i.i.preheader
  %i.ao = icmp ult ptr %.057.lcssa.i.i, %i.ap
  br i1 %i.ao, label %.preheader.us.i.i.preheader, label %skip_slashes.exit.us.i.i.outer.backedge, !llvm.loop !2

.preheader.us.i.i.preheader:                      ; preds = %skip_slashes.exit89.us.i.i, %.preheader.us.i.i
  %.461.us.i.i48 = phi ptr [ %i.ap, %.preheader.us.i.i ], [ %i.an, %skip_slashes.exit89.us.i.i ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.461.us.i.i48, i64 -1 ; 4 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !17
  %.not80.us.i.i = icmp eq i8 %i.aq, 47
  br i1 %.not80.us.i.i, label %skip_slashes.exit.us.i.i.outer.backedge, label %.preheader.us.i.i, !llvm.loop !2

bb.g:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %.155.us.i.i, i64 2
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.0.i84.us.i.i = phi ptr [ %i.ar, %bb.g ], [ %i.at, %bb.h ] ; 3 uses
  %i.as = load i8, ptr %.0.i84.us.i.i, align 1, !tbaa !17 ; 2 uses
  %.not.i85.us.i.i = icmp eq i8 %i.as, 47
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i84.us.i.i, i64 1
  br i1 %.not.i85.us.i.i, label %bb.h, label %skip_slashes.exit.us.i.i, !llvm.loop !1

.preheader.loopexit.split.loop.exit84:            ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %.155.us.i.i, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.split.loop.exit84, %skip_slashes.exit.us.i.i, %bb.c, %bb.d
  %.3.us.i.i.ph = phi ptr [ %.155.us.i.i, %bb.d ], [ %.155.us.i.i, %bb.c ], [ %i.au, %.preheader.loopexit.split.loop.exit84 ], [ %.155.us.i.i, %skip_slashes.exit.us.i.i ]
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.j
  %.259.us.i.i = phi ptr [ %i.ax, %bb.j ], [ %.158.us.i.i.ph63, %.preheader ] ; 5 uses
  %.3.us.i.i = phi ptr [ %i.av, %bb.j ], [ %.3.us.i.i.ph, %.preheader ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.3.us.i.i, i64 1 ; 2 uses
  %i.aw = load i8, ptr %.3.us.i.i, align 1, !tbaa !17 ; 2 uses
  switch i8 %i.aw, label %bb.j [
    i8 0, label %bb.k
    i8 47, label %.lr.ph118.us.preheader.i.i
  ]

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.259.us.i.i, i64 1
  store i8 %i.aw, ptr %.259.us.i.i, align 1, !tbaa !17
  br label %bb.i, !llvm.loop !3

.lr.ph118.us.preheader.i.i:                       ; preds = %bb.i
  store i8 47, ptr %.259.us.i.i, align 1, !tbaa !17
  br label %.lr.ph118.us.i.i

.lr.ph118.us.i.i:                                 ; preds = %.lr.ph118.us.i.i, %.lr.ph118.us.preheader.i.i
  %.4117.us.i.i = phi ptr [ %i.ay, %.lr.ph118.us.i.i ], [ %i.av, %.lr.ph118.us.preheader.i.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.4117.us.i.i, i64 1
  %i.az = load i8, ptr %.4117.us.i.i, align 1, !tbaa !17 ; 2 uses
  %.not106.us.i.i = icmp eq i8 %i.az, 47
  br i1 %.not106.us.i.i, label %.lr.ph118.us.i.i, label %thread-pre-split.us.i.loopexit.i, !llvm.loop !4

thread-pre-split.us.i.loopexit.i:                 ; preds = %.lr.ph118.us.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.259.us.i.i, i64 1
  br label %skip_slashes.exit.us.i.i.outer.backedge

bb.k:                                             ; preds = %bb.i
  store i8 0, ptr %.259.us.i.i, align 1, !tbaa !17
end_hunk_0
