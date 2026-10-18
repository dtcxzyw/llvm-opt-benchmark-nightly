Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fdt_sw?download=true
inline.NumInlined: 97
inline.NumDeleted: 23
begin_hunk_0_@fdt_property_placeholder:bb.a
  %i.bi = icmp ult i64 %i.bh, %i.bg
  br i1 %i.bi, label %fdt_grab_space_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !17
  %i.bn = zext i8 %i.bm to i64
  %.neg19.i = mul nuw nsw i64 %i.bn, 4294901760
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !17
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !17
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !17
  %i.bw = zext i8 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bt, 8
  %i.by = or disjoint i64 %i.bx, %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !17
  %i.cb = zext i8 %i.ca to i64
  %i.cc = zext i8 %i.bk to i64                    ; 2 uses
  %.neg24.i = mul nuw nsw i64 %i.cc, 4278190080
  %i.cd = shl nuw nsw i64 %i.cb, 16               ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !17
  %i.cg = zext i8 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 8                ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !17
  %i.ck = zext i8 %i.cj to i64                    ; 2 uses
  %i.cl = or disjoint i64 %i.cd, %i.ck
  %i.cm = or disjoint i64 %i.cl, %i.ch
  %i.cn = load i32, ptr %i.e, align 1
  %i.co = tail call i32 @llvm.bswap.i32(i32 %i.cn)
  %.neg28.i = add nuw nsw i64 %.neg19.i, %.neg24.i
  %i.cp = shl nuw nsw i64 %i.bq, 24
  %i.cq = add nuw nsw i64 %i.by, %i.cm
  %i.cr = add nuw nsw i64 %i.cp, %i.cq
  %.neg17.i = sub nsw i64 %.neg28.i, %i.cr
  %.neg17.i.tr = trunc i64 %.neg17.i to i32
  %.narrow = add i32 %i.co, %.neg17.i.tr
  %i.cs = zext i32 %.narrow to i64
  %i.ct = icmp ugt i64 %i.bh, %i.cs
  br i1 %i.ct, label %fdt_grab_space_.exit.thread, label %bb.j

fdt_grab_space_.exit.thread:                      ; preds = %bb.g, %bb.h
  br i1 %.not26, label %fdt_sw_probe_struct_.exit.thread34, label %bb.i

bb.i:                                             ; preds = %fdt_grab_space_.exit.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 1
  %i.cw = tail call i32 @llvm.bswap.i32(i32 %i.cv)
  %i.cx = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #8
  %i.cy = trunc i64 %i.cx to i32
  %.neg.i = xor i32 %i.cy, -1
  %i.cz = add i32 %i.cw, %.neg.i
  %rev.i.i.i29 = tail call noundef i32 @llvm.bswap.i32(i32 %i.cz)
  store i32 %rev.i.i.i29, ptr %i.cu, align 4, !tbaa !21
  br label %fdt_sw_probe_struct_.exit.thread34

bb.j:                                             ; preds = %bb.h
  %i.da = trunc nuw i64 %i.bh to i32
  %rev.i.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.da)
  store i32 %rev.i.i.i, ptr %i.bd, align 4, !tbaa !20
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 %i.cd
  %i.dc = shl nuw nsw i64 %i.cc, 24
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.ch
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.ck
  %i.dg = sext i32 %i.bf to i64
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 %i.dg ; 4 uses
  store i32 50331648, ptr %i.dh, align 4, !tbaa !32
  %rev.i = tail call noundef i32 @llvm.bswap.i32(i32 %.021)
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i32 %rev.i, ptr %i.di, align 4, !tbaa !23
  %rev.i30 = tail call noundef i32 @llvm.bswap.i32(i32 %2)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 %rev.i30, ptr %i.dj, align 4, !tbaa !33
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store ptr %i.dk, ptr %3, align 8, !tbaa !25
  br label %fdt_sw_probe_struct_.exit.thread34

