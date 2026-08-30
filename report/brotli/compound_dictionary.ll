Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/compound_dictionary?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden noundef ptr @CreatePreparedDictionary(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
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
  %.014.lcssa = phi i32 [ 17, %bb.a ], [ 18, %.lr.ph ], [ 19, %.lr.ph.1 ], [ 20, %.lr.ph.2 ], [ %spec.select, %.lr.ph.3 ] ; 5 uses
  %.013.lcssa = phi i32 [ 7, %bb.a ], [ 8, %.lr.ph ], [ 9, %.lr.ph.1 ], [ 10, %.lr.ph.2 ], [ %spec.select55, %.lr.ph.3 ] ; 4 uses
  %i.f = shl nuw i32 1, %.013.lcssa               ; 2 uses
  %i.g = sub nuw nsw i32 64, %.014.lcssa
  %i.h = add i32 %i.f, -1
  %i.i = zext nneg i32 %.013.lcssa to i64         ; 2 uses
  %i.j = shl i64 4, %i.i
  %i.k = zext nneg i32 %.014.lcssa to i64         ; 2 uses
  %i.l = shl nuw nsw i64 2, %i.k                  ; 2 uses
  %i.m = sub nuw nsw i32 %.014.lcssa, %.013.lcssa
  %i.n = icmp samesign ugt i32 %i.m, 15
  br i1 %i.n, label %CreatePreparedDictionaryWithParams.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.o = shl nuw nsw i32 1, %.014.lcssa
  %i.p = shl nuw nsw i64 8, %i.i
  %i.q = shl nuw nsw i64 4, %i.k
  %i.r = shl i64 %2, 2
  %i.s = add i64 %i.l, %i.r
  %i.t = add i64 %i.s, %i.q
  %i.u = add i64 %i.t, %i.p                       ; 2 uses
  %.not.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.v = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.u) #6 ; 6 uses
  %i.w = zext i32 %i.f to i64                     ; 7 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.w ; 5 uses
  %i.z = zext nneg i32 %i.o to i64                ; 7 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.z ; 6 uses
  %i.ac = shl nuw nsw i64 %i.z, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.y, i8 0, i64 %i.ac, i1 false)
  %i.ad = icmp ugt i64 %2, 7
  br i1 %i.ad, label %.lr.ph.i, label %.preheader213.i.preheader

