Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_tables?download=true
inline.NumInlined: 770
inline.NumDeleted: 207
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN5ImGui30TableGcCompactTransientBuffersEP10ImGuiTable:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 573
  store i8 1, ptr %i.g, align 1, !tbaa !288
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !319  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN15ImGuiTextBuffer5clearEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8ImVectorI25ImGuiTableColumnSortSpecsE5clearEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 404
  store i32 0, ptr %i.k, align 4, !tbaa !318
  store i32 0, ptr %i.j, align 8, !tbaa !320
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.i)
  store ptr null, ptr %i.h, align 8, !tbaa !319
  br label %_ZN15ImGuiTextBuffer5clearEv.exit

_ZN15ImGuiTextBuffer5clearEv.exit:                ; preds = %_ZN8ImVectorI25ImGuiTableColumnSortSpecsE5clearEv.exit, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 590
  store i8 1, ptr %i.l, align 2, !tbaa !269
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.n = load i32, ptr %i.m, align 4, !tbaa !221  ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN15ImGuiTextBuffer5clearEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !271  ; 9 uses
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.r = icmp ult i32 %i.n, 8
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.e

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod16 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.s = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %indvars.iv.epil
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  store i16 -1, ptr %i.t, align 4, !tbaa !345
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.d, !llvm.loop !701

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.d, %_ZN15ImGuiTextBuffer5clearEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 9024
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !179
  %i.w = ptrtoint ptr %0 to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 592
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 9064
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !267
  %i.ac = shl i64 %i.z, 32
  %i.ad = ashr exact i64 %i.ac, 30
  %i.ae = getelementptr inbounds i8, ptr %i.ab, i64 %i.ad
  store float -1.000000e+00, ptr %i.ae, align 4, !tbaa !177
  ret void

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.e ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.e ]
  %i.af = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  store i16 -1, ptr %i.ag, align 4, !tbaa !345
  %i.ah = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 208
  store i16 -1, ptr %i.ai, align 4, !tbaa !345
  %i.aj = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 328
  store i16 -1, ptr %i.ak, align 4, !tbaa !345
  %i.al = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 448
  store i16 -1, ptr %i.am, align 4, !tbaa !345
  %i.an = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 568
  store i16 -1, ptr %i.ao, align 4, !tbaa !345
  %i.ap = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 688
  store i16 -1, ptr %i.aq, align 4, !tbaa !345
  %i.ar = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %indvars.iv
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 808
  store i16 -1, ptr %i.as, align 4, !tbaa !345
  %i.at = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 928
  store i16 -1, ptr %i.au, align 4, !tbaa !345
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !702
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui30TableGcCompactTransientBuffersEP18ImGuiTableTempData(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN8ImVectorI20ImGuiTableHeaderDataE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.d, align 4, !tbaa !470
  store i32 0, ptr %i.c, align 8, !tbaa !471
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
  store ptr null, ptr %i.a, align 8, !tbaa !193
  br label %_ZN8ImVectorI20ImGuiTableHeaderDataE5clearEv.exit

_ZN8ImVectorI20ImGuiTableHeaderDataE5clearEv.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN18ImDrawListSplitter15ClearFreeMemoryEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float -1.000000e+00, ptr %i.f, align 8, !tbaa !188
  ret void
}

declare void @_ZN18ImDrawListSplitter15ClearFreeMemoryEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui22TableGcCompactSettingsEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %struct.ImChunkStream.35, align 8   ; 16 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10120 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 10128 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !310  ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  %.pre = load i32, ptr %i.b, align 8, !tbaa !313 ; 3 uses
  br i1 %.not.i, label %select.unfold._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = sext i32 %.pre to i64
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  br label %bb.b

select.unfold._crit_edge:                         ; preds = %select.unfold
  %i.i = icmp eq i32 %.1, %.pre
  br i1 %i.i, label %bb.s, label %bb.d

select.unfold._crit_edge.thread:                  ; preds = %bb.a
  %i.j = icmp eq i32 %.pre, 0
  br i1 %i.j, label %bb.s, label %_ZN8ImVectorIcE7reserveEi.exit.thread

