inline.NumInlined: 990
inline.NumDeleted: 575
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL16search_atomtypesPK22PreprocessingAtomTypesPiN3gmx8ArrayRefIiEEiNS4_IK17InteractionOfTypeEE19InteractionFunction:bb.a
  %i.c = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !182
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !184
  %i.h = add nsw i32 %i.g, %i.e
  %.fr108 = freeze i32 %i.h                       ; 2 uses
  %i.i = ptrtoint ptr %.0.val.8.val to i64
  %i.j = ptrtoint ptr %.0.val.0.val to i64
  %i.k = sub i64 %i.i, %i.j
  %.fr = freeze i64 %i.k
  %i.l = sdiv i64 %.fr, 192                       ; 6 uses
  %i.m = trunc i64 %i.l to i32                    ; 5 uses
  %i.n = icmp sgt i32 %i.a, 0
  br i1 %i.n, label %.lr.ph31, label %._crit_edge32

.lr.ph31:                                         ; preds = %bb.a
  %i.o = icmp sgt i32 %i.m, 0
  %i.p = inttoptr i64 %.0.val1 to ptr             ; 5 uses
  %i.q = mul nsw i32 %2, %i.m
  %i.r = icmp slt i32 %2, 0                       ; 3 uses
  %i.s = zext i32 %2 to i64                       ; 2 uses
  %i.t = icmp sle i64 %i.l, %i.s                  ; 5 uses
  %i.u = getelementptr inbounds nuw [192 x i8], ptr %.0.val.0.val, i64 %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 188 ; 5 uses
  br i1 %i.o, label %.lr.ph31.split.us, label %._crit_edge32

.lr.ph31.split.us:                                ; preds = %.lr.ph31
  %i.w = icmp sgt i32 %.fr108, 0
  br i1 %i.w, label %.lr.ph31.split.us.split.us.preheader, label %.lr.ph31.split.us.split

.lr.ph31.split.us.split.us.preheader:             ; preds = %.lr.ph31.split.us
  %i.x = zext nneg i32 %.fr108 to i64             ; 3 uses
  %i.y = sext i32 %i.q to i64                     ; 3 uses
  %i.z = and i64 %i.l, 2147483647                 ; 3 uses
  %wide.trip.count160 = zext nneg i32 %i.a to i64
  %invariant.gep203 = getelementptr [112 x i8], ptr %i.p, i64 %i.y
  %invariant.gep207 = getelementptr [112 x i8], ptr %i.p, i64 %i.y
  %invariant.gep211 = getelementptr [112 x i8], ptr %i.p, i64 %i.y
  %brmerge = or i1 %i.r, %i.t
  br label %.lr.ph31.split.us.split.us

.lr.ph31.split.us.split.us:                       ; preds = %.lr.ph31.split.us.split.us.preheader, %._crit_edge15.split.us41.us.thread
  %indvars.iv157 = phi i64 [ 0, %.lr.ph31.split.us.split.us.preheader ], [ %indvars.iv.next158, %._crit_edge15.split.us41.us.thread ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv157
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !16
  %.fr114 = freeze i32 %i.ab                      ; 4 uses
  %i.ac = icmp eq i32 %.fr114, %2
  br i1 %i.ac, label %._crit_edge32.loopexit, label %.preheader.us.us

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph14.split.us43.us.split, %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us40.us
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us40.us ], [ 0, %.lr.ph14.split.us43.us.split ] ; 3 uses
  %gep206 = getelementptr [112 x i8], ptr %invariant.gep205, i64 %indvars.iv150
  %i.ad = getelementptr inbounds nuw i8, ptr %gep206, i64 24
  %gep208.a = getelementptr [112 x i8], ptr %invariant.gep207, i64 %indvars.iv150
  %i.ae = getelementptr inbounds nuw i8, ptr %gep208.a, i64 24
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %.lr.ph.us.us
  %indvars.iv147 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next148, %.lr.ph.us.us ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv147
  %i.ag = load float, ptr %i.af, align 4, !tbaa !51
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv147
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !51
  %i.aj = fcmp oeq float %i.ag, %i.ai             ; 3 uses
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.ak = icmp samesign ult i64 %indvars.iv.next148, %i.x
  %i.al = select i1 %i.ak, i1 %i.aj, i1 false
  br i1 %i.al, label %.lr.ph.us.us, label %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us40.us, !llvm.loop !185