.lr.ph.i:                                         ; preds = %bb.b
  %i.ae = zext nneg i32 %i.g to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %.0179215.i = phi i32 [ 0, %.lr.ph.i ], [ %i.au, %bb.e ] ; 4 uses
  %i.af = zext i32 %.0179215.i to i64             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af
  %.0.copyload.i.i = load i64, ptr %i.ag, align 1
  %i.ah = and i64 %.0.copyload.i.i, 1099511627775
  %i.ai = mul i64 %i.ah, 2297779722762296275
  %i.aj = lshr i64 %i.ai, %i.ae
  %i.ak = and i64 %i.aj, 4294967295               ; 3 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.ak ; 2 uses
  %i.am = load i16, ptr %i.al, align 2, !tbaa !8  ; 2 uses
  %i.an = icmp eq i16 %i.am, 0
  br i1 %i.an, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ak
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aq = phi i32 [ %i.ap, %bb.d ], [ -1, %bb.c ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.af
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !10
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ak
  store i32 %.0179215.i, ptr %i.as, align 4, !tbaa !10
  %i.at = add i16 %i.am, 1
  %spec.select.i = tail call i16 @llvm.umin.i16(i16 %i.at, i16 32)
  store i16 %spec.select.i, ptr %i.al, align 2, !tbaa !8
  %i.au = add i32 %.0179215.i, 1
  %i.av = add i32 %.0179215.i, 8
  %i.aw = zext i32 %i.av to i64
  %i.ax = icmp ugt i64 %2, %i.aw
  br i1 %i.ax, label %bb.c, label %.preheader213.i.preheader, !llvm.loop !11

.preheader213.i.preheader:                        ; preds = %bb.e, %bb.b
  br label %.preheader213.i

.preheader213.i:                                  ; preds = %.preheader213.i.preheader, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %.preheader213.i.preheader ] ; 5 uses
  %.0176227.i = phi i32 [ %i.bj, %._crit_edge.i ], [ 0, %.preheader213.i.preheader ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.az = icmp samesign ult i64 %indvars.iv.i, %i.z
  br i1 %i.az, label %.lr.ph218.us.i, label %._crit_edge.i

.lr.ph218.us.i:                                   ; preds = %.preheader213.i, %bb.h
  %storemerge222.us.i = phi i32 [ %i.bh, %bb.h ], [ 32, %.preheader213.i ] ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph218.us.i
  %.0168217.us.i = phi i32 [ 0, %.lr.ph218.us.i ], [ %i.be, %bb.g ] ; 2 uses
  %.0169216.us.i = phi i64 [ %indvars.iv.i, %.lr.ph218.us.i ], [ %i.bf, %bb.g ] ; 2 uses
  %i.ba = icmp samesign ugt i32 %.0168217.us.i, 65534
  br i1 %i.ba, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %.0169216.us.i
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !8
  %i.bd = zext i16 %i.bc to i32
  %spec.select195.us.i = tail call i32 @llvm.umin.i32(i32 %storemerge222.us.i, i32 %i.bd)
  %i.be = add nuw nsw i32 %spec.select195.us.i, %.0168217.us.i ; 2 uses
  %i.bf = add nuw nsw i64 %.0169216.us.i, %i.w    ; 2 uses
  %i.bg = icmp samesign ult i64 %i.bf, %i.z
  br i1 %i.bg, label %bb.f, label %._crit_edge.i, !llvm.loop !13

bb.h:                                             ; preds = %bb.f
  %i.bh = add i32 %storemerge222.us.i, -1
  br label %.lr.ph218.us.i

._crit_edge.i:                                    ; preds = %bb.g, %.preheader213.i
  %storemerge.i = phi i32 [ 32, %.preheader213.i ], [ %storemerge222.us.i, %bb.g ]
  %.0168.lcssa.i = phi i32 [ 0, %.preheader213.i ], [ %i.be, %bb.g ] ; 2 uses
  store i32 %storemerge.i, ptr %i.ay, align 4, !tbaa !10
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  store i32 %.0168.lcssa.i, ptr %i.bi, align 4, !tbaa !10
  %i.bj = add i32 %.0168.lcssa.i, %.0176227.i     ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.w
  br i1 %exitcond.not.i, label %.new, label %.preheader213.i, !llvm.loop !14

.new:                                             ; preds = %._crit_edge.i
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = shl nuw nsw i64 %i.bk, 2
  %i.bm = add nuw i64 %i.l, 32
  %i.bn = add i64 %i.bm, %i.j
  %i.bo = add i64 %i.bn, %i.bl                    ; 2 uses
  %.not193.i = icmp ne i64 %i.bo, 0
  tail call void @llvm.assume(i1 %.not193.i)
  %i.bp = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.bo) #6 ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24 ; 4 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.w ; 3 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %i.z ; 7 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bk
  store i32 -558043677, ptr %i.bp, align 4, !tbaa !15
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 %i.bj, ptr %i.bu, align 4, !tbaa !17
  %i.bv = trunc nuw i64 %2 to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 40, ptr %i.bx, align 4, !tbaa !19
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i32 %.014.lcssa, ptr %i.by, align 4, !tbaa !20
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  store i32 %.013.lcssa, ptr %i.bz, align 4, !tbaa !21
  store ptr %1, ptr %i.bt, align 1
  %xtraiter = and i64 %i.w, 1
  %unroll_iter = and i64 %i.w, 4294967294
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.new
  %indvars.iv237.i = phi i64 [ 0, %.new ], [ %indvars.iv.next238.i.1, %bb.i ] ; 4 uses
  %.3229.i = phi i32 [ 0, %.new ], [ %i.ch, %bb.i ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv237.i
  store i32 %.3229.i, ptr %i.ca, align 4, !tbaa !10
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv237.i ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !10
  %i.cd = add i32 %i.cc, %.3229.i                 ; 2 uses
  store i32 0, ptr %i.cb, align 4, !tbaa !10
  %indvars.iv.next238.i = or disjoint i64 %indvars.iv237.i, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next238.i
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !10
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next238.i ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !10
  %i.ch = add i32 %i.cg, %i.cd
  store i32 0, ptr %i.cf, align 4, !tbaa !10
  %indvars.iv.next238.i.1 = add nuw nsw i64 %indvars.iv237.i, 2
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.preheader.i.unr-lcssa, label %bb.i, !llvm.loop !22

.preheader.preheader.i.unr-lcssa:                 ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod.not)
  %i.ci = zext nneg i32 %i.h to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.n, %.preheader.preheader.i.unr-lcssa
  %indvars.iv243.i = phi i64 [ 0, %.preheader.preheader.i.unr-lcssa ], [ %indvars.iv.next244.i, %bb.n ] ; 6 uses
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv243.i
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !8
  %i.cl = zext i16 %i.ck to i32
  %i.cm = and i64 %indvars.iv243.i, %i.ci         ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !10
  %spec.select196.i = tail call i32 @llvm.umin.i32(i32 %i.co, i32 %i.cl) ; 4 uses
  %i.cp = icmp eq i32 %spec.select196.i, 0
  br i1 %i.cp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.preheader.i
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %indvars.iv243.i
  store i16 -1, ptr %i.cq, align 2, !tbaa !8
  br label %bb.n

