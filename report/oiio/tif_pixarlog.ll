Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/tif_pixarlog?download=true
inline.NumInlined: 19
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@PixarLogSetupEncode:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 260 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !51
  %i.ao = or i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !51
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.c, %bb.m, %bb.l, %.thread32
  %.0 = phi i32 [ 1, %bb.m ], [ 0, %bb.c ], [ 0, %.thread32 ], [ 0, %bb.l ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @PixarLogPreEncode(ptr noundef %0, i16 zeroext %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr %i.d, ptr %i.e, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.g = load i64, ptr %i.f, align 8, !tbaa !109  ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i32 %i.h, ptr %i.i, align 8, !tbaa !92
  %.not = icmp ult i64 %i.g, 4294967296
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PixarLogPreEncode.module, ptr noundef nonnull @.str.7) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.k = tail call i32 @deflateReset(ptr noundef nonnull %i.j) #7
  %i.l = icmp eq i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.m, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @PixarLogPostEncode(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i32 0, ptr %i.d, align 8, !tbaa !89
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.j = tail call i32 @deflate(ptr noundef nonnull %i.c, i32 noundef 4) #7 ; 2 uses
  %switch = icmp ult i32 %i.j, 2
  br i1 %switch, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.e, align 8, !tbaa !92
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = load i64, ptr %i.f, align 8, !tbaa !109  ; 2 uses
  %.not = icmp eq i64 %i.m, %i.l
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = sub nsw i64 %i.m, %i.l
  store i64 %i.n, ptr %i.g, align 8, !tbaa !88
  %i.o = tail call i32 @TIFFFlushData1(ptr noundef nonnull %0) #7
  %.not21 = icmp eq i32 %i.o, 0
  br i1 %.not21, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !86
  store ptr %i.p, ptr %i.i, align 8, !tbaa !91
  %i.q = load i64, ptr %i.f, align 8, !tbaa !109
  %i.r = trunc i64 %i.q to i32
  store i32 %i.r, ptr %i.e, align 8, !tbaa !92
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !85   ; 2 uses
  %.not23 = icmp eq ptr %i.t, null
  %spec.select = select i1 %.not23, ptr @.str.6, ptr %i.t
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PixarLogPostEncode.module, ptr noundef nonnull @.str.11, ptr noundef nonnull %spec.select) #7
  br label %.loopexit

bb.g:                                             ; preds = %bb.e, %bb.c
  %.not22 = icmp eq i32 %i.j, 1
  br i1 %.not22, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.g, %bb.d, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @PixarLogEncode(ptr noundef %0, ptr nofree noundef readonly %1, i64 noundef %2, i16 zeroext %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32
  switch i32 %i.d, label %bb.d [
    i32 5, label %bb.b
    i32 4, label %bb.c
    i32 3, label %bb.c
    i32 2, label %bb.c
    i32 0, label %bb.e
    i32 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %2, 2
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.f = lshr i64 %2, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.h = load i16, ptr %i.g, align 4, !tbaa !83
  %i.i = zext i16 %i.h to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PixarLogEncode.module, ptr noundef nonnull @.str.8, i32 noundef %i.i) #7
  br label %.loopexit

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.c, %bb.b
  %.065 = phi i64 [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ %2, %bb.a ], [ %2, %bb.a ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 4 uses
  %i.k = load i16, ptr %i.j, align 8, !tbaa !79
  %i.l = zext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load i32, ptr %i.m, align 8, !tbaa !80
  %i.o = mul i32 %i.n, %i.l                       ; 15 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.q = load i32, ptr %i.p, align 4, !tbaa !74
  %i.r = zext i32 %i.q to i64
  %i.s = sext i32 %i.o to i64                     ; 12 uses
  %i.t = mul nsw i64 %i.r, %i.s
  %i.u = icmp sgt i64 %.065, %i.t
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PixarLogEncode.module, ptr noundef nonnull @.str.16) #7
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !81   ; 2 uses
  %i.x = icmp sgt i64 %.065, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.z = icmp samesign ugt i32 %i.o, 4            ; 3 uses
  %i.aa = icmp samesign ugt i32 %i.o, 3           ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  %i.ac = shl nsw i64 %i.s, 1                     ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  %i.ae = load float, ptr @Fltsize, align 4       ; 17 uses
  %i.af = load float, ptr @LogK1, align 4
  %i.ag = fpext float %i.af to double             ; 7 uses
  %i.ah = load float, ptr @LogK2, align 4         ; 7 uses
  %i.ai = shl nsw i64 %i.s, 2                     ; 7 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %horizontalDifferenceF.exit
  %.0135 = phi ptr [ %i.w, %.lr.ph ], [ %i.yo, %horizontalDifferenceF.exit ] ; 31 uses
  %.066134 = phi i64 [ 0, %.lr.ph ], [ %i.yn, %horizontalDifferenceF.exit ]
  %.068133 = phi ptr [ %1, %.lr.ph ], [ %i.ym, %horizontalDifferenceF.exit ] ; 31 uses
  %i.aj = load i32, ptr %i.c, align 8, !tbaa !32
  switch i32 %i.aj, label %bb.dh [
    i32 5, label %bb.i
    i32 4, label %bb.cx
    i32 0, label %bb.dc
  ]

bb.i:                                             ; preds = %bb.h
  %i.ak = load i16, ptr %i.j, align 8, !tbaa !79  ; 2 uses
  %i.al = zext i16 %i.ak to i32                   ; 6 uses
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !71 ; 17 uses
  %.not.i = icmp slt i32 %i.o, %i.al
  br i1 %.not.i, label %horizontalDifferenceF.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i16 %i.ak, label %.preheader237.i [
    i16 3, label %bb.k
    i16 4, label %bb.aq
  ]

.preheader237.i:                                  ; preds = %bb.j
  %i.an = load float, ptr @LogK1, align 4
  %i.ao = fpext float %i.an to double
  %i.ap = load float, ptr @LogK2, align 4
  br label %bb.cg

bb.k:                                             ; preds = %bb.j
  %i.aq = load float, ptr %.068133, align 4, !tbaa !52 ; 5 uses
  %i.ar = fcmp olt float %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = fcmp olt float %i.aq, 2.000000e+00
  br i1 %i.as, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.at = fmul float %i.ae, %i.aq
  %i.au = fptosi float %i.at to i32
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !59
  %i.ay = uitofp i16 %i.ax to double
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.az = fcmp ogt float %i.aq, 2.420000e+01
  br i1 %i.az, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = fmul float %i.aq, %i.ah
  %i.bb = fpext float %i.ba to double
  %i.bc = tail call double @log(double noundef %i.bb) #7, !tbaa !3
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.bc, double 5.000000e-01)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.k
  %i.be = phi double [ 0.000000e+00, %bb.k ], [ %i.ay, %bb.m ], [ %i.bd, %bb.o ], [ 2.047000e+03, %bb.n ]
  %i.bf = fptoui double %i.be to i16              ; 2 uses
  store i16 %i.bf, ptr %.0135, align 2, !tbaa !59
  %i.bg = zext i16 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %.068133, i64 4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !52 ; 5 uses
  %i.bj = fcmp olt float %i.bi, 0.000000e+00
  br i1 %i.bj, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = fcmp olt float %i.bi, 2.000000e+00
  br i1 %i.bk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bl = fmul float %i.ae, %i.bi
  %i.bm = fptosi float %i.bl to i32
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !59
  %i.bq = uitofp i16 %i.bp to double
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.br = fcmp ogt float %i.bi, 2.420000e+01
  br i1 %i.br, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = fmul float %i.bi, %i.ah
  %i.bt = fpext float %i.bs to double
  %i.bu = tail call double @log(double noundef %i.bt) #7, !tbaa !3
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.bu, double 5.000000e-01)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.p
  %i.bw = phi double [ 0.000000e+00, %bb.p ], [ %i.bq, %bb.r ], [ %i.bv, %bb.t ], [ 2.047000e+03, %bb.s ]
  %i.bx = fptoui double %i.bw to i16              ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0135, i64 2
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !59
  %i.bz = zext i16 %i.bx to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %.068133, i64 8
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !52 ; 5 uses
  %i.cc = fcmp olt float %i.cb, 0.000000e+00
  br i1 %i.cc, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = fcmp olt float %i.cb, 2.000000e+00
  br i1 %i.cd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ce = fmul float %i.ae, %i.cb
  %i.cf = fptosi float %i.ce to i32
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !59
  %i.cj = uitofp i16 %i.ci to double
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.ck = fcmp ogt float %i.cb, 2.420000e+01
  br i1 %i.ck, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = fmul float %i.cb, %i.ah
  %i.cm = fpext float %i.cl to double
  %i.cn = tail call double @log(double noundef %i.cm) #7, !tbaa !3
  %i.co = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.cn, double 5.000000e-01)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.u
  %i.cp = phi double [ 0.000000e+00, %bb.u ], [ %i.cj, %bb.w ], [ %i.co, %bb.y ], [ 2.047000e+03, %bb.x ]
  %i.cq = fptoui double %i.cp to i16              ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0135, i64 4
  store i16 %i.cq, ptr %i.cr, align 2, !tbaa !59
  br i1 %i.aa, label %.lr.ph258.i, label %horizontalDifferenceF.exit

