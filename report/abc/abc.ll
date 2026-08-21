Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abc?download=true
inline.NumInlined: 2413
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Abc_CommandAbc9Exmap:bb.a
  %i.k = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not97 = icmp slt i32 %i.k, %1
  br i1 %.not97, label %bb.f, label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.e
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %2, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !99
  %i.o = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.n, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.p = trunc i64 %i.o to i32                    ; 3 uses
  %i.q = add nsw i32 %i.k, 1
  store i32 %i.q, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.r = icmp slt i32 %i.p, 0
  br i1 %i.r, label %.loopexit.sink.split, label %.backedge

bb.g:                                             ; preds = %bb.b
  %i.s = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not96 = icmp slt i32 %i.s, %1
  br i1 %.not96, label %bb.h, label %.loopexit.sink.split

bb.h:                                             ; preds = %bb.g
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %2, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !99
  %i.w = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.v, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.x = trunc i64 %i.w to i32
  %i.y = add nsw i32 %i.s, 1
  store i32 %i.y, ptr @globalUtilOptind, align 4, !tbaa !47
  br label %.backedge

bb.i:                                             ; preds = %bb.b
  %i.z = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not95 = icmp slt i32 %i.z, %1
  br i1 %.not95, label %bb.j, label %.loopexit.sink.split

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !99
  %i.ad = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ac, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.ae = trunc i64 %i.ad to i32                  ; 3 uses
  %i.af = add nsw i32 %i.z, 1
  store i32 %i.af, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.ag = icmp slt i32 %i.ae, 0
  br i1 %i.ag, label %.loopexit.sink.split, label %.backedge

.backedge:                                        ; preds = %bb.j, %bb.f, %bb.d, %bb.q, %bb.p, %bb.o, %bb.n, %bb.l, %bb.h
  %.071.be = phi ptr [ %.071, %bb.d ], [ %.071, %bb.f ], [ %.071, %bb.h ], [ %.071, %bb.j ], [ %.071, %bb.l ], [ %i.ar, %bb.n ], [ %.071, %bb.o ], [ %.071, %bb.p ], [ %.071, %bb.q ]
  %.068.be = phi i32 [ %i.h, %bb.d ], [ %.068, %bb.f ], [ %.068, %bb.h ], [ %.068, %bb.j ], [ %.068, %bb.l ], [ %.068, %bb.n ], [ %.068, %bb.o ], [ %.068, %bb.p ], [ %.068, %bb.q ]
  %.066.be = phi i32 [ %.066, %bb.d ], [ %.066, %bb.f ], [ %i.x, %bb.h ], [ %.066, %bb.j ], [ %.066, %bb.l ], [ %.066, %bb.n ], [ %.066, %bb.o ], [ %.066, %bb.p ], [ %.066, %bb.q ]
  %.063.be = phi i32 [ %.063, %bb.d ], [ %.063, %bb.f ], [ %.063, %bb.h ], [ %i.ae, %bb.j ], [ %.063, %bb.l ], [ %.063, %bb.n ], [ %.063, %bb.o ], [ %.063, %bb.p ], [ %.063, %bb.q ]
  %.061.be = phi i32 [ %.061, %bb.d ], [ %i.p, %bb.f ], [ %.061, %bb.h ], [ %.061, %bb.j ], [ %.061, %bb.l ], [ %.061, %bb.n ], [ %.061, %bb.o ], [ %.061, %bb.p ], [ %.061, %bb.q ]
  %.059.be = phi i32 [ %.059, %bb.d ], [ %.059, %bb.f ], [ %.059, %bb.h ], [ %.059, %bb.j ], [ %.059, %bb.l ], [ %.059, %bb.n ], [ %i.at, %bb.o ], [ %.059, %bb.p ], [ %.059, %bb.q ]
  %.057.be = phi i32 [ %.057, %bb.d ], [ %.057, %bb.f ], [ %.057, %bb.h ], [ %.057, %bb.j ], [ %i.am, %bb.l ], [ %.057, %bb.n ], [ %.057, %bb.o ], [ %.057, %bb.p ], [ %.057, %bb.q ]
  %.055.be = phi i32 [ %.055, %bb.d ], [ %.055, %bb.f ], [ %.055, %bb.h ], [ %.055, %bb.j ], [ %.055, %bb.l ], [ %.055, %bb.n ], [ %.055, %bb.o ], [ %i.au, %bb.p ], [ %.055, %bb.q ]
  %.0.be = phi i32 [ %.0, %bb.d ], [ %.0, %bb.f ], [ %.0, %bb.h ], [ %.0, %bb.j ], [ %.0, %bb.l ], [ %.0, %bb.n ], [ %.0, %bb.o ], [ %.0, %bb.p ], [ %i.av, %bb.q ]
  br label %bb.b, !llvm.loop !1266

