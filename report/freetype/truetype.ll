Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/truetype?download=true
inline.NumInlined: 310
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 49
begin_hunk_0_@tt_size_request:bb.a
  br label %bb.g

bb.g:                                             ; preds = %tt_size_select.exit, %bb.a
  %i.y = phi ptr [ %.pre, %tt_size_select.exit ], [ %i.b, %bb.a ]
  %.030 = phi i32 [ %i.j, %tt_size_select.exit ], [ 0, %bb.a ]
  %i.z = call i32 @FT_Request_Metrics(ptr noundef %i.y, ptr noundef %1) #21 ; 2 uses
  %.not39 = icmp eq i32 %i.z, 0
  br i1 %.not39, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %0, align 8, !tbaa !234
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !70
  %i.ad = and i64 %i.ac, 1
  %.not40 = icmp eq i64 %i.ad, 0
  br i1 %.not40, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = call fastcc i32 @tt_size_reset(ptr noundef nonnull %0) ; 2 uses
  %.not41 = icmp eq i32 %i.ae, 0
  br i1 %.not41, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !117 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !236
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !228
  %i.ak = icmp ugt i16 %i.ah, %i.aj
  %.in.v = select i1 %i.ak, i64 24, i64 28
  %.in = getelementptr inbounds nuw i8, ptr %1, i64 %.in.v
  %i.al = load i32, ptr %.in, align 4, !tbaa !152 ; 2 uses
  %i.am = load i32, ptr %1, align 8, !tbaa !557
  %i.an = icmp ne i32 %i.am, 4
  %i.ao = icmp ne i32 %i.al, 0
  %or.cond = select i1 %i.an, i1 %i.ao, i1 false
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aq = load i16, ptr %i.ap, align 8, !tbaa !149
  %i.ar = zext i16 %i.aq to i64
  %i.as = zext i32 %i.al to i64
  %i.at = select i1 %or.cond, i64 %i.as, i64 72
  %i.au = call i64 @FT_MulDiv(i64 noundef %i.ar, i64 noundef 4608, i64 noundef %i.at) #21
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %i.au, ptr %i.av, align 8, !tbaa !194
  br label %bb.k