_ZN8ImVectorIcE7reserveEi.exit.thread:            ; preds = %select.unfold._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #4
  store i64 0, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %_ZN8ImVectorIcE7reserveEi.exit.select.unfold47._crit_edge_crit_edge

bb.b:                                             ; preds = %.lr.ph, %select.unfold
  %.03054 = phi ptr [ %i.e, %.lr.ph ], [ %i.v, %select.unfold ] ; 4 uses
  %.03153 = phi i32 [ 0, %.lr.ph ], [ %.1, %select.unfold ] ; 2 uses
  %i.l = load i32, ptr %.03054, align 4, !tbaa !312
  %.not37 = icmp eq i32 %i.l, 0
  br i1 %.not37, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.03054, i64 12
  %i.n = load i16, ptr %i.m, align 4, !tbaa !314
  %i.o = sext i16 %i.n to i32
  %i.p = shl nsw i32 %i.o, 4
  %i.q = add i32 %.03153, 20
  %i.r = add i32 %i.q, %i.p
  br label %select.unfold

select.unfold:                                    ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.r, %bb.c ], [ %.03153, %bb.b ] ; 6 uses
  %i.s = getelementptr inbounds i8, ptr %.03054, i64 -4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !299
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %.03054, i64 %i.u ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.h
  br i1 %i.w, label %select.unfold._crit_edge, label %bb.b

bb.d:                                             ; preds = %select.unfold._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %.not.i38 = icmp sgt i32 %.1, 0
  br i1 %.not.i38, label %bb.e, label %_ZN8ImVectorIcE7reserveEi.exit

bb.e:                                             ; preds = %bb.d
  %i.y = zext nneg i32 %.1 to i64
  %i.z = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.y)
          to label %.noexc39 unwind label %1      ; 2 uses

.noexc39:                                         ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre60.pre = load ptr, ptr %i.c, align 8, !tbaa !310
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !319
  store i32 %.1, ptr %i.x, align 4, !tbaa !318
  br label %_ZN8ImVectorIcE7reserveEi.exit

_ZN8ImVectorIcE7reserveEi.exit:                   ; preds = %.noexc39, %bb.d
  %.pre.i64.a = phi ptr [ %i.z, %.noexc39 ], [ null, %bb.d ] ; 2 uses
  %i.ab = phi i32 [ %.1, %.noexc39 ], [ 0, %bb.d ] ; 2 uses
  %i.ac = phi ptr [ %.pre60.pre, %.noexc39 ], [ %i.d, %bb.d ] ; 3 uses
  %.not.i40 = icmp eq ptr %i.ac, null
  br i1 %.not.i40, label %_ZN8ImVectorIcE7reserveEi.exit.select.unfold47._crit_edge_crit_edge, label %.lr.ph56

_ZN8ImVectorIcE7reserveEi.exit.select.unfold47._crit_edge_crit_edge: ; preds = %_ZN8ImVectorIcE7reserveEi.exit.thread, %_ZN8ImVectorIcE7reserveEi.exit
  %i.ad = phi i32 [ 0, %_ZN8ImVectorIcE7reserveEi.exit.thread ], [ %i.ab, %_ZN8ImVectorIcE7reserveEi.exit ]
  %.pre.i6486 = phi ptr [ null, %_ZN8ImVectorIcE7reserveEi.exit.thread ], [ %.pre.i64.a, %_ZN8ImVectorIcE7reserveEi.exit ]
  %i.ae = phi ptr [ %i.k, %_ZN8ImVectorIcE7reserveEi.exit.thread ], [ %i.x, %_ZN8ImVectorIcE7reserveEi.exit ]
  %.pre67.a = load i32, ptr %i.b, align 8, !tbaa !320
  br label %select.unfold47._crit_edge

.lr.ph56:                                         ; preds = %_ZN8ImVectorIcE7reserveEi.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.f

