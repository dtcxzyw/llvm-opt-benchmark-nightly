Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/g726?download=true
inline.NumInlined: 28
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@g726_decode_init:bb.a

bb.g:                                             ; preds = %g726_reset.exit, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1163346256, %bb.b ], [ -22, %bb.d ], [ 0, %bb.f ], [ 0, %g726_reset.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @g726_decode_frame(ptr noundef %0, ptr noundef initializes((112, 116)) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 3 uses
  %i.g = shl nsw i32 %i.d, 3                      ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 140 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !39
  %i.j = sdiv i32 %i.g, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.j, ptr %i.k, align 8, !tbaa !54
  %i.l = tail call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 0) #12 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond.i = icmp ult i32 %i.g, 2147483135
  %i.n = icmp ne ptr %i.b, null
  %or.cond3.i = and i1 %i.n, %or.cond.i
  %.013.i = select i1 %or.cond3.i, i32 %i.g, i32 0 ; 2 uses
  %i.o = add nuw nsw i32 %.013.i, 8
  %.not31 = icmp eq i32 %i.j, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = load ptr, ptr %1, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.in = phi i32 [ %i.j, %.lr.ph ], [ %i.r, %bb.f ]
  %.02233 = phi ptr [ %i.p, %.lr.ph ], [ %i.am, %bb.f ] ; 2 uses
  %.sroa.5.032 = phi i32 [ 0, %.lr.ph ], [ %i.z, %bb.f ] ; 4 uses
  %i.r = add nsw i32 %.in, -1                     ; 2 uses
  %i.s = load i32, ptr %i.q, align 8, !tbaa !36
  %.not25 = icmp eq i32 %i.s, 0
  %i.t = load i32, ptr %i.h, align 4, !tbaa !39   ; 3 uses
  %i.u = lshr i32 %.sroa.5.032, 3
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.v
  %i.x = load i32, ptr %i.w, align 1, !tbaa !61   ; 2 uses
  %i.y = add i32 %i.t, %.sroa.5.032
  %i.z = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %i.y) ; 2 uses
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = and i32 %.sroa.5.032, 7
  %i.ab = lshr i32 %i.x, %i.aa
  %i.ac = sub i32 32, %i.t
  %i.ad = lshr i32 -1, %i.ac
  %i.ae = and i32 %i.ab, %i.ad
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.af = tail call i32 @llvm.bswap.i32(i32 %i.x)
  %i.ag = and i32 %.sroa.5.032, 7
  %i.ah = shl i32 %i.af, %i.ag
  %i.ai = sub nsw i32 32, %i.t
  %i.aj = lshr i32 %i.ah, %i.ai
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ak = phi i32 [ %i.aj, %bb.e ], [ %i.ae, %bb.d ]
  %i.al = tail call fastcc signext i16 @g726_decode(ptr noundef nonnull %i.f, i32 noundef %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %.02233, i64 2
  store i16 %i.al, ptr %.02233, align 2, !tbaa !59
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !74

._crit_edge:                                      ; preds = %bb.f, %bb.b
  %.sroa.5.0.lcssa = phi i32 [ 0, %bb.b ], [ %i.z, %bb.f ]
  %i.an = icmp sgt i32 %.013.i, %.sroa.5.0.lcssa
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.20) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  store i32 1, ptr %2, align 4, !tbaa !47
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.023 = phi i32 [ %i.d, %bb.h ], [ %i.l, %bb.a ]
  ret i32 %.023
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @g726_decode_flush(ptr nofree noundef readonly captures(none) %0) #2 {
.preheader.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.e = load i32, ptr %i.d, align 4, !tbaa !39
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr [32 x i8], ptr @G726Tables_pool, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 16 dereferenceable(32) %i.h, i64 32, i1 false), !tbaa.struct !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  store i8 32, ptr %i.j, align 2, !tbaa !46
  store i32 1, ptr %i.i, align 8, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 45
  store i8 32, ptr %i.k, align 1, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store i32 1, ptr %i.l, align 4, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 32, ptr %i.m, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 51
  store i8 32, ptr %i.n, align 1, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 54
  store i8 32, ptr %i.o, align 2, !tbaa !46
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  store i8 32, ptr %i.p, align 1, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i8 32, ptr %i.q, align 4, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 63
  store i8 32, ptr %i.r, align 1, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  store i32 544, ptr %i.s, align 4, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i32 34816, ptr %i.t, align 8, !tbaa !63
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i32 544, ptr %i.u, align 8, !tbaa !49
  ret void
}

