Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/AbcGlucose2?download=true
inline.NumInlined: 637
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z20Gia_ManQuantLoadCnf2P10Gia_Man_t_P10Vec_Int_t_PPv:bb.a
  br label %bmcg2_sat_solver_set_nvars.exit73

bmcg2_sat_solver_set_nvars.exit73:                ; preds = %bmcg2_sat_solver_set_nvars.exit73.loopexit, %bb.d, %bmcg2_sat_solver_set_nvars.exit
  %.val82 = phi i32 [ %.val82.pre, %bmcg2_sat_solver_set_nvars.exit73.loopexit ], [ %.val82.pre86, %bb.d ], [ %.val82.pre86, %bmcg2_sat_solver_set_nvars.exit ]
  %i.z = getelementptr i8, ptr %1, i64 8
  %i.aa = icmp sgt i32 %.val82, 0
  br i1 %i.aa, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bmcg2_sat_solver_set_nvars.exit73
  %i.ab = getelementptr i8, ptr %0, i64 32
  %i.ac = getelementptr i8, ptr %0, i64 408       ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %.val55 = load ptr, ptr %i.z, align 8, !tbaa !133
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val55, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !16 ; 3 uses
  %.val56 = load ptr, ptr %i.ab, align 8, !tbaa !142 ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds [12 x i8], ptr %.val56, i64 %i.aj ; 2 uses
  %.not48 = icmp eq ptr %.val56, null
  br i1 %.not48, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val65 = load i64, ptr %i.ak, align 4          ; 6 uses
  %i.al = and i64 %.val65, 2147483648
  %.not.i = icmp ne i64 %i.al, 0
  %i.am = and i64 %.val65, 536870911
  %i.an = icmp eq i64 %i.am, 536870911
  %narrow.i.not = or i1 %.not.i, %i.an
  br i1 %narrow.i.not, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val64 = load ptr, ptr %i.ac, align 8, !tbaa !133 ; 3 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %.val64, i64 %i.aj
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !16
  %i.aq = trunc i64 %.val65 to i32                ; 2 uses
  %i.ar = and i32 %i.aq, 536870911
  %i.as = sub nsw i32 %i.ai, %i.ar
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %.val64, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !16
  %i.aw = lshr i64 %.val65, 32
  %i.ax = trunc nuw i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 536870911
  %i.az = sub nsw i32 %i.ai, %i.ay
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %.val64, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !16 ; 2 uses
  %i.bd = load ptr, ptr %2, align 8, !tbaa !139   ; 3 uses
  %i.be = lshr i32 %i.aq, 29
  %i.bf = and i32 %i.be, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.bg = shl nsw i32 %i.ap, 1                    ; 3 uses
  %i.bh = or disjoint i32 %i.bg, 1                ; 4 uses
  store i32 %i.bh, ptr %i.b, align 4, !tbaa !16
  %i.bi = shl nsw i32 %i.av, 1                    ; 2 uses
  %i.bj = or disjoint i32 %i.bi, %i.bf            ; 2 uses
  store i32 %i.bj, ptr %i.ad, align 4, !tbaa !16
  %i.bk = call noundef range(i32 0, 2) i32 @_Z25glucose2_solver_addclausePN6Gluco210SimpSolverEPii(ptr noundef %i.bd, ptr noundef nonnull readonly %i.b, i32 noundef 2)
  %.not17.i = icmp eq i32 %i.bk, 0
  br i1 %.not17.i, label %bmcg2_sat_solver_add_and.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = lshr i64 %.val65, 61
  %i.bm = trunc nuw nsw i64 %i.bl to i32
  %i.bn = and i32 %i.bm, 1
  store i32 %i.bh, ptr %i.b, align 4, !tbaa !16
  %i.bo = shl nsw i32 %i.bc, 1
  %i.bp = or disjoint i32 %i.bo, %i.bn            ; 2 uses
  store i32 %i.bp, ptr %i.ad, align 4, !tbaa !16
  %i.bq = call noundef range(i32 0, 2) i32 @_Z25glucose2_solver_addclausePN6Gluco210SimpSolverEPii(ptr noundef %i.bd, ptr noundef nonnull readonly %i.b, i32 noundef 2)
  %.not18.i = icmp eq i32 %i.bq, 0
  br i1 %.not18.i, label %bmcg2_sat_solver_add_and.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.bg, ptr %i.b, align 4, !tbaa !16
  %i.br = xor i32 %i.bj, 1
  store i32 %i.br, ptr %i.ad, align 4, !tbaa !16
  %i.bs = xor i32 %i.bp, 1
  store i32 %i.bs, ptr %i.ae, align 4, !tbaa !16
  %i.bt = call noundef range(i32 0, 2) i32 @_Z25glucose2_solver_addclausePN6Gluco210SimpSolverEPii(ptr noundef %i.bd, ptr noundef nonnull readonly %i.b, i32 noundef 3) ; 0 uses
  br label %bmcg2_sat_solver_add_and.exit

