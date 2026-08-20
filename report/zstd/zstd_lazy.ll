inline.NumInlined: 1316
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 126
loop-unroll.NumUnrolled: 169
begin_hunk_0_@ZSTD_dedicatedDictSearch_lazy_loadDictionary:bb.a
  %.val = load i32, ptr %i.ar, align 1, !tbaa !25
  %i.at = mul i32 %.val, -1640531535
  %i.au = lshr i32 %i.at, %i.am
  %i.av = zext i32 %i.au to i64
  br label %ZSTD_hashPtr.exit141

bb.d:                                             ; preds = %bb.b
  %.val143 = load i64, ptr %i.ar, align 1, !tbaa !26
  %i.aw = mul i64 %.val143, -3523014627271114752
  %i.ax = lshr i64 %i.aw, %i.al
  br label %ZSTD_hashPtr.exit141

bb.e:                                             ; preds = %bb.b
  %.val145 = load i64, ptr %i.ar, align 1, !tbaa !26
  %i.ay = mul i64 %.val145, -3523014627193847808
  %i.az = lshr i64 %i.ay, %i.al
  br label %ZSTD_hashPtr.exit141

bb.f:                                             ; preds = %bb.b
  %.val147 = load i64, ptr %i.ar, align 1, !tbaa !26
  %i.ba = mul i64 %.val147, -3523014627193167104
  %i.bb = lshr i64 %i.ba, %i.al
  br label %ZSTD_hashPtr.exit141

bb.g:                                             ; preds = %bb.b
  %.val149 = load i64, ptr %i.ar, align 1, !tbaa !26
  %i.bc = mul i64 %.val149, -3523014627327384477
  %i.bd = lshr i64 %i.bc, %i.al
  br label %ZSTD_hashPtr.exit141

ZSTD_hashPtr.exit141:                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i140 = phi i64 [ %i.av, %bb.c ], [ %i.bd, %bb.g ], [ %i.ax, %bb.d ], [ %i.az, %bb.e ], [ %i.bb, %bb.f ]
  %.not138 = icmp samesign ult i64 %indvars.iv, %i.ao
  %.pre = and i64 %.0.i140, 4294967295            ; 2 uses
  br i1 %.not138, label %ZSTD_hashPtr.exit141._crit_edge, label %bb.h

bb.h:                                             ; preds = %ZSTD_hashPtr.exit141
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.pre
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !25
  %i.bg = sub nuw nsw i64 %indvars.iv, %i.ao
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bg
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !25
  br label %ZSTD_hashPtr.exit141._crit_edge

ZSTD_hashPtr.exit141._crit_edge:                  ; preds = %ZSTD_hashPtr.exit141, %bb.h
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.pre
  %i.bj = trunc nuw i64 %indvars.iv to i32
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bk = icmp samesign ult i64 %indvars.iv.next, %i.ap
  br i1 %i.bk, label %bb.b, label %.preheader164, !llvm.loop !27

bb.i:                                             ; preds = %.preheader164, %.thread
  %indvars.iv205 = phi i64 [ 0, %.preheader164 ], [ %indvars.iv.next206, %.thread ] ; 2 uses
  %.0122189 = phi i32 [ 0, %.preheader164 ], [ %.2124155, %.thread ] ; 5 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv205 ; 2 uses
  %.0116170 = load i32, ptr %i.bl, align 4, !tbaa !25 ; 3 uses
  %.not198 = icmp ult i32 %.0116170, %i.ah
  br i1 %.not198, label %.thread, label %.lr.ph174

.lr.ph174:                                        ; preds = %bb.i
  %i.bm = icmp ult i32 %.0116170, %i.s
  %i.bn = zext i1 %i.bm to i32
  %i.bo = sub nuw i32 %.0116170, %i.ah
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bp
  %.0116 = load i32, ptr %i.bq, align 4, !tbaa !25 ; 3 uses
  %.not = icmp ult i32 %.0116, %i.ah
  br i1 %.not, label %.thread, label %.lr.ph174.1

.lr.ph174.1:                                      ; preds = %.lr.ph174
  %i.br = icmp ult i32 %.0116, %i.s
  %i.bs = zext i1 %i.br to i32
  %spec.select.1 = add nuw nsw i32 %i.bn, %i.bs
  %i.bt = sub nuw i32 %.0116, %i.ah
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bu
  %.0116.1 = load i32, ptr %i.bv, align 4, !tbaa !25 ; 3 uses
  %.not273 = icmp ult i32 %.0116.1, %i.ah
  br i1 %.not273, label %.thread, label %.lr.ph174.2

.lr.ph174.2:                                      ; preds = %.lr.ph174.1
  %i.bw = icmp ult i32 %.0116.1, %i.s
  %i.bx = zext i1 %i.bw to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %i.bx
  %i.by = sub nuw i32 %.0116.1, %i.ah
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.bz
  %.0116.2 = load i32, ptr %i.ca, align 4, !tbaa !25
  br i1 %.not197, label %.thread, label %.lr.ph181

.lr.ph181:                                        ; preds = %.lr.ph174.2, %bb.l
  %.1180 = phi i32 [ %i.cp, %bb.l ], [ %.0116.2, %.lr.ph174.2 ] ; 5 uses
  %.2179 = phi i32 [ %.3, %bb.l ], [ %spec.select.2, %.lr.ph174.2 ] ; 2 uses
  %.1120178 = phi i32 [ %i.ch, %bb.l ], [ 0, %.lr.ph174.2 ] ; 5 uses
  %.1123177 = phi i32 [ %i.ce, %bb.l ], [ %.0122189, %.lr.ph174.2 ] ; 5 uses
  %i.cb = icmp ult i32 %.1180, %i.s
  br i1 %i.cb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph181
  %.not136 = icmp eq i32 %.1180, 0
  %i.cc = add i32 %.2179, 1                       ; 2 uses
  %i.cd = icmp ugt i32 %i.cc, 3
  %or.cond = select i1 %.not136, i1 true, i1 %i.cd
  br i1 %or.cond, label %._crit_edge182, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph181
  %.3 = phi i32 [ %i.cc, %bb.j ], [ %.2179, %.lr.ph181 ]
  %i.ce = add i32 %.1123177, 1                    ; 4 uses
  %i.cf = zext i32 %.1123177 to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.cf
  store i32 %.1180, ptr %i.cg, align 4, !tbaa !25
  %i.ch = add i32 %.1120178, 1                    ; 3 uses
  %i.ci = icmp ult i32 %.1180, %i.ah
  br i1 %i.ci, label %.thread157, label %bb.l

.thread157:                                       ; preds = %bb.k
  %i.cj = sub i32 %.1123177, %.1120178
  %i.ck = shl i32 %i.cj, 8
  %i.cl = add i32 %i.ck, %i.ch
  br label %.thread

bb.l:                                             ; preds = %bb.k
  %i.cm = sub nuw i32 %.1180, %i.ah
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !25
  %exitcond.not = icmp eq i32 %i.ch, %i.x
  br i1 %exitcond.not, label %._crit_edge182.thread241, label %.lr.ph181, !llvm.loop !29

._crit_edge182.thread241:                         ; preds = %bb.l
  %i.cq = sub i32 %i.ce, %i.x
  %i.cr = shl i32 %i.cq, 8
  %i.cs = or disjoint i32 %i.cr, %i.x
  br label %.thread

._crit_edge182:                                   ; preds = %bb.j
  %.not137 = icmp eq i32 %.1120178, 0
  %i.ct = sub i32 %.1123177, %.1120178
  %i.cu = shl i32 %i.ct, 8
  %i.cv = add i32 %i.cu, %.1120178
  %spec.select255 = select i1 %.not137, i32 0, i32 %i.cv
  br label %.thread

.thread:                                          ; preds = %.lr.ph174, %.lr.ph174.1, %._crit_edge182, %.lr.ph174.2, %bb.i, %._crit_edge182.thread241, %.thread157
  %.2124155 = phi i32 [ %i.ce, %.thread157 ], [ %.0122189, %bb.i ], [ %.0122189, %.lr.ph174.2 ], [ %i.ce, %._crit_edge182.thread241 ], [ %.1123177, %._crit_edge182 ], [ %.0122189, %.lr.ph174.1 ], [ %.0122189, %.lr.ph174 ]
  %i.cw = phi i32 [ %i.cl, %.thread157 ], [ 0, %bb.i ], [ 0, %.lr.ph174.2 ], [ %i.cs, %._crit_edge182.thread241 ], [ %spec.select255, %._crit_edge182 ], [ 0, %.lr.ph174.1 ], [ 0, %.lr.ph174 ]
  store i32 %i.cw, ptr %i.bl, align 4, !tbaa !25
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %exitcond208.not = icmp eq i64 %indvars.iv.next206, %wide.trip.count
  br i1 %exitcond208.not, label %.preheader.preheader, label %bb.i, !llvm.loop !30

.preheader.preheader:                             ; preds = %.thread
  %i.cx = shl i32 4, %i.aa
  %i.cy = add i32 %i.cx, -4                       ; 2 uses
  %i.cz = icmp eq i32 %i.aa, 0
  br i1 %i.cz, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i32 %i.aq, -2
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv212 = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next213.1, %.preheader ] ; 3 uses
  %.1126191 = phi i32 [ %i.aq, %.preheader.preheader.new ], [ %i.dt, %.preheader ] ; 2 uses
  %niter = phi i32 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.da = trunc nuw i64 %indvars.iv212 to i32
  %i.db = shl i32 %i.da, 2
  %i.dc = sub i32 %i.cy, %i.db
  %i.dd = zext i32 %i.dc to i64
  %i.de = shl nuw nsw i64 %i.dd, 2
  %scevgep = getelementptr nuw i8, ptr %i.h, i64 %i.de
  %i.df = add i32 %.1126191, -1                   ; 2 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep, i8 0, i64 12, i1 false), !tbaa !25
  %i.dj = shl i32 %i.df, 2
  %i.dk = or disjoint i32 %i.dj, 3
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dl
  store i32 %i.di, ptr %i.dm, align 4, !tbaa !25
  %i.dn = trunc i64 %indvars.iv212 to i32
  %i.do = shl i32 %i.dn, 2
  %i.dp = or disjoint i32 %i.do, 4
  %i.dq = sub i32 %i.cy, %i.dp
  %i.dr = zext i32 %i.dq to i64
  %i.ds = shl nuw nsw i64 %i.dr, 2
  %scevgep.1 = getelementptr nuw i8, ptr %i.h, i64 %i.ds
  %i.dt = add i32 %.1126191, -2                   ; 3 uses
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep.1, i8 0, i64 12, i1 false), !tbaa !25
  %i.dx = shl i32 %i.dt, 2
  %i.dy = or disjoint i32 %i.dx, 3
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dz
  store i32 %i.dw, ptr %i.ea, align 4, !tbaa !25
  %indvars.iv.next213.1 = add nuw nsw i64 %indvars.iv212, 2
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader, !llvm.loop !31

.preheader.epil.preheader:                        ; preds = %.preheader.preheader
  %lcmp.mod272 = icmp eq i32 %i.aa, 0
  tail call void @llvm.assume(i1 %lcmp.mod272)
  %i.eb = add nsw i32 %i.aq, -1
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, i8 0, i64 12, i1 false), !tbaa !25
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !25
  br label %.unr-lcssa

.unr-lcssa:                                       ; preds = %.preheader, %.preheader.epil.preheader
  %i.eg = load i32, ptr %i.n, align 4, !tbaa !21  ; 2 uses
  %i.eh = icmp ult i32 %i.eg, %i.f
  br i1 %i.eh, label %.lr.ph195, label %._crit_edge196