.lr.ph258.i:                                      ; preds = %bb.z
  %i.cs = zext i16 %i.cq to i32
  %i.ct = load float, ptr @LogK1, align 4
  %i.cu = fpext float %i.ct to double             ; 3 uses
  %i.cv = load float, ptr @LogK2, align 4         ; 3 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ap, %.lr.ph258.i
  %.0211257.in.i = phi i32 [ %i.o, %.lr.ph258.i ], [ %.0211257.i, %bb.ap ] ; 2 uses
  %.0199256.i = phi i32 [ %i.cs, %.lr.ph258.i ], [ %i.fc, %bb.ap ]
  %.0200255.i = phi i32 [ %i.bz, %.lr.ph258.i ], [ %i.eh, %bb.ap ]
  %.0202254.i = phi i32 [ %i.bg, %.lr.ph258.i ], [ %i.dn, %bb.ap ]
  %.0204253.i = phi ptr [ %.068133, %.lr.ph258.i ], [ %i.cx, %bb.ap ] ; 3 uses
  %.0206252.i = phi ptr [ %.0135, %.lr.ph258.i ], [ %i.cw, %bb.ap ] ; 3 uses
  %.0211257.i = add nsw i32 %.0211257.in.i, -3
  %i.cw = getelementptr inbounds nuw i8, ptr %.0206252.i, i64 6 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0204253.i, i64 12 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !52 ; 5 uses
  %i.cz = fcmp olt float %i.cy, 0.000000e+00
  br i1 %i.cz, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = fcmp olt float %i.cy, 2.000000e+00
  br i1 %i.da, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.db = fmul float %i.ae, %i.cy
  %i.dc = fptosi float %i.db to i32
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.dd
  %i.df = load i16, ptr %i.de, align 2, !tbaa !59
  %i.dg = uitofp i16 %i.df to double
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.dh = fcmp ogt float %i.cy, 2.420000e+01
  br i1 %i.dh, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.di = fmul float %i.cv, %i.cy
  %i.dj = fpext float %i.di to double
  %i.dk = tail call double @log(double noundef %i.dj) #7, !tbaa !3
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.dk, double 5.000000e-01)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.aa
  %i.dm = phi double [ 0.000000e+00, %bb.aa ], [ %i.dg, %bb.ac ], [ %i.dl, %bb.ae ], [ 2.047000e+03, %bb.ad ]
  %i.dn = fptosi double %i.dm to i32              ; 2 uses
  %i.do = sub nsw i32 %i.dn, %.0202254.i
  %i.dp = trunc i32 %i.do to i16
  %i.dq = and i16 %i.dp, 2047
  store i16 %i.dq, ptr %i.cw, align 2, !tbaa !59
  %i.dr = getelementptr inbounds nuw i8, ptr %.0204253.i, i64 16
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !52 ; 5 uses
  %i.dt = fcmp olt float %i.ds, 0.000000e+00
  br i1 %i.dt, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.du = fcmp olt float %i.ds, 2.000000e+00
  br i1 %i.du, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dv = fmul float %i.ae, %i.ds
  %i.dw = fptosi float %i.dv to i32
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.dx
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !59
  %i.ea = uitofp i16 %i.dz to double
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  %i.eb = fcmp ogt float %i.ds, 2.420000e+01
  br i1 %i.eb, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ec = fmul float %i.cv, %i.ds
  %i.ed = fpext float %i.ec to double
  %i.ee = tail call double @log(double noundef %i.ed) #7, !tbaa !3
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.ee, double 5.000000e-01)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af
  %i.eg = phi double [ 0.000000e+00, %bb.af ], [ %i.ea, %bb.ah ], [ %i.ef, %bb.aj ], [ 2.047000e+03, %bb.ai ]
  %i.eh = fptosi double %i.eg to i32              ; 2 uses
  %i.ei = sub nsw i32 %i.eh, %.0200255.i
  %i.ej = trunc i32 %i.ei to i16
  %i.ek = and i16 %i.ej, 2047
  %i.el = getelementptr inbounds nuw i8, ptr %.0206252.i, i64 8
  store i16 %i.ek, ptr %i.el, align 2, !tbaa !59
  %i.em = getelementptr inbounds nuw i8, ptr %.0204253.i, i64 20
  %i.en = load float, ptr %i.em, align 4, !tbaa !52 ; 5 uses
  %i.eo = fcmp olt float %i.en, 0.000000e+00
  br i1 %i.eo, label %bb.ap, label %bb.al
