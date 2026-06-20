inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
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
  %spec.select55 = select i1 %i.e, i32 12, i32 11
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.3, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %bb.a
  %.014.lcssa = phi i32 [ 7, %bb.a ], [ 8, %.lr.ph ], [ 9, %.lr.ph.1 ], [ 10, %.lr.ph.2 ], [ %spec.select55, %.lr.ph.3 ] ; 5 uses
  %.013.lcssa = phi i32 [ 17, %bb.a ], [ 18, %.lr.ph ], [ 19, %.lr.ph.1 ], [ 20, %.lr.ph.2 ], [ %spec.select, %.lr.ph.3 ] ; 6 uses
  %i.f = shl nuw i32 1, %.014.lcssa               ; 2 uses
  %i.g = sub nuw nsw i32 64, %.013.lcssa
  %i.h = add i32 %i.f, -1
  %i.i = zext nneg i32 %.014.lcssa to i64         ; 2 uses
  %i.j = shl i64 4, %i.i
  %i.k = zext nneg i32 %.013.lcssa to i64         ; 2 uses
  %i.l = shl nuw nsw i64 2, %i.k                  ; 2 uses
  %i.m = icmp ugt i32 %.014.lcssa, %.013.lcssa
  %i.n = sub nuw nsw i32 %.013.lcssa, %.014.lcssa
  %i.o = icmp samesign ugt i32 %i.n, 15
  %or.cond199.i = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond199.i, label %_ZL34CreatePreparedDictionaryWithParamsPN13duckdb_brotli13MemoryManagerEPKhmjjjt.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.p = shl nuw nsw i32 1, %.013.lcssa
  %i.q = shl nuw nsw i64 8, %i.i
  %i.r = shl nuw nsw i64 4, %i.k
  %i.s = shl i64 %2, 2
  %i.t = add i64 %i.q, %i.s
  %i.u = add i64 %i.t, %i.l
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %.not.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.w = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.v) ; 6 uses
  %i.x = zext i32 %i.f to i64                     ; 7 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.x ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.x ; 5 uses
  %i.aa = zext nneg i32 %i.p to i64               ; 7 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.aa ; 4 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.aa ; 6 uses
  %i.ad = shl nuw nsw i64 %i.aa, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.z, i8 0, i64 %i.ad, i1 false)
  %i.ae = icmp ugt i64 %2, 7
  br i1 %i.ae, label %.lr.ph.i, label %.preheader214.i.preheader

