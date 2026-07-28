inline.NumInlined: 3254
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 107
begin_hunk_0_@sqlite3DeleteTable:bb.a
bb.k:                                             ; preds = %bb.j
  %i.db = load ptr, ptr %i.cw, align 8, !tbaa !201
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !407
  %i.de = tail call i32 %i.dd(ptr noundef nonnull %i.cw) #43, !inline_history !409 ; 0 uses
  br label %sqlite3VtabUnlock.exit.i

sqlite3VtabUnlock.exit.i:                         ; preds = %bb.k, %bb.j
  store ptr null, ptr %i.cv, align 8, !tbaa !405
  br label %bb.l

bb.l:                                             ; preds = %sqlite3VtabUnlock.exit.i, %sqlite3_free.exit26
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !410 ; 2 uses
  %.not12.i = icmp eq ptr %i.dg, null
  br i1 %.not12.i, label %.sqlite3_free.exit29_crit_edge, label %.preheader.i

.sqlite3_free.exit29_crit_edge:                   ; preds = %bb.l
  %.pre47 = load i64, ptr @mem.5, align 8, !tbaa !22
  br label %sqlite3_free.exit29

.preheader.i:                                     ; preds = %bb.l
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %mem.5.promoted.i = load i64, ptr @mem.5, align 8 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !411 ; 2 uses
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %.preheader.i, %sqlite3_free.exit.i
  %i.dk = phi i32 [ %i.du, %sqlite3_free.exit.i ], [ %i.di, %.preheader.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %sqlite3_free.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.dl = phi i64 [ %i.dv, %sqlite3_free.exit.i ], [ %mem.5.promoted.i, %.preheader.i ] ; 2 uses
  %i.dm = load ptr, ptr %i.df, align 8, !tbaa !410
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !72 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %sqlite3_free.exit.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.dq = getelementptr inbounds i8, ptr %i.do, i64 -8 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !28
  %sext.i.i = shl i64 %i.dr, 32
  %i.ds = ashr exact i64 %sext.i.i, 32
  %i.dt = sub nsw i64 %i.dl, %i.ds
  tail call void @free(ptr noundef nonnull %i.dq) #43
  %.pre.i = load i32, ptr %i.dh, align 8, !tbaa !411
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %bb.m, %.lr.ph.i
  %i.du = phi i32 [ %i.dk, %.lr.ph.i ], [ %.pre.i, %bb.m ] ; 2 uses
  %i.dv = phi i64 [ %i.dl, %.lr.ph.i ], [ %i.dt, %bb.m ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dw = sext i32 %i.du to i64
  %i.dx = icmp slt i64 %indvars.iv.next.i, %i.dw
  br i1 %i.dx, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !412

._crit_edge.i:                                    ; preds = %sqlite3_free.exit.i
  %.pre17.i = load ptr, ptr %i.df, align 8, !tbaa !410 ; 2 uses
  %i.dy = icmp eq ptr %.pre17.i, null
  br i1 %i.dy, label %sqlite3_free.exit29, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %.preheader.i
  %i.dz = phi ptr [ %.pre17.i, %._crit_edge.i ], [ %i.dg, %.preheader.i ]
  %i.ea = phi i64 [ %i.dv, %._crit_edge.i ], [ %mem.5.promoted.i, %.preheader.i ]
  %i.eb = getelementptr inbounds i8, ptr %i.dz, i64 -8 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !28
  %sext.i13.i = shl i64 %i.ec, 32
  %i.ed = ashr exact i64 %sext.i13.i, 32
  %i.ee = sub nsw i64 %i.ea, %i.ed
  tail call void @free(ptr noundef nonnull %i.eb) #43
  br label %sqlite3_free.exit29

sqlite3_free.exit29:                              ; preds = %.sqlite3_free.exit29_crit_edge, %._crit_edge.i, %._crit_edge.thread.i
  %i.ef = phi i64 [ %.pre47, %.sqlite3_free.exit29_crit_edge ], [ %i.dv, %._crit_edge.i ], [ %i.ee, %._crit_edge.thread.i ]
  %i.eg = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !28
  %sext.i28 = shl i64 %i.eh, 32
  %i.ei = ashr exact i64 %sext.i28, 32
  %i.ej = sub nsw i64 %i.ef, %i.ei
  store i64 %i.ej, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.eg) #43
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.a, %sqlite3_free.exit29
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @sqlite3_complete(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #22 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.075 = phi ptr [ %0, %bb.a ], [ %i.jw, %.loopexit ] ; 45 uses
  %.074 = phi i8 [ 0, %bb.a ], [ %i.jv, %.loopexit ] ; 3 uses
  %i.a = load i8, ptr %.075, align 1, !tbaa !37   ; 12 uses
  switch i8 %i.a, label %bb.l [
    i8 0, label %bb.ba
    i8 59, label %.loopexit
    i8 32, label %bb.c
    i8 13, label %bb.c
    i8 9, label %bb.c
    i8 10, label %bb.c
    i8 12, label %bb.c
    i8 47, label %bb.d
    i8 45, label %bb.h
    i8 91, label %.preheader149
    i8 96, label %.preheader333
    i8 34, label %.preheader333
    i8 39, label %.preheader333
  ]

.preheader333:                                    ; preds = %bb.b, %bb.b, %bb.b
  br label %bb.k

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.075, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !37
  %.not96 = icmp eq i8 %i.c, 42
  br i1 %.not96, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %.075, i64 2
  br label %bb.f

bb.f:                                             ; preds = %.critedge2, %bb.e
  %.176 = phi ptr [ %i.d, %bb.e ], [ %i.h, %.critedge2 ] ; 4 uses
  %i.e = load i8, ptr %.176, align 1, !tbaa !37
  switch i8 %i.e, label %.critedge2 [
    i8 0, label %.critedge.thread
    i8 42, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %.176, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !37
  %.not99 = icmp eq i8 %i.g, 47
  br i1 %.not99, label %.loopexit.loopexit, label %.critedge2

.critedge2:                                       ; preds = %bb.f, %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %.176, i64 1
  br label %bb.f, !llvm.loop !413

bb.h:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.075, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !37
  %.not93 = icmp eq i8 %i.j, 45
  br i1 %.not93, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.h, %bb.i
  %i.k = phi i8 [ %.pr, %bb.i ], [ 45, %bb.h ]
  %.277 = phi ptr [ %i.l, %bb.i ], [ %.075, %bb.h ] ; 2 uses
  switch i8 %i.k, label %bb.i [
    i8 0, label %bb.j
    i8 10, label %.loopexit
  ]

bb.i:                                             ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %.277, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.l, align 1, !tbaa !37
  br label %.preheader, !llvm.loop !414

bb.j:                                             ; preds = %.preheader
  %i.m = icmp eq i8 %.074, 0
  br label %.critedge.thread

.preheader149:                                    ; preds = %bb.b, %.preheader149
  %.075.pn92 = phi ptr [ %.378, %.preheader149 ], [ %.075, %bb.b ]
  %.378 = getelementptr inbounds nuw i8, ptr %.075.pn92, i64 1 ; 3 uses
  %i.n = load i8, ptr %.378, align 1, !tbaa !37
  switch i8 %i.n, label %.preheader149 [
    i8 0, label %.critedge.thread
    i8 93, label %.loopexit
  ]

bb.k:                                             ; preds = %.preheader333, %bb.k
  %.075.pn = phi ptr [ %.479, %bb.k ], [ %.075, %.preheader333 ]
  %.479 = getelementptr inbounds nuw i8, ptr %.075.pn, i64 1 ; 3 uses
  %i.o = load i8, ptr %.479, align 1, !tbaa !37   ; 2 uses
  %.not87 = icmp eq i8 %i.o, 0                    ; 2 uses
  %.not88 = icmp eq i8 %i.o, %i.a
  %or.cond = or i1 %.not87, %.not88
  br i1 %or.cond, label %.critedge8, label %bb.k, !llvm.loop !415

.critedge8:                                       ; preds = %bb.k
  br i1 %.not87, label %.critedge.thread, label %.loopexit

bb.l:                                             ; preds = %bb.b
  %i.p = zext i8 %i.a to i64                      ; 7 uses
  %.not100 = icmp sgt i8 %i.a, -1
  br i1 %.not100, label %bb.m, label %.preheader329

bb.m:                                             ; preds = %bb.l
  %i.q = icmp samesign ugt i8 %i.a, 31
  br i1 %i.q, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %1 = add nuw nsw i64 %i.p, 4294967264
  %2 = and i64 %1, 4294967295
  %i.r = getelementptr inbounds nuw i8, ptr @sqlite3IsAsciiIdChar, i64 %2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !37
  %.not101 = icmp eq i8 %i.s, 0
  br i1 %.not101, label %.loopexit, label %.preheader329

.preheader329:                                    ; preds = %bb.n, %bb.l
  br label %bb.o

bb.o:                                             ; preds = %.preheader329, %.critedge10
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge10 ], [ 1, %.preheader329 ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.075, i64 %indvars.iv
  %i.u = load i8, ptr %i.t, align 1, !tbaa !37    ; 3 uses
  %.not102 = icmp sgt i8 %i.u, -1
  br i1 %.not102, label %bb.p, label %.critedge10

bb.p:                                             ; preds = %bb.o
  %i.v = icmp samesign ugt i8 %i.u, 31
  br i1 %i.v, label %bb.q, label %.critedge12

bb.q:                                             ; preds = %bb.p
  %i.w = zext nneg i8 %i.u to i64
  %i.x = getelementptr i8, ptr @sqlite3IsAsciiIdChar, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -32
  %i.z = load i8, ptr %i.y, align 1, !tbaa !37
  %.not103 = icmp eq i8 %i.z, 0
  br i1 %.not103, label %.critedge12, label %.critedge10

.critedge10:                                      ; preds = %bb.o, %bb.q
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.o, !llvm.loop !416

.critedge12:                                      ; preds = %bb.p, %bb.q
  %i.aa = getelementptr inbounds nuw i8, ptr %.075, i64 %indvars.iv
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  switch i8 %i.a, label %sqlite3StrNICmp.exit.thread [
    i8 99, label %bb.r
    i8 67, label %bb.r
    i8 116, label %bb.x
    i8 84, label %bb.x
    i8 101, label %bb.aq
    i8 69, label %bb.aq
  ]

bb.r:                                             ; preds = %.critedge12, %.critedge12
  %i.ac = icmp eq i64 %indvars.iv, 6
  br i1 %i.ac, label %.lr.ph.i.preheader, label %bb.az

.lr.ph.i.preheader:                               ; preds = %bb.r
  %i.ad = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.p
  %i.ae = and i8 %i.a, -33
  %i.af = icmp eq i8 %i.ae, 67
  br i1 %i.af, label %.lr.ph.i.1, label %split.i

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %.075, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !37  ; 3 uses
  %.not.i.1 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.1, label %sqlite3StrNICmp.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.1
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ai
  %i.ak = and i8 %i.ah, -33
  %i.al = icmp eq i8 %i.ak, 82
  br i1 %i.al, label %.lr.ph.i.2, label %split.i

.lr.ph.i.2:                                       ; preds = %bb.s
  %i.am = getelementptr inbounds nuw i8, ptr %.075, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !37  ; 3 uses
  %.not.i.2 = icmp eq i8 %i.an, 0
  br i1 %.not.i.2, label %sqlite3StrNICmp.exit, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.2
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ao
  %i.aq = and i8 %i.an, -33
  %i.ar = icmp eq i8 %i.aq, 69
  br i1 %i.ar, label %.lr.ph.i.3, label %split.i

.lr.ph.i.3:                                       ; preds = %bb.t
  %i.as = getelementptr inbounds nuw i8, ptr %.075, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !37  ; 3 uses
  %.not.i.3 = icmp eq i8 %i.at, 0
  br i1 %.not.i.3, label %sqlite3StrNICmp.exit, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.3
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.au
  %i.aw = and i8 %i.at, -33
  %i.ax = icmp eq i8 %i.aw, 65
  br i1 %i.ax, label %.lr.ph.i.4, label %split.i

.lr.ph.i.4:                                       ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw i8, ptr %.075, i64 4
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !37  ; 3 uses
  %.not.i.4 = icmp eq i8 %i.az, 0
  br i1 %.not.i.4, label %sqlite3StrNICmp.exit, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.4
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ba
  %i.bc = and i8 %i.az, -33
  %i.bd = icmp eq i8 %i.bc, 84
  br i1 %i.bd, label %.lr.ph.i.5, label %split.i

.lr.ph.i.5:                                       ; preds = %bb.v
  %i.be = getelementptr inbounds nuw i8, ptr %.075, i64 5
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !37  ; 3 uses
  %.not.i.5 = icmp eq i8 %i.bf, 0
  br i1 %.not.i.5, label %sqlite3StrNICmp.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.5
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bg
  %i.bi = and i8 %i.bf, -33
  %i.bj = icmp eq i8 %i.bi, 69
  br i1 %i.bj, label %sqlite3StrNICmp.exit.thread, label %split.i

split.i:                                          ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %.lr.ph.i.preheader
  %.lcssa230.in = phi ptr [ %i.ad, %.lr.ph.i.preheader ], [ %i.aj, %bb.s ], [ %i.ap, %bb.t ], [ %i.av, %bb.u ], [ %i.bb, %bb.v ], [ %i.bh, %bb.w ]
  %.015.i.lcssa227 = phi ptr [ @.str.8, %.lr.ph.i.preheader ], [ getelementptr inbounds nuw (i8, ptr @.str.8, i64 1), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @.str.8, i64 2), %bb.t ], [ getelementptr inbounds nuw (i8, ptr @.str.8, i64 3), %bb.u ], [ getelementptr inbounds nuw (i8, ptr @.str.8, i64 4), %bb.v ], [ getelementptr inbounds nuw (i8, ptr @.str.8, i64 5), %bb.w ]
  %.lcssa230 = load i8, ptr %.lcssa230.in, align 1, !tbaa !37
  %i.bk = zext i8 %.lcssa230 to i32
  br label %sqlite3StrNICmp.exit

sqlite3StrNICmp.exit:                             ; preds = %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %split.i
  %.015.i229 = phi ptr [ %.015.i.lcssa227, %split.i ], [ getelementptr inbounds nuw (i8, ptr @.str.8, i64 5), %.lr.ph.i.5 ], [ getelementptr inbounds nuw (i8, ptr @.str.8, i64 1), %.lr.ph.i.1 ], [ getelementptr inbounds nuw (i8, ptr @.str.8, i64 2), %.lr.ph.i.2 ], [ getelementptr inbounds nuw (i8, ptr @.str.8, i64 3), %.lr.ph.i.3 ], [ getelementptr inbounds nuw (i8, ptr @.str.8, i64 4), %.lr.ph.i.4 ]
  %i.bl = phi i32 [ %i.bk, %split.i ], [ 0, %.lr.ph.i.5 ], [ 0, %.lr.ph.i.1 ], [ 0, %.lr.ph.i.2 ], [ 0, %.lr.ph.i.3 ], [ 0, %.lr.ph.i.4 ]
  %i.bm = load i8, ptr %.015.i229, align 1, !tbaa !37
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !37
  %i.bq = zext i8 %i.bp to i32
  %i.br = icmp eq i32 %i.bl, %i.bq
  br i1 %i.br, label %sqlite3StrNICmp.exit.thread, label %bb.az

bb.x:                                             ; preds = %.critedge12, %.critedge12
  switch i32 %i.ab, label %bb.az [
    i32 7, label %.lr.ph.i104.preheader
    i32 4, label %.lr.ph.i112
    i32 9, label %.lr.ph.i120
  ]

.lr.ph.i104.preheader:                            ; preds = %bb.x
  %i.bs = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.p
  %i.bt = and i8 %i.a, -33
  %i.bu = icmp eq i8 %i.bt, 84
  br i1 %i.bu, label %.lr.ph.i104.1, label %split.i109

.lr.ph.i104.1:                                    ; preds = %.lr.ph.i104.preheader
  %i.bv = getelementptr inbounds nuw i8, ptr %.075, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !37  ; 3 uses
  %.not.i108.1 = icmp eq i8 %i.bw, 0
  br i1 %.not.i108.1, label %sqlite3StrNICmp.exit111, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i104.1
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bx
  %i.bz = and i8 %i.bw, -33
  %i.ca = icmp eq i8 %i.bz, 82
  br i1 %i.ca, label %.lr.ph.i104.2, label %split.i109

.lr.ph.i104.2:                                    ; preds = %bb.y
  %i.cb = getelementptr inbounds nuw i8, ptr %.075, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !37  ; 3 uses
  %.not.i108.2 = icmp eq i8 %i.cc, 0
  br i1 %.not.i108.2, label %sqlite3StrNICmp.exit111, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i104.2
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cd
  %i.cf = and i8 %i.cc, -33
  %i.cg = icmp eq i8 %i.cf, 73
  br i1 %i.cg, label %.lr.ph.i104.3, label %split.i109

.lr.ph.i104.3:                                    ; preds = %bb.z
  %i.ch = getelementptr inbounds nuw i8, ptr %.075, i64 3
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !37  ; 3 uses
  %.not.i108.3 = icmp eq i8 %i.ci, 0
  br i1 %.not.i108.3, label %sqlite3StrNICmp.exit111, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i104.3
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cj
  %i.cl = and i8 %i.ci, -33
  %i.cm = icmp eq i8 %i.cl, 71
  br i1 %i.cm, label %.lr.ph.i104.4, label %split.i109

.lr.ph.i104.4:                                    ; preds = %bb.aa
  %i.cn = getelementptr inbounds nuw i8, ptr %.075, i64 4
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !37  ; 3 uses
  %.not.i108.4 = icmp eq i8 %i.co, 0
  br i1 %.not.i108.4, label %sqlite3StrNICmp.exit111, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i104.4
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cp
  %i.cr = and i8 %i.co, -33
  %i.cs = icmp eq i8 %i.cr, 71
  br i1 %i.cs, label %.lr.ph.i104.5, label %split.i109

end_hunk_0
begin_hunk_1_@getToken:bb.a
  store i32 67, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.ae:                                            ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !37
  %.not240 = icmp eq i8 %i.ar, 124
  br i1 %.not240, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 75, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.ag:                                            ; preds = %bb.ae
  store i32 83, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.ah:                                            ; preds = %bb.a
  store i32 22, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.ai:                                            ; preds = %bb.a
  store i32 74, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.aj:                                            ; preds = %bb.a
  store i32 87, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.ak:                                            ; preds = %bb.a, %bb.a, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !37  ; 2 uses
  %.not239307 = icmp eq i8 %i.at, 0
  br i1 %.not239307, label %.critedge253, label %.lr.ph309

.lr.ph309:                                        ; preds = %bb.ak, %bb.am
  %i.au = phi i8 [ %i.be, %bb.am ], [ %i.at, %bb.ak ]
  %.4308 = phi i32 [ %i.bb, %bb.am ], [ 1, %bb.ak ] ; 2 uses
  %i.av = icmp eq i8 %i.au, %i.a
  br i1 %i.av, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph309
  %i.aw = add nsw i32 %.4308, 1                   ; 3 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %0, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !37
  %i.ba = icmp eq i8 %i.az, %i.a
  br i1 %i.ba, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %.lr.ph309
  %.5 = phi i32 [ %.4308, %.lr.ph309 ], [ %i.aw, %bb.al ]
  %i.bb = add nsw i32 %.5, 1                      ; 3 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %0, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !37  ; 2 uses
  %.not239 = icmp eq i8 %i.be, 0
  br i1 %.not239, label %.critedge253, label %.lr.ph309, !llvm.loop !1266

bb.an:                                            ; preds = %bb.al
  store i32 88, ptr %1, align 4, !tbaa !4
  br label %.critedge4

.critedge253:                                     ; preds = %bb.am, %bb.ak
  %.4.lcssa = phi i32 [ 1, %bb.ak ], [ %i.bb, %bb.am ]
  store i32 144, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.ao:                                            ; preds = %bb.a
  %i.bf = tail call ptr @__ctype_b_loc() #46
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !168
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !37
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !170
  %i.bm = and i16 %i.bl, 2048
  %.not231 = icmp eq i16 %i.bm, 0
  br i1 %.not231, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 112, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.aq:                                            ; preds = %bb.ao, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  store i32 124, ptr %1, align 4, !tbaa !4
  %i.bn = tail call ptr @__ctype_b_loc() #46
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !168 ; 5 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
  %indvars.iv348 = phi i64 [ %indvars.iv.next349, %bb.ar ], [ 0, %bb.aq ] ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv348
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !37  ; 3 uses
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !170
  %i.bu = and i16 %i.bt, 2048
  %.not232 = icmp eq i16 %i.bu, 0
  %indvars.iv.next349 = add nuw nsw i64 %indvars.iv348, 1
  br i1 %.not232, label %bb.as, label %bb.ar, !llvm.loop !1267

bb.as:                                            ; preds = %bb.ar
  %i.bv = icmp eq i8 %i.bq, 46
  br i1 %i.bv, label %.preheader263, label %._crit_edge

.preheader263:                                    ; preds = %bb.as, %.preheader263
  %indvars.iv352 = phi i64 [ %indvars.iv.next353, %.preheader263 ], [ %indvars.iv348, %bb.as ]
  %indvars.iv.next353 = add nuw nsw i64 %indvars.iv352, 1 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next353
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !37
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !170
  %i.cb = and i16 %i.ca, 2048
  %.not233 = icmp eq i16 %i.cb, 0
  br i1 %.not233, label %bb.at, label %.preheader263, !llvm.loop !1268

bb.at:                                            ; preds = %.preheader263
  store i32 125, ptr %1, align 4, !tbaa !4
  %sext = shl i64 %indvars.iv.next353, 32
  %.phi.trans.insert = ashr exact i64 %sext, 32   ; 2 uses
  %.phi.trans.insert378 = getelementptr inbounds i8, ptr %0, i64 %.phi.trans.insert
  %.pre = load i8, ptr %.phi.trans.insert378, align 1, !tbaa !37
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.as, %bb.at
  %.pre-phi383 = phi i64 [ %.phi.trans.insert, %bb.at ], [ %indvars.iv348, %bb.as ] ; 4 uses
  %i.cc = phi i8 [ %.pre, %bb.at ], [ %i.bq, %bb.as ]
  %.8.in = phi i64 [ %indvars.iv.next353, %bb.at ], [ %indvars.iv348, %bb.as ]
  %i.cd = getelementptr inbounds i8, ptr %0, i64 %.pre-phi383 ; 2 uses
  switch i8 %i.cc, label %.preheader474 [
    i8 101, label %bb.au
    i8 69, label %bb.au
  ]

bb.au:                                            ; preds = %._crit_edge, %._crit_edge
  %i.ce = getelementptr i8, ptr %i.cd, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !37  ; 2 uses
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !170
  %i.cj = and i16 %i.ci, 2048
  %.not234 = icmp eq i16 %i.cj, 0
  br i1 %.not234, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  switch i8 %i.cf, label %.preheader474 [
    i8 43, label %bb.aw
    i8 45, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av, %bb.av
  %i.ck = getelementptr i8, ptr %i.cd, i64 2
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !37
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.cm
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !170
  %i.cp = and i16 %i.co, 2048
  %.not235 = icmp eq i16 %i.cp, 0
  br i1 %.not235, label %.preheader474, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %i.cq = shl i64 %.8.in, 32
  %sext403 = add i64 %i.cq, 8589934592
  %i.cr = ashr exact i64 %sext403, 32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %indvars.iv356 = phi i64 [ %indvars.iv.next357, %bb.ay ], [ %i.cr, %bb.ax ] ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %0, i64 %indvars.iv356
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !37
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !170
  %i.cx = and i16 %i.cw, 2048
  %.not236 = icmp eq i16 %i.cx, 0
  %indvars.iv.next357 = add nsw i64 %indvars.iv356, 1
  br i1 %.not236, label %bb.az, label %bb.ay, !llvm.loop !1269

bb.az:                                            ; preds = %bb.ay
  store i32 125, ptr %1, align 4, !tbaa !4
  br label %.preheader474

.preheader474:                                    ; preds = %bb.av, %._crit_edge, %bb.az, %bb.aw
  %indvars.iv360.ph = phi i64 [ %.pre-phi383, %bb.aw ], [ %indvars.iv356, %bb.az ], [ %.pre-phi383, %._crit_edge ], [ %.pre-phi383, %bb.av ]
  br label %bb.ba

bb.ba:                                            ; preds = %.preheader474, %.critedge2
  %indvars.iv360 = phi i64 [ %indvars.iv.next361, %.critedge2 ], [ %indvars.iv360.ph, %.preheader474 ] ; 3 uses
  %i.cy = getelementptr inbounds i8, ptr %0, i64 %indvars.iv360
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !37  ; 3 uses
  %i.da = zext i8 %i.cz to i64
  %.not237 = icmp sgt i8 %i.cz, -1
  br i1 %.not237, label %bb.bb, label %.critedge2

bb.bb:                                            ; preds = %bb.ba
  %i.db = icmp samesign ugt i8 %i.cz, 31
  br i1 %i.db, label %bb.bc, label %.critedge4.loopexit

bb.bc:                                            ; preds = %bb.bb
  %2 = add nuw nsw i64 %i.da, 4294967264
  %3 = and i64 %2, 4294967295
  %i.dc = getelementptr inbounds nuw i8, ptr @sqlite3IsAsciiIdChar, i64 %3
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !37
  %.not238 = icmp eq i8 %i.dd, 0
  br i1 %.not238, label %.critedge4.loopexit, label %.critedge2

.critedge2:                                       ; preds = %bb.ba, %bb.bc
  store i32 144, ptr %1, align 4, !tbaa !4
  %indvars.iv.next361 = add nsw i64 %indvars.iv360, 1
  br label %bb.ba, !llvm.loop !1270

.preheader264:                                    ; preds = %bb.a, %bb.bd
  %indvars.iv345 = phi i64 [ %indvars.iv.next346, %bb.bd ], [ 1, %bb.a ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv345
  %i.df = load i8, ptr %i.de, align 1, !tbaa !37  ; 2 uses
  %.not230 = icmp eq i8 %i.df, 0
  br i1 %.not230, label %.critedge6, label %bb.bd

bb.bd:                                            ; preds = %.preheader264
  %indvars.iv.next346 = add nuw nsw i64 %indvars.iv345, 1 ; 2 uses
  %.not229 = icmp eq i8 %i.df, 93
  br i1 %.not229, label %.critedge6, label %.preheader264, !llvm.loop !1271

.critedge6:                                       ; preds = %bb.bd, %.preheader264
  %.12.lcssa.in = phi i64 [ %indvars.iv.next346, %bb.bd ], [ %indvars.iv345, %.preheader264 ]
  %i.dg = phi i32 [ 23, %bb.bd ], [ 144, %.preheader264 ]
  %.12.lcssa = trunc i64 %.12.lcssa.in to i32
  store i32 %i.dg, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.be:                                            ; preds = %bb.a
  store i32 128, ptr %1, align 4, !tbaa !4
  %i.dh = tail call ptr @__ctype_b_loc() #46
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !168
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %bb.be
  %indvars.iv342 = phi i64 [ %indvars.iv.next343, %bb.bf ], [ 1, %bb.be ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv342
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !37
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.dl
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !170
  %i.do = and i16 %i.dn, 2048
  %.not228 = icmp eq i16 %i.do, 0
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1
  br i1 %.not228, label %.critedge4.loopexit313, label %bb.bf, !llvm.loop !1272

bb.bg:                                            ; preds = %bb.bg, %.preheader268
  %indvars.iv335 = phi i64 [ %indvars.iv.next336, %bb.bg ], [ 1, %.preheader268 ] ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv335
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !37
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !170
  %i.du = and i16 %i.dt, 2048
  %.not223 = icmp eq i16 %i.du, 0
  %indvars.iv.next336 = add nuw nsw i64 %indvars.iv335, 1
  br i1 %.not223, label %bb.bh, label %bb.bg, !llvm.loop !1273

bb.bh:                                            ; preds = %bb.bg
  %i.dv = icmp samesign ugt i64 %indvars.iv335, 1
  br i1 %i.dv, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.dw = trunc nuw nsw i64 %indvars.iv335 to i32
  store i32 127, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.bj:                                            ; preds = %bb.bh, %bb.a, %bb.a, %bb.a
  store i32 128, ptr %1, align 4, !tbaa !4
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !37  ; 2 uses
  %.not224293 = icmp eq i8 %i.dy, 0
  br i1 %.not224293, label %.thread257.thread407, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bj, %bb.bt
  %i.dz = phi i8 [ %i.fg, %bb.bt ], [ %i.dy, %bb.bj ] ; 5 uses
  %.0295 = phi i32 [ %.1, %bb.bt ], [ 0, %bb.bj ] ; 6 uses
  %.15294 = phi i32 [ %i.fd, %bb.bt ], [ 1, %bb.bj ] ; 6 uses
  %.not225 = icmp sgt i8 %i.dz, -1
  br i1 %.not225, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %.lr.ph
  %i.ea = icmp samesign ugt i8 %i.dz, 31
  br i1 %i.ea, label %bb.bl, label %.thread257

bb.bl:                                            ; preds = %bb.bk
  %i.eb = zext nneg i8 %i.dz to i64
  %i.ec = getelementptr i8, ptr @sqlite3IsAsciiIdChar, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.ec, i64 -32
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !37
  %.not226 = icmp eq i8 %i.ee, 0
  br i1 %.not226, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.lr.ph
  %i.ef = add nsw i32 %.0295, 1
  br label %bb.bt

bb.bn:                                            ; preds = %bb.bl
  %i.eg = icmp eq i8 %i.dz, 40
  %i.eh = icmp sgt i32 %.0295, 0
  %or.cond = select i1 %i.eg, i1 %i.eh, i1 false
  br i1 %or.cond, label %.preheader266, label %bb.br

.preheader266:                                    ; preds = %bb.bn
  %i.ei = sext i32 %.15294 to i64
  br label %bb.bo

bb.bo:                                            ; preds = %.preheader266, %bb.bp
  %indvars.iv339 = phi i64 [ %i.ei, %.preheader266 ], [ %indvars.iv.next340, %bb.bp ] ; 2 uses
  %indvars.iv.next340 = add nsw i64 %indvars.iv339, 1 ; 3 uses
  %i.ej = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next340
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !37  ; 4 uses
  %cond = icmp eq i8 %i.ek, 0
  br i1 %cond, label %.loopexit267, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.el = tail call ptr @__ctype_b_loc() #46
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !168
  %i.en = zext i8 %i.ek to i64
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.em, i64 %i.en
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !170
  %i.eq = and i16 %i.ep, 8192
  %i.er = icmp eq i16 %i.eq, 0
  %i.es = icmp ne i8 %i.ek, 41
  %or.cond17 = and i1 %i.es, %i.er
  br i1 %or.cond17, label %bb.bo, label %.critedge9, !llvm.loop !1274

.critedge9:                                       ; preds = %bb.bp
  %i.et = icmp eq i8 %i.ek, 41
  br i1 %i.et, label %bb.bq, label %.loopexit267

bb.bq:                                            ; preds = %.critedge9
  %i.eu = trunc nsw i64 %indvars.iv339 to i32
  %i.ev = add nsw i32 %i.eu, 2
  br label %.critedge4

.loopexit267:                                     ; preds = %bb.bo, %.critedge9
  %i.ew = trunc i64 %indvars.iv.next340 to i32
  store i32 144, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.br:                                            ; preds = %bb.bn
  %i.ex = icmp eq i8 %i.dz, 58
  br i1 %i.ex, label %bb.bs, label %.thread257

bb.bs:                                            ; preds = %bb.br
  %i.ey = add nsw i32 %.15294, 1                  ; 2 uses
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds i8, ptr %0, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !37
  %i.fc = icmp eq i8 %i.fb, 58
  br i1 %i.fc, label %bb.bt, label %.thread257

bb.bt:                                            ; preds = %bb.bs, %bb.bm
  %.17 = phi i32 [ %.15294, %bb.bm ], [ %i.ey, %bb.bs ]
  %.1 = phi i32 [ %i.ef, %bb.bm ], [ %.0295, %bb.bs ] ; 2 uses
  %i.fd = add nsw i32 %.17, 1                     ; 3 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds i8, ptr %0, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !37  ; 2 uses
  %.not224 = icmp eq i8 %i.fg, 0
  br i1 %.not224, label %.thread257, label %.lr.ph, !llvm.loop !1275

.thread257:                                       ; preds = %bb.bt, %bb.bs, %bb.br, %bb.bk
  %.0289.ph = phi i32 [ %.0295, %bb.bk ], [ %.0295, %bb.br ], [ %.0295, %bb.bs ], [ %.1, %bb.bt ]
  %.18.ph = phi i32 [ %.15294, %bb.bk ], [ %.15294, %bb.br ], [ %.15294, %bb.bs ], [ %i.fd, %bb.bt ] ; 2 uses
  %i.fh = icmp eq i32 %.0289.ph, 0
  br i1 %i.fh, label %.thread257.thread407, label %.critedge4

.thread257.thread407:                             ; preds = %bb.bj, %.thread257
  %.18410 = phi i32 [ %.18.ph, %.thread257 ], [ 1, %bb.bj ]
  store i32 144, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.bu:                                            ; preds = %bb.a, %bb.a
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !37
  %i.fk = icmp eq i8 %i.fj, 39
  br i1 %i.fk, label %bb.bv, label %.thread260

.thread260:                                       ; preds = %bb.bu
  %i.fl = zext nneg i8 %i.a to i64
  br label %bb.cf

bb.bv:                                            ; preds = %bb.bu
  store i32 126, ptr %1, align 4, !tbaa !4
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bz, %bb.bv
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bz ], [ 2, %bb.bv ] ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !37  ; 3 uses
  switch i8 %i.fn, label %bb.bx [
    i8 39, label %bb.ca
    i8 0, label %bb.ca
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.fo = tail call ptr @__ctype_b_loc() #46
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !168
  %i.fq = zext i8 %i.fn to i64
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.fp, i64 %i.fq
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !170
  %i.ft = and i16 %i.fs, 4096
  %.not = icmp eq i16 %i.ft, 0
  br i1 %.not, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i32 144, ptr %1, align 4, !tbaa !4
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.by
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.bw, !llvm.loop !1276

bb.ca:                                            ; preds = %bb.bw, %bb.bw
  %i.fu = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.fv = icmp ne i8 %i.fn, 0                     ; 2 uses
  %i.fw = and i32 %i.fu, 1
  %i.fx = icmp eq i32 %i.fw, 0
  %or.cond11 = and i1 %i.fx, %i.fv
  br i1 %or.cond11, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store i32 144, ptr %1, align 4, !tbaa !4
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ca, %bb.cb
  %i.fy = zext i1 %i.fv to i32
  %spec.select254 = add nuw nsw i32 %i.fu, %i.fy
  br label %.critedge4

bb.cd:                                            ; preds = %bb.a
  %i.fz = zext i8 %i.a to i64                     ; 2 uses
  %.not248 = icmp sgt i8 %i.a, -1
  br i1 %.not248, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.ga = icmp samesign ugt i8 %i.a, 31
  br i1 %i.ga, label %bb.cf, label %bb.cp

bb.cf:                                            ; preds = %.thread260, %bb.ce
  %i.gb = phi i64 [ %i.fl, %.thread260 ], [ %i.fz, %bb.ce ] ; 2 uses
  %4 = add nuw nsw i64 %i.gb, 4294967264
  %5 = and i64 %4, 4294967295
  %i.gc = getelementptr inbounds nuw i8, ptr @sqlite3IsAsciiIdChar, i64 %5
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !37
  %.not249 = icmp eq i8 %i.gd, 0
  br i1 %.not249, label %bb.cp, label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.cd
  %i.ge = phi i64 [ %i.gb, %bb.cf ], [ %i.fz, %bb.cd ]
  br label %bb.ch

bb.ch:                                            ; preds = %.critedge13, %bb.cg
  %indvars.iv374 = phi i64 [ %indvars.iv.next375, %.critedge13 ], [ 1, %bb.cg ] ; 6 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv374
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !37  ; 3 uses
  %i.gh = zext i8 %i.gg to i64
  %.not250 = icmp sgt i8 %i.gg, -1
  br i1 %.not250, label %bb.ci, label %.critedge13

bb.ci:                                            ; preds = %bb.ch
  %i.gi = icmp samesign ugt i8 %i.gg, 31
  br i1 %i.gi, label %bb.cj, label %.critedge15

bb.cj:                                            ; preds = %bb.ci
  %6 = add nuw nsw i64 %i.gh, 4294967264
  %7 = and i64 %6, 4294967295
  %i.gj = getelementptr inbounds nuw i8, ptr @sqlite3IsAsciiIdChar, i64 %7
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !37
  %.not251 = icmp eq i8 %i.gk, 0
  br i1 %.not251, label %.critedge15, label %.critedge13

.critedge13:                                      ; preds = %bb.ch, %bb.cj
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1
  br label %bb.ch, !llvm.loop !1277

.critedge15:                                      ; preds = %bb.ci, %bb.cj
  %i.gl = trunc nuw nsw i64 %indvars.iv374 to i32 ; 3 uses
  %i.gm = icmp samesign ult i64 %indvars.iv374, 2
  br i1 %i.gm, label %keywordCode.exit, label %bb.ck

bb.ck:                                            ; preds = %.critedge15
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv374
  %i.go = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ge
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !37
  %i.gq = zext i8 %i.gp to i32
  %i.gr = shl nuw nsw i32 %i.gq, 2
  %i.gs = getelementptr i8, ptr %i.gn, i64 -1
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !37
  %i.gu = zext i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !37
  %i.gx = zext i8 %i.gw to i32
  %i.gy = mul nuw nsw i32 %i.gx, 3
  %i.gz = xor i32 %i.gr, %i.gy
  %i.ha = xor i32 %i.gz, %i.gl
  %i.hb = urem i32 %i.ha, 127
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr @keywordCode.aHash, i64 %i.hc
  %.0.in.in23.i = load i8, ptr %i.hd, align 1, !tbaa !37 ; 2 uses
  %.not24.i = icmp eq i8 %.0.in.in23.i, 0
  br i1 %.not24.i, label %keywordCode.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ck, %bb.co
  %.0.in.in25.i = phi i8 [ %.0.in.in.i, %bb.co ], [ %.0.in.in23.i, %bb.ck ]
  %.0.in.i = zext i8 %.0.in.in25.i to i64
  %.0.i = add nuw nsw i64 %.0.in.i, 4294967295
  %8 = and i64 %.0.i, 4294967295                  ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr @keywordCode.aLen, i64 %8
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !37
  %i.hg = zext i8 %i.hf to i64
  %i.hh = icmp eq i64 %indvars.iv374, %i.hg
  br i1 %i.hh, label %bb.cl, label %bb.co

bb.cl:                                            ; preds = %.lr.ph.i
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr @keywordCode.aOffset, i64 %8
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !170
  %i.hk = zext i16 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr @keywordCode.zText, i64 %i.hk
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cn, %bb.cl
  %.in.i.i = phi i32 [ %i.hm, %bb.cn ], [ %i.gl, %bb.cl ] ; 2 uses
  %.015.i.i = phi ptr [ %i.hx, %bb.cn ], [ %0, %bb.cl ] ; 3 uses
  %.01014.i.i = phi ptr [ %i.hw, %bb.cn ], [ %i.hl, %bb.cl ] ; 2 uses
  %i.hm = add nsw i32 %.in.i.i, -1
  %i.hn = load i8, ptr %.01014.i.i, align 1, !tbaa !37 ; 2 uses
  %.not.i.i = icmp eq i8 %i.hn, 0
  br i1 %.not.i.i, label %sqlite3StrNICmp.exit.loopexit.i, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i.i
  %i.ho = zext i8 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !37  ; 2 uses
  %i.hr = load i8, ptr %.015.i.i, align 1, !tbaa !37
  %i.hs = zext i8 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !37  ; 2 uses
  %i.hv = icmp eq i8 %i.hq, %i.hu
  br i1 %i.hv, label %bb.cn, label %split.i.i

bb.cn:                                            ; preds = %bb.cm
  %i.hw = getelementptr inbounds nuw i8, ptr %.01014.i.i, i64 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 1
  %i.hy = icmp samesign ugt i32 %.in.i.i, 1
  br i1 %i.hy, label %.lr.ph.i.i, label %sqlite3StrNICmp.exit.thread.i, !llvm.loop !585

split.i.i:                                        ; preds = %bb.cm
  %i.hz = zext i8 %i.hq to i32
  br label %sqlite3StrNICmp.exit.i

sqlite3StrNICmp.exit.loopexit.i:                  ; preds = %.lr.ph.i.i
  %.pre.i = load i8, ptr %.015.i.i, align 1, !tbaa !37
  %.phi.trans.insert.i = zext i8 %.pre.i to i64
  %.phi.trans.insert34.i = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert.i
  %.pre35.i = load i8, ptr %.phi.trans.insert34.i, align 1, !tbaa !37
  br label %sqlite3StrNICmp.exit.i

sqlite3StrNICmp.exit.i:                           ; preds = %sqlite3StrNICmp.exit.loopexit.i, %split.i.i
  %i.ia = phi i8 [ %i.hu, %split.i.i ], [ %.pre35.i, %sqlite3StrNICmp.exit.loopexit.i ]
  %i.ib = phi i32 [ %i.hz, %split.i.i ], [ 0, %sqlite3StrNICmp.exit.loopexit.i ]
  %i.ic = zext i8 %i.ia to i32
  %i.id = icmp eq i32 %i.ib, %i.ic
  br i1 %i.id, label %sqlite3StrNICmp.exit.thread.i, label %bb.co

sqlite3StrNICmp.exit.thread.i:                    ; preds = %sqlite3StrNICmp.exit.i, %bb.cn
  %i.ie = getelementptr inbounds nuw i8, ptr @keywordCode.aCode, i64 %8
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !37
  %i.ig = zext i8 %i.if to i32
  br label %keywordCode.exit

bb.co:                                            ; preds = %sqlite3StrNICmp.exit.i, %.lr.ph.i
  %i.ih = getelementptr inbounds nuw i8, ptr @keywordCode.aNext, i64 %8
  %.0.in.in.i = load i8, ptr %i.ih, align 1, !tbaa !37 ; 2 uses
  %.not.i = icmp eq i8 %.0.in.in.i, 0
  br i1 %.not.i, label %keywordCode.exit, label %.lr.ph.i, !llvm.loop !1278

keywordCode.exit:                                 ; preds = %bb.co, %.critedge15, %bb.ck, %sqlite3StrNICmp.exit.thread.i
  %.014.i = phi i32 [ 23, %.critedge15 ], [ %i.ig, %sqlite3StrNICmp.exit.thread.i ], [ 23, %bb.ck ], [ 23, %bb.co ]
  store i32 %.014.i, ptr %1, align 4, !tbaa !4
  br label %.critedge4

bb.cp:                                            ; preds = %bb.ce, %bb.cf
  store i32 144, ptr %1, align 4, !tbaa !4
  br label %.critedge4

.critedge4.loopexit313:                           ; preds = %bb.bf
  %i.ii = trunc nuw nsw i64 %indvars.iv342 to i32
  br label %.critedge4

.critedge4.loopexit:                              ; preds = %bb.bb, %bb.bc
  %i.ij = trunc nsw i64 %indvars.iv360 to i32
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.loopexit267, %bb.bq, %.critedge4.loopexit313, %.thread257, %.thread257.thread407, %bb.an, %.critedge253, %bb.cp, %keywordCode.exit, %bb.cc, %bb.bi, %.critedge6, %bb.ap, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.v, %bb.u, %bb.t, %bb.r, %bb.q, %.loopexit, %bb.p, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.d
  %.1198 = phi i32 [ %i.gl, %keywordCode.exit ], [ 1, %bb.cp ], [ %i.l, %bb.d ], [ %i.r, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.p ], [ %i.af, %.loopexit ], [ 1, %bb.q ], [ %i.aj, %bb.r ], [ 2, %bb.t ], [ 2, %bb.u ], [ 2, %bb.v ], [ 1, %bb.w ], [ 2, %bb.y ], [ 2, %bb.z ], [ 1, %bb.aa ], [ 2, %bb.ac ], [ 2, %bb.ad ], [ 1, %bb.af ], [ 2, %bb.ag ], [ 1, %bb.ah ], [ 1, %bb.ai ], [ 1, %bb.aj ], [ %spec.select254, %bb.cc ], [ %.4.lcssa, %.critedge253 ], [ 1, %bb.ap ], [ %.12.lcssa, %.critedge6 ], [ %.18410, %.thread257.thread407 ], [ %i.dw, %bb.bi ], [ %i.ew, %.loopexit267 ], [ %i.aw, %bb.an ], [ %.18.ph, %.thread257 ], [ %i.ii, %.critedge4.loopexit313 ], [ %i.ev, %bb.bq ], [ %i.ij, %.critedge4.loopexit ]
  ret i32 %.1198
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3Parser(ptr noundef nonnull initializes((8, 16)) %0, i32 noundef %1, ptr %2, i64 %3, ptr noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %struct.DbFixer, align 8            ; 7 uses
  %6 = alloca %struct.DbFixer, align 8            ; 9 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %7 = alloca %struct.Token, align 8              ; 7 uses
  %8 = alloca %struct.DbFixer, align 8            ; 7 uses
  %9 = alloca %union.YYMINORTYPE, align 8         ; 4 uses
  %10 = alloca %struct.SelectDest, align 4        ; 4 uses
  %11 = alloca %union.YYMINORTYPE, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #43
  %i.h = load i32, ptr %0, align 8, !tbaa !370    ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !370
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.j, align 4, !tbaa !1279
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.k, align 8, !tbaa !1280
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.l, align 4, !tbaa !377
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pr = phi i32 [ 0, %bb.b ], [ %i.h, %bb.a ]
  store ptr %2, ptr %11, align 8, !tbaa !72
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %3, ptr %.sroa.2.0..sroa_idx, align 8
  %i.m = icmp eq i32 %1, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  store ptr %4, ptr %i.n, align 8, !tbaa !1281
  %i.o = trunc i32 %1 to i8                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %.not = icmp eq i32 %1, 248
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.ajk, %bb.c
  %i.aa = phi i32 [ %i.exi, %bb.ajk ], [ %.pr, %bb.c ] ; 5 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.ab ; 383 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1280 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 389
  %i.af = sext i32 %i.ad to i64                   ; 3 uses
  br i1 %i.ae, label %.split55.i, label %.split.i

.split.i:                                         ; preds = %bb.d
  %i.ag = getelementptr inbounds [2 x i8], ptr @yy_shift_ofst, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !170 ; 3 uses
  %i.ai = sext i16 %i.ah to i32                   ; 2 uses
  %i.aj = icmp eq i16 %i.ah, -62
  br i1 %i.aj, label %.split55.i, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.split.i, %bb.h
  %.tr41.i = phi i8 [ %i.at, %bb.h ], [ %i.o, %.split.i ] ; 5 uses
  %i.ak = zext i8 %.tr41.i to i32
  %i.al = add nsw i32 %i.ak, %i.ai                ; 2 uses
  %or.cond.i = icmp ugt i32 %i.al, 1346
  br i1 %or.cond.i, label %bb.f, label %bb.e

.split55.i:                                       ; preds = %.split.i, %bb.d
  %i.am = getelementptr inbounds [2 x i8], ptr @yy_default, i64 %i.af
  br label %yy_find_shift_action.exit

bb.e:                                             ; preds = %tailrecurse.i
  %i.an = zext nneg i32 %i.al to i64              ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr @yy_lookahead, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !37
  %.not.i = icmp eq i8 %i.ap, %.tr41.i
  br i1 %.not.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e, %tailrecurse.i
  %.not37.i = icmp eq i8 %.tr41.i, 0
  br i1 %.not37.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = icmp ult i8 %.tr41.i, -118
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = zext i8 %.tr41.i to i64
  %i.as = getelementptr inbounds nuw i8, ptr @yyFallback, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !37  ; 2 uses
  %.not38.i = icmp eq i8 %i.at, 0
  br i1 %.not38.i, label %bb.i, label %tailrecurse.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = add i16 %i.ah, 59
  %or.cond4.i = icmp ult i16 %i.au, 1347
  br i1 %or.cond4.i, label %bb.j, label %.thread.i

bb.j:                                             ; preds = %bb.i
  %i.av = add nsw i32 %i.ai, 59
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr @yy_lookahead, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !37
  %i.az = icmp eq i8 %i.ay, 59
  br i1 %i.az, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr @yy_action, i64 %i.aw
  br label %yy_find_shift_action.exit

.thread.i:                                        ; preds = %bb.f, %bb.j, %bb.i
  %i.bb = getelementptr inbounds [2 x i8], ptr @yy_default, i64 %i.af
  br label %yy_find_shift_action.exit

bb.l:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr @yy_action, i64 %i.an
  br label %yy_find_shift_action.exit

yy_find_shift_action.exit:                        ; preds = %.split55.i, %bb.k, %.thread.i, %bb.l
  %.2.in.in.i = phi ptr [ %i.am, %.split55.i ], [ %i.bb, %.thread.i ], [ %i.bc, %bb.l ], [ %i.ba, %bb.k ]
  %.2.in.i = load i16, ptr %.2.in.in.i, align 2, !tbaa !170 ; 3 uses
  %.2.i = zext i16 %.2.in.i to i32                ; 2 uses
  %i.bd = icmp ult i16 %.2.in.i, 588
  br i1 %i.bd, label %bb.m, label %bb.o

bb.m:                                             ; preds = %yy_find_shift_action.exit
  %i.be = add nuw nsw i32 %i.aa, 1                ; 2 uses
  store i32 %i.be, ptr %0, align 8, !tbaa !370
  %i.bf = icmp sgt i32 %i.aa, 98
  br i1 %i.bf, label %yy_pop_parser_stack.exit.lr.ph.i.i, label %bb.n

yy_pop_parser_stack.exit.lr.ph.i.i:               ; preds = %bb.m
  %i.bg = load ptr, ptr %i.n, align 8, !tbaa !1281 ; 3 uses
  store i32 %i.aa, ptr %0, align 8, !tbaa !370
  br label %yy_pop_parser_stack.exit.i.i

yy_pop_parser_stack.exit.i.i:                     ; preds = %yy_pop_parser_stack.exit.i.i, %yy_pop_parser_stack.exit.lr.ph.i.i
  %i.bh = phi i32 [ %i.aa, %yy_pop_parser_stack.exit.lr.ph.i.i ], [ %i.bo, %yy_pop_parser_stack.exit.i.i ]
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !377
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  call fastcc void @yy_destructor(i8 noundef zeroext %i.bm, ptr noundef %i.bn)
  %.in.i.i = load i32, ptr %0, align 8, !tbaa !370 ; 2 uses
  %i.bo = add nsw i32 %.in.i.i, -1                ; 2 uses
  store i32 %i.bo, ptr %0, align 8, !tbaa !370
  %i.bp = icmp sgt i32 %.in.i.i, 0
  br i1 %i.bp, label %yy_pop_parser_stack.exit.i.i, label %yyStackOverflow.exit.i, !llvm.loop !1282

yyStackOverflow.exit.i:                           ; preds = %yy_pop_parser_stack.exit.i.i
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %i.bg, ptr noundef nonnull @.str.278)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 36
  store i8 1, ptr %i.bq, align 4, !tbaa !1283
  store ptr %i.bg, ptr %i.n, align 8, !tbaa !1281
  br label %yy_shift.exit

bb.n:                                             ; preds = %bb.m
  %i.br = zext nneg i32 %i.be to i64
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.br ; 3 uses
  store i32 %.2.i, ptr %i.bs, align 8, !tbaa !1280
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
end_hunk_1
begin_hunk_2_@sqlite3Parser:bb.a
  store i8 1, ptr %i.aol, align 2, !tbaa !129
  br label %sqlite3Expr.exit495

sqlite3DbMallocRaw.exit.i.i493:                   ; preds = %bb.im
  %i.aoq = call ptr @sqlite3_malloc(i32 noundef 120) ; 2 uses
  %.not.i.i494 = icmp eq ptr %i.aoq, null
  br i1 %.not.i.i494, label %sqlite3Expr.exit495, label %bb.iq

bb.iq:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i493, %bb.io
  %.0.i11.i.i492 = phi ptr [ %i.aoq, %sqlite3DbMallocRaw.exit.i.i493 ], [ %i.aoo, %bb.io ] ; 6 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %.0.i11.i.i492, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(119) %i.aor, i8 0, i64 119, i1 false)
  store i8 107, ptr %.0.i11.i.i492, align 8, !tbaa !1311
  %i.aos = getelementptr inbounds nuw i8, ptr %.0.i11.i.i492, i64 16
  %i.aot = getelementptr inbounds nuw i8, ptr %.0.i11.i.i492, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aos, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.aot, align 8, !tbaa !1312
  %i.aou = getelementptr inbounds nuw i8, ptr %.0.i11.i.i492, i64 112
  store i32 1, ptr %i.aou, align 8, !tbaa !1314
  br label %sqlite3Expr.exit495

sqlite3Expr.exit495:                              ; preds = %bb.in, %bb.ip, %sqlite3DbMallocRaw.exit.i.i493, %bb.iq
  %.0.i491 = phi ptr [ %.0.i11.i.i492, %bb.iq ], [ null, %sqlite3DbMallocRaw.exit.i.i493 ], [ null, %bb.ip ], [ null, %bb.in ]
  %i.aov = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.aow = load ptr, ptr %i.aov, align 8, !tbaa !37
  %.val707.i = load ptr, ptr %i.ca, align 8, !tbaa !244
  %i.aox = call fastcc ptr @sqlite3ExprListAppend(ptr %.val707.i, ptr noundef %i.aow, ptr noundef %.0.i491, ptr noundef null), !inline_history !1307
  br label %sqlite3CommitTransaction.exit

bb.ir:                                            ; preds = %bb.p
  %.val685.i = load ptr, ptr %i.ca, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.i496 = icmp eq ptr %.val685.i, null
  br i1 %.not.i.i.i496, label %sqlite3DbMallocRaw.exit.i.i499, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.aoy = getelementptr inbounds nuw i8, ptr %.val685.i, i64 42 ; 2 uses
  %i.aoz = load i8, ptr %i.aoy, align 2, !tbaa !129
  %i.apa = icmp eq i8 %i.aoz, 0
  br i1 %i.apa, label %bb.it, label %sqlite3Expr.exit501

bb.it:                                            ; preds = %bb.is
  %i.apb = call ptr @sqlite3_malloc(i32 noundef 120) ; 2 uses
  %i.apc = icmp eq ptr %i.apb, null
  br i1 %i.apc, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  store i8 1, ptr %i.aoy, align 2, !tbaa !129
  br label %sqlite3Expr.exit501

sqlite3DbMallocRaw.exit.i.i499:                   ; preds = %bb.ir
  %i.apd = call ptr @sqlite3_malloc(i32 noundef 120) ; 2 uses
  %.not.i.i500 = icmp eq ptr %i.apd, null
  br i1 %.not.i.i500, label %sqlite3Expr.exit501, label %bb.iv

bb.iv:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i499, %bb.it
  %.0.i11.i.i498 = phi ptr [ %i.apd, %sqlite3DbMallocRaw.exit.i.i499 ], [ %i.apb, %bb.it ] ; 6 uses
  %i.ape = getelementptr inbounds nuw i8, ptr %.0.i11.i.i498, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(119) %i.ape, i8 0, i64 119, i1 false)
  store i8 107, ptr %.0.i11.i.i498, align 8, !tbaa !1311
  %i.apf = getelementptr inbounds nuw i8, ptr %.0.i11.i.i498, i64 16
  %i.apg = getelementptr inbounds nuw i8, ptr %.0.i11.i.i498, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.apf, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.apg, align 8, !tbaa !1312
  %i.aph = getelementptr inbounds nuw i8, ptr %.0.i11.i.i498, i64 112
  store i32 1, ptr %i.aph, align 8, !tbaa !1314
  br label %sqlite3Expr.exit501

sqlite3Expr.exit501:                              ; preds = %bb.is, %bb.iu, %sqlite3DbMallocRaw.exit.i.i499, %bb.iv
  %.0.i497 = phi ptr [ %.0.i11.i.i498, %bb.iv ], [ null, %sqlite3DbMallocRaw.exit.i.i499 ], [ null, %bb.iu ], [ null, %bb.is ]
  %i.api = getelementptr inbounds i8, ptr %i.ac, i64 -56 ; 2 uses
  %.val684.i = load ptr, ptr %i.ca, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.i502 = icmp eq ptr %.val684.i, null
  br i1 %.not.i.i.i502, label %sqlite3DbMallocRaw.exit.i.i506, label %bb.iw

bb.iw:                                            ; preds = %sqlite3Expr.exit501
  %i.apj = getelementptr inbounds nuw i8, ptr %.val684.i, i64 42 ; 2 uses
  %i.apk = load i8, ptr %i.apj, align 2, !tbaa !129
  %i.apl = icmp eq i8 %i.apk, 0
  br i1 %i.apl, label %bb.ix, label %sqlite3Expr.exit508

bb.ix:                                            ; preds = %bb.iw
  %i.apm = call ptr @sqlite3_malloc(i32 noundef 120) ; 2 uses
  %i.apn = icmp eq ptr %i.apm, null
  br i1 %i.apn, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  store i8 1, ptr %i.apj, align 2, !tbaa !129
  br label %sqlite3Expr.exit508

sqlite3DbMallocRaw.exit.i.i506:                   ; preds = %sqlite3Expr.exit501
  %i.apo = call ptr @sqlite3_malloc(i32 noundef 120) ; 2 uses
  %.not.i.i507 = icmp eq ptr %i.apo, null
  br i1 %.not.i.i507, label %sqlite3Expr.exit508, label %bb.iz

bb.iz:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i506, %bb.ix
  %.0.i11.i.i504 = phi ptr [ %i.apo, %sqlite3DbMallocRaw.exit.i.i506 ], [ %i.apm, %bb.ix ] ; 8 uses
  %i.app = getelementptr inbounds nuw i8, ptr %.0.i11.i.i504, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(119) %i.app, i8 0, i64 119, i1 false)
  store i8 23, ptr %.0.i11.i.i504, align 8, !tbaa !1311
  %i.apq = getelementptr inbounds nuw i8, ptr %.0.i11.i.i504, i64 16
  %i.apr = getelementptr inbounds nuw i8, ptr %.0.i11.i.i504, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.apq, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.apr, align 8, !tbaa !1312
  %i.aps = getelementptr inbounds nuw i8, ptr %.0.i11.i.i504, i64 56
  %i.apt = getelementptr inbounds nuw i8, ptr %.0.i11.i.i504, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.apt, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.api, i64 16, i1 false), !tbaa.struct !1313
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aps, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.api, i64 16, i1 false)
  %i.apu = getelementptr inbounds nuw i8, ptr %.0.i11.i.i504, i64 112
  store i32 1, ptr %i.apu, align 8, !tbaa !1314
  br label %sqlite3Expr.exit508