select.unfold47._crit_edge.loopexit:              ; preds = %select.unfold47
  %.pre68 = load i32, ptr %0, align 8, !tbaa !320
  br label %select.unfold47._crit_edge

select.unfold47._crit_edge:                       ; preds = %_ZN8ImVectorIcE7reserveEi.exit.select.unfold47._crit_edge_crit_edge, %select.unfold47._crit_edge.loopexit
  %i.ag = phi ptr [ %i.ae, %_ZN8ImVectorIcE7reserveEi.exit.select.unfold47._crit_edge_crit_edge ], [ %i.x, %select.unfold47._crit_edge.loopexit ]
  %i.ah = phi ptr [ %.pre.i6486, %_ZN8ImVectorIcE7reserveEi.exit.select.unfold47._crit_edge_crit_edge ], [ %.pre.i62, %select.unfold47._crit_edge.loopexit ]
  %i.ai = phi ptr [ null, %_ZN8ImVectorIcE7reserveEi.exit.select.unfold47._crit_edge_crit_edge ], [ %i.by, %select.unfold47._crit_edge.loopexit ] ; 3 uses
  %i.aj = phi i32 [ %i.ad, %_ZN8ImVectorIcE7reserveEi.exit.select.unfold47._crit_edge_crit_edge ], [ %i.bz, %select.unfold47._crit_edge.loopexit ]
  %i.ak = phi i32 [ 0, %_ZN8ImVectorIcE7reserveEi.exit.select.unfold47._crit_edge_crit_edge ], [ %.pre68, %select.unfold47._crit_edge.loopexit ]
  %i.al = phi i32 [ %.pre67.a, %_ZN8ImVectorIcE7reserveEi.exit.select.unfold47._crit_edge_crit_edge ], [ %i.cf, %select.unfold47._crit_edge.loopexit ]
  store i32 %i.ak, ptr %i.b, align 8, !tbaa !320
  store i32 %i.al, ptr %0, align 8, !tbaa !320
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 10124 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !318
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !318
  store i32 %i.an, ptr %i.ag, align 4, !tbaa !318
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !319
  store ptr %i.ai, ptr %i.ao, align 8, !tbaa !319
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 9032
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !475 ; 4 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph58, label %._crit_edge

.lr.ph58:                                         ; preds = %select.unfold47._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 9040
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !476 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 9024 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.aq to i64   ; 2 uses
  %.pre70.a = load ptr, ptr %i.au, align 8        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.av = icmp eq i32 %i.aq, 1
  br i1 %i.av, label %.epil.preheader, label %.lr.ph58.new

.lr.ph58.new:                                     ; preds = %.lr.ph58
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.n

1:                                                ; preds = %bb.e
  %2 = landingpad { ptr, i32 }
          cleanup
  br label %5

3:                                                ; preds = %bb.j, %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i
  %4 = landingpad { ptr, i32 }
          cleanup
  br label %5

bb.f:                                             ; preds = %.lr.ph56, %select.unfold47
  %i.aw = phi ptr [ %i.ac, %.lr.ph56 ], [ %i.by, %select.unfold47 ]
  %.pre.i = phi ptr [ %.pre.i64.a, %.lr.ph56 ], [ %.pre.i62, %select.unfold47 ] ; 2 uses
  %i.ax = phi i32 [ %i.ab, %.lr.ph56 ], [ %i.bz, %select.unfold47 ] ; 6 uses
  %i.ay = phi i32 [ 0, %.lr.ph56 ], [ %i.ca, %select.unfold47 ] ; 3 uses
  %.02755 = phi ptr [ %i.af, %.lr.ph56 ], [ %i.ce, %select.unfold47 ] ; 5 uses
  %i.az = load i32, ptr %.02755, align 4, !tbaa !312
  %.not35 = icmp eq i32 %i.az, 0
  br i1 %.not35, label %select.unfold47, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %.02755, i64 12 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !314 ; 2 uses
  %i.bc = sext i16 %i.bb to i32
  %i.bd = shl nsw i32 %i.bc, 4
  %i.be = add nsw i32 %i.bd, 24                   ; 2 uses
  %i.bf = add nsw i32 %i.be, %i.ay                ; 4 uses
  %i.bg = icmp sgt i32 %i.bf, %i.ax
  br i1 %i.bg, label %bb.h, label %._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = sdiv i32 %i.ax, 2
  %i.bi = add nsw i32 %i.bh, %i.ax
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i:      ; preds = %bb.i, %bb.h
  %i.bj = phi i32 [ %i.bi, %bb.i ], [ 8, %bb.h ]
  %i.bk = tail call noundef i32 @llvm.smax.i32(i32 %i.bj, i32 %i.bf) ; 3 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bl)
          to label %.noexc42 unwind label %3      ; 3 uses

