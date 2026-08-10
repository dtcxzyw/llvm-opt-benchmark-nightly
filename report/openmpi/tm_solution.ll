inline.NumInlined: 19
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@tm_in_tab:bb.a
._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.06 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.lr.ph ]
  ret i32 %.06
}

; Function Attrs: nounwind uwtable
define hidden void @tm_map_MPIPP(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = shl nsw i64 %i.a, 3                      ; 4 uses
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #16 ; 9 uses
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.b) #16 ; 7 uses
  %i.e = icmp sgt i32 %2, 0                       ; 5 uses
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.b) #16
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.f, ptr %i.g, align 8, !tbaa !34
  %i.h = tail call noalias dereferenceable_or_null(12) ptr @malloc(i64 noundef 12) #16
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store ptr %i.h, ptr %i.i, align 8, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.j = shl nsw i64 %i.a, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #16 ; 8 uses
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.b) #16 ; 5 uses
  %i.m = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.val119 = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.n = tail call fastcc ptr @generate_random_sol(ptr %.val119, i32 noundef %2, i32 noundef 0) ; 3 uses
  br i1 %i.e, label %.lr.ph205.preheader, label %.preheader196

.lr.ph205.preheader:                              ; preds = %._crit_edge
  %i.o = zext nneg i32 %2 to i64
  %i.p = shl nuw nsw i64 %i.o, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %i.n, i64 %i.p, i1 false), !tbaa !20
  br label %.preheader196

.preheader196:                                    ; preds = %.lr.ph205.preheader, %._crit_edge
  %.not229 = icmp slt i32 %1, 1
  br i1 %.not229, label %._crit_edge235, label %.preheader195.lr.ph

.preheader195.lr.ph:                              ; preds = %.preheader196
  %i.q = sdiv i32 %2, 2                           ; 6 uses
  %i.r = icmp sgt i32 %2, 1
  %i.s = zext i32 %2 to i64                       ; 23 uses
  %i.t = icmp slt i32 %2, 1
  %i.u = shl nuw nsw i64 %i.s, 2                  ; 2 uses
  %wide.trip.count258 = zext i32 %i.q to i64      ; 3 uses
  %invariant.op = add nsw i32 %i.q, -1
  %i.v = add nsw i64 %i.s, -1                     ; 6 uses
  %i.w = add nsw i64 %i.s, -2                     ; 5 uses
  %i.x = add nsw i32 %i.q, -2
  %xtraiter314 = and i64 %i.s, 1
  %i.y = icmp eq i64 %i.v, 0
  %unroll_iter = and i64 %i.s, 2147483646
  %lcmp.mod315.not = icmp eq i64 %xtraiter314, 0
  %lcmp.mod319 = trunc i32 %2 to i1
  %xtraiter330 = and i64 %wide.trip.count258, 1
  %i.z = and i32 %2, 2147483646
  %i.aa = icmp eq i32 %i.z, 2
  %unroll_iter335 = and i64 %wide.trip.count258, 1073741822
  %lcmp.mod331.not = icmp eq i64 %xtraiter330, 0
  %lcmp.mod334 = trunc i32 %i.q to i1
  br label %.preheader195

.preheader195:                                    ; preds = %.preheader195.lr.ph, %bb.p
  %.0234 = phi ptr [ %i.n, %.preheader195.lr.ph ], [ %i.pq, %bb.p ] ; 44 uses
  %.0104233 = phi double [ f0x7FEFFFFFFFFFFFFF, %.preheader195.lr.ph ], [ %.2, %bb.p ]
  %.0108232 = phi i32 [ 1, %.preheader195.lr.ph ], [ %i.pp, %bb.p ] ; 3 uses
  %.0178231 = phi i32 [ 0, %.preheader195.lr.ph ], [ %.2180.lcssa290, %bb.p ]
  %.0185230 = phi i32 [ 0, %.preheader195.lr.ph ], [ %.2187.lcssa289, %bb.p ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader195, %.loopexit
  %.1186 = phi i32 [ %.2187.lcssa289, %.loopexit ], [ %.0185230, %.preheader195 ] ; 3 uses
  %.1179 = phi i32 [ %.2180.lcssa290, %.loopexit ], [ %.0178231, %.preheader195 ] ; 3 uses
  %.1 = phi double [ %.2, %.loopexit ], [ %.0104233, %.preheader195 ] ; 4 uses
  br i1 %i.e, label %.lr.ph25.i.i.preheader, label %.preheader193

.lr.ph25.i.i.preheader:                           ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %i.u, i1 false), !tbaa !20
  br label %.lr.ph25.i.i

.loopexit.i.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i.i.new, %.lr.ph25.i.i
  %.1.lcssa.i.i = phi double [ %.01923.i.i, %.lr.ph25.i.i ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.ce, %.lr.ph.i.i.new ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond34.not.i.i = icmp eq i64 %indvars.iv.next31.i.i, %i.s
  br i1 %exitcond34.not.i.i, label %.preheader.us.i.a, label %.lr.ph25.i.i, !llvm.loop !67

.lr.ph25.i.i:                                     ; preds = %.lr.ph25.i.i.preheader, %.loopexit.i.i
  %indvars.iv30.i.i = phi i64 [ %indvars.iv.next31.i.i, %.loopexit.i.i ], [ 0, %.lr.ph25.i.i.preheader ] ; 5 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.loopexit.i.i ], [ 1, %.lr.ph25.i.i.preheader ] ; 3 uses
  %.01923.i.i = phi double [ %.1.lcssa.i.i, %.loopexit.i.i ], [ 0.000000e+00, %.lr.ph25.i.i.preheader ] ; 3 uses
  %i.ab = sub i64 %i.w, %indvars.iv30.i.i
  %indvars.iv.next31.i.i = add nuw nsw i64 %indvars.iv30.i.i, 1 ; 3 uses
  %i.ac = icmp samesign ult i64 %indvars.iv.next31.i.i, %i.s
  br i1 %i.ac, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph25.i.i
  %i.ad = sub i64 %i.v, %indvars.iv30.i.i
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv30.i.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !34 ; 5 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv30.i.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !20
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !34 ; 5 uses
  %xtraiter = and i64 %i.ad, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i, %.prol.preheader
  %indvars.iv27.i.i.prol = phi i64 [ %indvars.iv.next28.i.i.prol, %.prol.preheader ], [ %indvars.iv.i.i, %.lr.ph.i.i ] ; 3 uses
  %.121.i.i.prol = phi double [ %i.at, %.prol.preheader ], [ %.01923.i.i, %.lr.ph.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv27.i.i.prol
  %i.am = load double, ptr %i.al, align 8, !tbaa !35
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv27.i.i.prol
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !20
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !35
  %i.as = fdiv double %i.am, %i.ar
  %i.at = fadd double %.121.i.i.prol, %i.as       ; 3 uses
  %indvars.iv.next28.i.i.prol = add nuw nsw i64 %indvars.iv27.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !68

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i
  %.lcssa.unr = phi double [ poison, %.lr.ph.i.i ], [ %i.at, %.prol.preheader ]
  %indvars.iv27.i.i.unr = phi i64 [ %indvars.iv.i.i, %.lr.ph.i.i ], [ %indvars.iv.next28.i.i.prol, %.prol.preheader ]
  %.121.i.i.unr = phi double [ %.01923.i.i, %.lr.ph.i.i ], [ %i.at, %.prol.preheader ]
  %i.au = icmp ult i64 %i.ab, 3
  br i1 %i.au, label %.loopexit.i.i, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i.i.new
  %indvars.iv27.i.i = phi i64 [ %indvars.iv.next28.i.i.3, %.lr.ph.i.i.new ], [ %indvars.iv27.i.i.unr, %.prol.loopexit ] ; 6 uses
  %.121.i.i = phi double [ %i.ce, %.lr.ph.i.i.new ], [ %.121.i.i.unr, %.prol.loopexit ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv27.i.i
  %i.aw = load double, ptr %i.av, align 8, !tbaa !35
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv27.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !20
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !35
  %i.bc = fdiv double %i.aw, %i.bb
  %i.bd = fadd double %.121.i.i, %i.bc
  %indvars.iv.next28.i.i = add nuw nsw i64 %indvars.iv27.i.i, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next28.i.i
  %i.bf = load double, ptr %i.be, align 8, !tbaa !35
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv.next28.i.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !20
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !35
  %i.bl = fdiv double %i.bf, %i.bk
  %i.bm = fadd double %i.bd, %i.bl
  %indvars.iv.next28.i.i.1 = add nuw nsw i64 %indvars.iv27.i.i, 2 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next28.i.i.1
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !35
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv.next28.i.i.1
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !20
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !35
  %i.bu = fdiv double %i.bo, %i.bt
  %i.bv = fadd double %i.bm, %i.bu
  %indvars.iv.next28.i.i.2 = add nuw nsw i64 %indvars.iv27.i.i, 3 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.next28.i.i.2
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !35
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv.next28.i.i.2
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !20
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ca
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !35
  %i.cd = fdiv double %i.bx, %i.cc
  %i.ce = fadd double %i.bv, %i.cd                ; 2 uses
  %indvars.iv.next28.i.i.3 = add nuw nsw i64 %indvars.iv27.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next28.i.i.3, %i.s
  br i1 %exitcond.not.i.i.3, label %.loopexit.i.i, label %.lr.ph.i.i.new, !llvm.loop !70

.preheader.us.i.a:                                ; preds = %.loopexit.i.i, %.split.us.us.i
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %.split.us.us.i ], [ 0, %.loopexit.i.i ] ; 5 uses
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %.split.us.us.i ], [ 1, %.loopexit.i.i ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv33.i
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !34
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv33.i ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %gain_exchange.exit.us.us.i, %.preheader.us.i.a
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i.a ], [ %indvars.iv.next.i, %gain_exchange.exit.us.us.i ] ; 5 uses
  %i.ci = icmp eq i64 %indvars.iv33.i, %indvars.iv.i
  br i1 %i.ci, label %gain_exchange.exit.us.us.i, label %.lr.ph25.preheader.i.i.us.us.i