bmcg2_sat_solver_add_and.exit:                    ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.bu = load ptr, ptr %i.h, align 8, !tbaa !139 ; 4 uses
  %.not52 = icmp eq ptr %i.bu, null
  br i1 %.not52, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bmcg2_sat_solver_add_and.exit
  %.val59 = load i64, ptr %i.ak, align 4          ; 2 uses
  %i.bv = trunc i64 %.val59 to i32
  %i.bw = lshr i32 %i.bv, 29
  %i.bx = and i32 %i.bw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i32 %i.bh, ptr %i.a, align 4, !tbaa !16
  %i.by = or disjoint i32 %i.bx, %i.bi            ; 2 uses
  store i32 %i.by, ptr %i.af, align 4, !tbaa !16
  %i.bz = call noundef range(i32 0, 2) i32 @_Z25glucose2_solver_addclausePN6Gluco210SimpSolverEPii(ptr noundef nonnull %i.bu, ptr noundef nonnull readonly %i.a, i32 noundef 2)
  %.not17.i74 = icmp eq i32 %i.bz, 0
  br i1 %.not17.i74, label %bmcg2_sat_solver_add_and.exit79, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = lshr i64 %.val59, 61
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = and i32 %i.cb, 1
  store i32 %i.bh, ptr %i.a, align 4, !tbaa !16
  %i.cd = shl nsw i32 %i.bc, 1
  %i.ce = or disjoint i32 %i.cc, %i.cd            ; 2 uses
  store i32 %i.ce, ptr %i.af, align 4, !tbaa !16
  %i.cf = call noundef range(i32 0, 2) i32 @_Z25glucose2_solver_addclausePN6Gluco210SimpSolverEPii(ptr noundef nonnull %i.bu, ptr noundef nonnull readonly %i.a, i32 noundef 2)
  %.not18.i75 = icmp eq i32 %i.cf, 0
  br i1 %.not18.i75, label %bmcg2_sat_solver_add_and.exit79, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.bg, ptr %i.a, align 4, !tbaa !16
  %i.cg = xor i32 %i.by, 1
  store i32 %i.cg, ptr %i.af, align 4, !tbaa !16
  %i.ch = xor i32 %i.ce, 1
  store i32 %i.ch, ptr %i.ag, align 4, !tbaa !16
  %i.ci = call noundef range(i32 0, 2) i32 @_Z25glucose2_solver_addclausePN6Gluco210SimpSolverEPii(ptr noundef nonnull %i.bu, ptr noundef nonnull readonly %i.a, i32 noundef 3) ; 0 uses
  br label %bmcg2_sat_solver_add_and.exit79

bmcg2_sat_solver_add_and.exit79:                  ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.q