declare ptr @av_default_item_name(ptr noundef) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare i32 @ff_get_encode_buffer(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc signext i16 @g726_decode(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  %i.c = add nsw i32 %i.b, -1
  %i.d = ashr i32 %1, %i.c                        ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.f = getelementptr i8, ptr %0, i64 136        ; 2 uses
  %.val144 = load i32, ptr %i.f, align 8, !tbaa !49 ; 4 uses
  %i.g = sext i32 %1 to i64                       ; 3 uses
  %i.h = getelementptr inbounds [2 x i8], ptr %.val, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !59
  %i.j = sext i16 %i.i to i32
  %i.k = ashr i32 %.val144, 2
  %i.l = add nsw i32 %i.k, %i.j                   ; 3 uses
  %i.m = lshr i32 %i.l, 7
  %i.n = and i32 %i.m, 15
  %i.o = and i32 %i.l, 127
  %i.p = or disjoint i32 %i.o, 128
  %i.q = icmp slt i32 %i.l, 0
  %i.r = shl nuw nsw i32 %i.p, %i.n
  %i.s = shl nuw i32 %i.r, 9
  %i.t = ashr i32 %i.s, 16
  %i.u = select i1 %i.q, i32 0, i32 %i.t          ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !76
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = load i32, ptr %i.v, align 8, !tbaa !63   ; 2 uses
  %i.aa = ashr i32 %i.z, 15                       ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 9
  %i.ac = lshr i32 %i.z, 10
  %i.ad = and i32 %i.ac, 31
  %i.ae = or disjoint i32 %i.ad, 32
  %i.af = shl i32 %i.ae, %i.aa
  %i.ag = mul nsw i32 %i.af, 3
  %i.ah = ashr i32 %i.ag, 2
  %i.ai = select i1 %i.ab, i32 23808, i32 %i.ah
  %i.aj = icmp slt i32 %i.ai, %i.u
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ak = phi i1 [ false, %bb.a ], [ %i.aj, %bb.b ] ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  %i.al = sub nsw i32 0, %i.u
  %spec.select = select i1 %.not, i32 %i.u, i32 %i.al ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !60
  %i.ao = add nsw i32 %i.an, %spec.select
  %i.ap = shl i32 %i.ao, 16                       ; 3 uses
  %i.aq = ashr exact i32 %i.ap, 16                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !77
  %i.at = add nsw i32 %i.as, %spec.select
  %i.au = tail call i32 @llvm.scmp.i32.i32(i32 %i.at, i32 0) ; 4 uses
  %.not132 = icmp ne i32 %i.u, 0                  ; 3 uses
  br i1 %i.ak, label %.loopexit.loopexit, label %.loopexit.loopexit176

.loopexit.loopexit:                               ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i8 0, i64 32, i1 false)
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !47
  br label %.loopexit

.loopexit.loopexit176:                            ; preds = %bb.c
  %.inv.i145 = icmp sgt i32 %spec.select, -1
  %i.aw = select i1 %.inv.i145, i32 128, i32 -128
  %i.ax = select i1 %.not132, i32 %i.aw, i32 0    ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !47 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !47 ; 3 uses
  %i.bc = mul i32 %i.au, %i.az
  %i.bd = mul i32 %i.bc, %i.bb
  %i.be = sub i32 0, %i.bd
  %i.bf = ashr i32 %i.be, 5
  %i.bg = tail call i32 @llvm.smax.i32(i32 %i.bf, i32 -256)
  %.0.i143 = tail call i32 @llvm.smin.i32(i32 %i.bg, i32 255)
  %i.bh = shl nsw i32 %i.au, 7
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !47
  %i.bk = mul nsw i32 %i.bh, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !47 ; 2 uses
  %i.bn = ashr i32 %i.bm, 7
  %i.bo = add i32 %i.bm, %i.bk
  %i.bp = sub i32 %i.bo, %i.bn
  %i.bq = add i32 %i.bp, %.0.i143                 ; 2 uses
  %i.br = tail call i32 @llvm.smax.i32(i32 %i.bq, i32 -12288)
  %.0.i142 = tail call i32 @llvm.smin.i32(i32 %i.br, i32 12288) ; 3 uses
  store i32 %.0.i142, ptr %i.bl, align 4, !tbaa !47
  %i.bs = mul nsw i32 %i.au, 192
  %i.bt = mul nsw i32 %i.bs, %i.bb
  %i.bu = ashr i32 %i.az, 8
  %i.bv = sub nsw i32 %i.bt, %i.bu
  %i.bw = add nsw i32 %i.bv, %i.az                ; 2 uses
  %.neg = add nsw i32 %.0.i142, -15360            ; 2 uses
  %i.bx = sub nsw i32 15360, %.0.i142
  %i.by = icmp slt i32 %i.bw, %.neg
  %..i139 = tail call i32 @llvm.smin.i32(i32 %i.bw, i32 %i.bx)
  %.0.i140 = select i1 %i.by, i32 %.neg, i32 %..i139
  store i32 %.0.i140, ptr %i.ay, align 8, !tbaa !47
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.ca = sub nsw i32 0, %i.ax                    ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cc = load i8, ptr %i.bz, align 2, !tbaa !78
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !78
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cg = load i8, ptr %i.cf, align 4, !tbaa !78
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 55
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !78
  %i.cj = insertelement <4 x i8> poison, i8 %i.cc, i64 0
  %i.ck = insertelement <4 x i8> %i.cj, i8 %i.ce, i64 1
  %i.cl = insertelement <4 x i8> %i.ck, i8 %i.cg, i64 2
  %i.cm = insertelement <4 x i8> %i.cl, i8 %i.ci, i64 3
  %i.cn = icmp eq <4 x i8> %i.cm, zeroinitializer
  %i.co = insertelement <4 x i32> poison, i32 %i.ax, i64 0
  %i.cp = shufflevector <4 x i32> %i.co, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cq = insertelement <4 x i32> poison, i32 %i.ca, i64 0
  %i.cr = shufflevector <4 x i32> %i.cq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cs = select <4 x i1> %i.cn, <4 x i32> %i.cp, <4 x i32> %i.cr
  %i.ct = load <4 x i32>, ptr %i.cb, align 8, !tbaa !47 ; 2 uses
  %i.cu = ashr <4 x i32> %i.ct, splat (i32 8)
  %i.cv = sub <4 x i32> %i.ct, %i.cu
  %i.cw = add <4 x i32> %i.cv, %i.cs              ; 3 uses
  store <4 x i32> %i.cw, ptr %i.cb, align 8, !tbaa !47
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !78
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.db = load i8, ptr %i.da, align 1, !tbaa !78
  %.inv.i146.4 = icmp eq i8 %i.cy, 0
  %i.dc = select i1 %.inv.i146.4, i32 %i.ax, i32 %i.ca
  %.inv.i146.5 = icmp eq i8 %i.db, 0
  %i.dd = select i1 %.inv.i146.5, i32 %i.ax, i32 %i.ca
  %i.de = load <2 x i32>, ptr %i.cz, align 8, !tbaa !47 ; 2 uses
  %i.df = ashr <2 x i32> %i.de, splat (i32 8)
  %i.dg = sub <2 x i32> %i.de, %i.df
  %i.dh = insertelement <2 x i32> poison, i32 %i.dc, i64 0
  %i.di = insertelement <2 x i32> %i.dh, i32 %i.dd, i64 1
  %i.dj = add <2 x i32> %i.dg, %i.di
  store <2 x i32> %i.dj, ptr %i.cz, align 8, !tbaa !47
  %i.dk = icmp slt i32 %i.bq, -11776
  %i.dl = extractelement <4 x i32> %i.cw, i64 0
  %i.dm = ashr i32 %i.dl, 2
  %i.dn = extractelement <4 x i32> %i.cw, i64 1
  %i.do = ashr i32 %i.dn, 2
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit176, %.loopexit.loopexit
  %i.dp = phi i32 [ %i.do, %.loopexit.loopexit176 ], [ 0, %.loopexit.loopexit ] ; 3 uses
  %i.dq = phi i32 [ %i.dm, %.loopexit.loopexit176 ], [ 0, %.loopexit.loopexit ] ; 3 uses
  %i.dr = phi i1 [ %i.dk, %.loopexit.loopexit176 ], [ false, %.loopexit.loopexit ] ; 2 uses
  %i.ds = phi i32 [ %i.bb, %.loopexit.loopexit176 ], [ %.pre, %.loopexit.loopexit ]
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.ds, ptr %i.du, align 4, !tbaa !47
  %i.dv = tail call i32 @llvm.umax.i32(i32 %i.au, i32 1)
  store i32 %i.dv, ptr %i.dt, align 8, !tbaa !47
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.dx, ptr noundef nonnull align 8 dereferenceable(3) %i.dw, i64 3, i1 false), !tbaa.struct !79
  %.lobit.i = lshr i32 %i.aq, 31
  %i.dy = trunc nuw nsw i32 %.lobit.i to i8
  store i8 %i.dy, ptr %i.dw, align 8, !tbaa !78
  %spec.select.i = tail call i32 @llvm.abs.i32(i32 range(i32 -536870912, 536870912) %i.aq, i1 true) ; 4 uses
  %i.dz = and i32 %spec.select.i, 65280
  %.not.i.i = icmp eq i32 %i.dz, 0                ; 2 uses
  %i.ea = lshr i32 %spec.select.i, 8
  %spec.select.i.i = select i1 %.not.i.i, i32 %spec.select.i, i32 %i.ea
  %spec.select7.i.i = select i1 %.not.i.i, i32 0, i32 8
  %i.eb = zext nneg i32 %spec.select.i.i to i64
  %i.ec = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !61
  %i.ee = zext i8 %i.ed to i32
  %i.ef = icmp ne i32 %i.ap, 0                    ; 2 uses
  %i.eg = zext i1 %i.ef to i32
  %i.eh = or disjoint i32 %spec.select7.i.i, %i.eg
  %i.ei = add nuw nsw i32 %i.eh, %i.ee            ; 2 uses
  %i.ej = trunc i32 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !80
  %i.el = shl nuw nsw i32 %spec.select.i, 6
  %i.em = and i32 %i.ei, 255
  %i.en = lshr i32 %i.el, %i.em
  %i.eo = trunc i32 %i.en to i8
  %i.ep = select i1 %i.ef, i8 %i.eo, i8 32
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %i.ep, ptr %i.eq, align 2, !tbaa !46
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 46 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 49
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %scevgep, ptr noundef nonnull align 2 dereferenceable(15) %i.er, i64 15, i1 false)
  %spec.select.i148 = tail call i32 @llvm.abs.i32(i32 %i.u, i1 true) ; 4 uses
  %i.es = and i32 %spec.select.i148, 65280
  %.not.i.i149 = icmp eq i32 %i.es, 0             ; 2 uses
  %i.et = lshr i32 %spec.select.i148, 8
  %spec.select.i.i150 = select i1 %.not.i.i149, i32 %spec.select.i148, i32 %i.et
  %spec.select7.i.i151 = select i1 %.not.i.i149, i32 0, i32 8
  %i.eu = zext nneg i32 %spec.select.i.i150 to i64
  %i.ev = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !61
  %i.ex = zext i8 %i.ew to i32
  %i.ey = zext i1 %.not132 to i32
  %i.ez = or disjoint i32 %spec.select7.i.i151, %i.ey
  %i.fa = add nuw nsw i32 %i.ez, %i.ex            ; 3 uses
  %i.fb = trunc i32 %i.fa to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 47
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !80
  %i.fd = shl nuw nsw i32 %spec.select.i148, 6
  %i.fe = and i32 %i.fa, 255
  %i.ff = lshr i32 %i.fd, %i.fe
  %i.fg = trunc i32 %i.ff to i8
  %i.fh = select i1 %.not132, i8 %i.fg, i8 32     ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.fh, ptr %i.fi, align 8, !tbaa !46
  %i.fj = trunc i32 %i.d to i8                    ; 2 uses
  store i8 %i.fj, ptr %i.er, align 2, !tbaa !78
  %i.fk = zext i1 %i.dr to i32
  store i32 %i.fk, ptr %i.w, align 4, !tbaa !76
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !81
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 %i.g ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !61
  %i.fp = zext i8 %i.fo to i32
  %i.fq = shl nuw nsw i32 %i.fp, 4
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !82 ; 2 uses
  %i.ft = sub nsw i32 0, %i.fs
  %i.fu = ashr i32 %i.ft, 5
  %i.fv = add i32 %i.fu, %i.fs
  %i.fw = add i32 %i.fv, %i.fq                    ; 2 uses
  store i32 %i.fw, ptr %i.fr, align 4, !tbaa !82
  %i.fx = load i8, ptr %i.fn, align 1, !tbaa !61
  %i.fy = zext i8 %i.fx to i32
  %i.fz = shl nuw nsw i32 %i.fy, 4
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !83 ; 2 uses
  %i.gc = sub nsw i32 0, %i.gb
  %i.gd = ashr i32 %i.gc, 7
  %i.ge = add i32 %i.gd, %i.gb
  %i.gf = add i32 %i.ge, %i.fz                    ; 3 uses
  store i32 %i.gf, ptr %i.ga, align 8, !tbaa !83
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  br i1 %i.ak, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !84 ; 2 uses
  %i.gi = sub nsw i32 0, %i.gh
  %i.gj = ashr i32 %i.gi, 4
  %i.gk = add nsw i32 %i.gj, %i.gh                ; 3 uses
  store i32 %i.gk, ptr %i.gg, align 8, !tbaa !84
  %i.gl = icmp slt i32 %.val144, 1536
  %or.cond.not = select i1 %i.gl, i1 true, i1 %i.dr
  br i1 %or.cond.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.gm = shl i32 %i.fw, 2
  %i.gn = sub nsw i32 %i.gm, %i.gf
  %i.go = tail call i32 @llvm.abs.i32(i32 %i.gn, i1 true)
  %i.gp = ashr i32 %i.gf, 3
  %.not135 = icmp slt i32 %i.go, %i.gp
  br i1 %.not135, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.gq = add nsw i32 %i.gk, 32
  br label %.sink.split