bb.k:                                             ; preds = %tt_size_select.exit.thread, %bb.g, %bb.i, %bb.j, %bb.h
  %.234 = phi i32 [ %.030, %bb.h ], [ %.032.ph, %tt_size_select.exit.thread ], [ %i.ae, %bb.i ], [ 0, %bb.j ], [ %i.z, %bb.g ]
  ret i32 %.234
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_size_select(ptr noundef initializes((200, 208)) %0, i64 noundef %1) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !234    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !107
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !70
  %i.e = and i64 %i.d, 1
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @FT_Select_Metrics(ptr noundef nonnull %i.a, i64 noundef %1) #21
  %i.f = tail call fastcc i32 @tt_size_reset(ptr noundef nonnull %0) ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !235
  %i.l = tail call i32 %i.k(ptr noundef nonnull %i.a, i64 noundef %1, ptr noundef nonnull %i.i) #21 ; 2 uses
  %.not16 = icmp eq i32 %i.l, 0
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 4294967295, ptr %i.b, align 8, !tbaa !107
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.l, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @TT_New_Context(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !151  ; 4 uses
  %i.d = call ptr @ft_mem_alloc(ptr noundef %i.c, i64 noundef 992, ptr noundef nonnull %i.a) #21 ; 7 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !152
  %.not19 = icmp eq i32 %i.e, 0
  br i1 %.not19, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !153
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !154  ; 2 uses
  %.not20 = icmp eq ptr %i.i, null
  %spec.select = select i1 %.not20, ptr @TT_RunIns, ptr %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %spec.select, ptr %i.j, align 8, !tbaa !158
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.c, ptr %i.k, align 8, !tbaa !159
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 716
  store i32 32, ptr %i.l, align 4, !tbaa !160
  %i.m = call ptr @ft_mem_qrealloc(ptr noundef %i.c, i64 noundef 32, i64 noundef 0, i64 noundef 32, ptr noundef null, ptr noundef nonnull %i.a) #21
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 720
  store ptr %i.m, ptr %i.n, align 8, !tbaa !161
  %i.o = load i32, ptr %i.a, align 4, !tbaa !152
  %.not21 = icmp eq i32 %i.o, 0
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @ft_mem_free(ptr noundef %i.c, ptr noundef nonnull %i.d) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.d ], [ %i.d, %bb.c ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare hidden ptr @ft_mem_alloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef i32 @TT_RunIns(ptr noundef initializes((32, 36)) %0) #2 {
bb.a:
  %1 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %2 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %struct.IUP_WorkerRec_, align 8     ; 8 uses
  %4 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %5 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %6 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %7 = alloca %struct.FT_Vector_, align 8         ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 25 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 40 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 620 ; 24 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 842 ; 50 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 15 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 20 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 716 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 588 ; 17 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 15 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 948 ; 17 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 573 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 692
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 708 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 458 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 459 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 16 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 19 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 476 ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 478 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 12 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 19 uses
  %i.am = getelementptr i8, ptr %0, i64 480       ; 12 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ao = getelementptr i8, ptr %0, i64 482       ; 8 uses
  %i.ap = getelementptr i8, ptr %0, i64 484       ; 20 uses
  %i.aq = getelementptr i8, ptr %0, i64 486       ; 15 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 24 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 19 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 22 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 18 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 574 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 11 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 13 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 570 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 572 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 15 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 11 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 470 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 474 ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 9 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 466 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 468 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 841
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 194 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 250 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 676
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 840
  br label %bb.c

bb.b:                                             ; preds = %bb.xn
  %i.dt = add nuw nsw i64 %i.du, 1
  %exitcond = icmp eq i64 %i.du, 1000000
  br i1 %exitcond, label %.loopexit.sink.split, label %bb.c, !llvm.loop !558

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.du = phi i64 [ 1, %bb.a ], [ %i.dt, %bb.b ]  ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !237
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !204 ; 24 uses
  %i.dw = load i64, ptr %i.d, align 8, !tbaa !206
  %i.dx = getelementptr inbounds i8, ptr %i.dv, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !186 ; 25 uses
  store i8 %i.dy, ptr %i.e, align 8, !tbaa !238
  store i32 1, ptr %i.f, align 4, !tbaa !239
  %i.dz = load i64, ptr %i.g, align 8, !tbaa !240
  %i.ea = zext i8 %i.dy to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @Pop_Push_Count, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !186 ; 2 uses
  %i.ed = lshr i8 %i.ec, 4                        ; 3 uses
  %i.ee = zext nneg i8 %i.ed to i64
  %i.ef = sub nsw i64 %i.dz, %i.ee                ; 3 uses
  store i64 %i.ef, ptr %i.h, align 8, !tbaa !616
  %i.eg = icmp slt i64 %i.ef, 0
  br i1 %i.eg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.eh = load i8, ptr %i.i, align 2, !tbaa !163
  %.not = icmp eq i8 %i.eh, 0
  br i1 %.not, label %.preheader, label %.loopexit.sink.split

.preheader:                                       ; preds = %bb.d
  %.not956 = icmp eq i8 %i.ed, 0
  br i1 %.not956, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ei = load ptr, ptr %i.j, align 8, !tbaa !176
  %i.ej = shl nuw nsw i8 %i.ed, 3
  %i.ek = zext nneg i8 %i.ej to i64
  %i.el = add nuw nsw i64 %i.ek, 524280
  %i.em = and i64 %i.el, 524280
  %i.en = add nuw nsw i64 %i.em, 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ei, i8 0, i64 %i.en, i1 false), !tbaa !185
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %.preheader
  store i64 0, ptr %i.h, align 8, !tbaa !616
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.c
  %i.eo = phi i64 [ 0, %.thread ], [ %i.ef, %bb.c ] ; 8 uses
  %i.ep = and i8 %i.ec, 15
  %i.eq = zext nneg i8 %i.ep to i64
  %i.er = add nuw nsw i64 %i.eo, %i.eq            ; 16 uses
  store i64 %i.er, ptr %i.k, align 8, !tbaa !241
  %i.es = load i64, ptr %i.l, align 8, !tbaa !172 ; 4 uses
  %i.et = icmp sgt i64 %i.er, %i.es
  br i1 %i.et, label %.loopexit.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.eu = load ptr, ptr %i.j, align 8, !tbaa !176 ; 2 uses
  %i.ev = ptrtoaddr ptr %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.eo ; 204 uses
  switch i8 %i.dy, label %bb.ws [
    i8 0, label %bb.g
    i8 1, label %bb.g
    i8 2, label %bb.g
    i8 3, label %bb.g
    i8 4, label %bb.g
    i8 5, label %bb.g
    i8 6, label %bb.s
    i8 7, label %bb.s
    i8 8, label %bb.ad
    i8 9, label %bb.ad
    i8 10, label %bb.aq
    i8 11, label %bb.ax
    i8 12, label %bb.bg
    i8 13, label %bb.bh
    i8 14, label %bb.bi
    i8 15, label %bb.bs
    i8 16, label %bb.ca
    i8 17, label %bb.cb
    i8 18, label %bb.cc
    i8 19, label %bb.cd
    i8 20, label %bb.ch
    i8 21, label %bb.cl
    i8 22, label %bb.cp
    i8 23, label %bb.ct
    i8 24, label %bb.cv
    i8 25, label %bb.cw
    i8 26, label %bb.cx
    i8 27, label %bb.cy
    i8 28, label %bb.dh
    i8 29, label %bb.dn
    i8 30, label %bb.do
    i8 31, label %bb.dp
    i8 32, label %bb.dq
    i8 33, label %Ins_SPVTL.exitthread-pre-split
    i8 34, label %bb.dr
    i8 35, label %bb.ds
    i8 36, label %bb.dt
    i8 37, label %bb.du
    i8 38, label %bb.dy
    i8 39, label %bb.eb
    i8 40, label %bb.ef
    i8 41, label %bb.eo
    i8 42, label %bb.er
    i8 43, label %bb.fg
    i8 44, label %bb.fs
    i8 45, label %bb.gi
    i8 46, label %bb.gp
    i8 47, label %bb.gp
    i8 48, label %bb.gu
    i8 49, label %bb.gu
    i8 50, label %bb.ht
    i8 51, label %bb.ht
    i8 52, label %bb.ih
    i8 53, label %bb.ih
    i8 54, label %bb.jc
    i8 55, label %bb.jc
    i8 56, label %bb.jr
    i8 57, label %bb.kp
    i8 58, label %bb.ls
    i8 59, label %bb.ls
    i8 60, label %bb.lz
    i8 61, label %bb.mg
    i8 62, label %bb.mh
    i8 63, label %bb.mh
    i8 64, label %bb.mq
end_hunk_0
begin_hunk_1_@TT_RunIns:bb.a
  %i.cjp = load i64, ptr %i.cjo, align 8, !tbaa !625
  %i.cjq = icmp sgt i64 %i.cjf, %i.cjp
  br i1 %i.cjq, label %.sink.split.i.i, label %bb.ri

bb.ri:                                            ; preds = %bb.rh, %bb.rg
  store i32 0, ptr %i.f, align 4, !tbaa !239
  %i.cjr = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.cjs = icmp slt i64 %i.cjr, 0
  br i1 %i.cjs, label %bb.rj, label %Ins_SPVTL.exitthread-pre-split

bb.rj:                                            ; preds = %bb.ri
  %i.cjt = load i64, ptr %i.bf, align 8, !tbaa !271
  %i.cju = add i64 %i.cjt, 1                      ; 2 uses
  store i64 %i.cju, ptr %i.bf, align 8, !tbaa !271
  %i.cjv = load i64, ptr %i.bg, align 8, !tbaa !272
  %i.cjw = icmp ugt i64 %i.cju, %i.cjv
  br i1 %i.cjw, label %.sink.split.i.i, label %Ins_SPVTL.exitthread-pre-split

.sink.split.i.i:                                  ; preds = %bb.re, %bb.rj, %bb.rh, %bb.rf
  %.sink.i.i610 = phi i32 [ 132, %bb.rf ], [ 132, %bb.re ], [ 132, %bb.rh ], [ 139, %bb.rj ] ; 2 uses
  store i32 %.sink.i.i610, ptr %i.b, align 8, !tbaa !237
  br label %Ins_SPVTL.exit

bb.rk:                                            ; preds = %bb.f
  %i.cjx = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.cjy = load i64, ptr %i.cjx, align 8, !tbaa !185
  %i.cjz = icmp eq i64 %i.cjy, 0
  br i1 %i.cjz, label %bb.rl, label %Ins_SPVTL.exitthread-pre-split

bb.rl:                                            ; preds = %bb.rk
  %i.cka = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.ckb = or i64 %i.cka, %i.eo
  %or.cond791 = icmp eq i64 %i.ckb, 0
  br i1 %or.cond791, label %.sink.split.i.i611, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  %i.ckc = load i64, ptr %i.d, align 8, !tbaa !206
  %i.ckd = add i64 %i.ckc, %i.cka                 ; 3 uses
  store i64 %i.ckd, ptr %i.d, align 8, !tbaa !206
  %i.cke = icmp slt i64 %i.ckd, 0
  br i1 %i.cke, label %.sink.split.i.i611, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.ckf = load i32, ptr %i.o, align 8, !tbaa !267 ; 2 uses
  %i.ckg = icmp sgt i32 %i.ckf, 0
  br i1 %i.ckg, label %bb.ro, label %bb.rp

bb.ro:                                            ; preds = %bb.rn
  %i.ckh = load ptr, ptr %i.q, align 8, !tbaa !161
  %i.cki = zext nneg i32 %i.ckf to i64
  %i.ckj = getelementptr [32 x i8], ptr %i.ckh, i64 %i.cki
  %i.ckk = getelementptr i8, ptr %i.ckj, i64 -8
  %i.ckl = load ptr, ptr %i.ckk, align 8, !tbaa !269
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.ckl, i64 16
  %i.ckn = load i64, ptr %i.ckm, align 8, !tbaa !625
  %i.cko = icmp sgt i64 %i.ckd, %i.ckn
  br i1 %i.cko, label %.sink.split.i.i611, label %bb.rp

bb.rp:                                            ; preds = %bb.ro, %bb.rn
  store i32 0, ptr %i.f, align 4, !tbaa !239
  %i.ckp = load i64, ptr %i.ew, align 8, !tbaa !185
  %i.ckq = icmp slt i64 %i.ckp, 0
  br i1 %i.ckq, label %bb.rq, label %Ins_SPVTL.exitthread-pre-split

bb.rq:                                            ; preds = %bb.rp
  %i.ckr = load i64, ptr %i.bf, align 8, !tbaa !271
  %i.cks = add i64 %i.ckr, 1                      ; 2 uses
  store i64 %i.cks, ptr %i.bf, align 8, !tbaa !271
  %i.ckt = load i64, ptr %i.bg, align 8, !tbaa !272
  %i.cku = icmp ugt i64 %i.cks, %i.ckt
  br i1 %i.cku, label %.sink.split.i.i611, label %Ins_SPVTL.exitthread-pre-split

.sink.split.i.i611:                               ; preds = %bb.rl, %bb.rq, %bb.ro, %bb.rm
  %.sink.i.i612 = phi i32 [ 132, %bb.rm ], [ 132, %bb.rl ], [ 132, %bb.ro ], [ 139, %bb.rq ] ; 2 uses
  store i32 %.sink.i.i612, ptr %i.b, align 8, !tbaa !237
  br label %Ins_SPVTL.exit

bb.rr:                                            ; preds = %bb.f
  store i32 5, ptr %i.bd, align 8, !tbaa !624
  store ptr @Round_None, ptr %i.be, align 8, !tbaa !265
  br label %Ins_SPVTL.exitthread-pre-split

bb.rs:                                            ; preds = %bb.f
  %i.ckv = load ptr, ptr %i.m, align 8, !tbaa !167 ; 4 uses
  %.not.i613 = icmp eq ptr %i.ckv, null
  br i1 %.not.i613, label %._crit_edge.i618, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  %i.ckw = load i32, ptr %i.n, align 8, !tbaa !169 ; 2 uses
  %i.ckx = zext i32 %i.ckw to i64
  %.idx.i614 = shl nuw nsw i64 %i.ckx, 5
  %i.cky = getelementptr inbounds nuw i8, ptr %i.ckv, i64 %.idx.i614
  %.not40.i615 = icmp eq i32 %i.ckw, 0
  br i1 %.not40.i615, label %._crit_edge.i618, label %.lr.ph.i616

.lr.ph.i616:                                      ; preds = %bb.rt, %bb.sa
  %.031.i617 = phi ptr [ %i.cmc, %bb.sa ], [ %i.ckv, %bb.rt ] ; 6 uses
  %i.ckz = getelementptr inbounds nuw i8, ptr %.031.i617, i64 24
  %i.cla = load i32, ptr %i.ckz, align 8, !tbaa !276
  %i.clb = and i32 %i.cla, 255
  %i.clc = icmp eq i32 %i.clb, 123
  br i1 %i.clc, label %bb.ru, label %bb.sa

bb.ru:                                            ; preds = %.lr.ph.i616
  %i.cld = getelementptr inbounds nuw i8, ptr %.031.i617, i64 28
  %i.cle = load i8, ptr %i.cld, align 4, !tbaa !277
  %.not28.i620 = icmp eq i8 %i.cle, 0
  br i1 %.not28.i620, label %bb.sa, label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  %i.clf = load i32, ptr %i.o, align 8, !tbaa !267 ; 3 uses
  %i.clg = load i32, ptr %i.p, align 4, !tbaa !160
  %.not29.i621 = icmp slt i32 %i.clf, %i.clg
  br i1 %.not29.i621, label %bb.rw, label %.loopexit.sink.split

bb.rw:                                            ; preds = %bb.rv
  %i.clh = load ptr, ptr %i.q, align 8, !tbaa !161
  %i.cli = add nsw i32 %i.clf, 1
  store i32 %i.cli, ptr %i.o, align 8, !tbaa !267
  %i.clj = sext i32 %i.clf to i64
  %i.clk = getelementptr inbounds [32 x i8], ptr %i.clh, i64 %i.clj ; 4 uses
  %i.cll = load i32, ptr %i.r, align 4, !tbaa !207
  store i32 %i.cll, ptr %i.clk, align 8, !tbaa !278
  %i.clm = load i64, ptr %i.d, align 8, !tbaa !206
  %i.cln = add nsw i64 %i.clm, 1
  %i.clo = getelementptr inbounds nuw i8, ptr %i.clk, i64 8
  store i64 %i.cln, ptr %i.clo, align 8, !tbaa !279
  %i.clp = getelementptr inbounds nuw i8, ptr %i.clk, i64 16
  store i64 1, ptr %i.clp, align 8, !tbaa !280
  %i.clq = getelementptr inbounds nuw i8, ptr %i.clk, i64 24
  store ptr %.031.i617, ptr %i.clq, align 8, !tbaa !269
  %i.clr = load i32, ptr %.031.i617, align 8, !tbaa !281 ; 3 uses
  %i.cls = getelementptr inbounds nuw i8, ptr %.031.i617, i64 8
  %i.clt = load i64, ptr %i.cls, align 8, !tbaa !282 ; 2 uses
  %i.clu = add i32 %i.clr, -4
  %or.cond.i.i622 = icmp ult i32 %i.clu, -3
  br i1 %or.cond.i.i622, label %.loopexit.sink.split, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.clv = zext nneg i32 %i.clr to i64
  %i.clw = getelementptr [16 x i8], ptr %0, i64 %i.clv ; 2 uses
  %i.clx = getelementptr i8, ptr %i.clw, i64 720
  %i.cly = load ptr, ptr %i.clx, align 8, !tbaa !202 ; 2 uses
  %.not.i.i623 = icmp eq ptr %i.cly, null
  br i1 %.not.i.i623, label %.loopexit.sink.split, label %bb.ry

bb.ry:                                            ; preds = %bb.rx
  %i.clz = getelementptr i8, ptr %i.clw, i64 728
  %i.cma = load i64, ptr %i.clz, align 8, !tbaa !203 ; 2 uses
  %i.cmb = icmp sgt i64 %i.clt, %i.cma
  br i1 %i.cmb, label %.loopexit.sink.split, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  store ptr %i.cly, ptr %i.c, align 8, !tbaa !204
  store i64 %i.cma, ptr %i.s, align 8, !tbaa !205
  store i64 %i.clt, ptr %i.d, align 8, !tbaa !206
  store i32 0, ptr %i.f, align 4, !tbaa !239
  store i32 %i.clr, ptr %i.r, align 4, !tbaa !207
  br label %Ins_SPVTL.exitthread-pre-split

bb.sa:                                            ; preds = %bb.ru, %.lr.ph.i616
  %i.cmc = getelementptr inbounds nuw i8, ptr %.031.i617, i64 32 ; 2 uses
  %i.cmd = icmp ult ptr %i.cmc, %i.cky
  br i1 %i.cmd, label %.lr.ph.i616, label %._crit_edge.i618, !llvm.loop !0

._crit_edge.i618:                                 ; preds = %bb.sa, %bb.rt, %bb.rs
  store i32 128, ptr %i.b, align 8, !tbaa !237
  br label %Ins_SPVTL.exit.thread781

bb.sb:                                            ; preds = %bb.f
  store i32 4, ptr %i.bd, align 8, !tbaa !624
  store ptr @Round_Up_To_Grid, ptr %i.be, align 8, !tbaa !265
  br label %Ins_SPVTL.exitthread-pre-split

bb.sc:                                            ; preds = %bb.f
  store i32 3, ptr %i.bd, align 8, !tbaa !624
  store ptr @Round_Down_To_Grid, ptr %i.be, align 8, !tbaa !265
  br label %Ins_SPVTL.exitthread-pre-split

bb.sd:                                            ; preds = %bb.f
  %i.cme = load i64, ptr %i.bc, align 8, !tbaa !623 ; 4 uses
  %i.cmf = icmp slt i64 %i.er, %i.cme
  br i1 %i.cmf, label %bb.se, label %bb.sg

bb.se:                                            ; preds = %bb.sd
  %i.cmg = load i8, ptr %i.i, align 2, !tbaa !163
  %.not21.i633 = icmp eq i8 %i.cmg, 0
  br i1 %.not21.i633, label %.loopexit.i632, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  store i32 129, ptr %i.b, align 8, !tbaa !237
  br label %.loopexit.i632

bb.sg:                                            ; preds = %bb.sd
  %i.cmh = sub nsw i64 %i.er, %i.cme
  store i64 %i.cmh, ptr %i.k, align 8, !tbaa !241
  %i.cmi = load i32, ptr %i.u, align 4, !tbaa !215
  %i.cmj = icmp eq i32 %i.cmi, 7
  %.not22.i625 = icmp eq i64 %i.cme, 0
  %or.cond.i626 = or i1 %.not22.i625, %i.cmj
  br i1 %or.cond.i626, label %.loopexit.i632, label %.lr.ph.i627

.lr.ph.i627:                                      ; preds = %bb.sg
  %.pre24.i = load i16, ptr %i.ba, align 8, !tbaa !209
  br label %.lr.ph.i627.a

.lr.ph.i627.a:                                    ; preds = %bb.sj, %.lr.ph.i627
  %8 = phi i16 [ %.pre24.i, %.lr.ph.i627 ], [ %9, %bb.sj ] ; 2 uses
  %.in.i628 = phi i64 [ %i.cme, %.lr.ph.i627 ], [ %i.cmk, %bb.sj ]
  %.01623.i = phi ptr [ %i.ew, %.lr.ph.i627 ], [ %i.cml, %bb.sj ]
  %i.cmk = add nsw i64 %.in.i628, -1              ; 2 uses
  %i.cml = getelementptr inbounds i8, ptr %.01623.i, i64 -8 ; 2 uses
  %i.cmm = load i64, ptr %i.cml, align 8, !tbaa !185 ; 2 uses
  %i.cmn = trunc i64 %i.cmm to i32
  %i.cmo = and i32 %i.cmn, 65535
  %i.cmp = zext i16 %8 to i32
  %.not19.i629 = icmp samesign ult i32 %i.cmo, %i.cmp
  br i1 %.not19.i629, label %bb.si, label %bb.sh

bb.sh:                                            ; preds = %.lr.ph.i627.a
  %i.cmq = load i8, ptr %i.i, align 2, !tbaa !163
  %.not20.i630 = icmp eq i8 %i.cmq, 0
  br i1 %.not20.i630, label %bb.sj, label %.loopexit.sink.split

bb.si:                                            ; preds = %.lr.ph.i627.a
  %i.cmr = load ptr, ptr %i.bb, align 8, !tbaa !632
  %i.cms = and i64 %i.cmm, 65535
  %i.cmt = getelementptr inbounds nuw i8, ptr %i.cmr, i64 %i.cms ; 2 uses
  %i.cmu = load i8, ptr %i.cmt, align 1, !tbaa !186
  %i.cmv = xor i8 %i.cmu, 1
  store i8 %i.cmv, ptr %i.cmt, align 1, !tbaa !186
  %.pre.i633 = load i16, ptr %i.ba, align 8, !tbaa !209
  br label %bb.sj

bb.sj:                                            ; preds = %bb.si, %bb.sh
  %9 = phi i16 [ %8, %bb.sh ], [ %.pre.i633, %bb.si ]
  %.not.i631 = icmp eq i64 %i.cmk, 0
  br i1 %.not.i631, label %.loopexit.i632, label %.lr.ph.i627.a, !llvm.loop !604

.loopexit.i632:                                   ; preds = %bb.sj, %bb.sg, %bb.sf, %bb.se
  store i64 1, ptr %i.bc, align 8, !tbaa !623
  br label %Ins_SPVTL.exitthread-pre-split

bb.sk:                                            ; preds = %bb.f
  %i.cmw = load i32, ptr %i.u, align 4, !tbaa !215
  %i.cmx = icmp eq i32 %i.cmw, 7
  br i1 %i.cmx, label %Ins_SPVTL.exitthread-pre-split, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  %i.cmy = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.cmz = load i64, ptr %i.cmy, align 8, !tbaa !185 ; 2 uses
  %i.cna = trunc i64 %i.cmz to i32
  %i.cnb = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.cnc = trunc i64 %i.cnb to i16
  %i.cnd = and i32 %i.cna, 65535                  ; 2 uses
  %i.cne = load i16, ptr %i.ba, align 8, !tbaa !209
  %i.cnf = zext i16 %i.cne to i32                 ; 2 uses
  %.not.i634 = icmp samesign ult i32 %i.cnd, %i.cnf
  %i.cng = trunc i64 %i.cnb to i32
  %i.cnh = and i32 %i.cng, 65535                  ; 2 uses
  %.not16.i = icmp samesign ult i32 %i.cnh, %i.cnf
  %or.cond.i635 = select i1 %.not.i634, i1 %.not16.i, i1 false
  br i1 %or.cond.i635, label %.preheader.i638, label %bb.sm

.preheader.i638:                                  ; preds = %bb.sl
  %.not1720.i = icmp samesign ult i32 %i.cnd, %i.cnh
  br i1 %.not1720.i, label %Ins_SPVTL.exitthread-pre-split, label %.lr.ph.i639

.lr.ph.i639:                                      ; preds = %.preheader.i638
  %i.cni = trunc i64 %i.cmz to i16
  br label %bb.sn

bb.sm:                                            ; preds = %bb.sl
  %i.cnj = load i8, ptr %i.i, align 2, !tbaa !163
  %.not18.i636 = icmp eq i8 %i.cnj, 0
  br i1 %.not18.i636, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.sn:                                            ; preds = %bb.sn, %.lr.ph.i639
  %.021.i = phi i16 [ %i.cnc, %.lr.ph.i639 ], [ %i.cnp, %bb.sn ] ; 2 uses
  %i.cnk = load ptr, ptr %i.bb, align 8, !tbaa !632
  %i.cnl = zext i16 %.021.i to i64
  %i.cnm = getelementptr inbounds nuw i8, ptr %i.cnk, i64 %i.cnl ; 2 uses
  %i.cnn = load i8, ptr %i.cnm, align 1, !tbaa !186
  %i.cno = or i8 %i.cnn, 1
  store i8 %i.cno, ptr %i.cnm, align 1, !tbaa !186
  %i.cnp = add i16 %.021.i, 1                     ; 2 uses
  %.not17.i = icmp ugt i16 %i.cnp, %i.cni
  br i1 %.not17.i, label %Ins_SPVTL.exitthread-pre-split, label %bb.sn, !llvm.loop !605

bb.so:                                            ; preds = %bb.f
  %i.cnq = load i32, ptr %i.u, align 4, !tbaa !215
  %i.cnr = icmp eq i32 %i.cnq, 7
  br i1 %i.cnr, label %Ins_SPVTL.exitthread-pre-split, label %bb.sp

bb.sp:                                            ; preds = %bb.so
  %i.cns = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.cnt = load i64, ptr %i.cns, align 8, !tbaa !185 ; 2 uses
  %i.cnu = trunc i64 %i.cnt to i32
  %i.cnv = load i64, ptr %i.ew, align 8, !tbaa !185 ; 2 uses
  %i.cnw = trunc i64 %i.cnv to i16
  %i.cnx = and i32 %i.cnu, 65535                  ; 2 uses
  %i.cny = load i16, ptr %i.ba, align 8, !tbaa !209
  %i.cnz = zext i16 %i.cny to i32                 ; 2 uses
  %.not.i640 = icmp samesign ult i32 %i.cnx, %i.cnz
  %i.coa = trunc i64 %i.cnv to i32
  %i.cob = and i32 %i.coa, 65535                  ; 2 uses
  %.not16.i641 = icmp samesign ult i32 %i.cob, %i.cnz
  %or.cond.i642 = select i1 %.not.i640, i1 %.not16.i641, i1 false
  br i1 %or.cond.i642, label %.preheader.i645, label %bb.sq

.preheader.i645:                                  ; preds = %bb.sp
  %.not1720.i646 = icmp samesign ult i32 %i.cnx, %i.cob
  br i1 %.not1720.i646, label %Ins_SPVTL.exitthread-pre-split, label %.lr.ph.i647

.lr.ph.i647:                                      ; preds = %.preheader.i645
  %i.coc = trunc i64 %i.cnt to i16
  br label %bb.sr

bb.sq:                                            ; preds = %bb.sp
  %i.cod = load i8, ptr %i.i, align 2, !tbaa !163
  %.not18.i643 = icmp eq i8 %i.cod, 0
  br i1 %.not18.i643, label %Ins_SPVTL.exitthread-pre-split, label %.loopexit.sink.split

bb.sr:                                            ; preds = %bb.sr, %.lr.ph.i647
  %.021.i648 = phi i16 [ %i.cnw, %.lr.ph.i647 ], [ %i.coj, %bb.sr ] ; 2 uses
  %i.coe = load ptr, ptr %i.bb, align 8, !tbaa !632
  %i.cof = zext i16 %.021.i648 to i64
  %i.cog = getelementptr inbounds nuw i8, ptr %i.coe, i64 %i.cof ; 2 uses
  %i.coh = load i8, ptr %i.cog, align 1, !tbaa !186
  %i.coi = and i8 %i.coh, -2
  store i8 %i.coi, ptr %i.cog, align 1, !tbaa !186
  %i.coj = add i16 %.021.i648, 1                  ; 2 uses
  %.not17.i649 = icmp ugt i16 %i.coj, %i.coc
  br i1 %.not17.i649, label %Ins_SPVTL.exitthread-pre-split, label %bb.sr, !llvm.loop !606

bb.ss:                                            ; preds = %bb.f, %bb.f
  %i.cok = load ptr, ptr %i.m, align 8, !tbaa !167 ; 4 uses
  %.not.i650 = icmp eq ptr %i.cok, null
  br i1 %.not.i650, label %._crit_edge.i655, label %bb.st

bb.st:                                            ; preds = %bb.ss
  %i.col = load i32, ptr %i.n, align 8, !tbaa !169 ; 2 uses
  %i.com = zext i32 %i.col to i64
  %.idx.i651 = shl nuw nsw i64 %i.com, 5
  %i.con = getelementptr inbounds nuw i8, ptr %i.cok, i64 %.idx.i651
  %.not40.i652 = icmp eq i32 %i.col, 0
  br i1 %.not40.i652, label %._crit_edge.i655, label %.lr.ph.i653

.lr.ph.i653:                                      ; preds = %bb.st, %bb.ta
  %.031.i654 = phi ptr [ %i.cpr, %bb.ta ], [ %i.cok, %bb.st ] ; 6 uses
  %i.coo = getelementptr inbounds nuw i8, ptr %.031.i654, i64 24
  %i.cop = load i32, ptr %i.coo, align 8, !tbaa !276
  %i.coq = trunc i32 %i.cop to i8
  %i.cor = icmp eq i8 %i.dy, %i.coq
  br i1 %i.cor, label %bb.su, label %bb.ta

bb.su:                                            ; preds = %.lr.ph.i653
  %i.cos = getelementptr inbounds nuw i8, ptr %.031.i654, i64 28
  %i.cot = load i8, ptr %i.cos, align 4, !tbaa !277
  %.not28.i657 = icmp eq i8 %i.cot, 0
  br i1 %.not28.i657, label %bb.ta, label %bb.sv

bb.sv:                                            ; preds = %bb.su
  %i.cou = load i32, ptr %i.o, align 8, !tbaa !267 ; 3 uses
  %i.cov = load i32, ptr %i.p, align 4, !tbaa !160
  %.not29.i658 = icmp slt i32 %i.cou, %i.cov
  br i1 %.not29.i658, label %bb.sw, label %.loopexit.sink.split

bb.sw:                                            ; preds = %bb.sv
  %i.cow = load ptr, ptr %i.q, align 8, !tbaa !161
  %i.cox = add nsw i32 %i.cou, 1
  store i32 %i.cox, ptr %i.o, align 8, !tbaa !267
  %i.coy = sext i32 %i.cou to i64
  %i.coz = getelementptr inbounds [32 x i8], ptr %i.cow, i64 %i.coy ; 4 uses
  %i.cpa = load i32, ptr %i.r, align 4, !tbaa !207
  store i32 %i.cpa, ptr %i.coz, align 8, !tbaa !278
  %i.cpb = load i64, ptr %i.d, align 8, !tbaa !206
  %i.cpc = add nsw i64 %i.cpb, 1
  %i.cpd = getelementptr inbounds nuw i8, ptr %i.coz, i64 8
  store i64 %i.cpc, ptr %i.cpd, align 8, !tbaa !279
  %i.cpe = getelementptr inbounds nuw i8, ptr %i.coz, i64 16
  store i64 1, ptr %i.cpe, align 8, !tbaa !280
  %i.cpf = getelementptr inbounds nuw i8, ptr %i.coz, i64 24
  store ptr %.031.i654, ptr %i.cpf, align 8, !tbaa !269
  %i.cpg = load i32, ptr %.031.i654, align 8, !tbaa !281 ; 3 uses
  %i.cph = getelementptr inbounds nuw i8, ptr %.031.i654, i64 8
  %i.cpi = load i64, ptr %i.cph, align 8, !tbaa !282 ; 2 uses
  %i.cpj = add i32 %i.cpg, -4
  %or.cond.i.i659 = icmp ult i32 %i.cpj, -3
  br i1 %or.cond.i.i659, label %.loopexit.sink.split, label %bb.sx

bb.sx:                                            ; preds = %bb.sw
  %i.cpk = zext nneg i32 %i.cpg to i64
  %i.cpl = getelementptr [16 x i8], ptr %0, i64 %i.cpk ; 2 uses
  %i.cpm = getelementptr i8, ptr %i.cpl, i64 720
  %i.cpn = load ptr, ptr %i.cpm, align 8, !tbaa !202 ; 2 uses
  %.not.i.i660 = icmp eq ptr %i.cpn, null
  br i1 %.not.i.i660, label %.loopexit.sink.split, label %bb.sy

bb.sy:                                            ; preds = %bb.sx
  %i.cpo = getelementptr i8, ptr %i.cpl, i64 728
  %i.cpp = load i64, ptr %i.cpo, align 8, !tbaa !203 ; 2 uses
  %i.cpq = icmp sgt i64 %i.cpi, %i.cpp
  br i1 %i.cpq, label %.loopexit.sink.split, label %bb.sz

bb.sz:                                            ; preds = %bb.sy
  store ptr %i.cpn, ptr %i.c, align 8, !tbaa !204
  store i64 %i.cpp, ptr %i.s, align 8, !tbaa !205
  store i64 %i.cpi, ptr %i.d, align 8, !tbaa !206
  store i32 0, ptr %i.f, align 4, !tbaa !239
  store i32 %i.cpg, ptr %i.r, align 4, !tbaa !207
  br label %Ins_SPVTL.exitthread-pre-split

bb.ta:                                            ; preds = %bb.su, %.lr.ph.i653
  %i.cpr = getelementptr inbounds nuw i8, ptr %.031.i654, i64 32 ; 2 uses
  %i.cps = icmp ult ptr %i.cpr, %i.con
  br i1 %i.cps, label %.lr.ph.i653, label %._crit_edge.i655, !llvm.loop !0

._crit_edge.i655:                                 ; preds = %bb.ta, %bb.st, %bb.ss
  store i32 128, ptr %i.b, align 8, !tbaa !237
  br label %Ins_SPVTL.exit.thread781

bb.tb:                                            ; preds = %bb.f
  %.val329 = load i64, ptr %i.ew, align 8, !tbaa !185 ; 8 uses
  %i.cpt = trunc i64 %.val329 to i32
  %i.cpu = and i32 %i.cpt, 255                    ; 2 uses
  %trunc.i = trunc i64 %.val329 to i8
  switch i8 %trunc.i, label %bb.td [
    i8 -1, label %.sink.split.i662
    i8 0, label %bb.tc
  ]

bb.tc:                                            ; preds = %bb.tb
  br label %.sink.split.i662

bb.td:                                            ; preds = %bb.tb
end_hunk_1
begin_hunk_2_@llvm.memcpy.p0.p0.i64
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tt_face_load_cvt(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !323
  %i.g = call i32 %i.f(ptr noundef %0, i64 noundef 1668707360, ptr noundef %1, ptr noundef nonnull %i.b) #21 ; 2 uses
  store i32 %i.g, ptr %i.a, align 4, !tbaa !152
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.b, align 8, !tbaa !185
  %i.j = lshr i64 %i.i, 1                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 3 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !174
  %i.l = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 4, i64 noundef 0, i64 noundef %i.j, ptr noundef null, ptr noundef nonnull %i.a) #21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !92
  %i.n = load i32, ptr %i.a, align 4, !tbaa !152  ; 2 uses
  %.not24 = icmp eq i32 %i.n, 0
  br i1 %.not24, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.k, align 8, !tbaa !174
  %i.p = shl i64 %i.o, 1
  %i.q = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %1, i64 noundef %i.p) #21 ; 3 uses
  store i32 %i.q, ptr %i.a, align 4, !tbaa !152
  %.not25 = icmp eq i32 %i.q, 0
  br i1 %.not25, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !92   ; 2 uses
  %i.s = load i64, ptr %i.k, align 8, !tbaa !174  ; 2 uses
  %.idx = shl nuw nsw i64 %i.s, 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  %.not28 = icmp eq i64 %i.s, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.027 = phi ptr [ %i.x, %.lr.ph ], [ %i.r, %bb.e ] ; 2 uses
  %i.u = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %1) #21
  %i.v = sext i16 %i.u to i32
  %i.w = shl nsw i32 %i.v, 6
  store i32 %i.w, ptr %.027, align 4, !tbaa !152
  %i.x = getelementptr inbounds nuw i8, ptr %.027, i64 4 ; 2 uses
  %i.y = icmp ult ptr %i.x, %i.t
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !739

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %1) #21
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1201
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !321
  %.not26 = icmp eq i8 %i.aa, 0
  br i1 %.not26, label %._crit_edge._crit_edge, label %bb.f

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %i.a, align 4, !tbaa !152
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.ab = call fastcc i32 @tt_face_vary_cvt(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge._crit_edge, %bb.f, %bb.d, %bb.c, %bb.b
  %i.ac = phi i32 [ %.pre, %._crit_edge._crit_edge ], [ %i.ab, %bb.f ], [ %i.q, %bb.d ], [ %i.n, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %i.ac
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tt_face_vary_cvt(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !90   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i32 0, ptr %i.d, align 4, !tbaa !152
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !92
  %.not183 = icmp eq ptr %i.j, null
  br i1 %.not183, label %bb.ah, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !323
  %i.m = call i32 %i.l(ptr noundef nonnull %0, i64 noundef 1668702578, ptr noundef nonnull %1, ptr noundef nonnull %i.b) #21
  %.not184 = icmp eq i32 %i.m, 0
  br i1 %.not184, label %bb.d, label %bb.ah

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.b, align 8, !tbaa !185
  %i.o = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %1, i64 noundef %i.n) #21 ; 2 uses
  store i32 %i.o, ptr %i.a, align 4, !tbaa !152
  %.not185 = icmp eq i32 %i.o, 0
  br i1 %.not185, label %bb.e, label %bb.ah

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 8 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !345
  %i.r = load ptr, ptr %1, align 8, !tbaa !391
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = call i32 @FT_Stream_GetULong(ptr noundef nonnull %1) #21
  %.not186 = icmp eq i32 %i.v, 65536
  br i1 %.not186, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.a, align 4, !tbaa !152
  br label %bb.ag

bb.g:                                             ; preds = %bb.e
  %i.w = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %1) #21 ; 2 uses
  %i.x = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %1) #21
  %i.y = zext i16 %i.x to i64                     ; 2 uses
  %i.z = and i16 %i.w, 4095                       ; 2 uses
  %i.aa = zext nneg i16 %i.z to i32               ; 2 uses
  %i.ab = shl nuw nsw i32 %i.aa, 2
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = add nuw nsw i64 %i.ac, %i.y
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !185
  %i.af = icmp ugt i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 8, ptr %i.a, align 4, !tbaa !152
  br label %bb.ag

