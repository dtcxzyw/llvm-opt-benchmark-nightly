inline.NumInlined: 1486
inline.NumDeleted: 584
begin_hunk_0_@_ZNK10duckdb_re213PrefilterTree14PropagateMatchERKSt6vectorIiSaIiEEPNS_11SparseArrayIiEE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = load ptr, ptr %0, align 8, !tbaa !30     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56                  ; 4 uses
  %i.h = trunc i64 %i.g to i32                    ; 7 uses
  store i32 0, ptr %3, align 8, !tbaa !119
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN10duckdb_re211SparseArrayIiE10IndexValueEE8allocateEmPKv.exit.i.i, !prof !142

.noexc.i.i:                                       ; preds = %bb.a
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorIN10duckdb_re211SparseArrayIiE10IndexValueEE8allocateEmPKv.exit.i.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = and i64 %i.g, 2147483647                 ; 2 uses
  %i.l = shl nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #25 ; 5 uses
  store i32 %i.h, ptr %i.j, align 8, !tbaa !3
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !143
  %i.o = shl nuw nsw i64 %i.k, 3                  ; 2 uses
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25
          to label %bb.b unwind label %.thread.i  ; 4 uses

bb.b:                                             ; preds = %_ZNSt15__new_allocatorIN10duckdb_re211SparseArrayIiE10IndexValueEE8allocateEmPKv.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 %i.h, ptr %i.q, align 8, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.p, ptr %i.r, align 8, !tbaa !144
  %.not.i = icmp eq i32 %i.h, 0                   ; 2 uses
  br i1 %.not.i, label %_ZNSt15__new_allocatorIN10duckdb_re211SparseArrayIiE10IndexValueEE8allocateEmPKv.exit.i.i44, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.s = shl nsw i64 %i.g, 2
  %i.t = add nsw i64 %i.s, 17179869180
  %i.u = and i64 %i.t, 17179869180
  %i.v = add nuw nsw i64 %i.u, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.m, i8 -85, i64 %i.v, i1 false), !tbaa !3
  br label %_ZNSt15__new_allocatorIN10duckdb_re211SparseArrayIiE10IndexValueEE8allocateEmPKv.exit.i.i44

common.resume:                                    ; preds = %.body, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.thread.i ], [ %.pn41.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

.thread.i:                                        ; preds = %_ZNSt15__new_allocatorIN10duckdb_re211SparseArrayIiE10IndexValueEE8allocateEmPKv.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #22
  br label %common.resume

_ZNSt15__new_allocatorIN10duckdb_re211SparseArrayIiE10IndexValueEE8allocateEmPKv.exit.i.i44: ; preds = %.lr.ph.i.i, %bb.b
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #25
          to label %.noexc49 unwind label %bb.d   ; 5 uses

.noexc49:                                         ; preds = %_ZNSt15__new_allocatorIN10duckdb_re211SparseArrayIiE10IndexValueEE8allocateEmPKv.exit.i.i44
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25
          to label %bb.c unwind label %.thread.i45 ; 9 uses

bb.c:                                             ; preds = %.noexc49
  br i1 %.not.i, label %_ZN10duckdb_re211SparseArrayIiEC2Ei.exit50, label %.lr.ph.i.i47

.lr.ph.i.i47:                                     ; preds = %bb.c
  %i.z = shl nsw i64 %i.g, 2
  %i.aa = add nsw i64 %i.z, 17179869180
  %i.ab = and i64 %i.aa, 17179869180
  %i.ac = add nuw nsw i64 %i.ab, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.x, i8 -85, i64 %i.ac, i1 false), !tbaa !3
  br label %_ZN10duckdb_re211SparseArrayIiEC2Ei.exit50

.thread.i45:                                      ; preds = %.noexc49
  %i.ad = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #22
  br label %.body

_ZN10duckdb_re211SparseArrayIiEC2Ei.exit50:       ; preds = %bb.c, %.lr.ph.i.i47
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !80 ; 2 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !29    ; 3 uses
  %.not112 = icmp eq ptr %i.af, %i.ag
  br i1 %.not112, label %_ZN10duckdb_re211SparseArrayIiED2Ev.exit55, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10duckdb_re211SparseArrayIiEC2Ei.exit50
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 2
  br label %bb.e

.preheader:                                       ; preds = %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit
  %.not107 = icmp eq i32 %i.bg, 0
  br i1 %.not107, label %_ZN10duckdb_re211SparseArrayIiED2Ev.exit55, label %.lr.ph110

.lr.ph110:                                        ; preds = %.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.h

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIN10duckdb_re211SparseArrayIiE10IndexValueEE8allocateEmPKv.exit.i.i44
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %.lr.ph, %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit
  %.03393 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit ] ; 2 uses
  %i.ap = phi i32 [ 0, %.lr.ph ], [ %i.bg, %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit ] ; 6 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.03393
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3  ; 4 uses
  %.not11.i.i = icmp ult i32 %i.ar, %i.h
  br i1 %.not11.i.i, label %bb.f, label %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit

bb.f:                                             ; preds = %bb.e
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3  ; 2 uses
  %i.av = icmp ult i32 %i.au, %i.ap
  br i1 %i.av, label %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i, label %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i

_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i: ; preds = %bb.f
  %i.aw = sext i32 %i.au to i64                   ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !147
  %i.az = icmp eq i32 %i.ay, %i.ar
  br i1 %i.az, label %bb.g, label %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i

_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i: ; preds = %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i, %bb.f
  store i32 %i.ap, ptr %i.at, align 4, !tbaa !3
  %i.ba = sext i32 %i.ap to i64                   ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ba
  store i32 %i.ar, ptr %i.bb, align 4, !tbaa !147
  %i.bc = add nsw i32 %i.ap, 1
  br label %bb.g