bb.k:                                             ; preds = %.preheader.i
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cm ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !10 ; 3 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = trunc i32 %i.cs to i16
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %indvars.iv243.i
  store i16 %i.cu, ptr %i.cv, align 2, !tbaa !8
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cm
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !10
  %i.cy = zext i32 %i.cx to i64
  %i.cz = add nuw nsw i64 %i.cy, %i.ct            ; 2 uses
  %i.da = add i32 %i.cs, %spec.select196.i
  store i32 %i.da, ptr %i.cr, align 4, !tbaa !10
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv243.i ; 2 uses
  %i.dc = zext nneg i32 %spec.select196.i to i64  ; 2 uses
  %xtraiter43 = and i64 %i.dc, 3                  ; 3 uses
  %i.dd = icmp samesign ult i32 %spec.select196.i, 4
  br i1 %i.dd, label %.epil.preheader42, label %.new41

.new41:                                           ; preds = %bb.k
  %unroll_iter48 = and i64 %i.dc, 65532
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new41
  %.0232.i = phi i64 [ %i.cz, %.new41 ], [ %i.dp, %bb.l ] ; 5 uses
  %.0164.in230.i = phi ptr [ %i.db, %.new41 ], [ %i.dt, %bb.l ]
  %niter49 = phi i64 [ 0, %.new41 ], [ %niter49.next.3, %bb.l ]
  %.0164.i = load i32, ptr %.0164.in230.i, align 4, !tbaa !10 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.0232.i
  store i32 %.0164.i, ptr %i.de, align 4, !tbaa !10
  %i.df = zext i32 %.0164.i to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.df
  %.0164.i.1 = load i32, ptr %i.dg, align 4, !tbaa !10 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.0232.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 %.0164.i.1, ptr %i.di, align 4, !tbaa !10
  %i.dj = zext i32 %.0164.i.1 to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.dj
  %.0164.i.2 = load i32, ptr %i.dk, align 4, !tbaa !10 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.0232.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i32 %.0164.i.2, ptr %i.dm, align 4, !tbaa !10
  %i.dn = zext i32 %.0164.i.2 to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.dn
  %.0164.i.3 = load i32, ptr %i.do, align 4, !tbaa !10 ; 3 uses
  %i.dp = add nuw nsw i64 %.0232.i, 4             ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.0232.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 %.0164.i.3, ptr %i.dr, align 4, !tbaa !10
  %i.ds = zext i32 %.0164.i.3 to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ds ; 2 uses
  %niter49.next.3 = add i64 %niter49, 4           ; 2 uses
  %niter49.ncmp.3 = icmp eq i64 %niter49.next.3, %unroll_iter48
  br i1 %niter49.ncmp.3, label %.unr-lcssa, label %bb.l, !llvm.loop !23

