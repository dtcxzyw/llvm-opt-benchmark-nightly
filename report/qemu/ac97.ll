Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ac97?download=true
inline.NumInlined: 121
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ac97_exit:bb.a
  tail call void @audio_be_close_in(ptr noundef %i.c, ptr noundef %i.e) #7
  %i.f = load ptr, ptr %i.b, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3128
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @audio_be_close_out(ptr noundef %i.f, ptr noundef %i.h) #7
  %i.i = load ptr, ptr %i.b, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 3136
  %i.k = load ptr, ptr %i.j, align 16
  tail call void @audio_be_close_in(ptr noundef %i.i, ptr noundef %i.k) #7
  ret void
}

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @device_class_set_legacy_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @ac97_on_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.11, i32 noundef 90, ptr noundef nonnull @.str.2) #7 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2792
  tail call fastcc void @reset_bm_regs(ptr noundef %i.a, ptr noundef nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2816
  tail call fastcc void @reset_bm_regs(ptr noundef %i.a, ptr noundef nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2840
  tail call fastcc void @reset_bm_regs(ptr noundef %i.a, ptr noundef nonnull %i.d)
  tail call fastcc void @mixer_reset(ptr noundef %i.a)
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @audio_be_check(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @pci_register_bar(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal range(i64 -1, 4294967296) i64 @nam_read(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef %2) #3 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = udiv i64 %1, %i.a
  %i.c = icmp ugt i64 %i.b, 256
  br i1 %i.c, label %nam_readw.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %nam_readw.exit [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 4, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i32 0, ptr %i.d, align 16
  br label %nam_readw.exit

bb.d:                                             ; preds = %bb.b
  %i.e = trunc i64 %1 to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i32 0, ptr %i.f, align 16
  %i.g = add i32 %i.e, -255
  %i.h = icmp ult i32 %i.g, -257
  br i1 %i.h, label %nam_readw.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2864 ; 2 uses
  %i.j = and i64 %1, 4294967295
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i64
  %i.n = add i64 %1, 1
  %i.o = and i64 %i.n, 4294967295
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 8
  %i.t = or disjoint i64 %i.s, %i.m
  br label %nam_readw.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i32 0, ptr %i.u, align 16
  br label %nam_readw.exit

nam_readw.exit:                                   ; preds = %bb.e, %bb.d, %bb.b, %bb.a, %bb.f, %bb.c
  %.0 = phi i64 [ 4294967295, %bb.f ], [ -1, %bb.a ], [ 4294967295, %bb.c ], [ -1, %bb.b ], [ 65535, %bb.d ], [ %i.t, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @nam_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %4 = alloca %struct.Volume, align 4             ; 9 uses
  %5 = alloca %struct.Volume, align 4             ; 9 uses
  %6 = alloca %struct.Volume, align 4             ; 9 uses
  %i.a = zext i32 %3 to i64
  %i.b = udiv i64 %1, %i.a
  %i.c = icmp ugt i64 %i.b, 256
  br i1 %i.c, label %nam_writew.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %3, label %nam_writew.exit [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 4, label %bb.x
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i32 0, ptr %i.d, align 16
  br label %nam_writew.exit

bb.d:                                             ; preds = %bb.b
  %i.e = trunc i64 %1 to i32                      ; 2 uses
  %i.f = trunc i64 %2 to i32                      ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i32 0, ptr %i.g, align 16
  switch i32 %i.e, label %bb.v [
    i32 0, label %bb.e
    i32 38, label %bb.f
    i32 110, label %nam_writew.exit
    i32 108, label %nam_writew.exit
    i32 34, label %nam_writew.exit
    i32 26, label %bb.j
    i32 124, label %nam_writew.exit
    i32 126, label %nam_writew.exit
    i32 40, label %nam_writew.exit
    i32 42, label %bb.k
    i32 44, label %bb.p
    i32 52, label %bb.r
    i32 50, label %bb.t
    i32 4, label %nam_writew.exit
    i32 6, label %nam_writew.exit
    i32 8, label %nam_writew.exit
    i32 10, label %nam_writew.exit
    i32 12, label %nam_writew.exit
    i32 14, label %nam_writew.exit
    i32 16, label %nam_writew.exit
    i32 18, label %nam_writew.exit
    i32 20, label %nam_writew.exit
    i32 22, label %nam_writew.exit
    i32 30, label %nam_writew.exit
    i32 32, label %nam_writew.exit
    i32 2, label %bb.g
    i32 24, label %bb.h
    i32 28, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @mixer_reset(ptr noundef nonnull %0)
  br label %nam_writew.exit

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2902 ; 2 uses
  %i.i = load i8, ptr %i.h, align 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2903
  %i.k = and i8 %i.i, 15
  %i.l = trunc i64 %2 to i16
  %i.m = and i16 %i.l, 32752                      ; 2 uses
  %i.n = trunc i16 %i.m to i8
  %i.o = or disjoint i8 %i.k, %i.n
  store i8 %i.o, ptr %i.h, align 2
  %i.p = lshr i16 %i.m, 8
  %i.q = trunc nuw nsw i16 %i.p to i8
  store i8 %i.q, ptr %i.j, align 1
  br label %nam_writew.exit

bb.g:                                             ; preds = %bb.d
  %i.r = trunc i64 %2 to i16                      ; 2 uses
  %i.s = and i16 %i.r, -16577                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2866
  store i16 %i.s, ptr %i.t, align 2
  %i.u = lshr i16 %i.s, 8                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2888
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2889
  %i.x = insertelement <2 x i16> poison, i16 %i.u, i64 0
  %i.y = insertelement <2 x i16> %i.x, i16 %i.r, i64 1
  %i.z = and <2 x i16> %i.y, splat (i16 63)
  %i.aa = mul nuw nsw <2 x i16> %i.z, splat (i16 85)
  %i.ab = udiv <2 x i16> %i.aa, splat (i16 21)
  %i.ac = load <2 x i8>, ptr %i.v, align 8
  %i.ad = load i8, ptr %i.w, align 1
  %i.ae = zext i8 %i.ad to i16
  %i.af = and <2 x i8> %i.ac, splat (i8 31)
  %i.ag = zext nneg <2 x i8> %i.af to <2 x i16>
  %i.ah = mul nuw nsw <2 x i16> %i.ag, splat (i16 255)
  %i.ai = udiv <2 x i16> %i.ah, splat (i16 31)
  %i.aj = or i16 %i.u, %i.ae
  %i.ak = xor <2 x i16> %i.ab, splat (i16 255)
  %i.al = xor <2 x i16> %i.ai, splat (i16 255)
  %i.am = shufflevector <2 x i16> %i.al, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  %i.an = mul nuw <2 x i16> %i.am, %i.ak
  %i.ao = udiv <2 x i16> %i.an, splat (i16 255)
  %i.ap = trunc nuw <2 x i16> %i.ao to <2 x i8>   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.ar = load ptr, ptr %i.aq, align 16
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3128
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = icmp samesign ugt i16 %i.aj, 127
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.av = zext i1 %i.au to i8
  store i8 %i.av, ptr %6, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aw, i8 0, i64 3, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 2, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.az = extractelement <2 x i8> %i.ap, i64 0
  store i8 %i.az, ptr %i.ay, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.bb = extractelement <2 x i8> %i.ap, i64 1
  store i8 %i.bb, ptr %i.ba, align 1
  %scevgep.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %scevgep.i.i.i.i, i8 0, i64 14, i1 false)
  call void @audio_be_set_volume_out(ptr noundef %i.ar, ptr noundef %i.at, ptr noundef nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %nam_writew.exit

bb.h:                                             ; preds = %bb.d
  %i.bc = trunc i64 %2 to i16                     ; 2 uses
  %i.bd = and i16 %i.bc, -24801                   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 2888
  store i16 %i.bd, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2866
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 2867
  %i.bh = lshr i16 %i.bd, 8                       ; 2 uses
  %i.bi = load <2 x i8>, ptr %i.bf, align 2
  %i.bj = load i8, ptr %i.bg, align 1
  %i.bk = zext i8 %i.bj to i16
  %i.bl = and <2 x i8> %i.bi, splat (i8 63)
  %i.bm = zext nneg <2 x i8> %i.bl to <2 x i16>
  %i.bn = mul nuw nsw <2 x i16> %i.bm, splat (i16 85)
  %i.bo = udiv <2 x i16> %i.bn, splat (i16 21)
  %i.bp = insertelement <2 x i16> poison, i16 %i.bh, i64 0
  %i.bq = insertelement <2 x i16> %i.bp, i16 %i.bc, i64 1
  %i.br = and <2 x i16> %i.bq, splat (i16 31)
  %i.bs = mul nuw nsw <2 x i16> %i.br, splat (i16 255)
  %i.bt = udiv <2 x i16> %i.bs, splat (i16 31)
  %i.bu = or i16 %i.bh, %i.bk
  %i.bv = xor <2 x i16> %i.bo, splat (i16 255)
  %i.bw = shufflevector <2 x i16> %i.bv, <2 x i16> poison, <2 x i32> <i32 1, i32 0>
  %i.bx = xor <2 x i16> %i.bt, splat (i16 255)
  %i.by = mul nuw <2 x i16> %i.bw, %i.bx
  %i.bz = udiv <2 x i16> %i.by, splat (i16 255)
  %i.ca = trunc nuw <2 x i16> %i.bz to <2 x i8>   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.cc = load ptr, ptr %i.cb, align 16
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 3128
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = icmp samesign ugt i16 %i.bu, 127
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.cg = zext i1 %i.cf to i8
  store i8 %i.cg, ptr %5, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ch, i8 0, i64 3, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 2, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ck = extractelement <2 x i8> %i.ca, i64 0
  store i8 %i.ck, ptr %i.cj, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.cm = extractelement <2 x i8> %i.ca, i64 1
  store i8 %i.cm, ptr %i.cl, align 1
  %scevgep.i.i15.i.i = getelementptr inbounds nuw i8, ptr %5, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %scevgep.i.i15.i.i, i8 0, i64 14, i1 false)
  call void @audio_be_set_volume_out(ptr noundef %i.cc, ptr noundef %i.ce, ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %nam_writew.exit

bb.i:                                             ; preds = %bb.d
  %i.cn = trunc i64 %2 to i16
  %i.co = and i16 %i.cn, -28913                   ; 3 uses
  %i.cp = trunc i16 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 2892
  store i16 %i.co, ptr %i.cq, align 4
  %i.cr = lshr i16 %i.co, 8
  %i.cs = trunc nuw i16 %i.cr to i8               ; 2 uses
  %narrow.i.i.i = mul nuw i8 %i.cp, 17
  %i.ct = and i8 %i.cs, 15
  %i.cu = mul nuw i8 %i.ct, 17
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.cw = load ptr, ptr %i.cv, align 16
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.cy = load ptr, ptr %i.cx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %.lobit.i.i.i = lshr i8 %i.cs, 7
  store i8 %.lobit.i.i.i, ptr %4, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cz, i8 0, i64 3, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 2, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 %i.cu, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 9
  store i8 %narrow.i.i.i, ptr %i.dc, align 1
  %scevgep.i.i16.i.i = getelementptr inbounds nuw i8, ptr %4, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %scevgep.i.i16.i.i, i8 0, i64 14, i1 false)
  call void @audio_be_set_volume_in(ptr noundef %i.cw, ptr noundef %i.cy, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %nam_writew.exit

bb.j:                                             ; preds = %bb.d
  %i.dd = trunc i64 %2 to i16
  %i.de = and i16 %i.dd, 1799
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 2890
  store i16 %i.de, ptr %i.df, align 2
  br label %nam_writew.exit

bb.k:                                             ; preds = %bb.d
  %i.dg = and i32 %i.f, 1
  %.not48.i = icmp eq i32 %i.dg, 0
  br i1 %.not48.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 2908
  store i8 -128, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 2909
  store i8 -69, ptr %i.di, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 2914
  store i8 -128, ptr %i.dj, align 2
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 2915
  store i8 -69, ptr %i.dk, align 1
  tail call fastcc void @open_voice(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 48000)
  tail call fastcc void @open_voice(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 48000)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.dl = and i32 %i.f, 8
  %.not49.i = icmp eq i32 %i.dl, 0
  br i1 %.not49.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 2916
  store i8 -128, ptr %i.dm, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 2917
  store i8 -69, ptr %i.dn, align 1
  tail call fastcc void @open_voice(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 48000)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 2906
  %i.dp = trunc i64 %2 to i16
  store i16 %i.dp, ptr %i.do, align 2
  br label %nam_writew.exit

bb.p:                                             ; preds = %bb.d
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 2906
  %i.dr = load i8, ptr %i.dq, align 2
  %i.ds = and i8 %i.dr, 1
  %.not47.i = icmp eq i8 %i.ds, 0
  br i1 %.not47.i, label %nam_writew.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 2908
  %i.du = trunc i64 %2 to i16
  store i16 %i.du, ptr %i.dt, align 4
  tail call fastcc void @open_voice(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.f)
  br label %nam_writew.exit

bb.r:                                             ; preds = %bb.d
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 2906
  %i.dw = load i8, ptr %i.dv, align 2
  %i.dx = and i8 %i.dw, 8
  %.not46.i = icmp eq i8 %i.dx, 0
  br i1 %.not46.i, label %nam_writew.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 2916
  %i.dz = trunc i64 %2 to i16
  store i16 %i.dz, ptr %i.dy, align 4
  tail call fastcc void @open_voice(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %i.f)
  br label %nam_writew.exit

bb.t:                                             ; preds = %bb.d
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 2906
  %i.eb = load i8, ptr %i.ea, align 2
  %i.ec = and i8 %i.eb, 1
  %.not.i = icmp eq i8 %i.ec, 0
  br i1 %.not.i, label %nam_writew.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 2914
  %i.ee = trunc i64 %2 to i16
  store i16 %i.ee, ptr %i.ed, align 2
  tail call fastcc void @open_voice(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %i.f)
  br label %nam_writew.exit

bb.v:                                             ; preds = %bb.d
  %i.ef = add i32 %i.e, -255
  %i.eg = icmp ult i32 %i.ef, -257
  br i1 %i.eg, label %nam_writew.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eh = trunc i64 %2 to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 2864 ; 2 uses
  %i.ej = and i64 %1, 4294967295
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ej
  store i8 %i.eh, ptr %i.ek, align 1
  %i.el = lshr i64 %2, 8
  %i.em = trunc i64 %i.el to i8
  %i.en = add i64 %1, 1
  %i.eo = and i64 %i.en, 4294967295
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eo
  store i8 %i.em, ptr %i.ep, align 1
  br label %nam_writew.exit

bb.x:                                             ; preds = %bb.b
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i32 0, ptr %i.eq, align 16
  br label %nam_writew.exit

nam_writew.exit:                                  ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.a, %bb.x, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @mixer_reset(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.Volume, align 4             ; 9 uses
  %2 = alloca %struct.Volume, align 4             ; 9 uses
  %3 = alloca %struct.Volume, align 4             ; 9 uses
  %i.a = alloca [3 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2864 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.b, i8 noundef 0, i64 noundef 256, i1 noundef false) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.a, i8 noundef 0, i64 noundef 3, i1 noundef false) #7
  store i8 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2865
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2868
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2894
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2902
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.d, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.e, i8 0, i64 6, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2988
  store <4 x i8> <i8 -124, i8 -125, i8 0, i8 118>, ptr %i.g, align 1
  store <16 x i8> <i8 15, i8 0, i8 9, i8 8, i8 9, i8 0, i8 -128, i8 -69, i8 -128, i8 -69, i8 -128, i8 -69, i8 -128, i8 -69, i8 -128, i8 -69>, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2890
  store i16 0, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2866 ; 2 uses
  store i16 -32768, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2888 ; 2 uses
  %i.k = load <2 x i8>, ptr %i.j, align 1
  %i.l = and <2 x i8> %i.k, splat (i8 31)
  %i.m = zext nneg <2 x i8> %i.l to <2 x i16>
end_hunk_0
begin_hunk_1_@nabm_write:bb.a

select.unfold.i.i18:                              ; preds = %bb.af, %bb.ae
  %i.fp = trunc nuw i32 %i.es to i16
  store i16 %i.fp, ptr %i.ek, align 2
  br i1 %.0.i.i14, label %nabm_writeb.exit, label %bb.ag

bb.ag:                                            ; preds = %select.unfold.i.i18, %.thread44.i.i17
  %i.fq = shl nuw nsw i64 %i.ei, 2
  %i.fr = getelementptr inbounds nuw i8, ptr @__const.update_sr.masks, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 2780 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4
  %i.fv = or i32 %i.fu, %i.fs
  store i32 %i.fv, ptr %i.ft, align 4
  tail call void @pci_set_irq(ptr noundef nonnull %0, i32 noundef 1) #7
  br label %nabm_writeb.exit

bb.ah:                                            ; preds = %bb.b
  %i.fw = trunc i64 %1 to i32
  %i.fx = trunc i64 %2 to i32                     ; 5 uses
  switch i32 %i.fw, label %nabm_writeb.exit [
    i32 0, label %bb.ai
    i32 16, label %bb.ai
    i32 32, label %bb.ai
    i32 44, label %bb.aj
    i32 48, label %bb.al
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah, %bb.ah
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 2792
  %i.fz = lshr i64 %1, 4
  %i.ga = and i64 %i.fz, 268435455
  %i.gb = getelementptr inbounds nuw [24 x i8], ptr %i.fy, i64 %i.ga
  %i.gc = and i32 %i.fx, -4
  store i32 %i.gc, ptr %i.gb, align 4
  br label %nabm_writeb.exit

bb.aj:                                            ; preds = %bb.ah
  %i.gd = and i32 %i.fx, 6
  %.not.i21 = icmp eq i32 %i.gd, 0
  br i1 %.not.i21, label %bb.ak, label %nabm_writeb.exit

bb.ak:                                            ; preds = %bb.aj
  %i.ge = and i32 %i.fx, 57
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i32 %i.ge, ptr %i.gf, align 8
  br label %nabm_writeb.exit

bb.al:                                            ; preds = %bb.ah
  %i.gg = and i32 %i.fx, 35841
  %i.gh = xor i32 %i.gg, -1
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 2780 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4
  %i.gk = and i32 %i.gj, %i.gh
  %i.gl = and i32 %i.fx, 196608
  %i.gm = or i32 %i.gk, %i.gl
  store i32 %i.gm, ptr %i.gi, align 4
  br label %nabm_writeb.exit

nabm_writeb.exit:                                 ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %select.unfold.i.i18, %.thread40.i.i19, %.thread.i.i20, %bb.z, %bb.y, %select.unfold.i.i, %.thread40.i.i, %.thread.i.i, %bb.r, %bb.q, %bb.p, %voice_set_active.exit.i, %bb.i, %bb.g, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @reset_bm_regs(ptr noundef %0, ptr noundef initializes((0, 6)) %1) unnamed_addr #0 {
bb.a:
  store i32 0, ptr %1, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2
  %i.e = and i16 %i.d, 28
  %.not.i = icmp eq i16 %i.e, 0
  store i16 1, ptr %i.c, align 2
  br i1 %.not.i, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  %.pre = ptrtoint ptr %1 to i64
  br label %update_sr.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2792
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 6
  %i.k = getelementptr inbounds i8, ptr @__const.update_sr.masks, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4
  %i.m = xor i32 %i.l, -1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2780 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, %i.m
  store i32 %i.p, ptr %i.n, align 4
  tail call void @pci_set_irq(ptr noundef %0, i32 noundef 0) #7
  br label %update_sr.exit

update_sr.exit:                                   ; preds = %.thread.i, %bb.b
  %.pre-phi = phi i64 [ %.pre, %.thread.i ], [ %i.g, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 0, ptr %i.r, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = and i8 %i.t, 28
  store i8 %i.u, ptr %i.s, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2792
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %.pre-phi, %i.x
  %i.z = sdiv exact i64 %i.y, 24
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  switch i32 %i.aa, label %bb.f [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %update_sr.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.ac = load ptr, ptr %i.ab, align 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.ae = load ptr, ptr %i.ad, align 16
  tail call void @audio_be_set_active_in(ptr noundef %i.ac, ptr noundef %i.ae, i1 noundef zeroext false) #7
  br label %voice_set_active.exit

bb.d:                                             ; preds = %update_sr.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.ag = load ptr, ptr %i.af, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3128
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void @audio_be_set_active_out(ptr noundef %i.ag, ptr noundef %i.ai, i1 noundef zeroext false) #7
  br label %voice_set_active.exit

bb.e:                                             ; preds = %update_sr.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.ak = load ptr, ptr %i.aj, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3136
  %i.am = load ptr, ptr %i.al, align 16
  tail call void @audio_be_set_active_in(ptr noundef %i.ak, ptr noundef %i.am, i1 noundef zeroext false) #7
  br label %voice_set_active.exit

bb.f:                                             ; preds = %update_sr.exit
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.18, i32 noundef %i.aa) #7
  br label %voice_set_active.exit

voice_set_active.exit:                            ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 3156
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.an, i8 noundef 0, i64 noundef 128, i1 noundef false) #7
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @ac97_post_load(ptr noundef initializes((3144, 3148)) %0, i32 %1) #0 {
bb.a:
  %2 = alloca %struct.Volume, align 4             ; 9 uses
  %3 = alloca %struct.Volume, align 4             ; 9 uses
  %4 = alloca %struct.Volume, align 4             ; 9 uses
  %i.a = alloca [3 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2890 ; 2 uses
  %i.c = load i16, ptr %i.b, align 1
  %i.d = and i16 %i.c, 1799
  store i16 %i.d, ptr %i.b, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2866 ; 3 uses
  %i.f = load i8, ptr %i.e, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2867 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i16
  %i.j = shl nuw i16 %i.i, 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2888 ; 3 uses
  %i.l = load i8, ptr %i.k, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2889 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1
  %i.o = and i8 %i.l, 31
  %i.p = zext nneg i8 %i.o to i16
  %i.q = zext i8 %i.f to i16                      ; 2 uses
  %i.r = or disjoint i16 %i.j, %i.q
  %i.s = and i16 %i.r, -16577                     ; 2 uses
  store i16 %i.s, ptr %i.e, align 1
  %i.t = lshr i16 %i.s, 8                         ; 2 uses
  %i.u = and i16 %i.t, 63
  %i.v = zext i8 %i.n to i16                      ; 2 uses
  %i.w = insertelement <2 x i16> poison, i16 %i.u, i64 0
  %i.x = insertelement <2 x i16> %i.w, i16 %i.p, i64 1
  %i.y = mul nuw nsw <2 x i16> %i.x, <i16 85, i16 255>
  %i.z = udiv <2 x i16> %i.y, <i16 21, i16 31>
  %i.aa = insertelement <2 x i16> poison, i16 %i.v, i64 0
  %i.ab = insertelement <2 x i16> %i.aa, i16 %i.q, i64 1
  %i.ac = and <2 x i16> %i.ab, <i16 31, i16 63>
  %i.ad = mul nuw nsw <2 x i16> %i.ac, <i16 255, i16 85>
  %i.ae = udiv <2 x i16> %i.ad, <i16 31, i16 21>
  %i.af = or i16 %i.t, %i.v
  %i.ag = xor <2 x i16> %i.ae, splat (i16 255)
  %i.ah = xor <2 x i16> %i.z, splat (i16 255)
  %i.ai = mul nuw <2 x i16> %i.ah, %i.ag
  %i.aj = udiv <2 x i16> %i.ai, splat (i16 255)
  %i.ak = trunc nuw <2 x i16> %i.aj to <2 x i8>   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2768 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 3128 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp samesign ugt i16 %i.af, 127
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.aq = zext i1 %i.ap to i8
  store i8 %i.aq, ptr %4, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ar, i8 0, i64 3, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 2, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = extractelement <2 x i8> %i.ak, i64 0
  store i8 %i.au, ptr %i.at, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 9
  %i.aw = extractelement <2 x i8> %i.ak, i64 1
  store i8 %i.aw, ptr %i.av, align 1
  %scevgep.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %scevgep.i.i.i, i8 0, i64 14, i1 false)
  call void @audio_be_set_volume_out(ptr noundef %i.am, ptr noundef %i.ao, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ax = load i8, ptr %i.k, align 8
  %i.ay = load i8, ptr %i.m, align 1
  %i.az = zext i8 %i.ay to i16
  %i.ba = shl nuw i16 %i.az, 8
  %i.bb = load i8, ptr %i.e, align 2
  %i.bc = load i8, ptr %i.g, align 1
  %i.bd = and i8 %i.bb, 63
  %i.be = zext nneg i8 %i.bd to i16
  %i.bf = zext i8 %i.ax to i16                    ; 2 uses
  %i.bg = or disjoint i16 %i.ba, %i.bf
  %i.bh = and i16 %i.bg, -24801                   ; 2 uses
  store i16 %i.bh, ptr %i.k, align 8
  %i.bi = zext i8 %i.bc to i16                    ; 2 uses
  %i.bj = lshr i16 %i.bh, 8                       ; 2 uses
  %i.bk = insertelement <2 x i16> poison, i16 %i.bi, i64 0
  %i.bl = insertelement <2 x i16> %i.bk, i16 %i.bf, i64 1
  %i.bm = and <2 x i16> %i.bl, <i16 63, i16 31>
  %i.bn = mul nuw nsw <2 x i16> %i.bm, <i16 85, i16 255>
  %i.bo = udiv <2 x i16> %i.bn, <i16 21, i16 31>
  %i.bp = and i16 %i.bj, 31
  %i.bq = insertelement <2 x i16> poison, i16 %i.bp, i64 0
  %i.br = insertelement <2 x i16> %i.bq, i16 %i.be, i64 1
  %i.bs = mul nuw nsw <2 x i16> %i.br, <i16 255, i16 85>
  %i.bt = udiv <2 x i16> %i.bs, <i16 31, i16 21>
  %i.bu = or i16 %i.bj, %i.bi
  %i.bv = xor <2 x i16> %i.bt, splat (i16 255)
  %i.bw = xor <2 x i16> %i.bo, splat (i16 255)
  %i.bx = mul nuw <2 x i16> %i.bv, %i.bw
  %i.by = udiv <2 x i16> %i.bx, splat (i16 255)
  %i.bz = trunc nuw <2 x i16> %i.by to <2 x i8>   ; 2 uses
  %i.ca = load ptr, ptr %i.al, align 16
  %i.cb = load ptr, ptr %i.an, align 8
  %i.cc = icmp samesign ugt i16 %i.bu, 127
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.cd = zext i1 %i.cc to i8
  store i8 %i.cd, ptr %3, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ce, i8 0, i64 3, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 2, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ch = extractelement <2 x i8> %i.bz, i64 0
  store i8 %i.ch, ptr %i.cg, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.cj = extractelement <2 x i8> %i.bz, i64 1
  store i8 %i.cj, ptr %i.ci, align 1
  %scevgep.i.i15.i = getelementptr inbounds nuw i8, ptr %3, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %scevgep.i.i15.i, i8 0, i64 14, i1 false)
  call void @audio_be_set_volume_out(ptr noundef %i.ca, ptr noundef %i.cb, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 2892 ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 4
  %i.cm = and i16 %i.cl, -28913                   ; 3 uses
  %i.cn = trunc i16 %i.cm to i8
  store i16 %i.cm, ptr %i.ck, align 4
  %i.co = lshr i16 %i.cm, 8
  %i.cp = trunc nuw i16 %i.co to i8               ; 2 uses
  %narrow.i.i = mul nuw i8 %i.cn, 17
  %i.cq = and i8 %i.cp, 15
  %i.cr = mul nuw i8 %i.cq, 17
  %i.cs = load ptr, ptr %i.al, align 16
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.cu = load ptr, ptr %i.ct, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %.lobit.i.i = lshr i8 %i.cp, 7
  store i8 %.lobit.i.i, ptr %2, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cv, i8 0, i64 3, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 2, ptr %i.cw, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.cr, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %narrow.i.i, ptr %i.cy, align 1
  %scevgep.i.i16.i = getelementptr inbounds nuw i8, ptr %2, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %scevgep.i.i16.i, i8 0, i64 14, i1 false)
  call void @audio_be_set_volume_in(ptr noundef %i.cs, ptr noundef %i.cu, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 2803
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = and i8 %i.da, 1
  store i8 %i.db, ptr %i.a, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 2827
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = and i8 %i.dd, 1
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.de, ptr %i.df, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 2851
  %i.dh = load i8, ptr %i.dg, align 1
  %i.di = and i8 %i.dh, 1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.di, ptr %i.dj, align 1
  call fastcc void @reset_voices(ptr noundef %0, ptr noundef %i.a)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 3284
  store i32 0, ptr %i.dk, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i32 0, ptr %i.dl, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef zeroext i1 @is_version_2(ptr nofree readnone captures(none) %0, i32 noundef %1) #5 {
bb.a:
  %i.a = icmp eq i32 %1, 2
  ret i1 %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"auto-init"}
!8 = !{i64 2154706037}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
end_hunk_1