.lr.ph195:                                        ; preds = %.unr-lcssa
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ej = sub i32 66, %i.z
  %i.ek = zext nneg i32 %i.ej to i64              ; 4 uses
  %i.el = sub i32 34, %i.z
  %scevgep215 = getelementptr nuw i8, ptr %i.h, i64 4
  %i.em = zext i32 %i.eg to i64
  %i.en = and i64 %i.e, 4294967295
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph195, %ZSTD_hashPtr.exit
  %indvars.iv221 = phi i64 [ %i.em, %.lr.ph195 ], [ %indvars.iv.next222, %ZSTD_hashPtr.exit ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv221 ; 5 uses
  %i.ep = load i32, ptr %i.ei, align 8, !tbaa !24
  switch i32 %i.ep, label %bb.n [
    i32 8, label %bb.r
    i32 5, label %bb.o
    i32 6, label %bb.p
    i32 7, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %.val142 = load i32, ptr %i.eo, align 1, !tbaa !25
  %i.eq = mul i32 %.val142, -1640531535
  %i.er = lshr i32 %i.eq, %i.el
  %i.es = zext i32 %i.er to i64
  br label %ZSTD_hashPtr.exit

bb.o:                                             ; preds = %bb.m
  %.val144 = load i64, ptr %i.eo, align 1, !tbaa !26
  %i.et = mul i64 %.val144, -3523014627271114752
  %i.eu = lshr i64 %i.et, %i.ek
  br label %ZSTD_hashPtr.exit

bb.p:                                             ; preds = %bb.m
  %.val146 = load i64, ptr %i.eo, align 1, !tbaa !26
  %i.ev = mul i64 %.val146, -3523014627193847808
  %i.ew = lshr i64 %i.ev, %i.ek
  br label %ZSTD_hashPtr.exit

bb.q:                                             ; preds = %bb.m
  %.val148 = load i64, ptr %i.eo, align 1, !tbaa !26
  %i.ex = mul i64 %.val148, -3523014627193167104
  %i.ey = lshr i64 %i.ex, %i.ek
  br label %ZSTD_hashPtr.exit

bb.r:                                             ; preds = %bb.m
  %.val150 = load i64, ptr %i.eo, align 1, !tbaa !26
  %i.ez = mul i64 %.val150, -3523014627327384477
  %i.fa = lshr i64 %i.ez, %i.ek
  br label %ZSTD_hashPtr.exit

ZSTD_hashPtr.exit:                                ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.0.i = phi i64 [ %i.es, %bb.n ], [ %i.fa, %bb.r ], [ %i.eu, %bb.o ], [ %i.ew, %bb.p ], [ %i.ey, %bb.q ] ; 2 uses
  %i.fb = shl i64 %.0.i, 4
  %i.fc = and i64 %i.fb, 17179869168              ; 2 uses
  %scevgep216 = getelementptr nuw i8, ptr %scevgep215, i64 %i.fc
  %scevgep217 = getelementptr nuw i8, ptr %i.h, i64 %i.fc
  %i.fd = load i64, ptr %scevgep217, align 4, !tbaa !25
  store i64 %i.fd, ptr %scevgep216, align 4, !tbaa !25
  %i.fe = shl i64 %.0.i, 2
  %i.ff = and i64 %i.fe, 4294967292
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ff
  %i.fh = trunc nuw i64 %indvars.iv221 to i32
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !25
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %i.fi = icmp samesign ult i64 %indvars.iv.next222, %i.en
  br i1 %i.fi, label %bb.m, label %._crit_edge196, !llvm.loop !32

._crit_edge196:                                   ; preds = %ZSTD_hashPtr.exit, %.unr-lcssa
  store i32 %i.f, ptr %i.n, align 4, !tbaa !21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @ZSTD_insertAndFindFirstIndex(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 16 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.f = load i32, ptr %i.e, align 8, !tbaa !33   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 15 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8    ; 16 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 7 uses
  %i.n = trunc i64 %i.m to i32                    ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 6 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !21   ; 7 uses
  %i.q = icmp ult i32 %i.p, %i.n
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.s = load i32, ptr %i.r, align 4, !tbaa !34
  %notmask.i = shl nsw i32 -1, %i.s
  %i.t = xor i32 %notmask.i, -1
  %i.u = sub i32 64, %i.f
  %i.v = zext nneg i32 %i.u to i64                ; 12 uses
  %i.w = sub i32 32, %i.f                         ; 3 uses
  %i.x = zext i32 %i.p to i64                     ; 30 uses
  %i.y = and i64 %i.m, 4294967295                 ; 10 uses
  %i.z = zext nneg i32 %i.t to i64                ; 15 uses
  switch i32 %i.b, label %ZSTD_hashPtr.exit32.i.preheader [
    i32 8, label %ZSTD_hashPtr.exit32.i.us.preheader
    i32 5, label %ZSTD_hashPtr.exit32.i.us17.preheader
    i32 6, label %ZSTD_hashPtr.exit32.i.us21.preheader
    i32 7, label %ZSTD_hashPtr.exit32.i.us25.preheader
  ]

ZSTD_hashPtr.exit32.i.us25.preheader:             ; preds = %.lr.ph
  %i.aa = sub i64 %i.m, %i.x
  %.neg = add nuw nsw i64 %i.x, 1
  %xtraiter = and i64 %i.aa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ZSTD_hashPtr.exit32.i.us25.prol.loopexit, label %ZSTD_hashPtr.exit32.i.us25.prol

ZSTD_hashPtr.exit32.i.us25.prol:                  ; preds = %ZSTD_hashPtr.exit32.i.us25.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.x
  %.val10.us.prol = load i64, ptr %i.ab, align 1, !tbaa !26
  %i.ac = mul i64 %.val10.us.prol, -3523014627193167104
  %i.ad = lshr i64 %i.ac, %i.v
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25
  %i.ag = and i64 %i.x, %i.z
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ag
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !25
  store i32 %i.p, ptr %i.ae, align 4, !tbaa !25
  %indvars.iv.next.prol = add nuw nsw i64 %i.x, 1
  br label %ZSTD_hashPtr.exit32.i.us25.prol.loopexit

ZSTD_hashPtr.exit32.i.us25.prol.loopexit:         ; preds = %ZSTD_hashPtr.exit32.i.us25.prol, %ZSTD_hashPtr.exit32.i.us25.preheader
  %indvars.iv.unr = phi i64 [ %i.x, %ZSTD_hashPtr.exit32.i.us25.preheader ], [ %indvars.iv.next.prol, %ZSTD_hashPtr.exit32.i.us25.prol ]
  %i.ai = icmp eq i64 %i.y, %.neg
  br i1 %i.ai, label %._crit_edge.thread47, label %ZSTD_hashPtr.exit32.i.us25

ZSTD_hashPtr.exit32.i.us21.preheader:             ; preds = %.lr.ph
  %i.aj = sub i64 %i.m, %i.x
  %.neg56 = add nuw nsw i64 %i.x, 1
  %xtraiter48 = and i64 %i.aj, 1
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %ZSTD_hashPtr.exit32.i.us21.prol.loopexit, label %ZSTD_hashPtr.exit32.i.us21.prol

ZSTD_hashPtr.exit32.i.us21.prol:                  ; preds = %ZSTD_hashPtr.exit32.i.us21.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.x
  %.val8.us.prol = load i64, ptr %i.ak, align 1, !tbaa !26
  %i.al = mul i64 %.val8.us.prol, -3523014627193847808
  %i.am = lshr i64 %i.al, %i.v
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !25
  %i.ap = and i64 %i.x, %i.z
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ap
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !25
  store i32 %i.p, ptr %i.an, align 4, !tbaa !25
  %indvars.iv.next33.prol = add nuw nsw i64 %i.x, 1
  br label %ZSTD_hashPtr.exit32.i.us21.prol.loopexit

ZSTD_hashPtr.exit32.i.us21.prol.loopexit:         ; preds = %ZSTD_hashPtr.exit32.i.us21.prol, %ZSTD_hashPtr.exit32.i.us21.preheader
  %indvars.iv32.unr = phi i64 [ %i.x, %ZSTD_hashPtr.exit32.i.us21.preheader ], [ %indvars.iv.next33.prol, %ZSTD_hashPtr.exit32.i.us21.prol ]
  %i.ar = icmp eq i64 %i.y, %.neg56
  br i1 %i.ar, label %._crit_edge.thread46, label %ZSTD_hashPtr.exit32.i.us21

ZSTD_hashPtr.exit32.i.us17.preheader:             ; preds = %.lr.ph
  %i.as = sub i64 %i.m, %i.x
  %.neg57 = add nuw nsw i64 %i.x, 1
  %xtraiter50 = and i64 %i.as, 1
  %lcmp.mod51.not = icmp eq i64 %xtraiter50, 0
  br i1 %lcmp.mod51.not, label %ZSTD_hashPtr.exit32.i.us17.prol.loopexit, label %ZSTD_hashPtr.exit32.i.us17.prol

ZSTD_hashPtr.exit32.i.us17.prol:                  ; preds = %ZSTD_hashPtr.exit32.i.us17.preheader
end_hunk_0
begin_hunk_1_@ZSTD_HcFindBestMatch_dedicatedDictSearch_4:bb.a
  br i1 %i.ek, label %ZSTD_HcFindBestMatch.exit, label %ZSTD_count.exit.thread

ZSTD_count.exit.thread:                           ; preds = %bb.c, %bb.p, %ZSTD_count.exit
  %.1152.i = phi i64 [ %.2.i, %bb.p ], [ %.0151.i57, %ZSTD_count.exit ], [ %.0151.i57, %bb.c ] ; 3 uses
  %.not160.i = icmp ugt i32 %.0148.i58, %i.ac
  br i1 %.not160.i, label %bb.q, label %ZSTD_HcFindBestMatch.exit

bb.q:                                             ; preds = %ZSTD_count.exit.thread
  %i.el = and i32 %.0148.i58, %i.g
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.em
  %i.eo = add i32 %.0155.i56, -1                  ; 3 uses
  %.0148.i = load i32, ptr %i.en, align 4, !tbaa !25 ; 2 uses
  %i.ep = icmp uge i32 %.0148.i, %i.ab
  %i.eq = icmp ne i32 %i.eo, 0
  %i.er = and i1 %i.eq, %i.ep
  br i1 %i.er, label %bb.c, label %ZSTD_HcFindBestMatch.exit, !llvm.loop !185

ZSTD_HcFindBestMatch.exit:                        ; preds = %bb.q, %bb.p, %ZSTD_count.exit.thread, %.split53.us
  %.0155.i.lcssa = phi i32 [ %i.af, %.split53.us ], [ %.0155.i56, %ZSTD_count.exit.thread ], [ %.0155.i56, %bb.p ], [ %i.eo, %bb.q ] ; 3 uses
  %.3154.i = phi i64 [ 3, %.split53.us ], [ %.1152.i, %ZSTD_count.exit.thread ], [ %.2.i, %bb.p ], [ %.1152.i, %bb.q ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !8  ; 15 uses
  %i.eu = load ptr, ptr %i.ah, align 8, !tbaa !72 ; 3 uses
  %i.ev = load i32, ptr %i.aq, align 4, !tbaa !25
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ew
  tail call void @llvm.prefetch.p0(ptr %i.ex, i32 0, i32 3, i32 1)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !25
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fa
  tail call void @llvm.prefetch.p0(ptr %i.fb, i32 0, i32 3, i32 1)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !25
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fe
  tail call void @llvm.prefetch.p0(ptr %i.ff, i32 0, i32 3, i32 1)
  %i.fg = ptrtoint ptr %i.eu to i64
  %i.fh = ptrtoint ptr %i.et to i64
  %.neg.i.neg = sub i64 %i.fg, %i.fh
  %.neg107.i.neg = trunc i64 %.neg.i.neg to i32
  %.neg84 = sub i32 %.neg107.i.neg, %i.k          ; 2 uses
  %i.fi = tail call i32 @llvm.umin.i32(i32 %.0155.i.lcssa, i32 3) ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !25 ; 3 uses
  %i.fl = lshr i32 %i.fk, 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !19 ; 3 uses
  %i.fo = zext nneg i32 %i.fl to i64              ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fo
  tail call void @llvm.prefetch.p0(ptr %i.fp, i32 0, i32 3, i32 1)
  %.not85 = icmp eq i32 %.0155.i.lcssa, 0
  br i1 %.not85, label %._crit_edge, label %.lr.ph70

.lr.ph70:                                         ; preds = %ZSTD_HcFindBestMatch.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg45 = add i32 %i.q, 3
  %i.fr = add i32 %.neg45, %.neg84
  %wide.trip.count = zext nneg i32 %i.fi to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph70, %.thread25
  %indvars.iv96 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next97, %.thread25 ] ; 2 uses
  %.0100.i68 = phi i64 [ %.3154.i, %.lr.ph70 ], [ %.2102.i29, %.thread25 ] ; 4 uses
  %i.fs = getelementptr [4 x i8], ptr %i.aq, i64 %indvars.iv96
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !25 ; 3 uses
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fu ; 2 uses
  %.not.i5 = icmp eq i32 %i.ft, 0
  br i1 %.not.i5, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val6 = load i32, ptr %i.fv, align 1, !tbaa !25
  %i.fw = icmp eq i32 %.val6, %.val12
  br i1 %i.fw, label %bb.t, label %.thread25

bb.t:                                             ; preds = %bb.s
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.fy = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.fq, ptr noundef nonnull %i.fx, ptr noundef %2, ptr noundef %i.eu, ptr noundef %i.m)
  %i.fz = add i64 %i.fy, 4                        ; 4 uses
  %i.ga = icmp ugt i64 %i.fz, %.0100.i68
  br i1 %i.ga, label %bb.u, label %.thread25

bb.u:                                             ; preds = %bb.t
  %i.gb = sub i32 %i.fr, %i.ft
  %i.gc = zext i32 %i.gb to i64
  store i64 %i.gc, ptr %3, align 8, !tbaa !26
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 %i.fz
  %.not = icmp eq ptr %i.gd, %2
  br i1 %.not, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %.thread25

.thread25:                                        ; preds = %bb.s, %bb.t, %bb.u
  %.2102.i29 = phi i64 [ %i.fz, %bb.u ], [ %.0100.i68, %bb.t ], [ %.0100.i68, %bb.s ] ; 2 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.r, !llvm.loop !194

._crit_edge:                                      ; preds = %.thread25, %ZSTD_HcFindBestMatch.exit
  %.1104.i.lcssa = phi i32 [ 0, %ZSTD_HcFindBestMatch.exit ], [ %i.fi, %.thread25 ]
  %.0100.i.lcssa = phi i64 [ %.3154.i, %ZSTD_HcFindBestMatch.exit ], [ %.2102.i29, %.thread25 ] ; 2 uses
  %i.ge = and i32 %i.fk, 255
  %i.gf = sub i32 %.0155.i.lcssa, %.1104.i.lcssa
  %i.gg = tail call i32 @llvm.umin.i32(i32 %i.gf, i32 %i.ge) ; 4 uses
  %.not86 = icmp eq i32 %i.gg, 0
  br i1 %.not86, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %.lr.ph75.preheader

.lr.ph75.preheader:                               ; preds = %._crit_edge
  %wide.trip.count102 = zext nneg i32 %i.gg to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fo ; 9 uses
  %xtraiter131 = and i64 %wide.trip.count102, 7   ; 3 uses
  %i.gh = icmp samesign ult i32 %i.gg, 8
  br i1 %i.gh, label %.lr.ph75.epil.preheader, label %.lr.ph75.preheader.new

.lr.ph75.preheader.new:                           ; preds = %.lr.ph75.preheader
  %unroll_iter = and i64 %wide.trip.count102, 248
  br label %.lr.ph75

.lr.ph79.unr-lcssa:                               ; preds = %.lr.ph75
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.lr.ph79, label %.lr.ph75.epil.preheader

.lr.ph75.epil.preheader:                          ; preds = %.lr.ph79.unr-lcssa, %.lr.ph75.preheader
  %indvars.iv99.epil.init = phi i64 [ 0, %.lr.ph75.preheader ], [ %indvars.iv.next100.7, %.lr.ph79.unr-lcssa ]
  %lcmp.mod133 = icmp ne i64 %xtraiter131, 0
  tail call void @llvm.assume(i1 %lcmp.mod133)
  br label %.lr.ph75.epil

.lr.ph75.epil:                                    ; preds = %.lr.ph75.epil, %.lr.ph75.epil.preheader
  %indvars.iv99.epil = phi i64 [ %indvars.iv99.epil.init, %.lr.ph75.epil.preheader ], [ %indvars.iv.next100.epil, %.lr.ph75.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph75.epil.preheader ], [ %epil.iter.next, %.lr.ph75.epil ]
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99.epil
  %i.gi = load i32, ptr %gep.epil, align 4, !tbaa !25
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.gj
  tail call void @llvm.prefetch.p0(ptr %i.gk, i32 0, i32 3, i32 1)
  %indvars.iv.next100.epil = add nuw nsw i64 %indvars.iv99.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter131
  br i1 %epil.iter.cmp.not, label %.lr.ph79, label %.lr.ph75.epil, !llvm.loop !195

.lr.ph79:                                         ; preds = %.lr.ph75.epil, %.lr.ph79.unr-lcssa
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg43 = add i32 %i.q, 3
  %i.gm = add i32 %.neg43, %.neg84
  %i.gn = lshr i32 %i.fk, 8
  %i.go = zext nneg i32 %i.gn to i64
  br label %bb.v

.lr.ph75:                                         ; preds = %.lr.ph75, %.lr.ph75.preheader.new
  %indvars.iv99 = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %indvars.iv.next100.7, %.lr.ph75 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %niter.next.7, %.lr.ph75 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %i.gp = load i32, ptr %gep, align 4, !tbaa !25
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.gq
  tail call void @llvm.prefetch.p0(ptr %i.gr, i32 0, i32 3, i32 1)
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.gt = load i32, ptr %gep.1, align 4, !tbaa !25
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.gu
  tail call void @llvm.prefetch.p0(ptr %i.gv, i32 0, i32 3, i32 1)
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gx = load i32, ptr %gep.2, align 4, !tbaa !25
  %i.gy = zext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.gy
  tail call void @llvm.prefetch.p0(ptr %i.gz, i32 0, i32 3, i32 1)
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  %i.hb = load i32, ptr %gep.3, align 4, !tbaa !25
  %i.hc = zext i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.hc
  tail call void @llvm.prefetch.p0(ptr %i.hd, i32 0, i32 3, i32 1)
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hf = load i32, ptr %gep.4, align 4, !tbaa !25
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.hg
  tail call void @llvm.prefetch.p0(ptr %i.hh, i32 0, i32 3, i32 1)
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.hi, i64 20
  %i.hj = load i32, ptr %gep.5, align 4, !tbaa !25
  %i.hk = zext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.hk
  tail call void @llvm.prefetch.p0(ptr %i.hl, i32 0, i32 3, i32 1)
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.hn = load i32, ptr %gep.6, align 4, !tbaa !25
  %i.ho = zext i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ho
  tail call void @llvm.prefetch.p0(ptr %i.hp, i32 0, i32 3, i32 1)
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.hq, i64 28
  %i.hr = load i32, ptr %gep.7, align 4, !tbaa !25
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.hs
  tail call void @llvm.prefetch.p0(ptr %i.ht, i32 0, i32 3, i32 1)
  %indvars.iv.next100.7 = add nuw nsw i64 %indvars.iv99, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph79.unr-lcssa, label %.lr.ph75, !llvm.loop !196

bb.v:                                             ; preds = %.lr.ph79, %.thread35
  %indvars.iv104 = phi i64 [ %i.go, %.lr.ph79 ], [ %indvars.iv.next105, %.thread35 ] ; 2 uses
  %.1.i78 = phi i32 [ 0, %.lr.ph79 ], [ %i.ih, %.thread35 ]
  %.3.i76 = phi i64 [ %.0100.i.lcssa, %.lr.ph79 ], [ %.5.i.ph, %.thread35 ] ; 3 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv104
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !25 ; 2 uses
  %i.hw = zext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.hw ; 2 uses
  %.val8 = load i32, ptr %i.hx, align 1, !tbaa !25
  %i.hy = icmp eq i32 %.val8, %.val12
  br i1 %i.hy, label %bb.w, label %.thread35

bb.w:                                             ; preds = %bb.v
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.ia = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.gl, ptr noundef nonnull %i.hz, ptr noundef %2, ptr noundef %i.eu, ptr noundef %i.m)
  %i.ib = add i64 %i.ia, 4                        ; 4 uses
  %i.ic = icmp ugt i64 %i.ib, %.3.i76
  br i1 %i.ic, label %bb.x, label %.thread35

bb.x:                                             ; preds = %bb.w
  %i.id = sub i32 %i.gm, %i.hv
  %i.ie = zext i32 %i.id to i64
  store i64 %i.ie, ptr %3, align 8, !tbaa !26
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 %i.ib
  %i.ig = icmp eq ptr %i.if, %2
  br i1 %i.ig, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %.thread35

.thread35:                                        ; preds = %bb.v, %bb.x, %bb.w
  %.5.i.ph = phi i64 [ %i.ib, %bb.x ], [ %.3.i76, %bb.w ], [ %.3.i76, %bb.v ] ; 2 uses
  %i.ih = add nuw nsw i32 %.1.i78, 1              ; 2 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %exitcond106.not = icmp eq i32 %i.ih, %i.gg
  br i1 %exitcond106.not, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %bb.v, !llvm.loop !197

ZSTD_dedicatedDictSearch_lazy_search.exit:        ; preds = %bb.r, %bb.u, %.thread35, %bb.x, %._crit_edge
  %.2.i4 = phi i64 [ %.0100.i.lcssa, %._crit_edge ], [ %i.ib, %bb.x ], [ %.5.i.ph, %.thread35 ], [ %.0100.i68, %bb.r ], [ %i.fz, %bb.u ]
  ret i64 %.2.i4
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_HcFindBestMatch_dedicatedDictSearch_5(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.e = load i32, ptr %i.d, align 4, !tbaa !34   ; 2 uses
  %i.f = shl nuw i32 1, %i.e                      ; 2 uses
  %i.g = add i32 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !40   ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l ; 2 uses
  %i.n = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = trunc i64 %i.p to i32                    ; 8 uses
  %i.r = load i32, ptr %i.a, align 8, !tbaa !183
  %i.s = shl nuw i32 1, %i.r                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !152  ; 2 uses
  %i.v = sub i32 %i.q, %i.u
  %i.w = icmp ugt i32 %i.v, %i.s
  %i.x = sub i32 %i.q, %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !42
  %.not.i = icmp eq i32 %i.z, 0
  %i.aa = select i1 %.not.i, i1 %i.w, i1 false
  %i.ab = select i1 %i.aa, i32 %i.x, i32 %i.u     ; 2 uses
  %i.ac = tail call i32 @llvm.usub.sat.i32(i32 %i.q, i32 %i.f)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !184
  %i.af = shl nuw i32 1, %i.ae                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !71 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 264
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !23
  %.val13 = load i64, ptr %1, align 1, !tbaa !26
  %i.ak = mul i64 %.val13, -3523014627271114752   ; 2 uses
  %i.al = sub i32 66, %i.aj
  %i.am = zext nneg i32 %i.al to i64
  %i.an = lshr i64 %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !18
  %.idx = shl i64 %i.an, 4
  %i.aq = getelementptr i8, ptr %i.ap, i64 %.idx  ; 6 uses
  tail call void @llvm.prefetch.p0(ptr %i.aq, i32 0, i32 3, i32 1)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !43
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !18 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !33
  %notmask.i.i = shl nsw i32 -1, %i.e
  %i.ax = xor i32 %notmask.i.i, -1                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !21 ; 6 uses
  %i.ba = sub i32 64, %i.aw
  %i.bb = zext nneg i32 %i.ba to i64              ; 5 uses
  %.fr = freeze i32 %i.as
  %.not.i.i = icmp eq i32 %.fr, 0
  %i.bc = icmp ult i32 %i.az, %i.q                ; 2 uses
  br i1 %.not.i.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  br i1 %i.bc, label %.lr.ph.preheader, label %.split53.us

.lr.ph.preheader:                                 ; preds = %.split.us
  %i.bd = zext i32 %i.az to i64                   ; 6 uses
  %i.be = and i64 %i.p, 4294967295                ; 2 uses
  %i.bf = zext nneg i32 %i.ax to i64              ; 3 uses
  %i.bg = sub i64 %i.p, %i.bd
  %.neg = add nuw nsw i64 %i.bd, 1
  %xtraiter = and i64 %i.bg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bd
  %.val11.us.prol = load i64, ptr %i.bh, align 1, !tbaa !26
  %i.bi = mul i64 %.val11.us.prol, -3523014627271114752
  %i.bj = lshr i64 %i.bi, %i.bb
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !25
  %i.bm = and i64 %i.bd, %i.bf
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bm
  store i32 %i.bl, ptr %i.bn, align 4, !tbaa !25
  store i32 %i.az, ptr %i.bk, align 4, !tbaa !25
  %indvars.iv.next.prol = add nuw nsw i64 %i.bd, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.bd, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.bo = icmp eq i64 %i.be, %.neg
  br i1 %i.bo, label %.split53.us, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  %.val11.us = load i64, ptr %i.bp, align 1, !tbaa !26
  %i.bq = mul i64 %.val11.us, -3523014627271114752
  %i.br = lshr i64 %i.bq, %i.bb
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !25
  %i.bu = trunc nuw i64 %indvars.iv to i32
  %i.bv = and i64 %indvars.iv, %i.bf
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bv
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !25
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.next
  %.val11.us.1 = load i64, ptr %i.bx, align 1, !tbaa !26
  %i.by = mul i64 %.val11.us.1, -3523014627271114752
  %i.bz = lshr i64 %i.by, %i.bb
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !25
  %i.cc = trunc nuw i64 %indvars.iv.next to i32
  %i.cd = and i64 %indvars.iv.next, %i.bf
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cd
  store i32 %i.cb, ptr %i.ce, align 4, !tbaa !25
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !25
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cf = icmp samesign ult i64 %indvars.iv.next.1, %i.be
  br i1 %i.cf, label %.lr.ph, label %.split53.us

.split:                                           ; preds = %bb.a
  br i1 %i.bc, label %bb.b, label %.split53.us

bb.b:                                             ; preds = %.split
  %i.cg = zext i32 %i.az to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cg
  %.val11 = load i64, ptr %i.ch, align 1, !tbaa !26
  %i.ci = mul i64 %.val11, -3523014627271114752
  %i.cj = lshr i64 %i.ci, %i.bb
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !25
  %i.cm = and i32 %i.az, %i.ax
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cn
  store i32 %i.cl, ptr %i.co, align 4, !tbaa !25
  store i32 %i.az, ptr %i.ck, align 4, !tbaa !25
  br label %.split53.us

.split53.us:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.split, %bb.b, %.split.us
  store i32 %i.q, ptr %i.ay, align 4, !tbaa !21
  %i.cp = lshr i64 %i.ak, %i.bb
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.cp
  %.0148.i55 = load i32, ptr %i.cq, align 4, !tbaa !25 ; 2 uses
  %.not83 = icmp ult i32 %.0148.i55, %i.ab
  br i1 %.not83, label %ZSTD_HcFindBestMatch.exit, label %.lr.ph59

.lr.ph59:                                         ; preds = %.split53.us
  %i.cr = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.cs = icmp ult ptr %1, %i.cr
  %i.ct = getelementptr inbounds i8, ptr %2, i64 -3
end_hunk_1
begin_hunk_2_@ZSTD_HcFindBestMatch_dedicatedDictSearch_5:bb.a
ZSTD_count.exit.thread:                           ; preds = %bb.c, %bb.p, %ZSTD_count.exit
  %.1152.i = phi i64 [ %.2.i, %bb.p ], [ %.0151.i57, %ZSTD_count.exit ], [ %.0151.i57, %bb.c ] ; 3 uses
  %.not160.i = icmp ugt i32 %.0148.i58, %i.ac
  br i1 %.not160.i, label %bb.q, label %ZSTD_HcFindBestMatch.exit

bb.q:                                             ; preds = %ZSTD_count.exit.thread
  %i.eg = and i32 %.0148.i58, %i.g
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.eh
  %i.ej = add i32 %.0155.i56, -1                  ; 3 uses
  %.0148.i = load i32, ptr %i.ei, align 4, !tbaa !25 ; 2 uses
  %i.ek = icmp uge i32 %.0148.i, %i.ab
  %i.el = icmp ne i32 %i.ej, 0
  %i.em = and i1 %i.el, %i.ek
  br i1 %i.em, label %bb.c, label %ZSTD_HcFindBestMatch.exit, !llvm.loop !185

ZSTD_HcFindBestMatch.exit:                        ; preds = %bb.q, %bb.p, %ZSTD_count.exit.thread, %.split53.us
  %.0155.i.lcssa = phi i32 [ %i.af, %.split53.us ], [ %.0155.i56, %ZSTD_count.exit.thread ], [ %.0155.i56, %bb.p ], [ %i.ej, %bb.q ] ; 3 uses
  %.3154.i = phi i64 [ 3, %.split53.us ], [ %.1152.i, %ZSTD_count.exit.thread ], [ %.2.i, %bb.p ], [ %.1152.i, %bb.q ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !8  ; 15 uses
  %i.ep = load ptr, ptr %i.ah, align 8, !tbaa !72 ; 3 uses
  %i.eq = load i32, ptr %i.aq, align 4, !tbaa !25
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.er
  tail call void @llvm.prefetch.p0(ptr %i.es, i32 0, i32 3, i32 1)
  %i.et = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !25
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ev
  tail call void @llvm.prefetch.p0(ptr %i.ew, i32 0, i32 3, i32 1)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !25
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ez
  tail call void @llvm.prefetch.p0(ptr %i.fa, i32 0, i32 3, i32 1)
  %i.fb = ptrtoint ptr %i.ep to i64
  %i.fc = ptrtoint ptr %i.eo to i64
  %.neg.i.neg = sub i64 %i.fb, %i.fc
  %.neg107.i.neg = trunc i64 %.neg.i.neg to i32
  %.neg84 = sub i32 %.neg107.i.neg, %i.k          ; 2 uses
  %i.fd = tail call i32 @llvm.umin.i32(i32 %.0155.i.lcssa, i32 3) ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !25 ; 3 uses
  %i.fg = lshr i32 %i.ff, 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !19 ; 3 uses
  %i.fj = zext nneg i32 %i.fg to i64              ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fj
  tail call void @llvm.prefetch.p0(ptr %i.fk, i32 0, i32 3, i32 1)
  %.not85 = icmp eq i32 %.0155.i.lcssa, 0
  br i1 %.not85, label %._crit_edge, label %.lr.ph70

.lr.ph70:                                         ; preds = %ZSTD_HcFindBestMatch.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg45 = add i32 %i.q, 3
  %i.fm = add i32 %.neg45, %.neg84
  %wide.trip.count = zext nneg i32 %i.fd to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph70, %.thread25
  %indvars.iv96 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next97, %.thread25 ] ; 2 uses
  %.0100.i68 = phi i64 [ %.3154.i, %.lr.ph70 ], [ %.2102.i29, %.thread25 ] ; 4 uses
  %i.fn = getelementptr [4 x i8], ptr %i.aq, i64 %indvars.iv96
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !25 ; 3 uses
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fp ; 2 uses
  %.not.i5 = icmp eq i32 %i.fo, 0
  br i1 %.not.i5, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val6 = load i32, ptr %i.fq, align 1, !tbaa !25
  %.val = load i32, ptr %1, align 1, !tbaa !25
  %i.fr = icmp eq i32 %.val6, %.val
  br i1 %i.fr, label %bb.t, label %.thread25

bb.t:                                             ; preds = %bb.s
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.ft = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.fl, ptr noundef nonnull %i.fs, ptr noundef %2, ptr noundef %i.ep, ptr noundef %i.m)
  %i.fu = add i64 %i.ft, 4                        ; 4 uses
  %i.fv = icmp ugt i64 %i.fu, %.0100.i68
  br i1 %i.fv, label %bb.u, label %.thread25

bb.u:                                             ; preds = %bb.t
  %i.fw = sub i32 %i.fm, %i.fo
  %i.fx = zext i32 %i.fw to i64
  store i64 %i.fx, ptr %3, align 8, !tbaa !26
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 %i.fu
  %.not = icmp eq ptr %i.fy, %2
  br i1 %.not, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %.thread25

.thread25:                                        ; preds = %bb.s, %bb.t, %bb.u
  %.2102.i29 = phi i64 [ %i.fu, %bb.u ], [ %.0100.i68, %bb.t ], [ %.0100.i68, %bb.s ] ; 2 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.r, !llvm.loop !194

._crit_edge:                                      ; preds = %.thread25, %ZSTD_HcFindBestMatch.exit
  %.1104.i.lcssa = phi i32 [ 0, %ZSTD_HcFindBestMatch.exit ], [ %i.fd, %.thread25 ]
  %.0100.i.lcssa = phi i64 [ %.3154.i, %ZSTD_HcFindBestMatch.exit ], [ %.2102.i29, %.thread25 ] ; 2 uses
  %i.fz = and i32 %i.ff, 255
  %i.ga = sub i32 %.0155.i.lcssa, %.1104.i.lcssa
  %i.gb = tail call i32 @llvm.umin.i32(i32 %i.ga, i32 %i.fz) ; 4 uses
  %.not86 = icmp eq i32 %i.gb, 0
  br i1 %.not86, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %.lr.ph75.preheader

.lr.ph75.preheader:                               ; preds = %._crit_edge
  %wide.trip.count102 = zext nneg i32 %i.gb to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fj ; 9 uses
  %xtraiter131 = and i64 %wide.trip.count102, 7   ; 3 uses
  %i.gc = icmp samesign ult i32 %i.gb, 8
  br i1 %i.gc, label %.lr.ph75.epil.preheader, label %.lr.ph75.preheader.new

.lr.ph75.preheader.new:                           ; preds = %.lr.ph75.preheader
  %unroll_iter = and i64 %wide.trip.count102, 248
  br label %.lr.ph75

.lr.ph79.unr-lcssa:                               ; preds = %.lr.ph75
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.lr.ph79, label %.lr.ph75.epil.preheader

.lr.ph75.epil.preheader:                          ; preds = %.lr.ph79.unr-lcssa, %.lr.ph75.preheader
  %indvars.iv99.epil.init = phi i64 [ 0, %.lr.ph75.preheader ], [ %indvars.iv.next100.7, %.lr.ph79.unr-lcssa ]
  %lcmp.mod133 = icmp ne i64 %xtraiter131, 0
  tail call void @llvm.assume(i1 %lcmp.mod133)
  br label %.lr.ph75.epil

.lr.ph75.epil:                                    ; preds = %.lr.ph75.epil, %.lr.ph75.epil.preheader
  %indvars.iv99.epil = phi i64 [ %indvars.iv99.epil.init, %.lr.ph75.epil.preheader ], [ %indvars.iv.next100.epil, %.lr.ph75.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph75.epil.preheader ], [ %epil.iter.next, %.lr.ph75.epil ]
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99.epil
  %i.gd = load i32, ptr %gep.epil, align 4, !tbaa !25
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ge
  tail call void @llvm.prefetch.p0(ptr %i.gf, i32 0, i32 3, i32 1)
  %indvars.iv.next100.epil = add nuw nsw i64 %indvars.iv99.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter131
  br i1 %epil.iter.cmp.not, label %.lr.ph79, label %.lr.ph75.epil, !llvm.loop !198

.lr.ph79:                                         ; preds = %.lr.ph75.epil, %.lr.ph79.unr-lcssa
  %.val7 = load i32, ptr %1, align 1, !tbaa !25
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg43 = add i32 %i.q, 3
  %i.gh = add i32 %.neg43, %.neg84
  %i.gi = lshr i32 %i.ff, 8
  %i.gj = zext nneg i32 %i.gi to i64
  br label %bb.v

.lr.ph75:                                         ; preds = %.lr.ph75, %.lr.ph75.preheader.new
  %indvars.iv99 = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %indvars.iv.next100.7, %.lr.ph75 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %niter.next.7, %.lr.ph75 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %i.gk = load i32, ptr %gep, align 4, !tbaa !25
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gl
  tail call void @llvm.prefetch.p0(ptr %i.gm, i32 0, i32 3, i32 1)
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.go = load i32, ptr %gep.1, align 4, !tbaa !25
  %i.gp = zext i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gp
  tail call void @llvm.prefetch.p0(ptr %i.gq, i32 0, i32 3, i32 1)
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gs = load i32, ptr %gep.2, align 4, !tbaa !25
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gt
  tail call void @llvm.prefetch.p0(ptr %i.gu, i32 0, i32 3, i32 1)
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  %i.gw = load i32, ptr %gep.3, align 4, !tbaa !25
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gx
  tail call void @llvm.prefetch.p0(ptr %i.gy, i32 0, i32 3, i32 1)
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.ha = load i32, ptr %gep.4, align 4, !tbaa !25
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hb
  tail call void @llvm.prefetch.p0(ptr %i.hc, i32 0, i32 3, i32 1)
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.hd, i64 20
  %i.he = load i32, ptr %gep.5, align 4, !tbaa !25
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hf
  tail call void @llvm.prefetch.p0(ptr %i.hg, i32 0, i32 3, i32 1)
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hi = load i32, ptr %gep.6, align 4, !tbaa !25
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hj
  tail call void @llvm.prefetch.p0(ptr %i.hk, i32 0, i32 3, i32 1)
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.hl, i64 28
  %i.hm = load i32, ptr %gep.7, align 4, !tbaa !25
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hn
  tail call void @llvm.prefetch.p0(ptr %i.ho, i32 0, i32 3, i32 1)
  %indvars.iv.next100.7 = add nuw nsw i64 %indvars.iv99, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph79.unr-lcssa, label %.lr.ph75, !llvm.loop !196

bb.v:                                             ; preds = %.lr.ph79, %.thread35
  %indvars.iv104 = phi i64 [ %i.gj, %.lr.ph79 ], [ %indvars.iv.next105, %.thread35 ] ; 2 uses
  %.1.i78 = phi i32 [ 0, %.lr.ph79 ], [ %i.ic, %.thread35 ]
  %.3.i76 = phi i64 [ %.0100.i.lcssa, %.lr.ph79 ], [ %.5.i.ph, %.thread35 ] ; 3 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv104
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !25 ; 2 uses
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hr ; 2 uses
  %.val8 = load i32, ptr %i.hs, align 1, !tbaa !25
  %i.ht = icmp eq i32 %.val8, %.val7
  br i1 %i.ht, label %bb.w, label %.thread35

bb.w:                                             ; preds = %bb.v
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hv = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.gg, ptr noundef nonnull %i.hu, ptr noundef %2, ptr noundef %i.ep, ptr noundef %i.m)
  %i.hw = add i64 %i.hv, 4                        ; 4 uses
  %i.hx = icmp ugt i64 %i.hw, %.3.i76
  br i1 %i.hx, label %bb.x, label %.thread35

bb.x:                                             ; preds = %bb.w
  %i.hy = sub i32 %i.gh, %i.hq
  %i.hz = zext i32 %i.hy to i64
  store i64 %i.hz, ptr %3, align 8, !tbaa !26
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 %i.hw
  %i.ib = icmp eq ptr %i.ia, %2
  br i1 %i.ib, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %.thread35

.thread35:                                        ; preds = %bb.v, %bb.x, %bb.w
  %.5.i.ph = phi i64 [ %i.hw, %bb.x ], [ %.3.i76, %bb.w ], [ %.3.i76, %bb.v ] ; 2 uses
  %i.ic = add nuw nsw i32 %.1.i78, 1              ; 2 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %exitcond106.not = icmp eq i32 %i.ic, %i.gb
  br i1 %exitcond106.not, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %bb.v, !llvm.loop !197

ZSTD_dedicatedDictSearch_lazy_search.exit:        ; preds = %bb.r, %bb.u, %.thread35, %bb.x, %._crit_edge
  %.2.i4 = phi i64 [ %.0100.i.lcssa, %._crit_edge ], [ %i.hw, %bb.x ], [ %.5.i.ph, %.thread35 ], [ %.0100.i68, %bb.r ], [ %i.fu, %bb.u ]
  ret i64 %.2.i4
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_HcFindBestMatch_dedicatedDictSearch_6(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.e = load i32, ptr %i.d, align 4, !tbaa !34   ; 2 uses
  %i.f = shl nuw i32 1, %i.e                      ; 2 uses
  %i.g = add i32 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !40   ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l ; 2 uses
  %i.n = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = trunc i64 %i.p to i32                    ; 8 uses
  %i.r = load i32, ptr %i.a, align 8, !tbaa !183
  %i.s = shl nuw i32 1, %i.r                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !152  ; 2 uses
  %i.v = sub i32 %i.q, %i.u
  %i.w = icmp ugt i32 %i.v, %i.s
  %i.x = sub i32 %i.q, %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !42
  %.not.i = icmp eq i32 %i.z, 0
  %i.aa = select i1 %.not.i, i1 %i.w, i1 false
  %i.ab = select i1 %i.aa, i32 %i.x, i32 %i.u     ; 2 uses
  %i.ac = tail call i32 @llvm.usub.sat.i32(i32 %i.q, i32 %i.f)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !184
  %i.af = shl nuw i32 1, %i.ae                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !71 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 264
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !23
  %.val13 = load i64, ptr %1, align 1, !tbaa !26
  %i.ak = mul i64 %.val13, -3523014627193847808   ; 2 uses
  %i.al = sub i32 66, %i.aj
  %i.am = zext nneg i32 %i.al to i64
  %i.an = lshr i64 %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !18
  %.idx = shl i64 %i.an, 4
  %i.aq = getelementptr i8, ptr %i.ap, i64 %.idx  ; 6 uses
  tail call void @llvm.prefetch.p0(ptr %i.aq, i32 0, i32 3, i32 1)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !43
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !18 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !33
  %notmask.i.i = shl nsw i32 -1, %i.e
  %i.ax = xor i32 %notmask.i.i, -1                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !21 ; 6 uses
  %i.ba = sub i32 64, %i.aw
  %i.bb = zext nneg i32 %i.ba to i64              ; 5 uses
  %.fr = freeze i32 %i.as
  %.not.i.i = icmp eq i32 %.fr, 0
  %i.bc = icmp ult i32 %i.az, %i.q                ; 2 uses
  br i1 %.not.i.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  br i1 %i.bc, label %.lr.ph.preheader, label %.split53.us

.lr.ph.preheader:                                 ; preds = %.split.us
  %i.bd = zext i32 %i.az to i64                   ; 6 uses
  %i.be = and i64 %i.p, 4294967295                ; 2 uses
  %i.bf = zext nneg i32 %i.ax to i64              ; 3 uses
  %i.bg = sub i64 %i.p, %i.bd
  %.neg = add nuw nsw i64 %i.bd, 1
  %xtraiter = and i64 %i.bg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bd
  %.val11.us.prol = load i64, ptr %i.bh, align 1, !tbaa !26
  %i.bi = mul i64 %.val11.us.prol, -3523014627193847808
  %i.bj = lshr i64 %i.bi, %i.bb
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !25
  %i.bm = and i64 %i.bd, %i.bf
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bm
  store i32 %i.bl, ptr %i.bn, align 4, !tbaa !25
  store i32 %i.az, ptr %i.bk, align 4, !tbaa !25
  %indvars.iv.next.prol = add nuw nsw i64 %i.bd, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.bd, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.bo = icmp eq i64 %i.be, %.neg
  br i1 %i.bo, label %.split53.us, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  %.val11.us = load i64, ptr %i.bp, align 1, !tbaa !26
  %i.bq = mul i64 %.val11.us, -3523014627193847808
  %i.br = lshr i64 %i.bq, %i.bb
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !25
  %i.bu = trunc nuw i64 %indvars.iv to i32
  %i.bv = and i64 %indvars.iv, %i.bf
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bv
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !25
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.next
  %.val11.us.1 = load i64, ptr %i.bx, align 1, !tbaa !26
  %i.by = mul i64 %.val11.us.1, -3523014627193847808
  %i.bz = lshr i64 %i.by, %i.bb
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !25
  %i.cc = trunc nuw i64 %indvars.iv.next to i32
  %i.cd = and i64 %indvars.iv.next, %i.bf
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cd
  store i32 %i.cb, ptr %i.ce, align 4, !tbaa !25
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !25
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cf = icmp samesign ult i64 %indvars.iv.next.1, %i.be
  br i1 %i.cf, label %.lr.ph, label %.split53.us

.split:                                           ; preds = %bb.a
  br i1 %i.bc, label %bb.b, label %.split53.us

bb.b:                                             ; preds = %.split
  %i.cg = zext i32 %i.az to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cg
  %.val11 = load i64, ptr %i.ch, align 1, !tbaa !26
  %i.ci = mul i64 %.val11, -3523014627193847808
  %i.cj = lshr i64 %i.ci, %i.bb
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !25
  %i.cm = and i32 %i.az, %i.ax
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cn
  store i32 %i.cl, ptr %i.co, align 4, !tbaa !25
  store i32 %i.az, ptr %i.ck, align 4, !tbaa !25
  br label %.split53.us

.split53.us:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.split, %bb.b, %.split.us
  store i32 %i.q, ptr %i.ay, align 4, !tbaa !21
  %i.cp = lshr i64 %i.ak, %i.bb
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.cp
  %.0148.i55 = load i32, ptr %i.cq, align 4, !tbaa !25 ; 2 uses
  %.not83 = icmp ult i32 %.0148.i55, %i.ab
  br i1 %.not83, label %ZSTD_HcFindBestMatch.exit, label %.lr.ph59

.lr.ph59:                                         ; preds = %.split53.us
  %i.cr = getelementptr inbounds i8, ptr %2, i64 -7 ; 2 uses
  %i.cs = icmp ult ptr %1, %i.cr
  %i.ct = getelementptr inbounds i8, ptr %2, i64 -3
end_hunk_2
begin_hunk_3_@ZSTD_HcFindBestMatch_dedicatedDictSearch_6:bb.a
ZSTD_count.exit.thread:                           ; preds = %bb.c, %bb.p, %ZSTD_count.exit
  %.1152.i = phi i64 [ %.2.i, %bb.p ], [ %.0151.i57, %ZSTD_count.exit ], [ %.0151.i57, %bb.c ] ; 3 uses
  %.not160.i = icmp ugt i32 %.0148.i58, %i.ac
  br i1 %.not160.i, label %bb.q, label %ZSTD_HcFindBestMatch.exit

bb.q:                                             ; preds = %ZSTD_count.exit.thread
  %i.eg = and i32 %.0148.i58, %i.g
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.eh
  %i.ej = add i32 %.0155.i56, -1                  ; 3 uses
  %.0148.i = load i32, ptr %i.ei, align 4, !tbaa !25 ; 2 uses
  %i.ek = icmp uge i32 %.0148.i, %i.ab
  %i.el = icmp ne i32 %i.ej, 0
  %i.em = and i1 %i.el, %i.ek
  br i1 %i.em, label %bb.c, label %ZSTD_HcFindBestMatch.exit, !llvm.loop !185

ZSTD_HcFindBestMatch.exit:                        ; preds = %bb.q, %bb.p, %ZSTD_count.exit.thread, %.split53.us
  %.0155.i.lcssa = phi i32 [ %i.af, %.split53.us ], [ %.0155.i56, %ZSTD_count.exit.thread ], [ %.0155.i56, %bb.p ], [ %i.ej, %bb.q ] ; 3 uses
  %.3154.i = phi i64 [ 3, %.split53.us ], [ %.1152.i, %ZSTD_count.exit.thread ], [ %.2.i, %bb.p ], [ %.1152.i, %bb.q ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !8  ; 15 uses
  %i.ep = load ptr, ptr %i.ah, align 8, !tbaa !72 ; 3 uses
  %i.eq = load i32, ptr %i.aq, align 4, !tbaa !25
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.er
  tail call void @llvm.prefetch.p0(ptr %i.es, i32 0, i32 3, i32 1)
  %i.et = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !25
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ev
  tail call void @llvm.prefetch.p0(ptr %i.ew, i32 0, i32 3, i32 1)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !25
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ez
  tail call void @llvm.prefetch.p0(ptr %i.fa, i32 0, i32 3, i32 1)
  %i.fb = ptrtoint ptr %i.ep to i64
  %i.fc = ptrtoint ptr %i.eo to i64
  %.neg.i.neg = sub i64 %i.fb, %i.fc
  %.neg107.i.neg = trunc i64 %.neg.i.neg to i32
  %.neg84 = sub i32 %.neg107.i.neg, %i.k          ; 2 uses
  %i.fd = tail call i32 @llvm.umin.i32(i32 %.0155.i.lcssa, i32 3) ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !25 ; 3 uses
  %i.fg = lshr i32 %i.ff, 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !19 ; 3 uses
  %i.fj = zext nneg i32 %i.fg to i64              ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fj
  tail call void @llvm.prefetch.p0(ptr %i.fk, i32 0, i32 3, i32 1)
  %.not85 = icmp eq i32 %.0155.i.lcssa, 0
  br i1 %.not85, label %._crit_edge, label %.lr.ph70

.lr.ph70:                                         ; preds = %ZSTD_HcFindBestMatch.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg45 = add i32 %i.q, 3
  %i.fm = add i32 %.neg45, %.neg84
  %wide.trip.count = zext nneg i32 %i.fd to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph70, %.thread25
  %indvars.iv96 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next97, %.thread25 ] ; 2 uses
  %.0100.i68 = phi i64 [ %.3154.i, %.lr.ph70 ], [ %.2102.i29, %.thread25 ] ; 4 uses
  %i.fn = getelementptr [4 x i8], ptr %i.aq, i64 %indvars.iv96
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !25 ; 3 uses
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fp ; 2 uses
  %.not.i5 = icmp eq i32 %i.fo, 0
  br i1 %.not.i5, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val6 = load i32, ptr %i.fq, align 1, !tbaa !25
  %.val = load i32, ptr %1, align 1, !tbaa !25
  %i.fr = icmp eq i32 %.val6, %.val
  br i1 %i.fr, label %bb.t, label %.thread25

bb.t:                                             ; preds = %bb.s
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.ft = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.fl, ptr noundef nonnull %i.fs, ptr noundef %2, ptr noundef %i.ep, ptr noundef %i.m)
  %i.fu = add i64 %i.ft, 4                        ; 4 uses
  %i.fv = icmp ugt i64 %i.fu, %.0100.i68
  br i1 %i.fv, label %bb.u, label %.thread25

