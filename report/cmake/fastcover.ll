inline.NumInlined: 29
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@FASTCOVER_buildDictionary:bb.a
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bf
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !13
  %i.bm = sub i32 %.sroa.18.1.i, %i.bl
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.18.2.i = phi i32 [ %i.bm, %bb.i ], [ %.sroa.18.1.i, %bb.h ]
  %i.bn = add i32 %.sroa.011.02.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.sroa.011.1.i = phi i32 [ %i.bn, %bb.j ], [ %.sroa.011.02.i, %bb.g ] ; 3 uses
  %.sroa.18.3.i = phi i32 [ %.sroa.18.2.i, %bb.j ], [ %.sroa.18.1.i, %bb.g ] ; 3 uses
  %i.bo = icmp ugt i32 %.sroa.18.3.i, %.sroa.6.05.i ; 2 uses
  %.sroa.6.1.i = tail call i32 @llvm.umax.i32(i32 %.sroa.18.3.i, i32 %.sroa.6.05.i) ; 2 uses
  %.sroa.049.sroa.4.1.i = select i1 %i.bo, i32 %indvars.i, i32 %.sroa.049.sroa.4.06.i ; 2 uses
  %.sroa.049.sroa.0.1.i = select i1 %i.bo, i32 %.sroa.011.1.i, i32 %.sroa.049.sroa.0.07.i ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader1.i.loopexit, label %bb.e, !llvm.loop !51

.preheader.i:                                     ; preds = %.prol.loopexit, %.lr.ph12.i.new, %.preheader1.i
  %.not13.i = icmp eq i32 %.sroa.049.sroa.0.0.lcssa.i, %.sroa.049.sroa.4.0.lcssa.i
  br i1 %.not13.i, label %FASTCOVER_selectSegment.exit, label %.lr.ph15.i

.lr.ph15.i:                                       ; preds = %.preheader.i
  %i.bp = load ptr, ptr %0, align 8, !tbaa !35    ; 5 uses
  %i.bq = sub i32 64, %i.v
  %i.br = zext nneg i32 %i.bq to i64              ; 5 uses
  %i.bs = sub i32 %.sroa.049.sroa.4.0.lcssa.i, %.sroa.049.sroa.0.0.lcssa.i
  %xtraiter20 = and i32 %i.bs, 3                  ; 2 uses
  %lcmp.mod21.not = icmp eq i32 %xtraiter20, 0
  br i1 %lcmp.mod21.not, label %.prol.loopexit19, label %.prol.preheader18

.prol.preheader18:                                ; preds = %.lr.ph15.i, %.prol.preheader18
  %.014.i.prol = phi i32 [ %i.by, %.prol.preheader18 ], [ %.sroa.049.sroa.0.0.lcssa.i, %.lr.ph15.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader18 ], [ 0, %.lr.ph15.i ]
  %i.bt = zext i32 %.014.i.prol to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bt
  %.val.i58.i.prol = load i64, ptr %i.bu, align 1, !tbaa !41
  %i.bv = mul i64 %.val.i58.i.prol, %..i.i
  %i.bw = lshr i64 %i.bv, %i.br
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bw
  store i32 0, ptr %i.bx, align 4, !tbaa !13
  %i.by = add i32 %.014.i.prol, 1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter20
  br i1 %prol.iter.cmp.not, label %.prol.loopexit19, label %.prol.preheader18, !llvm.loop !52

.prol.loopexit19:                                 ; preds = %.prol.preheader18, %.lr.ph15.i
  %.014.i.unr = phi i32 [ %.sroa.049.sroa.0.0.lcssa.i, %.lr.ph15.i ], [ %i.by, %.prol.preheader18 ]
  %i.bz = sub i32 %.sroa.049.sroa.0.0.lcssa.i, %.sroa.049.sroa.4.0.lcssa.i
  %i.ca = icmp ugt i32 %i.bz, -4
  br i1 %i.ca, label %FASTCOVER_selectSegment.exit, label %.lr.ph15.i.new