.unr-lcssa:                                       ; preds = %bb.l
  %lcmp.mod44.not = icmp eq i64 %xtraiter43, 0
  br i1 %lcmp.mod44.not, label %.epilog-lcssa, label %.epil.preheader42

.epil.preheader42:                                ; preds = %.unr-lcssa, %bb.k
  %.0232.i.epil.init = phi i64 [ %i.cz, %bb.k ], [ %i.dp, %.unr-lcssa ]
  %.0164.in230.i.epil.init = phi ptr [ %i.db, %bb.k ], [ %i.dt, %.unr-lcssa ]
  %lcmp.mod47 = icmp ne i64 %xtraiter43, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader42
  %.0232.i.epil = phi i64 [ %.0232.i.epil.init, %.epil.preheader42 ], [ %i.du, %bb.m ] ; 2 uses
  %.0164.in230.i.epil = phi ptr [ %.0164.in230.i.epil.init, %.epil.preheader42 ], [ %i.dx, %bb.m ]
  %epil.iter = phi i64 [ 0, %.epil.preheader42 ], [ %epil.iter.next, %bb.m ]
  %.0164.i.epil = load i32, ptr %.0164.in230.i.epil, align 4, !tbaa !10 ; 3 uses
  %i.du = add nuw nsw i64 %.0232.i.epil, 1        ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.0232.i.epil
  store i32 %.0164.i.epil, ptr %i.dv, align 4, !tbaa !10
  %i.dw = zext i32 %.0164.i.epil to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.dw
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter43
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.m, !llvm.loop !24

.epilog-lcssa:                                    ; preds = %bb.m, %.unr-lcssa
  %.0164.i.lcssa = phi i32 [ %.0164.i.3, %.unr-lcssa ], [ %.0164.i.epil, %bb.m ]
  %.lcssa = phi i64 [ %i.dp, %.unr-lcssa ], [ %i.du, %bb.m ]
  %i.dy = getelementptr [4 x i8], ptr %i.bs, i64 %.lcssa
  %i.dz = getelementptr i8, ptr %i.dy, i64 -4
  %i.ea = or i32 %.0164.i.lcssa, -2147483648
  store i32 %i.ea, ptr %i.dz, align 4, !tbaa !10
  br label %bb.n

bb.n:                                             ; preds = %.epilog-lcssa, %bb.j
  %indvars.iv.next244.i = add nuw nsw i64 %indvars.iv243.i, 1 ; 2 uses
  %exitcond247.not.i = icmp eq i64 %indvars.iv.next244.i, %i.z
  br i1 %exitcond247.not.i, label %bb.o, label %.preheader.i, !llvm.loop !26

bb.o:                                             ; preds = %bb.n
  tail call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %i.v) #6
  br label %CreatePreparedDictionaryWithParams.exit

CreatePreparedDictionaryWithParams.exit:          ; preds = %._crit_edge, %bb.o
  %.0166.i = phi ptr [ %i.bp, %bb.o ], [ null, %._crit_edge ]
  ret ptr %.0166.i
}

; Function Attrs: nounwind uwtable
define hidden void @DestroyPreparedDictionary(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %1) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare hidden void @BrotliFree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 0, 2) i32 @AttachPreparedDictionary(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !27     ; 4 uses
  %i.b = icmp eq i64 %i.a, 15
  %.not = icmp eq ptr %1, null
  %or.cond = or i1 %.not, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !30
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.a
  store ptr %1, ptr %i.j, align 8, !tbaa !31
  %i.k = getelementptr i8, ptr %0, i64 280
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.a
  store i64 %i.h, ptr %i.l, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !21
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw i64 1, %i.p
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i32, ptr %i.s, align 4, !tbaa !20
end_hunk_0