bb.i:                                             ; preds = %bb.g
  %i.ag = add i64 %i.u, %i.y                      ; 3 uses
  %.not187 = icmp sgt i16 %i.w, -1
  br i1 %.not187, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !345
  %i.ai = load ptr, ptr %1, align 8, !tbaa !391   ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !384 ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.ak
  %i.aq = icmp ult i64 %i.ag, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  %i.as = select i1 %i.aq, ptr %i.ar, ptr %i.an
  store ptr %i.as, ptr %i.p, align 8, !tbaa !345
  %i.at = call fastcc ptr @ft_var_readpackedpoints(ptr noundef nonnull %1, ptr noundef %i.d)
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !345
  %i.av = load ptr, ptr %1, align 8, !tbaa !391   ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !384 ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.ax
  %i.bc = icmp ult i64 %i.al, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.al
  %i.be = select i1 %i.bc, ptr %i.bd, ptr %i.az
  store ptr %i.be, ptr %i.p, align 8, !tbaa !345
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.0169 = phi i64 [ %i.ay, %bb.j ], [ %i.ag, %bb.i ]
  %.0164 = phi ptr [ %i.at, %bb.j ], [ null, %bb.i ] ; 3 uses
  %i.bf = load i32, ptr %i.h, align 8, !tbaa !317
  %i.bg = mul i32 %i.bf, 3
  %i.bh = zext i32 %i.bg to i64
  %i.bi = call ptr @ft_mem_qrealloc(ptr noundef %i.f, i64 noundef 8, i64 noundef 0, i64 noundef %i.bh, ptr noundef null, ptr noundef nonnull %i.a) #21 ; 5 uses
  %i.bj = load i32, ptr %i.a, align 4, !tbaa !152
  %.not188 = icmp eq i32 %i.bj, 0
  br i1 %.not188, label %bb.l, label %bb.ad

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 7 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !174
  %i.bm = call ptr @ft_mem_realloc(ptr noundef %i.f, i64 noundef 8, i64 noundef 0, i64 noundef %i.bl, ptr noundef null, ptr noundef nonnull %i.a) #21 ; 7 uses
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !152
  %.not189 = icmp eq i32 %i.bn, 0
  br i1 %.not189, label %bb.m, label %bb.ad