_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us40.us: ; preds = %.lr.ph.us.us
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %i.am = icmp samesign ult i64 %indvars.iv.next151, %i.z
  %i.an = select i1 %i.am, i1 %i.aj, i1 false
  br i1 %i.an, label %.lr.ph.us.us.preheader, label %._crit_edge15.split.us41.us, !llvm.loop !186

._crit_edge15.split.us41.us.thread:               ; preds = %._crit_edge.us.us.us100, %._crit_edge.us.us.us, %._crit_edge15.split.us41.us
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next158, %wide.trip.count160
  br i1 %exitcond161.not, label %._crit_edge32.thread, label %.lr.ph31.split.us.split.us, !llvm.loop !187

.preheader.us.us:                                 ; preds = %.lr.ph31.split.us.split.us
  %i.ao = mul nsw i32 %.fr114, %i.m               ; 2 uses
  %i.ap = icmp sgt i32 %.fr114, -1
  %i.aq = zext nneg i32 %.fr114 to i64            ; 2 uses
  %i.ar = icmp sgt i64 %i.l, %i.aq
  %i.as = getelementptr inbounds nuw [192 x i8], ptr %.0.val.0.val, i64 %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 188
  br i1 %i.ap, label %.lr.ph14.split.us43.us.split.us.preheader, label %.lr.ph14.split.us43.us.split

.lr.ph14.split.us43.us.split.us.preheader:        ; preds = %.preheader.us.us
  %i.au = zext nneg i32 %i.ao to i64
  %invariant.gep209.a = getelementptr inbounds nuw [112 x i8], ptr %i.p, i64 %i.au
  br label %.lr.ph.us.us.us.preheader

._crit_edge15.split.us41.us:                      ; preds = %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us97, %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us40.us, %bb.d
  %.us-phi89 = phi i1 [ %i.aj, %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us40.us ], [ %i.bg, %bb.d ], [ %i.bv, %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us97 ]
  br i1 %.us-phi89, label %._crit_edge32.loopexit, label %._crit_edge15.split.us41.us.thread

