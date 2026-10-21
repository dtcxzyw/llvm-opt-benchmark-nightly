Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnvmbcs?download=true
inline.NumInlined: 46
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@ucnv_MBCSGetFilteredUnicodeSetForUnicode_78:bb.a
bb.am:                                            ; preds = %.preheader201
  %i.dk = load i16, ptr %.9, align 2, !tbaa !21   ; 2 uses
  %i.dl = add i16 %i.dk, 24159
  %i.dm = icmp ult i16 %i.dl, 23646
  br i1 %i.dm, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.dn = add nuw nsw i16 %i.dk, 95
  %i.do = and i16 %i.dn, 254
  %i.dp = icmp samesign ult i16 %i.do, 94
  br i1 %i.dp, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dq = load ptr, ptr %i.ak, align 8, !tbaa !110
  %i.dr = load ptr, ptr %1, align 8, !tbaa !24
  tail call void %i.dq(ptr noundef %i.dr, i32 noundef %.12)
  br label %bb.ap

bb.ap:                                            ; preds = %.preheader201, %bb.ao, %bb.an, %bb.am
  %i.ds = lshr i32 %.5169, 1
  %i.dt = getelementptr inbounds nuw i8, ptr %.9, i64 2
  %i.du = add nsw i32 %.12, 1                     ; 3 uses
  %i.dv = and i32 %i.du, 15
  %.not178 = icmp eq i32 %i.dv, 0
  br i1 %.not178, label %.loopexit192, label %.preheader201, !llvm.loop !107

bb.aq:                                            ; preds = %bb.q
  store i32 5, ptr %4, align 4, !tbaa !29
  br label %bb.at

bb.ar:                                            ; preds = %bb.p
  %i.dw = add nsw i32 %.6155214, 16
  br label %.loopexit192

.loopexit192:                                     ; preds = %bb.ap, %bb.al, %bb.ah, %bb.ae, %bb.ab, %bb.y, %bb.ar
  %.13 = phi i32 [ %i.dw, %bb.ar ], [ %i.cc, %bb.ab ], [ %i.cl, %bb.ae ], [ %i.cu, %bb.ah ], [ %i.dh, %bb.al ], [ %i.bt, %bb.y ], [ %i.du, %bb.ap ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %.loopexit203, label %bb.p, !llvm.loop !108

bb.as:                                            ; preds = %bb.n
  %i.dx = add nsw i32 %.5154216, 1024
  br label %.loopexit203

.loopexit203:                                     ; preds = %.loopexit192, %bb.as
  %.14 = phi i32 [ %i.dx, %bb.as ], [ %.13, %.loopexit192 ]
  %i.dy = add nuw nsw i16 %.1163215, 1            ; 2 uses
  %.not186 = icmp samesign ult i16 %i.dy, %i.am
  br i1 %.not186, label %bb.n, label %.critedge, !llvm.loop !109

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
  %i.b = load i8, ptr %i.a, align 4, !tbaa !33
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
  %i.h = alloca ptr, align 8                      ; 25 uses
  %i.i = alloca ptr, align 8                      ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 18 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 282 ; 3 uses
  %i.m = load i8, ptr %i.l, align 2, !tbaa !40
  %i.n = icmp sgt i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @ucnv_extContinueMatchToU_78(ptr noundef nonnull %i.k, ptr noundef nonnull %0, i32 noundef -1, ptr noundef %1)
  %i.o = load i32, ptr %1, align 4, !tbaa !29
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.c, label %bb.ek

bb.c:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.l, align 2, !tbaa !40
  %i.r = icmp slt i8 %i.q, 0
  br i1 %i.r, label %bb.ek, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load i8, ptr %i.u, align 8, !tbaa !42
  %i.w = icmp eq i8 %i.v, 1
  br i1 %i.w, label %bb.e, label %bb.ar

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 253
  %i.y = load i8, ptr %i.x, align 1, !tbaa !43
  %i.z = and i8 %i.y, 1
  %.not311 = icmp eq i8 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  br i1 %.not311, label %bb.f, label %bb.w

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !37  ; 5 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !44 ; 4 uses
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !46 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !123 ; 3 uses
  store ptr %i.ag, ptr %i.e, align 8, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !124
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = lshr exact i64 %i.al, 1
  %i.an = trunc i64 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !125
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !49
  %i.as = and i32 %i.ar, 16
  %.not.i = icmp eq i32 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !41
  %..i = select i1 %.not.i, i64 56, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %..i
  %.0138.i = load ptr, ptr %i.av, align 8, !tbaa !48 ; 17 uses
  %i.aw = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ax = ptrtoint ptr %i.ac to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.az, i32 %i.an)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 65
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 64 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.r, %bb.f
  %.promoted195.i = phi ptr [ %i.ag, %bb.f ], [ %i.js, %bb.r ] ; 2 uses
  %.promoted.i = phi ptr [ %i.ac, %bb.f ], [ %.pre535, %bb.r ]
  %.0144.i = phi ptr [ %i.ac, %bb.f ], [ %i.hs, %bb.r ] ; 3 uses
  %.1140.i = phi i32 [ %spec.select.i, %bb.f ], [ %spec.select168.i, %bb.r ] ; 4 uses
  %.0135.i = phi i32 [ 0, %bb.f ], [ %i.jq, %bb.r ] ; 6 uses
  %i.bd = icmp sgt i32 %.1140.i, 15
  br i1 %i.bd, label %bb.h, label %.loopexit173.i