bb.g:                                             ; preds = %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i
  %i.bd = phi i32 [ %i.bc, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i ], [ %i.ap, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i ]
  %.pre-phi.i = phi i64 [ %i.ba, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i ], [ %i.aw, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.pre-phi.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 1, ptr %i.bf, align 4, !tbaa !150
  br label %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit

_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit:    ; preds = %bb.g, %bb.e
  %i.bg = phi i32 [ %i.bd, %bb.g ], [ %i.ap, %bb.e ] ; 3 uses
  %i.bh = add nuw i64 %.03393, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %i.ak
  br i1 %exitcond.not, label %.preheader, label %bb.e, !llvm.loop !151

_ZN10duckdb_re211SparseArrayIiED2Ev.exit55:       ; preds = %._crit_edge103, %_ZN10duckdb_re211SparseArrayIiEC2Ei.exit50, %.preheader
  tail call void @_ZdlPv(ptr noundef nonnull %i.y) #22
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #22
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #22
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.h:                                             ; preds = %.lr.ph110, %._crit_edge103
  %.035109 = phi ptr [ %i.y, %.lr.ph110 ], [ %i.cs, %._crit_edge103 ] ; 2 uses
  %.lcssa98106108 = phi i32 [ %i.bg, %.lr.ph110 ], [ %.lcssa98, %._crit_edge103 ] ; 2 uses
  %i.bi = load i32, ptr %.035109, align 4, !tbaa !147
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.bj ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !80 ; 2 uses
  %i.bo = load ptr, ptr %i.bl, align 8, !tbaa !29 ; 3 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 2
  %.not113 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not113, label %._crit_edge, label %.lr.ph95

.lr.ph95:                                         ; preds = %bb.h
  %i.bt = load ptr, ptr %i.am, align 8, !tbaa !146
  %.fr = freeze ptr %i.bt                         ; 4 uses
  %.not.i.i.i56.not = icmp eq ptr %.fr, null
  br i1 %.not.i.i.i56.not, label %._crit_edge, label %.lr.ph95.split

._crit_edge:                                      ; preds = %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit65, %.lr.ph95, %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !91 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !91 ; 2 uses
  %.not9299 = icmp eq ptr %i.bv, %i.bx
  br i1 %.not9299, label %._crit_edge103, label %.lr.ph102

.lr.ph102:                                        ; preds = %._crit_edge
  %.promoted96 = load i32, ptr %3, align 8
  %i.by = load i32, ptr %i.q, align 8
  br label %bb.k

.lr.ph95.split:                                   ; preds = %.lr.ph95, %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit65
  %.03494 = phi i64 [ %i.cr, %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit65 ], [ 0, %.lr.ph95 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.03494
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3  ; 4 uses
  %i.cb = load i32, ptr %i.al, align 8
  %.not11.i.i57 = icmp ugt i32 %i.cb, %i.ca
  br i1 %.not11.i.i57, label %bb.i, label %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit65

bb.i:                                             ; preds = %.lr.ph95.split
  %i.cc = sext i32 %i.ca to i64
  %i.cd = load ptr, ptr %i.an, align 8, !tbaa !91
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.cc ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3  ; 2 uses
  %i.cg = load i32, ptr %2, align 8, !tbaa !119   ; 4 uses
  %i.ch = icmp ult i32 %i.cf, %i.cg
  br i1 %i.ch, label %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i64, label %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i60

_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i64: ; preds = %bb.i
  %i.ci = sext i32 %i.cf to i64                   ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !147
  %i.cl = icmp eq i32 %i.ck, %i.ca
  br i1 %i.cl, label %bb.j, label %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i60

_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i60: ; preds = %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i64, %bb.i
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !3
  %i.cm = sext i32 %i.cg to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.cm
  store i32 %i.ca, ptr %i.cn, align 4, !tbaa !147
  %i.co = add nsw i32 %i.cg, 1
  store i32 %i.co, ptr %2, align 8, !tbaa !119
  %.pre.i61 = load i32, ptr %i.ce, align 4, !tbaa !3
  %.pre2.i62 = sext i32 %.pre.i61 to i64
  br label %bb.j

bb.j:                                             ; preds = %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i60, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i64
  %.pre-phi.i63 = phi i64 [ %.pre2.i62, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i60 ], [ %i.ci, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i64 ]
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %.pre-phi.i63
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store i32 1, ptr %i.cq, align 4, !tbaa !150
  br label %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit65

_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit65:  ; preds = %bb.j, %.lr.ph95.split
  %i.cr = add nuw i64 %.03494, 1                  ; 2 uses
  %exitcond118.not = icmp eq i64 %i.cr, %i.bs
  br i1 %exitcond118.not, label %._crit_edge, label %.lr.ph95.split, !llvm.loop !152

._crit_edge103:                                   ; preds = %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit81, %._crit_edge
  %.lcssa98 = phi i32 [ %.lcssa98106108, %._crit_edge ], [ %i.eg, %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit81 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.035109, i64 8 ; 2 uses
  %i.ct = sext i32 %.lcssa98 to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ct
  %.not = icmp eq ptr %i.cs, %i.cu
  br i1 %.not, label %_ZN10duckdb_re211SparseArrayIiED2Ev.exit55, label %bb.h, !llvm.loop !153

bb.k:                                             ; preds = %.lr.ph102, %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit81
  %.sroa.082.0100 = phi ptr [ %i.bv, %.lr.ph102 ], [ %i.ei, %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit81 ] ; 2 uses
  %i.cv = phi i32 [ %.promoted96, %.lr.ph102 ], [ %i.eh, %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit81 ] ; 8 uses
  %i.cw = phi i32 [ %.lcssa98106108, %.lr.ph102 ], [ %i.eg, %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit81 ] ; 7 uses
  %i.cx = load i32, ptr %.sroa.082.0100, align 4, !tbaa !3 ; 8 uses
  %i.cy = sext i32 %i.cx to i64                   ; 3 uses
  %i.cz = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !93 ; 2 uses
  %i.db = icmp sgt i32 %i.da, 1
  br i1 %i.db, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %.not6.i = icmp ugt i32 %i.by, %i.cx
  br i1 %.not6.i, label %bb.m, label %_ZN10duckdb_re211SparseArrayIiE7set_newEiRKi.exit

bb.m:                                             ; preds = %bb.l
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cy ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !3  ; 2 uses
  %i.de = icmp ult i32 %i.dd, %i.cv
  br i1 %i.de, label %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit, label %.thread91

_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit: ; preds = %bb.m
  %i.df = sext i32 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.df ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !147
  %i.di = icmp eq i32 %i.dh, %i.cx
  br i1 %i.di, label %bb.n, label %.thread91

bb.n:                                             ; preds = %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3
  %i.dl = add nsw i32 %i.dk, 1                    ; 2 uses
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !150
  br label %_ZN10duckdb_re211SparseArrayIiE7set_newEiRKi.exit

.thread91:                                        ; preds = %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit, %bb.m
  store i32 %i.cv, ptr %i.dc, align 4, !tbaa !3
  %i.dm = sext i32 %i.cv to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.dm ; 2 uses
  store i32 %i.cx, ptr %i.dn, align 4, !tbaa !147
  %i.do = add nsw i32 %i.cv, 1                    ; 2 uses
  store i32 %i.do, ptr %3, align 8, !tbaa !119
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  store i32 1, ptr %i.dp, align 4, !tbaa !150
  br label %_ZN10duckdb_re211SparseArrayIiE7set_newEiRKi.exit

_ZN10duckdb_re211SparseArrayIiE7set_newEiRKi.exit: ; preds = %.thread91, %bb.l, %bb.n
  %i.dq = phi i32 [ %i.cv, %bb.n ], [ %i.cv, %bb.l ], [ %i.do, %.thread91 ] ; 2 uses
  %.0 = phi i32 [ %i.dl, %bb.n ], [ 1, %bb.l ], [ 1, %.thread91 ]
  %i.dr = icmp sge i32 %.0, %i.da
  %.not11.i.i73 = icmp ult i32 %i.cx, %i.h
  %or.cond = and i1 %i.dr, %.not11.i.i73
  br i1 %or.cond, label %bb.p, label %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit81

bb.o:                                             ; preds = %bb.k
  %.not11.i.i73.old = icmp ult i32 %i.cx, %i.h
  br i1 %.not11.i.i73.old, label %bb.p, label %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit81

bb.p:                                             ; preds = %_ZN10duckdb_re211SparseArrayIiE7set_newEiRKi.exit, %bb.o
  %i.ds = phi i32 [ %i.dq, %_ZN10duckdb_re211SparseArrayIiE7set_newEiRKi.exit ], [ %i.cv, %bb.o ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cy ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !3  ; 2 uses
  %i.dv = icmp ult i32 %i.du, %i.cw
  br i1 %i.dv, label %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i80, label %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i76

_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i80: ; preds = %bb.p
  %i.dw = sext i32 %i.du to i64                   ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !147
  %i.dz = icmp eq i32 %i.dy, %i.cx
  br i1 %i.dz, label %bb.q, label %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i76

_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i76: ; preds = %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i80, %bb.p
  store i32 %i.cw, ptr %i.dt, align 4, !tbaa !3
  %i.ea = sext i32 %i.cw to i64                   ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ea
  store i32 %i.cx, ptr %i.eb, align 4, !tbaa !147
  %i.ec = add nsw i32 %i.cw, 1
  br label %bb.q

bb.q:                                             ; preds = %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i76, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i80
  %i.ed = phi i32 [ %i.ec, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i76 ], [ %i.cw, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i80 ]
  %.pre-phi.i79 = phi i64 [ %i.ea, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.thread.i.i76 ], [ %i.dw, %_ZNK10duckdb_re211SparseArrayIiE9has_indexEi.exit.i.i80 ]
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.pre-phi.i79
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  store i32 1, ptr %i.ef, align 4, !tbaa !150
  br label %_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit81

_ZN10duckdb_re211SparseArrayIiE3setEiRKi.exit81:  ; preds = %bb.o, %bb.q, %_ZN10duckdb_re211SparseArrayIiE7set_newEiRKi.exit
  %i.eg = phi i32 [ %i.cw, %bb.o ], [ %i.ed, %bb.q ], [ %i.cw, %_ZN10duckdb_re211SparseArrayIiE7set_newEiRKi.exit ] ; 2 uses
  %i.eh = phi i32 [ %i.cv, %bb.o ], [ %i.ds, %bb.q ], [ %i.dq, %_ZN10duckdb_re211SparseArrayIiE7set_newEiRKi.exit ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.082.0100, i64 4 ; 2 uses
  %.not92 = icmp eq ptr %i.ei, %i.bx
  br i1 %.not92, label %._crit_edge103, label %bb.k

.body:                                            ; preds = %bb.d, %.thread.i45
  %.pn41.pn = phi { ptr, i32 } [ %i.ad, %.thread.i45 ], [ %i.ao, %bb.d ]
  call void @_ZN10duckdb_re211SparseArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10duckdb_re211SparseArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN10duckdb_re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #22
  br label %_ZN10duckdb_re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit

_ZN10duckdb_re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i.i1, label %_ZN10duckdb_re28PODArrayIiED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN10duckdb_re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #22
  br label %_ZN10duckdb_re28PODArrayIiED2Ev.exit

_ZN10duckdb_re28PODArrayIiED2Ev.exit:             ; preds = %_ZN10duckdb_re28PODArrayINS_11SparseArrayIiE10IndexValueEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10duckdb_re213PrefilterTree14PrintPrefilterEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.LogMessage, align 8          ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i8 0, ptr %2, align 8, !tbaa !40
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = sext i32 %1 to i64
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  invoke void @_ZNK10duckdb_re213PrefilterTree15DebugNodeStringB5cxx11EPNS_9PrefilterE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %3, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !62
end_hunk_0
begin_hunk_1_@_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_:bb.a

bb.h:                                             ; preds = %bb.f
  invoke void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.10.0, i64 noundef %.sroa.5.0)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  tail call void @_ZdlPv(ptr noundef %.sroa.10.0) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_T1_(ptr %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.c
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %0, ptr %1, i64 noundef 7)
  %i.f = icmp sgt i64 %i.d, 7
  br i1 %i.f, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.016.i = phi i64 [ %i.h, %.lr.ph.i ], [ 7, %bb.a ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %3, i64 noundef %.016.i)
  %i.g = shl nuw nsw i64 %.016.i, 1
  tail call void @_ZSt17__merge_sort_loopIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_(ptr noundef %3, ptr noundef %i.e, ptr %0, i64 noundef %i.g)
  %i.h = shl nsw i64 %.016.i, 2                   ; 2 uses
  %i.i = icmp slt i64 %i.h, %i.d
  br i1 %i.i, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_.exit, !llvm.loop !206

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.j = ptrtoint ptr %2 to i64
  %i.k = sub i64 %i.j, %i.a                       ; 2 uses
  %i.l = ashr exact i64 %i.k, 4                   ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.k
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %1, ptr %2, i64 noundef 7)
  %i.n = icmp sgt i64 %i.l, 7
  br i1 %i.n, label %.lr.ph.i9, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_.exit11

.lr.ph.i9:                                        ; preds = %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_.exit, %.lr.ph.i9
  %.016.i10 = phi i64 [ %i.p, %.lr.ph.i9 ], [ 7, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_(ptr %1, ptr %2, ptr noundef %3, i64 noundef %.016.i10)
  %i.o = shl nuw nsw i64 %.016.i10, 1
  tail call void @_ZSt17__merge_sort_loopIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_(ptr noundef %3, ptr noundef %i.m, ptr %1, i64 noundef %i.o)
  %i.p = shl nsw i64 %.016.i10, 2                 ; 2 uses
  %i.q = icmp slt i64 %i.p, %i.l
  br i1 %i.q, label %.lr.ph.i9, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_.exit11, !llvm.loop !206

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_.exit11: ; preds = %.lr.ph.i9, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_.exit
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %i.d, i64 noundef %i.l, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %0, ptr %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp slt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %common.ret26, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.sroa.08.018.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not19.i = icmp eq ptr %.sroa.08.018.i, %1
  br i1 %.not19.i, label %common.ret26, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.08.021.i = phi ptr [ %.sroa.08.018.i, %.lr.ph.i ], [ %.sroa.08.0.i, %bb.f ] ; 7 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.08.021.i, %bb.f ] ; 3 uses
  %i.h = load i64, ptr %.sroa.08.021.i, align 8, !tbaa !97 ; 6 uses
  %i.i = load i64, ptr %0, align 8, !tbaa !97     ; 2 uses
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge.i, label %bb.d

._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge.i: ; preds = %bb.c
  %.sroa.4.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 24
  %.sroa.4.0.copyload.pre.i = load i32, ptr %.sroa.4.0..sroa_idx.phi.trans.insert.i, align 8
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ult i64 %i.i, %i.h
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 24
  %.sroa.5.0.copyload.i.pre.i = load i32, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i, align 8 ; 4 uses
  br i1 %i.k, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i.preheader, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i.preheader: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.d
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i: ; preds = %bb.d
  %i.l = load i32, ptr %i.g, align 8, !tbaa !99
  %i.m = icmp slt i32 %.sroa.5.0.copyload.i.pre.i, %i.l
  br i1 %i.m, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge.i
  %.sroa.4.0.copyload.i = phi i32 [ %.sroa.4.0.copyload.pre.i, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge.i ], [ %.sroa.5.0.copyload.i.pre.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i ]
  %i.n = ptrtoint ptr %.sroa.08.021.i to i64
  %i.o = sub i64 %i.n, %i.b
  %i.p = ashr exact i64 %i.o, 4                   ; 5 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i
  %i.r = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 32 ; 2 uses
  %xtraiter = and i64 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader.i ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.r, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.08.021.i, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.s = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.u = load i64, ptr %i.s, align 8, !tbaa !88
  store i64 %i.u, ptr %i.t, align 8, !tbaa !97
  %i.v = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !3
  %i.x = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8
  store i32 %i.w, ptr %i.x, align 8, !tbaa !99
  %i.y = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !207

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.y, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.t, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.021.i, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.z = icmp ult i64 %i.p, 4
  br i1 %i.z, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.aa = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.ab = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !88
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !97
  %i.ad = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !3
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !99
  %i.ag = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.ah = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !88
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !97
  %i.aj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !3
  %i.al = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !99
  %i.am = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48
  %i.an = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !88
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !97
  %i.ap = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !3
  %i.ar = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !99
  %i.as = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.au = load i64, ptr %i.as, align 8, !tbaa !88
  store i64 %i.au, ptr %i.at, align 8, !tbaa !97
  %i.av = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !3
  %i.ax = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !99
  %i.ay = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.az = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.az, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, !llvm.loop !208

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i
  store i64 %i.h, ptr %0, align 8, !tbaa !97
  store i32 %.sroa.4.0.copyload.i, ptr %i.g, align 8, !tbaa !99
  br label %bb.f

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i.preheader, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i
  %.sroa.06.0.i.i = phi ptr [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i ], [ %.sroa.08.021.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i.preheader ] ; 7 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.06.0.i.i, i64 -16 ; 2 uses
  %i.ba = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !97 ; 3 uses
  %i.bb = icmp ult i64 %i.h, %i.ba
  br i1 %i.bb, label %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i, label %bb.e

._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.sroa.06.0.i.i, i64 -8
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !3
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i
  %i.bc = icmp ult i64 %i.ba, %i.h
  br i1 %i.bc, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i: ; preds = %bb.e
  %i.bd = getelementptr inbounds i8, ptr %.sroa.06.0.i.i, i64 -8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !99 ; 2 uses
  %i.bf = icmp slt i32 %.sroa.5.0.copyload.i.pre.i, %i.be
  br i1 %i.bf, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i
  %i.bg = phi i32 [ %.pre.i.i, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i ], [ %i.be, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i ]
  store i64 %i.ba, ptr %.sroa.06.0.i.i, align 8, !tbaa !97
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !99
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i, !llvm.loop !209

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i, %bb.e
  store i64 %i.h, ptr %.sroa.06.0.i.i, align 8, !tbaa !97
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.pre.i, ptr %i.bi, align 8, !tbaa !99
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
  %.sroa.08.0.i = getelementptr inbounds nuw i8, ptr %.sroa.08.021.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.08.0.i, %1
  br i1 %.not.i, label %common.ret26, label %bb.c, !llvm.loop !210

common.ret26:                                     ; preds = %.preheader.i, %bb.b, %bb.f, %bb.g
  ret void

bb.g:                                             ; preds = %bb.a
  %i.bj = lshr i64 %i.d, 1                        ; 2 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bj ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %0, ptr %i.bk)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %i.bk, ptr %1)
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.a, %i.bl
  %i.bn = ashr exact i64 %i.bm, 4
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_(ptr %0, ptr %i.bk, ptr %1, i64 noundef %i.bj, i64 noundef %i.bn)
  br label %common.ret26
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 3 uses
  %i.g = getelementptr inbounds [16 x i8], ptr %0, i64 %i.f ; 5 uses
  %i.h = icmp sgt i64 %i.f, %3
  br i1 %i.h, label %bb.b, label %common.ret

common.ret25:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3)
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 4
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_SC_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret25

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_T1_(ptr %0, ptr %i.g, ptr %1, ptr noundef %2)
  br label %common.ret25
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #5 comdat {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4                   ; 5 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt21__move_merge_adaptiveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.b
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.012.i.i.i.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.prol ], [ %i.d, %.lr.ph.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.prol ], [ %5, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.prol = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.prol ], [ %0, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.f = load i64, ptr %.0910.i.i.i.i.i.prol, align 8, !tbaa !88
  store i64 %i.f, ptr %.0811.i.i.i.i.i.prol, align 8, !tbaa !97
  %i.g = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.prol, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 8
  store i32 %i.h, ptr %i.i, align 8, !tbaa !99
  %i.j = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 16 ; 3 uses
  %i.l = add nsw i64 %.012.i.i.i.i.i.prol, -1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !211

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.unr = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %5, %.lr.ph.i.i.i.i.i.preheader ], [ %i.k, %.lr.ph.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.unr = phi ptr [ %0, %.lr.ph.i.i.i.i.i.preheader ], [ %i.j, %.lr.ph.i.i.i.i.i.prol ]
  %.lcssa99.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.k, %.lr.ph.i.i.i.i.i.prol ]
  %i.m = icmp ult i64 %i.d, 4
  br i1 %i.m, label %.lr.ph.i.preheader, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.n = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !88
  store i64 %i.n, ptr %.0811.i.i.i.i.i, align 8, !tbaa !97
  %i.o = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !3
  %i.q = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i32 %i.p, ptr %i.q, align 8, !tbaa !99
  %i.r = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.t = load i64, ptr %i.r, align 8, !tbaa !88
  store i64 %i.t, ptr %i.s, align 8, !tbaa !97
  %i.u = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !3
  %i.w = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  store i32 %i.v, ptr %i.w, align 8, !tbaa !99
  %i.x = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.z = load i64, ptr %i.x, align 8, !tbaa !88
  store i64 %i.z, ptr %i.y, align 8, !tbaa !97
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !99
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !88
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !97
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 56
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !99
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64 ; 2 uses
  %i.al = add nsw i64 %.012.i.i.i.i.i, -4
  %i.am = icmp sgt i64 %.012.i.i.i.i.i, 4
  br i1 %i.am, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i.preheader, !llvm.loop !212

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa99 = phi ptr [ %.lcssa99.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ak, %.lr.ph.i.i.i.i.i ] ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.e
  %.028.i = phi ptr [ %.1.i, %bb.e ], [ %5, %.lr.ph.i.preheader ] ; 8 uses
  %.sroa.0.026.i = phi ptr [ %i.bc, %bb.e ], [ %0, %.lr.ph.i.preheader ] ; 7 uses
  %.sroa.016.025.i = phi ptr [ %.sroa.016.1.i, %bb.e ], [ %1, %.lr.ph.i.preheader ] ; 6 uses
  %.not20.i = icmp eq ptr %.sroa.016.025.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.an = load i64, ptr %.sroa.016.025.i, align 8, !tbaa !97 ; 3 uses
  %i.ao = load i64, ptr %.028.i, align 8, !tbaa !97 ; 3 uses
  %i.ap = icmp ult i64 %i.an, %i.ao
  br i1 %i.ap, label %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.thread_crit_edge.i, label %bb.d

._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.thread_crit_edge.i: ; preds = %bb.c
  %.phi.trans.insert32.i = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 8
  %.pre33.i = load i32, ptr %.phi.trans.insert32.i, align 8, !tbaa !3
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %i.aq = icmp ult i64 %i.ao, %i.an
  br i1 %i.aq, label %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.thread19_crit_edge.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.i

._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.thread19_crit_edge.i: ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.028.i, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !3
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.thread19.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.i: ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !99 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.028.i, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !99 ; 2 uses
  %i.av = icmp slt i32 %i.as, %i.au
  br i1 %i.av, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.thread19.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.i, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.thread_crit_edge.i
  %i.aw = phi i32 [ %.pre33.i, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.thread_crit_edge.i ], [ %i.as, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.i ]
  store i64 %i.an, ptr %.sroa.0.026.i, align 8, !tbaa !97
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i, i64 8
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !99
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 16
  br label %bb.e

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.thread19.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.i, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.thread19_crit_edge.i
  %i.az = phi i32 [ %.pre.i, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.thread19_crit_edge.i ], [ %i.au, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.i ]
  store i64 %i.ao, ptr %.sroa.0.026.i, align 8, !tbaa !97
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i, i64 8
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !99
  %i.bb = getelementptr inbounds nuw i8, ptr %.028.i, i64 16
  br label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.thread19.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.thread.i
  %.sroa.016.1.i = phi ptr [ %i.ay, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.thread.i ], [ %.sroa.016.025.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.thread19.i ]
  %.1.i = phi ptr [ %.028.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.thread.i ], [ %i.bb, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEES6_EEbT_T0_.exit.thread19.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i, i64 16
  %.not.i = icmp eq ptr %.1.i, %.lcssa99
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !213

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bd = ptrtoint ptr %.lcssa99 to i64
  %i.be = ptrtoint ptr %.028.i to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 4                 ; 5 uses
  %i.bh = icmp sgt i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt21__move_merge_adaptiveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.critedge.i
  %xtraiter100 = and i64 %i.bg, 3                 ; 2 uses
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.012.i.i.i.i.i.i.prol = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.bg, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.i.prol = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.026.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.prol = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.prol ], [ %.028.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter102 = phi i64 [ %prol.iter102.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.bi = load i64, ptr %.0910.i.i.i.i.i.i.prol, align 8, !tbaa !88
  store i64 %i.bi, ptr %.0811.i.i.i.i.i.i.prol, align 8, !tbaa !97
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !3
  %i.bl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 8
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !99
  %i.bm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.bo = add nsw i64 %.012.i.i.i.i.i.i.prol, -1  ; 2 uses
  %prol.iter102.next = add i64 %prol.iter102, 1   ; 2 uses
  %prol.iter102.cmp.not = icmp eq i64 %prol.iter102.next, %xtraiter100
  br i1 %prol.iter102.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !214

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.i.unr = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.026.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.i.unr = phi ptr [ %.028.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bp = icmp ult i64 %i.bg, 4
  br i1 %i.bp, label %_ZSt21__move_merge_adaptiveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.bq = load i64, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !88
  store i64 %i.bq, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !97
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !3
  %i.bt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  store i32 %i.bs, ptr %i.bt, align 8, !tbaa !99
  %i.bu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !88
  store i64 %i.bw, ptr %i.bv, align 8, !tbaa !97
  %i.bx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !3
  %i.bz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !99
  %i.ca = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !88
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !97
  %i.cd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 40
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !3
  %i.cf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 40
  store i32 %i.ce, ptr %i.cf, align 8, !tbaa !99
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !88
  store i64 %i.ci, ptr %i.ch, align 8, !tbaa !97
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 56
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !3
  %i.cl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 56
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !99
  %i.cm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64
  %i.cn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64
  %i.co = add nsw i64 %.012.i.i.i.i.i.i, -4
  %i.cp = icmp sgt i64 %.012.i.i.i.i.i.i, 4
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit, !llvm.loop !212

bb.f:                                             ; preds = %bb.a
  %i.cq = ptrtoint ptr %2 to i64
  %i.cr = ptrtoint ptr %1 to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 4                 ; 5 uses
  %i.cu = icmp sgt i64 %i.ct, 0
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i20.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit24

.lr.ph.i.i.i.i.i20.preheader:                     ; preds = %bb.f
  %xtraiter103 = and i64 %i.ct, 3                 ; 2 uses
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod104.not, label %.lr.ph.i.i.i.i.i20.prol.loopexit, label %.lr.ph.i.i.i.i.i20.prol

.lr.ph.i.i.i.i.i20.prol:                          ; preds = %.lr.ph.i.i.i.i.i20.preheader, %.lr.ph.i.i.i.i.i20.prol
  %.012.i.i.i.i.i21.prol = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i20.prol ], [ %i.ct, %.lr.ph.i.i.i.i.i20.preheader ]
  %.0811.i.i.i.i.i22.prol = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i20.prol ], [ %5, %.lr.ph.i.i.i.i.i20.preheader ] ; 3 uses
  %.0910.i.i.i.i.i23.prol = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i20.prol ], [ %1, %.lr.ph.i.i.i.i.i20.preheader ] ; 3 uses
  %prol.iter105 = phi i64 [ %prol.iter105.next, %.lr.ph.i.i.i.i.i20.prol ], [ 0, %.lr.ph.i.i.i.i.i20.preheader ]
  %i.cv = load i64, ptr %.0910.i.i.i.i.i23.prol, align 8, !tbaa !88
  store i64 %i.cv, ptr %.0811.i.i.i.i.i22.prol, align 8, !tbaa !97
  %i.cw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.prol, i64 8
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !3
  %i.cy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.prol, i64 8
  store i32 %i.cx, ptr %i.cy, align 8, !tbaa !99
  %i.cz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.prol, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.prol, i64 16 ; 3 uses
  %i.db = add nsw i64 %.012.i.i.i.i.i21.prol, -1  ; 2 uses
  %prol.iter105.next = add i64 %prol.iter105, 1   ; 2 uses
  %prol.iter105.cmp.not = icmp eq i64 %prol.iter105.next, %xtraiter103
  br i1 %prol.iter105.cmp.not, label %.lr.ph.i.i.i.i.i20.prol.loopexit, label %.lr.ph.i.i.i.i.i20.prol, !llvm.loop !215