sqlite3Expr.exit508:                              ; preds = %bb.iw, %bb.iy, %sqlite3DbMallocRaw.exit.i.i506, %bb.iz
  %.0.i503 = phi ptr [ %.0.i11.i.i504, %bb.iz ], [ null, %sqlite3DbMallocRaw.exit.i.i506 ], [ null, %bb.iy ], [ null, %bb.iw ]
  %.val683.i = load ptr, ptr %i.ca, align 8, !tbaa !244
  %i.apv = call fastcc noundef ptr @sqlite3Expr(ptr noundef %.val683.i, i32 noundef 112, ptr noundef %.0.i503, ptr noundef %.0.i497, ptr noundef null)
  %i.apw = getelementptr inbounds i8, ptr %i.ac, i64 -88
  %i.apx = load ptr, ptr %i.apw, align 8, !tbaa !37
  %.val706.i = load ptr, ptr %i.ca, align 8, !tbaa !244
  %i.apy = call fastcc ptr @sqlite3ExprListAppend(ptr %.val706.i, ptr noundef %i.apx, ptr noundef %i.apv, ptr noundef null), !inline_history !1307
  br label %sqlite3CommitTransaction.exit

bb.ja:                                            ; preds = %bb.p
  %i.apz = load ptr, ptr %i.ca, align 8, !tbaa !244 ; 2 uses
  %.not.i.i509 = icmp eq ptr %i.apz, null
  br i1 %.not.i.i509, label %sqlite3DbMallocRaw.exit.i, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 42 ; 2 uses
  %i.aqb = load i8, ptr %i.aqa, align 2, !tbaa !129
  %i.aqc = icmp eq i8 %i.aqb, 0
  br i1 %i.aqc, label %bb.jc, label %sqlite3CommitTransaction.exit

