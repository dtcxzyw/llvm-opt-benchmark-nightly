Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abc?download=true
inline.NumInlined: 2413
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Abc_CommandDsdFilter:bb.a
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2617)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2618)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2619, i32 noundef %.059)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2620, i32 noundef %.057)
  %.not71 = icmp eq i32 %.055, 0
  %i.ac = select i1 %.not71, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2621, ptr noundef nonnull %i.ac)
  %.not72 = icmp eq i32 %.053, 0
  %i.ad = select i1 %.not72, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2622, ptr noundef nonnull %i.ad)
  %.not73 = icmp eq i32 %.051, 0
  %i.ae = select i1 %.not73, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2623, ptr noundef nonnull %i.ae)
  %.not74 = icmp eq i32 %.049, 0
  %i.af = select i1 %.not74, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2624, ptr noundef nonnull %i.af)
  %.not75 = icmp eq i32 %.047, 0
  %i.ag = select i1 %.not75, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2625, ptr noundef nonnull %i.ag)
  %.not76 = icmp eq i32 %.045, 0
  %i.ah = select i1 %.not76, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2626, ptr noundef nonnull %i.ah)
  %.not77 = icmp eq i32 %.0, 0
  %i.ai = select i1 %.not77, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.1731, ptr noundef nonnull %i.ai)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.594)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2627)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2628)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2629)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2630)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2631)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.aa, %bb.z, %.loopexit, %bb.o
  %.061 = phi i32 [ 1, %.loopexit ], [ 0, %bb.o ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 0, %bb.y ]
  ret i32 %.061
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Abc_CommandInit(ptr noundef %0, i32 noundef %1, ptr noundef %2) #8 {
bb.a:
  %i.a = tail call ptr @Abc_FrameReadNtk(ptr noundef %0) #37 ; 10 uses
  tail call void (...) @Extra_UtilGetoptReset() #37
  br label %.outer

.outer:                                           ; preds = %bb.e, %bb.a
  %.0120.ph = phi ptr [ %i.f, %bb.e ], [ null, %bb.a ] ; 3 uses
  %.0118.ph = phi i32 [ %.0118.ph326, %bb.e ], [ 0, %bb.a ]
  %.0116.ph = phi i32 [ %.0116.ph333, %bb.e ], [ 0, %bb.a ]
  %.0114.ph = phi i32 [ %.0114.ph339, %bb.e ], [ 0, %bb.a ]
  %.0112.ph = phi i32 [ %.0112.ph344, %bb.e ], [ 0, %bb.a ]
  %.0110.ph = phi i32 [ %.0110.ph348, %bb.e ], [ 0, %bb.a ]
  %.0108.ph = phi i32 [ %.0108, %bb.e ], [ 0, %bb.a ]
  br label %.outer325

.outer325:                                        ; preds = %.outer, %bb.f
  %.0118.ph326 = phi i32 [ %.0118.ph, %.outer ], [ %i.h, %bb.f ] ; 4 uses
  %.0116.ph327 = phi i32 [ %.0116.ph, %.outer ], [ %.0116.ph333, %bb.f ]
  %.0114.ph328 = phi i32 [ %.0114.ph, %.outer ], [ %.0114.ph339, %bb.f ]
  %.0112.ph329 = phi i32 [ %.0112.ph, %.outer ], [ %.0112.ph344, %bb.f ]
  %.0110.ph330 = phi i32 [ %.0110.ph, %.outer ], [ %.0110.ph348, %bb.f ]
  %.0108.ph331 = phi i32 [ %.0108.ph, %.outer ], [ %.0108, %bb.f ]
  br label %.outer332

.outer332:                                        ; preds = %.outer325, %bb.g
  %.0116.ph333 = phi i32 [ %.0116.ph327, %.outer325 ], [ %i.i, %bb.g ] ; 5 uses
  %.0114.ph334 = phi i32 [ %.0114.ph328, %.outer325 ], [ %.0114.ph339, %bb.g ]
  %.0112.ph335 = phi i32 [ %.0112.ph329, %.outer325 ], [ %.0112.ph344, %bb.g ]
  %.0110.ph336 = phi i32 [ %.0110.ph330, %.outer325 ], [ %.0110.ph348, %bb.g ]
  %.0108.ph337 = phi i32 [ %.0108.ph331, %.outer325 ], [ %.0108, %bb.g ]
  br label %.outer338