.lr.ph.i.i.i.i.i20.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i20.prol, %.lr.ph.i.i.i.i.i20.preheader
  %.012.i.i.i.i.i21.unr = phi i64 [ %i.ct, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.db, %.lr.ph.i.i.i.i.i20.prol ]
  %.0811.i.i.i.i.i22.unr = phi ptr [ %5, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.da, %.lr.ph.i.i.i.i.i20.prol ]
  %.0910.i.i.i.i.i23.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.cz, %.lr.ph.i.i.i.i.i20.prol ]
  %.lcssa94.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.da, %.lr.ph.i.i.i.i.i20.prol ]
  %i.dc = icmp ult i64 %i.ct, 4
  br i1 %i.dc, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit24, label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.lr.ph.i.i.i.i.i20.prol.loopexit, %.lr.ph.i.i.i.i.i20
  %.012.i.i.i.i.i21 = phi i64 [ %i.eb, %.lr.ph.i.i.i.i.i20 ], [ %.012.i.i.i.i.i21.unr, %.lr.ph.i.i.i.i.i20.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i22 = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i20 ], [ %.0811.i.i.i.i.i22.unr, %.lr.ph.i.i.i.i.i20.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i23 = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i20 ], [ %.0910.i.i.i.i.i23.unr, %.lr.ph.i.i.i.i.i20.prol.loopexit ] ; 9 uses
  %i.dd = load i64, ptr %.0910.i.i.i.i.i23, align 8, !tbaa !88
  store i64 %i.dd, ptr %.0811.i.i.i.i.i22, align 8, !tbaa !97
  %i.de = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 8
  %i.df = load i32, ptr %i.de, align 8, !tbaa !3
  %i.dg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 8
  store i32 %i.df, ptr %i.dg, align 8, !tbaa !99
  %i.dh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 16
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !88
  store i64 %i.dj, ptr %i.di, align 8, !tbaa !97
  %i.dk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 24
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !3
  %i.dm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 24
  store i32 %i.dl, ptr %i.dm, align 8, !tbaa !99
  %i.dn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 32
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !88
  store i64 %i.dp, ptr %i.do, align 8, !tbaa !97
  %i.dq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 40
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !3
  %i.ds = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 40
  store i32 %i.dr, ptr %i.ds, align 8, !tbaa !99
  %i.dt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 48
  %i.du = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 48
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !88
  store i64 %i.dv, ptr %i.du, align 8, !tbaa !97
  %i.dw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 56
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !3
  %i.dy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 56
  store i32 %i.dx, ptr %i.dy, align 8, !tbaa !99
  %i.dz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 64
  %i.ea = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 64 ; 2 uses
  %i.eb = add nsw i64 %.012.i.i.i.i.i21, -4
  %i.ec = icmp sgt i64 %.012.i.i.i.i.i21, 4
  br i1 %i.ec, label %.lr.ph.i.i.i.i.i20, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit24, !llvm.loop !212

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit24: ; preds = %.lr.ph.i.i.i.i.i20.prol.loopexit, %.lr.ph.i.i.i.i.i20, %bb.f
  %.08.lcssa.i.i.i.i.i19 = phi ptr [ %5, %bb.f ], [ %.lcssa94.unr, %.lr.ph.i.i.i.i.i20.prol.loopexit ], [ %i.ea, %.lr.ph.i.i.i.i.i20 ] ; 5 uses
  %i.ed = icmp eq ptr %0, %1
  br i1 %i.ed, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit24
  %i.ee = ptrtoint ptr %.08.lcssa.i.i.i.i.i19 to i64
  %i.ef = ptrtoint ptr %5 to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = ashr exact i64 %i.eg, 4                 ; 5 uses
  %i.ei = icmp sgt i64 %i.eh, 0
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.i28.preheader, label %_ZSt21__move_merge_adaptiveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit

.lr.ph.i.i.i.i.i.i28.preheader:                   ; preds = %bb.g
  %xtraiter109 = and i64 %i.eh, 3                 ; 2 uses
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod110.not, label %.lr.ph.i.i.i.i.i.i28.prol.loopexit, label %.lr.ph.i.i.i.i.i.i28.prol

.lr.ph.i.i.i.i.i.i28.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i28.preheader, %.lr.ph.i.i.i.i.i.i28.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.ep, %.lr.ph.i.i.i.i.i.i28.prol ], [ %i.eh, %.lr.ph.i.i.i.i.i.i28.preheader ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i.i28.prol ], [ %2, %.lr.ph.i.i.i.i.i.i28.preheader ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i28.prol ], [ %.08.lcssa.i.i.i.i.i19, %.lr.ph.i.i.i.i.i.i28.preheader ] ; 2 uses
  %prol.iter111 = phi i64 [ %prol.iter111.next, %.lr.ph.i.i.i.i.i.i28.prol ], [ 0, %.lr.ph.i.i.i.i.i.i28.preheader ]
  %i.ej = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.ek = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !88
  store i64 %i.el, ptr %i.ek, align 8, !tbaa !97
  %i.em = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8
  %i.en = load i32, ptr %i.em, align 8, !tbaa !3
  %i.eo = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8
  store i32 %i.en, ptr %i.eo, align 8, !tbaa !99
  %i.ep = add nsw i64 %.010.i.i.i.i.i.i.prol, -1  ; 2 uses
  %prol.iter111.next = add i64 %prol.iter111, 1   ; 2 uses
  %prol.iter111.cmp.not = icmp eq i64 %prol.iter111.next, %xtraiter109
  br i1 %prol.iter111.cmp.not, label %.lr.ph.i.i.i.i.i.i28.prol.loopexit, label %.lr.ph.i.i.i.i.i.i28.prol, !llvm.loop !216

.lr.ph.i.i.i.i.i.i28.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i28.prol, %.lr.ph.i.i.i.i.i.i28.preheader
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i.i28.preheader ], [ %i.ep, %.lr.ph.i.i.i.i.i.i28.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i.i28.preheader ], [ %i.ek, %.lr.ph.i.i.i.i.i.i28.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.08.lcssa.i.i.i.i.i19, %.lr.ph.i.i.i.i.i.i28.preheader ], [ %i.ej, %.lr.ph.i.i.i.i.i.i28.prol ]
  %i.eq = icmp ult i64 %i.eh, 4
  br i1 %i.eq, label %_ZSt21__move_merge_adaptiveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit, label %.lr.ph.i.i.i.i.i.i28

.lr.ph.i.i.i.i.i.i28:                             ; preds = %.lr.ph.i.i.i.i.i.i28.prol.loopexit, %.lr.ph.i.i.i.i.i.i28
  %.010.i.i.i.i.i.i = phi i64 [ %i.fp, %.lr.ph.i.i.i.i.i.i28 ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i28.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.fk, %.lr.ph.i.i.i.i.i.i28 ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i28.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.fj, %.lr.ph.i.i.i.i.i.i28 ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i28.prol.loopexit ] ; 8 uses
  %i.er = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.es = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.et = load i64, ptr %i.er, align 8, !tbaa !88
  store i64 %i.et, ptr %i.es, align 8, !tbaa !97
  %i.eu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !3
  %i.ew = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store i32 %i.ev, ptr %i.ew, align 8, !tbaa !99
  %i.ex = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.ey = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !88
  store i64 %i.ez, ptr %i.ey, align 8, !tbaa !97
  %i.fa = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !3
  %i.fc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  store i32 %i.fb, ptr %i.fc, align 8, !tbaa !99
  %i.fd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48
  %i.fe = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !88
  store i64 %i.ff, ptr %i.fe, align 8, !tbaa !97
  %i.fg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !3
  %i.fi = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  store i32 %i.fh, ptr %i.fi, align 8, !tbaa !99
  %i.fj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !88
  store i64 %i.fl, ptr %i.fk, align 8, !tbaa !97
  %i.fm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !3
  %i.fo = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store i32 %i.fn, ptr %i.fo, align 8, !tbaa !99
  %i.fp = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.fq = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.fq, label %.lr.ph.i.i.i.i.i.i28, label %_ZSt21__move_merge_adaptiveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit, !llvm.loop !208

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit24
  %i.fr = icmp eq ptr %5, %.08.lcssa.i.i.i.i.i19
  br i1 %i.fr, label %_ZSt21__move_merge_adaptiveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fs = getelementptr inbounds i8, ptr %.08.lcssa.i.i.i.i.i19, i64 -16
  br label %.outer

.outer:                                           ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.thread.i, %bb.i
  %.sroa.027.0.i.ph.pn = phi ptr [ %1, %bb.i ], [ %.sroa.027.0.i.ph, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.thread.i ] ; 3 uses
  %.sroa.0.0.i.ph = phi ptr [ %2, %bb.i ], [ %i.gb, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.thread.i ]
  %.0.i.ph = phi ptr [ %i.fs, %bb.i ], [ %.0.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.thread.i ]
  %.sroa.027.0.i.ph = getelementptr inbounds i8, ptr %.sroa.027.0.i.ph.pn, i64 -16 ; 3 uses
  %i.ft = getelementptr inbounds i8, ptr %.sroa.027.0.i.ph.pn, i64 -8
  br label %bb.j

bb.j:                                             ; preds = %.outer, %bb.m
  %.sroa.0.0.i = phi ptr [ %i.hs, %bb.m ], [ %.sroa.0.0.i.ph, %.outer ] ; 4 uses
  %.0.i = phi ptr [ %i.hv, %bb.m ], [ %.0.i.ph, %.outer ] ; 6 uses
  %i.fu = load i64, ptr %.0.i, align 8, !tbaa !97 ; 3 uses
  %i.fv = load i64, ptr %.sroa.027.0.i.ph, align 8, !tbaa !97 ; 3 uses
  %i.fw = icmp ult i64 %i.fu, %i.fv
  br i1 %i.fw, label %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.thread_crit_edge.i, label %bb.k

._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.thread_crit_edge.i: ; preds = %bb.j
  %.phi.trans.insert41.i = getelementptr inbounds i8, ptr %.sroa.027.0.i.ph.pn, i64 -8
  %.pre42.i = load i32, ptr %.phi.trans.insert41.i, align 8, !tbaa !3
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.fx = icmp ult i64 %i.fv, %i.fu
  %.phi.trans.insert.i25 = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %.pre.i27 = load i32, ptr %.phi.trans.insert.i25, align 8, !tbaa !3 ; 2 uses
  br i1 %i.fx, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.thread34.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.i: ; preds = %bb.k
  %i.fy = load i32, ptr %i.ft, align 8, !tbaa !99 ; 2 uses
  %i.fz = icmp slt i32 %.pre.i27, %i.fy
  br i1 %i.fz, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.thread34.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.i, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.thread_crit_edge.i
  %i.ga = phi i32 [ %.pre42.i, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.thread_crit_edge.i ], [ %i.fy, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.i ]
  %i.gb = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -16 ; 4 uses
  store i64 %i.fv, ptr %i.gb, align 8, !tbaa !97
  %i.gc = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8
  store i32 %i.ga, ptr %i.gc, align 8, !tbaa !99
  %i.gd = icmp eq ptr %0, %.sroa.027.0.i.ph
  br i1 %i.gd, label %bb.l, label %.outer, !llvm.loop !217

bb.l:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.thread.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 3 uses
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = ptrtoint ptr %5 to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = ashr exact i64 %i.gh, 4                 ; 5 uses
  %i.gj = icmp sgt i64 %i.gi, 0
  br i1 %i.gj, label %.lr.ph.i.i.i.i.i19.i.preheader, label %_ZSt21__move_merge_adaptiveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit

.lr.ph.i.i.i.i.i19.i.preheader:                   ; preds = %bb.l
  %xtraiter106 = and i64 %i.gi, 3                 ; 2 uses
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol

.lr.ph.i.i.i.i.i19.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i19.i.preheader, %.lr.ph.i.i.i.i.i19.i.prol
  %.010.i.i.i.i.i20.i.prol = phi i64 [ %i.gq, %.lr.ph.i.i.i.i.i19.i.prol ], [ %i.gi, %.lr.ph.i.i.i.i.i19.i.preheader ]
  %.069.i.i.i.i.i21.i.prol = phi ptr [ %i.gl, %.lr.ph.i.i.i.i.i19.i.prol ], [ %i.gb, %.lr.ph.i.i.i.i.i19.i.preheader ] ; 2 uses
  %.078.i.i.i.i.i22.i.prol = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i19.i.prol ], [ %i.ge, %.lr.ph.i.i.i.i.i19.i.preheader ] ; 2 uses
  %prol.iter108 = phi i64 [ %prol.iter108.next, %.lr.ph.i.i.i.i.i19.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.preheader ]
  %i.gk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22.i.prol, i64 -16 ; 3 uses
  %i.gl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21.i.prol, i64 -16 ; 3 uses
  %i.gm = load i64, ptr %i.gk, align 8, !tbaa !88
  store i64 %i.gm, ptr %i.gl, align 8, !tbaa !97
  %i.gn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22.i.prol, i64 -8
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !3
  %i.gp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21.i.prol, i64 -8
  store i32 %i.go, ptr %i.gp, align 8, !tbaa !99
  %i.gq = add nsw i64 %.010.i.i.i.i.i20.i.prol, -1 ; 2 uses
  %prol.iter108.next = add i64 %prol.iter108, 1   ; 2 uses
  %prol.iter108.cmp.not = icmp eq i64 %prol.iter108.next, %xtraiter106
  br i1 %prol.iter108.cmp.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol, !llvm.loop !218

.lr.ph.i.i.i.i.i19.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i19.i.prol, %.lr.ph.i.i.i.i.i19.i.preheader
  %.010.i.i.i.i.i20.i.unr = phi i64 [ %i.gi, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.gq, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.069.i.i.i.i.i21.i.unr = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.gl, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.078.i.i.i.i.i22.i.unr = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.gk, %.lr.ph.i.i.i.i.i19.i.prol ]
  %i.gr = icmp ult i64 %i.gi, 4
  br i1 %i.gr, label %_ZSt21__move_merge_adaptiveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit, label %.lr.ph.i.i.i.i.i19.i