.lr.ph.i:                                         ; preds = %bb.b
  %i.af = zext nneg i32 %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.0179216.i = phi i32 [ 0, %.lr.ph.i ], [ %i.av, %bb.e ] ; 4 uses
  %i.ag = zext i32 %.0179216.i to i64             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %.0.copyload.i.i = load i64, ptr %i.ah, align 1
  %i.ai = and i64 %.0.copyload.i.i, 1099511627775
  %i.aj = mul i64 %i.ai, 2297779722762296275
  %i.ak = lshr i64 %i.aj, %i.af
  %i.al = and i64 %i.ak, 4294967295               ; 3 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.al ; 2 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !7  ; 2 uses
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.al
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ar = phi i32 [ %i.aq, %bb.d ], [ -1, %bb.c ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ag
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.al
  store i32 %.0179216.i, ptr %i.at, align 4, !tbaa !3
  %i.au = add i16 %i.an, 1
  %spec.select.i = tail call i16 @llvm.umin.i16(i16 %i.au, i16 32)
  store i16 %spec.select.i, ptr %i.am, align 2, !tbaa !7
  %i.av = add i32 %.0179216.i, 1
  %i.aw = add i32 %.0179216.i, 8
  %i.ax = zext i32 %i.aw to i64
  %i.ay = icmp ugt i64 %2, %i.ax
  br i1 %i.ay, label %bb.c, label %.preheader214.i.preheader, !llvm.loop !9

.preheader214.i.preheader:                        ; preds = %bb.e, %bb.b
  br label %.preheader214.i

.preheader214.i:                                  ; preds = %.preheader214.i.preheader, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %.preheader214.i.preheader ] ; 5 uses
  %.0176228.i = phi i32 [ %i.bk, %._crit_edge.i ], [ 0, %.preheader214.i.preheader ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.ba = icmp samesign ult i64 %indvars.iv.i, %i.aa
  br i1 %i.ba, label %.lr.ph219.us.i, label %._crit_edge.i

.lr.ph219.us.i:                                   ; preds = %.preheader214.i, %bb.h
  %storemerge223.us.i = phi i32 [ %i.bi, %bb.h ], [ 32, %.preheader214.i ] ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph219.us.i
  %.0168218.us.i = phi i32 [ 0, %.lr.ph219.us.i ], [ %i.bf, %bb.g ] ; 2 uses
  %.0169217.us.i = phi i64 [ %indvars.iv.i, %.lr.ph219.us.i ], [ %i.bg, %bb.g ] ; 2 uses
  %i.bb = icmp samesign ugt i32 %.0168218.us.i, 65534
  br i1 %i.bb, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %.0169217.us.i
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !7
  %i.be = zext i16 %i.bd to i32
  %spec.select195.us.i = tail call i32 @llvm.umin.i32(i32 %storemerge223.us.i, i32 %i.be)
  %i.bf = add nuw nsw i32 %spec.select195.us.i, %.0168218.us.i ; 2 uses
  %i.bg = add nuw nsw i64 %.0169217.us.i, %i.x    ; 2 uses
  %i.bh = icmp samesign ult i64 %i.bg, %i.aa
  br i1 %i.bh, label %bb.f, label %._crit_edge.i, !llvm.loop !11

bb.h:                                             ; preds = %bb.f
  %i.bi = add i32 %storemerge223.us.i, -1
  br label %.lr.ph219.us.i

._crit_edge.i:                                    ; preds = %bb.g, %.preheader214.i
  %storemerge.i = phi i32 [ 32, %.preheader214.i ], [ %storemerge223.us.i, %bb.g ]
  %.0168.lcssa.i = phi i32 [ 0, %.preheader214.i ], [ %i.bf, %bb.g ] ; 2 uses
  store i32 %storemerge.i, ptr %i.az, align 4, !tbaa !3
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i
  store i32 %.0168.lcssa.i, ptr %i.bj, align 4, !tbaa !3
  %i.bk = add i32 %.0168.lcssa.i, %.0176228.i     ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.x
  br i1 %exitcond.not.i, label %.new, label %.preheader214.i, !llvm.loop !12

.new:                                             ; preds = %._crit_edge.i
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 2
  %i.bn = add nuw nsw i64 %i.j, 32
  %i.bo = add nuw i64 %i.bn, %i.l
  %i.bp = add i64 %i.bo, %i.bm                    ; 2 uses
  %.not193.i = icmp ne i64 %i.bp, 0
  tail call void @llvm.assume(i1 %.not193.i)
  %i.bq = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.bp) ; 8 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 4 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.x ; 3 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.aa ; 7 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bl
  store i32 -558043677, ptr %i.bq, align 4, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 %i.bk, ptr %i.bv, align 4, !tbaa !15
  %i.bw = trunc nuw i64 %2 to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 40, ptr %i.by, align 4, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i32 %.013.lcssa, ptr %i.bz, align 4, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 20
  store i32 %.014.lcssa, ptr %i.ca, align 4, !tbaa !19
  store ptr %1, ptr %i.bu, align 1
  %xtraiter = and i64 %i.x, 1
  %unroll_iter = and i64 %i.x, 4294967294
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.new
  %indvars.iv238.i = phi i64 [ 0, %.new ], [ %indvars.iv.next239.i.1, %bb.i ] ; 4 uses
  %.3230.i = phi i32 [ 0, %.new ], [ %i.ci, %bb.i ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv238.i
  store i32 %.3230.i, ptr %i.cb, align 4, !tbaa !3
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv238.i ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = add i32 %i.cd, %.3230.i                 ; 2 uses
  store i32 0, ptr %i.cc, align 4, !tbaa !3
  %indvars.iv.next239.i = or disjoint i64 %indvars.iv238.i, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next239.i
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !3
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next239.i ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.ci = add i32 %i.ch, %i.ce
  store i32 0, ptr %i.cg, align 4, !tbaa !3
  %indvars.iv.next239.i.1 = add nuw nsw i64 %indvars.iv238.i, 2
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.preheader.unr-lcssa, label %bb.i, !llvm.loop !20

.preheader.i.preheader.unr-lcssa:                 ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod.not)
  %3 = zext nneg i32 %i.h to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.n, %.preheader.i.preheader.unr-lcssa
  %indvars.iv244.i = phi i64 [ 0, %.preheader.i.preheader.unr-lcssa ], [ %indvars.iv.next245.i, %bb.n ] ; 6 uses
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %indvars.iv244.i
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !7
  %i.cl = zext i16 %i.ck to i32
  %4 = and i64 %indvars.iv244.i, %3               ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %spec.select197.i = tail call i32 @llvm.umin.i32(i32 %i.cn, i32 %i.cl) ; 4 uses
  %i.co = icmp eq i32 %spec.select197.i, 0
  br i1 %i.co, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.preheader.i
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %indvars.iv244.i
  store i16 -1, ptr %i.cp, align 2, !tbaa !7
  br label %bb.n

