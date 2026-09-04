Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_palette?download=true
inline.NumInlined: 3168
inline.NumDeleted: 1664
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 29
begin_hunk_0_@"_ZZN3jxl19FwdPaletteIterationERNS_5ImageEjjRjS2_bbRNS_9PredictorERKNS_8weighted6HeaderERNS_20PaletteIterationDataEENK3$_1clEi":bb.a
  %i.db = load i32, ptr %i.l, align 4, !tbaa !35  ; 3 uses
  %.not.i = icmp sle i32 %i.da, %1
  %i.dc = add nsw i32 %i.da, 64                   ; 2 uses
  %i.dd = icmp slt i32 %1, %i.dc                  ; 2 uses
  %or.cond.i = select i1 %.not.i, i1 %i.dd, i1 false
  br i1 %or.cond.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph.split
  %i.de = icmp samesign ugt i64 %.02633, 2
  br i1 %i.de, label %_ZN3jxl16palette_internalL15GetPaletteValueEPKiimiii.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.df = sub nsw i32 %1, %i.da
  %.tr.i = trunc nuw nsw i64 %.02633 to i32
  %i.dg = shl nuw nsw i32 %.tr.i, 1
  %i.dh = ashr i32 %i.df, %i.dg
  %i.di = srem i32 %i.dh, 4
  %i.dj = sext i32 %i.di to i64                   ; 2 uses
  %i.dk = zext nneg i32 %i.db to i64
  %mulshl.i.i = shl i64 %i.dj, %i.dk
  %i.dl = sub i64 %mulshl.i.i, %i.dj
  %i.dm = lshr i64 %i.dl, 2
  %i.dn = trunc i64 %i.dm to i32
  %i.do = tail call i32 @llvm.smax.i32(i32 %i.db, i32 3)
  %.sroa.speculated.i = add nsw i32 %i.do, -3
  %i.dp = shl nuw i32 1, %.sroa.speculated.i
  %i.dq = add nsw i32 %i.dp, %i.dn
  br label %_ZN3jxl16palette_internalL15GetPaletteValueEPKiimiii.exit