end_hunk_0
begin_hunk_1_@PixarLogEncode:bb.a
  %i.in = fptosi float %i.im to i32
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.io
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !59
  %i.ir = uitofp i16 %i.iq to double
  br label %bb.bq

bb.bo:                                            ; preds = %bb.bm
  %i.is = fcmp ogt float %i.ij, 2.420000e+01
  br i1 %i.is, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.it = fmul float %i.ig, %i.ij
  %i.iu = fpext float %i.it to double
  %i.iv = tail call double @log(double noundef %i.iu) #7, !tbaa !3
  %i.iw = tail call double @llvm.fmuladd.f64(double %i.if, double %i.iv, double 5.000000e-01)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bl
  %i.ix = phi double [ 0.000000e+00, %bb.bl ], [ %i.ir, %bb.bn ], [ %i.iw, %bb.bp ], [ 2.047000e+03, %bb.bo ]
  %i.iy = fptosi double %i.ix to i32              ; 2 uses
  %i.iz = sub nsw i32 %i.iy, %.1203246.i
  %i.ja = trunc i32 %i.iz to i16
  %i.jb = and i16 %i.ja, 2047
  store i16 %i.jb, ptr %i.ih, align 2, !tbaa !59
  %i.jc = getelementptr inbounds nuw i8, ptr %.1205245.i, i64 20
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !52 ; 5 uses
  %i.je = fcmp olt float %i.jd, 0.000000e+00
  br i1 %i.je, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jf = fcmp olt float %i.jd, 2.000000e+00
  br i1 %i.jf, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.jg = fmul float %i.ae, %i.jd
  %i.jh = fptosi float %i.jg to i32
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.ji
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !59
  %i.jl = uitofp i16 %i.jk to double
  br label %bb.bv

