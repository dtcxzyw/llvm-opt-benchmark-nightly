Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/nlsat_interval_set?download=true
inline.NumInlined: 194
inline.NumDeleted: 90
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN5nlsat20interval_set_manager6subsetEPKNS_12interval_setES3_:bb.a
  %i.o = add i32 %i.i, -1
  %i.p = zext i32 %i.o to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph136, %.loopexit
  %.047135 = phi i32 [ 0, %.lr.ph136 ], [ %.6, %.loopexit ] ; 3 uses
  %.051134 = phi i32 [ 0, %.lr.ph136 ], [ %.455, %.loopexit ] ; 5 uses
  %i.q = zext i32 %.051134 to i64
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.q ; 9 uses
  %i.s = zext i32 %.047135 to i64                 ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.s ; 3 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !25, !align !26
  %i.v = load i8, ptr %i.r, align 8
  %i.w = and i8 %i.v, 4
  %.not.i = icmp eq i8 %i.w, 0
  %i.x = load i8, ptr %i.t, align 8               ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = lshr i8 %i.x, 2
  %i.z = and i8 %i.y, 1
  %sext.i = add nsw i8 %i.z, -1
  %spec.select.i = sext i8 %sext.i to i32
  br label %_ZN5nlsat19compare_lower_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = and i8 %i.x, 4
  %.not15.i = icmp eq i8 %i.aa, 0
  br i1 %.not15.i, label %bb.i, label %.preheader

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ad = tail call noundef i32 @_ZN17algebraic_numbers7manager7compareERKNS_4anumES3_(ptr noundef nonnull align 8 dereferenceable(17) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.ac) ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %_ZN5nlsat19compare_lower_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit

bb.j:                                             ; preds = %bb.i
  %i.af = load i8, ptr %i.r, align 8
  %i.ag = and i8 %i.af, 1
  %i.ah = load i8, ptr %i.t, align 8
  %.not16.i = icmp eq i8 %i.ag, 0
  %i.ai = trunc i8 %i.ah to i1
  %or.cond159 = and i1 %.not16.i, %i.ai
  br i1 %or.cond159, label %.thread120, label %.preheader

_ZN5nlsat19compare_lower_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit: ; preds = %bb.g, %bb.i
  %.1.i = phi i32 [ %i.ad, %bb.i ], [ %spec.select.i, %bb.g ]
  %i.aj = icmp slt i32 %.1.i, 0
  br i1 %i.aj, label %.thread120, label %.preheader

.preheader:                                       ; preds = %bb.j, %bb.h, %_ZN5nlsat19compare_lower_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit
  %i.ak = icmp ult i32 %.047135, %i.i
  br i1 %i.ak, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %.thread99

.thread99:                                        ; preds = %.thread99.backedge, %.lr.ph
  %indvars.iv = phi i64 [ %i.s, %.lr.ph ], [ %indvars.iv.next, %.thread99.backedge ] ; 6 uses
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv ; 8 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !25, !align !26
  %i.ap = load i8, ptr %i.r, align 8
  %i.aq = and i8 %i.ap, 8
  %.not.i68 = icmp eq i8 %i.aq, 0
  %i.ar = load i8, ptr %i.an, align 8             ; 2 uses
  %i.as = and i8 %i.ar, 8
  %.not15.i69.not = icmp eq i8 %i.as, 0           ; 2 uses
  br i1 %.not.i68, label %bb.k, label %_ZN5nlsat19compare_upper_upperERN17algebraic_numbers7managerERKNS_8intervalES5_.exit

bb.k:                                             ; preds = %.thread99
  br i1 %.not15.i69.not, label %bb.l, label %.thread84

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.au = tail call noundef i32 @_ZN17algebraic_numbers7manager7compareERKNS_4anumES3_(ptr noundef nonnull align 8 dereferenceable(17) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.at) ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aw = load i8, ptr %i.r, align 8
  %i.ax = lshr i8 %i.aw, 1
  %i.ay = and i8 %i.ax, 1                         ; 2 uses
  %i.az = load i8, ptr %i.an, align 8             ; 2 uses
  %i.ba = lshr i8 %i.az, 1
  %i.bb = and i8 %i.ba, 1
  %i.bc = icmp eq i8 %i.ay, %i.bb
  br i1 %i.bc, label %_ZN5nlsat19compare_upper_upperERN17algebraic_numbers7managerERKNS_8intervalES5_.exit.thread80, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not16.i72 = icmp eq i8 %i.ay, 0
  br i1 %.not16.i72, label %.thread, label %.thread84