bb.k:                                             ; preds = %bb.b
  %i.ah = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not94 = icmp slt i32 %i.ah, %1
  br i1 %.not94, label %bb.l, label %.loopexit.sink.split

bb.l:                                             ; preds = %bb.k
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !99
  %i.al = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.ak, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.am = trunc i64 %i.al to i32
  %i.an = add nsw i32 %i.ah, 1
  store i32 %i.an, ptr @globalUtilOptind, align 4, !tbaa !47
  br label %.backedge

bb.m:                                             ; preds = %bb.b
  %i.ao = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not93 = icmp slt i32 %i.ao, %1
  br i1 %.not93, label %bb.n, label %.loopexit.sink.split

bb.n:                                             ; preds = %bb.m
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !99
  %i.as = add nsw i32 %i.ao, 1
  store i32 %i.as, ptr @globalUtilOptind, align 4, !tbaa !47
  br label %.backedge

bb.o:                                             ; preds = %bb.b
  %i.at = xor i32 %.059, 1
  br label %.backedge

bb.p:                                             ; preds = %bb.b
  %i.au = xor i32 %.055, 1
  br label %.backedge

bb.q:                                             ; preds = %bb.b
  %i.av = xor i32 %.0, 1
  br label %.backedge

bb.r:                                             ; preds = %bb.b
  %i.aw = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 2 uses
  %i.ax = add nsw i32 %i.aw, 1
  %.not90 = icmp eq i32 %1, %i.ax
  br i1 %.not90, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.1485)
  br label %bb.ab

bb.t:                                             ; preds = %bb.r
  %i.ay = sext i32 %i.aw to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !99 ; 3 uses
  %i.bb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ba) #40 ; 2 uses
  %.tr = trunc i64 %i.bb to i32
  %i.bc = shl i32 %.tr, 2                         ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  %i.be = add i32 %i.bc, -1
  %i.bf = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.be, i1 true)
  %i.bg = sub nuw nsw i32 32, %i.bf
  %.09.i = select i1 %i.bd, i32 0, i32 %i.bg      ; 3 uses
  %i.bh = shl nuw i32 1, %.09.i
  %i.bi = sext i32 %i.bh to i64
  %i.bj = shl i64 %i.bb, 2
  %.not91 = icmp eq i64 %i.bj, %i.bi
  br i1 %.not91, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.4451, ptr noundef nonnull %i.ba)
  br label %bb.ab

bb.v:                                             ; preds = %bb.t
  %i.bk = icmp samesign ugt i32 %.09.i, 6
  br i1 %i.bk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.4452)
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.bl = icmp eq i32 %.068, 0
  br i1 %i.bl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.4453)
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.bm = call fastcc i32 @Abc_TtReadHex(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ba) ; 0 uses
  %i.bn = load i64, ptr %i.a, align 8, !tbaa !123
  %i.bo = tail call ptr @Gia_ManKSatMapping(i64 noundef %i.bn, i32 noundef %.09.i, i32 noundef %.068, i32 noundef %.061, i32 noundef %.066, i32 noundef %.059, i32 noundef %.063, i32 noundef %.057, i32 noundef %.0, i32 noundef %.055, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %.071) #37 ; 2 uses
  %.not92 = icmp eq ptr %i.bo, null
  br i1 %.not92, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @Abc_FrameUpdateGia(ptr noundef %0, ptr noundef nonnull %i.bo)
  br label %bb.ab

