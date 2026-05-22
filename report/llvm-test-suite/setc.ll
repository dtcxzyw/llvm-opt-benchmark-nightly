begin_hunk_0_@force_lower:bb.a
  %i.ac = mul nuw i32 %i.ab, 3
  %i.ad = and i32 %i.ac, %i.u
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = or i32 %i.af, %i.ad
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit63, label %.lr.ph

.loopexit63:                                      ; preds = %bb.f, %bb.d, %bb.a
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !16 ; 2 uses
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !17 ; 2 uses
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph72, label %._crit_edge

.lr.ph72:                                         ; preds = %.loopexit63
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !18
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 48), align 8, !tbaa !19
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 40), align 8, !tbaa !20
  %i.an = sext i32 %i.ah to i64
  %scevgep96 = getelementptr i8, ptr %0, i64 4
  %scevgep99 = getelementptr i8, ptr %1, i64 4
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph72, %.loopexit
  %i.ao = phi i32 [ %i.ai, %.lr.ph72 ], [ %i.de, %.loopexit ] ; 2 uses
  %indvars.iv84 = phi i64 [ %i.an, %.lr.ph72 ], [ %indvars.iv.next85, %.loopexit ] ; 4 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv84
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !21 ; 7 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.al, i64 %indvars.iv84
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4  ; 7 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.am, i64 %indvars.iv84
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4  ; 5 uses
  %.not5865 = icmp sgt i32 %i.au, %i.as
  br i1 %.not5865, label %.loopexit, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %bb.g
  %i.av = sext i32 %i.au to i64                   ; 3 uses
  %i.aw = add i32 %i.as, 1
  br label %.lr.ph67

bb.h:                                             ; preds = %.lr.ph67
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next76 to i32
  %exitcond78.not = icmp eq i32 %i.aw, %lftr.wideiv
  br i1 %exitcond78.not, label %.lr.ph70.preheader, label %.lr.ph67

.lr.ph70.preheader:                               ; preds = %bb.h
  %i.ax = sext i32 %i.au to i64                   ; 4 uses
  %i.ay = add i32 %i.as, 1
  %i.az = sub i32 %i.as, %i.au                    ; 2 uses
  %i.ba = zext i32 %i.az to i64
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.az, 7
  br i1 %min.iters.check, label %.lr.ph70.preheader112, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph70.preheader
  %i.bc = shl nsw i64 %i.av, 2                    ; 3 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.bc  ; 2 uses
  %i.bd = sub i32 %i.as, %i.au
  %i.be = zext i32 %i.bd to i64
  %i.bf = add nsw i64 %i.av, %i.be
  %i.bg = shl nsw i64 %i.bf, 2                    ; 3 uses
  %scevgep97 = getelementptr i8, ptr %scevgep96, i64 %i.bg ; 2 uses
  %scevgep98 = getelementptr i8, ptr %1, i64 %i.bc
  %scevgep100 = getelementptr i8, ptr %scevgep99, i64 %i.bg
  %scevgep101 = getelementptr i8, ptr %i.aq, i64 %i.bc
  %scevgep102 = getelementptr i8, ptr %i.aq, i64 4
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.bg
  %bound0 = icmp ult ptr %scevgep, %scevgep100
  %bound1 = icmp ult ptr %scevgep98, %scevgep97
  %found.conflict = and i1 %bound0, %bound1
  %bound0104 = icmp ult ptr %scevgep, %scevgep103
  %bound1105 = icmp ult ptr %scevgep101, %scevgep97
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx = or i1 %found.conflict, %found.conflict106
  br i1 %conflict.rdx, label %.lr.ph70.preheader112, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bb, 8589934584              ; 3 uses
  %i.bh = add nsw i64 %n.vec, %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = add i64 %index, %i.ax                   ; 3 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load = load <4 x i32>, ptr %i.bj, align 4, !tbaa !4, !alias.scope !22
  %wide.load107 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !4, !alias.scope !22
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.bi ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load108 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !4, !alias.scope !25
  %wide.load109 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !4, !alias.scope !25
  %i.bn = and <4 x i32> %wide.load108, %wide.load
  %i.bo = and <4 x i32> %wide.load109, %wide.load107
  %i.bp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bi ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %wide.load110 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !4, !alias.scope !27, !noalias !29
  %wide.load111 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !4, !alias.scope !27, !noalias !29
  %i.br = or <4 x i32> %wide.load110, %i.bn
  %i.bs = or <4 x i32> %wide.load111, %i.bo
  store <4 x i32> %i.br, ptr %i.bp, align 4, !tbaa !4, !alias.scope !27, !noalias !29
  store <4 x i32> %i.bs, ptr %i.bq, align 4, !tbaa !4, !alias.scope !27, !noalias !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %.lr.ph70.preheader112