bb.m:                                             ; preds = %bb.l
  %i.bo = load i32, ptr %i.h, align 8, !tbaa !317
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bp ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp ; 2 uses
  %.not221 = icmp eq i16 %i.z, 0
  br i1 %.not221, label %.preheader, label %.lr.ph218

.lr.ph218:                                        ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bv = load i32, ptr %i.d, align 4             ; 2 uses
  br label %bb.n

.preheader:                                       ; preds = %bb.ac, %bb.m
  %i.bw = load i64, ptr %i.bk, align 8, !tbaa !174 ; 6 uses
  %.not227 = icmp eq i64 %i.bw, 0
  br i1 %.not227, label %._crit_edge, label %.lr.ph220

.lr.ph220:                                        ; preds = %.preheader
  %i.bx = load ptr, ptr %i.i, align 8, !tbaa !92  ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph220
  %i.by = add i64 %i.bw, -1                       ; 2 uses
  %i.bz = and i64 %i.by, 4294967295
  %i.ca = icmp eq i64 %i.bz, 4294967295
  %i.cb = icmp ugt i64 %i.by, 4294967295
  %i.cc = or i1 %i.ca, %i.cb
  br i1 %i.cc, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.bw, 8589934588              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load = load <2 x i64>, ptr %i.cd, align 8, !tbaa !185
  %wide.load265 = load <2 x i64>, ptr %i.ce, align 8, !tbaa !185
  %i.cf = add nsw <2 x i64> %wide.load, splat (i64 512)
  %i.cg = add nsw <2 x i64> %wide.load265, splat (i64 512)
  %i.ch = lshr <2 x i64> %i.cf, splat (i64 10)
  %i.ci = lshr <2 x i64> %i.cg, splat (i64 10)
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %wide.load266 = load <2 x i32>, ptr %i.cj, align 4, !tbaa !152
  %wide.load267 = load <2 x i32>, ptr %i.ck, align 4, !tbaa !152
  %i.cl = trunc <2 x i64> %i.ch to <2 x i32>
  %i.cm = trunc <2 x i64> %i.ci to <2 x i32>
  %i.cn = add <2 x i32> %wide.load266, %i.cl
  %i.co = add <2 x i32> %wide.load267, %i.cm
  store <2 x i32> %i.cn, ptr %i.cj, align 4, !tbaa !152
  store <2 x i32> %i.co, ptr %i.ck, align 4, !tbaa !152
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !740

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph220, %middle.block
  %indvars.iv240.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph220 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.n:                                             ; preds = %.lr.ph218, %bb.ac
  %.0167217 = phi i32 [ 0, %.lr.ph218 ], [ %i.gj, %bb.ac ]
  %.1170216 = phi i64 [ %.0169, %.lr.ph218 ], [ %.2171.ph, %bb.ac ] ; 3 uses
  %i.cq = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %1) #21
  %i.cr = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %1) #21 ; 3 uses
  %i.cs = zext i16 %i.cr to i32                   ; 3 uses
  %.not190 = icmp sgt i16 %i.cr, -1
  br i1 %.not190, label %bb.o, label %.preheader205

