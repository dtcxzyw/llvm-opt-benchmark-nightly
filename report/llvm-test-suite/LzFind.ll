inline.NumInlined: 45
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Bt2_MatchFinder_Skip:bb.a
  %i.ag = load i32, ptr %i.g, align 4, !tbaa !31  ; 2 uses
  %i.ah = shl i32 %i.ae, 1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ai ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  %i.al = sub i32 %i.ac, %i.ab                    ; 2 uses
  %i.am = icmp ne i32 %i.ag, 0
  %.not86.i = icmp ult i32 %i.al, %i.af
  %or.cond87.i = and i1 %.not86.i, %i.am
  br i1 %or.cond87.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g, %bb.d
  %.072.lcssa.i = phi ptr [ %i.aj, %bb.d ], [ %.173.i, %bb.g ]
  %.060.lcssa.i = phi ptr [ %i.ak, %bb.d ], [ %.161.i, %bb.g ]
  store i32 0, ptr %.072.lcssa.i, align 4, !tbaa !4
  br label %SkipMatchesSpec.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.g
  %.in.i = phi i32 [ %i.ao, %bb.g ], [ %i.ag, %bb.d ]
  %i.an = phi i32 [ %i.bv, %bb.g ], [ %i.al, %bb.d ] ; 3 uses
  %.05592.i = phi i32 [ %.156.i, %bb.g ], [ %i.ab, %bb.d ] ; 2 uses
  %.06091.i = phi ptr [ %.161.i, %bb.g ], [ %i.ak, %bb.d ] ; 3 uses
  %.06490.i = phi i32 [ %.165.i, %bb.g ], [ 0, %bb.d ] ; 2 uses
  %.06889.i = phi i32 [ %.169.i, %bb.g ], [ 0, %bb.d ] ; 2 uses
  %.07288.i = phi ptr [ %.173.i, %bb.g ], [ %i.aj, %bb.d ] ; 3 uses
  %i.ao = add i32 %.in.i, -1                      ; 2 uses
  %i.ap = sub i32 %i.ae, %i.an
  %i.aq = icmp ugt i32 %i.an, %i.ae
  %i.ar = select i1 %i.aq, i32 %i.af, i32 0
  %i.as = add i32 %i.ap, %i.ar
  %i.at = shl i32 %i.as, 1
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.au ; 5 uses
  %i.aw = zext i32 %i.an to i64
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.s, i64 %i.ax ; 2 uses
  %i.az = tail call i32 @llvm.umin.i32(i32 %.06889.i, i32 %.06490.i) ; 3 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !14  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ba
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !14  ; 2 uses
  %i.bf = icmp eq i8 %i.bc, %i.be
  br i1 %i.bf, label %.preheader.i.preheader, label %.loopexit.i

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  %i.bg = add i32 %i.az, 1                        ; 2 uses
  %.not80.i62 = icmp eq i32 %i.bg, %i.i
  br i1 %.not80.i62, label %.preheader.i.preheader._crit_edge, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %i.bh = add i32 %i.bi, 1                        ; 2 uses
  %.not80.i = icmp eq i32 %i.bh, %i.i
  br i1 %.not80.i, label %.preheader.i.preheader._crit_edge, label %.lr.ph, !llvm.loop !68

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %i.bi = phi i32 [ %i.bh, %.preheader.i ], [ %i.bg, %.preheader.i.preheader ] ; 3 uses
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !14  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bj
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !14  ; 2 uses
  %.not81.i = icmp eq i8 %i.bl, %i.bn
  br i1 %.not81.i, label %.preheader.i, label %.loopexit.i, !llvm.loop !68

.preheader.i.preheader._crit_edge:                ; preds = %.preheader.i.preheader, %.preheader.i
  %i.bo = load i32, ptr %i.av, align 4, !tbaa !4
  store i32 %i.bo, ptr %.07288.i, align 4, !tbaa !4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  br label %SkipMatchesSpec.exit

