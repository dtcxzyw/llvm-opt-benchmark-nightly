Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/test?download=true
inline.NumInlined: 122
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 81
loop-unroll.NumUnrolled: 82
begin_hunk_0_@macro_test:bb.a
  %narrow.neg73.i49 = mul nsw i32 %i.cg, -100000
  %i.ch = add nsw i32 %narrow.neg73.i49, -1610616680
  br label %safe_sub_sword64_test.exit

bb.an:                                            ; preds = %bb.al
  br i1 %or.cond.i43, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ci = sub nuw nsw i64 9223372036854775807, %i.bl
  %.not65.i52 = icmp sle i64 %i.ca, %i.ci
  br label %bb.ar

bb.ap:                                            ; preds = %bb.an
  %i.cj = and i64 %i.bm, 3008
  %.not62.i61 = icmp eq i64 %i.cj, 0
  %i.ck = and i64 %i.bm, 1856
  %.not63.i62 = icmp eq i64 %i.ck, 0
  %or.cond90.i63 = or i1 %.not62.i61, %.not63.i62
  br i1 %or.cond90.i63, label %.thread.i65, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cl = sub nsw i64 -9223372036854775808, %i.bl
  %.not64.i64 = icmp sge i64 %i.ca, %i.cl
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.not64.sink.i53 = phi i1 [ %.not64.i64, %bb.aq ], [ %.not65.i52, %bb.ao ] ; 2 uses
  %i.cm = xor i1 %.shrunk.i47, %.not64.sink.i53
  br i1 %i.cm, label %bb.at, label %bb.as

.thread.i65:                                      ; preds = %bb.ap
  %i.cn = and i64 %i.bm, 3237
  %.not6682.not.i66 = icmp eq i64 %i.cn, 0
  br i1 %.not6682.not.i66, label %bb.at, label %.thread84.i57

bb.as:                                            ; preds = %bb.ar
  br i1 %.not64.sink.i53, label %.thread84.i57, label %bb.au

.thread84.i57:                                    ; preds = %bb.as, %.thread.i65
  %.18387.i58 = add nsw i64 %i.ca, %i.bl
  %.not68.i59 = icmp eq i64 %.18387.i58, %.042.i46
  br i1 %.not68.i59, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.thread84.i57, %.thread.i65, %bb.ar
  %i.co = trunc nuw nsw i64 %indvars.iv.i40 to i32
  %narrow.neg.i60 = mul nsw i32 %i.co, -100000
  %i.cp = add nsw i32 %narrow.neg.i60, -1610616684
  br label %safe_sub_sword64_test.exit

bb.au:                                            ; preds = %.thread84.i57, %bb.as
  %indvars.iv.next.i55 = add nuw nsw i64 %indvars.iv.i40, 1 ; 2 uses
  %exitcond.not.i56 = icmp eq i64 %indvars.iv.next.i55, 14
  br i1 %exitcond.not.i56, label %safe_sum_sword64_test.exit, label %safe_sub_sword32_test.exit, !llvm.loop !36

safe_sum_sword64_test.exit:                       ; preds = %bb.au, %bb.bj
  %indvars.iv.i72 = phi i64 [ %indvars.iv.next.i87, %bb.bj ], [ 0, %bb.au ] ; 4 uses
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr @safe_sub_sword64_test.cases, i64 %indvars.iv.i72 ; 5 uses
  %i.cr = load i64, ptr %i.cq, align 16, !tbaa !44 ; 9 uses
  %i.cs = shl nuw nsw i64 1, %indvars.iv.i72      ; 6 uses
  %i.ct = and i64 %i.cs, 17438
  %.not.i73 = icmp eq i64 %i.ct, 0
  %i.cu = and i64 %i.cs, 30772
  %.not53.i74 = icmp eq i64 %i.cu, 0
  %or.cond.i75 = or i1 %.not.i73, %.not53.i74     ; 2 uses
  br i1 %or.cond.i75, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %safe_sum_sword64_test.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !45 ; 3 uses
  %i.cx = add nsw i64 %i.cr, -9223372036854775807
  %.not57.i76 = icmp sge i64 %i.cw, %i.cx         ; 2 uses
  %i.cy = sub nsw i64 %i.cr, %i.cw
  %spec.select77.i77 = select i1 %.not57.i76, i64 %i.cy, i64 9223372036854775807
  br label %bb.az

bb.aw:                                            ; preds = %safe_sum_sword64_test.exit
  %i.cz = and i64 %i.cs, 15264
  %.not54.i98 = icmp eq i64 %i.cz, 0
  %i.da = and i64 %i.cs, 1858
  %.not55.i99 = icmp eq i64 %i.da, 0
  %or.cond88.i100 = or i1 %.not54.i98, %.not55.i99
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !45 ; 5 uses
  br i1 %or.cond88.i100, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dd = xor i64 %i.cr, -9223372036854775808
  %.not56.i101 = icmp sle i64 %i.dc, %i.dd        ; 2 uses
  %i.de = sub nuw nsw i64 %i.cr, %i.dc
  %spec.select79.i102 = select i1 %.not56.i101, i64 %i.de, i64 -9223372036854775808
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.df = sub nsw i64 %i.cr, %i.dc
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.av
  %i.dg = phi i64 [ %i.cw, %bb.av ], [ %i.dc, %bb.ay ], [ %i.dc, %bb.ax ] ; 4 uses
  %.042.i78 = phi i64 [ %spec.select77.i77, %bb.av ], [ %i.df, %bb.ay ], [ %spec.select79.i102, %bb.ax ] ; 3 uses
  %.shrunk.i79 = phi i1 [ %.not57.i76, %bb.av ], [ true, %bb.ay ], [ %.not56.i101, %bb.ax ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.di = load i64, ptr %i.dh, align 16, !tbaa !46
  %.not58.i80 = icmp eq i64 %.042.i78, %i.di
  %i.dj = trunc nuw nsw i64 %indvars.iv.i72 to i32 ; 3 uses
  br i1 %.not58.i80, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.dk = zext i1 %.shrunk.i79 to i32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !47
  %.not59.i83 = icmp eq i32 %i.dm, %i.dk
  br i1 %.not59.i83, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %narrow.neg73.i81 = mul nsw i32 %i.dj, -100000
  %i.dn = add nsw i32 %narrow.neg73.i81, -1610616725
  br label %safe_sub_sword64_test.exit

bb.bc:                                            ; preds = %bb.ba
  br i1 %or.cond.i75, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.do = add nsw i64 %i.cr, -9223372036854775807
  %.not65.i84 = icmp sge i64 %i.dg, %i.do
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %i.dp = and i64 %i.cs, 15264
  %.not62.i93 = icmp eq i64 %i.dp, 0
  %i.dq = and i64 %i.cs, 1858
  %.not63.i94 = icmp eq i64 %i.dq, 0
  %or.cond90.i95 = or i1 %.not62.i93, %.not63.i94
  br i1 %or.cond90.i95, label %.thread.i97, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dr = xor i64 %i.cr, -9223372036854775808
  %.not64.i96 = icmp sle i64 %i.dg, %i.dr
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bd
  %.not64.sink.i85 = phi i1 [ %.not64.i96, %bb.bf ], [ %.not65.i84, %bb.bd ] ; 2 uses
  %i.ds = xor i1 %.shrunk.i79, %.not64.sink.i85
  br i1 %i.ds, label %bb.bi, label %bb.bh

.thread.i97:                                      ; preds = %bb.be
  switch i32 %i.dj, label %.thread84.i89 [
    i32 9, label %bb.bi
    i32 4, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  %.18387.i90 = sub nsw i64 %i.cr, %i.dg
  %.not68.i91 = icmp ne i64 %.18387.i90, %.042.i78
  %or.cond111.not = select i1 %.not64.sink.i85, i1 %.not68.i91, i1 false
  br i1 %or.cond111.not, label %bb.bi, label %bb.bj

.thread84.i89:                                    ; preds = %.thread.i97
  %.18387.i90.old = sub nsw i64 %i.cr, %i.dg
  %.not68.i91.old = icmp eq i64 %.18387.i90.old, %.042.i78
  br i1 %.not68.i91.old, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.thread84.i89, %.thread.i97, %.thread.i97, %bb.bg
  %narrow.neg.i92 = mul nsw i32 %i.dj, -100000
  %i.dt = add nsw i32 %narrow.neg.i92, -1610616729
  br label %safe_sub_sword64_test.exit

bb.bj:                                            ; preds = %.thread84.i89, %bb.bh
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i72, 1 ; 2 uses
  %exitcond.not.i88 = icmp eq i64 %indvars.iv.next.i87, 15
  br i1 %exitcond.not.i88, label %safe_sub_sword64_test.exit, label %safe_sum_sword64_test.exit, !llvm.loop !37

safe_sub_sword64_test.exit:                       ; preds = %bb.bj, %bb.p, %bb.i, %bb.x, %bb.ae, %bb.at, %bb.am, %bb.bi, %bb.bb
  %.6 = phi i32 [ %i.x, %bb.i ], [ %i.dn, %bb.bb ], [ %i.dt, %bb.bi ], [ %i.cp, %bb.at ], [ %i.ch, %bb.am ], [ %i.bd, %bb.x ], [ %i.bj, %bb.ae ], [ %i.af, %bb.p ], [ 0, %bb.bj ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1810516829, 1) i32 @error_test() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = tail call ptr @wc_GetErrorString(i32 noundef -1019) #19 ; 5 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.n
  %.03469 = phi i32 [ -97, %bb.a ], [ %i.s, %bb.n ] ; 12 uses
  %.not37 = icmp samesign ugt i32 %.03469, -300
  %i.c = add nsw i32 %.03469, 1018
  %or.cond = icmp ult i32 %i.c, 19
  %or.cond93 = select i1 %.not37, i1 true, i1 %or.cond
  %i.d = call ptr @wc_GetErrorString(i32 noundef %.03469) #19 ; 3 uses
  call void @wc_ErrorString(i32 noundef %.03469, ptr noundef nonnull %i.a) #19
  %i.e = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.b) #20
  %i.f = icmp eq i32 %i.e, 0                      ; 2 uses
  br i1 %or.cond93, label %bb.b, label %bb.j

bb.b:                                             ; preds = %.preheader
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %narrow.neg51 = mul i32 %.03469, 100000
  %i.g = add nsw i32 %narrow.neg51, -1610616809
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.h = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b) #20
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %narrow.neg48 = mul i32 %.03469, 100000
  %i.j = add nsw i32 %narrow.neg48, -1610616813
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.k = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.a) #20
  %.not40 = icmp eq i32 %i.k, 0
  br i1 %.not40, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %narrow.neg45 = mul i32 %.03469, 100000
  %i.l = add nsw i32 %narrow.neg45, -1610616817
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.m = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #20
  %i.n = icmp ugt i64 %i.m, 79
  br i1 %i.n, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %narrow.neg = mul i32 %.03469, 100000
  %i.o = add nsw i32 %narrow.neg, -1610616821
  br label %.thread