.loopexit.sink.split:                             ; preds = %bb.m, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.str.1481.sink = phi ptr [ @.str.2445, %bb.k ], [ @.str.4441, %bb.j ], [ @.str.2482, %bb.i ], [ @.str.579, %bb.g ], [ @.str.4440, %bb.f ], [ @.str.4439, %bb.e ], [ @.str.4440, %bb.d ], [ @.str.959, %bb.c ], [ @.str.1481, %bb.m ]
  %.270.ph = phi i32 [ %.068, %bb.k ], [ %.068, %bb.j ], [ %.068, %bb.i ], [ %.068, %bb.g ], [ %.068, %bb.f ], [ %.068, %bb.e ], [ %i.h, %bb.d ], [ %.068, %bb.c ], [ %.068, %bb.m ]
  %.265.ph = phi i32 [ %.063, %bb.k ], [ %i.ae, %bb.j ], [ %.063, %bb.i ], [ %.063, %bb.g ], [ %.063, %bb.f ], [ %.063, %bb.e ], [ %.063, %bb.d ], [ %.063, %bb.c ], [ %.063, %bb.m ]
  %.2.ph = phi i32 [ %.061, %bb.k ], [ %.061, %bb.j ], [ %.061, %bb.i ], [ %.061, %bb.g ], [ %i.p, %bb.f ], [ %.061, %bb.e ], [ %.061, %bb.d ], [ %.061, %bb.c ], [ %.061, %bb.m ]
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull %.str.1481.sink)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.loopexit.sink.split
  %.270 = phi i32 [ %.270.ph, %.loopexit.sink.split ], [ %.068, %bb.b ]
  %.265 = phi i32 [ %.265.ph, %.loopexit.sink.split ], [ %.063, %bb.b ]
  %.2 = phi i32 [ %.2.ph, %.loopexit.sink.split ], [ %.061, %bb.b ]
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4454)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4455)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4456, i32 noundef %.270)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4445, i32 noundef %.2)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4446, i32 noundef %.066)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4447, i32 noundef %.265)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4448, i32 noundef %.057)
  %.not99 = icmp eq ptr %.071, null
  %i.bp = select i1 %.not99, ptr @.str.1516, ptr %.071
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4457, ptr noundef nonnull %i.bp)
  %.not100 = icmp eq i32 %.059, 0
  %i.bq = select i1 %.not100, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4458, ptr noundef nonnull %i.bq)
  %.not101 = icmp eq i32 %.055, 0
  %i.br = select i1 %.not101, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4449, ptr noundef nonnull %i.br)
  %.not102 = icmp eq i32 %.0, 0
  %i.bs = select i1 %.not102, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2392, ptr noundef nonnull %i.bs)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2564)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %.loopexit, %bb.y, %bb.w, %bb.u, %bb.s
  %.073 = phi i32 [ 1, %.loopexit ], [ 1, %bb.s ], [ 1, %bb.u ], [ 1, %bb.w ], [ 1, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret i32 %.073
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Abc_CommandAbc9SymFun(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) #8 {
bb.a:
  %3 = alloca i64, align 8                        ; 6 uses
  tail call void (...) @Extra_UtilGetoptReset() #37
  br label %.outer

.outer:                                           ; preds = %bb.d, %bb.a
  %.064.ph = phi i32 [ %i.h, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %.062.ph = phi i32 [ %.062.ph240, %bb.d ], [ 0, %bb.a ]
  %.060.ph = phi i32 [ %.060.ph245, %bb.d ], [ 0, %bb.a ]
  %.058.ph = phi i32 [ %.058.ph249, %bb.d ], [ 0, %bb.a ]
  %.057.ph = phi i32 [ %.057, %bb.d ], [ 0, %bb.a ]
  br label %.outer239

.outer239:                                        ; preds = %.outer, %bb.f
  %.062.ph240 = phi i32 [ %.062.ph, %.outer ], [ %i.o, %bb.f ] ; 3 uses
  %.060.ph241 = phi i32 [ %.060.ph, %.outer ], [ %.060.ph245, %bb.f ]
  %.058.ph242 = phi i32 [ %.058.ph, %.outer ], [ %.058.ph249, %bb.f ]
  %.057.ph243 = phi i32 [ %.057.ph, %.outer ], [ %.057, %bb.f ]
  br label %.outer244

.outer244:                                        ; preds = %.outer239, %bb.h
  %.060.ph245 = phi i32 [ %.060.ph241, %.outer239 ], [ %i.v, %bb.h ] ; 5 uses
  %.058.ph246 = phi i32 [ %.058.ph242, %.outer239 ], [ %.058.ph249, %bb.h ]
  %.057.ph247 = phi i32 [ %.057.ph243, %.outer239 ], [ %.057, %bb.h ]
  br label %.outer248

.outer248:                                        ; preds = %.outer244, %bb.j
  %.058.ph249 = phi i32 [ %.058.ph246, %.outer244 ], [ %i.ac, %bb.j ] ; 7 uses
  %.057.ph250 = phi i32 [ %.057.ph247, %.outer244 ], [ %.057, %bb.j ]
  br label %bb.b

bb.b:                                             ; preds = %.outer248, %bb.k
  %.057 = phi i32 [ %i.ad, %bb.k ], [ %.057.ph250, %.outer248 ] ; 7 uses
  %i.a = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.4459) #37
  switch i32 %i.a, label %.loopexit115 [
    i32 -1, label %bb.l
    i32 77, label %bb.c
    i32 72, label %bb.e
    i32 88, label %bb.g
    i32 87, label %bb.i
    i32 118, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not88 = icmp slt i32 %i.b, %1
  br i1 %.not88, label %bb.d, label %.loopexit115.sink.split

bb.d:                                             ; preds = %bb.c
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.d = sext i32 %i.b to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %2, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !99
  %i.g = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.f, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.h = trunc i64 %i.g to i32
  br label %.outer, !llvm.loop !1267

bb.e:                                             ; preds = %bb.b
  %i.i = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not87 = icmp slt i32 %i.i, %1
  br i1 %.not87, label %bb.f, label %.loopexit115.sink.split

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.k = sext i32 %i.i to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %2, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !99
  %i.n = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.m, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.o = trunc i64 %i.n to i32
  br label %.outer239, !llvm.loop !1267

bb.g:                                             ; preds = %bb.b
  %i.p = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not86 = icmp slt i32 %i.p, %1
  br i1 %.not86, label %bb.h, label %.loopexit115.sink.split

bb.h:                                             ; preds = %bb.g
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %2, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !99
  %i.u = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.t, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.v = trunc i64 %i.u to i32
  br label %.outer244, !llvm.loop !1267

bb.i:                                             ; preds = %bb.b
  %i.w = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not85 = icmp slt i32 %i.w, %1
  br i1 %.not85, label %bb.j, label %.loopexit115.sink.split

bb.j:                                             ; preds = %bb.i
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %2, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !99
  %i.ab = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.aa, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.ac = trunc i64 %i.ab to i32
  br label %.outer248, !llvm.loop !1267

bb.k:                                             ; preds = %bb.b
  %i.ad = xor i32 %.057, 1
  br label %bb.b, !llvm.loop !1267

bb.l:                                             ; preds = %bb.b
  %.not78 = icmp eq i32 %.064.ph, 0
  br i1 %.not78, label %bb.m, label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %bb.l
  %i.ae = add nsw i32 %.064.ph, 1
  %i.af = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 16, ptr %i.af, align 8, !tbaa !1268
  %i.ah = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #38 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !959
  %i.aj = sdiv i32 %.064.ph, 2                    ; 2 uses
  %i.ak = add nsw i32 %i.aj, 1
  %i.al = sub nsw i32 63, %i.aj
  %i.am = zext nneg i32 %i.al to i64
  %i.an = lshr i64 -1, %i.am
  %i.ao = zext nneg i32 %i.ak to i64
  %i.ap = shl i64 %i.an, %i.ao
  store i32 1, ptr %i.ag, align 4, !tbaa !967
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !123
  br label %.loopexit

bb.m:                                             ; preds = %bb.l
  %.not79 = icmp eq i32 %.062.ph240, 0
  br i1 %.not79, label %bb.n, label %Vec_WrdPush.exit97

Vec_WrdPush.exit97:                               ; preds = %bb.m
  %i.aq = add nsw i32 %.062.ph240, 1
  %i.ar = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 16, ptr %i.ar, align 8, !tbaa !1268
  %i.at = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #38 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.at, ptr %i.au, align 8, !tbaa !959
  store i32 1, ptr %i.as, align 4, !tbaa !967
  store i64 2, ptr %i.at, align 8, !tbaa !123
  br label %.loopexit

bb.n:                                             ; preds = %bb.m
  %.not80 = icmp eq i32 %.060.ph245, 0
  br i1 %.not80, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = add nsw i32 %.060.ph245, 1
  %i.aw = tail call fastcc ptr @Vec_WrdAlloc(i32 noundef 1) ; 2 uses
  %i.ax = sub nsw i32 63, %.060.ph245
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = lshr i64 -1, %i.ay
  %i.ba = and i64 %i.az, -6148914691236517206
  tail call fastcc void @Vec_WrdPush(ptr noundef %i.aw, i64 noundef %i.ba)
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %.not81 = icmp eq i32 %.058.ph249, 0
  br i1 %.not81, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = add nsw i32 %.058.ph249, 1              ; 4 uses
  %i.bc = icmp ult i32 %i.bb, 2
  %i.bd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.058.ph249, i1 true)
  %i.be = sub nuw nsw i32 32, %i.bd
  %.09.i = select i1 %i.bc, i32 %i.bb, i32 %i.be  ; 3 uses
  %i.bf = tail call fastcc ptr @Vec_WrdAlloc(i32 noundef %.09.i) ; 6 uses
  %i.bg = icmp sgt i32 %.09.i, 0
  br i1 %i.bg, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.q
  %i.bh = sub nsw i32 63, %.058.ph249
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = lshr i64 -1, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %wide.trip.count = zext nneg i32 %.09.i to i64
  %.pre = load i32, ptr %i.bk, align 4, !tbaa !967
  %.pre180 = load i32, ptr %i.bf, align 8, !tbaa !1268
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %Vec_WrdPush.exit105
  %i.bm = phi i32 [ %.pre180, %.lr.ph ], [ %i.ce, %Vec_WrdPush.exit105 ] ; 7 uses
  %i.bn = phi i32 [ %.pre, %.lr.ph ], [ %i.cf, %Vec_WrdPush.exit105 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_WrdPush.exit105 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %indvars.iv
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !123
  %i.bq = and i64 %i.bp, %i.bj
  %i.br = icmp eq i32 %i.bn, %i.bm
  br i1 %i.br, label %bb.s, label %.Vec_WrdPush.exit105_crit_edge

.Vec_WrdPush.exit105_crit_edge:                   ; preds = %bb.r
  %.pre181 = load ptr, ptr %i.bl, align 8, !tbaa !959
  br label %Vec_WrdPush.exit105

bb.s:                                             ; preds = %bb.r
  %i.bs = icmp slt i32 %i.bm, 16
  br i1 %i.bs, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.bt = load ptr, ptr %i.bl, align 8, !tbaa !959 ; 2 uses
  %.not9.i.i103 = icmp eq ptr %i.bt, null
  br i1 %.not9.i.i103, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.bt, i64 noundef 128) #39
  br label %Vec_WrdGrow.exit11.sink.split.i101

bb.v:                                             ; preds = %bb.t
  %i.bv = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #38
  br label %Vec_WrdGrow.exit11.sink.split.i101

bb.w:                                             ; preds = %bb.s
  %i.bw = icmp samesign ult i32 %i.bm, 1073741823
  %i.bx = shl nuw nsw i32 %i.bm, 1
  %spec.select.i98 = select i1 %i.bw, i32 %i.bx, i32 2147483647 ; 4 uses
  %.not.i9.i99 = icmp samesign ult i32 %i.bm, %spec.select.i98
  %.pre182 = load ptr, ptr %i.bl, align 8, !tbaa !959 ; 3 uses
  br i1 %.not.i9.i99, label %bb.x, label %Vec_WrdPush.exit105

bb.x:                                             ; preds = %bb.w
  %.not9.i10.i100 = icmp eq ptr %.pre182, null
  %i.by = zext nneg i32 %spec.select.i98 to i64
  %i.bz = shl nuw nsw i64 %i.by, 3                ; 2 uses
  br i1 %.not9.i10.i100, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ca = tail call ptr @realloc(ptr noundef nonnull %.pre182, i64 noundef %i.bz) #39
  br label %Vec_WrdGrow.exit11.sink.split.i101

bb.z:                                             ; preds = %bb.x
  %i.cb = tail call noalias ptr @malloc(i64 noundef %i.bz) #38
  br label %Vec_WrdGrow.exit11.sink.split.i101

Vec_WrdGrow.exit11.sink.split.i101:               ; preds = %bb.y, %bb.z, %bb.u, %bb.v
  %i.cc = phi ptr [ %i.bv, %bb.v ], [ %i.bu, %bb.u ], [ %i.ca, %bb.y ], [ %i.cb, %bb.z ] ; 2 uses
  %spec.select.sink.i102 = phi i32 [ 16, %bb.v ], [ 16, %bb.u ], [ %spec.select.i98, %bb.y ], [ %spec.select.i98, %bb.z ] ; 2 uses
  store ptr %i.cc, ptr %i.bl, align 8, !tbaa !959
  store i32 %spec.select.sink.i102, ptr %i.bf, align 8, !tbaa !1268
  br label %Vec_WrdPush.exit105

Vec_WrdPush.exit105:                              ; preds = %.Vec_WrdPush.exit105_crit_edge, %bb.w, %Vec_WrdGrow.exit11.sink.split.i101
  %i.cd = phi ptr [ %.pre181, %.Vec_WrdPush.exit105_crit_edge ], [ %.pre182, %bb.w ], [ %i.cc, %Vec_WrdGrow.exit11.sink.split.i101 ]
  %i.ce = phi i32 [ %i.bm, %.Vec_WrdPush.exit105_crit_edge ], [ %i.bm, %bb.w ], [ %spec.select.sink.i102, %Vec_WrdGrow.exit11.sink.split.i101 ]
  %i.cf = add nsw i32 %i.bn, 1                    ; 2 uses
  store i32 %i.cf, ptr %i.bk, align 4, !tbaa !967
  %i.cg = sext i32 %i.bn to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cg
  store i64 %i.bq, ptr %i.ch, align 8, !tbaa !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.r, !llvm.loop !1269

bb.aa:                                            ; preds = %bb.p
  %i.ci = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 2 uses
  %i.cj = icmp eq i32 %1, %i.ci
  br i1 %i.cj, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %puts83 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.41) ; 0 uses
  br label %bb.at

