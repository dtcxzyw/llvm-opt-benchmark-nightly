inline.NumInlined: 294
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 36
begin_hunk_0_@tt_face_done:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !90   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !91   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92   ; 2 uses
  %.not27 = icmp eq ptr %i.h, null
  br i1 %.not27, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !93
  tail call void %i.h(ptr noundef %i.j) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not28 = icmp eq ptr %i.f, null
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !94
  tail call void %i.l(ptr noundef nonnull %0) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1280
  tail call void @FT_Stream_ReleaseFrame(ptr noundef %i.m, ptr noundef nonnull %i.n) #22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1272
  store i64 0, ptr %i.o, align 8, !tbaa !95
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !96
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !98
  tail call void @ft_mem_free(ptr noundef %i.r, ptr noundef %i.t) #22
  store ptr null, ptr %i.s, align 8, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1288
  tail call void @FT_Stream_ReleaseFrame(ptr noundef %i.p, ptr noundef nonnull %i.u) #22
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !99
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.w) #22
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  tail call void @FT_Stream_ReleaseFrame(ptr noundef %i.d, ptr noundef nonnull %i.y) #22
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1136
  tail call void @FT_Stream_ReleaseFrame(ptr noundef %i.d, ptr noundef nonnull %i.z) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store i64 0, ptr %i.aa, align 8, !tbaa !100
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store i64 0, ptr %i.ab, align 8, !tbaa !101
  tail call void @tt_done_blend(ptr noundef nonnull %0)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1216
  store ptr null, ptr %i.ac, align 8, !tbaa !102
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @tt_size_init(ptr nofree noundef writeonly captures(none) initializes((224, 225), (240, 248), (544, 552)) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 -1, ptr %i.a, align 8, !tbaa !103
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 548
  store i32 -1, ptr %i.b, align 4, !tbaa !115
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 0, ptr %i.c, align 8, !tbaa !116
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 4294967295, ptr %i.d, align 8, !tbaa !117
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @tt_size_done(ptr nofree noundef captures(none) initializes((256, 264), (272, 280), (288, 296), (440, 448), (456, 458), (544, 552)) %0) #2 {
bb.a:
  tail call fastcc void @tt_size_done_bytecode(ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 0, ptr %i.a, align 8, !tbaa !116
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_slot_init(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125
  %i.d = tail call i32 @FT_GlyphLoader_CreateExtra(ptr noundef %i.c) #22
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define internal i32 @tt_glyph_load(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  %4 = alloca %struct.TT_SBit_MetricsRec_, align 2 ; 12 uses
  %5 = alloca %struct.TT_LoaderRec_, align 8      ; 36 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  %i.d = alloca i16, align 2                      ; 5 uses
  %i.e = alloca i16, align 2                      ; 5 uses
  %i.f = alloca i16, align 2                      ; 5 uses
  %i.g = alloca i16, align 2                      ; 3 uses
  %i.h = alloca i16, align 2                      ; 3 uses
  %i.i = alloca i16, align 2                      ; 4 uses
  %i.j = alloca i16, align 2                      ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !127  ; 18 uses
  %.not31 = icmp eq ptr %1, null
  br i1 %.not31, label %bb.cl, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not32 = icmp eq ptr %i.l, null
  br i1 %.not32, label %bb.cl, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !128
  %i.o = trunc i64 %i.n to i32
  %.not33 = icmp ult i32 %2, %i.o
  br i1 %.not33, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !75
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !76
  %.not34 = icmp eq ptr %i.s, null
  br i1 %.not34, label %bb.cl, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = and i32 %3, 2
  %.not35 = icmp eq i32 %i.t, 0
  br i1 %.not35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !73
  %i.w = and i64 %i.v, 8192
  %.not36 = icmp eq i64 %i.w, 0
  %i.x = and i32 %3, -3
  %spec.select = select i1 %.not36, i32 %3, i32 %i.x ; 2 uses
  %i.y = lshr i32 %spec.select, 14
  %i.z = and i32 %i.y, 2
  %spec.select42 = or i32 %i.z, %spec.select
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ %3, %bb.e ], [ %spec.select42, %bb.f ] ; 3 uses
  %i.aa = and i32 %.1, 1025
  %.not38 = icmp eq i32 %i.aa, 0
  br i1 %.not38, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !73
  %i.ad = and i64 %i.ac, 8192
  %.not39 = icmp eq i64 %i.ad, 0
  %spec.select41.v = select i1 %.not39, i32 11, i32 9
  %spec.select41 = or i32 %spec.select41.v, %.1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2 = phi i32 [ %spec.select41, %bb.h ], [ %.1, %bb.g ] ; 17 uses
  %i.ae = and i32 %.2, 2
  %.not40 = icmp eq i32 %i.ae, 0                  ; 3 uses
  %.v = select i1 %.not40, i64 96, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !117 ; 2 uses
  %.not.i = icmp ne i64 %i.ai, 4294967295
  %i.aj = and i32 %.2, 8
  %i.ak = icmp eq i32 %i.aj, 0
  %or.cond178.i = and i1 %i.ak, %.not.i
  br i1 %or.cond178.i, label %bb.j, label %bb.y

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !130
  %i.an = and i64 %i.am, 2147418112
  %.not152.i = icmp eq i64 %i.an, 0
  br i1 %.not152.i, label %bb.k, label %bb.y

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !73
  %i.aq = and i64 %i.ap, 32768
  %.not153.i = icmp eq i64 %i.aq, 0
  br i1 %.not153.i, label %bb.l, label %bb.y

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %6 = load i64, ptr %i.ar, align 8, !tbaa !131   ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = load i64, ptr %7, align 8, !tbaa !132   ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 880 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !91
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !133
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ba = call i32 %i.ay(ptr noundef nonnull %i.l, i64 noundef %i.ai, i32 noundef %2, i32 noundef %.2, ptr noundef %i.aw, ptr noundef nonnull %i.az, ptr noundef nonnull %4) #22, !inline_history !134 ; 4 uses
  %.not.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i, label %bb.r, label %load_sbit_image.exit.i

load_sbit_image.exit.i:                           ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.bb = and i32 %i.ba, 255
  %i.bc = icmp eq i32 %i.bb, 157
  %i.bd = load ptr, ptr %i.k, align 8, !tbaa !127
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !73
  %i.bg = and i64 %i.bf, 1
  %.not163.i = icmp eq i64 %i.bg, 0               ; 2 uses
  br i1 %i.bc, label %bb.m, label %bb.q

bb.m:                                             ; preds = %load_sbit_image.exit.i
  br i1 %.not163.i, label %bb.n, label %bb.y

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i16 0, ptr %i.c, align 2, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i16 0, ptr %i.d, align 2, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i16 0, ptr %i.e, align 2, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i16 0, ptr %i.f, align 2, !tbaa !135
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 1256
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !136
  %.not164.i = icmp eq i64 %i.bi, 0
  br i1 %.not164.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = load ptr, ptr %i.at, align 8, !tbaa !91
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 320
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !137
  call void %i.bl(ptr noundef nonnull %i.l, i8 noundef zeroext 0, i32 noundef %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #22, !inline_history !138
  call fastcc void @TT_Get_VMetrics(ptr noundef nonnull %i.l, i32 noundef %2, i64 noundef 0, ptr noundef %i.d, ptr noundef %i.f)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 202
  store i16 0, ptr %i.bn, align 2, !tbaa !139
  store i16 0, ptr %i.bm, align 8, !tbaa !140
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  %i.bp = load i16, ptr %i.c, align 2, !tbaa !135
  %i.bq = sext i16 %i.bp to i64
  %sext203.i = shl i64 %6, 32
  %i.br = ashr exact i64 %sext203.i, 32           ; 2 uses
  %i.bs = mul nsw i64 %i.br, %i.bq                ; 2 uses
  %i.bt = ashr i64 %i.bs, 63
  %i.bu = add nsw i64 %i.bs, 32768
  %i.bv = add nsw i64 %i.bu, %i.bt
  %i.bw = ashr i64 %i.bv, 16
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !141
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.by, align 8, !tbaa !142
  %i.bz = load i16, ptr %i.e, align 2, !tbaa !135
  %i.ca = zext i16 %i.bz to i64
  %i.cb = mul nsw i64 %i.br, %i.ca                ; 2 uses
  %i.cc = ashr i64 %i.cb, 63
  %i.cd = add nsw i64 %i.cb, 32768
  %i.ce = add nsw i64 %i.cd, %i.cc
  %i.cf = ashr i64 %i.ce, 16
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !143
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.ch, align 8, !tbaa !144
  %i.ci = load i16, ptr %i.d, align 2, !tbaa !135
  %i.cj = sext i16 %i.ci to i64
  %sext206.i = shl i64 %i.as, 32
  %i.ck = ashr exact i64 %sext206.i, 32           ; 2 uses
  %i.cl = mul nsw i64 %i.ck, %i.cj                ; 2 uses
  %i.cm = ashr i64 %i.cl, 63
  %i.cn = add nsw i64 %i.cl, 32768
  %i.co = add nsw i64 %i.cn, %i.cm
  %i.cp = ashr i64 %i.co, 16
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !145
  %i.cr = load i16, ptr %i.f, align 2, !tbaa !135
  %i.cs = zext i16 %i.cr to i64
  %i.ct = mul nsw i64 %i.ck, %i.cs                ; 2 uses
  %i.cu = ashr i64 %i.ct, 63
  %i.cv = add nsw i64 %i.ct, 32768
  %i.cw = add nsw i64 %i.cv, %i.cu
  %i.cx = ashr i64 %i.cw, 16
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !146
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1651078259, ptr %i.cz, align 8, !tbaa !147
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 178
  store i8 1, ptr %i.da, align 2, !tbaa !148
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 0, ptr %i.db, align 8, !tbaa !149
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 0, ptr %i.dc, align 4, !tbaa !150
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i = phi i32 [ 0, %bb.o ], [ %i.ba, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %TT_Load_Glyph.exit

bb.q:                                             ; preds = %load_sbit_image.exit.i
  br i1 %.not163.i, label %TT_Load_Glyph.exit, label %bb.y

bb.r:                                             ; preds = %bb.l
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 202
  store i16 0, ptr %i.de, align 2, !tbaa !139
  store i16 0, ptr %i.dd, align 8, !tbaa !140
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !151
  %i.dh = zext i16 %i.dg to i64
  %i.di = shl nuw nsw i64 %i.dh, 6
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !153
  %i.dk = load i16, ptr %4, align 2, !tbaa !154
  %i.dl = zext i16 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 6
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !155
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !156 ; 2 uses
  %i.dq = sext i16 %i.dp to i64
  %i.dr = shl nsw i64 %i.dq, 6
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !141
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !157 ; 2 uses
  %i.dv = sext i16 %i.du to i64
  %i.dw = shl nsw i64 %i.dv, 6
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !142
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !158
  %i.ea = zext i16 %i.dz to i64
  %i.eb = shl nuw nsw i64 %i.ea, 6
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !143
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !159 ; 2 uses
  %i.ef = sext i16 %i.ee to i64
  %i.eg = shl nsw i64 %i.ef, 6
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !144
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !160 ; 2 uses
  %i.ek = sext i16 %i.ej to i64
  %i.el = shl nsw i64 %i.ek, 6
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.el, ptr %i.em, align 8, !tbaa !145
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !161
  %i.ep = zext i16 %i.eo to i64
  %i.eq = shl nuw nsw i64 %i.ep, 6
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !146
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1651078259, ptr %i.es, align 8, !tbaa !147
  %i.et = and i32 %.2, 16
  %.not27.i.i = icmp eq i32 %i.et, 0              ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 3 uses
  %..i.i = select i1 %.not27.i.i, i16 %i.dp, i16 %i.ee
  %.3.i.i = select i1 %.not27.i.i, i16 %i.du, i16 %i.ej
  %i.ew = sext i16 %..i.i to i32
  store i32 %i.ew, ptr %i.eu, align 8, !tbaa !149
  %i.ex = sext i16 %.3.i.i to i32
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ey = load ptr, ptr %i.k, align 8, !tbaa !127 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !73
  %i.fb = and i64 %i.fa, 131073
  %or.cond179.i = icmp eq i64 %i.fb, 0
  br i1 %or.cond179.i, label %TT_Load_Glyph.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 192
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !46
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.fe, i8 0, i64 360, i1 false)
  %i.ff = sext i32 %.2 to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.ff, ptr %i.fg, align 8, !tbaa !162
  store ptr %i.ey, ptr %5, align 8, !tbaa !166
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.fh, align 8, !tbaa !167
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %0, ptr %i.fi, align 8, !tbaa !168
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.fd, ptr %i.fj, align 8, !tbaa !169
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 360 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, i8 0, i64 16, i1 false)
  %i.fl = call fastcc i32 @load_truetype_glyph(ptr noundef %5, i32 noundef %2, i32 noundef 0, i8 noundef zeroext 1) ; 0 uses
  %i.fm = load ptr, ptr %5, align 8, !tbaa !166
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 184
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !170
  call void @FT_List_Finalize(ptr noundef nonnull %i.fk, ptr noundef null, ptr noundef %i.fo, ptr noundef null) #22
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !171 ; 2 uses
  %i.fr = sext i32 %i.fq to i64                   ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.fr, ptr %i.fs, align 8, !tbaa !172
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 308
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !173 ; 2 uses
  %i.fv = sext i32 %i.fu to i64                   ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !174
  %i.fx = getelementptr inbounds nuw i8, ptr %i.l, i64 1344
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !175
  %i.fz = icmp eq i32 %i.fy, 3
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 60
  %i.gb = load i16, ptr %i.ga, align 4
  %i.gc = icmp sgt i16 %i.gb, 0
  %or.cond.i = select i1 %i.fz, i1 %i.gc, i1 false
  br i1 %or.cond.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ge = load i64, ptr %i.gd, align 8
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 304
  %i.gh = load i32, ptr %i.gg, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.gj = load i32, ptr %i.gi, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.gl = load i64, ptr %i.gk, align 8
  %i.gm = trunc i64 %i.gl to i32
  %.0142.i = select i1 %.not27.i.i, i32 %i.gj, i32 %i.gf
  %.0141.i = select i1 %.not27.i.i, i32 %i.gm, i32 %i.gh
  %8 = sext i32 %.0142.i to i64
  %sext209.i = shl i64 %6, 32
  %9 = ashr exact i64 %sext209.i, 32
  %10 = mul nsw i64 %9, %8                        ; 2 uses
  %11 = ashr i64 %10, 63
  %12 = add nsw i64 %10, 32768
  %13 = add nsw i64 %12, %11
  %14 = lshr i64 %13, 16
  %15 = trunc i64 %14 to i32
  %16 = ashr i32 %15, 6
  %17 = load i32, ptr %i.eu, align 8, !tbaa !149
  %18 = add nsw i32 %16, %17
  store i32 %18, ptr %i.eu, align 8, !tbaa !149
  %19 = sext i32 %.0141.i to i64
  %sext210.i = shl i64 %i.as, 32
  %20 = ashr exact i64 %sext210.i, 32
  %21 = mul nsw i64 %20, %19                      ; 2 uses
  %22 = ashr i64 %21, 63
  %23 = add nsw i64 %21, 32768
  %24 = add nsw i64 %23, %22
  %25 = lshr i64 %24, 16
  %26 = trunc i64 %25 to i32
  %27 = ashr i32 %26, 6
  %28 = load i32, ptr %i.ev, align 4, !tbaa !150
  %29 = add nsw i32 %27, %28
  store i32 %29, ptr %i.ev, align 4, !tbaa !150
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.gn = load i64, ptr %i.ec, align 8, !tbaa !143
  %.not158.i = icmp ne i64 %i.gn, 0
  %.not159.i = icmp eq i32 %i.fq, 0
  %or.cond197.i = select i1 %.not158.i, i1 true, i1 %.not159.i
  br i1 %or.cond197.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %sext211.i = shl i64 %6, 32
  %i.go = ashr exact i64 %sext211.i, 32
  %i.gp = mul nsw i64 %i.go, %i.fr                ; 2 uses
  %i.gq = ashr i64 %i.gp, 63
  %i.gr = add nsw i64 %i.gp, 32768
  %i.gs = add nsw i64 %i.gr, %i.gq
  %i.gt = shl i64 %i.gs, 16
  %i.gu = ashr i64 %i.gt, 32
  store i64 %i.gu, ptr %i.ec, align 8, !tbaa !143
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.gv = load i64, ptr %i.er, align 8, !tbaa !146
  %.not160.i = icmp ne i64 %i.gv, 0
  %.not161.i = icmp eq i32 %i.fu, 0
  %or.cond198.i = select i1 %.not160.i, i1 true, i1 %.not161.i
  br i1 %or.cond198.i, label %TT_Load_Glyph.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %sext213.i = shl i64 %i.as, 32
  %i.gw = ashr exact i64 %sext213.i, 32
  %i.gx = mul nsw i64 %i.gw, %i.fv                ; 2 uses
  %i.gy = ashr i64 %i.gx, 63
  %i.gz = add nsw i64 %i.gx, 32768
  %i.ha = add nsw i64 %i.gz, %i.gy
  %i.hb = shl i64 %i.ha, 16
  %i.hc = ashr i64 %i.hb, 32
  store i64 %i.hc, ptr %i.er, align 8, !tbaa !146
  br label %TT_Load_Glyph.exit

bb.y:                                             ; preds = %bb.q, %bb.m, %bb.k, %bb.j, %bb.i
  %i.hd = and i32 %.2, 16384
  %.not165.i = icmp eq i32 %i.hd, 0
  br i1 %.not165.i, label %bb.z, label %TT_Load_Glyph.exit

bb.z:                                             ; preds = %bb.y
  %i.he = and i32 %.2, 1
  %.not166.i = icmp eq i32 %i.he, 0               ; 2 uses
  br i1 %.not166.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.hg = load i8, ptr %i.hf, align 8, !tbaa !116
  %.not167.i = icmp eq i8 %i.hg, 0
  br i1 %.not167.i, label %TT_Load_Glyph.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.hh = and i32 %.2, 17825792
  %or.cond180.not.i = icmp eq i32 %i.hh, 1048576
  br i1 %or.cond180.not.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.hi = getelementptr inbounds nuw i8, ptr %i.l, i64 1480
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !176
  %.not169.i = icmp eq ptr %i.hj, null
  br i1 %.not169.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hk = getelementptr inbounds nuw i8, ptr %i.l, i64 880
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !91 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 360
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !177
  %i.ho = call i32 %i.hn(ptr noundef nonnull %0, i32 noundef %2) #22, !inline_history !178
  %.not170.not.i = icmp eq i32 %i.ho, 0
  br i1 %.not170.not.i, label %.thread186.i, label %bb.ae

.thread186.i:                                     ; preds = %bb.ad
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !131
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1398163232, ptr %i.ht, align 8, !tbaa !147
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 320 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !137
  call void %i.hv(ptr noundef nonnull %i.l, i8 noundef zeroext 0, i32 noundef %2, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i) #22, !inline_history !178
  %i.hw = load ptr, ptr %i.hu, align 8, !tbaa !137
  call void %i.hw(ptr noundef nonnull %i.l, i8 noundef zeroext 1, i32 noundef %2, ptr noundef nonnull %i.h, ptr noundef nonnull %i.j) #22, !inline_history !178
  %i.hx = load i16, ptr %i.i, align 2, !tbaa !135
  %i.hy = zext i16 %i.hx to i64                   ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !172
  %i.ia = load i16, ptr %i.j, align 2, !tbaa !135
  %i.ib = zext i16 %i.ia to i64                   ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ib, ptr %i.ic, align 8, !tbaa !174
  %sext.i = shl i64 %i.hq, 32
  %i.id = ashr exact i64 %sext.i, 32
  %i.ie = mul nsw i64 %i.id, %i.hy                ; 2 uses
  %i.if = ashr i64 %i.ie, 63
  %i.ig = add nsw i64 %i.ie, 32768
  %i.ih = add nsw i64 %i.ig, %i.if
  %i.ii = ashr i64 %i.ih, 16
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ii, ptr %i.ij, align 8, !tbaa !143
  %sext200.i = shl i64 %i.hs, 32
  %i.ik = ashr exact i64 %sext200.i, 32
  %i.il = mul nsw i64 %i.ik, %i.ib                ; 2 uses
  %i.im = ashr i64 %i.il, 63
  %i.in = add nsw i64 %i.il, 32768
  %i.io = add nsw i64 %i.in, %i.im
  %i.ip = ashr i64 %i.io, 16
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.ip, ptr %i.iq, align 8, !tbaa !146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  br label %TT_Load_Glyph.exit

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.ir = and i32 %.2, 8388608
  %.not171.i = icmp eq i32 %i.ir, 0
  br i1 %.not171.i, label %bb.af, label %TT_Load_Glyph.exit

bb.af:                                            ; preds = %bb.ae
  %i.is = load ptr, ptr %i.k, align 8, !tbaa !127 ; 6 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 192
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !46
  %i.iv = and i32 %.2, 128
  %i.iw = icmp ne i32 %i.iv, 0
  %i.ix = zext i1 %i.iw to i8                     ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.is, i64 176
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %5, i8 0, i64 384, i1 false)
  br i1 %.not40, label %bb.ag, label %bb.bs

bb.ag:                                            ; preds = %bb.af
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !103 ; 4 uses
  %i.jc = icmp slt i32 %i.jb, 0
  br i1 %i.jc, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 548
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !115 ; 3 uses
  %i.jf = icmp slt i32 %i.je, 0
  br i1 %i.jf, label %bb.av, label %bb.ax

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.jg = load ptr, ptr %1, align 8, !tbaa !179   ; 8 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 184
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !170 ; 9 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !180
  call void @ft_mem_free(ptr noundef %i.ji, ptr noundef %i.jk) #22
  store ptr null, ptr %i.jj, align 8, !tbaa !180
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 3 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !181
  call void @ft_mem_free(ptr noundef %i.ji, ptr noundef %i.jm) #22
  store ptr null, ptr %i.jl, align 8, !tbaa !181
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 3 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !182
  call void @ft_mem_free(ptr noundef %i.ji, ptr noundef %i.jo) #22
  store ptr null, ptr %i.jn, align 8, !tbaa !182
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 3 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !183
  call void @ft_mem_free(ptr noundef %i.ji, ptr noundef %i.jq) #22
  store ptr null, ptr %i.jp, align 8, !tbaa !183
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !184 ; 16 uses
  %.not.i.i.i.i = icmp eq ptr %i.js, null
  br i1 %.not.i.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !185 ; 6 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 784
  store i16 0, ptr %i.jv, align 8, !tbaa !188
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 786
  store i16 0, ptr %i.jw, align 2, !tbaa !189
  %i.jx = getelementptr inbounds nuw i8, ptr %i.js, i64 48
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !190
  call void @ft_mem_free(ptr noundef %i.ju, ptr noundef %i.jy) #22
  %i.jz = getelementptr inbounds nuw i8, ptr %i.js, i64 40
  %i.ka = getelementptr inbounds nuw i8, ptr %i.js, i64 704
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jz, i8 0, i64 16, i1 false)
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !191
  call void @ft_mem_free(ptr noundef %i.ju, ptr noundef %i.kb) #22
  %i.kc = getelementptr inbounds nuw i8, ptr %i.js, i64 696
  %i.kd = getelementptr inbounds nuw i8, ptr %i.js, i64 864 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kc, i8 0, i64 16, i1 false)
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !192
  call void @ft_mem_free(ptr noundef %i.ju, ptr noundef %i.ke) #22
  store ptr null, ptr %i.kd, align 8, !tbaa !192
  %i.kf = getelementptr inbounds nuw i8, ptr %i.js, i64 856
  store i16 0, ptr %i.kf, align 8, !tbaa !193
  %i.kg = getelementptr inbounds nuw i8, ptr %i.js, i64 776
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !194
  call void @ft_mem_free(ptr noundef %i.ju, ptr noundef %i.kh) #22
  %i.ki = getelementptr inbounds nuw i8, ptr %i.js, i64 768
  %i.kj = getelementptr inbounds nuw i8, ptr %i.js, i64 720 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ki, i8 0, i64 16, i1 false)
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !195
  call void @ft_mem_free(ptr noundef %i.ju, ptr noundef %i.kk) #22
  store ptr null, ptr %i.kj, align 8, !tbaa !195
  %i.kl = getelementptr inbounds nuw i8, ptr %i.js, i64 712
  store i32 0, ptr %i.kl, align 8, !tbaa !196
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.js, i8 0, i64 16, i1 false)
  call void @ft_mem_free(ptr noundef %i.ju, ptr noundef nonnull %i.js) #22
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 3 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !197 ; 6 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.kn, null
  br i1 %.not.i.i.i.i.i, label %tt_glyphzone_done.exit.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !198
  call void @ft_mem_free(ptr noundef nonnull %i.kn, ptr noundef %i.kp) #22
  store ptr null, ptr %i.ko, align 8, !tbaa !198
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !199
  call void @ft_mem_free(ptr noundef nonnull %i.kn, ptr noundef %i.kr) #22
  store ptr null, ptr %i.kq, align 8, !tbaa !199
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !200
  call void @ft_mem_free(ptr noundef nonnull %i.kn, ptr noundef %i.kt) #22
  store ptr null, ptr %i.ks, align 8, !tbaa !200
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 488 ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !201
  call void @ft_mem_free(ptr noundef nonnull %i.kn, ptr noundef %i.kv) #22
  store ptr null, ptr %i.ku, align 8, !tbaa !201
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !202
  call void @ft_mem_free(ptr noundef nonnull %i.kn, ptr noundef %i.kx) #22
  store ptr null, ptr %i.kw, align 8, !tbaa !202
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.km, i8 0, i64 16, i1 false)
  br label %tt_glyphzone_done.exit.i.i.i.i

