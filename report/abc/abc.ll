Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abc?download=true
inline.NumInlined: 2413
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Abc_CommandAbc9Cec:bb.a
  %i.kl = load i32, ptr %3, align 8, !tbaa !316
  %i.km = load i32, ptr %i.i, align 8, !tbaa !319
  %i.kn = call ptr @Cec4_ManSimulateTest3(ptr noundef nonnull %.0283, i32 noundef %i.kl, i32 noundef %i.km) #37 ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !77
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 64
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !74
  %i.ks = getelementptr i8, ptr %i.kr, i64 4
  %.val3.i = load i32, ptr %i.ks, align 4, !tbaa !55
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kn, i64 72
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !71
  %i.kv = getelementptr i8, ptr %i.ku, i64 4
  %.val.i = load i32, ptr %i.kv, align 4, !tbaa !55
  %i.kw = add i32 %.val3.i, 1
  %.neg = add i32 %i.kw, %.val.i
  %i.kx = icmp eq i32 %i.kp, %.neg
  %.str.4213..str.4215 = select i1 %i.kx, ptr @.str.4213, ptr @.str.4215
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull %.str.4213..str.4215)
  %i.ky = call fastcc i64 @Abc_Clock()
  %i.kz = sub nsw i64 %i.ky, %i.kk
  call fastcc void @Abc_PrintTime(ptr noundef nonnull @.str.1208, i64 noundef %i.kz)
  call void @Gia_ManStop(ptr noundef nonnull %i.kn) #37
  br label %bb.eh

bb.ee:                                            ; preds = %.critedge376
  %.not344 = icmp eq i32 %.0272, 0
  br i1 %.not344, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.la = call fastcc i64 @Abc_Clock()
  %i.lb = load i32, ptr %3, align 8, !tbaa !316
  %i.lc = load i32, ptr %i.i, align 8, !tbaa !319
  %i.ld = call ptr @Cec5_ManSimulateTest3(ptr noundef nonnull %.0283, i32 noundef %i.lb, i32 noundef %i.lc) #37 ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !77
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 64
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !74
  %i.li = getelementptr i8, ptr %i.lh, i64 4
  %.val3.i404 = load i32, ptr %i.li, align 4, !tbaa !55
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ld, i64 72
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !71
  %i.ll = getelementptr i8, ptr %i.lk, i64 4
  %.val.i405 = load i32, ptr %i.ll, align 4, !tbaa !55
  %i.lm = add i32 %.val3.i404, 1
  %.neg427 = add i32 %i.lm, %.val.i405
  %i.ln = icmp eq i32 %i.lf, %.neg427
  %.str.4213..str.4215748 = select i1 %i.ln, ptr @.str.4213, ptr @.str.4215
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull %.str.4213..str.4215748)
  %i.lo = call fastcc i64 @Abc_Clock()
  %i.lp = sub nsw i64 %i.lo, %i.la
  call fastcc void @Abc_PrintTime(ptr noundef nonnull @.str.1208, i64 noundef %i.lp)
  call void @Gia_ManStop(ptr noundef nonnull %i.ld) #37
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ee
  %i.lq = call i32 @Cec_ManVerify(ptr noundef nonnull %.0283, ptr noundef nonnull %3) #37
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i32 %i.lq, ptr %i.lr, align 8, !tbaa !101
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ii, i64 376
  call void @Abc_FrameReplaceCex(ptr noundef nonnull %0, ptr noundef nonnull %i.ls)
  br label %bb.eh

bb.eh:                                            ; preds = %bb.dy, %bb.ec, %bb.eb, %bb.ed, %bb.eg, %bb.ef
  call void @Gia_ManStop(ptr noundef nonnull %.0283) #37
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.dp
  %i.lt = load ptr, ptr %i.dy, align 8, !tbaa !72
  %.not346 = icmp eq ptr %i.ii, %i.lt
  br i1 %.not346, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @Gia_ManStop(ptr noundef nonnull %i.ii) #37
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !271
  %.not347 = icmp eq ptr %i.ij, %i.lv
  br i1 %.not347, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  call void @Gia_ManStop(ptr noundef nonnull %i.ij) #37
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  call fastcc void @Vec_PtrFree(ptr noundef %calloc)
  call fastcc void @Vec_PtrFree(ptr noundef %calloc663)
  call fastcc void @Vec_PtrFree(ptr noundef %calloc664)
  br label %.thread414

