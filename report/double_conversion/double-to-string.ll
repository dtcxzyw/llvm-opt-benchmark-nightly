Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/double_conversion/original/double-to-string?download=true
inline.NumInlined: 75
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK17double_conversion23DoubleToStringConverter31CreateExponentialRepresentationEPKciiPNS_13StringBuilderE:bb.a
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.c, align 8, !tbaa !17
  %i.at = load ptr, ptr %4, align 8, !tbaa !18
  %i.au = sext i32 %i.ar to i64
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  store i8 45, ptr %i.av, align 1, !tbaa !19
  %i.aw = sub nsw i32 0, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 0, ptr %i.ax, align 1, !tbaa !19
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i, %.thread
  %.12634.ph = phi i32 [ %i.aw, %.thread ], [ %3, %bb.i ]
  br label %.lr.ph

bb.g:                                             ; preds = %bb.f
  %i.ay = load i32, ptr %0, align 8, !tbaa !11
  %i.az = and i32 %i.ay, 1
  %.not32 = icmp eq i32 %i.az, 0
  br i1 %.not32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = load i32, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.c, align 8, !tbaa !17
  %i.bc = load ptr, ptr %4, align 8, !tbaa !18
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.bd
  store i8 43, ptr %i.be, align 1, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 0, ptr %i.bf, align 1, !tbaa !19
  %i.bg = icmp eq i32 %3, 0
  br i1 %i.bg, label %bb.j, label %.lr.ph.preheader

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 48, ptr %i.bh, align 1, !tbaa !19
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 5, %.lr.ph.preheader ]
  %.12634 = phi i32 [ %i.bm, %.lr.ph ], [ %.12634.ph, %.lr.ph.preheader ] ; 3 uses
  %i.bi = urem i32 %.12634, 10
  %i.bj = trunc nuw nsw i32 %i.bi to i8
  %i.bk = or disjoint i8 %i.bj, 48
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !19
  %i.bm = udiv i32 %.12634, 10
  %.not40 = icmp ult i32 %.12634, 10
  br i1 %.not40, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !26

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.bn = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.j
  %.1 = phi i32 [ 4, %bb.j ], [ %i.bn, %.loopexit.loopexit ] ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !14
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.bp, i32 5) ; 3 uses
  %i.bq = sub nsw i32 5, %.1                      ; 2 uses
  %i.br = icmp slt i32 %i.bq, %.sroa.speculated
  br i1 %i.br, label %.lr.ph37.preheader, label %._crit_edge

.lr.ph37.preheader:                               ; preds = %.loopexit
  %i.bs = add i32 %.1, -1
  %i.bt = sext i32 %i.bs to i64
  %i.bu = add i32 %.1, %.sroa.speculated
  %i.bv = add i32 %i.bu, -6
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = sub nsw i64 %i.bt, %i.bw
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.bx
  %i.by = add nuw nsw i64 %i.bw, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 48, i64 %i.by, i1 false), !tbaa !19
  %i.bz = sext i32 %.1 to i64
  %i.ca = sext i32 %.sroa.speculated to i64
  br label %.lr.ph37

.lr.ph37:                                         ; preds = %.lr.ph37.preheader, %.lr.ph37
  %indvars.iv45 = phi i64 [ %i.bz, %.lr.ph37.preheader ], [ %indvars.iv.next46, %.lr.ph37 ] ; 2 uses
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1 ; 2 uses
  %i.cb = sub nsw i64 6, %indvars.iv45            ; 2 uses
  %i.cc = icmp slt i64 %i.cb, %i.ca
  br i1 %i.cc, label %.lr.ph37, label %._crit_edge.loopexit, !llvm.loop !27

