inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN13duckdb_brotli24CreatePreparedDictionaryEPNS_13MemoryManagerEPKhm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %2, 2097152
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 4194304
  br i1 %i.b, label %.lr.ph.1, label %._crit_edge

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.c = icmp ugt i64 %2, 8388608
  br i1 %i.c, label %.lr.ph.2, label %._crit_edge

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.d = icmp ugt i64 %2, 16777216
  br i1 %i.d, label %.lr.ph.3, label %._crit_edge

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.e = icmp ugt i64 %2, 33554432                ; 2 uses
  %spec.select = select i1 %i.e, i32 22, i32 21
  %spec.select56 = select i1 %i.e, i32 12, i32 11
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.3, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %bb.a
  %.014.lcssa = phi i32 [ 7, %bb.a ], [ 8, %.lr.ph ], [ 9, %.lr.ph.1 ], [ 10, %.lr.ph.2 ], [ %spec.select56, %.lr.ph.3 ] ; 5 uses
  %.013.lcssa = phi i32 [ 17, %bb.a ], [ 18, %.lr.ph ], [ 19, %.lr.ph.1 ], [ 20, %.lr.ph.2 ], [ %spec.select, %.lr.ph.3 ] ; 6 uses
  %3 = shl nuw i32 1, %.014.lcssa                 ; 2 uses
  %i.f = shl nuw nsw i32 1, %.013.lcssa
  %i.g = sub nuw nsw i32 64, %.013.lcssa
  %i.h = add i32 %3, -1
  %i.i = zext nneg i32 %.014.lcssa to i64         ; 2 uses
  %4 = shl i64 4, %i.i
  %i.j = shl i64 8, %i.i
  %i.k = zext nneg i32 %.013.lcssa to i64         ; 2 uses
  %5 = shl nuw nsw i64 2, %i.k                    ; 2 uses
  %6 = shl nuw nsw i64 4, %i.k
  %i.l = shl i64 %2, 2
  %7 = add i64 %i.j, %i.l
  %8 = add i64 %7, %5
  %9 = add i64 %8, %6                             ; 2 uses
  %i.m = icmp ugt i32 %.014.lcssa, %.013.lcssa
  %i.n = sub nuw nsw i32 %.013.lcssa, %.014.lcssa
  %i.o = icmp samesign ugt i32 %i.n, 15
  %or.cond199.i = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond199.i, label %_ZL34CreatePreparedDictionaryWithParamsPN13duckdb_brotli13MemoryManagerEPKhmjjjt.exit, label %10

10:                                               ; preds = %._crit_edge
  %.not.i = icmp eq i64 %9, 0
  br i1 %.not.i, label %bb.b, label %11

11:                                               ; preds = %10
  %12 = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %9)
  br label %bb.b

bb.b:                                             ; preds = %11, %10
  %13 = phi ptr [ %12, %11 ], [ null, %10 ]       ; 6 uses
  %i.p = zext i32 %3 to i64                       ; 7 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.p ; 5 uses
  %i.s = zext nneg i32 %i.f to i64                ; 7 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.s ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.s ; 6 uses
  %i.v = shl nuw nsw i64 %i.s, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.r, i8 0, i64 %i.v, i1 false)
  %i.w = icmp ugt i64 %2, 7
  br i1 %i.w, label %.lr.ph.i, label %.preheader214.i.preheader