.lr.ph12.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph12.i.new
  %indvars.iv17.i = phi i64 [ %indvars.iv.next18.i.1, %.lr.ph12.i.new ], [ %indvars.iv17.i.unr, %.prol.loopexit ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv17.i
  %.val.i56.i = load i64, ptr %i.cb, align 1, !tbaa !41
  %i.cc = mul i64 %.val.i56.i, %..i.i
  %i.cd = lshr i64 %i.cc, %i.af
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.cd ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !49
  %i.cg = add i16 %i.cf, -1
  store i16 %i.cg, ptr %i.ce, align 2, !tbaa !49
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv17.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %.val.i56.i.1 = load i64, ptr %i.ci, align 1, !tbaa !41
  %i.cj = mul i64 %.val.i56.i.1, %..i.i
  %i.ck = lshr i64 %i.cj, %i.af
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ck ; 2 uses
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !49
  %i.cn = add i16 %i.cm, -1
  store i16 %i.cn, ptr %i.cl, align 2, !tbaa !49
  %indvars.iv.next18.i.1 = add nuw nsw i64 %indvars.iv17.i, 2 ; 2 uses
  %exitcond22.not.i.1 = icmp eq i64 %indvars.iv.next18.i.1, %wide.trip.count21.i
  br i1 %exitcond22.not.i.1, label %.preheader.i, label %.lr.ph12.i.new, !llvm.loop !53

.lr.ph15.i.new:                                   ; preds = %.prol.loopexit19, %.lr.ph15.i.new
  %.014.i = phi i32 [ %i.dl, %.lr.ph15.i.new ], [ %.014.i.unr, %.prol.loopexit19 ] ; 5 uses
  %i.co = zext i32 %.014.i to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.co
  %.val.i58.i = load i64, ptr %i.cp, align 1, !tbaa !41
  %i.cq = mul i64 %.val.i58.i, %..i.i
  %i.cr = lshr i64 %i.cq, %i.br
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cr
  store i32 0, ptr %i.cs, align 4, !tbaa !13
  %i.ct = add i32 %.014.i, 1
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.cu
  %.val.i58.i.1 = load i64, ptr %i.cv, align 1, !tbaa !41
  %i.cw = mul i64 %.val.i58.i.1, %..i.i
  %i.cx = lshr i64 %i.cw, %i.br
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cx
  store i32 0, ptr %i.cy, align 4, !tbaa !13
  %i.cz = add i32 %.014.i, 2
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.da
  %.val.i58.i.2 = load i64, ptr %i.db, align 1, !tbaa !41
  %i.dc = mul i64 %.val.i58.i.2, %..i.i
  %i.dd = lshr i64 %i.dc, %i.br
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dd
  store i32 0, ptr %i.de, align 4, !tbaa !13
  %i.df = add i32 %.014.i, 3
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.dg
  %.val.i58.i.3 = load i64, ptr %i.dh, align 1, !tbaa !41
  %i.di = mul i64 %.val.i58.i.3, %..i.i
  %i.dj = lshr i64 %i.di, %i.br
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dj
  store i32 0, ptr %i.dk, align 4, !tbaa !13
  %i.dl = add i32 %.014.i, 4                      ; 2 uses
  %.not.i.3 = icmp eq i32 %i.dl, %.sroa.049.sroa.4.0.lcssa.i
  br i1 %.not.i.3, label %FASTCOVER_selectSegment.exit, label %.lr.ph15.i.new, !llvm.loop !54

FASTCOVER_selectSegment.exit:                     ; preds = %.prol.loopexit19, %.lr.ph15.i.new, %.preheader.i
  %.sroa.049.sroa.0.0.insert.ext.i = zext i32 %.sroa.049.sroa.0.0.lcssa.i to i64
  br i1 %.sroa.6.0.lcssa.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %FASTCOVER_selectSegment.exit
  %i.dm = add i64 %.0418, 1                       ; 2 uses
  %i.dn = icmp ugt i64 %i.dm, 9
  br i1 %i.dn, label %select.unfold, label %bb.q

bb.m:                                             ; preds = %FASTCOVER_selectSegment.exit
  %i.do = add i32 %i.p, %.sroa.049.sroa.4.0.lcssa.i
  %i.dp = sub i32 %i.do, %.sroa.049.sroa.0.0.lcssa.i
  %i.dq = zext i32 %i.dp to i64
  %..040 = tail call i64 @llvm.umin.i64(i64 %.0409, i64 %i.dq) ; 3 uses
  %i.dr = icmp samesign ult i64 %..040, %i.q
  br i1 %i.dr, label %select.unfold, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ds = sub i64 %.0409, %..040                  ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 %i.ds
  %i.du = load ptr, ptr %0, align 8, !tbaa !35
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %.sroa.049.sroa.0.0.insert.ext.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dt, ptr align 1 %i.dv, i64 %..040, i1 false)
  %i.dw = load i32, ptr @g_displayLevel, align 4, !tbaa !13
  %i.dx = icmp sgt i32 %i.dw, 1
  br i1 %i.dx, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dy = tail call i64 @clock() #12
  %i.dz = load i64, ptr @g_time, align 8, !tbaa !41
  %i.ea = sub nsw i64 %i.dy, %i.dz
  %i.eb = icmp sgt i64 %i.ea, 150000
  %i.ec = load i32, ptr @g_displayLevel, align 4
  %i.ed = icmp sgt i32 %i.ec, 3
  %or.cond = select i1 %i.eb, i1 true, i1 %i.ed
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ee = tail call i64 @clock() #12
  store i64 %i.ee, ptr @g_time, align 8, !tbaa !41
  %i.ef = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.eg = sub i64 %3, %i.ds
  %i.eh = mul i64 %i.eg, 100
  %i.ei = udiv i64 %i.eh, %3
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ef, ptr noundef nonnull @.str.13, i32 noundef %i.ej) #14 ; 0 uses
  %i.el = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.em = tail call i32 @fflush(ptr noundef %i.el) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.p, %bb.o, %bb.n
  %.142.ph = phi i64 [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.p ], [ %i.dm, %bb.l ]
  %.1.ph = phi i64 [ %i.ds, %bb.n ], [ %i.ds, %bb.o ], [ %i.ds, %bb.p ], [ %.0409, %bb.l ] ; 2 uses
  %i.en = add nsw i64 %.0437, 1
  %i.eo = urem i64 %i.en, %i.r
  %.not = icmp eq i64 %.1.ph, 0
  br i1 %.not, label %select.unfold, label %bb.d, !llvm.loop !55