bb.jc:                                            ; preds = %bb.jb
  %i.aqd = call ptr @sqlite3_malloc(i32 noundef 80) ; 2 uses
  %i.aqe = icmp eq ptr %i.aqd, null
  br i1 %i.aqe, label %bb.jd, label %sqlite3DbMallocRaw.exit.thread8.i

bb.jd:                                            ; preds = %bb.jc
  store i8 1, ptr %i.aqa, align 2, !tbaa !129
  br label %sqlite3CommitTransaction.exit

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.ja
  %i.aqf = call ptr @sqlite3_malloc(i32 noundef 80) ; 2 uses
  %.not.i510 = icmp eq ptr %i.aqf, null
  br i1 %.not.i510, label %sqlite3CommitTransaction.exit, label %sqlite3DbMallocRaw.exit.thread8.i

sqlite3DbMallocRaw.exit.thread8.i:                ; preds = %sqlite3DbMallocRaw.exit.i, %bb.jc
  %.0.i11.i = phi ptr [ %i.aqf, %sqlite3DbMallocRaw.exit.i ], [ %i.aqd, %bb.jc ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %.0.i11.i, i8 0, i64 80, i1 false)
  br label %sqlite3CommitTransaction.exit

bb.je:                                            ; preds = %bb.p
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aqh = load ptr, ptr %i.aqg, align 8, !tbaa !37 ; 5 uses
  %.not.i47 = icmp eq ptr %i.aqh, null
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqh, i64 8 ; 2 uses
  br i1 %.not.i47, label %sqlite3CommitTransaction.exit, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  %i.aqj = load i16, ptr %i.aqh, align 8, !tbaa !1223 ; 2 uses
  %i.aqk = icmp sgt i16 %i.aqj, 1
  br i1 %i.aqk, label %.lr.ph.preheader.i49, label %._crit_edge.i48

