inline.NumInlined: 128
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@normalize_path_copy:bb.a
  %n.vec = and i64 %i.h, -32                      ; 5 uses
  %i.k = getelementptr i8, ptr %0, i64 %n.vec     ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %next.gep49 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.m = getelementptr i8, ptr %next.gep49, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep49, align 1, !tbaa !12
  %wide.load50 = load <16 x i8>, ptr %i.m, align 1, !tbaa !12
  %i.n = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !12
  store <16 x i8> %wide.load50, ptr %i.n, align 1, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !100

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.preheader108.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !93

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec52 = and i64 %i.h, -4                     ; 4 uses
  %i.p = getelementptr i8, ptr %0, i64 %n.vec52   ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 %n.vec52   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index53 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 3 uses
  %next.gep54 = getelementptr i8, ptr %0, i64 %index53
  %next.gep55 = getelementptr i8, ptr %1, i64 %index53
  %wide.load56 = load <4 x i8>, ptr %next.gep55, align 1, !tbaa !12
  store <4 x i8> %wide.load56, ptr %next.gep54, align 1, !tbaa !12
  %index.next57 = add nuw i64 %index53, 4         ; 2 uses
  %i.r = icmp eq i64 %index.next57, %n.vec52
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !101

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %i.h, %n.vec52
  br i1 %cmp.n58, label %.preheader108.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.054114.i.ph = phi ptr [ %0, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ]
  %.057113.i.ph = phi ptr [ %1, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.preheader108.i:                                  ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.a
  %.057.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.q, %vec.epilog.middle.block ], [ %i.l, %middle.block ], [ %i.s, %.lr.ph.i ]
  %.054.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.p, %vec.epilog.middle.block ], [ %i.k, %middle.block ], [ %i.u, %.lr.ph.i ] ; 3 uses
  br label %bb.b

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.054114.i = phi ptr [ %i.u, %.lr.ph.i ], [ %.054114.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057113.i = phi ptr [ %i.s, %.lr.ph.i ], [ %.057113.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.057113.i, i64 1 ; 3 uses
  %i.t = load i8, ptr %.057113.i, align 1, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %.054114.i, i64 1 ; 2 uses
  store i8 %i.t, ptr %.054114.i, align 1, !tbaa !12
  %i.v = icmp ult ptr %i.s, %i.c
  br i1 %i.v, label %.lr.ph.i, label %.preheader108.i, !llvm.loop !102

bb.b:                                             ; preds = %bb.b, %.preheader108.i
  %.0.i.i = phi ptr [ %i.x, %bb.b ], [ %.057.lcssa.i, %.preheader108.i ] ; 3 uses
  %i.w = load i8, ptr %.0.i.i, align 1, !tbaa !12 ; 2 uses
  %.not.i.i = icmp eq i8 %i.w, 47
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  br i1 %.not.i.i, label %bb.b, label %skip_slashes.exit.us.i.outer, !llvm.loop !96

skip_slashes.exit.us.i.outer.backedge:            ; preds = %.preheader.us.i, %.preheader.us.i.preheader, %thread-pre-split.us.i.loopexit
  %.ph.be = phi i8 [ %i.at, %thread-pre-split.us.i.loopexit ], [ %.pr.us137.i, %.preheader.us.i.preheader ], [ %.pr.us137.i, %.preheader.us.i ]
  %.158.us.i.ph.be = phi ptr [ %.461117.us.i, %thread-pre-split.us.i.loopexit ], [ %.6.us.i, %.preheader.us.i.preheader ], [ %.6.us.i, %.preheader.us.i ]
  %.155.us.i.ph62.be = phi ptr [ %i.au, %thread-pre-split.us.i.loopexit ], [ %i.aj, %.preheader.us.i ], [ %.4.us.i47, %.preheader.us.i.preheader ]
  br label %skip_slashes.exit.us.i.outer

skip_slashes.exit.us.i.outer:                     ; preds = %bb.b, %skip_slashes.exit.us.i.outer.backedge
  %.ph = phi i8 [ %.ph.be, %skip_slashes.exit.us.i.outer.backedge ], [ %i.w, %bb.b ]
  %.158.us.i.ph = phi ptr [ %.158.us.i.ph.be, %skip_slashes.exit.us.i.outer.backedge ], [ %.0.i.i, %bb.b ]
  %.155.us.i.ph62 = phi ptr [ %.155.us.i.ph62.be, %skip_slashes.exit.us.i.outer.backedge ], [ %.054.lcssa.i, %bb.b ] ; 2 uses
  br label %skip_slashes.exit.us.i

skip_slashes.exit.us.i:                           ; preds = %bb.h, %skip_slashes.exit.us.i.outer
  %i.y = phi i8 [ %.ph, %skip_slashes.exit.us.i.outer ], [ %i.am, %bb.h ]
  %.158.us.i = phi ptr [ %.158.us.i.ph, %skip_slashes.exit.us.i.outer ], [ %.0.i84.us.i, %bb.h ] ; 8 uses
  %i.z = icmp eq i8 %i.y, 46
  br i1 %i.z, label %bb.c, label %.preheader

bb.c:                                             ; preds = %skip_slashes.exit.us.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.158.us.i, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !12
  switch i8 %i.ab, label %.preheader [
    i8 0, label %.preheader.loopexit.split.loop.exit83
    i8 47, label %bb.g
    i8 46, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.158.us.i, i64 2 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !12  ; 2 uses
  switch i8 %i.ad, label %.preheader [
    i8 0, label %skip_slashes.exit89.us.i
    i8 47, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.158.us.i, i64 3
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i87.us.i = phi ptr [ %i.ae, %bb.e ], [ %i.ag, %bb.f ] ; 3 uses
  %i.af = load i8, ptr %.0.i87.us.i, align 1, !tbaa !12 ; 2 uses
  %.not.i88.us.i = icmp eq i8 %i.af, 47
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i87.us.i, i64 1
  br i1 %.not.i88.us.i, label %bb.f, label %skip_slashes.exit89.us.i, !llvm.loop !96

skip_slashes.exit89.us.i:                         ; preds = %bb.f, %bb.d
  %.pr.us137.i = phi i8 [ %i.ad, %bb.d ], [ %i.af, %bb.f ] ; 2 uses
  %.6.us.i = phi ptr [ %i.ac, %bb.d ], [ %.0.i87.us.i, %bb.f ] ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.155.us.i.ph62, i64 -1 ; 2 uses
  %.not79.us.i = icmp ugt ptr %i.ah, %.054.lcssa.i
  br i1 %.not79.us.i, label %.preheader.us.i.preheader, label %normalize_path_copy_len.exit

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader
  %i.ai = icmp ult ptr %.054.lcssa.i, %i.aj
  br i1 %i.ai, label %.preheader.us.i.preheader, label %skip_slashes.exit.us.i.outer.backedge, !llvm.loop !97

.preheader.us.i.preheader:                        ; preds = %skip_slashes.exit89.us.i, %.preheader.us.i
  %.4.us.i47 = phi ptr [ %i.aj, %.preheader.us.i ], [ %i.ah, %skip_slashes.exit89.us.i ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.4.us.i47, i64 -1 ; 4 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !12
  %.not80.us.i = icmp eq i8 %i.ak, 47
  br i1 %.not80.us.i, label %skip_slashes.exit.us.i.outer.backedge, label %.preheader.us.i, !llvm.loop !97

bb.g:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.158.us.i, i64 2
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.0.i84.us.i = phi ptr [ %i.al, %bb.g ], [ %i.an, %bb.h ] ; 3 uses
  %i.am = load i8, ptr %.0.i84.us.i, align 1, !tbaa !12 ; 2 uses
  %.not.i85.us.i = icmp eq i8 %i.am, 47
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i84.us.i, i64 1
  br i1 %.not.i85.us.i, label %bb.h, label %skip_slashes.exit.us.i, !llvm.loop !96

.preheader.loopexit.split.loop.exit83:            ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.158.us.i, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.split.loop.exit83, %skip_slashes.exit.us.i, %bb.c, %bb.d
  %.360.us.i.ph = phi ptr [ %.158.us.i, %bb.c ], [ %.158.us.i, %bb.d ], [ %i.ao, %.preheader.loopexit.split.loop.exit83 ], [ %.158.us.i, %skip_slashes.exit.us.i ]
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.j
  %.360.us.i = phi ptr [ %i.ap, %bb.j ], [ %.360.us.i.ph, %.preheader ] ; 2 uses
  %.256.us.i = phi ptr [ %i.ar, %bb.j ], [ %.155.us.i.ph62, %.preheader ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.360.us.i, i64 1 ; 2 uses
  %i.aq = load i8, ptr %.360.us.i, align 1, !tbaa !12 ; 2 uses
  switch i8 %i.aq, label %bb.j [
    i8 0, label %.split.us.i
    i8 47, label %.lr.ph118.us.preheader.i
  ]

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.256.us.i, i64 1
  store i8 %i.aq, ptr %.256.us.i, align 1, !tbaa !12
  br label %bb.i, !llvm.loop !98

.lr.ph118.us.preheader.i:                         ; preds = %bb.i
  store i8 47, ptr %.256.us.i, align 1, !tbaa !12
  br label %.lr.ph118.us.i

.lr.ph118.us.i:                                   ; preds = %.lr.ph118.us.i, %.lr.ph118.us.preheader.i
  %.461117.us.i = phi ptr [ %i.as, %.lr.ph118.us.i ], [ %i.ap, %.lr.ph118.us.preheader.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.461117.us.i, i64 1
  %i.at = load i8, ptr %.461117.us.i, align 1, !tbaa !12 ; 2 uses
  %.not106.us.i = icmp eq i8 %i.at, 47
  br i1 %.not106.us.i, label %.lr.ph118.us.i, label %thread-pre-split.us.i.loopexit, !llvm.loop !99

thread-pre-split.us.i.loopexit:                   ; preds = %.lr.ph118.us.i
  %i.au = getelementptr inbounds nuw i8, ptr %.256.us.i, i64 1
  br label %skip_slashes.exit.us.i.outer.backedge

.split.us.i:                                      ; preds = %bb.i
  store i8 0, ptr %.256.us.i, align 1, !tbaa !12
  br label %normalize_path_copy_len.exit

normalize_path_copy_len.exit:                     ; preds = %skip_slashes.exit89.us.i, %.split.us.i
  %.2.i = phi i32 [ 0, %.split.us.i ], [ -1, %skip_slashes.exit89.us.i ]
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @strbuf_normalize_path(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca [24 x i8], align 16                 ; 4 uses
  %2 = alloca %struct.strbuf, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.do_submodule_path.git_submodule_dir, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !42
  call void @strbuf_grow(ptr noundef nonnull %2, i64 noundef %i.b) #30
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 9 uses
  %.val.i.i = load i8, ptr %i.f, align 1, !tbaa !12
  %i.g = icmp eq i8 %.val.i.i, 47                 ; 2 uses
  %i.h = zext i1 %i.g to i64                      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  br i1 %i.g, label %iter.check, label %.preheader108.i.i

iter.check:                                       ; preds = %bb.a
  %i.j = ptrtoaddr ptr %i.f to i64                ; 4 uses
  %i.k = ptrtoaddr ptr %i.d to i64
  %i.l = add i64 %i.j, %i.h
  %i.m = add i64 %i.j, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.l, i64 %i.m)
  %i.n = sub i64 %umax, %i.j                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.n, 4
  %i.o = sub i64 %i.j, %i.k
  %diff.check = icmp ugt i64 %i.o, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check49 = icmp ult i64 %i.n, 32
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.n, 28
  %n.vec = and i64 %i.n, -32                      ; 5 uses
  %i.q = getelementptr i8, ptr %i.d, i64 %n.vec   ; 2 uses
  %i.r = getelementptr i8, ptr %i.f, i64 %n.vec   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %index ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.f, i64 %index ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep50, align 1, !tbaa !12
  %wide.load51 = load <16 x i8>, ptr %i.s, align 1, !tbaa !12
  %i.t = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !12
  store <16 x i8> %wide.load51, ptr %i.t, align 1, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %.preheader108.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !93

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec53 = and i64 %i.n, -4                     ; 4 uses
  %i.v = getelementptr i8, ptr %i.d, i64 %n.vec53 ; 2 uses
  %i.w = getelementptr i8, ptr %i.f, i64 %n.vec53 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index54 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 3 uses
  %next.gep55 = getelementptr i8, ptr %i.d, i64 %index54
  %next.gep56 = getelementptr i8, ptr %i.f, i64 %index54
  %wide.load57 = load <4 x i8>, ptr %next.gep56, align 1, !tbaa !12
  store <4 x i8> %wide.load57, ptr %next.gep55, align 1, !tbaa !12
  %index.next58 = add nuw i64 %index54, 4         ; 2 uses
  %i.x = icmp eq i64 %index.next58, %n.vec53
  br i1 %i.x, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !104

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %i.n, %n.vec53
  br i1 %cmp.n59, label %.preheader108.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.054114.i.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ]
  %.057113.i.i.ph = phi ptr [ %i.f, %iter.check ], [ %i.r, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.preheader108.i.i:                                ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.a
  %.057.lcssa.i.i = phi ptr [ %i.f, %bb.a ], [ %i.w, %vec.epilog.middle.block ], [ %i.r, %middle.block ], [ %i.y, %.lr.ph.i.i ]
  %.054.lcssa.i.i = phi ptr [ %i.d, %bb.a ], [ %i.v, %vec.epilog.middle.block ], [ %i.q, %middle.block ], [ %i.aa, %.lr.ph.i.i ] ; 3 uses
  br label %bb.b

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.054114.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.054114.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057113.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.057113.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.057113.i.i, i64 1 ; 3 uses
  %i.z = load i8, ptr %.057113.i.i, align 1, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.054114.i.i, i64 1 ; 2 uses
  store i8 %i.z, ptr %.054114.i.i, align 1, !tbaa !12
  %i.ab = icmp ult ptr %i.y, %i.i
  br i1 %i.ab, label %.lr.ph.i.i, label %.preheader108.i.i, !llvm.loop !105

bb.b:                                             ; preds = %bb.b, %.preheader108.i.i
  %.0.i.i.i = phi ptr [ %i.ad, %bb.b ], [ %.057.lcssa.i.i, %.preheader108.i.i ] ; 3 uses
  %i.ac = load i8, ptr %.0.i.i.i, align 1, !tbaa !12 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.ac, 47
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br i1 %.not.i.i.i, label %bb.b, label %skip_slashes.exit.us.i.i.outer, !llvm.loop !96

skip_slashes.exit.us.i.i.outer.backedge:          ; preds = %.preheader.us.i.i, %.preheader.us.i.i.preheader, %thread-pre-split.us.i.loopexit.i
  %.ph.be = phi i8 [ %i.az, %thread-pre-split.us.i.loopexit.i ], [ %.pr.us137.i.i, %.preheader.us.i.i.preheader ], [ %.pr.us137.i.i, %.preheader.us.i.i ]
  %.158.us.i.i.ph.be = phi ptr [ %.461117.us.i.i, %thread-pre-split.us.i.loopexit.i ], [ %.6.us.i.i, %.preheader.us.i.i.preheader ], [ %.6.us.i.i, %.preheader.us.i.i ]
  %.155.us.i.i.ph63.be = phi ptr [ %i.ba, %thread-pre-split.us.i.loopexit.i ], [ %i.ap, %.preheader.us.i.i ], [ %.4.us.i.i48, %.preheader.us.i.i.preheader ]
  br label %skip_slashes.exit.us.i.i.outer

skip_slashes.exit.us.i.i.outer:                   ; preds = %bb.b, %skip_slashes.exit.us.i.i.outer.backedge
  %.ph = phi i8 [ %.ph.be, %skip_slashes.exit.us.i.i.outer.backedge ], [ %i.ac, %bb.b ]
  %.158.us.i.i.ph = phi ptr [ %.158.us.i.i.ph.be, %skip_slashes.exit.us.i.i.outer.backedge ], [ %.0.i.i.i, %bb.b ]
  %.155.us.i.i.ph63 = phi ptr [ %.155.us.i.i.ph63.be, %skip_slashes.exit.us.i.i.outer.backedge ], [ %.054.lcssa.i.i, %bb.b ] ; 2 uses
  br label %skip_slashes.exit.us.i.i

skip_slashes.exit.us.i.i:                         ; preds = %bb.h, %skip_slashes.exit.us.i.i.outer
  %i.ae = phi i8 [ %.ph, %skip_slashes.exit.us.i.i.outer ], [ %i.as, %bb.h ]
  %.158.us.i.i = phi ptr [ %.158.us.i.i.ph, %skip_slashes.exit.us.i.i.outer ], [ %.0.i84.us.i.i, %bb.h ] ; 8 uses
  %i.af = icmp eq i8 %i.ae, 46
  br i1 %i.af, label %bb.c, label %.preheader

bb.c:                                             ; preds = %skip_slashes.exit.us.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.158.us.i.i, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !12
  switch i8 %i.ah, label %.preheader [
    i8 0, label %.preheader.loopexit.split.loop.exit84
    i8 47, label %bb.g
    i8 46, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.158.us.i.i, i64 2 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !12  ; 2 uses
  switch i8 %i.aj, label %.preheader [
    i8 0, label %skip_slashes.exit89.us.i.i
    i8 47, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %.158.us.i.i, i64 3
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i87.us.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.am, %bb.f ] ; 3 uses
  %i.al = load i8, ptr %.0.i87.us.i.i, align 1, !tbaa !12 ; 2 uses
  %.not.i88.us.i.i = icmp eq i8 %i.al, 47
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i87.us.i.i, i64 1
  br i1 %.not.i88.us.i.i, label %bb.f, label %skip_slashes.exit89.us.i.i, !llvm.loop !96

skip_slashes.exit89.us.i.i:                       ; preds = %bb.f, %bb.d
  %.pr.us137.i.i = phi i8 [ %i.aj, %bb.d ], [ %i.al, %bb.f ] ; 2 uses
  %.6.us.i.i = phi ptr [ %i.ai, %bb.d ], [ %.0.i87.us.i.i, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.155.us.i.i.ph63, i64 -1 ; 2 uses
  %.not79.us.i.i = icmp ugt ptr %i.an, %.054.lcssa.i.i
  br i1 %.not79.us.i.i, label %.preheader.us.i.i.preheader, label %.loopexit

.preheader.us.i.i:                                ; preds = %.preheader.us.i.i.preheader
  %i.ao = icmp ult ptr %.054.lcssa.i.i, %i.ap
  br i1 %i.ao, label %.preheader.us.i.i.preheader, label %skip_slashes.exit.us.i.i.outer.backedge, !llvm.loop !97

.preheader.us.i.i.preheader:                      ; preds = %skip_slashes.exit89.us.i.i, %.preheader.us.i.i
  %.4.us.i.i48 = phi ptr [ %i.ap, %.preheader.us.i.i ], [ %i.an, %skip_slashes.exit89.us.i.i ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.4.us.i.i48, i64 -1 ; 4 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !12
  %.not80.us.i.i = icmp eq i8 %i.aq, 47
  br i1 %.not80.us.i.i, label %skip_slashes.exit.us.i.i.outer.backedge, label %.preheader.us.i.i, !llvm.loop !97

bb.g:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %.158.us.i.i, i64 2
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.0.i84.us.i.i = phi ptr [ %i.ar, %bb.g ], [ %i.at, %bb.h ] ; 3 uses
  %i.as = load i8, ptr %.0.i84.us.i.i, align 1, !tbaa !12 ; 2 uses
  %.not.i85.us.i.i = icmp eq i8 %i.as, 47
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i84.us.i.i, i64 1
  br i1 %.not.i85.us.i.i, label %bb.h, label %skip_slashes.exit.us.i.i, !llvm.loop !96

.preheader.loopexit.split.loop.exit84:            ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %.158.us.i.i, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.split.loop.exit84, %skip_slashes.exit.us.i.i, %bb.c, %bb.d
  %.360.us.i.i.ph = phi ptr [ %.158.us.i.i, %bb.c ], [ %.158.us.i.i, %bb.d ], [ %i.au, %.preheader.loopexit.split.loop.exit84 ], [ %.158.us.i.i, %skip_slashes.exit.us.i.i ]
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.j
  %.360.us.i.i = phi ptr [ %i.av, %bb.j ], [ %.360.us.i.i.ph, %.preheader ] ; 2 uses
  %.256.us.i.i = phi ptr [ %i.ax, %bb.j ], [ %.155.us.i.i.ph63, %.preheader ] ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.360.us.i.i, i64 1 ; 2 uses
  %i.aw = load i8, ptr %.360.us.i.i, align 1, !tbaa !12 ; 2 uses
  switch i8 %i.aw, label %bb.j [
    i8 0, label %bb.k
    i8 47, label %.lr.ph118.us.preheader.i.i
  ]

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.256.us.i.i, i64 1
  store i8 %i.aw, ptr %.256.us.i.i, align 1, !tbaa !12
  br label %bb.i, !llvm.loop !98

.lr.ph118.us.preheader.i.i:                       ; preds = %bb.i
  store i8 47, ptr %.256.us.i.i, align 1, !tbaa !12
  br label %.lr.ph118.us.i.i

.lr.ph118.us.i.i:                                 ; preds = %.lr.ph118.us.i.i, %.lr.ph118.us.preheader.i.i
  %.461117.us.i.i = phi ptr [ %i.ay, %.lr.ph118.us.i.i ], [ %i.av, %.lr.ph118.us.preheader.i.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.461117.us.i.i, i64 1
  %i.az = load i8, ptr %.461117.us.i.i, align 1, !tbaa !12 ; 2 uses
  %.not106.us.i.i = icmp eq i8 %i.az, 47
  br i1 %.not106.us.i.i, label %.lr.ph118.us.i.i, label %thread-pre-split.us.i.loopexit.i, !llvm.loop !99

thread-pre-split.us.i.loopexit.i:                 ; preds = %.lr.ph118.us.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.256.us.i.i, i64 1
  br label %skip_slashes.exit.us.i.i.outer.backedge

bb.k:                                             ; preds = %bb.i
  store i8 0, ptr %.256.us.i.i, align 1, !tbaa !12
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !45  ; 3 uses
  %i.bc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #29 ; 3 uses
  %i.bd = load i64, ptr %2, align 8, !tbaa !44
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %i.bd, i64 1)
  %i.be = icmp ugt i64 %i.bc, %spec.select.i
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.58, i32 noundef 167, ptr noundef nonnull @.str.59) #31
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bc, ptr %i.bf, align 8, !tbaa !42
  %.not9.i = icmp eq ptr %i.bb, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  store i8 0, ptr %i.bg, align 1, !tbaa !12
  br label %strbuf_setlen.exit

bb.o:                                             ; preds = %bb.m
  %i.bh = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !12
  %.not10.i = icmp eq i8 %i.bh, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #31
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(24) %0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 16 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %.loopexit

.loopexit:                                        ; preds = %skip_slashes.exit89.us.i.i, %strbuf_setlen.exit
  %.0 = phi i32 [ 0, %strbuf_setlen.exit ], [ -1, %skip_slashes.exit89.us.i.i ]
  call void @strbuf_release(ptr noundef nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, -2147483648) i32 @longest_ancestor_length(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #18 {
sub_0:
  %i.a = load i8, ptr %0, align 1
  %.not33 = icmp eq i8 %i.a, 47
  br i1 %.not33, label %.tail, label %.preheader

.tail:                                            ; preds = %sub_0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %sub_0, %.tail
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !106  ; 2 uses
  %.not34 = icmp eq i64 %i.f, 0
  br i1 %.not34, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %1, align 8, !tbaa !107
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.g
  %.02332 = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.g ] ; 2 uses
  %.02431 = phi i32 [ -1, %.lr.ph ], [ %.2, %bb.g ] ; 4 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.02332
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !108  ; 3 uses
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #29 ; 2 uses
  %i.k = trunc i64 %i.j to i32                    ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = add i64 %i.j, 4294967295
  %i.n = and i64 %i.m, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !12
  %i.q = icmp eq i8 %i.p, 47
  %i.r = sext i1 %i.q to i32
  %spec.select = add nsw i32 %i.r, %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.k, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %i.s = sext i32 %.0 to i64                      ; 2 uses
  %i.t = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i64 noundef %i.s) #29
  %.not27 = icmp eq i32 %i.t, 0
  br i1 %.not27, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.s ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !12
  %.not28 = icmp eq i8 %i.v, 47
  br i1 %.not28, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr i8, ptr %i.u, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !12
  %.not29 = icmp eq i8 %i.x, 0
  br i1 %.not29, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %spec.select30 = tail call i32 @llvm.smax.i32(i32 %.0, i32 %.02431)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.2 = phi i32 [ %spec.select30, %bb.f ], [ %.02431, %bb.e ], [ %.02431, %bb.d ], [ %.02431, %bb.c ] ; 2 uses
  %i.y = add nuw i64 %.02332, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.f
  br i1 %exitcond.not, label %.loopexit, label %bb.a, !llvm.loop !110

.loopexit:                                        ; preds = %bb.g, %.preheader, %.tail
  %.022 = phi i32 [ -1, %.tail ], [ -1, %.preheader ], [ %.2, %bb.g ]
  ret i32 %.022
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @ends_with_path_components(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #19 {
bb.a:
  %i.a = tail call fastcc i64 @stripped_path_suffix_offset(ptr noundef %0, ptr noundef %1)
  %i.b = icmp ne i64 %i.a, -1
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i64 -2147483648, 2147483648) i64 @stripped_path_suffix_offset(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #19 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %.not59 = icmp eq i32 %i.d, 0
  br i1 %.not59, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %chomp_trailing_dir_sep.exit40
  %.061 = phi i32 [ %.1, %chomp_trailing_dir_sep.exit40 ], [ %i.d, %bb.a ] ; 2 uses
  %.02160 = phi i32 [ %.122, %chomp_trailing_dir_sep.exit40 ], [ %i.b, %bb.a ] ; 3 uses
  %.not27 = icmp eq i32 %.02160, 0
  br i1 %.not27, label %.split, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = sext i32 %.02160 to i64                  ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !12    ; 2 uses
  %.not52 = icmp eq i8 %i.h, 47
  br i1 %.not52, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = sext i32 %.061 to i64                    ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !12
  %.not53 = icmp eq i8 %i.l, 47
  br i1 %.not53, label %.lr.ph.i, label %.split

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %i.e, %bb.c ] ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !12
  %.not5.i = icmp eq i8 %i.o, 47
  br i1 %.not5.i, label %bb.d, label %.critedge.loopexit.split.loop.exit11.i

bb.d:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not.i, label %.lr.ph.preheader.i32, label %.lr.ph.i, !llvm.loop !111

.critedge.loopexit.split.loop.exit11.i:           ; preds = %.lr.ph.i
  %i.p = trunc nsw i64 %indvars.iv.i to i32
  br label %.lr.ph.preheader.i32

.lr.ph.preheader.i32:                             ; preds = %bb.d, %.critedge.loopexit.split.loop.exit11.i
  %.0.lcssa.i = phi i32 [ %i.p, %.critedge.loopexit.split.loop.exit11.i ], [ 0, %bb.d ] ; 2 uses
  br label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %bb.e, %.lr.ph.preheader.i32
  %indvars.iv.i34 = phi i64 [ %i.i, %.lr.ph.preheader.i32 ], [ %indvars.iv.next.i38, %bb.e ] ; 3 uses
  %i.q = getelementptr i8, ptr %1, i64 %indvars.iv.i34
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12
  %.not5.i35 = icmp eq i8 %i.s, 47
  br i1 %.not5.i35, label %bb.e, label %.critedge.loopexit.split.loop.exit11.i36

bb.e:                                             ; preds = %.lr.ph.i33
  %indvars.iv.next.i38 = add nsw i64 %indvars.iv.i34, -1 ; 2 uses
  %.not.i39 = icmp eq i64 %indvars.iv.next.i38, 0
  br i1 %.not.i39, label %._crit_edge, label %.lr.ph.i33, !llvm.loop !111

.critedge.loopexit.split.loop.exit11.i36:         ; preds = %.lr.ph.i33
  %i.t = trunc nsw i64 %indvars.iv.i34 to i32
  br label %chomp_trailing_dir_sep.exit40

bb.f:                                             ; preds = %bb.b
  %i.u = add nsw i32 %.02160, -1
  %i.v = add nsw i32 %.061, -1                    ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !12
  %.not29 = icmp eq i8 %i.h, %i.y
  br i1 %.not29, label %chomp_trailing_dir_sep.exit40, label %.split

chomp_trailing_dir_sep.exit40:                    ; preds = %.critedge.loopexit.split.loop.exit11.i36, %bb.f
  %.122 = phi i32 [ %i.u, %bb.f ], [ %.0.lcssa.i, %.critedge.loopexit.split.loop.exit11.i36 ] ; 2 uses
  %.1 = phi i32 [ %i.v, %bb.f ], [ %i.t, %.critedge.loopexit.split.loop.exit11.i36 ] ; 2 uses
  %.not = icmp eq i32 %.1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !112

._crit_edge:                                      ; preds = %chomp_trailing_dir_sep.exit40, %bb.e, %bb.a
  %.021.lcssa = phi i32 [ %i.b, %bb.a ], [ %.0.lcssa.i, %bb.e ], [ %.122, %chomp_trailing_dir_sep.exit40 ] ; 2 uses
  %.not25 = icmp eq i32 %.021.lcssa, 0
  br i1 %.not25, label %.split, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.z = sext i32 %.021.lcssa to i64              ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !12
  %.not54 = icmp eq i8 %i.ac, 47
  br i1 %.not54, label %.lr.ph.i44, label %.split

.lr.ph.i44:                                       ; preds = %bb.g, %bb.h
  %indvars.iv.i45 = phi i64 [ %indvars.iv.next.i49, %bb.h ], [ %i.z, %bb.g ] ; 3 uses
  %i.ad = getelementptr i8, ptr %0, i64 %indvars.iv.i45
  %i.ae = getelementptr i8, ptr %i.ad, i64 -1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !12
  %.not5.i46 = icmp eq i8 %i.af, 47
  br i1 %.not5.i46, label %bb.h, label %.split

bb.h:                                             ; preds = %.lr.ph.i44
  %indvars.iv.next.i49 = add nsw i64 %indvars.iv.i45, -1 ; 2 uses
end_hunk_0