.preheader205:                                    ; preds = %bb.n
  %i.ct = load i32, ptr %i.h, align 8, !tbaa !317
  %.not222 = icmp eq i32 %i.ct, 0
  br i1 %.not222, label %.loopexit203, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader205, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader205 ] ; 2 uses
  %i.cu = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %1) #21
  %i.cv = sext i16 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 2
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !185
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cy = load i32, ptr %i.h, align 8, !tbaa !317 ; 2 uses
  %i.cz = zext i32 %i.cy to i64
  %i.da = icmp samesign ult i64 %indvars.iv.next, %i.cz
  br i1 %i.da, label %.lr.ph, label %.loopexit206, !llvm.loop !741

bb.o:                                             ; preds = %bb.n
  %i.db = and i32 %i.cs, 4095                     ; 2 uses
  %i.dc = load i32, ptr %i.bs, align 8, !tbaa !386
  %i.dd = icmp ult i32 %i.db, %i.dc
  br i1 %i.dd, label %bb.p, label %bb.ab

bb.p:                                             ; preds = %bb.o
  %i.de = load ptr, ptr %i.bt, align 8, !tbaa !382
  %i.df = load i32, ptr %i.h, align 8, !tbaa !317 ; 2 uses
  %i.dg = mul i32 %i.df, %i.db
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  br label %.loopexit206