bb.ac:                                            ; preds = %bb.aa
  %i.ck = sext i32 %i.ci to i64                   ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !99
  %i.cn = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cm) #40
  %i.co = trunc i64 %i.cn to i32                  ; 3 uses
  %i.cp = sext i32 %1 to i64                      ; 2 uses
  %indvars.iv.next174235 = add nsw i64 %i.ck, 1   ; 2 uses
  %i.cq = icmp slt i64 %indvars.iv.next174235, %i.cp
  br i1 %i.cq, label %.lr.ph237, label %._crit_edge

bb.ad:                                            ; preds = %.lr.ph237
  %indvars.iv.next174 = add nsw i64 %indvars.iv.next174236, 1 ; 2 uses
  %i.cr = icmp slt i64 %indvars.iv.next174, %i.cp
  br i1 %i.cr, label %.lr.ph237, label %._crit_edge, !llvm.loop !1270

.lr.ph237:                                        ; preds = %bb.ac, %bb.ad
  %indvars.iv.next174236 = phi i64 [ %indvars.iv.next174, %bb.ad ], [ %indvars.iv.next174235, %bb.ac ] ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.next174236
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !99
  %i.cu = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ct) #40
  %i.cv = trunc i64 %i.cu to i32
  %.not82 = icmp eq i32 %i.co, %i.cv
  br i1 %.not82, label %bb.ad, label %bb.ae, !llvm.loop !1270