bb.j:                                             ; preds = %.preheader
  br i1 %i.f, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %narrow.neg59 = mul i32 %.03469, 100000
  %i.p = add nsw i32 %narrow.neg59, -1610616827
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.q = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b) #20
  %.not53 = icmp eq i32 %i.q, 0
  br i1 %.not53, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %narrow.neg56 = mul i32 %.03469, 100000
  %i.r = add nsw i32 %narrow.neg56, -1610616829
  br label %.thread

bb.n:                                             ; preds = %bb.l, %bb.h
  %i.s = add nsw i32 %.03469, -1
  %i.t = icmp samesign ugt i32 %.03469, -1999
  br i1 %i.t, label %.preheader, label %bb.o, !llvm.loop !48

bb.o:                                             ; preds = %bb.n
  %i.u = call ptr @wc_GetErrorString(i32 noundef -2000) #19
  call void @wc_ErrorString(i32 noundef -2000, ptr noundef nonnull %i.a) #19
  %i.v = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.u, ptr noundef nonnull dereferenceable(1) %i.b) #20
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.w = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %i.b) #20
  %.not36 = icmp eq i32 %i.w, 0
  %. = select i1 %.not36, i32 0, i32 -4103
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.e, %bb.c, %bb.i, %bb.m, %bb.k, %bb.p, %bb.o
  %.2 = phi i32 [ %., %bb.p ], [ -4101, %bb.o ], [ %i.l, %bb.g ], [ %i.j, %bb.e ], [ %i.g, %bb.c ], [ %i.o, %bb.i ], [ %i.r, %bb.m ], [ %i.p, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1278467166, 1) i32 @memory_test() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 21 uses
  %i.c = alloca i32, align 4                      ; 21 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = tail call ptr @wolfSSL_Malloc(i64 noundef 1024) #19 ; 71 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %simple_mem_test.exit.thread, label %vector.body

vector.body:                                      ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.h, align 1, !tbaa !18
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.j, align 1, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.k, align 1, !tbaa !18
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.l, align 1, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.m, align 1, !tbaa !18
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.n, align 1, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.o, align 1, !tbaa !18
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.p, align 1, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.q, align 1, !tbaa !18
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.r, align 1, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.s, align 1, !tbaa !18
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.t, align 1, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.u, align 1, !tbaa !18
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.v, align 1, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.w, align 1, !tbaa !18
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.x, align 1, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.y, align 1, !tbaa !18
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.z, align 1, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.aa, align 1, !tbaa !18
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.ab, align 1, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.ac, align 1, !tbaa !18
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.ad, align 1, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 352
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.ae, align 1, !tbaa !18
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.af, align 1, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 400
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.ag, align 1, !tbaa !18
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.ah, align 1, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 416
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.ai, align 1, !tbaa !18
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.aj, align 1, !tbaa !18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 464
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.ak, align 1, !tbaa !18
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.al, align 1, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 496
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.am, align 1, !tbaa !18
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.an, align 1, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 512
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 528
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.ao, align 1, !tbaa !18
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.ap, align 1, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 544
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 560
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.aq, align 1, !tbaa !18
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.ar, align 1, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 576
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 592
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.as, align 1, !tbaa !18
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.at, align 1, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 608
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 624
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.au, align 1, !tbaa !18
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.av, align 1, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 640
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 656
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.aw, align 1, !tbaa !18
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.ax, align 1, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 672
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 688
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.ay, align 1, !tbaa !18
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.az, align 1, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 704
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 720
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.ba, align 1, !tbaa !18
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.bb, align 1, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 736
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 752
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.bc, align 1, !tbaa !18
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.bd, align 1, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 768
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 784
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.be, align 1, !tbaa !18
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.bf, align 1, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 800
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 816
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.bg, align 1, !tbaa !18
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.bh, align 1, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 832
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 848
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %i.bi, align 1, !tbaa !18
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %i.bj, align 1, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 864
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 880
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %i.bk, align 1, !tbaa !18
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %i.bl, align 1, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 896
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 912
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %i.bm, align 1, !tbaa !18
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %i.bn, align 1, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 928
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 944
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %i.bo, align 1, !tbaa !18
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %i.bp, align 1, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 960
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 976
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %i.bq, align 1, !tbaa !18
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %i.br, align 1, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 992
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 1008
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %i.bs, align 1, !tbaa !18
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %i.bt, align 1, !tbaa !18
  br label %.preheader.i

.preheader.i.1:                                   ; preds = %.preheader.i
  %indvars.iv.next27.i = or disjoint i64 %indvars.iv26.i, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next27.i
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !18
  %i.bw = trunc i64 %indvars.iv.next27.i to i8
  %.not.i.1 = icmp eq i8 %i.bv, %i.bw
  br i1 %.not.i.1, label %.preheader.i.2, label %simple_mem_test.exit

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %indvars.iv.next27.i.1 = or disjoint i64 %indvars.iv26.i, 2 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next27.i.1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !18
  %i.bz = trunc i64 %indvars.iv.next27.i.1 to i8
  %.not.i.2 = icmp eq i8 %i.by, %i.bz
  br i1 %.not.i.2, label %.preheader.i.3, label %simple_mem_test.exit

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %indvars.iv.next27.i.2 = or disjoint i64 %indvars.iv26.i, 3 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next27.i.2
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !18
  %i.cc = trunc i64 %indvars.iv.next27.i.2 to i8
  %.not.i.3 = icmp eq i8 %i.cb, %i.cc
  br i1 %.not.i.3, label %bb.b, label %simple_mem_test.exit

bb.b:                                             ; preds = %.preheader.i.3
  %indvars.iv.next27.i.3 = add nuw nsw i64 %indvars.iv26.i, 4 ; 2 uses
  %exitcond29.not.i.3 = icmp eq i64 %indvars.iv.next27.i.3, 1024
  br i1 %exitcond29.not.i.3, label %bb.c, label %.preheader.i, !llvm.loop !49

end_hunk_0
begin_hunk_1_@asn_test:bb.a
  %0 = alloca %struct.tm, align 8                 ; 3 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca [16 x i8], align 16               ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.a, ptr noundef nonnull align 1 dereferenceable(15) @__const.asn_test.dateBuf, i64 15, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.g = call i32 @wc_GetDateInfo(ptr noundef nonnull %i.a, i32 noundef 15, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #19 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sub nsw i32 0, %i.g
  %i.i = and i32 %i.h, 2047
  %narrow.neg72 = mul nsw i32 %i.i, -100000
  %i.j = add nsw i32 %narrow.neg72, -536875364
  br label %.thread73

bb.c:                                             ; preds = %bb.a
  %i.k = call i32 @wc_GetTime(ptr noundef null, i32 noundef 8) #19 ; 2 uses
  %.not41 = icmp eq i32 %i.k, -173
  br i1 %.not41, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = sub nsw i32 0, %i.k
  %i.m = and i32 %i.l, 2047
  %narrow.neg69 = mul nsw i32 %i.m, -100000
  %i.n = add nsw i32 %narrow.neg69, -536875369
  br label %.thread73

bb.e:                                             ; preds = %bb.c
  %i.o = call i32 @wc_GetTime(ptr noundef nonnull %i.e, i32 noundef 0) #19 ; 2 uses
  %.not42 = icmp eq i32 %i.o, -132
  br i1 %.not42, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = sub nsw i32 0, %i.o
  %i.q = and i32 %i.p, 2047
  %narrow.neg66 = mul nsw i32 %i.q, -100000
  %i.r = add nsw i32 %narrow.neg66, -536875371
  br label %.thread73

bb.g:                                             ; preds = %bb.e
  store i64 0, ptr %i.e, align 8, !tbaa !21
  %i.s = call i32 @wc_GetTime(ptr noundef nonnull %i.e, i32 noundef 8) #19 ; 2 uses
  %.not43 = icmp eq i32 %i.s, 0
  br i1 %.not43, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = sub nsw i32 0, %i.s
  %i.u = and i32 %i.t, 2047
  %narrow.neg63 = mul nsw i32 %i.u, -100000
  %i.v = add nsw i32 %narrow.neg63, -536875375
  br label %.thread73

bb.i:                                             ; preds = %bb.g
  %i.w = load i64, ptr %i.e, align 8, !tbaa !21
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.47) ; 0 uses
  %i.y = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.z = call i32 @fflush(ptr noundef %i.y)       ; 0 uses
  br label %.thread73