bb.bt:                                            ; preds = %bb.br
  %i.jm = fcmp ogt float %i.jd, 2.420000e+01
  br i1 %i.jm, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jn = fmul float %i.ig, %i.jd
  %i.jo = fpext float %i.jn to double
  %i.jp = tail call double @log(double noundef %i.jo) #7, !tbaa !3
  %i.jq = tail call double @llvm.fmuladd.f64(double %i.if, double %i.jp, double 5.000000e-01)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.bq
  %i.jr = phi double [ 0.000000e+00, %bb.bq ], [ %i.jl, %bb.bs ], [ %i.jq, %bb.bu ], [ 2.047000e+03, %bb.bt ]
  %i.js = fptosi double %i.jr to i32              ; 2 uses
  %i.jt = sub nsw i32 %i.js, %.1201247.i
  %i.ju = trunc i32 %i.jt to i16
  %i.jv = and i16 %i.ju, 2047
  %i.jw = getelementptr inbounds nuw i8, ptr %.1207244.i, i64 10
  store i16 %i.jv, ptr %i.jw, align 2, !tbaa !59
  %i.jx = getelementptr inbounds nuw i8, ptr %.1205245.i, i64 24
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !52 ; 5 uses
  %i.jz = fcmp olt float %i.jy, 0.000000e+00
  br i1 %i.jz, label %bb.ca, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = fcmp olt float %i.jy, 2.000000e+00
  br i1 %i.ka, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.kb = fmul float %i.ae, %i.jy
  %i.kc = fptosi float %i.kb to i32
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.kd
  %i.kf = load i16, ptr %i.ke, align 2, !tbaa !59
  %i.kg = uitofp i16 %i.kf to double
  br label %bb.ca

bb.by:                                            ; preds = %bb.bw
  %i.kh = fcmp ogt float %i.jy, 2.420000e+01
  br i1 %i.kh, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ki = fmul float %i.ig, %i.jy
  %i.kj = fpext float %i.ki to double
  %i.kk = tail call double @log(double noundef %i.kj) #7, !tbaa !3
  %i.kl = tail call double @llvm.fmuladd.f64(double %i.if, double %i.kk, double 5.000000e-01)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bx, %bb.bv
  %i.km = phi double [ 0.000000e+00, %bb.bv ], [ %i.kg, %bb.bx ], [ %i.kl, %bb.bz ], [ 2.047000e+03, %bb.by ]
  %i.kn = fptosi double %i.km to i32              ; 2 uses
  %i.ko = sub nsw i32 %i.kn, %.1248.i
  %i.kp = trunc i32 %i.ko to i16
  %i.kq = and i16 %i.kp, 2047
  %i.kr = getelementptr inbounds nuw i8, ptr %.1207244.i, i64 12
  store i16 %i.kq, ptr %i.kr, align 2, !tbaa !59
  %i.ks = getelementptr inbounds nuw i8, ptr %.1205245.i, i64 28
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !52 ; 5 uses
  %i.ku = fcmp olt float %i.kt, 0.000000e+00
  br i1 %i.ku, label %bb.cf, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kv = fcmp olt float %i.kt, 2.000000e+00
  br i1 %i.kv, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.kw = fmul float %i.ae, %i.kt
  %i.kx = fptosi float %i.kw to i32
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.ky
  %i.la = load i16, ptr %i.kz, align 2, !tbaa !59
  %i.lb = uitofp i16 %i.la to double
  br label %bb.cf

bb.cd:                                            ; preds = %bb.cb
  %i.lc = fcmp ogt float %i.kt, 2.420000e+01
  br i1 %i.lc, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ld = fmul float %i.ig, %i.kt
  %i.le = fpext float %i.ld to double
  %i.lf = tail call double @log(double noundef %i.le) #7, !tbaa !3
  %i.lg = tail call double @llvm.fmuladd.f64(double %i.if, double %i.lf, double 5.000000e-01)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.ca
  %i.lh = phi double [ 0.000000e+00, %bb.ca ], [ %i.lb, %bb.cc ], [ %i.lg, %bb.ce ], [ 2.047000e+03, %bb.cd ]
  %i.li = fptosi double %i.lh to i32              ; 2 uses
  %i.lj = sub nsw i32 %i.li, %.0198249.i
  %i.lk = trunc i32 %i.lj to i16
  %i.ll = and i16 %i.lk, 2047
  %i.lm = getelementptr inbounds nuw i8, ptr %.1207244.i, i64 14
  store i16 %i.ll, ptr %i.lm, align 2, !tbaa !59
  %i.ln = icmp samesign ugt i32 %.1212250.in.i, 8
  br i1 %i.ln, label %bb.bl, label %horizontalDifferenceF.exit