select.unfold:                                    ; preds = %bb.q, %bb.m, %bb.l, %bb.c
  %.040.lcssa = phi i64 [ 0, %bb.c ], [ %.0409, %bb.l ], [ %.0409, %bb.m ], [ 0, %bb.q ]
  %i.ep = load i32, ptr @g_displayLevel, align 4, !tbaa !13
  %i.eq = icmp sgt i32 %i.ep, 1
  br i1 %i.eq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %select.unfold
  %i.er = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.es = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.er, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #14 ; 0 uses
  %i.et = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.eu = tail call i32 @fflush(ptr noundef %i.et) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %select.unfold
  ret i64 %.040.lcssa
}

declare i64 @ZDICT_finalizeDictionary(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef byval(%struct.ZDICT_params_t) align 8) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i64 @ZDICT_optimizeTrainFromBuffer_fastCover(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %.sroa.10.sroa.4 = alloca [12 x i8], align 4    ; 4 uses
  %6 = alloca %struct.COVER_best_s, align 8       ; 18 uses
  %7 = alloca %struct.FASTCOVER_ctx_t, align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.sroa.4)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !57 ; 2 uses
  %i.e = fcmp ugt double %i.d, 0.000000e+00
  %i.f = select i1 %i.e, double %i.d, double 7.500000e-01 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !58   ; 3 uses
  %i.i = icmp eq i32 %i.h, 0                      ; 3 uses
  %i.j = select i1 %i.i, i32 6, i32 %i.h          ; 2 uses
  %i.k = select i1 %i.i, i32 8, i32 %i.h          ; 3 uses
  %i.l = load i32, ptr %5, align 8, !tbaa !59     ; 3 uses
  %i.m = icmp eq i32 %i.l, 0                      ; 3 uses
  %i.n = select i1 %i.m, i32 50, i32 %i.l         ; 3 uses
  %i.o = select i1 %i.m, i32 2000, i32 %i.l       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !60   ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  %i.s = select i1 %i.r, i32 40, i32 %i.q         ; 2 uses
  %i.t = select i1 %i.m, i32 1950, i32 0          ; 2 uses
  %i.u = udiv i32 %i.t, %i.s
  %i.v = tail call i32 @llvm.umax.i32(i32 %i.u, i32 1) ; 2 uses
  %.lhs.trunc = trunc nuw nsw i32 %i.t to i16
  %.rhs.trunc = trunc nuw nsw i32 %i.v to i16
  %i.w = udiv i16 %.lhs.trunc, %.rhs.trunc
  %narrow = add nuw nsw i16 %i.w, 1
  %i.x = zext nneg i16 %narrow to i32
  %i.y = zext i1 %i.i to i32
  %i.z = shl nuw nsw i32 %i.x, %i.y               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !14 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = select i1 %i.ac, i32 20, i32 %i.ab      ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !15 ; 2 uses
  %i.ag = tail call i32 @llvm.umax.i32(i32 %i.af, i32 1) ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !9  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.aj = fcmp ogt double %i.f, 1.000000e+00
  br i1 %i.aj, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ak = icmp sgt i32 %i.ai, 0
  br i1 %i.ak, label %bb.c, label %bb.aw

bb.c:                                             ; preds = %bb.b
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.am = tail call i64 @fwrite(ptr nonnull @.str.6, i64 21, i64 1, ptr %i.al) #13 ; 0 uses
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.ao = tail call i32 @fflush(ptr noundef %i.an) ; 0 uses
  br label %bb.aw

bb.d:                                             ; preds = %bb.a
  %i.ap = icmp ugt i32 %i.af, 10
  br i1 %i.ap, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aq = icmp sgt i32 %i.ai, 0
  br i1 %i.aq, label %bb.f, label %bb.aw

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.as = tail call i64 @fwrite(ptr nonnull @.str.7, i64 16, i64 1, ptr %i.ar) #13 ; 0 uses
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.au = tail call i32 @fflush(ptr noundef %i.at) ; 0 uses
  br label %bb.aw