.lr.ph.i:                                         ; preds = %bb.b
  %i.x = zext nneg i32 %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.0179216.i = phi i32 [ 0, %.lr.ph.i ], [ %i.an, %bb.e ] ; 4 uses
  %i.y = zext i32 %.0179216.i to i64              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %.0.copyload.i.i = load i64, ptr %i.z, align 1
  %i.aa = and i64 %.0.copyload.i.i, 1099511627775
  %i.ab = mul i64 %i.aa, 2297779722762296275
  %i.ac = lshr i64 %i.ab, %i.x
  %i.ad = and i64 %i.ac, 4294967295               ; 3 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.ad ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !7  ; 2 uses
  %i.ag = icmp eq i16 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ad
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aj = phi i32 [ %i.ai, %bb.d ], [ -1, %bb.c ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.y
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ad
  store i32 %.0179216.i, ptr %i.al, align 4, !tbaa !3
  %i.am = add i16 %i.af, 1
  %spec.select.i = tail call i16 @llvm.umin.i16(i16 %i.am, i16 32)
  store i16 %spec.select.i, ptr %i.ae, align 2, !tbaa !7
  %i.an = add i32 %.0179216.i, 1
  %i.ao = add i32 %.0179216.i, 8
  %i.ap = zext i32 %i.ao to i64
  %i.aq = icmp ugt i64 %2, %i.ap
  br i1 %i.aq, label %bb.c, label %.preheader214.i.preheader, !llvm.loop !9

.preheader214.i.preheader:                        ; preds = %bb.e, %bb.b
  br label %.preheader214.i

.preheader214.i:                                  ; preds = %.preheader214.i.preheader, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %.preheader214.i.preheader ] ; 5 uses
  %.0176228.i = phi i32 [ %i.bc, %._crit_edge.i ], [ 0, %.preheader214.i.preheader ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.as = icmp samesign ult i64 %indvars.iv.i, %i.s
  br i1 %i.as, label %.lr.ph219.us.i, label %._crit_edge.i

.lr.ph219.us.i:                                   ; preds = %.preheader214.i, %bb.h
  %storemerge223.us.i = phi i32 [ %i.ba, %bb.h ], [ 32, %.preheader214.i ] ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph219.us.i
  %.0168218.us.i = phi i32 [ 0, %.lr.ph219.us.i ], [ %i.ax, %bb.g ] ; 2 uses
  %.0169217.us.i = phi i64 [ %indvars.iv.i, %.lr.ph219.us.i ], [ %i.ay, %bb.g ] ; 2 uses
  %i.at = icmp samesign ugt i32 %.0168218.us.i, 65534
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %.0169217.us.i
  %i.av = load i16, ptr %i.au, align 2, !tbaa !7
  %i.aw = zext i16 %i.av to i32
  %spec.select195.us.i = tail call i32 @llvm.umin.i32(i32 %storemerge223.us.i, i32 %i.aw)
  %i.ax = add nuw nsw i32 %spec.select195.us.i, %.0168218.us.i ; 2 uses
  %i.ay = add nuw nsw i64 %.0169217.us.i, %i.p    ; 2 uses
  %i.az = icmp samesign ult i64 %i.ay, %i.s
  br i1 %i.az, label %bb.f, label %._crit_edge.i, !llvm.loop !11

bb.h:                                             ; preds = %bb.f
  %i.ba = add i32 %storemerge223.us.i, -1
  br label %.lr.ph219.us.i

._crit_edge.i:                                    ; preds = %bb.g, %.preheader214.i
  %storemerge.i = phi i32 [ 32, %.preheader214.i ], [ %storemerge223.us.i, %bb.g ]
  %.0168.lcssa.i = phi i32 [ 0, %.preheader214.i ], [ %i.ax, %bb.g ] ; 2 uses
  store i32 %storemerge.i, ptr %i.ar, align 4, !tbaa !3
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv.i
  store i32 %.0168.lcssa.i, ptr %i.bb, align 4, !tbaa !3
  %i.bc = add i32 %.0168.lcssa.i, %.0176228.i     ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.p
  br i1 %exitcond.not.i, label %.new, label %.preheader214.i, !llvm.loop !12

.new:                                             ; preds = %._crit_edge.i
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 2
  %i.bf = add nuw nsw i64 %4, 32
  %i.bg = add nuw i64 %i.bf, %5
  %i.bh = add i64 %i.bg, %i.be                    ; 2 uses
  %.not193.i = icmp ne i64 %i.bh, 0
  tail call void @llvm.assume(i1 %.not193.i)
  %i.bi = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.bh) ; 8 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 4 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.p ; 3 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.s ; 7 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bd
  store i32 -558043677, ptr %i.bi, align 4, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i32 %i.bc, ptr %i.bn, align 4, !tbaa !15
  %i.bo = trunc nuw i64 %2 to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 40, ptr %i.bq, align 4, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i32 %.013.lcssa, ptr %i.br, align 4, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  store i32 %.014.lcssa, ptr %i.bs, align 4, !tbaa !19
  store ptr %1, ptr %i.bm, align 1
  %xtraiter = and i64 %i.p, 1
  %unroll_iter = and i64 %i.p, 4294967294
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.new
  %indvars.iv238.i = phi i64 [ 0, %.new ], [ %indvars.iv.next239.i.1, %bb.i ] ; 4 uses
  %.3230.i = phi i32 [ 0, %.new ], [ %i.ca, %bb.i ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv238.i
  store i32 %.3230.i, ptr %i.bt, align 4, !tbaa !3
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv238.i ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = add i32 %i.bv, %.3230.i                 ; 2 uses
  store i32 0, ptr %i.bu, align 4, !tbaa !3
  %indvars.iv.next239.i = or disjoint i64 %indvars.iv238.i, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.next239.i
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !3
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv.next239.i ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = add i32 %i.bz, %i.bw
  store i32 0, ptr %i.by, align 4, !tbaa !3
  %indvars.iv.next239.i.1 = add nuw nsw i64 %indvars.iv238.i, 2
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.preheader.unr-lcssa, label %bb.i, !llvm.loop !20

.preheader.i.preheader.unr-lcssa:                 ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod.not)
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader.unr-lcssa, %bb.n
  %indvars.iv244.i = phi i64 [ %indvars.iv.next245.i, %bb.n ], [ 0, %.preheader.i.preheader.unr-lcssa ] ; 6 uses
  %i.cb = trunc nuw i64 %indvars.iv244.i to i32
  %i.cc = and i32 %i.h, %i.cb
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv244.i
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !7
  %i.cf = zext i16 %i.ce to i32
  %i.cg = zext nneg i32 %i.cc to i64              ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %spec.select197.i = tail call i32 @llvm.umin.i32(i32 %i.ci, i32 %i.cf) ; 4 uses
  %i.cj = icmp eq i32 %spec.select197.i, 0
  br i1 %i.cj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.preheader.i
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv244.i
  store i16 -1, ptr %i.ck, align 2, !tbaa !7
  br label %bb.n

