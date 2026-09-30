Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_stb?download=true
inline.NumInlined: 380
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 86
begin_hunk_0_@stbi__jpeg_load:bb.a
  %i.bgl = select i1 %.inv306.i, i32 1, i32 3
  store i32 %i.bgl, ptr %3, align 4
  br label %bb.iy

bb.iy:                                            ; preds = %stbi__cleanup_jpeg.exit368.i, %stbi__cleanup_jpeg.exit359.i, %bb.ho, %.thread375.i, %stbi__cleanup_jpeg.exit339.i, %stbi__cleanup_jpeg.exit330.i
  %.2.i = phi ptr [ null, %stbi__cleanup_jpeg.exit330.i ], [ null, %stbi__cleanup_jpeg.exit339.i ], [ %.0274.i, %stbi__cleanup_jpeg.exit368.i ], [ null, %bb.ho ], [ null, %stbi__cleanup_jpeg.exit359.i ], [ null, %.thread375.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %load_jpeg_image.exit

load_jpeg_image.exit:                             ; preds = %bb.ga, %bb.fo, %.loopexit401.i, %bb.ft, %bb.iy
  %.3.i = phi ptr [ %.2.i, %bb.iy ], [ null, %bb.fo ], [ null, %.loopexit401.i ], [ null, %bb.ft ], [ null, %bb.ga ]
  call void @SDL_free_REAL(ptr noundef nonnull %i.d) #13
  br label %bb.iz

bb.iz:                                            ; preds = %load_jpeg_image.exit, %bb.b
  %.0 = phi ptr [ %.3.i, %load_jpeg_image.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @stbi__idct_block(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  br label %bb.b

.preheader:                                       ; preds = %bb.i
  %i.b = sext i32 %1 to i64
  br label %bb.j

bb.b:                                             ; preds = %bb.a, %bb.i
  %.0219 = phi i32 [ 0, %bb.a ], [ %i.do, %bb.i ]
  %.0199218 = phi ptr [ %i.a, %bb.a ], [ %i.dq, %bb.i ] ; 17 uses
  %.0202217 = phi ptr [ %2, %bb.a ], [ %i.dp, %bb.i ] ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0202217, i64 16
  %i.d = load i16, ptr %i.c, align 2              ; 2 uses
  %i.e = icmp eq i16 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %.0202217, i64 32
  %i.g = load i16, ptr %i.f, align 2              ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.0202217, i64 48
  %i.j = load i16, ptr %i.i, align 2
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0202217, i64 64
  %i.m = load i16, ptr %i.l, align 2
  %i.n = icmp eq i16 %i.m, 0
  br i1 %i.n, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.0202217, i64 80
  %i.p = load i16, ptr %i.o, align 2
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.0202217, i64 96
  %i.s = load i16, ptr %i.r, align 2
  %i.t = icmp eq i16 %i.s, 0
  br i1 %i.t, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.0202217, i64 112
  %i.v = load i16, ptr %i.u, align 2
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.x = load i16, ptr %.0202217, align 2
  %i.y = sext i16 %i.x to i32
  %i.z = shl nsw i32 %i.y, 2                      ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0199218, i64 224
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.0199218, i64 192
  store i32 %i.z, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.0199218, i64 160
  store i32 %i.z, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.0199218, i64 128
  store i32 %i.z, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.0199218, i64 96
  store i32 %i.z, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.0199218, i64 64
  store i32 %i.z, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.0199218, i64 32
  store i32 %i.z, ptr %i.ag, align 4
  store i32 %i.z, ptr %.0199218, align 4
  br label %bb.i

._crit_edge:                                      ; preds = %bb.b, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.ah = phi i16 [ %i.g, %bb.b ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  %i.ai = sext i16 %i.ah to i32                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0202217, i64 96
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = sext i16 %i.ak to i32                   ; 2 uses
  %i.am = add nsw i32 %i.al, %i.ai
  %i.an = mul nsw i32 %i.am, 2217                 ; 2 uses
  %i.ao = mul nsw i32 %i.al, -7567
  %i.ap = add nsw i32 %i.an, %i.ao                ; 2 uses
  %i.aq = mul nsw i32 %i.ai, 3135
  %i.ar = add nsw i32 %i.an, %i.aq                ; 2 uses
  %i.as = load i16, ptr %.0202217, align 2
  %i.at = sext i16 %i.as to i32                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0202217, i64 64
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = sext i16 %i.av to i32                   ; 2 uses
  %i.ax = add nsw i32 %i.aw, %i.at
  %i.ay = shl nsw i32 %i.ax, 12                   ; 2 uses
  %i.az = sub nsw i32 %i.at, %i.aw
  %i.ba = shl nsw i32 %i.az, 12                   ; 2 uses
  %i.bb = sub nsw i32 %i.ay, %i.ar
  %i.bc = sub nsw i32 %i.ba, %i.ap
  %i.bd = getelementptr inbounds nuw i8, ptr %.0202217, i64 112
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = sext i16 %i.be to i32                   ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0202217, i64 80
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = sext i16 %i.bh to i32                   ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0202217, i64 48
  %i.bk = load i16, ptr %i.bj, align 2
  %i.bl = sext i16 %i.bk to i32                   ; 3 uses
  %i.bm = sext i16 %i.d to i32                    ; 3 uses
  %i.bn = add nsw i32 %i.bl, %i.bf                ; 2 uses
  %i.bo = add nsw i32 %i.bi, %i.bm                ; 2 uses
  %i.bp = add nsw i32 %i.bf, %i.bm
  %i.bq = add nsw i32 %i.bl, %i.bi
  %i.br = add nsw i32 %i.bn, %i.bo
  %i.bs = mul nsw i32 %i.br, 4816                 ; 2 uses
  %i.bt = mul nsw i32 %i.bf, 1223
  %i.bu = mul nsw i32 %i.bi, 8410
  %i.bv = mul nsw i32 %i.bl, 12586
  %i.bw = mul nsw i32 %i.bm, 6149
  %i.bx = mul nsw i32 %i.bp, -3685
  %i.by = add nsw i32 %i.bs, %i.bx                ; 2 uses
  %i.bz = mul nsw i32 %i.bq, -10497
  %i.ca = add nsw i32 %i.bs, %i.bz                ; 2 uses
  %i.cb = mul nsw i32 %i.bn, -8034                ; 2 uses
  %i.cc = mul nsw i32 %i.bo, -1597                ; 2 uses
  %i.cd = add nsw i32 %i.cc, %i.bw
  %i.ce = add nsw i32 %i.cd, %i.by                ; 2 uses
  %i.cf = add nsw i32 %i.cb, %i.bv
  %i.cg = add i32 %i.cf, %i.ca                    ; 2 uses
  %i.ch = add nsw i32 %i.cc, %i.bu
  %i.ci = add nsw i32 %i.ch, %i.ca                ; 2 uses
  %i.cj = add nsw i32 %i.cb, %i.bt
  %i.ck = add nsw i32 %i.cj, %i.by                ; 2 uses
  %i.cl = add nsw i32 %i.ar, 512
  %i.cm = add nsw i32 %i.cl, %i.ay                ; 2 uses
  %i.cn = add nsw i32 %i.ap, 512
  %i.co = add nsw i32 %i.cn, %i.ba                ; 2 uses
  %i.cp = add nsw i32 %i.bc, 512                  ; 2 uses
  %i.cq = add nsw i32 %i.bb, 512                  ; 2 uses
  %i.cr = add nsw i32 %i.ce, %i.cm
  %i.cs = ashr i32 %i.cr, 10
  store i32 %i.cs, ptr %.0199218, align 4
  %i.ct = sub nsw i32 %i.cm, %i.ce
  %i.cu = ashr i32 %i.ct, 10
  %i.cv = getelementptr inbounds nuw i8, ptr %.0199218, i64 224
  store i32 %i.cu, ptr %i.cv, align 4
  %i.cw = add nsw i32 %i.cg, %i.co
  %i.cx = ashr i32 %i.cw, 10
  %i.cy = getelementptr inbounds nuw i8, ptr %.0199218, i64 32
  store i32 %i.cx, ptr %i.cy, align 4
  %i.cz = sub nsw i32 %i.co, %i.cg
  %i.da = ashr i32 %i.cz, 10
  %i.db = getelementptr inbounds nuw i8, ptr %.0199218, i64 192
  store i32 %i.da, ptr %i.db, align 4
  %i.dc = add nsw i32 %i.ci, %i.cp
  %i.dd = ashr i32 %i.dc, 10
  %i.de = getelementptr inbounds nuw i8, ptr %.0199218, i64 64
  store i32 %i.dd, ptr %i.de, align 4
  %i.df = sub nsw i32 %i.cp, %i.ci
  %i.dg = ashr i32 %i.df, 10
  %i.dh = getelementptr inbounds nuw i8, ptr %.0199218, i64 160
  store i32 %i.dg, ptr %i.dh, align 4
  %i.di = add nsw i32 %i.ck, %i.cq
  %i.dj = ashr i32 %i.di, 10
  %i.dk = getelementptr inbounds nuw i8, ptr %.0199218, i64 96
  store i32 %i.dj, ptr %i.dk, align 4
  %i.dl = sub nsw i32 %i.cq, %i.ck
  %i.dm = ashr i32 %i.dl, 10
  %i.dn = getelementptr inbounds nuw i8, ptr %.0199218, i64 128
  store i32 %i.dm, ptr %i.dn, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.do = add nuw nsw i32 %.0219, 1               ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0202217, i64 2
  %i.dq = getelementptr inbounds nuw i8, ptr %.0199218, i64 4
  %exitcond.not = icmp eq i32 %i.do, 8
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !94

bb.j:                                             ; preds = %.preheader, %bb.j
  %.1222 = phi i32 [ 0, %.preheader ], [ %i.dx, %bb.j ]
  %.1200221 = phi ptr [ %i.a, %.preheader ], [ %i.dy, %bb.j ] ; 9 uses
  %.0201220 = phi ptr [ %0, %.preheader ], [ %i.dz, %bb.j ] ; 9 uses
  %3 = getelementptr inbounds nuw i8, ptr %.1200221, i64 8
  %4 = load i32, ptr %3, align 4                  ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.1200221, i64 24
  %6 = load i32, ptr %5, align 4                  ; 2 uses
  %7 = add nsw i32 %6, %4
  %8 = mul nsw i32 %7, 2217                       ; 2 uses
  %9 = mul nsw i32 %6, -7567
  %10 = add nsw i32 %8, %9                        ; 2 uses
  %11 = mul nsw i32 %4, 3135
  %12 = add nsw i32 %8, %11                       ; 2 uses
  %13 = load i32, ptr %.1200221, align 4          ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %.1200221, i64 16
  %15 = load i32, ptr %14, align 4                ; 2 uses
  %16 = add nsw i32 %15, %13
  %17 = shl nsw i32 %16, 12                       ; 2 uses
  %18 = sub nsw i32 %13, %15
  %19 = shl nsw i32 %18, 12                       ; 2 uses
  %20 = sub nsw i32 %17, %12
  %21 = sub nsw i32 %19, %10
  %i.dr = getelementptr inbounds nuw i8, ptr %.1200221, i64 28
  %22 = load i32, ptr %i.dr, align 4              ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.1200221, i64 20
  %23 = load i32, ptr %i.ds, align 4              ; 3 uses
  %24 = getelementptr inbounds nuw i8, ptr %.1200221, i64 12
  %i.dt = load i32, ptr %24, align 4              ; 3 uses
  %25 = getelementptr inbounds nuw i8, ptr %.1200221, i64 4
  %i.du = load i32, ptr %25, align 4              ; 3 uses
  %26 = add nsw i32 %i.dt, %22                    ; 2 uses
  %27 = add nsw i32 %i.du, %23                    ; 2 uses
  %28 = add nsw i32 %i.du, %22
  %29 = add nsw i32 %i.dt, %23
  %30 = add nsw i32 %27, %26
  %31 = mul nsw i32 %30, 4816                     ; 2 uses
  %32 = mul nsw i32 %22, 1223
  %33 = mul nsw i32 %23, 8410
  %34 = mul nsw i32 %i.dt, 12586
  %35 = mul nsw i32 %i.du, 6149
  %36 = mul nsw i32 %28, -3685
  %37 = add nsw i32 %31, %36                      ; 2 uses
  %38 = mul nsw i32 %29, -10497
  %i.dv = add nsw i32 %31, %38                    ; 2 uses
  %39 = mul nsw i32 %26, -8034                    ; 2 uses
  %i.dw = mul nsw i32 %27, -1597                  ; 2 uses
  %40 = add i32 %i.dw, %35
  %41 = add i32 %40, %37                          ; 2 uses
  %42 = add i32 %39, %34
  %43 = add i32 %42, %i.dv                        ; 2 uses
  %44 = add i32 %i.dw, %33
  %45 = add i32 %44, %i.dv                        ; 2 uses
  %46 = add i32 %39, %32
  %47 = add i32 %46, %37                          ; 2 uses
  %48 = add i32 %12, 16842752
  %49 = add i32 %48, %17                          ; 2 uses
  %50 = add i32 %10, 16842752
  %51 = add i32 %50, %19                          ; 2 uses
  %52 = add nsw i32 %21, 16842752                 ; 2 uses
  %53 = add nsw i32 %20, 16842752                 ; 2 uses
  %54 = add nsw i32 %41, %49
  %55 = ashr i32 %54, 17
  %56 = tail call i32 @llvm.smax.i32(i32 range(i32 -16384, 16384) %55, i32 0)
  %.06.i = tail call i32 @llvm.umin.i32(i32 %56, i32 255)
  %.0.i = trunc nuw i32 %.06.i to i8
  store i8 %.0.i, ptr %.0201220, align 1
  %57 = sub nsw i32 %49, %41
  %58 = ashr i32 %57, 17
  %59 = tail call i32 @llvm.smax.i32(i32 range(i32 -16384, 16384) %58, i32 0)
  %.06.i203 = tail call i32 @llvm.umin.i32(i32 %59, i32 255)
  %.0.i204 = trunc nuw i32 %.06.i203 to i8
  %60 = getelementptr inbounds nuw i8, ptr %.0201220, i64 7
  store i8 %.0.i204, ptr %60, align 1
  %61 = add nsw i32 %43, %51
  %62 = ashr i32 %61, 17
  %63 = tail call i32 @llvm.smax.i32(i32 range(i32 -16384, 16384) %62, i32 0)
  %.06.i205 = tail call i32 @llvm.umin.i32(i32 %63, i32 255)
  %.0.i206 = trunc nuw i32 %.06.i205 to i8
  %64 = getelementptr inbounds nuw i8, ptr %.0201220, i64 1
  store i8 %.0.i206, ptr %64, align 1
  %65 = sub nsw i32 %51, %43
  %66 = ashr i32 %65, 17
  %67 = tail call i32 @llvm.smax.i32(i32 range(i32 -16384, 16384) %66, i32 0)
  %.06.i207 = tail call i32 @llvm.umin.i32(i32 %67, i32 255)
  %.0.i208 = trunc nuw i32 %.06.i207 to i8
  %68 = getelementptr inbounds nuw i8, ptr %.0201220, i64 6
  store i8 %.0.i208, ptr %68, align 1
  %69 = add nsw i32 %45, %52
  %70 = ashr i32 %69, 17
  %71 = tail call i32 @llvm.smax.i32(i32 range(i32 -16384, 16384) %70, i32 0)
  %.06.i209 = tail call i32 @llvm.umin.i32(i32 %71, i32 255)
  %.0.i210 = trunc nuw i32 %.06.i209 to i8
  %72 = getelementptr inbounds nuw i8, ptr %.0201220, i64 2
  store i8 %.0.i210, ptr %72, align 1
  %73 = sub nsw i32 %52, %45
  %74 = ashr i32 %73, 17
  %75 = tail call i32 @llvm.smax.i32(i32 range(i32 -16384, 16384) %74, i32 0)
  %.06.i211 = tail call i32 @llvm.umin.i32(i32 %75, i32 255)
  %.0.i212 = trunc nuw i32 %.06.i211 to i8
  %76 = getelementptr inbounds nuw i8, ptr %.0201220, i64 5
  store i8 %.0.i212, ptr %76, align 1
  %77 = add nsw i32 %47, %53
  %78 = ashr i32 %77, 17
  %79 = tail call i32 @llvm.smax.i32(i32 range(i32 -16384, 16384) %78, i32 0)
  %.06.i213 = tail call i32 @llvm.umin.i32(i32 %79, i32 255)
  %.0.i214 = trunc nuw i32 %.06.i213 to i8
  %80 = getelementptr inbounds nuw i8, ptr %.0201220, i64 3
  store i8 %.0.i214, ptr %80, align 1
  %81 = sub nsw i32 %53, %47
  %82 = ashr i32 %81, 17
  %83 = tail call i32 @llvm.smax.i32(i32 range(i32 -16384, 16384) %82, i32 0)
  %.06.i215 = tail call i32 @llvm.umin.i32(i32 %83, i32 255)
  %.0.i216 = trunc nuw i32 %.06.i215 to i8
  %84 = getelementptr inbounds nuw i8, ptr %.0201220, i64 4
  store i8 %.0.i216, ptr %84, align 1
  %i.dx = add nuw nsw i32 %.1222, 1               ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.1200221, i64 32
  %i.dz = getelementptr inbounds i8, ptr %.0201220, i64 %i.b
  %exitcond223.not = icmp eq i32 %i.dx, 8
  br i1 %exitcond223.not, label %bb.k, label %bb.j, !llvm.loop !95

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @stbi__YCbCr_to_RGB_row(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) #4 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = sext i32 %5 to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %.03644 = phi ptr [ %0, %.lr.ph ], [ %i.an, %bb.b ] ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 20
  %i.g = or disjoint i32 %i.f, 524288             ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = add nsw i32 %i.j, -128                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -128                   ; 2 uses
  %i.p = mul nsw i32 %i.k, 1470208
  %i.q = add nsw i32 %i.p, %i.g
  %i.r = mul nsw i32 %i.k, -748800
  %i.s = add nsw i32 %i.r, %i.g
  %i.t = mul nsw i32 %i.o, -360960
  %i.u = and i32 %i.t, -65536
  %i.v = add i32 %i.s, %i.u
  %i.w = mul nsw i32 %i.o, 1858048
  %i.x = add nsw i32 %i.w, %i.g
  %i.y = ashr i32 %i.q, 20
  %i.z = ashr i32 %i.v, 20
  %i.aa = ashr i32 %i.x, 20
  %i.ab = tail call i32 @llvm.smax.i32(i32 %i.y, i32 0)
  %i.ac = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 255)
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.z, i32 0)
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 255)
  %i.af = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 0)
  %i.ag = tail call i32 @llvm.umin.i32(i32 %i.af, i32 255)
  %i.ah = trunc nuw i32 %i.ac to i8
  store i8 %i.ah, ptr %.03644, align 1
  %i.ai = trunc nuw i32 %i.ae to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %.03644, i64 1
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = trunc nuw i32 %i.ag to i8
  %i.al = getelementptr inbounds nuw i8, ptr %.03644, i64 2
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.03644, i64 3
  store i8 -1, ptr %i.am, align 1
  %i.an = getelementptr inbounds i8, ptr %.03644, i64 %i.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !96

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef ptr @stbi__resample_row_hv_2(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 1)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 %4) #4 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  %i.b = load i8, ptr %1, align 1                 ; 2 uses
  %i.c = load i8, ptr %2, align 1                 ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext i8 %i.b to i16
  %i.e = mul nuw nsw i16 %i.d, 3
  %i.f = zext i8 %i.c to i16
  %i.g = add nuw nsw i16 %i.f, 2
  %i.h = add nuw nsw i16 %i.g, %i.e
  %i.i = lshr i16 %i.h, 2
  %i.j = trunc nuw i16 %i.i to i8                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.j, ptr %i.k, align 1
  store i8 %i.j, ptr %0, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = zext i8 %i.b to i32
  %i.m = mul nuw nsw i32 %i.l, 3
  %i.n = zext i8 %i.c to i32
  %i.o = add nuw nsw i32 %i.m, %i.n               ; 4 uses
  %i.p = add nuw nsw i32 %i.o, 2
  %i.q = lshr i32 %i.p, 2
  %i.r = trunc nuw i32 %i.q to i8                 ; 2 uses
  store i8 %i.r, ptr %0, align 1
  %i.s = icmp sgt i32 %3, 1
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %3 to i64      ; 5 uses
  %i.t = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %min.iters.check = icmp ult i32 %3, 9
  br i1 %min.iters.check, label %.lr.ph.preheader52, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.u = getelementptr i8, ptr %0, i64 1          ; 2 uses
  %i.v = shl nuw nsw i64 %wide.trip.count, 1
  %i.w = getelementptr i8, ptr %0, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -1       ; 2 uses
  %i.y = getelementptr i8, ptr %1, i64 1
  %i.z = getelementptr i8, ptr %1, i64 %wide.trip.count
  %i.aa = getelementptr i8, ptr %2, i64 1
  %i.ab = getelementptr i8, ptr %2, i64 %wide.trip.count
  %bound0 = icmp ult ptr %i.u, %i.z
  %bound1 = icmp ult ptr %i.y, %i.x
  %found.conflict = and i1 %bound0, %bound1
  %bound048 = icmp ult ptr %i.u, %i.ab
  %bound149 = icmp ult ptr %i.aa, %i.x
  %found.conflict50 = and i1 %bound048, %bound149
  %conflict.rdx = or i1 %found.conflict, %found.conflict50
  br i1 %conflict.rdx, label %.lr.ph.preheader52, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, -8                       ; 3 uses
  %i.ac = or disjoint i64 %n.vec, 1
  %vector.recur.init = insertelement <8 x i32> poison, i32 %i.o, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <8 x i32> [ %vector.recur.init, %vector.ph ], [ %i.aj, %vector.body ]
  %i.ad = or disjoint i64 %index, 1               ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad
  %wide.load = load <8 x i8>, ptr %i.ae, align 1, !alias.scope !103
  %i.af = zext <8 x i8> %wide.load to <8 x i32>
  %i.ag = mul nuw nsw <8 x i32> %i.af, splat (i32 3)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %i.ad
  %wide.load51 = load <8 x i8>, ptr %i.ah, align 1, !alias.scope !104
  %i.ai = zext <8 x i8> %wide.load51 to <8 x i32>
  %i.aj = add nuw nsw <8 x i32> %i.ag, %i.ai      ; 5 uses
  %i.ak = shufflevector <8 x i32> %vector.recur, <8 x i32> %i.aj, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.al = mul nuw nsw <8 x i32> %i.ak, splat (i32 3)
  %i.am = add nuw nsw <8 x i32> %i.al, splat (i32 8)
  %i.an = add nuw nsw <8 x i32> %i.am, %i.aj
  %i.ao = shl nuw nsw i64 %i.ad, 1
  %i.ap = getelementptr i8, ptr %0, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -1
  %i.ar = mul nuw nsw <8 x i32> %i.aj, splat (i32 3)
  %i.as = add nuw nsw <8 x i32> %i.ak, splat (i32 8)
  %i.at = add nuw nsw <8 x i32> %i.as, %i.ar
  %i.au = shufflevector <8 x i32> %i.an, <8 x i32> %i.at, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.av = lshr <16 x i32> %i.au, splat (i32 4)
  %interleaved.vec = trunc nuw <16 x i32> %i.av to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %i.aq, align 1, !alias.scope !105, !noalias !106
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x i32> %i.aj, i64 7 ; 2 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader52