.loopexit206:                                     ; preds = %.lr.ph, %bb.p
  %i.dj = phi i32 [ %i.df, %bb.p ], [ %i.cy, %.lr.ph ]
  %.0165 = phi ptr [ %i.di, %bb.p ], [ %i.bi, %.lr.ph ] ; 3 uses
  %i.dk = and i32 %i.cs, 16384
  %.not191 = icmp eq i32 %i.dk, 0
  %.not223 = icmp eq i32 %i.dj, 0
  %or.cond262 = select i1 %.not191, i1 true, i1 %.not223
  br i1 %or.cond262, label %.loopexit203, label %.lr.ph209

.preheader202:                                    ; preds = %.lr.ph209
  %i.dl = icmp eq i32 %i.dq, 0
  br i1 %i.dl, label %.loopexit203, label %.lr.ph211

.lr.ph209:                                        ; preds = %.loopexit206, %.lr.ph209
  %indvars.iv230 = phi i64 [ %indvars.iv.next231, %.lr.ph209 ], [ 0, %.loopexit206 ] ; 2 uses
  %i.dm = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %1) #21
  %i.dn = sext i16 %i.dm to i64
  %i.do = shl nsw i64 %i.dn, 2
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv230
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !185
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %i.dq = load i32, ptr %i.h, align 8, !tbaa !317 ; 2 uses
  %i.dr = zext i32 %i.dq to i64
  %i.ds = icmp samesign ult i64 %indvars.iv.next231, %i.dr
  br i1 %i.ds, label %.lr.ph209, label %.preheader202, !llvm.loop !742