._crit_edge.loopexit:                             ; preds = %.lr.ph37
  %i.cd = trunc nsw i64 %i.cb to i32
  %i.ce = trunc nsw i64 %indvars.iv.next46 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit
  %.2.lcssa = phi i32 [ %.1, %.loopexit ], [ %i.ce, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %i.bq, %.loopexit ], [ %i.cd, %._crit_edge.loopexit ] ; 2 uses
  %i.cf = sext i32 %.2.lcssa to i64
  %i.cg = getelementptr inbounds i8, ptr %i.a, i64 %i.cf
  %i.ch = load i32, ptr %i.c, align 8, !tbaa !17
  %i.ci = load ptr, ptr %4, align 8, !tbaa !18
  %i.cj = sext i32 %i.ch to i64
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 %i.cj
  %i.cl = sext i32 %.lcssa to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ck, ptr nonnull align 1 %i.cg, i64 %i.cl, i1 false)
  %i.cm = load i32, ptr %i.c, align 8, !tbaa !17
  %i.cn = add nsw i32 %i.cm, %.lcssa
  store i32 %i.cn, ptr %i.c, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK17double_conversion23DoubleToStringConverter27CreateDecimalRepresentationEPKciiiPNS_13StringBuilderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp slt i32 %3, 1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 19 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8, !tbaa !17
  %i.e = load ptr, ptr %5, align 8, !tbaa !18
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.f
  store i8 48, ptr %i.g, align 1, !tbaa !19
  %i.h = icmp sgt i32 %4, 0
  br i1 %i.h, label %bb.c, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.b, align 8, !tbaa !17
  %i.k = load ptr, ptr %5, align 8, !tbaa !18
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l
  store i8 46, ptr %i.m, align 1, !tbaa !19
  %i.n = sub i32 0, %3                            ; 3 uses
  %.not65 = icmp eq i32 %3, 0
  br i1 %.not65, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %xtraiter89 = and i32 %i.n, 1
  %i.o = icmp eq i32 %3, -1
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter92 = and i32 %i.n, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %niter93 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter93.next.1, %.lr.ph.i ]
  %i.p = load i32, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.b, align 8, !tbaa !17
  %i.r = load ptr, ptr %5, align 8, !tbaa !18
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  store i8 48, ptr %i.t, align 1, !tbaa !19
  %i.u = load i32, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.b, align 8, !tbaa !17
  %i.w = load ptr, ptr %5, align 8, !tbaa !18
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  store i8 48, ptr %i.y, align 1, !tbaa !19
  %niter93.next.1 = add i32 %niter93, 2           ; 2 uses
  %niter93.ncmp.1 = icmp eq i32 %niter93.next.1, %unroll_iter92
  br i1 %niter93.ncmp.1, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !28

_ZN17double_conversion13StringBuilder10AddPaddingEci.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod90.not = icmp eq i32 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %lcmp.mod91 = trunc i32 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod91)
  %i.z = load i32, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !17
  %i.ab = load ptr, ptr %5, align 8, !tbaa !18
  %i.ac = sext i32 %i.z to i64
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac
  store i8 48, ptr %i.ad, align 1, !tbaa !19
  br label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit

_ZN17double_conversion13StringBuilder10AddPaddingEci.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit.loopexit.unr-lcssa, %bb.c
  %i.ae = load i32, ptr %i.b, align 8, !tbaa !17
  %i.af = load ptr, ptr %5, align 8, !tbaa !18
  %i.ag = sext i32 %i.ae to i64
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  %i.ai = sext i32 %2 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr align 1 %1, i64 %i.ai, i1 false)
  %i.aj = load i32, ptr %i.b, align 8, !tbaa !17
  %i.ak = add nsw i32 %i.aj, %2
  store i32 %i.ak, ptr %i.b, align 8, !tbaa !17
  %i.al = sub i32 %3, %2
  %i.am = add i32 %i.al, %4                       ; 5 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.i49.preheader, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread

.lr.ph.i49.preheader:                             ; preds = %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit
  %xtraiter94 = and i32 %i.am, 1
  %i.ao = icmp eq i32 %i.am, 1
  br i1 %i.ao, label %.lr.ph.i49.epil.preheader, label %.lr.ph.i49.preheader.new

.lr.ph.i49.preheader.new:                         ; preds = %.lr.ph.i49.preheader
  %unroll_iter97 = and i32 %i.am, 2147483646
  br label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49, %.lr.ph.i49.preheader.new
  %niter98 = phi i32 [ 0, %.lr.ph.i49.preheader.new ], [ %niter98.next.1, %.lr.ph.i49 ]
  %i.ap = load i32, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.b, align 8, !tbaa !17
  %i.ar = load ptr, ptr %5, align 8, !tbaa !18
  %i.as = sext i32 %i.ap to i64
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.as
  store i8 48, ptr %i.at, align 1, !tbaa !19
  %i.au = load i32, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.b, align 8, !tbaa !17
  %i.aw = load ptr, ptr %5, align 8, !tbaa !18
  %i.ax = sext i32 %i.au to i64
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 %i.ax
  store i8 48, ptr %i.ay, align 1, !tbaa !19
  %niter98.next.1 = add i32 %niter98, 2           ; 2 uses
  %niter98.ncmp.1 = icmp eq i32 %niter98.next.1, %unroll_iter97
  br i1 %niter98.ncmp.1, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit.unr-lcssa, label %.lr.ph.i49, !llvm.loop !28