bb.k:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !19
  %i.ac = load i8, ptr %i.b, align 1, !tbaa !18
  %i.ad = call i32 @wc_GetDateAsCalendarTime(ptr noundef %i.aa, i32 noundef %i.ab, i8 noundef zeroext %i.ac, ptr noundef nonnull %0) #19 ; 2 uses
  %.not44 = icmp eq i32 %i.ad, 0
  br i1 %.not44, label %.preheader76.preheader, label %bb.l

.preheader76.preheader:                           ; preds = %bb.k
  %i.ae = call i32 @wc_PkcsPad(ptr noundef null, i32 noundef 16, i32 noundef 16) #19
  %.not54 = icmp eq i32 %i.ae, 32
  br i1 %.not54, label %.preheader76.1, label %.thread73

bb.l:                                             ; preds = %bb.k
  %i.af = sub nsw i32 0, %i.ad
  %i.ag = and i32 %i.af, 2047
  %narrow.neg60 = mul nsw i32 %i.ag, -100000
  %i.ah = add nsw i32 %narrow.neg60, -536875384
  br label %.thread73

.preheader76.1:                                   ; preds = %.preheader76.preheader
  %i.ai = call i32 @wc_PkcsPad(ptr noundef null, i32 noundef 17, i32 noundef 16) #19
  %.not54.1 = icmp eq i32 %i.ai, 32
  br i1 %.not54.1, label %.preheader76.2, label %.thread73

.preheader76.2:                                   ; preds = %.preheader76.1
  %i.aj = call i32 @wc_PkcsPad(ptr noundef null, i32 noundef 18, i32 noundef 16) #19
  %.not54.2 = icmp eq i32 %i.aj, 32
  br i1 %.not54.2, label %.preheader76.3, label %.thread73

.preheader76.3:                                   ; preds = %.preheader76.2
  %i.ak = call i32 @wc_PkcsPad(ptr noundef null, i32 noundef 19, i32 noundef 16) #19
  %.not54.3 = icmp eq i32 %i.ak, 32
  br i1 %.not54.3, label %.preheader76.4, label %.thread73

.preheader76.4:                                   ; preds = %.preheader76.3
  %i.al = call i32 @wc_PkcsPad(ptr noundef null, i32 noundef 20, i32 noundef 16) #19
  %.not54.4 = icmp eq i32 %i.al, 32
  br i1 %.not54.4, label %.preheader76.5, label %.thread73

.preheader76.5:                                   ; preds = %.preheader76.4
  %i.am = call i32 @wc_PkcsPad(ptr noundef null, i32 noundef 21, i32 noundef 16) #19
  %.not54.5 = icmp eq i32 %i.am, 32
  br i1 %.not54.5, label %.preheader76.6, label %.thread73

.preheader76.6:                                   ; preds = %.preheader76.5
  %i.an = call i32 @wc_PkcsPad(ptr noundef null, i32 noundef 22, i32 noundef 16) #19
  %.not54.6 = icmp eq i32 %i.an, 32
  br i1 %.not54.6, label %.preheader76.7, label %.thread73

.preheader76.7:                                   ; preds = %.preheader76.6
  %i.ao = call i32 @wc_PkcsPad(ptr noundef null, i32 noundef 23, i32 noundef 16) #19
  %.not54.7 = icmp eq i32 %i.ao, 32
  br i1 %.not54.7, label %.preheader76.8, label %.thread73

.preheader76.8:                                   ; preds = %.preheader76.7
  %i.ap = call i32 @wc_PkcsPad(ptr noundef null, i32 noundef 24, i32 noundef 16) #19
  %.not54.8 = icmp eq i32 %i.ap, 32
  br i1 %.not54.8, label %.preheader76.9, label %.thread73

.preheader76.9:                                   ; preds = %.preheader76.8
  %i.aq = call i32 @wc_PkcsPad(ptr noundef null, i32 noundef 25, i32 noundef 16) #19
  %.not54.9 = icmp eq i32 %i.aq, 32
  br i1 %.not54.9, label %.preheader76.10, label %.thread73

.preheader76.10:                                  ; preds = %.preheader76.9
  %i.ar = call i32 @wc_PkcsPad(ptr noundef null, i32 noundef 26, i32 noundef 16) #19
  %.not54.10 = icmp eq i32 %i.ar, 32
  br i1 %.not54.10, label %.preheader76.11, label %.thread73

.preheader76.11:                                  ; preds = %.preheader76.10
  %i.as = call i32 @wc_PkcsPad(ptr noundef null, i32 noundef 27, i32 noundef 16) #19
  %.not54.11 = icmp eq i32 %i.as, 32
  br i1 %.not54.11, label %.preheader76.12, label %.thread73

.preheader76.12:                                  ; preds = %.preheader76.11
  %i.at = call i32 @wc_PkcsPad(ptr noundef null, i32 noundef 28, i32 noundef 16) #19
  %.not54.12 = icmp eq i32 %i.at, 32
  br i1 %.not54.12, label %.preheader76.13, label %.thread73

.preheader76.13:                                  ; preds = %.preheader76.12
  %i.au = call i32 @wc_PkcsPad(ptr noundef null, i32 noundef 29, i32 noundef 16) #19
  %.not54.13 = icmp eq i32 %i.au, 32
  br i1 %.not54.13, label %.preheader76.14, label %.thread73

.preheader76.14:                                  ; preds = %.preheader76.13
  %i.av = call i32 @wc_PkcsPad(ptr noundef null, i32 noundef 30, i32 noundef 16) #19
  %.not54.14 = icmp eq i32 %i.av, 32
  br i1 %.not54.14, label %.preheader76.15, label %.thread73

.preheader76.15:                                  ; preds = %.preheader76.14
  %i.aw = call i32 @wc_PkcsPad(ptr noundef null, i32 noundef 31, i32 noundef 16) #19
  %.not54.15 = icmp eq i32 %i.aw, 32
  br i1 %.not54.15, label %bb.m, label %.thread73

bb.m:                                             ; preds = %.preheader76.15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 -91, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 13
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 3 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 5 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 7 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 9 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 11 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 13 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 14
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 15 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread.15
  %indvars.iv = phi i64 [ 15, %bb.m ], [ %indvars.iv.next, %.thread.15 ] ; 18 uses
  %i.ca = trunc nuw nsw i64 %indvars.iv to i32    ; 4 uses
  %i.cb = call i32 @wc_PkcsPad(ptr noundef nonnull %i.f, i32 noundef %i.ca, i32 noundef 16) #19
  %.not45 = icmp eq i32 %i.cb, 16
  br i1 %.not45, label %.preheader, label %bb.o

.preheader:                                       ; preds = %bb.n
  %i.cc = sub nuw nsw i64 16, %indvars.iv         ; 24 uses
  %.not94 = icmp eq i64 %indvars.iv, 0            ; 2 uses
  %i.cd = load i8, ptr %i.f, align 16, !tbaa !18  ; 2 uses
  br i1 %.not94, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ce = and i32 %i.ca, 2047
  %narrow.neg53 = mul nsw i32 %i.ce, -100000
  %i.cf = add nsw i32 %narrow.neg53, -1610617224
  br label %.thread73

bb.p:                                             ; preds = %.preheader
  %.not46 = icmp eq i8 %i.cd, -91
  br i1 %.not46, label %.thread, label %split

split:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.p
  %i.cg = and i32 %i.ca, 2047
  %narrow.neg = mul nsw i32 %i.cg, -100000
  %i.ch = add nsw i32 %narrow.neg, -1610617229
  br label %.thread73

bb.q:                                             ; preds = %.preheader
  %i.ci = zext i8 %i.cd to i64
  %.not48 = icmp eq i64 %i.cc, %i.ci
  %i.cj = load i8, ptr %i.bl, align 1
  %i.ck = zext i8 %i.cj to i64
  %.not48.1 = icmp eq i64 %i.cc, %i.ck
  %or.cond = select i1 %.not48, i1 %.not48.1, i1 false
  br i1 %or.cond, label %.thread.1.thread, label %bb.r

bb.r:                                             ; preds = %.thread.14, %.thread.13.thread, %.thread.12.thread, %.thread.11.thread, %.thread.10.thread, %.thread.9.thread, %.thread.8.thread, %.thread.7.thread, %.thread.6.thread, %.thread.5.thread, %.thread.4.thread, %.thread.3.thread, %.thread.2.thread, %.thread.1.thread, %.thread.thread, %bb.q
  %.neg = mul nsw i32 %i.ca, -100000
  %i.cl = add nsw i32 %.neg, -1610617232
  br label %.thread73

.thread:                                          ; preds = %bb.p
  %.not120 = icmp eq i64 %indvars.iv, 1
  br i1 %.not120, label %.thread.thread, label %bb.s