.loopexit.sink.split:                             ; preds = %bb.am, %bb.ac, %bb.s, %bb.i, %bb.g, %bb.e, %bb.c
  %.str.1363.sink = phi ptr [ @.str.4207, %bb.ac ], [ @.str.4206, %bb.s ], [ @.str.4205, %bb.i ], [ @.str.2928, %bb.g ], [ @.str.880, %bb.e ], [ @.str.578, %bb.c ], [ @.str.1363, %bb.am ]
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull %.str.1363.sink)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.f, %bb.d, %.loopexit.sink.split
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4223)
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4224)
  %i.lw = load i32, ptr %3, align 8, !tbaa !316
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2106, i32 noundef %i.lw)
  %i.lx = load i32, ptr %i.l, align 4, !tbaa !317
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2834, i32 noundef %i.lx)
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4225)
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4226)
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4227)
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4228)
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4229)
  %i.ly = load i32, ptr %i.k, align 8, !tbaa !1237
  %.not364 = icmp eq i32 %i.ly, 0
  %i.lz = select i1 %.not364, ptr @.str.593, ptr @.str.592
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4230, ptr noundef nonnull %i.lz)
  %.not365 = icmp eq i32 %.0270, 0
  %i.ma = select i1 %.not365, ptr @.str.4232, ptr @.str.110
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4231, ptr noundef nonnull %i.ma)
  %.not366 = icmp eq i32 %.0268, 0
  %i.mb = select i1 %.not366, ptr @.str.593, ptr @.str.592
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4233, ptr noundef nonnull %i.mb)
  %.not367 = icmp eq i32 %.0264, 0
  %i.mc = select i1 %.not367, ptr @.str.593, ptr @.str.592
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4234, ptr noundef nonnull %i.mc)
  %.not368 = icmp eq i32 %.0266, 0
  %i.md = select i1 %.not368, ptr @.str.593, ptr @.str.592
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4235, ptr noundef nonnull %i.md)
  %i.me = load i32, ptr %i.j, align 8, !tbaa !1238
  %.not369 = icmp eq i32 %i.me, 0
  %i.mf = select i1 %.not369, ptr @.str.593, ptr @.str.592
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4236, ptr noundef nonnull %i.mf)
  %.not370 = icmp eq i32 %.0274, 0
  %i.mg = select i1 %.not370, ptr @.str.593, ptr @.str.592
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4091, ptr noundef nonnull %i.mg)
  %.not371 = icmp eq i32 %.0272, 0
  %i.mh = select i1 %.not371, ptr @.str.593, ptr @.str.592
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4092, ptr noundef nonnull %i.mh)
  %.not372 = icmp eq i32 %.0276, 0
  %i.mi = select i1 %.not372, ptr @.str.593, ptr @.str.592
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4237, ptr noundef nonnull %i.mi)
  %i.mj = load i32, ptr %i.i, align 8, !tbaa !319
  %.not373 = icmp eq i32 %i.mj, 0
  %i.mk = select i1 %.not373, ptr @.str.593, ptr @.str.592
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2211, ptr noundef nonnull %i.mk)
  %i.ml = load i32, ptr %i.h, align 4, !tbaa !320
  %.not374 = icmp eq i32 %i.ml, 0
  %i.mm = select i1 %.not374, ptr @.str.593, ptr @.str.592
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4238, ptr noundef nonnull %i.mm)
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.594)
  %i.mn = load ptr, ptr %i.c, align 8, !tbaa !42  ; 2 uses
  %.not.i406 = icmp eq ptr %i.mn, null
  br i1 %.not.i406, label %Vec_PtrFree.exit407, label %bb.en

bb.en:                                            ; preds = %.loopexit
  call void @free(ptr noundef nonnull %i.mn) #37
  br label %Vec_PtrFree.exit407

Vec_PtrFree.exit407:                              ; preds = %.loopexit, %bb.en
  call void @free(ptr noundef nonnull %calloc) #37
  %i.mo = load ptr, ptr %i.e, align 8, !tbaa !42  ; 2 uses
  %.not.i408 = icmp eq ptr %i.mo, null
  br i1 %.not.i408, label %Vec_PtrFree.exit409, label %bb.eo

