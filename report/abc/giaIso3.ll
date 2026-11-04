Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaIso3?download=true
inline.NumInlined: 92
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Gia_Iso3Test:bb.a

Gia_Iso3Save.exit.thread:                         ; preds = %Gia_Iso3Save.exit, %Vec_IntAlloc.exit.i
  %.val.i1861 = phi i32 [ %.val.i18.pre.fr, %Gia_Iso3Save.exit ], [ 0, %Vec_IntAlloc.exit.i ] ; 3 uses
  %i.bi = phi ptr [ %.val46.i51, %Gia_Iso3Save.exit ], [ %i.ae, %Vec_IntAlloc.exit.i ] ; 7 uses
  %i.bj = phi i32 [ %spec.select, %Gia_Iso3Save.exit ], [ 0, %Vec_IntAlloc.exit.i ]
  %i.bk = shl nuw i32 1, %i.bj                    ; 2 uses
  %i.bl = add nsw i32 %i.bk, -1
  %i.bm = sext i32 %i.bk to i64
  %i.bn = shl nsw i64 %i.bm, 2                    ; 4 uses
  %i.bo = call noalias ptr @malloc(i64 noundef %i.bn) #19 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bo, i8 -1, i64 %i.bn, i1 false)
  %i.bp = call noalias ptr @malloc(i64 noundef %i.bn) #19 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bp, i8 -1, i64 %i.bn, i1 false)
  %i.bq = icmp sgt i32 %.val.i1861, 0
  br i1 %i.bq, label %.lr.ph8.i, label %Vec_IntUniqueCount.exit

.lr.ph8.i:                                        ; preds = %Gia_Iso3Save.exit.thread
  %wide.trip.count.i19 = zext nneg i32 %.val.i1861 to i64
  br label %bb.q

bb.q:                                             ; preds = %Vec_IntUniqueLookup.exit.i, %.lr.ph8.i
  %indvars.iv.i20 = phi i64 [ 0, %.lr.ph8.i ], [ %indvars.iv.next.i23, %Vec_IntUniqueLookup.exit.i ] ; 3 uses
  %.07.i = phi i32 [ 0, %.lr.ph8.i ], [ %.1.i, %Vec_IntUniqueLookup.exit.i ] ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i20 ; 6 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !53
  %i.bt = zext i8 %i.bs to i32                    ; 2 uses
  %i.bu = and i32 %i.bt, 15
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr @Vec_IntUniqueHashKey.s_BigPrimes, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !33
  %i.by = mul i32 %i.bx, -1920311618
  %i.bz = lshr i32 %i.bt, 4
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr @Vec_IntUniqueHashKey.s_BigPrimes, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !33
  %i.cd = mul i32 %i.cc, 510268892
  %i.ce = add i32 %i.cd, %i.by
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !53
  %i.ch = zext i8 %i.cg to i32                    ; 2 uses
  %i.ci = and i32 %i.ch, 15
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr @Vec_IntUniqueHashKey.s_BigPrimes, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !33
  %i.cm = mul i32 %i.cl, 427641307
  %i.cn = lshr i32 %i.ch, 4
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr @Vec_IntUniqueHashKey.s_BigPrimes, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !33
  %i.cr = mul i32 %i.cq, 1537973385
  %i.cs = add i32 %i.ce, %i.cm
  %i.ct = add i32 %i.cs, %i.cr
  %i.cu = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !53
  %i.cw = zext i8 %i.cv to i32                    ; 2 uses
  %i.cx = and i32 %i.cw, 15
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr @Vec_IntUniqueHashKey.s_BigPrimes, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !33
  %i.db = mul i32 %i.da, 1263918759
  %i.dc = lshr i32 %i.cw, 4
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr @Vec_IntUniqueHashKey.s_BigPrimes, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !33
  %i.dg = mul i32 %i.df, 1440669257
  %i.dh = add i32 %i.ct, %i.db
  %i.di = add i32 %i.dh, %i.dg
  %i.dj = getelementptr inbounds nuw i8, ptr %i.br, i64 3
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !53
  %i.dl = zext i8 %i.dk to i32                    ; 2 uses
  %i.dm = and i32 %i.dl, 15
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @Vec_IntUniqueHashKey.s_BigPrimes, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !33
  %i.dq = mul i32 %i.dp, -1704296320
  %i.dr = lshr i32 %i.dl, 4
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr @Vec_IntUniqueHashKey.s_BigPrimes, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !33
  %i.dv = mul i32 %i.du, -437972939
  %i.dw = add i32 %i.di, %i.dq
  %i.dx = add i32 %i.dw, %i.dv
  %i.dy = and i32 %i.dx, %i.bl
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.dz ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !33 ; 2 uses
  %.not1.i.i = icmp eq i32 %i.eb, -1
  br i1 %.not1.i.i, label %Vec_IntUniqueLookup.exit.thread.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.q
  %i.ec = sext i32 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.ec
  %i.ee = load i32, ptr %i.br, align 1
  %i.ef = load i32, ptr %i.ed, align 1
  %i.eg = icmp ne i32 %i.ee, %i.ef
  %i.eh = zext i1 %i.eg to i32
  %.not15.i5.i = icmp eq i32 %i.eh, 0
  br i1 %.not15.i5.i, label %Vec_IntUniqueLookup.exit.i, label %.lr.ph.i21