.lr.ph.preheader52:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.ac, %middle.block ]
  %.034.ph = phi i32 [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader52, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader52 ] ; 4 uses
  %.034 = phi i32 [ %i.be, %.lr.ph ], [ %.034.ph, %.lr.ph.preheader52 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i32
  %i.ba = mul nuw nsw i32 %i.az, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nuw nsw i32 %i.ba, %i.bd            ; 4 uses
  %i.bf = mul nuw nsw i32 %.034, 3
  %i.bg = add nuw nsw i32 %i.bf, 8
  %i.bh = add nuw nsw i32 %i.bg, %i.be
  %i.bi = lshr i32 %i.bh, 4
  %i.bj = trunc nuw i32 %i.bi to i8
  %i.bk = shl nuw nsw i64 %indvars.iv, 1
  %i.bl = getelementptr i8, ptr %0, i64 %i.bk     ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 -1
  store i8 %i.bj, ptr %i.bm, align 1
  %i.bn = mul nuw nsw i32 %i.be, 3
  %i.bo = add nuw nsw i32 %.034, 8
end_hunk_0
begin_hunk_1_@tdefl_optimize_huffman_table:bb.a
  store i32 0, ptr %i.px, align 4
  %i.py = add nsw i64 %wide.trip.count145.pre-phi, -2 ; 2 uses
  %i.pz = add nsw i64 %wide.trip.count145.pre-phi, -3
  %xtraiter233 = and i64 %i.py, 3                 ; 3 uses
  %i.qa = icmp ult i64 %i.pz, 3
  br i1 %i.qa, label %.epil.preheader232, label %.loopexit.new

.loopexit.new:                                    ; preds = %.loopexit
  %unroll_iter237 = and i64 %i.py, -4
  br label %bb.ab

.preheader.unr-lcssa:                             ; preds = %bb.ab
  %lcmp.mod235.not = icmp eq i64 %xtraiter233, 0
  br i1 %lcmp.mod235.not, label %.preheader, label %.epil.preheader232

.epil.preheader232:                               ; preds = %.preheader.unr-lcssa, %.loopexit
  %indvars.iv142.epil.init = phi i64 [ 2, %.loopexit ], [ %indvars.iv.next143.3, %.preheader.unr-lcssa ]
  %.2112.epil.init = phi i32 [ 0, %.loopexit ], [ %i.ri, %.preheader.unr-lcssa ]
  %lcmp.mod236 = icmp ne i64 %xtraiter233, 0
  tail call void @llvm.assume(i1 %lcmp.mod236)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader232
  %indvars.iv142.epil = phi i64 [ %indvars.iv142.epil.init, %.epil.preheader232 ], [ %indvars.iv.next143.epil, %bb.aa ] ; 3 uses
  %.2112.epil = phi i32 [ %.2112.epil.init, %.epil.preheader232 ], [ %i.qf, %bb.aa ]
  %epil.iter234 = phi i64 [ 0, %.epil.preheader232 ], [ %epil.iter234.next, %bb.aa ]
  %i.qb = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv142.epil
  %i.qc = getelementptr i8, ptr %i.qb, i64 -4
  %i.qd = load i32, ptr %i.qc, align 4
  %i.qe = add nsw i32 %i.qd, %.2112.epil
  %i.qf = shl i32 %i.qe, 1                        ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv142.epil
  store i32 %i.qf, ptr %i.qg, align 4
  %indvars.iv.next143.epil = add nuw nsw i64 %indvars.iv142.epil, 1
  %epil.iter234.next = add i64 %epil.iter234, 1   ; 2 uses
  %epil.iter234.cmp.not = icmp eq i64 %epil.iter234.next, %xtraiter233
  br i1 %epil.iter234.cmp.not, label %.preheader, label %bb.aa, !llvm.loop !347

.preheader:                                       ; preds = %bb.aa, %.preheader.unr-lcssa
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 36682
  %i.qi = zext nneg i32 %1 to i64                 ; 2 uses
  %i.qj = getelementptr inbounds nuw [288 x i8], ptr %i.qh, i64 %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 34954
  %i.ql = getelementptr inbounds nuw [576 x i8], ptr %i.qk, i64 %i.qi
  %wide.trip.count150 = zext nneg i32 %2 to i64
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ab, %.loopexit.new
  %indvars.iv142 = phi i64 [ 2, %.loopexit.new ], [ %indvars.iv.next143.3, %bb.ab ] ; 6 uses
  %.2112 = phi i32 [ 0, %.loopexit.new ], [ %i.ri, %bb.ab ]
  %niter238 = phi i64 [ 0, %.loopexit.new ], [ %niter238.next.3, %bb.ab ]
  %i.qm = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv142
  %i.qn = getelementptr i8, ptr %i.qm, i64 -4
  %i.qo = load i32, ptr %i.qn, align 4
  %i.qp = add nsw i32 %i.qo, %.2112
  %i.qq = shl i32 %i.qp, 1                        ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv142
  store i32 %i.qq, ptr %i.qr, align 8
  %indvars.iv.next143 = or disjoint i64 %indvars.iv142, 1 ; 2 uses
  %i.qs = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next143
  %i.qt = getelementptr i8, ptr %i.qs, i64 -4
  %i.qu = load i32, ptr %i.qt, align 8
  %i.qv = add nsw i32 %i.qu, %i.qq
  %i.qw = shl i32 %i.qv, 1                        ; 2 uses
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next143
  store i32 %i.qw, ptr %i.qx, align 4
  %indvars.iv.next143.1 = add nuw nsw i64 %indvars.iv142, 2 ; 2 uses
  %i.qy = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next143.1
  %i.qz = getelementptr i8, ptr %i.qy, i64 -4
  %i.ra = load i32, ptr %i.qz, align 4
  %i.rb = add nsw i32 %i.ra, %i.qw
  %i.rc = shl i32 %i.rb, 1                        ; 2 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next143.1
  store i32 %i.rc, ptr %i.rd, align 8
  %indvars.iv.next143.2 = add nuw nsw i64 %indvars.iv142, 3 ; 2 uses
  %i.re = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next143.2
  %i.rf = getelementptr i8, ptr %i.re, i64 -4
  %i.rg = load i32, ptr %i.rf, align 8
  %i.rh = add nsw i32 %i.rg, %i.rc
  %i.ri = shl i32 %i.rh, 1                        ; 3 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next143.2
  store i32 %i.ri, ptr %i.rj, align 4
  %indvars.iv.next143.3 = add nuw nsw i64 %indvars.iv142, 4 ; 2 uses
  %niter238.next.3 = add nuw i64 %niter238, 4     ; 2 uses
  %niter238.ncmp.3 = icmp eq i64 %niter238.next.3, %unroll_iter237
  br i1 %niter238.ncmp.3, label %.preheader.unr-lcssa, label %bb.ab, !llvm.loop !348

bb.ac:                                            ; preds = %.preheader, %bb.ag
  %indvars.iv147 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next148, %bb.ag ] ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qj, i64 %indvars.iv147
  %i.rl = load i8, ptr %i.rk, align 1             ; 4 uses
  %i.rm = icmp eq i8 %i.rl, 0
  br i1 %i.rm, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.rn = zext i8 %i.rl to i32                    ; 2 uses
  %i.ro = zext i8 %i.rl to i64
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ro ; 2 uses
  %i.rq = load i32, ptr %i.rp, align 4            ; 3 uses
  %i.rr = add i32 %i.rq, 1
  store i32 %i.rr, ptr %i.rp, align 4
  %xtraiter242 = and i32 %i.rn, 3                 ; 3 uses
  %i.rs = icmp ult i8 %i.rl, 4
  br i1 %i.rs, label %.epil.preheader241, label %.new239