.outer338:                                        ; preds = %.outer332, %bb.h
  %.0114.ph339 = phi i32 [ %.0114.ph334, %.outer332 ], [ %i.j, %bb.h ] ; 6 uses
  %.0112.ph340 = phi i32 [ %.0112.ph335, %.outer332 ], [ %.0112.ph344, %bb.h ]
  %.0110.ph341 = phi i32 [ %.0110.ph336, %.outer332 ], [ %.0110.ph348, %bb.h ]
  %.0108.ph342 = phi i32 [ %.0108.ph337, %.outer332 ], [ %.0108, %bb.h ]
  br label %.outer343

.outer343:                                        ; preds = %.outer338, %bb.i
  %.0112.ph344 = phi i32 [ %.0112.ph340, %.outer338 ], [ %i.k, %bb.i ] ; 7 uses
  %.0110.ph345 = phi i32 [ %.0110.ph341, %.outer338 ], [ %.0110.ph348, %bb.i ]
  %.0108.ph346 = phi i32 [ %.0108.ph342, %.outer338 ], [ %.0108, %bb.i ]
  br label %.outer347

.outer347:                                        ; preds = %.outer343, %bb.j
  %.0110.ph348 = phi i32 [ %.0110.ph345, %.outer343 ], [ %i.l, %bb.j ] ; 8 uses
  %.0108.ph349 = phi i32 [ %.0108.ph346, %.outer343 ], [ %.0108, %bb.j ]
  br label %bb.b

bb.b:                                             ; preds = %.outer347, %bb.k
  %.0108 = phi i32 [ %i.m, %bb.k ], [ %.0108.ph349, %.outer347 ] ; 10 uses
  %i.b = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.2632) #37
  switch i32 %i.b, label %.loopexit [
    i32 -1, label %bb.l
    i32 83, label %bb.c
    i32 122, label %bb.f
    i32 111, label %bb.g
    i32 114, label %bb.h
    i32 100, label %bb.i
    i32 99, label %bb.j
    i32 110, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @globalUtilOptind, align 4, !tbaa !56 ; 3 uses
  %.not144 = icmp slt i32 %i.c, %1
  br i1 %.not144, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.1481)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %2, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.g = add nsw i32 %i.c, 1
  store i32 %i.g, ptr @globalUtilOptind, align 4, !tbaa !56
  br label %.outer, !llvm.loop !775

bb.f:                                             ; preds = %bb.b
  %i.h = xor i32 %.0118.ph326, 1
  br label %.outer325, !llvm.loop !775

bb.g:                                             ; preds = %bb.b
  %i.i = xor i32 %.0116.ph333, 1
  br label %.outer332, !llvm.loop !775

bb.h:                                             ; preds = %bb.b
  %i.j = xor i32 %.0114.ph339, 1
  br label %.outer338, !llvm.loop !775

bb.i:                                             ; preds = %bb.b
  %i.k = xor i32 %.0112.ph344, 1
  br label %.outer343, !llvm.loop !775

bb.j:                                             ; preds = %bb.b
  %i.l = xor i32 %.0110.ph348, 1
  br label %.outer347, !llvm.loop !775

bb.k:                                             ; preds = %bb.b
  %i.m = xor i32 %.0108, 1
  br label %bb.b, !llvm.loop !775

bb.l:                                             ; preds = %bb.b
  %i.n = icmp eq ptr %i.a, null
  br i1 %i.n, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.634)
  br label %.critedge

bb.n:                                             ; preds = %bb.l
  %i.o = getelementptr i8, ptr %i.a, i64 128
  %.val161 = load i32, ptr %i.o, align 8, !tbaa !56 ; 3 uses
  %.not = icmp eq i32 %.val161, 0
  br i1 %.not, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 0, ptr noundef nonnull @.str.2633)
  br label %.critedge

bb.p:                                             ; preds = %bb.n
  %.not129 = icmp eq ptr %.0120.ph, null
  br i1 %.not129, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0120.ph) #40 ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %.not142 = icmp eq i32 %.val161, %i.q
  br i1 %.not142, label %.preheader186, label %bb.r

.preheader186:                                    ; preds = %bb.q
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !210  ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %.val156208 = load i32, ptr %i.t, align 4, !tbaa !41
  %i.u = icmp sgt i32 %.val156208, 0
  br i1 %i.u, label %.lr.ph, label %.critedge

bb.r:                                             ; preds = %bb.q
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.2634, i64 noundef %i.p, i32 noundef %.val161)
  br label %.critedge