.thread.thread:                                   ; preds = %.thread
  %.old = load i8, ptr %i.bl, align 1, !tbaa !18
  %.old98 = zext i8 %.old to i64
  %.not48.1.old = icmp eq i64 %i.cc, %.old98
  br i1 %.not48.1.old, label %.thread.1.thread, label %bb.r

bb.s:                                             ; preds = %.thread
  %i.cm = load i8, ptr %i.ax, align 1, !tbaa !18
  %.not46.1 = icmp eq i8 %i.cm, -91
  br i1 %.not46.1, label %.thread.1, label %split

.thread.1:                                        ; preds = %bb.s
  %i.cn = icmp samesign ugt i64 %indvars.iv, 2
  br i1 %i.cn, label %bb.t, label %.thread.1.thread

.thread.1.thread:                                 ; preds = %bb.q, %.thread.thread, %.thread.1
  %i.co = load i8, ptr %i.bm, align 2, !tbaa !18
  %i.cp = zext i8 %i.co to i64
  %.not48.2 = icmp eq i64 %i.cc, %i.cp
  %i.cq = load i8, ptr %i.bn, align 1
  %i.cr = zext i8 %i.cq to i64
  %.not48.3 = icmp eq i64 %i.cc, %i.cr
  %or.cond101 = select i1 %.not48.2, i1 %.not48.3, i1 false
  br i1 %or.cond101, label %.thread.3.thread, label %bb.r

bb.t:                                             ; preds = %.thread.1
  %i.cs = load i8, ptr %i.ay, align 2, !tbaa !18
  %.not46.2 = icmp eq i8 %i.cs, -91
  br i1 %.not46.2, label %.thread.2, label %split

.thread.2:                                        ; preds = %bb.t
  %.not121 = icmp eq i64 %indvars.iv, 3
  br i1 %.not121, label %.thread.2.thread, label %bb.u

.thread.2.thread:                                 ; preds = %.thread.2
  %.old99 = load i8, ptr %i.bn, align 1, !tbaa !18
  %.old100 = zext i8 %.old99 to i64
  %.not48.3.old = icmp eq i64 %i.cc, %.old100
  br i1 %.not48.3.old, label %.thread.3.thread, label %bb.r

bb.u:                                             ; preds = %.thread.2
  %i.ct = load i8, ptr %i.az, align 1, !tbaa !18
  %.not46.3 = icmp eq i8 %i.ct, -91
  br i1 %.not46.3, label %.thread.3, label %split

.thread.3:                                        ; preds = %bb.u
  %i.cu = icmp samesign ugt i64 %indvars.iv, 4
  br i1 %i.cu, label %bb.v, label %.thread.3.thread

.thread.3.thread:                                 ; preds = %.thread.1.thread, %.thread.2.thread, %.thread.3
  %i.cv = load i8, ptr %i.bo, align 4, !tbaa !18
  %i.cw = zext i8 %i.cv to i64
  %.not48.4 = icmp eq i64 %i.cc, %i.cw
  %i.cx = load i8, ptr %i.bp, align 1
  %i.cy = zext i8 %i.cx to i64
  %.not48.5 = icmp eq i64 %i.cc, %i.cy
  %or.cond104 = select i1 %.not48.4, i1 %.not48.5, i1 false
  br i1 %or.cond104, label %.thread.5.thread, label %bb.r

bb.v:                                             ; preds = %.thread.3
  %i.cz = load i8, ptr %i.ba, align 4, !tbaa !18
  %.not46.4 = icmp eq i8 %i.cz, -91
  br i1 %.not46.4, label %.thread.4, label %split

.thread.4:                                        ; preds = %bb.v
  %.not122 = icmp eq i64 %indvars.iv, 5
  br i1 %.not122, label %.thread.4.thread, label %bb.w

.thread.4.thread:                                 ; preds = %.thread.4
  %.old102 = load i8, ptr %i.bp, align 1, !tbaa !18
  %.old103 = zext i8 %.old102 to i64
  %.not48.5.old = icmp eq i64 %i.cc, %.old103
  br i1 %.not48.5.old, label %.thread.5.thread, label %bb.r

bb.w:                                             ; preds = %.thread.4
  %i.da = load i8, ptr %i.bb, align 1, !tbaa !18
  %.not46.5 = icmp eq i8 %i.da, -91
  br i1 %.not46.5, label %.thread.5, label %split

.thread.5:                                        ; preds = %bb.w
  %i.db = icmp samesign ugt i64 %indvars.iv, 6
  br i1 %i.db, label %bb.x, label %.thread.5.thread

.thread.5.thread:                                 ; preds = %.thread.3.thread, %.thread.4.thread, %.thread.5
  %i.dc = load i8, ptr %i.bq, align 2, !tbaa !18
  %i.dd = zext i8 %i.dc to i64
  %.not48.6 = icmp eq i64 %i.cc, %i.dd
  %i.de = load i8, ptr %i.br, align 1
  %i.df = zext i8 %i.de to i64
  %.not48.7 = icmp eq i64 %i.cc, %i.df
  %or.cond107 = select i1 %.not48.6, i1 %.not48.7, i1 false
  br i1 %or.cond107, label %.thread.7.thread, label %bb.r

bb.x:                                             ; preds = %.thread.5
  %i.dg = load i8, ptr %i.bc, align 2, !tbaa !18
  %.not46.6 = icmp eq i8 %i.dg, -91
  br i1 %.not46.6, label %.thread.6, label %split

.thread.6:                                        ; preds = %bb.x
  %.not123 = icmp eq i64 %indvars.iv, 7
  br i1 %.not123, label %.thread.6.thread, label %bb.y

.thread.6.thread:                                 ; preds = %.thread.6
  %.old105 = load i8, ptr %i.br, align 1, !tbaa !18
  %.old106 = zext i8 %.old105 to i64
  %.not48.7.old = icmp eq i64 %i.cc, %.old106
  br i1 %.not48.7.old, label %.thread.7.thread, label %bb.r

bb.y:                                             ; preds = %.thread.6
  %i.dh = load i8, ptr %i.bd, align 1, !tbaa !18
  %.not46.7 = icmp eq i8 %i.dh, -91
  br i1 %.not46.7, label %.thread.7, label %split

.thread.7:                                        ; preds = %bb.y
  %i.di = icmp samesign ugt i64 %indvars.iv, 8
  br i1 %i.di, label %bb.z, label %.thread.7.thread

.thread.7.thread:                                 ; preds = %.thread.5.thread, %.thread.6.thread, %.thread.7
  %i.dj = load i8, ptr %i.bs, align 8, !tbaa !18
  %i.dk = zext i8 %i.dj to i64
  %.not48.8 = icmp eq i64 %i.cc, %i.dk
  %i.dl = load i8, ptr %i.bt, align 1
  %i.dm = zext i8 %i.dl to i64
  %.not48.9 = icmp eq i64 %i.cc, %i.dm
  %or.cond110 = select i1 %.not48.8, i1 %.not48.9, i1 false
  br i1 %or.cond110, label %.thread.9.thread, label %bb.r

bb.z:                                             ; preds = %.thread.7
  %i.dn = load i8, ptr %i.be, align 8, !tbaa !18
  %.not46.8 = icmp eq i8 %i.dn, -91
  br i1 %.not46.8, label %.thread.8, label %split

.thread.8:                                        ; preds = %bb.z
  %.not124 = icmp eq i64 %indvars.iv, 9
  br i1 %.not124, label %.thread.8.thread, label %bb.aa

.thread.8.thread:                                 ; preds = %.thread.8
  %.old108 = load i8, ptr %i.bt, align 1, !tbaa !18
  %.old109 = zext i8 %.old108 to i64
  %.not48.9.old = icmp eq i64 %i.cc, %.old109
  br i1 %.not48.9.old, label %.thread.9.thread, label %bb.r

bb.aa:                                            ; preds = %.thread.8
  %i.do = load i8, ptr %i.bf, align 1, !tbaa !18
  %.not46.9 = icmp eq i8 %i.do, -91
  br i1 %.not46.9, label %.thread.9, label %split

.thread.9:                                        ; preds = %bb.aa
  %i.dp = icmp samesign ugt i64 %indvars.iv, 10
  br i1 %i.dp, label %bb.ab, label %.thread.9.thread

.thread.9.thread:                                 ; preds = %.thread.7.thread, %.thread.8.thread, %.thread.9
  %i.dq = load i8, ptr %i.bu, align 2, !tbaa !18
  %i.dr = zext i8 %i.dq to i64
  %.not48.10 = icmp eq i64 %i.cc, %i.dr
  %i.ds = load i8, ptr %i.bv, align 1
  %i.dt = zext i8 %i.ds to i64
  %.not48.11 = icmp eq i64 %i.cc, %i.dt
  %or.cond113 = select i1 %.not48.10, i1 %.not48.11, i1 false
  br i1 %or.cond113, label %.thread.11.thread, label %bb.r

bb.ab:                                            ; preds = %.thread.9
  %i.du = load i8, ptr %i.bg, align 2, !tbaa !18
  %.not46.10 = icmp eq i8 %i.du, -91
  br i1 %.not46.10, label %.thread.10, label %split

.thread.10:                                       ; preds = %bb.ab
  %.not125 = icmp eq i64 %indvars.iv, 11
  br i1 %.not125, label %.thread.10.thread, label %bb.ac