tt_glyphzone_done.exit.i.i.i.i:                   ; preds = %bb.al, %bb.ak
  store i32 -1, ptr %i.ja, align 8, !tbaa !103
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 548
  store i32 -1, ptr %i.ky, align 4, !tbaa !115
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jg, i64 176 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !203 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %.not.i78.i.i.i.i = icmp eq ptr %i.la, null
  br i1 %.not.i78.i.i.i.i, label %TT_New_Context.exit.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %tt_glyphzone_done.exit.i.i.i.i
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !204 ; 4 uses
  %i.ld = call ptr @ft_mem_alloc(ptr noundef %i.lc, i64 noundef 1136, ptr noundef nonnull %i.a) #22 ; 6 uses
  %i.le = load i32, ptr %i.a, align 4, !tbaa !3
  %.not13.i.i.i.i.i = icmp eq i32 %i.le, 0
  br i1 %.not13.i.i.i.i.i, label %bb.an, label %TT_New_Context.exit.i.i.i.i

bb.an:                                            ; preds = %bb.am
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  store ptr %i.lc, ptr %i.lf, align 8, !tbaa !185
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 772
  store i32 32, ptr %i.lg, align 4, !tbaa !205
  %i.lh = call ptr @ft_mem_qrealloc(ptr noundef %i.lc, i64 noundef 32, i64 noundef 0, i64 noundef 32, ptr noundef null, ptr noundef nonnull %i.a) #22
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 776
  store ptr %i.lh, ptr %i.li, align 8, !tbaa !194
  %i.lj = load i32, ptr %i.a, align 4, !tbaa !3
  %.not14.i.i.i.i.i = icmp eq i32 %i.lj, 0
  br i1 %.not14.i.i.i.i.i, label %TT_New_Context.exit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @ft_mem_free(ptr noundef %i.lc, ptr noundef nonnull %i.ld) #22
  br label %TT_New_Context.exit.i.i.i.i