.lr.ph.i.i:                                       ; preds = %.lr.ph.i21
  %i.ei = sext i32 %i.eq to i64                   ; 2 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.ei
  %i.ek = load i32, ptr %i.br, align 1
  %i.el = load i32, ptr %i.ej, align 1
  %i.em = icmp ne i32 %i.ek, %i.el
  %i.en = zext i1 %i.em to i32
  %.not15.i.i = icmp eq i32 %i.en, 0
  br i1 %.not15.i.i, label %Vec_IntUniqueLookup.exit.i, label %.lr.ph.i21, !llvm.loop !47

.lr.ph.i21:                                       ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i
  %i.eo = phi i64 [ %i.ei, %.lr.ph.i.i ], [ %i.ec, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !33 ; 2 uses
  %.not.i.i22 = icmp eq i32 %i.eq, -1
  br i1 %.not.i.i22, label %Vec_IntUniqueLookup.exit.thread.i.loopexit, label %.lr.ph.i.i, !llvm.loop !47

Vec_IntUniqueLookup.exit.thread.i.loopexit:       ; preds = %.lr.ph.i21
  %i.er = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.eo
  br label %Vec_IntUniqueLookup.exit.thread.i

Vec_IntUniqueLookup.exit.thread.i:                ; preds = %Vec_IntUniqueLookup.exit.thread.i.loopexit, %bb.q
  %.0.lcssa.i2.i = phi ptr [ %i.ea, %bb.q ], [ %i.er, %Vec_IntUniqueLookup.exit.thread.i.loopexit ]
  %i.es = trunc nuw nsw i64 %indvars.iv.i20 to i32
  store i32 %i.es, ptr %.0.lcssa.i2.i, align 4, !tbaa !33
  %i.et = add nsw i32 %.07.i, 1
  br label %Vec_IntUniqueLookup.exit.i

Vec_IntUniqueLookup.exit.i:                       ; preds = %.lr.ph.i.i, %Vec_IntUniqueLookup.exit.thread.i, %.lr.ph.i.preheader.i
  %.1.i = phi i32 [ %i.et, %Vec_IntUniqueLookup.exit.thread.i ], [ %.07.i, %.lr.ph.i.preheader.i ], [ %.07.i, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i20, 1 ; 2 uses
  %exitcond.not.i24 = icmp eq i64 %indvars.iv.next.i23, %wide.trip.count.i19
  br i1 %exitcond.not.i24, label %Vec_IntUniqueCount.exit, label %bb.q, !llvm.loop !48

Vec_IntUniqueCount.exit:                          ; preds = %Vec_IntUniqueLookup.exit.i, %Gia_Iso3Save.exit.thread
  %.0.lcssa.i = phi i32 [ 0, %Gia_Iso3Save.exit.thread ], [ %.1.i, %Vec_IntUniqueLookup.exit.i ] ; 3 uses
  call void @free(ptr noundef %i.bo) #20
  call void @free(ptr noundef %i.bp) #20
  %i.eu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.01143, i32 noundef %.0.lcssa.i, i32 noundef %.val.i1861) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.ev = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #20
  %i.ew = icmp slt i32 %i.ev, 0
  br i1 %i.ew, label %Abc_Clock.exit26, label %bb.r

bb.r:                                             ; preds = %Vec_IntUniqueCount.exit
  %i.ex = load i64, ptr %1, align 8, !tbaa !51
  %i.ey = mul nsw i64 %i.ex, 1000000
  %i.ez = load i64, ptr %i.x, align 8, !tbaa !52
  %i.fa = sdiv i64 %i.ez, 1000
  %i.fb = add nsw i64 %i.fa, %i.ey
  br label %Abc_Clock.exit26

Abc_Clock.exit26:                                 ; preds = %Vec_IntUniqueCount.exit, %bb.r
  %.0.i25 = phi i64 [ %i.fb, %bb.r ], [ -1, %Vec_IntUniqueCount.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.fc = add i64 %.0.i25, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1)
  %i.fd = sitofp i64 %i.fc to double
  %i.fe = fdiv double %i.fd, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.7, double noundef %i.fe)
  %i.ff = icmp eq i32 %.0.lcssa.i, %.044
  br i1 %i.ff, label %bb.t, label %bb.s