.lr.ph:                                           ; preds = %.preheader186, %bb.t
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.t ], [ 0, %.preheader186 ] ; 3 uses
  %i.v = phi ptr [ %i.ae, %bb.t ], [ %i.s, %.preheader186 ]
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val167.val = load ptr, ptr %i.w, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.val167.val, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !43   ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 20
  %.val173 = load i32, ptr %i.z, align 4
  %i.aa = and i32 %.val173, 15
  %.not174 = icmp eq i32 %i.aa, 8
  br i1 %.not174, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.0120.ph, i64 %indvars.iv
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !99  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %switch.selectcmp = icmp eq i8 %i.ac, 49
  %switch.select = select i1 %switch.selectcmp, ptr inttoptr (i64 2 to ptr), ptr inttoptr (i64 3 to ptr)
  %switch.selectcmp296 = icmp eq i8 %i.ac, 48
  %switch.select297 = select i1 %switch.selectcmp296, ptr inttoptr (i64 1 to ptr), ptr %switch.select
  store ptr %switch.select297, ptr %i.ad, align 8, !tbaa !99
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !210 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %.val156 = load i32, ptr %i.af, align 4, !tbaa !41
  %i.ag = sext i32 %.val156 to i64
  %i.ah = icmp slt i64 %indvars.iv.next, %i.ag
  br i1 %i.ah, label %.lr.ph, label %.critedge, !llvm.loop !776

bb.u:                                             ; preds = %bb.p
  %.not130 = icmp eq i32 %.0118.ph326, 0
  br i1 %.not130, label %bb.x, label %.preheader184

.preheader184:                                    ; preds = %bb.u
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !210 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %.val155210 = load i32, ptr %i.ak, align 4, !tbaa !41
  %i.al = icmp sgt i32 %.val155210, 0
  br i1 %i.al, label %.lr.ph212, label %.critedge

.lr.ph212:                                        ; preds = %.preheader184, %bb.w
  %i.am = phi ptr [ %i.at, %bb.w ], [ %i.aj, %.preheader184 ] ; 2 uses
  %indvars.iv250 = phi i64 [ %indvars.iv.next251, %bb.w ], [ 0, %.preheader184 ] ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val166.val = load ptr, ptr %i.an, align 8, !tbaa !42
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.val166.val, i64 %indvars.iv250
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !43 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 20
  %.val172 = load i32, ptr %i.aq, align 4
  %i.ar = and i32 %.val172, 15
  %.not175 = icmp eq i32 %i.ar, 8
  br i1 %.not175, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph212
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  store ptr inttoptr (i64 1 to ptr), ptr %i.as, align 8, !tbaa !99
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !210
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph212
  %i.at = phi ptr [ %.pre, %bb.v ], [ %i.am, %.lr.ph212 ] ; 2 uses
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 4
  %.val155 = load i32, ptr %i.au, align 4, !tbaa !41
  %i.av = sext i32 %.val155 to i64
  %i.aw = icmp slt i64 %indvars.iv.next251, %i.av
  br i1 %i.aw, label %.lr.ph212, label %.critedge, !llvm.loop !777

bb.x:                                             ; preds = %bb.u
  %.not131 = icmp eq i32 %.0116.ph333, 0
  br i1 %.not131, label %bb.aa, label %.preheader182

.preheader182:                                    ; preds = %bb.x
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !210 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 4
  %.val154213 = load i32, ptr %i.az, align 4, !tbaa !41
  %i.ba = icmp sgt i32 %.val154213, 0
  br i1 %i.ba, label %.lr.ph215, label %.critedge

.lr.ph215:                                        ; preds = %.preheader182, %bb.z
  %i.bb = phi ptr [ %i.bi, %bb.z ], [ %i.ay, %.preheader182 ] ; 2 uses
  %indvars.iv253 = phi i64 [ %indvars.iv.next254, %bb.z ], [ 0, %.preheader182 ] ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %.val165.val = load ptr, ptr %i.bc, align 8, !tbaa !42
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.val165.val, i64 %indvars.iv253
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !43 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 20
  %.val171 = load i32, ptr %i.bf, align 4
  %i.bg = and i32 %.val171, 15
  %.not176 = icmp eq i32 %i.bg, 8
  br i1 %.not176, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph215
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  store ptr inttoptr (i64 2 to ptr), ptr %i.bh, align 8, !tbaa !99
  %.pre265 = load ptr, ptr %i.ax, align 8, !tbaa !210
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph215
  %i.bi = phi ptr [ %.pre265, %bb.y ], [ %i.bb, %.lr.ph215 ] ; 2 uses
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 4
  %.val154 = load i32, ptr %i.bj, align 4, !tbaa !41
  %i.bk = sext i32 %.val154 to i64
  %i.bl = icmp slt i64 %indvars.iv.next254, %i.bk
  br i1 %i.bl, label %.lr.ph215, label %.critedge, !llvm.loop !778