bb.ae:                                            ; preds = %.lr.ph237
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.40) ; 0 uses
  br label %bb.at

._crit_edge:                                      ; preds = %bb.ad, %bb.ac
  %i.cw = tail call fastcc ptr @Vec_WrdAlloc(i32 noundef %1) ; 6 uses
  %i.cx = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 2 uses
  %i.cy = icmp slt i32 %i.cx, %1
  br i1 %i.cy, label %.lr.ph144, label %.loopexit

.lr.ph144:                                        ; preds = %._crit_edge
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 4 uses
  %i.db = sext i32 %i.cx to i64
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph144, %Vec_WrdPush.exit113
  %indvars.iv176 = phi i64 [ %i.db, %.lr.ph144 ], [ %indvars.iv.next177, %Vec_WrdPush.exit113 ] ; 2 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv176
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !99 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.de = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.dd) #40 ; 2 uses
  %i.df = trunc i64 %i.de to i32
  store i64 0, ptr %3, align 8
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %.lr.ph.preheader.i.i, label %Abc_TtReadBin64.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.af
  %wide.trip.count.i.i = and i64 %i.de, 2147483647
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ah, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ah ] ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 %indvars.iv.i.i
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !110
  switch i8 %i.di, label %Abc_TtReadBin.exit.i [
    i8 49, label %bb.ag
    i8 48, label %bb.ah
  ]