.loopexit.i:                                      ; preds = %.lr.ph, %.lr.ph.i
  %i.br = phi i8 [ %i.be, %.lr.ph.i ], [ %i.bn, %.lr.ph ]
  %i.bs = phi i8 [ %i.bc, %.lr.ph.i ], [ %i.bl, %.lr.ph ]
  %.1.i = phi i32 [ %i.az, %.lr.ph.i ], [ %i.bi, %.lr.ph ] ; 2 uses
  %i.bt = icmp ult i8 %i.bs, %i.br
  br i1 %i.bt, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit.i
  store i32 %.05592.i, ptr %.07288.i, align 4, !tbaa !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 2 uses
  br label %bb.g

bb.f:                                             ; preds = %.loopexit.i
  store i32 %.05592.i, ptr %.06091.i, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.173.i = phi ptr [ %i.bu, %bb.e ], [ %.07288.i, %bb.f ] ; 2 uses
  %.169.i = phi i32 [ %.06889.i, %bb.e ], [ %.1.i, %bb.f ]
  %.165.i = phi i32 [ %.1.i, %bb.e ], [ %.06490.i, %bb.f ]
  %.161.i = phi ptr [ %.06091.i, %bb.e ], [ %i.av, %bb.f ] ; 2 uses
  %.156.in.i = phi ptr [ %i.bu, %bb.e ], [ %i.av, %bb.f ]
  %.156.i = load i32, ptr %.156.in.i, align 4, !tbaa !4 ; 2 uses
  %i.bv = sub i32 %i.ac, %.156.i                  ; 2 uses
  %i.bw = icmp ne i32 %i.ao, 0
  %.not.i = icmp ult i32 %i.bv, %i.af
  %or.cond.i = select i1 %i.bw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %._crit_edge.i

SkipMatchesSpec.exit:                             ; preds = %._crit_edge.i, %.preheader.i.preheader._crit_edge
  %.06084.i = phi ptr [ %.060.lcssa.i, %._crit_edge.i ], [ %.06091.i, %.preheader.i.preheader._crit_edge ]
  %storemerge.i = phi i32 [ 0, %._crit_edge.i ], [ %i.bq, %.preheader.i.preheader._crit_edge ]
  store i32 %storemerge.i, ptr %.06084.i, align 4, !tbaa !4
  %i.bx = load i32, ptr %i.e, align 8, !tbaa !58
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr %i.e, align 8, !tbaa !58
  store ptr %i.v, ptr %0, align 8, !tbaa !8
  %i.bz = load i32, ptr %i.c, align 8, !tbaa !16
  %i.ca = add i32 %i.bz, 1                        ; 2 uses
  store i32 %i.ca, ptr %i.c, align 8, !tbaa !16
  %i.cb = load i32, ptr %i.h, align 4, !tbaa !60
  %i.cc = icmp eq i32 %i.ca, %i.cb
  br i1 %i.cc, label %MatchFinder_MovePos.exit.sink.split, label %MatchFinder_MovePos.exit

MatchFinder_MovePos.exit.sink.split:              ; preds = %SkipMatchesSpec.exit, %bb.c
  tail call fastcc void @MatchFinder_CheckLimits(ptr noundef nonnull %0)
  br label %MatchFinder_MovePos.exit

MatchFinder_MovePos.exit:                         ; preds = %MatchFinder_MovePos.exit.sink.split, %bb.c, %SkipMatchesSpec.exit
  %i.cd = add i32 %.0, -1                         ; 2 uses
  %.not = icmp eq i32 %i.cd, 0
  br i1 %.not, label %bb.h, label %bb.b, !llvm.loop !80