bb.g:                                             ; preds = %bb.d
  %i.av = icmp ult i32 %i.n, %i.k
  %i.aw = icmp ult i32 %i.o, %i.n
  %or.cond = or i1 %i.av, %i.aw
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ax = icmp sgt i32 %i.ai, 0
  br i1 %i.ax, label %bb.i, label %bb.aw

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.az = tail call i64 @fwrite(ptr nonnull @.str.8, i64 12, i64 1, ptr %i.ay) #13 ; 0 uses
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.bb = tail call i32 @fflush(ptr noundef %i.ba) ; 0 uses
  br label %bb.aw

bb.j:                                             ; preds = %bb.g
  %i.bc = icmp eq i32 %4, 0
  br i1 %i.bc, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp sgt i32 %i.ai, 0
  br i1 %i.bd, label %bb.l, label %bb.aw

bb.l:                                             ; preds = %bb.k
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.bf = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %i.be) #13 ; 0 uses
  %i.bg = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.bh = tail call i32 @fflush(ptr noundef %i.bg) ; 0 uses
  br label %bb.aw

bb.m:                                             ; preds = %bb.j
  %i.bi = icmp ult i64 %1, 256
  br i1 %i.bi, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bj = icmp sgt i32 %i.ai, 0
  br i1 %i.bj, label %bb.o, label %bb.aw

bb.o:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.bl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bk, ptr noundef nonnull @.str.2, i32 noundef 256) #14 ; 0 uses
  %i.bm = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.bn = tail call i32 @fflush(ptr noundef %i.bm) ; 0 uses
  br label %bb.aw

bb.p:                                             ; preds = %bb.m
  %i.bo = icmp ugt i32 %i.b, 1
  br i1 %i.bo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = zext i32 %i.b to i64
  %i.bq = tail call ptr @POOL_create(i64 noundef %i.bp, i64 noundef 1) #12 ; 2 uses
  %.not = icmp eq ptr %i.bq, null
  br i1 %.not, label %bb.aw, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0142 = phi ptr [ %i.bq, %bb.q ], [ null, %bb.p ] ; 5 uses
  call void @COVER_best_init(ptr noundef nonnull %6) #12
  %.sroa.6175.0.copyload = load i32, ptr %i.a, align 8
  %.sroa.8179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.sroa.4, ptr noundef nonnull align 4 dereferenceable(12) %i.br, i64 12, i1 false)
  %i.bs = zext nneg i32 %i.ag to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr @FASTCOVER_defaultAccelParameters, i64 %i.bs
  %.sroa.0.0.copyload = load i64, ptr %i.bt, align 8
  %i.bu = call i32 @llvm.usub.sat.i32(i32 %i.ai, i32 1)
  store i32 %i.bu, ptr @g_displayLevel, align 4, !tbaa !13
  %i.bv = icmp sgt i32 %i.ai, 1                   ; 3 uses
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bw = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.bx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bw, ptr noundef nonnull @.str.9, i32 noundef %i.z) #14 ; 0 uses
  %i.by = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.bz = call i32 @fflush(ptr noundef %i.by)     ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not163217 = icmp ugt i32 %i.j, %i.k
  br i1 %.not163217, label %._crit_edge223, label %.lr.ph222.split.preheader

.lr.ph222.split.preheader:                        ; preds = %bb.t
  %i.ca = icmp sgt i32 %i.ai, 2                   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 68
  %.not170 = icmp eq ptr %.0142, null
  %i.cd = icmp samesign ugt i32 %i.ai, 3
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  br label %.lr.ph222.split

.lr.ph222.split:                                  ; preds = %.lr.ph222.split.preheader, %._crit_edge
  %.0130220 = phi i32 [ %.2132.ph, %._crit_edge ], [ 1, %.lr.ph222.split.preheader ]
  %.0134219 = phi i32 [ %i.ek, %._crit_edge ], [ %i.j, %.lr.ph222.split.preheader ] ; 7 uses
  %.not166218 = phi i1 [ false, %._crit_edge ], [ true, %.lr.ph222.split.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  br i1 %i.ca, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph222.split
  %i.cg = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.ch = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cg, ptr noundef nonnull @.str.10, i32 noundef %.0134219) #14 ; 0 uses
  %i.ci = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.cj = call i32 @fflush(ptr noundef %i.ci)     ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph222.split
  %i.ck = call fastcc i64 @FASTCOVER_ctx_init(ptr noundef %7, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %.0134219, double noundef %i.f, i32 noundef %i.ad, i64 %.sroa.0.0.copyload) ; 2 uses
  %i.cl = icmp ult i64 %i.ck, -119
  br i1 %i.cl, label %bb.y, label %.split.us

.split.us:                                        ; preds = %bb.v
  %i.cm = icmp sgt i32 %i.ai, 0
  br i1 %i.cm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.split.us
  %i.cn = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.co = call i64 @fwrite(ptr nonnull @.str.3, i64 29, i64 1, ptr %i.cn) #13 ; 0 uses
  %i.cp = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.cq = call i32 @fflush(ptr noundef %i.cp)     ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %.split.us, %bb.w
  call void @COVER_best_destroy(ptr noundef nonnull %6) #12
  br label %.thread205