bb.u:                                             ; preds = %bb.t
  %i.fw = sub i32 %i.fm, %i.fo
  %i.fx = zext i32 %i.fw to i64
  store i64 %i.fx, ptr %3, align 8, !tbaa !26
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 %i.fu
  %.not = icmp eq ptr %i.fy, %2
  br i1 %.not, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %.thread25

.thread25:                                        ; preds = %bb.s, %bb.t, %bb.u
  %.2102.i29 = phi i64 [ %i.fu, %bb.u ], [ %.0100.i68, %bb.t ], [ %.0100.i68, %bb.s ] ; 2 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.r, !llvm.loop !194

._crit_edge:                                      ; preds = %.thread25, %ZSTD_HcFindBestMatch.exit
  %.1104.i.lcssa = phi i32 [ 0, %ZSTD_HcFindBestMatch.exit ], [ %i.fd, %.thread25 ]
  %.0100.i.lcssa = phi i64 [ %.3154.i, %ZSTD_HcFindBestMatch.exit ], [ %.2102.i29, %.thread25 ] ; 2 uses
  %i.fz = and i32 %i.ff, 255
  %i.ga = sub i32 %.0155.i.lcssa, %.1104.i.lcssa
  %i.gb = tail call i32 @llvm.umin.i32(i32 %i.ga, i32 %i.fz) ; 4 uses
  %.not86 = icmp eq i32 %i.gb, 0
  br i1 %.not86, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %.lr.ph75.preheader

.lr.ph75.preheader:                               ; preds = %._crit_edge
  %wide.trip.count102 = zext nneg i32 %i.gb to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fj ; 9 uses
  %xtraiter131 = and i64 %wide.trip.count102, 7   ; 3 uses
  %i.gc = icmp samesign ult i32 %i.gb, 8
  br i1 %i.gc, label %.lr.ph75.epil.preheader, label %.lr.ph75.preheader.new

.lr.ph75.preheader.new:                           ; preds = %.lr.ph75.preheader
  %unroll_iter = and i64 %wide.trip.count102, 248
  br label %.lr.ph75

.lr.ph79.unr-lcssa:                               ; preds = %.lr.ph75
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.lr.ph79, label %.lr.ph75.epil.preheader

.lr.ph75.epil.preheader:                          ; preds = %.lr.ph79.unr-lcssa, %.lr.ph75.preheader
  %indvars.iv99.epil.init = phi i64 [ 0, %.lr.ph75.preheader ], [ %indvars.iv.next100.7, %.lr.ph79.unr-lcssa ]
  %lcmp.mod133 = icmp ne i64 %xtraiter131, 0
  tail call void @llvm.assume(i1 %lcmp.mod133)
  br label %.lr.ph75.epil

.lr.ph75.epil:                                    ; preds = %.lr.ph75.epil, %.lr.ph75.epil.preheader
  %indvars.iv99.epil = phi i64 [ %indvars.iv99.epil.init, %.lr.ph75.epil.preheader ], [ %indvars.iv.next100.epil, %.lr.ph75.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph75.epil.preheader ], [ %epil.iter.next, %.lr.ph75.epil ]
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99.epil
  %i.gd = load i32, ptr %gep.epil, align 4, !tbaa !25
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ge
  tail call void @llvm.prefetch.p0(ptr %i.gf, i32 0, i32 3, i32 1)
  %indvars.iv.next100.epil = add nuw nsw i64 %indvars.iv99.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter131
  br i1 %epil.iter.cmp.not, label %.lr.ph79, label %.lr.ph75.epil, !llvm.loop !199

.lr.ph79:                                         ; preds = %.lr.ph75.epil, %.lr.ph79.unr-lcssa
  %.val7 = load i32, ptr %1, align 1, !tbaa !25
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg43 = add i32 %i.q, 3
  %i.gh = add i32 %.neg43, %.neg84
  %i.gi = lshr i32 %i.ff, 8
  %i.gj = zext nneg i32 %i.gi to i64
  br label %bb.v

.lr.ph75:                                         ; preds = %.lr.ph75, %.lr.ph75.preheader.new
  %indvars.iv99 = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %indvars.iv.next100.7, %.lr.ph75 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %niter.next.7, %.lr.ph75 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %i.gk = load i32, ptr %gep, align 4, !tbaa !25
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gl
  tail call void @llvm.prefetch.p0(ptr %i.gm, i32 0, i32 3, i32 1)
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.go = load i32, ptr %gep.1, align 4, !tbaa !25
  %i.gp = zext i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gp
  tail call void @llvm.prefetch.p0(ptr %i.gq, i32 0, i32 3, i32 1)
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gs = load i32, ptr %gep.2, align 4, !tbaa !25
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gt
  tail call void @llvm.prefetch.p0(ptr %i.gu, i32 0, i32 3, i32 1)
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  %i.gw = load i32, ptr %gep.3, align 4, !tbaa !25
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gx
  tail call void @llvm.prefetch.p0(ptr %i.gy, i32 0, i32 3, i32 1)
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.ha = load i32, ptr %gep.4, align 4, !tbaa !25
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hb
  tail call void @llvm.prefetch.p0(ptr %i.hc, i32 0, i32 3, i32 1)
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.hd, i64 20
  %i.he = load i32, ptr %gep.5, align 4, !tbaa !25
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hf
  tail call void @llvm.prefetch.p0(ptr %i.hg, i32 0, i32 3, i32 1)
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hi = load i32, ptr %gep.6, align 4, !tbaa !25
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hj
  tail call void @llvm.prefetch.p0(ptr %i.hk, i32 0, i32 3, i32 1)
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.hl, i64 28
  %i.hm = load i32, ptr %gep.7, align 4, !tbaa !25
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hn
  tail call void @llvm.prefetch.p0(ptr %i.ho, i32 0, i32 3, i32 1)
  %indvars.iv.next100.7 = add nuw nsw i64 %indvars.iv99, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph79.unr-lcssa, label %.lr.ph75, !llvm.loop !196

bb.v:                                             ; preds = %.lr.ph79, %.thread35
  %indvars.iv104 = phi i64 [ %i.gj, %.lr.ph79 ], [ %indvars.iv.next105, %.thread35 ] ; 2 uses
  %.1.i78 = phi i32 [ 0, %.lr.ph79 ], [ %i.ic, %.thread35 ]
  %.3.i76 = phi i64 [ %.0100.i.lcssa, %.lr.ph79 ], [ %.5.i.ph, %.thread35 ] ; 3 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv104
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !25 ; 2 uses
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hr ; 2 uses
  %.val8 = load i32, ptr %i.hs, align 1, !tbaa !25
  %i.ht = icmp eq i32 %.val8, %.val7
  br i1 %i.ht, label %bb.w, label %.thread35

bb.w:                                             ; preds = %bb.v
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hv = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.gg, ptr noundef nonnull %i.hu, ptr noundef %2, ptr noundef %i.ep, ptr noundef %i.m)
  %i.hw = add i64 %i.hv, 4                        ; 4 uses
  %i.hx = icmp ugt i64 %i.hw, %.3.i76
  br i1 %i.hx, label %bb.x, label %.thread35

bb.x:                                             ; preds = %bb.w
  %i.hy = sub i32 %i.gh, %i.hq
  %i.hz = zext i32 %i.hy to i64
  store i64 %i.hz, ptr %3, align 8, !tbaa !26
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 %i.hw
  %i.ib = icmp eq ptr %i.ia, %2
  br i1 %i.ib, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %.thread35

.thread35:                                        ; preds = %bb.v, %bb.x, %bb.w
  %.5.i.ph = phi i64 [ %i.hw, %bb.x ], [ %.3.i76, %bb.w ], [ %.3.i76, %bb.v ] ; 2 uses
  %i.ic = add nuw nsw i32 %.1.i78, 1              ; 2 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %exitcond106.not = icmp eq i32 %i.ic, %i.gb
  br i1 %exitcond106.not, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %bb.v, !llvm.loop !197

ZSTD_dedicatedDictSearch_lazy_search.exit:        ; preds = %bb.r, %bb.u, %.thread35, %bb.x, %._crit_edge
  %.2.i4 = phi i64 [ %.0100.i.lcssa, %._crit_edge ], [ %i.hw, %bb.x ], [ %.5.i.ph, %.thread35 ], [ %.0100.i68, %bb.r ], [ %i.fu, %bb.u ]
  ret i64 %.2.i4
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_4_4(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.p = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = trunc i64 %i.r to i32                    ; 10 uses
  %i.t = load i32, ptr %i.i, align 8, !tbaa !183
  %i.u = shl nuw i32 1, %i.t                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !152  ; 2 uses
  %i.x = sub i32 %i.s, %i.w
  %i.y = icmp ugt i32 %i.x, %i.u
  %i.z = sub i32 %i.s, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !42
  %.not.i = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not.i, i1 %i.y, i1 false
  %i.ad = select i1 %i.ac, i32 %i.z, i32 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !184 ; 3 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.af, i32 4)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !37 ; 2 uses
  %i.ai = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !71 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 264
  %i.am = load i32, ptr %i.al, align 8, !tbaa !23
  %.val9 = load i32, ptr %1, align 1, !tbaa !25
  %i.an = mul i32 %.val9, -1640531535             ; 2 uses
  %i.ao = sub i32 34, %i.am
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = zext i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 2                ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %i.av = icmp ugt i32 %i.af, 4
  %i.aw = add i32 %i.af, -4
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = select i1 %i.av, i32 %i.ax, i32 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !43
  %.not274.i = icmp eq i32 %i.ba, 0
  br i1 %.not274.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !21 ; 5 uses
  %i.bd = sub i32 %i.s, %i.bc
  %i.be = icmp ugt i32 %i.bd, 384
  br i1 %i.be, label %bb.c, label %ZSTD_row_update_internal.exit.i, !prof !187

bb.c:                                             ; preds = %bb.b
  %i.bf = icmp ult i32 %i.bc, -96
  br i1 %i.bf, label %.lr.ph, label %ZSTD_row_update_internalImpl.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.bg = add nuw i32 %i.bc, 96
  %i.bh = sub i32 24, %i.h
  %i.bi = zext i32 %i.bc to i64
  %wide.trip.count = zext i32 %i.bg to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.bi, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bj = load i64, ptr %i.ag, align 8, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = trunc i64 %i.bj to i32
  %.val10 = load i32, ptr %i.bl, align 1, !tbaa !25
  %i.bn = mul i32 %.val10, -1640531535
  %i.bo = xor i32 %i.bn, %i.bm
  %i.bp = lshr i32 %i.bo, %i.bh                   ; 2 uses
  %i.bq = lshr i32 %i.bp, 4
  %i.br = and i32 %i.bq, 268435440
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bs
  tail call void @llvm.prefetch.p0(ptr %i.bt, i32 0, i32 3, i32 1)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bs
  tail call void @llvm.prefetch.p0(ptr %i.bu, i32 0, i32 3, i32 1)
  %i.bv = trunc nuw i64 %indvars.iv to i32
  %i.bw = and i64 %indvars.iv, 7
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !25 ; 2 uses
  store i32 %i.bp, ptr %i.bx, align 4, !tbaa !25
  %i.bz = lshr i32 %i.by, 4
  %i.ca = and i32 %i.bz, 268435440
  %i.cb = zext nneg i32 %i.ca to i64              ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cb ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !38
  %i.cf = add i8 %i.ce, 15
  %i.cg = and i8 %i.cf, 15                        ; 2 uses
  %i.ch = zext nneg i8 %i.cg to i32
  %i.ci = icmp eq i8 %i.cg, 0
  %i.cj = select i1 %i.ci, i32 15, i32 0
  %i.ck = add nuw nsw i32 %i.cj, %i.ch            ; 2 uses
  %i.cl = trunc nuw nsw i32 %i.ck to i8
  store i8 %i.cl, ptr %i.cd, align 1, !tbaa !38
  %i.cm = trunc i32 %i.by to i8
  %i.cn = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cn
  store i8 %i.cm, ptr %i.co, align 1, !tbaa !38
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cn
  store i32 %i.bv, ptr %i.cp, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ZSTD_row_update_internalImpl.exit.i.loopexit, label %bb.d, !llvm.loop !39

ZSTD_row_update_internalImpl.exit.i.loopexit:     ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !18
  %.pre136 = load ptr, ptr %i.d, align 8, !tbaa !35
  %.pre137 = load i32, ptr %i.g, align 4, !tbaa !36
  br label %ZSTD_row_update_internalImpl.exit.i

ZSTD_row_update_internalImpl.exit.i:              ; preds = %ZSTD_row_update_internalImpl.exit.i.loopexit, %bb.c
  %i.cq = phi i32 [ %.pre137, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.h, %bb.c ] ; 4 uses
  %i.cr = phi ptr [ %.pre136, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.e, %bb.c ] ; 6 uses
  %i.cs = phi ptr [ %.pre, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.c, %bb.c ] ; 6 uses
  %i.ct = add i32 %i.s, -32                       ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cv = zext i32 %i.ct to i64                   ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cv ; 2 uses
  %i.cx = icmp ugt ptr %i.cw, %i.cu
  br i1 %i.cx, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ZSTD_row_update_internalImpl.exit.i
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = trunc i64 %i.da to i32
  %i.dc = add i32 %i.db, 1
  %i.dd = tail call i32 @llvm.umin.i32(i32 %i.dc, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ZSTD_row_update_internalImpl.exit.i
  %i.de = phi i32 [ %i.dd, %bb.e ], [ 0, %ZSTD_row_update_internalImpl.exit.i ] ; 3 uses
  %i.df = add i32 %i.de, %i.ct                    ; 2 uses
  %i.dg = icmp ult i32 %i.ct, %i.df
  br i1 %i.dg, label %.lr.ph62, label %ZSTD_row_update_internal.exit.i
end_hunk_3
begin_hunk_4_@ZSTD_RowFindBestMatch_dedicatedDictSearch_4_4:bb.a
  %i.ko = sub i32 %i.jf, %i.jh
  %i.kp = zext i32 %i.ko to i64
  store i64 %i.kp, ptr %3, align 8, !tbaa !26
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.kr = icmp eq ptr %i.kq, %2
  br i1 %i.kr, label %._crit_edge78, label %ZSTD_count.exit.thread

ZSTD_count.exit.thread:                           ; preds = %bb.l, %bb.y, %ZSTD_count.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i74, %ZSTD_count.exit ], [ %.0258.i74, %bb.l ] ; 2 uses
  %i.ks = add nuw i64 %.0248.i75, 1               ; 2 uses
  %exitcond118.not = icmp eq i64 %i.ks, %.0249.i.lcssa
  br i1 %exitcond118.not, label %._crit_edge78, label %bb.l, !llvm.loop !190

._crit_edge78:                                    ; preds = %ZSTD_count.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %ZSTD_count.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !8  ; 15 uses
  %i.kv = load ptr, ptr %i.ak, align 8, !tbaa !72 ; 3 uses
  %i.kw = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.kx = getelementptr [4 x i8], ptr %i.kw, i64 %i.ar ; 5 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !25
  %i.kz = zext i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.kz
  tail call void @llvm.prefetch.p0(ptr %i.la, i32 0, i32 3, i32 1)
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !25
  %i.ld = zext i32 %i.lc to i64
  %i.le = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.ld
  tail call void @llvm.prefetch.p0(ptr %i.le, i32 0, i32 3, i32 1)
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !25
  %i.lh = zext i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.lh
  tail call void @llvm.prefetch.p0(ptr %i.li, i32 0, i32 3, i32 1)
  %i.lj = add nuw i32 %.0262.i.lcssa, %i.ay       ; 3 uses
  %i.lk = ptrtoint ptr %i.kv to i64
  %i.ll = ptrtoint ptr %i.ku to i64
  %.neg.i.i.neg = sub i64 %i.lk, %i.ll
  %.neg107.i.i.neg = trunc i64 %.neg.i.i.neg to i32
  %.neg = sub i32 %.neg107.i.i.neg, %i.m          ; 2 uses
  %i.lm = tail call i32 @llvm.umin.i32(i32 %i.lj, i32 3) ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kx, i64 12
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !25 ; 3 uses
  %i.lp = lshr i32 %i.lo, 8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !19 ; 3 uses
  %i.ls = zext nneg i32 %i.lp to i64              ; 2 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.ls
  tail call void @llvm.prefetch.p0(ptr %i.lt, i32 0, i32 3, i32 1)
  %.not103 = icmp eq i32 %i.lj, 0
  br i1 %.not103, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge78
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg53 = add i32 %i.s, 3
  %i.lv = add i32 %.neg53, %.neg
  %wide.trip.count126 = zext nneg i32 %i.lm to i64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph87, %.thread31
  %indvars.iv123 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next124, %.thread31 ] ; 2 uses
  %.0100.i.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.2102.i.i35, %.thread31 ] ; 4 uses
  %i.lw = getelementptr [4 x i8], ptr %i.kx, i64 %indvars.iv123
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !25 ; 3 uses
  %i.ly = zext i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.ly ; 2 uses
  %.not.i.i = icmp eq i32 %i.lx, 0
  br i1 %.not.i.i, label %ZSTD_RowFindBestMatch.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val6 = load i32, ptr %i.lz, align 1, !tbaa !25
  %.val5 = load i32, ptr %1, align 1, !tbaa !25
  %i.ma = icmp eq i32 %.val6, %.val5
  br i1 %i.ma, label %bb.ab, label %.thread31

bb.ab:                                            ; preds = %bb.aa
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  %i.mc = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.lu, ptr noundef nonnull %i.mb, ptr noundef %2, ptr noundef %i.kv, ptr noundef %i.o)
  %i.md = add i64 %i.mc, 4                        ; 4 uses
  %i.me = icmp ugt i64 %i.md, %.0100.i.i84
  br i1 %i.me, label %bb.ac, label %.thread31

bb.ac:                                            ; preds = %bb.ab
  %i.mf = sub i32 %i.lv, %i.lx
  %i.mg = zext i32 %i.mf to i64
  store i64 %i.mg, ptr %3, align 8, !tbaa !26
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 %i.md
  %.not = icmp eq ptr %i.mh, %2
  br i1 %.not, label %ZSTD_RowFindBestMatch.exit, label %.thread31

.thread31:                                        ; preds = %bb.aa, %bb.ab, %bb.ac
  %.2102.i.i35 = phi i64 [ %i.md, %bb.ac ], [ %.0100.i.i84, %bb.ab ], [ %.0100.i.i84, %bb.aa ] ; 2 uses
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %._crit_edge88, label %bb.z, !llvm.loop !194

._crit_edge88:                                    ; preds = %.thread31, %._crit_edge78
  %.1104.i.i.lcssa = phi i32 [ 0, %._crit_edge78 ], [ %i.lm, %.thread31 ]
  %.0100.i.i.lcssa = phi i64 [ %.3261.i, %._crit_edge78 ], [ %.2102.i.i35, %.thread31 ] ; 2 uses
  %i.mi = and i32 %i.lo, 255
  %i.mj = sub i32 %i.lj, %.1104.i.i.lcssa
  %i.mk = tail call i32 @llvm.umin.i32(i32 %i.mj, i32 %i.mi) ; 4 uses
  %.not104 = icmp eq i32 %i.mk, 0
  br i1 %.not104, label %ZSTD_RowFindBestMatch.exit, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %._crit_edge88
  %wide.trip.count131 = zext nneg i32 %i.mk to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.ls ; 9 uses
  %xtraiter167 = and i64 %wide.trip.count131, 7   ; 3 uses
  %i.ml = icmp samesign ult i32 %i.mk, 8
  br i1 %i.ml, label %.lr.ph93.epil.preheader, label %.lr.ph93.preheader.new

.lr.ph93.preheader.new:                           ; preds = %.lr.ph93.preheader
  %unroll_iter = and i64 %wide.trip.count131, 248
  br label %.lr.ph93

.lr.ph97.unr-lcssa:                               ; preds = %.lr.ph93
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod168.not, label %.lr.ph97, label %.lr.ph93.epil.preheader

.lr.ph93.epil.preheader:                          ; preds = %.lr.ph97.unr-lcssa, %.lr.ph93.preheader
  %indvars.iv128.epil.init = phi i64 [ 0, %.lr.ph93.preheader ], [ %indvars.iv.next129.7, %.lr.ph97.unr-lcssa ]
  %lcmp.mod169 = icmp ne i64 %xtraiter167, 0
  tail call void @llvm.assume(i1 %lcmp.mod169)
  br label %.lr.ph93.epil

.lr.ph93.epil:                                    ; preds = %.lr.ph93.epil, %.lr.ph93.epil.preheader
  %indvars.iv128.epil = phi i64 [ %indvars.iv128.epil.init, %.lr.ph93.epil.preheader ], [ %indvars.iv.next129.epil, %.lr.ph93.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph93.epil.preheader ], [ %epil.iter.next, %.lr.ph93.epil ]
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128.epil
  %i.mm = load i32, ptr %gep.epil, align 4, !tbaa !25
  %i.mn = zext i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.mn
  tail call void @llvm.prefetch.p0(ptr %i.mo, i32 0, i32 3, i32 1)
  %indvars.iv.next129.epil = add nuw nsw i64 %indvars.iv128.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter167
  br i1 %epil.iter.cmp.not, label %.lr.ph97, label %.lr.ph93.epil, !llvm.loop !200

.lr.ph97:                                         ; preds = %.lr.ph93.epil, %.lr.ph97.unr-lcssa
  %.val7 = load i32, ptr %1, align 1, !tbaa !25
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg51 = add i32 %i.s, 3
  %i.mq = add i32 %.neg51, %.neg
  %i.mr = lshr i32 %i.lo, 8
  %i.ms = zext nneg i32 %i.mr to i64
  br label %bb.ad

.lr.ph93:                                         ; preds = %.lr.ph93, %.lr.ph93.preheader.new
  %indvars.iv128 = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %indvars.iv.next129.7, %.lr.ph93 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %niter.next.7, %.lr.ph93 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %i.mt = load i32, ptr %gep, align 4, !tbaa !25
  %i.mu = zext i32 %i.mt to i64
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.mu
  tail call void @llvm.prefetch.p0(ptr %i.mv, i32 0, i32 3, i32 1)
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  %i.mx = load i32, ptr %gep.1, align 4, !tbaa !25
  %i.my = zext i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.my
  tail call void @llvm.prefetch.p0(ptr %i.mz, i32 0, i32 3, i32 1)
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nb = load i32, ptr %gep.2, align 4, !tbaa !25
  %i.nc = zext i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.nc
  tail call void @llvm.prefetch.p0(ptr %i.nd, i32 0, i32 3, i32 1)
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.ne, i64 12
  %i.nf = load i32, ptr %gep.3, align 4, !tbaa !25
  %i.ng = zext i32 %i.nf to i64
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.ng
  tail call void @llvm.prefetch.p0(ptr %i.nh, i32 0, i32 3, i32 1)
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %i.nj = load i32, ptr %gep.4, align 4, !tbaa !25
  %i.nk = zext i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.nk
  tail call void @llvm.prefetch.p0(ptr %i.nl, i32 0, i32 3, i32 1)
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.nm, i64 20
  %i.nn = load i32, ptr %gep.5, align 4, !tbaa !25
  %i.no = zext i32 %i.nn to i64
  %i.np = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.no
  tail call void @llvm.prefetch.p0(ptr %i.np, i32 0, i32 3, i32 1)
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.nq, i64 24
  %i.nr = load i32, ptr %gep.6, align 4, !tbaa !25
  %i.ns = zext i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.ns
  tail call void @llvm.prefetch.p0(ptr %i.nt, i32 0, i32 3, i32 1)
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.nu, i64 28
  %i.nv = load i32, ptr %gep.7, align 4, !tbaa !25
  %i.nw = zext i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.nw
  tail call void @llvm.prefetch.p0(ptr %i.nx, i32 0, i32 3, i32 1)
  %indvars.iv.next129.7 = add nuw nsw i64 %indvars.iv128, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph97.unr-lcssa, label %.lr.ph93, !llvm.loop !196

bb.ad:                                            ; preds = %.lr.ph97, %.thread41
  %indvars.iv133 = phi i64 [ %i.ms, %.lr.ph97 ], [ %indvars.iv.next134, %.thread41 ] ; 2 uses
  %.1.i.i96 = phi i32 [ 0, %.lr.ph97 ], [ %i.ol, %.thread41 ]
  %.3.i.i94 = phi i64 [ %.0100.i.i.lcssa, %.lr.ph97 ], [ %.5.i.i.ph, %.thread41 ] ; 3 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %indvars.iv133
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !25 ; 2 uses
  %i.oa = zext i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.oa ; 2 uses
  %.val8 = load i32, ptr %i.ob, align 1, !tbaa !25
  %i.oc = icmp eq i32 %.val8, %.val7
  br i1 %i.oc, label %bb.ae, label %.thread41

bb.ae:                                            ; preds = %bb.ad
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  %i.oe = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.mp, ptr noundef nonnull %i.od, ptr noundef %2, ptr noundef %i.kv, ptr noundef %i.o)
  %i.of = add i64 %i.oe, 4                        ; 4 uses
  %i.og = icmp ugt i64 %i.of, %.3.i.i94
  br i1 %i.og, label %bb.af, label %.thread41

bb.af:                                            ; preds = %bb.ae
  %i.oh = sub i32 %i.mq, %i.nz
  %i.oi = zext i32 %i.oh to i64
  store i64 %i.oi, ptr %3, align 8, !tbaa !26
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 %i.of
  %i.ok = icmp eq ptr %i.oj, %2
  br i1 %i.ok, label %ZSTD_RowFindBestMatch.exit, label %.thread41

.thread41:                                        ; preds = %bb.ad, %bb.af, %bb.ae
  %.5.i.i.ph = phi i64 [ %i.of, %bb.af ], [ %.3.i.i94, %bb.ae ], [ %.3.i.i94, %bb.ad ] ; 2 uses
  %i.ol = add nuw nsw i32 %.1.i.i96, 1            ; 2 uses
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  %exitcond135.not = icmp eq i32 %i.ol, %i.mk
  br i1 %exitcond135.not, label %ZSTD_RowFindBestMatch.exit, label %bb.ad, !llvm.loop !197

ZSTD_RowFindBestMatch.exit:                       ; preds = %bb.z, %bb.ac, %.thread41, %bb.af, %._crit_edge88
  %.2.i.i = phi i64 [ %.0100.i.i.lcssa, %._crit_edge88 ], [ %i.of, %bb.af ], [ %.5.i.i.ph, %.thread41 ], [ %.0100.i.i84, %bb.z ], [ %i.md, %bb.ac ]
  ret i64 %.2.i.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_4_5(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.p = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = trunc i64 %i.r to i32                    ; 10 uses
  %i.t = load i32, ptr %i.i, align 8, !tbaa !183
  %i.u = shl nuw i32 1, %i.t                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !152  ; 2 uses
  %i.x = sub i32 %i.s, %i.w
  %i.y = icmp ugt i32 %i.x, %i.u
  %i.z = sub i32 %i.s, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !42
  %.not.i = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not.i, i1 %i.y, i1 false
  %i.ad = select i1 %i.ac, i32 %i.z, i32 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !184 ; 3 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.af, i32 5)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !37 ; 2 uses
  %i.ai = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !71 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 264
  %i.am = load i32, ptr %i.al, align 8, !tbaa !23
  %.val9 = load i32, ptr %1, align 1, !tbaa !25
  %i.an = mul i32 %.val9, -1640531535             ; 2 uses
  %i.ao = sub i32 34, %i.am
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = zext i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 2                ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %i.av = icmp ugt i32 %i.af, 5
  %i.aw = add i32 %i.af, -5
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = select i1 %i.av, i32 %i.ax, i32 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !43
  %.not274.i = icmp eq i32 %i.ba, 0
  br i1 %.not274.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !21 ; 5 uses
  %i.bd = sub i32 %i.s, %i.bc
  %i.be = icmp ugt i32 %i.bd, 384
  br i1 %i.be, label %bb.c, label %ZSTD_row_update_internal.exit.i, !prof !187

