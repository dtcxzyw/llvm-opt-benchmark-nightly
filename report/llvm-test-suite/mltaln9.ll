inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 95
begin_hunk_0_@getgapfreq_zure:bb.a
; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @getgapfreq(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #9 {
bb.a:
  %.not21 = icmp slt i32 %4, 0
  br i1 %.not21, label %._crit_edge27.split, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = add nuw i32 %4, 1
  %i.b = zext i32 %i.a to i64
  %i.c = shl nuw nsw i64 %i.b, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %0, i8 0, i64 %i.c, i1 false), !tbaa !21
  %i.d = icmp sgt i32 %1, 0
  %i.e = icmp ne i32 %4, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.lr.ph24.preheader, label %._crit_edge27.split

.lr.ph24.preheader:                               ; preds = %.preheader
  %wide.trip.count33 = zext nneg i32 %1 to i64
  %wide.trip.count = zext nneg i32 %4 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.f = icmp eq i32 %4, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod37 = trunc i32 %4 to i1
  br label %.lr.ph24

.lr.ph24:                                         ; preds = %.lr.ph24.preheader, %._crit_edge
  %indvars.iv30 = phi i64 [ 0, %.lr.ph24.preheader ], [ %indvars.iv.next31, %._crit_edge ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv30
  %i.h = load double, ptr %i.g, align 8, !tbaa !24
  %i.i = fptrunc double %i.h to float             ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv30
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 3 uses
  br i1 %i.f, label %.epil.preheader, label %.lr.ph24.new

.lr.ph24.new:                                     ; preds = %.lr.ph24, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.e ], [ 0, %.lr.ph24 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.e ], [ 0, %.lr.ph24 ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8
  %i.n = icmp eq i8 %i.m, 45
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph24.new
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !21
  %i.q = fadd float %i.p, %i.i
  store float %i.q, ptr %i.o, align 4, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph24.new, %bb.b
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8
  %i.t = icmp eq i8 %i.s, 45
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !21
  %i.w = fadd float %i.v, %i.i
  store float %i.w, ptr %i.u, align 4, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph24.new, !llvm.loop !520

._crit_edge.unr-lcssa:                            ; preds = %bb.e
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph24
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph24 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.epil.init
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %i.z = icmp eq i8 %i.y, 45
  br i1 %i.z, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %.epil.preheader
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !21
  %i.ac = fadd float %i.ab, %i.i
  store float %i.ac, ptr %i.aa, align 4, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.f, %._crit_edge.unr-lcssa
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %._crit_edge27.split, label %.lr.ph24, !llvm.loop !521

._crit_edge27.split:                              ; preds = %._crit_edge, %bb.a, %.preheader
  %i.ad = sext i32 %4 to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ad
  store float 0.000000e+00, ptr %i.ae, align 4, !tbaa !21
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @st_getGapPattern(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #12 {
bb.a:
  %.not130 = icmp eq i32 %4, -1
  br i1 %.not130, label %.preheader128.thread, label %.lr.ph

.preheader128:                                    ; preds = %bb.c
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph144, label %.preheader

.preheader128.thread:                             ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph144.split.us, label %._crit_edge154

.lr.ph144:                                        ; preds = %.preheader128
  %.not113135 = icmp slt i32 %4, 0
  br i1 %.not113135, label %.lr.ph144.split.us, label %.lr.ph142.preheader

.lr.ph142.preheader:                              ; preds = %.lr.ph144
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph142

.lr.ph144.split.us:                               ; preds = %.preheader128.thread, %.lr.ph144
  store ptr null, ptr %0, align 8, !tbaa !522
  br label %._crit_edge154

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.c = phi i32 [ %i.f, %bb.c ], [ %4, %bb.a ]   ; 2 uses
  %.096131 = phi ptr [ %i.e, %bb.c ], [ %0, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.096131, align 8, !tbaa !522 ; 2 uses
  %.not118 = icmp eq ptr %i.d, null
  br i1 %.not118, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @free(ptr noundef nonnull %i.d) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.096131, i64 8
  store ptr null, ptr %.096131, align 8, !tbaa !522
  %i.f = add nsw i32 %i.c, -1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.preheader128, label %.lr.ph, !llvm.loop !524

.preheader:                                       ; preds = %._crit_edge, %.preheader128
  %.not110151 = icmp slt i32 %4, 0
  br i1 %.not110151, label %._crit_edge154, label %.lr.ph153.preheader

.lr.ph153.preheader:                              ; preds = %.preheader
  %i.g = add nuw i32 %4, 1
  %wide.trip.count170 = zext i32 %i.g to i64
  br label %.lr.ph153

.lr.ph142:                                        ; preds = %.lr.ph142.preheader, %._crit_edge
  %indvars.iv160 = phi i64 [ 0, %.lr.ph142.preheader ], [ %indvars.iv.next161, %._crit_edge ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv160
  %i.i = load double, ptr %i.h, align 8, !tbaa !24
  %i.j = fptrunc double %i.i to float
  store ptr null, ptr %0, align 8, !tbaa !522
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv160
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph142, %bb.k
  %.0140 = phi i32 [ 0, %.lr.ph142 ], [ %.1, %bb.k ] ; 5 uses
  %.094139 = phi ptr [ %i.l, %.lr.ph142 ], [ %.195120, %bb.k ] ; 3 uses
  %.197138 = phi ptr [ %0, %.lr.ph142 ], [ %i.as, %bb.k ] ; 3 uses
  %.199137 = phi i32 [ 0, %.lr.ph142 ], [ %i.at, %bb.k ] ; 3 uses
  %.0101136 = phi i1 [ false, %.lr.ph142 ], [ %i.ar, %bb.k ]
  %.not114 = icmp eq i32 %.199137, %4
  br i1 %.not114, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.094139, i64 1 ; 2 uses
  %i.n = load i8, ptr %.094139, align 1, !tbaa !8
  %i.o = icmp eq i8 %i.n, 45
  br i1 %i.o, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %.0140, 1
  br label %bb.k

.thread:                                          ; preds = %bb.d, %bb.e
  %.195121 = phi ptr [ %i.m, %bb.e ], [ %.094139, %bb.d ] ; 2 uses
  %i.q = icmp ne i32 %.0140, 0
  %or.cond = select i1 %.0101136, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.thread
  %i.r = load ptr, ptr %.197138, align 8, !tbaa !522 ; 6 uses
  %.not115 = icmp eq ptr %i.r, null
  br i1 %.not115, label %.loopexit, label %.preheader126

.preheader126:                                    ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !525  ; 2 uses
  %.not116132 = icmp eq i32 %i.t, -1
  br i1 %.not116132, label %.loopexit, label %.lr.ph134

.lr.ph134:                                        ; preds = %.preheader126, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 1, %.preheader126 ] ; 3 uses
  %i.u = phi i32 [ %i.x, %bb.h ], [ %i.t, %.preheader126 ]
  %i.v = icmp eq i32 %i.u, %.0140
  br i1 %i.v, label %.loopexit127.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph134
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next
  %i.x = load i32, ptr %i.w, align 4, !tbaa !525  ; 2 uses
  %.not116 = icmp eq i32 %i.x, -1
  br i1 %.not116, label %.loopexit.loopexit, label %.lr.ph134, !llvm.loop !527

.loopexit.loopexit:                               ; preds = %bb.h
  %i.y = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader126, %bb.g
  %.1105.ph = phi i32 [ 1, %bb.g ], [ 1, %.preheader126 ], [ %i.y, %.loopexit.loopexit ] ; 2 uses
  %i.z = add nuw nsw i32 %.1105.ph, 3
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = tail call ptr @realloc(ptr noundef %i.r, i64 noundef %i.ab) #36 ; 4 uses
  store ptr %i.ac, ptr %.197138, align 8, !tbaa !522
  %.not117 = icmp eq ptr %i.ac, null
  br i1 %.not117, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ae = tail call i64 @fwrite(ptr nonnull @.str.34, i64 29, i64 1, ptr %i.ad) #30 ; 0 uses
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ag = tail call i64 @fwrite(ptr nonnull @.str.35, i64 53, i64 1, ptr %i.af) #30 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.j:                                             ; preds = %.loopexit
  %i.ah = zext nneg i32 %.1105.ph to i64          ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store float 0.000000e+00, ptr %i.aj, align 4, !tbaa !528
  store i32 %.0140, ptr %i.ai, align 4, !tbaa !525
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 -1, ptr %i.ak, align 4, !tbaa !525
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store float 0.000000e+00, ptr %i.al, align 4, !tbaa !528
  br label %.loopexit127

.loopexit127.loopexit:                            ; preds = %.lr.ph134
  %.phi.trans.insert172.a = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %.phi.trans.insert173 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert172.a, i64 4
  %.pre = load float, ptr %.phi.trans.insert173, align 4, !tbaa !528
  br label %.loopexit127

.loopexit127:                                     ; preds = %.loopexit127.loopexit, %bb.j
  %.pre-phi = phi i64 [ %indvars.iv, %.loopexit127.loopexit ], [ %i.ah, %bb.j ]
  %i.am = phi float [ %.pre, %.loopexit127.loopexit ], [ 0.000000e+00, %bb.j ]
  %i.an = phi ptr [ %i.r, %.loopexit127.loopexit ], [ %i.ac, %bb.j ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.pre-phi
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = fadd float %i.am, %i.j
  store float %i.aq, ptr %i.ap, align 4, !tbaa !528
  br label %bb.k

bb.k:                                             ; preds = %.thread, %.loopexit127, %bb.f
  %i.ar = phi i1 [ true, %bb.f ], [ false, %.loopexit127 ], [ false, %.thread ]
  %.195120 = phi ptr [ %i.m, %bb.f ], [ %.195121, %.loopexit127 ], [ %.195121, %.thread ]
  %.1 = phi i32 [ %i.p, %bb.f ], [ 0, %.loopexit127 ], [ %.0140, %.thread ]
  %i.as = getelementptr inbounds nuw i8, ptr %.197138, i64 8
  %i.at = add nuw i32 %.199137, 1
  %exitcond.not = icmp eq i32 %.199137, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !529

._crit_edge:                                      ; preds = %bb.k
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %exitcond163.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count
  br i1 %exitcond163.not, label %.preheader, label %.lr.ph142, !llvm.loop !530

.lr.ph153:                                        ; preds = %.lr.ph153.preheader, %bb.n
  %indvars.iv167 = phi i64 [ 0, %.lr.ph153.preheader ], [ %indvars.iv.next168, %bb.n ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv167 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !522 ; 5 uses
  %.not111 = icmp eq ptr %i.av, null
  br i1 %.not111, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph153
  store i32 0, ptr %i.av, align 4, !tbaa !525
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  store float 0.000000e+00, ptr %i.aw, align 4, !tbaa !528
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !525
  %.not112145 = icmp eq i32 %i.ay, -1
  br i1 %.not112145, label %._crit_edge149, label %.lr.ph148

.lr.ph148:                                        ; preds = %bb.l, %.lr.ph148
  %indvars.iv164 = phi i64 [ %indvars.iv.next165, %.lr.ph148 ], [ 1, %bb.l ]
  %i.az = phi float [ %i.bd, %.lr.ph148 ], [ 0.000000e+00, %bb.l ]
  %i.ba = phi ptr [ %i.be, %.lr.ph148 ], [ %i.ax, %bb.l ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !528
  %i.bd = fadd float %i.bc, %i.az                 ; 3 uses
  store float %i.bd, ptr %i.aw, align 4, !tbaa !528
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next165 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !525
  %.not112 = icmp eq i32 %i.bf, -1
  br i1 %.not112, label %._crit_edge149, label %.lr.ph148, !llvm.loop !531

._crit_edge149:                                   ; preds = %.lr.ph148, %bb.l
  %i.bg = phi float [ 0.000000e+00, %bb.l ], [ %i.bd, %.lr.ph148 ]
  %.lcssa = phi ptr [ %i.ax, %bb.l ], [ %i.be, %.lr.ph148 ] ; 3 uses
  %i.bh = fsub float 1.000000e+00, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.lcssa, i64 4
  store float %i.bh, ptr %i.bi, align 4, !tbaa !528
  store i32 0, ptr %.lcssa, align 4, !tbaa !525
  %i.bj = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  store i32 -1, ptr %i.bj, align 4, !tbaa !525
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph153
  %i.bk = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 3, i64 noundef 8) #37 ; 6 uses
  store ptr %i.bk, ptr %i.au, align 8, !tbaa !522
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store float 0.000000e+00, ptr %i.bl, align 4, !tbaa !528
  store i32 0, ptr %i.bk, align 4, !tbaa !525
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store float 1.000000e+00, ptr %i.bm, align 4, !tbaa !528
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 0, ptr %i.bn, align 4, !tbaa !525
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i32 -1, ptr %i.bo, align 4, !tbaa !525
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge149, %bb.m
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count170
  br i1 %exitcond171.not, label %._crit_edge154, label %.lr.ph153, !llvm.loop !532

._crit_edge154:                                   ; preds = %bb.n, %.lr.ph144.split.us, %.preheader128.thread, %.preheader
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local float @naiveRpairscore(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  %i.b = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.us.preheader, label %._crit_edge153

.preheader.us.preheader:                          ; preds = %bb.a
  %wide.trip.count160 = zext nneg i32 %0 to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.c = sitofp i32 %6 to double
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv157 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next158, %._crit_edge.us ] ; 3 uses
  %.085151.us = phi float [ 0.000000e+00, %.preheader.us.preheader ], [ %i.ai, %._crit_edge.us ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv157
  %i.e = load double, ptr %i.d, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv157
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12   ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8     ; 3 uses
  %i.i = icmp eq i8 %i.h, 45
  %i.j = sext i8 %i.h to i64
  %i.k = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.j
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.i
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.186150.us = phi float [ %.085151.us, %.preheader.us ], [ %i.ai, %bb.i ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.m = load double, ptr %i.l, align 8, !tbaa !24
  %i.n = fmul double %i.e, %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12   ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8     ; 3 uses
  %.not.us = icmp eq i8 %i.q, 45
  %i.r = xor i1 %.not.us, %i.i
  %i.s = sext i8 %i.q to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %i.v = sitofp i32 %i.u to float
  %i.w = fpext float %i.v to double
  %i.x = select i1 %i.r, double %i.c, double 0.000000e+00
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double 5.000000e-01, double %i.w)
  %i.z = fadd double %i.y, 0.000000e+00
  br label %bb.c

bb.c:                                             ; preds = %.thread136.us, %bb.b
  %.pr.us = phi i8 [ %i.q, %bb.b ], [ %i.an, %.thread136.us ] ; 2 uses
  %i.aa = phi i8 [ %i.h, %bb.b ], [ %i.ao, %.thread136.us ]
  %.084.in.us = phi double [ %i.z, %bb.b ], [ %i.ay, %.thread136.us ]
  %.pn.us = phi ptr [ %i.g, %bb.b ], [ %.081.us, %.thread136.us ]
  %.pn105.us = phi ptr [ %i.p, %bb.b ], [ %.080.us, %.thread136.us ]
  %.080.us = getelementptr i8, ptr %.pn105.us, i64 1 ; 3 uses
  %.081.us = getelementptr i8, ptr %.pn.us, i64 1 ; 3 uses
  %.084.us = fptrunc double %.084.in.us to float  ; 2 uses
  switch i8 %i.aa, label %bb.j [
    i8 0, label %bb.i
    i8 45, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp eq i8 %.pr.us, 45
  %.pre162 = load i8, ptr %.081.us, align 1, !tbaa !8 ; 3 uses
  %i.ac = icmp eq i8 %.pre162, 45                 ; 2 uses
  %i.ad = load i8, ptr %.080.us, align 1, !tbaa !8 ; 5 uses
  %.not95.us = icmp eq i8 %i.ad, 45               ; 4 uses
  br i1 %i.ab, label %bb.e, label %.thread140.us

bb.e:                                             ; preds = %bb.d
  br i1 %i.ac, label %.thread122.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %spec.select110.us = select i1 %.not95.us, i32 %6, i32 0
  br label %.thread136.us

.thread122.us:                                    ; preds = %bb.e
  %spec.select109.us = select i1 %.not95.us, i32 0, i32 %6
  br label %.thread136.us

.thread140.us:                                    ; preds = %bb.d
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread140.us
  %i.ae = zext i1 %.not95.us to i32
  %spec.select115.us = shl nsw i32 %6, %i.ae
  br label %.thread136.us

bb.h:                                             ; preds = %.thread140.us
  %spec.select116.us = select i1 %.not95.us, i32 %6, i32 0
  br label %.thread136.us

bb.i:                                             ; preds = %bb.c
  %i.af = fpext float %.084.us to double
  %i.ag = fpext float %.186150.us to double
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.n, double %i.af, double %i.ag)
  %i.ai = fptrunc double %i.ah to float           ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !533

bb.j:                                             ; preds = %bb.c
  %.not92.us = icmp eq i8 %.pr.us, 45
  %.pre163 = load i8, ptr %.081.us, align 1, !tbaa !8 ; 3 uses
  %i.aj = icmp eq i8 %.pre163, 45                 ; 2 uses
  %i.ak = load i8, ptr %.080.us, align 1, !tbaa !8 ; 7 uses
  br i1 %.not92.us, label %.thread127.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not93.us = icmp eq i8 %i.ak, 45               ; 2 uses
  br i1 %i.aj, label %.thread118.us, label %bb.l

bb.l:                                             ; preds = %bb.k
end_hunk_0