bb.y:                                             ; preds = %bb.v
  br i1 %.not166218, label %bb.z, label %.lr.ph

bb.z:                                             ; preds = %bb.y
  %i.cr = load i64, ptr %i.cb, align 8, !tbaa !24
  call void @COVER_warnOnSmallCorpus(i64 noundef %1, i64 noundef %i.cr, i32 noundef %i.ai) #12
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.z, %bb.y
  %i.cs = icmp eq i32 %.0134219, 0
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.ar
  %.1131216 = phi i32 [ %.0130220, %.lr.ph ], [ %.2132.ph, %bb.ar ] ; 3 uses
  %.0135214 = phi i32 [ %i.n, %.lr.ph ], [ %i.eh, %bb.ar ] ; 6 uses
  %i.ct = call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #16 ; 17 uses
  br i1 %i.ca, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cu = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.cv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cu, ptr noundef nonnull @.str.11, i32 noundef %.0135214) #14 ; 0 uses
  %i.cw = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.cx = call i32 @fflush(ptr noundef %i.cw)     ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.not168 = icmp eq ptr %i.ct, null
  br i1 %.not168, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.cy = icmp sgt i32 %i.ai, 0
  br i1 %i.cy, label %bb.ae, label %bb.aq

bb.ae:                                            ; preds = %bb.ad
  %i.cz = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.da = call i64 @fwrite(ptr nonnull @.str.12, i64 30, i64 1, ptr %i.cz) #13 ; 0 uses
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.dc = call i32 @fflush(ptr noundef %i.db)     ; 0 uses
  br label %bb.aq

bb.af:                                            ; preds = %bb.ac
  store ptr %7, ptr %i.ct, align 8, !tbaa !61
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %6, ptr %i.dd, align 8, !tbaa !64
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i64 %1, ptr %i.de, align 8, !tbaa !65
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 28
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 36
  store i32 %.sroa.6175.0.copyload, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !13
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 52
  store i32 0, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !13
  %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.sroa.4, i64 12, i1 false), !tbaa.struct !66
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ct, i64 68
  store i32 0, ptr %.sroa.11.0..sroa_idx, align 4
  store i32 %.0135214, ptr %i.df, align 8, !tbaa !67
  store i32 %.0134219, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !68
  store double %i.f, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !69
  store i32 %i.s, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !70
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !71
  %i.dg = load i32, ptr @g_displayLevel, align 4, !tbaa !13 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ct, i64 60
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !72
  %i.di = load i32, ptr %i.cc, align 4, !tbaa !40
  %i.dj = icmp eq i32 %.0135214, 0
  %or.cond.i = or i1 %i.dj, %i.cs
  br i1 %or.cond.i, label %FASTCOVER_checkParameters.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  switch i32 %.0134219, label %FASTCOVER_checkParameters.exit.thread [
    i32 8, label %bb.ah
    i32 6, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.ag
  %i.dk = zext i32 %.0135214 to i64
  %i.dl = icmp ult i64 %1, %i.dk
  %i.dm = icmp ugt i32 %.0134219, %.0135214
  %or.cond20.i = or i1 %i.dl, %i.dm
  %i.dn = add i32 %i.di, -32
  %or.cond7.i = icmp ult i32 %i.dn, -31
  %or.cond21.i = or i1 %or.cond7.i, %or.cond20.i
  br i1 %or.cond21.i, label %FASTCOVER_checkParameters.exit.thread, label %FASTCOVER_checkParameters.exit

FASTCOVER_checkParameters.exit.thread:            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.do = icmp sgt i32 %i.dg, 0
  br i1 %i.do, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %FASTCOVER_checkParameters.exit.thread
  %i.dp = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.dq = call i64 @fwrite(ptr nonnull @.str, i64 31, i64 1, ptr %i.dp) #13 ; 0 uses
  %i.dr = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.ds = call i32 @fflush(ptr noundef %i.dr)     ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %FASTCOVER_checkParameters.exit.thread
  call void @free(ptr noundef nonnull %i.ct) #12
  br label %bb.ar

FASTCOVER_checkParameters.exit:                   ; preds = %bb.ah
  call void @COVER_best_start(ptr noundef nonnull %6) #12
  br i1 %.not170, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %FASTCOVER_checkParameters.exit
  call void @POOL_add(ptr noundef nonnull %.0142, ptr noundef nonnull @FASTCOVER_tryParameters, ptr noundef nonnull %i.ct) #12
  br label %bb.am

bb.al:                                            ; preds = %FASTCOVER_checkParameters.exit
  call void @FASTCOVER_tryParameters(ptr noundef nonnull %i.ct)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  br i1 %i.bv, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.dt = call i64 @clock() #12
  %i.du = load i64, ptr @g_time, align 8, !tbaa !41
  %i.dv = sub nsw i64 %i.dt, %i.du
  %i.dw = icmp sgt i64 %i.dv, 150000
  %or.cond6 = select i1 %i.dw, i1 true, i1 %i.cd
  br i1 %or.cond6, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dx = call i64 @clock() #12
  store i64 %i.dx, ptr @g_time, align 8, !tbaa !41
  %i.dy = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.dz = mul i32 %.1131216, 100
  %i.ea = udiv i32 %i.dz, %i.z
  %i.eb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dy, ptr noundef nonnull @.str.13, i32 noundef %i.ea) #14 ; 0 uses
  %i.ec = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.ed = call i32 @fflush(ptr noundef %i.ec)     ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.ee = add i32 %.1131216, 1
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ad, %bb.ae
  call void @COVER_best_destroy(ptr noundef nonnull %6) #12
  %i.ef = load ptr, ptr %i.ce, align 8, !tbaa !31
  call void @free(ptr noundef %i.ef) #12
  store ptr null, ptr %i.ce, align 8, !tbaa !31
  %i.eg = load ptr, ptr %i.cf, align 8, !tbaa !34
  call void @free(ptr noundef %i.eg) #12
  store ptr null, ptr %i.cf, align 8, !tbaa !34
  br label %.thread205