.lr.ph211:                                        ; preds = %.preheader202, %.lr.ph211
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %.lr.ph211 ], [ 0, %.preheader202 ] ; 2 uses
  %i.dt = call zeroext i16 @FT_Stream_GetUShort(ptr noundef nonnull %1) #21
  %i.du = sext i16 %i.dt to i64
  %i.dv = shl nsw i64 %i.du, 2
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv233
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !185
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %i.dx = load i32, ptr %i.h, align 8, !tbaa !317
  %i.dy = zext i32 %i.dx to i64
  %i.dz = icmp samesign ult i64 %indvars.iv.next234, %i.dy
  br i1 %i.dz, label %.lr.ph211, label %.loopexit203, !llvm.loop !743

.loopexit203:                                     ; preds = %.lr.ph211, %.preheader205, %.preheader202, %.loopexit206
  %.0165254 = phi ptr [ %.0165, %.loopexit206 ], [ %i.bi, %.preheader205 ], [ %.0165, %.preheader202 ], [ %.0165, %.lr.ph211 ]
  %i.ea = call fastcc i64 @ft_var_apply_tuple(ptr noundef %i.h, i16 noundef zeroext %i.cr, ptr noundef %.0165254, ptr noundef %i.bq, ptr noundef %i.br) ; 3 uses
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %bb.ac, label %bb.q

bb.q:                                             ; preds = %.loopexit203
  %i.ec = load ptr, ptr %i.p, align 8, !tbaa !345
  %i.ed = load ptr, ptr %1, align 8, !tbaa !391   ; 2 uses
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.eg = sub i64 %i.ee, %i.ef                    ; 2 uses
  %i.eh = load ptr, ptr %i.bu, align 8, !tbaa !384 ; 2 uses
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = sub i64 %i.ei, %i.ef
  %i.ek = icmp ult i64 %.1170216, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.1170216
  %i.em = select i1 %i.ek, ptr %i.el, ptr %i.eh
  store ptr %i.em, ptr %i.p, align 8, !tbaa !345
  %i.en = and i32 %i.cs, 8192
  %.not192 = icmp eq i32 %i.en, 0
  br i1 %.not192, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eo = call fastcc ptr @ft_var_readpackedpoints(ptr noundef nonnull %1, ptr noundef %i.c) ; 2 uses
  %.pr = load i32, ptr %i.c, align 4, !tbaa !152
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  store i32 %i.bv, ptr %i.c, align 4, !tbaa !152
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ep = phi i32 [ %i.bv, %bb.s ], [ %.pr, %bb.r ] ; 3 uses
  %.0163 = phi ptr [ null, %bb.s ], [ %i.eo, %bb.r ] ; 2 uses
  %.0162 = phi ptr [ %.0164, %bb.s ], [ %i.eo, %bb.r ] ; 3 uses
  %i.eq = icmp eq i32 %i.ep, 0                    ; 2 uses
  br i1 %i.eq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.er = load i64, ptr %i.bk, align 8, !tbaa !174
  %i.es = trunc i64 %i.er to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.et = phi i32 [ %i.es, %bb.u ], [ %i.ep, %bb.t ]
  %i.eu = call fastcc ptr @ft_var_readpackeddeltas(ptr noundef nonnull %1, i32 noundef %i.et) ; 4 uses
  %i.ev = icmp ne ptr %.0162, null
  %i.ew = icmp ne ptr %i.eu, null
  %or.cond = select i1 %i.ev, i1 %i.ew, i1 false
  br i1 %or.cond, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.ex = icmp eq ptr %.0162, inttoptr (i64 -1 to ptr)
  br i1 %i.ex, label %.preheader199, label %.preheader200

.preheader200:                                    ; preds = %bb.w
  br i1 %i.eq, label %.loopexit, label %.lr.ph213.preheader

.lr.ph213.preheader:                              ; preds = %.preheader200
  %wide.trip.count = zext i32 %i.ep to i64
  %.pre243 = load i64, ptr %i.bk, align 8, !tbaa !174
  br label %.lr.ph213

.preheader199:                                    ; preds = %bb.w
  %i.ey = load i64, ptr %i.bk, align 8, !tbaa !174
  %.not226 = icmp eq i64 %i.ey, 0
  br i1 %.not226, label %.loopexit, label %.lr.ph215

.lr.ph215:                                        ; preds = %.preheader199, %.lr.ph215
  %i.ez = phi i64 [ %i.fl, %.lr.ph215 ], [ 0, %.preheader199 ] ; 2 uses
  %.3214 = phi i32 [ %i.fk, %.lr.ph215 ], [ 0, %.preheader199 ]
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ez ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !185
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ez
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !185
  %i.fe = mul i64 %i.fd, %i.ea                    ; 2 uses
  %i.ff = ashr i64 %i.fe, 63
  %i.fg = add i64 %i.fe, 32768
  %i.fh = add i64 %i.fg, %i.ff
  %i.fi = ashr i64 %i.fh, 16
  %i.fj = add nsw i64 %i.fi, %i.fb
  store i64 %i.fj, ptr %i.fa, align 8, !tbaa !185
  %i.fk = add i32 %.3214, 1                       ; 2 uses
  %i.fl = zext i32 %i.fk to i64                   ; 2 uses
  %i.fm = load i64, ptr %i.bk, align 8, !tbaa !174
  %i.fn = icmp ugt i64 %i.fm, %i.fl
  br i1 %i.fn, label %.lr.ph215, label %.loopexit, !llvm.loop !744