bb.h:                                             ; preds = %bb.g
  %i.be = lshr i32 %.1140.i, 4                    ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %i.bf = phi ptr [ %.promoted195.i, %bb.h ], [ %i.fo, %bb.k ] ; 19 uses
  %i.bg = phi ptr [ %.promoted.i, %bb.h ], [ %i.fi, %bb.k ] ; 18 uses
  %.0134.i = phi i32 [ %i.be, %bb.h ], [ %i.fq, %bb.k ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 2 uses
  store ptr %i.bh, ptr %i.d, align 8, !tbaa !45
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !27
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !26 ; 2 uses
  %i.bm = trunc i32 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 2 ; 2 uses
  store ptr %i.bn, ptr %i.e, align 8, !tbaa !47
  store i16 %i.bm, ptr %i.bf, align 2, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 2 ; 2 uses
  store ptr %i.bo, ptr %i.d, align 8, !tbaa !45
  %i.bp = load i8, ptr %i.bh, align 1, !tbaa !27
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !26 ; 2 uses
  %2 = or i32 %i.bs, %i.bl
  %i.bt = trunc i32 %i.bs to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  store ptr %i.bu, ptr %i.e, align 8, !tbaa !47
  store i16 %i.bt, ptr %i.bn, align 2, !tbaa !50
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 3 ; 2 uses
  store ptr %i.bv, ptr %i.d, align 8, !tbaa !45
  %i.bw = load i8, ptr %i.bo, align 1, !tbaa !27
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !26 ; 2 uses
  %3 = or i32 %2, %i.bz
  %i.ca = trunc i32 %i.bz to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bf, i64 6 ; 2 uses
  store ptr %i.cb, ptr %i.e, align 8, !tbaa !47
  store i16 %i.ca, ptr %i.bu, align 2, !tbaa !50
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  store ptr %i.cc, ptr %i.d, align 8, !tbaa !45
  %i.cd = load i8, ptr %i.bv, align 1, !tbaa !27
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !26 ; 2 uses
  %4 = or i32 %3, %i.cg
  %i.ch = trunc i32 %i.cg to i16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  store ptr %i.ci, ptr %i.e, align 8, !tbaa !47
  store i16 %i.ch, ptr %i.cb, align 2, !tbaa !50
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bg, i64 5 ; 2 uses
  store ptr %i.cj, ptr %i.d, align 8, !tbaa !45
  %i.ck = load i8, ptr %i.cc, align 1, !tbaa !27
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !26 ; 2 uses
  %5 = or i32 %4, %i.cn
  %i.co = trunc i32 %i.cn to i16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bf, i64 10 ; 2 uses
  store ptr %i.cp, ptr %i.e, align 8, !tbaa !47
  store i16 %i.co, ptr %i.ci, align 2, !tbaa !50
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bg, i64 6 ; 2 uses
  store ptr %i.cq, ptr %i.d, align 8, !tbaa !45
  %i.cr = load i8, ptr %i.cj, align 1, !tbaa !27
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !26 ; 2 uses
  %6 = or i32 %5, %i.cu
  %i.cv = trunc i32 %i.cu to i16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bf, i64 12 ; 2 uses
  store ptr %i.cw, ptr %i.e, align 8, !tbaa !47
  store i16 %i.cv, ptr %i.cp, align 2, !tbaa !50
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bg, i64 7 ; 2 uses
  store ptr %i.cx, ptr %i.d, align 8, !tbaa !45
  %i.cy = load i8, ptr %i.cq, align 1, !tbaa !27
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !26 ; 2 uses
  %7 = or i32 %6, %i.db
  %i.dc = trunc i32 %i.db to i16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bf, i64 14 ; 2 uses
  store ptr %i.dd, ptr %i.e, align 8, !tbaa !47
  store i16 %i.dc, ptr %i.cw, align 2, !tbaa !50
  %i.de = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  store ptr %i.de, ptr %i.d, align 8, !tbaa !45
  %i.df = load i8, ptr %i.cx, align 1, !tbaa !27
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !26 ; 2 uses
  %8 = or i32 %7, %i.di
  %i.dj = trunc i32 %i.di to i16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i16 %i.dj, ptr %i.dd, align 2, !tbaa !50
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bg, i64 9
  %i.dm = load i8, ptr %i.de, align 1, !tbaa !27
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !26 ; 2 uses
  %9 = or i32 %8, %i.dp
  %i.dq = trunc i32 %i.dp to i16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bf, i64 18
  store i16 %i.dq, ptr %i.dk, align 2, !tbaa !50
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %i.dt = load i8, ptr %i.dl, align 1, !tbaa !27
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !26 ; 2 uses
  %10 = or i32 %9, %i.dw
  %i.dx = trunc i32 %i.dw to i16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  store i16 %i.dx, ptr %i.dr, align 2, !tbaa !50
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bg, i64 11
  %i.ea = load i8, ptr %i.ds, align 1, !tbaa !27
  %i.eb = zext i8 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !26 ; 2 uses
  %11 = or i32 %10, %i.ed
  %i.ee = trunc i32 %i.ed to i16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bf, i64 22
  store i16 %i.ee, ptr %i.dy, align 2, !tbaa !50
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.eh = load i8, ptr %i.dz, align 1, !tbaa !27
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !26 ; 2 uses
  %12 = or i32 %11, %i.ek
  %i.el = trunc i32 %i.ek to i16
  %i.em = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i16 %i.el, ptr %i.ef, align 2, !tbaa !50
  %i.en = getelementptr inbounds nuw i8, ptr %i.bg, i64 13
  %i.eo = load i8, ptr %i.eg, align 1, !tbaa !27
  %i.ep = zext i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !26 ; 2 uses
  %13 = or i32 %12, %i.er
  %i.es = trunc i32 %i.er to i16
  %i.et = getelementptr inbounds nuw i8, ptr %i.bf, i64 26
  store i16 %i.es, ptr %i.em, align 2, !tbaa !50
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bg, i64 14
  %i.ev = load i8, ptr %i.en, align 1, !tbaa !27
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !26 ; 2 uses
  %14 = or i32 %13, %i.ey
  %i.ez = trunc i32 %i.ey to i16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  store i16 %i.ez, ptr %i.et, align 2, !tbaa !50
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bg, i64 15
  %i.fc = load i8, ptr %i.eu, align 1, !tbaa !27
  %i.fd = zext i8 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !26 ; 2 uses
  %15 = or i32 %14, %i.ff
  %i.fg = trunc i32 %i.ff to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bf, i64 30
  store i16 %i.fg, ptr %i.fa, align 2, !tbaa !50
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  store ptr %i.fi, ptr %i.d, align 8, !tbaa !45
  %i.fj = load i8, ptr %i.fb, align 1, !tbaa !27
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !26 ; 2 uses
  %16 = or i32 %15, %i.fm
  %i.fn = trunc i32 %i.fm to i16
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 3 uses
  store ptr %i.fo, ptr %i.e, align 8, !tbaa !47
  store i16 %i.fn, ptr %i.fh, align 2, !tbaa !50
  %i.fp = icmp slt i32 %16, -2146435072
  br i1 %i.fp, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.bg, ptr %i.d, align 8, !tbaa !45
  store ptr %i.bf, ptr %i.e, align 8, !tbaa !47
  br label %.loopexit174.i

bb.k:                                             ; preds = %bb.i
  %i.fq = add nsw i32 %.0134.i, -1
  %i.fr = icmp sgt i32 %.0134.i, 1
  br i1 %i.fr, label %bb.i, label %.loopexit174.i, !llvm.loop !111

.loopexit174.i:                                   ; preds = %bb.k, %bb.j
  %i.fs = phi ptr [ %i.bf, %bb.j ], [ %i.fo, %bb.k ] ; 3 uses
  %.1.i = phi i32 [ %.0134.i, %bb.j ], [ 0, %bb.k ] ; 2 uses
  %i.ft = sub i32 %i.be, %.1.i                    ; 5 uses
  %i.fu = shl nsw i32 %i.ft, 4                    ; 2 uses
  %i.fv = sub nsw i32 %.1140.i, %i.fu             ; 3 uses
  %i.fw = load ptr, ptr %i.f, align 8, !tbaa !48  ; 7 uses
  %.not160.i = icmp eq ptr %i.fw, null
  br i1 %.not160.i, label %.loopexit173.i, label %bb.l

bb.l:                                             ; preds = %.loopexit174.i
  %i.fx = sext i32 %i.fu to i64
  %i.fy = getelementptr inbounds i8, ptr %.0144.i, i64 %i.fx ; 2 uses
  %i.fz = icmp sgt i32 %i.ft, 0
  br i1 %i.fz, label %.lr.ph.i.preheader, label %.loopexit173.i

.lr.ph.i.preheader:                               ; preds = %bb.l
  %.neg = add i32 %.1.i, 1
  %xtraiter = and i32 %i.ft, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ga = insertelement <4 x i32> poison, i32 %.0135.i, i64 0
  %i.gb = shufflevector <4 x i32> %i.ga, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.gc = add nsw <4 x i32> %i.gb, <i32 4, i32 5, i32 6, i32 7>
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.ge = add nsw <4 x i32> %i.gb, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.ge, ptr %i.fw, align 4, !tbaa !26
  %i.gf = add nsw <4 x i32> %i.gb, <i32 8, i32 9, i32 10, i32 11>
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  store <4 x i32> %i.gc, ptr %i.gd, align 4, !tbaa !26
  %i.gh = add nsw <4 x i32> %i.gb, <i32 12, i32 13, i32 14, i32 15>
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  store <4 x i32> %i.gf, ptr %i.gg, align 4, !tbaa !26
  %i.gj = add nsw i32 %.0135.i, 16                ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fw, i64 64 ; 2 uses
  store <4 x i32> %i.gh, ptr %i.gi, align 4, !tbaa !26
  %i.gl = add nsw i32 %i.ft, -1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.unr = phi ptr [ %i.fw, %.lr.ph.i.preheader ], [ %i.gk, %.lr.ph.i.prol ]
  %.2197.i.unr = phi i32 [ %i.ft, %.lr.ph.i.preheader ], [ %i.gl, %.lr.ph.i.prol ]
  %.1136196.i.unr = phi i32 [ %.0135.i, %.lr.ph.i.preheader ], [ %i.gj, %.lr.ph.i.prol ]
  %.lcssa881.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.gj, %.lr.ph.i.prol ]
  %.lcssa880.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.gk, %.lr.ph.i.prol ]
  %i.gm = icmp eq i32 %i.be, %.neg
  br i1 %i.gm, label %..loopexit173_crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.gn = phi ptr [ %i.hj, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.2197.i = phi i32 [ %i.hk, %.lr.ph.i ], [ %.2197.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.1136196.i = phi i32 [ %i.hi, %.lr.ph.i ], [ %.1136196.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.go = insertelement <4 x i32> poison, i32 %.1136196.i, i64 0
  %i.gp = shufflevector <4 x i32> %i.go, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.gq = add nsw <4 x i32> %i.gp, <i32 4, i32 5, i32 6, i32 7>
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gs = add nsw <4 x i32> %i.gp, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.gs, ptr %i.gn, align 4, !tbaa !26
  %i.gt = add nsw <4 x i32> %i.gp, <i32 8, i32 9, i32 10, i32 11>
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  store <4 x i32> %i.gq, ptr %i.gr, align 4, !tbaa !26
  %i.gv = add nsw <4 x i32> %i.gp, <i32 12, i32 13, i32 14, i32 15>
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  store <4 x i32> %i.gt, ptr %i.gu, align 4, !tbaa !26
  %i.gx = add nsw i32 %.1136196.i, 16
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  store <4 x i32> %i.gv, ptr %i.gw, align 4, !tbaa !26
  %i.gz = insertelement <4 x i32> poison, i32 %i.gx, i64 0
  %i.ha = shufflevector <4 x i32> %i.gz, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.hb = add nsw <4 x i32> %i.ha, <i32 4, i32 5, i32 6, i32 7>
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gn, i64 80
  %i.hd = add nsw <4 x i32> %i.ha, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hd, ptr %i.gy, align 4, !tbaa !26
  %i.he = add nsw <4 x i32> %i.ha, <i32 8, i32 9, i32 10, i32 11>
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gn, i64 96
  store <4 x i32> %i.hb, ptr %i.hc, align 4, !tbaa !26
  %i.hg = add nsw <4 x i32> %i.ha, <i32 12, i32 13, i32 14, i32 15>
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gn, i64 112
  store <4 x i32> %i.he, ptr %i.hf, align 4, !tbaa !26
  %i.hi = add nsw i32 %.1136196.i, 32             ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gn, i64 128 ; 2 uses
  store <4 x i32> %i.hg, ptr %i.hh, align 4, !tbaa !26
  %i.hk = add nsw i32 %.2197.i, -2
  %i.hl = icmp sgt i32 %.2197.i, 2
  br i1 %i.hl, label %.lr.ph.i, label %..loopexit173_crit_edge.i, !llvm.loop !112

..loopexit173_crit_edge.i:                        ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa881 = phi i32 [ %.lcssa881.unr, %.lr.ph.i.prol.loopexit ], [ %i.hi, %.lr.ph.i ]
  %.lcssa880 = phi ptr [ %.lcssa880.unr, %.lr.ph.i.prol.loopexit ], [ %i.hj, %.lr.ph.i ]
  store ptr %.lcssa880, ptr %i.f, align 8, !tbaa !48
  br label %.loopexit173.i

.loopexit173.i:                                   ; preds = %..loopexit173_crit_edge.i, %bb.l, %.loopexit174.i, %bb.g
  %i.hm = phi ptr [ %.promoted195.i, %bb.g ], [ %i.fs, %.loopexit174.i ], [ %i.fs, %..loopexit173_crit_edge.i ], [ %i.fs, %bb.l ]
  %.2146.i = phi ptr [ %.0144.i, %bb.g ], [ %.0144.i, %.loopexit174.i ], [ %i.fy, %..loopexit173_crit_edge.i ], [ %i.fy, %bb.l ] ; 6 uses
  %.2141.i = phi i32 [ %.1140.i, %bb.g ], [ %i.fv, %.loopexit174.i ], [ %i.fv, %..loopexit173_crit_edge.i ], [ %i.fv, %bb.l ]
  %.3.i = phi i32 [ %.0135.i, %bb.g ], [ %.0135.i, %.loopexit174.i ], [ %.lcssa881, %..loopexit173_crit_edge.i ], [ %.0135.i, %bb.l ] ; 8 uses
  %.2141.fr.i = freeze i32 %.2141.i               ; 2 uses
  %i.hn = icmp sgt i32 %.2141.fr.i, 0
  br i1 %i.hn, label %.outer.split.i, label %.loopexit171.split.i

.outer.split.i:                                   ; preds = %.loopexit173.i, %.outer.backedge.i
  %i.ho = phi ptr [ %storemerge258.i, %.outer.backedge.i ], [ %i.hm, %.loopexit173.i ] ; 2 uses
  %.3142.ph205.i = phi i32 [ %.3142.ph.be.i, %.outer.backedge.i ], [ %.2141.fr.i, %.loopexit173.i ] ; 2 uses
  %.promoted202206.i = load ptr, ptr %i.d, align 8 ; 2 uses
  %i.hp = icmp ult ptr %.promoted202206.i, %i.ae
  br i1 %i.hp, label %.lr.ph842, label %.loopexit171.split.i

bb.m:                                             ; preds = %bb.n
  %i.hq = icmp ult ptr %i.hs, %i.ae
  br i1 %i.hq, label %.lr.ph842, label %.loopexit171.split.i

.lr.ph842:                                        ; preds = %.outer.split.i, %bb.m
  %i.hr = phi ptr [ %i.hs, %bb.m ], [ %.promoted202206.i, %.outer.split.i ] ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 1 ; 7 uses
  store ptr %i.hs, ptr %i.d, align 8, !tbaa !45
  %i.ht = load i8, ptr %i.hr, align 1, !tbaa !27
  %i.hu = zext i8 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !26 ; 3 uses
  %i.hx = icmp slt i32 %i.hw, -2146435072
  br i1 %i.hx, label %.outer.backedge.i, label %bb.n

.outer.backedge.i:                                ; preds = %bb.n, %.lr.ph842
  %storemerge258.i = getelementptr inbounds nuw i8, ptr %i.ho, i64 2 ; 2 uses
  store ptr %storemerge258.i, ptr %i.e, align 8, !tbaa !47
  %storemerge.i = trunc i32 %i.hw to i16
  store i16 %storemerge.i, ptr %i.ho, align 2, !tbaa !50
  %.3142.ph.be.i = add nsw i32 %.3142.ph205.i, -1
  %i.hy = icmp sgt i32 %.3142.ph205.i, 1
  br i1 %i.hy, label %.outer.split.i, label %.loopexit171.split.i, !llvm.loop !113

bb.n:                                             ; preds = %.lr.ph842
  %i.hz = lshr i32 %i.hw, 20
  %i.ia = and i32 %i.hz, 15
  switch i32 %i.ia, label %bb.m [
    i32 2, label %.outer.backedge.i
    i32 6, label %.loopexit172.i
    i32 7, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  store i32 12, ptr %1, align 4, !tbaa !29
  br label %.loopexit172.i

.loopexit172.i:                                   ; preds = %bb.n, %bb.o
  %i.ib = load ptr, ptr %i.f, align 8, !tbaa !48  ; 4 uses
  %.not161.i = icmp ne ptr %i.ib, null
  %i.ic = ptrtoint ptr %i.hs to i64               ; 4 uses
  %i.id = ptrtoint ptr %.2146.i to i64            ; 2 uses
  %i.ie = sub i64 %i.ic, %i.id
  %i.if = trunc i64 %i.ie to i32                  ; 3 uses
  %i.ig = icmp sgt i32 %i.if, 1
  %or.cond294.i = select i1 %.not161.i, i1 %i.ig, i1 false
  br i1 %or.cond294.i, label %.lr.ph213.i.preheader, label %.loopexit170.i

.lr.ph213.i.preheader:                            ; preds = %.loopexit172.i
  %i.ih = xor i64 %i.id, -1
  %i.ii = add i64 %i.ih, %i.ic                    ; 2 uses
  %i.ij = and i64 %i.ii, 4294967295               ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ij, 8
  br i1 %min.iters.check, label %.lr.ph213.i.preheader869, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph213.i.preheader
  %n.vec = and i64 %i.ii, 4294967288              ; 4 uses
  %i.ik = shl nuw nsw i64 %n.vec, 2
  %i.il = getelementptr i8, ptr %i.ib, i64 %i.ik  ; 2 uses
  %i.im = trunc nuw i64 %n.vec to i32             ; 2 uses
  %i.in = sub i32 %i.if, %i.im
  %i.io = add i32 %.3.i, %i.im                    ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.3.i, i64 0
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
  store <4 x i32> %vec.ind, ptr %next.gep, align 4, !tbaa !26
  store <4 x i32> %step.add, ptr %i.iq, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <4 x i32> %vec.ind, splat (i32 8)
end_hunk_0
begin_hunk_1_@_ZL17ucnv_DBCSFromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.mr = zext i1 %i.mq to i32
  %i.ms = icmp samesign ugt i8 %i.mk, -17
  %i.mt = select i1 %i.ms, i32 3, i32 2
  %i.mu = add nuw nsw i32 %i.mt, %i.mr
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %i.mv = phi i32 [ 1, %bb.ay ], [ %i.mu, %bb.ba ], [ 0, %bb.az ]
  %.10341 = getelementptr inbounds nuw i8, ptr %.9.ph, i64 1 ; 4 uses
  %i.mw = icmp ult ptr %.10341, %i.mh
  br i1 %i.mw, label %.lr.ph346.preheader, label %._crit_edge347

.lr.ph346.preheader:                              ; preds = %bb.bb
  %i.mx = xor i64 %.9.ph597, -1
  %i.my = add i64 %i.mx, %i.mi                    ; 3 uses
  %i.mz = add i64 %i.mi, -2
  %xtraiter598 = and i64 %i.my, 1
  %i.na = icmp eq i64 %i.mz, %.9.ph597
  br i1 %i.na, label %.lr.ph346.epil.preheader, label %.lr.ph346.preheader.new

.lr.ph346.preheader.new:                          ; preds = %.lr.ph346.preheader
  %unroll_iter = and i64 %i.my, -2
  br label %.lr.ph346

.lr.ph346:                                        ; preds = %.lr.ph346, %.lr.ph346.preheader.new
  %.10344 = phi ptr [ %.10341, %.lr.ph346.preheader.new ], [ %.10.1, %.lr.ph346 ] ; 3 uses
  %.5343 = phi i32 [ %i.mm, %.lr.ph346.preheader.new ], [ %i.no, %.lr.ph346 ]
  %.3227342 = phi i8 [ 1, %.lr.ph346.preheader.new ], [ %i.nh, %.lr.ph346 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph346.preheader.new ], [ %niter.next.1, %.lr.ph346 ]
  %i.nb = load i8, ptr %.10344, align 1, !tbaa !27 ; 2 uses
  %i.nc = add i8 %.3227342, 1
  %i.nd = sext i8 %.3227342 to i64
  %i.ne = getelementptr inbounds i8, ptr %i.ml, i64 %i.nd
  store i8 %i.nb, ptr %i.ne, align 1, !tbaa !27
  %i.nf = zext i8 %i.nb to i32
  %.10 = getelementptr inbounds nuw i8, ptr %.10344, i64 1
  %i.ng = load i8, ptr %.10, align 1, !tbaa !27   ; 2 uses
  %i.nh = add i8 %.3227342, 2                     ; 3 uses
  %i.ni = sext i8 %i.nc to i64
  %i.nj = getelementptr inbounds i8, ptr %i.ml, i64 %i.ni
  store i8 %i.ng, ptr %i.nj, align 1, !tbaa !27
  %i.nk = shl i32 %.5343, 12
  %i.nl = shl nuw nsw i32 %i.nf, 6
  %i.nm = add i32 %i.nk, %i.nl
  %i.nn = zext i8 %i.ng to i32
  %i.no = add nsw i32 %i.nm, %i.nn                ; 3 uses
  %.10.1 = getelementptr inbounds nuw i8, ptr %.10344, i64 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge347.loopexit.unr-lcssa, label %.lr.ph346, !llvm.loop !219

._crit_edge347.loopexit.unr-lcssa:                ; preds = %.lr.ph346
  %lcmp.mod599.not = icmp eq i64 %xtraiter598, 0
  br i1 %lcmp.mod599.not, label %._crit_edge347, label %.lr.ph346.epil.preheader

.lr.ph346.epil.preheader:                         ; preds = %._crit_edge347.loopexit.unr-lcssa, %.lr.ph346.preheader
  %.10344.epil.init = phi ptr [ %.10341, %.lr.ph346.preheader ], [ %.10.1, %._crit_edge347.loopexit.unr-lcssa ] ; 2 uses
  %.5343.epil.init = phi i32 [ %i.mm, %.lr.ph346.preheader ], [ %i.no, %._crit_edge347.loopexit.unr-lcssa ]
  %.3227342.epil.init = phi i8 [ 1, %.lr.ph346.preheader ], [ %i.nh, %._crit_edge347.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod603 = trunc i64 %i.my to i1
  call void @llvm.assume(i1 %lcmp.mod603)
  %i.np = load i8, ptr %.10344.epil.init, align 1, !tbaa !27 ; 2 uses
  %i.nq = add i8 %.3227342.epil.init, 1
  %i.nr = sext i8 %.3227342.epil.init to i64
  %i.ns = getelementptr inbounds i8, ptr %i.ml, i64 %i.nr
  store i8 %i.np, ptr %i.ns, align 1, !tbaa !27
  %i.nt = shl i32 %.5343.epil.init, 6
  %i.nu = zext i8 %i.np to i32
  %i.nv = add nsw i32 %i.nt, %i.nu
  %.10.epil = getelementptr inbounds nuw i8, ptr %.10344.epil.init, i64 1
  br label %._crit_edge347

._crit_edge347:                                   ; preds = %.lr.ph346.epil.preheader, %._crit_edge347.loopexit.unr-lcssa, %bb.bb
  %.3227.lcssa = phi i8 [ 1, %bb.bb ], [ %i.nh, %._crit_edge347.loopexit.unr-lcssa ], [ %i.nq, %.lr.ph346.epil.preheader ]
  %.5.lcssa = phi i32 [ %i.mm, %bb.bb ], [ %i.no, %._crit_edge347.loopexit.unr-lcssa ], [ %i.nv, %.lr.ph346.epil.preheader ]
  %.10.lcssa = phi ptr [ %.10341, %bb.bb ], [ %.10.1, %._crit_edge347.loopexit.unr-lcssa ], [ %.10.epil, %.lr.ph346.epil.preheader ]
  %i.nw = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %.5.lcssa, ptr %i.nw, align 8, !tbaa !56
  store i8 %.3227.lcssa, ptr %i.ah, align 8, !tbaa !54
  %i.nx = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 %i.mv, ptr %i.nx, align 4, !tbaa !57
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.ao, %bb.av, %._crit_edge347, %bb.ax, %bb.aw, %.loopexit
  %.11 = phi ptr [ %.10.lcssa, %._crit_edge347 ], [ %.9.ph, %bb.ax ], [ %.9.ph, %bb.aw ], [ %.9.ph, %.loopexit ], [ %.0242337, %bb.av ], [ %.7, %bb.ao ]
  store ptr %.11, ptr %i.h, align 8, !tbaa !44
  %i.ny = load ptr, ptr %i.a, align 8, !tbaa !45
  store ptr %i.ny, ptr %i.l, align 8, !tbaa !68
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
  %i.d = load i32, ptr %i.c, align 4, !tbaa !26   ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  %i.f = and i32 %i.d, 15728640
  %.not = icmp eq i32 %i.f, 7340032
  %or.cond = or i1 %i.e, %.not
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 260
  %i.h = load i32, ptr %i.g, align 4, !tbaa !26   ; 2 uses
  %i.i = icmp sgt i32 %i.h, -1
  %i.j = and i32 %i.h, 15728640
  %.not26 = icmp eq i32 %i.j, 7340032
  %or.cond29 = or i1 %i.i, %.not26
  br i1 %or.cond29, label %.preheader31, label %.loopexit

.preheader31.1:                                   ; preds = %.preheader31
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !26   ; 2 uses
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !26   ; 2 uses
  %i.r = icmp sgt i32 %i.q, -1
  %i.s = and i32 %i.q, 15728640
  %.not28 = icmp eq i32 %i.s, 7340032
  %or.cond30 = or i1 %i.r, %.not28
  br i1 %or.cond30, label %.preheader31.1, label %.loopexit

.preheader:                                       ; preds = %bb.c, %bb.e
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv37
  %i.u = load i32, ptr %i.t, align 4, !tbaa !26   ; 2 uses
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

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !25}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!"p1 short", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"char16_t", !5, i64 0}
!14 = !{!"p1 _ZTS20UConverterSharedData", !9, i64 0}
!15 = !{!"_ZTS19UConverterMBCSTable", !5, i64 0, !5, i64 1, !5, i64 2, !6, i64 4, !10, i64 8, !10, i64 16, !11, i64 24, !9, i64 32, !11, i64 40, !11, i64 48, !5, i64 56, !12, i64 184, !12, i64 192, !6, i64 200, !5, i64 204, !5, i64 205, !5, i64 206, !13, i64 208, !6, i64 212, !12, i64 216, !12, i64 224, !14, i64 232, !10, i64 240}
!16 = !{!15, !11, i64 40}
!17 = !{!15, !5, i64 205}
!18 = !{!15, !5, i64 204}
!19 = !{!15, !12, i64 184}
!20 = !{!"short", !5, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"p1 _ZTS4USet", !9, i64 0}
!23 = !{!"_ZTS9USetAdder", !22, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!24 = !{!23, !22, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!6, !6, i64 0}
!27 = !{!5, !5, i64 0}
!28 = !{!"_ZTS10UErrorCode", !5, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"p1 _ZTS20UConverterStaticData", !9, i64 0}
!31 = !{!"p1 _ZTS14UConverterImpl", !9, i64 0}
!32 = !{!"_ZTS20UConverterSharedData", !6, i64 0, !6, i64 4, !9, i64 8, !30, i64 16, !5, i64 24, !5, i64 25, !31, i64 32, !6, i64 40, !15, i64 48}
!33 = !{!32, !5, i64 252}
!34 = !{!"p1 _ZTS10UConverter", !9, i64 0}
!35 = !{!"p1 char16_t", !9, i64 0}
!36 = !{!"_ZTS23UConverterToUnicodeArgs", !20, i64 0, !5, i64 2, !34, i64 8, !12, i64 16, !12, i64 24, !35, i64 32, !35, i64 40, !10, i64 48}
!37 = !{!36, !34, i64 8}
!38 = !{!"_ZTS24UConverterCallbackReason", !5, i64 0}
!39 = !{!"_ZTS10UConverter", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !12, i64 40, !14, i64 48, !6, i64 56, !5, i64 60, !5, i64 61, !5, i64 62, !5, i64 63, !5, i64 64, !5, i64 65, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !5, i64 88, !5, i64 89, !5, i64 90, !5, i64 91, !5, i64 92, !5, i64 93, !5, i64 94, !5, i64 95, !5, i64 96, !5, i64 104, !5, i64 136, !5, i64 140, !5, i64 144, !6, i64 208, !5, i64 212, !5, i64 250, !5, i64 281, !5, i64 282, !5, i64 283, !38, i64 284}
!40 = !{!39, !5, i64 282}
!41 = !{!39, !14, i64 48}
!42 = !{!32, !5, i64 48}
!43 = !{!32, !5, i64 253}
!44 = !{!36, !12, i64 16}
!45 = !{!12, !12, i64 0}
!46 = !{!36, !12, i64 24}
!47 = !{!35, !35, i64 0}
!48 = !{!10, !10, i64 0}
!49 = !{!39, !6, i64 56}
!50 = !{!13, !13, i64 0}
!51 = !{!"llvm.loop.isvectorized", i32 1}
!52 = !{!"llvm.loop.unroll.runtime.disable"}
!53 = !{!32, !10, i64 288}
!54 = !{!39, !5, i64 64}
!55 = !{!32, !11, i64 72}
!56 = !{!39, !6, i64 72}
!57 = !{!39, !6, i64 76}
!58 = !{!32, !5, i64 49}
!59 = !{!15, !6, i64 4}
!60 = !{!15, !9, i64 32}
!61 = !{!"_ZTS16_MBCSToUFallback", !6, i64 0, !6, i64 4}
!62 = !{!61, !6, i64 0}
!63 = !{!61, !6, i64 4}
!64 = !{!32, !10, i64 56}
!65 = !{!"_ZTS25UConverterFromUnicodeArgs", !20, i64 0, !5, i64 2, !34, i64 8, !35, i64 16, !35, i64 24, !12, i64 32, !12, i64 40, !10, i64 48}
!66 = !{!65, !34, i64 8}
!67 = !{!39, !6, i64 208}
!68 = !{!65, !12, i64 32}
!69 = !{!65, !12, i64 40}
!70 = !{!32, !11, i64 88}
!71 = !{!32, !6, i64 260}
!72 = !{!39, !5, i64 63}
!73 = !{!39, !6, i64 84}
!74 = !{!65, !5, i64 2}
!75 = !{!32, !11, i64 96}
!76 = !{!39, !5, i64 91}
!77 = !{!39, !6, i64 80}
!78 = !{!39, !5, i64 95}
!79 = !{!32, !30, i64 16}
!80 = !{!"_ZTS20UConverterStaticData", !6, i64 0, !5, i64 4, !6, i64 64, !5, i64 68, !5, i64 69, !5, i64 70, !5, i64 71, !5, i64 72, !5, i64 76, !5, i64 77, !5, i64 78, !5, i64 79, !5, i64 80, !5, i64 81}
!81 = !{!80, !5, i64 70}
!82 = !{!80, !5, i64 71}
!83 = !{!15, !10, i64 240}
!84 = !{!"_ZTS18UConverterLoadArgs", !6, i64 0, !6, i64 4, !5, i64 8, !5, i64 9, !20, i64 10, !6, i64 12, !12, i64 16, !12, i64 24, !12, i64 32}
!85 = !{!84, !5, i64 8}
!86 = !{!84, !6, i64 12}
!87 = !{!84, !12, i64 24}
!88 = !{!15, !14, i64 232}
!89 = !{!15, !10, i64 16}
!90 = !{!15, !12, i64 192}
!91 = !{!15, !10, i64 8}
!92 = !{!15, !5, i64 0}
!93 = !{!15, !5, i64 2}
!94 = !{!15, !11, i64 24}
!95 = !{!15, !6, i64 200}
!96 = !{!15, !12, i64 216}
!97 = !{!"branch_weights", i32 8, i32 24}
!98 = !{!"llvm.loop.unroll.disable"}
!99 = distinct !{!99, !25}
!100 = distinct !{!100, !25}
!101 = distinct !{!101, !25}
!102 = distinct !{!102, !25}
!103 = distinct !{!103, !25}
!104 = distinct !{!104, !25}
!105 = distinct !{!105, !25}
!106 = distinct !{!106, !25}
!107 = distinct !{!107, !25}
!108 = distinct !{!108, !25}
!109 = distinct !{!109, !25}
!110 = !{!23, !9, i64 8}
!111 = distinct !{!111, !25}
!112 = distinct !{!112, !25}
!113 = distinct !{!113, !25}
!114 = distinct !{!114, !25, !51, !52}
!115 = distinct !{!115, !25, !52, !51}
!116 = distinct !{!116, !25, !51, !52}
!117 = distinct !{!117, !25, !52, !51}
!118 = distinct !{!118, !25}
!119 = distinct !{!119, !25}
!120 = distinct !{!120, !25}
!121 = distinct !{!121, !25}
!122 = distinct !{!122, !25}
!123 = !{!36, !35, i64 32}
!124 = !{!36, !35, i64 40}
!125 = !{!36, !10, i64 48}
!126 = !{!36, !5, i64 2}
!127 = !{!39, !5, i64 93}
!128 = distinct !{!128, !25}
!129 = distinct !{!129, !25}
!130 = distinct !{!130, !25, !51, !52}
!131 = distinct !{!131, !25, !52, !51}
!132 = distinct !{!132, !25, !51, !52}
!133 = distinct !{!133, !25, !52, !51}
!134 = distinct !{!134, !25}
!135 = distinct !{!135, !25, !144}
!136 = distinct !{!136, !25}
!137 = distinct !{!137, !25, !144}
!138 = distinct !{!138, !25}
!139 = !{!39, !5, i64 281}
!140 = !{!65, !35, i64 16}
!141 = !{!65, !35, i64 24}
!142 = !{!65, !10, i64 48}
!143 = !{!32, !5, i64 254}
!144 = !{!"llvm.loop.peeled.count", i32 1}
!145 = !{!32, !12, i64 232}
!146 = distinct !{!146, !25, !51, !52}
!147 = distinct !{!147, !25}
!148 = distinct !{!148, !25}
!149 = distinct !{!149, !25}
!150 = distinct !{!150, !25}
!151 = !{!"_ZTS11_MBCSHeader", !5, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
!152 = !{!151, !6, i64 24}
!153 = !{!151, !6, i64 32}
!154 = !{!84, !6, i64 4}
!155 = !{!84, !6, i64 0}
!156 = !{!84, !20, i64 10}
!157 = !{!84, !12, i64 16}
!158 = !{!80, !5, i64 69}
!159 = !{!32, !14, i64 280}
!160 = !{!15, !5, i64 1}
!161 = !{!151, !6, i64 4}
!162 = !{!151, !6, i64 8}
!163 = !{!151, !6, i64 12}
!164 = !{!151, !6, i64 16}
!165 = !{!151, !6, i64 20}
!166 = !{!151, !6, i64 28}
!167 = !{!"_ZTS9UDataInfo", !20, i64 0, !20, i64 2, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !5, i64 8, !5, i64 12, !5, i64 16}
!168 = !{!167, !20, i64 0}
!169 = !{!32, !9, i64 8}
!170 = !{!80, !5, i64 79}
!171 = !{!15, !5, i64 206}
!172 = !{!15, !13, i64 208}
end_hunk_1