bb.cg:                                            ; preds = %bb.cl, %.preheader237.i
  %.2208.i = phi ptr [ %i.mf, %bb.cl ], [ %.0135, %.preheader237.i ] ; 2 uses
  %.2.i = phi ptr [ %i.mg, %bb.cl ], [ %.068133, %.preheader237.i ] ; 2 uses
  %.0197.i = phi i32 [ %i.lo, %bb.cl ], [ %i.al, %.preheader237.i ] ; 2 uses
  %i.lo = add nsw i32 %.0197.i, -1
  %i.lp = load float, ptr %.2.i, align 4, !tbaa !52 ; 5 uses
  %i.lq = fcmp olt float %i.lp, 0.000000e+00
  br i1 %i.lq, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.lr = fcmp olt float %i.lp, 2.000000e+00
  br i1 %i.lr, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ls = fmul float %i.ae, %i.lp
  %i.lt = fptosi float %i.ls to i32
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.lu
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !59
  %i.lx = uitofp i16 %i.lw to double
  br label %bb.cl

bb.cj:                                            ; preds = %bb.ch
  %i.ly = fcmp ogt float %i.lp, 2.420000e+01
  br i1 %i.ly, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.lz = fmul float %i.ap, %i.lp
  %i.ma = fpext float %i.lz to double
  %i.mb = tail call double @log(double noundef %i.ma) #7, !tbaa !3
  %i.mc = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.mb, double 5.000000e-01)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.cg
  %i.md = phi double [ 0.000000e+00, %bb.cg ], [ %i.lx, %bb.ci ], [ %i.mc, %bb.ck ], [ 2.047000e+03, %bb.cj ]
  %i.me = fptoui double %i.md to i16
  store i16 %i.me, ptr %.2208.i, align 2, !tbaa !59
  %i.mf = getelementptr inbounds nuw i8, ptr %.2208.i, i64 2 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.2.i, i64 4 ; 2 uses
  %i.mh = icmp samesign ugt i32 %.0197.i, 1
  br i1 %i.mh, label %bb.cg, label %.preheader235.i

.preheader235.i:                                  ; preds = %bb.cl
  %.2213259.i = sub nsw i32 %i.o, %i.al           ; 2 uses
  %i.mi = icmp sgt i32 %.2213259.i, 0
  br i1 %i.mi, label %.preheader.lr.ph.i, label %horizontalDifferenceF.exit

.preheader.lr.ph.i:                               ; preds = %.preheader235.i
  %i.mj = sub nsw i32 0, %i.al
  %i.mk = sext i32 %i.mj to i64
  br label %.preheader.i

.loopexit.i:                                      ; preds = %bb.cw
  %.2213.i = sub nsw i32 %.2213262.i, %i.al       ; 2 uses
  %i.ml = icmp sgt i32 %.2213.i, 0
  br i1 %i.ml, label %.preheader.i, label %horizontalDifferenceF.exit

.preheader.i:                                     ; preds = %.loopexit.i, %.preheader.lr.ph.i
  %.2213262.i = phi i32 [ %.2213259.i, %.preheader.lr.ph.i ], [ %.2213.i, %.loopexit.i ]
  %.3261.i = phi ptr [ %i.mg, %.preheader.lr.ph.i ], [ %i.ny, %.loopexit.i ]
  %.3209260.i = phi ptr [ %i.mf, %.preheader.lr.ph.i ], [ %i.nx, %.loopexit.i ]
  %4 = load float, ptr @LogK1, align 4
  %5 = fpext float %4 to double                   ; 2 uses
  %6 = load float, ptr @LogK2, align 4            ; 2 uses
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cw, %.preheader.i
  %.4210.i = phi ptr [ %i.nx, %bb.cw ], [ %.3209260.i, %.preheader.i ] ; 2 uses
  %.4.i = phi ptr [ %i.ny, %bb.cw ], [ %.3261.i, %.preheader.i ] ; 3 uses
  %.0.i = phi i32 [ %i.mm, %bb.cw ], [ %i.al, %.preheader.i ] ; 2 uses
  %i.mm = add nsw i32 %.0.i, -1
  %i.mn = load float, ptr %.4.i, align 4, !tbaa !52 ; 5 uses
  %i.mo = fcmp olt float %i.mn, 0.000000e+00
  br i1 %i.mo, label %bb.cr, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.mp = fcmp olt float %i.mn, 2.000000e+00
  br i1 %i.mp, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.mq = fmul float %i.ae, %i.mn
  %i.mr = fptosi float %i.mq to i32
  %i.ms = sext i32 %i.mr to i64
  %i.mt = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.ms
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !59
  %i.mv = uitofp i16 %i.mu to double
  br label %bb.cr

bb.cp:                                            ; preds = %bb.cn
  %i.mw = fcmp ogt float %i.mn, 2.420000e+01
  br i1 %i.mw, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.mx = fmul float %6, %i.mn
  %i.my = fpext float %i.mx to double
  %i.mz = tail call double @log(double noundef %i.my) #7, !tbaa !3
  %i.na = tail call double @llvm.fmuladd.f64(double %5, double %i.mz, double 5.000000e-01)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %bb.co, %bb.cm
  %i.nb = phi double [ 0.000000e+00, %bb.cm ], [ %i.mv, %bb.co ], [ %i.na, %bb.cq ], [ 2.047000e+03, %bb.cp ]
  %i.nc = fptosi double %i.nb to i32
  %i.nd = getelementptr inbounds [4 x i8], ptr %.4.i, i64 %i.mk
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !52 ; 5 uses
  %i.nf = fcmp olt float %i.ne, 0.000000e+00
  br i1 %i.nf, label %bb.cw, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ng = fcmp olt float %i.ne, 2.000000e+00
  br i1 %i.ng, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.nh = fmul float %i.ae, %i.ne
  %i.ni = fptosi float %i.nh to i32
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.nj
  %i.nl = load i16, ptr %i.nk, align 2, !tbaa !59
  %i.nm = uitofp i16 %i.nl to double
  br label %bb.cw