bb.s:                                             ; preds = %Abc_Clock.exit26
  call void @Gia_Iso3Compute(ptr noundef %0, ptr noundef nonnull %i.y)
  %.not.i27 = icmp eq ptr %i.bi, null
  br i1 %.not.i27, label %Vec_IntFreeP.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.bi) #20
  br label %Vec_IntFreeP.exit

Vec_IntFreeP.exit:                                ; preds = %bb.s, %.thread.i
  call void @free(ptr noundef nonnull %i.y) #20
  %i.fg = add nuw nsw i32 %.01143, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.fg, 500
  br i1 %exitcond.not, label %Vec_IntFreeP.exit30, label %bb.f, !llvm.loop !49

bb.t:                                             ; preds = %Abc_Clock.exit26
  %.not.i28 = icmp eq ptr %i.bi, null
  br i1 %.not.i28, label %bb.u, label %.thread.i29

.thread.i29:                                      ; preds = %bb.t
  call void @free(ptr noundef nonnull %i.bi) #20
  store ptr null, ptr %i.af, align 8, !tbaa !37
  br label %bb.u

bb.u:                                             ; preds = %.thread.i29, %bb.t
  call void @free(ptr noundef nonnull %i.y) #20
  br label %Vec_IntFreeP.exit30

Vec_IntFreeP.exit30:                              ; preds = %Vec_IntFreeP.exit, %bb.u
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @Gia_Iso4Gia(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @Gia_ManLevelizeR(ptr noundef %0) #20 ; 3 uses
  %i.b = tail call i32 @Abc_Random(i32 noundef 1) #20 ; 0 uses
  %i.c = getelementptr i8, ptr %i.a, i64 4        ; 2 uses
  %.val4859 = load i32, ptr %i.c, align 4, !tbaa !41
  %i.d = icmp sgt i32 %.val4859, 0
  br i1 %i.d, label %.lr.ph61, label %.critedge

.lr.ph61:                                         ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 8
  %i.f = getelementptr i8, ptr %0, i64 32         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph61, %.critedge2
  %indvars.iv67 = phi i64 [ 0, %.lr.ph61 ], [ %indvars.iv.next68, %.critedge2 ] ; 3 uses
  %.val49 = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %.val49, i64 %indvars.iv67 ; 3 uses
  %i.h = tail call i32 @Abc_Random(i32 noundef 0) #20 ; 3 uses
  %i.i = tail call i32 @Abc_Random(i32 noundef 0) #20 ; 3 uses
  %i.j = icmp eq i64 %indvars.iv67, 0
  %i.k = getelementptr i8, ptr %i.g, i64 4        ; 2 uses
  %.val4755 = load i32, ptr %i.k, align 4, !tbaa !38 ; 2 uses
  %i.l = icmp sgt i32 %.val4755, 0                ; 2 uses
  br i1 %i.j, label %.preheader, label %.preheader51

.preheader51:                                     ; preds = %bb.b
  br i1 %i.l, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.preheader51
  %i.m = getelementptr i8, ptr %i.g, i64 8
  %.val44 = load ptr, ptr %i.m, align 8, !tbaa !37
  %.val = load ptr, ptr %i.f, align 8, !tbaa !32  ; 2 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %.critedge2, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %.val4755 to i64
  br label %.lr.ph.split

.preheader:                                       ; preds = %bb.b
  br i1 %i.l, label %.lr.ph57, label %.critedge2

.lr.ph57:                                         ; preds = %.preheader
  %i.n = getelementptr i8, ptr %i.g, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph57, %bb.d
  %indvars.iv64 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next65, %bb.d ] ; 2 uses
  %.val39 = load ptr, ptr %i.f, align 8, !tbaa !32 ; 2 uses
  %.not38 = icmp eq ptr %.val39, null
  br i1 %.not38, label %.critedge2, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val45 = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val45, i64 %indvars.iv64
  %i.p = load i32, ptr %i.o, align 4, !tbaa !33
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [12 x i8], ptr %.val39, i64 %i.q ; 3 uses
  %i.s = tail call i32 @Abc_Random(i32 noundef 0) #20 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %i.s, ptr %i.t, align 4, !tbaa !35
  %.val42 = load i64, ptr %i.r, align 4           ; 2 uses
  %i.u = and i64 %.val42, 536870912
  %.sroa.idx74.not = icmp eq i64 %i.u, 0
  %.sroa.speculated = select i1 %.sroa.idx74.not, i32 %i.h, i32 %i.i
  %i.v = add i32 %.sroa.speculated, %i.s
  %i.w = and i64 %.val42, 536870911
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [12 x i8], ptr %i.r, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !35
  %i.ab = add i32 %i.v, %i.aa
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !35
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %.val47 = load i32, ptr %i.k, align 4, !tbaa !38
  %i.ac = sext i32 %.val47 to i64
  %i.ad = icmp slt i64 %indvars.iv.next65, %i.ac
  br i1 %i.ad, label %bb.c, label %.critedge2, !llvm.loop !54

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.val44, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !33
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.ag ; 4 uses
  %.val40 = load i64, ptr %i.ah, align 4          ; 5 uses
  %i.ai = and i64 %.val40, 2147483648
  %.not.i = icmp ne i64 %i.ai, 0
  %i.aj = and i64 %.val40, 536870911              ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 536870911
  %narrow.i.not = or i1 %.not.i, %i.ak
  br i1 %narrow.i.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !35
  %i.an = and i64 %.val40, 536870912
  %.sroa.idx.not = icmp eq i64 %i.an, 0
  %.sroa.speculated83 = select i1 %.sroa.idx.not, i32 %i.h, i32 %i.i
  %i.ao = add i32 %.sroa.speculated83, %i.am
  %i.ap = sub nsw i64 0, %i.aj
  %i.aq = getelementptr inbounds [12 x i8], ptr %i.ah, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !35
  %i.at = add i32 %i.ao, %i.as
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !35
  %i.au = load i32, ptr %i.al, align 4, !tbaa !35
  %i.av = and i64 %.val40, 2305843009213693952
  %.sroa.idx70.not = icmp eq i64 %i.av, 0
  %.sroa.speculated80 = select i1 %.sroa.idx70.not, i32 %i.h, i32 %i.i
  %i.aw = add i32 %.sroa.speculated80, %i.au
  %i.ax = lshr i64 %.val40, 32
  %i.ay = and i64 %i.ax, 536870911
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [12 x i8], ptr %i.ah, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !35
  %i.bd = add i32 %i.aw, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.split, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph.split, !llvm.loop !55