bb.m:                                             ; preds = %bb.f
  %i.cj = and i64 %.val65, 2305843005455597567
  %narrow.i80.not = icmp eq i64 %i.cj, 2305843005455597567
  br i1 %narrow.i80.not, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  %.val61 = load ptr, ptr %i.ac, align 8, !tbaa !133
  %i.ck = load i32, ptr %.val61, align 4, !tbaa !16
  %i.cl = shl nsw i32 %i.ck, 1
  %i.cm = or disjoint i32 %i.cl, 1
  store i32 %i.cm, ptr %i.c, align 4, !tbaa !16
  %i.cn = load ptr, ptr %2, align 8, !tbaa !139
  %i.co = call noundef range(i32 0, 2) i32 @_Z25glucose2_solver_addclausePN6Gluco210SimpSolverEPii(ptr noundef %i.cn, ptr noundef nonnull readonly %i.c, i32 noundef 1) ; 0 uses
  %i.cp = load ptr, ptr %i.h, align 8, !tbaa !139 ; 2 uses
  %.not51 = icmp eq ptr %i.cp, null
  br i1 %.not51, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = call noundef range(i32 0, 2) i32 @_Z25glucose2_solver_addclausePN6Gluco210SimpSolverEPii(ptr noundef nonnull %i.cp, ptr noundef nonnull readonly %i.c, i32 noundef 1) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  br label %bb.q

bb.q:                                             ; preds = %bmcg2_sat_solver_add_and.exit, %bmcg2_sat_solver_add_and.exit79, %bb.p, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.n, align 4, !tbaa !131
  %i.cr = sext i32 %.val to i64
  %i.cs = icmp slt i64 %indvars.iv.next, %i.cr
  br i1 %i.cs, label %bb.e, label %.critedge, !llvm.loop !210

.critedge:                                        ; preds = %bb.e, %bb.q, %bmcg2_sat_solver_set_nvars.exit73
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_Z17Gia_ManFactorSop2P10Gia_Man_t_P10Vec_Int_t_P10Vec_Str_t_i(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val35 = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.b = tail call ptr @Abc_SopSynthesizeOne(ptr noundef %.val35, i32 noundef 1) #29 ; 6 uses
  %i.c = getelementptr i8, ptr %i.b, i64 32       ; 4 uses
  %.val40 = load ptr, ptr %i.c, align 8, !tbaa !142
  %.val40.fr = freeze ptr %.val40                 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val40.fr, i64 8
  store i32 0, ptr %i.d, align 4, !tbaa !215
  %i.e = getelementptr i8, ptr %i.b, i64 16
  %.val41 = load i32, ptr %i.e, align 8, !tbaa !216
  %i.f = getelementptr i8, ptr %i.b, i64 64
  %.val42 = load ptr, ptr %i.f, align 8, !tbaa !140 ; 2 uses
  %i.g = getelementptr i8, ptr %.val42, i64 4
  %.val42.val = load i32, ptr %i.g, align 4, !tbaa !131
  %i.h = sub nsw i32 %.val42.val, %.val41         ; 3 uses
  %.not = icmp eq ptr %.val40.fr, null
  %i.i = icmp slt i32 %i.h, 1
  %or.cond47 = or i1 %.not, %i.i
  br i1 %or.cond47, label %.critedge.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %bb.a
  %i.j = getelementptr i8, ptr %.val42, i64 8
  %.val44.val = load ptr, ptr %i.j, align 8, !tbaa !133 ; 5 uses
  %i.k = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.k, align 8, !tbaa !133 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.l = icmp ult i32 %i.h, 4
  br i1 %i.l, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph.split

.critedge.preheader.loopexit.unr-lcssa:           ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.preheader, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %.critedge.preheader.loopexit.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.3, %.critedge.preheader.loopexit.unr-lcssa ]
  %lcmp.mod70 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod70)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %.lr.ph.split.epil, %.lr.ph.split.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.split.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.split.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.split.epil.preheader ], [ %epil.iter.next, %.lr.ph.split.epil ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val44.val, i64 %indvars.iv.epil
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [12 x i8], ptr %.val40.fr, i64 %i.o
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv.epil
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16
  %i.s = shl nsw i32 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 %i.s, ptr %i.t, align 4, !tbaa !215
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge.preheader, label %.lr.ph.split.epil, !llvm.loop !211

.critedge.preheader:                              ; preds = %.critedge.preheader.loopexit.unr-lcssa, %.lr.ph.split.epil, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !130  ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph50, label %.critedge2

.lr.ph50:                                         ; preds = %.critedge.preheader
  %.not34 = icmp eq i32 %3, 0
  %i.x = getelementptr i8, ptr %0, i64 32         ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1008
  br i1 %.not34, label %.lr.ph50.split.us, label %.lr.ph50.split

.lr.ph50.split.us:                                ; preds = %.lr.ph50, %.critedge.us
  %i.ac = phi i32 [ %i.fn, %.critedge.us ], [ %i.v, %.lr.ph50 ]
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %.critedge.us ], [ 0, %.lr.ph50 ] ; 2 uses
  %.val36.us = load ptr, ptr %i.c, align 8, !tbaa !142 ; 2 uses
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %.val36.us, i64 %indvars.iv57 ; 4 uses
  %.not32.us = icmp eq ptr %.val36.us, null
  br i1 %.not32.us, label %.critedge2, label %bb.b