.lr.ph.preheader.i49:                             ; preds = %bb.jf
  %i.aql = zext nneg i16 %i.aqj to i64
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i50, %.lr.ph.preheader.i49
  %indvars.iv.i51 = phi i64 [ %i.aql, %.lr.ph.preheader.i49 ], [ %indvars.iv.next.i52, %.lr.ph.i50 ] ; 3 uses
  %indvars.iv.next.i52 = add nsw i64 %indvars.iv.i51, -1 ; 2 uses
  %i.aqm = getelementptr [72 x i8], ptr %i.aqi, i64 %indvars.iv.i51
  %i.aqn = getelementptr i8, ptr %i.aqm, i64 -103
  %i.aqo = load i8, ptr %i.aqn, align 1, !tbaa !1327
  %i.aqp = getelementptr inbounds nuw [72 x i8], ptr %i.aqi, i64 %indvars.iv.next.i52
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 41
  store i8 %i.aqo, ptr %i.aqq, align 1, !tbaa !1327
  %i.aqr = icmp samesign ugt i64 %indvars.iv.i51, 2
  br i1 %i.aqr, label %.lr.ph.i50, label %._crit_edge.i48, !llvm.loop !1328

._crit_edge.i48:                                  ; preds = %.lr.ph.i50, %bb.jf
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqh, i64 49
  store i8 0, ptr %i.aqs, align 1, !tbaa !1327
  br label %sqlite3CommitTransaction.exit

