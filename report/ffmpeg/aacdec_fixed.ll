Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacdec_fixed?download=true
inline.NumInlined: 71
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 24
begin_hunk_0_@imdct_and_windowing_960_fixed:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %i.cp = load i32, ptr %i.n, align 4, !tbaa !47
  switch i32 %i.cp, label %bb.k [
    i32 2, label %bb.i
    i32 1, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 9120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.d, ptr noundef nonnull align 4 dereferenceable(240) %i.cq, i64 240, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 9536 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 16, !tbaa !41
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !162
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 13952
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 6944
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 7184
  tail call void %i.cu(ptr noundef nonnull %i.cv, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.cx, ptr noundef nonnull %i.g, i32 noundef 60) #14
  %i.cy = load ptr, ptr %i.cr, align 16, !tbaa !41
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !162
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 14432
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 7424
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 7664
  tail call void %i.da(ptr noundef nonnull %i.db, ptr noundef nonnull %i.dc, ptr noundef nonnull %i.dd, ptr noundef nonnull %i.g, i32 noundef 60) #14
  %i.de = load ptr, ptr %i.cr, align 16, !tbaa !41
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !162
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 14912
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 7904
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8144
  tail call void %i.dg(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.di, ptr noundef nonnull %i.dj, ptr noundef nonnull %i.g, i32 noundef 60) #14
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 15392
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8384
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.dk, ptr noundef nonnull align 16 dereferenceable(240) %i.dl, i64 240, i1 false)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 6704
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1680) %i.d, ptr noundef nonnull align 4 dereferenceable(1680) %i.dm, i64 1680, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 15392
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8384
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.dn, ptr noundef nonnull align 4 dereferenceable(240) %i.do, i64 240, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 6704
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1920) %i.d, ptr noundef nonnull align 4 dereferenceable(1920) %i.dp, i64 1920, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @imdct_and_windowing_ld_fixed(ptr noundef %0, ptr noundef %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 5520
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40344
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 13712 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4784 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9496
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !171
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 9424
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !172
  tail call void %i.g(ptr noundef %i.i, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, i64 noundef 4) #14
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.k = load i8, ptr %i.j, align 1, !tbaa !41
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(768) %i.c, ptr noundef nonnull align 8 dereferenceable(768) %i.d, i64 768, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9536
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !162
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 768
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 14480
  tail call void %i.o(ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.e, ptr noundef nonnull @sine_128_fixed, i32 noundef 64) #14
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 1280
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5040
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(768) %i.r, ptr noundef nonnull align 16 dereferenceable(768) %i.s, i64 768, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 9536
  %i.u = load ptr, ptr %i.t, align 16, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !162
  tail call void %i.w(ptr noundef %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull @sine_512_fixed, i32 noundef 256) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5808
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.d, ptr noundef nonnull align 16 dereferenceable(1024) %i.x, i64 1024, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @imdct_and_windowing_eld_fixed(ptr noundef %0, ptr noundef %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 5520 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40344
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 23300
  %i.e = load i32, ptr %i.d, align 4, !tbaa !173
  %.not = icmp eq i32 %i.e, 0                     ; 3 uses
  %i.f = select i1 %.not, i32 512, i32 480        ; 15 uses
  %i.g = lshr exact i32 %i.f, 1                   ; 16 uses
  %i.h = add nsw i32 %i.f, -2
  %i.i = zext nneg i32 %i.g to i64                ; 3 uses
  %i.j = zext nneg i32 %i.h to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !47
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  %i.n = xor i32 %i.m, -1
  %i.o = add nsw i32 %i.f, %i.n
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !47
  %i.s = sub i32 0, %i.r
  store i32 %i.s, ptr %i.k, align 4, !tbaa !47
  store i32 %i.l, ptr %i.q, align 4, !tbaa !47
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !47
  %i.v = sub i32 0, %i.u
  %i.w = sub nuw nsw i64 %i.j, %indvars.iv
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !47
  store i32 %i.y, ptr %i.t, align 4, !tbaa !47
  store i32 %i.v, ptr %i.x, align 4, !tbaa !47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.z, label %bb.b, label %bb.c, !llvm.loop !174

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr i8, ptr %1, i64 13712     ; 12 uses
  %i.ab = getelementptr i8, ptr %0, i64 4784      ; 10 uses
  %i.ac = lshr exact i32 %i.f, 2                  ; 14 uses
  %i.ad = select i1 %.not, ptr @ff_aac_eld_window_512_fixed, ptr @ff_aac_eld_window_480_fixed ; 37 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 9488
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !175
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 9416
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !176
  tail call void %i.af(ptr noundef %i.ah, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.a, i64 noundef 4) #14
  br label %vector.ph

bb.e:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 9496
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !171
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 9424
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !172
  tail call void %i.aj(ptr noundef %i.al, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.a, i64 noundef 4) #14
  br label %vector.ph

vector.ph:                                        ; preds = %bb.e, %bb.d
  %i.am = zext nneg i32 %i.f to i64               ; 21 uses
  %i.an = add nsw i64 %i.am, -2
  %i.ao = lshr exact i64 %i.an, 1
  %invariant.op = sub nuw i64 %i.ao, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %.idx = shl nuw i64 %index, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.ap, align 4, !tbaa !47 ; 2 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec225 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.aq = mul <2 x i32> %strided.vec, splat (i32 -2)
  %i.ar = shl <2 x i32> %strided.vec225, splat (i32 1)
  %interleaved.vec = shufflevector <2 x i32> %i.aq, <2 x i32> %i.ar, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.ap, align 4, !tbaa !47
  %index.next = add nuw i64 %index, 2
  %i.as = icmp eq i64 %index, %invariant.op
  br i1 %i.as, label %.lr.ph, label %vector.body, !llvm.loop !177

.lr.ph:                                           ; preds = %vector.body
  %i.at = sub nuw nsw i32 %i.f, %i.ac             ; 4 uses
  %i.au = add nuw nsw i32 %i.g, %i.f              ; 2 uses
  %i.av = shl nuw nsw i32 %i.f, 1                 ; 5 uses
  %i.aw = sub nsw i32 %i.av, %i.ac                ; 5 uses
  %i.ax = add nuw nsw i32 %i.av, %i.g
  %i.ay = mul nuw nsw i32 %i.f, 3                 ; 5 uses
  %i.az = sub nsw i32 %i.ay, %i.ac                ; 5 uses
  %i.ba = lshr exact i64 %i.am, 2                 ; 11 uses
  %i.bb = zext nneg i32 %i.at to i64              ; 4 uses
  %i.bc = zext nneg i32 %i.ac to i64              ; 5 uses
  %i.bd = zext nneg i32 %i.g to i64               ; 5 uses
  %i.be = zext nneg i32 %i.ax to i64              ; 3 uses
  %i.bf = trunc nuw nsw i64 %i.ba to i32          ; 9 uses
  %i.bg = add nuw nsw i32 %i.g, %i.bf
  %i.bh = sub nsw i32 %i.bg, %i.ac
  %wide.trip.count = zext i32 %i.bh to i64        ; 9 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.aa, i64 %i.bd ; 4 uses
  %invariant.gep205 = getelementptr [4 x i8], ptr %i.ad, i64 %i.bb ; 3 uses
  %invariant.gep207 = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.be ; 2 uses
  %i.bi = sub nsw i64 %wide.trip.count, %i.ba     ; 2 uses
  %min.iters.check269 = icmp ult i64 %i.bi, 28
  br i1 %min.iters.check269, label %scalar.ph268.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.bj = xor i64 %i.ba, -1
  %i.bk = add nsw i64 %i.bj, %wide.trip.count     ; 2 uses
  %i.bl = xor i32 %i.bf, -1
  %i.bm = add nsw i32 %i.g, %i.bl                 ; 2 uses
  %i.bn = trunc i64 %i.bk to i32                  ; 4 uses
  %i.bo = sub i32 %i.bm, %i.bn
  %i.bp = icmp sgt i32 %i.bo, %i.bm
  %i.bq = add nuw nsw i32 %i.f, %i.g
  %i.br = xor i32 %i.bf, -1
  %i.bs = add nsw i32 %i.bq, %i.br
  %i.bt = icmp ult i32 %i.bs, %i.bn
  %i.bu = icmp ugt i64 %i.bk, 4294967295
  %i.bv = or i1 %i.bt, %i.bu
  %i.bw = add nuw nsw i32 %i.av, %i.bf
  %i.bx = sub nsw i32 %i.bw, %i.ac                ; 2 uses
  %i.by = add i32 %i.bx, %i.bn
  %i.bz = icmp slt i32 %i.by, %i.bx
  %i.ca = add nuw nsw i32 %i.ay, %i.bf
  %i.cb = sub nsw i32 %i.ca, %i.ac                ; 2 uses
  %i.cc = add i32 %i.cb, %i.bn
  %i.cd = icmp slt i32 %i.cc, %i.cb
  %i.ce = or i1 %i.bp, %i.bv
  %i.cf = or i1 %i.bz, %i.ce
  %i.cg = or i1 %i.cd, %i.cf
  br i1 %i.cg, label %scalar.ph268.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ch = shl nuw nsw i64 %wide.trip.count, 2     ; 4 uses
  %i.ci = sub nsw i64 %i.ch, %i.am                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.ci
  %i.cj = add nuw nsw i32 %i.ay, %i.bf
  %i.ck = sub nsw i32 %i.cj, %i.ac
  %i.cl = sext i32 %i.ck to i64                   ; 2 uses
  %i.cm = shl nsw i64 %i.cl, 2
  %scevgep226 = getelementptr i8, ptr %i.ad, i64 %i.cm
  %i.cn = add nsw i64 %i.cl, %wide.trip.count
  %i.co = shl nsw i64 %i.cn, 2
  %i.cp = sub nsw i64 %i.co, %i.am
  %scevgep227 = getelementptr i8, ptr %i.ad, i64 %i.cp
  %i.cq = add nuw nsw i32 %i.av, %i.bf
  %i.cr = sub nsw i32 %i.cq, %i.ac
  %i.cs = sext i32 %i.cr to i64                   ; 2 uses
  %i.ct = shl nsw i64 %i.cs, 2
  %scevgep228 = getelementptr i8, ptr %i.ad, i64 %i.ct
  %i.cu = add nsw i64 %i.cs, %wide.trip.count
  %i.cv = shl nsw i64 %i.cu, 2
  %i.cw = sub nsw i64 %i.cv, %i.am
  %scevgep229 = getelementptr i8, ptr %i.ad, i64 %i.cw
  %i.cx = shl nuw nsw i64 %i.bb, 2
  %i.cy = getelementptr i8, ptr %i.ad, i64 %i.cx
  %scevgep230 = getelementptr i8, ptr %i.cy, i64 %i.am
  %i.cz = add nuw nsw i64 %wide.trip.count, %i.bb
  %i.da = shl nuw nsw i64 %i.cz, 2
  %scevgep231 = getelementptr i8, ptr %i.ad, i64 %i.da
  %scevgep232 = getelementptr i8, ptr %i.ad, i64 %i.ci
  %2 = shl nuw nsw i64 %i.be, 2
  %3 = getelementptr i8, ptr %1, i64 %2
  %i.db = getelementptr i8, ptr %3, i64 %i.am
  %scevgep233 = getelementptr i8, ptr %i.db, i64 13712
  %4 = add nuw nsw i64 %wide.trip.count, %i.be
  %5 = shl nuw nsw i64 %4, 2
  %i.dc = getelementptr i8, ptr %1, i64 %5
  %i.dd = add nuw nsw i32 %i.f, %i.g
  %i.de = xor i32 %i.bf, -1
  %i.df = add nsw i32 %i.dd, %i.de
  %i.dg = zext i32 %i.df to i64                   ; 2 uses
  %i.dh = add nuw nsw i64 %i.ba, %i.dg
  %i.di = shl nuw nsw i64 %i.dh, 2
  %i.dj = add nuw nsw i64 %i.di, 13716
  %i.dk = sub nsw i64 %i.dj, %i.ch
  %scevgep235 = getelementptr i8, ptr %1, i64 %i.dk
  %i.dl = shl nuw nsw i64 %i.dg, 2
  %i.dm = getelementptr i8, ptr %1, i64 %i.dl
  %i.dn = mul nuw nsw i64 %i.am, 3
  %i.do = getelementptr i8, ptr %1, i64 %i.dn
  %scevgep237 = getelementptr i8, ptr %i.do, i64 13712
  %i.dp = shl nuw nsw i64 %i.am, 1
  %i.dq = getelementptr i8, ptr %1, i64 %i.ch
  %i.dr = getelementptr i8, ptr %i.dq, i64 %i.dp
  %i.ds = xor i32 %i.bf, -1
  %i.dt = add nsw i32 %i.g, %i.ds
  %i.du = sext i32 %i.dt to i64                   ; 2 uses
  %i.dv = add nsw i64 %i.ba, %i.du
  %i.dw = shl nsw i64 %i.dv, 2
  %i.dx = add nsw i64 %i.dw, 4788
  %i.dy = sub nsw i64 %i.dx, %i.ch
  %scevgep239 = getelementptr i8, ptr %0, i64 %i.dy
  %i.dz = shl nsw i64 %i.du, 2
  %i.ea = getelementptr i8, ptr %0, i64 %i.dz
  %i.eb = insertelement <4 x ptr> poison, ptr %i.dc, i64 0
  %i.ec = insertelement <4 x ptr> %i.eb, ptr %i.dm, i64 1
  %i.ed = insertelement <4 x ptr> %i.ec, ptr %i.dr, i64 2
  %i.ee = insertelement <4 x ptr> %i.ed, ptr %i.ea, i64 3
  %i.ef = getelementptr i8, <4 x ptr> %i.ee, <4 x i64> <i64 13712, i64 13716, i64 13712, i64 4788>
  %i.eg = insertelement <8 x ptr> poison, ptr %i.c, i64 0
  %i.eh = shufflevector <8 x ptr> %i.eg, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ei = insertelement <8 x ptr> poison, ptr %scevgep227, i64 0
  %i.ej = insertelement <8 x ptr> %i.ei, ptr %scevgep229, i64 1
  %i.ek = insertelement <8 x ptr> %i.ej, ptr %scevgep231, i64 2
  %i.el = insertelement <8 x ptr> %i.ek, ptr %scevgep232, i64 3
  %i.em = shufflevector <4 x ptr> %i.ef, <4 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.en = shufflevector <8 x ptr> %i.el, <8 x ptr> %i.em, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.eo = icmp ult <8 x ptr> %i.eh, %i.en
  %i.ep = insertelement <8 x ptr> poison, ptr %scevgep226, i64 0
  %i.eq = insertelement <8 x ptr> %i.ep, ptr %scevgep228, i64 1
  %i.er = insertelement <8 x ptr> %i.eq, ptr %scevgep230, i64 2
  %i.es = insertelement <8 x ptr> %i.er, ptr %i.ad, i64 3
  %i.et = insertelement <8 x ptr> %i.es, ptr %scevgep233, i64 4
  %i.eu = insertelement <8 x ptr> %i.et, ptr %scevgep235, i64 5
  %i.ev = insertelement <8 x ptr> %i.eu, ptr %scevgep237, i64 6
  %i.ew = insertelement <8 x ptr> %i.ev, ptr %scevgep239, i64 7
  %i.ex = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.ey = shufflevector <8 x ptr> %i.ex, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ez = icmp ult <8 x ptr> %i.ew, %i.ey
  %i.fa = and <8 x i1> %i.eo, %i.ez
  %i.fb = bitcast <8 x i1> %i.fa to i8
  %.not399 = icmp eq i8 %i.fb, 0
  br i1 %.not399, label %vector.ph270, label %scalar.ph268.preheader

vector.ph270:                                     ; preds = %vector.memcheck
  %i.fc = and i64 %wide.trip.count, 3             ; 2 uses
  %n.vec271 = sub nsw i64 %i.bi, %i.fc            ; 2 uses
  %i.fd = add nsw i64 %i.ba, %n.vec271
  br label %vector.body272

vector.body272:                                   ; preds = %vector.body272, %vector.ph270
  %index273 = phi i64 [ 0, %vector.ph270 ], [ %index.next282, %vector.body272 ] ; 2 uses
  %i.fe = add nuw i64 %i.ba, %index273            ; 5 uses
  %i.ff = trunc nuw nsw i64 %i.fe to i32          ; 3 uses
  %i.fg = xor i32 %i.ff, -1                       ; 2 uses
  %i.fh = add nsw i32 %i.g, %i.fg
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.fi
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 -12
  %wide.load = load <4 x i32>, ptr %i.fk, align 4, !tbaa !47, !alias.scope !178
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.fl = sext <4 x i32> %reverse to <4 x i64>
  %i.fm = sub nuw nsw i64 %i.fe, %i.bc            ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.fm
  %wide.load274 = load <4 x i32>, ptr %i.fn, align 16, !tbaa !47, !alias.scope !181
  %i.fo = sext <4 x i32> %wide.load274 to <4 x i64>
  %i.fp = mul nsw <4 x i64> %i.fo, %i.fl
  %i.fq = add nsw <4 x i64> %i.fp, splat (i64 1073741824)
  %i.fr = lshr <4 x i64> %i.fq, splat (i64 31)
  %i.fs = trunc <4 x i64> %i.fr to <4 x i32>
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.fe
  %wide.load275 = load <4 x i32>, ptr %i.ft, align 4, !tbaa !47, !alias.scope !183
  %i.fu = sext <4 x i32> %wide.load275 to <4 x i64>
  %i.fv = getelementptr [4 x i8], ptr %invariant.gep205, i64 %i.fe
  %wide.load276 = load <4 x i32>, ptr %i.fv, align 16, !tbaa !47, !alias.scope !185
  %i.fw = sext <4 x i32> %wide.load276 to <4 x i64>
  %i.fx = mul nsw <4 x i64> %i.fw, %i.fu
  %i.fy = add nsw <4 x i64> %i.fx, splat (i64 1073741824)
  %i.fz = lshr <4 x i64> %i.fy, splat (i64 31)
  %i.ga = trunc <4 x i64> %i.fz to <4 x i32>
  %i.gb = add nsw <4 x i32> %i.ga, %i.fs
  %i.gc = add nsw i32 %i.au, %i.fg
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.gd
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -12
  %wide.load277 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !47, !alias.scope !187
  %i.gg = sub nsw <4 x i32> zeroinitializer, %wide.load277
  %reverse278 = shufflevector <4 x i32> %i.gg, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.gh = sext <4 x i32> %reverse278 to <4 x i64>
  %i.gi = add i32 %i.aw, %i.ff
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.gj
  %wide.load279 = load <4 x i32>, ptr %i.gk, align 4, !tbaa !47, !alias.scope !189
  %i.gl = sext <4 x i32> %wide.load279 to <4 x i64>
  %i.gm = mul nsw <4 x i64> %i.gl, %i.gh
  %i.gn = add nsw <4 x i64> %i.gm, splat (i64 1073741824)
  %i.go = lshr <4 x i64> %i.gn, splat (i64 31)
  %i.gp = trunc <4 x i64> %i.go to <4 x i32>
  %i.gq = add nsw <4 x i32> %i.gb, %i.gp
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep207, i64 %i.fe
  %wide.load280 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !47, !alias.scope !191
  %i.gs = sub nsw <4 x i32> zeroinitializer, %wide.load280
  %i.gt = sext <4 x i32> %i.gs to <4 x i64>
  %i.gu = add i32 %i.az, %i.ff
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.gv
  %wide.load281 = load <4 x i32>, ptr %i.gw, align 4, !tbaa !47, !alias.scope !193
  %i.gx = sext <4 x i32> %wide.load281 to <4 x i64>
  %i.gy = mul nsw <4 x i64> %i.gx, %i.gt
  %i.gz = add nsw <4 x i64> %i.gy, splat (i64 1073741824)
  %i.ha = lshr <4 x i64> %i.gz, splat (i64 31)
  %i.hb = trunc <4 x i64> %i.ha to <4 x i32>
  %i.hc = add nsw <4 x i32> %i.gq, %i.hb
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fm
  store <4 x i32> %i.hc, ptr %i.hd, align 4, !tbaa !47, !alias.scope !195, !noalias !197
  %index.next282 = add nuw i64 %index273, 4       ; 2 uses
  %i.he = icmp eq i64 %index.next282, %n.vec271
  br i1 %i.he, label %middle.block283, label %vector.body272, !llvm.loop !198

middle.block283:                                  ; preds = %vector.body272
  %cmp.n284 = icmp eq i64 %i.fc, 0
  br i1 %cmp.n284, label %.preheader164, label %scalar.ph268.preheader

scalar.ph268.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block283
  %indvars.iv175.ph = phi i64 [ %i.ba, %vector.memcheck ], [ %i.ba, %vector.scevcheck ], [ %i.ba, %.lr.ph ], [ %i.fd, %middle.block283 ]
  br label %scalar.ph268

.preheader164:                                    ; preds = %scalar.ph268, %middle.block283
  %i.hf = zext nneg i32 %i.f to i64               ; 2 uses
  %i.hg = zext nneg i32 %i.ay to i64              ; 4 uses
  %i.hh = getelementptr [4 x i8], ptr %i.aa, i64 %i.hf ; 4 uses
  %invariant.gep209 = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.hf ; 2 uses
  %i.hi = getelementptr [4 x i8], ptr %i.aa, i64 %i.hg ; 3 uses
  %invariant.gep211 = getelementptr [4 x i8], ptr %i.c, i64 %i.bc ; 10 uses
  %scevgep288 = getelementptr i8, ptr %i.c, i64 %i.hg ; 8 uses
  %i.hj = shl nuw nsw i64 %i.am, 1                ; 4 uses
  %i.hk = getelementptr i8, ptr %0, i64 %i.hj
  %scevgep289 = getelementptr i8, ptr %i.hk, i64 4784
  %i.hl = add nuw nsw i32 %i.ay, %i.g
  %i.hm = sub nsw i32 %i.hl, %i.ac
  %i.hn = sext i32 %i.hm to i64
  %i.ho = shl nsw i64 %i.hn, 2                    ; 2 uses
  %scevgep290 = getelementptr i8, ptr %i.ad, i64 %i.ho
  %i.hp = getelementptr i8, ptr %i.ad, i64 %i.ho
  %scevgep291 = getelementptr i8, ptr %i.hp, i64 %i.hj
  %i.hq = add nuw nsw i32 %i.av, %i.g
  %i.hr = sub nsw i32 %i.hq, %i.ac
  %i.hs = sext i32 %i.hr to i64
  %i.ht = shl nsw i64 %i.hs, 2                    ; 2 uses
  %scevgep292 = getelementptr i8, ptr %i.ad, i64 %i.ht
  %i.hu = getelementptr i8, ptr %i.ad, i64 %i.ht
  %scevgep293 = getelementptr i8, ptr %i.hu, i64 %i.hj
  %i.hv = add nuw nsw i32 %i.f, %i.g
  %i.hw = sub nsw i32 %i.hv, %i.ac
  %i.hx = sext i32 %i.hw to i64
  %i.hy = shl nsw i64 %i.hx, 2                    ; 2 uses
  %scevgep294 = getelementptr i8, ptr %i.ad, i64 %i.hy
  %i.hz = getelementptr i8, ptr %i.ad, i64 %i.hy
  %scevgep295 = getelementptr i8, ptr %i.hz, i64 %i.hj
  %scevgep296 = getelementptr i8, ptr %i.ad, i64 %i.am
  %scevgep297 = getelementptr i8, ptr %i.ad, i64 %i.hg
  %6 = mul nuw nsw i64 %i.am, 10
  %7 = getelementptr i8, ptr %1, i64 %6
  %scevgep298.a = getelementptr i8, ptr %7, i64 13712
  %i.ia = mul nuw nsw i64 %i.am, 6
  %i.ib = getelementptr i8, ptr %1, i64 %i.ia
  %scevgep299 = getelementptr i8, ptr %i.ib, i64 13712
  %bound0300 = icmp ult ptr %invariant.gep211, %scevgep289
  %bound1301 = icmp ult ptr %i.ab, %scevgep288
  %found.conflict302 = and i1 %bound0300, %bound1301
  %bound0303 = icmp ult ptr %invariant.gep211, %scevgep291
  %bound1304 = icmp ult ptr %scevgep290, %scevgep288
  %found.conflict305 = and i1 %bound0303, %bound1304
  %conflict.rdx306 = or i1 %found.conflict302, %found.conflict305
  %bound0307 = icmp ult ptr %invariant.gep211, %scevgep293
  %bound1308 = icmp ult ptr %scevgep292, %scevgep288
  %found.conflict309 = and i1 %bound0307, %bound1308
  %conflict.rdx310 = or i1 %conflict.rdx306, %found.conflict309
  %bound0311 = icmp ult ptr %invariant.gep211, %scevgep295
  %bound1312 = icmp ult ptr %scevgep294, %scevgep288
  %found.conflict313 = and i1 %bound0311, %bound1312
  %conflict.rdx314 = or i1 %conflict.rdx310, %found.conflict313
  %bound0315 = icmp ult ptr %invariant.gep211, %scevgep297
  %bound1316 = icmp ult ptr %scevgep296, %scevgep288
  %found.conflict317 = and i1 %bound0315, %bound1316
  %conflict.rdx318 = or i1 %conflict.rdx314, %found.conflict317
  %bound0319 = icmp ult ptr %invariant.gep211, %i.hi
  %bound1320 = icmp ult ptr %scevgep298.a, %scevgep288
  %found.conflict321 = and i1 %bound0319, %bound1320
  %conflict.rdx322 = or i1 %conflict.rdx318, %found.conflict321
  %bound0323 = icmp ult ptr %invariant.gep211, %scevgep299
  %bound1324 = icmp ult ptr %i.hh, %scevgep288
  %found.conflict325 = and i1 %bound0323, %bound1324
  %conflict.rdx326 = or i1 %conflict.rdx322, %found.conflict325
  %bound0327 = icmp ult ptr %invariant.gep211, %i.hh
  %bound1328 = icmp ult ptr %invariant.gep, %scevgep288
  %found.conflict329 = and i1 %bound0327, %bound1328
  %conflict.rdx330 = or i1 %conflict.rdx326, %found.conflict329
  br i1 %conflict.rdx330, label %scalar.ph331, label %vector.body335

vector.body335:                                   ; preds = %.preheader164, %vector.body335
  %index336 = phi i64 [ %index.next347, %vector.body335 ], [ 0, %.preheader164 ] ; 6 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index336
  %wide.load337.a = load <4 x i32>, ptr %i.ic, align 4, !tbaa !47, !alias.scope !199
  %i.id = sext <4 x i32> %wide.load337.a to <4 x i64>
  %i.ie = add nuw nsw i64 %index336, %i.bd        ; 2 uses
  %i.if = sub nuw nsw i64 %i.ie, %i.bc
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.if
  %wide.load338.a = load <4 x i32>, ptr %i.ig, align 16, !tbaa !47, !alias.scope !202
  %i.ih = sext <4 x i32> %wide.load338.a to <4 x i64>
  %i.ii = mul nsw <4 x i64> %i.ih, %i.id
  %i.ij = add nsw <4 x i64> %i.ii, splat (i64 1073741824)
  %i.ik = lshr <4 x i64> %i.ij, splat (i64 31)
  %i.il = trunc <4 x i64> %i.ik to <4 x i32>
  %i.im = xor i64 %index336, -1                   ; 2 uses
  %i.in = getelementptr [4 x i8], ptr %i.hh, i64 %i.im
  %i.io = getelementptr i8, ptr %i.in, i64 -12
  %wide.load339 = load <4 x i32>, ptr %i.io, align 4, !tbaa !47, !alias.scope !204
  %i.ip = sub nsw <4 x i32> zeroinitializer, %wide.load339
  %reverse340 = shufflevector <4 x i32> %i.ip, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.iq = sext <4 x i32> %reverse340 to <4 x i64>
  %i.ir = trunc i64 %i.ie to i32                  ; 3 uses
  %i.is = add i32 %i.at, %i.ir
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.it
  %wide.load341.a = load <4 x i32>, ptr %i.iu, align 4, !tbaa !47, !alias.scope !206
  %i.iv = sext <4 x i32> %wide.load341.a to <4 x i64>
  %i.iw = mul nsw <4 x i64> %i.iv, %i.iq
  %i.ix = add nsw <4 x i64> %i.iw, splat (i64 1073741824)
  %i.iy = lshr <4 x i64> %i.ix, splat (i64 31)
  %i.iz = trunc <4 x i64> %i.iy to <4 x i32>
  %i.ja = add nsw <4 x i32> %i.iz, %i.il
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep209, i64 %index336
  %wide.load342.a = load <4 x i32>, ptr %i.jb, align 4, !tbaa !47, !alias.scope !208
  %i.jc = sub nsw <4 x i32> zeroinitializer, %wide.load342.a
  %i.jd = sext <4 x i32> %i.jc to <4 x i64>
  %i.je = add i32 %i.aw, %i.ir
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.jf
  %wide.load343.a = load <4 x i32>, ptr %i.jg, align 4, !tbaa !47, !alias.scope !210
  %i.jh = sext <4 x i32> %wide.load343.a to <4 x i64>
  %i.ji = mul nsw <4 x i64> %i.jh, %i.jd
  %i.jj = add nsw <4 x i64> %i.ji, splat (i64 1073741824)
  %i.jk = lshr <4 x i64> %i.jj, splat (i64 31)
  %i.jl = trunc <4 x i64> %i.jk to <4 x i32>
  %i.jm = add nsw <4 x i32> %i.ja, %i.jl
  %i.jn = getelementptr [4 x i8], ptr %i.hi, i64 %i.im
  %i.jo = getelementptr i8, ptr %i.jn, i64 -12
  %wide.load344 = load <4 x i32>, ptr %i.jo, align 4, !tbaa !47, !alias.scope !212
  %reverse345 = shufflevector <4 x i32> %wide.load344, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.jp = sext <4 x i32> %reverse345 to <4 x i64>
  %i.jq = add i32 %i.az, %i.ir
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.jr
  %wide.load346 = load <4 x i32>, ptr %i.js, align 4, !tbaa !47, !alias.scope !214
  %i.jt = sext <4 x i32> %wide.load346 to <4 x i64>
  %i.ju = mul nsw <4 x i64> %i.jt, %i.jp
  %i.jv = add nsw <4 x i64> %i.ju, splat (i64 1073741824)
  %i.jw = lshr <4 x i64> %i.jv, splat (i64 31)
  %i.jx = trunc <4 x i64> %i.jw to <4 x i32>
  %i.jy = add nsw <4 x i32> %i.jm, %i.jx
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep211, i64 %index336
  store <4 x i32> %i.jy, ptr %i.jz, align 4, !tbaa !47, !alias.scope !216, !noalias !218
  %index.next347 = add nuw i64 %index336, 4       ; 2 uses
  %i.ka = icmp eq i64 %index.next347, %i.i
  br i1 %i.ka, label %.preheader, label %vector.body335, !llvm.loop !219

scalar.ph268:                                     ; preds = %scalar.ph268.preheader, %scalar.ph268
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %scalar.ph268 ], [ %indvars.iv175.ph, %scalar.ph268.preheader ] ; 6 uses
  %i.kb = trunc nuw nsw i64 %indvars.iv175 to i32 ; 3 uses
  %i.kc = xor i32 %i.kb, -1                       ; 2 uses
  %i.kd = add nsw i32 %i.g, %i.kc
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ke
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !47
  %i.kh = sext i32 %i.kg to i64
  %i.ki = sub nuw nsw i64 %indvars.iv175, %i.bc   ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ki
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !47
  %i.kl = sext i32 %i.kk to i64
  %i.km = mul nsw i64 %i.kl, %i.kh
  %i.kn = add nsw i64 %i.km, 1073741824
  %i.ko = lshr i64 %i.kn, 31
  %i.kp = trunc i64 %i.ko to i32
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv175
  %i.kq = load i32, ptr %gep, align 4, !tbaa !47
  %i.kr = sext i32 %i.kq to i64
  %gep206 = getelementptr [4 x i8], ptr %invariant.gep205, i64 %indvars.iv175
  %i.ks = load i32, ptr %gep206, align 4, !tbaa !47
  %i.kt = sext i32 %i.ks to i64
  %i.ku = mul nsw i64 %i.kt, %i.kr
  %i.kv = add nsw i64 %i.ku, 1073741824
  %i.kw = lshr i64 %i.kv, 31
  %i.kx = trunc i64 %i.kw to i32
  %i.ky = add nsw i32 %i.kx, %i.kp
  %i.kz = add nsw i32 %i.au, %i.kc
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !47
  %i.ld = sub nsw i32 0, %i.lc
  %i.le = sext i32 %i.ld to i64
  %i.lf = add i32 %i.aw, %i.kb
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !47
  %i.lj = sext i32 %i.li to i64
  %i.lk = mul nsw i64 %i.lj, %i.le
  %i.ll = add nsw i64 %i.lk, 1073741824
  %i.lm = lshr i64 %i.ll, 31
  %i.ln = trunc i64 %i.lm to i32
  %i.lo = add nsw i32 %i.ky, %i.ln
  %gep208 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep207, i64 %indvars.iv175
  %i.lp = load i32, ptr %gep208, align 4, !tbaa !47
  %i.lq = sub nsw i32 0, %i.lp
  %i.lr = sext i32 %i.lq to i64
  %i.ls = add i32 %i.az, %i.kb
  %i.lt = sext i32 %i.ls to i64
  %i.lu = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !47
  %i.lw = sext i32 %i.lv to i64
  %i.lx = mul nsw i64 %i.lw, %i.lr
  %i.ly = add nsw i64 %i.lx, 1073741824
  %i.lz = lshr i64 %i.ly, 31
  %i.ma = trunc i64 %i.lz to i32
  %i.mb = add nsw i32 %i.lo, %i.ma
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ki
  store i32 %i.mb, ptr %i.mc, align 4, !tbaa !47
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next176, %wide.trip.count
  br i1 %exitcond.not, label %.preheader164, label %scalar.ph268, !llvm.loop !220

.preheader:                                       ; preds = %vector.body335, %scalar.ph331
  %i.md = add nuw nsw i32 %i.g, %i.f
  %i.me = add nuw nsw i32 %i.g, %i.ac
  %i.mf = zext i32 %i.az to i64                   ; 2 uses
  %i.mg = zext i32 %i.aw to i64                   ; 2 uses
  %i.mh = zext nneg i32 %i.at to i64
  %i.mi = zext nneg i32 %i.md to i64              ; 2 uses
  %i.mj = zext nneg i32 %i.me to i64              ; 2 uses
  %wide.trip.count185 = zext nneg i32 %i.ac to i64
  %invariant.gep213 = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bd ; 3 uses
  %invariant.gep215 = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.mh ; 2 uses
  %i.mk = getelementptr [4 x i8], ptr %i.aa, i64 %i.bd ; 2 uses
  %invariant.gep217 = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.mg ; 3 uses
  %invariant.gep219 = getelementptr [4 x i8], ptr %i.aa, i64 %i.mi ; 3 uses
  %invariant.gep221 = getelementptr [4 x i8], ptr %i.ad, i64 %i.mf ; 3 uses
  %invariant.gep223 = getelementptr [4 x i8], ptr %i.c, i64 %i.mj ; 8 uses
  %i.ml = shl nuw nsw i64 %i.mj, 2
  %i.mm = getelementptr i8, ptr %i.c, i64 %i.ml
  %scevgep352.a = getelementptr i8, ptr %i.mm, i64 %i.am ; 6 uses
  %i.mn = getelementptr i8, ptr %0, i64 %i.hg
  %scevgep353.a = getelementptr i8, ptr %i.mn, i64 4784
  %i.mo = shl nuw nsw i64 %i.mf, 2
  %i.mp = getelementptr i8, ptr %i.ad, i64 %i.mo
  %scevgep354.a = getelementptr i8, ptr %i.mp, i64 %i.am
  %i.mq = shl nuw nsw i64 %i.mg, 2
  %i.mr = getelementptr i8, ptr %i.ad, i64 %i.mq
  %scevgep355.a = getelementptr i8, ptr %i.mr, i64 %i.am
  %i.ms = shl nuw nsw i64 %i.bb, 2
  %i.mt = getelementptr i8, ptr %i.ad, i64 %i.ms
  %scevgep356.a = getelementptr i8, ptr %i.mt, i64 %i.am
  %8 = shl nuw nsw i64 %i.mi, 2
  %9 = getelementptr i8, ptr %1, i64 %8
  %i.mu = getelementptr i8, ptr %9, i64 %i.am
  %scevgep357.a = getelementptr i8, ptr %i.mu, i64 13712
  %i.mv = getelementptr i8, ptr %1, i64 %i.am
  %scevgep358 = getelementptr i8, ptr %i.mv, i64 13712
  %bound0359 = icmp ult ptr %invariant.gep223, %scevgep353.a
  %bound1360 = icmp ult ptr %invariant.gep213, %scevgep352.a
  %found.conflict361 = and i1 %bound0359, %bound1360
  %bound0362 = icmp ult ptr %invariant.gep223, %scevgep354.a
  %bound1363 = icmp ult ptr %invariant.gep221, %scevgep352.a
  %found.conflict364 = and i1 %bound0362, %bound1363
  %conflict.rdx365 = or i1 %found.conflict361, %found.conflict364
  %bound0366 = icmp ult ptr %invariant.gep223, %scevgep355.a
  %bound1367 = icmp ult ptr %invariant.gep217, %scevgep352.a
  %found.conflict368 = and i1 %bound0366, %bound1367
  %conflict.rdx369 = or i1 %conflict.rdx365, %found.conflict368
  %bound0370 = icmp ult ptr %invariant.gep223, %scevgep356.a
  %bound1371 = icmp ult ptr %invariant.gep205, %scevgep352.a
  %found.conflict372 = and i1 %bound0370, %bound1371
  %conflict.rdx373 = or i1 %conflict.rdx369, %found.conflict372
  %bound0374 = icmp ult ptr %invariant.gep223, %scevgep357.a
  %bound1375 = icmp ult ptr %invariant.gep219, %scevgep352.a
  %found.conflict376 = and i1 %bound0374, %bound1375
  %conflict.rdx377 = or i1 %conflict.rdx373, %found.conflict376
  %bound0378 = icmp ult ptr %invariant.gep223, %invariant.gep
  %bound1379 = icmp ult ptr %scevgep358, %scevgep352.a
  %found.conflict380 = and i1 %bound0378, %bound1379
  %conflict.rdx381 = or i1 %conflict.rdx377, %found.conflict380
  br i1 %conflict.rdx381, label %scalar.ph382, label %vector.body386

vector.body386:                                   ; preds = %.preheader, %vector.body386
  %index387 = phi i64 [ %index.next395, %vector.body386 ], [ 0, %.preheader ] ; 8 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep213, i64 %index387
  %wide.load388.a = load <4 x i32>, ptr %i.mw, align 4, !tbaa !47, !alias.scope !221
  %i.mx = sext <4 x i32> %wide.load388.a to <4 x i64>
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep215, i64 %index387
  %wide.load389.a = load <4 x i32>, ptr %i.my, align 16, !tbaa !47, !alias.scope !224
  %i.mz = sext <4 x i32> %wide.load389.a to <4 x i64>
  %i.na = mul nsw <4 x i64> %i.mz, %i.mx
  %i.nb = add nsw <4 x i64> %i.na, splat (i64 1073741824)
  %i.nc = lshr <4 x i64> %i.nb, splat (i64 31)
  %i.nd = trunc <4 x i64> %i.nc to <4 x i32>
  %i.ne = xor i64 %index387, -1
  %i.nf = getelementptr [4 x i8], ptr %i.mk, i64 %i.ne
  %i.ng = getelementptr i8, ptr %i.nf, i64 -12
  %wide.load390 = load <4 x i32>, ptr %i.ng, align 4, !tbaa !47, !alias.scope !226
  %i.nh = sub nsw <4 x i32> zeroinitializer, %wide.load390
  %reverse391 = shufflevector <4 x i32> %i.nh, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ni = sext <4 x i32> %reverse391 to <4 x i64>
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep217, i64 %index387
  %wide.load392.a = load <4 x i32>, ptr %i.nj, align 16, !tbaa !47, !alias.scope !228
  %i.nk = sext <4 x i32> %wide.load392.a to <4 x i64>
  %i.nl = mul nsw <4 x i64> %i.nk, %i.ni
  %i.nm = add nsw <4 x i64> %i.nl, splat (i64 1073741824)
  %i.nn = lshr <4 x i64> %i.nm, splat (i64 31)
  %i.no = trunc <4 x i64> %i.nn to <4 x i32>
  %i.np = add nsw <4 x i32> %i.no, %i.nd
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep219, i64 %index387
  %wide.load393.a = load <4 x i32>, ptr %i.nq, align 4, !tbaa !47, !alias.scope !230
  %i.nr = sub nsw <4 x i32> zeroinitializer, %wide.load393.a
  %i.ns = sext <4 x i32> %i.nr to <4 x i64>
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep221, i64 %index387
  %wide.load394 = load <4 x i32>, ptr %i.nt, align 16, !tbaa !47, !alias.scope !232
  %i.nu = sext <4 x i32> %wide.load394 to <4 x i64>
  %i.nv = mul nsw <4 x i64> %i.nu, %i.ns
  %i.nw = add nsw <4 x i64> %i.nv, splat (i64 1073741824)
  %i.nx = lshr <4 x i64> %i.nw, splat (i64 31)
  %i.ny = trunc <4 x i64> %i.nx to <4 x i32>
  %i.nz = add nsw <4 x i32> %i.np, %i.ny
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep223, i64 %index387
  store <4 x i32> %i.nz, ptr %i.oa, align 4, !tbaa !47, !alias.scope !234, !noalias !236
  %index.next395 = add nuw i64 %index387, 4       ; 2 uses
  %i.ob = icmp eq i64 %index.next395, %i.ba
  br i1 %i.ob, label %middle.block396, label %vector.body386, !llvm.loop !237

scalar.ph331:                                     ; preds = %.preheader164, %scalar.ph331
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %scalar.ph331 ], [ 0, %.preheader164 ] ; 6 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv177
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !47
  %i.oe = sext i32 %i.od to i64
  %i.of = add nuw nsw i64 %indvars.iv177, %i.bd   ; 3 uses
  %i.og = sub nuw nsw i64 %i.of, %i.bc
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.og
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !47
  %i.oj = sext i32 %i.oi to i64
  %i.ok = mul nsw i64 %i.oj, %i.oe
  %i.ol = add nsw i64 %i.ok, 1073741824
  %i.om = lshr i64 %i.ol, 31
  %i.on = trunc i64 %i.om to i32
  %i.oo = xor i64 %indvars.iv177, -1              ; 2 uses
  %i.op = getelementptr [4 x i8], ptr %i.hh, i64 %i.oo
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !47
  %i.or = sub nsw i32 0, %i.oq
  %i.os = sext i32 %i.or to i64
  %i.ot = trunc i64 %i.of to i32
  %i.ou = add i32 %i.at, %i.ot
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ov
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !47
  %i.oy = sext i32 %i.ox to i64
  %i.oz = mul nsw i64 %i.oy, %i.os
  %i.pa = add nsw i64 %i.oz, 1073741824
  %i.pb = lshr i64 %i.pa, 31
  %i.pc = trunc i64 %i.pb to i32
  %i.pd = add nsw i32 %i.pc, %i.on
  %gep210 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep209, i64 %indvars.iv177
  %i.pe = load i32, ptr %gep210, align 4, !tbaa !47
  %i.pf = sub nsw i32 0, %i.pe
  %i.pg = sext i32 %i.pf to i64
  %i.ph = trunc nuw nsw i64 %i.of to i32          ; 2 uses
  %i.pi = add i32 %i.aw, %i.ph
  %i.pj = sext i32 %i.pi to i64
  %i.pk = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.pj
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !47
  %i.pm = sext i32 %i.pl to i64
  %i.pn = mul nsw i64 %i.pm, %i.pg
  %i.po = add nsw i64 %i.pn, 1073741824
  %i.pp = lshr i64 %i.po, 31
  %i.pq = trunc i64 %i.pp to i32
  %i.pr = add nsw i32 %i.pd, %i.pq
  %i.ps = getelementptr [4 x i8], ptr %i.hi, i64 %i.oo
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !47
  %i.pu = sext i32 %i.pt to i64
  %i.pv = add i32 %i.az, %i.ph
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.pw
  %i.py = load i32, ptr %i.px, align 4, !tbaa !47
  %i.pz = sext i32 %i.py to i64
  %i.qa = mul nsw i64 %i.pz, %i.pu
  %i.qb = add nsw i64 %i.qa, 1073741824
  %i.qc = lshr i64 %i.qb, 31
  %i.qd = trunc i64 %i.qc to i32
  %i.qe = add nsw i32 %i.pr, %i.qd
  %gep212 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep211, i64 %indvars.iv177
  store i32 %i.qe, ptr %gep212, align 4, !tbaa !47
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %exitcond181.not = icmp eq i64 %indvars.iv.next178, %i.i
  br i1 %exitcond181.not, label %.preheader, label %scalar.ph331, !llvm.loop !238

