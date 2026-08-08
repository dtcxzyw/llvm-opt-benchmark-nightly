inline.NumInlined: 46
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 15
begin_hunk_0_@ucnv_MBCSGetFilteredUnicodeSetForUnicode_78:bb.a

bb.am:                                            ; preds = %.preheader201
  %i.dk = load i16, ptr %.9, align 2, !tbaa !19   ; 2 uses
  %i.dl = add i16 %i.dk, 24159
  %i.dm = icmp ult i16 %i.dl, 23646
  br i1 %i.dm, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.dn = add nuw nsw i16 %i.dk, 95
  %i.do = and i16 %i.dn, 254
  %i.dp = icmp samesign ult i16 %i.do, 94
  br i1 %i.dp, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dq = load ptr, ptr %i.ak, align 8, !tbaa !21
  %i.dr = load ptr, ptr %1, align 8, !tbaa !24
  tail call void %i.dq(ptr noundef %i.dr, i32 noundef %.12)
  br label %bb.ap

bb.ap:                                            ; preds = %.preheader201, %bb.ao, %bb.an, %bb.am
  %i.ds = lshr i32 %.5, 1
  %i.dt = getelementptr inbounds nuw i8, ptr %.9, i64 2
  %i.du = add nsw i32 %.12, 1                     ; 3 uses
  %i.dv = and i32 %i.du, 15
  %.not178 = icmp eq i32 %i.dv, 0
  br i1 %.not178, label %.loopexit192, label %.preheader201, !llvm.loop !36

bb.aq:                                            ; preds = %bb.q
  store i32 5, ptr %4, align 4, !tbaa !37
  br label %bb.at

bb.ar:                                            ; preds = %bb.p
  %i.dw = add nsw i32 %.6166213, 16
  br label %.loopexit192