bb.d:                                             ; preds = %bb.a
  %.not = icmp slt i32 %3, %2
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 28 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !17
  %i.bb = load ptr, ptr %5, align 8, !tbaa !18
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc ; 2 uses
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = sext i32 %2 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr align 1 %1, i64 %i.be, i1 false)
  %i.bf = load i32, ptr %i.az, align 8, !tbaa !17
  %i.bg = add nsw i32 %i.bf, %2
  store i32 %i.bg, ptr %i.az, align 8, !tbaa !17
  %i.bh = sub nsw i32 %3, %2                      ; 5 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i53.preheader, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56

.lr.ph.i53.preheader:                             ; preds = %bb.e
  %xtraiter = and i32 %i.bh, 1
  %i.bj = icmp eq i32 %i.bh, 1
  br i1 %i.bj, label %.lr.ph.i53.epil.preheader, label %.lr.ph.i53.preheader.new

.lr.ph.i53.preheader.new:                         ; preds = %.lr.ph.i53.preheader
  %unroll_iter = and i32 %i.bh, 2147483646
  br label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.lr.ph.i53, %.lr.ph.i53.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i53.preheader.new ], [ %niter.next.1, %.lr.ph.i53 ]
  %i.bk = load i32, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !17
  %i.bm = load ptr, ptr %5, align 8, !tbaa !18
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 %i.bn
  store i8 48, ptr %i.bo, align 1, !tbaa !19
  %i.bp = load i32, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.az, align 8, !tbaa !17
  %i.br = load ptr, ptr %5, align 8, !tbaa !18
  %i.bs = sext i32 %i.bp to i64
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 %i.bs
  store i8 48, ptr %i.bt, align 1, !tbaa !19
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56.loopexit.unr-lcssa, label %.lr.ph.i53, !llvm.loop !28

_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56.loopexit.unr-lcssa: ; preds = %.lr.ph.i53
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56, label %.lr.ph.i53.epil.preheader

.lr.ph.i53.epil.preheader:                        ; preds = %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56.loopexit.unr-lcssa, %.lr.ph.i53.preheader
  %lcmp.mod78 = trunc i32 %i.bh to i1
  tail call void @llvm.assume(i1 %lcmp.mod78)
  %i.bu = load i32, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.az, align 8, !tbaa !17
  %i.bw = load ptr, ptr %5, align 8, !tbaa !18
  %i.bx = sext i32 %i.bu to i64
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 %i.bx
  store i8 48, ptr %i.by, align 1, !tbaa !19
  br label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56

_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56: ; preds = %.lr.ph.i53.epil.preheader, %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56.loopexit.unr-lcssa, %bb.e
  %i.bz = icmp sgt i32 %4, 0
  br i1 %i.bz, label %.lr.ph.i57, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52

.lr.ph.i57:                                       ; preds = %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56
  %i.ca = load i32, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.az, align 8, !tbaa !17
  %i.cc = load ptr, ptr %5, align 8, !tbaa !18
  %i.cd = sext i32 %i.ca to i64
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 %i.cd
  store i8 46, ptr %i.ce, align 1, !tbaa !19
  %xtraiter79 = and i32 %4, 1
  %i.cf = icmp eq i32 %4, 1
  br i1 %i.cf, label %.epil.preheader, label %.lr.ph.i57.new

.lr.ph.i57.new:                                   ; preds = %.lr.ph.i57
  %unroll_iter82 = and i32 %4, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i57.new
  %niter83 = phi i32 [ 0, %.lr.ph.i57.new ], [ %niter83.next.1, %bb.f ]
  %i.cg = load i32, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.az, align 8, !tbaa !17
  %i.ci = load ptr, ptr %5, align 8, !tbaa !18
  %i.cj = sext i32 %i.cg to i64
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 %i.cj
  store i8 48, ptr %i.ck, align 1, !tbaa !19
  %i.cl = load i32, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.az, align 8, !tbaa !17
  %i.cn = load ptr, ptr %5, align 8, !tbaa !18
  %i.co = sext i32 %i.cl to i64
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %i.co
  store i8 48, ptr %i.cp, align 1, !tbaa !19
  %niter83.next.1 = add nuw nsw i32 %niter83, 2   ; 2 uses
  %niter83.ncmp.1 = icmp eq i32 %niter83.next.1, %unroll_iter82
  br i1 %niter83.ncmp.1, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit77.unr-lcssa, label %bb.f, !llvm.loop !28

