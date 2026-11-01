Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sdf?download=true
inline.NumInlined: 97
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@sdf_cubic_to:bb.a
  %i.c = icmp ne ptr %0, null
  %or.cond = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond3 = and i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %3, align 8, !tbaa !82     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !92   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !24
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %sdf_edge_new.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call ptr @ft_mem_qalloc(ptr noundef nonnull %i.e, i64 noundef 80, ptr noundef nonnull %i.a) #12 ; 8 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !24   ; 2 uses
  %.not8.i = icmp eq i32 %i.i, 0
  br i1 %.not8.i, label %bb.d, label %sdf_edge_new.exit.thread

sdf_edge_new.exit.thread:                         ; preds = %bb.c, %bb.b
  %.ph = phi i32 [ 6, %bb.b ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i32 3, ptr %i.j, align 8, !tbaa !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !91
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !91
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !91
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !91
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !97
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store ptr %i.o, ptr %i.p, align 8, !tbaa !100
  store ptr %i.h, ptr %i.n, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !91
  br label %bb.e

bb.e:                                             ; preds = %sdf_edge_new.exit.thread, %bb.a, %bb.d
  %.0 = phi i32 [ %.ph, %sdf_edge_new.exit.thread ], [ 0, %bb.d ], [ 6, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @split_sdf_conic(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, ptr noundef nonnull %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %4 = alloca [5 x %struct.FT_Vector_], align 16  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !91
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !91
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !91
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.j = load <2 x i64>, ptr %i.c, align 16, !tbaa !77 ; 2 uses
  %i.k = load <2 x i64>, ptr %4, align 16, !tbaa !77
  %i.l = add nsw <2 x i64> %i.j, %i.k
  %i.m = trunc <2 x i64> %i.l to <2 x i32>        ; 2 uses
  %i.n = load <2 x i64>, ptr %i.e, align 16, !tbaa !77 ; 3 uses
  %i.o = extractelement <2 x i64> %i.n, i64 0
  store i64 %i.o, ptr %i.g, align 16, !tbaa !55
  %i.p = extractelement <2 x i64> %i.n, i64 1
  store i64 %i.p, ptr %i.i, align 8, !tbaa !56
  %i.q = add nsw <2 x i64> %i.j, %i.n
  %i.r = trunc <2 x i64> %i.q to <2 x i32>        ; 2 uses
  %i.s = sdiv <2 x i32> %i.r, splat (i32 2)
  %i.t = sext <2 x i32> %i.s to <2 x i64>
  store <2 x i64> %i.t, ptr %i.h, align 16, !tbaa !77
  %i.u = add nsw <2 x i32> %i.m, %i.r
  %i.v = sdiv <2 x i32> %i.u, splat (i32 4)
  %i.w = sext <2 x i32> %i.v to <2 x i64>
  store <2 x i64> %i.w, ptr %i.e, align 16, !tbaa !77
  %i.x = sdiv <2 x i32> %i.m, splat (i32 2)
  %i.y = sext <2 x i32> %i.x to <2 x i64>
  store <2 x i64> %i.y, ptr %i.c, align 16, !tbaa !77
  %i.z = icmp ult i32 %2, 3
  br i1 %i.z, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = lshr i32 %2, 1                          ; 2 uses
  %i.ab = call fastcc i32 @split_sdf_conic(ptr noundef %0, ptr noundef %4, i32 noundef %i.aa, ptr noundef %3) ; 2 uses
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ac = call fastcc i32 @split_sdf_conic(ptr noundef %0, ptr noundef %i.e, i32 noundef %i.aa, ptr noundef %3)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !tbaa !24
  %i.ad = call ptr @ft_mem_qalloc(ptr noundef nonnull %0, i64 noundef 80, ptr noundef nonnull %i.b) #12 ; 6 uses
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !24  ; 2 uses
  %.not8.i = icmp eq i32 %i.ae, 0
  br i1 %.not8.i, label %bb.e, label %sdf_edge_new.exit

sdf_edge_new.exit:                                ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ad, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !24
  %i.af = call ptr @ft_mem_qalloc(ptr noundef nonnull %0, i64 noundef 80, ptr noundef nonnull %i.a) #12 ; 6 uses
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !24  ; 2 uses
  %.not8.i28 = icmp eq i32 %i.ag, 0
  br i1 %.not8.i28, label %bb.f, label %sdf_edge_new.exit29

sdf_edge_new.exit29:                              ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !91
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 16 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !91
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  store i32 1, ptr %i.aj, align 8, !tbaa !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 16 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !91
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 16 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !91
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  store i32 1, ptr %i.al, align 8, !tbaa !99
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  store ptr %i.af, ptr %i.am, align 8, !tbaa !100
  %i.an = load ptr, ptr %3, align 8, !tbaa !101
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !100
  store ptr %i.ad, ptr %3, align 8, !tbaa !101
  br label %bb.g

bb.g:                                             ; preds = %sdf_edge_new.exit29, %sdf_edge_new.exit, %bb.c, %bb.b, %bb.f
  %.0 = phi i32 [ %i.ae, %sdf_edge_new.exit ], [ %i.ag, %sdf_edge_new.exit29 ], [ 0, %bb.f ], [ %i.ab, %bb.b ], [ %i.ac, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @split_sdf_cubic(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 1, 33) %2, ptr noundef nonnull %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %4 = alloca [7 x %struct.FT_Vector_], align 16  ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !91
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !91
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !91
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !91
  %i.i = load i64, ptr %4, align 16, !tbaa !55    ; 4 uses
  %i.j = shl nsw i64 %i.i, 1
  %i.k = load i64, ptr %i.c, align 16, !tbaa !55  ; 5 uses
  %.neg = mul i64 %i.k, -3
  %i.l = load i64, ptr %i.g, align 16, !tbaa !55  ; 6 uses
  %i.m = add i64 %i.j, 15
  %i.n = add i64 %i.m, %.neg
  %i.o = add i64 %i.n, %i.l
  %i.p = icmp ult i64 %i.o, 31
  br i1 %i.p, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !56
  %.phi.trans.insert53 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre54 = load i64, ptr %.phi.trans.insert53, align 8, !tbaa !56
  %.phi.trans.insert55 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.pre56 = load i64, ptr %.phi.trans.insert55, align 8, !tbaa !56
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !56   ; 6 uses
  %i.s = shl nsw i64 %i.r, 1
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !56   ; 6 uses
  %.neg35 = mul i64 %i.u, -3
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !56   ; 7 uses
  %i.x = add i64 %i.s, 15
  %i.y = add i64 %i.x, %.neg35
  %i.z = add i64 %i.y, %i.w
  %i.aa = icmp ult i64 %i.z, 31
  br i1 %i.aa, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ab = load i64, ptr %i.e, align 16, !tbaa !55 ; 3 uses
  %.neg36 = mul i64 %i.ab, -3
  %i.ac = shl nsw i64 %i.l, 1
  %i.ad = add i64 %i.i, 15
  %i.ae = add i64 %i.ad, %i.ac
  %i.af = add i64 %i.ae, %.neg36
  %i.ag = icmp ult i64 %i.af, 31
  br i1 %i.ag, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !56 ; 3 uses
  %.neg37 = mul i64 %i.ai, -3
  %i.aj = shl nsw i64 %i.w, 1
  %i.ak = add i64 %i.r, 15
  %i.al = add i64 %i.ak, %i.aj
  %i.am = add i64 %i.al, %.neg37
  %i.an = icmp ult i64 %i.am, 31
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 %i.l, ptr %i.ao, align 16, !tbaa !55
  %i.ap = add nsw i64 %i.k, %i.i
  %i.aq = add nsw i64 %i.ab, %i.k
  %5 = add nsw i64 %i.ab, %i.l
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 %i.w, ptr %6, align 8, !tbaa !56
  %7 = add nsw i64 %i.u, %i.r
  %8 = add nsw i64 %i.ai, %i.u
  %9 = add nsw i64 %i.ai, %i.w
  %10 = trunc i64 %i.ap to i32
  %11 = trunc i64 %i.aq to i32
  %12 = trunc i64 %5 to i32
  %13 = shl i32 %11, 1
  %op.rdx62 = add i32 %13, %10
  %op.rdx63 = add i32 %op.rdx62, %12
  %i.ar = trunc i64 %7 to i32
  %14 = trunc i64 %8 to i32
  %i.as = trunc i64 %9 to i32
  %15 = shl i32 %14, 1
  %op.rdx = add i32 %15, %i.ar
  %op.rdx61 = add i32 %op.rdx, %i.as
  %16 = insertelement <2 x i32> poison, i32 %op.rdx63, i64 0
  %17 = insertelement <2 x i32> %16, i32 %op.rdx61, i64 1
  %18 = sdiv <2 x i32> %17, splat (i32 8)
  %19 = sext <2 x i32> %18 to <2 x i64>
  store <2 x i64> %19, ptr %i.g, align 16, !tbaa !77
  br label %bb.i

bb.f:                                             ; preds = %._crit_edge, %bb.d, %bb.c, %bb.b
  %i.at = phi i64 [ %.pre56, %._crit_edge ], [ %i.u, %bb.d ], [ %i.u, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %i.au = phi i64 [ %.pre54, %._crit_edge ], [ %i.r, %bb.d ], [ %i.r, %bb.c ], [ %i.r, %bb.b ]
  %i.av = phi i64 [ %.pre, %._crit_edge ], [ %i.w, %bb.d ], [ %i.w, %bb.c ], [ %i.w, %bb.b ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 %i.l, ptr %i.aw, align 16, !tbaa !55
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 %i.av, ptr %i.az, align 8, !tbaa !56
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.bc = add nsw i64 %i.k, %i.i
  %i.bd = add nsw i64 %i.at, %i.au
  %i.be = load i64, ptr %i.e, align 16, !tbaa !55 ; 2 uses
  %i.bf = add nsw i64 %i.be, %i.k
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  %i.bh = add nsw i64 %i.be, %i.l
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bj = sdiv i32 %i.bi, 2
  %i.bk = sext i32 %i.bj to i64
  store i64 %i.bk, ptr %i.ax, align 16, !tbaa !55
  %i.bl = add nsw i32 %i.bi, %i.bg                ; 2 uses
  %i.bm = load i64, ptr %i.ba, align 8, !tbaa !56 ; 2 uses
  %i.bn = add nsw i64 %i.bm, %i.at
  %i.bo = trunc i64 %i.bn to i32                  ; 2 uses
  %i.bp = add nsw i64 %i.bm, %i.av
  %i.bq = trunc i64 %i.bp to i32                  ; 2 uses
  %i.br = sdiv i32 %i.bq, 2
  %i.bs = sext i32 %i.br to i64
  store i64 %i.bs, ptr %i.bb, align 8, !tbaa !56
  %i.bt = add nsw i32 %i.bq, %i.bo                ; 2 uses
  %i.bu = insertelement <2 x i32> poison, i32 %i.bl, i64 0
  %i.bv = insertelement <2 x i32> %i.bu, i32 %i.bt, i64 1
  %i.bw = sdiv <2 x i32> %i.bv, splat (i32 4)
  %i.bx = sext <2 x i32> %i.bw to <2 x i64>
  store <2 x i64> %i.bx, ptr %i.ay, align 16, !tbaa !77
  %i.by = trunc i64 %i.bc to i32                  ; 2 uses
  %i.bz = add nsw i32 %i.bg, %i.by                ; 2 uses
  %i.ca = add nsw i32 %i.bz, %i.bl
  %i.cb = trunc i64 %i.bd to i32                  ; 2 uses
  %i.cc = insertelement <2 x i32> poison, i32 %i.by, i64 0
  %i.cd = insertelement <2 x i32> %i.cc, i32 %i.cb, i64 1
  %i.ce = sdiv <2 x i32> %i.cd, splat (i32 2)
  %i.cf = sext <2 x i32> %i.ce to <2 x i64>
  store <2 x i64> %i.cf, ptr %i.c, align 16, !tbaa !77
  %i.cg = add nsw i32 %i.bo, %i.cb                ; 2 uses
  %i.ch = insertelement <2 x i32> poison, i32 %i.bz, i64 0
  %i.ci = insertelement <2 x i32> %i.ch, i32 %i.cg, i64 1
  %i.cj = sdiv <2 x i32> %i.ci, splat (i32 4)
  %i.ck = sext <2 x i32> %i.cj to <2 x i64>
  store <2 x i64> %i.ck, ptr %i.e, align 16, !tbaa !77
  %i.cl = add nsw i32 %i.cg, %i.bt
  %i.cm = insertelement <2 x i32> poison, i32 %i.ca, i64 0
  %i.cn = insertelement <2 x i32> %i.cm, i32 %i.cl, i64 1
  %i.co = sdiv <2 x i32> %i.cn, splat (i32 8)
  %i.cp = sext <2 x i32> %i.co to <2 x i64>
  store <2 x i64> %i.cp, ptr %i.g, align 16, !tbaa !77
  %i.cq = icmp samesign ult i32 %2, 3
  br i1 %i.cq, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cr = lshr i32 %2, 1                          ; 2 uses
  %i.cs = call fastcc i32 @split_sdf_cubic(ptr noundef %0, ptr noundef %4, i32 noundef %i.cr, ptr noundef %3) ; 2 uses
  %.not = icmp eq i32 %i.cs, 0
  br i1 %.not, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ct = call fastcc i32 @split_sdf_cubic(ptr noundef %0, ptr noundef %i.g, i32 noundef %i.cr, ptr noundef %3)
  br label %bb.l

bb.i:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4, !tbaa !24
  %i.cu = call ptr @ft_mem_qalloc(ptr noundef nonnull %0, i64 noundef 80, ptr noundef nonnull %i.b) #12 ; 6 uses
  %i.cv = load i32, ptr %i.b, align 4, !tbaa !24  ; 2 uses
  %.not8.i = icmp eq i32 %i.cv, 0
  br i1 %.not8.i, label %bb.j, label %sdf_edge_new.exit

sdf_edge_new.exit:                                ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cu, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !24
  %i.cw = call ptr @ft_mem_qalloc(ptr noundef nonnull %0, i64 noundef 80, ptr noundef nonnull %i.a) #12 ; 6 uses
  %i.cx = load i32, ptr %i.a, align 4, !tbaa !24  ; 2 uses
  %.not8.i40 = icmp eq i32 %i.cx, 0
  br i1 %.not8.i40, label %bb.k, label %sdf_edge_new.exit41

sdf_edge_new.exit41:                              ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cy, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !91
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull align 16 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !91
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  store i32 1, ptr %i.da, align 8, !tbaa !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 16 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !91
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 16 dereferenceable(16) %i.dc, i64 16, i1 false), !tbaa.struct !91
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  store i32 1, ptr %i.dd, align 8, !tbaa !99
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 72
  store ptr %i.cw, ptr %i.de, align 8, !tbaa !100
  %i.df = load ptr, ptr %3, align 8, !tbaa !101
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !100
  store ptr %i.cu, ptr %3, align 8, !tbaa !101
  br label %bb.l

bb.l:                                             ; preds = %sdf_edge_new.exit41, %sdf_edge_new.exit, %bb.h, %bb.g, %bb.k
  %.0 = phi i32 [ %i.cv, %sdf_edge_new.exit ], [ %i.cx, %sdf_edge_new.exit41 ], [ 0, %bb.k ], [ %i.cs, %bb.g ], [ %i.ct, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.abs.v2i64(<2 x i64>, i1 immarg) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !87}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS16FT_Module_Class_", !9, i64 0}
!11 = !{!"p1 _ZTS14FT_LibraryRec_", !9, i64 0}
!12 = !{!"p1 _ZTS13FT_MemoryRec_", !9, i64 0}
!13 = !{!"FT_ModuleRec_", !10, i64 0, !11, i64 8, !12, i64 16}
!14 = !{!"p1 _ZTS18FT_Renderer_Class_", !9, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"FT_Glyph_Class_", !15, i64 0, !6, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56}
!17 = !{!"p1 _ZTS13FT_RasterRec_", !9, i64 0}
!18 = !{!"FT_RendererRec_", !13, i64 0, !14, i64 24, !6, i64 32, !16, i64 40, !17, i64 104, !9, i64 112, !9, i64 120}
!19 = !{!"SDF_Renderer_Module_", !18, i64 0, !6, i64 128, !5, i64 132, !5, i64 133, !5, i64 134}
end_hunk_0
