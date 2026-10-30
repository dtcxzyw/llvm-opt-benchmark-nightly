Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/animation?download=true
inline.NumInlined: 336
inline.NumDeleted: 171
begin_hunk_0_@_ZN3ozz9animation9Animation8AllocateERKNS1_14AllocateParamsE:_ZN3ozz9fill_spanIfEENS_4spanIT_EERNS1_IhEEm.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %i.bj, ptr %i.bm, align 8, !tbaa !31
  %.idx.i83 = mul i64 %i.bb, 6
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i83 ; 2 uses
  %.sroa.04.0.i85 = select i1 %.not.i62, ptr null, ptr %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %.sroa.04.0.i85, ptr %i.bo, align 8, !tbaa !40
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %i.bb, ptr %i.bp, align 8, !tbaa !41
  %.idx.i89 = mul i64 %i.bf, 6
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx.i89 ; 2 uses
  %.sroa.04.0.i91 = select i1 %.not.i68, ptr null, ptr %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %.sroa.04.0.i91, ptr %i.br, align 8, !tbaa !45
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 %i.bf, ptr %i.bs, align 8, !tbaa !46
  %.idx.i95 = mul i64 %i.bj, 6
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i95 ; 2 uses
  %.sroa.04.0.i97 = select i1 %.not.i75, ptr null, ptr %i.bq
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %.sroa.04.0.i97, ptr %i.bu, align 8, !tbaa !40
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 %i.bj, ptr %i.bv, align 8, !tbaa !41
  %i.bw = zext i1 %.not to i64                    ; 3 uses
  %i.bx = shl i64 %i.bb, %i.bw                    ; 3 uses
  %.not.i101 = icmp eq i64 %i.bx, 0
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bx ; 2 uses
  %.sroa.04.0.i103 = select i1 %.not.i101, ptr null, ptr %i.bt
  store ptr %.sroa.04.0.i103, ptr %i.ao, align 8, !tbaa !27
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.bx, ptr %i.bz, align 8, !tbaa !28
  %i.ca = shl i64 %i.bf, %i.bw                    ; 3 uses
  %.not.i106 = icmp eq i64 %i.ca, 0
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ca ; 2 uses
  %.sroa.04.0.i108 = select i1 %.not.i106, ptr null, ptr %i.by
  store ptr %.sroa.04.0.i108, ptr %i.at, align 8, !tbaa !27
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !28
  %i.cd = shl i64 %i.bj, %i.bw                    ; 3 uses
  %.not.i112 = icmp eq i64 %i.cd, 0
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cd ; 2 uses
  %.sroa.04.0.i114 = select i1 %.not.i112, ptr null, ptr %i.cb
  store ptr %.sroa.04.0.i114, ptr %i.ay, align 8, !tbaa !27
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %i.cd, ptr %i.cf, align 8, !tbaa !28
  %i.cg = load i64, ptr %i.l, align 8, !tbaa !81  ; 3 uses
  %.not.i118 = icmp eq i64 %i.cg, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cg ; 2 uses
  %.sroa.04.0.i120 = select i1 %.not.i118, ptr null, ptr %i.ce
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.04.0.i120, ptr %i.ci, align 8, !tbaa !27
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.cg, ptr %i.cj, align 8, !tbaa !28
  %i.ck = load i64, ptr %i.p, align 8, !tbaa !83  ; 3 uses
  %.not.i124 = icmp eq i64 %i.ck, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck ; 2 uses
  %.sroa.04.0.i126 = select i1 %.not.i124, ptr null, ptr %i.ch
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %.sroa.04.0.i126, ptr %i.cm, align 8, !tbaa !27
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.ck, ptr %i.cn, align 8, !tbaa !28
  %i.co = load i64, ptr %i.t, align 8, !tbaa !85  ; 3 uses
  %.not.i130 = icmp eq i64 %i.co, 0
  %.sroa.04.0.i132 = select i1 %.not.i130, ptr null, ptr %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %.sroa.04.0.i132, ptr %i.cp, align 8, !tbaa !27
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %i.co, ptr %i.cq, align 8, !tbaa !28
  %i.cr = load i64, ptr %1, align 8, !tbaa !55
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.co
  %i.ct = add i64 %i.cr, 1
  %i.cu = icmp ult i64 %i.ct, 2
  %i.cv = select i1 %i.cu, ptr null, ptr %i.cs
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !59
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare noundef ptr @_ZN3ozz6memory17default_allocatorEv() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK3ozz9animation9Animation4sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load i64, ptr %i.i, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load i64, ptr %i.k, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.n = load i64, ptr %i.m, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.p = load i64, ptr %i.o, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.r = load i64, ptr %i.q, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = load i64, ptr %i.s, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.v = load i64, ptr %i.u, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.x = load i64, ptr %i.w, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.z = load i64, ptr %i.y, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !41
  %reass.add = add i64 %i.j, %i.b
  %reass.add1 = add i64 %reass.add, %i.r
  %reass.add2 = add i64 %reass.add1, %i.z
  %reass.mul = shl i64 %reass.add2, 2
  %reass.add3 = add i64 %i.ad, %i.ab
  %reass.add4 = add i64 %reass.add3, %i.af
  %reass.mul5 = mul i64 %reass.add4, 6
  %reass.add6 = add i64 %i.n, %i.f
  %reass.add7 = add i64 %reass.add6, %i.v
  %reass.mul8 = shl i64 %reass.add7, 1
  %i.ag = add i64 %i.d, 304
  %i.ah = add i64 %i.ag, %i.h
  %i.ai = add i64 %i.ah, %i.l
  %i.aj = add i64 %i.ai, %i.p
  %i.ak = add i64 %i.aj, %i.t
  %i.al = add i64 %i.ak, %i.x
  %i.am = add i64 %i.al, %reass.mul8
  %i.an = add i64 %i.am, %reass.mul
  %i.ao = add i64 %i.an, %reass.mul5
  ret i64 %i.ao
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK3ozz9animation9Animation4SaveERNS_2io8OArchiveE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = alloca float, align 4                    ; 4 uses
  %i.s = load float, ptr %0, align 8, !tbaa !100  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #14
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 22 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !63, !range !64, !noundef !65
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = bitcast float %i.s to i32
  %.1.insert.insert16.i = tail call i32 @llvm.bswap.i32(i32 %i.w)
  %i.x = bitcast i32 %.1.insert.insert16.i to float
  %i.y = select i1 %i.v, float %i.x, float %i.s
  store float %i.y, ptr %i.r, align 4, !tbaa !13
  %i.z = load ptr, ptr %1, align 8, !tbaa !66     ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !50
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull %i.r, i64 noundef 4), !inline_history !0 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #14
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !67 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #14
  %i.ag = load i8, ptr %i.t, align 8, !tbaa !63, !range !64, !noundef !65
  %i.ah = trunc nuw i8 %i.ag to i1
  %.sroa.0.0.insert.insert.i = call i32 @llvm.bswap.i32(i32 %i.af)
  %spec.select.i = select i1 %i.ah, i32 %.sroa.0.0.insert.insert.i, i32 %i.af
  store i32 %spec.select.i, ptr %i.q, align 4, !tbaa !14
  %i.ai = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !50
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef i64 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull %i.q, i64 noundef 4), !inline_history !88 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #14
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !59 ; 2 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ap = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ao) #15 ; 4 uses
  %2 = trunc i64 %i.ap to i32                     ; 2 uses
  %3 = call i32 @llvm.bswap.i32(i32 %2)
  %4 = icmp eq i64 %i.ap, 0
  %5 = call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert.i47 = phi i32 [ %3, %bb.b ], [ 0, %bb.a ]
  %6 = phi i32 [ %2, %bb.b ], [ 0, %bb.a ]
  %.not.i.i.i = phi i1 [ %4, %bb.b ], [ true, %bb.a ]
  %i.aq = phi i64 [ %5, %bb.b ], [ 1, %bb.a ]
  %7 = phi i64 [ %i.ap, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  %i.ar = load i8, ptr %i.t, align 8, !tbaa !63, !range !64, !noundef !65
  %i.as = trunc nuw i8 %i.ar to i1
  %spec.select.i48 = select i1 %i.as, i32 %.sroa.0.0.insert.insert.i47, i32 %6
  store i32 %spec.select.i48, ptr %i.p, align 4, !tbaa !14
  %i.at = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull %i.p, i64 noundef 4), !inline_history !88 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #14
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !19
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  %i.bc = load i8, ptr %i.t, align 8, !tbaa !63, !range !64, !noundef !65
  %i.bd = trunc nuw i8 %i.bc to i1
  %.sroa.0.0.insert.insert.i49 = call i32 @llvm.bswap.i32(i32 %i.bb)
  %spec.select.i50 = select i1 %i.bd, i32 %.sroa.0.0.insert.insert.i49, i32 %i.bb
  store i32 %spec.select.i50, ptr %i.o, align 4, !tbaa !14
  %i.be = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !50
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call noundef i64 %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull %i.o, i64 noundef 4), !inline_history !88 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #14
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !41
  %i.bm = trunc i64 %i.bl to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  %i.bn = load i8, ptr %i.t, align 8, !tbaa !63, !range !64, !noundef !65
  %i.bo = trunc nuw i8 %i.bn to i1
  %.sroa.0.0.insert.insert.i51 = call i32 @llvm.bswap.i32(i32 %i.bm)
  %spec.select.i52 = select i1 %i.bo, i32 %.sroa.0.0.insert.insert.i51, i32 %i.bm
  store i32 %spec.select.i52, ptr %i.n, align 4, !tbaa !14
  %i.bp = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !50
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef i64 %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, ptr noundef nonnull %i.n, i64 noundef 4), !inline_history !88 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !46
  %i.bx = trunc i64 %i.bw to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  %i.by = load i8, ptr %i.t, align 8, !tbaa !63, !range !64, !noundef !65
  %i.bz = trunc nuw i8 %i.by to i1
  %.sroa.0.0.insert.insert.i53 = call i32 @llvm.bswap.i32(i32 %i.bx)
  %spec.select.i54 = select i1 %i.bz, i32 %.sroa.0.0.insert.insert.i53, i32 %i.bx
  store i32 %spec.select.i54, ptr %i.m, align 4, !tbaa !14
  %i.ca = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !50
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = call noundef i64 %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull %i.m, i64 noundef 4), !inline_history !88 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !41
  %i.ci = trunc i64 %i.ch to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  %i.cj = load i8, ptr %i.t, align 8, !tbaa !63, !range !64, !noundef !65
  %i.ck = trunc nuw i8 %i.cj to i1
  %.sroa.0.0.insert.insert.i55 = call i32 @llvm.bswap.i32(i32 %i.ci)
  %spec.select.i56 = select i1 %i.ck, i32 %.sroa.0.0.insert.insert.i55, i32 %i.ci
  store i32 %spec.select.i56, ptr %i.l, align 4, !tbaa !14
  %i.cl = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !50
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = call noundef i64 %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull %i.l, i64 noundef 4), !inline_history !88 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !28
  %i.ct = trunc i64 %i.cs to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  %i.cu = load i8, ptr %i.t, align 8, !tbaa !63, !range !64, !noundef !65
  %i.cv = trunc nuw i8 %i.cu to i1
  %.sroa.0.0.insert.insert.i57 = call i32 @llvm.bswap.i32(i32 %i.ct)
  %spec.select.i58 = select i1 %i.cv, i32 %.sroa.0.0.insert.insert.i57, i32 %i.ct
  store i32 %spec.select.i58, ptr %i.k, align 4, !tbaa !14
  %i.cw = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !50
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call noundef i64 %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull %i.k, i64 noundef 4), !inline_history !88 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !34
  %i.dd = trunc i64 %i.dc to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  %i.de = load i8, ptr %i.t, align 8, !tbaa !63, !range !64, !noundef !65
  %i.df = trunc nuw i8 %i.de to i1
  %.sroa.0.0.insert.insert.i59 = call i32 @llvm.bswap.i32(i32 %i.dd)
  %spec.select.i60 = select i1 %i.df, i32 %.sroa.0.0.insert.insert.i59, i32 %i.dd
  store i32 %spec.select.i60, ptr %i.j, align 4, !tbaa !14
  %i.dg = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !50
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = call noundef i64 %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull %i.j, i64 noundef 4), !inline_history !88 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !28
  %i.do = trunc i64 %i.dn to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  %i.dp = load i8, ptr %i.t, align 8, !tbaa !63, !range !64, !noundef !65
  %i.dq = trunc nuw i8 %i.dp to i1
  %.sroa.0.0.insert.insert.i61 = call i32 @llvm.bswap.i32(i32 %i.do)
  %spec.select.i62 = select i1 %i.dq, i32 %.sroa.0.0.insert.insert.i61, i32 %i.do
  store i32 %spec.select.i62, ptr %i.i, align 4, !tbaa !14
  %i.dr = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !50
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call noundef i64 %i.du(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef nonnull %i.i, i64 noundef 4), !inline_history !88 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !34
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  %i.dz = load i8, ptr %i.t, align 8, !tbaa !63, !range !64, !noundef !65
  %i.ea = trunc nuw i8 %i.dz to i1
  %.sroa.0.0.insert.insert.i63 = call i32 @llvm.bswap.i32(i32 %i.dy)
  %spec.select.i64 = select i1 %i.ea, i32 %.sroa.0.0.insert.insert.i63, i32 %i.dy
  store i32 %spec.select.i64, ptr %i.h, align 4, !tbaa !14
  %i.eb = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !50
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = call noundef i64 %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %i.eb, ptr noundef nonnull %i.h, i64 noundef 4), !inline_history !88 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !28
  %i.ej = trunc i64 %i.ei to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.ek = load i8, ptr %i.t, align 8, !tbaa !63, !range !64, !noundef !65
  %i.el = trunc nuw i8 %i.ek to i1
  %.sroa.0.0.insert.insert.i65 = call i32 @llvm.bswap.i32(i32 %i.ej)
  %spec.select.i66 = select i1 %i.el, i32 %.sroa.0.0.insert.insert.i65, i32 %i.ej
  store i32 %spec.select.i66, ptr %i.g, align 4, !tbaa !14
  %i.em = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !50
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = call noundef i64 %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %i.em, ptr noundef nonnull %i.g, i64 noundef 4), !inline_history !88 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.es = load i64, ptr %i.er, align 8, !tbaa !34
  %i.et = trunc i64 %i.es to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.eu = load i8, ptr %i.t, align 8, !tbaa !63, !range !64, !noundef !65
  %i.ev = trunc nuw i8 %i.eu to i1
  %.sroa.0.0.insert.insert.i67 = call i32 @llvm.bswap.i32(i32 %i.et)
  %spec.select.i68 = select i1 %i.ev, i32 %.sroa.0.0.insert.insert.i67, i32 %i.et
  store i32 %spec.select.i68, ptr %i.f, align 4, !tbaa !14
  %i.ew = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !50
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = call noundef i64 %i.ez(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef nonnull %i.f, i64 noundef 4), !inline_history !88 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  %i.fb = load ptr, ptr %i.an, align 8, !tbaa !59 ; 2 uses
  %i.fc = load i8, ptr %i.t, align 8, !tbaa !63, !range !64, !noundef !65
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %.preheader.i.i.i, label %bb.d