bb.eo:                                            ; preds = %Vec_PtrFree.exit407
  call void @free(ptr noundef nonnull %i.mo) #37
  br label %Vec_PtrFree.exit409

Vec_PtrFree.exit409:                              ; preds = %Vec_PtrFree.exit407, %bb.eo
  call void @free(ptr noundef nonnull %calloc663) #37
  %i.mp = load ptr, ptr %i.g, align 8, !tbaa !42  ; 2 uses
  %.not.i410 = icmp eq ptr %i.mp, null
  br i1 %.not.i410, label %Vec_PtrFree.exit411, label %bb.ep

bb.ep:                                            ; preds = %Vec_PtrFree.exit409
  call void @free(ptr noundef nonnull %i.mp) #37
  br label %Vec_PtrFree.exit411

Vec_PtrFree.exit411:                              ; preds = %Vec_PtrFree.exit409, %bb.ep
  call void @free(ptr noundef nonnull %calloc664) #37
  br label %.thread414

.thread414:                                       ; preds = %bb.ct, %bb.cv, %bb.cp, %bb.ck, %.thread, %Vec_PtrFree.exit411, %bb.em, %bb.dw, %bb.cn, %bb.cg, %bb.ce, %bb.bo, %bb.bl, %bb.bh, %Vec_PtrFree.exit403
  %.3 = phi i32 [ 1, %Vec_PtrFree.exit411 ], [ 1, %Vec_PtrFree.exit403 ], [ 1, %bb.bh ], [ 1, %bb.bl ], [ 1, %bb.bo ], [ 0, %bb.ce ], [ 1, %bb.cp ], [ 1, %bb.cg ], [ 0, %bb.dw ], [ 0, %bb.em ], [ %i.hf, %bb.ck ], [ 1, %bb.cn ], [ 0, %.thread ], [ 1, %bb.ct ], [ %i.hs, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Abc_CommandAbc9ICec(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) #8 {
bb.a:
  %3 = alloca %struct.Cec_ParCec_t_, align 8      ; 10 uses
  %.sroa.0 = alloca ptr, align 16                 ; 4 uses
  %.sroa.6 = alloca ptr, align 8                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @Cec_ManCecSetDefaultParams(ptr noundef nonnull %3) #37
  call void (...) @Extra_UtilGetoptReset() #37
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.h, %bb.a
  %.089.ph = phi i32 [ %i.x, %bb.h ], [ 0, %bb.a ] ; 4 uses
  %.087.ph = phi i32 [ %.087.ph184, %bb.h ], [ 0, %bb.a ]
  br label %.outer183

.outer183:                                        ; preds = %.outer, %bb.g
  %.087.ph184 = phi i32 [ %.087.ph, %.outer ], [ %i.w, %bb.g ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.outer183
  %i.d = call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.4252) #37
  switch i32 %i.d, label %.loopexit [
    i32 -1, label %bb.k
    i32 67, label %bb.c
    i32 84, label %bb.e
    i32 97, label %bb.g
    i32 120, label %bb.h
    i32 118, label %bb.i
    i32 119, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @globalUtilOptind, align 4, !tbaa !56 ; 2 uses
  %.not116 = icmp slt i32 %i.e, %1
  br i1 %.not116, label %bb.d, label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %2, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95
  %i.i = call i64 @strtol(ptr noundef nonnull captures(none) %i.h, ptr noundef null, i32 noundef 10) #37, !inline_history !2
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  store i32 %i.j, ptr %3, align 8, !tbaa !316
  %i.k = load i32, ptr @globalUtilOptind, align 4, !tbaa !56
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr @globalUtilOptind, align 4, !tbaa !56
  %i.m = icmp slt i32 %i.j, 0
  br i1 %i.m, label %.loopexit, label %.backedge

bb.e:                                             ; preds = %bb.b
  %i.n = load i32, ptr @globalUtilOptind, align 4, !tbaa !56 ; 2 uses
  %.not115 = icmp slt i32 %i.n, %1
  br i1 %.not115, label %bb.f, label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.e
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %2, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !95
  %i.r = call i64 @strtol(ptr noundef nonnull captures(none) %i.q, ptr noundef null, i32 noundef 10) #37, !inline_history !2
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  store i32 %i.s, ptr %i.c, align 4, !tbaa !317
  %i.t = load i32, ptr @globalUtilOptind, align 4, !tbaa !56
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr @globalUtilOptind, align 4, !tbaa !56
  %i.v = icmp slt i32 %i.s, 0
  br i1 %i.v, label %.loopexit, label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.d, %bb.j, %bb.i
  br label %bb.b, !llvm.loop !1244

bb.g:                                             ; preds = %bb.b
  %i.w = xor i32 %.087.ph184, 1
  br label %.outer183, !llvm.loop !1244

bb.h:                                             ; preds = %bb.b
  %i.x = xor i32 %.089.ph, 1
  br label %.outer, !llvm.loop !1244

bb.i:                                             ; preds = %bb.b
  %i.y = load i32, ptr %i.b, align 8, !tbaa !319
  %i.z = xor i32 %i.y, 1
  store i32 %i.z, ptr %i.b, align 8, !tbaa !319
  br label %.backedge

bb.j:                                             ; preds = %bb.b
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !320
  %i.ab = xor i32 %i.aa, 1
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !320
  br label %.backedge

bb.k:                                             ; preds = %bb.b
  %i.ac = load i32, ptr @globalUtilOptind, align 4, !tbaa !56 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ad ; 3 uses
  %i.af = sub nsw i32 %1, %i.ac                   ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 2
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.3764)
  br label %.thread122

bb.m:                                             ; preds = %bb.k
  %i.ah = icmp eq i32 %i.af, 2
  br i1 %i.ah, label %bb.n, label %bb.ac

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !95 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !95 ; 5 uses
  br label %bb.s

.preheader:                                       ; preds = %bb.z, %bb.r
  %.085.1 = phi ptr [ %i.ar, %bb.r ], [ %i.ak, %bb.z ] ; 3 uses
  %i.al = load i8, ptr %.085.1, align 1, !tbaa !99
  switch i8 %i.al, label %bb.r [
    i8 0, label %bb.p
    i8 62, label %bb.o
  ]

bb.o:                                             ; preds = %.preheader
  store i8 92, ptr %.085.1, align 1, !tbaa !99
  br label %bb.r

bb.p:                                             ; preds = %.preheader
  %i.am = call noalias ptr @fopen(ptr noundef %i.ak, ptr noundef nonnull @.str.1797) ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = call i32 @fclose(ptr noundef nonnull %i.am) ; 0 uses
  %i.ap = call ptr @Gia_AigerRead(ptr noundef %i.ak, i32 noundef 0, i32 noundef 0, i32 noundef 0) #37 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.aa, label %.thread

.thread:                                          ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.as

bb.r:                                             ; preds = %bb.o, %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %.085.1, i64 1
  br label %.preheader, !llvm.loop !1245

bb.s:                                             ; preds = %bb.u, %bb.n
  %.085 = phi ptr [ %i.ai, %bb.n ], [ %i.at, %bb.u ] ; 3 uses
  %i.as = load i8, ptr %.085, align 1, !tbaa !99
  switch i8 %i.as, label %bb.u [
    i8 0, label %bb.v
    i8 62, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  store i8 92, ptr %.085, align 1, !tbaa !99
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.at = getelementptr inbounds nuw i8, ptr %.085, i64 1
  br label %bb.s, !llvm.loop !1245

bb.v:                                             ; preds = %bb.s
  %i.au = call noalias ptr @fopen(ptr noundef %i.ai, ptr noundef nonnull @.str.1797) ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.p, %bb.v
  %.lcssa140.sroa.phi = phi ptr [ %.sroa.0, %bb.v ], [ %.sroa.6, %bb.p ]
  %.lcssa = phi ptr [ %i.ai, %bb.v ], [ %i.ak, %bb.p ] ; 2 uses
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.1912, ptr noundef %.lcssa)
  %i.aw = call ptr @Extra_FileGetSimilarName(ptr noundef %.lcssa, ptr noundef nonnull @.str.2330, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #37 ; 3 uses
  store ptr %i.aw, ptr %.lcssa140.sroa.phi, align 8, !tbaa !95
  %.not110 = icmp eq ptr %i.aw, null
  br i1 %.not110, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.1918, ptr noundef nonnull %i.aw)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.789)
  br label %bb.ab