bb.ar:                                            ; preds = %bb.ap, %bb.aj
  %.2132.ph = phi i32 [ %.1131216, %bb.aj ], [ %i.ee, %bb.ap ] ; 2 uses
  %i.eh = add i32 %.0135214, %i.v                 ; 2 uses
  %.not167 = icmp ugt i32 %i.eh, %i.o
  br i1 %.not167, label %._crit_edge, label %bb.aa, !llvm.loop !73

.thread205:                                       ; preds = %bb.aq, %bb.x
  %.4.ph = phi i64 [ %i.ck, %bb.x ], [ -64, %bb.aq ]
  call void @POOL_free(ptr noundef %.0142) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.aw

._crit_edge:                                      ; preds = %bb.ar
  call void @COVER_best_wait(ptr noundef nonnull %6) #12
  %i.ei = load ptr, ptr %i.ce, align 8, !tbaa !31
  call void @free(ptr noundef %i.ei) #12
  store ptr null, ptr %i.ce, align 8, !tbaa !31
  %i.ej = load ptr, ptr %i.cf, align 8, !tbaa !34
  call void @free(ptr noundef %i.ej) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.ek = add i32 %.0134219, 2                    ; 2 uses
  %.not163 = icmp ugt i32 %i.ek, %i.k
  br i1 %.not163, label %._crit_edge223, label %.lr.ph222.split, !llvm.loop !74

._crit_edge223:                                   ; preds = %._crit_edge, %bb.t
  br i1 %i.bv, label %bb.as, label %bb.at

bb.as:                                            ; preds = %._crit_edge223
  %i.el = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.em = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.el, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #14 ; 0 uses
  %i.en = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.eo = call i32 @fflush(ptr noundef %i.en)     ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %._crit_edge223
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !75 ; 2 uses
  %i.er = icmp ult i64 %i.eq, -119
  br i1 %i.er, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @COVER_best_destroy(ptr noundef nonnull %6) #12
  call void @POOL_free(ptr noundef %.0142) #12
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.et = load i64, ptr %i.es, align 8, !tbaa !77 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 112
  %.sroa.5188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 120
  %.sroa.7190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 128
  %.sroa.7190.0.copyload = load double, ptr %.sroa.7190.0..sroa_idx, align 8
  %.sroa.8191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 136
  %.sroa.8191.0.copyload = load i32, ptr %.sroa.8191.0..sroa_idx, align 8
  %i.ev = load <2 x i32>, ptr %i.eu, align 8
  store <2 x i32> %i.ev, ptr %5, align 8, !tbaa !13
  %i.ew = load <2 x i32>, ptr %.sroa.5188.0..sroa_idx, align 8
  store <2 x i32> %i.ew, ptr %i.p, align 4, !tbaa !13
  store double %.sroa.7190.0.copyload, ptr %i.c, align 8, !tbaa !57
  store i32 %i.ad, ptr %i.aa, align 8, !tbaa !14
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !15
  %i.ex = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.ey = getelementptr inbounds nuw i8, ptr %6, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ex, ptr noundef nonnull align 8 dereferenceable(12) %i.ey, i64 12, i1 false)
  store i32 %.sroa.8191.0.copyload, ptr %.sroa.8179.0..sroa_idx, align 4, !tbaa !78
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !79
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %i.fa, i64 %i.et, i1 false)
  call void @COVER_best_destroy(ptr noundef nonnull %6) #12
  call void @POOL_free(ptr noundef %.0142) #12
  br label %bb.aw

