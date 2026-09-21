Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ac97?download=true
inline.NumInlined: 121
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@nam_write:bb.a
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
  %i.n = mul nuw nsw <2 x i16> %i.m, splat (i16 255)
  %i.o = udiv <2 x i16> %i.n, splat (i16 31)
  %i.p = trunc <2 x i16> %i.o to <2 x i8>
  %i.q = xor <2 x i8> %i.p, splat (i8 -1)         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2768 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3128 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i8 1, ptr %3, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.v, i8 0, i64 3, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 2, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = extractelement <2 x i8> %i.q, i64 1
  store i8 %i.y, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.aa = extractelement <2 x i8> %i.q, i64 0
  store i8 %i.aa, ptr %i.z, align 1
  %scevgep.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %scevgep.i.i.i, i8 0, i64 14, i1 false)
  call void @audio_be_set_volume_out(ptr noundef %i.s, ptr noundef %i.u, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store i16 -30712, ptr %i.j, align 8
  %i.ab = load <2 x i8>, ptr %i.i, align 2
  %i.ac = and <2 x i8> %i.ab, splat (i8 63)
  %i.ad = zext nneg <2 x i8> %i.ac to <2 x i16>
  %i.ae = mul nuw nsw <2 x i16> %i.ad, splat (i16 85)
  %i.af = udiv <2 x i16> %i.ae, splat (i16 21)
  %i.ag = xor <2 x i16> %i.af, splat (i16 255)
  %4 = mul nuw nsw <2 x i16> %i.ag, splat (i16 38) ; 2 uses
  %5 = extractelement <2 x i16> %4, i64 1
  %i.ah = udiv i16 %5, 51
  %i.ai = trunc nuw i16 %i.ah to i8
  %i.aj = extractelement <2 x i16> %4, i64 0
  %i.ak = udiv i16 %i.aj, 51
  %i.al = trunc nuw i16 %i.ak to i8
  %i.am = load ptr, ptr %i.r, align 16
  %i.an = load ptr, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i8 1, ptr %2, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ao, i8 0, i64 3, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 2, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.ai, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %i.al, ptr %i.ar, align 1
  %scevgep.i.i15.i = getelementptr inbounds nuw i8, ptr %2, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %scevgep.i.i15.i, i8 0, i64 14, i1 false)
  call void @audio_be_set_volume_out(ptr noundef %i.am, ptr noundef %i.an, ptr noundef nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2892
  store i16 -30712, ptr %i.as, align 4
  %i.at = load ptr, ptr %i.r, align 16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.av = load ptr, ptr %i.au, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store i8 1, ptr %1, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.aw, i8 0, i64 3, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 2, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 -120, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 -120, ptr %i.az, align 1
  %scevgep.i.i16.i = getelementptr inbounds nuw i8, ptr %1, i64 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %scevgep.i.i16.i, i8 0, i64 14, i1 false)
  call void @audio_be_set_volume_in(ptr noundef %i.at, ptr noundef %i.av, ptr noundef nonnull %1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call fastcc void @reset_voices(ptr noundef %0, ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @open_voice(ptr noundef %0, i32 noundef range(i32 0, 3) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.audsettings, align 4        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store i32 %2, ptr %3, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.b, align 4
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.d, align 4, !annotation !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3144
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.f
  store i32 0, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.i = load ptr, ptr %i.h, align 16             ; 3 uses
  switch i32 %1, label %default.unreachable29 [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 16
  %i.l = call ptr @audio_be_open_in(ptr noundef %i.i, ptr noundef %i.k, ptr noundef nonnull @.str.13, ptr noundef nonnull %0, ptr noundef nonnull @pi_callback, ptr noundef nonnull %3) #7
  store ptr %i.l, ptr %i.j, align 16
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3128 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call ptr @audio_be_open_out(ptr noundef %i.i, ptr noundef %i.n, ptr noundef nonnull @.str.14, ptr noundef nonnull %0, ptr noundef nonnull @po_callback, ptr noundef nonnull %3) #7
  store ptr %i.o, ptr %i.m, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3136 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 16
  %i.r = call ptr @audio_be_open_in(ptr noundef %i.i, ptr noundef %i.q, ptr noundef nonnull @.str.15, ptr noundef nonnull %0, ptr noundef nonnull @mc_callback, ptr noundef nonnull %3) #7
  store ptr %i.r, ptr %i.p, align 16
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3144
  %i.t = zext nneg i32 %1 to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t
  store i32 %2, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.w = load ptr, ptr %i.v, align 16             ; 3 uses
  switch i32 %1, label %default.unreachable29 [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 16
  tail call void @audio_be_close_in(ptr noundef %i.w, ptr noundef %i.y) #7
  store ptr null, ptr %i.x, align 16
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3128 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void @audio_be_close_out(ptr noundef %i.w, ptr noundef %i.aa) #7
  store ptr null, ptr %i.z, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3136 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 16
  tail call void @audio_be_close_in(ptr noundef %i.w, ptr noundef %i.ac) #7
  store ptr null, ptr %i.ab, align 16
  br label %bb.j

default.unreachable29:                            ; preds = %bb.f, %bb.b
  unreachable

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @reset_voices(ptr noundef initializes((3144, 3148)) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.audsettings, align 4        ; 7 uses
  %3 = alloca %struct.audsettings, align 4        ; 7 uses
  %4 = alloca %struct.audsettings, align 4        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2914
  %i.b = load i16, ptr %i.a, align 1              ; 2 uses
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store i32 %i.c, ptr %4, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 2, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.e, align 4
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.f, align 4, !annotation !7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3144
  store i32 0, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.i = load ptr, ptr %i.h, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 16
  %i.l = call ptr @audio_be_open_in(ptr noundef %i.i, ptr noundef %i.k, ptr noundef nonnull @.str.13, ptr noundef nonnull %0, ptr noundef nonnull @pi_callback, ptr noundef nonnull %4) #7 ; 2 uses
  store ptr %i.l, ptr %i.j, align 16
  br label %open_voice.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3144
  store i32 %i.c, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.o = load ptr, ptr %i.n, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 16
  tail call void @audio_be_close_in(ptr noundef %i.o, ptr noundef %i.q) #7
  store ptr null, ptr %i.p, align 16
  br label %open_voice.exit

open_voice.exit:                                  ; preds = %bb.b, %bb.c
  %i.r = phi ptr [ %i.l, %bb.b ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2768 ; 7 uses
  %i.t = load ptr, ptr %i.s, align 16
  %i.u = load i8, ptr %1, align 1
  %i.v = icmp ne i8 %i.u, 0
  call void @audio_be_set_active_in(ptr noundef %i.t, ptr noundef %i.r, i1 noundef zeroext %i.v) #7
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2908
  %i.x = load i16, ptr %i.w, align 4              ; 2 uses
  %i.y = zext i16 %i.x to i32                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store i32 %i.y, ptr %3, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 2, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.aa, align 4
  %.not19 = icmp eq i16 %i.x, 0
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %open_voice.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.ab, align 4, !annotation !7
end_hunk_0