bb.cu:                                            ; preds = %bb.cs
  %i.nn = fcmp ogt float %i.ne, 2.420000e+01
  br i1 %i.nn, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.no = fmul float %6, %i.ne
  %i.np = fpext float %i.no to double
  %i.nq = tail call double @log(double noundef %i.np) #7, !tbaa !3
  %i.nr = tail call double @llvm.fmuladd.f64(double %5, double %i.nq, double 5.000000e-01)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cr
  %i.ns = phi double [ 0.000000e+00, %bb.cr ], [ %i.nm, %bb.ct ], [ %i.nr, %bb.cv ], [ 2.047000e+03, %bb.cu ]
  %i.nt = fptosi double %i.ns to i32
  %i.nu = sub nsw i32 %i.nc, %i.nt
  %i.nv = trunc i32 %i.nu to i16
  %i.nw = and i16 %i.nv, 2047
  store i16 %i.nw, ptr %.4210.i, align 2, !tbaa !59
  %i.nx = getelementptr inbounds nuw i8, ptr %.4210.i, i64 2 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.4.i, i64 4 ; 2 uses
  %i.nz = icmp sgt i32 %.0.i, 1
  br i1 %i.nz, label %bb.cm, label %.loopexit.i

bb.cx:                                            ; preds = %bb.h
  %i.oa = load i16, ptr %i.j, align 8, !tbaa !79  ; 2 uses
  %i.ob = zext i16 %i.oa to i32                   ; 6 uses
  %i.oc = load ptr, ptr %i.ab, align 8, !tbaa !72 ; 17 uses
  %.not.i74 = icmp slt i32 %i.o, %i.ob
  br i1 %.not.i74, label %horizontalDifferenceF.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  switch i16 %i.oa, label %.preheader129.i [
    i16 3, label %bb.cz
    i16 4, label %bb.da
  ]

bb.cz:                                            ; preds = %bb.cy
  %i.od = load i16, ptr %.068133, align 2, !tbaa !59
  %i.oe = lshr i16 %i.od, 2
  %i.of = zext nneg i16 %i.oe to i64
  %i.og = getelementptr inbounds nuw [2 x i8], ptr %i.oc, i64 %i.of
  %i.oh = load i16, ptr %i.og, align 2, !tbaa !59 ; 2 uses
  store i16 %i.oh, ptr %.0135, align 2, !tbaa !59
  %i.oi = getelementptr inbounds nuw i8, ptr %.068133, i64 2
  %i.oj = load i16, ptr %i.oi, align 2, !tbaa !59
  %i.ok = lshr i16 %i.oj, 2
  %i.ol = zext nneg i16 %i.ok to i64
  %i.om = getelementptr inbounds nuw [2 x i8], ptr %i.oc, i64 %i.ol
  %i.on = load i16, ptr %i.om, align 2, !tbaa !59 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.0135, i64 2
  store i16 %i.on, ptr %i.oo, align 2, !tbaa !59
  %i.op = getelementptr inbounds nuw i8, ptr %.068133, i64 4
  %i.oq = load i16, ptr %i.op, align 2, !tbaa !59
  %i.or = lshr i16 %i.oq, 2
  %i.os = zext nneg i16 %i.or to i64
  %i.ot = getelementptr inbounds nuw [2 x i8], ptr %i.oc, i64 %i.os
  %i.ou = load i16, ptr %i.ot, align 2, !tbaa !59 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.0135, i64 4
  store i16 %i.ou, ptr %i.ov, align 2, !tbaa !59
  br i1 %i.aa, label %.lr.ph148.i, label %horizontalDifferenceF.exit