.lr.ph.us.us.us.preheader:                        ; preds = %bb.d, %.lr.ph14.split.us43.us.split.us.preheader
  %indvars.iv155 = phi i64 [ 0, %.lr.ph14.split.us43.us.split.us.preheader ], [ %indvars.iv.next156, %bb.d ] ; 3 uses
  %gep210 = getelementptr inbounds nuw [112 x i8], ptr %invariant.gep209.a, i64 %indvars.iv155
  %i.av = getelementptr inbounds nuw i8, ptr %gep210, i64 24
  %gep212 = getelementptr [112 x i8], ptr %invariant.gep211, i64 %indvars.iv155
  %i.aw = getelementptr inbounds nuw i8, ptr %gep212, i64 24
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %.lr.ph.us.us.us
  %indvars.iv152 = phi i64 [ 0, %.lr.ph.us.us.us.preheader ], [ %indvars.iv.next153, %.lr.ph.us.us.us ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv152
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !51
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv152
  %i.ba = load float, ptr %i.az, align 4, !tbaa !51
  %i.bb = fcmp oeq float %i.ay, %i.ba             ; 2 uses
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %i.bc = icmp samesign ult i64 %indvars.iv.next153, %i.x
  %i.bd = select i1 %i.bc, i1 %i.bb, i1 false
  br i1 %i.bd, label %.lr.ph.us.us.us, label %._crit_edge.us.us.us, !llvm.loop !185

._crit_edge.us.us.us:                             ; preds = %.lr.ph.us.us.us
  br i1 %i.bb, label %_ZNK22PreprocessingAtomTypes5isSetEi.exit.i.us.us.us84, label %._crit_edge15.split.us41.us.thread

_ZNK22PreprocessingAtomTypes5isSetEi.exit.i.us.us.us84: ; preds = %._crit_edge.us.us.us
  br i1 %i.ar, label %bb.b, label %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us40.us.us

bb.b:                                             ; preds = %_ZNK22PreprocessingAtomTypes5isSetEi.exit.i.us.us.us84
  %i.be = load i32, ptr %i.at, align 4, !tbaa !16
  br label %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us40.us.us

_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us40.us.us: ; preds = %bb.b, %_ZNK22PreprocessingAtomTypes5isSetEi.exit.i.us.us.us84
  %.sroa.2.0.i.us.us.us85 = phi i32 [ %i.be, %bb.b ], [ 0, %_ZNK22PreprocessingAtomTypes5isSetEi.exit.i.us.us.us84 ]
  br i1 %brmerge, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us40.us.us
  %i.bf = load i32, ptr %i.v, align 4, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us40.us.us
  %.sroa.2.0.i55.us.us.us88 = phi i32 [ %i.bf, %bb.c ], [ 0, %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us40.us.us ]
  %i.bg = icmp eq i32 %.sroa.2.0.i.us.us.us85, %.sroa.2.0.i55.us.us.us88 ; 2 uses
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %i.bh = icmp samesign ult i64 %indvars.iv.next156, %i.z
  %i.bi = select i1 %i.bh, i1 %i.bg, i1 false
  br i1 %i.bi, label %.lr.ph.us.us.us.preheader, label %._crit_edge15.split.us41.us, !llvm.loop !186

.lr.ph14.split.us43.us.split:                     ; preds = %.preheader.us.us
  %i.bj = sext i32 %i.ao to i64
  %invariant.gep205 = getelementptr [112 x i8], ptr %i.p, i64 %i.bj ; 2 uses
  br i1 %i.r, label %.lr.ph.us.us.preheader, label %.lr.ph.us.us.us99.preheader

.lr.ph.us.us.us99.preheader:                      ; preds = %.lr.ph14.split.us43.us.split, %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us97
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us97 ], [ 0, %.lr.ph14.split.us43.us.split ] ; 3 uses
  %gep = getelementptr [112 x i8], ptr %invariant.gep205, i64 %indvars.iv145
  %i.bk = getelementptr inbounds nuw i8, ptr %gep, i64 24
  %gep204 = getelementptr [112 x i8], ptr %invariant.gep203, i64 %indvars.iv145
  %i.bl = getelementptr inbounds nuw i8, ptr %gep204, i64 24
  br label %.lr.ph.us.us.us99

.lr.ph.us.us.us99:                                ; preds = %.lr.ph.us.us.us99.preheader, %.lr.ph.us.us.us99
  %indvars.iv142 = phi i64 [ 0, %.lr.ph.us.us.us99.preheader ], [ %indvars.iv.next143, %.lr.ph.us.us.us99 ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv142
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !51
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv142
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !51
  %i.bq = fcmp oeq float %i.bn, %i.bp             ; 2 uses
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %i.br = icmp samesign ult i64 %indvars.iv.next143, %i.x
  %i.bs = select i1 %i.br, i1 %i.bq, i1 false
  br i1 %i.bs, label %.lr.ph.us.us.us99, label %._crit_edge.us.us.us100, !llvm.loop !185

._crit_edge.us.us.us100:                          ; preds = %.lr.ph.us.us.us99
  br i1 %i.bq, label %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us40.us.us95, label %._crit_edge15.split.us41.us.thread

_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us40.us.us95: ; preds = %._crit_edge.us.us.us100
  br i1 %i.t, label %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us97, label %bb.e

bb.e:                                             ; preds = %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us40.us.us95
  %i.bt = load i32, ptr %i.v, align 4, !tbaa !16
  %i.bu = icmp eq i32 %i.bt, 0
  br label %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us97

_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us97: ; preds = %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us40.us.us95, %bb.e
  %i.bv = phi i1 [ true, %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit.us40.us.us95 ], [ %i.bu, %bb.e ] ; 2 uses
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %i.bw = icmp samesign ult i64 %indvars.iv.next146, %i.z
  %i.bx = select i1 %i.bw, i1 %i.bv, i1 false
  br i1 %i.bx, label %.lr.ph.us.us.us99.preheader, label %._crit_edge15.split.us41.us, !llvm.loop !186

.lr.ph31.split.us.split:                          ; preds = %.lr.ph31.split.us
  %wide.trip.count140 = zext nneg i32 %i.a to i64 ; 2 uses
  br i1 %i.r, label %.lr.ph31.split.us.split.split, label %.lr.ph31.split.us.split.split.us

.lr.ph31.split.us.split.split.us:                 ; preds = %.lr.ph31.split.us.split, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.lr.ph31.split.us.split ] ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !16
  %.fr112 = freeze i32 %i.bz                      ; 3 uses
  %i.ca = icmp eq i32 %.fr112, %2
  br i1 %i.ca, label %._crit_edge32.loopexit187, label %.preheader.us.us65