bb.l:                                             ; preds = %.lr.ph.split
  br i1 %i.dd, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dr = icmp samesign ugt i64 %.02633, 2
  br i1 %i.dr, label %_ZN3jxl16palette_internalL15GetPaletteValueEPKiimiii.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ds = sub nsw i32 %1, %i.dc                   ; 3 uses
  switch i64 %.02633, label %bb.q [
    i64 2, label %bb.p
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.dt = sdiv i32 %i.ds, 5
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.du = sdiv i32 %i.ds, 25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.038.i = phi i32 [ %i.ds, %bb.n ], [ %i.du, %bb.p ], [ %i.dt, %bb.o ]
  %i.dv = srem i32 %.038.i, 5
  %i.dw = sext i32 %i.dv to i64                   ; 2 uses
  %i.dx = zext nneg i32 %i.db to i64
  %mulshl.i47.i = shl i64 %i.dw, %i.dx
  %i.dy = sub i64 %mulshl.i47.i, %i.dw
  %i.dz = lshr i64 %i.dy, 2
  %i.ea = trunc i64 %i.dz to i32
  br label %_ZN3jxl16palette_internalL15GetPaletteValueEPKiimiii.exit

bb.r:                                             ; preds = %bb.l
  %i.eb = mul nsw i64 %i.n, %.02633
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.eb
  %i.ec = load i32, ptr %gep, align 4, !tbaa !35
  br label %_ZN3jxl16palette_internalL15GetPaletteValueEPKiimiii.exit

_ZN3jxl16palette_internalL15GetPaletteValueEPKiimiii.exit: ; preds = %bb.j, %bb.k, %bb.m, %bb.q, %bb.r
  %.037.i = phi i32 [ %i.ec, %bb.r ], [ 0, %bb.m ], [ %i.ea, %bb.q ], [ %i.dq, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.02633 ; 2 uses
  store i32 %.037.i, ptr %i.ed, align 4, !tbaa !35
  %i.ee = load i32, ptr %i.aa, align 4, !tbaa !35
  %i.ef = icmp slt i32 %1, %i.ee
  br i1 %i.ef, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN3jxl16palette_internalL15GetPaletteValueEPKiimiii.exit
  %i.eg = load ptr, ptr %i.ac, align 8, !tbaa !34
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.02633
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !35
  %i.ej = add nsw i32 %i.ei, %.037.i
  store i32 %i.ej, ptr %i.ed, align 4, !tbaa !35
  br label %bb.t

bb.t:                                             ; preds = %_ZN3jxl16palette_internalL15GetPaletteValueEPKiimiii.exit, %bb.s
  %i.ek = add nuw nsw i64 %.02633, 1              ; 2 uses
  %i.el = load i32, ptr %i.a, align 4, !tbaa !35
  %i.em = zext i32 %i.el to i64
  %i.en = icmp samesign ult i64 %i.ek, %i.em
  br i1 %i.en, label %.lr.ph.split, label %._crit_edge, !llvm.loop !323

bb.u:                                             ; preds = %._crit_edge
  %i.eo = icmp slt i32 %1, 0
  br i1 %i.eo, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ep = mul nsw i32 %1, -2
  %i.eq = uitofp nneg i32 %i.ep to float
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !332, !nonnull !84, !align !151
  %i.et = load i32, ptr %i.es, align 4, !tbaa !35
  %i.eu = icmp slt i32 %1, %i.et
  br i1 %i.eu, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !330, !nonnull !84, !align !151
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !35 ; 2 uses
  %i.ey = icmp slt i32 %1, %i.ex
  br i1 %i.ey, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ez = add nsw i32 %i.ex, 64
  %i.fa = icmp slt i32 %1, %i.ez
  %. = select i1 %i.fa, float 7.000000e+01, float 2.560000e+02
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %._crit_edge, %bb.v
  %.025 = phi float [ 1.500000e+02, %bb.x ], [ %i.eq, %bb.v ], [ -1.240000e+02, %._crit_edge ], [ 2.500000e+02, %bb.w ], [ %., %bb.y ]
  %i.fb = fadd float %.025, %i.cy                 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !335, !nonnull !84, !align !151 ; 2 uses
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !29
  %i.ff = fcmp olt float %i.fb, %i.fe
  br i1 %i.ff, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  store float %i.fb, ptr %i.fd, align 4, !tbaa !29
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !336, !nonnull !84, !align !151
  store i32 %1, ptr %i.fh, align 4, !tbaa !35
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !332, !nonnull !84, !align !151
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !35
  %i.fl = icmp slt i32 %1, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !337, !nonnull !84
  %i.fo = zext i1 %i.fl to i8
  store i8 %i.fo, ptr %i.fn, align 1, !tbaa !82
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !338, !nonnull !84, !align !150 ; 4 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !68
  %i.fs = load ptr, ptr %i.ck, align 8, !tbaa !68
  store ptr %i.fs, ptr %i.fq, align 8, !tbaa !68
  store ptr %i.fr, ptr %i.ck, align 8, !tbaa !68
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.fv = load ptr, ptr %i.ft, align 8, !tbaa !68
  %i.fw = load ptr, ptr %i.fu, align 8, !tbaa !68
  store ptr %i.fw, ptr %i.ft, align 8, !tbaa !68
  store ptr %i.fv, ptr %i.fu, align 8, !tbaa !68
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %i.fz = load ptr, ptr %i.fx, align 8, !tbaa !68
  %i.ga = load ptr, ptr %i.fy, align 8, !tbaa !68
  store ptr %i.ga, ptr %i.fx, align 8, !tbaa !68
  store ptr %i.fz, ptr %i.fy, align 8, !tbaa !68
  %i.gb = load ptr, ptr %0, align 8, !tbaa !326, !nonnull !84, !align !151 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !35
  %.not37 = icmp eq i32 %i.gc, 0
  br i1 %.not37, label %.loopexit, label %.lr.ph36

.lr.ph36:                                         ; preds = %bb.aa
  %i.gd = load ptr, ptr %i.cu, align 8, !tbaa !27
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !333, !nonnull !84, !align !150
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !34
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !339, !nonnull !84, !align !150
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !34
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph36, %bb.ab
  %.034 = phi i64 [ 0, %.lr.ph36 ], [ %i.gs, %bb.ab ] ; 4 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %.034
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !29
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %.034
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !35
  %i.go = sitofp i32 %i.gn to float
  %i.gp = fsub float %i.gl, %i.go
  %i.gq = fptosi float %i.gp to i32
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %.034
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !35
  %i.gs = add nuw nsw i64 %.034, 1                ; 2 uses
  %i.gt = load i32, ptr %i.gb, align 4, !tbaa !35
  %i.gu = zext i32 %i.gt to i64
  %i.gv = icmp samesign ult i64 %i.gs, %i.gu
  br i1 %i.gv, label %bb.ab, label %.loopexit, !llvm.loop !324

.loopexit:                                        ; preds = %bb.ab, %bb.aa, %bb.z
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE5eraseENS_11__wrap_iterIPKS2_EES9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !49     ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 4 uses
  %.not = icmp eq ptr %1, %2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %2 to i64
  %i.g = sub i64 %i.f, %i.b
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !136  ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not7.i.i.i.i.i, label %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %storemerge9.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.b ] ; 7 uses
  %.08.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.b ] ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i, i64 56
  %i.m = load <2 x i64>, ptr %i.k, align 8, !tbaa !54
  store <2 x i64> %i.m, ptr %i.l, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i, i64 72
  %i.p = load <2 x i32>, ptr %i.n, align 8, !tbaa !35
  store <2 x i32> %i.p, ptr %i.o, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80
  %i.r = load i32, ptr %i.q, align 8, !tbaa !137
  %i.s = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i, i64 80
  store i32 %i.r, ptr %i.s, align 8, !tbaa !137
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %storemerge9.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(84) %.08.i.i.i.i.i, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  %i.v = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.u) #19 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !64
  %i.y = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i, i64 48
  store i64 %i.x, ptr %i.y, align 8, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 88 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %storemerge9.i.i.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !136
  %3 = ptrtoint ptr %i.aa to i64
  br label %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit

_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit: ; preds = %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.loopexit, %bb.b
  %i.ab = phi ptr [ %i.j, %bb.b ], [ %.pre, %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.loopexit ] ; 2 uses
  %storemerge.lcssa.i.i.i.i.i = phi i64 [ %i.b, %bb.b ], [ %3, %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit.loopexit ]
  %i.ac = sub i64 %storemerge.lcssa.i.i.i.i.i, %i.b
  %i.ad = getelementptr inbounds i8, ptr %i.e, i64 %i.ac ; 3 uses
  %.not6.i.i = icmp eq ptr %i.ad, %i.ab
  br i1 %.not6.i.i, label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.ab, %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit ] ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.07.i.i, i64 -88 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.07.i.i, i64 -64
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.af) #19
  %.not.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit, label %.lr.ph.i.i, !llvm.loop !6

_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit: ; preds = %.lr.ph.i.i, %_ZNSt3__14moveB8nn180100IPN3jxl7ChannelES3_EET0_T_S5_S4_.exit
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !136
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt3__16vectorIN3jxl7ChannelENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit, %bb.a
  ret ptr %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIN3jxl8weighted5StateENS_9allocatorIS3_EEED2B8nn180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !112    ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__16vectorIN3jxl8weighted5StateENS_9allocatorIS3_EEE16__destroy_vectorclB8nn180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91   ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorIN3jxl8weighted5StateENS_9allocatorIS3_EEE7__clearB8nn180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.e, %bb.c ]
  %i.e = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -424 ; 3 uses
  tail call void @_ZNSt3__19allocatorIN3jxl8weighted5StateEE7destroyB8nn180100EPS3_(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull %i.e) #22
  %.not.i.i.i = icmp eq ptr %i.a, %i.e
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3jxl8weighted5StateENS_9allocatorIS3_EEE7__clearB8nn180100Ev.exit.loopexit.i, label %bb.c, !llvm.loop !340

_ZNSt3__16vectorIN3jxl8weighted5StateENS_9allocatorIS3_EEE7__clearB8nn180100Ev.exit.loopexit.i: ; preds = %bb.c
  %.pre1.i = load ptr, ptr %0, align 8, !tbaa !112
  br label %_ZNSt3__16vectorIN3jxl8weighted5StateENS_9allocatorIS3_EEE7__clearB8nn180100Ev.exit.i