bb.z:                                             ; preds = %bb.v
  %i.ax = call i32 @fclose(ptr noundef nonnull %i.au) ; 0 uses
  %i.ay = call ptr @Gia_AigerRead(ptr noundef %i.ai, i32 noundef 0, i32 noundef 0, i32 noundef 0) #37 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.aa, label %.preheader

bb.aa:                                            ; preds = %bb.q, %bb.z
  %.lcssa138 = phi ptr [ %i.ai, %bb.z ], [ %i.ak, %bb.q ]
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.3765, ptr noundef %.lcssa138)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.091 = phi i32 [ 1, %bb.y ], [ 0, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %.thread122

bb.ac:                                            ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !72 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.3766)
  br label %.thread122

bb.ae:                                            ; preds = %bb.ac
  %i.bd = icmp eq i32 %i.af, 1
  br i1 %i.bd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !95
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !268 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.1606)
  br label %.thread122

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %.083 = phi ptr [ %i.be, %bb.af ], [ %i.bg, %bb.ag ] ; 5 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %bb.ai
  %.0 = phi ptr [ %.083, %bb.ai ], [ %i.bj, %bb.al ] ; 3 uses
  %i.bi = load i8, ptr %.0, align 1, !tbaa !99
  switch i8 %i.bi, label %bb.al [
    i8 0, label %bb.am
    i8 62, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  store i8 92, ptr %.0, align 1, !tbaa !99
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.bj = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.aj, !llvm.loop !1246

bb.am:                                            ; preds = %bb.aj
  %i.bk = call noalias ptr @fopen(ptr noundef %.083, ptr noundef nonnull @.str.1797) ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.1912, ptr noundef %.083)
  %i.bm = call ptr @Extra_FileGetSimilarName(ptr noundef %.083, ptr noundef nonnull @.str.2330, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #37 ; 2 uses
  %.not108 = icmp eq ptr %i.bm, null
  br i1 %.not108, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.1918, ptr noundef nonnull %i.bm)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.789)
  br label %.thread122