.sink.split:                                      ; preds = %.loopexit, %bb.f
  %.sink = phi i32 [ %i.gq, %bb.f ], [ 256, %.loopexit ] ; 2 uses
  store i32 %.sink, ptr %i.gg, align 8, !tbaa !84
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  %i.gr = phi i32 [ %i.gk, %bb.e ], [ %.sink, %.sink.split ]
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !85
  %i.gv = getelementptr inbounds [2 x i8], ptr %i.gu, i64 %i.g
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !59
  %i.gx = sext i16 %i.gw to i32
  %i.gy = sub nsw i32 0, %.val144
  %i.gz = ashr i32 %i.gy, 5
  %i.ha = add i32 %i.gz, %.val144
  %i.hb = add i32 %i.ha, %i.gx
  %i.hc = tail call i32 @llvm.smax.i32(i32 %i.hb, i32 544)
  %i.hd = tail call i32 @llvm.umin.i32(i32 %i.hc, i32 5120) ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !62
  %i.hf = load i32, ptr %i.v, align 8, !tbaa !63  ; 2 uses
  %i.hg = sub nsw i32 0, %i.hf
  %i.hh = ashr i32 %i.hg, 6
  %i.hi = add i32 %i.hh, %i.hf
  %i.hj = add i32 %i.hi, %i.hd                    ; 3 uses
  store i32 %i.hj, ptr %i.v, align 8, !tbaa !63
  %i.hk = tail call i32 @llvm.smin.i32(i32 %i.gr, i32 256)
  %spec.select136 = ashr i32 %i.hk, 2
  %i.hl = ashr i32 %i.hj, 6
  %i.hm = sub nsw i32 %i.hd, %i.hl
  %i.hn = mul nsw i32 %i.hm, %spec.select136
  %i.ho = add nsw i32 %i.hn, %i.hj
  %i.hp = ashr i32 %i.ho, 6
  store i32 %i.hp, ptr %i.f, align 8, !tbaa !49
  %.lobit.i152 = lshr i32 %i.dq, 31
  %i.hq = trunc nuw nsw i32 %.lobit.i152 to i8
  %spec.select.i153 = tail call i32 @llvm.abs.i32(i32 range(i32 -536870912, 536870912) %i.dq, i1 true) ; 4 uses
  %i.hr = and i32 %spec.select.i153, 65280
  %.not.i.i154 = icmp eq i32 %i.hr, 0             ; 2 uses
  %i.hs = lshr i32 %spec.select.i153, 8
  %spec.select.i.i155 = select i1 %.not.i.i154, i32 %spec.select.i153, i32 %i.hs
  %spec.select7.i.i156 = select i1 %.not.i.i154, i8 0, i8 8
  %i.ht = zext nneg i32 %spec.select.i.i155 to i64
  %i.hu = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ht
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !61
  %i.hw = icmp ne i32 %i.dq, 0                    ; 2 uses
  %i.hx = zext i1 %i.hw to i8
  %.tr = or disjoint i8 %spec.select7.i.i156, %i.hx
  %i.hy = shl i32 %spec.select.i153, 6
  %.narrow = add i8 %.tr, %i.hv
  %i.hz = zext i8 %.narrow to i32                 ; 2 uses
  %i.ia = ashr i32 %i.hy, %i.hz
  %i.ib = and i32 %i.fa, 255
  %i.ic = add nuw nsw i32 %i.ib, %i.hz            ; 3 uses
  %i.id = and i32 %i.ia, 255
  %i.ie = select i1 %i.hw, i32 %i.id, i32 32
  %i.if = zext i8 %i.fh to i32
  %i.ig = mul nuw nsw i32 %i.ie, %i.if
  %i.ih = add nuw nsw i32 %i.ig, 48
  %i.ii = lshr i32 %i.ih, 4                       ; 2 uses
  %i.ij = icmp samesign ugt i32 %i.ic, 19
  %i.ik = add nsw i32 %i.ic, -19
  %i.il = shl i32 %i.ii, %i.ik
  %i.im = sub nuw nsw i32 19, %i.ic
  %i.in = lshr i32 %i.ii, %i.im
  %i.io = select i1 %i.ij, i32 %i.il, i32 %i.in   ; 2 uses
  %.not.i = icmp eq i8 %i.fj, %i.hq
  %i.ip = sub nsw i32 0, %i.io
  %i.iq = select i1 %.not.i, i32 %i.io, i32 %i.ip
  %i.ir = shl i32 %i.iq, 16
  %i.is = ashr exact i32 %i.ir, 16
  %.lobit.i152.1 = lshr i32 %i.dp, 31
  %i.it = trunc nuw nsw i32 %.lobit.i152.1 to i8
  %spec.select.i153.1 = tail call i32 @llvm.abs.i32(i32 range(i32 -536870912, 536870912) %i.dp, i1 true) ; 4 uses
  %i.iu = and i32 %spec.select.i153.1, 65280
  %.not.i.i154.1 = icmp eq i32 %i.iu, 0           ; 2 uses
  %i.iv = lshr i32 %spec.select.i153.1, 8
  %spec.select.i.i155.1 = select i1 %.not.i.i154.1, i32 %spec.select.i153.1, i32 %i.iv
  %spec.select7.i.i156.1 = select i1 %.not.i.i154.1, i8 0, i8 8
  %i.iw = zext nneg i32 %spec.select.i.i155.1 to i64
  %i.ix = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !61
  %i.iz = icmp ne i32 %i.dp, 0                    ; 2 uses
  %i.ja = zext i1 %i.iz to i8
  %.tr182 = or disjoint i8 %spec.select7.i.i156.1, %i.ja
  %i.jb = shl i32 %spec.select.i153.1, 6
  %.narrow183 = add i8 %.tr182, %i.iy
  %i.jc = zext i8 %.narrow183 to i32              ; 2 uses
  %i.jd = ashr i32 %i.jb, %i.jc
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.jg = load i8, ptr %i.jf, align 2, !tbaa !80
  %i.jh = zext i8 %i.jg to i32
  %i.ji = add nuw nsw i32 %i.jc, %i.jh            ; 3 uses
  %i.jj = and i32 %i.jd, 255
  %i.jk = select i1 %i.iz, i32 %i.jj, i32 32
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !46
  %i.jn = zext i8 %i.jm to i32
  %i.jo = mul nuw nsw i32 %i.jk, %i.jn
  %i.jp = add nuw nsw i32 %i.jo, 48
  %i.jq = lshr i32 %i.jp, 4                       ; 2 uses
  %i.jr = icmp samesign ugt i32 %i.ji, 19
  %i.js = add nsw i32 %i.ji, -19
  %i.jt = shl i32 %i.jq, %i.js
  %i.ju = sub nuw nsw i32 19, %i.ji
  %i.jv = lshr i32 %i.jq, %i.ju
  %i.jw = select i1 %i.jr, i32 %i.jt, i32 %i.jv   ; 2 uses
  %i.jx = load i8, ptr %i.je, align 1, !tbaa !78
  %.not.i.1 = icmp eq i8 %i.jx, %i.it
  %i.jy = sub nsw i32 0, %i.jw
  %i.jz = select i1 %.not.i.1, i32 %i.jw, i32 %i.jy
  %i.ka = shl i32 %i.jz, 16
  %i.kb = ashr exact i32 %i.ka, 16
  %i.kc = add nsw i32 %i.kb, %i.is
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !47
  %i.kf = ashr i32 %i.ke, 2                       ; 3 uses
  %.lobit.i152.2 = lshr i32 %i.kf, 31
  %i.kg = trunc nuw nsw i32 %.lobit.i152.2 to i8
  %spec.select.i153.2 = tail call i32 @llvm.abs.i32(i32 range(i32 -536870912, 536870912) %i.kf, i1 true) ; 4 uses
  %i.kh = and i32 %spec.select.i153.2, 65280
  %.not.i.i154.2 = icmp eq i32 %i.kh, 0           ; 2 uses
  %i.ki = lshr i32 %spec.select.i153.2, 8
  %spec.select.i.i155.2 = select i1 %.not.i.i154.2, i32 %spec.select.i153.2, i32 %i.ki
  %spec.select7.i.i156.2 = select i1 %.not.i.i154.2, i8 0, i8 8
  %i.kj = zext nneg i32 %spec.select.i.i155.2 to i64
  %i.kk = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.kj
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !61
  %i.km = icmp ne i32 %i.kf, 0                    ; 2 uses
  %i.kn = zext i1 %i.km to i8
  %.tr184 = or disjoint i8 %spec.select7.i.i156.2, %i.kn
  %i.ko = shl i32 %spec.select.i153.2, 6
  %.narrow185 = add i8 %.tr184, %i.kl
  %i.kp = zext i8 %.narrow185 to i32              ; 2 uses
  %i.kq = ashr i32 %i.ko, %i.kp
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !80
  %i.ku = zext i8 %i.kt to i32
  %i.kv = add nuw nsw i32 %i.kp, %i.ku            ; 3 uses
  %i.kw = and i32 %i.kq, 255
  %i.kx = select i1 %i.km, i32 %i.kw, i32 32
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.kz = load i8, ptr %i.ky, align 2, !tbaa !46
end_hunk_0