bb.jg:                                            ; preds = %bb.p
  %i.aqt = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.aqu = load ptr, ptr %i.aqt, align 8, !tbaa !37 ; 5 uses
  %.not641.i = icmp eq ptr %i.aqu, null
  br i1 %.not641.i, label %sqlite3CommitTransaction.exit, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  %i.aqv = load i16, ptr %i.aqu, align 8, !tbaa !1223 ; 2 uses
  %i.aqw = icmp sgt i16 %i.aqv, 0
  br i1 %i.aqw, label %bb.ji, label %sqlite3CommitTransaction.exit

bb.ji:                                            ; preds = %bb.jh
  %i.aqx = zext nneg i16 %i.aqv to i64
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aqz = load i32, ptr %i.aqy, align 8, !tbaa !37
  %i.ara = trunc i32 %i.aqz to i8
  %12 = add nuw nsw i64 %i.aqx, 4294967295
  %13 = and i64 %12, 4294967295
  %i.arb = getelementptr inbounds nuw [72 x i8], ptr %i.aqu, i64 %13
  %i.arc = getelementptr inbounds nuw i8, ptr %i.arb, i64 49
  store i8 %i.ara, ptr %i.arc, align 1, !tbaa !1327
  br label %sqlite3CommitTransaction.exit

bb.jj:                                            ; preds = %bb.p
  %i.ard = getelementptr inbounds i8, ptr %i.ac, i64 -152
  %i.are = load ptr, ptr %i.ard, align 8, !tbaa !37
  %i.arf = getelementptr inbounds i8, ptr %i.ac, i64 -120
  %i.arg = getelementptr inbounds i8, ptr %i.ac, i64 -88
  %i.arh = getelementptr inbounds i8, ptr %i.ac, i64 -56
  %i.ari = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.arj = load ptr, ptr %i.ari, align 8, !tbaa !37
  %i.ark = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.arl = load ptr, ptr %i.ark, align 8, !tbaa !37
  %.val713.i = load ptr, ptr %i.ca, align 8, !tbaa !244
  %i.arm = call fastcc ptr @sqlite3SrcListAppendFromTerm(ptr %.val713.i, ptr noundef %i.are, ptr noundef nonnull %i.arf, ptr noundef nonnull %i.arg, ptr noundef nonnull %i.arh, ptr noundef null, ptr noundef %i.arj, ptr noundef %i.arl), !inline_history !1307
  br label %sqlite3CommitTransaction.exit

bb.jk:                                            ; preds = %bb.p
  %i.arn = getelementptr inbounds i8, ptr %i.ac, i64 -184
  %i.aro = load ptr, ptr %i.arn, align 8, !tbaa !37
  %i.arp = getelementptr inbounds i8, ptr %i.ac, i64 -56
  %i.arq = getelementptr inbounds i8, ptr %i.ac, i64 -120
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !37
  %i.ars = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.art = load ptr, ptr %i.ars, align 8, !tbaa !37
  %i.aru = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.arv = load ptr, ptr %i.aru, align 8, !tbaa !37
  %.val712.i = load ptr, ptr %i.ca, align 8, !tbaa !244
  %i.arw = call fastcc ptr @sqlite3SrcListAppendFromTerm(ptr %.val712.i, ptr noundef %i.aro, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.arp, ptr noundef %i.arr, ptr noundef %i.art, ptr noundef %i.arv), !inline_history !1307
  br label %sqlite3CommitTransaction.exit

bb.jl:                                            ; preds = %bb.p
  %i.arx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ary = load ptr, ptr %i.arx, align 8, !tbaa !37 ; 4 uses
  %.not.i46 = icmp eq ptr %i.ary, null
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 8 ; 2 uses
  br i1 %.not.i46, label %sqlite3SrcListShiftJoinType.exit, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.asa = load i16, ptr %i.ary, align 8, !tbaa !1223 ; 2 uses
  %i.asb = icmp sgt i16 %i.asa, 1
  br i1 %i.asb, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.jm
  %i.asc = zext nneg i16 %i.asa to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.asc, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.asd = getelementptr [72 x i8], ptr %i.arz, i64 %indvars.iv.i
  %i.ase = getelementptr i8, ptr %i.asd, i64 -103
  %i.asf = load i8, ptr %i.ase, align 1, !tbaa !1327
  %i.asg = getelementptr inbounds nuw [72 x i8], ptr %i.arz, i64 %indvars.iv.next.i
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 41
  store i8 %i.asf, ptr %i.ash, align 1, !tbaa !1327
  %i.asi = icmp samesign ugt i64 %indvars.iv.i, 2
  br i1 %i.asi, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1328

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.jm
  %i.asj = getelementptr inbounds nuw i8, ptr %i.ary, i64 49
  store i8 0, ptr %i.asj, align 1, !tbaa !1327
  %.pre314 = load ptr, ptr %i.arx, align 8, !tbaa !37
  br label %sqlite3SrcListShiftJoinType.exit