bb.aw:                                            ; preds = %.thread205, %bb.au, %bb.av, %bb.q, %bb.n, %bb.o, %bb.k, %bb.l, %bb.h, %bb.i, %bb.e, %bb.f, %bb.b, %bb.c
  %.6 = phi i64 [ -70, %bb.n ], [ -42, %bb.b ], [ -42, %bb.e ], [ -42, %bb.h ], [ -72, %bb.k ], [ %.4.ph, %.thread205 ], [ -64, %bb.q ], [ -42, %bb.c ], [ -42, %bb.f ], [ -42, %bb.i ], [ -72, %bb.l ], [ -70, %bb.o ], [ %i.eq, %bb.au ], [ %i.et, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.4)
  ret i64 %.6
}

declare ptr @POOL_create(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @COVER_best_init(ptr noundef) local_unnamed_addr #4

declare void @COVER_best_destroy(ptr noundef) local_unnamed_addr #4

declare void @POOL_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare void @COVER_best_start(ptr noundef) local_unnamed_addr #4

declare void @POOL_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @FASTCOVER_tryParameters(ptr noundef captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.ZDICT_cover_params_t, align 8 ; 7 uses
  %2 = alloca %struct.COVER_dictSelection, align 8 ; 7 uses
  %3 = alloca %struct.COVER_dictSelection, align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !61     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !tbaa.struct !80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !65   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !40
  %i.g = zext nneg i32 %i.f to i64
  %i.h = shl nuw i64 1, %i.g
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 2) #15 ; 3 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.d) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @COVER_dictSelectionError(ptr dead_on_unwind nonnull writable sret(%struct.COVER_dictSelection) align 8 %2, i64 noundef -1) #12
  %i.k = load i32, ptr %i.e, align 4, !tbaa !40
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl i64 4, %i.l                          ; 2 uses
  %i.n = call noalias ptr @malloc(i64 noundef %i.m) #16 ; 4 uses
  %i.o = icmp ne ptr %i.i, null
  %i.p = icmp ne ptr %i.j, null
  %or.cond = and i1 %i.o, %i.p
  %i.q = icmp ne ptr %i.n, null
  %or.cond3 = and i1 %or.cond, %i.q
  br i1 %or.cond3, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr @g_displayLevel, align 4, !tbaa !13
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.u = call i64 @fwrite(ptr nonnull @.str.25, i64 42, i64 1, ptr %i.t) #13 ; 0 uses
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.w, i64 %i.m, i1 false)
  %.val = load i32, ptr %1, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val43 = load i32, ptr %i.x, align 4
  %i.y = call fastcc i64 @FASTCOVER_buildDictionary(ptr noundef nonnull %i.a, ptr noundef nonnull %i.n, ptr noundef nonnull %i.j, i64 noundef %i.d, i32 %.val, i32 %.val43, ptr noundef nonnull %i.i) ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !32  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !33
  %i.ad = zext i32 %i.ac to i64
  %i.ae = mul i64 %i.aa, %i.ad
  %i.af = udiv i64 %i.ae, 100
  %i.ag = trunc i64 %i.af to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.y
  %i.ai = sub i64 %i.d, %i.y
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !34
  call void @COVER_selectDict(ptr dead_on_unwind nonnull writable sret(%struct.COVER_dictSelection) align 8 %3, ptr noundef nonnull %i.ah, i64 noundef %i.d, i64 noundef %i.ai, ptr noundef %i.aj, ptr noundef %i.al, i32 noundef %i.ag, i64 noundef %i.aa, i64 noundef %i.an, ptr noundef nonnull byval(%struct.ZDICT_cover_params_t) align 8 %1, ptr noundef %i.ap, i64 noundef -1) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !82
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.aq = call i32 @COVER_dictSelectionIsError(ptr noundef nonnull byval(%struct.COVER_dictSelection) align 8 %2) #12
  %.not = icmp ne i32 %i.aq, 0
  %i.ar = load i32, ptr @g_displayLevel, align 4
  %i.as = icmp sgt i32 %i.ar, 0
  %or.cond42 = select i1 %.not, i1 %i.as, i1 false
  br i1 %or.cond42, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.au = call i64 @fwrite(ptr nonnull @.str.26, i64 28, i64 1, ptr %i.at) #13 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.e
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !21
  %i.aw = call i32 @fflush(ptr noundef %i.av)     ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d, %bb.b
  call void @free(ptr noundef %i.j) #12
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !64
  call void @COVER_best_finish(ptr noundef %i.ay, ptr noundef nonnull byval(%struct.ZDICT_cover_params_t) align 8 %1, ptr noundef nonnull byval(%struct.COVER_dictSelection) align 8 %2) #12
  call void @free(ptr noundef nonnull %0) #12
  call void @free(ptr noundef %i.i) #12
  call void @COVER_dictSelectionFree(ptr noundef nonnull byval(%struct.COVER_dictSelection) align 8 %2) #12
  call void @free(ptr noundef %i.n) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret void
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #8