_ZNSt3__16vectorIN3jxl8weighted5StateENS_9allocatorIS3_EEE7__clearB8nn180100Ev.exit.i: ; preds = %_ZNSt3__16vectorIN3jxl8weighted5StateENS_9allocatorIS3_EEE7__clearB8nn180100Ev.exit.loopexit.i, %bb.b
  %i.f = phi ptr [ %.pre1.i, %_ZNSt3__16vectorIN3jxl8weighted5StateENS_9allocatorIS3_EEE7__clearB8nn180100Ev.exit.loopexit.i ], [ %i.a, %bb.b ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !91
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.k) #23
  br label %_ZNSt3__16vectorIN3jxl8weighted5StateENS_9allocatorIS3_EEE16__destroy_vectorclB8nn180100Ev.exit

_ZNSt3__16vectorIN3jxl8weighted5StateENS_9allocatorIS3_EEE16__destroy_vectorclB8nn180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorIN3jxl8weighted5StateENS_9allocatorIS3_EEE7__clearB8nn180100Ev.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl10FwdPaletteERNS_5ImageEjjRjS2_bbRNS_9PredictorERKNS_8weighted6HeaderE(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %7, ptr noundef nonnull align 8 dereferenceable(56) %8) local_unnamed_addr #4 {
bb.a:
  %9 = alloca %"struct.jxl::PaletteIterationData", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store i8 0, ptr %9, align 8, !tbaa !105
  %scevgep.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %scevgep.i, i8 0, i64 168, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.c = load i32, ptr %3, align 4, !tbaa !35
  store i32 %i.c, ptr %i.a, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.d = load i32, ptr %4, align 4, !tbaa !35
  store i32 %i.d, ptr %i.b, align 4, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp sgt i32 %i.f, 7
  %or.cond = select i1 %6, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = call i32 @_ZN3jxl19FwdPaletteIterationERNS_5ImageEjjRjS2_bbRNS_9PredictorERKNS_8weighted6HeaderERNS_20PaletteIterationDataE(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext %5, i1 noundef zeroext true, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(176) %9) #22 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i8 1, ptr %9, align 8, !tbaa !105
  %i.j = call i32 @_ZN3jxl19FwdPaletteIterationERNS_5ImageEjjRjS2_bbRNS_9PredictorERKNS_8weighted6HeaderERNS_20PaletteIterationDataE(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(176) %9) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0 = phi i32 [ %i.j, %bb.c ], [ %i.h, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @_ZN3jxl20PaletteIterationDataD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  ret i32 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl20PaletteIterationDataD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %.ptr1 = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.a = load ptr, ptr %.ptr1, align 8, !tbaa !34 ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.a, ptr %i.b, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.g) #23
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit: ; preds = %bb.a, %bb.b
  %.ptr1.1 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %.ptr1.1, align 8, !tbaa !34 ; 4 uses
  %.not.i.i.1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.1, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.1, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.h, ptr %i.i, align 8, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.n) #23
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.1

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.1: ; preds = %bb.c, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit
  %.ptr1.2 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %.ptr1.2, align 8, !tbaa !34 ; 4 uses
  %.not.i.i.2 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.2, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.2, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.o, ptr %i.p, align 8, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !68
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.u) #23
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.2

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.2: ; preds = %bb.d, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !123  ; 4 uses
  %.not.i.i7 = icmp eq ptr %i.w, null
  br i1 %.not.i.i7, label %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8nn180100Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.w, ptr %i.x, align 8, !tbaa !121
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !122
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.w to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ac) #23
  br label %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8nn180100Ev.exit

_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8nn180100Ev.exit: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit.2, %bb.e
  %.ptr5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %.ptr5, align 8, !tbaa !34 ; 4 uses
  %.not.i.i8 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i8, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit9, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8nn180100Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !67
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !68
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ad to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.aj) #23
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit9

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit9: ; preds = %_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8nn180100Ev.exit, %bb.f
  %.ptr5.1 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %.ptr5.1, align 8, !tbaa !34 ; 4 uses
  %.not.i.i8.1 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i8.1, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit9.1, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit9
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !67
end_hunk_0