_ZN5nlsat19compare_upper_upperERN17algebraic_numbers7managerERKNS_8intervalES5_.exit: ; preds = %.thread99
  br i1 %.not15.i69.not, label %.thread, label %_ZN5nlsat19compare_upper_upperERN17algebraic_numbers7managerERKNS_8intervalES5_.exit.thread80

_ZN5nlsat19compare_upper_upperERN17algebraic_numbers7managerERKNS_8intervalES5_.exit.thread80: ; preds = %bb.m, %_ZN5nlsat19compare_upper_upperERN17algebraic_numbers7managerERKNS_8intervalES5_.exit
  %i.bd = trunc nuw i64 %indvars.iv to i32
  %i.be = add i32 %.051134, 1
  %i.bf = add nuw i32 %i.bd, 1
  br label %.loopexit

bb.o:                                             ; preds = %bb.l
  %i.bg = icmp slt i32 %i.au, 0
  br i1 %i.bg, label %.thread84, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.o
  %.pre = load i8, ptr %i.an, align 8
  br label %.thread

.thread84:                                        ; preds = %bb.k, %bb.n, %bb.o
  %i.bh = trunc nuw i64 %indvars.iv to i32
  %i.bi = add i32 %.051134, 1
  br label %.loopexit

.thread:                                          ; preds = %..thread_crit_edge, %bb.n, %_ZN5nlsat19compare_upper_upperERN17algebraic_numbers7managerERKNS_8intervalES5_.exit
  %i.bj = phi i8 [ %.pre, %..thread_crit_edge ], [ %i.az, %bb.n ], [ %i.ar, %_ZN5nlsat19compare_upper_upperERN17algebraic_numbers7managerERKNS_8intervalES5_.exit ]
  %i.bk = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !25, !align !26
  %i.bl = and i8 %i.bj, 8
  %.not.i74 = icmp eq i8 %i.bl, 0
  br i1 %.not.i74, label %bb.p, label %_ZN5nlsat19compare_upper_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit.thread

bb.p:                                             ; preds = %.thread
  %i.bm = load i8, ptr %i.r, align 8
  %i.bn = and i8 %i.bm, 4
  %.not9.i = icmp eq i8 %i.bn, 0
  br i1 %.not9.i, label %bb.q, label %_ZN5nlsat19compare_upper_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.bp = tail call noundef i32 @_ZN17algebraic_numbers7manager7compareERKNS_4anumES3_(ptr noundef nonnull align 8 dereferenceable(17) %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.am) ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.r, label %_ZN5nlsat19compare_upper_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit

bb.r:                                             ; preds = %bb.q
  %i.br = load i8, ptr %i.an, align 8
  %i.bs = and i8 %i.br, 2
  %.not10.i = icmp eq i8 %i.bs, 0
  br i1 %.not10.i, label %bb.s, label %_ZN5nlsat19compare_upper_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit.thread89

bb.s:                                             ; preds = %bb.r
  %i.bt = load i8, ptr %i.r, align 8
  %i.bu = and i8 %i.bt, 1
  %.not11.i = icmp eq i8 %i.bu, 0
  br i1 %.not11.i, label %_ZN5nlsat19compare_upper_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit.thread, label %_ZN5nlsat19compare_upper_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit.thread89

_ZN5nlsat19compare_upper_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit: ; preds = %bb.q
  %i.bv = icmp slt i32 %i.bp, 0
  br i1 %i.bv, label %_ZN5nlsat19compare_upper_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit.thread89, label %_ZN5nlsat19compare_upper_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit.thread

_ZN5nlsat19compare_upper_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit.thread89: ; preds = %bb.s, %bb.r, %_ZN5nlsat19compare_upper_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit
  %i.bw = trunc nuw i64 %indvars.iv to i32
  %i.bx = add nuw i32 %i.bw, 1
  br label %.loopexit

_ZN5nlsat19compare_upper_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit.thread: ; preds = %bb.s, %bb.p, %.thread, %_ZN5nlsat19compare_upper_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit
  %i.by = icmp eq i64 %indvars.iv, %i.p
  br i1 %i.by, label %.thread120, label %bb.t

bb.t:                                             ; preds = %_ZN5nlsat19compare_upper_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv.next ; 2 uses
  %i.ca = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !25, !align !26
  %i.cb = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cd = tail call noundef i32 @_ZN17algebraic_numbers7manager7compareERKNS_4anumES3_(ptr noundef nonnull align 8 dereferenceable(17) %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 8 dereferenceable(8) %i.cc)
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.u, label %.thread120

bb.u:                                             ; preds = %bb.t
  %i.cf = load i8, ptr %i.an, align 8
  %i.cg = and i8 %i.cf, 2
  %.not.i76 = icmp eq i8 %i.cg, 0
  br i1 %.not.i76, label %.thread99.backedge, label %_ZN5nlsat8adjacentERN17algebraic_numbers7managerERKNS_8intervalES5_.exit