bb.c:                                             ; preds = %bb.b
  %i.bf = icmp ult i32 %i.bc, -96
  br i1 %i.bf, label %.lr.ph, label %ZSTD_row_update_internalImpl.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.bg = add nuw i32 %i.bc, 96
  %i.bh = sub i32 24, %i.h
  %i.bi = zext i32 %i.bc to i64
  %wide.trip.count = zext i32 %i.bg to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.bi, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bj = load i64, ptr %i.ag, align 8, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = trunc i64 %i.bj to i32
  %.val10 = load i32, ptr %i.bl, align 1, !tbaa !25
  %i.bn = mul i32 %.val10, -1640531535
  %i.bo = xor i32 %i.bn, %i.bm
  %i.bp = lshr i32 %i.bo, %i.bh                   ; 2 uses
  %i.bq = lshr i32 %i.bp, 3
  %i.br = and i32 %i.bq, 536870880
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bs ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bt, i32 0, i32 3, i32 1)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bu, i32 0, i32 3, i32 1)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bs
  tail call void @llvm.prefetch.p0(ptr %i.bv, i32 0, i32 3, i32 1)
  %i.bw = trunc nuw i64 %indvars.iv to i32
  %i.bx = and i64 %indvars.iv, 7
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bx ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !25 ; 2 uses
  store i32 %i.bp, ptr %i.by, align 4, !tbaa !25
  %i.ca = lshr i32 %i.bz, 3
  %i.cb = and i32 %i.ca, 536870880
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cc ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !38
  %i.cg = add i8 %i.cf, 31
  %i.ch = and i8 %i.cg, 31                        ; 2 uses
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = icmp eq i8 %i.ch, 0
  %i.ck = select i1 %i.cj, i32 31, i32 0
  %i.cl = add nuw nsw i32 %i.ck, %i.ci            ; 2 uses
  %i.cm = trunc nuw nsw i32 %i.cl to i8
  store i8 %i.cm, ptr %i.ce, align 1, !tbaa !38
  %i.cn = trunc i32 %i.bz to i8
  %i.co = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.co
  store i8 %i.cn, ptr %i.cp, align 1, !tbaa !38
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.co
  store i32 %i.bw, ptr %i.cq, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ZSTD_row_update_internalImpl.exit.i.loopexit, label %bb.d, !llvm.loop !39

ZSTD_row_update_internalImpl.exit.i.loopexit:     ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !18
  %.pre139 = load ptr, ptr %i.d, align 8, !tbaa !35
  %.pre140 = load i32, ptr %i.g, align 4, !tbaa !36
  br label %ZSTD_row_update_internalImpl.exit.i

ZSTD_row_update_internalImpl.exit.i:              ; preds = %ZSTD_row_update_internalImpl.exit.i.loopexit, %bb.c
  %i.cr = phi i32 [ %.pre140, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.h, %bb.c ] ; 4 uses
  %i.cs = phi ptr [ %.pre139, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.e, %bb.c ] ; 6 uses
  %i.ct = phi ptr [ %.pre, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.c, %bb.c ] ; 6 uses
  %i.cu = add i32 %i.s, -32                       ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cw = zext i32 %i.cu to i64                   ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cw ; 2 uses
  %i.cy = icmp ugt ptr %i.cx, %i.cv
  br i1 %i.cy, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ZSTD_row_update_internalImpl.exit.i
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = trunc i64 %i.db to i32
  %i.dd = add i32 %i.dc, 1
  %i.de = tail call i32 @llvm.umin.i32(i32 %i.dd, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ZSTD_row_update_internalImpl.exit.i
  %i.df = phi i32 [ %i.de, %bb.e ], [ 0, %ZSTD_row_update_internalImpl.exit.i ] ; 3 uses
  %i.dg = add i32 %i.df, %i.cu                    ; 2 uses
end_hunk_4
begin_hunk_5_@ZSTD_RowFindBestMatch_dedicatedDictSearch_4_5:bb.a
  %i.kw = sub i32 %i.jn, %i.jp
  %i.kx = zext i32 %i.kw to i64
  store i64 %i.kx, ptr %3, align 8, !tbaa !26
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.kz = icmp eq ptr %i.ky, %2
  br i1 %i.kz, label %._crit_edge78, label %ZSTD_count.exit.thread

ZSTD_count.exit.thread:                           ; preds = %bb.l, %bb.y, %ZSTD_count.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i74, %ZSTD_count.exit ], [ %.0258.i74, %bb.l ] ; 2 uses
  %i.la = add nuw i64 %.0248.i75, 1               ; 2 uses
  %exitcond121.not = icmp eq i64 %i.la, %.0249.i.lcssa
  br i1 %exitcond121.not, label %._crit_edge78, label %bb.l, !llvm.loop !190

._crit_edge78:                                    ; preds = %ZSTD_count.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %ZSTD_count.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !8  ; 15 uses
  %i.ld = load ptr, ptr %i.ak, align 8, !tbaa !72 ; 3 uses
  %i.le = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.lf = getelementptr [4 x i8], ptr %i.le, i64 %i.ar ; 5 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !25
  %i.lh = zext i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.lh
  tail call void @llvm.prefetch.p0(ptr %i.li, i32 0, i32 3, i32 1)
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !25
  %i.ll = zext i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.ll
  tail call void @llvm.prefetch.p0(ptr %i.lm, i32 0, i32 3, i32 1)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !25
  %i.lp = zext i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.lp
  tail call void @llvm.prefetch.p0(ptr %i.lq, i32 0, i32 3, i32 1)
  %i.lr = add nuw i32 %.0262.i.lcssa, %i.ay       ; 3 uses
  %i.ls = ptrtoint ptr %i.ld to i64
  %i.lt = ptrtoint ptr %i.lc to i64
  %.neg.i.i.neg = sub i64 %i.ls, %i.lt
  %.neg107.i.i.neg = trunc i64 %.neg.i.i.neg to i32
  %.neg = sub i32 %.neg107.i.i.neg, %i.m          ; 2 uses
  %i.lu = tail call i32 @llvm.umin.i32(i32 %i.lr, i32 3) ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lf, i64 12
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !25 ; 3 uses
  %i.lx = lshr i32 %i.lw, 8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !19 ; 3 uses
  %i.ma = zext nneg i32 %i.lx to i64              ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.ma
  tail call void @llvm.prefetch.p0(ptr %i.mb, i32 0, i32 3, i32 1)
  %.not103 = icmp eq i32 %i.lr, 0
  br i1 %.not103, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge78
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg53 = add i32 %i.s, 3
  %i.md = add i32 %.neg53, %.neg
  %wide.trip.count129 = zext nneg i32 %i.lu to i64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph87, %.thread31
  %indvars.iv126 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next127, %.thread31 ] ; 2 uses
  %.0100.i.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.2102.i.i35, %.thread31 ] ; 4 uses
  %i.me = getelementptr [4 x i8], ptr %i.lf, i64 %indvars.iv126
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !25 ; 3 uses
  %i.mg = zext i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.mg ; 2 uses
  %.not.i.i = icmp eq i32 %i.mf, 0
  br i1 %.not.i.i, label %ZSTD_RowFindBestMatch.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val6 = load i32, ptr %i.mh, align 1, !tbaa !25
  %.val5 = load i32, ptr %1, align 1, !tbaa !25
  %i.mi = icmp eq i32 %.val6, %.val5
  br i1 %i.mi, label %bb.ab, label %.thread31

bb.ab:                                            ; preds = %bb.aa
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 4
  %i.mk = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.mc, ptr noundef nonnull %i.mj, ptr noundef %2, ptr noundef %i.ld, ptr noundef %i.o)
  %i.ml = add i64 %i.mk, 4                        ; 4 uses
  %i.mm = icmp ugt i64 %i.ml, %.0100.i.i84
  br i1 %i.mm, label %bb.ac, label %.thread31

bb.ac:                                            ; preds = %bb.ab
  %i.mn = sub i32 %i.md, %i.mf
  %i.mo = zext i32 %i.mn to i64
  store i64 %i.mo, ptr %3, align 8, !tbaa !26
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 %i.ml
  %.not = icmp eq ptr %i.mp, %2
  br i1 %.not, label %ZSTD_RowFindBestMatch.exit, label %.thread31

.thread31:                                        ; preds = %bb.aa, %bb.ab, %bb.ac
  %.2102.i.i35 = phi i64 [ %i.ml, %bb.ac ], [ %.0100.i.i84, %bb.ab ], [ %.0100.i.i84, %bb.aa ] ; 2 uses
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %._crit_edge88, label %bb.z, !llvm.loop !194

._crit_edge88:                                    ; preds = %.thread31, %._crit_edge78
  %.1104.i.i.lcssa = phi i32 [ 0, %._crit_edge78 ], [ %i.lu, %.thread31 ]
  %.0100.i.i.lcssa = phi i64 [ %.3261.i, %._crit_edge78 ], [ %.2102.i.i35, %.thread31 ] ; 2 uses
  %i.mq = and i32 %i.lw, 255
  %i.mr = sub i32 %i.lr, %.1104.i.i.lcssa
  %i.ms = tail call i32 @llvm.umin.i32(i32 %i.mr, i32 %i.mq) ; 4 uses
  %.not104 = icmp eq i32 %i.ms, 0
  br i1 %.not104, label %ZSTD_RowFindBestMatch.exit, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %._crit_edge88
  %wide.trip.count134 = zext nneg i32 %i.ms to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.ma ; 9 uses
  %xtraiter170 = and i64 %wide.trip.count134, 7   ; 3 uses
  %i.mt = icmp samesign ult i32 %i.ms, 8
  br i1 %i.mt, label %.lr.ph93.epil.preheader, label %.lr.ph93.preheader.new

.lr.ph93.preheader.new:                           ; preds = %.lr.ph93.preheader
  %unroll_iter = and i64 %wide.trip.count134, 248
  br label %.lr.ph93

.lr.ph97.unr-lcssa:                               ; preds = %.lr.ph93
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  br i1 %lcmp.mod171.not, label %.lr.ph97, label %.lr.ph93.epil.preheader

.lr.ph93.epil.preheader:                          ; preds = %.lr.ph97.unr-lcssa, %.lr.ph93.preheader
  %indvars.iv131.epil.init = phi i64 [ 0, %.lr.ph93.preheader ], [ %indvars.iv.next132.7, %.lr.ph97.unr-lcssa ]
  %lcmp.mod172 = icmp ne i64 %xtraiter170, 0
  tail call void @llvm.assume(i1 %lcmp.mod172)
  br label %.lr.ph93.epil

.lr.ph93.epil:                                    ; preds = %.lr.ph93.epil, %.lr.ph93.epil.preheader
  %indvars.iv131.epil = phi i64 [ %indvars.iv131.epil.init, %.lr.ph93.epil.preheader ], [ %indvars.iv.next132.epil, %.lr.ph93.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph93.epil.preheader ], [ %epil.iter.next, %.lr.ph93.epil ]
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131.epil
  %i.mu = load i32, ptr %gep.epil, align 4, !tbaa !25
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.mv
  tail call void @llvm.prefetch.p0(ptr %i.mw, i32 0, i32 3, i32 1)
  %indvars.iv.next132.epil = add nuw nsw i64 %indvars.iv131.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter170
  br i1 %epil.iter.cmp.not, label %.lr.ph97, label %.lr.ph93.epil, !llvm.loop !201

.lr.ph97:                                         ; preds = %.lr.ph93.epil, %.lr.ph97.unr-lcssa
  %.val7 = load i32, ptr %1, align 1, !tbaa !25
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg51 = add i32 %i.s, 3
  %i.my = add i32 %.neg51, %.neg
  %i.mz = lshr i32 %i.lw, 8
  %i.na = zext nneg i32 %i.mz to i64
  br label %bb.ad

.lr.ph93:                                         ; preds = %.lr.ph93, %.lr.ph93.preheader.new
  %indvars.iv131 = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %indvars.iv.next132.7, %.lr.ph93 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %niter.next.7, %.lr.ph93 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %i.nb = load i32, ptr %gep, align 4, !tbaa !25
  %i.nc = zext i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.nc
  tail call void @llvm.prefetch.p0(ptr %i.nd, i32 0, i32 3, i32 1)
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.ne, i64 4
  %i.nf = load i32, ptr %gep.1, align 4, !tbaa !25
  %i.ng = zext i32 %i.nf to i64
  %i.nh = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.ng
  tail call void @llvm.prefetch.p0(ptr %i.nh, i32 0, i32 3, i32 1)
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nj = load i32, ptr %gep.2, align 4, !tbaa !25
  %i.nk = zext i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.nk
  tail call void @llvm.prefetch.p0(ptr %i.nl, i32 0, i32 3, i32 1)
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.nm, i64 12
  %i.nn = load i32, ptr %gep.3, align 4, !tbaa !25
  %i.no = zext i32 %i.nn to i64
  %i.np = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.no
  tail call void @llvm.prefetch.p0(ptr %i.np, i32 0, i32 3, i32 1)
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %i.nr = load i32, ptr %gep.4, align 4, !tbaa !25
  %i.ns = zext i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.ns
  tail call void @llvm.prefetch.p0(ptr %i.nt, i32 0, i32 3, i32 1)
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.nu, i64 20
  %i.nv = load i32, ptr %gep.5, align 4, !tbaa !25
  %i.nw = zext i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.nw
  tail call void @llvm.prefetch.p0(ptr %i.nx, i32 0, i32 3, i32 1)
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.ny, i64 24
  %i.nz = load i32, ptr %gep.6, align 4, !tbaa !25
  %i.oa = zext i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.oa
  tail call void @llvm.prefetch.p0(ptr %i.ob, i32 0, i32 3, i32 1)
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.oc, i64 28
  %i.od = load i32, ptr %gep.7, align 4, !tbaa !25
  %i.oe = zext i32 %i.od to i64
  %i.of = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.oe
  tail call void @llvm.prefetch.p0(ptr %i.of, i32 0, i32 3, i32 1)
  %indvars.iv.next132.7 = add nuw nsw i64 %indvars.iv131, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph97.unr-lcssa, label %.lr.ph93, !llvm.loop !196

bb.ad:                                            ; preds = %.lr.ph97, %.thread41
  %indvars.iv136 = phi i64 [ %i.na, %.lr.ph97 ], [ %indvars.iv.next137, %.thread41 ] ; 2 uses
  %.1.i.i96 = phi i32 [ 0, %.lr.ph97 ], [ %i.ot, %.thread41 ]
  %.3.i.i94 = phi i64 [ %.0100.i.i.lcssa, %.lr.ph97 ], [ %.5.i.i.ph, %.thread41 ] ; 3 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %indvars.iv136
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !25 ; 2 uses
  %i.oi = zext i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.oi ; 2 uses
  %.val8 = load i32, ptr %i.oj, align 1, !tbaa !25
  %i.ok = icmp eq i32 %.val8, %.val7
  br i1 %i.ok, label %bb.ae, label %.thread41

bb.ae:                                            ; preds = %bb.ad
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  %i.om = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.mx, ptr noundef nonnull %i.ol, ptr noundef %2, ptr noundef %i.ld, ptr noundef %i.o)
  %i.on = add i64 %i.om, 4                        ; 4 uses
  %i.oo = icmp ugt i64 %i.on, %.3.i.i94
  br i1 %i.oo, label %bb.af, label %.thread41

bb.af:                                            ; preds = %bb.ae
  %i.op = sub i32 %i.my, %i.oh
  %i.oq = zext i32 %i.op to i64
  store i64 %i.oq, ptr %3, align 8, !tbaa !26
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 %i.on
  %i.os = icmp eq ptr %i.or, %2
  br i1 %i.os, label %ZSTD_RowFindBestMatch.exit, label %.thread41

.thread41:                                        ; preds = %bb.ad, %bb.af, %bb.ae
  %.5.i.i.ph = phi i64 [ %i.on, %bb.af ], [ %.3.i.i94, %bb.ae ], [ %.3.i.i94, %bb.ad ] ; 2 uses
  %i.ot = add nuw nsw i32 %.1.i.i96, 1            ; 2 uses
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  %exitcond138.not = icmp eq i32 %i.ot, %i.ms
  br i1 %exitcond138.not, label %ZSTD_RowFindBestMatch.exit, label %bb.ad, !llvm.loop !197

ZSTD_RowFindBestMatch.exit:                       ; preds = %bb.z, %bb.ac, %.thread41, %bb.af, %._crit_edge88
  %.2.i.i = phi i64 [ %.0100.i.i.lcssa, %._crit_edge88 ], [ %i.on, %bb.af ], [ %.5.i.i.ph, %.thread41 ], [ %.0100.i.i84, %bb.z ], [ %i.ml, %bb.ac ]
  ret i64 %.2.i.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_4_6(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.p = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = trunc i64 %i.r to i32                    ; 10 uses
  %i.t = load i32, ptr %i.i, align 8, !tbaa !183
  %i.u = shl nuw i32 1, %i.t                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !152  ; 2 uses
  %i.x = sub i32 %i.s, %i.w
  %i.y = icmp ugt i32 %i.x, %i.u
  %i.z = sub i32 %i.s, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !42
  %.not.i = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not.i, i1 %i.y, i1 false
  %i.ad = select i1 %i.ac, i32 %i.z, i32 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !184 ; 3 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.af, i32 6)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !37 ; 2 uses
  %i.ai = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !71 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 264
  %i.am = load i32, ptr %i.al, align 8, !tbaa !23
  %.val9 = load i32, ptr %1, align 1, !tbaa !25
  %i.an = mul i32 %.val9, -1640531535             ; 2 uses
  %i.ao = sub i32 34, %i.am
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = zext i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 2                ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %i.av = icmp ugt i32 %i.af, 6
  %i.aw = add i32 %i.af, -6
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = select i1 %i.av, i32 %i.ax, i32 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !43
  %.not274.i = icmp eq i32 %i.ba, 0
  br i1 %.not274.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !21 ; 5 uses
  %i.bd = sub i32 %i.s, %i.bc
  %i.be = icmp ugt i32 %i.bd, 384
  br i1 %i.be, label %bb.c, label %ZSTD_row_update_internal.exit.i, !prof !187

bb.c:                                             ; preds = %bb.b
  %i.bf = icmp ult i32 %i.bc, -96
  br i1 %i.bf, label %.lr.ph, label %ZSTD_row_update_internalImpl.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.bg = add nuw i32 %i.bc, 96
  %i.bh = sub i32 24, %i.h
  %i.bi = zext i32 %i.bc to i64
  %wide.trip.count = zext i32 %i.bg to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.bi, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bj = load i64, ptr %i.ag, align 8, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = trunc i64 %i.bj to i32
  %.val10 = load i32, ptr %i.bl, align 1, !tbaa !25
  %i.bn = mul i32 %.val10, -1640531535
  %i.bo = xor i32 %i.bn, %i.bm
  %i.bp = lshr i32 %i.bo, %i.bh                   ; 2 uses
  %i.bq = lshr i32 %i.bp, 2
  %i.br = and i32 %i.bq, 1073741760
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bs ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bt, i32 0, i32 3, i32 1)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bu, i32 0, i32 3, i32 1)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bs ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bv, i32 0, i32 3, i32 1)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bw, i32 0, i32 3, i32 1)
  %i.bx = trunc nuw i64 %indvars.iv to i32
  %i.by = and i64 %indvars.iv, 7
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !25 ; 2 uses
  store i32 %i.bp, ptr %i.bz, align 4, !tbaa !25
  %i.cb = lshr i32 %i.ca, 2
  %i.cc = and i32 %i.cb, 1073741760
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cd ; 3 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !38
  %i.ch = add i8 %i.cg, 63
  %i.ci = and i8 %i.ch, 63                        ; 2 uses
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = icmp eq i8 %i.ci, 0
  %i.cl = select i1 %i.ck, i32 63, i32 0
  %i.cm = add nuw nsw i32 %i.cl, %i.cj            ; 2 uses
  %i.cn = trunc nuw nsw i32 %i.cm to i8
  store i8 %i.cn, ptr %i.cf, align 1, !tbaa !38
  %i.co = trunc i32 %i.ca to i8
  %i.cp = zext nneg i32 %i.cm to i64              ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cp
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !38
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cp
  store i32 %i.bx, ptr %i.cr, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ZSTD_row_update_internalImpl.exit.i.loopexit, label %bb.d, !llvm.loop !39

ZSTD_row_update_internalImpl.exit.i.loopexit:     ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !18
  %.pre140 = load ptr, ptr %i.d, align 8, !tbaa !35
  %.pre141 = load i32, ptr %i.g, align 4, !tbaa !36
  br label %ZSTD_row_update_internalImpl.exit.i

ZSTD_row_update_internalImpl.exit.i:              ; preds = %ZSTD_row_update_internalImpl.exit.i.loopexit, %bb.c
  %i.cs = phi i32 [ %.pre141, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.h, %bb.c ] ; 3 uses
  %i.ct = phi ptr [ %.pre140, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.e, %bb.c ] ; 3 uses
  %i.cu = phi ptr [ %.pre, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.c, %bb.c ] ; 3 uses
  %i.cv = add i32 %i.s, -32                       ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cx = zext i32 %i.cv to i64                   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cx ; 2 uses
  %i.cz = icmp ugt ptr %i.cy, %i.cw
  br i1 %i.cz, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ZSTD_row_update_internalImpl.exit.i
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = trunc i64 %i.dc to i32
  %i.de = add i32 %i.dd, 1
  %i.df = tail call i32 @llvm.umin.i32(i32 %i.de, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ZSTD_row_update_internalImpl.exit.i
end_hunk_5
begin_hunk_6_@ZSTD_RowFindBestMatch_dedicatedDictSearch_4_6:bb.a
  %i.kp = sub i32 %i.jg, %i.ji
  %i.kq = zext i32 %i.kp to i64
  store i64 %i.kq, ptr %3, align 8, !tbaa !26
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.ks = icmp eq ptr %i.kr, %2
  br i1 %i.ks, label %._crit_edge78, label %ZSTD_count.exit.thread

ZSTD_count.exit.thread:                           ; preds = %bb.m, %bb.z, %ZSTD_count.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.z ], [ %.0258.i74, %ZSTD_count.exit ], [ %.0258.i74, %bb.m ] ; 2 uses
  %i.kt = add nuw i64 %.0248.i75, 1               ; 2 uses
  %exitcond122.not = icmp eq i64 %i.kt, %.0249.i.lcssa
  br i1 %exitcond122.not, label %._crit_edge78, label %bb.m, !llvm.loop !190

._crit_edge78:                                    ; preds = %ZSTD_count.exit.thread, %bb.z, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.z ], [ %.2260.i.ph, %ZSTD_count.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !8  ; 15 uses
  %i.kw = load ptr, ptr %i.ak, align 8, !tbaa !72 ; 3 uses
  %i.kx = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.ky = getelementptr [4 x i8], ptr %i.kx, i64 %i.ar ; 5 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !25
  %i.la = zext i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.la
  tail call void @llvm.prefetch.p0(ptr %i.lb, i32 0, i32 3, i32 1)
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !25
  %i.le = zext i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.le
  tail call void @llvm.prefetch.p0(ptr %i.lf, i32 0, i32 3, i32 1)
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !25
  %i.li = zext i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.li
  tail call void @llvm.prefetch.p0(ptr %i.lj, i32 0, i32 3, i32 1)
  %i.lk = add nuw i32 %.0262.i.lcssa, %i.ay       ; 3 uses
  %i.ll = ptrtoint ptr %i.kw to i64
  %i.lm = ptrtoint ptr %i.kv to i64
  %.neg.i.i.neg = sub i64 %i.ll, %i.lm
  %.neg107.i.i.neg = trunc i64 %.neg.i.i.neg to i32
  %.neg = sub i32 %.neg107.i.i.neg, %i.m          ; 2 uses
  %i.ln = tail call i32 @llvm.umin.i32(i32 %i.lk, i32 3) ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !25 ; 3 uses
  %i.lq = lshr i32 %i.lp, 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !19 ; 3 uses
  %i.lt = zext nneg i32 %i.lq to i64              ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lt
  tail call void @llvm.prefetch.p0(ptr %i.lu, i32 0, i32 3, i32 1)
  %.not103 = icmp eq i32 %i.lk, 0
  br i1 %.not103, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge78
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg53 = add i32 %i.s, 3
  %i.lw = add i32 %.neg53, %.neg
  %wide.trip.count130 = zext nneg i32 %i.ln to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph87, %.thread31
  %indvars.iv127 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next128, %.thread31 ] ; 2 uses
  %.0100.i.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.2102.i.i35, %.thread31 ] ; 4 uses
  %i.lx = getelementptr [4 x i8], ptr %i.ky, i64 %indvars.iv127
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !25 ; 3 uses
  %i.lz = zext i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.lz ; 2 uses
  %.not.i.i = icmp eq i32 %i.ly, 0
  br i1 %.not.i.i, label %ZSTD_RowFindBestMatch.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val6 = load i32, ptr %i.ma, align 1, !tbaa !25
  %.val5 = load i32, ptr %1, align 1, !tbaa !25
  %i.mb = icmp eq i32 %.val6, %.val5
  br i1 %i.mb, label %bb.ac, label %.thread31

bb.ac:                                            ; preds = %bb.ab
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.md = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.lv, ptr noundef nonnull %i.mc, ptr noundef %2, ptr noundef %i.kw, ptr noundef %i.o)
  %i.me = add i64 %i.md, 4                        ; 4 uses
  %i.mf = icmp ugt i64 %i.me, %.0100.i.i84
  br i1 %i.mf, label %bb.ad, label %.thread31

bb.ad:                                            ; preds = %bb.ac
  %i.mg = sub i32 %i.lw, %i.ly
  %i.mh = zext i32 %i.mg to i64
  store i64 %i.mh, ptr %3, align 8, !tbaa !26
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 %i.me
  %.not = icmp eq ptr %i.mi, %2
  br i1 %.not, label %ZSTD_RowFindBestMatch.exit, label %.thread31

.thread31:                                        ; preds = %bb.ab, %bb.ac, %bb.ad
  %.2102.i.i35 = phi i64 [ %i.me, %bb.ad ], [ %.0100.i.i84, %bb.ac ], [ %.0100.i.i84, %bb.ab ] ; 2 uses
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %._crit_edge88, label %bb.aa, !llvm.loop !194

._crit_edge88:                                    ; preds = %.thread31, %._crit_edge78
  %.1104.i.i.lcssa = phi i32 [ 0, %._crit_edge78 ], [ %i.ln, %.thread31 ]
  %.0100.i.i.lcssa = phi i64 [ %.3261.i, %._crit_edge78 ], [ %.2102.i.i35, %.thread31 ] ; 2 uses
  %i.mj = and i32 %i.lp, 255
  %i.mk = sub i32 %i.lk, %.1104.i.i.lcssa
  %i.ml = tail call i32 @llvm.umin.i32(i32 %i.mk, i32 %i.mj) ; 4 uses
  %.not104 = icmp eq i32 %i.ml, 0
  br i1 %.not104, label %ZSTD_RowFindBestMatch.exit, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %._crit_edge88
  %wide.trip.count135 = zext nneg i32 %i.ml to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lt ; 9 uses
  %xtraiter = and i64 %wide.trip.count135, 7      ; 3 uses
  %i.mm = icmp samesign ult i32 %i.ml, 8
  br i1 %i.mm, label %.lr.ph93.epil.preheader, label %.lr.ph93.preheader.new

.lr.ph93.preheader.new:                           ; preds = %.lr.ph93.preheader
  %unroll_iter = and i64 %wide.trip.count135, 248
  br label %.lr.ph93

.lr.ph97.unr-lcssa:                               ; preds = %.lr.ph93
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph97, label %.lr.ph93.epil.preheader

.lr.ph93.epil.preheader:                          ; preds = %.lr.ph97.unr-lcssa, %.lr.ph93.preheader
  %indvars.iv132.epil.init = phi i64 [ 0, %.lr.ph93.preheader ], [ %indvars.iv.next133.7, %.lr.ph97.unr-lcssa ]
  %lcmp.mod171 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod171)
  br label %.lr.ph93.epil

.lr.ph93.epil:                                    ; preds = %.lr.ph93.epil, %.lr.ph93.epil.preheader
  %indvars.iv132.epil = phi i64 [ %indvars.iv132.epil.init, %.lr.ph93.epil.preheader ], [ %indvars.iv.next133.epil, %.lr.ph93.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph93.epil.preheader ], [ %epil.iter.next, %.lr.ph93.epil ]
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132.epil
  %i.mn = load i32, ptr %gep.epil, align 4, !tbaa !25
  %i.mo = zext i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mo
  tail call void @llvm.prefetch.p0(ptr %i.mp, i32 0, i32 3, i32 1)
  %indvars.iv.next133.epil = add nuw nsw i64 %indvars.iv132.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph97, label %.lr.ph93.epil, !llvm.loop !202

.lr.ph97:                                         ; preds = %.lr.ph93.epil, %.lr.ph97.unr-lcssa
  %.val7 = load i32, ptr %1, align 1, !tbaa !25
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg51 = add i32 %i.s, 3
  %i.mr = add i32 %.neg51, %.neg
  %i.ms = lshr i32 %i.lp, 8
  %i.mt = zext nneg i32 %i.ms to i64
  br label %bb.ae