.new239:                                          ; preds = %bb.ad
  %unroll_iter248 = and i32 %i.rn, 252
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.new239
  %.0115 = phi i32 [ %i.rq, %.new239 ], [ %i.sg, %bb.ae ] ; 5 uses
  %.067114 = phi i32 [ 0, %.new239 ], [ %i.sf, %bb.ae ]
  %niter249 = phi i32 [ 0, %.new239 ], [ %niter249.next.3, %bb.ae ]
  %i.rt = shl i32 %.067114, 3
  %i.ru = shl i32 %.0115, 2
  %i.rv = and i32 %i.ru, 4
  %i.rw = or disjoint i32 %i.rt, %i.rv
  %i.rx = and i32 %.0115, 2
  %i.ry = or disjoint i32 %i.rx, %i.rw
  %i.rz = lshr i32 %.0115, 2
  %i.sa = and i32 %i.rz, 1
  %i.sb = or disjoint i32 %i.sa, %i.ry
  %i.sc = lshr i32 %.0115, 3
  %i.sd = shl i32 %i.sb, 1
  %i.se = and i32 %i.sc, 1
  %i.sf = or disjoint i32 %i.se, %i.sd            ; 3 uses
  %i.sg = lshr i32 %.0115, 4                      ; 2 uses
  %niter249.next.3 = add i32 %niter249, 4         ; 2 uses
  %niter249.ncmp.3.not = icmp eq i32 %niter249.next.3, %unroll_iter248
  br i1 %niter249.ncmp.3.not, label %.unr-lcssa240, label %bb.ae, !llvm.loop !6