.noexc42:                                         ; preds = %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i.i
  %i.bn = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !319 ; 3 uses
  %.not6.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not6.i.i.i, label %.noexc43, label %bb.j

bb.j:                                             ; preds = %.noexc42
  %i.bo = load i32, ptr %0, align 8, !tbaa !320
  %i.bp = sext i32 %i.bo to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr nonnull align 1 %i.bn, i64 %i.bp, i1 false)
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.bn)
          to label %.noexc43 unwind label %3

.noexc43:                                         ; preds = %bb.j, %.noexc42
  store ptr %i.bm, ptr %.phi.trans.insert.i, align 8, !tbaa !319
  store i32 %i.bk, ptr %i.x, align 4, !tbaa !318
  %.pre65 = load i16, ptr %i.ba, align 4, !tbaa !314
  br label %._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i

._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i:       ; preds = %bb.g, %.noexc43
  %i.bq = phi i16 [ %.pre65, %.noexc43 ], [ %i.bb, %bb.g ]
  %.pre.i63.a = phi ptr [ %i.bm, %.noexc43 ], [ %.pre.i, %bb.g ] ; 2 uses
  %i.br = phi i32 [ %i.bk, %.noexc43 ], [ %i.ax, %bb.g ]
  store i32 %i.bf, ptr %0, align 8, !tbaa !320
  %i.bs = sext i32 %i.ay to i64
  %i.bt = getelementptr inbounds i8, ptr %.pre.i63.a, i64 %i.bs ; 2 uses
  store i32 %i.be, ptr %i.bt, align 4, !tbaa !299
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = sext i16 %i.bq to i64
  %i.bw = shl nsw i64 %i.bv, 4
  %i.bx = add nsw i64 %i.bw, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bu, ptr noundef nonnull align 4 dereferenceable(1) %.02755, i64 %i.bx, i1 false)
  %.pre66 = load ptr, ptr %i.c, align 8, !tbaa !310
  br label %select.unfold47

select.unfold47:                                  ; preds = %bb.f, %._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i
  %i.by = phi ptr [ %i.aw, %bb.f ], [ %.pre66, %._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i ] ; 3 uses
  %.pre.i62 = phi ptr [ %.pre.i, %bb.f ], [ %.pre.i63.a, %._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i ] ; 2 uses
  %i.bz = phi i32 [ %i.ax, %bb.f ], [ %i.br, %._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i ] ; 2 uses
  %i.ca = phi i32 [ %i.ay, %bb.f ], [ %i.bf, %._ZN8ImVectorIcE6resizeEi.exit_crit_edge.i ]
  %i.cb = getelementptr inbounds i8, ptr %.02755, i64 -4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !299
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds i8, ptr %.02755, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.b, align 8, !tbaa !313 ; 2 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %i.by, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = icmp eq ptr %i.ce, %i.ci
  br i1 %i.cj, label %select.unfold47._crit_edge.loopexit, label %bb.f

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph58
  %.epil.init = phi ptr [ %.pre70.a, %.lr.ph58 ], [ %i.dj, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod93 = trunc i32 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod93)
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %indvars.iv.epil.init
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !302 ; 2 uses
  %i.cn = icmp eq i32 %i.cm, -1
  %.not3452.epil = icmp eq ptr %.epil.init, null
  %.not34.epil = select i1 %i.cn, i1 true, i1 %.not3452.epil
  br i1 %.not34.epil, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %.epil.preheader
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds [592 x i8], ptr %.epil.init, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 100
  store i32 -1, ptr %i.cq, align 4, !tbaa !287
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.k, %.epil.preheader, %select.unfold47._crit_edge
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZN13ImChunkStreamI18ImGuiTableSettingsED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ai)
          to label %_ZN13ImChunkStreamI18ImGuiTableSettingsED2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  tail call void @__clang_call_terminate(ptr %i.cs) #25
  unreachable