.thread.10.thread:                                ; preds = %.thread.10
  %.old111 = load i8, ptr %i.bv, align 1, !tbaa !18
  %.old112 = zext i8 %.old111 to i64
  %.not48.11.old = icmp eq i64 %i.cc, %.old112
  br i1 %.not48.11.old, label %.thread.11.thread, label %bb.r

bb.ac:                                            ; preds = %.thread.10
  %i.dv = load i8, ptr %i.bh, align 1, !tbaa !18
  %.not46.11 = icmp eq i8 %i.dv, -91
  br i1 %.not46.11, label %.thread.11, label %split

.thread.11:                                       ; preds = %bb.ac
  %i.dw = icmp samesign ugt i64 %indvars.iv, 12
  br i1 %i.dw, label %bb.ad, label %.thread.11.thread

.thread.11.thread:                                ; preds = %.thread.9.thread, %.thread.10.thread, %.thread.11
  %i.dx = load i8, ptr %i.bw, align 4, !tbaa !18
  %i.dy = zext i8 %i.dx to i64
  %.not48.12 = icmp eq i64 %i.cc, %i.dy
  %i.dz = load i8, ptr %i.bx, align 1
  %i.ea = zext i8 %i.dz to i64
  %.not48.13 = icmp eq i64 %i.cc, %i.ea
  %or.cond116 = select i1 %.not48.12, i1 %.not48.13, i1 false
end_hunk_1
begin_hunk_2_@_rng_test:bb.a

bb.j:                                             ; preds = %bb.h
  %i.aa = call i32 @wc_RNG_GenerateBlock(ptr noundef nonnull %0, ptr noundef null, i32 noundef 32) #19 ; 2 uses
  %.not39 = icmp eq i32 %i.aa, -173
  br i1 %.not39, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = sub nsw i32 0, %i.aa
  %i.ac = and i32 %i.ab, 2047
  %narrow.neg49 = mul nsw i32 %i.ac, -100000
  %i.ad = add nsw i32 %narrow.neg49, -536894952
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.ae = call i32 @wc_RNG_GenerateByte(ptr noundef null, ptr noundef nonnull %i.a) #19 ; 2 uses
  %.not40 = icmp eq i32 %i.ae, -173
  br i1 %.not40, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = sub nsw i32 0, %i.ae
  %i.ag = and i32 %i.af, 2047
  %narrow.neg46 = mul nsw i32 %i.ag, -100000
  %i.ah = add nsw i32 %narrow.neg46, -536894957
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ai = call i32 @wc_RNG_GenerateByte(ptr noundef nonnull %0, ptr noundef null) #19 ; 2 uses
  %.not41 = icmp eq i32 %i.ai, -173
  br i1 %.not41, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = sub nsw i32 0, %i.ai
  %i.ak = and i32 %i.aj, 2047
  %narrow.neg = mul nsw i32 %i.ak, -100000
  %i.al = add nsw i32 %narrow.neg, -536894961
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.g, %.preheader.preheader, %bb.o, %bb.m, %bb.k, %bb.i, %bb.f, %bb.d, %bb.b
  %.027 = phi i32 [ %i.i, %bb.b ], [ -24012, %bb.g ], [ %i.m, %bb.d ], [ %i.s, %bb.f ], [ -23953, %.preheader.preheader ], [ %i.z, %bb.i ], [ %i.ad, %bb.k ], [ %i.ah, %bb.m ], [ %i.al, %bb.o ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.027
}

declare ptr @wc_rng_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @wc_rng_free(ptr noundef) local_unnamed_addr #2