.unr-lcssa240:                                    ; preds = %bb.ae
  %lcmp.mod244.not = icmp eq i32 %xtraiter242, 0
  br i1 %lcmp.mod244.not, label %.epilog-lcssa245, label %.epil.preheader241

.epil.preheader241:                               ; preds = %.unr-lcssa240, %bb.ad
  %.0115.epil.init = phi i32 [ %i.rq, %bb.ad ], [ %i.sg, %.unr-lcssa240 ]
  %.067114.epil.init = phi i32 [ 0, %bb.ad ], [ %i.sf, %.unr-lcssa240 ]
  %lcmp.mod247 = icmp ne i32 %xtraiter242, 0
  tail call void @llvm.assume(i1 %lcmp.mod247)
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.epil.preheader241
  %.0115.epil = phi i32 [ %.0115.epil.init, %.epil.preheader241 ], [ %i.sk, %bb.af ] ; 2 uses
  %.067114.epil = phi i32 [ %.067114.epil.init, %.epil.preheader241 ], [ %i.sj, %bb.af ]
  %epil.iter243 = phi i32 [ 0, %.epil.preheader241 ], [ %epil.iter243.next, %bb.af ]
  %i.sh = shl i32 %.067114.epil, 1
  %i.si = and i32 %.0115.epil, 1
  %i.sj = or disjoint i32 %i.si, %i.sh            ; 2 uses
  %i.sk = lshr i32 %.0115.epil, 1
  %epil.iter243.next = add i32 %epil.iter243, 1   ; 2 uses
  %epil.iter243.cmp.not = icmp eq i32 %epil.iter243.next, %xtraiter242
  br i1 %epil.iter243.cmp.not, label %.epilog-lcssa245, label %bb.af, !llvm.loop !349