.lr.ph93:                                         ; preds = %.lr.ph93, %.lr.ph93.preheader.new
  %indvars.iv132 = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %indvars.iv.next133.7, %.lr.ph93 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %niter.next.7, %.lr.ph93 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %i.mu = load i32, ptr %gep, align 4, !tbaa !25
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mv
  tail call void @llvm.prefetch.p0(ptr %i.mw, i32 0, i32 3, i32 1)
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  %i.my = load i32, ptr %gep.1, align 4, !tbaa !25
  %i.mz = zext i32 %i.my to i64
  %i.na = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mz
  tail call void @llvm.prefetch.p0(ptr %i.na, i32 0, i32 3, i32 1)
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nc = load i32, ptr %gep.2, align 4, !tbaa !25
  %i.nd = zext i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nd
  tail call void @llvm.prefetch.p0(ptr %i.ne, i32 0, i32 3, i32 1)
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.nf, i64 12
  %i.ng = load i32, ptr %gep.3, align 4, !tbaa !25
  %i.nh = zext i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nh
  tail call void @llvm.prefetch.p0(ptr %i.ni, i32 0, i32 3, i32 1)
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nk = load i32, ptr %gep.4, align 4, !tbaa !25
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nl
  tail call void @llvm.prefetch.p0(ptr %i.nm, i32 0, i32 3, i32 1)
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.nn, i64 20
  %i.no = load i32, ptr %gep.5, align 4, !tbaa !25
  %i.np = zext i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.np
  tail call void @llvm.prefetch.p0(ptr %i.nq, i32 0, i32 3, i32 1)
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  %i.ns = load i32, ptr %gep.6, align 4, !tbaa !25
  %i.nt = zext i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nt
  tail call void @llvm.prefetch.p0(ptr %i.nu, i32 0, i32 3, i32 1)
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.nv, i64 28
  %i.nw = load i32, ptr %gep.7, align 4, !tbaa !25
  %i.nx = zext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nx
  tail call void @llvm.prefetch.p0(ptr %i.ny, i32 0, i32 3, i32 1)
  %indvars.iv.next133.7 = add nuw nsw i64 %indvars.iv132, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph97.unr-lcssa, label %.lr.ph93, !llvm.loop !196

bb.ae:                                            ; preds = %.lr.ph97, %.thread41
  %indvars.iv137 = phi i64 [ %i.mt, %.lr.ph97 ], [ %indvars.iv.next138, %.thread41 ] ; 2 uses
  %.1.i.i96 = phi i32 [ 0, %.lr.ph97 ], [ %i.om, %.thread41 ]
  %.3.i.i94 = phi i64 [ %.0100.i.i.lcssa, %.lr.ph97 ], [ %.5.i.i.ph, %.thread41 ] ; 3 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv137
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !25 ; 2 uses
  %i.ob = zext i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.ob ; 2 uses
  %.val8 = load i32, ptr %i.oc, align 1, !tbaa !25
  %i.od = icmp eq i32 %.val8, %.val7
  br i1 %i.od, label %bb.af, label %.thread41

bb.af:                                            ; preds = %bb.ae
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  %i.of = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.mq, ptr noundef nonnull %i.oe, ptr noundef %2, ptr noundef %i.kw, ptr noundef %i.o)
  %i.og = add i64 %i.of, 4                        ; 4 uses
  %i.oh = icmp ugt i64 %i.og, %.3.i.i94
  br i1 %i.oh, label %bb.ag, label %.thread41

bb.ag:                                            ; preds = %bb.af
  %i.oi = sub i32 %i.mr, %i.oa
  %i.oj = zext i32 %i.oi to i64
  store i64 %i.oj, ptr %3, align 8, !tbaa !26
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 %i.og
  %i.ol = icmp eq ptr %i.ok, %2
  br i1 %i.ol, label %ZSTD_RowFindBestMatch.exit, label %.thread41

.thread41:                                        ; preds = %bb.ae, %bb.ag, %bb.af
  %.5.i.i.ph = phi i64 [ %i.og, %bb.ag ], [ %.3.i.i94, %bb.af ], [ %.3.i.i94, %bb.ae ] ; 2 uses
  %i.om = add nuw nsw i32 %.1.i.i96, 1            ; 2 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1
  %exitcond139.not = icmp eq i32 %i.om, %i.ml
  br i1 %exitcond139.not, label %ZSTD_RowFindBestMatch.exit, label %bb.ae, !llvm.loop !197

ZSTD_RowFindBestMatch.exit:                       ; preds = %bb.aa, %bb.ad, %.thread41, %bb.ag, %._crit_edge88
  %.2.i.i = phi i64 [ %.0100.i.i.lcssa, %._crit_edge88 ], [ %i.og, %bb.ag ], [ %.5.i.i.ph, %.thread41 ], [ %.0100.i.i84, %bb.aa ], [ %i.me, %bb.ad ]
  ret i64 %.2.i.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_5_4(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.p = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = trunc i64 %i.r to i32                    ; 10 uses
  %i.t = load i32, ptr %i.i, align 8, !tbaa !183
  %i.u = shl nuw i32 1, %i.t                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !152  ; 2 uses
  %i.x = sub i32 %i.s, %i.w
  %i.y = icmp ugt i32 %i.x, %i.u
  %i.z = sub i32 %i.s, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !42
  %.not.i = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not.i, i1 %i.y, i1 false
  %i.ad = select i1 %i.ac, i32 %i.z, i32 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !184 ; 3 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.af, i32 4)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !37 ; 2 uses
  %i.ai = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !71 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 264
  %i.am = load i32, ptr %i.al, align 8, !tbaa !23
  %.val9 = load i64, ptr %1, align 1, !tbaa !26
  %i.an = mul i64 %.val9, -3523014627271114752    ; 2 uses
  %i.ao = sub i32 66, %i.am
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %i.an, %i.ap
  %i.ar = shl i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %i.av = icmp ugt i32 %i.af, 4
  %i.aw = add i32 %i.af, -4
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = select i1 %i.av, i32 %i.ax, i32 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !43
  %.not274.i = icmp eq i32 %i.ba, 0
  br i1 %.not274.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !21 ; 5 uses
  %i.bd = sub i32 %i.s, %i.bc
  %i.be = icmp ugt i32 %i.bd, 384
  br i1 %i.be, label %bb.c, label %ZSTD_row_update_internal.exit.i, !prof !187

bb.c:                                             ; preds = %bb.b
  %i.bf = icmp ult i32 %i.bc, -96
  br i1 %i.bf, label %.lr.ph, label %ZSTD_row_update_internalImpl.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.bg = add nuw i32 %i.bc, 96
  %i.bh = sub i32 56, %i.h
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = zext i32 %i.bc to i64
  %wide.trip.count = zext i32 %i.bg to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.bj, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bk = load i64, ptr %i.ag, align 8, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.val10 = load i64, ptr %i.bm, align 1, !tbaa !26
  %i.bn = mul i64 %.val10, -3523014627271114752
  %i.bo = xor i64 %i.bn, %i.bk
  %i.bp = lshr i64 %i.bo, %i.bi                   ; 2 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = lshr i64 %i.bp, 4
  %i.bs = and i64 %i.br, 268435440                ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bs
  tail call void @llvm.prefetch.p0(ptr %i.bt, i32 0, i32 3, i32 1)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bs
  tail call void @llvm.prefetch.p0(ptr %i.bu, i32 0, i32 3, i32 1)
  %i.bv = trunc nuw i64 %indvars.iv to i32
  %i.bw = and i64 %indvars.iv, 7
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !25 ; 2 uses
  store i32 %i.bq, ptr %i.bx, align 4, !tbaa !25
  %i.bz = lshr i32 %i.by, 4
  %i.ca = and i32 %i.bz, 268435440
  %i.cb = zext nneg i32 %i.ca to i64              ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cb ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !38
  %i.cf = add i8 %i.ce, 15
  %i.cg = and i8 %i.cf, 15                        ; 2 uses
  %i.ch = zext nneg i8 %i.cg to i32
  %i.ci = icmp eq i8 %i.cg, 0
  %i.cj = select i1 %i.ci, i32 15, i32 0
  %i.ck = add nuw nsw i32 %i.cj, %i.ch            ; 2 uses
  %i.cl = trunc nuw nsw i32 %i.ck to i8
  store i8 %i.cl, ptr %i.cd, align 1, !tbaa !38
  %i.cm = trunc i32 %i.by to i8
  %i.cn = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cn
  store i8 %i.cm, ptr %i.co, align 1, !tbaa !38
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cn
  store i32 %i.bv, ptr %i.cp, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ZSTD_row_update_internalImpl.exit.i.loopexit, label %bb.d, !llvm.loop !39

ZSTD_row_update_internalImpl.exit.i.loopexit:     ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !18
  %.pre136 = load ptr, ptr %i.d, align 8, !tbaa !35
  %.pre137 = load i32, ptr %i.g, align 4, !tbaa !36
  br label %ZSTD_row_update_internalImpl.exit.i

ZSTD_row_update_internalImpl.exit.i:              ; preds = %ZSTD_row_update_internalImpl.exit.i.loopexit, %bb.c
  %i.cq = phi i32 [ %.pre137, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.h, %bb.c ] ; 4 uses
  %i.cr = phi ptr [ %.pre136, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.e, %bb.c ] ; 6 uses
  %i.cs = phi ptr [ %.pre, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.c, %bb.c ] ; 6 uses
  %i.ct = add i32 %i.s, -32                       ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cv = zext i32 %i.ct to i64                   ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cv ; 2 uses
  %i.cx = icmp ugt ptr %i.cw, %i.cu
  br i1 %i.cx, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ZSTD_row_update_internalImpl.exit.i
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = trunc i64 %i.da to i32
  %i.dc = add i32 %i.db, 1
  %i.dd = tail call i32 @llvm.umin.i32(i32 %i.dc, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ZSTD_row_update_internalImpl.exit.i
  %i.de = phi i32 [ %i.dd, %bb.e ], [ 0, %ZSTD_row_update_internalImpl.exit.i ] ; 3 uses
  %i.df = add i32 %i.de, %i.ct                    ; 2 uses
  %i.dg = icmp ult i32 %i.ct, %i.df
  br i1 %i.dg, label %.lr.ph62, label %ZSTD_row_update_internal.exit.i
end_hunk_6
begin_hunk_7_@ZSTD_RowFindBestMatch_dedicatedDictSearch_5_4:bb.a
  %i.kp = sub i32 %i.jg, %i.ji
  %i.kq = zext i32 %i.kp to i64
  store i64 %i.kq, ptr %3, align 8, !tbaa !26
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.ks = icmp eq ptr %i.kr, %2
  br i1 %i.ks, label %._crit_edge78, label %ZSTD_count.exit.thread

ZSTD_count.exit.thread:                           ; preds = %bb.l, %bb.y, %ZSTD_count.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i74, %ZSTD_count.exit ], [ %.0258.i74, %bb.l ] ; 2 uses
  %i.kt = add nuw i64 %.0248.i75, 1               ; 2 uses
  %exitcond118.not = icmp eq i64 %i.kt, %.0249.i.lcssa
  br i1 %exitcond118.not, label %._crit_edge78, label %bb.l, !llvm.loop !190

._crit_edge78:                                    ; preds = %ZSTD_count.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %ZSTD_count.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !8  ; 15 uses
  %i.kw = load ptr, ptr %i.ak, align 8, !tbaa !72 ; 3 uses
  %i.kx = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.ky = getelementptr [4 x i8], ptr %i.kx, i64 %i.ar ; 5 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !25
  %i.la = zext i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.la
  tail call void @llvm.prefetch.p0(ptr %i.lb, i32 0, i32 3, i32 1)
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !25
  %i.le = zext i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.le
  tail call void @llvm.prefetch.p0(ptr %i.lf, i32 0, i32 3, i32 1)
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !25
  %i.li = zext i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.li
  tail call void @llvm.prefetch.p0(ptr %i.lj, i32 0, i32 3, i32 1)
  %i.lk = add nuw i32 %.0262.i.lcssa, %i.ay       ; 3 uses
  %i.ll = ptrtoint ptr %i.kw to i64
  %i.lm = ptrtoint ptr %i.kv to i64
  %.neg.i.i.neg = sub i64 %i.ll, %i.lm
  %.neg107.i.i.neg = trunc i64 %.neg.i.i.neg to i32
  %.neg = sub i32 %.neg107.i.i.neg, %i.m          ; 2 uses
  %i.ln = tail call i32 @llvm.umin.i32(i32 %i.lk, i32 3) ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !25 ; 3 uses
  %i.lq = lshr i32 %i.lp, 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !19 ; 3 uses
  %i.lt = zext nneg i32 %i.lq to i64              ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lt
  tail call void @llvm.prefetch.p0(ptr %i.lu, i32 0, i32 3, i32 1)
  %.not103 = icmp eq i32 %i.lk, 0
  br i1 %.not103, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge78
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg53 = add i32 %i.s, 3
  %i.lw = add i32 %.neg53, %.neg
  %wide.trip.count126 = zext nneg i32 %i.ln to i64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph87, %.thread31
  %indvars.iv123 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next124, %.thread31 ] ; 2 uses
  %.0100.i.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.2102.i.i35, %.thread31 ] ; 4 uses
  %i.lx = getelementptr [4 x i8], ptr %i.ky, i64 %indvars.iv123
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !25 ; 3 uses
  %i.lz = zext i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.lz ; 2 uses
  %.not.i.i = icmp eq i32 %i.ly, 0
  br i1 %.not.i.i, label %ZSTD_RowFindBestMatch.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val6 = load i32, ptr %i.ma, align 1, !tbaa !25
  %.val5 = load i32, ptr %1, align 1, !tbaa !25
  %i.mb = icmp eq i32 %.val6, %.val5
  br i1 %i.mb, label %bb.ab, label %.thread31

bb.ab:                                            ; preds = %bb.aa
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.md = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.lv, ptr noundef nonnull %i.mc, ptr noundef %2, ptr noundef %i.kw, ptr noundef %i.o)
  %i.me = add i64 %i.md, 4                        ; 4 uses
  %i.mf = icmp ugt i64 %i.me, %.0100.i.i84
  br i1 %i.mf, label %bb.ac, label %.thread31

bb.ac:                                            ; preds = %bb.ab
  %i.mg = sub i32 %i.lw, %i.ly
  %i.mh = zext i32 %i.mg to i64
  store i64 %i.mh, ptr %3, align 8, !tbaa !26
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 %i.me
  %.not = icmp eq ptr %i.mi, %2
  br i1 %.not, label %ZSTD_RowFindBestMatch.exit, label %.thread31

.thread31:                                        ; preds = %bb.aa, %bb.ab, %bb.ac
  %.2102.i.i35 = phi i64 [ %i.me, %bb.ac ], [ %.0100.i.i84, %bb.ab ], [ %.0100.i.i84, %bb.aa ] ; 2 uses
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %._crit_edge88, label %bb.z, !llvm.loop !194

._crit_edge88:                                    ; preds = %.thread31, %._crit_edge78
  %.1104.i.i.lcssa = phi i32 [ 0, %._crit_edge78 ], [ %i.ln, %.thread31 ]
  %.0100.i.i.lcssa = phi i64 [ %.3261.i, %._crit_edge78 ], [ %.2102.i.i35, %.thread31 ] ; 2 uses
  %i.mj = and i32 %i.lp, 255
  %i.mk = sub i32 %i.lk, %.1104.i.i.lcssa
  %i.ml = tail call i32 @llvm.umin.i32(i32 %i.mk, i32 %i.mj) ; 4 uses
  %.not104 = icmp eq i32 %i.ml, 0
  br i1 %.not104, label %ZSTD_RowFindBestMatch.exit, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %._crit_edge88
  %wide.trip.count131 = zext nneg i32 %i.ml to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lt ; 9 uses
  %xtraiter167 = and i64 %wide.trip.count131, 7   ; 3 uses
  %i.mm = icmp samesign ult i32 %i.ml, 8
  br i1 %i.mm, label %.lr.ph93.epil.preheader, label %.lr.ph93.preheader.new

.lr.ph93.preheader.new:                           ; preds = %.lr.ph93.preheader
  %unroll_iter = and i64 %wide.trip.count131, 248
  br label %.lr.ph93

.lr.ph97.unr-lcssa:                               ; preds = %.lr.ph93
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod168.not, label %.lr.ph97, label %.lr.ph93.epil.preheader

.lr.ph93.epil.preheader:                          ; preds = %.lr.ph97.unr-lcssa, %.lr.ph93.preheader
  %indvars.iv128.epil.init = phi i64 [ 0, %.lr.ph93.preheader ], [ %indvars.iv.next129.7, %.lr.ph97.unr-lcssa ]
  %lcmp.mod169 = icmp ne i64 %xtraiter167, 0
  tail call void @llvm.assume(i1 %lcmp.mod169)
  br label %.lr.ph93.epil

.lr.ph93.epil:                                    ; preds = %.lr.ph93.epil, %.lr.ph93.epil.preheader
  %indvars.iv128.epil = phi i64 [ %indvars.iv128.epil.init, %.lr.ph93.epil.preheader ], [ %indvars.iv.next129.epil, %.lr.ph93.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph93.epil.preheader ], [ %epil.iter.next, %.lr.ph93.epil ]
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128.epil
  %i.mn = load i32, ptr %gep.epil, align 4, !tbaa !25
  %i.mo = zext i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mo
  tail call void @llvm.prefetch.p0(ptr %i.mp, i32 0, i32 3, i32 1)
  %indvars.iv.next129.epil = add nuw nsw i64 %indvars.iv128.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter167
  br i1 %epil.iter.cmp.not, label %.lr.ph97, label %.lr.ph93.epil, !llvm.loop !203

.lr.ph97:                                         ; preds = %.lr.ph93.epil, %.lr.ph97.unr-lcssa
  %.val7 = load i32, ptr %1, align 1, !tbaa !25
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg51 = add i32 %i.s, 3
  %i.mr = add i32 %.neg51, %.neg
  %i.ms = lshr i32 %i.lp, 8
  %i.mt = zext nneg i32 %i.ms to i64
  br label %bb.ad

.lr.ph93:                                         ; preds = %.lr.ph93, %.lr.ph93.preheader.new
  %indvars.iv128 = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %indvars.iv.next129.7, %.lr.ph93 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %niter.next.7, %.lr.ph93 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %i.mu = load i32, ptr %gep, align 4, !tbaa !25
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mv
  tail call void @llvm.prefetch.p0(ptr %i.mw, i32 0, i32 3, i32 1)
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  %i.my = load i32, ptr %gep.1, align 4, !tbaa !25
  %i.mz = zext i32 %i.my to i64
  %i.na = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mz
  tail call void @llvm.prefetch.p0(ptr %i.na, i32 0, i32 3, i32 1)
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nc = load i32, ptr %gep.2, align 4, !tbaa !25
  %i.nd = zext i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nd
  tail call void @llvm.prefetch.p0(ptr %i.ne, i32 0, i32 3, i32 1)
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.nf, i64 12
  %i.ng = load i32, ptr %gep.3, align 4, !tbaa !25
  %i.nh = zext i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nh
  tail call void @llvm.prefetch.p0(ptr %i.ni, i32 0, i32 3, i32 1)
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nk = load i32, ptr %gep.4, align 4, !tbaa !25
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nl
  tail call void @llvm.prefetch.p0(ptr %i.nm, i32 0, i32 3, i32 1)
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.nn, i64 20
  %i.no = load i32, ptr %gep.5, align 4, !tbaa !25
  %i.np = zext i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.np
  tail call void @llvm.prefetch.p0(ptr %i.nq, i32 0, i32 3, i32 1)
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  %i.ns = load i32, ptr %gep.6, align 4, !tbaa !25
  %i.nt = zext i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nt
  tail call void @llvm.prefetch.p0(ptr %i.nu, i32 0, i32 3, i32 1)
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.nv, i64 28
  %i.nw = load i32, ptr %gep.7, align 4, !tbaa !25
  %i.nx = zext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nx
  tail call void @llvm.prefetch.p0(ptr %i.ny, i32 0, i32 3, i32 1)
  %indvars.iv.next129.7 = add nuw nsw i64 %indvars.iv128, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph97.unr-lcssa, label %.lr.ph93, !llvm.loop !196

bb.ad:                                            ; preds = %.lr.ph97, %.thread41
  %indvars.iv133 = phi i64 [ %i.mt, %.lr.ph97 ], [ %indvars.iv.next134, %.thread41 ] ; 2 uses
  %.1.i.i96 = phi i32 [ 0, %.lr.ph97 ], [ %i.om, %.thread41 ]
  %.3.i.i94 = phi i64 [ %.0100.i.i.lcssa, %.lr.ph97 ], [ %.5.i.i.ph, %.thread41 ] ; 3 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv133
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !25 ; 2 uses
  %i.ob = zext i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.ob ; 2 uses
  %.val8 = load i32, ptr %i.oc, align 1, !tbaa !25
  %i.od = icmp eq i32 %.val8, %.val7
  br i1 %i.od, label %bb.ae, label %.thread41

bb.ae:                                            ; preds = %bb.ad
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  %i.of = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.mq, ptr noundef nonnull %i.oe, ptr noundef %2, ptr noundef %i.kw, ptr noundef %i.o)
  %i.og = add i64 %i.of, 4                        ; 4 uses
  %i.oh = icmp ugt i64 %i.og, %.3.i.i94
  br i1 %i.oh, label %bb.af, label %.thread41

bb.af:                                            ; preds = %bb.ae
  %i.oi = sub i32 %i.mr, %i.oa
  %i.oj = zext i32 %i.oi to i64
  store i64 %i.oj, ptr %3, align 8, !tbaa !26
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 %i.og
  %i.ol = icmp eq ptr %i.ok, %2
  br i1 %i.ol, label %ZSTD_RowFindBestMatch.exit, label %.thread41

.thread41:                                        ; preds = %bb.ad, %bb.af, %bb.ae
  %.5.i.i.ph = phi i64 [ %i.og, %bb.af ], [ %.3.i.i94, %bb.ae ], [ %.3.i.i94, %bb.ad ] ; 2 uses
  %i.om = add nuw nsw i32 %.1.i.i96, 1            ; 2 uses
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  %exitcond135.not = icmp eq i32 %i.om, %i.ml
  br i1 %exitcond135.not, label %ZSTD_RowFindBestMatch.exit, label %bb.ad, !llvm.loop !197

ZSTD_RowFindBestMatch.exit:                       ; preds = %bb.z, %bb.ac, %.thread41, %bb.af, %._crit_edge88
  %.2.i.i = phi i64 [ %.0100.i.i.lcssa, %._crit_edge88 ], [ %i.og, %bb.af ], [ %.5.i.i.ph, %.thread41 ], [ %.0100.i.i84, %bb.z ], [ %i.me, %bb.ac ]
  ret i64 %.2.i.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_5_5(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.p = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = trunc i64 %i.r to i32                    ; 10 uses
  %i.t = load i32, ptr %i.i, align 8, !tbaa !183
  %i.u = shl nuw i32 1, %i.t                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !152  ; 2 uses
  %i.x = sub i32 %i.s, %i.w
  %i.y = icmp ugt i32 %i.x, %i.u
  %i.z = sub i32 %i.s, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !42
  %.not.i = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not.i, i1 %i.y, i1 false
  %i.ad = select i1 %i.ac, i32 %i.z, i32 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !184 ; 3 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.af, i32 5)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !37 ; 2 uses
  %i.ai = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !71 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 264
  %i.am = load i32, ptr %i.al, align 8, !tbaa !23
  %.val9 = load i64, ptr %1, align 1, !tbaa !26
  %i.an = mul i64 %.val9, -3523014627271114752    ; 2 uses
  %i.ao = sub i32 66, %i.am
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %i.an, %i.ap
  %i.ar = shl i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %i.av = icmp ugt i32 %i.af, 5
  %i.aw = add i32 %i.af, -5
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = select i1 %i.av, i32 %i.ax, i32 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !43
  %.not274.i = icmp eq i32 %i.ba, 0
  br i1 %.not274.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !21 ; 5 uses
  %i.bd = sub i32 %i.s, %i.bc
  %i.be = icmp ugt i32 %i.bd, 384
  br i1 %i.be, label %bb.c, label %ZSTD_row_update_internal.exit.i, !prof !187

bb.c:                                             ; preds = %bb.b
  %i.bf = icmp ult i32 %i.bc, -96
  br i1 %i.bf, label %.lr.ph, label %ZSTD_row_update_internalImpl.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.bg = add nuw i32 %i.bc, 96
  %i.bh = sub i32 56, %i.h
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = zext i32 %i.bc to i64
  %wide.trip.count = zext i32 %i.bg to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.bj, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bk = load i64, ptr %i.ag, align 8, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.val10 = load i64, ptr %i.bm, align 1, !tbaa !26
  %i.bn = mul i64 %.val10, -3523014627271114752
  %i.bo = xor i64 %i.bn, %i.bk
  %i.bp = lshr i64 %i.bo, %i.bi                   ; 2 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = lshr i64 %i.bp, 3
  %i.bs = and i64 %i.br, 536870880                ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bs ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bt, i32 0, i32 3, i32 1)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bu, i32 0, i32 3, i32 1)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bs
  tail call void @llvm.prefetch.p0(ptr %i.bv, i32 0, i32 3, i32 1)
  %i.bw = trunc nuw i64 %indvars.iv to i32
  %i.bx = and i64 %indvars.iv, 7
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bx ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !25 ; 2 uses
  store i32 %i.bq, ptr %i.by, align 4, !tbaa !25
  %i.ca = lshr i32 %i.bz, 3
  %i.cb = and i32 %i.ca, 536870880
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cc ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !38
  %i.cg = add i8 %i.cf, 31
  %i.ch = and i8 %i.cg, 31                        ; 2 uses
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = icmp eq i8 %i.ch, 0
  %i.ck = select i1 %i.cj, i32 31, i32 0
  %i.cl = add nuw nsw i32 %i.ck, %i.ci            ; 2 uses
  %i.cm = trunc nuw nsw i32 %i.cl to i8
  store i8 %i.cm, ptr %i.ce, align 1, !tbaa !38
  %i.cn = trunc i32 %i.bz to i8
  %i.co = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.co
  store i8 %i.cn, ptr %i.cp, align 1, !tbaa !38
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.co
  store i32 %i.bw, ptr %i.cq, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ZSTD_row_update_internalImpl.exit.i.loopexit, label %bb.d, !llvm.loop !39

ZSTD_row_update_internalImpl.exit.i.loopexit:     ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !18
  %.pre139 = load ptr, ptr %i.d, align 8, !tbaa !35
  %.pre140 = load i32, ptr %i.g, align 4, !tbaa !36
  br label %ZSTD_row_update_internalImpl.exit.i

ZSTD_row_update_internalImpl.exit.i:              ; preds = %ZSTD_row_update_internalImpl.exit.i.loopexit, %bb.c
  %i.cr = phi i32 [ %.pre140, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.h, %bb.c ] ; 4 uses
  %i.cs = phi ptr [ %.pre139, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.e, %bb.c ] ; 6 uses
  %i.ct = phi ptr [ %.pre, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.c, %bb.c ] ; 6 uses
  %i.cu = add i32 %i.s, -32                       ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cw = zext i32 %i.cu to i64                   ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cw ; 2 uses
  %i.cy = icmp ugt ptr %i.cx, %i.cv
  br i1 %i.cy, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ZSTD_row_update_internalImpl.exit.i
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = trunc i64 %i.db to i32
  %i.dd = add i32 %i.dc, 1
  %i.de = tail call i32 @llvm.umin.i32(i32 %i.dd, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ZSTD_row_update_internalImpl.exit.i
  %i.df = phi i32 [ %i.de, %bb.e ], [ 0, %ZSTD_row_update_internalImpl.exit.i ] ; 3 uses
  %i.dg = add i32 %i.df, %i.cu                    ; 2 uses
end_hunk_7
begin_hunk_8_@ZSTD_RowFindBestMatch_dedicatedDictSearch_5_5:bb.a
  %i.kx = sub i32 %i.jo, %i.jq
  %i.ky = zext i32 %i.kx to i64
  store i64 %i.ky, ptr %3, align 8, !tbaa !26
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.la = icmp eq ptr %i.kz, %2
  br i1 %i.la, label %._crit_edge78, label %ZSTD_count.exit.thread

ZSTD_count.exit.thread:                           ; preds = %bb.l, %bb.y, %ZSTD_count.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i74, %ZSTD_count.exit ], [ %.0258.i74, %bb.l ] ; 2 uses
  %i.lb = add nuw i64 %.0248.i75, 1               ; 2 uses
  %exitcond121.not = icmp eq i64 %i.lb, %.0249.i.lcssa
  br i1 %exitcond121.not, label %._crit_edge78, label %bb.l, !llvm.loop !190

._crit_edge78:                                    ; preds = %ZSTD_count.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %ZSTD_count.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !8  ; 15 uses
  %i.le = load ptr, ptr %i.ak, align 8, !tbaa !72 ; 3 uses
  %i.lf = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.lg = getelementptr [4 x i8], ptr %i.lf, i64 %i.ar ; 5 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !25
  %i.li = zext i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.li
  tail call void @llvm.prefetch.p0(ptr %i.lj, i32 0, i32 3, i32 1)
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !25
  %i.lm = zext i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lm
  tail call void @llvm.prefetch.p0(ptr %i.ln, i32 0, i32 3, i32 1)
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !25
  %i.lq = zext i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lq
  tail call void @llvm.prefetch.p0(ptr %i.lr, i32 0, i32 3, i32 1)
  %i.ls = add nuw i32 %.0262.i.lcssa, %i.ay       ; 3 uses
  %i.lt = ptrtoint ptr %i.le to i64
  %i.lu = ptrtoint ptr %i.ld to i64
  %.neg.i.i.neg = sub i64 %i.lt, %i.lu
  %.neg107.i.i.neg = trunc i64 %.neg.i.i.neg to i32
  %.neg = sub i32 %.neg107.i.i.neg, %i.m          ; 2 uses
  %i.lv = tail call i32 @llvm.umin.i32(i32 %i.ls, i32 3) ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lg, i64 12
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !25 ; 3 uses
  %i.ly = lshr i32 %i.lx, 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !19 ; 3 uses
  %i.mb = zext nneg i32 %i.ly to i64              ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.mb
  tail call void @llvm.prefetch.p0(ptr %i.mc, i32 0, i32 3, i32 1)
  %.not103 = icmp eq i32 %i.ls, 0
  br i1 %.not103, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge78
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg53 = add i32 %i.s, 3
  %i.me = add i32 %.neg53, %.neg
  %wide.trip.count129 = zext nneg i32 %i.lv to i64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph87, %.thread31
  %indvars.iv126 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next127, %.thread31 ] ; 2 uses
  %.0100.i.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.2102.i.i35, %.thread31 ] ; 4 uses
  %i.mf = getelementptr [4 x i8], ptr %i.lg, i64 %indvars.iv126
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !25 ; 3 uses
  %i.mh = zext i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.mh ; 2 uses
  %.not.i.i = icmp eq i32 %i.mg, 0
  br i1 %.not.i.i, label %ZSTD_RowFindBestMatch.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val6 = load i32, ptr %i.mi, align 1, !tbaa !25
  %.val5 = load i32, ptr %1, align 1, !tbaa !25
  %i.mj = icmp eq i32 %.val6, %.val5
  br i1 %i.mj, label %bb.ab, label %.thread31