_ZN13ImChunkStreamI18ImGuiTableSettingsED2Ev.exit: ; preds = %._crit_edge, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #4
  br label %bb.s

bb.n:                                             ; preds = %bb.r, %.lr.ph58.new
  %i.ct = phi ptr [ %.pre70.a, %.lr.ph58.new ], [ %i.dj, %bb.r ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph58.new ], [ %indvars.iv.next.1, %bb.r ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph58.new ], [ %niter.next.1, %bb.r ]
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %indvars.iv
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !302 ; 2 uses
  %i.cx = icmp eq i32 %i.cw, -1
  %.not3452 = icmp eq ptr %i.ct, null
  %.not34 = select i1 %i.cx, i1 true, i1 %.not3452
  br i1 %.not34, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cy = sext i32 %i.cw to i64
  %i.cz = getelementptr inbounds [592 x i8], ptr %i.ct, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 100
  store i32 -1, ptr %i.da, align 4, !tbaa !287
  %.pre69 = load ptr, ptr %i.au, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.db = phi ptr [ %.pre69, %bb.o ], [ %i.ct, %bb.n ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %indvars.iv
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !302 ; 2 uses
  %i.df = icmp eq i32 %i.de, -1
  %.not3452.1 = icmp eq ptr %i.db, null
  %.not34.1 = select i1 %i.df, i1 true, i1 %.not3452.1
  br i1 %.not34.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dg = sext i32 %i.de to i64
  %i.dh = getelementptr inbounds [592 x i8], ptr %i.db, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 100
  store i32 -1, ptr %i.di, align 4, !tbaa !287
  %.pre69.1 = load ptr, ptr %i.au, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dj = phi ptr [ %.pre69.1, %bb.q ], [ %i.db, %bb.p ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.n, !llvm.loop !703

bb.s:                                             ; preds = %select.unfold._crit_edge.thread, %select.unfold._crit_edge, %_ZN13ImChunkStreamI18ImGuiTableSettingsED2Ev.exit
  ret void

5:                                                ; preds = %3, %1
  %.pn = phi { ptr, i32 } [ %4, %3 ], [ %2, %1 ]
  call void @_ZN13ImChunkStreamI18ImGuiTableSettingsED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #4
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN13ImChunkStreamI18ImGuiTableSettingsED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !319  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN8ImVectorIcED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.b)
          to label %_ZN8ImVectorIcED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #25
  unreachable

_ZN8ImVectorIcED2Ev.exit:                         ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui14DebugNodeTableEP10ImGuiTable(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = alloca [512 x i8], align 16              ; 4 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImRect, align 4             ; 7 uses
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !19 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !214
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !215
  %i.g = add nsw i32 %i.f, -2
  %.not = icmp slt i32 %i.d, %i.g                 ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef 1)
  tail call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ @.str.21, %bb.b ], [ @.str.11, %bb.a ]
  %i.j = load i32, ptr %0, align 8, !tbaa !218
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !221
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !220
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !707
  %i.q = tail call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.20, i32 noundef %i.j, i32 noundef %i.l, ptr noundef %i.p, ptr noundef nonnull %i.i)
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = tail call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 0)
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = tail call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv()
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.s, ptr noundef nonnull align 4 dereferenceable(8) %i.t, ptr noundef nonnull align 4 dereferenceable(8) %i.u, i32 noundef -16711681, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = tail call noundef zeroext i1 @_ZN5ImGui13IsItemVisibleEv()
  br i1 %i.v, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 522
  %i.x = load i16, ptr %i.w, align 2, !tbaa !298
  %.not125 = icmp eq i16 %i.x, -1
  br i1 %.not125, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = tail call noundef ptr @_ZN5ImGui21GetForegroundDrawListEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  %i.z = tail call <2 x float> @_ZN5ImGui14GetItemRectMinEv()
  store <2 x float> %i.z, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  %i.aa = tail call <2 x float> @_ZN5ImGui14GetItemRectMaxEv()
  store <2 x float> %i.aa, ptr %2, align 8
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.y, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i32 noundef -16711681, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %i.q, label %bb.k, label %bb.ag

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !216 ; 2 uses
  %i.ad = icmp sgt i16 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %narrow = add nuw i16 %i.ac, 1
  %i.ae = zext i16 %narrow to i32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.22, i32 noundef %i.ae)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !708, !range !175, !noundef !176
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ai = call noundef zeroext i1 @_ZN5ImGui16DebugBreakButtonEPKcS1_(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24)
  br i1 %i.ai, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aj = load i32, ptr %0, align 8, !tbaa !218
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8992
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !178
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %i.al = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.25)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.aq = load <2 x float>, ptr %i.am, align 8, !tbaa !177 ; 3 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 0
  %i.as = fpext float %i.ar to double
  %i.at = extractelement <2 x float> %i.aq, i64 1
  %i.au = fpext float %i.at to double
  %i.av = load <2 x float>, ptr %i.ao, align 8, !tbaa !177
  %i.aw = fsub <2 x float> %i.av, %i.aq
  %i.ax = fpext <2 x float> %i.aw to <2 x double> ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !217
  %i.ba = lshr i32 %i.az, 13
  %i.bb = and i32 %i.ba, 7
  %switch.tableidx = add nsw i32 %i.bb, -1        ; 2 uses
  %i.bc = icmp ult i32 %switch.tableidx, 4
  br i1 %i.bc, label %switch.lookup, label %_ZL33DebugNodeTableGetSizingPolicyDesci.exit