.lr.ph.i.i.i.i.i19.i:                             ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i
  %.010.i.i.i.i.i20.i = phi i64 [ %i.hq, %.lr.ph.i.i.i.i.i19.i ], [ %.010.i.i.i.i.i20.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i21.i = phi ptr [ %i.hl, %.lr.ph.i.i.i.i.i19.i ], [ %.069.i.i.i.i.i21.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i22.i = phi ptr [ %i.hk, %.lr.ph.i.i.i.i.i19.i ], [ %.078.i.i.i.i.i22.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 8 uses
  %i.gs = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22.i, i64 -16
  %i.gt = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21.i, i64 -16
  %i.gu = load i64, ptr %i.gs, align 8, !tbaa !88
  store i64 %i.gu, ptr %i.gt, align 8, !tbaa !97
  %i.gv = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22.i, i64 -8
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !3
  %i.gx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21.i, i64 -8
  store i32 %i.gw, ptr %i.gx, align 8, !tbaa !99
  %i.gy = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22.i, i64 -32
  %i.gz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21.i, i64 -32
  %i.ha = load i64, ptr %i.gy, align 8, !tbaa !88
  store i64 %i.ha, ptr %i.gz, align 8, !tbaa !97
  %i.hb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22.i, i64 -24
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !3
  %i.hd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21.i, i64 -24
  store i32 %i.hc, ptr %i.hd, align 8, !tbaa !99
  %i.he = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22.i, i64 -48
  %i.hf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21.i, i64 -48
  %i.hg = load i64, ptr %i.he, align 8, !tbaa !88
  store i64 %i.hg, ptr %i.hf, align 8, !tbaa !97
  %i.hh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22.i, i64 -40
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !3
  %i.hj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21.i, i64 -40
  store i32 %i.hi, ptr %i.hj, align 8, !tbaa !99
  %i.hk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22.i, i64 -64 ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21.i, i64 -64 ; 2 uses
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !88
  store i64 %i.hm, ptr %i.hl, align 8, !tbaa !97
  %i.hn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22.i, i64 -56
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !3
  %i.hp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21.i, i64 -56
  store i32 %i.ho, ptr %i.hp, align 8, !tbaa !99
  %i.hq = add nsw i64 %.010.i.i.i.i.i20.i, -4
  %i.hr = icmp sgt i64 %.010.i.i.i.i.i20.i, 4
  br i1 %i.hr, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt21__move_merge_adaptiveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit, !llvm.loop !208

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.thread34.i: ; preds = %bb.k, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.i
  %i.hs = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -16 ; 2 uses
  store i64 %i.fu, ptr %i.hs, align 8, !tbaa !97
  %i.ht = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8
  store i32 %.pre.i27, ptr %i.ht, align 8, !tbaa !99
  %i.hu = icmp eq ptr %5, %.0.i
  br i1 %i.hu, label %_ZSt21__move_merge_adaptiveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.thread34.i
  %i.hv = getelementptr inbounds i8, ptr %.0.i, i64 -16
  br label %bb.j, !llvm.loop !217

_ZSt21__move_merge_adaptiveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiENS_17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.thread34.i, %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i, %.lr.ph.i.i.i.i.i.i28.prol.loopexit, %.lr.ph.i.i.i.i.i.i28, %bb.b, %bb.l, %bb.h, %bb.g, %.critedge.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4
  %.not41 = icmp slt i64 %i.d, %2
  br i1 %.not41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nsw i64 %2, 4                       ; 2 uses
  %switch = icmp ult i64 %2, 2
  br i1 %switch, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit.us, label %.lr.ph.i

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit.us: ; preds = %.lr.ph, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit.us
  %.sroa.038.042.us = phi ptr [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit.us ], [ %0, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.038.042.us, i64 %.idx ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = sub i64 %i.a, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %.not.us = icmp slt i64 %i.h, %2
  br i1 %.not.us, label %._crit_edge, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit.us, !llvm.loop !219

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit.loopexit
  %i.i = phi i64 [ %i.bn, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit.loopexit ], [ %i.b, %.lr.ph ]
  %.sroa.038.042 = phi ptr [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit.loopexit ], [ %0, %.lr.ph ] ; 6 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.038.042, i64 %.idx ; 4 uses
  %.sroa.08.018.i = getelementptr inbounds nuw i8, ptr %.sroa.038.042, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.038.042, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.08.021.i = phi ptr [ %.sroa.08.018.i, %.lr.ph.i ], [ %.sroa.08.0.i, %bb.e ] ; 7 uses
  %.pn20.i = phi ptr [ %.sroa.038.042, %.lr.ph.i ], [ %.sroa.08.021.i, %bb.e ] ; 3 uses
  %i.l = load i64, ptr %.sroa.08.021.i, align 8, !tbaa !97 ; 6 uses
  %i.m = load i64, ptr %.sroa.038.042, align 8, !tbaa !97 ; 2 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge.i, label %bb.c

._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge.i: ; preds = %bb.b
  %.sroa.4.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 24
  %.sroa.4.0.copyload.pre.i = load i32, ptr %.sroa.4.0..sroa_idx.phi.trans.insert.i, align 8
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ult i64 %i.m, %i.l
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 24
  %.sroa.5.0.copyload.i.pre.i = load i32, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i, align 8 ; 4 uses
  br i1 %i.o, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i.preheader, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i.preheader: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.c
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i: ; preds = %bb.c
  %i.p = load i32, ptr %i.k, align 8, !tbaa !99
  %i.q = icmp slt i32 %.sroa.5.0.copyload.i.pre.i, %i.p
  br i1 %i.q, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge.i
  %.sroa.4.0.copyload.i = phi i32 [ %.sroa.4.0.copyload.pre.i, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge.i ], [ %.sroa.5.0.copyload.i.pre.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i ]
  %i.r = ptrtoint ptr %.sroa.08.021.i to i64
  %i.s = sub i64 %i.r, %i.i
  %i.t = ashr exact i64 %i.s, 4                   ; 5 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.preheader.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i
  %i.v = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 32 ; 2 uses
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.t, %.lr.ph.i.i.i.i.i.preheader.i ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.v, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.08.021.i, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.w = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.y = load i64, ptr %i.w, align 8, !tbaa !88
  store i64 %i.y, ptr %i.x, align 8, !tbaa !97
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !3
  %i.ab = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !99
  %i.ac = add nsw i64 %.010.i.i.i.i.i.i.prol, -1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !220

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.021.i, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ad = icmp ult i64 %i.t, 4
  br i1 %i.ad, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !88
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !97
  %i.ah = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !3
  %i.aj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !99
  %i.ak = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.al = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !88
  store i64 %i.am, ptr %i.al, align 8, !tbaa !97
  %i.an = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !3
  %i.ap = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !99
  %i.aq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48
  %i.ar = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !88
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !97
  %i.at = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.au = load i32, ptr %i.at, align 8, !tbaa !3
  %i.av = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  store i32 %i.au, ptr %i.av, align 8, !tbaa !99
  %i.aw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !88
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !97
  %i.az = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !3
  %i.bb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !99
  %i.bc = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.bd = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, !llvm.loop !208

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i
  store i64 %i.l, ptr %.sroa.038.042, align 8, !tbaa !97
  store i32 %.sroa.4.0.copyload.i, ptr %i.k, align 8, !tbaa !99
  br label %bb.e

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i.preheader, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i
  %.sroa.06.0.i.i = phi ptr [ %.sroa.0.0.i.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i ], [ %.sroa.08.021.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i.preheader ] ; 7 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.06.0.i.i, i64 -16 ; 2 uses
  %i.be = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !97 ; 3 uses
  %i.bf = icmp ult i64 %i.l, %i.be
  br i1 %i.bf, label %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i, label %bb.d

._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.sroa.06.0.i.i, i64 -8
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !3
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i
  %i.bg = icmp ult i64 %i.be, %i.l
  br i1 %i.bg, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i: ; preds = %bb.d
  %i.bh = getelementptr inbounds i8, ptr %.sroa.06.0.i.i, i64 -8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !99 ; 2 uses
  %i.bj = icmp slt i32 %.sroa.5.0.copyload.i.pre.i, %i.bi
  br i1 %i.bj, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i
  %i.bk = phi i32 [ %.pre.i.i, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i ], [ %i.bi, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i ]
  store i64 %i.be, ptr %.sroa.06.0.i.i, align 8, !tbaa !97
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !99
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i, !llvm.loop !209

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i, %bb.d
  store i64 %i.l, ptr %.sroa.06.0.i.i, align 8, !tbaa !97
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.pre.i, ptr %i.bm, align 8, !tbaa !99
  br label %bb.e

bb.e:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
  %.sroa.08.0.i = getelementptr inbounds nuw i8, ptr %.sroa.08.021.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.08.0.i, %i.j
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit.loopexit, label %bb.b, !llvm.loop !210

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit.loopexit: ; preds = %bb.e
  %i.bn = ptrtoint ptr %i.j to i64                ; 3 uses
  %i.bo = sub i64 %i.a, %i.bn
  %i.bp = ashr exact i64 %i.bo, 4
  %.not = icmp slt i64 %i.bp, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !219

._crit_edge:                                      ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit.loopexit, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit.us, %bb.a
  %.sroa.038.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit.us ], [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit.loopexit ] ; 6 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit.us ], [ %i.bn, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit.loopexit ]
  %i.bq = icmp eq ptr %.sroa.038.0.lcssa, %1
  br i1 %i.bq, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit37, label %.preheader.i6

.preheader.i6:                                    ; preds = %._crit_edge
  %.sroa.08.018.i7 = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa, i64 16 ; 2 uses
  %.not19.i8 = icmp eq ptr %.sroa.08.018.i7, %1
  br i1 %.not19.i8, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit37, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %.preheader.i6
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa, i64 8 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i9
  %.sroa.08.021.i10 = phi ptr [ %.sroa.08.018.i7, %.lr.ph.i9 ], [ %.sroa.08.0.i20, %bb.i ] ; 7 uses
  %.pn20.i11 = phi ptr [ %.sroa.038.0.lcssa, %.lr.ph.i9 ], [ %.sroa.08.021.i10, %bb.i ] ; 3 uses
  %i.bs = load i64, ptr %.sroa.08.021.i10, align 8, !tbaa !97 ; 6 uses
  %i.bt = load i64, ptr %.sroa.038.0.lcssa, align 8, !tbaa !97 ; 2 uses
  %i.bu = icmp ult i64 %i.bs, %i.bt
  br i1 %i.bu, label %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge.i34, label %bb.g

._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge.i34: ; preds = %bb.f
  %.sroa.4.0..sroa_idx.phi.trans.insert.i35 = getelementptr inbounds nuw i8, ptr %.pn20.i11, i64 24
  %.sroa.4.0.copyload.pre.i36 = load i32, ptr %.sroa.4.0..sroa_idx.phi.trans.insert.i35, align 8
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i26

bb.g:                                             ; preds = %bb.f
  %i.bv = icmp ult i64 %i.bt, %i.bs
  %.sroa.5.0..sroa_idx.i.phi.trans.insert.i12 = getelementptr inbounds nuw i8, ptr %.pn20.i11, i64 24
  %.sroa.5.0.copyload.i.pre.i13 = load i32, ptr %.sroa.5.0..sroa_idx.i.phi.trans.insert.i12, align 8 ; 4 uses
  br i1 %i.bv, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i15.preheader, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i14

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i15.preheader: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i14, %bb.g
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i15

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i14: ; preds = %bb.g
  %i.bw = load i32, ptr %i.br, align 8, !tbaa !99
  %i.bx = icmp slt i32 %.sroa.5.0.copyload.i.pre.i13, %i.bw
  br i1 %i.bx, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i26, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i15.preheader

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i26: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i14, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge.i34
  %.sroa.4.0.copyload.i27 = phi i32 [ %.sroa.4.0.copyload.pre.i36, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge.i34 ], [ %.sroa.5.0.copyload.i.pre.i13, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i14 ]
  %i.by = ptrtoint ptr %.sroa.08.021.i10 to i64
  %i.bz = sub i64 %i.by, %.lcssa
  %i.ca = ashr exact i64 %i.bz, 4                 ; 5 uses
  %i.cb = icmp sgt i64 %i.ca, 0
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i.preheader.i29, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i28

.lr.ph.i.i.i.i.i.preheader.i29:                   ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i26
  %i.cc = getelementptr inbounds nuw i8, ptr %.pn20.i11, i64 32 ; 2 uses
  %xtraiter77 = and i64 %i.ca, 3                  ; 2 uses
  %lcmp.mod78.not = icmp eq i64 %xtraiter77, 0
  br i1 %lcmp.mod78.not, label %.lr.ph.i.i.i.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i.i.i.i30.prol

.lr.ph.i.i.i.i.i.i30.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i29, %.lr.ph.i.i.i.i.i.i30.prol
  %.010.i.i.i.i.i.i31.prol = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.i30.prol ], [ %i.ca, %.lr.ph.i.i.i.i.i.preheader.i29 ]
  %.069.i.i.i.i.i.i32.prol = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i30.prol ], [ %i.cc, %.lr.ph.i.i.i.i.i.preheader.i29 ] ; 2 uses
  %.078.i.i.i.i.i.i33.prol = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i30.prol ], [ %.sroa.08.021.i10, %.lr.ph.i.i.i.i.i.preheader.i29 ] ; 2 uses
  %prol.iter79 = phi i64 [ %prol.iter79.next, %.lr.ph.i.i.i.i.i.i30.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i29 ]
  %i.cd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i33.prol, i64 -16 ; 3 uses
  %i.ce = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i32.prol, i64 -16 ; 3 uses
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !88
  store i64 %i.cf, ptr %i.ce, align 8, !tbaa !97
  %i.cg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i33.prol, i64 -8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !3
  %i.ci = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i32.prol, i64 -8
  store i32 %i.ch, ptr %i.ci, align 8, !tbaa !99
  %i.cj = add nsw i64 %.010.i.i.i.i.i.i31.prol, -1 ; 2 uses
  %prol.iter79.next = add i64 %prol.iter79, 1     ; 2 uses
  %prol.iter79.cmp.not = icmp eq i64 %prol.iter79.next, %xtraiter77
  br i1 %prol.iter79.cmp.not, label %.lr.ph.i.i.i.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i.i.i.i30.prol, !llvm.loop !221

.lr.ph.i.i.i.i.i.i30.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i30.prol, %.lr.ph.i.i.i.i.i.preheader.i29
  %.010.i.i.i.i.i.i31.unr = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i.preheader.i29 ], [ %i.cj, %.lr.ph.i.i.i.i.i.i30.prol ]
  %.069.i.i.i.i.i.i32.unr = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.preheader.i29 ], [ %i.ce, %.lr.ph.i.i.i.i.i.i30.prol ]
  %.078.i.i.i.i.i.i33.unr = phi ptr [ %.sroa.08.021.i10, %.lr.ph.i.i.i.i.i.preheader.i29 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i30.prol ]
  %i.ck = icmp ult i64 %i.ca, 4
  br i1 %i.ck, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i28, label %.lr.ph.i.i.i.i.i.i30

.lr.ph.i.i.i.i.i.i30:                             ; preds = %.lr.ph.i.i.i.i.i.i30.prol.loopexit, %.lr.ph.i.i.i.i.i.i30
  %.010.i.i.i.i.i.i31 = phi i64 [ %i.dj, %.lr.ph.i.i.i.i.i.i30 ], [ %.010.i.i.i.i.i.i31.unr, %.lr.ph.i.i.i.i.i.i30.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i32 = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.i30 ], [ %.069.i.i.i.i.i.i32.unr, %.lr.ph.i.i.i.i.i.i30.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i33 = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i30 ], [ %.078.i.i.i.i.i.i33.unr, %.lr.ph.i.i.i.i.i.i30.prol.loopexit ] ; 8 uses
  %i.cl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i33, i64 -16
  %i.cm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i32, i64 -16
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !88
  store i64 %i.cn, ptr %i.cm, align 8, !tbaa !97
  %i.co = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i33, i64 -8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !3
  %i.cq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i32, i64 -8
  store i32 %i.cp, ptr %i.cq, align 8, !tbaa !99
  %i.cr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i33, i64 -32
  %i.cs = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i32, i64 -32
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !88
  store i64 %i.ct, ptr %i.cs, align 8, !tbaa !97
  %i.cu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i33, i64 -24
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !3
  %i.cw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i32, i64 -24
  store i32 %i.cv, ptr %i.cw, align 8, !tbaa !99
  %i.cx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i33, i64 -48
  %i.cy = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i32, i64 -48
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !88
  store i64 %i.cz, ptr %i.cy, align 8, !tbaa !97
  %i.da = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i33, i64 -40
  %i.db = load i32, ptr %i.da, align 8, !tbaa !3
  %i.dc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i32, i64 -40
  store i32 %i.db, ptr %i.dc, align 8, !tbaa !99
  %i.dd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i33, i64 -64 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i32, i64 -64 ; 2 uses
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !88
  store i64 %i.df, ptr %i.de, align 8, !tbaa !97
  %i.dg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i33, i64 -56
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !3
  %i.di = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i32, i64 -56
  store i32 %i.dh, ptr %i.di, align 8, !tbaa !99
  %i.dj = add nsw i64 %.010.i.i.i.i.i.i31, -4
  %i.dk = icmp sgt i64 %.010.i.i.i.i.i.i31, 4
  br i1 %i.dk, label %.lr.ph.i.i.i.i.i.i30, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i28, !llvm.loop !208

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i28: ; preds = %.lr.ph.i.i.i.i.i.i30.prol.loopexit, %.lr.ph.i.i.i.i.i.i30, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i26
  store i64 %i.bs, ptr %.sroa.038.0.lcssa, align 8, !tbaa !97
  store i32 %.sroa.4.0.copyload.i27, ptr %i.br, align 8, !tbaa !99
  br label %bb.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i15: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i15.preheader, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i22
  %.sroa.06.0.i.i16 = phi ptr [ %.sroa.0.0.i.i17, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i22 ], [ %.sroa.08.021.i10, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i15.preheader ] ; 7 uses
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.06.0.i.i16, i64 -16 ; 2 uses
  %i.dl = load i64, ptr %.sroa.0.0.i.i17, align 8, !tbaa !97 ; 3 uses
  %i.dm = icmp ult i64 %i.bs, %i.dl
  br i1 %i.dm, label %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i23, label %bb.h