bb.ag:                                            ; preds = %.lr.ph.i.i
  %i.dj = and i64 %indvars.iv.i.i, 63
  %i.dk = shl nuw i64 1, %i.dj
  %4 = lshr i64 %indvars.iv.i.i, 3
  %.0..sroa_stride.i = and i64 %4, 536870904      ; 2 uses
  %.0..0..0..0..0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 %.0..sroa_stride.i
  %.0..0..0..0..0..i = load i64, ptr %.0..0..0..0..0..sroa_idx, align 8, !tbaa !123
  %i.dl = or i64 %.0..0..0..0..0..i, %i.dk
  %.0..0..0..0..0..sroa_idx291 = getelementptr inbounds nuw i8, ptr %3, i64 %.0..sroa_stride.i
  store i64 %i.dl, ptr %.0..0..0..0..0..sroa_idx291, align 8, !tbaa !123
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Abc_TtReadBin.exit.thread.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1271

Abc_TtReadBin.exit.i:                             ; preds = %.lr.ph.i.i
  %i.dm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4471, ptr noundef nonnull %i.dd) ; 0 uses
  br label %Abc_TtReadBin64.exit

Abc_TtReadBin.exit.thread.loopexit.i:             ; preds = %bb.ah
  %.0..0..0..0..0.6.pre.i = load i64, ptr %3, align 8, !tbaa !123
  br label %Abc_TtReadBin64.exit

Abc_TtReadBin64.exit:                             ; preds = %bb.af, %Abc_TtReadBin.exit.i, %Abc_TtReadBin.exit.thread.loopexit.i
  %.0.i = phi i64 [ %.0..0..0..0..0.6.pre.i, %Abc_TtReadBin.exit.thread.loopexit.i ], [ 0, %bb.af ], [ -1, %Abc_TtReadBin.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.dn = load i32, ptr %i.cz, align 4, !tbaa !967 ; 7 uses
  %i.do = load i32, ptr %i.cw, align 8, !tbaa !1268
  %i.dp = icmp eq i32 %i.dn, %i.do
  br i1 %i.dp, label %bb.ai, label %Abc_TtReadBin64.exit.Vec_WrdPush.exit113_crit_edge

Abc_TtReadBin64.exit.Vec_WrdPush.exit113_crit_edge: ; preds = %Abc_TtReadBin64.exit
  %.pre183 = load ptr, ptr %i.da, align 8, !tbaa !959
  br label %Vec_WrdPush.exit113

bb.ai:                                            ; preds = %Abc_TtReadBin64.exit
  %i.dq = icmp slt i32 %i.dn, 16
  br i1 %i.dq, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.dr = load ptr, ptr %i.da, align 8, !tbaa !959 ; 2 uses
  %.not9.i.i111 = icmp eq ptr %i.dr, null
  br i1 %.not9.i.i111, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ds = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.dr, i64 noundef 128) #39
  br label %Vec_WrdGrow.exit11.sink.split.i109