bb.aq:                                            ; preds = %bb.am
  %i.bn = call i32 @fclose(ptr noundef nonnull %i.bk) ; 0 uses
  %i.bo = call ptr @Gia_AigerRead(ptr noundef %.083, i32 noundef 0, i32 noundef 0, i32 noundef 0) #37 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.2331)
  br label %.thread122

bb.as:                                            ; preds = %bb.aq, %.thread
  %.sroa.0153.0 = phi ptr [ %i.ay, %.thread ], [ %i.bb, %bb.aq ] ; 4 uses
  %.sroa.6154.0 = phi ptr [ %i.ap, %.thread ], [ %i.bo, %bb.aq ] ; 2 uses
  %.not111 = icmp eq i32 %.089.ph, 0
  %4 = xor i32 %.089.ph, 1
  %i.bq = load i32, ptr %i.b, align 8, !tbaa !319
  %i.br = call ptr @Gia_ManMiterInverse(ptr noundef nonnull %.sroa.0153.0, ptr noundef nonnull %.sroa.6154.0, i32 noundef %4, i32 noundef %i.bq) #37 ; 5 uses
  %.not112 = icmp eq ptr %i.br, null
  br i1 %.not112, label %bb.az, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not113 = icmp eq i32 %.087.ph184, 0
  br i1 %.not113, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 0, ptr noundef nonnull @.str.4220, ptr noundef nonnull @.str.4221)
  call void @Gia_AigerWrite(ptr noundef nonnull %i.br, ptr noundef nonnull @.str.4221, i32 noundef 0, i32 noundef 0, i32 noundef 0) #37
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  br i1 %.not111, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.bs = call fastcc i64 @Abc_Clock()
  %i.bt = load i32, ptr %3, align 8, !tbaa !316
  %i.bu = load i32, ptr %i.b, align 8, !tbaa !319
  %i.bv = call ptr @Cec4_ManSimulateTest3(ptr noundef nonnull %i.br, i32 noundef %i.bt, i32 noundef %i.bu) #37 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !77
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !74
  %i.ca = getelementptr i8, ptr %i.bz, i64 4
  %.val3.i = load i32, ptr %i.ca, align 4, !tbaa !55
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !71
  %i.cd = getelementptr i8, ptr %i.cc, i64 4
  %.val.i = load i32, ptr %i.cd, align 4, !tbaa !55
  %i.ce = add i32 %.val3.i, 1
  %.neg = add i32 %i.ce, %.val.i
  %i.cf = icmp eq i32 %i.bx, %.neg
  %.str.4213..str.4215 = select i1 %i.cf, ptr @.str.4213, ptr @.str.4215
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull %.str.4213..str.4215)
  %i.cg = call fastcc i64 @Abc_Clock()
  %i.ch = sub nsw i64 %i.cg, %i.bs
  call fastcc void @Abc_PrintTime(ptr noundef nonnull @.str.1208, i64 noundef %i.ch)
  call void @Gia_ManStop(ptr noundef nonnull %i.bv) #37
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.ci = call i32 @Cec_ManVerify(ptr noundef nonnull %i.br, ptr noundef nonnull %3) #37
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !101
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0153.0, i64 376
  call void @Abc_FrameReplaceCex(ptr noundef %0, ptr noundef nonnull %i.ck)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  call void @Gia_ManStop(ptr noundef nonnull %i.br) #37
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.as
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !72
  %.not114 = icmp eq ptr %.sroa.0153.0, %i.cm
  br i1 %.not114, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @Gia_ManStop(ptr noundef nonnull %.sroa.0153.0) #37
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  call void @Gia_ManStop(ptr noundef nonnull %.sroa.6154.0) #37
  br label %.thread122