bb.k:                                             ; preds = %.preheader.i
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %4 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3  ; 3 uses
  %i.cs = zext i32 %i.cr to i64
  %i.ct = trunc i32 %i.cr to i16
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %indvars.iv244.i
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !7
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = zext i32 %i.cw to i64
  %i.cy = add nuw nsw i64 %i.cx, %i.cs            ; 2 uses
  %i.cz = add i32 %i.cr, %spec.select197.i
  store i32 %i.cz, ptr %i.cq, align 4, !tbaa !3
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv244.i ; 2 uses
  %i.db = zext nneg i32 %spec.select197.i to i64  ; 2 uses
  %xtraiter43 = and i64 %i.db, 3                  ; 3 uses
  %i.dc = icmp samesign ult i32 %spec.select197.i, 4
  br i1 %i.dc, label %.epil.preheader42, label %.new41

.new41:                                           ; preds = %bb.k
  %unroll_iter48 = and i64 %i.db, 65532
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new41
  %.0233.i = phi i64 [ %i.cy, %.new41 ], [ %i.do, %bb.l ] ; 5 uses
  %.0164.in231.i = phi ptr [ %i.da, %.new41 ], [ %i.ds, %bb.l ]
  %niter49 = phi i64 [ 0, %.new41 ], [ %niter49.next.3, %bb.l ]
  %.0164.i = load i32, ptr %.0164.in231.i, align 4, !tbaa !3 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.0233.i
  store i32 %.0164.i, ptr %i.dd, align 4, !tbaa !3
  %i.de = zext i32 %.0164.i to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.de
  %.0164.i.1 = load i32, ptr %i.df, align 4, !tbaa !3 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.0233.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store i32 %.0164.i.1, ptr %i.dh, align 4, !tbaa !3
  %i.di = zext i32 %.0164.i.1 to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.di
  %.0164.i.2 = load i32, ptr %i.dj, align 4, !tbaa !3 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.0233.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i32 %.0164.i.2, ptr %i.dl, align 4, !tbaa !3
  %i.dm = zext i32 %.0164.i.2 to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.dm
  %.0164.i.3 = load i32, ptr %i.dn, align 4, !tbaa !3 ; 3 uses
  %i.do = add nuw nsw i64 %.0233.i, 4             ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.0233.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  store i32 %.0164.i.3, ptr %i.dq, align 4, !tbaa !3
  %i.dr = zext i32 %.0164.i.3 to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.dr ; 2 uses
  %niter49.next.3 = add i64 %niter49, 4           ; 2 uses
  %niter49.ncmp.3 = icmp eq i64 %niter49.next.3, %unroll_iter48
  br i1 %niter49.ncmp.3, label %.unr-lcssa, label %bb.l, !llvm.loop !21

