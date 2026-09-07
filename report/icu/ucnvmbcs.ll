Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucnvmbcs?download=true
inline.NumInlined: 46
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@ucnv_MBCSGetFilteredUnicodeSetForUnicode_78:bb.a
  br i1 %i.dc, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dd = load ptr, ptr %i.ak, align 8, !tbaa !110
  %i.de = load ptr, ptr %1, align 8, !tbaa !24
  tail call void %i.dd(ptr noundef %i.de, i32 noundef %.11)
  br label %bb.al

bb.al:                                            ; preds = %.preheader199, %bb.ak, %bb.aj, %bb.ai
  %i.df = lshr i32 %.4168, 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.8, i64 2
  %i.dh = add nsw i32 %.11, 1                     ; 3 uses
  %i.di = and i32 %i.dh, 15
  %.not179 = icmp eq i32 %i.di, 0
  br i1 %.not179, label %.loopexit192, label %.preheader199, !llvm.loop !106

.preheader201:                                    ; preds = %bb.q, %bb.ap
  %.5169 = phi i32 [ %i.ds, %bb.ap ], [ %i.ba, %bb.q ] ; 2 uses
  %.12 = phi i32 [ %i.du, %bb.ap ], [ %.6155214, %bb.q ] ; 2 uses
  %.9 = phi ptr [ %i.dt, %bb.ap ], [ %i.az, %bb.q ] ; 2 uses
  %i.dj = trunc i32 %.5169 to i1
  %or.cond13 = or i1 %i.af, %i.dj
  br i1 %or.cond13, label %bb.am, label %bb.ap

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
  br i1 %i.p, label %bb.c, label %bb.ej

bb.c:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.l, align 2, !tbaa !40
  %i.r = icmp slt i8 %i.q, 0
  br i1 %i.r, label %bb.ej, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load i8, ptr %i.u, align 8, !tbaa !42
  %i.w = icmp eq i8 %i.v, 1
  br i1 %i.w, label %bb.e, label %bb.aq

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 253
  %i.y = load i8, ptr %i.x, align 1, !tbaa !43
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
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !37  ; 5 uses
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !44 ; 3 uses
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !45 ; 5 uses
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !123 ; 3 uses
  store ptr %i.ah, ptr %i.e, align 8, !tbaa !46
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !124
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = lshr exact i64 %i.al, 1
  %i.an = trunc i64 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !125
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !47
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !48
  %i.as = and i32 %i.ar, 16
  %.not.i = icmp eq i32 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !41
  %..i = select i1 %.not.i, i64 56, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %..i
  %.0138.i = load ptr, ptr %i.av, align 8, !tbaa !47 ; 17 uses
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
  %.promoted195.i = phi ptr [ %i.ah, %bb.f ], [ %i.kj, %bb.q ] ; 2 uses
  %.promoted.i = phi ptr [ %i.af, %bb.f ], [ %.pre565, %bb.q ] ; 2 uses
  %.0144.i = phi ptr [ %i.af, %bb.f ], [ %i.ij, %bb.q ] ; 3 uses
  %.1140.i = phi i32 [ %spec.select.i, %bb.f ], [ %spec.select168.i, %bb.q ] ; 4 uses
  %.0135.i = phi i32 [ 0, %bb.f ], [ %i.kh, %bb.q ] ; 6 uses
  %i.bd = icmp sgt i32 %.1140.i, 15
  br i1 %i.bd, label %bb.h, label %.loopexit173.i