bb.ab:                                            ; preds = %bb.aa
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  %i.ml = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.md, ptr noundef nonnull %i.mk, ptr noundef %2, ptr noundef %i.le, ptr noundef %i.o)
  %i.mm = add i64 %i.ml, 4                        ; 4 uses
  %i.mn = icmp ugt i64 %i.mm, %.0100.i.i84
  br i1 %i.mn, label %bb.ac, label %.thread31

bb.ac:                                            ; preds = %bb.ab
  %i.mo = sub i32 %i.me, %i.mg
  %i.mp = zext i32 %i.mo to i64
  store i64 %i.mp, ptr %3, align 8, !tbaa !26
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 %i.mm
  %.not = icmp eq ptr %i.mq, %2
  br i1 %.not, label %ZSTD_RowFindBestMatch.exit, label %.thread31

.thread31:                                        ; preds = %bb.aa, %bb.ab, %bb.ac
  %.2102.i.i35 = phi i64 [ %i.mm, %bb.ac ], [ %.0100.i.i84, %bb.ab ], [ %.0100.i.i84, %bb.aa ] ; 2 uses
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %._crit_edge88, label %bb.z, !llvm.loop !194

._crit_edge88:                                    ; preds = %.thread31, %._crit_edge78
  %.1104.i.i.lcssa = phi i32 [ 0, %._crit_edge78 ], [ %i.lv, %.thread31 ]
  %.0100.i.i.lcssa = phi i64 [ %.3261.i, %._crit_edge78 ], [ %.2102.i.i35, %.thread31 ] ; 2 uses
  %i.mr = and i32 %i.lx, 255
  %i.ms = sub i32 %i.ls, %.1104.i.i.lcssa
  %i.mt = tail call i32 @llvm.umin.i32(i32 %i.ms, i32 %i.mr) ; 4 uses
  %.not104 = icmp eq i32 %i.mt, 0
  br i1 %.not104, label %ZSTD_RowFindBestMatch.exit, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %._crit_edge88
  %wide.trip.count134 = zext nneg i32 %i.mt to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.mb ; 9 uses
  %xtraiter170 = and i64 %wide.trip.count134, 7   ; 3 uses
  %i.mu = icmp samesign ult i32 %i.mt, 8
  br i1 %i.mu, label %.lr.ph93.epil.preheader, label %.lr.ph93.preheader.new

.lr.ph93.preheader.new:                           ; preds = %.lr.ph93.preheader
  %unroll_iter = and i64 %wide.trip.count134, 248
  br label %.lr.ph93

.lr.ph97.unr-lcssa:                               ; preds = %.lr.ph93
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  br i1 %lcmp.mod171.not, label %.lr.ph97, label %.lr.ph93.epil.preheader

.lr.ph93.epil.preheader:                          ; preds = %.lr.ph97.unr-lcssa, %.lr.ph93.preheader
  %indvars.iv131.epil.init = phi i64 [ 0, %.lr.ph93.preheader ], [ %indvars.iv.next132.7, %.lr.ph97.unr-lcssa ]
  %lcmp.mod172 = icmp ne i64 %xtraiter170, 0
  tail call void @llvm.assume(i1 %lcmp.mod172)
  br label %.lr.ph93.epil

.lr.ph93.epil:                                    ; preds = %.lr.ph93.epil, %.lr.ph93.epil.preheader
  %indvars.iv131.epil = phi i64 [ %indvars.iv131.epil.init, %.lr.ph93.epil.preheader ], [ %indvars.iv.next132.epil, %.lr.ph93.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph93.epil.preheader ], [ %epil.iter.next, %.lr.ph93.epil ]
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131.epil
  %i.mv = load i32, ptr %gep.epil, align 4, !tbaa !25
  %i.mw = zext i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.mw
  tail call void @llvm.prefetch.p0(ptr %i.mx, i32 0, i32 3, i32 1)
  %indvars.iv.next132.epil = add nuw nsw i64 %indvars.iv131.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter170
  br i1 %epil.iter.cmp.not, label %.lr.ph97, label %.lr.ph93.epil, !llvm.loop !204

.lr.ph97:                                         ; preds = %.lr.ph93.epil, %.lr.ph97.unr-lcssa
  %.val7 = load i32, ptr %1, align 1, !tbaa !25
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg51 = add i32 %i.s, 3
  %i.mz = add i32 %.neg51, %.neg
  %i.na = lshr i32 %i.lx, 8
  %i.nb = zext nneg i32 %i.na to i64
  br label %bb.ad

.lr.ph93:                                         ; preds = %.lr.ph93, %.lr.ph93.preheader.new
  %indvars.iv131 = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %indvars.iv.next132.7, %.lr.ph93 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %niter.next.7, %.lr.ph93 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %i.nc = load i32, ptr %gep, align 4, !tbaa !25
  %i.nd = zext i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.nd
  tail call void @llvm.prefetch.p0(ptr %i.ne, i32 0, i32 3, i32 1)
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  %i.ng = load i32, ptr %gep.1, align 4, !tbaa !25
  %i.nh = zext i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.nh
  tail call void @llvm.prefetch.p0(ptr %i.ni, i32 0, i32 3, i32 1)
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nk = load i32, ptr %gep.2, align 4, !tbaa !25
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.nl
  tail call void @llvm.prefetch.p0(ptr %i.nm, i32 0, i32 3, i32 1)
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.nn, i64 12
  %i.no = load i32, ptr %gep.3, align 4, !tbaa !25
  %i.np = zext i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.np
  tail call void @llvm.prefetch.p0(ptr %i.nq, i32 0, i32 3, i32 1)
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.ns = load i32, ptr %gep.4, align 4, !tbaa !25
  %i.nt = zext i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.nt
  tail call void @llvm.prefetch.p0(ptr %i.nu, i32 0, i32 3, i32 1)
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.nv, i64 20
  %i.nw = load i32, ptr %gep.5, align 4, !tbaa !25
  %i.nx = zext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.nx
  tail call void @llvm.prefetch.p0(ptr %i.ny, i32 0, i32 3, i32 1)
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  %i.oa = load i32, ptr %gep.6, align 4, !tbaa !25
  %i.ob = zext i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.ob
  tail call void @llvm.prefetch.p0(ptr %i.oc, i32 0, i32 3, i32 1)
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.od, i64 28
  %i.oe = load i32, ptr %gep.7, align 4, !tbaa !25
  %i.of = zext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.of
  tail call void @llvm.prefetch.p0(ptr %i.og, i32 0, i32 3, i32 1)
  %indvars.iv.next132.7 = add nuw nsw i64 %indvars.iv131, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph97.unr-lcssa, label %.lr.ph93, !llvm.loop !196

bb.ad:                                            ; preds = %.lr.ph97, %.thread41
  %indvars.iv136 = phi i64 [ %i.nb, %.lr.ph97 ], [ %indvars.iv.next137, %.thread41 ] ; 2 uses
  %.1.i.i96 = phi i32 [ 0, %.lr.ph97 ], [ %i.ou, %.thread41 ]
  %.3.i.i94 = phi i64 [ %.0100.i.i.lcssa, %.lr.ph97 ], [ %.5.i.i.ph, %.thread41 ] ; 3 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv136
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !25 ; 2 uses
  %i.oj = zext i32 %i.oi to i64
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.oj ; 2 uses
  %.val8 = load i32, ptr %i.ok, align 1, !tbaa !25
  %i.ol = icmp eq i32 %.val8, %.val7
  br i1 %i.ol, label %bb.ae, label %.thread41

bb.ae:                                            ; preds = %bb.ad
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 4
  %i.on = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.my, ptr noundef nonnull %i.om, ptr noundef %2, ptr noundef %i.le, ptr noundef %i.o)
  %i.oo = add i64 %i.on, 4                        ; 4 uses
  %i.op = icmp ugt i64 %i.oo, %.3.i.i94
  br i1 %i.op, label %bb.af, label %.thread41

bb.af:                                            ; preds = %bb.ae
  %i.oq = sub i32 %i.mz, %i.oi
  %i.or = zext i32 %i.oq to i64
  store i64 %i.or, ptr %3, align 8, !tbaa !26
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 %i.oo
  %i.ot = icmp eq ptr %i.os, %2
  br i1 %i.ot, label %ZSTD_RowFindBestMatch.exit, label %.thread41

.thread41:                                        ; preds = %bb.ad, %bb.af, %bb.ae
  %.5.i.i.ph = phi i64 [ %i.oo, %bb.af ], [ %.3.i.i94, %bb.ae ], [ %.3.i.i94, %bb.ad ] ; 2 uses
  %i.ou = add nuw nsw i32 %.1.i.i96, 1            ; 2 uses
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  %exitcond138.not = icmp eq i32 %i.ou, %i.mt
  br i1 %exitcond138.not, label %ZSTD_RowFindBestMatch.exit, label %bb.ad, !llvm.loop !197

ZSTD_RowFindBestMatch.exit:                       ; preds = %bb.z, %bb.ac, %.thread41, %bb.af, %._crit_edge88
  %.2.i.i = phi i64 [ %.0100.i.i.lcssa, %._crit_edge88 ], [ %i.oo, %bb.af ], [ %.5.i.i.ph, %.thread41 ], [ %.0100.i.i84, %bb.z ], [ %i.mm, %bb.ac ]
  ret i64 %.2.i.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_5_6(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.p = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = trunc i64 %i.r to i32                    ; 10 uses
  %i.t = load i32, ptr %i.i, align 8, !tbaa !183
  %i.u = shl nuw i32 1, %i.t                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !152  ; 2 uses
  %i.x = sub i32 %i.s, %i.w
  %i.y = icmp ugt i32 %i.x, %i.u
  %i.z = sub i32 %i.s, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !42
  %.not.i = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not.i, i1 %i.y, i1 false
  %i.ad = select i1 %i.ac, i32 %i.z, i32 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !184 ; 3 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.af, i32 6)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !37 ; 2 uses
  %i.ai = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !71 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 264
  %i.am = load i32, ptr %i.al, align 8, !tbaa !23
  %.val9 = load i64, ptr %1, align 1, !tbaa !26
  %i.an = mul i64 %.val9, -3523014627271114752    ; 2 uses
  %i.ao = sub i32 66, %i.am
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %i.an, %i.ap
  %i.ar = shl i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %i.av = icmp ugt i32 %i.af, 6
  %i.aw = add i32 %i.af, -6
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = select i1 %i.av, i32 %i.ax, i32 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !43
  %.not274.i = icmp eq i32 %i.ba, 0
  br i1 %.not274.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !21 ; 5 uses
  %i.bd = sub i32 %i.s, %i.bc
  %i.be = icmp ugt i32 %i.bd, 384
  br i1 %i.be, label %bb.c, label %ZSTD_row_update_internal.exit.i, !prof !187

bb.c:                                             ; preds = %bb.b
  %i.bf = icmp ult i32 %i.bc, -96
  br i1 %i.bf, label %.lr.ph, label %ZSTD_row_update_internalImpl.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.bg = add nuw i32 %i.bc, 96
  %i.bh = sub i32 56, %i.h
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = zext i32 %i.bc to i64
  %wide.trip.count = zext i32 %i.bg to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.bj, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bk = load i64, ptr %i.ag, align 8, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.val10 = load i64, ptr %i.bm, align 1, !tbaa !26
  %i.bn = mul i64 %.val10, -3523014627271114752
  %i.bo = xor i64 %i.bn, %i.bk
  %i.bp = lshr i64 %i.bo, %i.bi                   ; 2 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = lshr i64 %i.bp, 2
  %i.bs = and i64 %i.br, 1073741760               ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bs ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bt, i32 0, i32 3, i32 1)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bu, i32 0, i32 3, i32 1)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bs ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bv, i32 0, i32 3, i32 1)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bw, i32 0, i32 3, i32 1)
  %i.bx = trunc nuw i64 %indvars.iv to i32
  %i.by = and i64 %indvars.iv, 7
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !25 ; 2 uses
  store i32 %i.bq, ptr %i.bz, align 4, !tbaa !25
  %i.cb = lshr i32 %i.ca, 2
  %i.cc = and i32 %i.cb, 1073741760
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cd ; 3 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !38
  %i.ch = add i8 %i.cg, 63
  %i.ci = and i8 %i.ch, 63                        ; 2 uses
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = icmp eq i8 %i.ci, 0
  %i.cl = select i1 %i.ck, i32 63, i32 0
  %i.cm = add nuw nsw i32 %i.cl, %i.cj            ; 2 uses
  %i.cn = trunc nuw nsw i32 %i.cm to i8
  store i8 %i.cn, ptr %i.cf, align 1, !tbaa !38
  %i.co = trunc i32 %i.ca to i8
  %i.cp = zext nneg i32 %i.cm to i64              ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cp
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !38
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cp
  store i32 %i.bx, ptr %i.cr, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ZSTD_row_update_internalImpl.exit.i.loopexit, label %bb.d, !llvm.loop !39

ZSTD_row_update_internalImpl.exit.i.loopexit:     ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !18
  %.pre140 = load ptr, ptr %i.d, align 8, !tbaa !35
  %.pre141 = load i32, ptr %i.g, align 4, !tbaa !36
  br label %ZSTD_row_update_internalImpl.exit.i

ZSTD_row_update_internalImpl.exit.i:              ; preds = %ZSTD_row_update_internalImpl.exit.i.loopexit, %bb.c
  %i.cs = phi i32 [ %.pre141, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.h, %bb.c ] ; 3 uses
  %i.ct = phi ptr [ %.pre140, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.e, %bb.c ] ; 3 uses
  %i.cu = phi ptr [ %.pre, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.c, %bb.c ] ; 3 uses
  %i.cv = add i32 %i.s, -32                       ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cx = zext i32 %i.cv to i64                   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cx ; 2 uses
  %i.cz = icmp ugt ptr %i.cy, %i.cw
  br i1 %i.cz, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ZSTD_row_update_internalImpl.exit.i
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = trunc i64 %i.dc to i32
  %i.de = add i32 %i.dd, 1
  %i.df = tail call i32 @llvm.umin.i32(i32 %i.de, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ZSTD_row_update_internalImpl.exit.i
end_hunk_8
begin_hunk_9_@ZSTD_RowFindBestMatch_dedicatedDictSearch_5_6:bb.a
  %i.kq = sub i32 %i.jh, %i.jj
  %i.kr = zext i32 %i.kq to i64
  store i64 %i.kr, ptr %3, align 8, !tbaa !26
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.kt = icmp eq ptr %i.ks, %2
  br i1 %i.kt, label %._crit_edge78, label %ZSTD_count.exit.thread

ZSTD_count.exit.thread:                           ; preds = %bb.m, %bb.z, %ZSTD_count.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.z ], [ %.0258.i74, %ZSTD_count.exit ], [ %.0258.i74, %bb.m ] ; 2 uses
  %i.ku = add nuw i64 %.0248.i75, 1               ; 2 uses
  %exitcond122.not = icmp eq i64 %i.ku, %.0249.i.lcssa
  br i1 %exitcond122.not, label %._crit_edge78, label %bb.m, !llvm.loop !190

._crit_edge78:                                    ; preds = %ZSTD_count.exit.thread, %bb.z, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.z ], [ %.2260.i.ph, %ZSTD_count.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !8  ; 15 uses
  %i.kx = load ptr, ptr %i.ak, align 8, !tbaa !72 ; 3 uses
  %i.ky = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.kz = getelementptr [4 x i8], ptr %i.ky, i64 %i.ar ; 5 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !25
  %i.lb = zext i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.lb
  tail call void @llvm.prefetch.p0(ptr %i.lc, i32 0, i32 3, i32 1)
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !25
  %i.lf = zext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.lf
  tail call void @llvm.prefetch.p0(ptr %i.lg, i32 0, i32 3, i32 1)
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !25
  %i.lj = zext i32 %i.li to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.lj
  tail call void @llvm.prefetch.p0(ptr %i.lk, i32 0, i32 3, i32 1)
  %i.ll = add nuw i32 %.0262.i.lcssa, %i.ay       ; 3 uses
  %i.lm = ptrtoint ptr %i.kx to i64
  %i.ln = ptrtoint ptr %i.kw to i64
  %.neg.i.i.neg = sub i64 %i.lm, %i.ln
  %.neg107.i.i.neg = trunc i64 %.neg.i.i.neg to i32
  %.neg = sub i32 %.neg107.i.i.neg, %i.m          ; 2 uses
  %i.lo = tail call i32 @llvm.umin.i32(i32 %i.ll, i32 3) ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kz, i64 12
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !25 ; 3 uses
  %i.lr = lshr i32 %i.lq, 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !19 ; 3 uses
  %i.lu = zext nneg i32 %i.lr to i64              ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.lu
  tail call void @llvm.prefetch.p0(ptr %i.lv, i32 0, i32 3, i32 1)
  %.not103 = icmp eq i32 %i.ll, 0
  br i1 %.not103, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge78
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg53 = add i32 %i.s, 3
  %i.lx = add i32 %.neg53, %.neg
  %wide.trip.count130 = zext nneg i32 %i.lo to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph87, %.thread31
  %indvars.iv127 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next128, %.thread31 ] ; 2 uses
  %.0100.i.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.2102.i.i35, %.thread31 ] ; 4 uses
  %i.ly = getelementptr [4 x i8], ptr %i.kz, i64 %indvars.iv127
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !25 ; 3 uses
  %i.ma = zext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.ma ; 2 uses
  %.not.i.i = icmp eq i32 %i.lz, 0
  br i1 %.not.i.i, label %ZSTD_RowFindBestMatch.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val6 = load i32, ptr %i.mb, align 1, !tbaa !25
  %.val5 = load i32, ptr %1, align 1, !tbaa !25
  %i.mc = icmp eq i32 %.val6, %.val5
  br i1 %i.mc, label %bb.ac, label %.thread31

bb.ac:                                            ; preds = %bb.ab
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.me = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.lw, ptr noundef nonnull %i.md, ptr noundef %2, ptr noundef %i.kx, ptr noundef %i.o)
  %i.mf = add i64 %i.me, 4                        ; 4 uses
  %i.mg = icmp ugt i64 %i.mf, %.0100.i.i84
  br i1 %i.mg, label %bb.ad, label %.thread31

bb.ad:                                            ; preds = %bb.ac
  %i.mh = sub i32 %i.lx, %i.lz
  %i.mi = zext i32 %i.mh to i64
  store i64 %i.mi, ptr %3, align 8, !tbaa !26
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 %i.mf
  %.not = icmp eq ptr %i.mj, %2
  br i1 %.not, label %ZSTD_RowFindBestMatch.exit, label %.thread31

.thread31:                                        ; preds = %bb.ab, %bb.ac, %bb.ad
  %.2102.i.i35 = phi i64 [ %i.mf, %bb.ad ], [ %.0100.i.i84, %bb.ac ], [ %.0100.i.i84, %bb.ab ] ; 2 uses
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %._crit_edge88, label %bb.aa, !llvm.loop !194

._crit_edge88:                                    ; preds = %.thread31, %._crit_edge78
  %.1104.i.i.lcssa = phi i32 [ 0, %._crit_edge78 ], [ %i.lo, %.thread31 ]
  %.0100.i.i.lcssa = phi i64 [ %.3261.i, %._crit_edge78 ], [ %.2102.i.i35, %.thread31 ] ; 2 uses
  %i.mk = and i32 %i.lq, 255
  %i.ml = sub i32 %i.ll, %.1104.i.i.lcssa
  %i.mm = tail call i32 @llvm.umin.i32(i32 %i.ml, i32 %i.mk) ; 4 uses
  %.not104 = icmp eq i32 %i.mm, 0
  br i1 %.not104, label %ZSTD_RowFindBestMatch.exit, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %._crit_edge88
  %wide.trip.count135 = zext nneg i32 %i.mm to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.lu ; 9 uses
  %xtraiter = and i64 %wide.trip.count135, 7      ; 3 uses
  %i.mn = icmp samesign ult i32 %i.mm, 8
  br i1 %i.mn, label %.lr.ph93.epil.preheader, label %.lr.ph93.preheader.new

.lr.ph93.preheader.new:                           ; preds = %.lr.ph93.preheader
  %unroll_iter = and i64 %wide.trip.count135, 248
  br label %.lr.ph93

.lr.ph97.unr-lcssa:                               ; preds = %.lr.ph93
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph97, label %.lr.ph93.epil.preheader

.lr.ph93.epil.preheader:                          ; preds = %.lr.ph97.unr-lcssa, %.lr.ph93.preheader
  %indvars.iv132.epil.init = phi i64 [ 0, %.lr.ph93.preheader ], [ %indvars.iv.next133.7, %.lr.ph97.unr-lcssa ]
  %lcmp.mod171 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod171)
  br label %.lr.ph93.epil

.lr.ph93.epil:                                    ; preds = %.lr.ph93.epil, %.lr.ph93.epil.preheader
  %indvars.iv132.epil = phi i64 [ %indvars.iv132.epil.init, %.lr.ph93.epil.preheader ], [ %indvars.iv.next133.epil, %.lr.ph93.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph93.epil.preheader ], [ %epil.iter.next, %.lr.ph93.epil ]
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132.epil
  %i.mo = load i32, ptr %gep.epil, align 4, !tbaa !25
  %i.mp = zext i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.mp
  tail call void @llvm.prefetch.p0(ptr %i.mq, i32 0, i32 3, i32 1)
  %indvars.iv.next133.epil = add nuw nsw i64 %indvars.iv132.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph97, label %.lr.ph93.epil, !llvm.loop !205

.lr.ph97:                                         ; preds = %.lr.ph93.epil, %.lr.ph97.unr-lcssa
  %.val7 = load i32, ptr %1, align 1, !tbaa !25
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg51 = add i32 %i.s, 3
  %i.ms = add i32 %.neg51, %.neg
  %i.mt = lshr i32 %i.lq, 8
  %i.mu = zext nneg i32 %i.mt to i64
  br label %bb.ae

.lr.ph93:                                         ; preds = %.lr.ph93, %.lr.ph93.preheader.new
  %indvars.iv132 = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %indvars.iv.next133.7, %.lr.ph93 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %niter.next.7, %.lr.ph93 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %i.mv = load i32, ptr %gep, align 4, !tbaa !25
  %i.mw = zext i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.mw
  tail call void @llvm.prefetch.p0(ptr %i.mx, i32 0, i32 3, i32 1)
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %i.mz = load i32, ptr %gep.1, align 4, !tbaa !25
  %i.na = zext i32 %i.mz to i64
  %i.nb = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.na
  tail call void @llvm.prefetch.p0(ptr %i.nb, i32 0, i32 3, i32 1)
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.nd = load i32, ptr %gep.2, align 4, !tbaa !25
  %i.ne = zext i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.ne
  tail call void @llvm.prefetch.p0(ptr %i.nf, i32 0, i32 3, i32 1)
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.ng, i64 12
  %i.nh = load i32, ptr %gep.3, align 4, !tbaa !25
  %i.ni = zext i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.ni
  tail call void @llvm.prefetch.p0(ptr %i.nj, i32 0, i32 3, i32 1)
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %i.nl = load i32, ptr %gep.4, align 4, !tbaa !25
  %i.nm = zext i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.nm
  tail call void @llvm.prefetch.p0(ptr %i.nn, i32 0, i32 3, i32 1)
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.no, i64 20
  %i.np = load i32, ptr %gep.5, align 4, !tbaa !25
  %i.nq = zext i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.nq
  tail call void @llvm.prefetch.p0(ptr %i.nr, i32 0, i32 3, i32 1)
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  %i.nt = load i32, ptr %gep.6, align 4, !tbaa !25
  %i.nu = zext i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.nu
  tail call void @llvm.prefetch.p0(ptr %i.nv, i32 0, i32 3, i32 1)
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.nw, i64 28
  %i.nx = load i32, ptr %gep.7, align 4, !tbaa !25
  %i.ny = zext i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.ny
  tail call void @llvm.prefetch.p0(ptr %i.nz, i32 0, i32 3, i32 1)
  %indvars.iv.next133.7 = add nuw nsw i64 %indvars.iv132, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph97.unr-lcssa, label %.lr.ph93, !llvm.loop !196

bb.ae:                                            ; preds = %.lr.ph97, %.thread41
  %indvars.iv137 = phi i64 [ %i.mu, %.lr.ph97 ], [ %indvars.iv.next138, %.thread41 ] ; 2 uses
  %.1.i.i96 = phi i32 [ 0, %.lr.ph97 ], [ %i.on, %.thread41 ]
  %.3.i.i94 = phi i64 [ %.0100.i.i.lcssa, %.lr.ph97 ], [ %.5.i.i.ph, %.thread41 ] ; 3 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv137
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !25 ; 2 uses
  %i.oc = zext i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.oc ; 2 uses
  %.val8 = load i32, ptr %i.od, align 1, !tbaa !25
  %i.oe = icmp eq i32 %.val8, %.val7
  br i1 %i.oe, label %bb.af, label %.thread41

bb.af:                                            ; preds = %bb.ae
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 4
  %i.og = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.mr, ptr noundef nonnull %i.of, ptr noundef %2, ptr noundef %i.kx, ptr noundef %i.o)
  %i.oh = add i64 %i.og, 4                        ; 4 uses
  %i.oi = icmp ugt i64 %i.oh, %.3.i.i94
  br i1 %i.oi, label %bb.ag, label %.thread41

bb.ag:                                            ; preds = %bb.af
  %i.oj = sub i32 %i.ms, %i.ob
  %i.ok = zext i32 %i.oj to i64
  store i64 %i.ok, ptr %3, align 8, !tbaa !26
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 %i.oh
  %i.om = icmp eq ptr %i.ol, %2
  br i1 %i.om, label %ZSTD_RowFindBestMatch.exit, label %.thread41

.thread41:                                        ; preds = %bb.ae, %bb.ag, %bb.af
  %.5.i.i.ph = phi i64 [ %i.oh, %bb.ag ], [ %.3.i.i94, %bb.af ], [ %.3.i.i94, %bb.ae ] ; 2 uses
  %i.on = add nuw nsw i32 %.1.i.i96, 1            ; 2 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1
  %exitcond139.not = icmp eq i32 %i.on, %i.mm
  br i1 %exitcond139.not, label %ZSTD_RowFindBestMatch.exit, label %bb.ae, !llvm.loop !197

ZSTD_RowFindBestMatch.exit:                       ; preds = %bb.aa, %bb.ad, %.thread41, %bb.ag, %._crit_edge88
  %.2.i.i = phi i64 [ %.0100.i.i.lcssa, %._crit_edge88 ], [ %i.oh, %bb.ag ], [ %.5.i.i.ph, %.thread41 ], [ %.0100.i.i84, %bb.aa ], [ %i.mf, %bb.ad ]
  ret i64 %.2.i.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_6_4(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.p = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = trunc i64 %i.r to i32                    ; 10 uses
  %i.t = load i32, ptr %i.i, align 8, !tbaa !183
  %i.u = shl nuw i32 1, %i.t                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !152  ; 2 uses
  %i.x = sub i32 %i.s, %i.w
  %i.y = icmp ugt i32 %i.x, %i.u
  %i.z = sub i32 %i.s, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !42
  %.not.i = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not.i, i1 %i.y, i1 false
  %i.ad = select i1 %i.ac, i32 %i.z, i32 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !184 ; 3 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.af, i32 4)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !37 ; 2 uses
  %i.ai = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !71 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 264
  %i.am = load i32, ptr %i.al, align 8, !tbaa !23
  %.val9 = load i64, ptr %1, align 1, !tbaa !26
  %i.an = mul i64 %.val9, -3523014627193847808    ; 2 uses
  %i.ao = sub i32 66, %i.am
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %i.an, %i.ap
  %i.ar = shl i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %i.av = icmp ugt i32 %i.af, 4
  %i.aw = add i32 %i.af, -4
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = select i1 %i.av, i32 %i.ax, i32 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !43
  %.not274.i = icmp eq i32 %i.ba, 0
  br i1 %.not274.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !21 ; 5 uses
  %i.bd = sub i32 %i.s, %i.bc
  %i.be = icmp ugt i32 %i.bd, 384
  br i1 %i.be, label %bb.c, label %ZSTD_row_update_internal.exit.i, !prof !187