._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i23: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i15
  %.phi.trans.insert.i.i24 = getelementptr inbounds i8, ptr %.sroa.06.0.i.i16, i64 -8
  %.pre.i.i25 = load i32, ptr %.phi.trans.insert.i.i24, align 8, !tbaa !3
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i22

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i15
  %i.dn = icmp ult i64 %i.dl, %i.bs
  br i1 %i.dn, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i19, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i18

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i18: ; preds = %bb.h
  %i.do = getelementptr inbounds i8, ptr %.sroa.06.0.i.i16, i64 -8
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !99 ; 2 uses
  %i.dq = icmp slt i32 %.sroa.5.0.copyload.i.pre.i13, %i.dp
  br i1 %i.dq, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i22, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i19

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i.i22: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i18, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i23
  %i.dr = phi i32 [ %.pre.i.i25, %._ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread_crit_edge.i.i23 ], [ %i.dp, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i18 ]
  store i64 %i.dl, ptr %.sroa.06.0.i.i16, align 8, !tbaa !97
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i16, i64 8
  store i32 %i.dr, ptr %i.ds, align 8, !tbaa !99
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread17.i15, !llvm.loop !209

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i19: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i18, %bb.h
  store i64 %i.bs, ptr %.sroa.06.0.i.i16, align 8, !tbaa !97
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i16, i64 8
  store i32 %.sroa.5.0.copyload.i.pre.i13, ptr %i.dt, align 8, !tbaa !99
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i19, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i28
  %.sroa.08.0.i20 = getelementptr inbounds nuw i8, ptr %.sroa.08.021.i10, i64 16 ; 2 uses
  %.not.i21 = icmp eq ptr %.sroa.08.0.i20, %1
  br i1 %.not.i21, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit37, label %bb.f, !llvm.loop !210

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit37: ; preds = %bb.i, %._crit_edge, %.preheader.i6
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %.not69 = icmp slt i64 %i.e, %i.a
  br i1 %.not69, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 4                           ; 2 uses
  %.idx60 = shl i64 %3, 5                         ; 2 uses
  %.not61 = icmp eq i64 %.idx, %.idx60
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit
  %.071 = phi ptr [ %2, %.lr.ph ], [ %.08.lcssa.i.i.i.i.i9.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ] ; 2 uses
  %.sroa.052.070 = phi ptr [ %0, %.lr.ph ], [ %i.g, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.052.070, i64 %.idx ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.sroa.052.070, i64 %.idx60 ; 4 uses
  br i1 %.not61, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.027.i = phi ptr [ %i.w, %bb.d ], [ %.071, %bb.b ] ; 5 uses
  %.sroa.019.026.i = phi ptr [ %.sroa.019.1.i, %bb.d ], [ %.sroa.052.070, %bb.b ] ; 5 uses
  %.sroa.015.025.i = phi ptr [ %.sroa.015.1.i, %bb.d ], [ %i.f, %bb.b ] ; 5 uses
  %i.h = load i64, ptr %.sroa.015.025.i, align 8, !tbaa !97 ; 3 uses
  %i.i = load i64, ptr %.sroa.019.026.i, align 8, !tbaa !97 ; 3 uses
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge.i, label %bb.c

.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge.i: ; preds = %.lr.ph.i
  %.phi.trans.insert32.i = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 8
  %.pre33.i = load i32, ptr %.phi.trans.insert32.i, align 8, !tbaa !3
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = icmp ult i64 %i.i, %i.h
  br i1 %i.k, label %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread22_crit_edge.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i

._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread22_crit_edge.i: ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !3
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread22.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !99   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !99   ; 2 uses
  %i.p = icmp slt i32 %i.m, %i.o
  br i1 %i.p, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread22.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge.i
  %i.q = phi i32 [ %.pre33.i, %.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge.i ], [ %i.m, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i ]
  store i64 %i.h, ptr %.027.i, align 8, !tbaa !97
  %i.r = getelementptr inbounds nuw i8, ptr %.027.i, i64 8
  store i32 %i.q, ptr %i.r, align 8, !tbaa !99
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 16
  br label %bb.d

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread22.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread22_crit_edge.i
  %i.t = phi i32 [ %.pre.i, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread22_crit_edge.i ], [ %i.o, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i ]
  store i64 %i.i, ptr %.027.i, align 8, !tbaa !97
  %i.u = getelementptr inbounds nuw i8, ptr %.027.i, i64 8
  store i32 %i.t, ptr %i.u, align 8, !tbaa !99
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i, i64 16
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread22.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i
  %.sroa.015.1.i = phi ptr [ %i.s, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i ], [ %.sroa.015.025.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread22.i ] ; 3 uses
  %.sroa.019.1.i = phi ptr [ %.sroa.019.026.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i ], [ %i.v, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread22.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.027.i, i64 16 ; 2 uses
  %i.x = icmp ne ptr %.sroa.019.1.i, %i.f
  %i.y = icmp ne ptr %.sroa.015.1.i, %i.g
  %or.cond.i = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !222

.critedge.i:                                      ; preds = %bb.d, %bb.b
  %.sroa.015.0.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.sroa.015.1.i, %bb.d ] ; 3 uses
  %.sroa.019.0.lcssa.i = phi ptr [ %.sroa.052.070, %bb.b ], [ %.sroa.019.1.i, %bb.d ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.071, %bb.b ], [ %i.w, %bb.d ] ; 3 uses
  %i.z = ptrtoint ptr %i.f to i64
  %i.aa = ptrtoint ptr %.sroa.019.0.lcssa.i to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 4                 ; 5 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.critedge.i
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.012.i.i.i.i.i.i.prol = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.i.prol = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.prol ], [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.prol = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.019.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.ae = load i64, ptr %.0910.i.i.i.i.i.i.prol, align 8, !tbaa !88
  store i64 %i.ae, ptr %.0811.i.i.i.i.i.i.prol, align 8, !tbaa !97
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !3
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 8
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !99
  %i.ai = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %i.ak = add nsw i64 %.012.i.i.i.i.i.i.prol, -1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !223

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.i.unr = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.i.unr = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.i.unr = phi ptr [ %.sroa.019.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.prol ]
  %.lcssa111.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.al = icmp ult i64 %i.ac, 4
  br i1 %i.al, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.bk, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.am = load i64, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !88
  store i64 %i.am, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !97
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !3
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !99
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !88
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !97
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24
  %i.au = load i32, ptr %i.at, align 8, !tbaa !3
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24
  store i32 %i.au, ptr %i.av, align 8, !tbaa !99
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !88
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !97
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 40
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !3
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 40
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !99
  %i.bc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !88
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !97
  %i.bf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 56
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !3
  %i.bh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 56
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !99
  %i.bi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.bk = add nsw i64 %.012.i.i.i.i.i.i, -4
  %i.bl = icmp sgt i64 %.012.i.i.i.i.i.i, 4
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i, !llvm.loop !212

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %.critedge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i, %.critedge.i ], [ %.lcssa111.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bj, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.bm = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.bn = ptrtoint ptr %.sroa.015.0.lcssa.i to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 4                 ; 5 uses
  %i.bq = icmp sgt i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i10.i.preheader, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit

.lr.ph.i.i.i.i.i10.i.preheader:                   ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i
  %xtraiter115 = and i64 %i.bp, 3                 ; 2 uses
  %lcmp.mod116.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod116.not, label %.lr.ph.i.i.i.i.i10.i.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i.prol

.lr.ph.i.i.i.i.i10.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i10.i.preheader, %.lr.ph.i.i.i.i.i10.i.prol
  %.012.i.i.i.i.i11.i.prol = phi i64 [ %i.bx, %.lr.ph.i.i.i.i.i10.i.prol ], [ %i.bp, %.lr.ph.i.i.i.i.i10.i.preheader ]
  %.0811.i.i.i.i.i12.i.prol = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i10.i.prol ], [ %.08.lcssa.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i10.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i13.i.prol = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i10.i.prol ], [ %.sroa.015.0.lcssa.i, %.lr.ph.i.i.i.i.i10.i.preheader ] ; 3 uses
  %prol.iter117 = phi i64 [ %prol.iter117.next, %.lr.ph.i.i.i.i.i10.i.prol ], [ 0, %.lr.ph.i.i.i.i.i10.i.preheader ]
  %i.br = load i64, ptr %.0910.i.i.i.i.i13.i.prol, align 8, !tbaa !88
  store i64 %i.br, ptr %.0811.i.i.i.i.i12.i.prol, align 8, !tbaa !97
  %i.bs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i.prol, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i.prol, i64 8
  store i32 %i.bt, ptr %i.bu, align 8, !tbaa !99
  %i.bv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i.prol, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i.prol, i64 16 ; 3 uses
  %i.bx = add nsw i64 %.012.i.i.i.i.i11.i.prol, -1 ; 2 uses
  %prol.iter117.next = add i64 %prol.iter117, 1   ; 2 uses
  %prol.iter117.cmp.not = icmp eq i64 %prol.iter117.next, %xtraiter115
  br i1 %prol.iter117.cmp.not, label %.lr.ph.i.i.i.i.i10.i.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i.prol, !llvm.loop !224

.lr.ph.i.i.i.i.i10.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i10.i.prol, %.lr.ph.i.i.i.i.i10.i.preheader
  %.012.i.i.i.i.i11.i.unr = phi i64 [ %i.bp, %.lr.ph.i.i.i.i.i10.i.preheader ], [ %i.bx, %.lr.ph.i.i.i.i.i10.i.prol ]
  %.0811.i.i.i.i.i12.i.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i10.i.preheader ], [ %i.bw, %.lr.ph.i.i.i.i.i10.i.prol ]
  %.0910.i.i.i.i.i13.i.unr = phi ptr [ %.sroa.015.0.lcssa.i, %.lr.ph.i.i.i.i.i10.i.preheader ], [ %i.bv, %.lr.ph.i.i.i.i.i10.i.prol ]
  %.lcssa112.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i10.i.preheader ], [ %i.bw, %.lr.ph.i.i.i.i.i10.i.prol ]
  %i.by = icmp ult i64 %i.bp, 4
  br i1 %i.by, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit, label %.lr.ph.i.i.i.i.i10.i

.lr.ph.i.i.i.i.i10.i:                             ; preds = %.lr.ph.i.i.i.i.i10.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i
  %.012.i.i.i.i.i11.i = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i10.i ], [ %.012.i.i.i.i.i11.i.unr, %.lr.ph.i.i.i.i.i10.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i10.i ], [ %.0811.i.i.i.i.i12.i.unr, %.lr.ph.i.i.i.i.i10.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i10.i ], [ %.0910.i.i.i.i.i13.i.unr, %.lr.ph.i.i.i.i.i10.i.prol.loopexit ] ; 9 uses
  %i.bz = load i64, ptr %.0910.i.i.i.i.i13.i, align 8, !tbaa !88
  store i64 %i.bz, ptr %.0811.i.i.i.i.i12.i, align 8, !tbaa !97
  %i.ca = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !3
  %i.cc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i, i64 8
  store i32 %i.cb, ptr %i.cc, align 8, !tbaa !99
  %i.cd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i, i64 16
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !88
  store i64 %i.cf, ptr %i.ce, align 8, !tbaa !97
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i, i64 24
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !3
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i, i64 24
  store i32 %i.ch, ptr %i.ci, align 8, !tbaa !99
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i, i64 32
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !88
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !97
  %i.cm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i, i64 40
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !3
  %i.co = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i, i64 40
  store i32 %i.cn, ptr %i.co, align 8, !tbaa !99
  %i.cp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i, i64 48
  %i.cq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i, i64 48
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !88
  store i64 %i.cr, ptr %i.cq, align 8, !tbaa !97
  %i.cs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i, i64 56
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !3
  %i.cu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i, i64 56
  store i32 %i.ct, ptr %i.cu, align 8, !tbaa !99
  %i.cv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i, i64 64
  %i.cw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i, i64 64 ; 2 uses
  %i.cx = add nsw i64 %.012.i.i.i.i.i11.i, -4
  %i.cy = icmp sgt i64 %.012.i.i.i.i.i11.i, 4
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i10.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit, !llvm.loop !212

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit: ; preds = %.lr.ph.i.i.i.i.i10.i.prol.loopexit, %.lr.ph.i.i.i.i.i10.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i
  %.08.lcssa.i.i.i.i.i9.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i ], [ %.lcssa112.unr, %.lr.ph.i.i.i.i.i10.i.prol.loopexit ], [ %i.cw, %.lr.ph.i.i.i.i.i10.i ] ; 2 uses
  %i.cz = sub i64 %i.b, %i.bm
  %i.da = ashr exact i64 %i.cz, 4                 ; 2 uses
  %.not = icmp slt i64 %i.da, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !225

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit, %bb.a
  %.sroa.052.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %.08.lcssa.i.i.i.i.i9.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ] ; 2 uses
  %.lcssa67 = phi i64 [ %i.e, %bb.a ], [ %i.da, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa67) ; 2 uses
  %.idx62 = shl nsw i64 %.sroa.speculated, 4
  %i.db = getelementptr inbounds i8, ptr %.sroa.052.0.lcssa, i64 %.idx62 ; 5 uses
  %i.dc = icmp ne i64 %.sroa.speculated, 0
  %i.dd = icmp ne ptr %i.db, %1
  %or.cond24.i12 = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond24.i12, label %.lr.ph.i28, label %.critedge.i13