sqlite3SrcListShiftJoinType.exit:                 ; preds = %bb.jl, %._crit_edge.i
  %i.ask = phi ptr [ null, %bb.jl ], [ %.pre314, %._crit_edge.i ]
  %i.asl = call fastcc ptr @sqlite3SelectNew(ptr noundef %i.ca, ptr noundef null, ptr noundef %i.ask, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !1307
  br label %sqlite3CommitTransaction.exit

bb.jn:                                            ; preds = %bb.p
  %i.asm = load ptr, ptr %i.ca, align 8, !tbaa !244
  %i.asn = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.aso = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.asp = call fastcc ptr @sqlite3SrcListAppend(ptr noundef %i.asm, ptr noundef null, ptr noundef nonnull %i.asn, ptr noundef nonnull %i.aso), !inline_history !1307
  br label %sqlite3CommitTransaction.exit

bb.jo:                                            ; preds = %bb.p
  %i.asq = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.asr = call fastcc i32 @sqlite3JoinType(ptr noundef %i.ca, ptr noundef %i.asq, ptr noundef null, ptr noundef null), !inline_history !1307
  %.sroa.0.0.insert.ext206 = zext nneg i32 %i.asr to i64
  %i.ass = inttoptr i64 %.sroa.0.0.insert.ext206 to ptr
  br label %sqlite3CommitTransaction.exit

bb.jp:                                            ; preds = %bb.p
  %i.ast = getelementptr inbounds i8, ptr %i.ac, i64 -56
  %i.asu = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.asv = call fastcc i32 @sqlite3JoinType(ptr noundef %i.ca, ptr noundef %i.ast, ptr noundef nonnull %i.asu, ptr noundef null), !inline_history !1307
  %.sroa.0.0.insert.ext202 = zext nneg i32 %i.asv to i64
  %i.asw = inttoptr i64 %.sroa.0.0.insert.ext202 to ptr
  br label %sqlite3CommitTransaction.exit

bb.jq:                                            ; preds = %bb.p
  %i.asx = getelementptr inbounds i8, ptr %i.ac, i64 -88
  %i.asy = getelementptr inbounds i8, ptr %i.ac, i64 -56
  %i.asz = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.ata = call fastcc i32 @sqlite3JoinType(ptr noundef %i.ca, ptr noundef %i.asx, ptr noundef nonnull %i.asy, ptr noundef nonnull %i.asz), !inline_history !1307
  %.sroa.0.0.insert.ext198 = zext nneg i32 %i.ata to i64
  %i.atb = inttoptr i64 %.sroa.0.0.insert.ext198 to ptr
  br label %sqlite3CommitTransaction.exit

bb.jr:                                            ; preds = %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p
  %i.atc = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.atd = load ptr, ptr %i.atc, align 8, !tbaa !37
  br label %sqlite3CommitTransaction.exit

bb.js:                                            ; preds = %bb.p, %bb.p
  %i.ate = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.atf = load ptr, ptr %i.ate, align 8, !tbaa !37
  br label %sqlite3CommitTransaction.exit

bb.jt:                                            ; preds = %bb.p, %bb.p, %bb.p
  %i.atg = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ath = load ptr, ptr %i.atg, align 8, !tbaa !37
  br label %sqlite3CommitTransaction.exit

bb.ju:                                            ; preds = %bb.p
  %i.ati = getelementptr inbounds i8, ptr %i.ac, i64 -88
  %i.atj = load ptr, ptr %i.ati, align 8, !tbaa !37
  %i.atk = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.atl = load ptr, ptr %i.atk, align 8, !tbaa !37
  %.val705.i = load ptr, ptr %i.ca, align 8, !tbaa !244
  %i.atm = call fastcc ptr @sqlite3ExprListAppend(ptr %.val705.i, ptr noundef %i.atj, ptr noundef %i.atl, ptr noundef null), !inline_history !1307 ; 4 uses
  %.not640.i = icmp eq ptr %i.atm, null
  br i1 %.not640.i, label %sqlite3CommitTransaction.exit, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.atn = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ato = load i32, ptr %i.atn, align 8, !tbaa !37
  %i.atp = trunc i32 %i.ato to i8
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atm, i64 16
  %i.atr = load ptr, ptr %i.atq, align 8, !tbaa !1201
  %i.ats = load i32, ptr %i.atm, align 8, !tbaa !1204
  %i.att = sext i32 %i.ats to i64
  %i.atu = getelementptr [24 x i8], ptr %i.atr, i64 %i.att
  %i.atv = getelementptr i8, ptr %i.atu, i64 -8
  store i8 %i.atp, ptr %i.atv, align 8, !tbaa !1329
  br label %sqlite3CommitTransaction.exit

bb.jw:                                            ; preds = %bb.p
  %i.atw = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.atx = load ptr, ptr %i.atw, align 8, !tbaa !37
  %.val704.i = load ptr, ptr %i.ca, align 8, !tbaa !244
  %i.aty = call fastcc ptr @sqlite3ExprListAppend(ptr %.val704.i, ptr noundef null, ptr noundef %i.atx, ptr noundef null), !inline_history !1307 ; 4 uses
  %.not638.i = icmp eq ptr %i.aty, null
  br i1 %.not638.i, label %sqlite3CommitTransaction.exit, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 16
  %i.aua = load ptr, ptr %i.atz, align 8, !tbaa !1201 ; 2 uses
  %.not639.i = icmp eq ptr %i.aua, null
  br i1 %.not639.i, label %sqlite3CommitTransaction.exit, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.aub = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.auc = load i32, ptr %i.aub, align 8, !tbaa !37
  %i.aud = trunc i32 %i.auc to i8
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aua, i64 16
  store i8 %i.aud, ptr %i.aue, align 8, !tbaa !1329
  br label %sqlite3CommitTransaction.exit

bb.jz:                                            ; preds = %bb.p
  %i.auf = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !37
  br label %sqlite3CommitTransaction.exit

bb.ka:                                            ; preds = %bb.p
  %i.auh = getelementptr inbounds i8, ptr %i.ac, i64 -56
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !37
  %i.auj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.auk = load ptr, ptr %i.auj, align 8, !tbaa !37
  br label %sqlite3CommitTransaction.exit

bb.kb:                                            ; preds = %bb.p
  %i.aul = getelementptr inbounds i8, ptr %i.ac, i64 -56
  %i.aum = load ptr, ptr %i.aul, align 8, !tbaa !37
  %i.aun = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.auo = load ptr, ptr %i.aun, align 8, !tbaa !37
  br label %sqlite3CommitTransaction.exit

bb.kc:                                            ; preds = %bb.p
  %i.aup = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.auq = load ptr, ptr %i.aup, align 8, !tbaa !37
  %i.aur = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aus = load ptr, ptr %i.aur, align 8, !tbaa !37
  call fastcc void @sqlite3DeleteFrom(ptr noundef %i.ca, ptr noundef %i.auq, ptr noundef %i.aus), !inline_history !1307
  br label %sqlite3CommitTransaction.exit

bb.kd:                                            ; preds = %bb.p
  %i.aut = getelementptr inbounds i8, ptr %i.ac, i64 -24 ; 2 uses
  %i.auu = load ptr, ptr %i.aut, align 8, !tbaa !37 ; 3 uses
  %.not.i44 = icmp eq ptr %i.auu, null
  br i1 %.not.i44, label %sqlite3ExprListCheckLength.exit45, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.auv = load i32, ptr %i.auu, align 8, !tbaa !1204
  %i.auw = icmp sgt i32 %i.auv, 2000
  br i1 %i.auw, label %bb.kf, label %sqlite3ExprListCheckLength.exit45

bb.kf:                                            ; preds = %bb.ke
end_hunk_2
begin_hunk_3_@sqlite3ExprCompare:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1198
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1198
  %i.q = tail call fastcc i32 @sqlite3ExprCompare(ptr noundef %i.n, ptr noundef %i.p)
  %.not48 = icmp eq i32 %i.q, 0
  br i1 %.not48, label %.loopexit64, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1199
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1199
  %i.v = tail call fastcc i32 @sqlite3ExprCompare(ptr noundef %i.s, ptr noundef %i.u)
  %.not49 = icmp eq i32 %i.v, 0
  br i1 %.not49, label %.loopexit64, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1200 ; 3 uses
  %.not50 = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1200 ; 3 uses
  %.not51 = icmp eq ptr %i.z, null                ; 2 uses
  br i1 %.not50, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not51, label %.loopexit64, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load i32, ptr %i.x, align 8, !tbaa !1204 ; 3 uses
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !1204
  %.not52 = icmp eq i32 %i.aa, %i.ab
  br i1 %.not52, label %.preheader, label %.loopexit64

.preheader:                                       ; preds = %bb.i
  %i.ac = icmp sgt i32 %i.aa, 0
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1201
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1201
  %wide.trip.count = zext nneg i32 %i.aa to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.k, !llvm.loop !1616

bb.k:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1205
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1205
  %i.al = tail call fastcc i32 @sqlite3ExprCompare(ptr noundef %i.ai, ptr noundef %i.ak)
  %.not61 = icmp eq i32 %i.al, 0
  br i1 %.not61, label %.loopexit64, label %bb.j

bb.l:                                             ; preds = %bb.g
  br i1 %.not51, label %.loopexit, label %.loopexit64

.loopexit:                                        ; preds = %bb.j, %.preheader, %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1210
  %.not53 = icmp eq ptr %i.an, null
  br i1 %.not53, label %bb.m, label %.loopexit64

bb.m:                                             ; preds = %.loopexit
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1210
  %.not54 = icmp eq ptr %i.ap, null
  br i1 %.not54, label %bb.n, label %.loopexit64

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !1330
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.at = load i32, ptr %i.as, align 8, !tbaa !1330
  %.not55 = icmp eq i32 %i.ar, %i.at
  br i1 %.not55, label %bb.o, label %.loopexit64

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.av = load i32, ptr %i.au, align 4, !tbaa !1360
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !1360
  %.not56 = icmp eq i32 %i.av, %i.ax
  br i1 %.not56, label %bb.p, label %.loopexit64

bb.p:                                             ; preds = %bb.o
  %.not57 = icmp eq i8 %i.e, -107
  br i1 %.not57, label %sqlite3StrNICmp.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1197 ; 2 uses
  %.not58 = icmp eq ptr %i.az, null
  br i1 %.not58, label %sqlite3StrNICmp.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1197 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.loopexit64, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = lshr i32 %i.be, 1                       ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = lshr i32 %i.bh, 1
  %.not59 = icmp eq i32 %i.bf, %i.bi
  br i1 %.not59, label %bb.t, label %.loopexit64

bb.t:                                             ; preds = %bb.s
  %.not63 = icmp eq i32 %i.bf, 0
  br i1 %.not63, label %sqlite3StrNICmp.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %bb.v
  %.in.i = phi i32 [ %i.bj, %bb.v ], [ %i.bf, %bb.t ] ; 2 uses
  %.015.i = phi ptr [ %i.bu, %bb.v ], [ %i.bb, %bb.t ] ; 3 uses
  %.01014.i = phi ptr [ %i.bt, %bb.v ], [ %i.az, %bb.t ] ; 2 uses
  %i.bj = add nsw i32 %.in.i, -1
  %i.bk = load i8, ptr %.01014.i, align 1, !tbaa !37 ; 2 uses
  %.not.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i, label %sqlite3StrNICmp.exit.loopexit, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !37  ; 2 uses
  %i.bo = load i8, ptr %.015.i, align 1, !tbaa !37
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !37  ; 2 uses
  %i.bs = icmp eq i8 %i.bn, %i.br
  br i1 %i.bs, label %bb.v, label %split.i

bb.v:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %.01014.i, i64 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %i.bv = icmp samesign ugt i32 %.in.i, 1
  br i1 %i.bv, label %.lr.ph.i, label %sqlite3StrNICmp.exit.thread, !llvm.loop !585

split.i:                                          ; preds = %bb.u
  %i.bw = zext i8 %i.bn to i32
  br label %sqlite3StrNICmp.exit

sqlite3StrNICmp.exit.loopexit:                    ; preds = %.lr.ph.i
  %.pre = load i8, ptr %.015.i, align 1, !tbaa !37
  %.phi.trans.insert = zext i8 %.pre to i64
  %.phi.trans.insert75 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert
  %.pre76 = load i8, ptr %.phi.trans.insert75, align 1, !tbaa !37
  br label %sqlite3StrNICmp.exit

sqlite3StrNICmp.exit:                             ; preds = %sqlite3StrNICmp.exit.loopexit, %split.i
  %i.bx = phi i8 [ %i.br, %split.i ], [ %.pre76, %sqlite3StrNICmp.exit.loopexit ]
  %i.by = phi i32 [ %i.bw, %split.i ], [ 0, %sqlite3StrNICmp.exit.loopexit ]
  %i.bz = zext i8 %i.bx to i32
  %.not60 = icmp eq i32 %i.by, %i.bz
  br i1 %.not60, label %sqlite3StrNICmp.exit.thread, label %.loopexit64

sqlite3StrNICmp.exit.thread:                      ; preds = %bb.v, %bb.t, %sqlite3StrNICmp.exit, %bb.q, %bb.p
  br label %.loopexit64

.loopexit64:                                      ; preds = %bb.k, %sqlite3StrNICmp.exit, %bb.s, %bb.r, %bb.n, %bb.o, %.loopexit, %bb.m, %bb.l, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c, %sqlite3StrNICmp.exit.thread, %bb.b
  %.039 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %.loopexit ], [ 0, %bb.n ], [ 0, %bb.r ], [ 0, %bb.s ], [ 1, %sqlite3StrNICmp.exit.thread ], [ 0, %sqlite3StrNICmp.exit ], [ 0, %bb.e ], [ 0, %bb.m ], [ 0, %bb.o ], [ 0, %bb.k ]
  ret i32 %.039
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @sqlite3GetInt32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #29 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !37      ; 2 uses
  %.not = icmp eq i8 %i.a, 45                     ; 3 uses
  %i.b = icmp eq i8 %i.a, 43
  %i.c = or i1 %.not, %i.b
  %.024.idx = zext i1 %i.c to i64
  %.024 = getelementptr inbounds nuw i8, ptr %0, i64 %.024.idx
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.125 = phi ptr [ %.024, %bb.a ], [ %i.f, %bb.b ] ; 11 uses
  %i.d = load i8, ptr %.125, align 1, !tbaa !37   ; 3 uses
  %i.e = icmp eq i8 %i.d, 48
  %i.f = getelementptr inbounds nuw i8, ptr %.125, i64 1 ; 2 uses
  br i1 %i.e, label %bb.b, label %.preheader, !llvm.loop !1617

