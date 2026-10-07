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
end_hunk_0
