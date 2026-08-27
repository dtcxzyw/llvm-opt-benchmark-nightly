Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/motion_est?download=true
inline.NumInlined: 141
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 17
begin_hunk_0_@ff_estimate_p_frame_motion:bb.a
  %i.zx = zext nneg i32 %i.zw to i64
  %i.zy = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.zx
  %i.zz = load i8, ptr %i.zy, align 1, !tbaa !68
  %i.aaa = lshr i8 %i.zz, 2
  %i.aab = zext nneg i8 %i.aaa to i32
  br label %bb.db

bb.cw:                                            ; preds = %bb.cu
  %i.aac = icmp ult i32 %i.xj, 16384
  br i1 %i.aac, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.aad = lshr i32 %i.xj, 6
  %i.aae = zext nneg i32 %i.aad to i64
  %i.aaf = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.aae
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !68
  %i.aah = lshr i8 %i.aag, 1
  %i.aai = zext nneg i8 %i.aah to i32
  br label %bb.db

bb.cy:                                            ; preds = %bb.cw
  %i.aaj = icmp ult i32 %i.xj, 65536
  br i1 %i.aaj, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.aak = lshr i32 %i.xj, 8
  %i.aal = zext nneg i32 %i.aak to i64
  %i.aam = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.aal
  %i.aan = load i8, ptr %i.aam, align 1, !tbaa !68
  %i.aao = zext i8 %i.aan to i32
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  %.not.i.i311 = icmp ult i32 %i.xj, 16777216     ; 2 uses
  %spec.select.i.v.i312 = select i1 %.not.i.i311, i32 16, i32 24
  %spec.select.i.i313 = lshr i32 %i.xj, %spec.select.i.v.i312
  %spec.select7.i.i314 = select i1 %.not.i.i311, i32 0, i32 8
  %i.aap = zext nneg i32 %spec.select.i.i313 to i64
  %i.aaq = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.aap
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !68
  %i.aas = zext i8 %i.aar to i32
  %i.aat = add nuw nsw i32 %spec.select7.i.i314, %i.aas
  %i.aau = lshr i32 %i.aat, 1                     ; 3 uses
  %i.aav = add nuw nsw i32 %i.aau, 2
  %i.aaw = lshr i32 %i.xj, %i.aav                 ; 2 uses
  %i.aax = add nuw nsw i32 %i.aau, 8
  %i.aay = lshr i32 %i.aaw, %i.aax
  %i.aaz = zext nneg i32 %i.aay to i64
  %i.aba = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.aaz
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !68 ; 2 uses
  %i.abc = zext i8 %i.abb to i32
  %i.abd = zext nneg i32 %i.aaw to i64
  %i.abe = zext i8 %i.abb to i64
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.abe
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !59
  %i.abh = zext i32 %i.abg to i64
  %i.abi = mul nuw nsw i64 %i.abd, %i.abh
  %i.abj = lshr i64 %i.abi, 32
  %i.abk = trunc nuw nsw i64 %i.abj to i32
  %i.abl = shl i32 %i.abc, %i.aau
  %i.abm = add i32 %i.abl, %i.abk
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cx, %bb.cv
  %.022.i315 = phi i32 [ %i.aab, %bb.cv ], [ %i.aai, %bb.cx ], [ %i.aao, %bb.cz ], [ %i.abm, %bb.da ] ; 3 uses
  %i.abn = mul i32 %.022.i315, %.022.i315
  %i.abo = icmp ult i32 %i.xj, %i.abn
  %.neg.i316 = sext i1 %i.abo to i32
  %i.abp = add i32 %.022.i315, %.neg.i316
  br label %ff_sqrt.exit318

ff_sqrt.exit318:                                  ; preds = %bb.ct, %bb.db
  %.0.i317 = phi i32 [ %i.zu, %bb.ct ], [ %i.abp, %bb.db ]
  %i.abq = sub i32 %.0.i309, %.0.i317
  %i.abr = getelementptr inbounds nuw i8, ptr %0, i64 5056 ; 2 uses
  %i.abs = load i32, ptr %i.abr, align 16, !tbaa !149
  %i.abt = add i32 %i.abq, %i.abs
  store i32 %i.abt, ptr %i.abr, align 16, !tbaa !149
  br label %bb.dc