.preheader:                                       ; preds = %bb.b
  %.0.neg = sext i1 %.not to i64
  %i.g = add i8 %i.d, -48
  %or.cond = icmp ult i8 %i.g, 10
  br i1 %or.cond, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.preheader
  %2 = and i8 %i.d, 15
  %3 = zext nneg i8 %2 to i64                     ; 2 uses
  %i.h = load i8, ptr %i.f, align 1, !tbaa !37    ; 2 uses
  %i.i = add i8 %i.h, -48
  %or.cond.1 = icmp ult i8 %i.i, 10
  br i1 %or.cond.1, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %4 = mul nuw nsw i64 %3, 10
  %5 = and i8 %i.h, 15
  %6 = zext nneg i8 %5 to i64
  %i.j = add nuw nsw i64 %4, %6                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.125, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !37    ; 2 uses
  %i.m = add i8 %i.l, -48
  %or.cond.2 = icmp ult i8 %i.m, 10
  br i1 %or.cond.2, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %7 = mul nuw nsw i64 %i.j, 10
  %8 = and i8 %i.l, 15
  %9 = zext nneg i8 %8 to i64
  %i.n = add nuw nsw i64 %7, %9                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.125, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !37    ; 2 uses
  %i.q = add i8 %i.p, -48
  %or.cond.3 = icmp ult i8 %i.q, 10
  br i1 %or.cond.3, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %10 = mul nuw nsw i64 %i.n, 10
  %11 = and i8 %i.p, 15
  %12 = zext nneg i8 %11 to i64
  %i.r = add nuw nsw i64 %10, %12                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.125, i64 4
  %i.t = load i8, ptr %i.s, align 1, !tbaa !37    ; 2 uses
  %i.u = add i8 %i.t, -48
  %or.cond.4 = icmp ult i8 %i.u, 10
  br i1 %or.cond.4, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %13 = mul nuw nsw i64 %i.r, 10
  %14 = and i8 %i.t, 15
  %15 = zext nneg i8 %14 to i64
  %i.v = add nuw nsw i64 %13, %15                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.125, i64 5
  %i.x = load i8, ptr %i.w, align 1, !tbaa !37    ; 2 uses
  %i.y = add i8 %i.x, -48
  %or.cond.5 = icmp ult i8 %i.y, 10
  br i1 %or.cond.5, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %16 = mul nuw nsw i64 %i.v, 10
  %17 = and i8 %i.x, 15
  %18 = zext nneg i8 %17 to i64
  %i.z = add nuw nsw i64 %16, %18                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.125, i64 6
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !37  ; 2 uses
  %i.ac = add i8 %i.ab, -48
  %or.cond.6 = icmp ult i8 %i.ac, 10
  br i1 %or.cond.6, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %19 = mul nuw nsw i64 %i.z, 10
  %20 = and i8 %i.ab, 15
  %21 = zext nneg i8 %20 to i64
  %i.ad = add nuw nsw i64 %19, %21                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.125, i64 7
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !37  ; 2 uses
  %i.ag = add i8 %i.af, -48
  %or.cond.7 = icmp ult i8 %i.ag, 10
  br i1 %or.cond.7, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %22 = mul nuw nsw i64 %i.ad, 10
  %23 = and i8 %i.af, 15
  %24 = zext nneg i8 %23 to i64
  %i.ah = add nuw nsw i64 %22, %24                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.125, i64 8
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !37  ; 2 uses
  %i.ak = add i8 %i.aj, -48
  %or.cond.8 = icmp ult i8 %i.ak, 10
  br i1 %or.cond.8, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %25 = mul nuw nsw i64 %i.ah, 10
  %26 = and i8 %i.aj, 15
  %27 = zext nneg i8 %26 to i64
  %i.al = add nuw nsw i64 %25, %27                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.125, i64 9
  %i.an = load i8, ptr %i.am, align 1, !tbaa !37  ; 2 uses
  %i.ao = add i8 %i.an, -48
  %or.cond.9 = icmp ult i8 %i.ao, 10
  br i1 %or.cond.9, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %28 = mul nuw nsw i64 %i.al, 10
  %29 = and i8 %i.an, 15
  %30 = zext nneg i8 %29 to i64
  %i.ap = add nuw nsw i64 %28, %30
  %i.aq = getelementptr inbounds nuw i8, ptr %.125, i64 10
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !37
  %i.as = add i8 %i.ar, -48
  %or.cond.10 = icmp ult i8 %i.as, 10
  br i1 %or.cond.10, label %.critedge.thread, label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.preheader
  %.02333.lcssa = phi i64 [ 0, %.preheader ], [ %3, %bb.c ], [ %i.j, %bb.d ], [ %i.n, %bb.e ], [ %i.r, %bb.f ], [ %i.v, %bb.g ], [ %i.z, %bb.h ], [ %i.ad, %bb.i ], [ %i.ah, %bb.j ], [ %i.al, %bb.k ], [ %i.ap, %bb.l ] ; 3 uses
  %i.at = add nsw i64 %.02333.lcssa, %.0.neg
  %i.au = icmp sgt i64 %i.at, 2147483647
  br i1 %i.au, label %.critedge.thread, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.av = sub nsw i64 0, %.02333.lcssa
  %spec.select28 = select i1 %.not, i64 %i.av, i64 %.02333.lcssa
  %i.aw = trunc i64 %spec.select28 to i32
  store i32 %i.aw, ptr %1, align 4, !tbaa !4
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.l, %.critedge, %bb.m
  %.021 = phi i32 [ 1, %bb.m ], [ 0, %.critedge ], [ 0, %bb.l ]
  ret i32 %.021
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @columnType(ptr noundef nonnull %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #36 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %5 = alloca %struct.NameContext, align 8        ; 6 uses
  %6 = alloca %struct.NameContext, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  store ptr null, ptr %i.a, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  store ptr null, ptr %i.b, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  store ptr null, ptr %i.c, align 8, !tbaa !72
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1402
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %1, align 8, !tbaa !1311
  switch i8 %i.h, label %bb.u [
    i8 -105, label %bb.d
    i8 -107, label %bb.d
    i8 110, label %bb.t
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1360 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.i
  %.05784 = phi ptr [ %0, %bb.d ], [ %.1, %bb.i ] ; 3 uses
  %.06283 = phi ptr [ null, %bb.d ], [ %.163, %bb.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %.05784, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1402 ; 3 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !1223 ; 2 uses
  %i.o = icmp sgt i16 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.e
  %wide.trip.count = zext nneg i16 %i.n to i64
  %i.p = load i32, ptr %i.k, align 8, !tbaa !1330
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.q = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1398
  %.not75 = icmp eq i32 %i.s, %i.p
  br i1 %.not75, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %bb.f, !llvm.loop !1618

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %i.t, i64 %indvars.iv ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1226
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1227
  br label %bb.i

.critedge2:                                       ; preds = %bb.g, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.05784, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1585
  br label %bb.i

bb.i:                                             ; preds = %.critedge2, %bb.h
  %.165 = phi ptr [ %i.w, %bb.h ], [ null, %.critedge2 ] ; 5 uses
  %.163 = phi ptr [ %i.y, %bb.h ], [ %.06283, %.critedge2 ] ; 5 uses
  %.1 = phi ptr [ %.05784, %bb.h ], [ %i.aa, %.critedge2 ] ; 4 uses
  %.not = icmp ne ptr %.1, null
  %.not71 = icmp eq ptr %.165, null               ; 2 uses
  %or.cond = select i1 %.not, i1 %.not71, i1 false
  br i1 %or.cond, label %bb.e, label %.critedge, !llvm.loop !1619

.critedge:                                        ; preds = %bb.i
  br i1 %.not71, label %bb.u, label %bb.j

bb.j:                                             ; preds = %.critedge
  %.not72 = icmp eq ptr %.163, null
  br i1 %.not72, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = icmp sgt i32 %i.j, -1
  br i1 %i.ab, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr %.163, align 8, !tbaa !1212
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !1204
  %i.ae = icmp slt i32 %i.j, %i.ad
  br i1 %i.ae, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  %i.af = load ptr, ptr %.163, align 8, !tbaa !1212
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1201
  %i.ai = zext nneg i32 %i.j to i64
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1205
  %i.al = getelementptr inbounds nuw i8, ptr %.163, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1215
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !1402
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr null, ptr %i.ao, align 8, !tbaa !1585
  %i.ap = load ptr, ptr %.1, align 8, !tbaa !1399
  store ptr %i.ap, ptr %5, align 8, !tbaa !1399
  %i.aq = call fastcc ptr @columnType(ptr noundef %5, ptr noundef %i.ak, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br label %bb.u

bb.n:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.165, i64 144
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !277 ; 2 uses
  %.not73 = icmp eq ptr %i.as, null
  br i1 %.not73, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = icmp slt i32 %i.j, 0
  br i1 %i.at, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %.165, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !1394 ; 2 uses
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.q, label %.thread

.thread:                                          ; preds = %bb.o, %bb.p
  %.06178 = phi i32 [ %i.av, %bb.p ], [ %i.j, %bb.o ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.165, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !261
  %i.az = zext nneg i32 %.06178 to i64
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !399
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !264
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread
  %storemerge = phi ptr [ %i.bd, %.thread ], [ @.str.342, %bb.p ]
  %.058 = phi ptr [ %i.bc, %.thread ], [ @.str.341, %bb.p ] ; 2 uses
  store ptr %storemerge, ptr %i.c, align 8, !tbaa !72
  %i.be = load ptr, ptr %.165, align 8, !tbaa !402
  store ptr %i.be, ptr %i.b, align 8, !tbaa !72
  %i.bf = load ptr, ptr %.1, align 8, !tbaa !1399 ; 2 uses
  %.not74 = icmp eq ptr %i.bf, null
  br i1 %.not74, label %bb.u, label %.preheader.i

.preheader.i:                                     ; preds = %bb.q
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !244 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !278 ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !235 ; 2 uses
  br i1 %i.bj, label %.lr.ph.i, label %sqlite3SchemaToIndex.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.bi to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.s ] ; 3 uses
end_hunk_3
begin_hunk_4_@sqlite3GetCollSeq:bb.a
.split.us.preheader.i:                            ; preds = %bb.x, %.split.us.preheader.i
  %.017.in.i.i.i.i.i.us.i = phi ptr [ %.017.i.i.i.i.i.us.i, %.split.us.preheader.i ], [ %i.ev, %bb.x ]
  %.017.i.i.i.i.i.us.i = load ptr, ptr %.017.in.i.i.i.i.i.us.i, align 8, !tbaa !430, !nonnull !519, !noundef !519 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.us.i, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !471
  %i.gw = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.us.i, i64 32
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !493
  %i.gy = tail call i32 %strCompare.binCompare.i.i.i.i.i.i.us.i(ptr noundef %i.gv, i32 noundef %i.gx, ptr noundef nonnull %i.eg, i32 noundef %i.ei) #43, !callees !494, !inline_history !1624
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %sqlite3HashFindElem.exit.i.i.i.us.i, label %.split.us.preheader.i, !llvm.loop !496

sqlite3HashFindElem.exit.i.i.i.us.i:              ; preds = %.split.us.preheader.i
  %i.ha = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.us.i, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !432 ; 2 uses
  %i.hc = getelementptr i8, ptr %i.hb, i64 120
  %i.hd = getelementptr i8, ptr %i.hb, i64 104
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !517
  %.not.us.i = icmp eq ptr %i.he, null
  br i1 %.not.us.i, label %.split.us.1.i, label %bb.ac

.split.1.i:                                       ; preds = %sqlite3HashFindElem.exit.i.i.i.i
  %i.hf = load i8, ptr %i.ek, align 8, !tbaa !488
  %i.hg = icmp eq i8 %i.hf, 3
  %strHash.binHash.i.i.i.i.i.1.i = select i1 %i.hg, ptr @strHash, ptr @binHash
  %i.hh = tail call i32 %strHash.binHash.i.i.i.i.i.1.i(ptr noundef nonnull %i.eg, i32 noundef %i.ei) #43, !callees !489, !inline_history !1623
  %i.hi = load ptr, ptr %i.el, align 8, !tbaa !467, !nonnull !519, !noundef !519
  %i.hj = load i32, ptr %i.em, align 8, !tbaa !468
  %i.hk = srem i32 %i.hh, %i.hj
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [16 x i8], ptr %i.hi, i64 %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load i8, ptr %i.ek, align 8, !tbaa !488
  %i.hp = icmp eq i8 %i.ho, 3
  %strCompare.binCompare.i.i.i.i.i.i.1.i = select i1 %i.hp, ptr @strCompare, ptr @binCompare
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.split.1.i
  %.017.in.i.i.i.i.i.1.i = phi ptr [ %i.hn, %.split.1.i ], [ %.017.i.i.i.i.i.1.i, %bb.aa ]
  %.017.i.i.i.i.i.1.i = load ptr, ptr %.017.in.i.i.i.i.i.1.i, align 8, !tbaa !430, !nonnull !519, !noundef !519 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.1.i, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !471
  %i.hs = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.1.i, i64 32
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !493
  %i.hu = tail call i32 %strCompare.binCompare.i.i.i.i.i.i.1.i(ptr noundef %i.hr, i32 noundef %i.ht, ptr noundef nonnull %i.eg, i32 noundef %i.ei) #43, !callees !494, !inline_history !1624
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %sqlite3HashFindElem.exit.i.i.i.1.i, label %bb.aa, !llvm.loop !496

sqlite3HashFindElem.exit.i.i.i.1.i:               ; preds = %bb.aa
  %i.hw = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.1.i, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !432 ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 80
  %i.hz = getelementptr i8, ptr %i.hx, i64 64
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !517
  %.not.1.i = icmp eq ptr %i.ia, null
  br i1 %.not.1.i, label %.split.2.i, label %bb.ac

.split.2.i:                                       ; preds = %sqlite3HashFindElem.exit.i.i.i.1.i
  %i.ib = load i8, ptr %i.ek, align 8, !tbaa !488
  %i.ic = icmp eq i8 %i.ib, 3
  %strHash.binHash.i.i.i.i.i.2.i = select i1 %i.ic, ptr @strHash, ptr @binHash
  %i.id = tail call i32 %strHash.binHash.i.i.i.i.i.2.i(ptr noundef nonnull %i.eg, i32 noundef %i.ei) #43, !callees !489, !inline_history !1623
  %i.ie = load ptr, ptr %i.el, align 8, !tbaa !467, !nonnull !519, !noundef !519
  %i.if = load i32, ptr %i.em, align 8, !tbaa !468
  %i.ig = srem i32 %i.id, %i.if
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [16 x i8], ptr %i.ie, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load i8, ptr %i.ek, align 8, !tbaa !488
  %i.il = icmp eq i8 %i.ik, 3
  %strCompare.binCompare.i.i.i.i.i.i.2.i = select i1 %i.il, ptr @strCompare, ptr @binCompare
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.split.2.i
  %.017.in.i.i.i.i.i.2.i = phi ptr [ %i.ij, %.split.2.i ], [ %.017.i.i.i.i.i.2.i, %bb.ab ]
  %.017.i.i.i.i.i.2.i = load ptr, ptr %.017.in.i.i.i.i.i.2.i, align 8, !tbaa !430, !nonnull !519, !noundef !519 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.2.i, i64 24
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !471
  %i.io = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.2.i, i64 32
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !493
  %i.iq = tail call i32 %strCompare.binCompare.i.i.i.i.i.i.2.i(ptr noundef %i.in, i32 noundef %i.ip, ptr noundef nonnull %i.eg, i32 noundef %i.ei) #43, !callees !494, !inline_history !1624
  %i.ir = icmp eq i32 %i.iq, 0
  br i1 %i.ir, label %sqlite3HashFindElem.exit.i.i.i.2.i, label %bb.ab, !llvm.loop !496

sqlite3HashFindElem.exit.i.i.i.2.i:               ; preds = %bb.ab
  %i.is = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.2.i, i64 16
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !432 ; 2 uses
  %i.iu = getelementptr i8, ptr %i.it, i64 40
  %i.iv = getelementptr i8, ptr %i.it, i64 24
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !517
  %.not.2.i = icmp eq ptr %i.iw, null
  br i1 %.not.2.i, label %.thread51, label %bb.ac

.split.preheader.i:                               ; preds = %bb.x, %.split.preheader.i
  %.017.in.i.i.i.i.i.i = phi ptr [ %.017.i.i.i.i.i.i, %.split.preheader.i ], [ %i.ev, %bb.x ]
  %.017.i.i.i.i.i.i = load ptr, ptr %.017.in.i.i.i.i.i.i, align 8, !tbaa !430, !nonnull !519, !noundef !519 ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.i, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !471
  %i.iz = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.i, i64 32
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !493
  %i.jb = tail call i32 %strCompare.binCompare.i.i.i.i.i.i.us.i(ptr noundef %i.iy, i32 noundef %i.ja, ptr noundef nonnull %i.eg, i32 noundef %i.ei) #43, !callees !494, !inline_history !1624
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %sqlite3HashFindElem.exit.i.i.i.i, label %.split.preheader.i, !llvm.loop !496

sqlite3HashFindElem.exit.i.i.i.i:                 ; preds = %.split.preheader.i
  %i.jd = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.i, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !432 ; 2 uses
  %i.jf = getelementptr i8, ptr %i.je, i64 120
  %i.jg = getelementptr i8, ptr %i.je, i64 104
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !517
  %.not.i43 = icmp eq ptr %i.jh, null
  br i1 %.not.i43, label %.split.1.i, label %bb.ac

bb.ac:                                            ; preds = %sqlite3HashFindElem.exit.i.i.i.i, %sqlite3HashFindElem.exit.i.i.i.2.i, %sqlite3HashFindElem.exit.i.i.i.1.i, %sqlite3HashFindElem.exit.i.i.i.us.i, %sqlite3HashFindElem.exit.i.i.i.us.2.i, %sqlite3HashFindElem.exit.i.i.i.us.1.i
  %.us-phi.i = phi ptr [ %i.gr, %sqlite3HashFindElem.exit.i.i.i.us.2.i ], [ %i.hc, %sqlite3HashFindElem.exit.i.i.i.us.i ], [ %i.ft, %sqlite3HashFindElem.exit.i.i.i.us.1.i ], [ %i.jf, %sqlite3HashFindElem.exit.i.i.i.i ], [ %i.hy, %sqlite3HashFindElem.exit.i.i.i.1.i ], [ %i.iu, %sqlite3HashFindElem.exit.i.i.i.2.i ]
  %i.ji = getelementptr i8, ptr %.us-phi.i, i64 -40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ee, ptr noundef nonnull align 8 dereferenceable(40) %i.ji, i64 32, i1 false)
  %i.jj = getelementptr i8, ptr %i.ed, i64 -8
  store ptr null, ptr %i.jj, align 8, !tbaa !436
  br label %.thread51

.thread51:                                        ; preds = %bb.v, %.thread46, %bb.s, %bb.t, %sqlite3HashFindElem.exit.i.i.i.2.i, %sqlite3HashFindElem.exit.i.i.i.us.2.i, %sqlite3FindCollSeq.exit42, %bb.ac, %.thread54
  %.2 = phi ptr [ %i.ee, %.thread54 ], [ null, %bb.s ], [ null, %sqlite3HashFindElem.exit.i.i.i.2.i ], [ %i.ee, %bb.ac ], [ null, %sqlite3FindCollSeq.exit42 ], [ null, %sqlite3HashFindElem.exit.i.i.i.us.2.i ], [ null, %bb.t ], [ %.049, %.thread46 ], [ null, %bb.v ]
  ret ptr %.2
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @identPut(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #31 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !4      ; 6 uses
  %i.b = load i8, ptr %2, align 1, !tbaa !37      ; 4 uses
  %.not59 = icmp eq i8 %i.b, 0
  %.pre = tail call ptr @__ctype_b_loc() #46      ; 2 uses
  %i.c = load ptr, ptr %.pre, align 8, !tbaa !168 ; 2 uses
  br i1 %.not59, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.d = phi i8 [ %i.j, %bb.b ], [ %i.b, %bb.a ]  ; 2 uses
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !170
  %i.h = and i16 %i.g, 8
  %.not38 = icmp ne i16 %i.h, 0
  %.not39 = icmp eq i8 %i.d, 95
  %or.cond = or i1 %.not39, %.not38
  br i1 %or.cond, label %bb.b, label %.thread43

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %i.j = load i8, ptr %i.i, align 1, !tbaa !37    ; 2 uses
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1625

._crit_edge:                                      ; preds = %bb.b
  %i.k = trunc nuw i64 %indvars.iv.next to i32    ; 2 uses
  %i.l = load ptr, ptr %.pre, align 8, !tbaa !168
  %i.m = zext i8 %i.b to i64                      ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !170
  %i.p = and i16 %i.o, 2048
  %.not41 = icmp eq i16 %i.p, 0
  br i1 %.not41, label %bb.c, label %.thread43

._crit_edge.thread:                               ; preds = %bb.a
  %i.q = zext nneg i8 %i.b to i64
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !170
  %i.t = and i16 %i.s, 2048
  %.not4189 = icmp eq i16 %i.t, 0
  br i1 %.not4189, label %.thread45, label %.thread43

bb.c:                                             ; preds = %._crit_edge
  %i.u = icmp eq i64 %indvars.iv, 0
  br i1 %i.u, label %.thread45, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.m
  %i.w = load i8, ptr %i.v, align 1, !tbaa !37
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 2
  %i.z = getelementptr i8, ptr %2, i64 %indvars.iv
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !37
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !37
  %i.ae = zext i8 %i.ad to i32
  %i.af = mul nuw nsw i32 %i.ae, 3
  %i.ag = xor i32 %i.y, %i.af
  %i.ah = xor i32 %i.ag, %i.k
  %i.ai = urem i32 %i.ah, 127
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @keywordCode.aHash, i64 %i.aj
  %.0.in.in23.i.i = load i8, ptr %i.ak, align 1, !tbaa !37 ; 2 uses
  %.not24.i.i = icmp eq i8 %.0.in.in23.i.i, 0
  br i1 %.not24.i.i, label %.thread45, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.h
  %.0.in.in25.i.i = phi i8 [ %.0.in.in.i.i, %bb.h ], [ %.0.in.in23.i.i, %bb.d ]
  %.0.in.i.i = zext i8 %.0.in.in25.i.i to i64
  %.0.i.i = add nuw nsw i64 %.0.in.i.i, 4294967295
  %3 = and i64 %.0.i.i, 4294967295                ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr @keywordCode.aLen, i64 %3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !37
  %i.an = zext i8 %i.am to i64
  %i.ao = icmp eq i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr @keywordCode.aOffset, i64 %3
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !170
  %i.ar = zext i16 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @keywordCode.zText, i64 %i.ar
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.e
  %.in.i.i.i = phi i32 [ %i.at, %bb.g ], [ %i.k, %bb.e ] ; 2 uses
  %.015.i.i.i = phi ptr [ %i.be, %bb.g ], [ %2, %bb.e ] ; 3 uses
  %.01014.i.i.i = phi ptr [ %i.bd, %bb.g ], [ %i.as, %bb.e ] ; 2 uses
  %i.at = add nsw i32 %.in.i.i.i, -1
  %i.au = load i8, ptr %.01014.i.i.i, align 1, !tbaa !37 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i, label %sqlite3StrNICmp.exit.loopexit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !37  ; 2 uses
  %i.ay = load i8, ptr %.015.i.i.i, align 1, !tbaa !37
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !37  ; 2 uses
  %i.bc = icmp eq i8 %i.ax, %i.bb
  br i1 %i.bc, label %bb.g, label %split.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %.01014.i.i.i, i64 1
  %i.be = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 1
  %i.bf = icmp samesign ugt i32 %.in.i.i.i, 1
  br i1 %i.bf, label %.lr.ph.i.i.i, label %.thread43, !llvm.loop !585

split.i.i.i:                                      ; preds = %bb.f
  %i.bg = zext i8 %i.ax to i32
  br label %sqlite3StrNICmp.exit.i.i

sqlite3StrNICmp.exit.loopexit.i.i:                ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load i8, ptr %.015.i.i.i, align 1, !tbaa !37
  %.phi.trans.insert.i.i = zext i8 %.pre.i.i to i64
  %.phi.trans.insert34.i.i = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert.i.i
  %.pre35.i.i = load i8, ptr %.phi.trans.insert34.i.i, align 1, !tbaa !37
  br label %sqlite3StrNICmp.exit.i.i

sqlite3StrNICmp.exit.i.i:                         ; preds = %sqlite3StrNICmp.exit.loopexit.i.i, %split.i.i.i
  %i.bh = phi i8 [ %i.bb, %split.i.i.i ], [ %.pre35.i.i, %sqlite3StrNICmp.exit.loopexit.i.i ]
  %i.bi = phi i32 [ %i.bg, %split.i.i.i ], [ 0, %sqlite3StrNICmp.exit.loopexit.i.i ]
  %i.bj = zext i8 %i.bh to i32
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %.thread43, label %bb.h

bb.h:                                             ; preds = %sqlite3StrNICmp.exit.i.i, %.lr.ph.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr @keywordCode.aNext, i64 %3
  %.0.in.in.i.i = load i8, ptr %i.bl, align 1, !tbaa !37 ; 2 uses
  %.not.i.i = icmp eq i8 %.0.in.in.i.i, 0
  br i1 %.not.i.i, label %.thread45, label %.lr.ph.i.i, !llvm.loop !1278

.thread43:                                        ; preds = %.lr.ph, %sqlite3StrNICmp.exit.i.i, %bb.g, %._crit_edge.thread, %._crit_edge
  %i.bm = add nsw i32 %i.a, 1
  %i.bn = sext i32 %i.a to i64
  %i.bo = getelementptr inbounds i8, ptr %0, i64 %i.bn
  store i8 34, ptr %i.bo, align 1, !tbaa !37
  br label %.thread45

.thread45:                                        ; preds = %bb.h, %._crit_edge.thread, %bb.d, %bb.c, %.thread43
  %i.bp = phi i1 [ true, %.thread43 ], [ false, %bb.d ], [ false, %bb.c ], [ false, %._crit_edge.thread ], [ false, %bb.h ]
  %.0 = phi i32 [ %i.bm, %.thread43 ], [ %i.a, %bb.d ], [ %i.a, %bb.c ], [ %i.a, %._crit_edge.thread ], [ %i.a, %bb.h ] ; 2 uses
  %i.bq = load i8, ptr %2, align 1, !tbaa !37     ; 2 uses
  %.not4262 = icmp eq i8 %i.bq, 0
  br i1 %.not4262, label %._crit_edge66, label %.lr.ph65

.lr.ph65:                                         ; preds = %.thread45, %bb.j
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %bb.j ], [ 0, %.thread45 ] ; 2 uses
  %i.br = phi i8 [ %i.cc, %bb.j ], [ %i.bq, %.thread45 ]
  %.164 = phi i32 [ %.2, %bb.j ], [ %.0, %.thread45 ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv77
  %i.bt = add nsw i32 %.164, 1                    ; 2 uses
  %i.bu = sext i32 %.164 to i64
  %i.bv = getelementptr inbounds i8, ptr %0, i64 %i.bu
  store i8 %i.br, ptr %i.bv, align 1, !tbaa !37
  %i.bw = load i8, ptr %i.bs, align 1, !tbaa !37
  %i.bx = icmp eq i8 %i.bw, 34
  br i1 %i.bx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph65
  %i.by = add nsw i32 %.164, 2
  %i.bz = sext i32 %i.bt to i64
  %i.ca = getelementptr inbounds i8, ptr %0, i64 %i.bz
  store i8 34, ptr %i.ca, align 1, !tbaa !37
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph65, %bb.i
  %.2 = phi i32 [ %i.by, %bb.i ], [ %i.bt, %.lr.ph65 ] ; 2 uses
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next78
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !37  ; 2 uses
  %.not42 = icmp eq i8 %i.cc, 0
  br i1 %.not42, label %._crit_edge66, label %.lr.ph65, !llvm.loop !1626

._crit_edge66:                                    ; preds = %bb.j, %.thread45
  %.1.lcssa = phi i32 [ %.0, %.thread45 ], [ %.2, %bb.j ] ; 3 uses
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge66
  %i.cd = add nsw i32 %.1.lcssa, 1
  %i.ce = sext i32 %.1.lcssa to i64
  %i.cf = getelementptr inbounds i8, ptr %0, i64 %i.ce
  store i8 34, ptr %i.cf, align 1, !tbaa !37
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge66
  %.3 = phi i32 [ %i.cd, %bb.k ], [ %.1.lcssa, %._crit_edge66 ] ; 2 uses
  %i.cg = sext i32 %.3 to i64
  %i.ch = getelementptr inbounds i8, ptr %0, i64 %i.cg
  store i8 0, ptr %i.ch, align 1, !tbaa !37
  store i32 %.3, ptr %1, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 3) i32 @exprNodeIsConstant(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #14 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4      ; 2 uses
  %i.b = icmp eq i32 %i.a, 3
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !1335
  %i.e = and i16 %i.d, 1
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load i8, ptr %1, align 8, !tbaa !1311
  switch i8 %i.f, label %bb.f [
    i8 -108, label %bb.d
    i8 23, label %.sink.split
    i8 -107, label %.sink.split
    i8 112, label %.sink.split
    i8 -106, label %.sink.split
    i8 -105, label %.sink.split
    i8 110, label %.sink.split
    i8 17, label %.sink.split
    i8 64, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i32 %i.a, 2
  br i1 %i.g, label %bb.f, label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1210
  %.not9 = icmp eq ptr %i.i, null
  br i1 %.not9, label %bb.f, label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.d, %bb.b
  store i32 0, ptr %0, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c, %bb.e, %bb.d
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 2, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3SrcListLookup(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !1223
  %i.b = icmp sgt i16 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 34
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.023 = phi ptr [ %i.c, %.lr.ph ], [ %i.z, %bb.i ] ; 4 uses
  %.01322 = phi i32 [ 0, %.lr.ph ], [ %i.y, %bb.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %.023, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87   ; 3 uses
  %i.j = load ptr, ptr %.023, align 8, !tbaa !81  ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !244    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.m = load i8, ptr %i.l, align 8, !tbaa !182
  %.not.i16 = icmp eq i8 %i.m, 0
  br i1 %.not.i16, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.n = tail call fastcc i32 @sqlite3Init(ptr noundef nonnull %i.k, ptr noundef nonnull %i.d), !inline_history !1421 ; 2 uses
  %.not8.i = icmp eq i32 %i.n, 0
  br i1 %.not8.i, label %..thread_crit_edge, label %sqlite3ReadSchema.exit

..thread_crit_edge:                               ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8, !tbaa !244
  br label %.thread

sqlite3ReadSchema.exit:                           ; preds = %bb.c
  store i32 %i.n, ptr %i.e, align 8, !tbaa !251
  %i.o = load i32, ptr %i.f, align 8, !tbaa !252
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.f, align 8, !tbaa !252
  br label %sqlite3LocateTable.exit

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.q = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.k, %bb.b ]
  %i.r = tail call fastcc ptr @sqlite3FindTable(ptr noundef %i.q, ptr noundef %i.i, ptr noundef %i.j), !inline_history !253 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %sqlite3LocateTable.exit

bb.d:                                             ; preds = %.thread
  %.not18.i = icmp eq ptr %i.j, null
  br i1 %.not18.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.255, ptr noundef nonnull @.str.254, ptr noundef nonnull %i.j, ptr noundef %i.i), !inline_history !253
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.254, ptr noundef %i.i), !inline_history !253
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store i8 1, ptr %i.g, align 2, !tbaa !262
  br label %sqlite3LocateTable.exit

sqlite3LocateTable.exit:                          ; preds = %sqlite3ReadSchema.exit, %.thread, %bb.g
  %.0.i = phi ptr [ null, %sqlite3ReadSchema.exit ], [ null, %bb.g ], [ %i.r, %.thread ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.023, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1226
  tail call fastcc void @sqlite3DeleteTable(ptr noundef %i.u)
  store ptr %.0.i, ptr %i.t, align 8, !tbaa !1226
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %sqlite3LocateTable.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 56 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !385
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !385
  br label %bb.i

bb.i:                                             ; preds = %sqlite3LocateTable.exit, %bb.h
  %i.y = add nuw nsw i32 %.01322, 1               ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.023, i64 72
  %i.aa = load i16, ptr %1, align 8, !tbaa !1223
  %i.ab = sext i16 %i.aa to i32
  %i.ac = icmp slt i32 %i.y, %i.ab
end_hunk_4