bb.k:                                             ; preds = %.preheader.i
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %i.cg ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3  ; 3 uses
  %i.cn = zext i32 %i.cm to i64
  %i.co = trunc i32 %i.cm to i16
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %indvars.iv244.i
  store i16 %i.co, ptr %i.cp, align 2, !tbaa !7
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.cg
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = zext i32 %i.cr to i64
  %i.ct = add nuw nsw i64 %i.cs, %i.cn            ; 2 uses
  %i.cu = add i32 %i.cm, %spec.select197.i
  store i32 %i.cu, ptr %i.cl, align 4, !tbaa !3
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv244.i ; 2 uses
  %i.cw = zext nneg i32 %spec.select197.i to i64  ; 2 uses
  %xtraiter44 = and i64 %i.cw, 3                  ; 3 uses
  %i.cx = icmp samesign ult i32 %spec.select197.i, 4
  br i1 %i.cx, label %.epil.preheader43, label %.new42

.new42:                                           ; preds = %bb.k
  %unroll_iter49 = and i64 %i.cw, 65532
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new42
  %.0233.i = phi i64 [ %i.ct, %.new42 ], [ %i.dj, %bb.l ] ; 5 uses
  %.0164.in231.i = phi ptr [ %i.cv, %.new42 ], [ %i.dn, %bb.l ]
  %niter50 = phi i64 [ 0, %.new42 ], [ %niter50.next.3, %bb.l ]
  %.0164.i = load i32, ptr %.0164.in231.i, align 4, !tbaa !3 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.0233.i
  store i32 %.0164.i, ptr %i.cy, align 4, !tbaa !3
  %i.cz = zext i32 %.0164.i to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.cz
  %.0164.i.1 = load i32, ptr %i.da, align 4, !tbaa !3 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.0233.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i32 %.0164.i.1, ptr %i.dc, align 4, !tbaa !3
  %i.dd = zext i32 %.0164.i.1 to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.dd
  %.0164.i.2 = load i32, ptr %i.de, align 4, !tbaa !3 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.0233.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i32 %.0164.i.2, ptr %i.dg, align 4, !tbaa !3
  %i.dh = zext i32 %.0164.i.2 to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.dh
  %.0164.i.3 = load i32, ptr %i.di, align 4, !tbaa !3 ; 3 uses
  %i.dj = add nuw nsw i64 %.0233.i, 4             ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.0233.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 %.0164.i.3, ptr %i.dl, align 4, !tbaa !3
  %i.dm = zext i32 %.0164.i.3 to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.dm ; 2 uses
  %niter50.next.3 = add i64 %niter50, 4           ; 2 uses
  %niter50.ncmp.3 = icmp eq i64 %niter50.next.3, %unroll_iter49
  br i1 %niter50.ncmp.3, label %.unr-lcssa, label %bb.l, !llvm.loop !21

.unr-lcssa:                                       ; preds = %bb.l
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.epilog-lcssa, label %.epil.preheader43