declare void @COVER_best_wait(ptr noundef) local_unnamed_addr #4

declare i64 @COVER_sum(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @COVER_computeEpochs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @COVER_dictSelectionError(ptr dead_on_unwind writable sret(%struct.COVER_dictSelection) align 8, i64 noundef) local_unnamed_addr #4

declare void @COVER_selectDict(ptr dead_on_unwind writable sret(%struct.COVER_dictSelection) align 8, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef byval(%struct.ZDICT_cover_params_t) align 8, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @COVER_dictSelectionIsError(ptr noundef byval(%struct.COVER_dictSelection) align 8) local_unnamed_addr #4

declare void @COVER_best_finish(ptr noundef, ptr noundef byval(%struct.ZDICT_cover_params_t) align 8, ptr noundef byval(%struct.COVER_dictSelection) align 8) local_unnamed_addr #4

declare void @COVER_dictSelectionFree(ptr noundef byval(%struct.COVER_dictSelection) align 8) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 48}
!10 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !12, i64 44}
!11 = !{!"double", !7, i64 0}
!12 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!13 = !{!6, !6, i64 0}
!14 = !{!10, !6, i64 8}
!15 = !{!10, !6, i64 32}
!16 = !{!17, !6, i64 0}
!17 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !12, i64 32}
!18 = !{!17, !6, i64 4}
!19 = !{!17, !11, i64 16}
!20 = !{!17, !6, i64 24}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTS8_IO_FILE", !23, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = !{!25, !28, i64 48}
!25 = !{!"", !26, i64 0, !27, i64 8, !27, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !28, i64 48, !29, i64 56, !6, i64 64, !6, i64 68, !30, i64 72}
!26 = !{!"p1 omnipotent char", !23, i64 0}
!27 = !{!"p1 long", !23, i64 0}
!28 = !{!"long", !7, i64 0}
!29 = !{!"p1 int", !23, i64 0}
!30 = !{!"", !6, i64 0, !6, i64 4}
!31 = !{!25, !29, i64 56}
!32 = !{!25, !28, i64 32}
!33 = !{!25, !6, i64 72}
!34 = !{!25, !27, i64 8}
!35 = !{!25, !26, i64 0}
!36 = !{!25, !27, i64 16}
!37 = !{!25, !28, i64 24}
!38 = !{!25, !28, i64 40}
!39 = !{!25, !6, i64 64}
!40 = !{!25, !6, i64 68}
!41 = !{!28, !28, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!25, !6, i64 76}
!47 = distinct !{!47, !43}
!48 = distinct !{!48, !43}
!49 = !{!50, !50, i64 0}
!50 = !{!"short", !7, i64 0}
!51 = distinct !{!51, !43}
!52 = distinct !{!52, !45}
!53 = distinct !{!53, !43}
!54 = distinct !{!54, !43}
!55 = distinct !{!55, !43}
!56 = !{!10, !6, i64 16}
!57 = !{!10, !11, i64 24}
!58 = !{!10, !6, i64 4}
!59 = !{!10, !6, i64 0}
!60 = !{!10, !6, i64 12}
!61 = !{!62, !23, i64 0}
!62 = !{!"FASTCOVER_tryParameters_data_s", !23, i64 0, !63, i64 8, !28, i64 16, !17, i64 24}
!63 = !{!"p1 _ZTS12COVER_best_s", !23, i64 0}
!64 = !{!62, !63, i64 8}
!65 = !{!62, !28, i64 16}
!66 = !{i64 0, i64 4, !13, i64 4, i64 4, !13, i64 8, i64 4, !13}
!67 = !{!62, !6, i64 24}
!68 = !{!62, !6, i64 28}
!69 = !{!62, !11, i64 40}
!70 = !{!62, !6, i64 32}
!71 = !{!62, !6, i64 48}
!72 = !{!62, !6, i64 60}
!73 = distinct !{!73, !43}
!74 = distinct !{!74, !43}
!75 = !{!76, !28, i64 160}
!76 = !{!"COVER_best_s", !7, i64 0, !7, i64 40, !28, i64 88, !23, i64 96, !28, i64 104, !17, i64 112, !28, i64 160}
!77 = !{!76, !28, i64 104}
!78 = !{!10, !6, i64 36}
!79 = !{!76, !23, i64 96}
!80 = !{i64 0, i64 4, !13, i64 4, i64 4, !13, i64 8, i64 4, !13, i64 12, i64 4, !13, i64 16, i64 8, !81, i64 24, i64 4, !13, i64 28, i64 4, !13, i64 32, i64 4, !13, i64 36, i64 4, !13, i64 40, i64 4, !13}
!81 = !{!11, !11, i64 0}
!82 = !{i64 0, i64 8, !83, i64 8, i64 8, !41, i64 16, i64 8, !41}
!83 = !{!26, !26, i64 0}
end_hunk_0