bb.al:                                            ; preds = %bb.aj
  %i.dt = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #38
  br label %Vec_WrdGrow.exit11.sink.split.i109

bb.am:                                            ; preds = %bb.ai
  %i.du = icmp samesign ult i32 %i.dn, 1073741823
  %i.dv = shl nuw nsw i32 %i.dn, 1
  %spec.select.i106 = select i1 %i.du, i32 %i.dv, i32 2147483647 ; 4 uses
  %.not.i9.i107 = icmp samesign ult i32 %i.dn, %spec.select.i106
  %.pre184 = load ptr, ptr %i.da, align 8, !tbaa !959 ; 3 uses
  br i1 %.not.i9.i107, label %bb.an, label %Vec_WrdPush.exit113

bb.an:                                            ; preds = %bb.am
  %.not9.i10.i108 = icmp eq ptr %.pre184, null
  %i.dw = zext nneg i32 %spec.select.i106 to i64
  %i.dx = shl nuw nsw i64 %i.dw, 3                ; 2 uses
  br i1 %.not9.i10.i108, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dy = tail call ptr @realloc(ptr noundef nonnull %.pre184, i64 noundef %i.dx) #39
  br label %Vec_WrdGrow.exit11.sink.split.i109

bb.ap:                                            ; preds = %bb.an
  %i.dz = tail call noalias ptr @malloc(i64 noundef %i.dx) #38
  br label %Vec_WrdGrow.exit11.sink.split.i109

Vec_WrdGrow.exit11.sink.split.i109:               ; preds = %bb.ao, %bb.ap, %bb.ak, %bb.al
  %i.ea = phi ptr [ %i.dt, %bb.al ], [ %i.ds, %bb.ak ], [ %i.dy, %bb.ao ], [ %i.dz, %bb.ap ] ; 2 uses
  %spec.select.sink.i110 = phi i32 [ 16, %bb.al ], [ 16, %bb.ak ], [ %spec.select.i106, %bb.ao ], [ %spec.select.i106, %bb.ap ]
  store ptr %i.ea, ptr %i.da, align 8, !tbaa !959
  store i32 %spec.select.sink.i110, ptr %i.cw, align 8, !tbaa !1268
  br label %Vec_WrdPush.exit113

Vec_WrdPush.exit113:                              ; preds = %Abc_TtReadBin64.exit.Vec_WrdPush.exit113_crit_edge, %bb.am, %Vec_WrdGrow.exit11.sink.split.i109
  %i.eb = phi ptr [ %.pre183, %Abc_TtReadBin64.exit.Vec_WrdPush.exit113_crit_edge ], [ %.pre184, %bb.am ], [ %i.ea, %Vec_WrdGrow.exit11.sink.split.i109 ]
  %i.ec = add nsw i32 %i.dn, 1
  store i32 %i.ec, ptr %i.cz, align 4, !tbaa !967
  %i.ed = sext i32 %i.dn to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.ed
  store i64 %.0.i, ptr %i.ee, align 8, !tbaa !123
  %indvars.iv.next177 = add nsw i64 %indvars.iv176, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next177 to i32
  %exitcond179.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond179.not, label %.loopexit, label %bb.af, !llvm.loop !1272

.loopexit:                                        ; preds = %Vec_WrdPush.exit105, %Vec_WrdPush.exit113, %bb.q, %._crit_edge, %Vec_WrdPush.exit97, %bb.o, %Vec_WrdPush.exit
  %.069 = phi ptr [ %i.af, %Vec_WrdPush.exit ], [ %i.ar, %Vec_WrdPush.exit97 ], [ %i.aw, %bb.o ], [ %i.cw, %._crit_edge ], [ %i.bf, %bb.q ], [ %i.cw, %Vec_WrdPush.exit113 ], [ %i.bf, %Vec_WrdPush.exit105 ] ; 3 uses
  %.066 = phi i32 [ %i.ae, %Vec_WrdPush.exit ], [ %i.aq, %Vec_WrdPush.exit97 ], [ %i.av, %bb.o ], [ %i.co, %._crit_edge ], [ %i.bb, %bb.q ], [ %i.co, %Vec_WrdPush.exit113 ], [ %i.bb, %Vec_WrdPush.exit105 ] ; 2 uses
  %i.ef = icmp sgt i32 %.066, 64
  br i1 %i.ef, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.loopexit
  %puts84 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.42) ; 0 uses
  br label %bb.at