.lr.ph.i28:                                       ; preds = %._crit_edge, %bb.f
  %.027.i29 = phi ptr [ %i.dt, %bb.f ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.019.026.i30 = phi ptr [ %.sroa.019.1.i35, %bb.f ], [ %.sroa.052.0.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.015.025.i31 = phi ptr [ %.sroa.015.1.i34, %bb.f ], [ %i.db, %._crit_edge ] ; 5 uses
  %i.de = load i64, ptr %.sroa.015.025.i31, align 8, !tbaa !97 ; 3 uses
  %i.df = load i64, ptr %.sroa.019.026.i30, align 8, !tbaa !97 ; 3 uses
  %i.dg = icmp ult i64 %i.de, %i.df
  br i1 %i.dg, label %.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge.i41, label %bb.e

.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge.i41: ; preds = %.lr.ph.i28
  %.phi.trans.insert32.i42 = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i31, i64 8
  %.pre33.i43 = load i32, ptr %.phi.trans.insert32.i42, align 8, !tbaa !3
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i37

bb.e:                                             ; preds = %.lr.ph.i28
  %i.dh = icmp ult i64 %i.df, %i.de
  br i1 %i.dh, label %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread22_crit_edge.i38, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i32

._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread22_crit_edge.i38: ; preds = %bb.e
  %.phi.trans.insert.i39 = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i30, i64 8
  %.pre.i40 = load i32, ptr %.phi.trans.insert.i39, align 8, !tbaa !3
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread22.i33

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i32: ; preds = %bb.e
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i31, i64 8
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !99 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i30, i64 8
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !99 ; 2 uses
  %i.dm = icmp slt i32 %i.dj, %i.dl
  br i1 %i.dm, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i37, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread22.i33

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i37: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i32, %.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge.i41
  %i.dn = phi i32 [ %.pre33.i43, %.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge.i41 ], [ %i.dj, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i32 ]
  store i64 %i.de, ptr %.027.i29, align 8, !tbaa !97
  %i.do = getelementptr inbounds nuw i8, ptr %.027.i29, i64 8
  store i32 %i.dn, ptr %i.do, align 8, !tbaa !99
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i31, i64 16
  br label %bb.f

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread22.i33: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i32, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread22_crit_edge.i38
  %i.dq = phi i32 [ %.pre.i40, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread22_crit_edge.i38 ], [ %i.dl, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i32 ]
  store i64 %i.df, ptr %.027.i29, align 8, !tbaa !97
  %i.dr = getelementptr inbounds nuw i8, ptr %.027.i29, i64 8
  store i32 %i.dq, ptr %i.dr, align 8, !tbaa !99
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i30, i64 16
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread22.i33, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i37
  %.sroa.015.1.i34 = phi ptr [ %i.dp, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i37 ], [ %.sroa.015.025.i31, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread22.i33 ] ; 3 uses
  %.sroa.019.1.i35 = phi ptr [ %.sroa.019.026.i30, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread.i37 ], [ %i.ds, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread22.i33 ] ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.027.i29, i64 16 ; 2 uses
  %i.du = icmp ne ptr %.sroa.019.1.i35, %i.db
  %i.dv = icmp ne ptr %.sroa.015.1.i34, %1
  %or.cond.i36 = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %or.cond.i36, label %.lr.ph.i28, label %.critedge.i13, !llvm.loop !222

.critedge.i13:                                    ; preds = %bb.f, %._crit_edge
  %.sroa.015.0.lcssa.i14 = phi ptr [ %i.db, %._crit_edge ], [ %.sroa.015.1.i34, %bb.f ] ; 3 uses
  %.sroa.019.0.lcssa.i15 = phi ptr [ %.sroa.052.0.lcssa, %._crit_edge ], [ %.sroa.019.1.i35, %bb.f ] ; 3 uses
  %.0.lcssa.i16 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.dt, %bb.f ] ; 3 uses
  %i.dw = ptrtoint ptr %i.db to i64
  %i.dx = ptrtoint ptr %.sroa.019.0.lcssa.i15 to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = ashr exact i64 %i.dy, 4                 ; 5 uses
  %i.ea = icmp sgt i64 %i.dz, 0
  br i1 %i.ea, label %.lr.ph.i.i.i.i.i.i24.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i17

.lr.ph.i.i.i.i.i.i24.preheader:                   ; preds = %.critedge.i13
  %xtraiter118 = and i64 %i.dz, 3                 ; 2 uses
  %lcmp.mod119.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod119.not, label %.lr.ph.i.i.i.i.i.i24.prol.loopexit, label %.lr.ph.i.i.i.i.i.i24.prol

.lr.ph.i.i.i.i.i.i24.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i24.preheader, %.lr.ph.i.i.i.i.i.i24.prol
  %.012.i.i.i.i.i.i25.prol = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i.i24.prol ], [ %i.dz, %.lr.ph.i.i.i.i.i.i24.preheader ]
  %.0811.i.i.i.i.i.i26.prol = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i.i24.prol ], [ %.0.lcssa.i16, %.lr.ph.i.i.i.i.i.i24.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i27.prol = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i.i24.prol ], [ %.sroa.019.0.lcssa.i15, %.lr.ph.i.i.i.i.i.i24.preheader ] ; 3 uses
  %prol.iter120 = phi i64 [ %prol.iter120.next, %.lr.ph.i.i.i.i.i.i24.prol ], [ 0, %.lr.ph.i.i.i.i.i.i24.preheader ]
  %i.eb = load i64, ptr %.0910.i.i.i.i.i.i27.prol, align 8, !tbaa !88
  store i64 %i.eb, ptr %.0811.i.i.i.i.i.i26.prol, align 8, !tbaa !97
  %i.ec = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i27.prol, i64 8
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !3
  %i.ee = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i26.prol, i64 8
  store i32 %i.ed, ptr %i.ee, align 8, !tbaa !99
  %i.ef = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i27.prol, i64 16 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i26.prol, i64 16 ; 3 uses
  %i.eh = add nsw i64 %.012.i.i.i.i.i.i25.prol, -1 ; 2 uses
  %prol.iter120.next = add i64 %prol.iter120, 1   ; 2 uses
  %prol.iter120.cmp.not = icmp eq i64 %prol.iter120.next, %xtraiter118
  br i1 %prol.iter120.cmp.not, label %.lr.ph.i.i.i.i.i.i24.prol.loopexit, label %.lr.ph.i.i.i.i.i.i24.prol, !llvm.loop !226

.lr.ph.i.i.i.i.i.i24.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i24.prol, %.lr.ph.i.i.i.i.i.i24.preheader
  %.012.i.i.i.i.i.i25.unr = phi i64 [ %i.dz, %.lr.ph.i.i.i.i.i.i24.preheader ], [ %i.eh, %.lr.ph.i.i.i.i.i.i24.prol ]
  %.0811.i.i.i.i.i.i26.unr = phi ptr [ %.0.lcssa.i16, %.lr.ph.i.i.i.i.i.i24.preheader ], [ %i.eg, %.lr.ph.i.i.i.i.i.i24.prol ]
  %.0910.i.i.i.i.i.i27.unr = phi ptr [ %.sroa.019.0.lcssa.i15, %.lr.ph.i.i.i.i.i.i24.preheader ], [ %i.ef, %.lr.ph.i.i.i.i.i.i24.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i24.preheader ], [ %i.eg, %.lr.ph.i.i.i.i.i.i24.prol ]
  %i.ei = icmp ult i64 %i.dz, 4
  br i1 %i.ei, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i17, label %.lr.ph.i.i.i.i.i.i24

.lr.ph.i.i.i.i.i.i24:                             ; preds = %.lr.ph.i.i.i.i.i.i24.prol.loopexit, %.lr.ph.i.i.i.i.i.i24
  %.012.i.i.i.i.i.i25 = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.i.i24 ], [ %.012.i.i.i.i.i.i25.unr, %.lr.ph.i.i.i.i.i.i24.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i26 = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i.i24 ], [ %.0811.i.i.i.i.i.i26.unr, %.lr.ph.i.i.i.i.i.i24.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i27 = phi ptr [ %i.ff, %.lr.ph.i.i.i.i.i.i24 ], [ %.0910.i.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i.i24.prol.loopexit ] ; 9 uses
  %i.ej = load i64, ptr %.0910.i.i.i.i.i.i27, align 8, !tbaa !88
  store i64 %i.ej, ptr %.0811.i.i.i.i.i.i26, align 8, !tbaa !97
  %i.ek = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i27, i64 8
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !3
  %i.em = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i26, i64 8
  store i32 %i.el, ptr %i.em, align 8, !tbaa !99
  %i.en = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i27, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i26, i64 16
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !88
  store i64 %i.ep, ptr %i.eo, align 8, !tbaa !97
  %i.eq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i27, i64 24
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !3
  %i.es = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i26, i64 24
  store i32 %i.er, ptr %i.es, align 8, !tbaa !99
  %i.et = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i27, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i26, i64 32
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !88
  store i64 %i.ev, ptr %i.eu, align 8, !tbaa !97
  %i.ew = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i27, i64 40
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !3
  %i.ey = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i26, i64 40
  store i32 %i.ex, ptr %i.ey, align 8, !tbaa !99
  %i.ez = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i27, i64 48
  %i.fa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i26, i64 48
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !88
  store i64 %i.fb, ptr %i.fa, align 8, !tbaa !97
  %i.fc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i27, i64 56
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !3
  %i.fe = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i26, i64 56
  store i32 %i.fd, ptr %i.fe, align 8, !tbaa !99
  %i.ff = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i27, i64 64
  %i.fg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i26, i64 64 ; 2 uses
  %i.fh = add nsw i64 %.012.i.i.i.i.i.i25, -4
  %i.fi = icmp sgt i64 %.012.i.i.i.i.i.i25, 4
  br i1 %i.fi, label %.lr.ph.i.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i17, !llvm.loop !212

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i17: ; preds = %.lr.ph.i.i.i.i.i.i24.prol.loopexit, %.lr.ph.i.i.i.i.i.i24, %.critedge.i13
  %.08.lcssa.i.i.i.i.i.i18 = phi ptr [ %.0.lcssa.i16, %.critedge.i13 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i24.prol.loopexit ], [ %i.fg, %.lr.ph.i.i.i.i.i.i24 ] ; 2 uses
  %i.fj = ptrtoint ptr %.sroa.015.0.lcssa.i14 to i64
  %i.fk = sub i64 %i.b, %i.fj
  %i.fl = ashr exact i64 %i.fk, 4                 ; 5 uses
  %i.fm = icmp sgt i64 %i.fl, 0
  br i1 %i.fm, label %.lr.ph.i.i.i.i.i10.i20.preheader, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit44

.lr.ph.i.i.i.i.i10.i20.preheader:                 ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i17
  %xtraiter121 = and i64 %i.fl, 3                 ; 2 uses
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %.lr.ph.i.i.i.i.i10.i20.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i20.prol

.lr.ph.i.i.i.i.i10.i20.prol:                      ; preds = %.lr.ph.i.i.i.i.i10.i20.preheader, %.lr.ph.i.i.i.i.i10.i20.prol
  %.012.i.i.i.i.i11.i21.prol = phi i64 [ %i.ft, %.lr.ph.i.i.i.i.i10.i20.prol ], [ %i.fl, %.lr.ph.i.i.i.i.i10.i20.preheader ]
  %.0811.i.i.i.i.i12.i22.prol = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i10.i20.prol ], [ %.08.lcssa.i.i.i.i.i.i18, %.lr.ph.i.i.i.i.i10.i20.preheader ] ; 3 uses
  %.0910.i.i.i.i.i13.i23.prol = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i10.i20.prol ], [ %.sroa.015.0.lcssa.i14, %.lr.ph.i.i.i.i.i10.i20.preheader ] ; 3 uses
  %prol.iter123 = phi i64 [ %prol.iter123.next, %.lr.ph.i.i.i.i.i10.i20.prol ], [ 0, %.lr.ph.i.i.i.i.i10.i20.preheader ]
  %i.fn = load i64, ptr %.0910.i.i.i.i.i13.i23.prol, align 8, !tbaa !88
  store i64 %i.fn, ptr %.0811.i.i.i.i.i12.i22.prol, align 8, !tbaa !97
  %i.fo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i23.prol, i64 8
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !3
  %i.fq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i22.prol, i64 8
  store i32 %i.fp, ptr %i.fq, align 8, !tbaa !99
  %i.fr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i23.prol, i64 16 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i22.prol, i64 16 ; 2 uses
  %i.ft = add nsw i64 %.012.i.i.i.i.i11.i21.prol, -1 ; 2 uses
  %prol.iter123.next = add i64 %prol.iter123, 1   ; 2 uses
  %prol.iter123.cmp.not = icmp eq i64 %prol.iter123.next, %xtraiter121
  br i1 %prol.iter123.cmp.not, label %.lr.ph.i.i.i.i.i10.i20.prol.loopexit, label %.lr.ph.i.i.i.i.i10.i20.prol, !llvm.loop !227

.lr.ph.i.i.i.i.i10.i20.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i10.i20.prol, %.lr.ph.i.i.i.i.i10.i20.preheader
  %.012.i.i.i.i.i11.i21.unr = phi i64 [ %i.fl, %.lr.ph.i.i.i.i.i10.i20.preheader ], [ %i.ft, %.lr.ph.i.i.i.i.i10.i20.prol ]
  %.0811.i.i.i.i.i12.i22.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i18, %.lr.ph.i.i.i.i.i10.i20.preheader ], [ %i.fs, %.lr.ph.i.i.i.i.i10.i20.prol ]
  %.0910.i.i.i.i.i13.i23.unr = phi ptr [ %.sroa.015.0.lcssa.i14, %.lr.ph.i.i.i.i.i10.i20.preheader ], [ %i.fr, %.lr.ph.i.i.i.i.i10.i20.prol ]
  %i.fu = icmp ult i64 %i.fl, 4
  br i1 %i.fu, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit44, label %.lr.ph.i.i.i.i.i10.i20

.lr.ph.i.i.i.i.i10.i20:                           ; preds = %.lr.ph.i.i.i.i.i10.i20.prol.loopexit, %.lr.ph.i.i.i.i.i10.i20
  %.012.i.i.i.i.i11.i21 = phi i64 [ %i.gt, %.lr.ph.i.i.i.i.i10.i20 ], [ %.012.i.i.i.i.i11.i21.unr, %.lr.ph.i.i.i.i.i10.i20.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i12.i22 = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.i10.i20 ], [ %.0811.i.i.i.i.i12.i22.unr, %.lr.ph.i.i.i.i.i10.i20.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i13.i23 = phi ptr [ %i.gr, %.lr.ph.i.i.i.i.i10.i20 ], [ %.0910.i.i.i.i.i13.i23.unr, %.lr.ph.i.i.i.i.i10.i20.prol.loopexit ] ; 9 uses
  %i.fv = load i64, ptr %.0910.i.i.i.i.i13.i23, align 8, !tbaa !88
  store i64 %i.fv, ptr %.0811.i.i.i.i.i12.i22, align 8, !tbaa !97
  %i.fw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i23, i64 8
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !3
  %i.fy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i22, i64 8
  store i32 %i.fx, ptr %i.fy, align 8, !tbaa !99
  %i.fz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i23, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i22, i64 16
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !88
  store i64 %i.gb, ptr %i.ga, align 8, !tbaa !97
  %i.gc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i23, i64 24
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !3
  %i.ge = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i22, i64 24
  store i32 %i.gd, ptr %i.ge, align 8, !tbaa !99
  %i.gf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i23, i64 32
  %i.gg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i22, i64 32
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !88
  store i64 %i.gh, ptr %i.gg, align 8, !tbaa !97
  %i.gi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i23, i64 40
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !3
  %i.gk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i22, i64 40
  store i32 %i.gj, ptr %i.gk, align 8, !tbaa !99
  %i.gl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i23, i64 48
  %i.gm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i22, i64 48
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !88
  store i64 %i.gn, ptr %i.gm, align 8, !tbaa !97
  %i.go = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i23, i64 56
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !3
  %i.gq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i22, i64 56
  store i32 %i.gp, ptr %i.gq, align 8, !tbaa !99
  %i.gr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i23, i64 64
  %i.gs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i22, i64 64
  %i.gt = add nsw i64 %.012.i.i.i.i.i11.i21, -4
  %i.gu = icmp sgt i64 %.012.i.i.i.i.i11.i21, 4
  br i1 %i.gu, label %.lr.ph.i.i.i.i.i10.i20, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit44, !llvm.loop !212

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit44: ; preds = %.lr.ph.i.i.i.i.i10.i20.prol.loopexit, %.lr.ph.i.i.i.i.i10.i20, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt17__merge_sort_loopIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %.not66 = icmp slt i64 %i.e, %i.a
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nsw i64 %3, 4                       ; 2 uses
  %.idx57 = shl nsw i64 %3, 5                     ; 2 uses
  %.not58 = icmp eq i64 %.idx, %.idx57
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit
  %.sroa.018.068 = phi ptr [ %2, %.lr.ph ], [ %i.dg, %_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ] ; 2 uses
  %.067 = phi ptr [ %0, %.lr.ph ], [ %i.g, %_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.067, i64 %.idx ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.067, i64 %.idx57 ; 4 uses
  br i1 %.not58, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.031.i = phi ptr [ %.1.i, %bb.d ], [ %.067, %bb.b ] ; 5 uses
  %.01630.i = phi ptr [ %.117.i, %bb.d ], [ %i.f, %bb.b ] ; 5 uses
  %.sroa.0.028.i = phi ptr [ %i.w, %bb.d ], [ %.sroa.018.068, %bb.b ] ; 5 uses
  %i.h = load i64, ptr %.01630.i, align 8, !tbaa !97 ; 3 uses
  %i.i = load i64, ptr %.031.i, align 8, !tbaa !97 ; 3 uses
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread_crit_edge.i, label %bb.c

.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread_crit_edge.i: ; preds = %.lr.ph.i
  %.phi.trans.insert36.i = getelementptr inbounds nuw i8, ptr %.01630.i, i64 8
  %.pre37.i = load i32, ptr %.phi.trans.insert36.i, align 8, !tbaa !3
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = icmp ult i64 %i.i, %i.h
  br i1 %i.k, label %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26_crit_edge.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.i

._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26_crit_edge.i: ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.031.i, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !3
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.01630.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !99   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.031.i, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !99   ; 2 uses
  %i.p = icmp slt i32 %i.m, %i.o
  br i1 %i.p, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.i, %.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread_crit_edge.i
  %i.q = phi i32 [ %.pre37.i, %.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread_crit_edge.i ], [ %i.m, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.i ]
  store i64 %i.h, ptr %.sroa.0.028.i, align 8, !tbaa !97
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 8
  store i32 %i.q, ptr %i.r, align 8, !tbaa !99
  %i.s = getelementptr inbounds nuw i8, ptr %.01630.i, i64 16
  br label %bb.d

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26.i: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.i, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26_crit_edge.i
  %i.t = phi i32 [ %.pre.i, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26_crit_edge.i ], [ %i.o, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.i ]
  store i64 %i.i, ptr %.sroa.0.028.i, align 8, !tbaa !97
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 8
  store i32 %i.t, ptr %i.u, align 8, !tbaa !99
  %i.v = getelementptr inbounds nuw i8, ptr %.031.i, i64 16
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread.i
  %.117.i = phi ptr [ %i.s, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread.i ], [ %.01630.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26.i ] ; 3 uses
  %.1.i = phi ptr [ %.031.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread.i ], [ %i.v, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 16 ; 2 uses
  %i.x = icmp ne ptr %.1.i, %i.f
  %i.y = icmp ne ptr %.117.i, %i.g
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br i1 %i.z, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !228

._crit_edge.i:                                    ; preds = %bb.d, %bb.b
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.018.068, %bb.b ], [ %i.w, %bb.d ] ; 5 uses
  %.016.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.117.i, %bb.d ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %.067, %bb.b ], [ %.1.i, %bb.d ] ; 3 uses
  %i.aa = ptrtoint ptr %i.f to i64
  %i.ab = ptrtoint ptr %.0.lcssa.i to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 4                 ; 5 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge.i
  %xtraiter = and i64 %i.ad, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.012.i.i.i.i.i.i.prol = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.i.prol = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.prol = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.prol ], [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.af = load i64, ptr %.0910.i.i.i.i.i.i.prol, align 8, !tbaa !88
  store i64 %i.af, ptr %.0811.i.i.i.i.i.i.prol, align 8, !tbaa !97
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 8
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !99
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.prol, i64 16 ; 3 uses
  %i.al = add nsw i64 %.012.i.i.i.i.i.i.prol, -1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !229

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.i.unr = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.al, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.i.unr = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.prol ]
  %.lcssa111.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.am = icmp ult i64 %i.ad, 4
  br i1 %i.am, label %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.an = load i64, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !88
  store i64 %i.an, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !97
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !3
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !99
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !88
  store i64 %i.at, ptr %i.as, align 8, !tbaa !97
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !3
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !99
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !88
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !97
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 40
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 40
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !99
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !88
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !97
  %i.bg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 56
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !3
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 56
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !99
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.bl = add nsw i64 %.012.i.i.i.i.i.i, -4
  %i.bm = icmp sgt i64 %.012.i.i.i.i.i.i, 4
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i, !llvm.loop !212