bb.dc:                                            ; preds = %bb.bx, %bb.bv, %bb.bw, %ff_sqrt.exit318
  %.10 = phi i32 [ %..8, %ff_sqrt.exit318 ], [ %.3, %bb.bw ], [ %.3, %bb.bv ], [ %spec.select278, %bb.bx ]
  %i.abu = trunc nuw nsw i32 %.10 to i16
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 6064
  %i.abw = load ptr, ptr %i.abv, align 16, !tbaa !154
  %i.abx = load i32, ptr %i.fp, align 4, !tbaa !70
  %i.aby = mul nsw i32 %i.abx, %2
  %i.abz = add nsw i32 %i.aby, %1
  %i.aca = sext i32 %i.abz to i64
  %i.acb = getelementptr inbounds [2 x i8], ptr %i.abw, i64 %i.aca
  store i16 %i.abu, ptr %i.acb, align 2, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @h263_mv4_search(ptr noundef initializes((4808, 4816), (4840, 4848), (4872, 4880), (4936, 4944), (4968, 4976), (5000, 5008)) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 -2147483647, -2147483648) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [10 x [2 x i32]], align 16        ; 20 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4608 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5032
  %i.f = load i32, ptr %i.e, align 8, !tbaa !21   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5368
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4744
  %i.j = load i32, ptr %i.i, align 8, !tbaa !135
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.l = load i32, ptr %i.k, align 16, !tbaa !155
  %i.m = and i32 %i.l, 15
  %.not231 = icmp eq i32 %i.m, 0
  br i1 %.not231, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.o = load i32, ptr %i.n, align 4, !tbaa !156
  %i.p = and i32 %i.o, 15
  %i.q = icmp ne i32 %i.p, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.r = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.q, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4904 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !61   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4936
  store ptr %i.u, ptr %i.v, align 8, !tbaa !61
  %i.w = shl nsw i32 %i.f, 3
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.t, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4968
  store ptr %i.y, ptr %i.z, align 8, !tbaa !61
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5000
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !61
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4776
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !61 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4808
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !61
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 %i.x ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4840
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !61
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4872
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !61
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4752 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3780
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 76 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %i.au = lshr i32 65536, %3
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3108 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 3112 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4760 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4748
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4764 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4768 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 5376
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 5160 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5208 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4688 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 3772 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 5344
  %i.bo = sext i32 %i.f to i64                    ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 5328 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4720 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.v
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.v ] ; 8 uses
  %.0213256 = phi i32 [ 0, %bb.d ], [ %.1, %bb.v ]
  %.0216255 = phi i32 [ 1, %bb.d ], [ %.1217, %bb.v ]
  %.0219254 = phi i32 [ 0, %bb.d ], [ %.1220, %bb.v ]
  %.0221253 = phi i32 [ 0, %bb.d ], [ %.1222, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.by = load i32, ptr %i.ak, align 16, !tbaa !143
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !59 ; 2 uses
  br i1 %i.r, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre = load i32, ptr %i.ap, align 16, !tbaa !23
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %indvars.iv.tr274 = trunc i64 %indvars.iv to i32
  %i.cb = load <2 x i32>, ptr %i.av, align 4, !tbaa !59
  %i.cc = load <2 x i32>, ptr %i.aw, align 16, !tbaa !59
  %i.cd = mul <2 x i32> %i.cb, splat (i32 -16)
  %i.ce = shl i32 %indvars.iv.tr274, 2
  %i.cf = shl i32 %indvars.iv.tr, 3
  %i.cg = insertelement <2 x i32> poison, i32 %i.cf, i64 0
  %i.ch = insertelement <2 x i32> %i.cg, i32 %i.ce, i64 1
  %i.ci = and <2 x i32> %i.ch, splat (i32 8)
  %i.cj = sub <2 x i32> %i.cd, %i.ci
  %i.ck = add <2 x i32> %i.cj, %i.cc              ; 2 uses
  %i.cl = extractelement <2 x i32> %i.ck, i64 0   ; 2 uses
  store i32 %i.cl, ptr %i.ap, align 16, !tbaa !23
  %i.cm = extractelement <2 x i32> %i.ck, i64 1
  store i32 %i.cm, ptr %i.ay, align 8, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %i.cn = phi i32 [ %.pre, %._crit_edge ], [ %i.cl, %bb.f ]
  %i.co = load ptr, ptr %i.am, align 16, !tbaa !144 ; 3 uses
  %i.cp = sext i32 %i.ca to i64
  %i.cq = getelementptr [4 x i8], ptr %i.co, i64 %i.cp ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 -4
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !79
  %i.ct = sext i16 %i.cs to i32                   ; 3 uses
  store i32 %i.ct, ptr %i.an, align 8, !tbaa !59
  %i.cu = getelementptr i8, ptr %i.cq, i64 -2
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !79
  %i.cw = sext i16 %i.cv to i32                   ; 8 uses
  store i32 %i.cw, ptr %i.ao, align 4, !tbaa !59
  %i.cx = shl i32 %i.cn, %3                       ; 10 uses
  %i.cy = icmp slt i32 %i.cx, %i.ct
  br i1 %i.cy, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.cx, ptr %i.an, align 8, !tbaa !59
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cz = phi i32 [ %i.cx, %bb.h ], [ %i.ct, %bb.g ] ; 7 uses
  %i.da = load i32, ptr %i.aq, align 4, !tbaa !78
  %i.db = icmp ne i32 %i.da, 0
  %i.dc = icmp samesign ult i64 %indvars.iv, 2
  %or.cond = select i1 %i.db, i1 %i.dc, i1 false
  br i1 %or.cond, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dd = sub nsw i32 %i.ca, %i.by                ; 2 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.de ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !79
  %i.dh = sext i16 %i.dg to i32                   ; 4 uses
  store i32 %i.dh, ptr %i.az, align 16, !tbaa !59
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !79
  %i.dk = sext i16 %i.dj to i32                   ; 3 uses
  store i32 %i.dk, ptr %i.ba, align 4, !tbaa !59
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr @h263_mv4_search.off, i64 %indvars.iv
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !59
  %i.dn = add nsw i32 %i.dm, %i.dd
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.do ; 2 uses
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !79
  %i.dr = sext i16 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !79
  %i.du = sext i16 %i.dt to i32                   ; 3 uses
  store i32 %i.du, ptr %i.bc, align 4, !tbaa !59
  %i.dv = load i32, ptr %i.ay, align 8, !tbaa !25
  %i.dw = shl i32 %i.dv, %3                       ; 6 uses
  %i.dx = icmp slt i32 %i.dw, %i.dk
  br i1 %i.dx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.dw, ptr %i.ba, align 4, !tbaa !59
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dy = phi i32 [ %i.dw, %bb.k ], [ %i.dk, %bb.j ] ; 3 uses
  %i.dz = load i32, ptr %i.bd, align 4, !tbaa !22
  %i.ea = shl i32 %i.dz, %3
  %spec.select = call i32 @llvm.smax.i32(i32 %i.ea, i32 %i.dr)
  %spec.store.select = call i32 @llvm.smin.i32(i32 %spec.select, i32 %i.cx) ; 3 uses
  store i32 %spec.store.select, ptr %i.bb, align 8
  %i.eb = icmp slt i32 %i.dw, %i.du
  br i1 %i.eb, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  store i32 %i.dw, ptr %i.bc, align 4, !tbaa !59
  br label %.thread

bb.n:                                             ; preds = %bb.i
  store i32 %i.cz, ptr %i.bg, align 4, !tbaa !18
  store i32 %i.cw, ptr %i.bh, align 16, !tbaa !19
  store i32 %1, ptr %i.ar, align 8, !tbaa !59
  store i32 %2, ptr %i.as, align 4, !tbaa !59
  br i1 %i.r, label %.loopexit.loopexit, label %.loopexit

.thread:                                          ; preds = %bb.l, %bb.m
  %i.ec = phi i32 [ %i.dw, %bb.m ], [ %i.du, %bb.l ] ; 2 uses
  %..i = call i32 @llvm.smax.i32(i32 %i.cz, i32 %i.dh)
  %.20.i = call i32 @llvm.smin.i32(i32 %i.cz, i32 %i.dh)
  %i.ed = call i32 @llvm.smin.i32(i32 %spec.store.select, i32 %..i)
  %i.ee = call noundef i32 @llvm.smax.i32(i32 %i.ed, i32 %.20.i) ; 5 uses
  store i32 %i.ee, ptr %i.be, align 16, !tbaa !59
  %..i243 = call i32 @llvm.smax.i32(i32 %i.cw, i32 %i.dy)
  %.20.i244 = call i32 @llvm.smin.i32(i32 %i.cw, i32 %i.dy)
  %i.ef = call i32 @llvm.smin.i32(i32 %i.ec, i32 %..i243)
  %i.eg = call noundef i32 @llvm.smax.i32(i32 %i.ef, i32 %.20.i244) ; 5 uses
  store i32 %i.eg, ptr %i.bf, align 4, !tbaa !59
  store i32 %i.ee, ptr %i.bg, align 4, !tbaa !18
  store i32 %i.eg, ptr %i.bh, align 16, !tbaa !19
  store i32 %1, ptr %i.ar, align 8, !tbaa !59
  store i32 %2, ptr %i.as, align 4, !tbaa !59
  br i1 %i.r, label %.loopexit.loopexit259, label %.loopexit

.loopexit.loopexit259:                            ; preds = %.thread
  %spec.store.select245.us = call i32 @llvm.smin.i32(i32 %i.cz, i32 %i.cx)
  store i32 %spec.store.select245.us, ptr %i.an, align 8
  %i.eh = load i32, ptr %i.ay, align 8, !tbaa !25 ; 2 uses
  %i.ei = shl i32 %i.eh, %3
  %spec.store.select246.us = call i32 @llvm.smin.i32(i32 %i.cw, i32 %i.ei)
  store i32 %spec.store.select246.us, ptr %i.br, align 4
  %spec.store.select245.us.1 = call i32 @llvm.smin.i32(i32 %i.dh, i32 %i.cx)
  store i32 %spec.store.select245.us.1, ptr %i.az, align 16
  %i.ej = shl i32 %i.eh, %3
  %spec.store.select246.us.1 = call i32 @llvm.smin.i32(i32 %i.dy, i32 %i.ej)
  store i32 %spec.store.select246.us.1, ptr %i.bs, align 4
  store i32 %spec.store.select, ptr %i.bb, align 8
  %i.ek = load i32, ptr %i.ay, align 8, !tbaa !25 ; 2 uses
  %i.el = shl i32 %i.ek, %3
  %spec.store.select246.us.2 = call i32 @llvm.smin.i32(i32 %i.ec, i32 %i.el)
  store i32 %spec.store.select246.us.2, ptr %i.bt, align 4
  %spec.store.select245.us.3 = call i32 @llvm.smin.i32(i32 %i.ee, i32 %i.cx)
  store i32 %spec.store.select245.us.3, ptr %i.be, align 16
  %i.em = shl i32 %i.ek, %3
  %spec.store.select246.us.3 = call i32 @llvm.smin.i32(i32 %i.eg, i32 %i.em)
  store i32 %spec.store.select246.us.3, ptr %i.bu, align 4
  %spec.store.select245.us.8 = call i32 @llvm.smin.i32(i32 %1, i32 %i.cx)
  store i32 %spec.store.select245.us.8, ptr %i.ar, align 8
  %i.en = load i32, ptr %i.ay, align 8, !tbaa !25
  %i.eo = shl i32 %i.en, %3
  %spec.store.select246.us.8 = call i32 @llvm.smin.i32(i32 %2, i32 %i.eo)
  store i32 %spec.store.select246.us.8, ptr %i.bv, align 4
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.n
  %spec.store.select245 = call i32 @llvm.smin.i32(i32 %i.cz, i32 %i.cx)
  store i32 %spec.store.select245, ptr %i.an, align 8
  %i.ep = load i32, ptr %i.ay, align 8, !tbaa !25 ; 2 uses
  %i.eq = shl i32 %i.ep, %3
  %spec.store.select246 = call i32 @llvm.smin.i32(i32 %i.cw, i32 %i.eq)
  store i32 %spec.store.select246, ptr %i.bw, align 4
  %spec.store.select245.8 = call i32 @llvm.smin.i32(i32 %1, i32 %i.cx)
  store i32 %spec.store.select245.8, ptr %i.ar, align 8
  %i.er = shl i32 %i.ep, %3
  %spec.store.select246.8 = call i32 @llvm.smin.i32(i32 %2, i32 %i.er)
  store i32 %spec.store.select246.8, ptr %i.bx, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.thread, %.loopexit.loopexit259, %.loopexit.loopexit, %bb.n
  %storemerge280 = phi i32 [ %i.eg, %.loopexit.loopexit259 ], [ %i.cw, %.loopexit.loopexit ], [ %i.cw, %bb.n ], [ %i.eg, %.thread ]
  %storemerge275278 = phi i32 [ %i.ee, %.loopexit.loopexit259 ], [ %i.cz, %.loopexit.loopexit ], [ %i.cz, %bb.n ], [ %i.ee, %.thread ]
  %i.es = load ptr, ptr %i.at, align 16, !tbaa !145
  %i.et = trunc nuw nsw i64 %indvars.iv to i32    ; 6 uses
  %i.eu = call fastcc i32 @epzs_motion_search2(ptr noundef nonnull %0, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.a, i32 noundef %i.et, i32 noundef %i.et, ptr noundef %i.es, i32 noundef %i.au, i32 noundef 1)
  %i.ev = load ptr, ptr %i.bi, align 16, !tbaa !113
  %i.ew = call i32 %i.ev(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef %i.eu, i32 noundef %i.et, i32 noundef %i.et, i32 noundef 1, i32 noundef 8) #14
  %i.ex = load ptr, ptr %i.bj, align 8, !tbaa !20
  %i.ey = load ptr, ptr %i.bk, align 8, !tbaa !20
  %.not235 = icmp eq ptr %i.ex, %i.ey
  br i1 %.not235, label %bb.s, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %4 = and i32 %i.et, 1
  %i.ez = lshr i32 %i.et, 1
  %i.fa = mul nuw nsw i32 %i.ez, %i.f
  %i.fb = add nsw i32 %i.fa, %4
  %i.fc = shl nsw i32 %i.fb, 3
  %i.fd = load ptr, ptr %i.bl, align 16, !tbaa !152
  %i.fe = sext i32 %i.fc to i64
  %i.ff = getelementptr inbounds i8, ptr %i.fd, i64 %i.fe ; 2 uses
  %i.fg = load i32, ptr %i.bm, align 4, !tbaa !128
  %.not236 = icmp eq i32 %i.fg, 0
  %i.fh = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %indvars.iv
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !61 ; 2 uses
  %i.fj = load i32, ptr %i.b, align 4, !tbaa !59  ; 4 uses
  %i.fk = load i32, ptr %i.c, align 4, !tbaa !59  ; 4 uses
  br i1 %.not236, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fl = ashr i32 %i.fj, 2
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds i8, ptr %i.fi, i64 %i.fm
  %i.fo = ashr i32 %i.fk, 2
  %i.fp = mul nsw i32 %i.fo, %i.f
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds i8, ptr %i.fn, i64 %i.fq
  %i.fs = shl i32 %i.fk, 2
  %i.ft = and i32 %i.fs, 12
  %i.fu = and i32 %i.fj, 3
  %i.fv = or disjoint i32 %i.ft, %i.fu
  %i.fw = load ptr, ptr %i.bn, align 16, !tbaa !65
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 128
  %i.fy = zext nneg i32 %i.fv to i64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fy
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !20
  call void %i.ga(ptr noundef %i.ff, ptr noundef %i.fr, i64 noundef %i.bo) #14
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.gb = ashr i32 %i.fj, 1
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds i8, ptr %i.fi, i64 %i.gc
  %i.ge = ashr i32 %i.fk, 1
  %i.gf = mul nsw i32 %i.ge, %i.f
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds i8, ptr %i.gd, i64 %i.gg
  %i.gi = shl i32 %i.fk, 1
  %i.gj = and i32 %i.gi, 2
  %i.gk = and i32 %i.fj, 1
  %i.gl = or disjoint i32 %i.gj, %i.gk
  %i.gm = load ptr, ptr %i.bp, align 16, !tbaa !62
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.go = zext nneg i32 %i.gl to i64
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.go
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !20
  call void %i.gq(ptr noundef %i.ff, ptr noundef %i.gh, i64 noundef %i.bo, i32 noundef 8) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.gr = load i32, ptr %i.b, align 4, !tbaa !59
  %i.gs = sub nsw i32 %i.gr, %storemerge275278
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds i8, ptr %i.h, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !68
  %i.gw = zext i8 %i.gv to i32
  %i.gx = load i32, ptr %i.c, align 4, !tbaa !59
  %i.gy = sub nsw i32 %i.gx, %storemerge280
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds i8, ptr %i.h, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !68
  %i.hc = zext i8 %i.hb to i32
  %i.hd = add nuw nsw i32 %i.hc, %i.gw
  %i.he = load i32, ptr %i.bq, align 16, !tbaa !9
  %i.hf = mul nsw i32 %i.hd, %i.he
  br label %bb.s

bb.s:                                             ; preds = %.loopexit, %bb.r
  %.pn = phi i32 [ %i.hf, %bb.r ], [ %i.ew, %.loopexit ]
  %.1 = add nsw i32 %.pn, %.0213256               ; 3 uses
  %i.hg = load i32, ptr %i.bm, align 4, !tbaa !128
  %.not237 = icmp eq i32 %i.hg, 0
  %i.hh = load i32, ptr %i.b, align 4, !tbaa !59  ; 4 uses
  br i1 %.not237, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hi = sdiv i32 %i.hh, 2
  %i.hj = load i32, ptr %i.c, align 4, !tbaa !59  ; 2 uses
  %i.hk = sdiv i32 %i.hj, 2
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.hl = load i32, ptr %i.c, align 4, !tbaa !59  ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.hm = phi i32 [ %i.hj, %bb.t ], [ %i.hl, %bb.u ]
  %.pn238 = phi i32 [ %i.hi, %bb.t ], [ %i.hh, %bb.u ]
  %.pn239 = phi i32 [ %i.hk, %bb.t ], [ %i.hl, %bb.u ]
  %.1220 = add nsw i32 %.pn239, %.0219254         ; 3 uses
  %.1222 = add nsw i32 %.pn238, %.0221253         ; 3 uses
  %i.hn = trunc i32 %i.hh to i16
  %i.ho = load ptr, ptr %i.am, align 16, !tbaa !144
  %i.hp = load i32, ptr %i.bz, align 4, !tbaa !59
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.hq ; 2 uses
  store i16 %i.hn, ptr %i.hr, align 2, !tbaa !79
  %i.hs = trunc i32 %i.hm to i16
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  store i16 %i.hs, ptr %i.ht, align 2, !tbaa !79
  %.not240 = icmp eq i32 %i.hh, %1
  %i.hu = load i32, ptr %i.c, align 4
  %.not241 = icmp eq i32 %i.hu, %2
  %or.cond242 = select i1 %.not240, i1 %.not241, i1 false
  %.1217 = select i1 %or.cond242, i32 %.0216255, i32 0 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.w, label %bb.e, !llvm.loop !157

bb.w:                                             ; preds = %bb.v
  %.not232 = icmp eq i32 %.1217, 0
  br i1 %.not232, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.hv = load ptr, ptr %i.bj, align 8, !tbaa !20
  %i.hw = load ptr, ptr %i.bk, align 8, !tbaa !20 ; 2 uses
  %.not233 = icmp eq ptr %i.hv, %i.hw
  br i1 %.not233, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 4464
  %i.hy = load ptr, ptr %i.hx, align 16, !tbaa !129
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !61
  %i.ia = load i32, ptr %i.av, align 4, !tbaa !71
  %i.ib = shl nsw i32 %i.ia, 4
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds i8, ptr %i.hz, i64 %i.ic
  %i.ie = load i32, ptr %i.ax, align 8, !tbaa !72
  %i.if = shl i32 %i.f, 4
  %i.ig = mul i32 %i.if, %i.ie
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds i8, ptr %i.id, i64 %i.ih
  %i.ij = load ptr, ptr %i.bl, align 16, !tbaa !152
  %i.ik = call i32 %i.hw(ptr noundef nonnull %0, ptr noundef %i.ii, ptr noundef %i.ij, i64 noundef %i.bo, i32 noundef 16) #14
  %i.il = add nsw i32 %i.ik, %.1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.2 = phi i32 [ %i.il, %bb.y ], [ %.1, %bb.x ]  ; 2 uses
  %i.im = load ptr, ptr %i.d, align 16, !tbaa !80
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 252
  %i.io = load i32, ptr %i.in, align 4, !tbaa !109 ; 2 uses
  %i.ip = and i32 %i.io, 256
  %.not234 = icmp eq i32 %i.ip, 0
  br i1 %.not234, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.iq = and i32 %.1222, 15
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw i8, ptr @ff_h263_round_chroma.h263_chroma_roundtab, i64 %i.ir
  %i.it = load i8, ptr %i.is, align 1, !tbaa !68
  %i.iu = zext i8 %i.it to i32
  %i.iv = ashr i32 %.1222, 3
  %i.iw = add nsw i32 %i.iv, %i.iu                ; 2 uses
  %i.ix = and i32 %.1220, 15
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr @ff_h263_round_chroma.h263_chroma_roundtab, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !68
  %i.jb = zext i8 %i.ja to i32
  %i.jc = ashr i32 %.1220, 3
  %i.jd = add nsw i32 %i.jc, %i.jb                ; 2 uses
  %i.je = shl nsw i32 %i.jd, 1
  %i.jf = and i32 %i.je, 2
  %i.jg = and i32 %i.iw, 1
  %i.jh = or disjoint i32 %i.jf, %i.jg
  %i.ji = load i32, ptr %i.av, align 4, !tbaa !71
  %i.jj = shl nsw i32 %i.ji, 3
  %i.jk = ashr i32 %i.iw, 1
  %i.jl = add nsw i32 %i.jj, %i.jk
  %i.jm = load i32, ptr %i.ax, align 8, !tbaa !72
  %i.jn = shl nsw i32 %i.jm, 3
  %i.jo = ashr i32 %i.jd, 1
  %i.jp = add nsw i32 %i.jn, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !126 ; 2 uses
  %i.js = trunc i64 %i.jr to i32
  %i.jt = mul i32 %i.jp, %i.js
  %i.ju = add i32 %i.jl, %i.jt
  %i.jv = load ptr, ptr %i.bp, align 16, !tbaa !62
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  %i.jx = zext nneg i32 %i.jh to i64              ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.jx
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !20
  %i.ka = load ptr, ptr %i.bl, align 16, !tbaa !152
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !61
  %i.kd = sext i32 %i.ju to i64                   ; 2 uses
  %i.ke = getelementptr inbounds i8, ptr %i.kc, i64 %i.kd
  call void %i.jz(ptr noundef %i.ka, ptr noundef %i.ke, i64 noundef %i.jr, i32 noundef 8) #14
  %i.kf = load ptr, ptr %i.bp, align 16, !tbaa !62
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.jx
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !20
  %i.kj = load ptr, ptr %i.bl, align 16, !tbaa !152
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
end_hunk_0
begin_hunk_1_@ff_fix_long_mvs:bb.a
  store i16 %i.bt, ptr %i.bg, align 2, !tbaa !79
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  store i16 0, ptr %i.bu, align 2, !tbaa !79
  store i16 0, ptr %i.bk, align 2, !tbaa !79
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, 1
  %i.bv = add nuw nsw i32 %.073100.us.us, 1       ; 2 uses
  %exitcond119.not = icmp eq i32 %i.bv, %i.v
  br i1 %exitcond119.not, label %._crit_edge.split.us.us.split, label %bb.j, !llvm.loop !193

._crit_edge.split.us.us.split:                    ; preds = %bb.n
  %i.bw = add nuw nsw i32 %.075102.us, 1          ; 2 uses
  %indvars.iv.next115 = add i32 %indvars.iv114, %i.t
  %exitcond120.not = icmp eq i32 %i.bw, %i.q
  br i1 %exitcond120.not, label %._crit_edge105.split, label %.lr.ph.us, !llvm.loop !194

.lr.ph:                                           ; preds = %.lr.ph104.split, %._crit_edge.split
  %indvars.iv = phi i32 [ %indvars.iv.next, %._crit_edge.split ], [ 0, %.lr.ph104.split ] ; 2 uses
  %.075102 = phi i32 [ %i.ct, %._crit_edge.split ], [ 0, %.lr.ph104.split ]
  %i.bx = sext i32 %indvars.iv to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv110 = phi i64 [ %i.bx, %.lr.ph ], [ %indvars.iv.next111, %bb.w ] ; 4 uses
  %.073100 = phi i32 [ 0, %.lr.ph ], [ %i.cs, %bb.w ]
  %i.by = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %indvars.iv110
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !79
  %i.ca = zext i16 %i.bz to i32
  %i.cb = and i32 %5, %i.ca
  %.not90 = icmp eq i32 %i.cb, 0
  br i1 %.not90, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.not89, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds i8, ptr %1, i64 %indvars.iv110
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !68
  %i.ce = zext i8 %i.cd to i32
  %i.cf = icmp eq i32 %2, %i.ce
  br i1 %i.cf, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cg = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv110 ; 4 uses
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !79
  %i.ci = sext i16 %i.ch to i32                   ; 3 uses
  %.not91 = icmp sle i32 %.074, %i.ci
  %i.cj = icmp slt i32 %i.ci, %i.x                ; 2 uses
  %or.cond97 = select i1 %.not91, i1 true, i1 %i.cj
  br i1 %or.cond97, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !79
  %i.cm = sext i16 %i.cl to i32                   ; 2 uses
  %.not92 = icmp sle i32 %i.o, %i.cm
  %i.cn = icmp slt i32 %i.cm, %i.y
  %or.cond99 = select i1 %.not92, i1 true, i1 %i.cn
  br i1 %or.cond99, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not94 = icmp sle i32 %.074, %i.ci             ; 2 uses
  %brmerge = select i1 %.not94, i1 true, i1 %i.cj
  br i1 %brmerge, label %.sink.split, label %bb.u

.sink.split:                                      ; preds = %bb.t
  %.mux = select i1 %.not94, i16 %i.aa, i16 %i.ab
  store i16 %.mux, ptr %i.cg, align 2, !tbaa !79
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.sink.split
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 2 ; 2 uses
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !79
  %i.cq = sext i16 %i.cp to i32                   ; 2 uses
  %.not95 = icmp sgt i32 %i.o, %i.cq
  br i1 %.not95, label %bb.v, label %.sink.split139

bb.v:                                             ; preds = %bb.u
  %i.cr = icmp slt i32 %i.cq, %i.y
  br i1 %i.cr, label %.sink.split139, label %bb.w

.sink.split139:                                   ; preds = %bb.v, %bb.u
  %.sink140 = phi i16 [ %i.ad, %bb.u ], [ %i.ae, %bb.v ]
  store i16 %.sink140, ptr %i.co, align 2, !tbaa !79
  br label %bb.w

bb.w:                                             ; preds = %.sink.split139, %bb.s, %bb.q, %bb.v, %bb.o
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, 1
  %i.cs = add nuw nsw i32 %.073100, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cs, %i.v
  br i1 %exitcond.not, label %._crit_edge.split, label %bb.o, !llvm.loop !193

._crit_edge.split:                                ; preds = %bb.w
  %i.ct = add nuw nsw i32 %.075102, 1             ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, %i.t
  %exitcond113.not = icmp eq i32 %i.ct, %i.q
  br i1 %exitcond113.not, label %._crit_edge105.split, label %.lr.ph, !llvm.loop !194

._crit_edge105.split:                             ; preds = %._crit_edge.split, %._crit_edge.split.us.us.split, %._crit_edge.split.us.us.split.us.us, %.lr.ph104, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cmp_fpel_internal(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %9, 4
  %.not = icmp eq i32 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5032
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21   ; 16 uses
  br i1 %.not, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %9, 1                            ; 5 uses
  %i.e = add nuw nsw i32 %i.d, 1                  ; 8 uses
  %i.f = shl i32 %1, %i.e                         ; 5 uses
  %i.g = shl i32 %2, %i.e                         ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4904
  %i.i = sext i32 %5 to i64
  %i.j = getelementptr inbounds [32 x i8], ptr %i.h, i64 %i.i ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4776
  %i.l = sext i32 %6 to i64
  %i.m = getelementptr inbounds [32 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4748
  %i.o = load i32, ptr %i.n, align 4, !tbaa !22
  %.not.i = icmp slt i32 %1, %i.o
  br i1 %.not.i, label %cmp_direct_inline.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4752
  %i.q = load i32, ptr %i.p, align 8, !tbaa !23
  %i.r = shl i32 %i.q, %i.e
  %.not228.i = icmp sgt i32 %i.f, %i.r
  br i1 %.not228.i, label %cmp_direct_inline.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4756
  %i.t = load i32, ptr %i.s, align 4, !tbaa !24
  %.not229.i = icmp slt i32 %2, %i.t
  br i1 %.not229.i, label %cmp_direct_inline.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4760
  %i.v = load i32, ptr %i.u, align 8, !tbaa !25
  %i.w = shl i32 %i.v, %i.e
  %.not230.i = icmp sgt i32 %i.g, %i.w
  br i1 %.not230.i, label %cmp_direct_inline.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3760
  %i.y = load i16, ptr %i.x, align 16, !tbaa !26
  %i.z = zext i16 %i.y to i32                     ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3762
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !57
  %i.ac = zext i16 %i.ab to i32                   ; 3 uses
  %i.ad = shl nuw nsw i32 %i.d, 1
  %i.ae = or disjoint i32 %i.ad, 1                ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2732
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !58
  %i.ah = icmp eq i32 %i.ag, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4656 ; 2 uses
  br i1 %i.ah, label %.preheader, label %bb.q

.preheader:                                       ; preds = %bb.f
  %.not234.i = icmp eq i32 %i.f, 0
  %.not235.i = icmp eq i32 %i.g, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4696
  %i.ak = shl nsw i32 %i.c, 3
  %.not236.i = icmp eq i32 %i.d, 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4624
  %i.am = sub nsw i32 %i.ac, %i.z                 ; 2 uses
  %i.an = or disjoint i32 %i.d, 4                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 5344
  %i.ap = sext i32 %i.c to i64                    ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 5352
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 5328
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 5336
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.p ] ; 8 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !59
  %i.aw = add nsw i32 %i.av, %i.f                 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !59
  %i.az = add nsw i32 %i.ay, %i.g                 ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !59 ; 2 uses
  br i1 %.not234.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = sub nsw i32 %i.aw, %i.bb
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bd = mul nsw i32 %i.bb, %i.am
  %i.be = sdiv i32 %i.bd, %i.z
  %i.bf = trunc nuw nsw i64 %indvars.iv to i32
  %i.bg = and i32 %i.bf, 1
  %i.bh = shl nuw nsw i32 %i.bg, %i.an
  %i.bi = add nsw i32 %i.be, %i.bh
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bj = phi i32 [ %i.bc, %bb.h ], [ %i.bi, %bb.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4628
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !59 ; 2 uses
  br i1 %.not235.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = sub nsw i32 %i.az, %i.bm
  %.pre = trunc nuw nsw i64 %indvars.iv to i32
  %.pre24 = lshr i32 %.pre, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bo = mul nsw i32 %i.bm, %i.am
  %i.bp = sdiv i32 %i.bo, %i.z
  %i.bq = trunc nuw nsw i64 %indvars.iv to i32
  %i.br = lshr i32 %i.bq, 1                       ; 2 uses
  %i.bs = shl nuw nsw i32 %i.br, %i.an
  %i.bt = add nsw i32 %i.bp, %i.bs
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pre-phi25 = phi i32 [ %i.br, %bb.l ], [ %.pre24, %bb.k ]
  %i.bu = phi i32 [ %i.bt, %bb.l ], [ %i.bn, %bb.k ] ; 3 uses
  %i.bv = and i32 %i.aw, %i.ae
  %i.bw = and i32 %i.az, %i.ae
  %i.bx = shl nuw nsw i32 %i.bw, %i.e
  %i.by = add nuw nsw i32 %i.bx, %i.bv
  %i.bz = and i32 %i.bj, %i.ae
  %i.ca = and i32 %i.bu, %i.ae
  %i.cb = shl nuw nsw i32 %i.ca, %i.e
  %i.cc = add nuw nsw i32 %i.cb, %i.bz
  %i.cd = load ptr, ptr %i.aj, align 8, !tbaa !60
  %i.ce = shl i64 %indvars.iv, 3
  %i.cf = and i64 %i.ce, 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cf
  %i.ch = mul nuw nsw i32 %i.ak, %.pre-phi25
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 %i.ci ; 4 uses
  %i.ck = zext nneg i32 %i.by to i64              ; 2 uses
  %i.cl = load ptr, ptr %i.j, align 8, !tbaa !61  ; 2 uses
  %i.cm = zext nneg i32 %i.cc to i64              ; 2 uses
  br i1 %.not236.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = load ptr, ptr %i.ao, align 16, !tbaa !65
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 128
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.ck
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !20
  %i.cr = ashr i32 %i.aw, 2
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %i.cl, i64 %i.cs
  %i.cu = ashr i32 %i.az, 2
  %i.cv = mul nsw i32 %i.cu, %i.c
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds i8, ptr %i.ct, i64 %i.cw
  tail call void %i.cq(ptr noundef %i.cj, ptr noundef %i.cx, i64 noundef %i.ap) #14, !inline_history !195
  %i.cy = load ptr, ptr %i.aq, align 8, !tbaa !66
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 128
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cm
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !20
  %i.dc = load ptr, ptr %i.ar, align 8, !tbaa !61
  %i.dd = ashr i32 %i.bj, 2
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 %i.de
  %i.dg = ashr i32 %i.bu, 2
  %i.dh = mul nsw i32 %i.dg, %i.c
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds i8, ptr %i.df, i64 %i.di
  tail call void %i.db(ptr noundef %i.cj, ptr noundef %i.dj, i64 noundef %i.ap) #14, !inline_history !195
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.dk = load ptr, ptr %i.as, align 16, !tbaa !62
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.ck
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !20
  %i.do = ashr i32 %i.aw, 1
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds i8, ptr %i.cl, i64 %i.dp
  %i.dr = ashr i32 %i.az, 1
  %i.ds = mul nsw i32 %i.dr, %i.c
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr %i.dq, i64 %i.dt
  tail call void %i.dn(ptr noundef %i.cj, ptr noundef %i.du, i64 noundef %i.ap, i32 noundef 8) #14, !inline_history !195
  %i.dv = load ptr, ptr %i.at, align 8, !tbaa !64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.cm
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !20
  %i.dz = load ptr, ptr %i.ar, align 8, !tbaa !61
  %i.ea = ashr i32 %i.bj, 1
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds i8, ptr %i.dz, i64 %i.eb
  %i.ed = ashr i32 %i.bu, 1
  %i.ee = mul nsw i32 %i.ed, %i.c
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds i8, ptr %i.ec, i64 %i.ef
  tail call void %i.dy(ptr noundef %i.cj, ptr noundef %i.eg, i64 noundef %i.ap, i32 noundef 8) #14, !inline_history !195
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !196

bb.q:                                             ; preds = %bb.f
  %i.eh = load i32, ptr %i.ai, align 16, !tbaa !59
  %i.ei = add nsw i32 %i.eh, %i.f                 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 4660
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !59
  %i.el = add nsw i32 %i.ek, %i.g                 ; 4 uses
  %.not231.i = icmp eq i32 %i.f, 0
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 4624
  %i.en = load i32, ptr %i.em, align 16, !tbaa !59 ; 2 uses
  br i1 %.not231.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eo = sub nsw i32 %i.ei, %i.en
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ep = sub nsw i32 %i.ac, %i.z
  %i.eq = mul nsw i32 %i.en, %i.ep
  %i.er = sdiv i32 %i.eq, %i.z
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.es = phi i32 [ %i.eo, %bb.r ], [ %i.er, %bb.s ] ; 3 uses
  %.not232.i = icmp eq i32 %i.g, 0
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 4628
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !59 ; 2 uses
  br i1 %.not232.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ev = sub nsw i32 %i.el, %i.eu
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ew = sub nsw i32 %i.ac, %i.z
  %i.ex = mul nsw i32 %i.eu, %i.ew
  %i.ey = sdiv i32 %i.ex, %i.z
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ez = phi i32 [ %i.ev, %bb.u ], [ %i.ey, %bb.v ] ; 3 uses
  %i.fa = and i32 %i.ei, %i.ae
  %i.fb = and i32 %i.el, %i.ae
  %i.fc = shl nuw nsw i32 %i.fb, %i.e
  %i.fd = add nuw nsw i32 %i.fc, %i.fa            ; 2 uses
  %i.fe = and i32 %i.es, %i.ae
  %i.ff = and i32 %i.ez, %i.ae
  %i.fg = shl nuw nsw i32 %i.ff, %i.e
  %i.fh = add nuw nsw i32 %i.fg, %i.fe            ; 2 uses
  %.not233.i = icmp eq i32 %i.d, 0
  br i1 %.not233.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 5344 ; 4 uses
  %i.fj = load ptr, ptr %i.fi, align 16, !tbaa !65
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 128
  %i.fl = zext nneg i32 %i.fd to i64              ; 4 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fl
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !20
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 4696 ; 8 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !60
  %i.fq = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.fr = ashr i32 %i.ei, 2
  %i.fs = sext i32 %i.fr to i64                   ; 4 uses
  %i.ft = getelementptr inbounds i8, ptr %i.fq, i64 %i.fs
  %i.fu = ashr i32 %i.el, 2
  %i.fv = mul nsw i32 %i.fu, %i.c
  %i.fw = sext i32 %i.fv to i64                   ; 4 uses
  %i.fx = getelementptr inbounds i8, ptr %i.ft, i64 %i.fw
  %i.fy = sext i32 %i.c to i64                    ; 9 uses
  tail call void %i.fn(ptr noundef %i.fp, ptr noundef %i.fx, i64 noundef %i.fy) #14, !inline_history !195
  %i.fz = load ptr, ptr %i.fi, align 16, !tbaa !65
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 128
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.fl
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !20
  %i.gd = load ptr, ptr %i.fo, align 8, !tbaa !60
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 %i.fs
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 %i.fw
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  tail call void %i.gc(ptr noundef nonnull %i.ge, ptr noundef nonnull %i.gi, i64 noundef %i.fy) #14, !inline_history !195
  %i.gj = load ptr, ptr %i.fi, align 16, !tbaa !65
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 128
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.fl
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !20
  %i.gn = load ptr, ptr %i.fo, align 8, !tbaa !60
  %i.go = shl nsw i32 %i.c, 3
  %i.gp = sext i32 %i.go to i64                   ; 8 uses
  %i.gq = getelementptr inbounds i8, ptr %i.gn, i64 %i.gp
  %i.gr = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 %i.fs
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 %i.fw
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 %i.gp
  tail call void %i.gm(ptr noundef %i.gq, ptr noundef %i.gu, i64 noundef %i.fy) #14, !inline_history !195
  %i.gv = load ptr, ptr %i.fi, align 16, !tbaa !65
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 128
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.fl
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !20
  %i.gz = load ptr, ptr %i.fo, align 8, !tbaa !60
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 %i.gp
  %i.hc = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 %i.fs
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 %i.fw
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = getelementptr inbounds i8, ptr %i.hf, i64 %i.gp
  tail call void %i.gy(ptr noundef nonnull %i.hb, ptr noundef nonnull %i.hg, i64 noundef %i.fy) #14, !inline_history !195
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 5352 ; 4 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !66
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 128
  %i.hk = zext nneg i32 %i.fh to i64              ; 4 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.hk
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !20
  %i.hn = load ptr, ptr %i.fo, align 8, !tbaa !60
  %i.ho = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 4 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !61
  %i.hq = ashr i32 %i.es, 2
  %i.hr = sext i32 %i.hq to i64                   ; 4 uses
  %i.hs = getelementptr inbounds i8, ptr %i.hp, i64 %i.hr
  %i.ht = ashr i32 %i.ez, 2
  %i.hu = mul nsw i32 %i.ht, %i.c
  %i.hv = sext i32 %i.hu to i64                   ; 4 uses
  %i.hw = getelementptr inbounds i8, ptr %i.hs, i64 %i.hv
  tail call void %i.hm(ptr noundef %i.hn, ptr noundef %i.hw, i64 noundef %i.fy) #14, !inline_history !195
  %i.hx = load ptr, ptr %i.hh, align 8, !tbaa !66
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 128
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.hk
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !20
  %i.ib = load ptr, ptr %i.fo, align 8, !tbaa !60
end_hunk_1