.lr.ph70.preheader112:                            ; preds = %vector.memcheck, %.lr.ph70.preheader, %middle.block
  %indvars.iv79.ph = phi i64 [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph70.preheader ], [ %i.bh, %middle.block ] ; 6 uses
  %i.bu = trunc i64 %indvars.iv79.ph to i32       ; 2 uses
  %i.bv = add i32 %i.as, %i.bu
  %i.bw = and i32 %i.bv, 1
  %lcmp.mod.not.not = icmp eq i32 %i.bw, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph70.prol, label %.lr.ph70.prol.loopexit

.lr.ph70.prol:                                    ; preds = %.lr.ph70.preheader112
  %i.bx = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv79.ph
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %indvars.iv79.ph
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = and i32 %i.ca, %i.by
  %i.cc = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv79.ph ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.ce = or i32 %i.cd, %i.cb
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !4
  %indvars.iv.next80.prol = add nsw i64 %indvars.iv79.ph, 1
  br label %.lr.ph70.prol.loopexit

.lr.ph70.prol.loopexit:                           ; preds = %.lr.ph70.prol, %.lr.ph70.preheader112
  %indvars.iv79.unr = phi i64 [ %indvars.iv79.ph, %.lr.ph70.preheader112 ], [ %indvars.iv.next80.prol, %.lr.ph70.prol ]
  %i.cf = icmp eq i32 %i.as, %i.bu
  br i1 %i.cf, label %.loopexit.loopexit, label %.lr.ph70

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %bb.h
  %indvars.iv75 = phi i64 [ %i.av, %.lr.ph67.preheader ], [ %indvars.iv.next76, %bb.h ] ; 4 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv75
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv75
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4
  %i.ck = and i32 %i.cj, %i.ch
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %indvars.iv75
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !4
  %i.cn = and i32 %i.ck, %i.cm
  %.not60 = icmp eq i32 %i.cn, 0
  br i1 %.not60, label %bb.h, label %.loopexit

.lr.ph70:                                         ; preds = %.lr.ph70.prol.loopexit, %.lr.ph70
  %indvars.iv79 = phi i64 [ %indvars.iv.next80.1, %.lr.ph70 ], [ %indvars.iv79.unr, %.lr.ph70.prol.loopexit ] ; 5 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv79
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !4
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %indvars.iv79
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !4
  %i.cs = and i32 %i.cr, %i.cp
  %i.ct = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv79 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !4
  %i.cv = or i32 %i.cu, %i.cs
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !4
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, 1 ; 3 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next80
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !4
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %indvars.iv.next80
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4
  %i.da = and i32 %i.cz, %i.cx
  %i.db = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next80 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !4
  %i.dd = or i32 %i.dc, %i.da
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !4
  %indvars.iv.next80.1 = add nsw i64 %indvars.iv79, 2 ; 2 uses
  %lftr.wideiv82.1 = trunc i64 %indvars.iv.next80.1 to i32
  %exitcond83.not.1 = icmp eq i32 %i.ay, %lftr.wideiv82.1
  br i1 %exitcond83.not.1, label %.loopexit.loopexit, label %.lr.ph70, !llvm.loop !33