_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %.lcssa111.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.bk, %.lr.ph.i.i.i.i.i.i ]
  %i.bn = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i to i64 ; 3 uses
  %i.bo = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.bp ; 3 uses
  %i.br = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.bs = ptrtoint ptr %.016.lcssa.i to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 4                 ; 5 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i19.i.preheader, label %_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit

.lr.ph.i.i.i.i.i19.i.preheader:                   ; preds = %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i
  %xtraiter116 = and i64 %i.bu, 3                 ; 2 uses
  %lcmp.mod117.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod117.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol

.lr.ph.i.i.i.i.i19.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i19.i.preheader, %.lr.ph.i.i.i.i.i19.i.prol
  %.012.i.i.i.i.i20.i.prol = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i19.i.prol ], [ %i.bu, %.lr.ph.i.i.i.i.i19.i.preheader ]
  %.0811.i.i.i.i.i21.i.prol = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i19.i.prol ], [ %i.bq, %.lr.ph.i.i.i.i.i19.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.prol = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i19.i.prol ], [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ] ; 3 uses
  %prol.iter118 = phi i64 [ %prol.iter118.next, %.lr.ph.i.i.i.i.i19.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.preheader ]
  %i.bw = load i64, ptr %.0910.i.i.i.i.i22.i.prol, align 8, !tbaa !88
  store i64 %i.bw, ptr %.0811.i.i.i.i.i21.i.prol, align 8, !tbaa !97
  %i.bx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.prol, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !3
  %i.bz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.prol, i64 8
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !99
  %i.ca = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.prol, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.prol, i64 16 ; 3 uses
  %i.cc = add nsw i64 %.012.i.i.i.i.i20.i.prol, -1 ; 2 uses
  %prol.iter118.next = add i64 %prol.iter118, 1   ; 2 uses
  %prol.iter118.cmp.not = icmp eq i64 %prol.iter118.next, %xtraiter116
  br i1 %prol.iter118.cmp.not, label %.lr.ph.i.i.i.i.i19.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.prol, !llvm.loop !230

.lr.ph.i.i.i.i.i19.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i19.i.prol, %.lr.ph.i.i.i.i.i19.i.preheader
  %.012.i.i.i.i.i20.i.unr = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.cc, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0811.i.i.i.i.i21.i.unr = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.cb, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.0910.i.i.i.i.i22.i.unr = phi ptr [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.ca, %.lr.ph.i.i.i.i.i19.i.prol ]
  %.lcssa112.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.cb, %.lr.ph.i.i.i.i.i19.i.prol ]
  %i.cd = icmp ult i64 %i.bu, 4
  br i1 %i.cd, label %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit23.loopexit.i, label %.lr.ph.i.i.i.i.i19.i

.lr.ph.i.i.i.i.i19.i:                             ; preds = %.lr.ph.i.i.i.i.i19.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i
  %.012.i.i.i.i.i20.i = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.i19.i ], [ %.012.i.i.i.i.i20.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i19.i ], [ %.0811.i.i.i.i.i21.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i19.i ], [ %.0910.i.i.i.i.i22.i.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ] ; 9 uses
  %i.ce = load i64, ptr %.0910.i.i.i.i.i22.i, align 8, !tbaa !88
  store i64 %i.ce, ptr %.0811.i.i.i.i.i21.i, align 8, !tbaa !97
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !3
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 8
  store i32 %i.cg, ptr %i.ch, align 8, !tbaa !99
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 16
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !88
  store i64 %i.ck, ptr %i.cj, align 8, !tbaa !97
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 24
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !3
  %i.cn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 24
  store i32 %i.cm, ptr %i.cn, align 8, !tbaa !99
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 32
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !88
  store i64 %i.cq, ptr %i.cp, align 8, !tbaa !97
  %i.cr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 40
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !3
  %i.ct = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 40
  store i32 %i.cs, ptr %i.ct, align 8, !tbaa !99
  %i.cu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 48
  %i.cv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 48
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !88
  store i64 %i.cw, ptr %i.cv, align 8, !tbaa !97
  %i.cx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 56
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !3
  %i.cz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 56
  store i32 %i.cy, ptr %i.cz, align 8, !tbaa !99
  %i.da = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 64
  %i.db = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 64 ; 2 uses
  %i.dc = add nsw i64 %.012.i.i.i.i.i20.i, -4
  %i.dd = icmp sgt i64 %.012.i.i.i.i.i20.i, 4
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit23.loopexit.i, !llvm.loop !212

_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit23.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i19.i, %.lr.ph.i.i.i.i.i19.i.prol.loopexit
  %.lcssa112 = phi ptr [ %.lcssa112.unr, %.lr.ph.i.i.i.i.i19.i.prol.loopexit ], [ %i.db, %.lr.ph.i.i.i.i.i19.i ]
  %i.de = ptrtoint ptr %.lcssa112 to i64
  br label %_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit

_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit: ; preds = %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i, %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit23.loopexit.i
  %.08.lcssa.i.i.i.i.i18.i = phi i64 [ %i.bn, %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i ], [ %i.de, %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit23.loopexit.i ]
  %i.df = sub i64 %.08.lcssa.i.i.i.i.i18.i, %i.bn
  %i.dg = getelementptr inbounds i8, ptr %i.bq, i64 %i.df ; 2 uses
  %i.dh = sub i64 %i.b, %i.br
  %i.di = ashr exact i64 %i.dh, 4                 ; 2 uses
  %.not = icmp slt i64 %i.di, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !231

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ] ; 3 uses
  %.sroa.018.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.dg, %_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ] ; 2 uses
  %.lcssa64 = phi i64 [ %i.e, %bb.a ], [ %i.di, %_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa64) ; 2 uses
  %.idx59 = shl nsw i64 %.sroa.speculated, 4
  %i.dj = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.idx59 ; 5 uses
  %i.dk = icmp ne i64 %.sroa.speculated, 0
  %i.dl = icmp ne ptr %i.dj, %1
  %i.dm = and i1 %i.dk, %i.dl
  br i1 %i.dm, label %.lr.ph.i37, label %._crit_edge.i21

.lr.ph.i37:                                       ; preds = %._crit_edge, %bb.f
  %.031.i38 = phi ptr [ %.1.i44, %bb.f ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %.01630.i39 = phi ptr [ %.117.i43, %bb.f ], [ %i.dj, %._crit_edge ] ; 5 uses
  %.sroa.0.028.i40 = phi ptr [ %i.ec, %bb.f ], [ %.sroa.018.0.lcssa, %._crit_edge ] ; 5 uses
  %i.dn = load i64, ptr %.01630.i39, align 8, !tbaa !97 ; 3 uses
  %i.do = load i64, ptr %.031.i38, align 8, !tbaa !97 ; 3 uses
  %i.dp = icmp ult i64 %i.dn, %i.do
  br i1 %i.dp, label %.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread_crit_edge.i49, label %bb.e

.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread_crit_edge.i49: ; preds = %.lr.ph.i37
  %.phi.trans.insert36.i50 = getelementptr inbounds nuw i8, ptr %.01630.i39, i64 8
  %.pre37.i51 = load i32, ptr %.phi.trans.insert36.i50, align 8, !tbaa !3
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread.i45

bb.e:                                             ; preds = %.lr.ph.i37
  %i.dq = icmp ult i64 %i.do, %i.dn
  br i1 %i.dq, label %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26_crit_edge.i46, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.i41

._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26_crit_edge.i46: ; preds = %bb.e
  %.phi.trans.insert.i47 = getelementptr inbounds nuw i8, ptr %.031.i38, i64 8
  %.pre.i48 = load i32, ptr %.phi.trans.insert.i47, align 8, !tbaa !3
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26.i42

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.i41: ; preds = %bb.e
  %i.dr = getelementptr inbounds nuw i8, ptr %.01630.i39, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !99 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.031.i38, i64 8
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !99 ; 2 uses
  %i.dv = icmp slt i32 %i.ds, %i.du
  br i1 %i.dv, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread.i45, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26.i42

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread.i45: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.i41, %.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread_crit_edge.i49
  %i.dw = phi i32 [ %.pre37.i51, %.lr.ph._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread_crit_edge.i49 ], [ %i.ds, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.i41 ]
  store i64 %i.dn, ptr %.sroa.0.028.i40, align 8, !tbaa !97
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i40, i64 8
  store i32 %i.dw, ptr %i.dx, align 8, !tbaa !99
  %i.dy = getelementptr inbounds nuw i8, ptr %.01630.i39, i64 16
  br label %bb.f

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26.i42: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.i41, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26_crit_edge.i46
  %i.dz = phi i32 [ %.pre.i48, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26_crit_edge.i46 ], [ %i.du, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.i41 ]
  store i64 %i.do, ptr %.sroa.0.028.i40, align 8, !tbaa !97
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i40, i64 8
  store i32 %i.dz, ptr %i.ea, align 8, !tbaa !99
  %i.eb = getelementptr inbounds nuw i8, ptr %.031.i38, i64 16
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26.i42, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread.i45
  %.117.i43 = phi ptr [ %i.dy, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread.i45 ], [ %.01630.i39, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26.i42 ] ; 3 uses
  %.1.i44 = phi ptr [ %.031.i38, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread.i45 ], [ %i.eb, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPSt4pairImiES5_EEbT_T0_.exit.thread26.i42 ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i40, i64 16 ; 2 uses
  %i.ed = icmp ne ptr %.1.i44, %i.dj
  %i.ee = icmp ne ptr %.117.i43, %1
  %i.ef = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %i.ef, label %.lr.ph.i37, label %._crit_edge.i21, !llvm.loop !228

._crit_edge.i21:                                  ; preds = %bb.f, %._crit_edge
  %.sroa.0.0.lcssa.i22 = phi ptr [ %.sroa.018.0.lcssa, %._crit_edge ], [ %i.ec, %bb.f ] ; 5 uses
  %.016.lcssa.i23 = phi ptr [ %i.dj, %._crit_edge ], [ %.117.i43, %bb.f ] ; 3 uses
  %.0.lcssa.i24 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i44, %bb.f ] ; 3 uses
  %i.eg = ptrtoint ptr %i.dj to i64
  %i.eh = ptrtoint ptr %.0.lcssa.i24 to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = ashr exact i64 %i.ei, 4                 ; 5 uses
  %i.ek = icmp sgt i64 %i.ej, 0
  br i1 %i.ek, label %.lr.ph.i.i.i.i.i.i33.preheader, label %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i25

.lr.ph.i.i.i.i.i.i33.preheader:                   ; preds = %._crit_edge.i21
  %xtraiter119 = and i64 %i.ej, 3                 ; 2 uses
  %lcmp.mod120.not = icmp eq i64 %xtraiter119, 0
  br i1 %lcmp.mod120.not, label %.lr.ph.i.i.i.i.i.i33.prol.loopexit, label %.lr.ph.i.i.i.i.i.i33.prol

.lr.ph.i.i.i.i.i.i33.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i33.preheader, %.lr.ph.i.i.i.i.i.i33.prol
  %.012.i.i.i.i.i.i34.prol = phi i64 [ %i.er, %.lr.ph.i.i.i.i.i.i33.prol ], [ %i.ej, %.lr.ph.i.i.i.i.i.i33.preheader ]
  %.0811.i.i.i.i.i.i35.prol = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i33.prol ], [ %.sroa.0.0.lcssa.i22, %.lr.ph.i.i.i.i.i.i33.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i36.prol = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.i33.prol ], [ %.0.lcssa.i24, %.lr.ph.i.i.i.i.i.i33.preheader ] ; 3 uses
  %prol.iter121 = phi i64 [ %prol.iter121.next, %.lr.ph.i.i.i.i.i.i33.prol ], [ 0, %.lr.ph.i.i.i.i.i.i33.preheader ]
  %i.el = load i64, ptr %.0910.i.i.i.i.i.i36.prol, align 8, !tbaa !88
  store i64 %i.el, ptr %.0811.i.i.i.i.i.i35.prol, align 8, !tbaa !97
  %i.em = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36.prol, i64 8
  %i.en = load i32, ptr %i.em, align 8, !tbaa !3
  %i.eo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35.prol, i64 8
  store i32 %i.en, ptr %i.eo, align 8, !tbaa !99
  %i.ep = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36.prol, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35.prol, i64 16 ; 3 uses
  %i.er = add nsw i64 %.012.i.i.i.i.i.i34.prol, -1 ; 2 uses
  %prol.iter121.next = add i64 %prol.iter121, 1   ; 2 uses
  %prol.iter121.cmp.not = icmp eq i64 %prol.iter121.next, %xtraiter119
  br i1 %prol.iter121.cmp.not, label %.lr.ph.i.i.i.i.i.i33.prol.loopexit, label %.lr.ph.i.i.i.i.i.i33.prol, !llvm.loop !232

.lr.ph.i.i.i.i.i.i33.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i33.prol, %.lr.ph.i.i.i.i.i.i33.preheader
  %.012.i.i.i.i.i.i34.unr = phi i64 [ %i.ej, %.lr.ph.i.i.i.i.i.i33.preheader ], [ %i.er, %.lr.ph.i.i.i.i.i.i33.prol ]
  %.0811.i.i.i.i.i.i35.unr = phi ptr [ %.sroa.0.0.lcssa.i22, %.lr.ph.i.i.i.i.i.i33.preheader ], [ %i.eq, %.lr.ph.i.i.i.i.i.i33.prol ]
  %.0910.i.i.i.i.i.i36.unr = phi ptr [ %.0.lcssa.i24, %.lr.ph.i.i.i.i.i.i33.preheader ], [ %i.ep, %.lr.ph.i.i.i.i.i.i33.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i33.preheader ], [ %i.eq, %.lr.ph.i.i.i.i.i.i33.prol ]
  %i.es = icmp ult i64 %i.ej, 4
  br i1 %i.es, label %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i25, label %.lr.ph.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i33:                             ; preds = %.lr.ph.i.i.i.i.i.i33.prol.loopexit, %.lr.ph.i.i.i.i.i.i33
  %.012.i.i.i.i.i.i34 = phi i64 [ %i.fr, %.lr.ph.i.i.i.i.i.i33 ], [ %.012.i.i.i.i.i.i34.unr, %.lr.ph.i.i.i.i.i.i33.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i35 = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i.i33 ], [ %.0811.i.i.i.i.i.i35.unr, %.lr.ph.i.i.i.i.i.i33.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i36 = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i33 ], [ %.0910.i.i.i.i.i.i36.unr, %.lr.ph.i.i.i.i.i.i33.prol.loopexit ] ; 9 uses
  %i.et = load i64, ptr %.0910.i.i.i.i.i.i36, align 8, !tbaa !88
  store i64 %i.et, ptr %.0811.i.i.i.i.i.i35, align 8, !tbaa !97
  %i.eu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 8
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !3
  %i.ew = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 8
  store i32 %i.ev, ptr %i.ew, align 8, !tbaa !99
  %i.ex = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 16
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !88
  store i64 %i.ez, ptr %i.ey, align 8, !tbaa !97
  %i.fa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 24
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !3
  %i.fc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 24
  store i32 %i.fb, ptr %i.fc, align 8, !tbaa !99
  %i.fd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 32
  %i.fe = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 32
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !88
  store i64 %i.ff, ptr %i.fe, align 8, !tbaa !97
  %i.fg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 40
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !3
  %i.fi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 40
  store i32 %i.fh, ptr %i.fi, align 8, !tbaa !99
  %i.fj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 48
  %i.fk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 48
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !88
  store i64 %i.fl, ptr %i.fk, align 8, !tbaa !97
  %i.fm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 56
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !3
  %i.fo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 56
  store i32 %i.fn, ptr %i.fo, align 8, !tbaa !99
  %i.fp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 64
  %i.fq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 64 ; 2 uses
  %i.fr = add nsw i64 %.012.i.i.i.i.i.i34, -4
  %i.fs = icmp sgt i64 %.012.i.i.i.i.i.i34, 4
  br i1 %i.fs, label %.lr.ph.i.i.i.i.i.i33, label %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i25, !llvm.loop !212