.lr.ph148.i:                                      ; preds = %bb.cz, %.lr.ph148.i
  %.0110147.i = phi i16 [ %i.pt, %.lr.ph148.i ], [ %i.ou, %bb.cz ]
  %.0111146.i = phi i16 [ %i.pk, %.lr.ph148.i ], [ %i.on, %bb.cz ]
  %.0113145.i = phi i16 [ %i.pc, %.lr.ph148.i ], [ %i.oh, %bb.cz ]
  %.0115144.i = phi ptr [ %i.ox, %.lr.ph148.i ], [ %.068133, %bb.cz ] ; 3 uses
  %.0117143.i = phi ptr [ %i.ow, %.lr.ph148.i ], [ %.0135, %bb.cz ] ; 3 uses
  %.0122.in142.i = phi i32 [ %.0122.i, %.lr.ph148.i ], [ %i.o, %bb.cz ] ; 2 uses
  %.0122.i = add nsw i32 %.0122.in142.i, -3
  %i.ow = getelementptr inbounds nuw i8, ptr %.0117143.i, i64 6 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.0115144.i, i64 6 ; 2 uses
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !59
  %i.oz = lshr i16 %i.oy, 2
  %i.pa = zext nneg i16 %i.oz to i64
  %i.pb = getelementptr inbounds nuw [2 x i8], ptr %i.oc, i64 %i.pa
  %i.pc = load i16, ptr %i.pb, align 2, !tbaa !59 ; 2 uses
  %i.pd = sub i16 %i.pc, %.0113145.i
  %i.pe = and i16 %i.pd, 2047
  store i16 %i.pe, ptr %i.ow, align 2, !tbaa !59
  %i.pf = getelementptr inbounds nuw i8, ptr %.0115144.i, i64 8
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !59
  %i.ph = lshr i16 %i.pg, 2
  %i.pi = zext nneg i16 %i.ph to i64
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.oc, i64 %i.pi
  %i.pk = load i16, ptr %i.pj, align 2, !tbaa !59 ; 2 uses
  %i.pl = sub i16 %i.pk, %.0111146.i
  %i.pm = and i16 %i.pl, 2047
  %i.pn = getelementptr inbounds nuw i8, ptr %.0117143.i, i64 8
  store i16 %i.pm, ptr %i.pn, align 2, !tbaa !59
  %i.po = getelementptr inbounds nuw i8, ptr %.0115144.i, i64 10
  %i.pp = load i16, ptr %i.po, align 2, !tbaa !59
  %i.pq = lshr i16 %i.pp, 2
  %i.pr = zext nneg i16 %i.pq to i64
  %i.ps = getelementptr inbounds nuw [2 x i8], ptr %i.oc, i64 %i.pr
  %i.pt = load i16, ptr %i.ps, align 2, !tbaa !59 ; 2 uses
  %i.pu = sub i16 %i.pt, %.0110147.i
  %i.pv = and i16 %i.pu, 2047
  %i.pw = getelementptr inbounds nuw i8, ptr %.0117143.i, i64 10
  store i16 %i.pv, ptr %i.pw, align 2, !tbaa !59
  %i.px = icmp samesign ugt i32 %.0122.in142.i, 6
  br i1 %i.px, label %.lr.ph148.i, label %horizontalDifferenceF.exit

bb.da:                                            ; preds = %bb.cy
  %i.py = load i16, ptr %.068133, align 2, !tbaa !59
  %i.pz = lshr i16 %i.py, 2
  %i.qa = zext nneg i16 %i.pz to i64
  %i.qb = getelementptr inbounds nuw [2 x i8], ptr %i.oc, i64 %i.qa
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !59 ; 2 uses
  store i16 %i.qc, ptr %.0135, align 2, !tbaa !59
  %i.qd = getelementptr inbounds nuw i8, ptr %.068133, i64 2
  %i.qe = load i16, ptr %i.qd, align 2, !tbaa !59
  %i.qf = lshr i16 %i.qe, 2
  %i.qg = zext nneg i16 %i.qf to i64
  %i.qh = getelementptr inbounds nuw [2 x i8], ptr %i.oc, i64 %i.qg
  %i.qi = load i16, ptr %i.qh, align 2, !tbaa !59 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.0135, i64 2
  store i16 %i.qi, ptr %i.qj, align 2, !tbaa !59
  %i.qk = getelementptr inbounds nuw i8, ptr %.068133, i64 4
  %i.ql = load i16, ptr %i.qk, align 2, !tbaa !59
  %i.qm = lshr i16 %i.ql, 2
  %i.qn = zext nneg i16 %i.qm to i64
  %i.qo = getelementptr inbounds nuw [2 x i8], ptr %i.oc, i64 %i.qn
  %i.qp = load i16, ptr %i.qo, align 2, !tbaa !59 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.0135, i64 4
  store i16 %i.qp, ptr %i.qq, align 2, !tbaa !59
  %i.qr = getelementptr inbounds nuw i8, ptr %.068133, i64 6
  %i.qs = load i16, ptr %i.qr, align 2, !tbaa !59
  %i.qt = lshr i16 %i.qs, 2
  %i.qu = zext nneg i16 %i.qt to i64
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %i.oc, i64 %i.qu
  %i.qw = load i16, ptr %i.qv, align 2, !tbaa !59 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.0135, i64 6
  store i16 %i.qw, ptr %i.qx, align 2, !tbaa !59
  br i1 %i.z, label %.lr.ph.i75, label %horizontalDifferenceF.exit