.loopexit192:                                     ; preds = %bb.ap, %bb.al, %bb.ah, %bb.ae, %bb.ab, %bb.y, %bb.ar
  %.13 = phi i32 [ %i.dw, %bb.ar ], [ %i.cc, %bb.ab ], [ %i.cl, %bb.ae ], [ %i.cu, %bb.ah ], [ %i.dh, %bb.al ], [ %i.bt, %bb.y ], [ %i.du, %bb.ap ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %.loopexit203, label %bb.p, !llvm.loop !39

bb.as:                                            ; preds = %bb.n
  %i.dx = add nsw i32 %.5165215, 1024
  br label %.loopexit203

.loopexit203:                                     ; preds = %.loopexit192, %bb.as
  %.14 = phi i32 [ %i.dx, %bb.as ], [ %.13, %.loopexit192 ]
  %i.dy = add nuw nsw i16 %.1148216, 1            ; 2 uses
  %.not186 = icmp samesign ult i16 %i.dy, %i.am
  br i1 %.not186, label %bb.n, label %.critedge, !llvm.loop !40

.critedge:                                        ; preds = %.loopexit203, %.loopexit191
  tail call void @ucnv_extGetUnicodeSet_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4)
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %.critedge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @ucnv_extGetUnicodeSet_78(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @ucnv_MBCSGetUnicodeSetForUnicode_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.b = load i8, ptr %i.a, align 4, !tbaa !41
  %i.c = icmp eq i8 %i.b, -37
  %i.d = zext i1 %i.c to i32
  tail call void @ucnv_MBCSGetFilteredUnicodeSetForUnicode_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.d, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @ucnv_MBCSToUnicodeWithOffsets_78(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 19 uses
  %i.e = alloca ptr, align 8                      ; 17 uses
  %i.f = alloca ptr, align 8                      ; 9 uses
  %i.g = alloca ptr, align 8                      ; 13 uses
  %i.h = alloca ptr, align 8                      ; 23 uses
  %i.i = alloca ptr, align 8                      ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45   ; 18 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 282 ; 3 uses
  %i.m = load i8, ptr %i.l, align 2, !tbaa !49
  %i.n = icmp sgt i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @ucnv_extContinueMatchToU_78(ptr noundef nonnull %i.k, ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1)
  %i.o = load i32, ptr %1, align 4, !tbaa !37
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.c, label %bb.en

bb.c:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.l, align 2, !tbaa !49
  %i.r = icmp slt i8 %i.q, 0
  br i1 %i.r, label %bb.en, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load i8, ptr %i.u, align 8, !tbaa !53
  %i.w = icmp eq i8 %i.v, 1
  br i1 %i.w, label %bb.e, label %bb.aq

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 253
  %i.y = load i8, ptr %i.x, align 1, !tbaa !54
  %i.z = and i8 %i.y, 1
  %.not311 = icmp eq i8 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  br i1 %.not311, label %bb.f, label %bb.v

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !45  ; 5 uses
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !55 ; 3 uses
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 5 uses
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !57 ; 3 uses
  store ptr %i.ah, ptr %i.e, align 8, !tbaa !58
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !59
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = lshr exact i64 %i.al, 1
  %i.an = trunc i64 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !60
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !61
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !62
  %i.as = and i32 %i.ar, 16
  %.not.i = icmp eq i32 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !52
  %..i = select i1 %.not.i, i64 56, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %..i
  %.0147.i = load ptr, ptr %i.av, align 8, !tbaa !61 ; 17 uses
  %i.aw = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ax = ptrtoint ptr %i.af to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.az, i32 %i.an)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 65
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.q, %bb.f
  %.promoted195.i = phi ptr [ %i.ah, %bb.f ], [ %i.js, %bb.q ] ; 2 uses
  %.promoted.i = phi ptr [ %i.af, %bb.f ], [ %.pre567, %bb.q ] ; 2 uses
  %.0142.i = phi i32 [ 0, %bb.f ], [ %i.jq, %bb.q ] ; 6 uses
  %.1136.i = phi i32 [ %spec.select.i, %bb.f ], [ %spec.select168.i, %bb.q ] ; 4 uses
  %.0134.i = phi ptr [ %i.af, %bb.f ], [ %i.hs, %bb.q ] ; 3 uses
  %i.bd = icmp sgt i32 %.1136.i, 15
  br i1 %i.bd, label %bb.h, label %.loopexit173.i

bb.h:                                             ; preds = %bb.g
  %i.be = lshr i32 %.1136.i, 4                    ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %i.bf = phi ptr [ %.promoted195.i, %bb.h ], [ %i.fo, %bb.k ] ; 19 uses
  %i.bg = phi ptr [ %.promoted.i, %bb.h ], [ %i.fi, %bb.k ] ; 19 uses
  %.0139.i = phi i32 [ %i.be, %bb.h ], [ %i.fq, %bb.k ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 2 uses
  store ptr %i.bh, ptr %i.d, align 8, !tbaa !63
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !30
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.0147.i, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !29 ; 2 uses
  %i.bm = trunc i32 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 2 ; 2 uses
  store ptr %i.bn, ptr %i.e, align 8, !tbaa !58
  store i16 %i.bm, ptr %i.bf, align 2, !tbaa !64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 2 ; 2 uses
  store ptr %i.bo, ptr %i.d, align 8, !tbaa !63
  %i.bp = load i8, ptr %i.bh, align 1, !tbaa !30
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.0147.i, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !29 ; 2 uses
  %i.bt = trunc i32 %i.bs to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  store ptr %i.bu, ptr %i.e, align 8, !tbaa !58
  store i16 %i.bt, ptr %i.bn, align 2, !tbaa !64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 3 ; 2 uses
  store ptr %i.bv, ptr %i.d, align 8, !tbaa !63
  %i.bw = load i8, ptr %i.bo, align 1, !tbaa !30
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.0147.i, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !29 ; 2 uses
  %i.ca = trunc i32 %i.bz to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bf, i64 6 ; 2 uses
  store ptr %i.cb, ptr %i.e, align 8, !tbaa !58
  store i16 %i.ca, ptr %i.bu, align 2, !tbaa !64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  store ptr %i.cc, ptr %i.d, align 8, !tbaa !63
  %i.cd = load i8, ptr %i.bv, align 1, !tbaa !30
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.0147.i, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !29 ; 2 uses
  %i.ch = trunc i32 %i.cg to i16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  store ptr %i.ci, ptr %i.e, align 8, !tbaa !58
  store i16 %i.ch, ptr %i.cb, align 2, !tbaa !64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bg, i64 5 ; 2 uses
  store ptr %i.cj, ptr %i.d, align 8, !tbaa !63
  %i.ck = load i8, ptr %i.cc, align 1, !tbaa !30
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.0147.i, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !29 ; 2 uses
  %i.co = trunc i32 %i.cn to i16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bf, i64 10 ; 2 uses
  store ptr %i.cp, ptr %i.e, align 8, !tbaa !58
  store i16 %i.co, ptr %i.ci, align 2, !tbaa !64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bg, i64 6 ; 2 uses
  store ptr %i.cq, ptr %i.d, align 8, !tbaa !63
  %i.cr = load i8, ptr %i.cj, align 1, !tbaa !30
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.0147.i, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !29 ; 2 uses
  %i.cv = trunc i32 %i.cu to i16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bf, i64 12 ; 2 uses
  store ptr %i.cw, ptr %i.e, align 8, !tbaa !58
  store i16 %i.cv, ptr %i.cp, align 2, !tbaa !64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bg, i64 7 ; 2 uses
  store ptr %i.cx, ptr %i.d, align 8, !tbaa !63
  %i.cy = load i8, ptr %i.cq, align 1, !tbaa !30
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.0147.i, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !29 ; 2 uses
  %i.dc = trunc i32 %i.db to i16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bf, i64 14 ; 2 uses
  store ptr %i.dd, ptr %i.e, align 8, !tbaa !58
  store i16 %i.dc, ptr %i.cw, align 2, !tbaa !64
  %i.de = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  store ptr %i.de, ptr %i.d, align 8, !tbaa !63
  %i.df = load i8, ptr %i.cx, align 1, !tbaa !30
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.0147.i, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !29 ; 2 uses
  %i.dj = trunc i32 %i.di to i16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i16 %i.dj, ptr %i.dd, align 2, !tbaa !64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bg, i64 9
  %i.dm = load i8, ptr %i.de, align 1, !tbaa !30
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.0147.i, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !29 ; 2 uses
  %i.dq = trunc i32 %i.dp to i16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bf, i64 18
  store i16 %i.dq, ptr %i.dk, align 2, !tbaa !64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %i.dt = load i8, ptr %i.dl, align 1, !tbaa !30
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.0147.i, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !29 ; 2 uses
  %i.dx = trunc i32 %i.dw to i16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  store i16 %i.dx, ptr %i.dr, align 2, !tbaa !64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bg, i64 11
  %i.ea = load i8, ptr %i.ds, align 1, !tbaa !30
  %i.eb = zext i8 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.0147.i, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !29 ; 2 uses
  %i.ee = trunc i32 %i.ed to i16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bf, i64 22
  store i16 %i.ee, ptr %i.dy, align 2, !tbaa !64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.eh = load i8, ptr %i.dz, align 1, !tbaa !30
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.0147.i, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !29 ; 2 uses
  %i.el = trunc i32 %i.ek to i16
  %i.em = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i16 %i.el, ptr %i.ef, align 2, !tbaa !64
  %i.en = getelementptr inbounds nuw i8, ptr %i.bg, i64 13
  %i.eo = load i8, ptr %i.eg, align 1, !tbaa !30
  %i.ep = zext i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.0147.i, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !29 ; 2 uses
  %i.es = trunc i32 %i.er to i16
  %i.et = getelementptr inbounds nuw i8, ptr %i.bf, i64 26
  store i16 %i.es, ptr %i.em, align 2, !tbaa !64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bg, i64 14
  %i.ev = load i8, ptr %i.en, align 1, !tbaa !30
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.0147.i, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !29 ; 2 uses
  %i.ez = trunc i32 %i.ey to i16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  store i16 %i.ez, ptr %i.et, align 2, !tbaa !64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bg, i64 15
  %i.fc = load i8, ptr %i.eu, align 1, !tbaa !30
  %i.fd = zext i8 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.0147.i, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !29 ; 2 uses
  %i.fg = trunc i32 %i.ff to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bf, i64 30
  store i16 %i.fg, ptr %i.fa, align 2, !tbaa !64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 3 uses
  store ptr %i.fi, ptr %i.d, align 8, !tbaa !63
  %i.fj = load i8, ptr %i.fb, align 1, !tbaa !30
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.0147.i, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !29 ; 2 uses
  %2 = insertelement <16 x i32> poison, i32 %i.bs, i64 0
  %3 = insertelement <16 x i32> %2, i32 %i.bl, i64 1
  %4 = insertelement <16 x i32> %3, i32 %i.bz, i64 2
  %5 = insertelement <16 x i32> %4, i32 %i.cg, i64 3
  %6 = insertelement <16 x i32> %5, i32 %i.cn, i64 4
  %7 = insertelement <16 x i32> %6, i32 %i.cu, i64 5
  %8 = insertelement <16 x i32> %7, i32 %i.db, i64 6
  %9 = insertelement <16 x i32> %8, i32 %i.di, i64 7
  %10 = insertelement <16 x i32> %9, i32 %i.dp, i64 8
  %11 = insertelement <16 x i32> %10, i32 %i.dw, i64 9
  %12 = insertelement <16 x i32> %11, i32 %i.ed, i64 10
  %13 = insertelement <16 x i32> %12, i32 %i.ek, i64 11
  %14 = insertelement <16 x i32> %13, i32 %i.er, i64 12
  %15 = insertelement <16 x i32> %14, i32 %i.ey, i64 13
  %16 = insertelement <16 x i32> %15, i32 %i.ff, i64 14
  %17 = insertelement <16 x i32> %16, i32 %i.fm, i64 15
  %18 = call i32 @llvm.vector.reduce.or.v16i32(<16 x i32> %17)
  %i.fn = trunc i32 %i.fm to i16
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 3 uses
  store ptr %i.fo, ptr %i.e, align 8, !tbaa !58
  store i16 %i.fn, ptr %i.fh, align 2, !tbaa !64
  %i.fp = icmp slt i32 %18, -2146435072
  br i1 %i.fp, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.bg, ptr %i.d, align 8, !tbaa !63
  store ptr %i.bf, ptr %i.e, align 8, !tbaa !58
  br label %.loopexit174.i

bb.k:                                             ; preds = %bb.i
  %i.fq = add nsw i32 %.0139.i, -1
  %i.fr = icmp sgt i32 %.0139.i, 1
  br i1 %i.fr, label %bb.i, label %.loopexit174.i, !llvm.loop !65

.loopexit174.i:                                   ; preds = %bb.k, %bb.j
  %.promoted202.i461565 = phi ptr [ %i.bg, %bb.j ], [ %i.fi, %bb.k ] ; 2 uses
  %i.fs = phi ptr [ %i.bf, %bb.j ], [ %i.fo, %bb.k ] ; 3 uses
  %.1140.i = phi i32 [ %.0139.i, %bb.j ], [ 0, %bb.k ] ; 2 uses
  %i.ft = sub i32 %i.be, %.1140.i                 ; 5 uses
  %i.fu = shl nsw i32 %i.ft, 4                    ; 2 uses
  %i.fv = sub nsw i32 %.1136.i, %i.fu             ; 3 uses
  %i.fw = load ptr, ptr %i.f, align 8, !tbaa !61  ; 7 uses
  %.not160.i = icmp eq ptr %i.fw, null
  br i1 %.not160.i, label %.loopexit173.i, label %bb.l

bb.l:                                             ; preds = %.loopexit174.i
  %i.fx = sext i32 %i.fu to i64
  %i.fy = getelementptr inbounds i8, ptr %.0134.i, i64 %i.fx ; 2 uses
  %i.fz = icmp sgt i32 %i.ft, 0
  br i1 %i.fz, label %.lr.ph.i.preheader, label %.loopexit173.i

.lr.ph.i.preheader:                               ; preds = %bb.l
  %.neg = add i32 %.1140.i, 1
  %xtraiter = and i32 %i.ft, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ga = insertelement <4 x i32> poison, i32 %.0142.i, i64 0
  %i.gb = shufflevector <4 x i32> %i.ga, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.gc = add nsw <4 x i32> %i.gb, <i32 4, i32 5, i32 6, i32 7>
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.ge = add nsw <4 x i32> %i.gb, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.ge, ptr %i.fw, align 4, !tbaa !29
  %i.gf = add nsw <4 x i32> %i.gb, <i32 8, i32 9, i32 10, i32 11>
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  store <4 x i32> %i.gc, ptr %i.gd, align 4, !tbaa !29
  %i.gh = add nsw <4 x i32> %i.gb, <i32 12, i32 13, i32 14, i32 15>
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  store <4 x i32> %i.gf, ptr %i.gg, align 4, !tbaa !29
  %i.gj = add nsw i32 %.0142.i, 16                ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fw, i64 64 ; 2 uses
  store <4 x i32> %i.gh, ptr %i.gi, align 4, !tbaa !29
  %i.gl = add nsw i32 %i.ft, -1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.2141198.i.unr = phi i32 [ %i.ft, %.lr.ph.i.preheader ], [ %i.gl, %.lr.ph.i.prol ]
  %.1143197.i.unr = phi i32 [ %.0142.i, %.lr.ph.i.preheader ], [ %i.gj, %.lr.ph.i.prol ]
  %.unr = phi ptr [ %i.fw, %.lr.ph.i.preheader ], [ %i.gk, %.lr.ph.i.prol ]
  %.lcssa932.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.gj, %.lr.ph.i.prol ]
  %.lcssa931.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.gk, %.lr.ph.i.prol ]
  %i.gm = icmp eq i32 %i.be, %.neg
  br i1 %i.gm, label %..loopexit173_crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.2141198.i = phi i32 [ %i.hk, %.lr.ph.i ], [ %.2141198.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.1143197.i = phi i32 [ %i.hi, %.lr.ph.i ], [ %.1143197.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.gn = phi ptr [ %i.hj, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.go = insertelement <4 x i32> poison, i32 %.1143197.i, i64 0
  %i.gp = shufflevector <4 x i32> %i.go, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.gq = add nsw <4 x i32> %i.gp, <i32 4, i32 5, i32 6, i32 7>
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gs = add nsw <4 x i32> %i.gp, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.gs, ptr %i.gn, align 4, !tbaa !29
  %i.gt = add nsw <4 x i32> %i.gp, <i32 8, i32 9, i32 10, i32 11>
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  store <4 x i32> %i.gq, ptr %i.gr, align 4, !tbaa !29
  %i.gv = add nsw <4 x i32> %i.gp, <i32 12, i32 13, i32 14, i32 15>
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  store <4 x i32> %i.gt, ptr %i.gu, align 4, !tbaa !29
  %i.gx = add nsw i32 %.1143197.i, 16
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  store <4 x i32> %i.gv, ptr %i.gw, align 4, !tbaa !29
  %i.gz = insertelement <4 x i32> poison, i32 %i.gx, i64 0
  %i.ha = shufflevector <4 x i32> %i.gz, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.hb = add nsw <4 x i32> %i.ha, <i32 4, i32 5, i32 6, i32 7>
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gn, i64 80
  %i.hd = add nsw <4 x i32> %i.ha, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hd, ptr %i.gy, align 4, !tbaa !29
  %i.he = add nsw <4 x i32> %i.ha, <i32 8, i32 9, i32 10, i32 11>
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gn, i64 96
  store <4 x i32> %i.hb, ptr %i.hc, align 4, !tbaa !29
  %i.hg = add nsw <4 x i32> %i.ha, <i32 12, i32 13, i32 14, i32 15>
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gn, i64 112
  store <4 x i32> %i.he, ptr %i.hf, align 4, !tbaa !29
  %i.hi = add nsw i32 %.1143197.i, 32             ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gn, i64 128 ; 2 uses
  store <4 x i32> %i.hg, ptr %i.hh, align 4, !tbaa !29
  %i.hk = add nsw i32 %.2141198.i, -2
  %i.hl = icmp sgt i32 %.2141198.i, 2
  br i1 %i.hl, label %.lr.ph.i, label %..loopexit173_crit_edge.i, !llvm.loop !66

..loopexit173_crit_edge.i:                        ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa932 = phi i32 [ %.lcssa932.unr, %.lr.ph.i.prol.loopexit ], [ %i.hi, %.lr.ph.i ]
  %.lcssa931 = phi ptr [ %.lcssa931.unr, %.lr.ph.i.prol.loopexit ], [ %i.hj, %.lr.ph.i ]
  store ptr %.lcssa931, ptr %i.f, align 8, !tbaa !61
  %.promoted202.i461.pre = load ptr, ptr %i.d, align 8
  br label %.loopexit173.i

.loopexit173.i:                                   ; preds = %..loopexit173_crit_edge.i, %bb.l, %.loopexit174.i, %bb.g
  %.promoted202.i461 = phi ptr [ %.promoted.i, %bb.g ], [ %.promoted202.i461565, %.loopexit174.i ], [ %.promoted202.i461.pre, %..loopexit173_crit_edge.i ], [ %.promoted202.i461565, %bb.l ] ; 2 uses
  %i.hm = phi ptr [ %.promoted195.i, %bb.g ], [ %i.fs, %.loopexit174.i ], [ %i.fs, %..loopexit173_crit_edge.i ], [ %i.fs, %bb.l ]
  %.3145.i = phi i32 [ %.0142.i, %bb.g ], [ %.0142.i, %.loopexit174.i ], [ %.lcssa932, %..loopexit173_crit_edge.i ], [ %.0142.i, %bb.l ] ; 8 uses
  %.2137.i = phi i32 [ %.1136.i, %bb.g ], [ %i.fv, %.loopexit174.i ], [ %i.fv, %..loopexit173_crit_edge.i ], [ %i.fv, %bb.l ]
  %.2.i = phi ptr [ %.0134.i, %bb.g ], [ %.0134.i, %.loopexit174.i ], [ %i.fy, %..loopexit173_crit_edge.i ], [ %i.fy, %bb.l ] ; 6 uses
  %.2137.fr.i = freeze i32 %.2137.i               ; 2 uses
  %i.hn = icmp sgt i32 %.2137.fr.i, 0
  br i1 %i.hn, label %.outer.split.i.preheader, label %.loopexit171.split.i

.outer.split.i.preheader:                         ; preds = %.loopexit173.i, %.outer.backedge.i
  %.promoted202.i463 = phi ptr [ %.promoted202.i, %.outer.backedge.i ], [ %.promoted202.i461, %.loopexit173.i ] ; 3 uses
  %.3138.ph.i462 = phi i32 [ %.3138.ph.be.i, %.outer.backedge.i ], [ %.2137.fr.i, %.loopexit173.i ] ; 2 uses
  %i.ho = phi ptr [ %storemerge252.i, %.outer.backedge.i ], [ %i.hm, %.loopexit173.i ] ; 2 uses
  %i.hp = icmp ult ptr %.promoted202.i463, %i.ag
  br i1 %i.hp, label %.lr.ph887, label %.loopexit171.split.i

.outer.split.i:                                   ; preds = %bb.m
  %i.hq = icmp ult ptr %i.hs, %i.ag
  br i1 %i.hq, label %.lr.ph887, label %.loopexit171.split.i

.lr.ph887:                                        ; preds = %.outer.split.i.preheader, %.outer.split.i
  %i.hr = phi ptr [ %i.hs, %.outer.split.i ], [ %.promoted202.i463, %.outer.split.i.preheader ] ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 1 ; 8 uses
  store ptr %i.hs, ptr %i.d, align 8, !tbaa !63
  %i.ht = load i8, ptr %i.hr, align 1, !tbaa !30
  %i.hu = zext i8 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.0147.i, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !29 ; 3 uses
  %i.hx = icmp slt i32 %i.hw, -2146435072
  br i1 %i.hx, label %.outer.backedge.i, label %bb.m

.outer.backedge.i:                                ; preds = %bb.m, %.lr.ph887
  %storemerge252.i = getelementptr inbounds nuw i8, ptr %i.ho, i64 2 ; 2 uses
  store ptr %storemerge252.i, ptr %i.e, align 8, !tbaa !58
  %storemerge.i = trunc i32 %i.hw to i16
  store i16 %storemerge.i, ptr %i.ho, align 2, !tbaa !64
  %.3138.ph.be.i = add nsw i32 %.3138.ph.i462, -1
  %i.hy = icmp sgt i32 %.3138.ph.i462, 1
  %.promoted202.i = load ptr, ptr %i.d, align 8   ; 2 uses
  br i1 %i.hy, label %.outer.split.i.preheader, label %.loopexit171.split.i, !llvm.loop !67

bb.m:                                             ; preds = %.lr.ph887
  %i.hz = lshr i32 %i.hw, 20
  %i.ia = and i32 %i.hz, 15
  switch i32 %i.ia, label %.outer.split.i [
    i32 2, label %.outer.backedge.i
    i32 6, label %.loopexit172.i
    i32 7, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  store i32 12, ptr %1, align 4, !tbaa !37
  br label %.loopexit172.i

.loopexit172.i:                                   ; preds = %bb.m, %bb.n
  %i.ib = load ptr, ptr %i.f, align 8, !tbaa !61  ; 4 uses
  %.not161.i = icmp ne ptr %i.ib, null
  %i.ic = ptrtoint ptr %i.hs to i64               ; 4 uses
  %i.id = ptrtoint ptr %.2.i to i64               ; 2 uses
  %i.ie = sub i64 %i.ic, %i.id
  %i.if = trunc i64 %i.ie to i32                  ; 3 uses
  %i.ig = icmp sgt i32 %i.if, 1
  %or.cond299.i = select i1 %.not161.i, i1 %i.ig, i1 false
  br i1 %or.cond299.i, label %.lr.ph206.i.preheader, label %.loopexit170.i

.lr.ph206.i.preheader:                            ; preds = %.loopexit172.i
  %i.ih = xor i64 %i.id, -1
  %i.ii = add i64 %i.ih, %i.ic                    ; 2 uses
  %i.ij = and i64 %i.ii, 4294967295               ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ij, 8
  br i1 %min.iters.check, label %.lr.ph206.i.preheader916, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph206.i.preheader
  %n.vec = and i64 %i.ii, 4294967288              ; 4 uses
  %i.ik = trunc nuw i64 %n.vec to i32             ; 2 uses
  %i.il = sub i32 %i.if, %i.ik
  %i.im = add i32 %.3145.i, %i.ik                 ; 2 uses
  %i.in = shl nuw nsw i64 %n.vec, 2
  %i.io = getelementptr i8, ptr %i.ib, i64 %i.in  ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.3145.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.ip = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ib, i64 %i.ip ; 2 uses
  %i.iq = getelementptr i8, ptr %next.gep, i64 16
end_hunk_0
begin_hunk_1_@_ZL17ucnv_DBCSFromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.mr = icmp samesign ugt i8 %i.mj, -17
  %i.ms = select i1 %i.mr, i32 3, i32 2
  %i.mt = add nuw nsw i32 %i.ms, %i.mq
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %i.mu = phi i32 [ 1, %bb.ay ], [ %i.mt, %bb.ba ], [ 0, %bb.az ]
  %.10341 = getelementptr inbounds nuw i8, ptr %.9.ph, i64 1 ; 4 uses
  %i.mv = icmp ult ptr %.10341, %i.mg
  br i1 %i.mv, label %.lr.ph346.preheader, label %._crit_edge347

.lr.ph346.preheader:                              ; preds = %bb.bb
  %i.mw = xor i64 %.9.ph593, -1
  %i.mx = add i64 %i.mw, %i.mh                    ; 3 uses
  %i.my = add i64 %i.mh, -2
  %xtraiter594 = and i64 %i.mx, 1
  %i.mz = icmp eq i64 %i.my, %.9.ph593
  br i1 %i.mz, label %.lr.ph346.epil.preheader, label %.lr.ph346.preheader.new

.lr.ph346.preheader.new:                          ; preds = %.lr.ph346.preheader
  %unroll_iter = and i64 %i.mx, -2
  br label %.lr.ph346

.lr.ph346:                                        ; preds = %.lr.ph346, %.lr.ph346.preheader.new
  %.10344 = phi ptr [ %.10341, %.lr.ph346.preheader.new ], [ %.10.1, %.lr.ph346 ] ; 3 uses
  %.3240343 = phi i8 [ 1, %.lr.ph346.preheader.new ], [ %i.ng, %.lr.ph346 ] ; 3 uses
  %.5246342 = phi i32 [ %i.ml, %.lr.ph346.preheader.new ], [ %i.nn, %.lr.ph346 ]
  %niter = phi i64 [ 0, %.lr.ph346.preheader.new ], [ %niter.next.1, %.lr.ph346 ]
  %i.na = load i8, ptr %.10344, align 1, !tbaa !30 ; 2 uses
  %i.nb = add i8 %.3240343, 1
  %i.nc = sext i8 %.3240343 to i64
  %i.nd = getelementptr inbounds i8, ptr %i.mk, i64 %i.nc
  store i8 %i.na, ptr %i.nd, align 1, !tbaa !30
  %i.ne = zext i8 %i.na to i32
  %.10 = getelementptr inbounds nuw i8, ptr %.10344, i64 1
  %i.nf = load i8, ptr %.10, align 1, !tbaa !30   ; 2 uses
  %i.ng = add i8 %.3240343, 2                     ; 3 uses
  %i.nh = sext i8 %i.nb to i64
  %i.ni = getelementptr inbounds i8, ptr %i.mk, i64 %i.nh
  store i8 %i.nf, ptr %i.ni, align 1, !tbaa !30
  %i.nj = shl i32 %.5246342, 12
  %i.nk = shl nuw nsw i32 %i.ne, 6
  %i.nl = add i32 %i.nj, %i.nk
  %i.nm = zext i8 %i.nf to i32
  %i.nn = add nsw i32 %i.nl, %i.nm                ; 3 uses
  %.10.1 = getelementptr inbounds nuw i8, ptr %.10344, i64 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge347.loopexit.unr-lcssa, label %.lr.ph346, !llvm.loop !219

._crit_edge347.loopexit.unr-lcssa:                ; preds = %.lr.ph346
  %lcmp.mod595.not = icmp eq i64 %xtraiter594, 0
  br i1 %lcmp.mod595.not, label %._crit_edge347, label %.lr.ph346.epil.preheader

.lr.ph346.epil.preheader:                         ; preds = %._crit_edge347.loopexit.unr-lcssa, %.lr.ph346.preheader
  %.10344.epil.init = phi ptr [ %.10341, %.lr.ph346.preheader ], [ %.10.1, %._crit_edge347.loopexit.unr-lcssa ] ; 2 uses
  %.3240343.epil.init = phi i8 [ 1, %.lr.ph346.preheader ], [ %i.ng, %._crit_edge347.loopexit.unr-lcssa ] ; 2 uses
  %.5246342.epil.init = phi i32 [ %i.ml, %.lr.ph346.preheader ], [ %i.nn, %._crit_edge347.loopexit.unr-lcssa ]
  %lcmp.mod599 = trunc i64 %i.mx to i1
  call void @llvm.assume(i1 %lcmp.mod599)
  %i.no = load i8, ptr %.10344.epil.init, align 1, !tbaa !30 ; 2 uses
  %i.np = add i8 %.3240343.epil.init, 1
  %i.nq = sext i8 %.3240343.epil.init to i64
  %i.nr = getelementptr inbounds i8, ptr %i.mk, i64 %i.nq
  store i8 %i.no, ptr %i.nr, align 1, !tbaa !30
  %i.ns = shl i32 %.5246342.epil.init, 6
  %i.nt = zext i8 %i.no to i32
  %i.nu = add nsw i32 %i.ns, %i.nt
  %.10.epil = getelementptr inbounds nuw i8, ptr %.10344.epil.init, i64 1
  br label %._crit_edge347

._crit_edge347:                                   ; preds = %.lr.ph346.epil.preheader, %._crit_edge347.loopexit.unr-lcssa, %bb.bb
  %.5246.lcssa = phi i32 [ %i.ml, %bb.bb ], [ %i.nn, %._crit_edge347.loopexit.unr-lcssa ], [ %i.nu, %.lr.ph346.epil.preheader ]
  %.3240.lcssa = phi i8 [ 1, %bb.bb ], [ %i.ng, %._crit_edge347.loopexit.unr-lcssa ], [ %i.np, %.lr.ph346.epil.preheader ]
  %.10.lcssa = phi ptr [ %.10341, %bb.bb ], [ %.10.1, %._crit_edge347.loopexit.unr-lcssa ], [ %.10.epil, %.lr.ph346.epil.preheader ]
  %i.nv = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %.5246.lcssa, ptr %i.nv, align 8, !tbaa !80
  store i8 %.3240.lcssa, ptr %i.ah, align 8, !tbaa !74
  %i.nw = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 %i.mu, ptr %i.nw, align 4, !tbaa !81
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.ao, %bb.av, %._crit_edge347, %bb.ax, %bb.aw, %.loopexit
  %.11 = phi ptr [ %.10.lcssa, %._crit_edge347 ], [ %.9.ph, %bb.ax ], [ %.9.ph, %bb.aw ], [ %.9.ph, %.loopexit ], [ %.0215338, %bb.av ], [ %.7, %bb.ao ]
  store ptr %.11, ptr %i.h, align 8, !tbaa !55
  %i.nx = load ptr, ptr %i.a, align 8, !tbaa !63
  store ptr %i.nx, ptr %i.l, align 8, !tbaa !101
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit.thread, %._crit_edge335, %._crit_edge329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #2

declare void @umtx_lock_78(ptr noundef) local_unnamed_addr #2

declare void @umtx_unlock_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #10

declare void @ucnv_cbFromUWriteBytes_78(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef signext range(i8 0, 2) i8 @_ZL18hasValidTrailBytesPA256_Kih(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext range(i8 0, -128) %1) unnamed_addr #11 {
bb.a:
  %i.a = zext nneg i8 %1 to i64
  %i.b = getelementptr inbounds nuw [1024 x i8], ptr %0, i64 %i.a ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 644
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29   ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  %i.f = and i32 %i.d, 15728640
  %.not = icmp eq i32 %i.f, 7340032
  %or.cond = or i1 %i.e, %.not
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 260
  %i.h = load i32, ptr %i.g, align 4, !tbaa !29   ; 2 uses
  %i.i = icmp sgt i32 %i.h, -1
  %i.j = and i32 %i.h, 15728640
  %.not26 = icmp eq i32 %i.j, 7340032
  %or.cond29 = or i1 %i.i, %.not26
  br i1 %or.cond29, label %.preheader31, label %.loopexit

.preheader31.1:                                   ; preds = %.preheader31
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !29   ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  %i.o = and i32 %i.m, 15728640
  %.not28.1 = icmp eq i32 %i.o, 7340032
  %or.cond30.1 = or i1 %i.n, %.not28.1
  br i1 %or.cond30.1, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.preheader31.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.not.1, label %.preheader, label %.preheader31, !llvm.loop !220

.preheader31:                                     ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !29   ; 2 uses
  %i.r = icmp sgt i32 %i.q, -1
  %i.s = and i32 %i.q, 15728640
  %.not28 = icmp eq i32 %i.s, 7340032
  %or.cond30 = or i1 %i.r, %.not28
  br i1 %or.cond30, label %.preheader31.1, label %.loopexit

.preheader:                                       ; preds = %bb.c, %bb.e
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv37
  %i.u = load i32, ptr %i.t, align 4, !tbaa !29   ; 2 uses
  %i.v = icmp sgt i32 %i.u, -1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader
  %i.w = lshr i32 %i.u, 24
  %i.x = trunc nuw nsw i32 %i.w to i8
  %i.y = tail call fastcc noundef signext i8 @_ZL18hasValidTrailBytesPA256_Kih(ptr noundef nonnull %0, i8 noundef zeroext %i.x)
  %.not27 = icmp eq i8 %i.y, 0
  br i1 %.not27, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.preheader, %bb.d
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next38, 256
  br i1 %exitcond40.not, label %.loopexit, label %.preheader, !llvm.loop !221

.loopexit:                                        ; preds = %.preheader31, %.preheader31.1, %bb.e, %bb.d, %bb.b, %bb.a
  %.021 = phi i8 [ 1, %bb.b ], [ 1, %bb.d ], [ 1, %bb.a ], [ 0, %bb.e ], [ 1, %.preheader31.1 ], [ 1, %.preheader31 ]
  ret i8 %.021
}

declare signext i8 @ucnv_extInitialMatchToU_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @ucnv_toUWriteCodePoint_78(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare signext i8 @ucnv_extInitialMatchFromU_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @ucnv_fromUWriteBytes_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v16i32(<16 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !12, i64 40}
!9 = !{!"_ZTS19UConverterMBCSTable", !6, i64 0, !6, i64 1, !6, i64 2, !5, i64 4, !10, i64 8, !10, i64 16, !12, i64 24, !11, i64 32, !12, i64 40, !12, i64 48, !6, i64 56, !13, i64 184, !13, i64 192, !5, i64 200, !6, i64 204, !6, i64 205, !6, i64 206, !14, i64 208, !5, i64 212, !13, i64 216, !13, i64 224, !15, i64 232, !10, i64 240}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 short", !11, i64 0}
!13 = !{!"p1 omnipotent char", !11, i64 0}
!14 = !{!"char16_t", !6, i64 0}
!15 = !{!"p1 _ZTS20UConverterSharedData", !11, i64 0}
!16 = !{!9, !6, i64 205}
!17 = !{!9, !6, i64 204}
!18 = !{!9, !13, i64 184}
!19 = !{!20, !20, i64 0}
!20 = !{!"short", !6, i64 0}
!21 = !{!22, !11, i64 8}
!22 = !{!"_ZTS9USetAdder", !23, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!23 = !{!"p1 _ZTS4USet", !11, i64 0}
!24 = !{!22, !23, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
!28 = distinct !{!28, !26}
!29 = !{!5, !5, i64 0}
!30 = !{!6, !6, i64 0}
!31 = distinct !{!31, !26}
!32 = distinct !{!32, !26}
!33 = distinct !{!33, !26}
!34 = distinct !{!34, !26}
!35 = distinct !{!35, !26}
!36 = distinct !{!36, !26}
!37 = !{!38, !38, i64 0}
!38 = !{!"_ZTS10UErrorCode", !6, i64 0}
!39 = distinct !{!39, !26}
!40 = distinct !{!40, !26}
!41 = !{!42, !6, i64 252}
!42 = !{!"_ZTS20UConverterSharedData", !5, i64 0, !5, i64 4, !11, i64 8, !43, i64 16, !6, i64 24, !6, i64 25, !44, i64 32, !5, i64 40, !9, i64 48}
!43 = !{!"p1 _ZTS20UConverterStaticData", !11, i64 0}
!44 = !{!"p1 _ZTS14UConverterImpl", !11, i64 0}
!45 = !{!46, !47, i64 8}
!46 = !{!"_ZTS23UConverterToUnicodeArgs", !20, i64 0, !6, i64 2, !47, i64 8, !13, i64 16, !13, i64 24, !48, i64 32, !48, i64 40, !10, i64 48}
!47 = !{!"p1 _ZTS10UConverter", !11, i64 0}
!48 = !{!"p1 char16_t", !11, i64 0}
!49 = !{!50, !6, i64 282}
!50 = !{!"_ZTS10UConverter", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !13, i64 40, !15, i64 48, !5, i64 56, !6, i64 60, !6, i64 61, !6, i64 62, !6, i64 63, !6, i64 64, !6, i64 65, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !6, i64 88, !6, i64 89, !6, i64 90, !6, i64 91, !6, i64 92, !6, i64 93, !6, i64 94, !6, i64 95, !6, i64 96, !6, i64 104, !6, i64 136, !6, i64 140, !6, i64 144, !5, i64 208, !6, i64 212, !6, i64 250, !6, i64 281, !6, i64 282, !6, i64 283, !51, i64 284}
!51 = !{!"_ZTS24UConverterCallbackReason", !6, i64 0}
!52 = !{!50, !15, i64 48}
!53 = !{!42, !6, i64 48}
!54 = !{!42, !6, i64 253}
!55 = !{!46, !13, i64 16}
!56 = !{!46, !13, i64 24}
!57 = !{!46, !48, i64 32}
!58 = !{!48, !48, i64 0}
!59 = !{!46, !48, i64 40}
!60 = !{!46, !10, i64 48}
!61 = !{!10, !10, i64 0}
!62 = !{!50, !5, i64 56}
!63 = !{!13, !13, i64 0}
!64 = !{!14, !14, i64 0}
!65 = distinct !{!65, !26}
!66 = distinct !{!66, !26}
!67 = distinct !{!67, !26}
!68 = distinct !{!68, !26, !69, !70}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = distinct !{!71, !26, !70, !69}
!72 = !{!42, !10, i64 288}
!73 = !{!46, !6, i64 2}
!74 = !{!50, !6, i64 64}
!75 = distinct !{!75, !26, !69, !70}
!76 = distinct !{!76, !26, !70, !69}
!77 = distinct !{!77, !26}
!78 = !{!50, !6, i64 93}
!79 = !{!42, !12, i64 72}
!80 = !{!50, !5, i64 72}
!81 = !{!50, !5, i64 76}
!82 = !{!42, !6, i64 49}
!83 = distinct !{!83, !26}
!84 = distinct !{!84, !26}
!85 = distinct !{!85, !26}
!86 = !{!9, !5, i64 4}
!87 = !{!9, !11, i64 32}
!88 = !{!89, !5, i64 0}
!89 = !{!"_ZTS16_MBCSToUFallback", !5, i64 0, !5, i64 4}
!90 = distinct !{!90, !26}
!91 = !{!89, !5, i64 4}
!92 = distinct !{!92, !26}
!93 = !{!42, !10, i64 56}
!94 = distinct !{!94, !26}
!95 = !{!96, !47, i64 8}
!96 = !{!"_ZTS25UConverterFromUnicodeArgs", !20, i64 0, !6, i64 2, !47, i64 8, !48, i64 16, !48, i64 24, !13, i64 32, !13, i64 40, !10, i64 48}
!97 = !{!50, !5, i64 208}
!98 = !{!50, !6, i64 281}
!99 = !{!96, !48, i64 16}
!100 = !{!96, !48, i64 24}
!101 = !{!96, !13, i64 32}
!102 = !{!96, !13, i64 40}
!103 = !{!96, !10, i64 48}
!104 = !{!42, !12, i64 88}
!105 = !{!42, !5, i64 260}
!106 = !{!50, !6, i64 63}
!107 = !{!50, !5, i64 84}
!108 = distinct !{!108, !26}
!109 = !{!96, !6, i64 2}
!110 = distinct !{!110, !26, !69, !70}
!111 = distinct !{!111, !26, !70, !69}
!112 = distinct !{!112, !26, !69, !70}
!113 = distinct !{!113, !26, !70, !69}
!114 = distinct !{!114, !26}
!115 = !{!42, !6, i64 254}
!116 = !{!42, !12, i64 96}
!117 = distinct !{!117, !26, !118}
!118 = !{!"llvm.loop.peeled.count", i32 1}
!119 = distinct !{!119, !26}
!120 = !{!50, !6, i64 91}
!121 = !{!50, !5, i64 80}
!122 = distinct !{!122, !26, !118}
!123 = distinct !{!123, !26}
!124 = !{!50, !6, i64 95}
!125 = !{!42, !13, i64 232}
!126 = !{!42, !43, i64 16}
!127 = !{!128, !6, i64 70}
!128 = !{!"_ZTS20UConverterStaticData", !5, i64 0, !6, i64 4, !5, i64 64, !6, i64 68, !6, i64 69, !6, i64 70, !6, i64 71, !6, i64 72, !6, i64 76, !6, i64 77, !6, i64 78, !6, i64 79, !6, i64 80, !6, i64 81}
!129 = !{!128, !6, i64 71}
!130 = !{!131, !5, i64 24}
!131 = !{!"_ZTS11_MBCSHeader", !6, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36}
!132 = !{!131, !5, i64 32}
!133 = !{!9, !10, i64 240}
!134 = !{!135, !5, i64 4}
!135 = !{!"_ZTS18UConverterLoadArgs", !5, i64 0, !5, i64 4, !6, i64 8, !6, i64 9, !20, i64 10, !5, i64 12, !13, i64 16, !13, i64 24, !13, i64 32}
!136 = !{!135, !5, i64 0}
!137 = !{!135, !6, i64 8}
!138 = !{!135, !20, i64 10}
!139 = !{!135, !5, i64 12}
!140 = !{!135, !13, i64 16}
!141 = !{!135, !13, i64 24}
!142 = !{!128, !6, i64 69}
!143 = !{!42, !15, i64 280}
!144 = !{!9, !15, i64 232}
!145 = !{!9, !10, i64 16}
!146 = !{!9, !13, i64 192}
!147 = !{!9, !10, i64 8}
!148 = !{!9, !6, i64 1}
!149 = !{!9, !6, i64 0}
!150 = distinct !{!150, !26, !69, !70}
!151 = !{!9, !6, i64 2}
!152 = !{!131, !5, i64 4}
!153 = !{!131, !5, i64 8}
!154 = !{!131, !5, i64 12}
!155 = !{!9, !12, i64 24}
!156 = !{!131, !5, i64 16}
!157 = !{!131, !5, i64 20}
!158 = !{!131, !5, i64 28}
!159 = !{!9, !5, i64 200}
!160 = !{!161, !20, i64 0}
!161 = !{!"_ZTS9UDataInfo", !20, i64 0, !20, i64 2, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7, !6, i64 8, !6, i64 12, !6, i64 16}
!162 = !{!42, !11, i64 8}
!163 = !{!128, !6, i64 79}
!164 = !{!9, !6, i64 206}
!165 = distinct !{!165, !26}
!166 = !{!9, !14, i64 208}
!167 = !{!9, !12, i64 48}
!168 = distinct !{!168, !26, !69, !70}
!169 = !{!9, !5, i64 212}
!170 = !{!131, !5, i64 36}
end_hunk_1