fdt_sw_probe_struct_.exit.thread34:               ; preds = %fdt_sw_probe_struct_.exit, %bb.b, %fdt_grab_space_.exit.thread, %bb.i, %fdt_find_add_string_.exit, %bb.j
  %.1 = phi i32 [ %.0.i.i, %fdt_sw_probe_struct_.exit ], [ 0, %bb.j ], [ -3, %fdt_find_add_string_.exit ], [ -3, %bb.i ], [ -3, %fdt_grab_space_.exit.thread ], [ -7, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @fdt_add_string_(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 1
  %i.c = tail call i32 @llvm.bswap.i32(i32 %i.b)  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.d, align 1
  %i.f = tail call i32 @llvm.bswap.i32(i32 %i.e)
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #8
  %i.h = trunc i64 %i.g to i32
  %i.i = add i32 %i.h, 1                          ; 2 uses
  %i.j = add i32 %i.f, %i.i                       ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 1
  %i.m = tail call i32 @llvm.bswap.i32(i32 %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.o = load i32, ptr %i.n, align 1
  %i.p = tail call i32 @llvm.bswap.i32(i32 %i.o)
  %i.q = add i32 %i.p, %i.m
  %i.r = sub i32 %i.c, %i.j
  %i.s = icmp ult i32 %i.r, %i.q
  br i1 %i.s, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = zext i32 %i.c to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.v = zext i32 %i.j to i64
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 %i.w
  %i.y = zext i32 %i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr nonnull align 1 %1, i64 %i.y, i1 false)
  %rev.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.j)
  store i32 %rev.i.i, ptr %i.d, align 4, !tbaa !21
  %i.z = sub i32 0, %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.z, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -9, 1) i32 @fdt_property(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = call i32 @fdt_property_placeholder(ptr noundef %0, ptr noundef %1, i32 noundef %3, ptr noundef nonnull %i.a) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.d = sext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr align 1 %2, i64 %i.d, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @fdt_finish(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = load i32, ptr %0, align 1                ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 302117423
  br i1 %.not.i.i, label %bb.b, label %fdt_sw_probe_struct_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 1
  %i.e = tail call i32 @llvm.bswap.i32(i32 %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17    ; 2 uses
  %i.h = zext i8 %i.g to i32
  %i.i = shl nuw i32 %i.h, 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.k = load i8, ptr %i.j, align 1, !tbaa !17    ; 2 uses
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 16
  %i.n = or disjoint i32 %i.m, %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.p = load i8, ptr %i.o, align 1, !tbaa !17    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 8
  %i.s = or disjoint i32 %i.n, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.u = load i8, ptr %i.t, align 1, !tbaa !17    ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = or disjoint i32 %i.s, %i.v
  %.not6.i = icmp eq i32 %i.e, %i.w
  br i1 %.not6.i, label %fdt_sw_probe_struct_.exit.thread, label %fdt_sw_probe_struct_.exit.thread44

fdt_sw_probe_struct_.exit:                        ; preds = %bb.a
  %i.x = icmp eq i32 %i.b, -302117424
  %.0.i.i = select i1 %i.x, i32 -7, i32 -9
  br label %fdt_sw_probe_struct_.exit.thread44

fdt_sw_probe_struct_.exit.thread:                 ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.z = load i32, ptr %i.y, align 1
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.z) ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add nuw nsw i64 %i.ab, 4                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !17
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !17
  %i.ah = zext i8 %i.ag to i64
  %.neg19.i = mul nuw nsw i64 %i.ah, 4294901760
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !17
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.am = load i8, ptr %i.al, align 1, !tbaa !17
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !17
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.an, 8
  %i.as = or disjoint i64 %i.ar, %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !17
  %i.av = zext i8 %i.au to i64
  %i.aw = zext i8 %i.ae to i64                    ; 2 uses
  %.neg24.i = mul nuw nsw i64 %i.aw, 4278190080
  %i.ax = shl nuw nsw i64 %i.av, 16               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !17
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 8                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17
  %i.be = zext i8 %i.bd to i64                    ; 2 uses
  %i.bf = or disjoint i64 %i.ax, %i.be
  %i.bg = or disjoint i64 %i.bf, %i.bb
  %i.bh = zext i8 %i.k to i64
  %i.bi = shl nuw nsw i64 %i.bh, 16
  %i.bj = zext i8 %i.g to i64
  %i.bk = shl nuw nsw i64 %i.bj, 24
  %i.bl = or disjoint i64 %i.bk, %i.bi
  %i.bm = zext i8 %i.p to i64
  %i.bn = shl nuw nsw i64 %i.bm, 8
  %i.bo = or disjoint i64 %i.bl, %i.bn
  %i.bp = zext i8 %i.u to i64
  %i.bq = or disjoint i64 %i.bo, %i.bp
  %.neg28.i = add nuw nsw i64 %.neg19.i, %.neg24.i
  %i.br = shl nuw nsw i64 %i.ak, 24
  %i.bs = add nuw nsw i64 %i.as, %i.bg
  %i.bt = add nuw nsw i64 %i.br, %i.bs
  %.neg17.i = sub nsw i64 %.neg28.i, %i.bt
  %i.bu = add nsw i64 %.neg17.i, %i.bq
  %i.bv = and i64 %i.bu, 4294967295
  %i.bw = icmp samesign ugt i64 %i.ac, %i.bv
  br i1 %i.bw, label %fdt_sw_probe_struct_.exit.thread44, label %bb.c

bb.c:                                             ; preds = %fdt_sw_probe_struct_.exit.thread
  %i.bx = trunc nuw i64 %i.ac to i32
  %rev.i.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.bx)
  store i32 %rev.i.i.i, ptr %i.y, align 4, !tbaa !20
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  %i.bz = shl nuw nsw i64 %i.aw, 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bb
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.be
  %i.cd = sext i32 %i.aa to i64
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 %i.cd
  store i32 150994944, ptr %i.ce, align 4, !tbaa !16
  %i.cf = load i32, ptr %i.f, align 4
  %i.cg = tail call i32 @llvm.bswap.i32(i32 %i.cf)
  %i.ch = load i32, ptr %i.ai, align 4
  %i.ci = tail call i32 @llvm.bswap.i32(i32 %i.ch) ; 2 uses
  %i.cj = sub i32 %i.cg, %i.ci
  %i.ck = load i32, ptr %i.ad, align 4
  %i.cl = tail call i32 @llvm.bswap.i32(i32 %i.ck)
  %i.cm = load i32, ptr %i.y, align 4
  %i.cn = tail call i32 @llvm.bswap.i32(i32 %i.cm)
  %i.co = add i32 %i.cn, %i.cl                    ; 3 uses
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds i8, ptr %0, i64 %i.cp
  %i.cr = sext i32 %i.cj to i64
  %i.cs = getelementptr inbounds i8, ptr %0, i64 %i.cr
  %i.ct = zext i32 %i.ci to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cq, ptr nonnull align 1 %i.cs, i64 %i.ct, i1 false)
  %rev.i.i = tail call noundef i32 @llvm.bswap.i32(i32 %i.co)
  store i32 %rev.i.i, ptr %i.c, align 4, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.034 = phi i32 [ 0, %bb.c ], [ %i.dr, %bb.f ]  ; 2 uses
  %i.cu = call i32 @fdt_next_tag(ptr noundef nonnull %0, i32 noundef %.034, ptr noundef nonnull %i.a) #9
  switch i32 %i.cu, label %bb.f [
    i32 9, label %bb.g
    i32 3, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.cv = load i8, ptr %i.ad, align 4, !tbaa !17
  %i.cw = zext i8 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.cw, 24
  %i.cy = load i8, ptr %i.at, align 1, !tbaa !17
  %i.cz = zext i8 %i.cy to i64
  %i.da = shl nuw nsw i64 %i.cz, 16
  %i.db = load i8, ptr %i.ay, align 2, !tbaa !17
  %i.dc = zext i8 %i.db to i64
  %i.dd = shl nuw nsw i64 %i.dc, 8
  %i.de = load i8, ptr %i.bc, align 1, !tbaa !17
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 %i.da
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cx
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dd
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.df
  %i.dk = sext i32 %.034 to i64
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !23
  %rev.i = call noundef i32 @llvm.bswap.i32(i32 %i.dn)
  %i.do = load i32, ptr %i.ai, align 4
  %i.dp = call i32 @llvm.bswap.i32(i32 %i.do)
  %i.dq = add i32 %i.dp, %rev.i
  %rev.i40 = call noundef i32 @llvm.bswap.i32(i32 %i.dq)
  store i32 %rev.i40, ptr %i.dm, align 4, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.dr = load i32, ptr %i.a, align 4, !tbaa !16
  br label %bb.d, !llvm.loop !34

bb.g:                                             ; preds = %bb.d
  %i.ds = load i32, ptr %i.a, align 4, !tbaa !16  ; 2 uses
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %fdt_sw_probe_struct_.exit.thread44, label %bb.h

bb.h:                                             ; preds = %bb.g
  %1 = load i32, ptr %i.ai, align 4
  %2 = call i32 @llvm.bswap.i32(i32 %1)
  %i.du = add i32 %2, %i.co
  %rev.i.i41 = call noundef i32 @llvm.bswap.i32(i32 %i.du)
  store i32 %rev.i.i41, ptr %i.f, align 4, !tbaa !15
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 268435456, ptr %i.dv, align 4, !tbaa !14
  store i32 -302117424, ptr %0, align 4, !tbaa !13
  br label %fdt_sw_probe_struct_.exit.thread44

fdt_sw_probe_struct_.exit.thread44:               ; preds = %fdt_sw_probe_struct_.exit, %fdt_sw_probe_struct_.exit.thread, %bb.b, %bb.g, %bb.h
  %.1 = phi i32 [ -3, %fdt_sw_probe_struct_.exit.thread ], [ 0, %bb.h ], [ %.0.i.i, %fdt_sw_probe_struct_.exit ], [ %i.ds, %bb.g ], [ -7, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.1
}

declare i32 @fdt_next_tag(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare ptr @fdt_find_string_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"fdt_header", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36}
!13 = !{!12, !9, i64 0}
!14 = !{!12, !9, i64 24}
!15 = !{!12, !9, i64 4}
!16 = !{!9, !9, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!12, !9, i64 12}
!19 = !{!12, !9, i64 8}
!20 = !{!12, !9, i64 36}
!21 = !{!12, !9, i64 32}
!22 = !{!"fdt_property", !9, i64 0, !9, i64 4, !9, i64 8, !8, i64 12}
!23 = !{!22, !9, i64 8}
!24 = !{!"any pointer", !8, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"long", !8, i64 0}
!27 = !{!"fdt_reserve_entry", !26, i64 0, !26, i64 8}
!28 = !{!27, !26, i64 0}
!29 = !{!27, !26, i64 8}
!30 = !{!"fdt_node_header", !9, i64 0, !8, i64 4}
!31 = !{!30, !9, i64 0}
!32 = !{!22, !9, i64 0}
!33 = !{!22, !9, i64 4}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
end_hunk_0