declare i32 @wc_rng_new_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_RNG_GenerateBlock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_RNG_GenerateByte(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_InitRsaKey_ex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_InitRsaKey(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaPublicKeyDecodeRaw(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaPublicKeyDecode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_SignatureGetSize(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_SignatureGenerate(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_SignatureVerify(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_SignatureGenerateHash(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_SignatureVerifyHash(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_RsaPublicEncrypt(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaSetRNG(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaPrivateDecrypt(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaPrivateDecryptInline(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaSSL_Sign(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaPublicEncrypt_ex(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_RsaPrivateDecrypt_ex(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_RsaPrivateDecryptInline_ex(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_RsaExportKey(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaFlattenPublicKey(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaPSS_Sign_ex(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaPSS_VerifyInline_ex(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaPSS_CheckPadding_ex2(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_RsaPSS_Verify_ex(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_DhGenerateKeyPair(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_DhAgree(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_DhAgree_ct(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_DhSetKey(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_DhSetKey_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_DhCheckPubKey_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_DhCheckKeyPair(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_DhCheckPubValue(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_DhGeneratePublic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wc_DhSetCheckKey(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @ecc_test_curve(ptr noundef nonnull %0, i32 noundef range(i32 28, 67) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [257 x i8], align 16              ; 8 uses
  %2 = alloca [1 x %struct.ecc_key], align 16     ; 9 uses
  %3 = alloca [1 x %struct.ecc_key], align 16     ; 12 uses
  %i.c = alloca [257 x i8], align 16              ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %4 = alloca [1 x %struct.ecc_key], align 16     ; 10 uses
  %i.g = alloca [141 x i8], align 16              ; 9 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 7 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %i.k = alloca [141 x i8], align 16              ; 7 uses
  %i.l = alloca [66 x i8], align 16               ; 6 uses
  %i.m = alloca [66 x i8], align 16               ; 6 uses
  %i.n = alloca [66 x i8], align 16               ; 5 uses
  %i.o = alloca [66 x i8], align 16               ; 6 uses
  %i.p = alloca i32, align 4                      ; 8 uses
  %i.q = alloca [164 x i8], align 16              ; 5 uses
  %i.r = alloca [141 x i8], align 16              ; 8 uses
  %i.s = alloca [64 x i8], align 16               ; 12 uses
  %i.t = alloca i32, align 4                      ; 11 uses
  %5 = alloca [1 x %struct.ecc_key], align 16     ; 19 uses
  %6 = alloca [1 x %struct.ecc_key], align 16     ; 10 uses
  %7 = alloca [1 x %struct.ecc_key], align 16     ; 7 uses
  %i.u = alloca i32, align 4                      ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #19
  store i32 0, ptr %i.u, align 4, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4208) %5, i8 0, i64 4208, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4208) %6, i8 0, i64 4208, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4208) %7, i8 0, i64 4208, i1 false)
  %i.v = call i32 @wc_ecc_init_ex(ptr noundef nonnull %5, ptr noundef null, i32 noundef -2) #19 ; 2 uses
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = sub nsw i32 0, %i.v
  %i.x = and i32 %i.w, 2047
  %narrow.neg170.i = mul nsw i32 %i.x, -100000
  %i.y = add nsw i32 %narrow.neg170.i, -536910373
  br label %ecc_test_curve_size.exit

bb.c:                                             ; preds = %bb.a
  %i.z = call i32 @wc_ecc_init_ex(ptr noundef nonnull %6, ptr noundef null, i32 noundef -2) #19 ; 2 uses
  %.not101.i = icmp eq i32 %i.z, 0
  br i1 %.not101.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = sub nsw i32 0, %i.z
  %i.ab = and i32 %i.aa, 2047
  %narrow.neg167.i = mul nsw i32 %i.ab, -100000
  %i.ac = add nsw i32 %narrow.neg167.i, -536910376
  br label %ecc_test_curve_size.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = call i32 @wc_ecc_init_ex(ptr noundef nonnull %7, ptr noundef null, i32 noundef -2) #19 ; 2 uses
  %.not102.i = icmp eq i32 %i.ad, 0
  br i1 %.not102.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = sub nsw i32 0, %i.ad
  %i.af = and i32 %i.ae, 2047
  %narrow.neg164.i = mul nsw i32 %i.af, -100000
  %i.ag = add nsw i32 %narrow.neg164.i, -536910379
  br label %ecc_test_curve_size.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = call i32 @wc_ecc_make_key_ex(ptr noundef nonnull %0, i32 noundef range(i32 28, 67) %1, ptr noundef nonnull %5, i32 noundef 0) #19 ; 3 uses
  switch i32 %i.ah, label %bb.h [
    i32 -172, label %ecc_test_curve_size.exit
    i32 0, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ai = sub nsw i32 0, %i.ah
  %i.aj = and i32 %i.ai, 2047
  %narrow.neg161.i = mul nsw i32 %i.aj, -100000
  %i.ak = add nsw i32 %narrow.neg161.i, -536910409
  br label %ecc_test_curve_size.exit

bb.i:                                             ; preds = %bb.g
  %i.al = call i32 @wc_ecc_get_curve_idx(i32 noundef 0) #19
  %.not104.i = icmp eq i32 %i.al, -1
  br i1 %.not104.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !108
  %i.aq = call i32 @wc_ecc_get_curve_size_from_id(i32 noundef %i.ap) #19
  %i.ar = load ptr, ptr %i.am, align 16, !tbaa !32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !109
  %.not105.i = icmp eq i32 %i.aq, %i.as
  br i1 %.not105.i, label %bb.k, label %ecc_test_curve_size.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.at = call i32 @wc_ecc_check_key(ptr noundef nonnull %5) #19 ; 2 uses
  %.not106.i = icmp eq i32 %i.at, 0
  br i1 %.not106.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = sub nsw i32 0, %i.at
  %i.av = and i32 %i.au, 2047
  %narrow.neg158.i = mul nsw i32 %i.av, -100000
  %i.aw = add nsw i32 %narrow.neg158.i, -536910421
  br label %ecc_test_curve_size.exit

bb.m:                                             ; preds = %bb.k
  %i.ax = call i32 @wc_ecc_make_key_ex(ptr noundef nonnull %0, i32 noundef range(i32 28, 67) %1, ptr noundef nonnull %6, i32 noundef 0) #19 ; 2 uses
  %.not107.i = icmp eq i32 %i.ax, 0
  br i1 %.not107.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = sub nsw i32 0, %i.ax
  %i.az = and i32 %i.ay, 2047
  %narrow.neg155.i = mul nsw i32 %i.az, -100000
  %i.ba = add nsw i32 %narrow.neg155.i, -536910437
  br label %ecc_test_curve_size.exit

bb.o:                                             ; preds = %bb.m
  %i.bb = call i32 @wc_ecc_size(ptr noundef nonnull %5) #19
  %.not108.i = icmp eq i32 %i.bb, %1
  br i1 %.not108.i, label %bb.p, label %ecc_test_curve_size.exit

bb.p:                                             ; preds = %bb.o
  %i.bc = call i32 @wc_ecc_set_rng(ptr noundef nonnull %5, ptr noundef nonnull %0) #19 ; 2 uses
  %.not109.i = icmp eq i32 %i.bc, 0
  br i1 %.not109.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = sub nsw i32 0, %i.bc
  %i.be = and i32 %i.bd, 2047
  %narrow.neg152.i = mul nsw i32 %i.be, -100000
  %i.bf = add nsw i32 %narrow.neg152.i, -536910451
  br label %ecc_test_curve_size.exit

bb.r:                                             ; preds = %bb.p
  %i.bg = call i32 @wc_ecc_set_rng(ptr noundef nonnull %6, ptr noundef nonnull %0) #19 ; 2 uses
  %.not110.i = icmp eq i32 %i.bg, 0
  br i1 %.not110.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = sub nsw i32 0, %i.bg
  %i.bi = and i32 %i.bh, 2047
  %narrow.neg149.i = mul nsw i32 %i.bi, -100000
  %i.bj = add nsw i32 %narrow.neg149.i, -536910454
  br label %ecc_test_curve_size.exit

bb.t:                                             ; preds = %bb.r
  store i32 66, ptr %i.u, align 4, !tbaa !19
  %i.bk = call i32 @wc_ecc_shared_secret(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %i.n, ptr noundef nonnull %i.u) #19 ; 2 uses
  switch i32 %i.bk, label %bb.u [
    i32 -108, label %.peel.next.i
    i32 0, label %bb.v
  ]

.peel.next.i:                                     ; preds = %bb.t, %.peel.next.i
  br label %.peel.next.i

bb.u:                                             ; preds = %bb.t
  %i.bl = sub nsw i32 0, %i.bk
  %i.bm = and i32 %i.bl, 2047
  %narrow.neg146.i = mul nsw i32 %i.bm, -100000
  %i.bn = add nsw i32 %narrow.neg146.i, -536910466
  br label %ecc_test_curve_size.exit

bb.v:                                             ; preds = %bb.t
  store i32 66, ptr %i.p, align 4, !tbaa !19
  %i.bo = call i32 @wc_ecc_shared_secret(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p) #19 ; 2 uses
  switch i32 %i.bo, label %bb.w [
    i32 -108, label %.peel.next24.i
    i32 0, label %bb.x
  ]

.peel.next24.i:                                   ; preds = %bb.v, %.peel.next24.i
  br label %.peel.next24.i

bb.w:                                             ; preds = %bb.v
  %i.bp = sub nsw i32 0, %i.bo
  %i.bq = and i32 %i.bp, 2047
  %narrow.neg143.i = mul nsw i32 %i.bq, -100000
  %i.br = add nsw i32 %narrow.neg143.i, -536910478
  br label %ecc_test_curve_size.exit

bb.x:                                             ; preds = %bb.v
  %i.bs = load i32, ptr %i.p, align 4, !tbaa !19  ; 2 uses
  %i.bt = load i32, ptr %i.u, align 4, !tbaa !19
  %.not113.i = icmp eq i32 %i.bs, %i.bt
  br i1 %.not113.i, label %bb.y, label %ecc_test_curve_size.exit

bb.y:                                             ; preds = %bb.x
  %i.bu = zext i32 %i.bs to i64
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.n, ptr nonnull %i.o, i64 %i.bu)
  %.not114.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not114.i, label %bb.z, label %ecc_test_curve_size.exit

bb.z:                                             ; preds = %bb.y
  store i32 164, ptr %i.u, align 4, !tbaa !19
  %i.bv = call i32 @wc_ecc_export_x963_ex(ptr noundef nonnull %5, ptr noundef nonnull %i.q, ptr noundef nonnull %i.u, i32 noundef 0) #19 ; 2 uses
  %.not115.i = icmp eq i32 %i.bv, 0
  br i1 %.not115.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = sub nsw i32 0, %i.bv
  %i.bx = and i32 %i.bw, 2047
  %narrow.neg140.i = mul nsw i32 %i.bx, -100000
  %i.by = add nsw i32 %narrow.neg140.i, -536910533
  br label %ecc_test_curve_size.exit

bb.ab:                                            ; preds = %bb.z
  %i.bz = load i32, ptr %i.u, align 4, !tbaa !19
  %i.ca = call i32 @wc_ecc_import_x963_ex(ptr noundef nonnull %i.q, i32 noundef %i.bz, ptr noundef nonnull %7, i32 noundef 0) #19 ; 2 uses
  %.not116.i = icmp eq i32 %i.ca, 0
  br i1 %.not116.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cb = sub nsw i32 0, %i.ca
  %i.cc = and i32 %i.cb, 2047
  %narrow.neg137.i = mul nsw i32 %i.cc, -100000
  %i.cd = add nsw i32 %narrow.neg137.i, -536910545
  br label %ecc_test_curve_size.exit

bb.ad:                                            ; preds = %bb.ab
  store i32 66, ptr %i.p, align 4, !tbaa !19
  %i.ce = call i32 @wc_ecc_shared_secret(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p) #19 ; 2 uses
  switch i32 %i.ce, label %bb.ae [
    i32 -108, label %.peel.next30.i
    i32 0, label %bb.af
  ]

.peel.next30.i:                                   ; preds = %bb.ad, %.peel.next30.i
  br label %.peel.next30.i

bb.ae:                                            ; preds = %bb.ad
  %i.cf = sub nsw i32 0, %i.ce
  %i.cg = and i32 %i.cf, 2047
  %narrow.neg134.i = mul nsw i32 %i.cg, -100000
  %i.ch = add nsw i32 %narrow.neg134.i, -536910559
  br label %ecc_test_curve_size.exit

bb.af:                                            ; preds = %bb.ad
  %i.ci = load i32, ptr %i.p, align 4, !tbaa !19
  %i.cj = zext i32 %i.ci to i64
  %bcmp118.i = call i32 @bcmp(ptr nonnull %i.n, ptr nonnull %i.o, i64 %i.cj)
  %.not119.i = icmp eq i32 %bcmp118.i, 0
  br i1 %.not119.i, label %bb.ag, label %ecc_test_curve_size.exit

bb.ag:                                            ; preds = %bb.af
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.s, i8 0, i64 64, i1 false), !tbaa !18
  store i32 141, ptr %i.u, align 4, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(141) %i.r, i8 0, i64 141, i1 false)
  %i.ck = call i32 @wc_ecc_sign_hash(ptr noundef nonnull %i.s, i32 noundef 64, ptr noundef nonnull %i.r, ptr noundef nonnull %i.u, ptr noundef nonnull %0, ptr noundef nonnull %5) #19
  switch i32 %i.ck, label %bb.ah [
    i32 -108, label %.peel.next37.i
    i32 0, label %ecc_test_curve_size.exit
  ]

.peel.next37.i:                                   ; preds = %bb.ag, %.peel.next37.i
  br label %.peel.next37.i

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.t, align 4, !tbaa !19
  %i.cl = load i32, ptr %i.u, align 4, !tbaa !19
  %i.cm = call i32 @wc_ecc_verify_hash(ptr noundef nonnull %i.r, i32 noundef %i.cl, ptr noundef nonnull %i.s, i32 noundef 64, ptr noundef nonnull %i.t, ptr noundef nonnull %5) #19
  switch i32 %i.cm, label %bb.ai [
    i32 -108, label %.peel.next42.i
    i32 0, label %ecc_test_curve_size.exit
  ]

.peel.next42.i:                                   ; preds = %bb.ah, %.peel.next42.i
  br label %.peel.next42.i

bb.ai:                                            ; preds = %bb.ah
  %i.cn = load i32, ptr %i.t, align 4, !tbaa !19
  %i.co = icmp eq i32 %i.cn, 1
  br i1 %i.co, label %ecc_test_curve_size.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %i.s, align 16, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %i.cp, align 16, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %i.cq, align 16, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %i.cr, align 16, !tbaa !18
  store i32 141, ptr %i.u, align 4, !tbaa !19
  %i.cs = call i32 @wc_ecc_sign_hash(ptr noundef nonnull %i.s, i32 noundef 64, ptr noundef nonnull %i.r, ptr noundef nonnull %i.u, ptr noundef nonnull %0, ptr noundef nonnull %5) #19 ; 2 uses
  switch i32 %i.cs, label %bb.ak [
    i32 -108, label %.peel.next48.i
    i32 0, label %bb.ao
  ]

.peel.next48.i:                                   ; preds = %bb.aj, %.peel.next48.i
  br label %.peel.next48.i

bb.ak:                                            ; preds = %bb.aj
  %i.ct = sub nsw i32 0, %i.cs
  %i.cu = and i32 %i.ct, 2047
  %narrow.neg131.i = mul nsw i32 %i.cu, -100000
  %i.cv = add nsw i32 %narrow.neg131.i, -536910690
  br label %ecc_test_curve_size.exit

bb.al:                                            ; preds = %bb.ap
  store i32 0, ptr %i.t, align 4, !tbaa !19
  %i.cw = load i32, ptr %i.u, align 4, !tbaa !19
  %i.cx = call i32 @wc_ecc_verify_hash(ptr noundef nonnull %i.r, i32 noundef %i.cw, ptr noundef nonnull %i.s, i32 noundef 64, ptr noundef nonnull %i.t, ptr noundef nonnull %5) #19 ; 2 uses
  switch i32 %i.cx, label %.loopexit56.i [
    i32 -108, label %.peel.next52.1.i
    i32 0, label %bb.am
  ]

.peel.next52.1.i:                                 ; preds = %bb.al, %.peel.next52.1.i
  br label %.peel.next52.1.i

bb.am:                                            ; preds = %bb.al
  %i.cy = load i32, ptr %i.t, align 4, !tbaa !19
  %.not125.1.i = icmp eq i32 %i.cy, 1
  br i1 %.not125.1.i, label %bb.an, label %ecc_test_curve_size.exit

bb.an:                                            ; preds = %bb.am
  store i32 164, ptr %i.u, align 4, !tbaa !19
  %i.cz = call i32 @wc_ecc_export_private_only(ptr noundef nonnull %5, ptr noundef nonnull %i.q, ptr noundef nonnull %i.u) #19 ; 2 uses
  %.not121.i = icmp eq i32 %i.cz, 0
  br i1 %.not121.i, label %ecc_test_curve_size.exit, label %bb.aq

bb.ao:                                            ; preds = %bb.aj
  store i32 0, ptr %i.t, align 4, !tbaa !19
  %i.da = load i32, ptr %i.u, align 4, !tbaa !19
  %i.db = call i32 @wc_ecc_verify_hash(ptr noundef nonnull %i.r, i32 noundef %i.da, ptr noundef nonnull %i.s, i32 noundef 64, ptr noundef nonnull %i.t, ptr noundef nonnull %5) #19 ; 2 uses
  switch i32 %i.db, label %.loopexit56.i [
    i32 -108, label %.peel.next52.i
    i32 0, label %bb.ap
  ]

.peel.next52.i:                                   ; preds = %bb.ao, %.peel.next52.i
  br label %.peel.next52.i

.loopexit56.i:                                    ; preds = %bb.ao, %bb.al
  %.14.lcssa.ph57.i = phi i32 [ %i.db, %bb.ao ], [ %i.cx, %bb.al ]
  %i.dc = sub nsw i32 0, %.14.lcssa.ph57.i
  %i.dd = and i32 %i.dc, 2047
  %narrow.neg128.i = mul nsw i32 %i.dd, -100000
  %i.de = add nsw i32 %narrow.neg128.i, -536910705
  br label %ecc_test_curve_size.exit

bb.ap:                                            ; preds = %bb.ao
  %i.df = load i32, ptr %i.t, align 4, !tbaa !19
  %.not125.i = icmp eq i32 %i.df, 1
  br i1 %.not125.i, label %bb.al, label %ecc_test_curve_size.exit

bb.aq:                                            ; preds = %bb.an
  %i.dg = sub nsw i32 0, %i.cz
  %i.dh = and i32 %i.dg, 2047
  %narrow.neg.i = mul nsw i32 %i.dh, -100000
  %i.di = add nsw i32 %narrow.neg.i, -536910723
  br label %ecc_test_curve_size.exit

ecc_test_curve_size.exit:                         ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h, %bb.j, %bb.l, %bb.n, %bb.o, %bb.q, %bb.s, %bb.u, %bb.w, %bb.x, %bb.y, %bb.aa, %bb.ac, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.ak, %bb.am, %bb.an, %.loopexit56.i, %bb.ap, %bb.aq
  %.15.i = phi i32 [ %i.y, %bb.b ], [ %i.ac, %bb.d ], [ %i.ag, %bb.f ], [ %i.ah, %bb.g ], [ %i.ak, %bb.h ], [ 0, %bb.an ], [ %i.aw, %bb.l ], [ %i.ba, %bb.n ], [ -39503, %bb.j ], [ %i.bf, %bb.q ], [ %i.bj, %bb.s ], [ %i.bn, %bb.u ], [ %i.br, %bb.w ], [ -172, %bb.o ], [ -39569, %bb.x ], [ %i.by, %bb.aa ], [ %i.cd, %bb.ac ], [ %i.ch, %bb.ae ], [ -39572, %bb.y ], [ -39650, %bb.af ], [ -39795, %bb.ap ], [ -536910659, %bb.ah ], [ %i.cv, %bb.ak ], [ %i.de, %.loopexit56.i ], [ -39753, %bb.ai ], [ %i.di, %bb.aq ], [ -39795, %bb.am ], [ -536910636, %bb.ag ] ; 3 uses
  %i.dj = call i32 @wc_ecc_free(ptr noundef nonnull %7) #19 ; 0 uses
  %i.dk = call i32 @wc_ecc_free(ptr noundef nonnull %6) #19 ; 0 uses
  %i.dl = call i32 @wc_ecc_free(ptr noundef nonnull %5) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  %i.dm = icmp sgt i32 %.15.i, -1
  %i.dn = icmp eq i32 %.15.i, -172
  %or.cond = or i1 %i.dm, %i.dn
  br i1 %or.cond, label %bb.ar, label %.sink.split

bb.ar:                                            ; preds = %ecc_test_curve_size.exit
  switch i32 %1, label %.sink.split [
    i32 66, label %bb.au
    i32 64, label %ecc_test_vector.exit.thread41
    i32 48, label %bb.at
    i32 40, label %ecc_test_vector.exit.thread41
    i32 28, label %bb.av
    i32 30, label %ecc_test_vector.exit.thread41
    i32 32, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  br label %bb.av

bb.au:                                            ; preds = %bb.ar
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.ar
  %.sroa.0.0.i = phi ptr [ @.str.290, %bb.au ], [ @.str.281, %bb.at ], [ @.str.272, %bb.as ], [ @.str.263, %bb.ar ]
  %.sroa.8.0.i = phi ptr [ @.str.291, %bb.au ], [ @.str.282, %bb.at ], [ @.str.273, %bb.as ], [ @.str.264, %bb.ar ]
  %.sroa.13.0.i = phi ptr [ @.str.292, %bb.au ], [ @.str.283, %bb.at ], [ @.str.274, %bb.as ], [ @.str.265, %bb.ar ]
  %.sroa.18.0.i = phi ptr [ @.str.293, %bb.au ], [ @.str.284, %bb.at ], [ @.str.275, %bb.as ], [ @.str.266, %bb.ar ]
  %.sroa.23.0.i = phi ptr [ @.str.294, %bb.au ], [ @.str.285, %bb.at ], [ @.str.276, %bb.as ], [ @.str.267, %bb.ar ]
  %.sroa.28.0.i = phi ptr [ @.str.295, %bb.au ], [ @.str.286, %bb.at ], [ @.str.277, %bb.as ], [ @.str.268, %bb.ar ]
  %.sroa.33.0.i = phi ptr [ @.str.296, %bb.au ], [ @.str.287, %bb.at ], [ @.str.280, %bb.as ], [ @.str.269, %bb.ar ]
  %.sroa.44.0.i = phi ptr [ @.str.297, %bb.au ], [ @.str.288, %bb.at ], [ @.str.278, %bb.as ], [ @.str.270, %bb.ar ] ; 2 uses
  %.sroa.50.0.i = phi i32 [ 65, %bb.au ], [ %1, %bb.at ], [ %1, %bb.as ], [ %1, %bb.ar ] ; 5 uses
  %.sroa.568.0.i = phi ptr [ @.str.298, %bb.au ], [ @.str.289, %bb.at ], [ @.str.279, %bb.as ], [ @.str.271, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  store i32 0, ptr %i.e, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  store i32 66, ptr %i.i, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  store i32 66, ptr %i.j, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #19
  %i.do = call i32 @wc_ecc_init_ex(ptr noundef nonnull %4, ptr noundef null, i32 noundef -2) #19 ; 2 uses
  %.not.i.i = icmp eq i32 %i.do, 0
  br i1 %.not.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dp = sub nsw i32 0, %i.do
  %i.dq = and i32 %i.dp, 2047
  %narrow.neg67.i.i = mul nsw i32 %i.dq, -100000
  %i.dr = add nsw i32 %narrow.neg67.i.i, -536908656
  br label %ecc_test_vector_item.exit.thread.i

bb.ax:                                            ; preds = %bb.av
  %i.ds = call i32 @wc_ecc_import_raw(ptr noundef nonnull %4, ptr noundef nonnull %.sroa.8.0.i, ptr noundef nonnull %.sroa.13.0.i, ptr noundef nonnull %.sroa.18.0.i, ptr noundef nonnull %.sroa.33.0.i) #19 ; 2 uses
  %.not40.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not40.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dt = sub nsw i32 0, %i.ds
  %i.du = and i32 %i.dt, 2047
  %narrow.neg64.i.i = mul nsw i32 %i.du, -100000
  %i.dv = add nsw i32 %narrow.neg64.i.i, -536908661
  br label %ecc_test_vector_item.exit.thread.i

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(141) %i.g, i8 0, i64 141, i1 false)
  store i32 141, ptr %i.f, align 4, !tbaa !19
  %i.dw = call i32 @wc_ecc_rs_to_sig(ptr noundef nonnull %.sroa.23.0.i, ptr noundef nonnull %.sroa.28.0.i, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f) #19
  %.fr.i = freeze i32 %i.dw                       ; 3 uses
  %.not41.i.i = icmp eq i32 %.fr.i, 0
  br i1 %.not41.i.i, label %bb.ba, label %ecc_test_vector.exit

bb.ba:                                            ; preds = %bb.az
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(141) %i.k, i8 0, i64 141, i1 false)
  store i32 141, ptr %i.h, align 4, !tbaa !19
  %i.dx = call i32 @wc_ecc_rs_raw_to_sig(ptr noundef nonnull %.sroa.44.0.i, i32 noundef %.sroa.50.0.i, ptr noundef nonnull %.sroa.568.0.i, i32 noundef %.sroa.50.0.i, ptr noundef nonnull %i.k, ptr noundef nonnull %i.h) #19 ; 2 uses
  %.not42.i.i = icmp eq i32 %i.dx, 0
  br i1 %.not42.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dy = sub nsw i32 0, %i.dx
  %i.dz = and i32 %i.dy, 2047
  %narrow.neg61.i.i = mul nsw i32 %i.dz, -100000
  %i.ea = add nsw i32 %narrow.neg61.i.i, -536908676
  br label %ecc_test_vector_item.exit.thread.i

bb.bc:                                            ; preds = %bb.ba
  %i.eb = load i32, ptr %i.f, align 4, !tbaa !19  ; 3 uses
  %i.ec = load i32, ptr %i.h, align 4, !tbaa !19
  %.not43.i.i = icmp eq i32 %i.eb, %i.ec
  br i1 %.not43.i.i, label %bb.bd, label %ecc_test_vector_item.exit.thread.i

bb.bd:                                            ; preds = %bb.bc
  %i.ed = zext i32 %i.eb to i64
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.g, ptr nonnull %i.k, i64 %i.ed)
  %.not44.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not44.i.i, label %bb.be, label %ecc_test_vector_item.exit.thread.i

bb.be:                                            ; preds = %bb.bd
  %i.ee = call i32 @wc_ecc_sig_to_rs(ptr noundef nonnull %i.g, i32 noundef %i.eb, ptr noundef nonnull %i.l, ptr noundef nonnull %i.i, ptr noundef nonnull %i.m, ptr noundef nonnull %i.j) #19 ; 2 uses
  %.not45.i.i = icmp eq i32 %i.ee, 0
  br i1 %.not45.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ef = sub nsw i32 0, %i.ee
  %i.eg = and i32 %i.ef, 2047
  %narrow.neg58.i.i = mul nsw i32 %i.eg, -100000
  %i.eh = add nsw i32 %narrow.neg58.i.i, -536908684
  br label %ecc_test_vector_item.exit.thread.i

bb.bg:                                            ; preds = %bb.be
  %i.ei = load i32, ptr %i.i, align 4, !tbaa !19
  %.not46.i.i = icmp eq i32 %i.ei, %.sroa.50.0.i
  br i1 %.not46.i.i, label %bb.bh, label %ecc_test_vector_item.exit.thread.i

bb.bh:                                            ; preds = %bb.bg
  %i.ej = zext nneg i32 %.sroa.50.0.i to i64      ; 2 uses
  %bcmp47.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.l, ptr noundef nonnull dereferenceable(1) %.sroa.44.0.i, i64 %i.ej)
  %.not48.i.i = icmp eq i32 %bcmp47.i.i, 0
  %i.ek = load i32, ptr %i.j, align 4
  %.not49.i.i = icmp eq i32 %i.ek, %.sroa.50.0.i
  %or.cond.i = select i1 %.not48.i.i, i1 %.not49.i.i, i1 false
  br i1 %or.cond.i, label %bb.bi, label %ecc_test_vector_item.exit.thread.i

bb.bi:                                            ; preds = %bb.bh
  %bcmp50.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %.sroa.568.0.i, i64 %i.ej)
  %.not51.i.i = icmp eq i32 %bcmp50.i.i, 0
  br i1 %.not51.i.i, label %bb.bj, label %ecc_test_vector_item.exit.thread.i

bb.bj:                                            ; preds = %bb.bi
  %i.el = load i32, ptr %i.f, align 4, !tbaa !19
  %i.em = call i32 @wc_ecc_verify_hash(ptr noundef nonnull %i.g, i32 noundef %i.el, ptr noundef nonnull %.sroa.0.0.i, i32 noundef 20, ptr noundef nonnull %i.e, ptr noundef nonnull %4) #19 ; 2 uses
  switch i32 %i.em, label %bb.bk [
    i32 -108, label %.preheader.peel.next.i.i
    i32 0, label %bb.bl
  ]

.preheader.peel.next.i.i:                         ; preds = %bb.bj, %.preheader.peel.next.i.i
  br label %.preheader.peel.next.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.en = sub nsw i32 0, %i.em
  %i.eo = and i32 %i.en, 2047
  %narrow.neg.i.i = mul nsw i32 %i.eo, -100000
  %i.ep = add nsw i32 %narrow.neg.i.i, -536908713
  br label %ecc_test_vector_item.exit.thread.i

bb.bl:                                            ; preds = %bb.bj
  %i.eq = load i32, ptr %i.e, align 4, !tbaa !19
  %.not53.i.i = icmp eq i32 %i.eq, 1
  br i1 %.not53.i.i, label %ecc_test_vector_item.exit.thread16.i, label %ecc_test_vector_item.exit.thread.i

ecc_test_vector_item.exit.thread16.i:             ; preds = %bb.bl
  %i.er = call i32 @wc_ecc_free(ptr noundef nonnull %4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %ecc_test_vector.exit.thread41

ecc_test_vector_item.exit.thread.i:               ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.bd, %bb.bc, %bb.bb, %bb.ay, %bb.aw
  %.2.i.ph.i = phi i32 [ %i.dr, %bb.aw ], [ -37775, %bb.bi ], [ -37766, %bb.bd ], [ -37805, %bb.bl ], [ -37775, %bb.bg ], [ %i.ep, %bb.bk ], [ -37766, %bb.bc ], [ %i.eh, %bb.bf ], [ -37775, %bb.bh ], [ %i.ea, %bb.bb ], [ %i.dv, %bb.ay ]
  %i.es = call i32 @wc_ecc_free(ptr noundef nonnull %4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %.sink.split

ecc_test_vector.exit:                             ; preds = %bb.az
  %i.et = call i32 @wc_ecc_free(ptr noundef nonnull %4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  %i.eu = icmp slt i32 %.fr.i, 0
  br i1 %i.eu, label %.sink.split, label %ecc_test_vector.exit.thread41

ecc_test_vector.exit.thread41:                    ; preds = %ecc_test_vector_item.exit.thread16.i, %bb.ar, %bb.ar, %bb.ar, %ecc_test_vector.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.ev = call i32 @wc_ecc_init(ptr noundef nonnull %3) #19 ; 2 uses
  %.not.i32 = icmp eq i32 %i.ev, 0
  br i1 %.not.i32, label %bb.bm, label %ecc_test_key_decode.exit

bb.bm:                                            ; preds = %ecc_test_vector.exit.thread41
  %i.ew = call i32 @wc_ecc_make_key(ptr noundef nonnull %0, i32 noundef range(i32 28, 67) %1, ptr noundef nonnull %3) #19 ; 2 uses
  %.not19.i = icmp eq i32 %i.ew, 0
  br i1 %.not19.i, label %bb.bn, label %ecc_test_key_decode.exit

bb.bn:                                            ; preds = %bb.bm
  %i.ex = call i32 @wc_EccKeyToDer(ptr noundef nonnull %3, ptr noundef nonnull %i.c, i32 noundef 257) #19 ; 4 uses
  %i.ey = call i32 @wc_ecc_free(ptr noundef nonnull %3) #19 ; 0 uses
  %i.ez = icmp slt i32 %i.ex, 0
  br i1 %i.ez, label %ecc_test_key_decode.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fa = call i32 @wc_ecc_init(ptr noundef nonnull %3) #19 ; 2 uses
  %.not20.i = icmp eq i32 %i.fa, 0
  br i1 %.not20.i, label %bb.bp, label %ecc_test_key_decode.exit

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.d, align 4, !tbaa !19
  %i.fb = call i32 @wc_EccPrivateKeyDecode(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %3, i32 noundef %i.ex) #19 ; 2 uses
  %.not21.i = icmp eq i32 %i.fb, 0
  br i1 %.not21.i, label %bb.bq, label %ecc_test_key_decode.exit

bb.bq:                                            ; preds = %bb.bp
end_hunk_2