bb.h:                                             ; preds = %MatchFinder_MovePos.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @Bt3_MatchFinder_GetMatches(ptr nofree noundef captures(none) %0, ptr noundef %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !59   ; 12 uses
  %i.c = icmp ult i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !58
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !58
  %i.g = load ptr, ptr %0, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %0, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !16
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !60
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %MatchFinder_MovePos.exit.sink.split, label %MatchFinder_MovePos.exit

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !8      ; 15 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.q = load i8, ptr %i.o, align 1, !tbaa !14
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !14
  %i.w = zext i8 %i.v to i32
  %i.x = xor i32 %i.t, %i.w                       ; 2 uses
  %i.y = and i32 %i.x, 1023
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !14
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8
  %i.ad = xor i32 %i.ac, %i.x
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !50
  %i.ag = and i32 %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !30 ; 2 uses
  %i.al = zext nneg i32 %i.y to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = sub i32 %i.ai, %i.an                    ; 4 uses
  %i.ap = add i32 %i.ag, 1024
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4  ; 4 uses
  store i32 %i.ai, ptr %i.ar, align 4, !tbaa !4
  store i32 %i.ai, ptr %i.am, align 4, !tbaa !4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !54 ; 3 uses
  %i.av = icmp ult i32 %i.ao, %i.au
  br i1 %i.av, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.aw = zext i32 %i.ao to i64                   ; 2 uses
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.o, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !14
  %i.ba = load i8, ptr %i.o, align 1, !tbaa !14
  %i.bb = icmp eq i8 %i.az, %i.ba
  br i1 %i.bb, label %.lr.ph, label %bb.j

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.072101 = phi i32 [ %3, %bb.e ], [ 2, %bb.d ]  ; 4 uses
  %2 = zext i32 %.072101 to i64                   ; 2 uses
  %i.bc = sub nsw i64 %2, %i.aw
  %i.bd = getelementptr inbounds i8, ptr %i.o, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !14
  %i.bf = getelementptr inbounds nuw i8, ptr %i.o, i64 %2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !14
  %.not76 = icmp eq i8 %i.be, %i.bg
  br i1 %.not76, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %3 = add nuw i32 %.072101, 1                    ; 2 uses
  %.not = icmp eq i32 %3, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !81

bb.f:                                             ; preds = %.lr.ph
  store i32 %.072101, ptr %1, align 4, !tbaa !4
  %i.bh = add i32 %i.ao, -1
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !4
  %.pre = load i32, ptr %i.at, align 4, !tbaa !54
  br label %bb.j

._crit_edge:                                      ; preds = %bb.e
  store i32 %i.b, ptr %1, align 4, !tbaa !4
  %i.bj = add i32 %i.ao, -1
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !4
  %i.bl = load i32, ptr %i.ah, align 8, !tbaa !16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !56 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !58 ; 3 uses
  %i.bq = load i32, ptr %i.at, align 4, !tbaa !54 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !31 ; 2 uses
  %i.bt = shl i32 %i.bp, 1
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bu ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 2 uses
  %i.bx = sub i32 %i.bl, %i.as                    ; 2 uses
  %i.by = icmp ne i32 %i.bs, 0
  %.not86.i = icmp ult i32 %i.bx, %i.bq
  %or.cond87.i = and i1 %.not86.i, %i.by
  br i1 %or.cond87.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i, %._crit_edge
  %.072.lcssa.i = phi ptr [ %i.bv, %._crit_edge ], [ %.173.i, %bb.i ]
  %.060.lcssa.i = phi ptr [ %i.bw, %._crit_edge ], [ %.161.i, %bb.i ]
  store i32 0, ptr %.072.lcssa.i, align 4, !tbaa !4
  br label %SkipMatchesSpec.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.i
  %.in.i = phi i32 [ %i.ca, %bb.i ], [ %i.bs, %._crit_edge ]
  %i.bz = phi i32 [ %i.dh, %bb.i ], [ %i.bx, %._crit_edge ] ; 3 uses
  %.05592.i = phi i32 [ %.156.i, %bb.i ], [ %i.as, %._crit_edge ] ; 2 uses
  %.06091.i = phi ptr [ %.161.i, %bb.i ], [ %i.bw, %._crit_edge ] ; 3 uses
  %.06490.i = phi i32 [ %.165.i, %bb.i ], [ 0, %._crit_edge ] ; 2 uses
  %.06889.i = phi i32 [ %.169.i, %bb.i ], [ 0, %._crit_edge ] ; 2 uses
  %.07288.i = phi ptr [ %.173.i, %bb.i ], [ %i.bv, %._crit_edge ] ; 3 uses
  %i.ca = add i32 %.in.i, -1                      ; 2 uses
  %i.cb = sub i32 %i.bp, %i.bz
  %i.cc = icmp ugt i32 %i.bz, %i.bp
  %i.cd = select i1 %i.cc, i32 %i.bq, i32 0
  %i.ce = add i32 %i.cb, %i.cd
  %i.cf = shl i32 %i.ce, 1
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.cg ; 5 uses
  %i.ci = zext i32 %i.bz to i64
  %i.cj = sub nsw i64 0, %i.ci
  %i.ck = getelementptr inbounds i8, ptr %i.o, i64 %i.cj ; 2 uses
  %i.cl = tail call i32 @llvm.umin.i32(i32 %.06889.i, i32 %.06490.i) ; 3 uses
  %i.cm = zext i32 %i.cl to i64                   ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !14  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.cm
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !14  ; 2 uses
  %i.cr = icmp eq i8 %i.co, %i.cq
  br i1 %i.cr, label %.preheader.i.preheader, label %.loopexit.i

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  %i.cs = add i32 %i.cl, 1                        ; 2 uses
  %.not80.i164 = icmp eq i32 %i.cs, %i.b
  br i1 %.not80.i164, label %.preheader.i.preheader._crit_edge, label %.lr.ph165

.preheader.i:                                     ; preds = %.lr.ph165
  %i.ct = add i32 %i.cu, 1                        ; 2 uses
  %.not80.i = icmp eq i32 %i.ct, %i.b
  br i1 %.not80.i, label %.preheader.i.preheader._crit_edge, label %.lr.ph165, !llvm.loop !68

.lr.ph165:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %i.cu = phi i32 [ %i.ct, %.preheader.i ], [ %i.cs, %.preheader.i.preheader ] ; 3 uses
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !14  ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.cv
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !14  ; 2 uses
  %.not81.i = icmp eq i8 %i.cx, %i.cz
  br i1 %.not81.i, label %.preheader.i, label %.loopexit.i, !llvm.loop !68

.preheader.i.preheader._crit_edge:                ; preds = %.preheader.i.preheader, %.preheader.i
  %i.da = load i32, ptr %i.ch, align 4, !tbaa !4
  store i32 %i.da, ptr %.07288.i, align 4, !tbaa !4
  %i.db = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !4
  br label %SkipMatchesSpec.exit

.loopexit.i:                                      ; preds = %.lr.ph165, %.lr.ph.i
  %i.dd = phi i8 [ %i.cq, %.lr.ph.i ], [ %i.cz, %.lr.ph165 ]
  %i.de = phi i8 [ %i.co, %.lr.ph.i ], [ %i.cx, %.lr.ph165 ]
  %.1.i = phi i32 [ %i.cl, %.lr.ph.i ], [ %i.cu, %.lr.ph165 ] ; 2 uses
  %i.df = icmp ult i8 %i.de, %i.dd
  br i1 %i.df, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit.i
  store i32 %.05592.i, ptr %.07288.i, align 4, !tbaa !4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %.loopexit.i
  store i32 %.05592.i, ptr %.06091.i, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.173.i = phi ptr [ %i.dg, %bb.g ], [ %.07288.i, %bb.h ] ; 2 uses
  %.169.i = phi i32 [ %.06889.i, %bb.g ], [ %.1.i, %bb.h ]
  %.165.i = phi i32 [ %.1.i, %bb.g ], [ %.06490.i, %bb.h ]
  %.161.i = phi ptr [ %.06091.i, %bb.g ], [ %i.ch, %bb.h ] ; 2 uses
  %.156.in.i = phi ptr [ %i.dg, %bb.g ], [ %i.ch, %bb.h ]
  %.156.i = load i32, ptr %.156.in.i, align 4, !tbaa !4 ; 2 uses
  %i.dh = sub i32 %i.bl, %.156.i                  ; 2 uses
  %i.di = icmp ne i32 %i.ca, 0
  %.not.i = icmp ult i32 %i.dh, %i.bq
  %or.cond.i = select i1 %i.di, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %._crit_edge.i

SkipMatchesSpec.exit:                             ; preds = %._crit_edge.i, %.preheader.i.preheader._crit_edge
  %.06084.i = phi ptr [ %.060.lcssa.i, %._crit_edge.i ], [ %.06091.i, %.preheader.i.preheader._crit_edge ]
  %storemerge.i = phi i32 [ 0, %._crit_edge.i ], [ %i.dc, %.preheader.i.preheader._crit_edge ]
  store i32 %storemerge.i, ptr %.06084.i, align 4, !tbaa !4
  %i.dj = load i32, ptr %i.bo, align 8, !tbaa !58
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr %i.bo, align 8, !tbaa !58
  store ptr %i.u, ptr %0, align 8, !tbaa !8
  %i.dl = load i32, ptr %i.ah, align 8, !tbaa !16
  %i.dm = add i32 %i.dl, 1                        ; 2 uses
  store i32 %i.dm, ptr %i.ah, align 8, !tbaa !16
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !60
  %i.dp = icmp eq i32 %i.dm, %i.do
  br i1 %i.dp, label %MatchFinder_MovePos.exit.sink.split, label %MatchFinder_MovePos.exit

bb.j:                                             ; preds = %bb.f, %bb.d, %bb.c
  %i.dq = phi i32 [ %.pre, %bb.f ], [ %i.au, %bb.d ], [ %i.au, %bb.c ] ; 3 uses
  %.073 = phi i64 [ 2, %bb.f ], [ 0, %bb.d ], [ 0, %bb.c ]
  %.1 = phi i32 [ %.072101, %bb.f ], [ 2, %bb.d ], [ 2, %bb.c ]
  %i.dr = load i32, ptr %i.ah, align 8, !tbaa !16 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !56 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !58 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !31 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.073 ; 2 uses
  %i.dz = shl i32 %i.dv, 1
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.ea ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4 ; 2 uses
  %i.ed = sub i32 %i.dr, %i.as                    ; 2 uses
  %i.ee = icmp ne i32 %i.dx, 0
  %.not129.i = icmp ult i32 %i.ed, %i.dq
  %or.cond130.i = and i1 %.not129.i, %i.ee
  br i1 %or.cond130.i, label %.lr.ph.i79, label %._crit_edge.i77

._crit_edge.i77:                                  ; preds = %bb.r, %bb.j
  %.099.lcssa.i = phi ptr [ %i.dy, %bb.j ], [ %.1100.i, %bb.r ]
  %.091.lcssa.i = phi ptr [ %i.ec, %bb.j ], [ %.192.i, %bb.r ]
  %.087.lcssa.i = phi ptr [ %i.eb, %bb.j ], [ %.188.i, %bb.r ]
  store i32 0, ptr %.087.lcssa.i, align 4, !tbaa !4
  br label %GetMatchesSpec1.exit

.lr.ph.i79:                                       ; preds = %bb.j, %bb.r
  %.in.i80 = phi i32 [ %i.eg, %bb.r ], [ %i.dx, %bb.j ]
  %i.ef = phi i32 [ %i.gc, %bb.r ], [ %i.ed, %bb.j ] ; 4 uses
  %.073137.i = phi i32 [ %.174.i, %bb.r ], [ %i.as, %bb.j ] ; 2 uses
  %.079136.i = phi i32 [ %.180.i, %bb.r ], [ 0, %bb.j ] ; 2 uses
  %.083135.i = phi i32 [ %.184.i, %bb.r ], [ 0, %bb.j ] ; 2 uses
  %.087134.i = phi ptr [ %.188.i, %bb.r ], [ %i.eb, %bb.j ] ; 3 uses
  %.091133.i = phi ptr [ %.192.i, %bb.r ], [ %i.ec, %bb.j ] ; 3 uses
  %.095132.i = phi i32 [ %.196.i, %bb.r ], [ %.1, %bb.j ] ; 3 uses
  %.099131.i = phi ptr [ %.1100.i, %bb.r ], [ %i.dy, %bb.j ] ; 5 uses
  %i.eg = add i32 %.in.i80, -1                    ; 2 uses
  %i.eh = sub i32 %i.dv, %i.ef
  %i.ei = icmp ugt i32 %i.ef, %i.dv
  %i.ej = select i1 %i.ei, i32 %i.dq, i32 0
  %i.ek = add i32 %i.eh, %i.ej
  %i.el = shl i32 %i.ek, 1
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.em ; 5 uses
  %i.eo = zext i32 %i.ef to i64
  %i.ep = sub nsw i64 0, %i.eo
  %i.eq = getelementptr inbounds i8, ptr %i.o, i64 %i.ep ; 4 uses
  %i.er = tail call i32 @llvm.umin.i32(i32 %.083135.i, i32 %.079136.i) ; 4 uses
  %i.es = zext i32 %i.er to i64                   ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !14
  %i.ev = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.es
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !14
  %i.ex = icmp eq i8 %i.eu, %i.ew
  br i1 %i.ex, label %bb.k, label %bb.o

bb.k:                                             ; preds = %.lr.ph.i79
  %i.ey = add i32 %i.er, 1                        ; 3 uses
  %.not110.i = icmp eq i32 %i.ey, %i.b
  br i1 %.not110.i, label %.loopexit.i83, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ez = zext i32 %i.ey to i64                   ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !14
  %i.fc = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ez
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !14
  %i.fe = icmp eq i8 %i.fb, %i.fd
  br i1 %i.fe, label %.preheader.i85.preheader, label %.loopexit.i83

.preheader.i85.preheader:                         ; preds = %bb.l
  %i.ff = add i32 %i.er, 2                        ; 2 uses
  %.not111.i161 = icmp eq i32 %i.ff, %i.b
  br i1 %.not111.i161, label %.loopexit.i83, label %.lr.ph162

.preheader.i85:                                   ; preds = %.lr.ph162
  %i.fg = add i32 %i.fh, 1                        ; 2 uses
  %.not111.i = icmp eq i32 %i.fg, %i.b
  br i1 %.not111.i, label %.loopexit.i83, label %.lr.ph162, !llvm.loop !63

.lr.ph162:                                        ; preds = %.preheader.i85.preheader, %.preheader.i85
  %i.fh = phi i32 [ %i.fg, %.preheader.i85 ], [ %i.ff, %.preheader.i85.preheader ] ; 3 uses
  %i.fi = zext i32 %i.fh to i64                   ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !14
  %i.fl = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.fi
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !14
  %.not112.i = icmp eq i8 %i.fk, %i.fm
  br i1 %.not112.i, label %.preheader.i85, label %..loopexit.i83.loopexit_crit_edge, !llvm.loop !63

..loopexit.i83.loopexit_crit_edge:                ; preds = %.lr.ph162
  br label %.loopexit.i83, !llvm.loop !63

.loopexit.i83:                                    ; preds = %.preheader.i85, %.preheader.i85.preheader, %..loopexit.i83.loopexit_crit_edge, %bb.l, %bb.k
  %.1.i84 = phi i32 [ %i.ey, %bb.l ], [ %i.b, %bb.k ], [ %i.b, %.preheader.i85.preheader ], [ %i.fh, %..loopexit.i83.loopexit_crit_edge ], [ %i.b, %.preheader.i85 ] ; 6 uses
  %i.fn = icmp ult i32 %.095132.i, %.1.i84
  br i1 %i.fn, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.loopexit.i83
  %i.fo = getelementptr inbounds nuw i8, ptr %.099131.i, i64 4
  store i32 %.1.i84, ptr %.099131.i, align 4, !tbaa !4
  %i.fp = add i32 %i.ef, -1
  %i.fq = getelementptr inbounds nuw i8, ptr %.099131.i, i64 8 ; 2 uses
  store i32 %i.fp, ptr %i.fo, align 4, !tbaa !4
  %i.fr = icmp eq i32 %.1.i84, %i.b
  br i1 %i.fr, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fs = load i32, ptr %i.en, align 4, !tbaa !4
  store i32 %i.fs, ptr %.087134.i, align 4, !tbaa !4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !4
  br label %GetMatchesSpec1.exit

bb.o:                                             ; preds = %bb.m, %.loopexit.i83, %.lr.ph.i79
  %.1100.i = phi ptr [ %i.fq, %bb.m ], [ %.099131.i, %.loopexit.i83 ], [ %.099131.i, %.lr.ph.i79 ] ; 2 uses
  %.196.i = phi i32 [ %.1.i84, %bb.m ], [ %.095132.i, %.loopexit.i83 ], [ %.095132.i, %.lr.ph.i79 ]
  %.2.i = phi i32 [ %.1.i84, %bb.m ], [ %.1.i84, %.loopexit.i83 ], [ %i.er, %.lr.ph.i79 ] ; 3 uses
  %i.fv = zext i32 %.2.i to i64                   ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !14
  %i.fy = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.fv
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !14
  %i.ga = icmp ult i8 %i.fx, %i.fz
  br i1 %i.ga, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %.073137.i, ptr %.087134.i, align 4, !tbaa !4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.en, i64 4 ; 2 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store i32 %.073137.i, ptr %.091133.i, align 4, !tbaa !4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.192.i = phi ptr [ %.091133.i, %bb.p ], [ %i.en, %bb.q ] ; 2 uses
  %.188.i = phi ptr [ %i.gb, %bb.p ], [ %.087134.i, %bb.q ] ; 2 uses
  %.184.i = phi i32 [ %.083135.i, %bb.p ], [ %.2.i, %bb.q ]
  %.180.i = phi i32 [ %.2.i, %bb.p ], [ %.079136.i, %bb.q ]
  %.174.in.i = phi ptr [ %i.gb, %bb.p ], [ %i.en, %bb.q ]
  %.174.i = load i32, ptr %.174.in.i, align 4, !tbaa !4 ; 2 uses
  %i.gc = sub i32 %i.dr, %.174.i                  ; 2 uses
  %i.gd = icmp ne i32 %i.eg, 0
  %.not.i81 = icmp ult i32 %i.gc, %i.dq
  %or.cond.i82 = select i1 %i.gd, i1 %.not.i81, i1 false
  br i1 %or.cond.i82, label %.lr.ph.i79, label %._crit_edge.i77

GetMatchesSpec1.exit:                             ; preds = %._crit_edge.i77, %bb.n
  %.091125.i = phi ptr [ %.091.lcssa.i, %._crit_edge.i77 ], [ %.091133.i, %bb.n ]
  %storemerge.i78 = phi i32 [ 0, %._crit_edge.i77 ], [ %i.fu, %bb.n ]
  %.272.ph.i = phi ptr [ %.099.lcssa.i, %._crit_edge.i77 ], [ %i.fq, %bb.n ]
  store i32 %storemerge.i78, ptr %.091125.i, align 4, !tbaa !4
  %i.ge = ptrtoint ptr %.272.ph.i to i64
  %i.gf = ptrtoint ptr %1 to i64
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = lshr exact i64 %i.gg, 2
  %i.gi = trunc i64 %i.gh to i32                  ; 2 uses
  %i.gj = load i32, ptr %i.du, align 8, !tbaa !58
  %i.gk = add i32 %i.gj, 1
  store i32 %i.gk, ptr %i.du, align 8, !tbaa !58
  store ptr %i.u, ptr %0, align 8, !tbaa !8
  %i.gl = load i32, ptr %i.ah, align 8, !tbaa !16
  %i.gm = add i32 %i.gl, 1                        ; 2 uses
  store i32 %i.gm, ptr %i.ah, align 8, !tbaa !16
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !60
  %i.gp = icmp eq i32 %i.gm, %i.go
  br i1 %i.gp, label %MatchFinder_MovePos.exit.sink.split, label %MatchFinder_MovePos.exit

MatchFinder_MovePos.exit.sink.split:              ; preds = %GetMatchesSpec1.exit, %SkipMatchesSpec.exit, %bb.b
  %.0.ph = phi i32 [ 0, %bb.b ], [ 2, %SkipMatchesSpec.exit ], [ %i.gi, %GetMatchesSpec1.exit ]
  tail call fastcc void @MatchFinder_CheckLimits(ptr noundef nonnull %0)
  br label %MatchFinder_MovePos.exit

MatchFinder_MovePos.exit:                         ; preds = %MatchFinder_MovePos.exit.sink.split, %bb.b, %GetMatchesSpec1.exit, %SkipMatchesSpec.exit
  %.0 = phi i32 [ %i.gi, %GetMatchesSpec1.exit ], [ 2, %SkipMatchesSpec.exit ], [ 0, %bb.b ], [ %.0.ph, %MatchFinder_MovePos.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @Bt3_MatchFinder_Skip(ptr nofree noundef captures(none) %0, i32 noundef %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %MatchFinder_MovePos.exit, %bb.a
  %.0 = phi i32 [ %1, %bb.a ], [ %i.cu, %MatchFinder_MovePos.exit ]
  %i.k = load i32, ptr %i.a, align 4, !tbaa !59   ; 3 uses
  %i.l = icmp ult i32 %i.k, 3
  br i1 %i.l, label %bb.c, label %bb.d

end_hunk_0