.loopexit.sink.split:                             ; preds = %bb.e, %bb.c
  %.str.880.sink = phi ptr [ @.str.578, %bb.c ], [ @.str.880, %bb.e ]
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull %.str.880.sink)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.f, %bb.d, %.loopexit.sink.split
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4253)
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4254)
  %i.cn = load i32, ptr %3, align 8, !tbaa !316
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2106, i32 noundef %i.cn)
  %i.co = load i32, ptr %i.c, align 4, !tbaa !317
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2834, i32 noundef %i.co)
  %.not117 = icmp eq i32 %.087.ph184, 0
  %i.cp = select i1 %.not117, ptr @.str.593, ptr @.str.592
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4255, ptr noundef nonnull %i.cp)
  %.not118 = icmp eq i32 %.089.ph, 0
  %i.cq = select i1 %.not118, ptr @.str.593, ptr @.str.592
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4091, ptr noundef nonnull %i.cq)
  %i.cr = load i32, ptr %i.b, align 8, !tbaa !319
  %.not119 = icmp eq i32 %i.cr, 0
  %i.cs = select i1 %.not119, ptr @.str.593, ptr @.str.592
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2211, ptr noundef nonnull %i.cs)
  %i.ct = load i32, ptr %i.a, align 4, !tbaa !320
  %.not120 = icmp eq i32 %i.ct, 0
  %i.cu = select i1 %.not120, ptr @.str.593, ptr @.str.592
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4238, ptr noundef nonnull %i.cu)
  call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.594)
  br label %.thread122

