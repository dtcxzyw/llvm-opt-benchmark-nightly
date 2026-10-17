Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ucnvmbcs?download=true
inline.NumInlined: 46
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@ucnv_MBCSGetFilteredUnicodeSetForUnicode_78:bb.a
  %i.cy = add i16 %i.cx, 24159
  %i.cz = icmp ult i16 %i.cy, 23902
  br i1 %i.cz, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.da = add nuw nsw i16 %i.cx, 95
  %i.db = and i16 %i.da, 254
  %i.dc = icmp samesign ult i16 %i.db, 94
  br i1 %i.dc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dd = load ptr, ptr %i.ak, align 8
  %i.de = load ptr, ptr %1, align 8
  tail call void %i.dd(ptr noundef %i.de, i32 noundef %.11) #16
  br label %bb.al

bb.al:                                            ; preds = %.preheader199, %bb.ak, %bb.aj, %bb.ai
  %i.df = lshr i32 %.4168, 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.8, i64 2
  %i.dh = add nsw i32 %.11, 1                     ; 3 uses
  %i.di = and i32 %i.dh, 15
  %.not179 = icmp eq i32 %i.di, 0
  br i1 %.not179, label %.loopexit192, label %.preheader199, !llvm.loop !18

.preheader201:                                    ; preds = %bb.q, %bb.ap
  %.5169 = phi i32 [ %i.ds, %bb.ap ], [ %i.ba, %bb.q ] ; 2 uses
  %.12 = phi i32 [ %i.du, %bb.ap ], [ %.6155214, %bb.q ] ; 2 uses
  %.9 = phi ptr [ %i.dt, %bb.ap ], [ %i.az, %bb.q ] ; 2 uses
  %i.dj = trunc i32 %.5169 to i1
  %or.cond13 = or i1 %i.af, %i.dj
  br i1 %or.cond13, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %.preheader201
  %i.dk = load i16, ptr %.9, align 2              ; 2 uses
  %i.dl = add i16 %i.dk, 24159
  %i.dm = icmp ult i16 %i.dl, 23646
  br i1 %i.dm, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.dn = add nuw nsw i16 %i.dk, 95
  %i.do = and i16 %i.dn, 254
  %i.dp = icmp samesign ult i16 %i.do, 94
  br i1 %i.dp, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dq = load ptr, ptr %i.ak, align 8
  %i.dr = load ptr, ptr %1, align 8
  tail call void %i.dq(ptr noundef %i.dr, i32 noundef %.12) #16
  br label %bb.ap

bb.ap:                                            ; preds = %.preheader201, %bb.ao, %bb.an, %bb.am
  %i.ds = lshr i32 %.5169, 1
  %i.dt = getelementptr inbounds nuw i8, ptr %.9, i64 2
  %i.du = add nsw i32 %.12, 1                     ; 3 uses
  %i.dv = and i32 %i.du, 15
  %.not178 = icmp eq i32 %i.dv, 0
  br i1 %.not178, label %.loopexit192, label %.preheader201, !llvm.loop !19

bb.aq:                                            ; preds = %bb.q
  store i32 5, ptr %4, align 4
  br label %bb.at

bb.ar:                                            ; preds = %bb.p
  %i.dw = add nsw i32 %.6155214, 16
  br label %.loopexit192