.loopexit.loopexit:                               ; preds = %.lr.ph70.prol.loopexit, %.lr.ph70, %middle.block
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph67, %bb.g, %.loopexit.loopexit
  %i.de = phi i32 [ %i.ao, %bb.g ], [ %.pre, %.loopexit.loopexit ], [ %i.ao, %.lr.ph67 ] ; 2 uses
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1 ; 2 uses
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp slt i64 %indvars.iv.next85, %i.df
  br i1 %i.dg, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %.loopexit63
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @consensus(ptr noundef captures(none) initializes((0, 4)) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @cube, align 8, !tbaa !34  ; 2 uses
  %3 = icmp slt i32 %i.a, 33
  %i.b = add nsw i32 %i.a, -1
  %i.c = ashr i32 %i.b, 5
  %i.d = add nsw i32 %i.c, 1
  %i.e = select i1 %3, i32 1, i32 %i.d            ; 4 uses
  store i32 %i.e, ptr %0, align 4, !tbaa !4
  %i.f = sext i32 %i.e to i64
  %smin = tail call i32 @llvm.smin.i32(i32 %i.e, i32 1)
  %i.g = sub nsw i32 %i.e, %smin
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = shl nuw nsw i64 %i.h, 2
  %i.j = sub nsw i64 %i.f, %i.h
  %i.k = shl nsw i64 %i.j, 2
  %scevgep = getelementptr i8, ptr %0, i64 %i.k
  %i.l = add nuw nsw i64 %i.i, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.l, i1 false), !tbaa !4
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 108), align 4, !tbaa !14 ; 5 uses
  %.not = icmp eq i32 %i.m, -1
  br i1 %.not, label %.loopexit85, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %1, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %i.q = getelementptr inbounds [4 x i8], ptr %2, i64 %i.n ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = and i32 %i.r, %i.p                       ; 4 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.n ; 2 uses
  store i32 %i.s, ptr %i.t, align 4, !tbaa !4
  %i.u = lshr i32 %i.s, 1
  %i.v = or i32 %i.u, %i.s
  %i.w = xor i32 %i.v, -1
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 104), align 8, !tbaa !15
  %i.y = and i32 %i.x, %i.w                       ; 3 uses
  %.not79 = icmp eq i32 %i.y, 0
  br i1 %.not79, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = shl i32 %i.y, 1
  %i.aa = or i32 %i.z, %i.y
  %i.ab = load i32, ptr %i.o, align 4, !tbaa !4
  %i.ac = load i32, ptr %i.q, align 4, !tbaa !4
  %i.ad = or i32 %i.ac, %i.ab
  %i.ae = and i32 %i.ad, %i.aa
  %i.af = or i32 %i.ae, %i.s
  store i32 %i.af, ptr %i.t, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ag = icmp sgt i32 %i.m, 1
  br i1 %i.ag, label %.lr.ph.preheader, label %.loopexit85

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.m to i64    ; 3 uses
  %i.ah = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check = icmp ult i32 %i.m, 9
  br i1 %min.iters.check, label %.lr.ph.preheader204, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep137 = getelementptr i8, ptr %0, i64 4   ; 2 uses
  %i.ai = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %scevgep138 = getelementptr i8, ptr %0, i64 %i.ai ; 2 uses
  %scevgep139 = getelementptr i8, ptr %1, i64 4
  %scevgep140 = getelementptr i8, ptr %1, i64 %i.ai
  %scevgep141 = getelementptr i8, ptr %2, i64 4
  %scevgep142 = getelementptr i8, ptr %2, i64 %i.ai
  %bound0 = icmp ult ptr %scevgep137, %scevgep140
  %bound1 = icmp ult ptr %scevgep139, %scevgep138
  %found.conflict = and i1 %bound0, %bound1
  %bound0143 = icmp ult ptr %scevgep137, %scevgep142
  %bound1144 = icmp ult ptr %scevgep141, %scevgep138
  %found.conflict145 = and i1 %bound0143, %bound1144
  %conflict.rdx = or i1 %found.conflict, %found.conflict145
  br i1 %conflict.rdx, label %.lr.ph.preheader204, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, -4                      ; 3 uses
  %i.aj = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue154, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue154 ] ; 5 uses
  %i.ak = or disjoint i64 %index, 1               ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ak ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.al, align 4, !tbaa !4, !alias.scope !35
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ak ; 2 uses
  %wide.load146 = load <4 x i32>, ptr %i.am, align 4, !tbaa !4, !alias.scope !38
  %i.an = and <4 x i32> %wide.load146, %wide.load ; 4 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ak ; 2 uses
  store <4 x i32> %i.an, ptr %i.ao, align 4, !tbaa !4, !alias.scope !40, !noalias !42
  %i.ap = lshr <4 x i32> %i.an, splat (i32 1)
  %i.aq = or <4 x i32> %i.ap, %i.an
  %i.ar = and <4 x i32> %i.aq, splat (i32 1431655765) ; 2 uses
  %i.as = icmp ne <4 x i32> %i.ar, splat (i32 1431655765) ; 4 uses
  %i.at = xor <4 x i32> %i.ar, splat (i32 1431655765)
  %i.au = mul nuw <4 x i32> %i.at, splat (i32 3)
  %wide.load147 = load <4 x i32>, ptr %i.al, align 4, !tbaa !4, !alias.scope !35
  %wide.load148 = load <4 x i32>, ptr %i.am, align 4, !tbaa !4, !alias.scope !38
  %i.av = or <4 x i32> %wide.load148, %wide.load147
  %i.aw = and <4 x i32> %i.av, %i.au
  %i.ax = or <4 x i32> %i.aw, %i.an               ; 4 uses
  %i.ay = extractelement <4 x i1> %i.as, i64 0
  br i1 %i.ay, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.az = extractelement <4 x i32> %i.ax, i64 0
  store i32 %i.az, ptr %i.ao, align 4, !tbaa !4, !alias.scope !40, !noalias !42
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ba = extractelement <4 x i1> %i.as, i64 1
  br i1 %i.ba, label %pred.store.if149, label %pred.store.continue150