end_hunk_0
begin_hunk_1_@TT_Forget_Glyph_Frame:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169
  tail call void @FT_Stream_ExitFrame(ptr noundef %i.b) #22
  ret void
}

declare hidden i32 @FT_GlyphLoader_CheckSubGlyphs(ptr noundef, i32 noundef) local_unnamed_addr #4

declare hidden i32 @FT_GlyphLoader_CreateExtra(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #20

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 120}
!8 = !{!"TT_DriverRec_", !9, i64 0, !19, i64 56, !4, i64 120}
!9 = !{!"FT_DriverRec_", !10, i64 0, !15, i64 24, !16, i64 32, !18, i64 48}
!10 = !{!"FT_ModuleRec_", !11, i64 0, !13, i64 8, !14, i64 16}
!11 = !{!"p1 _ZTS16FT_Module_Class_", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTS14FT_LibraryRec_", !12, i64 0}
!14 = !{!"p1 _ZTS13FT_MemoryRec_", !12, i64 0}
!15 = !{!"p1 _ZTS19FT_Driver_ClassRec_", !12, i64 0}
!16 = !{!"FT_ListRec_", !17, i64 0, !17, i64 8}
!17 = !{!"p1 _ZTS15FT_ListNodeRec_", !12, i64 0}
!18 = !{!"p1 _ZTS18FT_GlyphLoaderRec_", !12, i64 0}
!19 = !{!"TT_GlyphZoneRec_", !14, i64 0, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14, !21, i64 16, !21, i64 24, !21, i64 32, !22, i64 40, !23, i64 48, !20, i64 56}
!20 = !{!"short", !5, i64 0}
!21 = !{!"p1 _ZTS10FT_Vector_", !12, i64 0}
!22 = !{!"p1 omnipotent char", !12, i64 0}
!23 = !{!"p1 short", !12, i64 0}
!24 = !{!10, !13, i64 8}
!25 = !{!10, !11, i64 0}
!26 = !{!27, !12, i64 40}
!27 = !{!"FT_Module_Class_", !28, i64 0, !28, i64 8, !22, i64 16, !28, i64 24, !28, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64}
!28 = !{!"long", !5, i64 0}
!29 = !{!30, !12, i64 32}
!30 = !{!"SFNT_Interface_", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !12, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !12, i64 360}
!31 = !{!32, !41, i64 176}
!32 = !{!"FT_FaceRec_", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !22, i64 40, !22, i64 48, !4, i64 56, !33, i64 64, !4, i64 72, !34, i64 80, !36, i64 88, !37, i64 104, !20, i64 136, !20, i64 138, !20, i64 140, !20, i64 142, !20, i64 144, !20, i64 146, !20, i64 148, !20, i64 150, !38, i64 152, !39, i64 160, !40, i64 168, !41, i64 176, !14, i64 184, !42, i64 192, !16, i64 200, !36, i64 216, !12, i64 232, !43, i64 240}
!33 = !{!"p1 _ZTS15FT_Bitmap_Size_", !12, i64 0}
!34 = !{!"p2 _ZTS14FT_CharMapRec_", !35, i64 0}
!35 = !{!"any p2 pointer", !12, i64 0}
!36 = !{!"FT_Generic_", !12, i64 0, !12, i64 8}
!37 = !{!"FT_BBox_", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24}
!38 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !12, i64 0}
!39 = !{!"p1 _ZTS11FT_SizeRec_", !12, i64 0}
!40 = !{!"p1 _ZTS14FT_CharMapRec_", !12, i64 0}
!41 = !{!"p1 _ZTS13FT_DriverRec_", !12, i64 0}
!42 = !{!"p1 _ZTS13FT_StreamRec_", !12, i64 0}
!43 = !{!"p1 _ZTS20FT_Face_InternalRec_", !12, i64 0}
!44 = !{!9, !13, i64 8}
!45 = !{!30, !12, i64 8}
!46 = !{!47, !42, i64 192}
!47 = !{!"TT_FaceRec_", !32, i64 0, !48, i64 248, !28, i64 280, !20, i64 288, !50, i64 296, !51, i64 304, !52, i64 400, !53, i64 456, !5, i64 496, !54, i64 504, !20, i64 560, !55, i64 568, !58, i64 616, !59, i64 752, !22, i64 816, !28, i64 824, !12, i64 832, !12, i64 840, !12, i64 848, !12, i64 856, !12, i64 864, !12, i64 872, !12, i64 880, !12, i64 888, !12, i64 896, !12, i64 904, !12, i64 912, !12, i64 920, !60, i64 928, !62, i64 944, !28, i64 1008, !63, i64 1016, !64, i64 1024, !66, i64 1048, !20, i64 1088, !67, i64 1096, !5, i64 1104, !68, i64 1105, !28, i64 1112, !22, i64 1120, !28, i64 1128, !22, i64 1136, !28, i64 1144, !69, i64 1152, !12, i64 1160, !36, i64 1168, !22, i64 1184, !28, i64 1192, !28, i64 1200, !5, i64 1208, !5, i64 1209, !70, i64 1216, !4, i64 1224, !22, i64 1232, !4, i64 1240, !4, i64 1244, !22, i64 1248, !28, i64 1256, !28, i64 1264, !28, i64 1272, !22, i64 1280, !22, i64 1288, !28, i64 1296, !4, i64 1304, !28, i64 1312, !65, i64 1320, !22, i64 1328, !28, i64 1336, !4, i64 1344, !4, i64 1348, !69, i64 1352, !22, i64 1360, !28, i64 1368, !4, i64 1376, !4, i64 1380, !4, i64 1384, !71, i64 1392, !28, i64 1432, !28, i64 1440, !28, i64 1448, !28, i64 1456, !12, i64 1464, !12, i64 1472, !12, i64 1480}
!48 = !{!"TTC_HeaderRec_", !28, i64 0, !28, i64 8, !28, i64 16, !49, i64 24}
!49 = !{!"p1 long", !12, i64 0}
!50 = !{!"p1 _ZTS12TT_TableRec_", !12, i64 0}
!51 = !{!"TT_Header_", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !20, i64 32, !20, i64 34, !5, i64 40, !5, i64 56, !20, i64 72, !20, i64 74, !20, i64 76, !20, i64 78, !20, i64 80, !20, i64 82, !20, i64 84, !20, i64 86, !20, i64 88}
!52 = !{!"TT_HoriHeader_", !28, i64 0, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14, !20, i64 16, !20, i64 18, !20, i64 20, !20, i64 22, !20, i64 24, !20, i64 26, !5, i64 28, !20, i64 36, !20, i64 38, !12, i64 40, !12, i64 48}
!53 = !{!"TT_MaxProfile_", !28, i64 0, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14, !20, i64 16, !20, i64 18, !20, i64 20, !20, i64 22, !20, i64 24, !20, i64 26, !20, i64 28, !20, i64 30, !20, i64 32, !20, i64 34}
!54 = !{!"TT_VertHeader_", !28, i64 0, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14, !20, i64 16, !20, i64 18, !20, i64 20, !20, i64 22, !20, i64 24, !20, i64 26, !5, i64 28, !20, i64 36, !20, i64 38, !12, i64 40, !12, i64 48}
!55 = !{!"TT_NameTableRec_", !20, i64 0, !4, i64 4, !4, i64 8, !56, i64 16, !4, i64 24, !57, i64 32, !42, i64 40}
!56 = !{!"p1 _ZTS11TT_NameRec_", !12, i64 0}
!57 = !{!"p1 _ZTS14TT_LangTagRec_", !12, i64 0}
!58 = !{!"TT_OS2_", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14, !20, i64 16, !20, i64 18, !20, i64 20, !20, i64 22, !20, i64 24, !20, i64 26, !20, i64 28, !20, i64 30, !5, i64 32, !28, i64 48, !28, i64 56, !28, i64 64, !28, i64 72, !5, i64 80, !20, i64 84, !20, i64 86, !20, i64 88, !20, i64 90, !20, i64 92, !20, i64 94, !20, i64 96, !20, i64 98, !28, i64 104, !28, i64 112, !20, i64 120, !20, i64 122, !20, i64 124, !20, i64 126, !20, i64 128, !20, i64 130, !20, i64 132}
!59 = !{!"TT_Postscript_", !28, i64 0, !28, i64 8, !20, i64 16, !20, i64 18, !28, i64 24, !28, i64 32, !28, i64 40, !28, i64 48, !28, i64 56}
!60 = !{!"TT_Gasp_", !20, i64 0, !20, i64 2, !61, i64 8}
!61 = !{!"p1 _ZTS16TT_GaspRangeRec_", !12, i64 0}
!62 = !{!"TT_PCLT_", !28, i64 0, !28, i64 8, !20, i64 16, !20, i64 18, !20, i64 20, !20, i64 22, !20, i64 24, !20, i64 26, !5, i64 28, !5, i64 44, !5, i64 52, !5, i64 58, !5, i64 59, !5, i64 60, !5, i64 61}
!63 = !{!"p1 _ZTS17TT_SBit_ScaleRec_", !12, i64 0}
!64 = !{!"TT_Post_NamesRec_", !5, i64 0, !20, i64 2, !20, i64 4, !23, i64 8, !65, i64 16}
!65 = !{!"p2 omnipotent char", !35, i64 0}
!66 = !{!"FT_Palette_Data_", !20, i64 0, !23, i64 8, !23, i64 16, !20, i64 24, !23, i64 32}
!67 = !{!"p1 _ZTS9FT_Color_", !12, i64 0}
!68 = !{!"FT_Color_", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!69 = !{!"p1 int", !12, i64 0}
!70 = !{!"p1 _ZTS12GX_BlendRec_", !12, i64 0}
!71 = !{!"TT_BDFRec_", !22, i64 0, !22, i64 8, !22, i64 16, !28, i64 24, !4, i64 32, !5, i64 36}
!72 = !{!47, !28, i64 280}
!73 = !{!32, !28, i64 16}
!74 = !{!30, !12, i64 16}
!75 = !{!32, !43, i64 240}
!76 = !{!77, !81, i64 104}
!77 = !{!"FT_Face_InternalRec_", !78, i64 0, !79, i64 32, !4, i64 48, !80, i64 56, !81, i64 104, !5, i64 112, !4, i64 116, !4, i64 120}
!78 = !{!"FT_Matrix_", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24}
!79 = !{!"FT_Vector_", !28, i64 0, !28, i64 8}
!80 = !{!"FT_ServiceCacheRec_", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!81 = !{!"p1 _ZTS28FT_Incremental_InterfaceRec_", !12, i64 0}
!82 = !{!32, !4, i64 56}
!83 = !{!47, !22, i64 1280}
!84 = !{!47, !12, i64 840}
!85 = !{!47, !12, i64 856}
!86 = !{!47, !12, i64 864}
!87 = !{!47, !12, i64 872}
!88 = !{!47, !12, i64 848}
!89 = !{!32, !14, i64 184}
!90 = !{!32, !42, i64 192}
!91 = !{!47, !12, i64 880}
!92 = !{!47, !12, i64 1176}
!93 = !{!47, !12, i64 1168}
!94 = !{!30, !12, i64 24}
!95 = !{!47, !28, i64 1272}
!96 = !{!97, !14, i64 56}
!97 = !{!"FT_StreamRec_", !22, i64 0, !28, i64 8, !28, i64 16, !5, i64 24, !5, i64 32, !12, i64 40, !12, i64 48, !14, i64 56, !22, i64 64, !22, i64 72}
!98 = !{!47, !65, i64 1320}
!99 = !{!47, !69, i64 1152}
!100 = !{!47, !28, i64 1112}
!101 = !{!47, !28, i64 1128}
!102 = !{!47, !70, i64 1216}
!103 = !{!104, !4, i64 544}
!104 = !{!"TT_SizeRec_", !105, i64 0, !109, i64 88, !107, i64 96, !110, i64 152, !22, i64 232, !28, i64 240, !28, i64 248, !4, i64 256, !4, i64 260, !111, i64 264, !4, i64 272, !4, i64 276, !111, i64 280, !4, i64 288, !4, i64 292, !5, i64 296, !112, i64 344, !28, i64 440, !49, i64 448, !20, i64 456, !49, i64 464, !19, i64 472, !114, i64 536, !4, i64 544, !4, i64 548}
!105 = !{!"FT_SizeRec_", !106, i64 0, !36, i64 8, !107, i64 24, !108, i64 80}
!106 = !{!"p1 _ZTS11FT_FaceRec_", !12, i64 0}
!107 = !{!"FT_Size_Metrics_", !20, i64 0, !20, i64 2, !28, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !28, i64 48}
!108 = !{!"p1 _ZTS20FT_Size_InternalRec_", !12, i64 0}
!109 = !{!"p1 _ZTS16FT_Size_Metrics_", !12, i64 0}
!110 = !{!"TT_Size_Metrics_", !28, i64 0, !28, i64 8, !20, i64 16, !28, i64 24, !28, i64 32, !5, i64 40, !5, i64 72, !5, i64 73, !5, i64 74}
!111 = !{!"p1 _ZTS13TT_DefRecord_", !12, i64 0}
!112 = !{!"TT_GraphicsState_", !20, i64 0, !20, i64 2, !20, i64 4, !113, i64 6, !113, i64 10, !113, i64 14, !28, i64 24, !28, i64 32, !4, i64 40, !5, i64 44, !28, i64 48, !28, i64 56, !28, i64 64, !20, i64 72, !20, i64 74, !5, i64 76, !5, i64 77, !4, i64 80, !20, i64 84, !20, i64 86, !20, i64 88}
!113 = !{!"FT_UnitVector_", !20, i64 0, !20, i64 2}
!114 = !{!"p1 _ZTS18TT_ExecContextRec_", !12, i64 0}
!115 = !{!104, !4, i64 548}
!116 = !{!104, !5, i64 224}
!117 = !{!104, !28, i64 240}
!118 = !{!119, !124, i64 296}
!119 = !{!"FT_GlyphSlotRec_", !13, i64 0, !106, i64 8, !38, i64 16, !4, i64 24, !36, i64 32, !120, i64 48, !28, i64 112, !28, i64 120, !79, i64 128, !4, i64 144, !121, i64 152, !4, i64 192, !4, i64 196, !122, i64 200, !4, i64 240, !123, i64 248, !12, i64 256, !28, i64 264, !28, i64 272, !28, i64 280, !12, i64 288, !124, i64 296}
!120 = !{!"FT_Glyph_Metrics_", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !28, i64 48, !28, i64 56}
!121 = !{!"FT_Bitmap_", !4, i64 0, !4, i64 4, !4, i64 8, !22, i64 16, !20, i64 24, !5, i64 26, !5, i64 27, !12, i64 32}
!122 = !{!"FT_Outline_", !20, i64 0, !20, i64 2, !21, i64 8, !22, i64 16, !23, i64 24, !4, i64 32}
!123 = !{!"p1 _ZTS15FT_SubGlyphRec_", !12, i64 0}
!124 = !{!"p1 _ZTS20FT_Slot_InternalRec_", !12, i64 0}
!125 = !{!126, !18, i64 0}
!126 = !{!"FT_Slot_InternalRec_", !18, i64 0, !4, i64 8, !5, i64 12, !78, i64 16, !79, i64 48, !12, i64 64, !4, i64 72}
!127 = !{!119, !106, i64 8}
!128 = !{!32, !28, i64 32}
!129 = !{!104, !109, i64 88}
!130 = !{!32, !28, i64 8}
!131 = !{!104, !28, i64 32}
!132 = !{!104, !28, i64 40}
!133 = !{!30, !12, i64 144}
!134 = distinct !{null, null}
!135 = !{!20, !20, i64 0}
!136 = !{!47, !28, i64 1256}
!137 = !{!30, !12, i64 320}
!138 = distinct !{null, null}
!139 = !{!119, !20, i64 202}
!140 = !{!119, !20, i64 200}
!141 = !{!119, !28, i64 64}
!142 = !{!119, !28, i64 72}
!143 = !{!119, !28, i64 80}
!144 = !{!119, !28, i64 88}
!145 = !{!119, !28, i64 96}
!146 = !{!119, !28, i64 104}
!147 = !{!119, !4, i64 144}
!148 = !{!119, !5, i64 178}
!149 = !{!119, !4, i64 192}
!150 = !{!119, !4, i64 196}
!151 = !{!152, !20, i64 2}
!152 = !{!"TT_SBit_MetricsRec_", !20, i64 0, !20, i64 2, !20, i64 4, !20, i64 6, !20, i64 8, !20, i64 10, !20, i64 12, !20, i64 14}
!153 = !{!119, !28, i64 48}
!154 = !{!152, !20, i64 0}
!155 = !{!119, !28, i64 56}
!156 = !{!152, !20, i64 4}
!157 = !{!152, !20, i64 6}
!158 = !{!152, !20, i64 8}
!159 = !{!152, !20, i64 10}
!160 = !{!152, !20, i64 12}
!161 = !{!152, !20, i64 14}
!162 = !{!163, !28, i64 32}
!163 = !{!"TT_LoaderRec_", !164, i64 0, !165, i64 8, !38, i64 16, !18, i64 24, !28, i64 32, !4, i64 40, !42, i64 48, !4, i64 56, !20, i64 60, !37, i64 64, !4, i64 96, !4, i64 100, !4, i64 104, !5, i64 108, !79, i64 112, !79, i64 128, !19, i64 144, !19, i64 208, !114, i64 272, !22, i64 280, !28, i64 288, !12, i64 296, !4, i64 304, !4, i64 308, !79, i64 312, !79, i64 328, !22, i64 344, !22, i64 352, !16, i64 360, !22, i64 376}
!164 = !{!"p1 _ZTS11TT_FaceRec_", !12, i64 0}
!165 = !{!"p1 _ZTS11TT_SizeRec_", !12, i64 0}
!166 = !{!163, !164, i64 0}
!167 = !{!163, !165, i64 8}
!168 = !{!163, !38, i64 16}
!169 = !{!163, !42, i64 48}
!170 = !{!47, !14, i64 184}
!171 = !{!163, !4, i64 104}
!172 = !{!119, !28, i64 112}
!173 = !{!163, !4, i64 308}
!174 = !{!119, !28, i64 120}
!175 = !{!47, !4, i64 1344}
!176 = !{!47, !12, i64 1480}
!177 = !{!30, !12, i64 360}
!178 = distinct !{null}
!179 = !{!105, !106, i64 0}
!180 = !{!104, !111, i64 264}
!181 = !{!104, !111, i64 280}
!182 = !{!104, !49, i64 448}
!183 = !{!104, !49, i64 464}
!184 = !{!104, !114, i64 536}
!185 = !{!186, !14, i64 16}
!186 = !{!"TT_ExecContextRec_", !164, i64 0, !165, i64 8, !14, i64 16, !4, i64 24, !28, i64 32, !28, i64 40, !49, i64 48, !28, i64 56, !28, i64 64, !19, i64 72, !19, i64 136, !19, i64 200, !19, i64 264, !19, i64 328, !28, i64 392, !107, i64 400, !110, i64 456, !112, i64 536, !4, i64 632, !4, i64 636, !22, i64 640, !28, i64 648, !28, i64 656, !5, i64 664, !4, i64 668, !5, i64 672, !28, i64 680, !49, i64 688, !28, i64 696, !49, i64 704, !4, i64 712, !22, i64 720, !4, i64 728, !4, i64 732, !111, i64 736, !4, i64 744, !4, i64 748, !111, i64 752, !4, i64 760, !4, i64 764, !4, i64 768, !4, i64 772, !187, i64 776, !20, i64 784, !20, i64 786, !5, i64 792, !20, i64 840, !49, i64 848, !20, i64 856, !49, i64 864, !28, i64 872, !28, i64 880, !28, i64 888, !5, i64 896, !112, i64 904, !5, i64 1000, !5, i64 1001, !28, i64 1008, !12, i64 1016, !12, i64 1024, !12, i64 1032, !12, i64 1040, !12, i64 1048, !12, i64 1056, !12, i64 1064, !12, i64 1072, !12, i64 1080, !12, i64 1088, !5, i64 1096, !5, i64 1097, !5, i64 1098, !5, i64 1099, !5, i64 1100, !5, i64 1101, !5, i64 1102, !28, i64 1104, !28, i64 1112, !28, i64 1120, !28, i64 1128}
!187 = !{!"p1 _ZTS11TT_CallRec_", !12, i64 0}
!188 = !{!186, !20, i64 784}
!189 = !{!186, !20, i64 786}
!190 = !{!186, !49, i64 48}
!191 = !{!186, !49, i64 704}
!192 = !{!186, !49, i64 864}
!193 = !{!186, !20, i64 856}
!194 = !{!186, !187, i64 776}
!195 = !{!186, !22, i64 720}
!196 = !{!186, !4, i64 712}
!197 = !{!19, !14, i64 0}
!198 = !{!19, !23, i64 48}
!199 = !{!19, !22, i64 40}
!200 = !{!19, !21, i64 24}
!201 = !{!19, !21, i64 16}
!202 = !{!19, !21, i64 32}
!203 = !{!47, !41, i64 176}
!204 = !{!8, !14, i64 16}
!205 = !{!186, !4, i64 772}
!206 = !{!53, !20, i64 24}
!207 = !{!104, !4, i64 260}
!208 = !{!53, !20, i64 26}
!209 = !{!104, !4, i64 276}
!210 = !{!104, !4, i64 256}
!211 = !{!104, !4, i64 272}
!212 = !{!104, !4, i64 288}
!213 = !{!104, !4, i64 292}
!214 = !{!47, !28, i64 1144}
!215 = !{!104, !28, i64 440}
!216 = !{!53, !20, i64 22}
!217 = !{!104, !20, i64 456}
!218 = !{!110, !5, i64 73}
!219 = !{!110, !5, i64 74}
!220 = !{!53, !20, i64 20}
!221 = !{!104, !20, i64 484}
!222 = !{i64 0, i64 2, !135, i64 2, i64 2, !135, i64 4, i64 2, !135, i64 6, i64 2, !135, i64 8, i64 2, !135, i64 10, i64 2, !135, i64 12, i64 2, !135, i64 14, i64 2, !135, i64 16, i64 2, !135, i64 24, i64 8, !223, i64 32, i64 8, !223, i64 40, i64 4, !3, i64 44, i64 1, !224, i64 48, i64 8, !223, i64 56, i64 8, !223, i64 64, i64 8, !223, i64 72, i64 2, !135, i64 74, i64 2, !135, i64 76, i64 1, !224, i64 77, i64 1, !224, i64 80, i64 4, !3, i64 84, i64 2, !135, i64 86, i64 2, !135, i64 88, i64 2, !135}
!223 = !{!28, !28, i64 0}
!224 = !{!5, !5, i64 0}
!225 = !{!12, !12, i64 0}
!226 = !{!47, !12, i64 1160}
!227 = !{!104, !21, i64 488}
!228 = !{!104, !21, i64 496}
!229 = !{!186, !5, i64 1098}
!230 = !{!186, !5, i64 1097}
!231 = !{!186, !5, i64 1102}
!232 = !{!186, !5, i64 1096}
!233 = !{!186, !5, i64 612}
!234 = !{!186, !5, i64 1099}
!235 = !{!186, !5, i64 1001}
!236 = !{!163, !114, i64 272}
!237 = !{!163, !22, i64 280}
!238 = !{!47, !28, i64 776}
!239 = !{!104, !22, i64 232}
!240 = !{!163, !22, i64 376}
!241 = !{!163, !18, i64 24}
!242 = !{!119, !4, i64 240}
!243 = !{!119, !4, i64 232}
!244 = !{!245, !4, i64 80}
!245 = !{!"FT_GlyphLoaderRec_", !14, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !5, i64 20, !246, i64 24, !246, i64 96, !12, i64 168}
!246 = !{!"FT_GlyphLoadRec_", !122, i64 0, !21, i64 40, !21, i64 48, !4, i64 56, !123, i64 64}
!247 = !{!245, !123, i64 88}
!248 = !{!119, !123, i64 248}
!249 = !{i64 0, i64 2, !135, i64 2, i64 2, !135, i64 8, i64 8, !250, i64 16, i64 8, !251, i64 24, i64 8, !252, i64 32, i64 4, !3}
!250 = !{!21, !21, i64 0}
!251 = !{!22, !22, i64 0}
!252 = !{!23, !23, i64 0}
!253 = !{!163, !28, i64 112}
!254 = !{!119, !12, i64 256}
!255 = !{!119, !28, i64 264}
!256 = !{!186, !5, i64 613}
!257 = !{!186, !4, i64 616}
!258 = !{!107, !20, i64 2}
!259 = !{!30, !12, i64 168}
!260 = !{!79, !28, i64 0}
!261 = !{!47, !4, i64 1224}
!262 = !{!47, !5, i64 496}
!263 = !{!47, !20, i64 616}
!264 = !{!47, !20, i64 408}
!265 = !{!47, !20, i64 410}
!266 = distinct !{!266, !267, !268, !269}
!267 = !{!"llvm.loop.mustprogress"}
!268 = !{!"llvm.loop.isvectorized", i32 1}
!269 = !{!"llvm.loop.unroll.runtime.disable"}
!270 = distinct !{!270, !267, !269, !268}
!271 = !{!47, !20, i64 706}
!272 = !{!47, !20, i64 708}
!273 = distinct !{!273, !267, !268, !269}
!274 = distinct !{!274, !267, !269, !268}
!275 = !{ptr @TT_Get_VMetrics}
!276 = distinct !{!276, !267, !277}
!277 = !{!"llvm.loop.unswitch.partial.disable"}
!278 = distinct !{null}
!279 = distinct !{!279, !267}
!280 = !{!30, !12, i64 208}
!281 = !{!30, !12, i64 216}
!282 = !{ptr @tt_size_select}
!283 = !{!107, !20, i64 0}
!284 = !{!285, !4, i64 0}
!285 = !{!"FT_Size_RequestRec_", !4, i64 0, !28, i64 8, !28, i64 16, !4, i64 24, !4, i64 28}
!286 = !{!104, !20, i64 168}
!287 = !{!104, !28, i64 248}
!288 = !{!186, !20, i64 276}
!289 = !{!186, !28, i64 680}
!290 = !{!186, !20, i64 340}
!291 = !{!186, !28, i64 1104}
!292 = !{!186, !28, i64 1120}
!293 = !{!186, !28, i64 1112}
!294 = !{!186, !164, i64 0}
!295 = !{!47, !28, i64 32}
!296 = !{!186, !28, i64 1128}
!297 = !{!186, !28, i64 480}
!298 = !{!186, !20, i64 400}
!299 = !{!186, !20, i64 402}
!300 = !{!186, !12, i64 1064}
!301 = !{!186, !12, i64 1072}
!302 = !{!186, !12, i64 1080}
!303 = !{!186, !12, i64 1088}
!304 = !{!186, !4, i64 636}
!305 = !{!186, !4, i64 632}
!306 = !{!186, !20, i64 550}
!307 = !{!186, !20, i64 546}
!308 = !{!186, !28, i64 1008}
!309 = !{!186, !20, i64 552}
!310 = !{!186, !20, i64 548}
!311 = !{!186, !12, i64 1024}
!312 = !{!186, !20, i64 542}
!313 = !{!186, !12, i64 1032}
!314 = !{!186, !20, i64 544}
!315 = !{!186, !12, i64 1048}
!316 = !{!186, !12, i64 1056}
!317 = !{!186, !4, i64 576}
!318 = !{!186, !12, i64 1016}
!319 = !{!186, !5, i64 1100}
!320 = !{!186, !5, i64 1101}
!321 = !{!186, !28, i64 648}
!322 = !{!186, !28, i64 656}
!323 = !{!186, !22, i64 640}
!324 = !{!186, !5, i64 664}
!325 = !{!186, !4, i64 668}
!326 = !{!186, !28, i64 32}
!327 = !{!186, !28, i64 56}
!328 = !{!186, !28, i64 64}
!329 = !{!330, !4, i64 0}
!330 = !{!"GX_BlendRec_", !4, i64 0, !49, i64 8, !49, i64 16, !331, i64 24, !28, i64 32, !49, i64 40, !5, i64 48, !332, i64 56, !5, i64 64, !5, i64 65, !4, i64 68, !333, i64 72, !5, i64 80, !5, i64 81, !4, i64 84, !333, i64 88, !334, i64 96, !4, i64 104, !49, i64 112, !4, i64 120, !49, i64 128, !28, i64 136}
!331 = !{!"p1 _ZTS10FT_MM_Var_", !12, i64 0}
!332 = !{!"p1 _ZTS16GX_AVarTableRec_", !12, i64 0}
end_hunk_1