bb.c:                                             ; preds = %bb.b
  %i.bf = icmp ult i32 %i.bc, -96
  br i1 %i.bf, label %.lr.ph, label %ZSTD_row_update_internalImpl.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.bg = add nuw i32 %i.bc, 96
  %i.bh = sub i32 56, %i.h
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = zext i32 %i.bc to i64
  %wide.trip.count = zext i32 %i.bg to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.bj, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bk = load i64, ptr %i.ag, align 8, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.val10 = load i64, ptr %i.bm, align 1, !tbaa !26
  %i.bn = mul i64 %.val10, -3523014627193847808
  %i.bo = xor i64 %i.bn, %i.bk
  %i.bp = lshr i64 %i.bo, %i.bi                   ; 2 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = lshr i64 %i.bp, 4
  %i.bs = and i64 %i.br, 268435440                ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bs
  tail call void @llvm.prefetch.p0(ptr %i.bt, i32 0, i32 3, i32 1)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bs
  tail call void @llvm.prefetch.p0(ptr %i.bu, i32 0, i32 3, i32 1)
  %i.bv = trunc nuw i64 %indvars.iv to i32
  %i.bw = and i64 %indvars.iv, 7
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !25 ; 2 uses
  store i32 %i.bq, ptr %i.bx, align 4, !tbaa !25
  %i.bz = lshr i32 %i.by, 4
  %i.ca = and i32 %i.bz, 268435440
  %i.cb = zext nneg i32 %i.ca to i64              ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cb ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !38
  %i.cf = add i8 %i.ce, 15
  %i.cg = and i8 %i.cf, 15                        ; 2 uses
  %i.ch = zext nneg i8 %i.cg to i32
  %i.ci = icmp eq i8 %i.cg, 0
  %i.cj = select i1 %i.ci, i32 15, i32 0
  %i.ck = add nuw nsw i32 %i.cj, %i.ch            ; 2 uses
  %i.cl = trunc nuw nsw i32 %i.ck to i8
  store i8 %i.cl, ptr %i.cd, align 1, !tbaa !38
  %i.cm = trunc i32 %i.by to i8
  %i.cn = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cn
  store i8 %i.cm, ptr %i.co, align 1, !tbaa !38
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cn
  store i32 %i.bv, ptr %i.cp, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ZSTD_row_update_internalImpl.exit.i.loopexit, label %bb.d, !llvm.loop !39

ZSTD_row_update_internalImpl.exit.i.loopexit:     ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !18
  %.pre136 = load ptr, ptr %i.d, align 8, !tbaa !35
  %.pre137 = load i32, ptr %i.g, align 4, !tbaa !36
  br label %ZSTD_row_update_internalImpl.exit.i

ZSTD_row_update_internalImpl.exit.i:              ; preds = %ZSTD_row_update_internalImpl.exit.i.loopexit, %bb.c
  %i.cq = phi i32 [ %.pre137, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.h, %bb.c ] ; 4 uses
  %i.cr = phi ptr [ %.pre136, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.e, %bb.c ] ; 6 uses
  %i.cs = phi ptr [ %.pre, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.c, %bb.c ] ; 6 uses
  %i.ct = add i32 %i.s, -32                       ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cv = zext i32 %i.ct to i64                   ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cv ; 2 uses
  %i.cx = icmp ugt ptr %i.cw, %i.cu
  br i1 %i.cx, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ZSTD_row_update_internalImpl.exit.i
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = trunc i64 %i.da to i32
  %i.dc = add i32 %i.db, 1
  %i.dd = tail call i32 @llvm.umin.i32(i32 %i.dc, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ZSTD_row_update_internalImpl.exit.i
  %i.de = phi i32 [ %i.dd, %bb.e ], [ 0, %ZSTD_row_update_internalImpl.exit.i ] ; 3 uses
  %i.df = add i32 %i.de, %i.ct                    ; 2 uses
  %i.dg = icmp ult i32 %i.ct, %i.df
  br i1 %i.dg, label %.lr.ph62, label %ZSTD_row_update_internal.exit.i
end_hunk_9
begin_hunk_10_@ZSTD_RowFindBestMatch_dedicatedDictSearch_6_4:bb.a
  %i.kp = sub i32 %i.jg, %i.ji
  %i.kq = zext i32 %i.kp to i64
  store i64 %i.kq, ptr %3, align 8, !tbaa !26
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.ks = icmp eq ptr %i.kr, %2
  br i1 %i.ks, label %._crit_edge78, label %ZSTD_count.exit.thread

ZSTD_count.exit.thread:                           ; preds = %bb.l, %bb.y, %ZSTD_count.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i74, %ZSTD_count.exit ], [ %.0258.i74, %bb.l ] ; 2 uses
  %i.kt = add nuw i64 %.0248.i75, 1               ; 2 uses
  %exitcond118.not = icmp eq i64 %i.kt, %.0249.i.lcssa
  br i1 %exitcond118.not, label %._crit_edge78, label %bb.l, !llvm.loop !190

._crit_edge78:                                    ; preds = %ZSTD_count.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %ZSTD_count.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !8  ; 15 uses
  %i.kw = load ptr, ptr %i.ak, align 8, !tbaa !72 ; 3 uses
  %i.kx = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.ky = getelementptr [4 x i8], ptr %i.kx, i64 %i.ar ; 5 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !25
  %i.la = zext i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.la
  tail call void @llvm.prefetch.p0(ptr %i.lb, i32 0, i32 3, i32 1)
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !25
  %i.le = zext i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.le
  tail call void @llvm.prefetch.p0(ptr %i.lf, i32 0, i32 3, i32 1)
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !25
  %i.li = zext i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.li
  tail call void @llvm.prefetch.p0(ptr %i.lj, i32 0, i32 3, i32 1)
  %i.lk = add nuw i32 %.0262.i.lcssa, %i.ay       ; 3 uses
  %i.ll = ptrtoint ptr %i.kw to i64
  %i.lm = ptrtoint ptr %i.kv to i64
  %.neg.i.i.neg = sub i64 %i.ll, %i.lm
  %.neg107.i.i.neg = trunc i64 %.neg.i.i.neg to i32
  %.neg = sub i32 %.neg107.i.i.neg, %i.m          ; 2 uses
  %i.ln = tail call i32 @llvm.umin.i32(i32 %i.lk, i32 3) ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !25 ; 3 uses
  %i.lq = lshr i32 %i.lp, 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !19 ; 3 uses
  %i.lt = zext nneg i32 %i.lq to i64              ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lt
  tail call void @llvm.prefetch.p0(ptr %i.lu, i32 0, i32 3, i32 1)
  %.not103 = icmp eq i32 %i.lk, 0
  br i1 %.not103, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge78
  %i.lv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg53 = add i32 %i.s, 3
  %i.lw = add i32 %.neg53, %.neg
  %wide.trip.count126 = zext nneg i32 %i.ln to i64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph87, %.thread31
  %indvars.iv123 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next124, %.thread31 ] ; 2 uses
  %.0100.i.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.2102.i.i35, %.thread31 ] ; 4 uses
  %i.lx = getelementptr [4 x i8], ptr %i.ky, i64 %indvars.iv123
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !25 ; 3 uses
  %i.lz = zext i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.lz ; 2 uses
  %.not.i.i = icmp eq i32 %i.ly, 0
  br i1 %.not.i.i, label %ZSTD_RowFindBestMatch.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val6 = load i32, ptr %i.ma, align 1, !tbaa !25
  %.val5 = load i32, ptr %1, align 1, !tbaa !25
  %i.mb = icmp eq i32 %.val6, %.val5
  br i1 %i.mb, label %bb.ab, label %.thread31

bb.ab:                                            ; preds = %bb.aa
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.md = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.lv, ptr noundef nonnull %i.mc, ptr noundef %2, ptr noundef %i.kw, ptr noundef %i.o)
  %i.me = add i64 %i.md, 4                        ; 4 uses
  %i.mf = icmp ugt i64 %i.me, %.0100.i.i84
  br i1 %i.mf, label %bb.ac, label %.thread31

bb.ac:                                            ; preds = %bb.ab
  %i.mg = sub i32 %i.lw, %i.ly
  %i.mh = zext i32 %i.mg to i64
  store i64 %i.mh, ptr %3, align 8, !tbaa !26
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 %i.me
  %.not = icmp eq ptr %i.mi, %2
  br i1 %.not, label %ZSTD_RowFindBestMatch.exit, label %.thread31

.thread31:                                        ; preds = %bb.aa, %bb.ab, %bb.ac
  %.2102.i.i35 = phi i64 [ %i.me, %bb.ac ], [ %.0100.i.i84, %bb.ab ], [ %.0100.i.i84, %bb.aa ] ; 2 uses
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %._crit_edge88, label %bb.z, !llvm.loop !194

._crit_edge88:                                    ; preds = %.thread31, %._crit_edge78
  %.1104.i.i.lcssa = phi i32 [ 0, %._crit_edge78 ], [ %i.ln, %.thread31 ]
  %.0100.i.i.lcssa = phi i64 [ %.3261.i, %._crit_edge78 ], [ %.2102.i.i35, %.thread31 ] ; 2 uses
  %i.mj = and i32 %i.lp, 255
  %i.mk = sub i32 %i.lk, %.1104.i.i.lcssa
  %i.ml = tail call i32 @llvm.umin.i32(i32 %i.mk, i32 %i.mj) ; 4 uses
  %.not104 = icmp eq i32 %i.ml, 0
  br i1 %.not104, label %ZSTD_RowFindBestMatch.exit, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %._crit_edge88
  %wide.trip.count131 = zext nneg i32 %i.ml to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lt ; 9 uses
  %xtraiter167 = and i64 %wide.trip.count131, 7   ; 3 uses
  %i.mm = icmp samesign ult i32 %i.ml, 8
  br i1 %i.mm, label %.lr.ph93.epil.preheader, label %.lr.ph93.preheader.new

.lr.ph93.preheader.new:                           ; preds = %.lr.ph93.preheader
  %unroll_iter = and i64 %wide.trip.count131, 248
  br label %.lr.ph93

.lr.ph97.unr-lcssa:                               ; preds = %.lr.ph93
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod168.not, label %.lr.ph97, label %.lr.ph93.epil.preheader

.lr.ph93.epil.preheader:                          ; preds = %.lr.ph97.unr-lcssa, %.lr.ph93.preheader
  %indvars.iv128.epil.init = phi i64 [ 0, %.lr.ph93.preheader ], [ %indvars.iv.next129.7, %.lr.ph97.unr-lcssa ]
  %lcmp.mod169 = icmp ne i64 %xtraiter167, 0
  tail call void @llvm.assume(i1 %lcmp.mod169)
  br label %.lr.ph93.epil

.lr.ph93.epil:                                    ; preds = %.lr.ph93.epil, %.lr.ph93.epil.preheader
  %indvars.iv128.epil = phi i64 [ %indvars.iv128.epil.init, %.lr.ph93.epil.preheader ], [ %indvars.iv.next129.epil, %.lr.ph93.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph93.epil.preheader ], [ %epil.iter.next, %.lr.ph93.epil ]
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128.epil
  %i.mn = load i32, ptr %gep.epil, align 4, !tbaa !25
  %i.mo = zext i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mo
  tail call void @llvm.prefetch.p0(ptr %i.mp, i32 0, i32 3, i32 1)
  %indvars.iv.next129.epil = add nuw nsw i64 %indvars.iv128.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter167
  br i1 %epil.iter.cmp.not, label %.lr.ph97, label %.lr.ph93.epil, !llvm.loop !206

.lr.ph97:                                         ; preds = %.lr.ph93.epil, %.lr.ph97.unr-lcssa
  %.val7 = load i32, ptr %1, align 1, !tbaa !25
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg51 = add i32 %i.s, 3
  %i.mr = add i32 %.neg51, %.neg
  %i.ms = lshr i32 %i.lp, 8
  %i.mt = zext nneg i32 %i.ms to i64
  br label %bb.ad

.lr.ph93:                                         ; preds = %.lr.ph93, %.lr.ph93.preheader.new
  %indvars.iv128 = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %indvars.iv.next129.7, %.lr.ph93 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %niter.next.7, %.lr.ph93 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %i.mu = load i32, ptr %gep, align 4, !tbaa !25
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mv
  tail call void @llvm.prefetch.p0(ptr %i.mw, i32 0, i32 3, i32 1)
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  %i.my = load i32, ptr %gep.1, align 4, !tbaa !25
  %i.mz = zext i32 %i.my to i64
  %i.na = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.mz
  tail call void @llvm.prefetch.p0(ptr %i.na, i32 0, i32 3, i32 1)
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nc = load i32, ptr %gep.2, align 4, !tbaa !25
  %i.nd = zext i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nd
  tail call void @llvm.prefetch.p0(ptr %i.ne, i32 0, i32 3, i32 1)
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.nf, i64 12
  %i.ng = load i32, ptr %gep.3, align 4, !tbaa !25
  %i.nh = zext i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nh
  tail call void @llvm.prefetch.p0(ptr %i.ni, i32 0, i32 3, i32 1)
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nk = load i32, ptr %gep.4, align 4, !tbaa !25
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nl
  tail call void @llvm.prefetch.p0(ptr %i.nm, i32 0, i32 3, i32 1)
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.nn, i64 20
  %i.no = load i32, ptr %gep.5, align 4, !tbaa !25
  %i.np = zext i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.np
  tail call void @llvm.prefetch.p0(ptr %i.nq, i32 0, i32 3, i32 1)
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  %i.ns = load i32, ptr %gep.6, align 4, !tbaa !25
  %i.nt = zext i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nt
  tail call void @llvm.prefetch.p0(ptr %i.nu, i32 0, i32 3, i32 1)
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv128
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.nv, i64 28
  %i.nw = load i32, ptr %gep.7, align 4, !tbaa !25
  %i.nx = zext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.nx
  tail call void @llvm.prefetch.p0(ptr %i.ny, i32 0, i32 3, i32 1)
  %indvars.iv.next129.7 = add nuw nsw i64 %indvars.iv128, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph97.unr-lcssa, label %.lr.ph93, !llvm.loop !196

bb.ad:                                            ; preds = %.lr.ph97, %.thread41
  %indvars.iv133 = phi i64 [ %i.mt, %.lr.ph97 ], [ %indvars.iv.next134, %.thread41 ] ; 2 uses
  %.1.i.i96 = phi i32 [ 0, %.lr.ph97 ], [ %i.om, %.thread41 ]
  %.3.i.i94 = phi i64 [ %.0100.i.i.lcssa, %.lr.ph97 ], [ %.5.i.i.ph, %.thread41 ] ; 3 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv133
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !25 ; 2 uses
  %i.ob = zext i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.ob ; 2 uses
  %.val8 = load i32, ptr %i.oc, align 1, !tbaa !25
  %i.od = icmp eq i32 %.val8, %.val7
  br i1 %i.od, label %bb.ae, label %.thread41

bb.ae:                                            ; preds = %bb.ad
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  %i.of = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.mq, ptr noundef nonnull %i.oe, ptr noundef %2, ptr noundef %i.kw, ptr noundef %i.o)
  %i.og = add i64 %i.of, 4                        ; 4 uses
  %i.oh = icmp ugt i64 %i.og, %.3.i.i94
  br i1 %i.oh, label %bb.af, label %.thread41

bb.af:                                            ; preds = %bb.ae
  %i.oi = sub i32 %i.mr, %i.oa
  %i.oj = zext i32 %i.oi to i64
  store i64 %i.oj, ptr %3, align 8, !tbaa !26
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 %i.og
  %i.ol = icmp eq ptr %i.ok, %2
  br i1 %i.ol, label %ZSTD_RowFindBestMatch.exit, label %.thread41

.thread41:                                        ; preds = %bb.ad, %bb.af, %bb.ae
  %.5.i.i.ph = phi i64 [ %i.og, %bb.af ], [ %.3.i.i94, %bb.ae ], [ %.3.i.i94, %bb.ad ] ; 2 uses
  %i.om = add nuw nsw i32 %.1.i.i96, 1            ; 2 uses
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  %exitcond135.not = icmp eq i32 %i.om, %i.ml
  br i1 %exitcond135.not, label %ZSTD_RowFindBestMatch.exit, label %bb.ad, !llvm.loop !197

ZSTD_RowFindBestMatch.exit:                       ; preds = %bb.z, %bb.ac, %.thread41, %bb.af, %._crit_edge88
  %.2.i.i = phi i64 [ %.0100.i.i.lcssa, %._crit_edge88 ], [ %i.og, %bb.af ], [ %.5.i.i.ph, %.thread41 ], [ %.0100.i.i84, %bb.z ], [ %i.me, %bb.ac ]
  ret i64 %.2.i.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_6_5(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.p = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = trunc i64 %i.r to i32                    ; 10 uses
  %i.t = load i32, ptr %i.i, align 8, !tbaa !183
  %i.u = shl nuw i32 1, %i.t                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !152  ; 2 uses
  %i.x = sub i32 %i.s, %i.w
  %i.y = icmp ugt i32 %i.x, %i.u
  %i.z = sub i32 %i.s, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !42
  %.not.i = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not.i, i1 %i.y, i1 false
  %i.ad = select i1 %i.ac, i32 %i.z, i32 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !184 ; 3 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.af, i32 5)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !37 ; 2 uses
  %i.ai = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !71 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 264
  %i.am = load i32, ptr %i.al, align 8, !tbaa !23
  %.val9 = load i64, ptr %1, align 1, !tbaa !26
  %i.an = mul i64 %.val9, -3523014627193847808    ; 2 uses
  %i.ao = sub i32 66, %i.am
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %i.an, %i.ap
  %i.ar = shl i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %i.av = icmp ugt i32 %i.af, 5
  %i.aw = add i32 %i.af, -5
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = select i1 %i.av, i32 %i.ax, i32 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !43
  %.not274.i = icmp eq i32 %i.ba, 0
  br i1 %.not274.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !21 ; 5 uses
  %i.bd = sub i32 %i.s, %i.bc
  %i.be = icmp ugt i32 %i.bd, 384
  br i1 %i.be, label %bb.c, label %ZSTD_row_update_internal.exit.i, !prof !187

bb.c:                                             ; preds = %bb.b
  %i.bf = icmp ult i32 %i.bc, -96
  br i1 %i.bf, label %.lr.ph, label %ZSTD_row_update_internalImpl.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.bg = add nuw i32 %i.bc, 96
  %i.bh = sub i32 56, %i.h
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = zext i32 %i.bc to i64
  %wide.trip.count = zext i32 %i.bg to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.bj, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bk = load i64, ptr %i.ag, align 8, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.val10 = load i64, ptr %i.bm, align 1, !tbaa !26
  %i.bn = mul i64 %.val10, -3523014627193847808
  %i.bo = xor i64 %i.bn, %i.bk
  %i.bp = lshr i64 %i.bo, %i.bi                   ; 2 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = lshr i64 %i.bp, 3
  %i.bs = and i64 %i.br, 536870880                ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bs ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bt, i32 0, i32 3, i32 1)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bu, i32 0, i32 3, i32 1)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bs
  tail call void @llvm.prefetch.p0(ptr %i.bv, i32 0, i32 3, i32 1)
  %i.bw = trunc nuw i64 %indvars.iv to i32
  %i.bx = and i64 %indvars.iv, 7
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bx ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !25 ; 2 uses
  store i32 %i.bq, ptr %i.by, align 4, !tbaa !25
  %i.ca = lshr i32 %i.bz, 3
  %i.cb = and i32 %i.ca, 536870880
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cc ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !38
  %i.cg = add i8 %i.cf, 31
  %i.ch = and i8 %i.cg, 31                        ; 2 uses
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = icmp eq i8 %i.ch, 0
  %i.ck = select i1 %i.cj, i32 31, i32 0
  %i.cl = add nuw nsw i32 %i.ck, %i.ci            ; 2 uses
  %i.cm = trunc nuw nsw i32 %i.cl to i8
  store i8 %i.cm, ptr %i.ce, align 1, !tbaa !38
  %i.cn = trunc i32 %i.bz to i8
  %i.co = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.co
  store i8 %i.cn, ptr %i.cp, align 1, !tbaa !38
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.co
  store i32 %i.bw, ptr %i.cq, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ZSTD_row_update_internalImpl.exit.i.loopexit, label %bb.d, !llvm.loop !39

ZSTD_row_update_internalImpl.exit.i.loopexit:     ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !18
  %.pre139 = load ptr, ptr %i.d, align 8, !tbaa !35
  %.pre140 = load i32, ptr %i.g, align 4, !tbaa !36
  br label %ZSTD_row_update_internalImpl.exit.i

ZSTD_row_update_internalImpl.exit.i:              ; preds = %ZSTD_row_update_internalImpl.exit.i.loopexit, %bb.c
  %i.cr = phi i32 [ %.pre140, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.h, %bb.c ] ; 4 uses
  %i.cs = phi ptr [ %.pre139, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.e, %bb.c ] ; 6 uses
  %i.ct = phi ptr [ %.pre, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.c, %bb.c ] ; 6 uses
  %i.cu = add i32 %i.s, -32                       ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cw = zext i32 %i.cu to i64                   ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cw ; 2 uses
  %i.cy = icmp ugt ptr %i.cx, %i.cv
  br i1 %i.cy, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ZSTD_row_update_internalImpl.exit.i
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = trunc i64 %i.db to i32
  %i.dd = add i32 %i.dc, 1
  %i.de = tail call i32 @llvm.umin.i32(i32 %i.dd, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ZSTD_row_update_internalImpl.exit.i
  %i.df = phi i32 [ %i.de, %bb.e ], [ 0, %ZSTD_row_update_internalImpl.exit.i ] ; 3 uses
  %i.dg = add i32 %i.df, %i.cu                    ; 2 uses
end_hunk_10
begin_hunk_11_@ZSTD_RowFindBestMatch_dedicatedDictSearch_6_5:bb.a
  %i.kx = sub i32 %i.jo, %i.jq
  %i.ky = zext i32 %i.kx to i64
  store i64 %i.ky, ptr %3, align 8, !tbaa !26
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.la = icmp eq ptr %i.kz, %2
  br i1 %i.la, label %._crit_edge78, label %ZSTD_count.exit.thread

ZSTD_count.exit.thread:                           ; preds = %bb.l, %bb.y, %ZSTD_count.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.y ], [ %.0258.i74, %ZSTD_count.exit ], [ %.0258.i74, %bb.l ] ; 2 uses
  %i.lb = add nuw i64 %.0248.i75, 1               ; 2 uses
  %exitcond121.not = icmp eq i64 %i.lb, %.0249.i.lcssa
  br i1 %exitcond121.not, label %._crit_edge78, label %bb.l, !llvm.loop !190

._crit_edge78:                                    ; preds = %ZSTD_count.exit.thread, %bb.y, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.y ], [ %.2260.i.ph, %ZSTD_count.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !8  ; 15 uses
  %i.le = load ptr, ptr %i.ak, align 8, !tbaa !72 ; 3 uses
  %i.lf = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.lg = getelementptr [4 x i8], ptr %i.lf, i64 %i.ar ; 5 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !25
  %i.li = zext i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.li
  tail call void @llvm.prefetch.p0(ptr %i.lj, i32 0, i32 3, i32 1)
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !25
  %i.lm = zext i32 %i.ll to i64
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lm
  tail call void @llvm.prefetch.p0(ptr %i.ln, i32 0, i32 3, i32 1)
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !25
  %i.lq = zext i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lq
  tail call void @llvm.prefetch.p0(ptr %i.lr, i32 0, i32 3, i32 1)
  %i.ls = add nuw i32 %.0262.i.lcssa, %i.ay       ; 3 uses
  %i.lt = ptrtoint ptr %i.le to i64
  %i.lu = ptrtoint ptr %i.ld to i64
  %.neg.i.i.neg = sub i64 %i.lt, %i.lu
  %.neg107.i.i.neg = trunc i64 %.neg.i.i.neg to i32
  %.neg = sub i32 %.neg107.i.i.neg, %i.m          ; 2 uses
  %i.lv = tail call i32 @llvm.umin.i32(i32 %i.ls, i32 3) ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lg, i64 12
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !25 ; 3 uses
  %i.ly = lshr i32 %i.lx, 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !19 ; 3 uses
  %i.mb = zext nneg i32 %i.ly to i64              ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.mb
  tail call void @llvm.prefetch.p0(ptr %i.mc, i32 0, i32 3, i32 1)
  %.not103 = icmp eq i32 %i.ls, 0
  br i1 %.not103, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge78
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg53 = add i32 %i.s, 3
  %i.me = add i32 %.neg53, %.neg
  %wide.trip.count129 = zext nneg i32 %i.lv to i64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph87, %.thread31
  %indvars.iv126 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next127, %.thread31 ] ; 2 uses
  %.0100.i.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.2102.i.i35, %.thread31 ] ; 4 uses
  %i.mf = getelementptr [4 x i8], ptr %i.lg, i64 %indvars.iv126
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !25 ; 3 uses
  %i.mh = zext i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.mh ; 2 uses
  %.not.i.i = icmp eq i32 %i.mg, 0
  br i1 %.not.i.i, label %ZSTD_RowFindBestMatch.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val6 = load i32, ptr %i.mi, align 1, !tbaa !25
  %.val5 = load i32, ptr %1, align 1, !tbaa !25
  %i.mj = icmp eq i32 %.val6, %.val5
  br i1 %i.mj, label %bb.ab, label %.thread31

bb.ab:                                            ; preds = %bb.aa
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  %i.ml = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.md, ptr noundef nonnull %i.mk, ptr noundef %2, ptr noundef %i.le, ptr noundef %i.o)
  %i.mm = add i64 %i.ml, 4                        ; 4 uses
  %i.mn = icmp ugt i64 %i.mm, %.0100.i.i84
  br i1 %i.mn, label %bb.ac, label %.thread31

bb.ac:                                            ; preds = %bb.ab
  %i.mo = sub i32 %i.me, %i.mg
  %i.mp = zext i32 %i.mo to i64
  store i64 %i.mp, ptr %3, align 8, !tbaa !26
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 %i.mm
  %.not = icmp eq ptr %i.mq, %2
  br i1 %.not, label %ZSTD_RowFindBestMatch.exit, label %.thread31

.thread31:                                        ; preds = %bb.aa, %bb.ab, %bb.ac
  %.2102.i.i35 = phi i64 [ %i.mm, %bb.ac ], [ %.0100.i.i84, %bb.ab ], [ %.0100.i.i84, %bb.aa ] ; 2 uses
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count129
  br i1 %exitcond130.not, label %._crit_edge88, label %bb.z, !llvm.loop !194

._crit_edge88:                                    ; preds = %.thread31, %._crit_edge78
  %.1104.i.i.lcssa = phi i32 [ 0, %._crit_edge78 ], [ %i.lv, %.thread31 ]
  %.0100.i.i.lcssa = phi i64 [ %.3261.i, %._crit_edge78 ], [ %.2102.i.i35, %.thread31 ] ; 2 uses
  %i.mr = and i32 %i.lx, 255
  %i.ms = sub i32 %i.ls, %.1104.i.i.lcssa
  %i.mt = tail call i32 @llvm.umin.i32(i32 %i.ms, i32 %i.mr) ; 4 uses
  %.not104 = icmp eq i32 %i.mt, 0
  br i1 %.not104, label %ZSTD_RowFindBestMatch.exit, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %._crit_edge88
  %wide.trip.count134 = zext nneg i32 %i.mt to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %i.mb ; 9 uses
  %xtraiter170 = and i64 %wide.trip.count134, 7   ; 3 uses
  %i.mu = icmp samesign ult i32 %i.mt, 8
  br i1 %i.mu, label %.lr.ph93.epil.preheader, label %.lr.ph93.preheader.new

.lr.ph93.preheader.new:                           ; preds = %.lr.ph93.preheader
  %unroll_iter = and i64 %wide.trip.count134, 248
  br label %.lr.ph93

.lr.ph97.unr-lcssa:                               ; preds = %.lr.ph93
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  br i1 %lcmp.mod171.not, label %.lr.ph97, label %.lr.ph93.epil.preheader

.lr.ph93.epil.preheader:                          ; preds = %.lr.ph97.unr-lcssa, %.lr.ph93.preheader
  %indvars.iv131.epil.init = phi i64 [ 0, %.lr.ph93.preheader ], [ %indvars.iv.next132.7, %.lr.ph97.unr-lcssa ]
  %lcmp.mod172 = icmp ne i64 %xtraiter170, 0
  tail call void @llvm.assume(i1 %lcmp.mod172)
  br label %.lr.ph93.epil

.lr.ph93.epil:                                    ; preds = %.lr.ph93.epil, %.lr.ph93.epil.preheader
  %indvars.iv131.epil = phi i64 [ %indvars.iv131.epil.init, %.lr.ph93.epil.preheader ], [ %indvars.iv.next132.epil, %.lr.ph93.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph93.epil.preheader ], [ %epil.iter.next, %.lr.ph93.epil ]
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131.epil
  %i.mv = load i32, ptr %gep.epil, align 4, !tbaa !25
  %i.mw = zext i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.mw
  tail call void @llvm.prefetch.p0(ptr %i.mx, i32 0, i32 3, i32 1)
  %indvars.iv.next132.epil = add nuw nsw i64 %indvars.iv131.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter170
  br i1 %epil.iter.cmp.not, label %.lr.ph97, label %.lr.ph93.epil, !llvm.loop !207

.lr.ph97:                                         ; preds = %.lr.ph93.epil, %.lr.ph97.unr-lcssa
  %.val7 = load i32, ptr %1, align 1, !tbaa !25
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg51 = add i32 %i.s, 3
  %i.mz = add i32 %.neg51, %.neg
  %i.na = lshr i32 %i.lx, 8
  %i.nb = zext nneg i32 %i.na to i64
  br label %bb.ad

