inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
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
  %spec.select55 = select i1 %i.e, i32 12, i32 11
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.3, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %bb.a
  %.014.lcssa = phi i32 [ 7, %bb.a ], [ 8, %.lr.ph ], [ 9, %.lr.ph.1 ], [ 10, %.lr.ph.2 ], [ %spec.select55, %.lr.ph.3 ] ; 4 uses
  %.013.lcssa = phi i32 [ 17, %bb.a ], [ 18, %.lr.ph ], [ 19, %.lr.ph.1 ], [ 20, %.lr.ph.2 ], [ %spec.select, %.lr.ph.3 ] ; 5 uses
  %i.f = shl nuw i32 1, %.014.lcssa               ; 2 uses
  %i.g = sub nuw nsw i32 64, %.013.lcssa
  %i.h = add i32 %i.f, -1
  %i.i = zext nneg i32 %.014.lcssa to i64         ; 2 uses
  %i.j = shl i64 4, %i.i
  %i.k = zext nneg i32 %.013.lcssa to i64         ; 2 uses
  %i.l = shl nuw nsw i64 2, %i.k                  ; 2 uses
  %i.m = sub nuw nsw i32 %.013.lcssa, %.014.lcssa
  %i.n = icmp samesign ugt i32 %i.m, 15
  br i1 %i.n, label %_ZL34CreatePreparedDictionaryWithParamsPN13duckdb_brotli13MemoryManagerEPKhmjjjt.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.o = shl nuw nsw i32 1, %.013.lcssa
  %i.p = shl nuw nsw i64 8, %i.i
  %i.q = shl nuw nsw i64 4, %i.k
  %i.r = shl i64 %2, 2
  %i.s = add i64 %i.p, %i.r
  %i.t = add i64 %i.s, %i.l
  %i.u = add i64 %i.t, %i.q                       ; 2 uses
  %.not.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.v = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.u) ; 6 uses
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
  %i.am = load i16, ptr %i.al, align 2, !tbaa !7  ; 2 uses
  %i.an = icmp eq i16 %i.am, 0
  br i1 %i.an, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ak
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aq = phi i32 [ %i.ap, %bb.d ], [ -1, %bb.c ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.af
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !3
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ak
  store i32 %.0179215.i, ptr %i.as, align 4, !tbaa !3
  %i.at = add i16 %i.am, 1
  %spec.select.i = tail call i16 @llvm.umin.i16(i16 %i.at, i16 32)
  store i16 %spec.select.i, ptr %i.al, align 2, !tbaa !7
  %i.au = add i32 %.0179215.i, 1
  %i.av = add i32 %.0179215.i, 8
  %i.aw = zext i32 %i.av to i64
  %i.ax = icmp ugt i64 %2, %i.aw
  br i1 %i.ax, label %bb.c, label %.preheader213.i.preheader, !llvm.loop !9

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
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !7
  %i.bd = zext i16 %i.bc to i32
  %spec.select195.us.i = tail call i32 @llvm.umin.i32(i32 %storemerge222.us.i, i32 %i.bd)
  %i.be = add nuw nsw i32 %spec.select195.us.i, %.0168217.us.i ; 2 uses
  %i.bf = add nuw nsw i64 %.0169216.us.i, %i.w    ; 2 uses
  %i.bg = icmp samesign ult i64 %i.bf, %i.z
  br i1 %i.bg, label %bb.f, label %._crit_edge.i, !llvm.loop !11

bb.h:                                             ; preds = %bb.f
  %i.bh = add i32 %storemerge222.us.i, -1
  br label %.lr.ph218.us.i

._crit_edge.i:                                    ; preds = %bb.g, %.preheader213.i
  %storemerge.i = phi i32 [ 32, %.preheader213.i ], [ %storemerge222.us.i, %bb.g ]
  %.0168.lcssa.i = phi i32 [ 0, %.preheader213.i ], [ %i.be, %bb.g ] ; 2 uses
  store i32 %storemerge.i, ptr %i.ay, align 4, !tbaa !3
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i
  store i32 %.0168.lcssa.i, ptr %i.bi, align 4, !tbaa !3
  %i.bj = add i32 %.0168.lcssa.i, %.0176227.i     ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.w
  br i1 %exitcond.not.i, label %.new, label %.preheader213.i, !llvm.loop !12

.new:                                             ; preds = %._crit_edge.i
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = shl nuw nsw i64 %i.bk, 2
  %i.bm = add nuw nsw i64 %i.j, 32
  %i.bn = add nuw i64 %i.bm, %i.l
  %i.bo = add i64 %i.bn, %i.bl                    ; 2 uses
  %.not193.i = icmp ne i64 %i.bo, 0
  tail call void @llvm.assume(i1 %.not193.i)
  %i.bp = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.bo) ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24 ; 4 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.w ; 3 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %i.z ; 7 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bk
  store i32 -558043677, ptr %i.bp, align 4, !tbaa !13
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 %i.bj, ptr %i.bu, align 4, !tbaa !15
  %i.bv = trunc nuw i64 %2 to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 40, ptr %i.bx, align 4, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i32 %.013.lcssa, ptr %i.by, align 4, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  store i32 %.014.lcssa, ptr %i.bz, align 4, !tbaa !19
  store ptr %1, ptr %i.bt, align 1
  %xtraiter = and i64 %i.w, 1
  %unroll_iter = and i64 %i.w, 4294967294
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.new
  %indvars.iv237.i = phi i64 [ 0, %.new ], [ %indvars.iv.next238.i.1, %bb.i ] ; 4 uses
  %.3229.i = phi i32 [ 0, %.new ], [ %i.ch, %bb.i ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.i ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv237.i
  store i32 %.3229.i, ptr %i.ca, align 4, !tbaa !3
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv237.i ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = add i32 %i.cc, %.3229.i                 ; 2 uses
  store i32 0, ptr %i.cb, align 4, !tbaa !3
  %indvars.iv.next238.i = or disjoint i64 %indvars.iv237.i, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next238.i
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !3
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next238.i ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ch = add i32 %i.cg, %i.cd
  store i32 0, ptr %i.cf, align 4, !tbaa !3
  %indvars.iv.next238.i.1 = add nuw nsw i64 %indvars.iv237.i, 2
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.preheader.i.unr-lcssa, label %bb.i, !llvm.loop !20

.preheader.preheader.i.unr-lcssa:                 ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod.not)
  %i.ci = zext nneg i32 %i.h to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.n, %.preheader.preheader.i.unr-lcssa
  %indvars.iv243.i = phi i64 [ 0, %.preheader.preheader.i.unr-lcssa ], [ %indvars.iv.next244.i, %bb.n ] ; 6 uses
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %indvars.iv243.i
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !7
  %i.cl = zext i16 %i.ck to i32
  %i.cm = and i64 %indvars.iv243.i, %i.ci         ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %spec.select196.i = tail call i32 @llvm.umin.i32(i32 %i.co, i32 %i.cl) ; 4 uses
  %i.cp = icmp eq i32 %spec.select196.i, 0
  br i1 %i.cp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.preheader.i
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %indvars.iv243.i
  store i16 -1, ptr %i.cq, align 2, !tbaa !7
  br label %bb.n

bb.k:                                             ; preds = %.preheader.i
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cm ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3  ; 3 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = trunc i32 %i.cs to i16
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %indvars.iv243.i
  store i16 %i.cu, ptr %i.cv, align 2, !tbaa !7
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cm
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !3
  %i.cy = zext i32 %i.cx to i64
  %i.cz = add nuw nsw i64 %i.cy, %i.ct            ; 2 uses
  %i.da = add i32 %i.cs, %spec.select196.i
  store i32 %i.da, ptr %i.cr, align 4, !tbaa !3
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv243.i ; 2 uses
  %i.dc = zext nneg i32 %spec.select196.i to i64  ; 2 uses
  %xtraiter43 = and i64 %i.dc, 3                  ; 3 uses
  %i.dd = icmp samesign ult i32 %spec.select196.i, 4
  br i1 %i.dd, label %.epil.preheader42, label %.new41

end_hunk_0