bb.f:                                             ; preds = %._crit_edge15.split.us.us.us.loopexit7, %.lr.ph14.split.us.split.us.us.us.split.split.us.preheader, %.lr.ph14.split.us.split.us.us.us.split.us.split.preheader, %.lr.ph14.split.us.split.us.us.us.split.us.split.us.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count140
  br i1 %exitcond.not, label %._crit_edge32.thread, label %.lr.ph31.split.us.split.split.us, !llvm.loop !187

.preheader.us.us65:                               ; preds = %.lr.ph31.split.us.split.split.us
  %i.cb = icmp sgt i32 %.fr112, -1
  %i.cc = zext i32 %.fr112 to i64                 ; 2 uses
  %i.cd = getelementptr inbounds nuw [192 x i8], ptr %.0.val.0.val, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 188
  br i1 %i.cb, label %.lr.ph14.split.us.split.us.us.us, label %.lr.ph14.split.us.split.us49.us

.lr.ph14.split.us.split.us49.us:                  ; preds = %.preheader.us.us65
  br i1 %i.t, label %._crit_edge32.loopexit187, label %._crit_edge15.split.us.us.us.loopexit7

._crit_edge15.split.us.us.us.loopexit7:           ; preds = %.lr.ph14.split.us.split.us49.us
  %i.cf = load i32, ptr %i.v, align 4, !tbaa !16
  %.fr217 = freeze i32 %i.cf
  %i.cg = icmp eq i32 %.fr217, 0
  br i1 %i.cg, label %._crit_edge32.loopexit187, label %bb.f

.lr.ph14.split.us.split.us.us.us:                 ; preds = %.preheader.us.us65
  %i.ch = icmp sgt i64 %i.l, %i.cc
  br i1 %i.ch, label %.lr.ph14.split.us.split.us.us.us.split.us, label %.lr.ph14.split.us.split.us.us.us.split

.lr.ph14.split.us.split.us.us.us.split.us:        ; preds = %.lr.ph14.split.us.split.us.us.us
  %i.ci = load i32, ptr %i.ce, align 4, !tbaa !16
  %.fr219 = freeze i32 %i.ci                      ; 2 uses
  br i1 %i.t, label %.lr.ph14.split.us.split.us.us.us.split.us.split.preheader, label %.lr.ph14.split.us.split.us.us.us.split.us.split.us.preheader

.lr.ph14.split.us.split.us.us.us.split.us.split.us.preheader: ; preds = %.lr.ph14.split.us.split.us.us.us.split.us
  %i.cj = load i32, ptr %i.v, align 4, !tbaa !16
  %.fr220 = freeze i32 %i.cj
  %i.ck = icmp eq i32 %.fr219, %.fr220
  br i1 %i.ck, label %._crit_edge32.loopexit187, label %bb.f

.lr.ph14.split.us.split.us.us.us.split.us.split.preheader: ; preds = %.lr.ph14.split.us.split.us.us.us.split.us
  %i.cl = icmp eq i32 %.fr219, 0
  br i1 %i.cl, label %._crit_edge32.loopexit187, label %bb.f

.lr.ph14.split.us.split.us.us.us.split:           ; preds = %.lr.ph14.split.us.split.us.us.us
  br i1 %i.t, label %._crit_edge32.loopexit187, label %.lr.ph14.split.us.split.us.us.us.split.split.us.preheader