.preheader.i.i.i:                                 ; preds = %bb.c
  br i1 %.not.i.i.i, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %.lr.ph.i.i.i
  %.06.i.i.i = phi i64 [ %i.fl, %.lr.ph.i.i.i ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.06.i.i.i
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  store i8 %i.ff, ptr %i.e, align 1, !tbaa !68
  %i.fg = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !50
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = call noundef i64 %i.fj(ptr noundef nonnull align 8 dereferenceable(8) %i.fg, ptr noundef nonnull %i.e, i64 noundef 1), !inline_history !89 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  %i.fl = add nuw i64 %.06.i.i.i, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.fl, %i.aq
  br i1 %exitcond.not, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit, label %.lr.ph.i.i.i, !llvm.loop !90

bb.d:                                             ; preds = %bb.c
  %i.fm = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !50
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = call noundef i64 %i.fp(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, ptr noundef %i.fb, i64 noundef %7), !inline_history !91 ; 0 uses
  br label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit

_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit: ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.d
  %.sroa.05.0.copyload = load ptr, ptr %i.ay, align 8, !tbaa !70 ; 2 uses
  %.sroa.26.0.copyload = load i64, ptr %i.az, align 8, !tbaa !16 ; 3 uses
  %i.fr = load i8, ptr %i.t, align 8, !tbaa !63, !range !64, !noundef !65
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %.preheader.i.i.i69, label %bb.e

.preheader.i.i.i69:                               ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit
  %.not.i.i.i70 = icmp eq i64 %.sroa.26.0.copyload, 0
  br i1 %.not.i.i.i70, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit, label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.preheader.i.i.i69, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi i64 [ %i.gf, %.lr.ph.i.i.i71 ], [ 0, %.preheader.i.i.i69 ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.sroa.05.0.copyload, i64 %.06.i.i.i72
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.fv = load i8, ptr %i.t, align 8, !tbaa !63, !range !64, !noundef !65
  %i.fw = trunc nuw i8 %i.fv to i1
  %i.fx = bitcast float %i.fu to i32
  %.1.insert.insert16.i.i.i.i = call i32 @llvm.bswap.i32(i32 %i.fx)
  %i.fy = bitcast i32 %.1.insert.insert16.i.i.i.i to float
  %i.fz = select i1 %i.fw, float %i.fy, float %i.fu
  store float %i.fz, ptr %i.d, align 4, !tbaa !13
  %i.ga = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !50
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = call noundef i64 %i.gd(ptr noundef nonnull align 8 dereferenceable(8) %i.ga, ptr noundef nonnull %i.d, i64 noundef 4), !inline_history !92 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  %i.gf = add nuw i64 %.06.i.i.i72, 1             ; 2 uses
  %exitcond109.not = icmp eq i64 %i.gf, %.sroa.26.0.copyload
  br i1 %exitcond109.not, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit, label %.lr.ph.i.i.i71, !llvm.loop !93

bb.e:                                             ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIcEEEEvRKT_.exit
  %i.gg = shl i64 %.sroa.26.0.copyload, 2
  %i.gh = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !50
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = call noundef i64 %i.gk(ptr noundef nonnull align 8 dereferenceable(8) %i.gh, ptr noundef %.sroa.05.0.copyload, i64 noundef %i.gg), !inline_history !94 ; 0 uses
  br label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit

_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit: ; preds = %.lr.ph.i.i.i71, %.preheader.i.i.i69, %bb.e
  call void @_ZN3ozz2io6ExternINS_9animation9Animation14TKeyframesCtrlILb0EEEE4SaveERNS0_8OArchiveEPKS5_m(ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(68) %i.cq, i64 noundef 1)
  %.sroa.03.0.copyload = load ptr, ptr %i.bj, align 8, !tbaa !38 ; 2 uses
  %.sroa.24.0.copyload = load i64, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  %i.gm = mul i64 %.sroa.24.0.copyload, 3
  %i.gn = load i8, ptr %i.t, align 8, !tbaa !63, !range !64, !noundef !65
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %.preheader.i.i.i.i.i.i, label %bb.f

.preheader.i.i.i.i.i.i:                           ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.24.0.copyload, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayINS_9animation8internal9Float3KeyEEEEEvRKT_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi i64 [ %i.gy, %.lr.ph.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03.0.copyload, i64 %.06.i.i.i.i.i.i
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.gr = load i8, ptr %i.t, align 8, !tbaa !63, !range !64, !noundef !65
  %i.gs = trunc nuw i8 %i.gr to i1
  %.sroa.0.0.insert.insert.i.i.i.i.i.i.i = call i16 @llvm.bswap.i16(i16 %i.gq)
  %spec.select.i.i.i.i.i.i.i = select i1 %i.gs, i16 %.sroa.0.0.insert.insert.i.i.i.i.i.i.i, i16 %i.gq
  store i16 %spec.select.i.i.i.i.i.i.i, ptr %i.c, align 2, !tbaa !72
  %i.gt = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !50
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = call noundef i64 %i.gw(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef nonnull %i.c, i64 noundef 2), !inline_history !95 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.gy = add nuw i64 %.06.i.i.i.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.gy, %i.gm
  br i1 %exitcond.not.i.i.i, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayINS_9animation8internal9Float3KeyEEEEEvRKT_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !96

bb.f:                                             ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIfEEEEvRKT_.exit
  %i.gz = mul i64 %.sroa.24.0.copyload, 6
  %i.ha = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !50
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = call noundef i64 %i.hd(ptr noundef nonnull align 8 dereferenceable(8) %i.ha, ptr noundef %.sroa.03.0.copyload, i64 noundef %i.gz), !inline_history !97 ; 0 uses
  br label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayINS_9animation8internal9Float3KeyEEEEEvRKT_.exit

_ZN3ozz2io8OArchivelsINS0_8internal5ArrayINS_9animation8internal9Float3KeyEEEEEvRKT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i, %bb.f
  call void @_ZN3ozz2io6ExternINS_9animation9Animation14TKeyframesCtrlILb0EEEE4SaveERNS0_8OArchiveEPKS5_m(ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(68) %i.dl, i64 noundef 1)
  %.sroa.01.0.copyload = load ptr, ptr %i.bu, align 8, !tbaa !43 ; 2 uses
  %.sroa.22.0.copyload = load i64, ptr %i.bv, align 8, !tbaa !16 ; 3 uses
  %i.hf = mul i64 %.sroa.22.0.copyload, 3
  %i.hg = load i8, ptr %i.t, align 8, !tbaa !63, !range !64, !noundef !65
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %.preheader.i.i.i.i.i.i73, label %bb.g

.preheader.i.i.i.i.i.i73:                         ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayINS_9animation8internal9Float3KeyEEEEEvRKT_.exit
  %.not.i.i.i.i.i.i74 = icmp eq i64 %.sroa.22.0.copyload, 0
  br i1 %.not.i.i.i.i.i.i74, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayINS_9animation8internal13QuaternionKeyEEEEEvRKT_.exit, label %.lr.ph.i.i.i.i.i.i75

.lr.ph.i.i.i.i.i.i75:                             ; preds = %.preheader.i.i.i.i.i.i73, %.lr.ph.i.i.i.i.i.i75
  %.06.i.i.i.i.i.i76 = phi i64 [ %i.hr, %.lr.ph.i.i.i.i.i.i75 ], [ 0, %.preheader.i.i.i.i.i.i73 ] ; 2 uses
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.copyload, i64 %.06.i.i.i.i.i.i76
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.hk = load i8, ptr %i.t, align 8, !tbaa !63, !range !64, !noundef !65
  %i.hl = trunc nuw i8 %i.hk to i1
  %.sroa.0.0.insert.insert.i.i.i.i.i.i.i77 = call i16 @llvm.bswap.i16(i16 %i.hj)
  %spec.select.i.i.i.i.i.i.i78 = select i1 %i.hl, i16 %.sroa.0.0.insert.insert.i.i.i.i.i.i.i77, i16 %i.hj
  store i16 %spec.select.i.i.i.i.i.i.i78, ptr %i.b, align 2, !tbaa !72
  %i.hm = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !50
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = call noundef i64 %i.hp(ptr noundef nonnull align 8 dereferenceable(8) %i.hm, ptr noundef nonnull %i.b, i64 noundef 2), !inline_history !98 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.hr = add nuw i64 %.06.i.i.i.i.i.i76, 1       ; 2 uses
  %exitcond.not.i.i.i79 = icmp eq i64 %i.hr, %i.hf
  br i1 %exitcond.not.i.i.i79, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayINS_9animation8internal13QuaternionKeyEEEEEvRKT_.exit, label %.lr.ph.i.i.i.i.i.i75, !llvm.loop !96

bb.g:                                             ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayINS_9animation8internal9Float3KeyEEEEEvRKT_.exit
  %i.hs = mul i64 %.sroa.22.0.copyload, 6
  %i.ht = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !50
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = call noundef i64 %i.hw(ptr noundef nonnull align 8 dereferenceable(8) %i.ht, ptr noundef %.sroa.01.0.copyload, i64 noundef %i.hs), !inline_history !99 ; 0 uses
  br label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayINS_9animation8internal13QuaternionKeyEEEEEvRKT_.exit

_ZN3ozz2io8OArchivelsINS0_8internal5ArrayINS_9animation8internal13QuaternionKeyEEEEEvRKT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i75, %.preheader.i.i.i.i.i.i73, %bb.g
  call void @_ZN3ozz2io6ExternINS_9animation9Animation14TKeyframesCtrlILb0EEEE4SaveERNS0_8OArchiveEPKS5_m(ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(68) %i.eg, i64 noundef 1)
  %.sroa.0.0.copyload = load ptr, ptr %i.cf, align 8, !tbaa !38 ; 2 uses
  %.sroa.2.0.copyload = load i64, ptr %i.cg, align 8, !tbaa !16 ; 3 uses
  %i.hy = mul i64 %.sroa.2.0.copyload, 3
  %i.hz = load i8, ptr %i.t, align 8, !tbaa !63, !range !64, !noundef !65
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %.preheader.i.i.i.i.i.i80, label %bb.h

.preheader.i.i.i.i.i.i80:                         ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayINS_9animation8internal13QuaternionKeyEEEEEvRKT_.exit
  %.not.i.i.i.i.i.i81 = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i.i.i.i81, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayINS_9animation8internal9Float3KeyEEEEEvRKT_.exit87, label %.lr.ph.i.i.i.i.i.i82

.lr.ph.i.i.i.i.i.i82:                             ; preds = %.preheader.i.i.i.i.i.i80, %.lr.ph.i.i.i.i.i.i82
  %.06.i.i.i.i.i.i83 = phi i64 [ %i.ik, %.lr.ph.i.i.i.i.i.i82 ], [ 0, %.preheader.i.i.i.i.i.i80 ] ; 2 uses
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %.06.i.i.i.i.i.i83
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.id = load i8, ptr %i.t, align 8, !tbaa !63, !range !64, !noundef !65
  %i.ie = trunc nuw i8 %i.id to i1
  %.sroa.0.0.insert.insert.i.i.i.i.i.i.i84 = call i16 @llvm.bswap.i16(i16 %i.ic)
  %spec.select.i.i.i.i.i.i.i85 = select i1 %i.ie, i16 %.sroa.0.0.insert.insert.i.i.i.i.i.i.i84, i16 %i.ic
  store i16 %spec.select.i.i.i.i.i.i.i85, ptr %i.a, align 2, !tbaa !72
  %i.if = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !50
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = call noundef i64 %i.ii(ptr noundef nonnull align 8 dereferenceable(8) %i.if, ptr noundef nonnull %i.a, i64 noundef 2), !inline_history !95 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ik = add nuw i64 %.06.i.i.i.i.i.i83, 1       ; 2 uses
  %exitcond.not.i.i.i86 = icmp eq i64 %i.ik, %i.hy
  br i1 %exitcond.not.i.i.i86, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayINS_9animation8internal9Float3KeyEEEEEvRKT_.exit87, label %.lr.ph.i.i.i.i.i.i82, !llvm.loop !96

bb.h:                                             ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayINS_9animation8internal13QuaternionKeyEEEEEvRKT_.exit
  %i.il = mul i64 %.sroa.2.0.copyload, 6
  %i.im = load ptr, ptr %1, align 8, !tbaa !66    ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !50
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = call noundef i64 %i.ip(ptr noundef nonnull align 8 dereferenceable(8) %i.im, ptr noundef %.sroa.0.0.copyload, i64 noundef %i.il), !inline_history !97 ; 0 uses
  br label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayINS_9animation8internal9Float3KeyEEEEEvRKT_.exit87

_ZN3ozz2io8OArchivelsINS0_8internal5ArrayINS_9animation8internal9Float3KeyEEEEEvRKT_.exit87: ; preds = %.lr.ph.i.i.i.i.i.i82, %.preheader.i.i.i.i.i.i80, %bb.h
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3ozz9animation9Animation4LoadERNS_2io8IArchiveEj(ptr noundef nonnull align 8 dereferenceable(304) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, i32 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca float, align 4                    ; 4 uses
  %3 = alloca %"class.ozz::log::Err", align 8     ; 7 uses
  %4 = alloca %"struct.ozz::animation::Animation::AllocateParams", align 8 ; 14 uses
  %i.n = tail call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
end_hunk_0
begin_hunk_1_@_ZN3ozz2io6ExternINS_9animation9Animation14TKeyframesCtrlILb0EEEE4LoadERNS0_8IArchiveEPS5_mj:bb.a
  %min.iters.check66 = icmp ult i64 %i.r, 14
  br i1 %min.iters.check66, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check67

vector.main.loop.iter.check67:                    ; preds = %iter.check84
  %min.iters.check68 = icmp ult i64 %i.r, 126
  br i1 %min.iters.check68, label %vec.epilog.ph88, label %vector.ph69

vector.ph69:                                      ; preds = %vector.main.loop.iter.check67
  %i.u = and i64 %i.t, 56
  %n.vec70 = and i64 %i.t, -64                    ; 4 uses
  %i.v = shl i64 %n.vec70, 1
  br label %vector.body71

vector.body71:                                    ; preds = %vector.ph69, %vector.body71
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next81, %vector.body71 ] ; 2 uses
  %i.w = shl nuw i64 %index72, 1                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64 ; 2 uses
  %wide.vec73 = load <64 x i8>, ptr %i.x, align 1, !tbaa !68
  %wide.vec76 = load <64 x i8>, ptr %i.z, align 1, !tbaa !68
  %interleaved.vec79 = shufflevector <64 x i8> %wide.vec73, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  store <64 x i8> %interleaved.vec79, ptr %i.x, align 1, !tbaa !68
  %interleaved.vec80 = shufflevector <64 x i8> %wide.vec76, <64 x i8> poison, <64 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14, i32 17, i32 16, i32 19, i32 18, i32 21, i32 20, i32 23, i32 22, i32 25, i32 24, i32 27, i32 26, i32 29, i32 28, i32 31, i32 30, i32 33, i32 32, i32 35, i32 34, i32 37, i32 36, i32 39, i32 38, i32 41, i32 40, i32 43, i32 42, i32 45, i32 44, i32 47, i32 46, i32 49, i32 48, i32 51, i32 50, i32 53, i32 52, i32 55, i32 54, i32 57, i32 56, i32 59, i32 58, i32 61, i32 60, i32 63, i32 62>
  store <64 x i8> %interleaved.vec80, ptr %i.z, align 1, !tbaa !68
  %index.next81 = add nuw i64 %index72, 64        ; 2 uses
  %i.aa = icmp eq i64 %index.next81, %n.vec70
  br i1 %i.aa, label %middle.block82, label %vector.body71, !llvm.loop !155

middle.block82:                                   ; preds = %vector.body71
  %cmp.n83 = icmp eq i64 %i.t, %n.vec70
  br i1 %cmp.n83, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayItEEEEvRT_.exit, label %vec.epilog.iter.check85

vec.epilog.iter.check85:                          ; preds = %middle.block82
  %min.epilog.iters.check87 = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check87, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph88, !prof !79

vec.epilog.ph88:                                  ; preds = %vector.main.loop.iter.check67, %vec.epilog.iter.check85
  %vec.epilog.resume.val89 = phi i64 [ %n.vec70, %vec.epilog.iter.check85 ], [ 0, %vector.main.loop.iter.check67 ]
  %n.vec90 = and i64 %i.t, -8                     ; 3 uses
  %i.ab = shl i64 %n.vec90, 1
  br label %vec.epilog.vector.body91

vec.epilog.vector.body91:                         ; preds = %vec.epilog.vector.body91, %vec.epilog.ph88
  %index92 = phi i64 [ %vec.epilog.resume.val89, %vec.epilog.ph88 ], [ %index.next97, %vec.epilog.vector.body91 ] ; 2 uses
  %i.ac = shl nuw i64 %index92, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 %i.ac ; 2 uses
  %wide.vec93 = load <16 x i8>, ptr %i.ad, align 1, !tbaa !68
  %interleaved.vec96 = shufflevector <16 x i8> %wide.vec93, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14>
  store <16 x i8> %interleaved.vec96, ptr %i.ad, align 1, !tbaa !68
  %index.next97 = add nuw i64 %index92, 8         ; 2 uses
  %i.ae = icmp eq i64 %index.next97, %n.vec90
  br i1 %i.ae, label %vec.epilog.middle.block98, label %vec.epilog.vector.body91, !llvm.loop !156

vec.epilog.middle.block98:                        ; preds = %vec.epilog.vector.body91
  %cmp.n99 = icmp eq i64 %i.t, %n.vec90
  br i1 %cmp.n99, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayItEEEEvRT_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check84, %vec.epilog.iter.check85, %vec.epilog.middle.block98
  %.0.i3.i.i.i.ph = phi i64 [ 0, %iter.check84 ], [ %i.v, %vec.epilog.iter.check85 ], [ %i.ab, %vec.epilog.middle.block98 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i ], [ %.0.i3.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload, i64 %.0.i3.i.i.i ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !68
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !68
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !68
  store i8 %i.ai, ptr %i.af, align 1, !tbaa !68
  %i.aj = add nuw i64 %.0.i3.i.i.i, 2             ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.j
  br i1 %i.ak, label %.lr.ph.i.i.i, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayItEEEEvRT_.exit, !llvm.loop !157

_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayItEEEEvRT_.exit: ; preds = %.lr.ph.i.i.i, %middle.block82, %vec.epilog.middle.block98, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.01.0.copyload = load ptr, ptr %i.al, align 8, !tbaa !21
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !16
  %i.am = load ptr, ptr %0, align 8, !tbaa !74    ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !50
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef i64 %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef %.sroa.01.0.copyload, i64 noundef %.sroa.22.0.copyload), !inline_history !153 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.0.0.copyload = load ptr, ptr %i.ar, align 8, !tbaa !25 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !16
  %i.as = shl i64 %.sroa.2.0.copyload, 2          ; 4 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !74    ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef %.sroa.0.0.copyload, i64 noundef %i.as), !inline_history !158 ; 0 uses
  %i.ay = load i8, ptr %i.b, align 8, !tbaa !75, !range !64, !noundef !65
  %i.az = trunc nuw i8 %i.ay to i1
  %.not.i.i.i26 = icmp ne i64 %i.as, 0
  %or.cond47.not = and i1 %.not.i.i.i26, %i.az
  br i1 %or.cond47.not, label %iter.check, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIjEEEEvRT_.exit

iter.check:                                       ; preds = %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayItEEEEvRT_.exit
  %i.ba = add i64 %i.as, -4                       ; 3 uses
  %i.bb = lshr exact i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ba, 12
  br i1 %min.iters.check, label %.lr.ph.i.i.i27.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check52 = icmp ult i64 %i.ba, 60
  br i1 %min.iters.check52, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bd = and i64 %i.bc, 12
  %n.vec = and i64 %i.bc, 9223372036854775792     ; 4 uses
  %i.be = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl nuw i64 %index, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.bf ; 2 uses
  %wide.vec = load <64 x i8>, ptr %i.bg, align 1, !tbaa !68
  %interleaved.vec = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <64 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12, i32 19, i32 18, i32 17, i32 16, i32 23, i32 22, i32 21, i32 20, i32 27, i32 26, i32 25, i32 24, i32 31, i32 30, i32 29, i32 28, i32 35, i32 34, i32 33, i32 32, i32 39, i32 38, i32 37, i32 36, i32 43, i32 42, i32 41, i32 40, i32 47, i32 46, i32 45, i32 44, i32 51, i32 50, i32 49, i32 48, i32 55, i32 54, i32 53, i32 52, i32 59, i32 58, i32 57, i32 56, i32 63, i32 62, i32 61, i32 60>
  store <64 x i8> %interleaved.vec, ptr %i.bg, align 1, !tbaa !68
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !159

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIjEEEEvRT_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i27.preheader, label %vec.epilog.ph, !prof !78

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec56 = and i64 %i.bc, 9223372036854775804   ; 3 uses
  %i.bi = shl i64 %n.vec56, 2
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index57 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next64, %vec.epilog.vector.body ] ; 2 uses
  %i.bj = shl nuw i64 %index57, 2
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.bj ; 2 uses
  %wide.vec58 = load <16 x i8>, ptr %i.bk, align 1, !tbaa !68
  %interleaved.vec63 = shufflevector <16 x i8> %wide.vec58, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 11, i32 10, i32 9, i32 8, i32 15, i32 14, i32 13, i32 12>
  store <16 x i8> %interleaved.vec63, ptr %i.bk, align 1, !tbaa !68
  %index.next64 = add nuw i64 %index57, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next64, %n.vec56
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !160

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n65 = icmp eq i64 %i.bc, %n.vec56
  br i1 %cmp.n65, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIjEEEEvRT_.exit, label %.lr.ph.i.i.i27.preheader

.lr.ph.i.i.i27.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0.i3.i.i.i28.ph = phi i64 [ 0, %iter.check ], [ %i.be, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %.lr.ph.i.i.i27.preheader, %.lr.ph.i.i.i27
  %.0.i3.i.i.i28 = phi i64 [ %i.bp, %.lr.ph.i.i.i27 ], [ %.0.i3.i.i.i28.ph, %.lr.ph.i.i.i27.preheader ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.0.i3.i.i.i28 ; 2 uses
  %i.bn = load <4 x i8>, ptr %i.bm, align 1, !tbaa !68
  %i.bo = shufflevector <4 x i8> %i.bn, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.bo, ptr %i.bm, align 1, !tbaa !68
  %i.bp = add nuw i64 %.0.i3.i.i.i28, 4           ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.as
  br i1 %i.bq, label %.lr.ph.i.i.i27, label %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIjEEEEvRT_.exit, !llvm.loop !161

_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayIjEEEEvRT_.exit: ; preds = %.lr.ph.i.i.i27, %middle.block, %vec.epilog.middle.block, %_ZN3ozz2io8IArchiversIKNS0_8internal5ArrayItEEEEvRT_.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.bs = load ptr, ptr %0, align 8, !tbaa !74    ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !50
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = call noundef i64 %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull %i.a, i64 noundef 4), !inline_history !1 ; 0 uses
  %i.bx = load i8, ptr %i.b, align 8, !tbaa !75, !range !64, !noundef !65
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = load i32, ptr %i.a, align 4             ; 2 uses
  %.1.insert.insert15.i = call i32 @llvm.bswap.i32(i32 %i.bz)
  %.v.i = select i1 %i.by, i32 %.1.insert.insert15.i, i32 %i.bz
  store i32 %.v.i, ptr %i.br, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ca = add nuw i64 %.048, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ca, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !162
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { noreturn }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"float", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!8, !8, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"p1 float", !11, i64 0}
!18 = !{!"_ZTSN3ozz4spanIfEE", !17, i64 0, !15, i64 8}
!19 = !{!18, !15, i64 8}
!20 = !{!"p1 omnipotent char", !11, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"p1 short", !11, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"p1 int", !11, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"_ZTSN3ozz4spanIhEE", !20, i64 0, !15, i64 8}
!27 = !{!26, !20, i64 0}
!28 = !{!26, !15, i64 8}
!29 = !{!"_ZTSN3ozz4spanItEE", !22, i64 0, !15, i64 8}
!30 = !{!29, !22, i64 0}
!31 = !{!29, !15, i64 8}
!32 = !{!"_ZTSN3ozz4spanIjEE", !24, i64 0, !15, i64 8}
!33 = !{!32, !24, i64 0}
!34 = !{!32, !15, i64 8}
!35 = !{!"_ZTSN3ozz9animation9Animation14TKeyframesCtrlILb0EEE", !26, i64 0, !29, i64 16, !26, i64 32, !32, i64 48, !12, i64 64}
!36 = !{!35, !12, i64 64}
!37 = !{!"p1 _ZTSN3ozz9animation8internal9Float3KeyE", !11, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"_ZTSN3ozz4spanINS_9animation8internal9Float3KeyEEE", !37, i64 0, !15, i64 8}
!40 = !{!39, !37, i64 0}
!41 = !{!39, !15, i64 8}
!42 = !{!"p1 _ZTSN3ozz9animation8internal13QuaternionKeyE", !11, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"_ZTSN3ozz4spanINS_9animation8internal13QuaternionKeyEEE", !42, i64 0, !15, i64 8}
!45 = !{!44, !42, i64 0}
!46 = !{!44, !15, i64 8}
!47 = !{!"_ZTSN3ozz9animation9AnimationE", !12, i64 0, !8, i64 4, !11, i64 8, !20, i64 16, !18, i64 24, !35, i64 40, !35, i64 112, !35, i64 184, !39, i64 256, !44, i64 272, !39, i64 288}
!48 = !{!47, !11, i64 8}
!49 = !{!"vtable pointer", !6, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{ptr @_ZN3ozz9animation9Animation10DeallocateEv}
!52 = !{!"_ZTSN3ozz9animation9Animation14AllocateParams7IFramesE", !15, i64 0, !15, i64 8}
!53 = !{!"_ZTSN3ozz9animation9Animation14AllocateParamsE", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !52, i64 40, !52, i64 56, !52, i64 72}
!54 = !{!53, !15, i64 8}
!55 = !{!53, !15, i64 0}
!56 = !{!53, !15, i64 16}
!57 = !{!53, !15, i64 24}
!58 = !{!53, !15, i64 32}
!59 = !{!47, !20, i64 16}
!60 = !{!"p1 _ZTSN3ozz2io6StreamE", !11, i64 0}
!61 = !{!"bool", !7, i64 0}
!62 = !{!"_ZTSN3ozz2io8OArchiveE", !60, i64 0, !61, i64 8}
!63 = !{!62, !61, i64 8}
!64 = !{i8 0, i8 2}
!65 = !{}
!66 = !{!62, !60, i64 0}
!67 = !{!47, !8, i64 4}
!68 = !{!7, !7, i64 0}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!17, !17, i64 0}
!71 = !{!"short", !7, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"_ZTSN3ozz2io8IArchiveE", !60, i64 0, !61, i64 8}
!74 = !{!73, !60, i64 0}
!75 = !{!73, !61, i64 8}
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !{!"llvm.loop.unroll.runtime.disable"}
!78 = !{!"branch_weights", i32 4, i32 12}
!79 = !{!"branch_weights", i32 8, i32 56}
!80 = !{!11, !11, i64 0}
!81 = !{!53, !15, i64 40}
!82 = !{!53, !15, i64 48}
!83 = !{!53, !15, i64 56}
!84 = !{!53, !15, i64 64}
!85 = !{!53, !15, i64 72}
!86 = !{!53, !15, i64 80}
!87 = !{!18, !17, i64 0}
!88 = distinct !{null}
!89 = distinct !{null, null, null, null}
!90 = distinct !{!90, !69}
!91 = distinct !{null, null, null, null}
!92 = distinct !{null, null, null, null}
!93 = distinct !{!93, !69}
!94 = distinct !{null, null, null, null}
!95 = distinct !{null, null, null, null, null, null, null}
!96 = distinct !{!96, !69}
!97 = distinct !{null, null, null, null, null, null, null}
!98 = distinct !{null, null, null, null, null, null, null}
!99 = distinct !{null, null, null, null, null, null, null}
!100 = !{!47, !12, i64 0}
!101 = distinct !{null, null}
!102 = distinct !{null}
!103 = distinct !{null, null, null, null}
!104 = distinct !{null, null, null, null}
!105 = distinct !{!105, !69, !76, !77}
!106 = distinct !{!106, !69, !76, !77}
!107 = distinct !{!107, !69, !77, !76}
!108 = distinct !{null, null, null, null, null, null, null}
!109 = distinct !{!109, !69, !76, !77}
!110 = distinct !{!110, !69, !76, !77}
!111 = distinct !{!111, !69, !77, !76}
!112 = distinct !{null, null, null, null, null, null, null}
!113 = distinct !{!113, !69, !76, !77}
!114 = distinct !{!114, !69, !76, !77}
!115 = distinct !{!115, !69, !77, !76}
!116 = distinct !{!116, !69, !76, !77}
!117 = distinct !{!117, !69, !76, !77}
!118 = distinct !{!118, !69, !77, !76}
!119 = !{!"p1 _ZTSSo", !11, i64 0}
!120 = !{!"_ZTSN3ozz3log6LoggerE", !119, i64 0, !61, i64 8}
!121 = !{!120, !119, i64 0}
!122 = !{i64 8}
!123 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!124 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!125 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!126 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !15, i64 8}
!127 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!128 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!129 = !{!"_ZTSSt6locale", !128, i64 0}
!130 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !123, i64 24, !124, i64 28, !124, i64 32, !125, i64 40, !126, i64 48, !7, i64 64, !8, i64 192, !127, i64 200, !129, i64 208}
!131 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!132 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!133 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!134 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!135 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !130, i64 0, !119, i64 216, !7, i64 224, !61, i64 225, !131, i64 232, !132, i64 240, !133, i64 248, !134, i64 256}
!136 = !{!135, !132, i64 240}
!137 = !{!"_ZTSNSt6locale5facetE", !8, i64 8}
!138 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!139 = !{!"_ZTSSt5ctypeIcE", !137, i64 0, !138, i64 16, !61, i64 24, !24, i64 32, !24, i64 40, !22, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!140 = !{!139, !7, i64 56}
!141 = !{!52, !15, i64 0}
!142 = !{!52, !15, i64 8}
!143 = distinct !{null, null, null, null}
!144 = distinct !{!144, !69}
!145 = distinct !{null, null, null, null}
!146 = distinct !{null, null, null, null}
!147 = distinct !{!147, !69}
!148 = distinct !{null, null, null, null}
!149 = distinct !{null, null, null, null}
!150 = distinct !{!150, !69}
!151 = distinct !{null, null, null, null}
!152 = distinct !{!152, !69}
!153 = distinct !{null, null, null, null}
!154 = distinct !{null, null, null, null}
!155 = distinct !{!155, !69, !76, !77}
!156 = distinct !{!156, !69, !76, !77}
!157 = distinct !{!157, !69, !77, !76}
!158 = distinct !{null, null, null, null}
!159 = distinct !{!159, !69, !76, !77}
!160 = distinct !{!160, !69, !76, !77}
!161 = distinct !{!161, !69, !77, !76}
!162 = distinct !{!162, !69}
end_hunk_1