_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i25: ; preds = %.lr.ph.i.i.i.i.i.i33.prol.loopexit, %.lr.ph.i.i.i.i.i.i33, %._crit_edge.i21
  %.08.lcssa.i.i.i.i.i.i26 = phi ptr [ %.sroa.0.0.lcssa.i22, %._crit_edge.i21 ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i33.prol.loopexit ], [ %i.fq, %.lr.ph.i.i.i.i.i.i33 ]
  %i.ft = ptrtoint ptr %.016.lcssa.i23 to i64
  %i.fu = sub i64 %i.b, %i.ft
  %i.fv = ashr exact i64 %i.fu, 4                 ; 5 uses
  %i.fw = icmp sgt i64 %i.fv, 0
  br i1 %i.fw, label %.lr.ph.i.i.i.i.i19.i28.preheader, label %_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit52

.lr.ph.i.i.i.i.i19.i28.preheader:                 ; preds = %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i25
  %i.fx = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i26 to i64
  %i.fy = ptrtoint ptr %.sroa.0.0.lcssa.i22 to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i22, i64 %i.fz ; 2 uses
  %xtraiter122 = and i64 %i.fv, 3                 ; 2 uses
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod123.not, label %.lr.ph.i.i.i.i.i19.i28.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i28.prol

.lr.ph.i.i.i.i.i19.i28.prol:                      ; preds = %.lr.ph.i.i.i.i.i19.i28.preheader, %.lr.ph.i.i.i.i.i19.i28.prol
  %.012.i.i.i.i.i20.i29.prol = phi i64 [ %i.gh, %.lr.ph.i.i.i.i.i19.i28.prol ], [ %i.fv, %.lr.ph.i.i.i.i.i19.i28.preheader ]
  %.0811.i.i.i.i.i21.i30.prol = phi ptr [ %i.gg, %.lr.ph.i.i.i.i.i19.i28.prol ], [ %i.ga, %.lr.ph.i.i.i.i.i19.i28.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i31.prol = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i19.i28.prol ], [ %.016.lcssa.i23, %.lr.ph.i.i.i.i.i19.i28.preheader ] ; 3 uses
  %prol.iter124 = phi i64 [ %prol.iter124.next, %.lr.ph.i.i.i.i.i19.i28.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i28.preheader ]
  %i.gb = load i64, ptr %.0910.i.i.i.i.i22.i31.prol, align 8, !tbaa !88
  store i64 %i.gb, ptr %.0811.i.i.i.i.i21.i30.prol, align 8, !tbaa !97
  %i.gc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i31.prol, i64 8
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !3
  %i.ge = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i30.prol, i64 8
  store i32 %i.gd, ptr %i.ge, align 8, !tbaa !99
  %i.gf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i31.prol, i64 16 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i30.prol, i64 16 ; 2 uses
  %i.gh = add nsw i64 %.012.i.i.i.i.i20.i29.prol, -1 ; 2 uses
  %prol.iter124.next = add i64 %prol.iter124, 1   ; 2 uses
  %prol.iter124.cmp.not = icmp eq i64 %prol.iter124.next, %xtraiter122
  br i1 %prol.iter124.cmp.not, label %.lr.ph.i.i.i.i.i19.i28.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i28.prol, !llvm.loop !233

.lr.ph.i.i.i.i.i19.i28.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i19.i28.prol, %.lr.ph.i.i.i.i.i19.i28.preheader
  %.012.i.i.i.i.i20.i29.unr = phi i64 [ %i.fv, %.lr.ph.i.i.i.i.i19.i28.preheader ], [ %i.gh, %.lr.ph.i.i.i.i.i19.i28.prol ]
  %.0811.i.i.i.i.i21.i30.unr = phi ptr [ %i.ga, %.lr.ph.i.i.i.i.i19.i28.preheader ], [ %i.gg, %.lr.ph.i.i.i.i.i19.i28.prol ]
  %.0910.i.i.i.i.i22.i31.unr = phi ptr [ %.016.lcssa.i23, %.lr.ph.i.i.i.i.i19.i28.preheader ], [ %i.gf, %.lr.ph.i.i.i.i.i19.i28.prol ]
  %i.gi = icmp ult i64 %i.fv, 4
  br i1 %i.gi, label %_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit52, label %.lr.ph.i.i.i.i.i19.i28

.lr.ph.i.i.i.i.i19.i28:                           ; preds = %.lr.ph.i.i.i.i.i19.i28.prol.loopexit, %.lr.ph.i.i.i.i.i19.i28
  %.012.i.i.i.i.i20.i29 = phi i64 [ %i.hh, %.lr.ph.i.i.i.i.i19.i28 ], [ %.012.i.i.i.i.i20.i29.unr, %.lr.ph.i.i.i.i.i19.i28.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i30 = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i19.i28 ], [ %.0811.i.i.i.i.i21.i30.unr, %.lr.ph.i.i.i.i.i19.i28.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i31 = phi ptr [ %i.hf, %.lr.ph.i.i.i.i.i19.i28 ], [ %.0910.i.i.i.i.i22.i31.unr, %.lr.ph.i.i.i.i.i19.i28.prol.loopexit ] ; 9 uses
  %i.gj = load i64, ptr %.0910.i.i.i.i.i22.i31, align 8, !tbaa !88
  store i64 %i.gj, ptr %.0811.i.i.i.i.i21.i30, align 8, !tbaa !97
  %i.gk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i31, i64 8
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !3
  %i.gm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i30, i64 8
  store i32 %i.gl, ptr %i.gm, align 8, !tbaa !99
  %i.gn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i31, i64 16
  %i.go = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i30, i64 16
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !88
  store i64 %i.gp, ptr %i.go, align 8, !tbaa !97
  %i.gq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i31, i64 24
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !3
  %i.gs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i30, i64 24
  store i32 %i.gr, ptr %i.gs, align 8, !tbaa !99
  %i.gt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i31, i64 32
  %i.gu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i30, i64 32
  %i.gv = load i64, ptr %i.gt, align 8, !tbaa !88
  store i64 %i.gv, ptr %i.gu, align 8, !tbaa !97
  %i.gw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i31, i64 40
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !3
  %i.gy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i30, i64 40
  store i32 %i.gx, ptr %i.gy, align 8, !tbaa !99
  %i.gz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i31, i64 48
  %i.ha = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i30, i64 48
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !88
  store i64 %i.hb, ptr %i.ha, align 8, !tbaa !97
  %i.hc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i31, i64 56
  %i.hd = load i32, ptr %i.hc, align 8, !tbaa !3
  %i.he = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i30, i64 56
  store i32 %i.hd, ptr %i.he, align 8, !tbaa !99
  %i.hf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i31, i64 64
  %i.hg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i30, i64 64
  %i.hh = add nsw i64 %.012.i.i.i.i.i20.i29, -4
  %i.hi = icmp sgt i64 %.012.i.i.i.i.i20.i29, 4
  br i1 %i.hi, label %.lr.ph.i.i.i.i.i19.i28, label %_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit52, !llvm.loop !212

_ZSt12__move_mergeIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit52: ; preds = %.lr.ph.i.i.i.i.i19.i28.prol.loopexit, %.lr.ph.i.i.i.i.i19.i28, %_ZSt4moveIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond79 = or i1 %i.a, %i.b
  br i1 %or.cond79, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread70, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr7684 = phi i64 [ %4, %.lr.ph ], [ %i.bp, %tailrecurse ] ; 4 uses
  %.tr7583 = phi i64 [ %3, %.lr.ph ], [ %i.bo, %tailrecurse ] ; 4 uses
  %.tr7381 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 10 uses
  %.tr80 = phi ptr [ %0, %.lr.ph ], [ %i.bn, %tailrecurse ] ; 10 uses
  %i.d = add nsw i64 %.tr7684, %.tr7583
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %.tr7381, align 8, !tbaa !97 ; 3 uses
  %i.g = load i64, ptr %.tr80, align 8, !tbaa !97 ; 3 uses
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge, label %bb.d

._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge: ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.tr80, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !3
  %.phi.trans.insert87 = getelementptr inbounds nuw i8, ptr %.tr7381, i64 8
  %.pre88 = load i32, ptr %.phi.trans.insert87, align 8, !tbaa !3
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.i = icmp ult i64 %i.g, %i.f
  br i1 %i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread70, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.tr7381, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !99   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.tr80, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !99   ; 2 uses
  %i.n = icmp slt i32 %i.k, %i.m
  br i1 %i.n, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread70

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread: ; preds = %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  %i.o = phi i32 [ %.pre88, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge ], [ %i.k, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit ]
  %i.p = phi i32 [ %.pre, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread_crit_edge ], [ %i.m, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit ]
  store i64 %i.f, ptr %.tr80, align 8, !tbaa !88
  store i64 %i.g, ptr %.tr7381, align 8, !tbaa !88
  %i.q = getelementptr inbounds nuw i8, ptr %.tr80, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.tr7381, i64 8
  store i32 %i.o, ptr %i.q, align 8, !tbaa !3
  store i32 %i.p, ptr %i.r, align 8, !tbaa !3
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread70

bb.e:                                             ; preds = %bb.b
  %i.s = icmp sgt i64 %.tr7583, %.tr7684
  %i.t = ptrtoint ptr %.tr7381 to i64             ; 4 uses
  br i1 %i.s, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit49

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.u = sdiv i64 %.tr7583, 2                     ; 2 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %.tr80, i64 %i.u ; 3 uses
  %i.w = sub i64 %i.c, %i.t
  %i.x = ashr exact i64 %i.w, 4                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.z = load i64, ptr %i.v, align 8, !tbaa !97   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread15.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.x, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread15.i ] ; 2 uses
  %.sroa.011.016.i = phi ptr [ %.tr7381, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.011.1.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread15.i ] ; 3 uses
  %i.ac = lshr i64 %.017.i, 1                     ; 4 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.016.i, i64 %i.ac ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !97 ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.z
  br i1 %i.af, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ag = icmp ult i64 %i.z, %i.ae
  br i1 %i.ag, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread15.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i: ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !99
  %i.aj = icmp slt i32 %i.ai, %i.ab
  br i1 %i.aj, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread15.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.al = xor i64 %i.ac, -1
  %i.am = add nsw i64 %.017.i, %i.al
  br label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread15.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread15.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i, %bb.f
  %.sroa.011.1.i = phi ptr [ %i.ak, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread.i ], [ %.sroa.011.016.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i ], [ %.sroa.011.016.i, %bb.f ] ; 3 uses
  %.1.i = phi i64 [ %i.am, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread.i ], [ %i.ac, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i ], [ %i.ac, %bb.f ] ; 2 uses
  %i.an = icmp sgt i64 %.1.i, 0
  br i1 %i.an, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !234

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread15.i
  %.pre89 = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre89, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.t, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr7381, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ao = sub i64 %.pre-phi, %i.t
  %i.ap = ashr exact i64 %i.ao, 4
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit49: ; preds = %bb.e
  %i.aq = sdiv i64 %.tr7684, 2                    ; 2 uses
  %i.ar = getelementptr inbounds [16 x i8], ptr %.tr7381, i64 %i.aq ; 3 uses
  %i.as = ptrtoint ptr %.tr80 to i64              ; 3 uses
  %i.at = sub i64 %i.t, %i.as
  %i.au = ashr exact i64 %i.at, 4                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.av, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit49
  %i.aw = load i64, ptr %i.ar, align 8, !tbaa !97 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ay = load i32, ptr %i.ax, align 8
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51
  %.017.i53 = phi i64 [ %i.au, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51 ], [ %.1.i58, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i ] ; 2 uses
  %.sroa.011.016.i54 = phi ptr [ %.tr80, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51 ], [ %.sroa.011.1.i57, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i ] ; 3 uses
  %i.az = lshr i64 %.017.i53, 1                   ; 4 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.016.i54, i64 %i.az ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !97 ; 2 uses
  %i.bc = icmp ult i64 %i.aw, %i.bb
  br i1 %i.bc, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52
  %i.bd = icmp ult i64 %i.bb, %i.aw
  br i1 %i.bd, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread15.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i: ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !99
  %i.bg = icmp slt i32 %i.ay, %i.bf
  br i1 %i.bg, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread15.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread15.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i, %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bi = xor i64 %i.az, -1
  %i.bj = add nsw i64 %.017.i53, %i.bi
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread15.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52
  %.sroa.011.1.i57 = phi ptr [ %.sroa.011.016.i54, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i ], [ %i.bh, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread15.i ], [ %.sroa.011.016.i54, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52 ] ; 3 uses
  %.1.i58 = phi i64 [ %i.az, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i ], [ %i.bj, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread15.i ], [ %i.az, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52 ] ; 2 uses
  %i.bk = icmp sgt i64 %.1.i58, 0
  br i1 %i.bk, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !235

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairImiENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i
  %.pre90 = ptrtoint ptr %.sroa.011.1.i57 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit49
  %.pre-phi91 = phi i64 [ %.pre90, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.as, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit49 ]
  %.sroa.011.0.lcssa.i50 = phi ptr [ %.sroa.011.1.i57, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr80, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit49 ]
  %i.bl = sub i64 %.pre-phi91, %i.as
  %i.bm = ashr exact i64 %i.bl, 4
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit
  %.sroa.061.0 = phi ptr [ %i.v, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit ], [ %.sroa.011.0.lcssa.i50, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit ], [ %i.ar, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.043 = phi i64 [ %i.ap, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit ], [ %i.aq, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.u, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit ], [ %i.bm, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %i.bn = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_St26random_access_iterator_tag(ptr %.sroa.061.0, ptr %.tr7381, ptr %.sroa.0.0) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_(ptr %.tr80, ptr %.sroa.061.0, ptr %i.bn, i64 noundef %.0, i64 noundef %.043)
  %i.bo = sub nsw i64 %.tr7583, %.0               ; 2 uses
  %i.bp = sub nsw i64 %.tr7684, %.043             ; 2 uses
  %i.bq = icmp eq i64 %i.bo, 0
  %i.br = icmp eq i64 %i.bp, 0
  %or.cond = or i1 %i.bq, %i.br
  br i1 %or.cond, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread70, label %bb.b

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread70: ; preds = %tailrecurse, %bb.a, %bb.d, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairImiESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 4                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 4                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.s, %.lr.ph.i ], [ %1, %bb.c ] ; 4 uses
  %.sroa.04.07.i = phi ptr [ %i.r, %.lr.ph.i ], [ %0, %bb.c ] ; 4 uses
  %i.l = load i64, ptr %.sroa.04.07.i, align 8, !tbaa !88
  %i.m = load i64, ptr %.sroa.0.08.i, align 8, !tbaa !88
  store i64 %i.m, ptr %.sroa.04.07.i, align 8, !tbaa !88
  store i64 %i.l, ptr %.sroa.0.08.i, align 8, !tbaa !88
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.n, align 8, !tbaa !3
  %i.q = load i32, ptr %i.o, align 8, !tbaa !3
  store i32 %i.q, ptr %i.n, align 8, !tbaa !3
  store i32 %i.p, ptr %i.o, align 8, !tbaa !3
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 16
  %.not.i = icmp eq ptr %i.r, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i, !llvm.loop !236
end_hunk_1