.critedge2:                                       ; preds = %bb.f, %bb.d, %bb.c, %.preheader51, %.lr.ph, %.preheader
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %.val48 = load i32, ptr %i.c, align 4, !tbaa !41
  %i.be = sext i32 %.val48 to i64
  %i.bf = icmp slt i64 %indvars.iv.next68, %i.be
  br i1 %i.bf, label %bb.b, label %.critedge, !llvm.loop !56

.critedge:                                        ; preds = %.critedge2, %bb.a
  ret ptr %i.a
}

declare ptr @Gia_ManLevelizeR(ptr noundef) local_unnamed_addr #4

declare i32 @Abc_Random(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @Gia_Iso4Test(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @Gia_Iso4Gia(ptr noundef %0) ; 6 uses
  %i.b = getelementptr i8, ptr %i.a, i64 4        ; 2 uses
  %.val2328 = load i32, ptr %i.b, align 4, !tbaa !41
  %i.c = icmp sgt i32 %.val2328, 0
  br i1 %i.c, label %.lr.ph30, label %.critedge

.lr.ph30:                                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %i.e = getelementptr i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph30, %.critedge2
  %indvars.iv32 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next33, %.critedge2 ] ; 3 uses
  %.val24 = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %.val24, i64 %indvars.iv32 ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv32 to i32
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.g) ; 0 uses
  %i.i = getelementptr i8, ptr %i.f, i64 4        ; 2 uses
  %.val2225 = load i32, ptr %i.i, align 4, !tbaa !38
  %i.j = icmp sgt i32 %.val2225, 0
  br i1 %i.j, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.f, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.val = load ptr, ptr %i.e, align 8, !tbaa !32  ; 2 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %.critedge2, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val21 = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val21, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !33   ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !35
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.m, i32 noundef %i.q) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val22 = load i32, ptr %i.i, align 4, !tbaa !38
  %i.s = sext i32 %.val22 to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %bb.c, label %.critedge2, !llvm.loop !57