bb.b:                                             ; preds = %.lr.ph50.split.us
  %.val39.us = load i64, ptr %i.ad, align 4       ; 5 uses
  %i.ae = and i64 %.val39.us, 2147483648
  %.not.i.us = icmp ne i64 %i.ae, 0
  %i.af = and i64 %.val39.us, 536870911           ; 2 uses
  %i.ag = icmp eq i64 %i.af, 536870911
  %narrow.i.not.us = or i1 %.not.i.us, %i.ag
  br i1 %narrow.i.not.us, label %.critedge.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = sub nsw i64 0, %i.af
  %i.ai = getelementptr inbounds [12 x i8], ptr %i.ad, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !215 ; 2 uses
  %i.al = trunc i64 %.val39.us to i32
  %i.am = lshr i32 %i.al, 29
  %i.an = and i32 %i.am, 1
  %i.ao = xor i32 %i.ak, %i.an                    ; 3 uses
  %i.ap = lshr i64 %.val39.us, 32
  %i.aq = and i64 %i.ap, 536870911
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr inbounds [12 x i8], ptr %i.ad, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !215 ; 3 uses
  %i.av = lshr i64 %.val39.us, 61
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = and i32 %i.aw, 1
  %i.ay = xor i32 %i.au, %i.ax                    ; 3 uses
  %i.az = tail call fastcc noundef ptr @_ZL16Gia_ManAppendObjP10Gia_Man_t_(ptr noundef %0) ; 20 uses
  %i.ba = icmp slt i32 %i.ao, %i.ay
  %.val76.i.us = load ptr, ptr %i.x, align 8, !tbaa !142
  %i.bb = ptrtoint ptr %i.az to i64               ; 5 uses
  %i.bc = ptrtoint ptr %.val76.i.us to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = sdiv exact i64 %i.bd, 12
  %i.bf = trunc i64 %i.be to i32
  %i.bg = lshr i32 %i.ak, 1
  %i.bh = sub i32 %i.bf, %i.bg
  %i.bi = load i64, ptr %i.az, align 4            ; 2 uses
  %i.bj = and i32 %i.bh, 536870911
  %i.bk = zext nneg i32 %i.bj to i64              ; 2 uses
  br i1 %i.ba, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bl = shl nuw nsw i64 %i.bk, 32
  %i.bm = and i64 %i.bi, -4611686014132420609
  %i.bn = or disjoint i64 %i.bl, %i.bm
  %i.bo = and i32 %i.ao, 1
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 61
  %i.br = or disjoint i64 %i.bn, %i.bq            ; 2 uses
  store i64 %i.br, ptr %i.az, align 4
  %.val73.i.us = load ptr, ptr %i.x, align 8, !tbaa !142
  %i.bs = ptrtoint ptr %.val73.i.us to i64
  %i.bt = sub i64 %i.bb, %i.bs
  %i.bu = sdiv exact i64 %i.bt, 12
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = lshr i32 %i.au, 1
  %i.bx = sub i32 %i.bv, %i.bw
  %i.by = and i32 %i.bx, 536870911
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = and i64 %i.br, -1073741824
  %i.cb = shl i32 %i.ay, 29
  %i.cc = and i32 %i.cb, 536870912
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = or disjoint i64 %i.ca, %i.cd
  %i.cf = or disjoint i64 %i.ce, %i.bz
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.cg = and i64 %i.bi, -1073741824
  %i.ch = shl i32 %i.ao, 29
  %i.ci = and i32 %i.ch, 536870912
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = or disjoint i64 %i.cg, %i.cj
  %i.cl = or disjoint i64 %i.ck, %i.bk            ; 2 uses
  store i64 %i.cl, ptr %i.az, align 4
  %.val75.i.us = load ptr, ptr %i.x, align 8, !tbaa !142
  %i.cm = ptrtoint ptr %.val75.i.us to i64
  %i.cn = sub i64 %i.bb, %i.cm
  %i.co = sdiv exact i64 %i.cn, 12
  %i.cp = trunc i64 %i.co to i32
  %i.cq = lshr i32 %i.au, 1
  %i.cr = sub i32 %i.cp, %i.cq
  %i.cs = and i32 %i.cr, 536870911
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 32
  %i.cv = and i64 %i.cl, -4611686014132420609
  %i.cw = or disjoint i64 %i.cu, %i.cv
  %i.cx = and i32 %i.ay, 1
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 61
  %i.da = or disjoint i64 %i.cw, %i.cz
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i.us = phi i64 [ %i.da, %bb.e ], [ %i.cf, %bb.d ] ; 2 uses
  store i64 %storemerge.i.us, ptr %i.az, align 4
  %i.db = load ptr, ptr %i.y, align 8, !tbaa !145
  %.not.i45.us = icmp eq ptr %i.db, null
  br i1 %.not.i45.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dc = and i64 %storemerge.i.us, 536870911
  %i.dd = sub nsw i64 0, %i.dc
  %i.de = getelementptr inbounds [12 x i8], ptr %i.az, i64 %i.dd
  tail call void @Gia_ObjAddFanout(ptr noundef nonnull %0, ptr noundef nonnull %i.de, ptr noundef nonnull %i.az) #29
  %i.df = load i64, ptr %i.az, align 4
  %i.dg = lshr i64 %i.df, 32
  %i.dh = and i64 %i.dg, 536870911
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = getelementptr inbounds [12 x i8], ptr %i.az, i64 %i.di
  tail call void @Gia_ObjAddFanout(ptr noundef nonnull %0, ptr noundef nonnull %i.dj, ptr noundef nonnull %i.az) #29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.dk = load i32, ptr %i.z, align 4, !tbaa !217
  %.not65.i.us = icmp eq i32 %i.dk, 0
  br i1 %.not65.i.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dl = load i64, ptr %i.az, align 4            ; 2 uses
  %i.dm = and i64 %i.dl, 536870911
  %i.dn = sub nsw i64 0, %i.dm
  %i.do = getelementptr inbounds [12 x i8], ptr %i.az, i64 %i.dn ; 3 uses
  %i.dp = lshr i64 %i.dl, 32
  %i.dq = and i64 %i.dp, 536870911
  %i.dr = sub nsw i64 0, %i.dq
  %i.ds = getelementptr inbounds [12 x i8], ptr %i.az, i64 %i.dr ; 2 uses
  %i.dt = load i64, ptr %i.do, align 4            ; 2 uses
  %i.du = and i64 %i.dt, 1073741824
  %.not66.i.us = icmp eq i64 %i.du, 0
  %storemerge67.v.i.us = select i1 %.not66.i.us, i64 1073741824, i64 4611686018427387904
  %storemerge67.i.us = or i64 %storemerge67.v.i.us, %i.dt
  store i64 %storemerge67.i.us, ptr %i.do, align 4
  %i.dv = load i64, ptr %i.ds, align 4            ; 3 uses
  %i.dw = and i64 %i.dv, 1073741824
  %.not68.i.us = icmp eq i64 %i.dw, 0
  %storemerge69.v.i.us = select i1 %.not68.i.us, i64 1073741824, i64 4611686018427387904
  %storemerge69.i.us = or i64 %storemerge69.v.i.us, %i.dv
  store i64 %storemerge69.i.us, ptr %i.ds, align 4
  %.val84.i.us = load i64, ptr %i.do, align 4
  %i.dx = lshr i64 %.val84.i.us, 63
  %.val78.i.us = load i64, ptr %i.az, align 4     ; 3 uses
end_hunk_0