switch.lookup:                                    ; preds = %bb.q
  %i.bd = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5ImGui14DebugNodeTableEP10ImGuiTable, i64 %i.bd
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZL33DebugNodeTableGetSizingPolicyDesci.exit

_ZL33DebugNodeTableGetSizingPolicyDesci.exit:     ; preds = %bb.q, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.78, %bb.q ]
  %i.be = extractelement <2 x double> %i.ax, i64 0
  %i.bf = extractelement <2 x double> %i.ax, i64 1
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.26, double noundef %i.as, double noundef %i.au, double noundef %i.be, double noundef %i.bf, ptr noundef nonnull %.0.i)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !360
  %i.bi = fpext float %i.bh to double
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !439
  %i.bl = fpext float %i.bk to double
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !223 ; 2 uses
  %i.bo = fpext float %i.bn to double
  %i.bp = fcmp oeq float %i.bn, 0.000000e+00
  %i.bq = select i1 %i.bp, ptr @.str.28, ptr @.str.11
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.27, double noundef %i.bi, double noundef %i.bl, double noundef %i.bo, ptr noundef nonnull %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bs = load float, ptr %i.br, align 8, !tbaa !246
  %i.bt = fpext float %i.bs to double
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !244
  %i.bw = fpext float %i.bv to double
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.by = load float, ptr %i.bx, align 8, !tbaa !245
  %i.bz = fpext float %i.by to double
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !247
  %i.cc = fpext float %i.cb to double
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.29, double noundef %i.bt, double noundef %i.bw, double noundef %i.bz, double noundef %i.cc)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 522
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !298
  %i.cf = sext i16 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.ch = load i16, ptr %i.cg, align 4, !tbaa !297
  %i.ci = sext i16 %i.ch to i32
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.30, i32 noundef %i.cf, i32 noundef %i.ci)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.ck = load i16, ptr %i.cj, align 4, !tbaa !292
  %i.cl = sext i16 %i.ck to i32
end_hunk_0