.epil.preheader43:                                ; preds = %.unr-lcssa, %bb.k
  %.0233.i.epil.init = phi i64 [ %i.ct, %bb.k ], [ %i.dj, %.unr-lcssa ]
  %.0164.in231.i.epil.init = phi ptr [ %i.cv, %bb.k ], [ %i.dn, %.unr-lcssa ]
  %lcmp.mod48 = icmp ne i64 %xtraiter44, 0
  tail call void @llvm.assume(i1 %lcmp.mod48)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader43
  %.0233.i.epil = phi i64 [ %.0233.i.epil.init, %.epil.preheader43 ], [ %i.do, %bb.m ] ; 2 uses
  %.0164.in231.i.epil = phi ptr [ %.0164.in231.i.epil.init, %.epil.preheader43 ], [ %i.dr, %bb.m ]
  %epil.iter = phi i64 [ 0, %.epil.preheader43 ], [ %epil.iter.next, %bb.m ]
  %.0164.i.epil = load i32, ptr %.0164.in231.i.epil, align 4, !tbaa !3 ; 3 uses
  %i.do = add nuw nsw i64 %.0233.i.epil, 1        ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.0233.i.epil
  store i32 %.0164.i.epil, ptr %i.dp, align 4, !tbaa !3
  %i.dq = zext i32 %.0164.i.epil to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.dq
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter44
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.m, !llvm.loop !22

.epilog-lcssa:                                    ; preds = %bb.m, %.unr-lcssa
  %.0164.i.lcssa = phi i32 [ %.0164.i.3, %.unr-lcssa ], [ %.0164.i.epil, %bb.m ]
  %.lcssa = phi i64 [ %i.dj, %.unr-lcssa ], [ %i.do, %bb.m ]
  %i.ds = getelementptr [4 x i8], ptr %i.bl, i64 %.lcssa
  %i.dt = getelementptr i8, ptr %i.ds, i64 -4
  %i.du = or i32 %.0164.i.lcssa, -2147483648
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !3
  br label %bb.n

bb.n:                                             ; preds = %.epilog-lcssa, %bb.j
  %indvars.iv.next245.i = add nuw nsw i64 %indvars.iv244.i, 1 ; 2 uses
  %exitcond249.not.i = icmp eq i64 %indvars.iv.next245.i, %i.s
  br i1 %exitcond249.not.i, label %bb.o, label %.preheader.i, !llvm.loop !24

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef nonnull %13)
  br label %_ZL34CreatePreparedDictionaryWithParamsPN13duckdb_brotli13MemoryManagerEPKhmjjjt.exit

_ZL34CreatePreparedDictionaryWithParamsPN13duckdb_brotli13MemoryManagerEPKhmjjjt.exit: ; preds = %._crit_edge, %bb.o
  %.0166.i = phi ptr [ %i.bi, %bb.o ], [ null, %._crit_edge ]
  ret ptr %.0166.i
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN13duckdb_brotli25DestroyPreparedDictionaryEPNS_13MemoryManagerEPNS_18PreparedDictionaryE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN13duckdb_brotli24AttachPreparedDictionaryEPNS_18CompoundDictionaryEPKNS_18PreparedDictionaryE(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !25     ; 4 uses
  %i.b = icmp eq i64 %i.a, 15
  %.not = icmp eq ptr %1, null
  %or.cond = or i1 %.not, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !16
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !28
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.a
  store ptr %1, ptr %i.j, align 8, !tbaa !29
  %i.k = getelementptr i8, ptr %0, i64 280
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.a
  store i64 %i.h, ptr %i.l, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !19
  %i.p = shl nuw i32 1, %i.o
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i32, ptr %i.s, align 4, !tbaa !18
  %i.u = shl nuw i32 1, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !15
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %1, align 4, !tbaa !13
  %i.ac = icmp eq i32 %i.ab, -558043680
  br i1 %i.ac, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i = load ptr, ptr %i.aa, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0.copyload.i.sink = phi ptr [ %.0.copyload.i, %bb.c ], [ %i.aa, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.a
  store ptr %.0.copyload.i.sink, ptr %i.ae, align 8, !tbaa !33
  %i.af = load i64, ptr %0, align 8, !tbaa !25
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %0, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.d ]
  ret i32 %.0
}

declare noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = !{!14, !4, i64 0}
!14 = !{!"_ZTSN13duckdb_brotli18PreparedDictionaryE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20}
!15 = !{!14, !4, i64 4}
!16 = !{!14, !4, i64 8}
!17 = !{!14, !4, i64 12}
!18 = !{!14, !4, i64 16}
!19 = !{!14, !4, i64 20}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !10}
!25 = !{!26, !27, i64 0}
!26 = !{!"_ZTSN13duckdb_brotli18CompoundDictionaryE", !27, i64 0, !27, i64 8, !5, i64 16, !5, i64 144, !5, i64 272, !27, i64 400, !5, i64 408}
!27 = !{!"long", !5, i64 0}
!28 = !{!26, !27, i64 8}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 _ZTSN13duckdb_brotli18PreparedDictionaryE", !31, i64 0}
!31 = !{!"any pointer", !5, i64 0}
!32 = !{!27, !27, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 omnipotent char", !31, i64 0}
end_hunk_0