.lr.ph93:                                         ; preds = %.lr.ph93, %.lr.ph93.preheader.new
  %indvars.iv131 = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %indvars.iv.next132.7, %.lr.ph93 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %niter.next.7, %.lr.ph93 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %i.nc = load i32, ptr %gep, align 4, !tbaa !25
  %i.nd = zext i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.nd
  tail call void @llvm.prefetch.p0(ptr %i.ne, i32 0, i32 3, i32 1)
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  %i.ng = load i32, ptr %gep.1, align 4, !tbaa !25
  %i.nh = zext i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.nh
  tail call void @llvm.prefetch.p0(ptr %i.ni, i32 0, i32 3, i32 1)
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nk = load i32, ptr %gep.2, align 4, !tbaa !25
  %i.nl = zext i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.nl
  tail call void @llvm.prefetch.p0(ptr %i.nm, i32 0, i32 3, i32 1)
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.nn, i64 12
  %i.no = load i32, ptr %gep.3, align 4, !tbaa !25
  %i.np = zext i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.np
  tail call void @llvm.prefetch.p0(ptr %i.nq, i32 0, i32 3, i32 1)
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.ns = load i32, ptr %gep.4, align 4, !tbaa !25
  %i.nt = zext i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.nt
  tail call void @llvm.prefetch.p0(ptr %i.nu, i32 0, i32 3, i32 1)
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.nv, i64 20
  %i.nw = load i32, ptr %gep.5, align 4, !tbaa !25
  %i.nx = zext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.nx
  tail call void @llvm.prefetch.p0(ptr %i.ny, i32 0, i32 3, i32 1)
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  %i.oa = load i32, ptr %gep.6, align 4, !tbaa !25
  %i.ob = zext i32 %i.oa to i64
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.ob
  tail call void @llvm.prefetch.p0(ptr %i.oc, i32 0, i32 3, i32 1)
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv131
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.od, i64 28
  %i.oe = load i32, ptr %gep.7, align 4, !tbaa !25
  %i.of = zext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.of
  tail call void @llvm.prefetch.p0(ptr %i.og, i32 0, i32 3, i32 1)
  %indvars.iv.next132.7 = add nuw nsw i64 %indvars.iv131, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph97.unr-lcssa, label %.lr.ph93, !llvm.loop !196

bb.ad:                                            ; preds = %.lr.ph97, %.thread41
  %indvars.iv136 = phi i64 [ %i.nb, %.lr.ph97 ], [ %indvars.iv.next137, %.thread41 ] ; 2 uses
  %.1.i.i96 = phi i32 [ 0, %.lr.ph97 ], [ %i.ou, %.thread41 ]
  %.3.i.i94 = phi i64 [ %.0100.i.i.lcssa, %.lr.ph97 ], [ %.5.i.i.ph, %.thread41 ] ; 3 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv136
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !25 ; 2 uses
  %i.oj = zext i32 %i.oi to i64
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.oj ; 2 uses
  %.val8 = load i32, ptr %i.ok, align 1, !tbaa !25
  %i.ol = icmp eq i32 %.val8, %.val7
  br i1 %i.ol, label %bb.ae, label %.thread41

bb.ae:                                            ; preds = %bb.ad
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 4
  %i.on = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.my, ptr noundef nonnull %i.om, ptr noundef %2, ptr noundef %i.le, ptr noundef %i.o)
  %i.oo = add i64 %i.on, 4                        ; 4 uses
  %i.op = icmp ugt i64 %i.oo, %.3.i.i94
  br i1 %i.op, label %bb.af, label %.thread41

bb.af:                                            ; preds = %bb.ae
  %i.oq = sub i32 %i.mz, %i.oi
  %i.or = zext i32 %i.oq to i64
  store i64 %i.or, ptr %3, align 8, !tbaa !26
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 %i.oo
  %i.ot = icmp eq ptr %i.os, %2
  br i1 %i.ot, label %ZSTD_RowFindBestMatch.exit, label %.thread41

.thread41:                                        ; preds = %bb.ad, %bb.af, %bb.ae
  %.5.i.i.ph = phi i64 [ %i.oo, %bb.af ], [ %.3.i.i94, %bb.ae ], [ %.3.i.i94, %bb.ad ] ; 2 uses
  %i.ou = add nuw nsw i32 %.1.i.i96, 1            ; 2 uses
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  %exitcond138.not = icmp eq i32 %i.ou, %i.mt
  br i1 %exitcond138.not, label %ZSTD_RowFindBestMatch.exit, label %bb.ad, !llvm.loop !197

ZSTD_RowFindBestMatch.exit:                       ; preds = %bb.z, %bb.ac, %.thread41, %bb.af, %._crit_edge88
  %.2.i.i = phi i64 [ %.0100.i.i.lcssa, %._crit_edge88 ], [ %i.oo, %bb.af ], [ %.5.i.i.ph, %.thread41 ], [ %.0100.i.i84, %bb.z ], [ %i.mm, %bb.ac ]
  ret i64 %.2.i.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_6_6(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.p = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = trunc i64 %i.r to i32                    ; 10 uses
  %i.t = load i32, ptr %i.i, align 8, !tbaa !183
  %i.u = shl nuw i32 1, %i.t                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !152  ; 2 uses
  %i.x = sub i32 %i.s, %i.w
  %i.y = icmp ugt i32 %i.x, %i.u
  %i.z = sub i32 %i.s, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !42
  %.not.i = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not.i, i1 %i.y, i1 false
  %i.ad = select i1 %i.ac, i32 %i.z, i32 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !184 ; 3 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.af, i32 6)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !37 ; 2 uses
  %i.ai = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !71 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 264
  %i.am = load i32, ptr %i.al, align 8, !tbaa !23
  %.val9 = load i64, ptr %1, align 1, !tbaa !26
  %i.an = mul i64 %.val9, -3523014627193847808    ; 2 uses
  %i.ao = sub i32 66, %i.am
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %i.an, %i.ap
  %i.ar = shl i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %i.av = icmp ugt i32 %i.af, 6
  %i.aw = add i32 %i.af, -6
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = select i1 %i.av, i32 %i.ax, i32 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !43
  %.not274.i = icmp eq i32 %i.ba, 0
  br i1 %.not274.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !21 ; 5 uses
  %i.bd = sub i32 %i.s, %i.bc
  %i.be = icmp ugt i32 %i.bd, 384
  br i1 %i.be, label %bb.c, label %ZSTD_row_update_internal.exit.i, !prof !187

bb.c:                                             ; preds = %bb.b
  %i.bf = icmp ult i32 %i.bc, -96
  br i1 %i.bf, label %.lr.ph, label %ZSTD_row_update_internalImpl.exit.i

.lr.ph:                                           ; preds = %bb.c
  %i.bg = add nuw i32 %i.bc, 96
  %i.bh = sub i32 56, %i.h
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = zext i32 %i.bc to i64
  %wide.trip.count = zext i32 %i.bg to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.bj, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.bk = load i64, ptr %i.ag, align 8, !tbaa !37
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.val10 = load i64, ptr %i.bm, align 1, !tbaa !26
  %i.bn = mul i64 %.val10, -3523014627193847808
  %i.bo = xor i64 %i.bn, %i.bk
  %i.bp = lshr i64 %i.bo, %i.bi                   ; 2 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = lshr i64 %i.bp, 2
  %i.bs = and i64 %i.br, 1073741760               ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bs ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bt, i32 0, i32 3, i32 1)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bu, i32 0, i32 3, i32 1)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bs ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.bv, i32 0, i32 3, i32 1)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bw, i32 0, i32 3, i32 1)
  %i.bx = trunc nuw i64 %indvars.iv to i32
  %i.by = and i64 %indvars.iv, 7
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !25 ; 2 uses
  store i32 %i.bq, ptr %i.bz, align 4, !tbaa !25
  %i.cb = lshr i32 %i.ca, 2
  %i.cc = and i32 %i.cb, 1073741760
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cd ; 3 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !38
  %i.ch = add i8 %i.cg, 63
  %i.ci = and i8 %i.ch, 63                        ; 2 uses
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = icmp eq i8 %i.ci, 0
  %i.cl = select i1 %i.ck, i32 63, i32 0
  %i.cm = add nuw nsw i32 %i.cl, %i.cj            ; 2 uses
  %i.cn = trunc nuw nsw i32 %i.cm to i8
  store i8 %i.cn, ptr %i.cf, align 1, !tbaa !38
  %i.co = trunc i32 %i.ca to i8
  %i.cp = zext nneg i32 %i.cm to i64              ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cp
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !38
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cp
  store i32 %i.bx, ptr %i.cr, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %ZSTD_row_update_internalImpl.exit.i.loopexit, label %bb.d, !llvm.loop !39

ZSTD_row_update_internalImpl.exit.i.loopexit:     ; preds = %bb.d
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !18
  %.pre140 = load ptr, ptr %i.d, align 8, !tbaa !35
  %.pre141 = load i32, ptr %i.g, align 4, !tbaa !36
  br label %ZSTD_row_update_internalImpl.exit.i

ZSTD_row_update_internalImpl.exit.i:              ; preds = %ZSTD_row_update_internalImpl.exit.i.loopexit, %bb.c
  %i.cs = phi i32 [ %.pre141, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.h, %bb.c ] ; 3 uses
  %i.ct = phi ptr [ %.pre140, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.e, %bb.c ] ; 3 uses
  %i.cu = phi ptr [ %.pre, %ZSTD_row_update_internalImpl.exit.i.loopexit ], [ %i.c, %bb.c ] ; 3 uses
  %i.cv = add i32 %i.s, -32                       ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.cx = zext i32 %i.cv to i64                   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.cx ; 2 uses
  %i.cz = icmp ugt ptr %i.cy, %i.cw
  br i1 %i.cz, label %bb.f, label %bb.e

bb.e:                                             ; preds = %ZSTD_row_update_internalImpl.exit.i
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = trunc i64 %i.dc to i32
  %i.de = add i32 %i.dd, 1
  %i.df = tail call i32 @llvm.umin.i32(i32 %i.de, i32 8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %ZSTD_row_update_internalImpl.exit.i
end_hunk_11
begin_hunk_12_@ZSTD_RowFindBestMatch_dedicatedDictSearch_6_6:bb.a
  %i.kq = sub i32 %i.jh, %i.jj
  %i.kr = zext i32 %i.kq to i64
  store i64 %i.kr, ptr %3, align 8, !tbaa !26
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 %.2243.i
  %i.kt = icmp eq ptr %i.ks, %2
  br i1 %i.kt, label %._crit_edge78, label %ZSTD_count.exit.thread

ZSTD_count.exit.thread:                           ; preds = %bb.m, %bb.z, %ZSTD_count.exit
  %.2260.i.ph = phi i64 [ %.2243.i, %bb.z ], [ %.0258.i74, %ZSTD_count.exit ], [ %.0258.i74, %bb.m ] ; 2 uses
  %i.ku = add nuw i64 %.0248.i75, 1               ; 2 uses
  %exitcond122.not = icmp eq i64 %i.ku, %.0249.i.lcssa
  br i1 %exitcond122.not, label %._crit_edge78, label %bb.m, !llvm.loop !190

._crit_edge78:                                    ; preds = %ZSTD_count.exit.thread, %bb.z, %._crit_edge
  %.3261.i = phi i64 [ 3, %._crit_edge ], [ %.2243.i, %bb.z ], [ %.2260.i.ph, %ZSTD_count.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !8  ; 15 uses
  %i.kx = load ptr, ptr %i.ak, align 8, !tbaa !72 ; 3 uses
  %i.ky = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.kz = getelementptr [4 x i8], ptr %i.ky, i64 %i.ar ; 5 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !25
  %i.lb = zext i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.lb
  tail call void @llvm.prefetch.p0(ptr %i.lc, i32 0, i32 3, i32 1)
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !25
  %i.lf = zext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.lf
  tail call void @llvm.prefetch.p0(ptr %i.lg, i32 0, i32 3, i32 1)
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !25
  %i.lj = zext i32 %i.li to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.lj
  tail call void @llvm.prefetch.p0(ptr %i.lk, i32 0, i32 3, i32 1)
  %i.ll = add nuw i32 %.0262.i.lcssa, %i.ay       ; 3 uses
  %i.lm = ptrtoint ptr %i.kx to i64
  %i.ln = ptrtoint ptr %i.kw to i64
  %.neg.i.i.neg = sub i64 %i.lm, %i.ln
  %.neg107.i.i.neg = trunc i64 %.neg.i.i.neg to i32
  %.neg = sub i32 %.neg107.i.i.neg, %i.m          ; 2 uses
  %i.lo = tail call i32 @llvm.umin.i32(i32 %i.ll, i32 3) ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kz, i64 12
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !25 ; 3 uses
  %i.lr = lshr i32 %i.lq, 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !19 ; 3 uses
  %i.lu = zext nneg i32 %i.lr to i64              ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.lu
  tail call void @llvm.prefetch.p0(ptr %i.lv, i32 0, i32 3, i32 1)
  %.not103 = icmp eq i32 %i.ll, 0
  br i1 %.not103, label %._crit_edge88, label %.lr.ph87

.lr.ph87:                                         ; preds = %._crit_edge78
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg53 = add i32 %i.s, 3
  %i.lx = add i32 %.neg53, %.neg
  %wide.trip.count130 = zext nneg i32 %i.lo to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph87, %.thread31
  %indvars.iv127 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next128, %.thread31 ] ; 2 uses
  %.0100.i.i84 = phi i64 [ %.3261.i, %.lr.ph87 ], [ %.2102.i.i35, %.thread31 ] ; 4 uses
  %i.ly = getelementptr [4 x i8], ptr %i.kz, i64 %indvars.iv127
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !25 ; 3 uses
  %i.ma = zext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.ma ; 2 uses
  %.not.i.i = icmp eq i32 %i.lz, 0
  br i1 %.not.i.i, label %ZSTD_RowFindBestMatch.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val6 = load i32, ptr %i.mb, align 1, !tbaa !25
  %.val5 = load i32, ptr %1, align 1, !tbaa !25
  %i.mc = icmp eq i32 %.val6, %.val5
  br i1 %i.mc, label %bb.ac, label %.thread31

bb.ac:                                            ; preds = %bb.ab
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.me = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.lw, ptr noundef nonnull %i.md, ptr noundef %2, ptr noundef %i.kx, ptr noundef %i.o)
  %i.mf = add i64 %i.me, 4                        ; 4 uses
  %i.mg = icmp ugt i64 %i.mf, %.0100.i.i84
  br i1 %i.mg, label %bb.ad, label %.thread31

bb.ad:                                            ; preds = %bb.ac
  %i.mh = sub i32 %i.lx, %i.lz
  %i.mi = zext i32 %i.mh to i64
  store i64 %i.mi, ptr %3, align 8, !tbaa !26
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 %i.mf
  %.not = icmp eq ptr %i.mj, %2
  br i1 %.not, label %ZSTD_RowFindBestMatch.exit, label %.thread31

.thread31:                                        ; preds = %bb.ab, %bb.ac, %bb.ad
  %.2102.i.i35 = phi i64 [ %i.mf, %bb.ad ], [ %.0100.i.i84, %bb.ac ], [ %.0100.i.i84, %bb.ab ] ; 2 uses
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %._crit_edge88, label %bb.aa, !llvm.loop !194

._crit_edge88:                                    ; preds = %.thread31, %._crit_edge78
  %.1104.i.i.lcssa = phi i32 [ 0, %._crit_edge78 ], [ %i.lo, %.thread31 ]
  %.0100.i.i.lcssa = phi i64 [ %.3261.i, %._crit_edge78 ], [ %.2102.i.i35, %.thread31 ] ; 2 uses
  %i.mk = and i32 %i.lq, 255
  %i.ml = sub i32 %i.ll, %.1104.i.i.lcssa
  %i.mm = tail call i32 @llvm.umin.i32(i32 %i.ml, i32 %i.mk) ; 4 uses
  %.not104 = icmp eq i32 %i.mm, 0
  br i1 %.not104, label %ZSTD_RowFindBestMatch.exit, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %._crit_edge88
  %wide.trip.count135 = zext nneg i32 %i.mm to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.lu ; 9 uses
  %xtraiter = and i64 %wide.trip.count135, 7      ; 3 uses
  %i.mn = icmp samesign ult i32 %i.mm, 8
  br i1 %i.mn, label %.lr.ph93.epil.preheader, label %.lr.ph93.preheader.new

.lr.ph93.preheader.new:                           ; preds = %.lr.ph93.preheader
  %unroll_iter = and i64 %wide.trip.count135, 248
  br label %.lr.ph93

.lr.ph97.unr-lcssa:                               ; preds = %.lr.ph93
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph97, label %.lr.ph93.epil.preheader

.lr.ph93.epil.preheader:                          ; preds = %.lr.ph97.unr-lcssa, %.lr.ph93.preheader
  %indvars.iv132.epil.init = phi i64 [ 0, %.lr.ph93.preheader ], [ %indvars.iv.next133.7, %.lr.ph97.unr-lcssa ]
  %lcmp.mod171 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod171)
  br label %.lr.ph93.epil

.lr.ph93.epil:                                    ; preds = %.lr.ph93.epil, %.lr.ph93.epil.preheader
  %indvars.iv132.epil = phi i64 [ %indvars.iv132.epil.init, %.lr.ph93.epil.preheader ], [ %indvars.iv.next133.epil, %.lr.ph93.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph93.epil.preheader ], [ %epil.iter.next, %.lr.ph93.epil ]
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132.epil
  %i.mo = load i32, ptr %gep.epil, align 4, !tbaa !25
  %i.mp = zext i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.mp
  tail call void @llvm.prefetch.p0(ptr %i.mq, i32 0, i32 3, i32 1)
  %indvars.iv.next133.epil = add nuw nsw i64 %indvars.iv132.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph97, label %.lr.ph93.epil, !llvm.loop !208

.lr.ph97:                                         ; preds = %.lr.ph93.epil, %.lr.ph97.unr-lcssa
  %.val7 = load i32, ptr %1, align 1, !tbaa !25
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg51 = add i32 %i.s, 3
  %i.ms = add i32 %.neg51, %.neg
  %i.mt = lshr i32 %i.lq, 8
  %i.mu = zext nneg i32 %i.mt to i64
  br label %bb.ae

.lr.ph93:                                         ; preds = %.lr.ph93, %.lr.ph93.preheader.new
  %indvars.iv132 = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %indvars.iv.next133.7, %.lr.ph93 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %niter.next.7, %.lr.ph93 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %i.mv = load i32, ptr %gep, align 4, !tbaa !25
  %i.mw = zext i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.mw
  tail call void @llvm.prefetch.p0(ptr %i.mx, i32 0, i32 3, i32 1)
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.my, i64 4
  %i.mz = load i32, ptr %gep.1, align 4, !tbaa !25
  %i.na = zext i32 %i.mz to i64
  %i.nb = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.na
  tail call void @llvm.prefetch.p0(ptr %i.nb, i32 0, i32 3, i32 1)
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.nd = load i32, ptr %gep.2, align 4, !tbaa !25
  %i.ne = zext i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.ne
  tail call void @llvm.prefetch.p0(ptr %i.nf, i32 0, i32 3, i32 1)
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.ng, i64 12
  %i.nh = load i32, ptr %gep.3, align 4, !tbaa !25
  %i.ni = zext i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.ni
  tail call void @llvm.prefetch.p0(ptr %i.nj, i32 0, i32 3, i32 1)
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %i.nl = load i32, ptr %gep.4, align 4, !tbaa !25
  %i.nm = zext i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.nm
  tail call void @llvm.prefetch.p0(ptr %i.nn, i32 0, i32 3, i32 1)
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.no, i64 20
  %i.np = load i32, ptr %gep.5, align 4, !tbaa !25
  %i.nq = zext i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.nq
  tail call void @llvm.prefetch.p0(ptr %i.nr, i32 0, i32 3, i32 1)
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  %i.nt = load i32, ptr %gep.6, align 4, !tbaa !25
  %i.nu = zext i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.nu
  tail call void @llvm.prefetch.p0(ptr %i.nv, i32 0, i32 3, i32 1)
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv132
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.nw, i64 28
  %i.nx = load i32, ptr %gep.7, align 4, !tbaa !25
  %i.ny = zext i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.ny
  tail call void @llvm.prefetch.p0(ptr %i.nz, i32 0, i32 3, i32 1)
  %indvars.iv.next133.7 = add nuw nsw i64 %indvars.iv132, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph97.unr-lcssa, label %.lr.ph93, !llvm.loop !196

bb.ae:                                            ; preds = %.lr.ph97, %.thread41
  %indvars.iv137 = phi i64 [ %i.mu, %.lr.ph97 ], [ %indvars.iv.next138, %.thread41 ] ; 2 uses
  %.1.i.i96 = phi i32 [ 0, %.lr.ph97 ], [ %i.on, %.thread41 ]
  %.3.i.i94 = phi i64 [ %.0100.i.i.lcssa, %.lr.ph97 ], [ %.5.i.i.ph, %.thread41 ] ; 3 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv137
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !25 ; 2 uses
  %i.oc = zext i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.oc ; 2 uses
  %.val8 = load i32, ptr %i.od, align 1, !tbaa !25
  %i.oe = icmp eq i32 %.val8, %.val7
  br i1 %i.oe, label %bb.af, label %.thread41

bb.af:                                            ; preds = %bb.ae
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 4
  %i.og = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.mr, ptr noundef nonnull %i.of, ptr noundef %2, ptr noundef %i.kx, ptr noundef %i.o)
  %i.oh = add i64 %i.og, 4                        ; 4 uses
  %i.oi = icmp ugt i64 %i.oh, %.3.i.i94
  br i1 %i.oi, label %bb.ag, label %.thread41

bb.ag:                                            ; preds = %bb.af
  %i.oj = sub i32 %i.ms, %i.ob
  %i.ok = zext i32 %i.oj to i64
  store i64 %i.ok, ptr %3, align 8, !tbaa !26
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 %i.oh
  %i.om = icmp eq ptr %i.ol, %2
  br i1 %i.om, label %ZSTD_RowFindBestMatch.exit, label %.thread41

.thread41:                                        ; preds = %bb.ae, %bb.ag, %bb.af
  %.5.i.i.ph = phi i64 [ %i.oh, %bb.ag ], [ %.3.i.i94, %bb.af ], [ %.3.i.i94, %bb.ae ] ; 2 uses
  %i.on = add nuw nsw i32 %.1.i.i96, 1            ; 2 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1
  %exitcond139.not = icmp eq i32 %i.on, %i.mm
  br i1 %exitcond139.not, label %ZSTD_RowFindBestMatch.exit, label %bb.ae, !llvm.loop !197

ZSTD_RowFindBestMatch.exit:                       ; preds = %bb.aa, %bb.ad, %.thread41, %bb.ag, %._crit_edge88
  %.2.i.i = phi i64 [ %.0100.i.i.lcssa, %._crit_edge88 ], [ %i.oh, %bb.ag ], [ %.5.i.i.ph, %.thread41 ], [ %.0100.i.i84, %bb.aa ], [ %i.mf, %bb.ad ]
  ret i64 %.2.i.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_DUBT_findBestMatch(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull captures(none) %3, i32 noundef range(i32 4, 7) %4, i32 noundef range(i32 0, 4) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.g = load i32, ptr %i.f, align 8, !tbaa !33   ; 3 uses
  switch i32 %4, label %bb.b [
    i32 6, label %bb.d
    i32 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %1, align 1, !tbaa !25
  %i.h = mul i32 %.val, -1640531535
  %i.i = sub i32 32, %i.g
  %i.j = lshr i32 %i.h, %i.i
  %i.k = zext i32 %i.j to i64
  br label %ZSTD_hashPtr.exit

bb.c:                                             ; preds = %bb.a
  %.val228 = load i64, ptr %1, align 1, !tbaa !26
  %i.l = mul i64 %.val228, -3523014627271114752
  %i.m = sub i32 64, %i.g
  %i.n = zext nneg i32 %i.m to i64
  %i.o = lshr i64 %i.l, %i.n
  br label %ZSTD_hashPtr.exit

bb.d:                                             ; preds = %bb.a
  %.val229 = load i64, ptr %1, align 1, !tbaa !26
  %i.p = mul i64 %.val229, -3523014627193847808
  %i.q = sub i32 64, %i.g
  %i.r = zext nneg i32 %i.q to i64
  %i.s = lshr i64 %i.p, %i.r
  br label %ZSTD_hashPtr.exit

ZSTD_hashPtr.exit:                                ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i64 [ %i.k, %bb.b ], [ %i.s, %bb.d ], [ %i.o, %bb.c ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.0.i ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8    ; 11 uses
  %i.w = ptrtoint ptr %1 to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i32                    ; 8 uses
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !183
  %i.ab = getelementptr i8, ptr %0, i64 28        ; 3 uses
  %.val232 = load i32, ptr %i.ab, align 4, !tbaa !152 ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 40
  %.val233 = load i32, ptr %i.ac, align 8, !tbaa !42
  %i.ad = shl nuw i32 1, %i.aa                    ; 2 uses
  %i.ae = sub i32 %i.z, %.val232
  %i.af = icmp ugt i32 %i.ae, %i.ad
  %i.ag = sub i32 %i.z, %i.ad
  %.not.i = icmp eq i32 %.val233, 0
  %i.ah = select i1 %.not.i, i1 %i.af, i1 false
  %i.ai = select i1 %i.ah, i32 %i.ag, i32 %.val232 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !34
  %i.an = add i32 %i.am, -1
  %notmask = shl nsw i32 -1, %i.an
  %i.ao = xor i32 %notmask, -1                    ; 5 uses
  %i.ap = tail call i32 @llvm.usub.sat.i32(i32 %i.z, i32 %i.ao) ; 2 uses
  %i.aq = tail call i32 @llvm.umax.i32(i32 %i.ap, i32 %i.ai) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !184
  %i.at = shl nuw i32 1, %i.as                    ; 3 uses
  %.0213267 = load i32, ptr %i.t, align 4, !tbaa !25 ; 2 uses
  %i.au = icmp ugt i32 %.0213267, %i.aq
  br i1 %i.au, label %.lr.ph, label %.critedge226.._crit_edge_crit_edge

.lr.ph:                                           ; preds = %ZSTD_hashPtr.exit, %bb.e
  %.0213275 = phi i32 [ %.0213, %bb.e ], [ %.0213267, %ZSTD_hashPtr.exit ] ; 3 uses
  %.0204274 = phi i32 [ %.0213275, %bb.e ], [ 0, %ZSTD_hashPtr.exit ] ; 3 uses
  %.0205273 = phi i32 [ %i.ay, %bb.e ], [ %i.at, %ZSTD_hashPtr.exit ] ; 3 uses
  %.pn.pn.in.in = and i32 %.0213275, %i.ao
  %.pn.pn.in = shl nuw i32 %.pn.pn.in.in, 1
  %.pn.pn = zext i32 %.pn.pn.in to i64
  %.0212276 = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.pn.pn ; 3 uses
  %.0211277 = getelementptr inbounds nuw i8, ptr %.0212276, i64 4 ; 3 uses
  %i.av = load i32, ptr %.0211277, align 4, !tbaa !25
  %i.aw = icmp eq i32 %i.av, 1                    ; 2 uses
  %i.ax = icmp ugt i32 %.0205273, 1
  %or.cond3 = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond3, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  store i32 %.0204274, ptr %.0211277, align 4, !tbaa !25
  %i.ay = add i32 %.0205273, -1                   ; 2 uses
  %.0213 = load i32, ptr %.0212276, align 4, !tbaa !25 ; 2 uses
  %i.az = icmp ugt i32 %.0213, %i.aq
  br i1 %i.az, label %.lr.ph, label %.lr.ph282, !llvm.loop !209

.critedge:                                        ; preds = %.lr.ph
  br i1 %i.aw, label %bb.f, label %.critedge226

bb.f:                                             ; preds = %.critedge
  store i32 0, ptr %.0211277, align 4, !tbaa !25
  store i32 0, ptr %.0212276, align 4, !tbaa !25
  br label %.critedge226

.critedge226:                                     ; preds = %bb.f, %.critedge
  %.not279 = icmp eq i32 %.0204274, 0
  br i1 %.not279, label %.critedge226.._crit_edge_crit_edge, label %.lr.ph282

.critedge226.._crit_edge_crit_edge:               ; preds = %ZSTD_hashPtr.exit, %.critedge226
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !151
  br label %._crit_edge

.lr.ph282:                                        ; preds = %bb.e, %.critedge226
  %.0204264353 = phi i32 [ %.0204274, %.critedge226 ], [ %.0213275, %bb.e ]
  %.0205266352 = phi i32 [ %.0205273, %.critedge226 ], [ %i.ay, %bb.e ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !151 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not123.i = icmp eq i32 %5, 1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph282, %ZSTD_insertDUBT1.exit
  %.1206281 = phi i32 [ %.0205266352, %.lr.ph282 ], [ %i.er, %ZSTD_insertDUBT1.exit ] ; 3 uses
  %.1214280 = phi i32 [ %.0204264353, %.lr.ph282 ], [ %i.bi, %ZSTD_insertDUBT1.exit ] ; 6 uses
  %i.bd = and i32 %.1214280, %i.ao
  %i.be = shl nuw i32 %i.bd, 1
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !25 ; 2 uses
  %i.bj = load i32, ptr %i.al, align 4, !tbaa !34
  %i.bk = add i32 %i.bj, -1
  %notmask.i = shl nsw i32 -1, %i.bk
  %i.bl = xor i32 %notmask.i, -1                  ; 2 uses
  %i.bm = load i32, ptr %i.bc, align 8, !tbaa !40 ; 2 uses
  %.not.i234 = icmp ult i32 %.1214280, %i.bm      ; 3 uses
  %i.bn = zext i32 %.1214280 to i64
  %.v.i = select i1 %.not.i234, ptr %i.bb, ptr %i.v
  %i.bo = getelementptr inbounds nuw i8, ptr %.v.i, i64 %i.bn ; 3 uses
  %i.bp = zext i32 %i.bm to i64                   ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bp ; 2 uses
  %i.br = select i1 %.not.i234, ptr %i.bq, ptr %2 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bp
  %i.bt = and i32 %.1214280, %i.bl
  %i.bu = shl nuw i32 %i.bt, 1
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.bv ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bz = load i32, ptr %i.ab, align 4, !tbaa !152 ; 2 uses
  %i.ca = load i32, ptr %i.c, align 8, !tbaa !183
  %i.cb = shl nuw i32 1, %i.ca                    ; 2 uses
  %i.cc = sub i32 %.1214280, %i.bz
  %i.cd = icmp ugt i32 %i.cc, %i.cb
end_hunk_12