bb.g:                                             ; preds = %bb.d
  %i.cq = zext nneg i32 %3 to i64                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr align 1 %1, i64 %i.cq, i1 false)
  %i.cr = load i32, ptr %i.az, align 8, !tbaa !17
  %i.cs = add nsw i32 %i.cr, %3                   ; 2 uses
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %i.az, align 8, !tbaa !17
  %i.cu = load ptr, ptr %5, align 8, !tbaa !18
  %i.cv = sext i32 %i.cs to i64
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  store i8 46, ptr %i.cw, align 1, !tbaa !19
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %i.cq
  %i.cy = sub nuw nsw i32 %2, %3                  ; 3 uses
  %i.cz = load i32, ptr %i.az, align 8, !tbaa !17
  %i.da = load ptr, ptr %5, align 8, !tbaa !18
  %i.db = sext i32 %i.cz to i64
  %i.dc = getelementptr inbounds i8, ptr %i.da, i64 %i.db
  %i.dd = zext nneg i32 %i.cy to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dc, ptr nonnull align 1 %i.cx, i64 %i.dd, i1 false)
  %i.de = load i32, ptr %i.az, align 8, !tbaa !17
  %i.df = add nsw i32 %i.de, %i.cy
  store i32 %i.df, ptr %i.az, align 8, !tbaa !17
  %i.dg = sub nsw i32 %4, %i.cy                   ; 5 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph.i61.preheader, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52

.lr.ph.i61.preheader:                             ; preds = %bb.g
  %xtraiter84 = and i32 %i.dg, 1
  %i.di = icmp eq i32 %i.dg, 1
  br i1 %i.di, label %.lr.ph.i61.epil.preheader, label %.lr.ph.i61.preheader.new

.lr.ph.i61.preheader.new:                         ; preds = %.lr.ph.i61.preheader
  %unroll_iter87 = and i32 %i.dg, 2147483646
  br label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.lr.ph.i61, %.lr.ph.i61.preheader.new
  %niter88 = phi i32 [ 0, %.lr.ph.i61.preheader.new ], [ %niter88.next.1, %.lr.ph.i61 ]
  %i.dj = load i32, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.az, align 8, !tbaa !17
  %i.dl = load ptr, ptr %5, align 8, !tbaa !18
  %i.dm = sext i32 %i.dj to i64
  %i.dn = getelementptr inbounds i8, ptr %i.dl, i64 %i.dm
  store i8 48, ptr %i.dn, align 1, !tbaa !19
  %i.do = load i32, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.az, align 8, !tbaa !17
  %i.dq = load ptr, ptr %5, align 8, !tbaa !18
  %i.dr = sext i32 %i.do to i64
  %i.ds = getelementptr inbounds i8, ptr %i.dq, i64 %i.dr
  store i8 48, ptr %i.ds, align 1, !tbaa !19
  %niter88.next.1 = add i32 %niter88, 2           ; 2 uses
  %niter88.ncmp.1 = icmp eq i32 %niter88.next.1, %unroll_iter87
  br i1 %niter88.ncmp.1, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.loopexit.unr-lcssa, label %.lr.ph.i61, !llvm.loop !28

_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.loopexit.unr-lcssa: ; preds = %.lr.ph.i61
  %lcmp.mod85.not = icmp eq i32 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52, label %.lr.ph.i61.epil.preheader

.lr.ph.i61.epil.preheader:                        ; preds = %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.loopexit.unr-lcssa, %.lr.ph.i61.preheader
  %lcmp.mod86 = trunc i32 %i.dg to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.dt = load i32, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.az, align 8, !tbaa !17
  %i.dv = load ptr, ptr %5, align 8, !tbaa !18
  %i.dw = sext i32 %i.dt to i64
  %i.dx = getelementptr inbounds i8, ptr %i.dv, i64 %i.dw
  store i8 48, ptr %i.dx, align 1, !tbaa !19
  br label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52

_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52: ; preds = %.lr.ph.i61.epil.preheader, %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.loopexit.unr-lcssa, %bb.g, %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56, %bb.b
  %i.dy = icmp eq i32 %4, 0
  br i1 %i.dy, label %bb.h, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread

bb.h:                                             ; preds = %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52
  %i.dz = load i32, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.ea = and i32 %i.dz, 2
  %.not47 = icmp eq i32 %i.ea, 0
  br i1 %.not47, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !17 ; 2 uses
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 8, !tbaa !17
  %i.ee = load ptr, ptr %5, align 8, !tbaa !18
  %i.ef = sext i32 %i.ec to i64
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 %i.ef
  store i8 46, ptr %i.eg, align 1, !tbaa !19
  %.pre = load i32, ptr %0, align 8, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.eh = phi i32 [ %.pre, %bb.i ], [ %i.dz, %bb.h ]
  %i.ei = and i32 %i.eh, 4
  %.not48 = icmp eq i32 %i.ei, 0
  br i1 %.not48, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !17 ; 2 uses
  %i.el = add nsw i32 %i.ek, 1
  store i32 %i.el, ptr %i.ej, align 8, !tbaa !17
  %i.em = load ptr, ptr %5, align 8, !tbaa !18
  %i.en = sext i32 %i.ek to i64
  %i.eo = getelementptr inbounds i8, ptr %i.em, i64 %i.en
  store i8 48, ptr %i.eo, align 1, !tbaa !19
  br label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread

_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit.unr-lcssa: ; preds = %.lr.ph.i49
  %lcmp.mod95.not = icmp eq i32 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread, label %.lr.ph.i49.epil.preheader

.lr.ph.i49.epil.preheader:                        ; preds = %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit.unr-lcssa, %.lr.ph.i49.preheader
  %lcmp.mod96 = trunc i32 %i.am to i1
  tail call void @llvm.assume(i1 %lcmp.mod96)
  %i.ep = load i32, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.eq = add nsw i32 %i.ep, 1
  store i32 %i.eq, ptr %i.b, align 8, !tbaa !17
  %i.er = load ptr, ptr %5, align 8, !tbaa !18
  %i.es = sext i32 %i.ep to i64
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 %i.es
  store i8 48, ptr %i.et, align 1, !tbaa !19
  br label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread

_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit77.unr-lcssa: ; preds = %bb.f
  %lcmp.mod80.not = icmp eq i32 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit77.unr-lcssa, %.lr.ph.i57
  %lcmp.mod81 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %i.eu = load i32, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.ev = add nsw i32 %i.eu, 1
  store i32 %i.ev, ptr %i.az, align 8, !tbaa !17
  %i.ew = load ptr, ptr %5, align 8, !tbaa !18
  %i.ex = sext i32 %i.eu to i64
  %i.ey = getelementptr inbounds i8, ptr %i.ew, i64 %i.ex
  store i8 48, ptr %i.ey, align 1, !tbaa !19
  br label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread

_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread: ; preds = %.epil.preheader, %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit77.unr-lcssa, %.lr.ph.i49.epil.preheader, %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit.unr-lcssa, %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit, %bb.j, %bb.k, %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK17double_conversion23DoubleToStringConverter20ToShortestIeeeNumberEdPNS_13StringBuilderENS0_8DtoaModeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, double noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca [18 x i8], align 16               ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.f = fcmp ueq double %i.e, +inf
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = fcmp oeq double %i.e, +inf
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNK17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS_13StringBuilderE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = fcmp olt double %1, 0.000000e+00
  br i1 %i.k, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !17   ; 2 uses
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 8, !tbaa !17
  %i.o = load ptr, ptr %2, align 8, !tbaa !18
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  store i8 45, ptr %i.q, align 1, !tbaa !19
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !12
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZNK17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS_13StringBuilderE.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.e, %bb.d
  %.sink23.i = phi ptr [ %i.i, %bb.d ], [ %.pre.i, %bb.e ], [ %i.s, %bb.f ] ; 2 uses
  %i.u = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink23.i) #13 ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !17
  %i.y = load ptr, ptr %2, align 8, !tbaa !18
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.z
  %sext.i8.i = shl i64 %i.u, 32
  %i.ab = ashr exact i64 %sext.i8.i, 32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull align 1 %.sink23.i, i64 %i.ab, i1 false)
  %i.ac = load i32, ptr %i.w, align 8, !tbaa !17
  %i.ad = add nsw i32 %i.ac, %i.v
  store i32 %i.ad, ptr %i.w, align 8, !tbaa !17
  br label %_ZNK17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS_13StringBuilderE.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @_ZN17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS0_8DtoaModeEiPciPbPiS4_(double noundef %1, i32 noundef %3, i32 noundef 0, ptr noundef nonnull %i.c, i32 noundef 18, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
  %i.ae = load i8, ptr %i.b, align 1, !tbaa !22, !range !29, !noundef !30
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = load i32, ptr %0, align 8, !tbaa !11
  %i.ah = and i32 %i.ag, 8
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = fcmp oeq double %1, 0.000000e+00
  %or.cond = select i1 %i.aj, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !17 ; 2 uses
  %i.am = add nsw i32 %i.al, 1
end_hunk_0