.critedge2:                                       ; preds = %bb.c, %bb.d, %bb.b
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %.val23 = load i32, ptr %i.b, align 4, !tbaa !41
  %i.u = sext i32 %.val23 to i64
  %i.v = icmp slt i64 %indvars.iv.next33, %i.u
  br i1 %i.v, label %bb.b, label %.critedge, !llvm.loop !58

.critedge:                                        ; preds = %.critedge2, %bb.a
  %i.w = load i32, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.y, align 8, !tbaa !42 ; 3 uses
  br i1 %i.x, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.critedge, %bb.f
  %i.z = phi i32 [ %i.ah, %bb.f ], [ %i.w, %.critedge ]
  %i.aa = phi ptr [ %i.ai, %bb.f ], [ %.pre.i.i, %.critedge ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.f ], [ 0, %.critedge ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %indvars.iv.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !37 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.ad, null
  br i1 %.not15.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef nonnull %i.ad) #20
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !42  ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %indvars.iv.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr null, ptr %i.ag, align 8, !tbaa !37
  %.pre18.i.i = load i32, ptr %i.a, align 8, !tbaa !43
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i
  %i.ah = phi i32 [ %.pre18.i.i, %bb.e ], [ %i.z, %.lr.ph.i.i ] ; 2 uses
  %i.ai = phi ptr [ %i.ae, %bb.e ], [ %i.aa, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aj = sext i32 %i.ah to i64
  %i.ak = icmp slt i64 %indvars.iv.next.i.i, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i, label %._crit_edge.thread.i.i, !llvm.loop !1

._crit_edge.i.i:                                  ; preds = %.critedge
  %.not.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i, label %Vec_WecFree.exit, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.f, %._crit_edge.i.i
  %i.al = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ai, %bb.f ]
  tail call void @free(ptr noundef nonnull %i.al) #20
  br label %Vec_WecFree.exit

Vec_WecFree.exit:                                 ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  tail call void @free(ptr noundef nonnull %i.a) #20
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Gia_IsoCollectData(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val12 = load i32, ptr %i.a, align 4, !tbaa !38 ; 3 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 5 uses
  %i.c = add i32 %.val12, -1
  %or.cond.i = icmp ult i32 %i.c, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val12 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !38
  store i32 %spec.store.select.i, ptr %i.b, align 8, !tbaa !39
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %spec.store.select.i to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #19
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !37
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = icmp sgt i32 %.val12, 0
  br i1 %i.k, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntAlloc.exit
  %i.l = getelementptr i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %i.m = phi ptr [ %i.h, %.lr.ph ], [ %i.af, %Vec_IntPush.exit ] ; 6 uses
  %i.n = phi i32 [ %spec.store.select.i, %.lr.ph ], [ %i.ag, %Vec_IntPush.exit ] ; 7 uses
  %i.o = phi i32 [ 0, %.lr.ph ], [ %i.ah, %Vec_IntPush.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 2 uses
  %.val = load ptr, ptr %i.j, align 8, !tbaa !32  ; 2 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val10 = load ptr, ptr %i.l, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val10, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !33
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !35
  %i.v = icmp eq i32 %i.o, %i.n
  br i1 %i.v, label %bb.e, label %Vec_IntPush.exit

bb.e:                                             ; preds = %bb.d
  %i.w = icmp slt i32 %i.n, 16
  br i1 %i.w, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i = icmp eq ptr %i.m, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.m, i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.f
  %i.y = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #19
  br label %Vec_IntGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.e
  %i.z = icmp samesign ult i32 %i.n, 1073741823
  %i.aa = shl nuw nsw i32 %i.n, 1
  %spec.select.i = select i1 %i.z, i32 %i.aa, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.n, %spec.select.i
  br i1 %.not.i9.i, label %bb.j, label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.i
  %.not9.i10.i = icmp eq ptr %i.m, null
  %i.ab = zext nneg i32 %spec.select.i to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.l, label %bb.k
end_hunk_0