.epilog-lcssa245:                                 ; preds = %bb.af, %.unr-lcssa240
  %.lcssa = phi i32 [ %i.sf, %.unr-lcssa240 ], [ %i.sj, %bb.af ]
  %i.sl = trunc i32 %.lcssa to i16
  %i.sm = getelementptr inbounds nuw [2 x i8], ptr %i.ql, i64 %indvars.iv147
  store i16 %i.sl, ptr %i.sm, align 2
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %.epilog-lcssa245
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count150
  br i1 %exitcond151.not, label %bb.ah, label %bb.ac, !llvm.loop !7

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umax.v16i32(<16 x i32>, <16 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(1) }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}

!0 = distinct !{!0, !11}
!1 = distinct !{!1, !11}
!2 = distinct !{!2, !11}
!3 = distinct !{ptr @stbi__get8, null}
!4 = distinct !{!4, !11}
!5 = distinct !{!5, !11}
!6 = distinct !{!6, !11}
!7 = distinct !{!7, !11}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"branch_weights", i32 4, i32 12}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!"llvm.loop.unswitch.partial.disable"}
!17 = !{!"branch_weights", i32 4, i32 28}
!18 = distinct !{!18, !"LVerDomain"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !11, !12, !13}
!22 = distinct !{!22, !11, !12, !13}
!23 = distinct !{!23, !11, !12}
!24 = !{!19}
!25 = !{!20}
!26 = distinct !{!26, !"LVerDomain"}
!27 = distinct !{!27, !26}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !11, !12, !13}
!30 = distinct !{!30, !11, !12, !13}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !11, !12}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = !{!27}
!38 = !{!28}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{null, null, null, ptr @stbi__get8, null}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{null, null, null}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !11, !16}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11, !16}
!52 = distinct !{!52, !11}
!53 = distinct !{!53, !11}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11}
!56 = distinct !{!56, !11}
!57 = distinct !{!57, !11}
!58 = distinct !{!58, !11, !16}
!59 = distinct !{!59, !11}
!60 = distinct !{!60, !11}
!61 = distinct !{!61, !11, !16}
!62 = distinct !{null, null, null, null}
!63 = distinct !{null, null, null, ptr @stbi__get8, null}
!64 = distinct !{!64, !11}
!65 = distinct !{!65, !11}
!66 = distinct !{!66, !"LVerDomain"}
!67 = distinct !{!67, !66}
!68 = distinct !{!68, !66}
!69 = distinct !{!69, !11, !12}
!70 = distinct !{null, null, null}
!71 = distinct !{!71, !11}
!72 = distinct !{!72, !11}
!73 = distinct !{!73, !11}
!74 = distinct !{!74, !11}
!75 = distinct !{!75, !11}
!76 = distinct !{!76, !11}
!77 = distinct !{!77, !11}
!78 = distinct !{!78, !11}
!79 = distinct !{null}
!80 = distinct !{!80, !11}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, !11}
!83 = distinct !{!83, !11}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, !11}
!86 = distinct !{!86, !11}
!87 = distinct !{!87, !11}
!88 = distinct !{!88, !11}
!89 = distinct !{!89, !11}
!90 = distinct !{!90, !11}
!91 = distinct !{!91, !11}
!92 = !{!67}
!93 = !{!68}
!94 = distinct !{!94, !11}
!95 = distinct !{!95, !11}
!96 = distinct !{!96, !11}
!97 = distinct !{!97, !"LVerDomain"}
!98 = distinct !{!98, !97}
!99 = distinct !{!99, !97}
!100 = distinct !{!100, !97}
!101 = distinct !{!101, !11, !12, !13}
!102 = distinct !{!102, !11, !12}
!103 = !{!98}
!104 = !{!99}
!105 = !{!100}
!106 = !{!98, !99}
!107 = distinct !{!107, !11, !12, !13}
!108 = distinct !{!108, !11, !12, !13}
!109 = distinct !{!109, !11, !12}
!110 = distinct !{!110, !"LVerDomain"}
!111 = distinct !{!111, !110}
!112 = distinct !{!112, !110}
!113 = distinct !{!113, !11, !12, !13}
!114 = distinct !{!114, !11, !12}
!115 = !{!111}
!116 = !{!112}
!117 = distinct !{!117, !11, !12, !13}
!118 = distinct !{!118, !11, !12, !13}
!119 = distinct !{!119, !11, !13, !12}
!120 = distinct !{!120, !11}
!121 = distinct !{!121, !11}
!122 = distinct !{null}
!123 = distinct !{!123, !11}
!124 = distinct !{!124, !11}
!125 = distinct !{!125, !11}
!126 = distinct !{!126, !11}
!127 = distinct !{!127, !11}
!128 = distinct !{!128, !11}
!129 = distinct !{!129, !11}
!130 = distinct !{!130, !11}
!131 = distinct !{null}
!132 = distinct !{!132, !11}
!133 = distinct !{!133, !15}
!134 = distinct !{!134, !11}
!135 = distinct !{!135, !11}
!136 = distinct !{!136, !11}
!137 = distinct !{!137, !11}
!138 = distinct !{null}
!139 = distinct !{!139, !11}
!140 = distinct !{!140, !11}
!141 = distinct !{!141, !11, !16}
!142 = distinct !{!142, !11}
!143 = distinct !{!143, !11}
!144 = distinct !{!144, !11}
!145 = distinct !{!145, !11}
!146 = distinct !{!146, !11}
!147 = distinct !{!147, !11}
!148 = distinct !{null, null, ptr @stbi__get8, null}
!149 = distinct !{null, null, null, null, ptr @stbi__get8, null}
!150 = distinct !{null, null, null, null}
!151 = distinct !{null, null, null, ptr @stbi__get8, null}
!152 = distinct !{!152, !11}
!153 = distinct !{!153, !11}
!154 = distinct !{!154, !11}
!155 = distinct !{!155, !11}
!156 = distinct !{!156, !11}
!157 = distinct !{null, null, null, null}
!158 = distinct !{!158, !11}
!159 = distinct !{!159, !15}
!160 = distinct !{!160, !11}
!161 = distinct !{!161, !11}
!162 = distinct !{!162, !11}
!163 = distinct !{!163, !11}
end_hunk_1