_ZN5nlsat8adjacentERN17algebraic_numbers7managerERKNS_8intervalES5_.exit: ; preds = %bb.u
  %i.ch = load i8, ptr %i.bz, align 8
  %.fr125 = freeze i8 %i.ch
  %i.ci = and i8 %.fr125, 1
  %.not6.i = icmp eq i8 %i.ci, 0
  br i1 %.not6.i, label %.thread99.backedge, label %.thread120

.thread99.backedge:                               ; preds = %_ZN5nlsat8adjacentERN17algebraic_numbers7managerERKNS_8intervalES5_.exit, %bb.u
  br label %.thread99

.loopexit:                                        ; preds = %.preheader, %_ZN5nlsat19compare_upper_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit.thread89, %.thread84, %_ZN5nlsat19compare_upper_upperERN17algebraic_numbers7managerERKNS_8intervalES5_.exit.thread80
  %.455 = phi i32 [ %.051134, %_ZN5nlsat19compare_upper_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit.thread89 ], [ %i.bi, %.thread84 ], [ %i.be, %_ZN5nlsat19compare_upper_upperERN17algebraic_numbers7managerERKNS_8intervalES5_.exit.thread80 ], [ %.051134, %.preheader ] ; 3 uses
  %.6 = phi i32 [ %i.bx, %_ZN5nlsat19compare_upper_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit.thread89 ], [ %i.bh, %.thread84 ], [ %i.bf, %_ZN5nlsat19compare_upper_upperERN17algebraic_numbers7managerERKNS_8intervalES5_.exit.thread80 ], [ %.047135, %.preheader ] ; 2 uses
  %i.cj = icmp ult i32 %.455, %i.h
  %i.ck = icmp ult i32 %.6, %i.i
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %i.cl, label %bb.f, label %._crit_edge, !llvm.loop !66

._crit_edge:                                      ; preds = %.loopexit, %bb.e
  %.051.lcssa = phi i32 [ 0, %bb.e ], [ %.455, %.loopexit ]
  %i.cm = icmp eq i32 %.051.lcssa, %i.h
  br label %.thread120