.thread122:                                       ; preds = %bb.ab, %bb.ah, %bb.ar, %bb.ap, %bb.ad, %.loopexit, %bb.bb, %bb.l
  %.2 = phi i32 [ 1, %.loopexit ], [ 1, %bb.l ], [ 0, %bb.bb ], [ %.091, %bb.ab ], [ 1, %bb.ah ], [ 0, %bb.ar ], [ 1, %bb.ap ], [ 1, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Abc_CommandAbc9Verify(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #8 {
bb.a:
  tail call void (...) @Extra_UtilGetoptReset() #37
  br label %.outer

.outer:                                           ; preds = %bb.d, %bb.a
  %.039.ph = phi i32 [ %i.g, %bb.d ], [ 1000, %bb.a ] ; 4 uses
  %.037.ph = phi i32 [ %.037.ph146, %bb.d ], [ 0, %bb.a ]
  %.035.ph = phi i32 [ %.035.ph152, %bb.d ], [ 0, %bb.a ]
  %.033.ph = phi i32 [ %.033.ph157, %bb.d ], [ 0, %bb.a ]
  %.031.ph = phi i32 [ %.031.ph161, %bb.d ], [ 0, %bb.a ]
  %.0.ph = phi i32 [ %.0, %bb.d ], [ 0, %bb.a ]
  br label %.outer145

.outer145:                                        ; preds = %.outer, %bb.f
  %.037.ph146 = phi i32 [ %.037.ph, %.outer ], [ %i.o, %bb.f ] ; 5 uses
  %.035.ph147 = phi i32 [ %.035.ph, %.outer ], [ %.035.ph152, %bb.f ]
  %.033.ph148 = phi i32 [ %.033.ph, %.outer ], [ %.033.ph157, %bb.f ]
  %.031.ph149 = phi i32 [ %.031.ph, %.outer ], [ %.031.ph161, %bb.f ]
  %.0.ph150 = phi i32 [ %.0.ph, %.outer ], [ %.0, %bb.f ]
  br label %.outer151

.outer151:                                        ; preds = %.outer145, %bb.g
  %.035.ph152 = phi i32 [ %.035.ph147, %.outer145 ], [ %i.r, %bb.g ] ; 5 uses
  %.033.ph153 = phi i32 [ %.033.ph148, %.outer145 ], [ %.033.ph157, %bb.g ]
  %.031.ph154 = phi i32 [ %.031.ph149, %.outer145 ], [ %.031.ph161, %bb.g ]
  %.0.ph155 = phi i32 [ %.0.ph150, %.outer145 ], [ %.0, %bb.g ]
  br label %.outer156

.outer156:                                        ; preds = %.outer151, %bb.h
  %.033.ph157 = phi i32 [ %.033.ph153, %.outer151 ], [ %i.s, %bb.h ] ; 6 uses
  %.031.ph158 = phi i32 [ %.031.ph154, %.outer151 ], [ %.031.ph161, %bb.h ]
  %.0.ph159 = phi i32 [ %.0.ph155, %.outer151 ], [ %.0, %bb.h ]
  br label %.outer160

.outer160:                                        ; preds = %.outer156, %bb.i
  %.031.ph161 = phi i32 [ %.031.ph158, %.outer156 ], [ %i.t, %bb.i ] ; 7 uses
  %.0.ph162 = phi i32 [ %.0.ph159, %.outer156 ], [ %.0, %bb.i ]
  br label %bb.b

bb.b:                                             ; preds = %.outer160, %bb.j
  %.0 = phi i32 [ %i.u, %bb.j ], [ %.0.ph162, %.outer160 ] ; 8 uses
  %i.a = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.4256) #37
  switch i32 %i.a, label %.loopexit [
    i32 -1, label %bb.k
    i32 67, label %bb.c
    i32 84, label %bb.e
    i32 115, label %bb.g
    i32 121, label %bb.h
    i32 100, label %bb.i
    i32 118, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr @globalUtilOptind, align 4, !tbaa !56 ; 3 uses
  %.not52 = icmp slt i32 %i.b, %1
  br i1 %.not52, label %bb.d, label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %2, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.f = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.e, ptr noundef null, i32 noundef 10) #37, !inline_history !2
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = add nsw i32 %i.b, 1
  store i32 %i.h, ptr @globalUtilOptind, align 4, !tbaa !56
  %i.i = icmp slt i32 %i.g, 0
  br i1 %i.i, label %.loopexit, label %.outer, !llvm.loop !1247

bb.e:                                             ; preds = %bb.b
  %i.j = load i32, ptr @globalUtilOptind, align 4, !tbaa !56 ; 3 uses
  %.not51 = icmp slt i32 %i.j, %1
  br i1 %.not51, label %bb.f, label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.e
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %2, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !95
  %i.n = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.m, ptr noundef null, i32 noundef 10) #37, !inline_history !2
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = add nsw i32 %i.j, 1
  store i32 %i.p, ptr @globalUtilOptind, align 4, !tbaa !56
  %i.q = icmp slt i32 %i.o, 0
  br i1 %i.q, label %.loopexit, label %.outer145, !llvm.loop !1247

bb.g:                                             ; preds = %bb.b
  %i.r = xor i32 %.035.ph152, 1
  br label %.outer151, !llvm.loop !1247

bb.h:                                             ; preds = %bb.b
  %i.s = xor i32 %.033.ph157, 1
  br label %.outer156, !llvm.loop !1247

bb.i:                                             ; preds = %bb.b
  %i.t = xor i32 %.031.ph161, 1
end_hunk_0