bb.aa:                                            ; preds = %bb.x
  %.not132 = icmp eq i32 %.0114.ph339, 0
  br i1 %.not132, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bm = tail call i64 @time(ptr noundef null) #37
  %i.bn = trunc i64 %i.bm to i32
  tail call void @srand(i32 noundef %i.bn) #37
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !210 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 4
  %.val153216 = load i32, ptr %i.bq, align 4, !tbaa !41
  %i.br = icmp sgt i32 %.val153216, 0
  br i1 %i.br, label %.lr.ph218, label %.critedge

.lr.ph218:                                        ; preds = %bb.ab, %bb.ac
  %indvars.iv256 = phi i64 [ %indvars.iv.next257, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.bs = phi ptr [ %i.cb, %bb.ac ], [ %i.bp, %bb.ab ]
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %.val164.val = load ptr, ptr %i.bt, align 8, !tbaa !42
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.val164.val, i64 %indvars.iv256
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !43 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 20
  %.val170 = load i32, ptr %i.bw, align 4
  %i.bx = and i32 %.val170, 15
  %.not177 = icmp eq i32 %i.bx, 8
  br i1 %.not177, label %.sink.split292, label %bb.ac

.sink.split292:                                   ; preds = %.lr.ph218
  %i.by = tail call i32 @rand() #37
  %i.bz = and i32 %i.by, 1
  %.not139 = icmp eq i32 %i.bz, 0
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %. = select i1 %.not139, ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 2 to ptr)
  store ptr %., ptr %i.ca, align 8, !tbaa !99
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split292, %.lr.ph218
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1 ; 2 uses
  %i.cb = load ptr, ptr %i.bo, align 8, !tbaa !210 ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 4
  %.val153 = load i32, ptr %i.cc, align 4, !tbaa !41
  %i.cd = sext i32 %.val153 to i64
  %i.ce = icmp slt i64 %indvars.iv.next257, %i.cd
  br i1 %i.ce, label %.lr.ph218, label %.critedge, !llvm.loop !779

bb.ad:                                            ; preds = %bb.aa
  %.not133 = icmp eq i32 %.0112.ph344, 0
  br i1 %.not133, label %bb.ag, label %.preheader

.preheader:                                       ; preds = %bb.ad
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !210 ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 4
  %.val152219 = load i32, ptr %i.ch, align 4, !tbaa !41
  %i.ci = icmp sgt i32 %.val152219, 0
  br i1 %i.ci, label %.lr.ph221, label %.critedge

.lr.ph221:                                        ; preds = %.preheader, %bb.af
  %i.cj = phi ptr [ %i.cq, %bb.af ], [ %i.cg, %.preheader ] ; 2 uses
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %bb.af ], [ 0, %.preheader ] ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  %.val163.val = load ptr, ptr %i.ck, align 8, !tbaa !42
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.val163.val, i64 %indvars.iv259
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !43 ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 20
  %.val169 = load i32, ptr %i.cn, align 4
  %i.co = and i32 %.val169, 15
  %.not178 = icmp eq i32 %i.co, 8
  br i1 %.not178, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph221
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  store ptr inttoptr (i64 3 to ptr), ptr %i.cp, align 8, !tbaa !99
  %.pre266 = load ptr, ptr %i.cf, align 8, !tbaa !210
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph221
  %i.cq = phi ptr [ %.pre266, %bb.ae ], [ %i.cj, %.lr.ph221 ] ; 2 uses
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 4
  %.val152 = load i32, ptr %i.cr, align 4, !tbaa !41
  %i.cs = sext i32 %.val152 to i64
  %i.ct = icmp slt i64 %indvars.iv.next260, %i.cs
  br i1 %i.ct, label %.lr.ph221, label %.critedge, !llvm.loop !780

bb.ag:                                            ; preds = %bb.ad
  %i.cu = icmp ne i32 %.0110.ph348, 0             ; 2 uses
  %i.cv = icmp ne i32 %.0108, 0                   ; 2 uses
  %or.cond = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond, label %bb.ah, label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  %or.cond11 = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %or.cond11, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.2635)
  br label %.critedge

bb.aj:                                            ; preds = %bb.ah
  %.val160 = load i32, ptr %i.a, align 8, !tbaa !87
  %.not179 = icmp eq i32 %.val160, 3
  br i1 %.not179, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.1804)
  br label %.critedge

bb.al:                                            ; preds = %bb.aj
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !36
end_hunk_0