bb.h:                                             ; preds = %bb.g
  %i.be = lshr i32 %.1140.i, 4                    ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %i.bf = phi ptr [ %.promoted195.i, %bb.h ], [ %i.gf, %bb.k ] ; 19 uses
  %i.bg = phi ptr [ %.promoted.i, %bb.h ], [ %i.fi, %bb.k ] ; 19 uses
  %.0134.i = phi i32 [ %i.be, %bb.h ], [ %i.gh, %bb.k ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1 ; 2 uses
  store ptr %i.bh, ptr %i.d, align 8, !tbaa !49
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !27
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !26 ; 2 uses
  %i.bm = trunc i32 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 2 ; 2 uses
  store ptr %i.bn, ptr %i.e, align 8, !tbaa !46
  store i16 %i.bm, ptr %i.bf, align 2, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 2 ; 2 uses
  store ptr %i.bo, ptr %i.d, align 8, !tbaa !49
  %i.bp = load i8, ptr %i.bh, align 1, !tbaa !27
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !26 ; 2 uses
  %i.bt = trunc i32 %i.bs to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  store ptr %i.bu, ptr %i.e, align 8, !tbaa !46
  store i16 %i.bt, ptr %i.bn, align 2, !tbaa !50
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 3 ; 2 uses
  store ptr %i.bv, ptr %i.d, align 8, !tbaa !49
  %i.bw = load i8, ptr %i.bo, align 1, !tbaa !27
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !26 ; 2 uses
  %i.ca = trunc i32 %i.bz to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bf, i64 6 ; 2 uses
  store ptr %i.cb, ptr %i.e, align 8, !tbaa !46
  store i16 %i.ca, ptr %i.bu, align 2, !tbaa !50
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  store ptr %i.cc, ptr %i.d, align 8, !tbaa !49
  %i.cd = load i8, ptr %i.bv, align 1, !tbaa !27
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !26 ; 2 uses
  %i.ch = trunc i32 %i.cg to i16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  store ptr %i.ci, ptr %i.e, align 8, !tbaa !46
  store i16 %i.ch, ptr %i.cb, align 2, !tbaa !50
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bg, i64 5 ; 2 uses
  store ptr %i.cj, ptr %i.d, align 8, !tbaa !49
  %i.ck = load i8, ptr %i.cc, align 1, !tbaa !27
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !26 ; 2 uses
  %i.co = trunc i32 %i.cn to i16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bf, i64 10 ; 2 uses
  store ptr %i.cp, ptr %i.e, align 8, !tbaa !46
  store i16 %i.co, ptr %i.ci, align 2, !tbaa !50
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bg, i64 6 ; 2 uses
  store ptr %i.cq, ptr %i.d, align 8, !tbaa !49
  %i.cr = load i8, ptr %i.cj, align 1, !tbaa !27
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !26 ; 2 uses
  %i.cv = trunc i32 %i.cu to i16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bf, i64 12 ; 2 uses
  store ptr %i.cw, ptr %i.e, align 8, !tbaa !46
  store i16 %i.cv, ptr %i.cp, align 2, !tbaa !50
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bg, i64 7 ; 2 uses
  store ptr %i.cx, ptr %i.d, align 8, !tbaa !49
  %i.cy = load i8, ptr %i.cq, align 1, !tbaa !27
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !26 ; 2 uses
  %i.dc = trunc i32 %i.db to i16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bf, i64 14 ; 2 uses
  store ptr %i.dd, ptr %i.e, align 8, !tbaa !46
  store i16 %i.dc, ptr %i.cw, align 2, !tbaa !50
  %i.de = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  store ptr %i.de, ptr %i.d, align 8, !tbaa !49
  %i.df = load i8, ptr %i.cx, align 1, !tbaa !27
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !26 ; 2 uses
  %i.dj = trunc i32 %i.di to i16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i16 %i.dj, ptr %i.dd, align 2, !tbaa !50
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bg, i64 9
  %i.dm = load i8, ptr %i.de, align 1, !tbaa !27
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !26 ; 2 uses
  %i.dq = trunc i32 %i.dp to i16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bf, i64 18
  store i16 %i.dq, ptr %i.dk, align 2, !tbaa !50
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %i.dt = load i8, ptr %i.dl, align 1, !tbaa !27
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !26 ; 2 uses
  %i.dx = trunc i32 %i.dw to i16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  store i16 %i.dx, ptr %i.dr, align 2, !tbaa !50
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bg, i64 11
  %i.ea = load i8, ptr %i.ds, align 1, !tbaa !27
  %i.eb = zext i8 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !26 ; 2 uses
  %i.ee = trunc i32 %i.ed to i16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bf, i64 22
  store i16 %i.ee, ptr %i.dy, align 2, !tbaa !50
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.eh = load i8, ptr %i.dz, align 1, !tbaa !27
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !26 ; 2 uses
  %i.el = trunc i32 %i.ek to i16
  %i.em = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i16 %i.el, ptr %i.ef, align 2, !tbaa !50
  %i.en = getelementptr inbounds nuw i8, ptr %i.bg, i64 13
  %i.eo = load i8, ptr %i.eg, align 1, !tbaa !27
  %i.ep = zext i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !26 ; 2 uses
  %i.es = trunc i32 %i.er to i16
  %i.et = getelementptr inbounds nuw i8, ptr %i.bf, i64 26
  store i16 %i.es, ptr %i.em, align 2, !tbaa !50
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bg, i64 14
  %i.ev = load i8, ptr %i.en, align 1, !tbaa !27
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !26 ; 2 uses
  %i.ez = trunc i32 %i.ey to i16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  store i16 %i.ez, ptr %i.et, align 2, !tbaa !50
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bg, i64 15
  %i.fc = load i8, ptr %i.eu, align 1, !tbaa !27
  %i.fd = zext i8 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !26 ; 2 uses
  %i.fg = trunc i32 %i.ff to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bf, i64 30
  store i16 %i.fg, ptr %i.fa, align 2, !tbaa !50
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 3 uses
  store ptr %i.fi, ptr %i.d, align 8, !tbaa !49
  %i.fj = load i8, ptr %i.fb, align 1, !tbaa !27
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !26 ; 2 uses
  %i.fn = insertelement <16 x i32> poison, i32 %i.bs, i64 0
  %i.fo = insertelement <16 x i32> %i.fn, i32 %i.bl, i64 1
  %i.fp = insertelement <16 x i32> %i.fo, i32 %i.bz, i64 2
  %i.fq = insertelement <16 x i32> %i.fp, i32 %i.cg, i64 3
  %i.fr = insertelement <16 x i32> %i.fq, i32 %i.cn, i64 4
  %i.fs = insertelement <16 x i32> %i.fr, i32 %i.cu, i64 5
  %i.ft = insertelement <16 x i32> %i.fs, i32 %i.db, i64 6
  %i.fu = insertelement <16 x i32> %i.ft, i32 %i.di, i64 7
  %i.fv = insertelement <16 x i32> %i.fu, i32 %i.dp, i64 8
  %i.fw = insertelement <16 x i32> %i.fv, i32 %i.dw, i64 9
  %i.fx = insertelement <16 x i32> %i.fw, i32 %i.ed, i64 10
  %i.fy = insertelement <16 x i32> %i.fx, i32 %i.ek, i64 11
  %i.fz = insertelement <16 x i32> %i.fy, i32 %i.er, i64 12
  %i.ga = insertelement <16 x i32> %i.fz, i32 %i.ey, i64 13
  %i.gb = insertelement <16 x i32> %i.ga, i32 %i.ff, i64 14
  %i.gc = insertelement <16 x i32> %i.gb, i32 %i.fm, i64 15
  %i.gd = call i32 @llvm.vector.reduce.or.v16i32(<16 x i32> %i.gc)
  %i.ge = trunc i32 %i.fm to i16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 3 uses
  store ptr %i.gf, ptr %i.e, align 8, !tbaa !46
  store i16 %i.ge, ptr %i.fh, align 2, !tbaa !50
  %i.gg = icmp slt i32 %i.gd, -2146435072
  br i1 %i.gg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.bg, ptr %i.d, align 8, !tbaa !49
  store ptr %i.bf, ptr %i.e, align 8, !tbaa !46
  br label %.loopexit174.i

bb.k:                                             ; preds = %bb.i
  %i.gh = add nsw i32 %.0134.i, -1
  %i.gi = icmp sgt i32 %.0134.i, 1
  br i1 %i.gi, label %bb.i, label %.loopexit174.i, !llvm.loop !111

.loopexit174.i:                                   ; preds = %bb.k, %bb.j
  %.promoted202.i459563 = phi ptr [ %i.bg, %bb.j ], [ %i.fi, %bb.k ] ; 2 uses
  %i.gj = phi ptr [ %i.bf, %bb.j ], [ %i.gf, %bb.k ] ; 3 uses
  %.1.i = phi i32 [ %.0134.i, %bb.j ], [ 0, %bb.k ]
  %i.gk = sub i32 %i.be, %.1.i                    ; 6 uses
  %i.gl = shl nsw i32 %i.gk, 4                    ; 2 uses
  %i.gm = sub nsw i32 %.1140.i, %i.gl             ; 3 uses
  %i.gn = load ptr, ptr %i.f, align 8, !tbaa !47  ; 7 uses
  %.not160.i = icmp eq ptr %i.gn, null
  br i1 %.not160.i, label %.loopexit173.i, label %bb.l

bb.l:                                             ; preds = %.loopexit174.i
  %i.go = sext i32 %i.gl to i64
  %i.gp = getelementptr inbounds i8, ptr %.0144.i, i64 %i.go ; 2 uses
  %i.gq = icmp sgt i32 %i.gk, 0
  br i1 %i.gq, label %.lr.ph.i.preheader, label %.loopexit173.i

.lr.ph.i.preheader:                               ; preds = %bb.l
  %xtraiter = and i32 %i.gk, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.gr = insertelement <4 x i32> poison, i32 %.0135.i, i64 0
  %i.gs = shufflevector <4 x i32> %i.gr, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.gt = add nsw <4 x i32> %i.gs, <i32 4, i32 5, i32 6, i32 7>
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gv = add nsw <4 x i32> %i.gs, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.gv, ptr %i.gn, align 4, !tbaa !26
  %i.gw = add nsw <4 x i32> %i.gs, <i32 8, i32 9, i32 10, i32 11>
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  store <4 x i32> %i.gt, ptr %i.gu, align 4, !tbaa !26
  %i.gy = add nsw <4 x i32> %i.gs, <i32 12, i32 13, i32 14, i32 15>
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  store <4 x i32> %i.gw, ptr %i.gx, align 4, !tbaa !26
  %i.ha = add nsw i32 %.0135.i, 16                ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gn, i64 64 ; 2 uses
  store <4 x i32> %i.gy, ptr %i.gz, align 4, !tbaa !26
  %i.hc = add nsw i32 %i.gk, -1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.unr = phi ptr [ %i.gn, %.lr.ph.i.preheader ], [ %i.hb, %.lr.ph.i.prol ]
  %.2197.i.unr = phi i32 [ %i.gk, %.lr.ph.i.preheader ], [ %i.hc, %.lr.ph.i.prol ]
  %.1136196.i.unr = phi i32 [ %.0135.i, %.lr.ph.i.preheader ], [ %i.ha, %.lr.ph.i.prol ]
  %.lcssa934.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.ha, %.lr.ph.i.prol ]
  %.lcssa933.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.hb, %.lr.ph.i.prol ]
  %i.hd = icmp eq i32 %i.gk, 1
  br i1 %i.hd, label %..loopexit173_crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.he = phi ptr [ %i.ia, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.2197.i = phi i32 [ %i.ib, %.lr.ph.i ], [ %.2197.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.1136196.i = phi i32 [ %i.hz, %.lr.ph.i ], [ %.1136196.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.hf = insertelement <4 x i32> poison, i32 %.1136196.i, i64 0
  %i.hg = shufflevector <4 x i32> %i.hf, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.hh = add nsw <4 x i32> %i.hg, <i32 4, i32 5, i32 6, i32 7>
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hj = add nsw <4 x i32> %i.hg, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hj, ptr %i.he, align 4, !tbaa !26
  %i.hk = add nsw <4 x i32> %i.hg, <i32 8, i32 9, i32 10, i32 11>
  %i.hl = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  store <4 x i32> %i.hh, ptr %i.hi, align 4, !tbaa !26
  %i.hm = add nsw <4 x i32> %i.hg, <i32 12, i32 13, i32 14, i32 15>
  %i.hn = getelementptr inbounds nuw i8, ptr %i.he, i64 48
  store <4 x i32> %i.hk, ptr %i.hl, align 4, !tbaa !26
  %i.ho = add nsw i32 %.1136196.i, 16
  %i.hp = getelementptr inbounds nuw i8, ptr %i.he, i64 64
  store <4 x i32> %i.hm, ptr %i.hn, align 4, !tbaa !26
  %i.hq = insertelement <4 x i32> poison, i32 %i.ho, i64 0
  %i.hr = shufflevector <4 x i32> %i.hq, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.hs = add nsw <4 x i32> %i.hr, <i32 4, i32 5, i32 6, i32 7>
  %i.ht = getelementptr inbounds nuw i8, ptr %i.he, i64 80
  %i.hu = add nsw <4 x i32> %i.hr, <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.hu, ptr %i.hp, align 4, !tbaa !26
  %i.hv = add nsw <4 x i32> %i.hr, <i32 8, i32 9, i32 10, i32 11>
  %i.hw = getelementptr inbounds nuw i8, ptr %i.he, i64 96
  store <4 x i32> %i.hs, ptr %i.ht, align 4, !tbaa !26
  %i.hx = add nsw <4 x i32> %i.hr, <i32 12, i32 13, i32 14, i32 15>
  %i.hy = getelementptr inbounds nuw i8, ptr %i.he, i64 112
  store <4 x i32> %i.hv, ptr %i.hw, align 4, !tbaa !26
  %i.hz = add nsw i32 %.1136196.i, 32             ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.he, i64 128 ; 2 uses
  store <4 x i32> %i.hx, ptr %i.hy, align 4, !tbaa !26
  %i.ib = add nsw i32 %.2197.i, -2
  %i.ic = icmp sgt i32 %.2197.i, 2
  br i1 %i.ic, label %.lr.ph.i, label %..loopexit173_crit_edge.i, !llvm.loop !112

..loopexit173_crit_edge.i:                        ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa934 = phi i32 [ %.lcssa934.unr, %.lr.ph.i.prol.loopexit ], [ %i.hz, %.lr.ph.i ]
  %.lcssa933 = phi ptr [ %.lcssa933.unr, %.lr.ph.i.prol.loopexit ], [ %i.ia, %.lr.ph.i ]
  store ptr %.lcssa933, ptr %i.f, align 8, !tbaa !47
  %.promoted202.i459.pre = load ptr, ptr %i.d, align 8
  br label %.loopexit173.i

.loopexit173.i:                                   ; preds = %..loopexit173_crit_edge.i, %bb.l, %.loopexit174.i, %bb.g
  %.promoted202.i459 = phi ptr [ %.promoted.i, %bb.g ], [ %.promoted202.i459563, %.loopexit174.i ], [ %.promoted202.i459.pre, %..loopexit173_crit_edge.i ], [ %.promoted202.i459563, %bb.l ] ; 2 uses
  %i.id = phi ptr [ %.promoted195.i, %bb.g ], [ %i.gj, %.loopexit174.i ], [ %i.gj, %..loopexit173_crit_edge.i ], [ %i.gj, %bb.l ]
  %.2146.i = phi ptr [ %.0144.i, %bb.g ], [ %.0144.i, %.loopexit174.i ], [ %i.gp, %..loopexit173_crit_edge.i ], [ %i.gp, %bb.l ] ; 6 uses
  %.2141.i = phi i32 [ %.1140.i, %bb.g ], [ %i.gm, %.loopexit174.i ], [ %i.gm, %..loopexit173_crit_edge.i ], [ %i.gm, %bb.l ]
  %.3.i = phi i32 [ %.0135.i, %bb.g ], [ %.0135.i, %.loopexit174.i ], [ %.lcssa934, %..loopexit173_crit_edge.i ], [ %.0135.i, %bb.l ] ; 8 uses
  %.2141.fr.i = freeze i32 %.2141.i               ; 2 uses
  %i.ie = icmp sgt i32 %.2141.fr.i, 0
  br i1 %i.ie, label %.outer.split.i.preheader, label %.loopexit171.split.i

.outer.split.i.preheader:                         ; preds = %.loopexit173.i, %.outer.backedge.i
  %.promoted202.i461 = phi ptr [ %.promoted202.i, %.outer.backedge.i ], [ %.promoted202.i459, %.loopexit173.i ] ; 3 uses
  %.3142.ph.i460 = phi i32 [ %.3142.ph.be.i, %.outer.backedge.i ], [ %.2141.fr.i, %.loopexit173.i ] ; 2 uses
  %i.if = phi ptr [ %storemerge253.i, %.outer.backedge.i ], [ %i.id, %.loopexit173.i ] ; 2 uses
  %i.ig = icmp ult ptr %.promoted202.i461, %i.ag
  br i1 %i.ig, label %.lr.ph889, label %.loopexit171.split.i

.outer.split.i:                                   ; preds = %bb.m
  %i.ih = icmp ult ptr %i.ij, %i.ag
  br i1 %i.ih, label %.lr.ph889, label %.loopexit171.split.i

.lr.ph889:                                        ; preds = %.outer.split.i.preheader, %.outer.split.i
  %i.ii = phi ptr [ %i.ij, %.outer.split.i ], [ %.promoted202.i461, %.outer.split.i.preheader ] ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 1 ; 8 uses
  store ptr %i.ij, ptr %i.d, align 8, !tbaa !49
  %i.ik = load i8, ptr %i.ii, align 1, !tbaa !27
  %i.il = zext i8 %i.ik to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.0138.i, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !26 ; 3 uses
  %i.io = icmp slt i32 %i.in, -2146435072
  br i1 %i.io, label %.outer.backedge.i, label %bb.m

.outer.backedge.i:                                ; preds = %bb.m, %.lr.ph889
  %storemerge253.i = getelementptr inbounds nuw i8, ptr %i.if, i64 2 ; 2 uses
  store ptr %storemerge253.i, ptr %i.e, align 8, !tbaa !46
  %storemerge.i = trunc i32 %i.in to i16
  store i16 %storemerge.i, ptr %i.if, align 2, !tbaa !50
  %.3142.ph.be.i = add nsw i32 %.3142.ph.i460, -1
  %i.ip = icmp sgt i32 %.3142.ph.i460, 1
  %.promoted202.i = load ptr, ptr %i.d, align 8   ; 2 uses
  br i1 %i.ip, label %.outer.split.i.preheader, label %.loopexit171.split.i, !llvm.loop !113

bb.m:                                             ; preds = %.lr.ph889
  %i.iq = lshr i32 %i.in, 20
  %i.ir = and i32 %i.iq, 15
  switch i32 %i.ir, label %.outer.split.i [
    i32 2, label %.outer.backedge.i
    i32 6, label %.loopexit172.i
    i32 7, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  store i32 12, ptr %1, align 4, !tbaa !29
  br label %.loopexit172.i

.loopexit172.i:                                   ; preds = %bb.m, %bb.n
  %i.is = load ptr, ptr %i.f, align 8, !tbaa !47  ; 4 uses
  %.not161.i = icmp ne ptr %i.is, null
  %i.it = ptrtoint ptr %i.ij to i64               ; 4 uses
  %i.iu = ptrtoint ptr %.2146.i to i64            ; 2 uses
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = trunc i64 %i.iv to i32                  ; 3 uses
  %i.ix = icmp sgt i32 %i.iw, 1
  %or.cond300.i = select i1 %.not161.i, i1 %i.ix, i1 false
  br i1 %or.cond300.i, label %.lr.ph205.i.preheader, label %.loopexit170.i

.lr.ph205.i.preheader:                            ; preds = %.loopexit172.i
  %i.iy = xor i64 %i.iu, -1
  %i.iz = add i64 %i.iy, %i.it                    ; 2 uses
  %i.ja = and i64 %i.iz, 4294967295               ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ja, 8
  br i1 %min.iters.check, label %.lr.ph205.i.preheader918, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph205.i.preheader
  %n.vec = and i64 %i.iz, 4294967288              ; 4 uses
  %i.jb = shl nuw nsw i64 %n.vec, 2
  %i.jc = getelementptr i8, ptr %i.is, i64 %i.jb  ; 2 uses
  %i.jd = trunc nuw i64 %n.vec to i32             ; 2 uses
  %i.je = sub i32 %i.iw, %i.jd
  %i.jf = add i32 %.3.i, %i.jd                    ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.3.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.jg = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.is, i64 %i.jg ; 2 uses
  %i.jh = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 4, !tbaa !26
  store <4 x i32> %step.add, ptr %i.jh, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.ji = icmp eq i64 %index.next, %n.vec
  br i1 %i.ji, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ja, %n.vec
  br i1 %cmp.n, label %..loopexit170_crit_edge.i, label %.lr.ph205.i.preheader918

.lr.ph205.i.preheader918:                         ; preds = %.lr.ph205.i.preheader, %middle.block
  %.ph919 = phi ptr [ %i.is, %.lr.ph205.i.preheader ], [ %i.jc, %middle.block ]
  %.0133204.i.ph = phi i32 [ %i.iw, %.lr.ph205.i.preheader ], [ %i.je, %middle.block ]
  %.4203.i.ph = phi i32 [ %.3.i, %.lr.ph205.i.preheader ], [ %i.jf, %middle.block ]
  br label %.lr.ph205.i

.lr.ph205.i:                                      ; preds = %.lr.ph205.i.preheader918, %.lr.ph205.i
  %i.jj = phi ptr [ %i.jm, %.lr.ph205.i ], [ %.ph919, %.lr.ph205.i.preheader918 ] ; 2 uses
  %.0133204.i = phi i32 [ %i.jk, %.lr.ph205.i ], [ %.0133204.i.ph, %.lr.ph205.i.preheader918 ] ; 2 uses
  %.4203.i = phi i32 [ %i.jl, %.lr.ph205.i ], [ %.4203.i.ph, %.lr.ph205.i.preheader918 ] ; 2 uses
  %i.jk = add nsw i32 %.0133204.i, -1
  %i.jl = add nsw i32 %.4203.i, 1                 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 4 ; 2 uses
  store i32 %.4203.i, ptr %i.jj, align 4, !tbaa !26
  %i.jn = icmp samesign ugt i32 %.0133204.i, 2
  br i1 %i.jn, label %.lr.ph205.i, label %..loopexit170_crit_edge.i, !llvm.loop !115

..loopexit170_crit_edge.i:                        ; preds = %.lr.ph205.i, %middle.block
  %.lcssa809 = phi i32 [ %i.jf, %middle.block ], [ %i.jl, %.lr.ph205.i ]
  %.lcssa808 = phi ptr [ %i.jc, %middle.block ], [ %i.jm, %.lr.ph205.i ]
  store ptr %.lcssa808, ptr %i.f, align 8, !tbaa !47
  br label %.loopexit170.i

.loopexit170.i:                                   ; preds = %..loopexit170_crit_edge.i, %.loopexit172.i
  %.5.i = phi i32 [ %.3.i, %.loopexit172.i ], [ %.lcssa809, %..loopexit170_crit_edge.i ] ; 4 uses
  %i.jo = load i32, ptr %1, align 4, !tbaa !29
  %i.jp = icmp slt i32 %i.jo, 1
  br i1 %i.jp, label %bb.o, label %.loopexit170..loopexit171.split.loopexit216_crit_edge.i

.loopexit170..loopexit171.split.loopexit216_crit_edge.i: ; preds = %.loopexit170.i
  %.pre241.pre.i = load ptr, ptr %i.d, align 8
  br label %.loopexit171.split.i

bb.o:                                             ; preds = %.loopexit170.i
  %i.jq = load i8, ptr %i.ii, align 1, !tbaa !27
  store i8 %i.jq, ptr %i.ba, align 1, !tbaa !27
  %i.jr = load ptr, ptr %i.at, align 8, !tbaa !41
  %i.js = getelementptr i8, ptr %i.jr, i64 288
  %.val.i = load ptr, ptr %i.js, align 8, !tbaa !53 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %._ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.thread.i_crit_edge, label %bb.p

._ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.thread.i_crit_edge: ; preds = %bb.o
  %.pre564 = load ptr, ptr %i.d, align 8, !tbaa !49
  br label %_ZL7_extToUP10UConverterPK20UConverterSharedDataaPPKhS5_PPDsPKDsPPiiaP10UErrorCode.exit.thread.i

bb.p:                                             ; preds = %bb.o
  %i.jt = load i8, ptr %i.bb, align 2, !tbaa !126
  %i.ju = load ptr, ptr %i.ad, align 8, !tbaa !124
  %i.jv = call signext i8 @ucnv_extInitialMatchToU_78(ptr noundef nonnull %i.ae, ptr noundef nonnull %.val.i, i32 noundef 1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.e, ptr noundef %i.ju, ptr noundef nonnull %i.f, i32 noundef %.5.i, i8 noundef signext %i.jt, ptr noundef nonnull %1)
end_hunk_0