.loopexit192:                                     ; preds = %bb.ap, %bb.al, %bb.ah, %bb.ae, %bb.ab, %bb.y, %bb.ar
  %.13 = phi i32 [ %i.dw, %bb.ar ], [ %i.cc, %bb.ab ], [ %i.cl, %bb.ae ], [ %i.cu, %bb.ah ], [ %i.dh, %bb.al ], [ %i.bt, %bb.y ], [ %i.du, %bb.ap ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %.loopexit203, label %bb.p, !llvm.loop !20

bb.as:                                            ; preds = %bb.n
  %i.dx = add nsw i32 %.5154216, 1024
  br label %.loopexit203

.loopexit203:                                     ; preds = %.loopexit192, %bb.as
  %.14 = phi i32 [ %i.dx, %bb.as ], [ %.13, %.loopexit192 ]
  %i.dy = add nuw nsw i16 %.1163215, 1            ; 2 uses
  %.not186 = icmp samesign ult i16 %i.dy, %i.am
  br i1 %.not186, label %bb.n, label %.critedge, !llvm.loop !21

.critedge:                                        ; preds = %.loopexit203, %.loopexit191
  tail call void @ucnv_extGetUnicodeSet_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #16
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %.critedge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @ucnv_extGetUnicodeSet_78(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ucnv_MBCSGetUnicodeSetForUnicode_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.b = load i8, ptr %i.a, align 4
  %i.c = icmp eq i8 %i.b, -37
  %i.d = zext i1 %i.c to i32
  tail call void @ucnv_MBCSGetFilteredUnicodeSetForUnicode_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %i.d, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ucnv_MBCSToUnicodeWithOffsets_78(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %i.c = alloca ptr, align 8                      ; 13 uses
  %i.d = alloca ptr, align 8                      ; 44 uses
  %i.e = alloca ptr, align 8                      ; 43 uses
  %i.f = alloca ptr, align 8                      ; 60 uses
  %i.g = alloca ptr, align 8                      ; 18 uses
  %i.h = alloca ptr, align 8                      ; 25 uses
  %i.i = alloca ptr, align 8                      ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 18 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 282 ; 3 uses
  %i.m = load i8, ptr %i.l, align 2
  %i.n = icmp sgt i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @ucnv_extContinueMatchToU_78(ptr noundef nonnull %i.k, ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1) #16
  %i.o = load i32, ptr %1, align 4
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.c, label %bb.eu

bb.c:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.l, align 2
  %i.r = icmp slt i8 %i.q, 0
  br i1 %i.r, label %bb.eu, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load i8, ptr %i.u, align 8
  %i.w = icmp eq i8 %i.v, 1
  br i1 %i.w, label %bb.e, label %bb.at

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 253
  %i.y = load i8, ptr %i.x, align 1
  %i.z = and i8 %i.y, 1
  %.not311 = icmp eq i8 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  br i1 %.not311, label %bb.f, label %bb.v

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.ab = load ptr, ptr %i.j, align 8             ; 5 uses
  %i.ac = load ptr, ptr %i.aa, align 8            ; 3 uses
  store ptr %i.ac, ptr %i.d, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8            ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  store ptr %i.ag, ptr %i.e, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = lshr exact i64 %i.al, 1
  %i.an = trunc i64 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  store ptr %i.ap, ptr %i.f, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = and i32 %i.ar, 16
  %.not.i = icmp eq i32 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %..i = select i1 %.not.i, i64 56, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %..i
  %.0138.i = load ptr, ptr %i.av, align 8         ; 17 uses
  %i.aw = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ax = ptrtoint ptr %i.ac to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.az, i32 %i.an)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 65
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  br label %bb.g

bb.g:                                             ; preds = %bb.r, %bb.f
  %.0144.i = phi ptr [ %i.ac, %bb.f ], [ %.pre.pre.i, %bb.r ] ; 3 uses
  %.1140.i = phi i32 [ %spec.select.i, %bb.f ], [ %spec.select168.i, %bb.r ] ; 4 uses
  %.0135.i = phi i32 [ 0, %bb.f ], [ %i.mg, %bb.r ] ; 4 uses
  %i.bd = icmp sgt i32 %.1140.i, 15
  br i1 %i.bd, label %bb.h, label %.loopexit173.i

bb.h:                                             ; preds = %bb.g
  %i.be = lshr i32 %.1140.i, 4                    ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.0134.i = phi i32 [ %i.be, %bb.h ], [ %i.hp, %bb.k ] ; 3 uses
  %i.bf = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store ptr %i.bg, ptr %i.d, align 8
  %i.bh = load i8, ptr %i.bf, align 1
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4            ; 2 uses
  %i.bl = trunc i32 %i.bk to i16
  %i.bm = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  store ptr %i.bn, ptr %i.e, align 8
  store i16 %i.bl, ptr %i.bm, align 2
  %i.bo = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store ptr %i.bp, ptr %i.d, align 8
  %i.bq = load i8, ptr %i.bo, align 1
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4            ; 2 uses
  %i.bu = trunc i32 %i.bt to i16
  %i.bv = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  store ptr %i.bw, ptr %i.e, align 8
  store i16 %i.bu, ptr %i.bv, align 2
  %i.bx = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  store ptr %i.by, ptr %i.d, align 8
  %i.bz = load i8, ptr %i.bx, align 1
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4            ; 2 uses
  %i.cd = trunc i32 %i.cc to i16
  %i.ce = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  store ptr %i.cf, ptr %i.e, align 8
  store i16 %i.cd, ptr %i.ce, align 2
  %i.cg = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  store ptr %i.ch, ptr %i.d, align 8
  %i.ci = load i8, ptr %i.cg, align 1
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4            ; 2 uses
  %i.cm = trunc i32 %i.cl to i16
  %i.cn = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  store ptr %i.co, ptr %i.e, align 8
  store i16 %i.cm, ptr %i.cn, align 2
  %i.cp = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  store ptr %i.cq, ptr %i.d, align 8
  %i.cr = load i8, ptr %i.cp, align 1
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4            ; 2 uses
  %i.cv = trunc i32 %i.cu to i16
  %i.cw = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store ptr %i.cx, ptr %i.e, align 8
  store i16 %i.cv, ptr %i.cw, align 2
  %i.cy = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  store ptr %i.cz, ptr %i.d, align 8
  %i.da = load i8, ptr %i.cy, align 1
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4            ; 2 uses
  %i.de = trunc i32 %i.dd to i16
  %i.df = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  store ptr %i.dg, ptr %i.e, align 8
  store i16 %i.de, ptr %i.df, align 2
  %i.dh = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  store ptr %i.di, ptr %i.d, align 8
  %i.dj = load i8, ptr %i.dh, align 1
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4            ; 2 uses
  %i.dn = trunc i32 %i.dm to i16
  %i.do = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 2
  store ptr %i.dp, ptr %i.e, align 8
  store i16 %i.dn, ptr %i.do, align 2
  %i.dq = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  store ptr %i.dr, ptr %i.d, align 8
  %i.ds = load i8, ptr %i.dq, align 1
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4            ; 2 uses
  %i.dw = trunc i32 %i.dv to i16
  %i.dx = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  store ptr %i.dy, ptr %i.e, align 8
  store i16 %i.dw, ptr %i.dx, align 2
  %i.dz = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  store ptr %i.ea, ptr %i.d, align 8
  %i.eb = load i8, ptr %i.dz, align 1
  %i.ec = zext i8 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4            ; 2 uses
  %i.ef = trunc i32 %i.ee to i16
  %i.eg = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  store ptr %i.eh, ptr %i.e, align 8
  store i16 %i.ef, ptr %i.eg, align 2
  %i.ei = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  store ptr %i.ej, ptr %i.d, align 8
  %i.ek = load i8, ptr %i.ei, align 1
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4            ; 2 uses
  %i.eo = trunc i32 %i.en to i16
  %i.ep = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  store ptr %i.eq, ptr %i.e, align 8
  store i16 %i.eo, ptr %i.ep, align 2
  %i.er = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 1
  store ptr %i.es, ptr %i.d, align 8
  %i.et = load i8, ptr %i.er, align 1
  %i.eu = zext i8 %i.et to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4            ; 2 uses
  %i.ex = trunc i32 %i.ew to i16
  %i.ey = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  store ptr %i.ez, ptr %i.e, align 8
  store i16 %i.ex, ptr %i.ey, align 2
  %i.fa = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  store ptr %i.fb, ptr %i.d, align 8
  %i.fc = load i8, ptr %i.fa, align 1
  %i.fd = zext i8 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4            ; 2 uses
  %i.fg = trunc i32 %i.ff to i16
  %i.fh = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  store ptr %i.fi, ptr %i.e, align 8
  store i16 %i.fg, ptr %i.fh, align 2
  %i.fj = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  store ptr %i.fk, ptr %i.d, align 8
  %i.fl = load i8, ptr %i.fj, align 1
  %i.fm = zext i8 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4            ; 2 uses
  %i.fp = trunc i32 %i.fo to i16
  %i.fq = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  store ptr %i.fr, ptr %i.e, align 8
  store i16 %i.fp, ptr %i.fq, align 2
  %i.fs = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 1
  store ptr %i.ft, ptr %i.d, align 8
  %i.fu = load i8, ptr %i.fs, align 1
  %i.fv = zext i8 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4            ; 2 uses
  %i.fy = trunc i32 %i.fx to i16
  %i.fz = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 2
  store ptr %i.ga, ptr %i.e, align 8
  store i16 %i.fy, ptr %i.fz, align 2
  %i.gb = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  store ptr %i.gc, ptr %i.d, align 8
  %i.gd = load i8, ptr %i.gb, align 1
  %i.ge = zext i8 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4            ; 2 uses
  %i.gh = trunc i32 %i.gg to i16
  %i.gi = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  store ptr %i.gj, ptr %i.e, align 8
  store i16 %i.gh, ptr %i.gi, align 2
  %i.gk = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  store ptr %i.gl, ptr %i.d, align 8
  %i.gm = load i8, ptr %i.gk, align 1
  %i.gn = zext i8 %i.gm to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4            ; 2 uses
  %i.gq = insertelement <16 x i32> poison, i32 %i.bt, i64 0
  %i.gr = insertelement <16 x i32> %i.gq, i32 %i.bk, i64 1
  %i.gs = insertelement <16 x i32> %i.gr, i32 %i.cc, i64 2
  %i.gt = insertelement <16 x i32> %i.gs, i32 %i.cl, i64 3
  %i.gu = insertelement <16 x i32> %i.gt, i32 %i.cu, i64 4
  %i.gv = insertelement <16 x i32> %i.gu, i32 %i.dd, i64 5
  %i.gw = insertelement <16 x i32> %i.gv, i32 %i.dm, i64 6
  %i.gx = insertelement <16 x i32> %i.gw, i32 %i.dv, i64 7
  %i.gy = insertelement <16 x i32> %i.gx, i32 %i.ee, i64 8
  %i.gz = insertelement <16 x i32> %i.gy, i32 %i.en, i64 9
  %i.ha = insertelement <16 x i32> %i.gz, i32 %i.ew, i64 10
  %i.hb = insertelement <16 x i32> %i.ha, i32 %i.ff, i64 11
  %i.hc = insertelement <16 x i32> %i.hb, i32 %i.fo, i64 12
  %i.hd = insertelement <16 x i32> %i.hc, i32 %i.fx, i64 13
  %i.he = insertelement <16 x i32> %i.hd, i32 %i.gg, i64 14
  %i.hf = insertelement <16 x i32> %i.he, i32 %i.gp, i64 15
  %i.hg = call i32 @llvm.vector.reduce.or.v16i32(<16 x i32> %i.hf)
  %i.hh = trunc i32 %i.gp to i16
  %i.hi = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  store ptr %i.hj, ptr %i.e, align 8
  store i16 %i.hh, ptr %i.hi, align 2
  %i.hk = icmp slt i32 %i.hg, -2146435072
  br i1 %i.hk, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hl = load ptr, ptr %i.d, align 8
  %i.hm = getelementptr inbounds i8, ptr %i.hl, i64 -16
  store ptr %i.hm, ptr %i.d, align 8
  %i.hn = load ptr, ptr %i.e, align 8
  %i.ho = getelementptr inbounds i8, ptr %i.hn, i64 -32
  store ptr %i.ho, ptr %i.e, align 8
  br label %.loopexit174.i

bb.k:                                             ; preds = %bb.i
  %i.hp = add nsw i32 %.0134.i, -1
  %i.hq = icmp sgt i32 %.0134.i, 1
  br i1 %i.hq, label %bb.i, label %.loopexit174.i, !llvm.loop !22

.loopexit174.i:                                   ; preds = %bb.k, %bb.j
  %.1.i = phi i32 [ %.0134.i, %bb.j ], [ 0, %bb.k ]
  %i.hr = sub nsw i32 %i.be, %.1.i                ; 3 uses
  %i.hs = shl nsw i32 %i.hr, 4                    ; 2 uses
  %i.ht = sub nsw i32 %.1140.i, %i.hs             ; 3 uses
  %i.hu = load ptr, ptr %i.f, align 8
  %.not160.i = icmp eq ptr %i.hu, null
  br i1 %.not160.i, label %.loopexit173.i, label %bb.l

bb.l:                                             ; preds = %.loopexit174.i
  %i.hv = sext i32 %i.hs to i64
  %i.hw = getelementptr inbounds i8, ptr %.0144.i, i64 %i.hv ; 2 uses
  %i.hx = icmp sgt i32 %i.hr, 0
  br i1 %i.hx, label %.lr.ph.i, label %.loopexit173.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.2187.i = phi i32 [ %i.ju, %.lr.ph.i ], [ %i.hr, %bb.l ] ; 2 uses
  %.1136186.i = phi i32 [ %i.jr, %.lr.ph.i ], [ %.0135.i, %bb.l ] ; 17 uses
  %i.hy = add nsw i32 %.1136186.i, 1
  %i.hz = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  store ptr %i.ia, ptr %i.f, align 8
  store i32 %.1136186.i, ptr %i.hz, align 4
  %i.ib = add nsw i32 %.1136186.i, 2
  %i.ic = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  store ptr %i.id, ptr %i.f, align 8
  store i32 %i.hy, ptr %i.ic, align 4
  %i.ie = add nsw i32 %.1136186.i, 3
  %i.if = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  store ptr %i.ig, ptr %i.f, align 8
  store i32 %i.ib, ptr %i.if, align 4
  %i.ih = add nsw i32 %.1136186.i, 4
  %i.ii = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  store ptr %i.ij, ptr %i.f, align 8
  store i32 %i.ie, ptr %i.ii, align 4
  %i.ik = add nsw i32 %.1136186.i, 5
  %i.il = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  store ptr %i.im, ptr %i.f, align 8
  store i32 %i.ih, ptr %i.il, align 4
  %i.in = add nsw i32 %.1136186.i, 6
  %i.io = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  store ptr %i.ip, ptr %i.f, align 8
  store i32 %i.ik, ptr %i.io, align 4
  %i.iq = add nsw i32 %.1136186.i, 7
  %i.ir = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  store ptr %i.is, ptr %i.f, align 8
  store i32 %i.in, ptr %i.ir, align 4
  %i.it = add nsw i32 %.1136186.i, 8
  %i.iu = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  store ptr %i.iv, ptr %i.f, align 8
  store i32 %i.iq, ptr %i.iu, align 4
  %i.iw = add nsw i32 %.1136186.i, 9
  %i.ix = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  store ptr %i.iy, ptr %i.f, align 8
  store i32 %i.it, ptr %i.ix, align 4
  %i.iz = add nsw i32 %.1136186.i, 10
  %i.ja = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  store ptr %i.jb, ptr %i.f, align 8
  store i32 %i.iw, ptr %i.ja, align 4
  %i.jc = add nsw i32 %.1136186.i, 11
  %i.jd = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  store ptr %i.je, ptr %i.f, align 8
  store i32 %i.iz, ptr %i.jd, align 4
  %i.jf = add nsw i32 %.1136186.i, 12
  %i.jg = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  store ptr %i.jh, ptr %i.f, align 8
  store i32 %i.jc, ptr %i.jg, align 4
  %i.ji = add nsw i32 %.1136186.i, 13
  %i.jj = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  store ptr %i.jk, ptr %i.f, align 8
  store i32 %i.jf, ptr %i.jj, align 4
  %i.jl = add nsw i32 %.1136186.i, 14
  %i.jm = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  store ptr %i.jn, ptr %i.f, align 8
  store i32 %i.ji, ptr %i.jm, align 4
  %i.jo = add nsw i32 %.1136186.i, 15
  %i.jp = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  store ptr %i.jq, ptr %i.f, align 8
  store i32 %i.jl, ptr %i.jp, align 4
  %i.jr = add nsw i32 %.1136186.i, 16             ; 2 uses
  %i.js = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  store ptr %i.jt, ptr %i.f, align 8
  store i32 %i.jo, ptr %i.js, align 4
  %i.ju = add nsw i32 %.2187.i, -1
  %i.jv = icmp samesign ugt i32 %.2187.i, 1
  br i1 %i.jv, label %.lr.ph.i, label %.loopexit173.i, !llvm.loop !23

.loopexit173.i:                                   ; preds = %.lr.ph.i, %bb.l, %.loopexit174.i, %bb.g
  %.2146.i = phi ptr [ %.0144.i, %bb.g ], [ %.0144.i, %.loopexit174.i ], [ %i.hw, %bb.l ], [ %i.hw, %.lr.ph.i ] ; 6 uses
  %.2141.i = phi i32 [ %.1140.i, %bb.g ], [ %i.ht, %.loopexit174.i ], [ %i.ht, %bb.l ], [ %i.ht, %.lr.ph.i ]
  %.3.i = phi i32 [ %.0135.i, %bb.g ], [ %.0135.i, %.loopexit174.i ], [ %.0135.i, %bb.l ], [ %i.jr, %.lr.ph.i ] ; 7 uses
  %.2141.fr.i = freeze i32 %.2141.i               ; 2 uses
  %i.jw = icmp sgt i32 %.2141.fr.i, 0
  %.promoted.i434 = load ptr, ptr %i.d, align 8   ; 2 uses
  br i1 %i.jw, label %.outer.split.i.preheader, label %.loopexit171.split.i

.outer.split.i.preheader:                         ; preds = %.loopexit173.i, %.outer.backedge.i
  %.promoted.i436 = phi ptr [ %.promoted.i, %.outer.backedge.i ], [ %.promoted.i434, %.loopexit173.i ] ; 3 uses
  %.3142.ph.i435 = phi i32 [ %.3142.ph.be.i, %.outer.backedge.i ], [ %.2141.fr.i, %.loopexit173.i ] ; 2 uses
  %i.jx = icmp ult ptr %.promoted.i436, %i.ae
  br i1 %i.jx, label %.lr.ph781, label %.loopexit171.split.i

.outer.split.i:                                   ; preds = %bb.m
  %i.jy = icmp ult ptr %i.ka, %i.ae
  br i1 %i.jy, label %.lr.ph781, label %.loopexit171.split.i

.lr.ph781:                                        ; preds = %.outer.split.i.preheader, %.outer.split.i
  %i.jz = phi ptr [ %i.ka, %.outer.split.i ], [ %.promoted.i436, %.outer.split.i.preheader ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 1 ; 6 uses
  store ptr %i.ka, ptr %i.d, align 8
  %i.kb = load i8, ptr %i.jz, align 1
  %i.kc = zext i8 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4            ; 3 uses
  %i.kf = icmp slt i32 %i.ke, -2146435072
  br i1 %i.kf, label %.outer.backedge.i, label %bb.m

.outer.backedge.i:                                ; preds = %bb.m, %.lr.ph781
  %i.kg = trunc i32 %i.ke to i16
  %i.kh = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 2
  store ptr %i.ki, ptr %i.e, align 8
  store i16 %i.kg, ptr %i.kh, align 2
  %.3142.ph.be.i = add nsw i32 %.3142.ph.i435, -1
  %i.kj = icmp sgt i32 %.3142.ph.i435, 1
  %.promoted.i = load ptr, ptr %i.d, align 8      ; 2 uses
  br i1 %i.kj, label %.outer.split.i.preheader, label %.loopexit171.split.i, !llvm.loop !24

bb.m:                                             ; preds = %.lr.ph781
  %i.kk = lshr i32 %i.ke, 20
  %i.kl = and i32 %i.kk, 15
  switch i32 %i.kl, label %.outer.split.i [
    i32 2, label %.outer.backedge.i
    i32 6, label %.loopexit172.i
    i32 7, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  store i32 12, ptr %1, align 4
  br label %.loopexit172.i

.loopexit172.i:                                   ; preds = %bb.m, %bb.n
  %i.km = load ptr, ptr %i.f, align 8
  %.not161.i = icmp ne ptr %i.km, null
  %i.kn = ptrtoint ptr %i.ka to i64               ; 2 uses
  %i.ko = ptrtoint ptr %.2146.i to i64            ; 2 uses
  %i.kp = sub i64 %i.kn, %i.ko
  %i.kq = trunc i64 %i.kp to i32                  ; 3 uses
  %i.kr = icmp sgt i32 %i.kq, 1
  %or.cond202.i = select i1 %.not161.i, i1 %i.kr, i1 false
  br i1 %or.cond202.i, label %.lr.ph192.i.preheader, label %.loopexit170.i

.lr.ph192.i.preheader:                            ; preds = %.loopexit172.i
  %i.ks = trunc i64 %i.kn to i32                  ; 2 uses
  %i.kt = trunc i64 %i.ko to i32                  ; 2 uses
  %i.ku = xor i32 %i.kt, -1
  %i.kv = add i32 %i.ku, %i.ks
  %i.kw = add i32 %i.ks, -2
  %i.kx = sub i32 %i.kw, %i.kt
  %xtraiter = and i32 %i.kv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph192.i.prol.loopexit, label %.lr.ph192.i.prol

.lr.ph192.i.prol:                                 ; preds = %.lr.ph192.i.preheader, %.lr.ph192.i.prol
  %.0133191.i.prol = phi i32 [ %i.ky, %.lr.ph192.i.prol ], [ %i.kq, %.lr.ph192.i.preheader ]
  %.4190.i.prol = phi i32 [ %i.kz, %.lr.ph192.i.prol ], [ %.3.i, %.lr.ph192.i.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph192.i.prol ], [ 0, %.lr.ph192.i.preheader ]
  %i.ky = add nsw i32 %.0133191.i.prol, -1        ; 2 uses
  %i.kz = add nsw i32 %.4190.i.prol, 1            ; 3 uses
  %i.la = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 4
  store ptr %i.lb, ptr %i.f, align 8
  store i32 %.4190.i.prol, ptr %i.la, align 4
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph192.i.prol.loopexit, label %.lr.ph192.i.prol, !llvm.loop !25

.lr.ph192.i.prol.loopexit:                        ; preds = %.lr.ph192.i.prol, %.lr.ph192.i.preheader
  %.0133191.i.unr = phi i32 [ %i.kq, %.lr.ph192.i.preheader ], [ %i.ky, %.lr.ph192.i.prol ]
  %.4190.i.unr = phi i32 [ %.3.i, %.lr.ph192.i.preheader ], [ %i.kz, %.lr.ph192.i.prol ]
  %.lcssa800.unr = phi i32 [ poison, %.lr.ph192.i.preheader ], [ %i.kz, %.lr.ph192.i.prol ]
  %i.lc = icmp ult i32 %i.kx, 3
  br i1 %i.lc, label %.loopexit170.loopexit.i, label %.lr.ph192.i

.lr.ph192.i:                                      ; preds = %.lr.ph192.i.prol.loopexit, %.lr.ph192.i
  %.0133191.i = phi i32 [ %i.lm, %.lr.ph192.i ], [ %.0133191.i.unr, %.lr.ph192.i.prol.loopexit ] ; 2 uses
  %.4190.i = phi i32 [ %i.ln, %.lr.ph192.i ], [ %.4190.i.unr, %.lr.ph192.i.prol.loopexit ] ; 5 uses
  %i.ld = add nsw i32 %.4190.i, 1
  %i.le = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  store ptr %i.lf, ptr %i.f, align 8
  store i32 %.4190.i, ptr %i.le, align 4
  %i.lg = add nsw i32 %.4190.i, 2
  %i.lh = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  store ptr %i.li, ptr %i.f, align 8
  store i32 %i.ld, ptr %i.lh, align 4
  %i.lj = add nsw i32 %.4190.i, 3
  %i.lk = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  store ptr %i.ll, ptr %i.f, align 8
  store i32 %i.lg, ptr %i.lk, align 4
  %i.lm = add nsw i32 %.0133191.i, -4
  %i.ln = add nsw i32 %.4190.i, 4                 ; 2 uses
  %i.lo = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  store ptr %i.lp, ptr %i.f, align 8
  store i32 %i.lj, ptr %i.lo, align 4
  %i.lq = icmp sgt i32 %.0133191.i, 5
  br i1 %i.lq, label %.lr.ph192.i, label %.loopexit170.loopexit.i, !llvm.loop !26

.loopexit170.loopexit.i:                          ; preds = %.lr.ph192.i, %.lr.ph192.i.prol.loopexit
  %.lcssa800 = phi i32 [ %.lcssa800.unr, %.lr.ph192.i.prol.loopexit ], [ %i.ln, %.lr.ph192.i ]
  %.pre.pre.pre.i = load ptr, ptr %i.d, align 8
  br label %.loopexit170.i

.loopexit170.i:                                   ; preds = %.loopexit170.loopexit.i, %.loopexit172.i
  %.pre.pre.i = phi ptr [ %i.ka, %.loopexit172.i ], [ %.pre.pre.pre.i, %.loopexit170.loopexit.i ] ; 5 uses
  %.5.i = phi i32 [ %.3.i, %.loopexit172.i ], [ %.lcssa800, %.loopexit170.loopexit.i ] ; 3 uses
  %i.lr = load i32, ptr %1, align 4
  %i.ls = icmp slt i32 %i.lr, 1
  br i1 %i.ls, label %bb.o, label %.loopexit171.split.i

bb.o:                                             ; preds = %.loopexit170.i
  %i.lt = getelementptr inbounds i8, ptr %.pre.pre.i, i64 -1
  %i.lu = load i8, ptr %i.lt, align 1
  store i8 %i.lu, ptr %i.ba, align 1
  %i.lv = load ptr, ptr %i.at, align 8
  %i.lw = getelementptr i8, ptr %i.lv, i64 288
  %.val.i = load ptr, ptr %i.lw, align 8          ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.lx = load i8, ptr %i.bb, align 2
  %i.ly = load ptr, ptr %i.ah, align 8
  %i.lz = call signext i8 @ucnv_extInitialMatchToU_78(ptr noundef nonnull %i.ab, ptr noundef nonnull %.val.i, i32 noundef 1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.e, ptr noundef %i.ly, ptr noundef nonnull %i.f, i32 noundef %.5.i, i8 noundef signext %i.lx, ptr noundef nonnull %1) #16
  %.not44.i.i = icmp eq i8 %i.lz, 0
  br i1 %.not44.i.i, label %bb.q, label %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i

bb.q:                                             ; preds = %bb.p, %bb.o
  store i32 10, ptr %1, align 4
  br label %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i

_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i: ; preds = %bb.q, %bb.p
  %.1.i.i = phi i8 [ 0, %bb.p ], [ 1, %bb.q ]
  store i8 %.1.i.i, ptr %i.bc, align 8
  %i.ma = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.mb = ptrtoint ptr %i.ma to i64               ; 2 uses
  %i.mc = ptrtoint ptr %.pre.pre.i to i64
  %i.md = sub i64 %i.mb, %i.mc
  %i.me = trunc i64 %i.md to i32
  %i.mf = add i32 %.5.i, 1
  %i.mg = add i32 %i.mf, %i.me                    ; 2 uses
  %i.mh = load i32, ptr %1, align 4
  %i.mi = icmp slt i32 %i.mh, 1
  br i1 %i.mi, label %bb.r, label %.loopexit171.split.i

bb.r:                                             ; preds = %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i
  %i.mj = load ptr, ptr %i.ah, align 8
  %i.mk = load ptr, ptr %i.e, align 8
  %i.ml = ptrtoint ptr %i.mj to i64
  %i.mm = ptrtoint ptr %i.mk to i64
  %i.mn = sub i64 %i.ml, %i.mm
  %i.mo = lshr exact i64 %i.mn, 1
  %i.mp = trunc i64 %i.mo to i32
  %i.mq = sub i64 %i.aw, %i.mb
  %i.mr = trunc i64 %i.mq to i32
  %spec.select168.i = call i32 @llvm.smin.i32(i32 %i.mr, i32 %i.mp)
  br label %bb.g

.loopexit171.split.i:                             ; preds = %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i, %.loopexit170.i, %.loopexit173.i, %.outer.backedge.i, %.outer.split.i.preheader, %.outer.split.i
  %2 = phi ptr [ %.promoted.i, %.outer.backedge.i ], [ %i.ka, %.outer.split.i ], [ %.promoted.i436, %.outer.split.i.preheader ], [ %i.ma, %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i ], [ %.promoted.i434, %.loopexit173.i ], [ %.pre.pre.i, %.loopexit170.i ] ; 3 uses
  %.3147.i = phi ptr [ %.2146.i, %.outer.backedge.i ], [ %.2146.i, %.outer.split.i ], [ %.2146.i, %.outer.split.i.preheader ], [ %.pre.pre.i, %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i ], [ %.2146.i, %.loopexit173.i ], [ %.2146.i, %.loopexit170.i ]
  %.6.i = phi i32 [ %.3.i, %.outer.backedge.i ], [ %.3.i, %.outer.split.i ], [ %.3.i, %.outer.split.i.preheader ], [ %i.mg, %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i ], [ %.3.i, %.loopexit173.i ], [ %.5.i, %.loopexit170.i ] ; 2 uses
  %i.ms = load i32, ptr %1, align 4
  %i.mt = icmp slt i32 %i.ms, 1
  %i.mu = icmp ult ptr %2, %i.ae
  %or.cond.i = select i1 %i.mt, i1 %i.mu, i1 false
  br i1 %or.cond.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.loopexit171.split.i
  %i.mv = load ptr, ptr %i.e, align 8
  %i.mw = load ptr, ptr %i.ah, align 8
  %.not165.i = icmp ult ptr %i.mv, %i.mw
  br i1 %.not165.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 15, ptr %1, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.loopexit171.split.i
  %i.mx = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not166.i = icmp eq ptr %i.mx, null
  %i.my = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.mz = ptrtoint ptr %.3147.i to i64            ; 2 uses
  %i.na = sub i64 %i.my, %i.mz                    ; 4 uses
  %.not167194.i = icmp eq i64 %i.na, 0
  %or.cond205.i = select i1 %.not166.i, i1 true, i1 %.not167194.i
  br i1 %or.cond205.i, label %_ZL31ucnv_MBCSSingleToBMPWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit, label %.lr.ph197.i.preheader

.lr.ph197.i.preheader:                            ; preds = %bb.u
  %xtraiter885 = and i64 %i.na, 3                 ; 2 uses
  %lcmp.mod886.not = icmp eq i64 %xtraiter885, 0
  br i1 %lcmp.mod886.not, label %.lr.ph197.i.prol.loopexit, label %.lr.ph197.i.prol

.lr.ph197.i.prol:                                 ; preds = %.lr.ph197.i.preheader, %.lr.ph197.i.prol
  %.0196.i.prol = phi i64 [ %i.ne, %.lr.ph197.i.prol ], [ %i.na, %.lr.ph197.i.preheader ]
  %.7195.i.prol = phi i32 [ %i.nb, %.lr.ph197.i.prol ], [ %.6.i, %.lr.ph197.i.preheader ] ; 2 uses
  %prol.iter887 = phi i64 [ %prol.iter887.next, %.lr.ph197.i.prol ], [ 0, %.lr.ph197.i.preheader ]
  %i.nb = add nsw i32 %.7195.i.prol, 1            ; 2 uses
  %i.nc = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  store ptr %i.nd, ptr %i.f, align 8
  store i32 %.7195.i.prol, ptr %i.nc, align 4
  %i.ne = add i64 %.0196.i.prol, -1               ; 2 uses
  %prol.iter887.next = add i64 %prol.iter887, 1   ; 2 uses
  %prol.iter887.cmp.not = icmp eq i64 %prol.iter887.next, %xtraiter885
  br i1 %prol.iter887.cmp.not, label %.lr.ph197.i.prol.loopexit, label %.lr.ph197.i.prol, !llvm.loop !27

.lr.ph197.i.prol.loopexit:                        ; preds = %.lr.ph197.i.prol, %.lr.ph197.i.preheader
  %.0196.i.unr = phi i64 [ %i.na, %.lr.ph197.i.preheader ], [ %i.ne, %.lr.ph197.i.prol ]
  %.7195.i.unr = phi i32 [ %.6.i, %.lr.ph197.i.preheader ], [ %i.nb, %.lr.ph197.i.prol ]
  %i.nf = sub i64 %i.mz, %i.my
  %i.ng = icmp ugt i64 %i.nf, -4
  br i1 %i.ng, label %.loopexit.loopexit.i, label %.lr.ph197.i

.lr.ph197.i:                                      ; preds = %.lr.ph197.i.prol.loopexit, %.lr.ph197.i
  %.0196.i = phi i64 [ %i.nt, %.lr.ph197.i ], [ %.0196.i.unr, %.lr.ph197.i.prol.loopexit ]
  %.7195.i = phi i32 [ %i.nq, %.lr.ph197.i ], [ %.7195.i.unr, %.lr.ph197.i.prol.loopexit ] ; 5 uses
  %i.nh = add nsw i32 %.7195.i, 1
  %i.ni = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  store ptr %i.nj, ptr %i.f, align 8
  store i32 %.7195.i, ptr %i.ni, align 4
  %i.nk = add nsw i32 %.7195.i, 2
  %i.nl = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 4
  store ptr %i.nm, ptr %i.f, align 8
  store i32 %i.nh, ptr %i.nl, align 4
  %i.nn = add nsw i32 %.7195.i, 3
  %i.no = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  store ptr %i.np, ptr %i.f, align 8
  store i32 %i.nk, ptr %i.no, align 4
  %i.nq = add nsw i32 %.7195.i, 4
  %i.nr = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 4
  store ptr %i.ns, ptr %i.f, align 8
  store i32 %i.nn, ptr %i.nr, align 4
  %i.nt = add i64 %.0196.i, -4                    ; 2 uses
  %.not167.i.3 = icmp eq i64 %i.nt, 0
  br i1 %.not167.i.3, label %.loopexit.loopexit.i, label %.lr.ph197.i, !llvm.loop !28

.loopexit.loopexit.i:                             ; preds = %.lr.ph197.i, %.lr.ph197.i.prol.loopexit
  %.pre223.i = load ptr, ptr %i.d, align 8
  %.pre224.i = load ptr, ptr %i.f, align 8
  br label %_ZL31ucnv_MBCSSingleToBMPWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit

_ZL31ucnv_MBCSSingleToBMPWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit: ; preds = %bb.u, %.loopexit.loopexit.i
  %i.nu = phi ptr [ %.pre224.i, %.loopexit.loopexit.i ], [ %i.mx, %bb.u ]
  %i.nv = phi ptr [ %.pre223.i, %.loopexit.loopexit.i ], [ %2, %bb.u ]
  store ptr %i.nv, ptr %i.aa, align 8
  %i.nw = load ptr, ptr %i.e, align 8
  store ptr %i.nw, ptr %i.af, align 8
  store ptr %i.nu, ptr %i.ao, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %bb.eu

bb.v:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.nx = load ptr, ptr %i.j, align 8             ; 7 uses
  %i.ny = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.oa = load ptr, ptr %i.nz, align 8            ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.oc = load ptr, ptr %i.ob, align 8            ; 2 uses
  store ptr %i.oc, ptr %i.b, align 8
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.oe = load ptr, ptr %i.od, align 8            ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.og = load ptr, ptr %i.of, align 8
  store ptr %i.og, ptr %i.c, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nx, i64 56
  %i.oi = load i32, ptr %i.oh, align 8
  %i.oj = and i32 %i.oi, 16
  %.not.i317 = icmp eq i32 %i.oj, 0
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nx, i64 48 ; 2 uses
  %i.ol = load ptr, ptr %i.ok, align 8
  %..i318 = select i1 %.not.i317, i64 56, i64 64
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 %..i318
  %.058.i = load ptr, ptr %i.om, align 8
  %i.on = icmp ult ptr %i.ny, %i.oa
  br i1 %i.on, label %.lr.ph.i319, label %_ZL35ucnv_MBCSSingleToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit

.lr.ph.i319:                                      ; preds = %bb.v
  %i.oo = getelementptr inbounds nuw i8, ptr %i.nx, i64 65
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.oq = getelementptr inbounds nuw i8, ptr %i.nx, i64 64
  br label %bb.w

bb.w:                                             ; preds = %.backedge.i, %.lr.ph.i319
  %i.or = phi ptr [ %i.ny, %.lr.ph.i319 ], [ %i.pe, %.backedge.i ] ; 4 uses
  %.076.i = phi i32 [ 0, %.lr.ph.i319 ], [ %.0.be.i, %.backedge.i ] ; 10 uses
  %i.os = load ptr, ptr %i.b, align 8             ; 9 uses
  %.not69.i = icmp ult ptr %i.os, %i.oe
  br i1 %.not69.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 15, ptr %1, align 4
  br label %_ZL35ucnv_MBCSSingleToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.y:                                             ; preds = %bb.w
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 1 ; 4 uses
  store ptr %i.ot, ptr %i.a, align 8
  %i.ou = load i8, ptr %i.or, align 1
  %i.ov = zext i8 %i.ou to i64
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %.058.i, i64 %i.ov
  %i.ox = load i32, ptr %i.ow, align 4            ; 7 uses
  %i.oy = icmp slt i32 %i.ox, -2146435072
  br i1 %i.oy, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.oz = trunc i32 %i.ox to i16
  %i.pa = getelementptr inbounds nuw i8, ptr %i.os, i64 2
  store ptr %i.pa, ptr %i.b, align 8
  store i16 %i.oz, ptr %i.os, align 2
  %i.pb = load ptr, ptr %i.c, align 8             ; 3 uses
  %.not75.i = icmp eq ptr %i.pb, null
  br i1 %.not75.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 4
  store ptr %i.pc, ptr %i.c, align 8
  store i32 %.076.i, ptr %i.pb, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.pd = add nsw i32 %.076.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i325, %bb.ao, %bb.an, %bb.aj, %bb.ab
  %.0.be.i = phi i32 [ %i.pd, %bb.ab ], [ %i.py, %bb.aj ], [ %i.qf, %bb.an ], [ %i.qu, %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.i325 ], [ %i.qg, %bb.ao ]
  %i.pe = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.pf = icmp ult ptr %i.pe, %i.oa
  br i1 %i.pf, label %bb.w, label %.loopexit.loopexit.i321.loopexit, !llvm.loop !29

bb.ac:                                            ; preds = %bb.y
  %i.pg = and i32 %i.ox, 13631488
  %or.cond.i320 = icmp eq i32 %i.pg, 1048576
  br i1 %or.cond.i320, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.ph = lshr i32 %i.ox, 10
  %i.pi = trunc i32 %i.ph to i16
  %i.pj = and i16 %i.pi, 1023
  %i.pk = or disjoint i16 %i.pj, -10240
  %i.pl = getelementptr inbounds nuw i8, ptr %i.os, i64 2
  store ptr %i.pl, ptr %i.b, align 8
  store i16 %i.pk, ptr %i.os, align 2
  %i.pm = load ptr, ptr %i.c, align 8             ; 3 uses
  %.not73.i = icmp eq ptr %i.pm, null
  br i1 %.not73.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  store ptr %i.pn, ptr %i.c, align 8
  store i32 %.076.i, ptr %i.pm, align 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.po = trunc i32 %i.ox to i16
  %i.pp = and i16 %i.po, 1023
  %i.pq = or disjoint i16 %i.pp, -9216            ; 2 uses
  %i.pr = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.ps = icmp ult ptr %i.pr, %i.oe
  br i1 %i.ps, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pr, i64 2
  store ptr %i.pt, ptr %i.b, align 8
  store i16 %i.pq, ptr %i.pr, align 2
  %i.pu = load ptr, ptr %i.c, align 8             ; 3 uses
  %.not74.i = icmp eq ptr %i.pu, null
  br i1 %.not74.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 4
  store ptr %i.pv, ptr %i.c, align 8
  store i32 %.076.i, ptr %i.pu, align 4
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.pw = getelementptr inbounds nuw i8, ptr %i.nx, i64 144
  store i16 %i.pq, ptr %i.pw, align 8
  %i.px = getelementptr inbounds nuw i8, ptr %i.nx, i64 93
  store i8 1, ptr %i.px, align 1
  store i32 15, ptr %1, align 4
  %.pre78.i = load ptr, ptr %i.a, align 8
  br label %_ZL35ucnv_MBCSSingleToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.py = add nsw i32 %.076.i, 1
  br label %.backedge.i

bb.ak:                                            ; preds = %bb.ac
  %i.pz = lshr i32 %i.ox, 20
  %i.qa = and i32 %i.pz, 15
  switch i32 %i.qa, label %bb.ao [
    i32 2, label %bb.al
    i32 6, label %bb.ap
    i32 7, label %.thread.i
  ]

bb.al:                                            ; preds = %bb.ak
  %i.qb = trunc i32 %i.ox to i16
  %i.qc = getelementptr inbounds nuw i8, ptr %i.os, i64 2
  store ptr %i.qc, ptr %i.b, align 8
  store i16 %i.qb, ptr %i.os, align 2
  %i.qd = load ptr, ptr %i.c, align 8             ; 3 uses
  %.not72.i = icmp eq ptr %i.qd, null
  br i1 %.not72.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  store ptr %i.qe, ptr %i.c, align 8
  store i32 %.076.i, ptr %i.qd, align 4
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.qf = add nsw i32 %.076.i, 1
  br label %.backedge.i

.thread.i:                                        ; preds = %bb.ak
  store i32 12, ptr %1, align 4
  br label %_ZL35ucnv_MBCSSingleToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode.exit

bb.ao:                                            ; preds = %bb.ak
  %i.qg = add nsw i32 %.076.i, 1
  br label %.backedge.i

bb.ap:                                            ; preds = %bb.ak
  %.pre.i = load i32, ptr %1, align 4
  %i.qh = icmp slt i32 %.pre.i, 1
  br i1 %i.qh, label %bb.aq, label %.loopexit.loopexit.i321.loopexit

bb.aq:                                            ; preds = %bb.ap
  store ptr %i.ot, ptr %i.aa, align 8
  %i.qi = load i8, ptr %i.or, align 1
  store i8 %i.qi, ptr %i.oo, align 1
  %i.qj = load ptr, ptr %i.ok, align 8
  %i.qk = getelementptr i8, ptr %i.qj, i64 288
  %.val.i322 = load ptr, ptr %i.qk, align 8       ; 2 uses
  %.not.i.i323 = icmp eq ptr %.val.i322, null
  br i1 %.not.i.i323, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ql = load i8, ptr %i.op, align 2
end_hunk_0