.lr.ph25.preheader.i.i.us.us.i:                   ; preds = %bb.c
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !20 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv.i ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !20
  store i32 %i.cl, ptr %i.ch, align 4, !tbaa !20
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !20
  br label %.lr.ph25.i.i.us.us.i

.loopexit.i.i.i:                                  ; preds = %.prol.loopexit310, %.lr.ph.i.i.us.us.i.new, %.lr.ph25.i.i.us.us.i
  %.1.lcssa.i.i.i = phi double [ %.01923.i.i.us.us.i, %.lr.ph25.i.i.us.us.i ], [ %.lcssa304.unr.a, %.prol.loopexit310 ], [ %i.ep, %.lr.ph.i.i.us.us.i.new ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.us.us.i, 1
  %exitcond34.not.i.i.i = icmp eq i64 %indvars.iv.next31.i.i.us.us.i, %i.s
  br i1 %exitcond34.not.i.i.i, label %.loopexit.i.i.us.us.i, label %.lr.ph25.i.i.us.us.i, !llvm.loop !67

.lr.ph25.i.i.us.us.i:                             ; preds = %.loopexit.i.i.i, %.lr.ph25.preheader.i.i.us.us.i
  %indvars.iv30.i.i.us.us.i = phi i64 [ 0, %.lr.ph25.preheader.i.i.us.us.i ], [ %indvars.iv.next31.i.i.us.us.i, %.loopexit.i.i.i ] ; 5 uses
  %indvars.iv.i.i.us.us.i = phi i64 [ 1, %.lr.ph25.preheader.i.i.us.us.i ], [ %indvars.iv.next.i.i.i, %.loopexit.i.i.i ] ; 3 uses
  %.01923.i.i.us.us.i = phi double [ 0.000000e+00, %.lr.ph25.preheader.i.i.us.us.i ], [ %.1.lcssa.i.i.i, %.loopexit.i.i.i ] ; 3 uses
  %i.cm = sub i64 %i.w, %indvars.iv30.i.i.us.us.i
  %indvars.iv.next31.i.i.us.us.i = add nuw nsw i64 %indvars.iv30.i.i.us.us.i, 1 ; 3 uses
  %i.cn = icmp samesign ult i64 %indvars.iv.next31.i.i.us.us.i, %i.s
  br i1 %i.cn, label %.lr.ph.i.i.us.us.i, label %.loopexit.i.i.i

.lr.ph.i.i.us.us.i:                               ; preds = %.lr.ph25.i.i.us.us.i
  %i.co = sub i64 %i.v, %indvars.iv30.i.i.us.us.i
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv30.i.i.us.us.i
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !34 ; 5 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv30.i.i.us.us.i
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !20
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !34 ; 5 uses
  %xtraiter311 = and i64 %i.co, 3                 ; 2 uses
  %lcmp.mod312.not = icmp eq i64 %xtraiter311, 0
  br i1 %lcmp.mod312.not, label %.prol.loopexit310, label %.prol.preheader309

.prol.preheader309:                               ; preds = %.lr.ph.i.i.us.us.i, %.prol.preheader309
  %indvars.iv27.i.i.us.us.i.prol = phi i64 [ %indvars.iv.next28.i.i.us.us.i.prol, %.prol.preheader309 ], [ %indvars.iv.i.i.us.us.i, %.lr.ph.i.i.us.us.i ] ; 3 uses
  %.121.i.i.us.us.i.prol = phi double [ %i.de, %.prol.preheader309 ], [ %.01923.i.i.us.us.i, %.lr.ph.i.i.us.us.i ]
  %prol.iter313 = phi i64 [ %prol.iter313.next, %.prol.preheader309 ], [ 0, %.lr.ph.i.i.us.us.i ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv27.i.i.us.us.i.prol
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !35
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv27.i.i.us.us.i.prol
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !20
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.da
  %i.dc = load double, ptr %i.db, align 8, !tbaa !35
  %i.dd = fdiv double %i.cx, %i.dc
  %i.de = fadd double %.121.i.i.us.us.i.prol, %i.dd ; 3 uses
  %indvars.iv.next28.i.i.us.us.i.prol = add nuw nsw i64 %indvars.iv27.i.i.us.us.i.prol, 1 ; 2 uses
  %prol.iter313.next = add i64 %prol.iter313, 1   ; 2 uses
  %prol.iter313.cmp.not = icmp eq i64 %prol.iter313.next, %xtraiter311
  br i1 %prol.iter313.cmp.not, label %.prol.loopexit310, label %.prol.preheader309, !llvm.loop !71

.prol.loopexit310:                                ; preds = %.prol.preheader309, %.lr.ph.i.i.us.us.i
  %.lcssa304.unr.a = phi double [ poison, %.lr.ph.i.i.us.us.i ], [ %i.de, %.prol.preheader309 ]
  %indvars.iv27.i.i.us.us.i.unr = phi i64 [ %indvars.iv.i.i.us.us.i, %.lr.ph.i.i.us.us.i ], [ %indvars.iv.next28.i.i.us.us.i.prol, %.prol.preheader309 ]
  %.121.i.i.us.us.i.unr = phi double [ %.01923.i.i.us.us.i, %.lr.ph.i.i.us.us.i ], [ %i.de, %.prol.preheader309 ]
  %i.df = icmp ult i64 %i.cm, 3
  br i1 %i.df, label %.loopexit.i.i.i, label %.lr.ph.i.i.us.us.i.new

.lr.ph.i.i.us.us.i.new:                           ; preds = %.prol.loopexit310, %.lr.ph.i.i.us.us.i.new
  %indvars.iv27.i.i.us.us.i = phi i64 [ %indvars.iv.next28.i.i.us.us.i.3, %.lr.ph.i.i.us.us.i.new ], [ %indvars.iv27.i.i.us.us.i.unr, %.prol.loopexit310 ] ; 6 uses
  %.121.i.i.us.us.i = phi double [ %i.ep, %.lr.ph.i.i.us.us.i.new ], [ %.121.i.i.us.us.i.unr, %.prol.loopexit310 ]
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv27.i.i.us.us.i
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !35
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv27.i.i.us.us.i
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !20
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !35
  %i.dn = fdiv double %i.dh, %i.dm
  %i.do = fadd double %.121.i.i.us.us.i, %i.dn
  %indvars.iv.next28.i.i.us.us.i = add nuw nsw i64 %indvars.iv27.i.i.us.us.i, 1 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv.next28.i.i.us.us.i
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !35
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv.next28.i.i.us.us.i
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !20
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.dt
  %i.dv = load double, ptr %i.du, align 8, !tbaa !35
  %i.dw = fdiv double %i.dq, %i.dv
  %i.dx = fadd double %i.do, %i.dw
  %indvars.iv.next28.i.i.us.us.i.1 = add nuw nsw i64 %indvars.iv27.i.i.us.us.i, 2 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv.next28.i.i.us.us.i.1
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !35
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv.next28.i.i.us.us.i.1
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !20
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.ec
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !35
  %i.ef = fdiv double %i.dz, %i.ee
  %i.eg = fadd double %i.dx, %i.ef
  %indvars.iv.next28.i.i.us.us.i.2 = add nuw nsw i64 %indvars.iv27.i.i.us.us.i, 3 ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv.next28.i.i.us.us.i.2
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !35
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv.next28.i.i.us.us.i.2
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !20
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.el
  %i.en = load double, ptr %i.em, align 8, !tbaa !35
  %i.eo = fdiv double %i.ei, %i.en
  %i.ep = fadd double %i.eg, %i.eo                ; 2 uses
  %indvars.iv.next28.i.i.us.us.i.3 = add nuw nsw i64 %indvars.iv27.i.i.us.us.i, 4 ; 2 uses
  %exitcond.not.i.i.us.us.i.3 = icmp eq i64 %indvars.iv.next28.i.i.us.us.i.3, %i.s
  br i1 %exitcond.not.i.i.us.us.i.3, label %.loopexit.i.i.i, label %.lr.ph.i.i.us.us.i.new, !llvm.loop !70

.loopexit.i.i.us.us.i:                            ; preds = %.loopexit.i.i.i
  %6 = load i32, ptr %i.ch, align 4, !tbaa !20
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !20
  store i32 %6, ptr %i.ck, align 4, !tbaa !20
  %7 = fsub double %.1.lcssa.i.i, %.1.lcssa.i.i.i
  br label %gain_exchange.exit.us.us.i

gain_exchange.exit.us.us.i:                       ; preds = %.loopexit.i.i.us.us.i, %bb.c
  %.0.i.us.us.i = phi double [ %7, %.loopexit.i.i.us.us.i ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !34
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv33.i
  store double %.0.i.us.us.i, ptr %i.es, align 8, !tbaa !35
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.i
  store double %.0.i.us.us.i, ptr %i.et, align 8, !tbaa !35
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv31.i
  br i1 %exitcond.not.i, label %.split.us.us.i, label %bb.c, !llvm.loop !72

.split.us.us.i:                                   ; preds = %gain_exchange.exit.us.us.i
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next34.i, %i.s
  br i1 %exitcond39.not.i, label %compute_gain.exit, label %.preheader.us.i.a, !llvm.loop !73

compute_gain.exit:                                ; preds = %.split.us.us.i
  br i1 %i.r, label %.lr.ph213, label %.preheader193

.lr.ph213:                                        ; preds = %compute_gain.exit, %compute_gain.exit168
  %indvars.iv255 = phi i64 [ %indvars.iv.next256, %compute_gain.exit168 ], [ 0, %compute_gain.exit ] ; 3 uses
  %.2180211 = phi i32 [ %.4182, %compute_gain.exit168 ], [ %.1179, %compute_gain.exit ]
  %.2187210 = phi i32 [ %.4189, %compute_gain.exit168 ], [ %.1186, %compute_gain.exit ]
  br label %.lr.ph32.split.us.i

.lr.ph32.split.us.i:                              ; preds = %.lr.ph213, %..loopexit_crit_edge.us.i
  %.3188 = phi i32 [ %.4189, %..loopexit_crit_edge.us.i ], [ %.2187210, %.lr.ph213 ] ; 3 uses
  %.3181 = phi i32 [ %.4182, %..loopexit_crit_edge.us.i ], [ %.2180211, %.lr.ph213 ] ; 3 uses
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i, %..loopexit_crit_edge.us.i ], [ 0, %.lr.ph213 ] ; 7 uses
  %.02329.us.i = phi double [ %.3.us.i, %..loopexit_crit_edge.us.i ], [ f0xFFEFFFFFFFFFFFFF, %.lr.ph213 ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv34.i
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !20
  %.not.us.i = icmp eq i32 %i.ev, 0
  br i1 %.not.us.i, label %.preheader.us.i120, label %..loopexit_crit_edge.us.i

.preheader.us.i120.new:                           ; preds = %.preheader.us.i120, %bb.k
  %.5190 = phi i32 [ %.6191.1, %bb.k ], [ %.3188, %.preheader.us.i120 ] ; 3 uses
  %.5183 = phi i32 [ %.6184.1, %bb.k ], [ %.3181, %.preheader.us.i120 ] ; 3 uses
  %indvars.iv.i121 = phi i64 [ %indvars.iv.next.i122.1, %bb.k ], [ 0, %.preheader.us.i120 ] ; 6 uses
  %.127.us.i = phi double [ %.2.us.i.1, %bb.k ], [ %.02329.us.i, %.preheader.us.i120 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.k ], [ 0, %.preheader.us.i120 ]
  %.not25.us.i = icmp eq i64 %indvars.iv34.i, %indvars.iv.i121
  br i1 %.not25.us.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.preheader.us.i120.new
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i121
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !20
  %.not26.us.i = icmp eq i32 %i.ex, 0
  br i1 %.not26.us.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ey = load ptr, ptr %i.fr, align 8, !tbaa !34
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.i121
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !35 ; 2 uses
  %i.fb = fcmp ogt double %i.fa, %.127.us.i
  br i1 %i.fb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.fc = trunc nuw nsw i64 %indvars.iv.i121 to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %.preheader.us.i120.new
  %.6191 = phi i32 [ %.5190, %.preheader.us.i120.new ], [ %i.fs, %bb.f ], [ %.5190, %bb.e ], [ %.5190, %bb.d ] ; 3 uses
  %.6184 = phi i32 [ %.5183, %.preheader.us.i120.new ], [ %i.fc, %bb.f ], [ %.5183, %bb.e ], [ %.5183, %bb.d ] ; 3 uses
  %.2.us.i = phi double [ %.127.us.i, %.preheader.us.i120.new ], [ %i.fa, %bb.f ], [ %.127.us.i, %bb.e ], [ %.127.us.i, %bb.d ] ; 4 uses
  %indvars.iv.next.i122 = or disjoint i64 %indvars.iv.i121, 1 ; 4 uses
  %.not25.us.i.1 = icmp eq i64 %indvars.iv34.i, %indvars.iv.next.i122
  br i1 %.not25.us.i.1, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i122
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !20
  %.not26.us.i.1 = icmp eq i32 %i.fe, 0
  br i1 %.not26.us.i.1, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ff = load ptr, ptr %i.fr, align 8, !tbaa !34
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv.next.i122
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !35 ; 2 uses
  %i.fi = fcmp ogt double %i.fh, %.2.us.i
  br i1 %i.fi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.fj = trunc nuw nsw i64 %indvars.iv.next.i122 to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.6191.1 = phi i32 [ %.6191, %bb.g ], [ %i.fs, %bb.j ], [ %.6191, %bb.i ], [ %.6191, %bb.h ] ; 3 uses
  %.6184.1 = phi i32 [ %.6184, %bb.g ], [ %i.fj, %bb.j ], [ %.6184, %bb.i ], [ %.6184, %bb.h ] ; 3 uses
  %.2.us.i.1 = phi double [ %.2.us.i, %bb.g ], [ %i.fh, %bb.j ], [ %.2.us.i, %bb.i ], [ %.2.us.i, %bb.h ] ; 3 uses
  %indvars.iv.next.i122.1 = add nuw nsw i64 %indvars.iv.i121, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.us.i.loopexit.unr-lcssa, label %.preheader.us.i120.new, !llvm.loop !74

..loopexit_crit_edge.us.i.loopexit.unr-lcssa:     ; preds = %bb.k
  br i1 %lcmp.mod315.not, label %..loopexit_crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.us.i.loopexit.unr-lcssa, %.preheader.us.i120
  %.5190.epil.init = phi i32 [ %.3188, %.preheader.us.i120 ], [ %.6191.1, %..loopexit_crit_edge.us.i.loopexit.unr-lcssa ] ; 3 uses
  %.5183.epil.init = phi i32 [ %.3181, %.preheader.us.i120 ], [ %.6184.1, %..loopexit_crit_edge.us.i.loopexit.unr-lcssa ] ; 3 uses
  %indvars.iv.i121.epil.init = phi i64 [ 0, %.preheader.us.i120 ], [ %indvars.iv.next.i122.1, %..loopexit_crit_edge.us.i.loopexit.unr-lcssa ] ; 4 uses
  %.127.us.i.epil.init = phi double [ %.02329.us.i, %.preheader.us.i120 ], [ %.2.us.i.1, %..loopexit_crit_edge.us.i.loopexit.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod319)
  %.not25.us.i.epil = icmp eq i64 %indvars.iv34.i, %indvars.iv.i121.epil.init
  br i1 %.not25.us.i.epil, label %..loopexit_crit_edge.us.i, label %bb.l

bb.l:                                             ; preds = %.epil.preheader
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i121.epil.init
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !20
  %.not26.us.i.epil = icmp eq i32 %i.fl, 0
  br i1 %.not26.us.i.epil, label %bb.m, label %..loopexit_crit_edge.us.i

bb.m:                                             ; preds = %bb.l
  %i.fm = load ptr, ptr %i.fr, align 8, !tbaa !34
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.i121.epil.init
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !35 ; 2 uses
  %i.fp = fcmp ogt double %i.fo, %.127.us.i.epil.init
  br i1 %i.fp, label %bb.n, label %..loopexit_crit_edge.us.i

bb.n:                                             ; preds = %bb.m
  %i.fq = trunc nuw nsw i64 %indvars.iv.i121.epil.init to i32
  br label %..loopexit_crit_edge.us.i

..loopexit_crit_edge.us.i:                        ; preds = %..loopexit_crit_edge.us.i.loopexit.unr-lcssa, %bb.n, %bb.m, %bb.l, %.epil.preheader, %.lr.ph32.split.us.i
  %.4189 = phi i32 [ %.3188, %.lr.ph32.split.us.i ], [ %.6191.1, %..loopexit_crit_edge.us.i.loopexit.unr-lcssa ], [ %.5190.epil.init, %.epil.preheader ], [ %i.fs, %bb.n ], [ %.5190.epil.init, %bb.m ], [ %.5190.epil.init, %bb.l ] ; 5 uses
  %.4182 = phi i32 [ %.3181, %.lr.ph32.split.us.i ], [ %.6184.1, %..loopexit_crit_edge.us.i.loopexit.unr-lcssa ], [ %.5183.epil.init, %.epil.preheader ], [ %i.fq, %bb.n ], [ %.5183.epil.init, %bb.m ], [ %.5183.epil.init, %bb.l ] ; 5 uses
  %.3.us.i = phi double [ %.02329.us.i, %.lr.ph32.split.us.i ], [ %.2.us.i.1, %..loopexit_crit_edge.us.i.loopexit.unr-lcssa ], [ %.127.us.i.epil.init, %.epil.preheader ], [ %i.fo, %bb.n ], [ %.127.us.i.epil.init, %bb.m ], [ %.127.us.i.epil.init, %bb.l ]
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next35.i, %i.s
  br i1 %exitcond38.not.i, label %select_max.exit, label %.lr.ph32.split.us.i, !llvm.loop !75

.preheader.us.i120:                               ; preds = %.lr.ph32.split.us.i
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv34.i ; 3 uses
  %i.fs = trunc nuw nsw i64 %indvars.iv34.i to i32 ; 3 uses
  br i1 %i.y, label %.epil.preheader, label %.preheader.us.i120.new

select_max.exit:                                  ; preds = %..loopexit_crit_edge.us.i
  %i.ft = sext i32 %.4189 to i64                  ; 3 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ft
  store i32 1, ptr %i.fu, align 4, !tbaa !20
  %i.fv = sext i32 %.4182 to i64                  ; 3 uses
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.fv
  store i32 1, ptr %i.fw, align 4, !tbaa !20
  %i.fx = getelementptr inbounds [4 x i8], ptr %.0234, i64 %i.ft ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !20
  %i.fz = getelementptr inbounds [4 x i8], ptr %.0234, i64 %i.fv ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !20
  store i32 %i.ga, ptr %i.fx, align 4, !tbaa !20
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !20
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv255
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !16 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  store i32 %.4189, ptr %i.gd, align 4, !tbaa !20
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i32 %.4182, ptr %i.ge, align 4, !tbaa !20
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ft
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !34
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.fv
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !35
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv255
  store double %i.gi, ptr %i.gj, align 8, !tbaa !35
  br label %.lr.ph25.i.i125

.loopexit.i.i130:                                 ; preds = %.prol.loopexit321, %.lr.ph.i.i163.new, %.lr.ph25.i.i125
  %.1.lcssa.i.i131 = phi double [ %.01923.i.i128, %.lr.ph25.i.i125 ], [ %.lcssa305.unr.a, %.prol.loopexit321 ], [ %i.in, %.lr.ph.i.i163.new ] ; 2 uses
  %indvars.iv.next.i.i132 = add nuw nsw i64 %indvars.iv.i.i127, 1
  %exitcond34.not.i.i133 = icmp eq i64 %indvars.iv.next31.i.i129, %i.s
  br i1 %exitcond34.not.i.i133, label %.preheader.us.i135, label %.lr.ph25.i.i125, !llvm.loop !67

.lr.ph25.i.i125:                                  ; preds = %select_max.exit, %.loopexit.i.i130
  %indvars.iv30.i.i126 = phi i64 [ %indvars.iv.next31.i.i129, %.loopexit.i.i130 ], [ 0, %select_max.exit ] ; 5 uses
  %indvars.iv.i.i127 = phi i64 [ %indvars.iv.next.i.i132, %.loopexit.i.i130 ], [ 1, %select_max.exit ] ; 3 uses
  %.01923.i.i128 = phi double [ %.1.lcssa.i.i131, %.loopexit.i.i130 ], [ 0.000000e+00, %select_max.exit ] ; 3 uses
  %i.gk = sub i64 %i.w, %indvars.iv30.i.i126
  %indvars.iv.next31.i.i129 = add nuw nsw i64 %indvars.iv30.i.i126, 1 ; 3 uses
  %i.gl = icmp samesign ult i64 %indvars.iv.next31.i.i129, %i.s
  br i1 %i.gl, label %.lr.ph.i.i163, label %.loopexit.i.i130

.lr.ph.i.i163:                                    ; preds = %.lr.ph25.i.i125
  %i.gm = sub i64 %i.v, %indvars.iv30.i.i126
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv30.i.i126
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !34 ; 5 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv30.i.i126
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !20
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %5, i64 %i.gr
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !34 ; 5 uses
  %xtraiter322 = and i64 %i.gm, 3                 ; 2 uses
  %lcmp.mod323.not = icmp eq i64 %xtraiter322, 0
  br i1 %lcmp.mod323.not, label %.prol.loopexit321, label %.prol.preheader320

.prol.preheader320:                               ; preds = %.lr.ph.i.i163, %.prol.preheader320
  %indvars.iv27.i.i164.prol = phi i64 [ %indvars.iv.next28.i.i166.prol, %.prol.preheader320 ], [ %indvars.iv.i.i127, %.lr.ph.i.i163 ] ; 3 uses
  %.121.i.i165.prol = phi double [ %i.hc, %.prol.preheader320 ], [ %.01923.i.i128, %.lr.ph.i.i163 ]
  %prol.iter324 = phi i64 [ %prol.iter324.next, %.prol.preheader320 ], [ 0, %.lr.ph.i.i163 ]
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv27.i.i164.prol
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !35
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv27.i.i164.prol
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !20
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.gy
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !35
  %i.hb = fdiv double %i.gv, %i.ha
  %i.hc = fadd double %.121.i.i165.prol, %i.hb    ; 3 uses
  %indvars.iv.next28.i.i166.prol = add nuw nsw i64 %indvars.iv27.i.i164.prol, 1 ; 2 uses
  %prol.iter324.next = add i64 %prol.iter324, 1   ; 2 uses
  %prol.iter324.cmp.not = icmp eq i64 %prol.iter324.next, %xtraiter322
  br i1 %prol.iter324.cmp.not, label %.prol.loopexit321, label %.prol.preheader320, !llvm.loop !76

.prol.loopexit321:                                ; preds = %.prol.preheader320, %.lr.ph.i.i163
  %.lcssa305.unr.a = phi double [ poison, %.lr.ph.i.i163 ], [ %i.hc, %.prol.preheader320 ]
  %indvars.iv27.i.i164.unr = phi i64 [ %indvars.iv.i.i127, %.lr.ph.i.i163 ], [ %indvars.iv.next28.i.i166.prol, %.prol.preheader320 ]
  %.121.i.i165.unr = phi double [ %.01923.i.i128, %.lr.ph.i.i163 ], [ %i.hc, %.prol.preheader320 ]
  %i.hd = icmp ult i64 %i.gk, 3
  br i1 %i.hd, label %.loopexit.i.i130, label %.lr.ph.i.i163.new

.lr.ph.i.i163.new:                                ; preds = %.prol.loopexit321, %.lr.ph.i.i163.new
  %indvars.iv27.i.i164 = phi i64 [ %indvars.iv.next28.i.i166.3, %.lr.ph.i.i163.new ], [ %indvars.iv27.i.i164.unr, %.prol.loopexit321 ] ; 6 uses
  %.121.i.i165 = phi double [ %i.in, %.lr.ph.i.i163.new ], [ %.121.i.i165.unr, %.prol.loopexit321 ]
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv27.i.i164
  %i.hf = load double, ptr %i.he, align 8, !tbaa !35
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv27.i.i164
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !20
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.hi
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !35
  %i.hl = fdiv double %i.hf, %i.hk
  %i.hm = fadd double %.121.i.i165, %i.hl
  %indvars.iv.next28.i.i166 = add nuw nsw i64 %indvars.iv27.i.i164, 1 ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.next28.i.i166
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !35
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv.next28.i.i166
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !20
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.hr
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !35
  %i.hu = fdiv double %i.ho, %i.ht
  %i.hv = fadd double %i.hm, %i.hu
  %indvars.iv.next28.i.i166.1 = add nuw nsw i64 %indvars.iv27.i.i164, 2 ; 2 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.next28.i.i166.1
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !35
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv.next28.i.i166.1
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !20
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.ia
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !35
  %i.id = fdiv double %i.hx, %i.ic
  %i.ie = fadd double %i.hv, %i.id
  %indvars.iv.next28.i.i166.2 = add nuw nsw i64 %indvars.iv27.i.i164, 3 ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.next28.i.i166.2
  %i.ig = load double, ptr %i.if, align 8, !tbaa !35
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv.next28.i.i166.2
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !20
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.ij
  %i.il = load double, ptr %i.ik, align 8, !tbaa !35
  %i.im = fdiv double %i.ig, %i.il
  %i.in = fadd double %i.ie, %i.im                ; 2 uses
  %indvars.iv.next28.i.i166.3 = add nuw nsw i64 %indvars.iv27.i.i164, 4 ; 2 uses
  %exitcond.not.i.i167.3 = icmp eq i64 %indvars.iv.next28.i.i166.3, %i.s
  br i1 %exitcond.not.i.i167.3, label %.loopexit.i.i130, label %.lr.ph.i.i163.new, !llvm.loop !70

.preheader.us.i135:                               ; preds = %.loopexit.i.i130, %.split.us.us.i154
  %indvars.iv33.i136 = phi i64 [ %indvars.iv.next34.i155, %.split.us.us.i154 ], [ 0, %.loopexit.i.i130 ] ; 5 uses
  %indvars.iv31.i137 = phi i64 [ %indvars.iv.next32.i156, %.split.us.us.i154 ], [ 1, %.loopexit.i.i130 ] ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv33.i136
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !34
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv33.i136 ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %gain_exchange.exit.us.us.i150, %.preheader.us.i135
  %indvars.iv.i138 = phi i64 [ 0, %.preheader.us.i135 ], [ %indvars.iv.next.i152, %gain_exchange.exit.us.us.i150 ] ; 5 uses
  %i.ir = icmp eq i64 %indvars.iv33.i136, %indvars.iv.i138
  br i1 %i.ir, label %gain_exchange.exit.us.us.i150, label %.lr.ph25.preheader.i.i.us.us.i139

.lr.ph25.preheader.i.i.us.us.i139:                ; preds = %bb.o
  %i.is = load i32, ptr %i.iq, align 4, !tbaa !20 ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv.i138 ; 3 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !20
  store i32 %i.iu, ptr %i.iq, align 4, !tbaa !20
  store i32 %i.is, ptr %i.it, align 4, !tbaa !20
  br label %.lr.ph25.i.i.us.us.i140

.loopexit.i.i.i144:                               ; preds = %.prol.loopexit326, %.lr.ph.i.i.us.us.i158.new, %.lr.ph25.i.i.us.us.i140
  %.1.lcssa.i.i.i145 = phi double [ %.01923.i.i.us.us.i143, %.lr.ph25.i.i.us.us.i140 ], [ %.lcssa306.unr, %.prol.loopexit326 ], [ %i.ky, %.lr.ph.i.i.us.us.i158.new ] ; 2 uses
  %indvars.iv.next.i.i.i146 = add nuw nsw i64 %indvars.iv.i.i.us.us.i142, 1
  %exitcond34.not.i.i.i147 = icmp eq i64 %indvars.iv.next31.i.i.us.us.i144, %i.s
  br i1 %exitcond34.not.i.i.i147, label %.loopexit.i.i.us.us.i145, label %.lr.ph25.i.i.us.us.i140, !llvm.loop !67

.lr.ph25.i.i.us.us.i140:                          ; preds = %.loopexit.i.i.i144, %.lr.ph25.preheader.i.i.us.us.i139
  %indvars.iv30.i.i.us.us.i141 = phi i64 [ 0, %.lr.ph25.preheader.i.i.us.us.i139 ], [ %indvars.iv.next31.i.i.us.us.i144, %.loopexit.i.i.i144 ] ; 5 uses
  %indvars.iv.i.i.us.us.i142 = phi i64 [ 1, %.lr.ph25.preheader.i.i.us.us.i139 ], [ %indvars.iv.next.i.i.i146, %.loopexit.i.i.i144 ] ; 3 uses
  %.01923.i.i.us.us.i143 = phi double [ 0.000000e+00, %.lr.ph25.preheader.i.i.us.us.i139 ], [ %.1.lcssa.i.i.i145, %.loopexit.i.i.i144 ] ; 3 uses
  %i.iv = sub i64 %i.w, %indvars.iv30.i.i.us.us.i141
  %indvars.iv.next31.i.i.us.us.i144 = add nuw nsw i64 %indvars.iv30.i.i.us.us.i141, 1 ; 3 uses
  %i.iw = icmp samesign ult i64 %indvars.iv.next31.i.i.us.us.i144, %i.s
  br i1 %i.iw, label %.lr.ph.i.i.us.us.i158, label %.loopexit.i.i.i144

.lr.ph.i.i.us.us.i158:                            ; preds = %.lr.ph25.i.i.us.us.i140
  %i.ix = sub i64 %i.v, %indvars.iv30.i.i.us.us.i141
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv30.i.i.us.us.i141
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !34 ; 5 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv30.i.i.us.us.i141
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !20
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [8 x i8], ptr %5, i64 %i.jc
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !34 ; 5 uses
  %xtraiter327 = and i64 %i.ix, 3                 ; 2 uses
  %lcmp.mod328.not = icmp eq i64 %xtraiter327, 0
  br i1 %lcmp.mod328.not, label %.prol.loopexit326, label %.prol.preheader325

.prol.preheader325:                               ; preds = %.lr.ph.i.i.us.us.i158, %.prol.preheader325
  %indvars.iv27.i.i.us.us.i159.prol = phi i64 [ %indvars.iv.next28.i.i.us.us.i161.prol, %.prol.preheader325 ], [ %indvars.iv.i.i.us.us.i142, %.lr.ph.i.i.us.us.i158 ] ; 3 uses
  %.121.i.i.us.us.i160.prol = phi double [ %i.jn, %.prol.preheader325 ], [ %.01923.i.i.us.us.i143, %.lr.ph.i.i.us.us.i158 ]
  %prol.iter329 = phi i64 [ %prol.iter329.next, %.prol.preheader325 ], [ 0, %.lr.ph.i.i.us.us.i158 ]
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv27.i.i.us.us.i159.prol
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !35
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv27.i.i.us.us.i159.prol
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !20
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.je, i64 %i.jj
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !35
  %i.jm = fdiv double %i.jg, %i.jl
  %i.jn = fadd double %.121.i.i.us.us.i160.prol, %i.jm ; 3 uses
  %indvars.iv.next28.i.i.us.us.i161.prol = add nuw nsw i64 %indvars.iv27.i.i.us.us.i159.prol, 1 ; 2 uses
  %prol.iter329.next = add i64 %prol.iter329, 1   ; 2 uses
  %prol.iter329.cmp.not = icmp eq i64 %prol.iter329.next, %xtraiter327
  br i1 %prol.iter329.cmp.not, label %.prol.loopexit326, label %.prol.preheader325, !llvm.loop !77

.prol.loopexit326:                                ; preds = %.prol.preheader325, %.lr.ph.i.i.us.us.i158
  %.lcssa306.unr = phi double [ poison, %.lr.ph.i.i.us.us.i158 ], [ %i.jn, %.prol.preheader325 ]
  %indvars.iv27.i.i.us.us.i159.unr = phi i64 [ %indvars.iv.i.i.us.us.i142, %.lr.ph.i.i.us.us.i158 ], [ %indvars.iv.next28.i.i.us.us.i161.prol, %.prol.preheader325 ]
  %.121.i.i.us.us.i160.unr = phi double [ %.01923.i.i.us.us.i143, %.lr.ph.i.i.us.us.i158 ], [ %i.jn, %.prol.preheader325 ]
  %i.jo = icmp ult i64 %i.iv, 3
  br i1 %i.jo, label %.loopexit.i.i.i144, label %.lr.ph.i.i.us.us.i158.new

.lr.ph.i.i.us.us.i158.new:                        ; preds = %.prol.loopexit326, %.lr.ph.i.i.us.us.i158.new
  %indvars.iv27.i.i.us.us.i159 = phi i64 [ %indvars.iv.next28.i.i.us.us.i161.3, %.lr.ph.i.i.us.us.i158.new ], [ %indvars.iv27.i.i.us.us.i159.unr, %.prol.loopexit326 ] ; 6 uses
  %.121.i.i.us.us.i160 = phi double [ %i.ky, %.lr.ph.i.i.us.us.i158.new ], [ %.121.i.i.us.us.i160.unr, %.prol.loopexit326 ]
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv27.i.i.us.us.i159
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !35
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv27.i.i.us.us.i159
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !20
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.je, i64 %i.jt
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !35
  %i.jw = fdiv double %i.jq, %i.jv
  %i.jx = fadd double %.121.i.i.us.us.i160, %i.jw
  %indvars.iv.next28.i.i.us.us.i161 = add nuw nsw i64 %indvars.iv27.i.i.us.us.i159, 1 ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv.next28.i.i.us.us.i161
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !35
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv.next28.i.i.us.us.i161
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !20
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.je, i64 %i.kc
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !35
  %i.kf = fdiv double %i.jz, %i.ke
  %i.kg = fadd double %i.jx, %i.kf
  %indvars.iv.next28.i.i.us.us.i161.1 = add nuw nsw i64 %indvars.iv27.i.i.us.us.i159, 2 ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv.next28.i.i.us.us.i161.1
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !35
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv.next28.i.i.us.us.i161.1
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !20
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [8 x i8], ptr %i.je, i64 %i.kl
  %i.kn = load double, ptr %i.km, align 8, !tbaa !35
  %i.ko = fdiv double %i.ki, %i.kn
  %i.kp = fadd double %i.kg, %i.ko
  %indvars.iv.next28.i.i.us.us.i161.2 = add nuw nsw i64 %indvars.iv27.i.i.us.us.i159, 3 ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv.next28.i.i.us.us.i161.2
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !35
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv.next28.i.i.us.us.i161.2
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !20
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.je, i64 %i.ku
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !35
  %i.kx = fdiv double %i.kr, %i.kw
  %i.ky = fadd double %i.kp, %i.kx                ; 2 uses
  %indvars.iv.next28.i.i.us.us.i161.3 = add nuw nsw i64 %indvars.iv27.i.i.us.us.i159, 4 ; 2 uses
  %exitcond.not.i.i.us.us.i162.3 = icmp eq i64 %indvars.iv.next28.i.i.us.us.i161.3, %i.s
  br i1 %exitcond.not.i.i.us.us.i162.3, label %.loopexit.i.i.i144, label %.lr.ph.i.i.us.us.i158.new, !llvm.loop !70

.loopexit.i.i.us.us.i145:                         ; preds = %.loopexit.i.i.i144
  %8 = load i32, ptr %i.iq, align 4, !tbaa !20
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !20
  store i32 %8, ptr %i.it, align 4, !tbaa !20
  %9 = fsub double %.1.lcssa.i.i131, %.1.lcssa.i.i.i145
  br label %gain_exchange.exit.us.us.i150

gain_exchange.exit.us.us.i150:                    ; preds = %.loopexit.i.i.us.us.i145, %bb.o
  %.0.i.us.us.i151 = phi double [ %9, %.loopexit.i.i.us.us.i145 ], [ 0.000000e+00, %bb.o ] ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i138
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !34
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %indvars.iv33.i136
  store double %.0.i.us.us.i151, ptr %i.lb, align 8, !tbaa !35
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %indvars.iv.i138
  store double %.0.i.us.us.i151, ptr %i.lc, align 8, !tbaa !35
  %indvars.iv.next.i152 = add nuw nsw i64 %indvars.iv.i138, 1 ; 2 uses
  %exitcond.not.i153 = icmp eq i64 %indvars.iv.next.i152, %indvars.iv31.i137
  br i1 %exitcond.not.i153, label %.split.us.us.i154, label %bb.o, !llvm.loop !72

.split.us.us.i154:                                ; preds = %gain_exchange.exit.us.us.i150
  %indvars.iv.next34.i155 = add nuw nsw i64 %indvars.iv33.i136, 1 ; 2 uses
  %indvars.iv.next32.i156 = add nuw nsw i64 %indvars.iv31.i137, 1
  %exitcond39.not.i157 = icmp eq i64 %indvars.iv.next34.i155, %i.s
  br i1 %exitcond39.not.i157, label %compute_gain.exit168, label %.preheader.us.i135, !llvm.loop !73

compute_gain.exit168:                             ; preds = %.split.us.us.i154
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1 ; 2 uses
  %exitcond259.not = icmp eq i64 %indvars.iv.next256, %wide.trip.count258
  br i1 %exitcond259.not, label %.lr.ph220.preheader, label %.lr.ph213, !llvm.loop !78

.lr.ph220.preheader:                              ; preds = %compute_gain.exit168
  br i1 %i.aa, label %.lr.ph220.epil.preheader, label %.lr.ph220

.preheader193.loopexit.unr-lcssa:                 ; preds = %.lr.ph220
  br i1 %lcmp.mod331.not, label %.preheader193.loopexit, label %.lr.ph220.epil.preheader

.lr.ph220.epil.preheader:                         ; preds = %.preheader193.loopexit.unr-lcssa, %.lr.ph220.preheader
  %indvars.iv260.epil.init = phi i64 [ 0, %.lr.ph220.preheader ], [ %indvars.iv.next261.1, %.preheader193.loopexit.unr-lcssa ] ; 2 uses
  %.0105219.epil.init = phi double [ 0.000000e+00, %.lr.ph220.preheader ], [ %i.mi, %.preheader193.loopexit.unr-lcssa ]
  %.0106218.epil.init = phi double [ 0.000000e+00, %.lr.ph220.preheader ], [ %.1107.1, %.preheader193.loopexit.unr-lcssa ] ; 2 uses
  %.0109217.epil.init = phi i32 [ -1, %.lr.ph220.preheader ], [ %.1110.1, %.preheader193.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod334)
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv260.epil.init
  %i.le = load double, ptr %i.ld, align 8, !tbaa !35
  %i.lf = fadd double %.0105219.epil.init, %i.le  ; 2 uses
  %i.lg = fcmp ogt double %i.lf, %.0106218.epil.init ; 2 uses
  %i.lh = trunc nuw nsw i64 %indvars.iv260.epil.init to i32
  %.1110.epil = select i1 %i.lg, i32 %i.lh, i32 %.0109217.epil.init
  %.1107.epil = select i1 %i.lg, double %i.lf, double %.0106218.epil.init
  br label %.preheader193.loopexit

.preheader193.loopexit:                           ; preds = %.preheader193.loopexit.unr-lcssa, %.lr.ph220.epil.preheader
  %.1110.lcssa = phi i32 [ %.1110.1, %.preheader193.loopexit.unr-lcssa ], [ %.1110.epil, %.lr.ph220.epil.preheader ]
  %.1107.lcssa = phi double [ %.1107.1, %.preheader193.loopexit.unr-lcssa ], [ %.1107.epil, %.lr.ph220.epil.preheader ]
  %i.li = fcmp ogt double %.1107.lcssa, 0.000000e+00
  br label %.preheader193

.preheader193:                                    ; preds = %bb.b, %compute_gain.exit, %.preheader193.loopexit
  %.2180.lcssa290 = phi i32 [ %.1179, %bb.b ], [ %.4182, %.preheader193.loopexit ], [ %.1179, %compute_gain.exit ] ; 2 uses
  %.2187.lcssa289 = phi i32 [ %.1186, %bb.b ], [ %.4189, %.preheader193.loopexit ], [ %.1186, %compute_gain.exit ] ; 2 uses
  %.0109.lcssa = phi i32 [ -1, %bb.b ], [ %.1110.lcssa, %.preheader193.loopexit ], [ -1, %compute_gain.exit ] ; 4 uses
  %.0106.lcssa = phi i1 [ false, %bb.b ], [ %i.li, %.preheader193.loopexit ], [ false, %compute_gain.exit ]
  %i.lj = icmp slt i32 %.0109.lcssa, %invariant.op
  br i1 %i.lj, label %.lr.ph225.preheader, label %._crit_edge226

.lr.ph225.preheader:                              ; preds = %.preheader193
  %i.lk = sext i32 %.0109.lcssa to i64            ; 2 uses
  %i.ll = add nsw i64 %i.lk, 1                    ; 2 uses
  %i.lm = sub i32 %.0109.lcssa, %i.q
  %i.ln = and i32 %i.lm, 1
  %lcmp.mod338.not.not = icmp eq i32 %i.ln, 0
  br i1 %lcmp.mod338.not.not, label %.lr.ph225.prol, label %.lr.ph225.prol.loopexit

.lr.ph225.prol:                                   ; preds = %.lr.ph225.preheader
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ll
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !16 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 4
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !20
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !20
  %i.lu = sext i32 %i.lr to i64
  %i.lv = getelementptr inbounds [4 x i8], ptr %.0234, i64 %i.lu ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !20
  %i.lx = sext i32 %i.lt to i64
  %i.ly = getelementptr inbounds [4 x i8], ptr %.0234, i64 %i.lx ; 2 uses
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !20
  store i32 %i.lz, ptr %i.lv, align 4, !tbaa !20
  store i32 %i.lw, ptr %i.ly, align 4, !tbaa !20
  %indvars.iv.next266.prol = add nsw i64 %i.lk, 2
  br label %.lr.ph225.prol.loopexit

.lr.ph225.prol.loopexit:                          ; preds = %.lr.ph225.prol, %.lr.ph225.preheader
  %indvars.iv265.unr = phi i64 [ %i.ll, %.lr.ph225.preheader ], [ %indvars.iv.next266.prol, %.lr.ph225.prol ]
  %i.ma = icmp eq i32 %i.x, %.0109.lcssa
  br i1 %i.ma, label %._crit_edge226, label %.lr.ph225

.lr.ph220:                                        ; preds = %.lr.ph220.preheader, %.lr.ph220
  %indvars.iv260 = phi i64 [ %indvars.iv.next261.1, %.lr.ph220 ], [ 0, %.lr.ph220.preheader ] ; 4 uses
  %.0105219 = phi double [ %i.mi, %.lr.ph220 ], [ 0.000000e+00, %.lr.ph220.preheader ]
  %.0106218 = phi double [ %.1107.1, %.lr.ph220 ], [ 0.000000e+00, %.lr.ph220.preheader ] ; 2 uses
  %.0109217 = phi i32 [ %.1110.1, %.lr.ph220 ], [ -1, %.lr.ph220.preheader ]
  %niter336 = phi i64 [ %niter336.next.1, %.lr.ph220 ], [ 0, %.lr.ph220.preheader ]
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv260
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !35
  %i.md = fadd double %.0105219, %i.mc            ; 3 uses
  %i.me = fcmp ogt double %i.md, %.0106218        ; 2 uses
  %i.mf = trunc nuw nsw i64 %indvars.iv260 to i32
  %.1110 = select i1 %i.me, i32 %i.mf, i32 %.0109217
  %.1107 = select i1 %i.me, double %i.md, double %.0106218 ; 2 uses
  %indvars.iv.next261 = or disjoint i64 %indvars.iv260, 1 ; 2 uses
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next261
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !35
  %i.mi = fadd double %i.md, %i.mh                ; 4 uses
  %i.mj = fcmp ogt double %i.mi, %.1107           ; 2 uses
  %i.mk = trunc nuw nsw i64 %indvars.iv.next261 to i32
  %.1110.1 = select i1 %i.mj, i32 %i.mk, i32 %.1110 ; 3 uses
  %.1107.1 = select i1 %i.mj, double %i.mi, double %.1107 ; 3 uses
  %indvars.iv.next261.1 = add nuw nsw i64 %indvars.iv260, 2 ; 2 uses
  %niter336.next.1 = add i64 %niter336, 2         ; 2 uses
  %niter336.ncmp.1 = icmp eq i64 %niter336.next.1, %unroll_iter335
  br i1 %niter336.ncmp.1, label %.preheader193.loopexit.unr-lcssa, label %.lr.ph220, !llvm.loop !79

.lr.ph225:                                        ; preds = %.lr.ph225.prol.loopexit, %.lr.ph225
  %indvars.iv265 = phi i64 [ %indvars.iv.next266.1, %.lr.ph225 ], [ %indvars.iv265.unr, %.lr.ph225.prol.loopexit ] ; 3 uses
  %i.ml = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv265
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !16 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !20
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !20
  %i.mr = sext i32 %i.mo to i64
  %i.ms = getelementptr inbounds [4 x i8], ptr %.0234, i64 %i.mr ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !20
  %i.mu = sext i32 %i.mq to i64
  %i.mv = getelementptr inbounds [4 x i8], ptr %.0234, i64 %i.mu ; 2 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !20
  store i32 %i.mw, ptr %i.ms, align 4, !tbaa !20
  store i32 %i.mt, ptr %i.mv, align 4, !tbaa !20
  %i.mx = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv265
  %i.my = getelementptr i8, ptr %i.mx, i64 8
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !16 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !20
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !20
  %i.ne = sext i32 %i.nb to i64
  %i.nf = getelementptr inbounds [4 x i8], ptr %.0234, i64 %i.ne ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !20
  %i.nh = sext i32 %i.nd to i64
  %i.ni = getelementptr inbounds [4 x i8], ptr %.0234, i64 %i.nh ; 2 uses
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !20
  store i32 %i.nj, ptr %i.nf, align 4, !tbaa !20
  store i32 %i.ng, ptr %i.ni, align 4, !tbaa !20
  %indvars.iv.next266.1 = add nsw i64 %indvars.iv265, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next266.1 to i32
  %exitcond268.not.1 = icmp eq i32 %i.q, %lftr.wideiv.1
  br i1 %exitcond268.not.1, label %._crit_edge226, label %.lr.ph225, !llvm.loop !80

._crit_edge226:                                   ; preds = %.lr.ph225.prol.loopexit, %.lr.ph225, %.preheader193
  br i1 %i.e, label %.lr.ph25.i, label %eval_sol.exit.thread

eval_sol.exit.thread:                             ; preds = %._crit_edge226
  %.inv = fcmp ogt double %.1, 0.000000e+00
  %.1.mux293 = select i1 %.inv, double 0.000000e+00, double %.1
  br label %.loopexit

.loopexit.i:                                      ; preds = %.prol.loopexit341, %.lr.ph.i.new, %.lr.ph25.i
  %.1.lcssa.i = phi double [ %.01923.i, %.lr.ph25.i ], [ %.lcssa307.unr, %.prol.loopexit341 ], [ %i.pn, %.lr.ph.i.new ] ; 4 uses
  %indvars.iv.next.i170 = add nuw nsw i64 %indvars.iv.i169, 1
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next31.i, %i.s
  br i1 %exitcond34.not.i, label %eval_sol.exit, label %.lr.ph25.i, !llvm.loop !67

.lr.ph25.i:                                       ; preds = %._crit_edge226, %.loopexit.i
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %.loopexit.i ], [ 0, %._crit_edge226 ] ; 5 uses
  %indvars.iv.i169 = phi i64 [ %indvars.iv.next.i170, %.loopexit.i ], [ 1, %._crit_edge226 ] ; 3 uses
  %.01923.i = phi double [ %.1.lcssa.i, %.loopexit.i ], [ 0.000000e+00, %._crit_edge226 ] ; 3 uses
  %i.nk = sub i64 %i.w, %indvars.iv30.i
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 3 uses
  %i.nl = icmp samesign ult i64 %indvars.iv.next31.i, %i.s
  br i1 %i.nl, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.lr.ph25.i
  %i.nm = sub i64 %i.v, %indvars.iv30.i
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv30.i
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !34 ; 5 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv30.i
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !20
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr inbounds [8 x i8], ptr %5, i64 %i.nr
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !34 ; 5 uses
  %xtraiter342 = and i64 %i.nm, 3                 ; 2 uses
  %lcmp.mod343.not = icmp eq i64 %xtraiter342, 0
  br i1 %lcmp.mod343.not, label %.prol.loopexit341, label %.prol.preheader340

.prol.preheader340:                               ; preds = %.lr.ph.i, %.prol.preheader340
  %indvars.iv27.i.prol = phi i64 [ %indvars.iv.next28.i.prol, %.prol.preheader340 ], [ %indvars.iv.i169, %.lr.ph.i ] ; 3 uses
  %.121.i.prol = phi double [ %i.oc, %.prol.preheader340 ], [ %.01923.i, %.lr.ph.i ]
  %prol.iter344 = phi i64 [ %prol.iter344.next, %.prol.preheader340 ], [ 0, %.lr.ph.i ]
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %indvars.iv27.i.prol
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !35
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %.0234, i64 %indvars.iv27.i.prol
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !20
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.nt, i64 %i.ny
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !35
  %i.ob = fdiv double %i.nv, %i.oa
  %i.oc = fadd double %.121.i.prol, %i.ob         ; 3 uses
  %indvars.iv.next28.i.prol = add nuw nsw i64 %indvars.iv27.i.prol, 1 ; 2 uses
  %prol.iter344.next = add i64 %prol.iter344, 1   ; 2 uses
  %prol.iter344.cmp.not = icmp eq i64 %prol.iter344.next, %xtraiter342
  br i1 %prol.iter344.cmp.not, label %.prol.loopexit341, label %.prol.preheader340, !llvm.loop !81

.prol.loopexit341:                                ; preds = %.prol.preheader340, %.lr.ph.i
  %.lcssa307.unr = phi double [ poison, %.lr.ph.i ], [ %i.oc, %.prol.preheader340 ]
  %indvars.iv27.i.unr = phi i64 [ %indvars.iv.i169, %.lr.ph.i ], [ %indvars.iv.next28.i.prol, %.prol.preheader340 ]
  %.121.i.unr = phi double [ %.01923.i, %.lr.ph.i ], [ %i.oc, %.prol.preheader340 ]
  %i.od = icmp ult i64 %i.nk, 3
  br i1 %i.od, label %.loopexit.i, label %.lr.ph.i.new

end_hunk_0