.lr.ph14.split.us.split.us.us.us.split.split.us.preheader: ; preds = %.lr.ph14.split.us.split.us.us.us.split
  %i.cm = load i32, ptr %i.v, align 4, !tbaa !16
  %.fr218 = freeze i32 %i.cm
  %i.cn = icmp eq i32 %.fr218, 0
  br i1 %i.cn, label %._crit_edge32.loopexit187, label %bb.f

.lr.ph31.split.us.split.split:                    ; preds = %.lr.ph31.split.us.split, %bb.g
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %bb.g ], [ 0, %.lr.ph31.split.us.split ] ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv137
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !16
  %.fr111 = freeze i32 %i.cp                      ; 3 uses
  %i.cq = icmp eq i32 %.fr111, %2
  br i1 %i.cq, label %._crit_edge32.loopexit182, label %.preheader.us

bb.g:                                             ; preds = %._crit_edge15.split.us.us
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count140
  br i1 %exitcond141.not, label %._crit_edge32.thread, label %.lr.ph31.split.us.split.split, !llvm.loop !187

.preheader.us:                                    ; preds = %.lr.ph31.split.us.split.split
  %i.cr = icmp sgt i32 %.fr111, -1
  %i.cs = zext nneg i32 %.fr111 to i64            ; 2 uses
  %i.ct = icmp sgt i64 %i.l, %i.cs
  %i.cu = getelementptr inbounds nuw [192 x i8], ptr %.0.val.0.val, i64 %i.cs
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 188
  br i1 %i.cr, label %_ZNK22PreprocessingAtomTypes5isSetEi.exit.i.us.us.us, label %._crit_edge32.loopexit182

._crit_edge15.split.us.us:                        ; preds = %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us
  br i1 %.sroa.2.0.i.us.us.us, label %._crit_edge32.loopexit182, label %bb.g

_ZNK22PreprocessingAtomTypes5isSetEi.exit.i.us.us.us: ; preds = %.preheader.us, %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us
  %.04812.us.us.us = phi i32 [ %i.cy, %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us ], [ 0, %.preheader.us ]
  br i1 %i.ct, label %bb.h, label %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us

bb.h:                                             ; preds = %_ZNK22PreprocessingAtomTypes5isSetEi.exit.i.us.us.us
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !16
  %i.cx = icmp eq i32 %i.cw, 0
  br label %_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us

_ZNK22PreprocessingAtomTypes22atomNumberFromAtomTypeEi.exit57.us.us.us: ; preds = %bb.h, %_ZNK22PreprocessingAtomTypes5isSetEi.exit.i.us.us.us
  %.sroa.2.0.i.us.us.us = phi i1 [ %i.cx, %bb.h ], [ true, %_ZNK22PreprocessingAtomTypes5isSetEi.exit.i.us.us.us ] ; 2 uses
  %i.cy = add nuw nsw i32 %.04812.us.us.us, 1     ; 2 uses
  %i.cz = icmp slt i32 %i.cy, %i.m
  %i.da = select i1 %i.cz, i1 %.sroa.2.0.i.us.us.us, i1 false
  br i1 %i.da, label %_ZNK22PreprocessingAtomTypes5isSetEi.exit.i.us.us.us, label %._crit_edge15.split.us.us, !llvm.loop !186

._crit_edge32.loopexit:                           ; preds = %._crit_edge15.split.us41.us, %.lr.ph31.split.us.split.us
  %i.db = trunc nuw nsw i64 %indvars.iv157 to i32
  br label %._crit_edge32

._crit_edge32.loopexit182:                        ; preds = %._crit_edge15.split.us.us, %.lr.ph31.split.us.split.split, %.preheader.us
  %i.dc = trunc nuw nsw i64 %indvars.iv137 to i32
  br label %._crit_edge32

._crit_edge32.loopexit187:                        ; preds = %._crit_edge15.split.us.us.us.loopexit7, %.lr.ph14.split.us.split.us.us.us.split.split.us.preheader, %.lr.ph14.split.us.split.us.us.us.split.us.split.us.preheader, %.lr.ph14.split.us.split.us.us.us.split.us.split.preheader, %.lr.ph31.split.us.split.split.us, %.lr.ph14.split.us.split.us49.us, %.lr.ph14.split.us.split.us.us.us.split
  %i.dd = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge32