bb.ar:                                            ; preds = %.loopexit
  %i.eg = tail call ptr @Gia_ManGenSymFun(ptr noundef %.069, i32 noundef %.066, i32 noundef %.057) #37
  tail call void @Abc_FrameUpdateGia(ptr noundef %0, ptr noundef %i.eg)
  %i.eh = getelementptr inbounds nuw i8, ptr %.069, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !959 ; 2 uses
  %.not.i = icmp eq ptr %i.ei, null
  br i1 %.not.i, label %Vec_WrdFree.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @free(ptr noundef nonnull %i.ei) #37
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %bb.ar, %bb.as
  tail call void @free(ptr noundef nonnull %.069) #37
  br label %bb.at

.loopexit115.sink.split:                          ; preds = %bb.c, %bb.g, %bb.i, %bb.e
  %.str.3173.sink = phi ptr [ @.str.4460, %bb.e ], [ @.str.2912, %bb.g ], [ @.str.3173, %bb.i ], [ @.str.2928, %bb.c ]
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull %.str.3173.sink)
  br label %.loopexit115

.loopexit115:                                     ; preds = %bb.b, %.loopexit115.sink.split
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4464)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4465)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4466)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4467)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4468)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4469)
  %.not89 = icmp eq i32 %.057, 0
  %i.ej = select i1 %.not89, ptr @.str.593, ptr @.str.592
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2392, ptr noundef nonnull %i.ej)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.2564)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.4470)
  br label %bb.at

bb.at:                                            ; preds = %.loopexit115, %Vec_WrdFree.exit, %bb.aq, %bb.ae, %bb.ab
  %.070 = phi i32 [ 1, %.loopexit115 ], [ 0, %bb.aq ], [ 0, %Vec_WrdFree.exit ], [ 0, %bb.ab ], [ 0, %bb.ae ]
  ret i32 %.070
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Abc_CommandAbc9Pack(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #8 {
bb.a:
  tail call void (...) @Extra_UtilGetoptReset() #37
  %i.a = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.4472) #37 ; 2 uses
  %.not86 = icmp eq i32 %i.a, -1
  br i1 %.not86, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.o
  %i.b = phi i32 [ %i.ad, %bb.o ], [ %i.a, %bb.a ]
  %.090 = phi i32 [ %.1, %bb.o ], [ 0, %bb.a ]    ; 5 uses
  %.02989 = phi i32 [ %.130, %bb.o ], [ 2, %bb.a ] ; 9 uses
  %.03188 = phi i32 [ %.132, %bb.o ], [ 10, %bb.a ] ; 10 uses
  %.03487 = phi i32 [ %.135, %bb.o ], [ 2, %bb.a ] ; 9 uses
  %i.c = add i32 %i.b, -68                        ; 2 uses
  %i.d = tail call i32 @llvm.fshl.i32(i32 %i.c, i32 %i.c, i32 31)
  switch i32 %i.d, label %.loopexit [
    i32 5, label %bb.b
    i32 7, label %bb.f
    i32 0, label %bb.j
    i32 25, label %bb.n
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.e = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not52 = icmp slt i32 %i.e, %1
  br i1 %.not52, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.959)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %2, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !99
  %i.i = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.h, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.j = trunc i64 %i.i to i32                    ; 4 uses
  %i.k = add nsw i32 %i.e, 1
  store i32 %i.k, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.l = icmp slt i32 %i.j, 2
  br i1 %i.l, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.4473, i32 noundef %i.j)
  br label %.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.m = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not51 = icmp slt i32 %i.m, %1
  br i1 %.not51, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.959)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %2, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !99
  %i.q = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.p, ptr noundef null, i32 noundef 10) #37, !inline_history !114
  %i.r = trunc i64 %i.q to i32                    ; 4 uses
  %i.s = add nsw i32 %i.m, 1
  store i32 %i.s, ptr @globalUtilOptind, align 4, !tbaa !47
  %i.t = icmp slt i32 %i.r, 1
  br i1 %i.t, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.4474, i32 noundef %i.r)
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph
  %i.u = load i32, ptr @globalUtilOptind, align 4, !tbaa !47 ; 3 uses
  %.not50 = icmp slt i32 %i.u, %1
  br i1 %.not50, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.2453)
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %2, i64 %i.v
end_hunk_0