.thread120:                                       ; preds = %_ZN5nlsat19compare_lower_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit, %bb.j, %_ZN5nlsat8adjacentERN17algebraic_numbers7managerERKNS_8intervalES5_.exit, %bb.t, %_ZN5nlsat19compare_upper_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit.thread, %._crit_edge, %bb.d, %bb.c, %bb.b, %bb.a
  %.8 = phi i1 [ false, %bb.d ], [ true, %bb.a ], [ %i.cm, %._crit_edge ], [ false, %bb.b ], [ true, %bb.c ], [ false, %_ZN5nlsat8adjacentERN17algebraic_numbers7managerERKNS_8intervalES5_.exit ], [ false, %_ZN5nlsat19compare_upper_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit.thread ], [ false, %bb.t ], [ false, %bb.j ], [ false, %_ZN5nlsat19compare_lower_lowerERN17algebraic_numbers7managerERKNS_8intervalES5_.exit ]
  ret i1 %.8
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN5nlsat20interval_set_manager6set_eqEPKNS_12interval_setES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, %2
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %.not = icmp sgt i32 %i.e, -1
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not17 = icmp sgt i32 %i.g, -1
  %or.cond21 = select i1 %.not, i1 %.not17, i1 false
  br i1 %or.cond21, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.unshifted = xor i32 %i.g, %i.e
  %i.h = icmp sgt i32 %.unshifted, -1
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef zeroext i1 @_ZN5nlsat20interval_set_manager6subsetEPKNS_12interval_setES3_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noundef zeroext i1 @_ZN5nlsat20interval_set_manager6subsetEPKNS_12interval_setES3_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull %2, ptr noundef nonnull %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %._crit_edge, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ %i.h, %._crit_edge ], [ false, %bb.d ], [ %i.j, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN5nlsat20interval_set_manager2eqEPKNS_12interval_setES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, %2
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.e = load i32, ptr %2, align 8, !tbaa !21
  %.not = icmp eq i32 %i.d, %i.e
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = icmp eq i32 %i.d, 0
  br i1 %i.g, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.e

bb.d:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr %1, align 8, !tbaa !21
  %i.j = zext i32 %i.i to i64
  %.not52 = icmp samesign ult i64 %indvars.iv.next, %i.j
  br i1 %.not52, label %bb.e, label %.loopexit, !llvm.loop !67

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %indvars.iv ; 4 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %indvars.iv ; 4 uses
  %i.m = load i8, ptr %i.k, align 8
  %i.n = load i8, ptr %i.l, align 8
  %i.o = xor i8 %i.n, %i.m
  %i.p = and i8 %i.o, 15
  %or.cond42 = icmp eq i8 %i.p, 0
  br i1 %or.cond42, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.s = load i32, ptr %i.q, align 4, !tbaa !10
  %i.t = load i32, ptr %i.r, align 4, !tbaa !10
  %.not43 = icmp eq i32 %i.s, %i.t
  br i1 %.not43, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !25, !align !26
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.x = tail call noundef zeroext i1 @_ZN17algebraic_numbers7manager2eqERKNS_4anumES3_(ptr noundef nonnull align 8 dereferenceable(17) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  br i1 %i.x, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.g
  %i.y = load ptr, ptr %0, align 8, !tbaa !27, !nonnull !25, !align !26
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ab = tail call noundef zeroext i1 @_ZN17algebraic_numbers7manager2eqERKNS_4anumES3_(ptr noundef nonnull align 8 dereferenceable(17) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  br i1 %i.ab, label %bb.d, label %.loopexit

.loopexit:                                        ; preds = %.critedge, %bb.g, %bb.f, %bb.e, %bb.d, %.preheader, %bb.c, %bb.b
  %.3 = phi i1 [ %i.c, %bb.b ], [ false, %bb.c ], [ true, %.preheader ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ false, %.critedge ], [ true, %bb.d ]
  ret i1 %.3
}

declare noundef zeroext i1 @_ZN17algebraic_numbers7manager2eqERKNS_4anumES3_(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5nlsat20interval_set_manager18get_justificationsEPKNS_12interval_setER7svectorIN3sat7literalEjER10ptr_vectorINS_6clauseEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !41     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -4
  store i32 0, ptr %i.b, align 4, !tbaa !29
  br label %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit

_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit:     ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %.not.i25 = icmp eq ptr %i.c, null
  br i1 %.not.i25, label %_ZN6vectorIPN5nlsat6clauseELb0EjE5resetEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4
  store i32 0, ptr %i.d, align 4, !tbaa !29
  br label %_ZN6vectorIPN5nlsat6clauseELb0EjE5resetEv.exit

_ZN6vectorIPN5nlsat6clauseELb0EjE5resetEv.exit:   ; preds = %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, %bb.c
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %._crit_edge, label %_ZNK5nlsat20interval_set_manager13num_intervalsEPKNS_12interval_setE.exit

_ZNK5nlsat20interval_set_manager13num_intervalsEPKNS_12interval_setE.exit: ; preds = %_ZN6vectorIPN5nlsat6clauseELb0EjE5resetEv.exit
  %i.f = load i32, ptr %1, align 8, !tbaa !21     ; 3 uses
  %.not49 = icmp eq i32 %i.f, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5nlsat20interval_set_manager13num_intervalsEPKNS_12interval_setE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %wide.trip.count = zext i32 %i.f to i64         ; 3 uses
  br label %bb.d

.lr.ph48:                                         ; preds = %bb.u
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.j = icmp ult i32 %i.f, 4
  br i1 %i.j, label %.epil.preheader, label %.lr.ph48.new

.lr.ph48.new:                                     ; preds = %.lr.ph48
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.w

bb.d:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !29   ; 6 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !17   ; 6 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.i

_ZNK6vectorIcLb0EjE4sizeEv.exit.i:                ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !29   ; 3 uses
  %.not.i26 = icmp ult i32 %i.m, %i.q
  br i1 %.not.i26, label %_ZNK6vectorIcLb0EjE3getEjRKc.exit, label %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIcLb0EjE3getEjRKc.exit:                ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i
  %i.r = zext i32 %i.m to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.r
  %.0.i27.sroa.speculate.load. = load i8, ptr %i.s, align 1, !tbaa !46
  %.not = icmp eq i8 %.0.i27.sroa.speculate.load., 0
  br i1 %.not, label %_ZN6vectorIcLb0EjE4setxEjRKcS2_.exit, label %bb.u

_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i:              ; preds = %bb.d
  %i.t = add i32 %i.m, 1                          ; 2 uses
  %.not.not.i.i = icmp ne i32 %i.t, 0
  tail call void @llvm.assume(i1 %.not.not.i.i)
  br label %thread-pre-split.i.i.preheader

_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i:       ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i
  %i.u = add i32 %i.m, 1                          ; 3 uses
  %.not16.i.i = icmp ugt i32 %i.u, %i.q
  br i1 %.not16.i.i, label %thread-pre-split.i.i.preheader, label %bb.e

thread-pre-split.i.i.preheader:                   ; preds = %_ZNK6vectorIcLb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIcLb0EjE4sizeEv.exit.thread.i.i
end_hunk_0