pred.store.if149:                                 ; preds = %pred.store.continue
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = extractelement <4 x i32> %i.ax, i64 1
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !4, !alias.scope !40, !noalias !42
  br label %pred.store.continue150

pred.store.continue150:                           ; preds = %pred.store.if149, %pred.store.continue
  %i.be = extractelement <4 x i1> %i.as, i64 2
  br i1 %i.be, label %pred.store.if151, label %pred.store.continue152

pred.store.if151:                                 ; preds = %pred.store.continue150
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bh = extractelement <4 x i32> %i.ax, i64 2
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !4, !alias.scope !40, !noalias !42
  br label %pred.store.continue152

pred.store.continue152:                           ; preds = %pred.store.if151, %pred.store.continue150
  %i.bi = extractelement <4 x i1> %i.as, i64 3
  br i1 %i.bi, label %pred.store.if153, label %pred.store.continue154

pred.store.if153:                                 ; preds = %pred.store.continue152
  %i.bj = getelementptr [4 x i8], ptr %0, i64 %index
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  %i.bl = extractelement <4 x i32> %i.ax, i64 3
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !4, !alias.scope !40, !noalias !42
  br label %pred.store.continue154

pred.store.continue154:                           ; preds = %pred.store.if153, %pred.store.continue152
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %pred.store.continue154
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %.loopexit85, label %.lr.ph.preheader204

.lr.ph.preheader204:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader204, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ %indvars.iv.ph, %.lr.ph.preheader204 ] ; 4 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = and i32 %i.bq, %i.bo                    ; 4 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !4
  %i.bt = lshr i32 %i.br, 1
  %i.bu = or i32 %i.bt, %i.br
  %i.bv = and i32 %i.bu, 1431655765               ; 2 uses
  %.not84 = icmp eq i32 %i.bv, 1431655765
  br i1 %.not84, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.bw = xor i32 %i.bv, 1431655765
  %i.bx = mul nuw i32 %i.bw, 3
  %i.by = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bz = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.ca = or i32 %i.bz, %i.by
  %i.cb = and i32 %i.ca, %i.bx
  %i.cc = or i32 %i.cb, %i.br
  store i32 %i.cc, ptr %i.bs, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit85, label %.lr.ph, !llvm.loop !44

.loopexit85:                                      ; preds = %bb.f, %middle.block, %bb.d, %bb.a
  %i.cd = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !16 ; 2 uses
  %i.ce = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !17
  %i.cf = icmp slt i32 %i.cd, %i.ce
  br i1 %i.cf, label %.lr.ph97, label %._crit_edge98

.lr.ph97:                                         ; preds = %.loopexit85
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !18
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 48), align 8, !tbaa !19
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 40), align 8, !tbaa !20
  %i.cj = sext i32 %i.cd to i64
  %scevgep157 = getelementptr i8, ptr %0, i64 4
  %scevgep163 = getelementptr i8, ptr %1, i64 4
  %scevgep166 = getelementptr i8, ptr %2, i64 4
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph97, %.loopexit
  %indvars.iv110 = phi i64 [ %i.cj, %.lr.ph97 ], [ %indvars.iv.next111, %.loopexit ] ; 4 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %indvars.iv110
end_hunk_0