.lr.ph.i75:                                       ; preds = %bb.da, %.lr.ph.i75
  %.0109141.i = phi i16 [ %i.se, %.lr.ph.i75 ], [ %i.qw, %bb.da ]
  %.1140.i = phi i16 [ %i.rv, %.lr.ph.i75 ], [ %i.qp, %bb.da ]
  %.1112139.i = phi i16 [ %i.rm, %.lr.ph.i75 ], [ %i.qi, %bb.da ]
  %.1114138.i = phi i16 [ %i.re, %.lr.ph.i75 ], [ %i.qc, %bb.da ]
  %.1116137.i = phi ptr [ %i.qz, %.lr.ph.i75 ], [ %.068133, %bb.da ] ; 4 uses
  %.1118136.i = phi ptr [ %i.qy, %.lr.ph.i75 ], [ %.0135, %bb.da ] ; 4 uses
  %.1123.in135.i = phi i32 [ %.1123.i, %.lr.ph.i75 ], [ %i.o, %bb.da ] ; 2 uses
  %.1123.i = add nsw i32 %.1123.in135.i, -4
  %i.qy = getelementptr inbounds nuw i8, ptr %.1118136.i, i64 8 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.1116137.i, i64 8 ; 2 uses
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !59
  %i.rb = lshr i16 %i.ra, 2
  %i.rc = zext nneg i16 %i.rb to i64
  %i.rd = getelementptr inbounds nuw [2 x i8], ptr %i.oc, i64 %i.rc
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !59 ; 2 uses
  %i.rf = sub i16 %i.re, %.1114138.i
  %i.rg = and i16 %i.rf, 2047
  store i16 %i.rg, ptr %i.qy, align 2, !tbaa !59
  %i.rh = getelementptr inbounds nuw i8, ptr %.1116137.i, i64 10
  %i.ri = load i16, ptr %i.rh, align 2, !tbaa !59
  %i.rj = lshr i16 %i.ri, 2
  %i.rk = zext nneg i16 %i.rj to i64
  %i.rl = getelementptr inbounds nuw [2 x i8], ptr %i.oc, i64 %i.rk
  %i.rm = load i16, ptr %i.rl, align 2, !tbaa !59 ; 2 uses
  %i.rn = sub i16 %i.rm, %.1112139.i
  %i.ro = and i16 %i.rn, 2047
  %i.rp = getelementptr inbounds nuw i8, ptr %.1118136.i, i64 10
  store i16 %i.ro, ptr %i.rp, align 2, !tbaa !59
  %i.rq = getelementptr inbounds nuw i8, ptr %.1116137.i, i64 12
  %i.rr = load i16, ptr %i.rq, align 2, !tbaa !59
  %i.rs = lshr i16 %i.rr, 2
  %i.rt = zext nneg i16 %i.rs to i64
  %i.ru = getelementptr inbounds nuw [2 x i8], ptr %i.oc, i64 %i.rt
  %i.rv = load i16, ptr %i.ru, align 2, !tbaa !59 ; 2 uses
  %i.rw = sub i16 %i.rv, %.1140.i
  %i.rx = and i16 %i.rw, 2047
  %i.ry = getelementptr inbounds nuw i8, ptr %.1118136.i, i64 12
  store i16 %i.rx, ptr %i.ry, align 2, !tbaa !59
  %i.rz = getelementptr inbounds nuw i8, ptr %.1116137.i, i64 14
  %i.sa = load i16, ptr %i.rz, align 2, !tbaa !59
  %i.sb = lshr i16 %i.sa, 2
  %i.sc = zext nneg i16 %i.sb to i64
  %i.sd = getelementptr inbounds nuw [2 x i8], ptr %i.oc, i64 %i.sc
  %i.se = load i16, ptr %i.sd, align 2, !tbaa !59 ; 2 uses
  %i.sf = sub i16 %i.se, %.0109141.i
  %i.sg = and i16 %i.sf, 2047
  %i.sh = getelementptr inbounds nuw i8, ptr %.1118136.i, i64 14
  store i16 %i.sg, ptr %i.sh, align 2, !tbaa !59
  %i.si = icmp samesign ugt i32 %.1123.in135.i, 8
  br i1 %i.si, label %.lr.ph.i75, label %horizontalDifferenceF.exit

.preheader129.i:                                  ; preds = %bb.cy, %.preheader129.i
  %.2119.i = phi ptr [ %i.sp, %.preheader129.i ], [ %.0135, %bb.cy ] ; 2 uses
  %.2.i76 = phi ptr [ %i.sq, %.preheader129.i ], [ %.068133, %bb.cy ] ; 2 uses
  %.0108.i = phi i32 [ %i.sj, %.preheader129.i ], [ %i.ob, %bb.cy ] ; 2 uses
  %i.sj = add nsw i32 %.0108.i, -1
  %i.sk = load i16, ptr %.2.i76, align 2, !tbaa !59
  %i.sl = lshr i16 %i.sk, 2
  %i.sm = zext nneg i16 %i.sl to i64
  %i.sn = getelementptr inbounds nuw [2 x i8], ptr %i.oc, i64 %i.sm
  %i.so = load i16, ptr %i.sn, align 2, !tbaa !59
  store i16 %i.so, ptr %.2119.i, align 2, !tbaa !59
  %i.sp = getelementptr inbounds nuw i8, ptr %.2119.i, i64 2 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.2.i76, i64 2 ; 2 uses
  %i.sr = icmp samesign ugt i32 %.0108.i, 1
  br i1 %i.sr, label %.preheader129.i, label %.preheader127.i

.preheader127.i:                                  ; preds = %.preheader129.i
  %.2124149.i = sub nsw i32 %i.o, %i.ob           ; 2 uses
  %i.ss = icmp sgt i32 %.2124149.i, 0
  br i1 %i.ss, label %.preheader.lr.ph.i77, label %horizontalDifferenceF.exit

.preheader.lr.ph.i77:                             ; preds = %.preheader127.i
end_hunk_1