._crit_edge32:                                    ; preds = %._crit_edge32.loopexit187, %._crit_edge32.loopexit182, %._crit_edge32.loopexit, %.lr.ph31, %bb.a
  %.044.lcssa = phi i32 [ 0, %bb.a ], [ %i.dc, %._crit_edge32.loopexit182 ], [ %i.db, %._crit_edge32.loopexit ], [ 0, %.lr.ph31 ], [ %i.dd, %._crit_edge32.loopexit187 ] ; 3 uses
  %i.de = icmp eq i32 %.044.lcssa, %i.a
  br i1 %i.de, label %._crit_edge32.thread, label %bb.m

._crit_edge32.thread:                             ; preds = %bb.f, %bb.g, %._crit_edge15.split.us41.us.thread, %._crit_edge32
  %.044.lcssa177 = phi i32 [ %.044.lcssa, %._crit_edge32 ], [ %i.a, %._crit_edge15.split.us41.us.thread ], [ %i.a, %bb.g ], [ %i.a, %bb.f ]
  %i.df = icmp eq i32 %i.a, %i.m
  br i1 %i.df, label %bb.i, label %bb.l

bb.i:                                             ; preds = %._crit_edge32.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZNSt10filesystem7__cxx114pathC2IA75_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 1 dereferenceable(75) @.str.3, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 279, ptr noundef nonnull @.str.4, i32 noundef %i.a, ptr noundef nonnull @.str.3, i32 noundef 279) #24
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %i.dg

bb.l:                                             ; preds = %._crit_edge32.thread
  %i.dh = sext i32 %i.a to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dh
  store i32 %2, ptr %i.di, align 4, !tbaa !16
  %i.dj = add nsw i32 %i.a, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge32
  %.044.lcssa176 = phi i32 [ %.044.lcssa177, %bb.l ], [ %.044.lcssa, %._crit_edge32 ]
  %.0 = phi i32 [ %i.dj, %bb.l ], [ %i.a, %._crit_edge32 ]
  store i32 %.0, ptr %0, align 4, !tbaa !16
  ret i32 %.044.lcssa176
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK17InteractionOfType19interactionTypeNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(105)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorI12AtomTypeDataSaIS0_EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(192) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.c, ptr noundef nonnull align 8 dereferenceable(192) %1, i64 36, i1 false), !tbaa.struct !63
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 5 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !43
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !33   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !27   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.k, ptr %i.a, align 8, !tbaa !44
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %i.f, align 8, !tbaa !33
  %i.n = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.n, ptr %i.h, align 8, !tbaa !45
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.o = phi ptr [ %i.m, %.noexc.i.i ], [ %i.h, %bb.b ] ; 2 uses
  switch i64 %i.k, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !45
  store i8 %i.p, ptr %i.o, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %i.q, ptr %i.r, align 8, !tbaa !27
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_ZN17InteractionOfTypeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(105) %i.u, ptr noundef nonnull align 8 dereferenceable(105) %i.v)
          to label %_ZN12AtomTypeDataC2ERKS_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !33   ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.h
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.z = load i64, ptr %i.h, align 8, !tbaa !45
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.w

_ZN12AtomTypeDataC2ERKS_.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ad = load i64, ptr %i.ac, align 8
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 192
  store ptr %i.af, ptr %i.b, align 8, !tbaa !12
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorI12AtomTypeDataSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(192) %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN12AtomTypeDataC2ERKS_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI12AtomTypeDataSaIS0_EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !15     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !62
  %i.i = load ptr, ptr %0, align 8, !tbaa !15     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 192
  %i.o = tail call noundef ptr @_ZNSt6vectorI12AtomTypeDataSaIS0_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS0_S2_EEEEPS0_mT_SA_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !12   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP12AtomTypeDataEvT_S2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt8_DestroyI12AtomTypeDataEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.al, %_ZSt8_DestroyI12AtomTypeDataEvPT_.exit.i.i ], [ %i.p, %bb.c ] ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 160 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !45
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !57   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN17InteractionOfTypeD2Ev.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !60
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #23
  br label %_ZN17InteractionOfTypeD2Ev.exit.i.i.i.i

end_hunk_0