.unr-lcssa:                                       ; preds = %bb.l
  %lcmp.mod44.not = icmp eq i64 %xtraiter43, 0
  br i1 %lcmp.mod44.not, label %.epilog-lcssa, label %.epil.preheader42

.epil.preheader42:                                ; preds = %.unr-lcssa, %bb.k
  %.0233.i.epil.init = phi i64 [ %i.cy, %bb.k ], [ %i.do, %.unr-lcssa ]
  %.0164.in231.i.epil.init = phi ptr [ %i.da, %bb.k ], [ %i.ds, %.unr-lcssa ]
  %lcmp.mod47 = icmp ne i64 %xtraiter43, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader42
  %.0233.i.epil = phi i64 [ %.0233.i.epil.init, %.epil.preheader42 ], [ %i.dt, %bb.m ] ; 2 uses
  %.0164.in231.i.epil = phi ptr [ %.0164.in231.i.epil.init, %.epil.preheader42 ], [ %i.dw, %bb.m ]
  %epil.iter = phi i64 [ 0, %.epil.preheader42 ], [ %epil.iter.next, %bb.m ]
  %.0164.i.epil = load i32, ptr %.0164.in231.i.epil, align 4, !tbaa !3 ; 3 uses
  %i.dt = add nuw nsw i64 %.0233.i.epil, 1        ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.0233.i.epil
  store i32 %.0164.i.epil, ptr %i.du, align 4, !tbaa !3
  %i.dv = zext i32 %.0164.i.epil to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.dv
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter43
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.m, !llvm.loop !22

.epilog-lcssa:                                    ; preds = %bb.m, %.unr-lcssa
  %.0164.i.lcssa = phi i32 [ %.0164.i.3, %.unr-lcssa ], [ %.0164.i.epil, %bb.m ]
  %.lcssa = phi i64 [ %i.do, %.unr-lcssa ], [ %i.dt, %bb.m ]
  %i.dx = getelementptr [4 x i8], ptr %i.bt, i64 %.lcssa
  %i.dy = getelementptr i8, ptr %i.dx, i64 -4
  %i.dz = or i32 %.0164.i.lcssa, -2147483648
  store i32 %i.dz, ptr %i.dy, align 4, !tbaa !3
  br label %bb.n

bb.n:                                             ; preds = %.epilog-lcssa, %bb.j
  %indvars.iv.next245.i = add nuw nsw i64 %indvars.iv244.i, 1 ; 2 uses
  %exitcond249.not.i = icmp eq i64 %indvars.iv.next245.i, %i.aa
  br i1 %exitcond249.not.i, label %bb.o, label %.preheader.i, !llvm.loop !24

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef nonnull %i.w)
  br label %_ZL34CreatePreparedDictionaryWithParamsPN13duckdb_brotli13MemoryManagerEPKhmjjjt.exit

_ZL34CreatePreparedDictionaryWithParamsPN13duckdb_brotli13MemoryManagerEPKhmjjjt.exit: ; preds = %._crit_edge, %bb.o
  %.0166.i = phi ptr [ %i.bq, %bb.o ], [ null, %._crit_edge ]
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
define hidden noundef range(i32 0, 2) i32 @_ZN13duckdb_brotli24AttachPreparedDictionaryEPNS_18CompoundDictionaryEPKNS_18PreparedDictionaryE(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
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
end_hunk_0