.lr.ph213:                                        ; preds = %.lr.ph213.preheader, %bb.y
  %2 = phi i64 [ %.pre243, %.lr.ph213.preheader ], [ %3, %bb.y ] ; 2 uses
  %indvars.iv236 = phi i64 [ 0, %.lr.ph213.preheader ], [ %indvars.iv.next237, %bb.y ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %.0162, i64 %indvars.iv236
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !128
  %i.fq = zext i16 %i.fp to i64                   ; 2 uses
  %.not193 = icmp ugt i64 %2, %i.fq
  br i1 %.not193, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph213
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.fq ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !185
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv236
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !185
  %i.fv = mul i64 %i.fu, %i.ea                    ; 2 uses
  %i.fw = ashr i64 %i.fv, 63
  %i.fx = add i64 %i.fv, 32768
  %i.fy = add i64 %i.fx, %i.fw
  %i.fz = ashr i64 %i.fy, 16
  %i.ga = add nsw i64 %i.fz, %i.fs
  store i64 %i.ga, ptr %i.fr, align 8, !tbaa !185
  %.pre = load i64, ptr %i.bk, align 8, !tbaa !174
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph213, %bb.x
  %3 = phi i64 [ %2, %.lr.ph213 ], [ %.pre, %bb.x ]
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next237, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph213, !llvm.loop !745

.loopexit:                                        ; preds = %bb.y, %.lr.ph215, %.preheader200, %.preheader199, %bb.v
  %.not194 = icmp eq ptr %.0163, inttoptr (i64 -1 to ptr)
  br i1 %.not194, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.loopexit
  call void @ft_mem_free(ptr noundef %i.f, ptr noundef %.0163) #21
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit, %bb.z
  call void @ft_mem_free(ptr noundef %i.f, ptr noundef %i.eu) #21
  %i.gb = load ptr, ptr %i.bu, align 8, !tbaa !384 ; 2 uses
  %i.gc = load ptr, ptr %1, align 8, !tbaa !391   ; 2 uses
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = icmp ult i64 %i.eg, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.eg
  %i.gi = select i1 %i.gg, ptr %i.gh, ptr %i.gb
  store ptr %i.gi, ptr %i.p, align 8, !tbaa !345
  br label %bb.ac

bb.ab:                                            ; preds = %bb.o
  store i32 8, ptr %i.a, align 4, !tbaa !152
  br label %bb.ad

bb.ac:                                            ; preds = %.loopexit203, %bb.aa
  %.pn = zext i16 %i.cq to i64
  %.2171.ph = add i64 %.1170216, %.pn
  %i.gj = add nuw nsw i32 %.0167217, 1            ; 2 uses
  %exitcond239.not = icmp eq i32 %i.gj, %i.aa
  br i1 %exitcond239.not, label %.preheader, label %bb.n, !llvm.loop !746

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %scalar.ph ], [ %indvars.iv240.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv240
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !185
  %i.gm = add nsw i64 %i.gl, 512
  %i.gn = lshr i64 %i.gm, 10
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv240 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !152
  %i.gq = trunc i64 %i.gn to i32
  %i.gr = add i32 %i.gp, %i.gq
  store i32 %i.gr, ptr %i.go, align 4, !tbaa !152
  %indvars.iv.next241 = add i64 %indvars.iv240, 1 ; 2 uses
  %i.gs = and i64 %indvars.iv.next241, 4294967295
  %i.gt = icmp ugt i64 %i.bw, %i.gs
  br i1 %i.gt, label %scalar.ph, label %._crit_edge, !llvm.loop !747

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.gv = call i32 @FT_List_Iterate(ptr noundef nonnull %i.gu, ptr noundef nonnull @tt_cvt_ready_iterator, ptr noundef null) #21 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.k, %bb.l, %._crit_edge
  %.0161 = phi ptr [ null, %bb.k ], [ %i.bm, %bb.l ], [ %i.bm, %bb.ab ], [ %i.bm, %._crit_edge ]
  %.not195 = icmp eq ptr %.0164, inttoptr (i64 -1 to ptr)
  br i1 %.not195, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @ft_mem_free(ptr noundef %i.f, ptr noundef %.0164) #21
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  call void @ft_mem_free(ptr noundef %i.f, ptr noundef %.0161) #21
  call void @ft_mem_free(ptr noundef %i.f, ptr noundef %i.bi) #21
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.h, %bb.f
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %1) #21
  %i.gw = load i32, ptr %i.a, align 4, !tbaa !152
  br label %bb.ah

bb.ah:                                            ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.ag
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.gw, %bb.ag ], [ 0, %bb.d ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.0
}

declare hidden i64 @FT_Stream_Pos(ptr noundef) local_unnamed_addr #4

declare hidden i32 @FT_Stream_ReadFields(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare hidden i32 @FT_Stream_EnterFrame(ptr noundef, i64 noundef) local_unnamed_addr #4

declare hidden void @FT_Stream_ExitFrame(ptr noundef) local_unnamed_addr #4

declare hidden i32 @FT_Stream_Seek(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @FT_MulDiv(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare hidden zeroext i16 @FT_Stream_GetUShort(ptr noundef) local_unnamed_addr #4

declare hidden i32 @FT_Stream_GetULong(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ft_var_readpackedpoints(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %1, align 4, !tbaa !152
  %i.d = tail call zeroext i8 @FT_Stream_GetByte(ptr noundef %0) #21 ; 3 uses
  %i.e = zext i8 %i.d to i32                      ; 2 uses
  %i.f = icmp eq i8 %i.d, 0
  br i1 %i.f, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp sgt i8 %i.d, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = shl nuw nsw i32 %i.e, 8
  %i.h = and i32 %i.g, 32512
  %i.i = tail call zeroext i8 @FT_Stream_GetByte(ptr noundef nonnull %0) #21
  %i.j = zext i8 %i.i to i32
  %i.k = or disjoint i32 %i.h, %i.j
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.067 = phi i32 [ %i.k, %bb.c ], [ %i.e, %bb.b ] ; 5 uses
  %i.l = zext nneg i32 %.067 to i64
  %i.m = call ptr @ft_mem_qrealloc(ptr noundef %i.c, i64 noundef 2, i64 noundef 0, i64 noundef %i.l, ptr noundef null, ptr noundef nonnull %i.a) #21 ; 10 uses
  %i.n = load i32, ptr %i.a, align 4, !tbaa !152
  %.not72 = icmp eq i32 %i.n, 0
  br i1 %.not72, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !345  ; 2 uses
  %.not98 = icmp eq i32 %.067, 0
  br i1 %.not98, label %._crit_edge, label %.lr.ph96

.lr.ph96:                                         ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !384  ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64                 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph96, %.loopexit
  %.095 = phi ptr [ %i.p, %.lr.ph96 ], [ %.3, %.loopexit ] ; 5 uses
  %.05694 = phi i16 [ 0, %.lr.ph96 ], [ %.359, %.loopexit ] ; 6 uses
  %.06293 = phi i32 [ 0, %.lr.ph96 ], [ %.365, %.loopexit ] ; 10 uses
  %.not73 = icmp ult ptr %.095, %i.r
  br i1 %.not73, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.095, i64 1 ; 8 uses
  %i.u = load i8, ptr %.095, align 1, !tbaa !186  ; 2 uses
  %i.v = and i8 %i.u, 127
  %i.w = zext nneg i8 %i.v to i32                 ; 2 uses
  %i.x = add nuw nsw i32 %i.w, 1
  %i.y = sub nuw nsw i32 %.067, %.06293           ; 2 uses
  %.not74 = icmp ugt i32 %i.y, %i.w
  %spec.select = select i1 %.not74, i32 %i.x, i32 %i.y ; 10 uses
  %.not75 = icmp sgt i8 %i.u, -1
  br i1 %.not75, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = shl nuw nsw i32 %spec.select, 1
  %i.aa = ptrtoint ptr %i.t to i64
  %i.ab = sub i64 %i.s, %i.aa
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = icmp ugt i32 %i.z, %i.ac
  br i1 %i.ad, label %bb.j, label %.preheader76

.preheader76:                                     ; preds = %bb.h
  %.not99 = icmp eq i32 %spec.select, 0
  br i1 %.not99, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader76
  %i.ae = add nuw nsw i32 %spec.select, %.06293   ; 3 uses
  %xtraiter = and i32 %spec.select, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %.095, i64 3 ; 2 uses
  %i.ag = load i8, ptr %i.t, align 1, !tbaa !186
  %i.ah = zext i8 %i.ag to i16
  %i.ai = shl nuw i16 %i.ah, 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.095, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !186
  %i.al = zext i8 %i.ak to i16
  %i.am = or disjoint i16 %i.ai, %i.al
  %i.an = add i16 %i.am, %.05694                  ; 3 uses
  %i.ao = add i32 %.06293, 1
  %i.ap = zext i32 %.06293 to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.ap
  store i16 %i.an, ptr %i.aq, align 2, !tbaa !128
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
end_hunk_2