scalar.ph382:                                     ; preds = %.preheader, %scalar.ph382
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %scalar.ph382 ], [ 0, %.preheader ] ; 8 uses
  %gep214 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep213, i64 %indvars.iv182
  %i.qf = load i32, ptr %gep214, align 4, !tbaa !47
  %i.qg = sext i32 %i.qf to i64
  %gep216 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep215, i64 %indvars.iv182
  %i.qh = load i32, ptr %gep216, align 4, !tbaa !47
  %i.qi = sext i32 %i.qh to i64
  %i.qj = mul nsw i64 %i.qi, %i.qg
  %i.qk = add nsw i64 %i.qj, 1073741824
  %i.ql = lshr i64 %i.qk, 31
  %i.qm = trunc i64 %i.ql to i32
  %i.qn = xor i64 %indvars.iv182, -1
  %i.qo = getelementptr [4 x i8], ptr %i.mk, i64 %i.qn
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !47
  %i.qq = sub nsw i32 0, %i.qp
  %i.qr = sext i32 %i.qq to i64
  %gep218 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep217, i64 %indvars.iv182
  %i.qs = load i32, ptr %gep218, align 4, !tbaa !47
  %i.qt = sext i32 %i.qs to i64
  %i.qu = mul nsw i64 %i.qt, %i.qr
  %i.qv = add nsw i64 %i.qu, 1073741824
  %i.qw = lshr i64 %i.qv, 31
  %i.qx = trunc i64 %i.qw to i32
  %i.qy = add nsw i32 %i.qx, %i.qm
  %gep220 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep219, i64 %indvars.iv182
  %i.qz = load i32, ptr %gep220, align 4, !tbaa !47
  %i.ra = sub nsw i32 0, %i.qz
  %i.rb = sext i32 %i.ra to i64
  %gep222 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep221, i64 %indvars.iv182
  %i.rc = load i32, ptr %gep222, align 4, !tbaa !47
  %i.rd = sext i32 %i.rc to i64
  %i.re = mul nsw i64 %i.rd, %i.rb
  %i.rf = add nsw i64 %i.re, 1073741824
  %i.rg = lshr i64 %i.rf, 31
  %i.rh = trunc i64 %i.rg to i32
  %i.ri = add nsw i32 %i.qy, %i.rh
  %gep224 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep223, i64 %indvars.iv182
  store i32 %i.ri, ptr %gep224, align 4, !tbaa !47
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next183, %wide.trip.count185
  br i1 %exitcond186.not, label %middle.block396, label %scalar.ph382, !llvm.loop !239

middle.block396:                                  ; preds = %vector.body386, %scalar.ph382
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.am
  %i.rk = shl nuw nsw i32 %i.f, 3
  %i.rl = zext nneg i32 %i.rk to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.rj, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.rl, i1 false)
  %i.rm = shl nuw nsw i64 %i.am, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 4 dereferenceable(1) %i.ab, i64 %i.rm, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_dependent_coupling_fixed(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 23256
  %i.e = load i32, ptr %i.d, align 8, !tbaa !240
  %i.f = icmp eq i32 %i.e, 4
  br i1 %i.f, label %bb.b, label %bb.c
end_hunk_0
