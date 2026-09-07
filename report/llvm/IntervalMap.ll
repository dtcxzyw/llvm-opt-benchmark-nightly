Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IntervalMap?download=true
inline.NumInlined: 139
inline.NumDeleted: 61
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4llvm15IntervalMapImpl4Path8moveLeftEj:bb.a
  %i.ax = and i64 %storemerge29, 63
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ax
  %storemerge.prol = load i64, ptr %i.ay, align 8, !tbaa !16 ; 2 uses
  %.2.prol = add i32 %.1, 2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %storemerge.lcssa43.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %storemerge.prol, %.lr.ph.prol ]
  %.233.unr = phi i32 [ %.230, %.lr.ph.preheader ], [ %.2.prol, %.lr.ph.prol ]
  %storemerge32.unr = phi i64 [ %storemerge29, %.lr.ph.preheader ], [ %storemerge.prol, %.lr.ph.prol ]
  %i.az = icmp eq i32 %i.am, %.1
  br i1 %i.az, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.233 = phi i32 [ %.2.1, %.lr.ph ], [ %.233.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %storemerge32 = phi i64 [ %storemerge.1, %.lr.ph ], [ %storemerge32.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ba = trunc i64 %storemerge32 to i32
  %i.bb = and i32 %i.ba, 63                       ; 2 uses
  %i.bc = add nuw nsw i32 %i.bb, 1
  %i.bd = and i64 %storemerge32, -64
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  %i.bf = zext i32 %.233 to i64
  %i.bg = load ptr, ptr %0, align 8, !tbaa !10
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.bf ; 3 uses
  store ptr %i.be, ptr %i.bh, align 8, !tbaa !11
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 %i.bc, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !12
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 %i.bb, ptr %.sroa.521.0..sroa_idx, align 4, !tbaa !12
  %i.bi = and i64 %storemerge32, 63
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bi
  %storemerge = load i64, ptr %i.bj, align 8, !tbaa !16 ; 3 uses
  %.2 = add i32 %.233, 1
  %i.bk = trunc i64 %storemerge to i32
  %i.bl = and i32 %i.bk, 63                       ; 2 uses
  %i.bm = add nuw nsw i32 %i.bl, 1
  %i.bn = and i64 %storemerge, -64
  %i.bo = inttoptr i64 %i.bn to ptr               ; 2 uses
  %i.bp = zext i32 %.2 to i64
  %i.bq = load ptr, ptr %0, align 8, !tbaa !10
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bp ; 3 uses
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !11
  %.sroa.420.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 %i.bm, ptr %.sroa.420.0..sroa_idx.1, align 8, !tbaa !12
  %.sroa.521.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 %i.bl, ptr %.sroa.521.0..sroa_idx.1, align 4, !tbaa !12
  %i.bs = and i64 %storemerge, 63
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bs
  %storemerge.1 = load i64, ptr %i.bt, align 8, !tbaa !16 ; 2 uses
  %.2.1 = add i32 %.233, 2                        ; 2 uses
  %.not.1 = icmp eq i32 %.2.1, %1
  br i1 %.not.1, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !26

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %storemerge.lcssa43 = phi i64 [ %storemerge.lcssa43.unr, %.lr.ph.prol.loopexit ], [ %storemerge.1, %.lr.ph ]
  %.pre = load ptr, ptr %0, align 8, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm15SmallVectorImplINS_15IntervalMapImpl4Path5EntryEE6resizeEmS3_.exit
  %i.bu = phi ptr [ %i.ae, %_ZN4llvm15SmallVectorImplINS_15IntervalMapImpl4Path5EntryEE6resizeEmS3_.exit ], [ %.pre, %._crit_edge.loopexit ]
  %storemerge.lcssa = phi i64 [ %storemerge29, %_ZN4llvm15SmallVectorImplINS_15IntervalMapImpl4Path5EntryEE6resizeEmS3_.exit ], [ %storemerge.lcssa43, %._crit_edge.loopexit ] ; 2 uses
  %i.bv = trunc i64 %storemerge.lcssa to i32
  %i.bw = and i32 %i.bv, 63                       ; 2 uses
  %i.bx = add nuw nsw i32 %i.bw, 1
  %i.by = and i64 %storemerge.lcssa, -64
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = zext i32 %1 to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.ca ; 3 uses
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !11
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 %i.bx, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 %i.bw, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZNK4llvm15IntervalMapImpl4Path15getRightSiblingEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8                ; 4 uses
  %i.c = zext i32 %1 to i64                       ; 2 uses
  %i.d = add nsw i64 %i.c, -1                     ; 3 uses
  %.not.wide36 = icmp eq i64 %i.d, 0
  br i1 %.not.wide36, label %.critedge, label %.lr.ph38

bb.b:                                             ; preds = %.lr.ph38
  %i.e = add nsw i64 %i.f, -1                     ; 3 uses
  %.not.wide = icmp eq i64 %i.e, 0
  br i1 %.not.wide, label %.critedge, label %.lr.ph38, !llvm.loop !28

.lr.ph38:                                         ; preds = %.preheader, %bb.b
  %i.f = phi i64 [ %i.e, %bb.b ], [ %i.d, %.preheader ] ; 4 uses
  %indvars.iv37 = phi i64 [ %i.f, %bb.b ], [ %i.c, %.preheader ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !20
  %i.l = add i32 %i.k, -1
  %i.m = icmp eq i32 %i.i, %i.l
  br i1 %i.m, label %bb.b, label %.critedge.thread.loopexit, !llvm.loop !28

.critedge:                                        ; preds = %bb.b, %.preheader
  %.lcssa = phi i64 [ %i.d, %.preheader ], [ %i.e, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !20
  %i.r = add i32 %i.q, -1
  %i.s = icmp eq i32 %i.o, %i.r
  br i1 %i.s, label %.loopexit, label %.critedge.thread

.critedge.thread.loopexit:                        ; preds = %.lr.ph38
  %i.t = trunc nuw i64 %indvars.iv37 to i32
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.loopexit, %.critedge
  %i.u = phi i64 [ %i.f, %.critedge.thread.loopexit ], [ %.lcssa, %.critedge ]
  %.0.in28 = phi i32 [ %i.t, %.critedge.thread.loopexit ], [ 1, %.critedge ] ; 5 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %i.y = add i32 %i.x, 1
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !15
  %i.aa = zext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  %.sroa.0.021 = load i64, ptr %i.ab, align 8, !tbaa !16 ; 3 uses
  %.not1422 = icmp eq i32 %.0.in28, %1
  br i1 %.not1422, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge.thread
  %i.ac = sub i32 %1, %.0.in28
  %xtraiter = and i32 %i.ac, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.0.024.prol = phi i64 [ %.sroa.0.0.prol, %.lr.ph.prol ], [ %.sroa.0.021, %.lr.ph.preheader ]
  %.123.prol = phi i32 [ %i.af, %.lr.ph.prol ], [ %.0.in28, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ad = and i64 %.sroa.0.024.prol, -64
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = add i32 %.123.prol, 1                   ; 2 uses
  %.sroa.0.0.prol = load i64, ptr %i.ae, align 64, !tbaa !16 ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !29

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.0.0.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %.sroa.0.0.prol, %.lr.ph.prol ]
  %.sroa.0.024.unr = phi i64 [ %.sroa.0.021, %.lr.ph.preheader ], [ %.sroa.0.0.prol, %.lr.ph.prol ]
  %.123.unr = phi i32 [ %.0.in28, %.lr.ph.preheader ], [ %i.af, %.lr.ph.prol ]
  %i.ag = sub i32 %.0.in28, %1
  %i.ah = icmp ugt i32 %i.ag, -8
  br i1 %i.ah, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.0.024 = phi i64 [ %.sroa.0.0.7, %.lr.ph ], [ %.sroa.0.024.unr, %.lr.ph.prol.loopexit ]
  %.123 = phi i32 [ %i.ay, %.lr.ph ], [ %.123.unr, %.lr.ph.prol.loopexit ]
  %i.ai = and i64 %.sroa.0.024, -64
  %i.aj = inttoptr i64 %i.ai to ptr
  %.sroa.0.0 = load i64, ptr %i.aj, align 64, !tbaa !16
  %i.ak = and i64 %.sroa.0.0, -64
  %i.al = inttoptr i64 %i.ak to ptr
  %.sroa.0.0.1 = load i64, ptr %i.al, align 64, !tbaa !16
  %i.am = and i64 %.sroa.0.0.1, -64
  %i.an = inttoptr i64 %i.am to ptr
  %.sroa.0.0.2 = load i64, ptr %i.an, align 64, !tbaa !16
  %i.ao = and i64 %.sroa.0.0.2, -64
  %i.ap = inttoptr i64 %i.ao to ptr
  %.sroa.0.0.3 = load i64, ptr %i.ap, align 64, !tbaa !16
  %i.aq = and i64 %.sroa.0.0.3, -64
  %i.ar = inttoptr i64 %i.aq to ptr
  %.sroa.0.0.4 = load i64, ptr %i.ar, align 64, !tbaa !16
  %i.as = and i64 %.sroa.0.0.4, -64
  %i.at = inttoptr i64 %i.as to ptr
  %.sroa.0.0.5 = load i64, ptr %i.at, align 64, !tbaa !16
  %i.au = and i64 %.sroa.0.0.5, -64
  %i.av = inttoptr i64 %i.au to ptr
  %.sroa.0.0.6 = load i64, ptr %i.av, align 64, !tbaa !16
  %i.aw = and i64 %.sroa.0.0.6, -64
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = add i32 %.123, 8                        ; 2 uses
  %.sroa.0.0.7 = load i64, ptr %i.ax, align 64, !tbaa !16 ; 2 uses
  %.not14.7 = icmp eq i32 %i.ay, %1
  br i1 %.not14.7, label %.loopexit, label %.lr.ph, !llvm.loop !30

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.critedge.thread, %.critedge, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %.critedge ], [ 0, %bb.a ], [ %.sroa.0.021, %.critedge.thread ], [ %.sroa.0.0.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.sroa.0.0.7, %.lr.ph ]
  ret i64 %.sroa.0.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm15IntervalMapImpl4Path9moveRightEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %.046 = add i32 %1, -1                          ; 2 uses
  %.not47 = icmp eq i32 %.046, 0
  br i1 %.not47, label %..critedge_crit_edge, label %.lr.ph51

bb.b:                                             ; preds = %.lr.ph51
  %.0 = add i32 %.049, -1                         ; 2 uses
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %..critedge_crit_edge, label %.lr.ph51, !llvm.loop !31

..critedge_crit_edge:                             ; preds = %bb.b, %bb.a
  %.0.in.lcssa = phi i32 [ %1, %bb.a ], [ %.049, %bb.b ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !14
  %.phi.trans.insert28 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre29 = load i32, ptr %.phi.trans.insert28, align 8, !tbaa !20
  br label %.critedge

.lr.ph51:                                         ; preds = %bb.a, %bb.b
  %.049 = phi i32 [ %.0, %bb.b ], [ %.046, %bb.a ] ; 5 uses
  %.0.in48 = phi i32 [ %.049, %bb.b ], [ %1, %bb.a ]
  %i.b = zext i32 %.049 to i64
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !14   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %i.h = add i32 %i.g, -1
  %i.i = icmp eq i32 %i.e, %i.h
  br i1 %i.i, label %bb.b, label %.critedgesplit, !llvm.loop !31

.critedgesplit:                                   ; preds = %.lr.ph51
  %i.j = zext i32 %.049 to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedgesplit, %..critedge_crit_edge
  %.0.in44 = phi i32 [ %.0.in.lcssa, %..critedge_crit_edge ], [ %.0.in48, %.critedgesplit ] ; 6 uses
  %i.k = phi i32 [ %.pre29, %..critedge_crit_edge ], [ %i.g, %.critedgesplit ]
  %i.l = phi i32 [ %.pre, %..critedge_crit_edge ], [ %i.e, %.critedgesplit ]
  %.0.lcssa = phi i64 [ 0, %..critedge_crit_edge ], [ %i.j, %.critedgesplit ]
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.0.lcssa ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.o = add i32 %i.l, 1                          ; 3 uses
  store i32 %i.o, ptr %i.n, align 4, !tbaa !14
  %i.p = icmp eq i32 %i.o, %i.k
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.r = zext i32 %i.o to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  %.sroa.019.022 = load i64, ptr %i.s, align 8, !tbaa !16 ; 4 uses
  %.not1423 = icmp eq i32 %.0.in44, %1
  br i1 %.not1423, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.t = sub i32 %1, %.0.in44
  %.neg = add i32 %.0.in44, 1
  %xtraiter = and i32 %i.t, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.u = and i64 %.sroa.019.022, -64
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = trunc i64 %.sroa.019.022 to i32
  %i.x = and i32 %i.w, 63
  %i.y = add nuw nsw i32 %i.x, 1
  %i.z = zext i32 %.0.in44 to i64
  %i.aa = load ptr, ptr %0, align 8, !tbaa !10
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z ; 3 uses
  store ptr %i.v, ptr %i.ab, align 8, !tbaa !11
  %.sroa.417.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 %i.y, ptr %.sroa.417.0..sroa_idx.prol, align 8, !tbaa !12
  %.sroa.518.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %.sroa.518.0..sroa_idx.prol, align 4, !tbaa !12
  %i.ac = add i32 %.0.in44, 1
  %.sroa.019.0.prol = load i64, ptr %i.v, align 64, !tbaa !16 ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.019.0.lcssa52.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %.sroa.019.0.prol, %.lr.ph.prol ]
  %.sroa.019.025.unr = phi i64 [ %.sroa.019.022, %.lr.ph.preheader ], [ %.sroa.019.0.prol, %.lr.ph.prol ]
  %.124.unr = phi i32 [ %.0.in44, %.lr.ph.preheader ], [ %i.ac, %.lr.ph.prol ]
  %i.ad = icmp eq i32 %1, %.neg
  br i1 %i.ad, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.019.025 = phi i64 [ %.sroa.019.0.1, %.lr.ph ], [ %.sroa.019.025.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.124 = phi i32 [ %i.av, %.lr.ph ], [ %.124.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ae = and i64 %.sroa.019.025, -64
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = trunc i64 %.sroa.019.025 to i32
  %i.ah = and i32 %i.ag, 63
  %i.ai = add nuw nsw i32 %i.ah, 1
  %i.aj = zext i32 %.124 to i64
  %i.ak = load ptr, ptr %0, align 8, !tbaa !10
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.aj ; 3 uses
  store ptr %i.af, ptr %i.al, align 8, !tbaa !11
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 %i.ai, ptr %.sroa.417.0..sroa_idx, align 8, !tbaa !12
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %.sroa.518.0..sroa_idx, align 4, !tbaa !12
  %i.am = add i32 %.124, 1
  %.sroa.019.0 = load i64, ptr %i.af, align 64, !tbaa !16 ; 2 uses
  %i.an = and i64 %.sroa.019.0, -64
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  %i.ap = trunc i64 %.sroa.019.0 to i32
  %i.aq = and i32 %i.ap, 63
  %i.ar = add nuw nsw i32 %i.aq, 1
  %i.as = zext i32 %i.am to i64
  %i.at = load ptr, ptr %0, align 8, !tbaa !10
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.as ; 3 uses
  store ptr %i.ao, ptr %i.au, align 8, !tbaa !11
  %.sroa.417.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %i.ar, ptr %.sroa.417.0..sroa_idx.1, align 8, !tbaa !12
  %.sroa.518.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %.sroa.518.0..sroa_idx.1, align 4, !tbaa !12
  %i.av = add i32 %.124, 2                        ; 2 uses
  %.sroa.019.0.1 = load i64, ptr %i.ao, align 64, !tbaa !16 ; 2 uses
  %.not14.1 = icmp eq i32 %i.av, %1
  br i1 %.not14.1, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !32

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.sroa.019.0.lcssa52 = phi i64 [ %.sroa.019.0.lcssa52.unr, %.lr.ph.prol.loopexit ], [ %.sroa.019.0.1, %.lr.ph ]
  %.pre30 = load ptr, ptr %0, align 8, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.aw = phi ptr [ %i.a, %bb.c ], [ %.pre30, %._crit_edge.loopexit ]
  %.sroa.019.0.lcssa = phi i64 [ %.sroa.019.022, %bb.c ], [ %.sroa.019.0.lcssa52, %._crit_edge.loopexit ] ; 2 uses
  %i.ax = and i64 %.sroa.019.0.lcssa, -64
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = trunc i64 %.sroa.019.0.lcssa to i32
  %i.ba = and i32 %i.az, 63
  %i.bb = add nuw nsw i32 %i.ba, 1
  %i.bc = zext i32 %1 to i64
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.bc ; 3 uses
  store ptr %i.ay, ptr %i.bd, align 8, !tbaa !11
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i32 %i.bb, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @_ZN4llvm15IntervalMapImpl10distributeEjjjPKjPjjb(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i1 %6 to i32
  %i.b = add i32 %1, %i.a                         ; 2 uses
  %i.c = udiv i32 %i.b, %0                        ; 3 uses
  %i.d = urem i32 %i.b, %0
  %i.e = zext i32 %0 to i64                       ; 2 uses
  %i.f = zext i32 %i.d to i64                     ; 3 uses
  %xtraiter = and i64 %i.e, 1
  %i.g = icmp eq i32 %0, 1
  br i1 %i.g, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 4294967294
  br label %bb.d

.unr-lcssa:                                       ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.b
  %indvars.iv.epil.init = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.1, %.unr-lcssa ] ; 3 uses
  %.032.epil.init = phi i32 [ 0, %bb.b ], [ %i.ad, %.unr-lcssa ] ; 2 uses
  %.sroa.6.030.epil.init = phi i32 [ 0, %bb.b ], [ %.sroa.6.1.1, %.unr-lcssa ]
  %.sroa.026.029.epil.init = phi i32 [ %0, %bb.b ], [ %.sroa.026.1.1, %.unr-lcssa ] ; 2 uses
  %lcmp.mod36 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod36)
  %i.h = icmp samesign ult i64 %indvars.iv.epil.init, %i.f
  %i.i = zext i1 %i.h to i32
  %i.j = add i32 %i.c, %i.i                       ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.epil.init
  store i32 %i.j, ptr %i.k, align 4, !tbaa !12
  %i.l = add i32 %i.j, %.032.epil.init
  %i.m = icmp eq i32 %.sroa.026.029.epil.init, %0
  %i.n = icmp ugt i32 %i.l, %5
  %or.cond.epil = select i1 %i.m, i1 %i.n, i1 false ; 2 uses
  %i.o = sub i32 %5, %.032.epil.init
  %i.p = trunc nuw i64 %indvars.iv.epil.init to i32
  %.sroa.026.1.epil = select i1 %or.cond.epil, i32 %i.p, i32 %.sroa.026.029.epil.init
  %.sroa.6.1.epil = select i1 %or.cond.epil, i32 %i.o, i32 %.sroa.6.030.epil.init
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.sroa.026.1.lcssa = phi i32 [ %.sroa.026.1.1, %.unr-lcssa ], [ %.sroa.026.1.epil, %.epil.preheader ] ; 3 uses
  %.sroa.6.1.lcssa = phi i32 [ %.sroa.6.1.1, %.unr-lcssa ], [ %.sroa.6.1.epil, %.epil.preheader ] ; 2 uses
  br i1 %6, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.d, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.d ] ; 5 uses
  %.032 = phi i32 [ 0, %.new ], [ %i.ad, %bb.d ]  ; 2 uses
  %.sroa.6.030 = phi i32 [ 0, %.new ], [ %.sroa.6.1.1, %bb.d ]
  %.sroa.026.029 = phi i32 [ %0, %.new ], [ %.sroa.026.1.1, %bb.d ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.d ]
  %i.q = icmp samesign ult i64 %indvars.iv, %i.f
  %i.r = zext i1 %i.q to i32
  %i.s = add i32 %i.c, %i.r                       ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store i32 %i.s, ptr %i.t, align 4, !tbaa !12
  %i.u = add i32 %i.s, %.032                      ; 3 uses
  %i.v = icmp eq i32 %.sroa.026.029, %0
  %i.w = icmp ugt i32 %i.u, %5
  %or.cond = select i1 %i.v, i1 %i.w, i1 false    ; 2 uses
  %i.x = sub i32 %5, %.032
  %i.y = trunc nuw i64 %indvars.iv to i32
  %.sroa.026.1 = select i1 %or.cond, i32 %i.y, i32 %.sroa.026.029 ; 2 uses
  %.sroa.6.1 = select i1 %or.cond, i32 %i.x, i32 %.sroa.6.030
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.f
  %i.aa = zext i1 %i.z to i32
  %i.ab = add i32 %i.c, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !12
  %i.ad = add i32 %i.ab, %i.u                     ; 3 uses
  %i.ae = icmp eq i32 %.sroa.026.1, %0
  %i.af = icmp ugt i32 %i.ad, %5
  %or.cond.1 = select i1 %i.ae, i1 %i.af, i1 false ; 2 uses
  %i.ag = sub i32 %5, %i.u
  %i.ah = trunc nuw i64 %indvars.iv.next to i32
  %.sroa.026.1.1 = select i1 %or.cond.1, i32 %i.ah, i32 %.sroa.026.1 ; 3 uses
  %.sroa.6.1.1 = select i1 %or.cond.1, i32 %i.ag, i32 %.sroa.6.1 ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.d, !llvm.loop !33

bb.e:                                             ; preds = %bb.c
  %i.ai = zext i32 %.sroa.026.1.lcssa to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !12
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.c, %bb.e
  %.sroa.026.2 = phi i32 [ %.sroa.026.1.lcssa, %bb.c ], [ %.sroa.026.1.lcssa, %bb.e ], [ 0, %bb.a ]
  %.sroa.6.2 = phi i32 [ %.sroa.6.1.lcssa, %bb.c ], [ %.sroa.6.1.lcssa, %bb.e ], [ 0, %bb.a ]
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.2 to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.026.0.insert.ext = zext i32 %.sroa.026.2 to i64
  %.sroa.026.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.026.0.insert.ext
  ret i64 %.sroa.026.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm15SmallVectorImplINS_15IntervalMapImpl4Path5EntryEE15insert_one_implIS3_EEPS3_S6_OT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.d ; 3 uses
  %i.f = icmp eq ptr %1, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !21
  %.not.i = icmp ult i32 %i.c, %i.h               ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !11 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !34

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_15IntervalMapImpl4Path5EntryELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %.pre12 = load i32, ptr %i.b, align 8, !tbaa !19
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_15IntervalMapImpl4Path5EntryELb1EE9push_backES3_.exit

bb.d:                                             ; preds = %bb.b
  store ptr %.sroa.0.0.copyload, ptr %i.e, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
end_hunk_0
