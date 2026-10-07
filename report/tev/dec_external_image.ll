Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dec_external_image?download=true
inline.NumInlined: 1219
inline.NumDeleted: 470
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN3jxl25ConvertChannelsToExternalEPPKNS_5PlaneIfEEmmb13JxlEndiannessmPNS_10ThreadPoolEPvmRKNS_13PixelCallbackENS_11OrientationE:bb.a
  %i.ab = add nuw nsw i64 %2, 7
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = mul nuw nsw i64 %i.ac, %1
  %.not77.not = icmp eq i32 %10, 1
  %.pre207 = load ptr, ptr %53, align 8, !tbaa !38 ; 2 uses
  br i1 %.not77.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %50, i64 56 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %50, i64 24 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %50, i64 48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %51, i64 24 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %51, i64 48 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.an = icmp eq ptr %6, null                    ; 7 uses
  %i.ao = getelementptr i8, ptr %6, i64 8         ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %47, i64 56 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %47, i64 24 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %47, i64 48 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %48, i64 24 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %48, i64 48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %49, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %44, i64 56 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %44, i64 24 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %44, i64 48 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %45, i64 24 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %45, i64 48 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %46, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %46, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %41, i64 56 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %41, i64 24 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %41, i64 48 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %22, i64 48
  %i.bu = getelementptr inbounds nuw i8, ptr %42, i64 24 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %42, i64 48 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %43, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %38, i64 56 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %25, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %38, i64 48 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %25, i64 48
  %i.cf = getelementptr inbounds nuw i8, ptr %39, i64 24 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %39, i64 48 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %40, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %35, i64 56 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %35, i64 24 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %35, i64 48 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %28, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %36, i64 24 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %36, i64 48 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %37, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %32, i64 56 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %32, i64 24 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %31, i64 24 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %32, i64 48 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %31, i64 48
  %i.dd = getelementptr inbounds nuw i8, ptr %33, i64 24 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %33, i64 48 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.cs
  %i.dj = phi i64 [ %1, %.lr.ph ], [ %i.akm, %bb.cs ]
  %i.dk = phi ptr [ %.pre207, %.lr.ph ], [ %i.akn, %bb.cs ] ; 2 uses
  %.070181 = phi i64 [ 0, %.lr.ph ], [ %i.ako, %bb.cs ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %.070181
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !22 ; 25 uses
  %.not78 = icmp eq ptr %i.dm, null
  br i1 %.not78, label %bb.cs, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dn = getelementptr inbounds nuw [56 x i8], ptr %57, i64 %.070181 ; 43 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.do = load i32, ptr %i.dm, align 8, !tbaa !40 ; 8 uses
  %i.dp = zext i32 %i.do to i64
  store i64 %i.dp, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !41 ; 8 uses
  %i.ds = zext i32 %i.dr to i64
  store i64 %i.ds, ptr %i.b, align 8, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !25 ; 7 uses
  switch i32 %10, label %bb.cr [
    i32 2, label %bb.j
    i32 3, label %bb.t
    i32 4, label %bb.ad
    i32 5, label %bb.an
    i32 6, label %bb.ba
    i32 7, label %bb.bn
    i32 8, label %bb.by
  ]

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21, !noalias !249
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %31, i32 noundef %i.do, i32 noundef %i.dr, i64 noundef 4) #23, !noalias !249
  %i.dv = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %31, ptr noundef %i.du, i64 noundef 0) #23, !noalias !249 ; 2 uses
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %.critedge.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.dv, ptr %i.cy, align 8, !tbaa !44, !alias.scope !249
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i

.critedge.i.i:                                    ; preds = %bb.j
  store i32 0, ptr %i.cy, align 8, !tbaa !44, !alias.scope !249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %32, ptr noundef nonnull align 8 dereferenceable(56) %31, i64 24, i1 false)
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.da) #23
  %i.dx = load i64, ptr %i.dc, align 8, !tbaa !45, !noalias !249
  store i64 %i.dx, ptr %i.db, align 8, !tbaa !45, !alias.scope !249
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i: ; preds = %.critedge.i.i, %bb.k
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.da) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21, !noalias !249
  %i.dy = load i32, ptr %i.cy, align 8, !tbaa !44 ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.l, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.i

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit.i:       ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  br label %bb.cq

bb.l:                                             ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %33, ptr noundef nonnull align 8 dereferenceable(60) %32, i64 24, i1 false)
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %i.cz) #23
  %i.ea = load i64, ptr %i.db, align 8, !tbaa !45, !noalias !250
  store i64 %i.ea, ptr %i.de, align 8, !tbaa !45, !alias.scope !250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dn, ptr noundef nonnull align 8 dereferenceable(56) %33, i64 24, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.ec = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef nonnull align 8 dereferenceable(24) %i.dd) #23 ; 0 uses
  %i.ed = load i64, ptr %i.de, align 8, !tbaa !45
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !45
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dd) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #21
  store ptr %i.dm, ptr %34, align 8, !tbaa !22
  store ptr %i.dn, ptr %i.df, align 8, !tbaa !22
  store ptr %i.a, ptr %i.dg, align 8, !tbaa !247
  %i.ef = load i64, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %i.eg = trunc i64 %i.ef to i32                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  br i1 %i.an, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %wide.trip.count.i.i.i.i = and i64 %i.ef, 4294967295 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !46 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !47 ; 3 uses
  %i.em = load i64, ptr %i.a, align 8, !tbaa !18  ; 9 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.em, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.thread.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.n
  %i.en = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !46 ; 3 uses
  %i.eq = load i64, ptr %i.en, align 8, !tbaa !47 ; 3 uses
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr %i.ep, i64 %i.em
  %i.er = add nsw i64 %wide.trip.count.i.i.i.i, -1 ; 2 uses
  %i.es = mul i64 %i.eq, %i.er
  %i.et = shl i64 %i.em, 2                        ; 2 uses
  %i.eu = getelementptr i8, ptr %i.ep, i64 %i.es
  %scevgep = getelementptr i8, ptr %i.eu, i64 %i.et
  %i.ev = mul i64 %i.el, %i.er
  %i.ew = getelementptr i8, ptr %i.ej, i64 %i.ev
  %scevgep307 = getelementptr i8, ptr %i.ew, i64 %i.et
  %min.iters.check = icmp ult i64 %i.em, 8
  %bound0 = icmp ult ptr %i.ep, %scevgep307
  %bound1 = icmp ult ptr %i.ej, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.ex = or i64 %i.el, %i.eq
  %i.ey = icmp slt i64 %i.ex, 0
  %i.ez = or i1 %found.conflict, %i.ey
  %n.vec = and i64 %i.em, -8                      ; 3 uses
  %cmp.n = icmp eq i64 %i.em, %n.vec
  %xtraiter500 = and i64 %i.em, 3                 ; 2 uses
  %lcmp.mod501.not = icmp eq i64 %xtraiter500, 0
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i.loopexit.i.i.i, %.split.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.split.i.i.i ], [ %indvars.iv.next.i.i.i.i, %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i.loopexit.i.i.i ] ; 3 uses
  %i.fa = mul i64 %indvars.iv.i.i.i.i, %i.el
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.fa ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fb, i64 64) ]
  %i.fc = mul i64 %indvars.iv.i.i.i.i, %i.eq
  %gep.i.i.i = getelementptr i8, ptr %invariant.gep.i.i.i, i64 %i.fc ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ez
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.i.i.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %index ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %wide.load = load <4 x float>, ptr %i.fd, align 32, !tbaa !49, !alias.scope !251
  %wide.load309 = load <4 x float>, ptr %i.fe, align 16, !tbaa !49, !alias.scope !251
  %i.ff = xor i64 %index, -1
  %i.fg = getelementptr [4 x i8], ptr %gep.i.i.i, i64 %i.ff ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 -12
  %i.fi = getelementptr i8, ptr %i.fg, i64 -28
  %reverse = shufflevector <4 x float> %wide.load, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse310 = shufflevector <4 x float> %wide.load309, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse, ptr %i.fh, align 4, !tbaa !49, !alias.scope !252, !noalias !251
  store <4 x float> %reverse310, ptr %i.fi, align 4, !tbaa !49, !alias.scope !252, !noalias !251
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !163

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i.loopexit.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.010.i.i.i.i.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  br i1 %lcmp.mod501.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.fo, %scalar.ph.prol ], [ %.010.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter502 = phi i64 [ %prol.iter502.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %.010.i.i.i.i.i.i.prol
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !49
  %i.fm = xor i64 %.010.i.i.i.i.i.i.prol, -1
  %i.fn = getelementptr [4 x i8], ptr %gep.i.i.i, i64 %i.fm
  store float %i.fl, ptr %i.fn, align 4, !tbaa !49
  %i.fo = add nuw i64 %.010.i.i.i.i.i.i.prol, 1   ; 2 uses
  %prol.iter502.next = add i64 %prol.iter502, 1   ; 2 uses
  %prol.iter502.cmp.not = icmp eq i64 %prol.iter502.next, %xtraiter500
  br i1 %prol.iter502.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !164

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.010.i.i.i.i.i.i.unr = phi i64 [ %.010.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.fo, %scalar.ph.prol ]
  %i.fp = sub i64 %.010.i.i.i.i.i.i.ph, %i.em
  %i.fq = icmp ugt i64 %i.fp, -4
  br i1 %i.fq, label %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i.loopexit.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.010.i.i.i.i.i.i = phi i64 [ %i.gk, %scalar.ph ], [ %.010.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %.010.i.i.i.i.i.i
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !49
  %i.ft = xor i64 %.010.i.i.i.i.i.i, -1
  %i.fu = getelementptr [4 x i8], ptr %gep.i.i.i, i64 %i.ft
  store float %i.fs, ptr %i.fu, align 4, !tbaa !49
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %.010.i.i.i.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !49
  %i.fy = sub i64 -2, %.010.i.i.i.i.i.i
  %i.fz = getelementptr [4 x i8], ptr %gep.i.i.i, i64 %i.fy
  store float %i.fx, ptr %i.fz, align 4, !tbaa !49
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %.010.i.i.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !49
  %i.gd = sub i64 -3, %.010.i.i.i.i.i.i
  %i.ge = getelementptr [4 x i8], ptr %gep.i.i.i, i64 %i.gd
  store float %i.gc, ptr %i.ge, align 4, !tbaa !49
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %.010.i.i.i.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !49
  %i.gi = sub i64 -4, %.010.i.i.i.i.i.i
  %i.gj = getelementptr [4 x i8], ptr %gep.i.i.i, i64 %i.gi
  store float %i.gh, ptr %i.gj, align 4, !tbaa !49
  %i.gk = add nuw i64 %.010.i.i.i.i.i.i, 4        ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.gk, %i.em
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i.loopexit.i.i.i, label %scalar.ph, !llvm.loop !165

_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i.loopexit.i.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.thread.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !166

bb.o:                                             ; preds = %bb.l
  %.val.i.i.i = load ptr, ptr %6, align 8         ; 2 uses
  %.val11.i.i.i = load ptr, ptr %i.ao, align 8
  %i.gl = icmp eq i32 %i.eg, 0
  br i1 %i.gl, label %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  store ptr %30, ptr %29, align 8, !tbaa !20
  store ptr %34, ptr %i.dh, align 8, !tbaa !20
  store i32 0, ptr %i.di, align 8, !tbaa !53
  %.not.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i, label %.preheader.preheader.i.i.i.i, label %bb.r

.preheader.preheader.i.i.i.i:                     ; preds = %bb.p
  %wide.trip.count.i17.i.i.i = and i64 %i.ef, 4294967295
  br label %.preheader.i18.i.i.i

.preheader.i18.i.i.i:                             ; preds = %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i21.i.i.i, %.preheader.preheader.i.i.i.i
  %indvars.iv.i19.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i.i ], [ %indvars.iv.next.i22.i.i.i, %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i21.i.i.i ] ; 3 uses
  %i.gm = load atomic i32, ptr %i.di seq_cst, align 8
  %.not.i.i20.i.i.i = icmp eq i32 %i.gm, 0
  br i1 %.not.i.i20.i.i.i, label %bb.q, label %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i21.i.i.i

bb.q:                                             ; preds = %.preheader.i18.i.i.i
  %i.gn = load ptr, ptr %i.dh, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !63, !nonnull !60, !align !61 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 40
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !46 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !47
  %i.gt = mul i64 %i.gs, %indvars.iv.i19.i.i.i    ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gq, i64 %i.gt  ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.gu, i64 64) ]
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !64, !nonnull !60, !align !61
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !18 ; 9 uses
  %.not.i.i.i24.i.i.i = icmp eq i64 %i.gx, 0
  br i1 %.not.i.i.i24.i.i.i, label %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i21.i.i.i, label %.lr.ph.i.i.i25.i.i.i

.lr.ph.i.i.i25.i.i.i:                             ; preds = %bb.q
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !65, !nonnull !60, !align !61 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 40
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !46
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !47
  %i.he = mul i64 %i.hd, %indvars.iv.i19.i.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.he ; 2 uses
  %i.hg = getelementptr [4 x i8], ptr %i.hf, i64 %i.gx ; 7 uses
  %min.iters.check317 = icmp ult i64 %i.gx, 8
  br i1 %min.iters.check317, label %scalar.ph316.preheader, label %vector.memcheck311

vector.memcheck311:                               ; preds = %.lr.ph.i.i.i25.i.i.i
  %i.hh = shl i64 %i.gx, 2
  %i.hi = getelementptr i8, ptr %i.gq, i64 %i.gt
  %scevgep312 = getelementptr i8, ptr %i.hi, i64 %i.hh
  %bound0313 = icmp ult ptr %i.hf, %scevgep312
  %bound1314 = icmp ult ptr %i.gu, %i.hg
  %found.conflict315 = and i1 %bound0313, %bound1314
  br i1 %found.conflict315, label %scalar.ph316.preheader, label %vector.ph318

vector.ph318:                                     ; preds = %vector.memcheck311
  %n.vec319 = and i64 %i.gx, -8                   ; 3 uses
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph318
  %index321 = phi i64 [ 0, %vector.ph318 ], [ %index.next326, %vector.body320 ] ; 3 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %index321 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %wide.load322 = load <4 x float>, ptr %i.hj, align 32, !tbaa !49, !alias.scope !253
  %wide.load323 = load <4 x float>, ptr %i.hk, align 16, !tbaa !49, !alias.scope !253
  %i.hl = xor i64 %index321, -1
  %i.hm = getelementptr [4 x i8], ptr %i.hg, i64 %i.hl ; 2 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 -12
  %i.ho = getelementptr i8, ptr %i.hm, i64 -28
  %reverse324 = shufflevector <4 x float> %wide.load322, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse325 = shufflevector <4 x float> %wide.load323, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse324, ptr %i.hn, align 4, !tbaa !49, !alias.scope !254, !noalias !253
  store <4 x float> %reverse325, ptr %i.ho, align 4, !tbaa !49, !alias.scope !254, !noalias !253
  %index.next326 = add nuw i64 %index321, 8       ; 2 uses
  %i.hp = icmp eq i64 %index.next326, %n.vec319
  br i1 %i.hp, label %middle.block327, label %vector.body320, !llvm.loop !170

middle.block327:                                  ; preds = %vector.body320
  %cmp.n328 = icmp eq i64 %i.gx, %n.vec319
  br i1 %cmp.n328, label %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i21.i.i.i, label %scalar.ph316.preheader

scalar.ph316.preheader:                           ; preds = %vector.memcheck311, %.lr.ph.i.i.i25.i.i.i, %middle.block327
  %.010.i.i.i26.i.i.i.ph = phi i64 [ 0, %vector.memcheck311 ], [ 0, %.lr.ph.i.i.i25.i.i.i ], [ %n.vec319, %middle.block327 ] ; 3 uses
  %xtraiter497 = and i64 %i.gx, 3                 ; 2 uses
  %lcmp.mod498.not = icmp eq i64 %xtraiter497, 0
  br i1 %lcmp.mod498.not, label %scalar.ph316.prol.loopexit, label %scalar.ph316.prol

scalar.ph316.prol:                                ; preds = %scalar.ph316.preheader, %scalar.ph316.prol
  %.010.i.i.i26.i.i.i.prol = phi i64 [ %i.hu, %scalar.ph316.prol ], [ %.010.i.i.i26.i.i.i.ph, %scalar.ph316.preheader ] ; 3 uses
  %prol.iter499 = phi i64 [ %prol.iter499.next, %scalar.ph316.prol ], [ 0, %scalar.ph316.preheader ]
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.010.i.i.i26.i.i.i.prol
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !49
  %i.hs = xor i64 %.010.i.i.i26.i.i.i.prol, -1
  %i.ht = getelementptr [4 x i8], ptr %i.hg, i64 %i.hs
  store float %i.hr, ptr %i.ht, align 4, !tbaa !49
  %i.hu = add nuw i64 %.010.i.i.i26.i.i.i.prol, 1 ; 2 uses
  %prol.iter499.next = add i64 %prol.iter499, 1   ; 2 uses
  %prol.iter499.cmp.not = icmp eq i64 %prol.iter499.next, %xtraiter497
  br i1 %prol.iter499.cmp.not, label %scalar.ph316.prol.loopexit, label %scalar.ph316.prol, !llvm.loop !171

scalar.ph316.prol.loopexit:                       ; preds = %scalar.ph316.prol, %scalar.ph316.preheader
  %.010.i.i.i26.i.i.i.unr = phi i64 [ %.010.i.i.i26.i.i.i.ph, %scalar.ph316.preheader ], [ %i.hu, %scalar.ph316.prol ]
  %i.hv = sub i64 %.010.i.i.i26.i.i.i.ph, %i.gx
  %i.hw = icmp ugt i64 %i.hv, -4
  br i1 %i.hw, label %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i21.i.i.i, label %scalar.ph316

scalar.ph316:                                     ; preds = %scalar.ph316.prol.loopexit, %scalar.ph316
  %.010.i.i.i26.i.i.i = phi i64 [ %i.iq, %scalar.ph316 ], [ %.010.i.i.i26.i.i.i.unr, %scalar.ph316.prol.loopexit ] ; 9 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.010.i.i.i26.i.i.i
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !49
  %i.hz = xor i64 %.010.i.i.i26.i.i.i, -1
  %i.ia = getelementptr [4 x i8], ptr %i.hg, i64 %i.hz
  store float %i.hy, ptr %i.ia, align 4, !tbaa !49
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.010.i.i.i26.i.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.id = load float, ptr %i.ic, align 4, !tbaa !49
  %i.ie = sub i64 -2, %.010.i.i.i26.i.i.i
  %i.if = getelementptr [4 x i8], ptr %i.hg, i64 %i.ie
  store float %i.id, ptr %i.if, align 4, !tbaa !49
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.010.i.i.i26.i.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !49
  %i.ij = sub i64 -3, %.010.i.i.i26.i.i.i
  %i.ik = getelementptr [4 x i8], ptr %i.hg, i64 %i.ij
  store float %i.ii, ptr %i.ik, align 4, !tbaa !49
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.010.i.i.i26.i.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 12
  %i.in = load float, ptr %i.im, align 4, !tbaa !49
  %i.io = sub i64 -4, %.010.i.i.i26.i.i.i
  %i.ip = getelementptr [4 x i8], ptr %i.hg, i64 %i.io
  store float %i.in, ptr %i.ip, align 4, !tbaa !49
  %i.iq = add nuw i64 %.010.i.i.i26.i.i.i, 4      ; 2 uses
  %exitcond.not.i.i.i27.i.i.i.3 = icmp eq i64 %i.iq, %i.gx
  br i1 %exitcond.not.i.i.i27.i.i.i.3, label %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i21.i.i.i, label %scalar.ph316, !llvm.loop !172

_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i21.i.i.i: ; preds = %scalar.ph316.prol.loopexit, %scalar.ph316, %middle.block327, %bb.q, %.preheader.i18.i.i.i
  %indvars.iv.next.i22.i.i.i = add nuw nsw i64 %indvars.iv.i19.i.i.i, 1 ; 2 uses
  %exitcond.not.i23.i.i.i = icmp eq i64 %indvars.iv.next.i22.i.i.i, %wide.trip.count.i17.i.i.i
  br i1 %exitcond.not.i23.i.i.i, label %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.i, label %.preheader.i18.i.i.i, !llvm.loop !166

bb.r:                                             ; preds = %bb.p
  %i.ir = call noundef i32 %.val.i.i.i(ptr noundef %.val11.i.i.i, ptr noundef nonnull %29, ptr noundef nonnull @_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallInitFuncEPvm, ptr noundef nonnull @_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm, i32 noundef 0, i32 noundef %i.eg) #23, !inline_history !173
  %.not25.i.i.i.i = icmp eq i32 %i.ir, 0
  br i1 %.not25.i.i.i.i, label %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.i, label %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.thread351.i

_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.thread351.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  br label %.loopexit124

_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.thread.i: ; preds = %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i.loopexit.i.i.i, %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  br label %.critedge98.i

_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.i: ; preds = %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i21.i.i.i, %bb.r
  %i.is = load atomic i32, ptr %i.di seq_cst, align 8
  %.not5.i16.i.i.not.i = icmp eq i32 %i.is, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  br i1 %.not5.i16.i.i.not.i, label %.critedge98.i, label %.loopexit124

.loopexit124:                                     ; preds = %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.i, %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.thread351.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  %i.it = load i32, ptr %i.cy, align 8, !tbaa !44
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %bb.s, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit111.i

bb.s:                                             ; preds = %.loopexit124
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cz) #23
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit111.i

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit111.i:    ; preds = %bb.s, %.loopexit124
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  br label %bb.cq

bb.t:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21, !noalias !255
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %28, i32 noundef %i.do, i32 noundef %i.dr, i64 noundef 4) #23, !noalias !255
  %i.iv = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %28, ptr noundef %i.du, i64 noundef 0) #23, !noalias !255 ; 2 uses
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %.critedge.i112.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %i.iv, ptr %i.cm, align 8, !tbaa !44, !alias.scope !255
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit113.i

.critedge.i112.i:                                 ; preds = %bb.t
  store i32 0, ptr %i.cm, align 8, !tbaa !44, !alias.scope !255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %35, ptr noundef nonnull align 8 dereferenceable(56) %28, i64 24, i1 false)
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.co) #23
  %i.ix = load i64, ptr %i.cq, align 8, !tbaa !45, !noalias !255
  store i64 %i.ix, ptr %i.cp, align 8, !tbaa !45, !alias.scope !255
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit113.i

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit113.i: ; preds = %.critedge.i112.i, %bb.u
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.co) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21, !noalias !255
  %i.iy = load i32, ptr %i.cm, align 8, !tbaa !44 ; 2 uses
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %bb.v, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit114.i

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit114.i:    ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit113.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  br label %bb.cq

bb.v:                                             ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit113.i
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %36, ptr noundef nonnull align 8 dereferenceable(60) %35, i64 24, i1 false)
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %i.cn) #23
  %i.ja = load i64, ptr %i.cp, align 8, !tbaa !45, !noalias !256
  store i64 %i.ja, ptr %i.cs, align 8, !tbaa !45, !alias.scope !256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dn, ptr noundef nonnull align 8 dereferenceable(56) %36, i64 24, i1 false)
  %i.jb = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.jc = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.jb, ptr noundef nonnull align 8 dereferenceable(24) %i.cr) #23 ; 0 uses
  %i.jd = load i64, ptr %i.cs, align 8, !tbaa !45
  %i.je = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  store i64 %i.jd, ptr %i.je, align 8, !tbaa !45
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cr) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #21
  store ptr %i.dm, ptr %37, align 8, !tbaa !22
  store ptr %i.dn, ptr %i.ct, align 8, !tbaa !22
  store ptr %i.b, ptr %i.cu, align 8, !tbaa !247
  store ptr %i.a, ptr %i.cv, align 8, !tbaa !247
  %i.jf = load i64, ptr %i.b, align 8, !tbaa !18  ; 6 uses
  %i.jg = trunc i64 %i.jf to i32                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  br i1 %i.an, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE0_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %wide.trip.count.i.i.i134.i = and i64 %i.jf, 4294967295 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !46 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !47 ; 3 uses
  %i.jm = load i64, ptr %i.a, align 8, !tbaa !18  ; 9 uses
  %.not.i.i.i.i.i135.i = icmp eq i64 %i.jm, 0
  br i1 %.not.i.i.i.i.i135.i, label %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE0_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.thread.i, label %.split.i.i136.i

.split.i.i136.i:                                  ; preds = %bb.x
  %i.jn = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.jo = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !46 ; 3 uses
  %i.jq = load i64, ptr %i.jn, align 8, !tbaa !47 ; 4 uses
  %invariant.gep.i.i137.i = getelementptr [4 x i8], ptr %i.jp, i64 %i.jm
  %i.jr = add i64 %i.jf, -1
  %i.js = mul i64 %i.jq, %i.jr
  %scevgep331 = getelementptr i8, ptr %i.jp, i64 %i.js
  %i.jt = shl i64 %i.jq, 32
  %i.ju = lshr i64 %i.jf, 32
  %i.jv = mul i64 %i.jt, %i.ju
  %i.jw = shl i64 %i.jm, 2                        ; 2 uses
  %i.jx = getelementptr i8, ptr %i.jp, i64 %i.jv
  %scevgep332 = getelementptr i8, ptr %i.jx, i64 %i.jw
  %i.jy = add nsw i64 %wide.trip.count.i.i.i134.i, -1
  %i.jz = mul i64 %i.jl, %i.jy
  %i.ka = getelementptr i8, ptr %i.jj, i64 %i.jz
  %scevgep333 = getelementptr i8, ptr %i.ka, i64 %i.jw
  %min.iters.check340 = icmp ult i64 %i.jm, 8
  %bound0334 = icmp ult ptr %scevgep331, %scevgep333
  %bound1335 = icmp ult ptr %i.jj, %scevgep332
  %found.conflict336 = and i1 %bound0334, %bound1335
  %notsub416 = add i64 %i.jq, -1
  %stride.check337 = icmp sgt i64 %notsub416, -1
  %i.kb = or i1 %found.conflict336, %stride.check337
  %stride.check338 = icmp slt i64 %i.jl, 0
  %i.kc = or i1 %i.kb, %stride.check338
  %n.vec342 = and i64 %i.jm, -8                   ; 3 uses
  %cmp.n351 = icmp eq i64 %i.jm, %n.vec342
  %xtraiter494 = and i64 %i.jm, 3                 ; 2 uses
  %lcmp.mod495.not = icmp eq i64 %xtraiter494, 0
  br label %.lr.ph.i.i.i.i.i138.i

.lr.ph.i.i.i.i.i138.i:                            ; preds = %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE0_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i.loopexit.i.i.i, %.split.i.i136.i
  %indvars.iv.i.i.i139.i = phi i64 [ 0, %.split.i.i136.i ], [ %indvars.iv.next.i.i.i143.i, %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE0_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i.loopexit.i.i.i ] ; 3 uses
  %i.kd = mul i64 %indvars.iv.i.i.i139.i, %i.jl
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.kd ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ke, i64 64) ]
  %i.kf = xor i64 %indvars.iv.i.i.i139.i, -1
  %i.kg = add i64 %i.jf, %i.kf
  %i.kh = mul i64 %i.kg, %i.jq
  %gep.i.i140.i = getelementptr i8, ptr %invariant.gep.i.i137.i, i64 %i.kh ; 6 uses
  %brmerge539 = select i1 %min.iters.check340, i1 true, i1 %i.kc
  br i1 %brmerge539, label %scalar.ph339.preheader, label %vector.body343

vector.body343:                                   ; preds = %.lr.ph.i.i.i.i.i138.i, %vector.body343
  %index344 = phi i64 [ %index.next349, %vector.body343 ], [ 0, %.lr.ph.i.i.i.i.i138.i ] ; 3 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %index344 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %wide.load345 = load <4 x float>, ptr %i.ki, align 32, !tbaa !49, !alias.scope !257
  %wide.load346 = load <4 x float>, ptr %i.kj, align 16, !tbaa !49, !alias.scope !257
  %i.kk = xor i64 %index344, -1
  %i.kl = getelementptr [4 x i8], ptr %gep.i.i140.i, i64 %i.kk ; 2 uses
  %i.km = getelementptr i8, ptr %i.kl, i64 -12
  %i.kn = getelementptr i8, ptr %i.kl, i64 -28
  %reverse347 = shufflevector <4 x float> %wide.load345, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse348 = shufflevector <4 x float> %wide.load346, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse347, ptr %i.km, align 4, !tbaa !49, !alias.scope !258, !noalias !257
  store <4 x float> %reverse348, ptr %i.kn, align 4, !tbaa !49, !alias.scope !258, !noalias !257
  %index.next349 = add nuw i64 %index344, 8       ; 2 uses
  %i.ko = icmp eq i64 %index.next349, %n.vec342
  br i1 %i.ko, label %middle.block350, label %vector.body343, !llvm.loop !181

middle.block350:                                  ; preds = %vector.body343
  br i1 %cmp.n351, label %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE0_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i.loopexit.i.i.i, label %scalar.ph339.preheader

scalar.ph339.preheader:                           ; preds = %.lr.ph.i.i.i.i.i138.i, %middle.block350
  %.010.i.i.i.i.i141.i.ph = phi i64 [ %n.vec342, %middle.block350 ], [ 0, %.lr.ph.i.i.i.i.i138.i ] ; 3 uses
  br i1 %lcmp.mod495.not, label %scalar.ph339.prol.loopexit, label %scalar.ph339.prol

scalar.ph339.prol:                                ; preds = %scalar.ph339.preheader, %scalar.ph339.prol
  %.010.i.i.i.i.i141.i.prol = phi i64 [ %i.kt, %scalar.ph339.prol ], [ %.010.i.i.i.i.i141.i.ph, %scalar.ph339.preheader ] ; 3 uses
  %prol.iter496 = phi i64 [ %prol.iter496.next, %scalar.ph339.prol ], [ 0, %scalar.ph339.preheader ]
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %.010.i.i.i.i.i141.i.prol
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !49
  %i.kr = xor i64 %.010.i.i.i.i.i141.i.prol, -1
  %i.ks = getelementptr [4 x i8], ptr %gep.i.i140.i, i64 %i.kr
  store float %i.kq, ptr %i.ks, align 4, !tbaa !49
  %i.kt = add nuw i64 %.010.i.i.i.i.i141.i.prol, 1 ; 2 uses
  %prol.iter496.next = add i64 %prol.iter496, 1   ; 2 uses
  %prol.iter496.cmp.not = icmp eq i64 %prol.iter496.next, %xtraiter494
  br i1 %prol.iter496.cmp.not, label %scalar.ph339.prol.loopexit, label %scalar.ph339.prol, !llvm.loop !182

scalar.ph339.prol.loopexit:                       ; preds = %scalar.ph339.prol, %scalar.ph339.preheader
  %.010.i.i.i.i.i141.i.unr = phi i64 [ %.010.i.i.i.i.i141.i.ph, %scalar.ph339.preheader ], [ %i.kt, %scalar.ph339.prol ]
  %i.ku = sub i64 %.010.i.i.i.i.i141.i.ph, %i.jm
  %i.kv = icmp ugt i64 %i.ku, -4
  br i1 %i.kv, label %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE0_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i.loopexit.i.i.i, label %scalar.ph339

scalar.ph339:                                     ; preds = %scalar.ph339.prol.loopexit, %scalar.ph339
  %.010.i.i.i.i.i141.i = phi i64 [ %i.lp, %scalar.ph339 ], [ %.010.i.i.i.i.i141.i.unr, %scalar.ph339.prol.loopexit ] ; 9 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %.010.i.i.i.i.i141.i
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !49
  %i.ky = xor i64 %.010.i.i.i.i.i141.i, -1
  %i.kz = getelementptr [4 x i8], ptr %gep.i.i140.i, i64 %i.ky
  store float %i.kx, ptr %i.kz, align 4, !tbaa !49
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %.010.i.i.i.i.i141.i
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 4
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !49
  %i.ld = sub i64 -2, %.010.i.i.i.i.i141.i
  %i.le = getelementptr [4 x i8], ptr %gep.i.i140.i, i64 %i.ld
  store float %i.lc, ptr %i.le, align 4, !tbaa !49
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %.010.i.i.i.i.i141.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !49
  %i.li = sub i64 -3, %.010.i.i.i.i.i141.i
  %i.lj = getelementptr [4 x i8], ptr %gep.i.i140.i, i64 %i.li
  store float %i.lh, ptr %i.lj, align 4, !tbaa !49
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %.010.i.i.i.i.i141.i
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 12
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !49
  %i.ln = sub i64 -4, %.010.i.i.i.i.i141.i
  %i.lo = getelementptr [4 x i8], ptr %gep.i.i140.i, i64 %i.ln
  store float %i.lm, ptr %i.lo, align 4, !tbaa !49
  %i.lp = add nuw i64 %.010.i.i.i.i.i141.i, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i142.i.3 = icmp eq i64 %i.lp, %i.jm
  br i1 %exitcond.not.i.i.i.i.i142.i.3, label %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE0_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i.loopexit.i.i.i, label %scalar.ph339, !llvm.loop !183

_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE0_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i.loopexit.i.i.i: ; preds = %scalar.ph339.prol.loopexit, %scalar.ph339, %middle.block350
  %indvars.iv.next.i.i.i143.i = add nuw nsw i64 %indvars.iv.i.i.i139.i, 1 ; 2 uses
  %exitcond.not.i.i.i144.i = icmp eq i64 %indvars.iv.next.i.i.i143.i, %wide.trip.count.i.i.i134.i
  br i1 %exitcond.not.i.i.i144.i, label %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE0_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.thread.i, label %.lr.ph.i.i.i.i.i138.i, !llvm.loop !184

bb.y:                                             ; preds = %bb.v
  %.val.i.i115.i = load ptr, ptr %6, align 8      ; 2 uses
  %.val11.i.i116.i = load ptr, ptr %i.ao, align 8
  %i.lq = icmp eq i32 %i.jg, 0
  br i1 %i.lq, label %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE0_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  store ptr %27, ptr %26, align 8, !tbaa !20
  store ptr %37, ptr %i.cw, align 8, !tbaa !20
  store i32 0, ptr %i.cx, align 8, !tbaa !53
  %.not.i.i.i117.i = icmp eq ptr %.val.i.i115.i, null
  br i1 %.not.i.i.i117.i, label %.preheader.preheader.i.i.i123.i, label %bb.ab

.preheader.preheader.i.i.i123.i:                  ; preds = %bb.z
  %wide.trip.count.i17.i.i124.i = and i64 %i.jf, 4294967295
  br label %.preheader.i18.i.i125.i

.preheader.i18.i.i125.i:                          ; preds = %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE0_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i21.i.i.i, %.preheader.preheader.i.i.i123.i
  %indvars.iv.i19.i.i126.i = phi i64 [ 0, %.preheader.preheader.i.i.i123.i ], [ %indvars.iv.next.i22.i.i128.i, %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE0_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i21.i.i.i ] ; 3 uses
  %i.lr = load atomic i32, ptr %i.cx seq_cst, align 8
  %.not.i.i20.i.i127.i = icmp eq i32 %i.lr, 0
  br i1 %.not.i.i20.i.i127.i, label %bb.aa, label %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE0_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i21.i.i.i

bb.aa:                                            ; preds = %.preheader.i18.i.i125.i
  %i.ls = load ptr, ptr %i.cw, align 8, !tbaa !67, !nonnull !60, !align !61 ; 4 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !69, !nonnull !60, !align !61 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 40
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !46 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !47
  %i.ly = mul i64 %i.lx, %indvars.iv.i19.i.i126.i ; 2 uses
  %i.lz = getelementptr i8, ptr %i.lv, i64 %i.ly  ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lz, i64 64) ]
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ls, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !70, !nonnull !60, !align !61
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !18 ; 9 uses
  %.not.i.i.i24.i.i130.i = icmp eq i64 %i.mc, 0
  br i1 %.not.i.i.i24.i.i130.i, label %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE0_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i21.i.i.i, label %.lr.ph.i.i.i25.i.i131.i

.lr.ph.i.i.i25.i.i131.i:                          ; preds = %bb.aa
  %i.md = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !71, !nonnull !60, !align !61 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 40
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !46
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !47
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !72, !nonnull !60, !align !61
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !18
  %i.mm = xor i64 %indvars.iv.i19.i.i126.i, -1
  %i.mn = add i64 %i.ml, %i.mm
  %i.mo = mul i64 %i.mn, %i.mi
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.mo ; 2 uses
  %i.mq = getelementptr [4 x i8], ptr %i.mp, i64 %i.mc ; 7 uses
  %min.iters.check359 = icmp ult i64 %i.mc, 8
  br i1 %min.iters.check359, label %scalar.ph358.preheader, label %vector.memcheck353

vector.memcheck353:                               ; preds = %.lr.ph.i.i.i25.i.i131.i
  %i.mr = shl i64 %i.mc, 2
  %i.ms = getelementptr i8, ptr %i.lv, i64 %i.ly
  %scevgep354 = getelementptr i8, ptr %i.ms, i64 %i.mr
  %bound0355 = icmp ult ptr %i.mp, %scevgep354
  %bound1356 = icmp ult ptr %i.lz, %i.mq
  %found.conflict357 = and i1 %bound0355, %bound1356
  br i1 %found.conflict357, label %scalar.ph358.preheader, label %vector.ph360

vector.ph360:                                     ; preds = %vector.memcheck353
  %n.vec361 = and i64 %i.mc, -8                   ; 3 uses
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %vector.ph360
  %index363 = phi i64 [ 0, %vector.ph360 ], [ %index.next368, %vector.body362 ] ; 3 uses
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %index363 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %wide.load364 = load <4 x float>, ptr %i.mt, align 32, !tbaa !49, !alias.scope !259
  %wide.load365 = load <4 x float>, ptr %i.mu, align 16, !tbaa !49, !alias.scope !259
  %i.mv = xor i64 %index363, -1
  %i.mw = getelementptr [4 x i8], ptr %i.mq, i64 %i.mv ; 2 uses
  %i.mx = getelementptr i8, ptr %i.mw, i64 -12
  %i.my = getelementptr i8, ptr %i.mw, i64 -28
  %reverse366 = shufflevector <4 x float> %wide.load364, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse367 = shufflevector <4 x float> %wide.load365, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse366, ptr %i.mx, align 4, !tbaa !49, !alias.scope !260, !noalias !259
  store <4 x float> %reverse367, ptr %i.my, align 4, !tbaa !49, !alias.scope !260, !noalias !259
  %index.next368 = add nuw i64 %index363, 8       ; 2 uses
  %i.mz = icmp eq i64 %index.next368, %n.vec361
  br i1 %i.mz, label %middle.block369, label %vector.body362, !llvm.loop !188

middle.block369:                                  ; preds = %vector.body362
  %cmp.n370 = icmp eq i64 %i.mc, %n.vec361
  br i1 %cmp.n370, label %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE0_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i21.i.i.i, label %scalar.ph358.preheader

scalar.ph358.preheader:                           ; preds = %vector.memcheck353, %.lr.ph.i.i.i25.i.i131.i, %middle.block369
  %.010.i.i.i26.i.i132.i.ph = phi i64 [ 0, %vector.memcheck353 ], [ 0, %.lr.ph.i.i.i25.i.i131.i ], [ %n.vec361, %middle.block369 ] ; 3 uses
  %xtraiter491 = and i64 %i.mc, 3                 ; 2 uses
  %lcmp.mod492.not = icmp eq i64 %xtraiter491, 0
  br i1 %lcmp.mod492.not, label %scalar.ph358.prol.loopexit, label %scalar.ph358.prol

scalar.ph358.prol:                                ; preds = %scalar.ph358.preheader, %scalar.ph358.prol
  %.010.i.i.i26.i.i132.i.prol = phi i64 [ %i.ne, %scalar.ph358.prol ], [ %.010.i.i.i26.i.i132.i.ph, %scalar.ph358.preheader ] ; 3 uses
  %prol.iter493 = phi i64 [ %prol.iter493.next, %scalar.ph358.prol ], [ 0, %scalar.ph358.preheader ]
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %.010.i.i.i26.i.i132.i.prol
  %i.nb = load float, ptr %i.na, align 4, !tbaa !49
  %i.nc = xor i64 %.010.i.i.i26.i.i132.i.prol, -1
  %i.nd = getelementptr [4 x i8], ptr %i.mq, i64 %i.nc
  store float %i.nb, ptr %i.nd, align 4, !tbaa !49
  %i.ne = add nuw i64 %.010.i.i.i26.i.i132.i.prol, 1 ; 2 uses
  %prol.iter493.next = add i64 %prol.iter493, 1   ; 2 uses
  %prol.iter493.cmp.not = icmp eq i64 %prol.iter493.next, %xtraiter491
  br i1 %prol.iter493.cmp.not, label %scalar.ph358.prol.loopexit, label %scalar.ph358.prol, !llvm.loop !189

scalar.ph358.prol.loopexit:                       ; preds = %scalar.ph358.prol, %scalar.ph358.preheader
  %.010.i.i.i26.i.i132.i.unr = phi i64 [ %.010.i.i.i26.i.i132.i.ph, %scalar.ph358.preheader ], [ %i.ne, %scalar.ph358.prol ]
  %i.nf = sub i64 %.010.i.i.i26.i.i132.i.ph, %i.mc
  %i.ng = icmp ugt i64 %i.nf, -4
  br i1 %i.ng, label %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE0_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i21.i.i.i, label %scalar.ph358

scalar.ph358:                                     ; preds = %scalar.ph358.prol.loopexit, %scalar.ph358
  %.010.i.i.i26.i.i132.i = phi i64 [ %i.oa, %scalar.ph358 ], [ %.010.i.i.i26.i.i132.i.unr, %scalar.ph358.prol.loopexit ] ; 9 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %.010.i.i.i26.i.i132.i
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !49
  %i.nj = xor i64 %.010.i.i.i26.i.i132.i, -1
  %i.nk = getelementptr [4 x i8], ptr %i.mq, i64 %i.nj
  store float %i.ni, ptr %i.nk, align 4, !tbaa !49
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %.010.i.i.i26.i.i132.i
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 4
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !49
  %i.no = sub i64 -2, %.010.i.i.i26.i.i132.i
  %i.np = getelementptr [4 x i8], ptr %i.mq, i64 %i.no
  store float %i.nn, ptr %i.np, align 4, !tbaa !49
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %.010.i.i.i26.i.i132.i
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !49
  %i.nt = sub i64 -3, %.010.i.i.i26.i.i132.i
  %i.nu = getelementptr [4 x i8], ptr %i.mq, i64 %i.nt
  store float %i.ns, ptr %i.nu, align 4, !tbaa !49
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %.010.i.i.i26.i.i132.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 12
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !49
  %i.ny = sub i64 -4, %.010.i.i.i26.i.i132.i
  %i.nz = getelementptr [4 x i8], ptr %i.mq, i64 %i.ny
  store float %i.nx, ptr %i.nz, align 4, !tbaa !49
  %i.oa = add nuw i64 %.010.i.i.i26.i.i132.i, 4   ; 2 uses
  %exitcond.not.i.i.i27.i.i133.i.3 = icmp eq i64 %i.oa, %i.mc
  br i1 %exitcond.not.i.i.i27.i.i133.i.3, label %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE0_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i21.i.i.i, label %scalar.ph358, !llvm.loop !190

_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE0_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i21.i.i.i: ; preds = %scalar.ph358.prol.loopexit, %scalar.ph358, %middle.block369, %bb.aa, %.preheader.i18.i.i125.i
  %indvars.iv.next.i22.i.i128.i = add nuw nsw i64 %indvars.iv.i19.i.i126.i, 1 ; 2 uses
  %exitcond.not.i23.i.i129.i = icmp eq i64 %indvars.iv.next.i22.i.i128.i, %wide.trip.count.i17.i.i124.i
  br i1 %exitcond.not.i23.i.i129.i, label %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE0_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.i, label %.preheader.i18.i.i125.i, !llvm.loop !184

bb.ab:                                            ; preds = %bb.z
  %i.ob = call noundef i32 %.val.i.i115.i(ptr noundef %.val11.i.i116.i, ptr noundef nonnull %26, ptr noundef nonnull @_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE0_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallInitFuncEPvm, ptr noundef nonnull @_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE0_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm, i32 noundef 0, i32 noundef %i.jg) #23, !inline_history !191
  %.not25.i.i.i118.i = icmp eq i32 %i.ob, 0
  br i1 %.not25.i.i.i118.i, label %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE0_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.i, label %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE0_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.thread355.i

_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE0_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.thread355.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  br label %.loopexit123

_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE0_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.thread.i: ; preds = %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE0_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i.loopexit.i.i.i, %bb.y, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  br label %.critedge100.i

_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE0_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.i: ; preds = %_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE0_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm.exit.i21.i.i.i, %bb.ab
  %i.oc = load atomic i32, ptr %i.cx seq_cst, align 8
  %.not5.i16.i.i122.not.i = icmp eq i32 %i.oc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  br i1 %.not5.i16.i.i122.not.i, label %.critedge100.i, label %.loopexit123

.loopexit123:                                     ; preds = %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE0_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.i, %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE0_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.thread355.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21
  %i.od = load i32, ptr %i.cm, align 8, !tbaa !44
  %i.oe = icmp eq i32 %i.od, 0
  br i1 %i.oe, label %bb.ac, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit145.i

bb.ac:                                            ; preds = %.loopexit123
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cn) #23
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit145.i

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit145.i:    ; preds = %bb.ac, %.loopexit123
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  br label %bb.cq

bb.ad:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21, !noalias !261
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %25, i32 noundef %i.do, i32 noundef %i.dr, i64 noundef 4) #23, !noalias !261
  %i.of = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %25, ptr noundef %i.du, i64 noundef 0) #23, !noalias !261 ; 2 uses
  %i.og = icmp eq i32 %i.of, 0
  br i1 %i.og, label %.critedge.i146.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.of, ptr %i.ca, align 8, !tbaa !44, !alias.scope !261
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit147.i

.critedge.i146.i:                                 ; preds = %bb.ad
  store i32 0, ptr %i.ca, align 8, !tbaa !44, !alias.scope !261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %38, ptr noundef nonnull align 8 dereferenceable(56) %25, i64 24, i1 false)
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.cc) #23
  %i.oh = load i64, ptr %i.ce, align 8, !tbaa !45, !noalias !261
  store i64 %i.oh, ptr %i.cd, align 8, !tbaa !45, !alias.scope !261
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit147.i

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit147.i: ; preds = %.critedge.i146.i, %bb.ae
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cc) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21, !noalias !261
  %i.oi = load i32, ptr %i.ca, align 8, !tbaa !44 ; 2 uses
  %i.oj = icmp eq i32 %i.oi, 0
  br i1 %i.oj, label %bb.af, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit148.i

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit148.i:    ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit147.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  br label %bb.cq

bb.af:                                            ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit147.i
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %39, ptr noundef nonnull align 8 dereferenceable(60) %38, i64 24, i1 false)
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.cb) #23
  %i.ok = load i64, ptr %i.cd, align 8, !tbaa !45, !noalias !262
  store i64 %i.ok, ptr %i.cg, align 8, !tbaa !45, !alias.scope !262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dn, ptr noundef nonnull align 8 dereferenceable(56) %39, i64 24, i1 false)
  %i.ol = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.om = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ol, ptr noundef nonnull align 8 dereferenceable(24) %i.cf) #23 ; 0 uses
  %i.on = load i64, ptr %i.cg, align 8, !tbaa !45
  %i.oo = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  store i64 %i.on, ptr %i.oo, align 8, !tbaa !45
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cf) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #21
  store ptr %i.dm, ptr %40, align 8, !tbaa !22
  store ptr %i.dn, ptr %i.ch, align 8, !tbaa !22
  store ptr %i.b, ptr %i.ci, align 8, !tbaa !247
  store ptr %i.a, ptr %i.cj, align 8, !tbaa !247
  %i.op = load i64, ptr %i.b, align 8, !tbaa !18  ; 6 uses
  %i.oq = trunc i64 %i.op to i32                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  br i1 %i.an, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.or = icmp eq i32 %i.oq, 0
  br i1 %i.or, label %_ZN3jxl9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS7_PNS_10ThreadPoolEEUljmE1_EES3_SC_jjRKNS_16ThreadPoolNoInitERKS6_PKc.exit.thread.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %wide.trip.count.i.i.i167.i = and i64 %i.op, 4294967295 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !46 ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !47 ; 3 uses
end_hunk_0
begin_hunk_1_@llvm.x86.avx.cvt.ps2dq.256
declare <8 x i32> @llvm.x86.avx.cvt.ps2dq.256(<8 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.vcvtps2ph.256(<8 x float>, i32 immarg) #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE18__assign_with_sizeB8nn180100IPS5_SA_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !38     ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3
  %.not = icmp ugt i64 %3, %i.g
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !132  ; 3 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.e                       ; 3 uses
  %i.l = ashr exact i64 %i.k, 3
  %i.m = icmp ugt i64 %3, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds i8, ptr %1, i64 %i.k ; 3 uses
  %i.o = ptrtoint ptr %i.n to i64
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__14copyB8nn180100IPPKN3jxl5PlaneIfEES6_EET0_T_S8_S7_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.c, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !132
  br label %_ZNSt3__14copyB8nn180100IPPKN3jxl5PlaneIfEES6_EET0_T_S8_S7_.exit

_ZNSt3__14copyB8nn180100IPPKN3jxl5PlaneIfEES6_EET0_T_S8_S7_.exit: ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %i.i, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.q = ptrtoint ptr %2 to i64
  %i.r = sub i64 %i.q, %i.o                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %2, %i.n
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE18__construct_at_endIPS5_SA_EEvT_T0_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt3__14copyB8nn180100IPPKN3jxl5PlaneIfEES6_EET0_T_S8_S7_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.p, ptr align 8 %i.n, i64 %i.r, i1 false)
  br label %_ZNSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE18__construct_at_endIPS5_SA_EEvT_T0_m.exit

_ZNSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE18__construct_at_endIPS5_SA_EEvT_T0_m.exit: ; preds = %_ZNSt3__14copyB8nn180100IPPKN3jxl5PlaneIfEES6_EET0_T_S8_S7_.exit, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  store ptr %i.s, ptr %i.h, align 8, !tbaa !132
  br label %bb.m

bb.f:                                             ; preds = %bb.b
  %i.t = ptrtoint ptr %2 to i64
  %i.u = ptrtoint ptr %1 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPPKN3jxl5PlaneIfEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.c, ptr align 8 %1, i64 %i.v, i1 false)
  br label %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPPKN3jxl5PlaneIfEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_.exit

_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPPKN3jxl5PlaneIfEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_.exit: ; preds = %bb.f, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.v
  store ptr %i.w, ptr %i.h, align 8, !tbaa !132
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE13__vdeallocateEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.x, align 8, !tbaa !132
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE13__vdeallocateEv.exit

_ZNSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE13__vdeallocateEv.exit: ; preds = %bb.h, %bb.i
  %i.y = phi ptr [ %i.b, %bb.h ], [ null, %bb.i ] ; 2 uses
  %i.z = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.z, label %bb.j, label %_ZNKSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE11__recommendB8nn180100Em.exit

bb.j:                                             ; preds = %_ZNSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE13__vdeallocateEv.exit
  tail call void @_ZNKSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #25
  unreachable

_ZNKSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE11__recommendB8nn180100Em.exit: ; preds = %_ZNSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE13__vdeallocateEv.exit
  %i.aa = ptrtoint ptr %i.y to i64
  %.not.i16 = icmp ult ptr %i.y, inttoptr (i64 9223372036854775800 to ptr)
  %i.ab = ashr exact i64 %i.aa, 2
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 %3)
  %.0.i = select i1 %.not.i16, i64 %.sroa.speculated.i, i64 2305843009213693951 ; 3 uses
  %i.ac = icmp ugt i64 %.0.i, 2305843009213693951
  br i1 %i.ac, label %bb.k, label %_ZNSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE11__vallocateB8nn180100Em.exit

bb.k:                                             ; preds = %_ZNKSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE11__recommendB8nn180100Em.exit
  tail call void @_ZNKSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #25
  unreachable

_ZNSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE11__vallocateB8nn180100Em.exit: ; preds = %_ZNKSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE11__recommendB8nn180100Em.exit
  %i.ad = shl nuw i64 %.0.i, 3
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #26 ; 5 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !132
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.0.i
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !133
  %i.ah = ptrtoint ptr %2 to i64
  %i.ai = ptrtoint ptr %1 to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i17 = icmp eq ptr %2, %1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i17, label %_ZNSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE18__construct_at_endIPS5_SA_EEvT_T0_m.exit18, label %bb.l

bb.l:                                             ; preds = %_ZNSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE11__vallocateB8nn180100Em.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr align 8 %1, i64 %i.aj, i1 false)
  br label %_ZNSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE18__construct_at_endIPS5_SA_EEvT_T0_m.exit18

_ZNSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE18__construct_at_endIPS5_SA_EEvT_T0_m.exit18: ; preds = %_ZNSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE11__vallocateB8nn180100Em.exit, %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !132
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE18__construct_at_endIPS5_SA_EEvT_T0_m.exit, %_ZNSt3__16__copyB8nn180100INS_17_ClassicAlgPolicyEPPKN3jxl5PlaneIfEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_.exit, %_ZNSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE18__construct_at_endIPS5_SA_EEvT_T0_m.exit18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorIPKN3jxl5PlaneIfEENS_9allocatorIS5_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef nonnull @.str.33) #25
  unreachable
}

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8nn180100EPKc(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  tail call void (ptr, ...) @_ZNSt3__122__libcpp_verbose_abortEPKcz(ptr noundef nonnull @.str.34, ptr noundef %0) #27
  unreachable
}

; Function Attrs: noreturn
declare void @_ZNSt3__122__libcpp_verbose_abortEPKcz(ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress noreturn nounwind uwtable
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() local_unnamed_addr #13 comdat {
bb.a:
  tail call void (ptr, ...) @_ZNSt3__122__libcpp_verbose_abortEPKcz(ptr noundef nonnull @.str.35) #27
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i32 -1, 1) i32 @_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallInitFuncEPvm(ptr nofree readnone captures(none) %0, i64 %1) #16 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 %2) #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load atomic i32, ptr %i.a seq_cst, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %_ZZN3jxl12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS6_PNS_10ThreadPoolEENKUljmE_clEjm.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59, !nonnull !60, !align !61 ; 3 uses
  %i.e = zext i32 %1 to i64                       ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !63, !nonnull !60, !align !61 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !47
  %i.k = mul i64 %i.j, %i.e                       ; 2 uses
  %i.l = getelementptr i8, ptr %i.h, i64 %i.k     ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.l, i64 64) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !64, !nonnull !60, !align !61
  %i.o = load i64, ptr %i.n, align 8, !tbaa !18   ; 9 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %_ZZN3jxl12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS6_PNS_10ThreadPoolEENKUljmE_clEjm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !65, !nonnull !60, !align !61 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !47
  %i.v = mul i64 %i.u, %i.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %i.w, i64 %i.o ; 7 uses
  %min.iters.check = icmp ult i64 %i.o, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.y = shl i64 %i.o, 2
  %i.z = getelementptr i8, ptr %i.h, i64 %i.k
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.y
  %bound0 = icmp ult ptr %i.w, %i.aa
  %bound1 = icmp ult ptr %i.l, %i.x
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.o, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load = load <4 x float>, ptr %i.ab, align 32, !tbaa !49, !alias.scope !372
  %wide.load5 = load <4 x float>, ptr %i.ac, align 16, !tbaa !49, !alias.scope !372
  %i.ad = xor i64 %index, -1
  %i.ae = getelementptr [4 x i8], ptr %i.x, i64 %i.ad ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -12
  %i.ag = getelementptr i8, ptr %i.ae, i64 -28
  %reverse = shufflevector <4 x float> %wide.load, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse6 = shufflevector <4 x float> %wide.load5, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse, ptr %i.af, align 4, !tbaa !49, !alias.scope !373, !noalias !372
  store <4 x float> %reverse6, ptr %i.ag, align 4, !tbaa !49, !alias.scope !373, !noalias !372
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !369

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZZN3jxl12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS6_PNS_10ThreadPoolEENKUljmE_clEjm.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.010.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.010.i.prol = phi i64 [ %i.am, %scalar.ph.prol ], [ %.010.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.010.i.prol
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !49
  %i.ak = xor i64 %.010.i.prol, -1
  %i.al = getelementptr [4 x i8], ptr %i.x, i64 %i.ak
  store float %i.aj, ptr %i.al, align 4, !tbaa !49
  %i.am = add nuw i64 %.010.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !370

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.010.i.unr = phi i64 [ %.010.i.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %i.an = sub i64 %.010.i.ph, %i.o
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %_ZZN3jxl12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS6_PNS_10ThreadPoolEENKUljmE_clEjm.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.010.i = phi i64 [ %i.bi, %scalar.ph ], [ %.010.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.010.i
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !49
  %i.ar = xor i64 %.010.i, -1
  %i.as = getelementptr [4 x i8], ptr %i.x, i64 %i.ar
  store float %i.aq, ptr %i.as, align 4, !tbaa !49
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.010.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load float, ptr %i.au, align 4, !tbaa !49
  %i.aw = sub i64 -2, %.010.i
  %i.ax = getelementptr [4 x i8], ptr %i.x, i64 %i.aw
  store float %i.av, ptr %i.ax, align 4, !tbaa !49
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.010.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load float, ptr %i.az, align 4, !tbaa !49
  %i.bb = sub i64 -3, %.010.i
  %i.bc = getelementptr [4 x i8], ptr %i.x, i64 %i.bb
  store float %i.ba, ptr %i.bc, align 4, !tbaa !49
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.010.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bf = load float, ptr %i.be, align 4, !tbaa !49
  %i.bg = sub i64 -4, %.010.i
  %i.bh = getelementptr [4 x i8], ptr %i.x, i64 %i.bg
  store float %i.bf, ptr %i.bh, align 4, !tbaa !49
  %i.bi = add nuw i64 %.010.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bi, %i.o
  br i1 %exitcond.not.i.3, label %_ZZN3jxl12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS6_PNS_10ThreadPoolEENKUljmE_clEjm.exit, label %scalar.ph, !llvm.loop !371

_ZZN3jxl12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS6_PNS_10ThreadPoolEENKUljmE_clEjm.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i32 -1, 1) i32 @_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE0_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallInitFuncEPvm(ptr nofree readnone captures(none) %0, i64 %1) #16 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE0_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 %2) #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load atomic i32, ptr %i.a seq_cst, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %_ZZN3jxl12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS6_PNS_10ThreadPoolEENKUljmE0_clEjm.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67, !nonnull !60, !align !61 ; 4 uses
  %i.e = zext i32 %1 to i64                       ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !69, !nonnull !60, !align !61 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !47
  %i.k = mul i64 %i.j, %i.e                       ; 2 uses
  %i.l = getelementptr i8, ptr %i.h, i64 %i.k     ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.l, i64 64) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70, !nonnull !60, !align !61
  %i.o = load i64, ptr %i.n, align 8, !tbaa !18   ; 9 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %_ZZN3jxl12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS6_PNS_10ThreadPoolEENKUljmE0_clEjm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !71, !nonnull !60, !align !61 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72, !nonnull !60, !align !61
  %i.x = load i64, ptr %i.w, align 8, !tbaa !18
  %i.y = xor i64 %i.e, -1
  %i.z = add i64 %i.x, %i.y
  %i.aa = mul i64 %i.z, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.aa ; 2 uses
  %i.ac = getelementptr [4 x i8], ptr %i.ab, i64 %i.o ; 7 uses
  %min.iters.check = icmp ult i64 %i.o, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.ad = shl i64 %i.o, 2
  %i.ae = getelementptr i8, ptr %i.h, i64 %i.k
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ad
  %bound0 = icmp ult ptr %i.ab, %i.af
  %bound1 = icmp ult ptr %i.l, %i.ac
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.o, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <4 x float>, ptr %i.ag, align 32, !tbaa !49, !alias.scope !380
  %wide.load5 = load <4 x float>, ptr %i.ah, align 16, !tbaa !49, !alias.scope !380
  %i.ai = xor i64 %index, -1
  %i.aj = getelementptr [4 x i8], ptr %i.ac, i64 %i.ai ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -12
  %i.al = getelementptr i8, ptr %i.aj, i64 -28
  %reverse = shufflevector <4 x float> %wide.load, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse6 = shufflevector <4 x float> %wide.load5, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %reverse, ptr %i.ak, align 4, !tbaa !49, !alias.scope !381, !noalias !380
  store <4 x float> %reverse6, ptr %i.al, align 4, !tbaa !49, !alias.scope !381, !noalias !380
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !377

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZZN3jxl12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS6_PNS_10ThreadPoolEENKUljmE0_clEjm.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.010.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.010.i.prol = phi i64 [ %i.ar, %scalar.ph.prol ], [ %.010.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.010.i.prol
  %i.ao = load float, ptr %i.an, align 4, !tbaa !49
  %i.ap = xor i64 %.010.i.prol, -1
  %i.aq = getelementptr [4 x i8], ptr %i.ac, i64 %i.ap
  store float %i.ao, ptr %i.aq, align 4, !tbaa !49
  %i.ar = add nuw i64 %.010.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !378

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.010.i.unr = phi i64 [ %.010.i.ph, %scalar.ph.preheader ], [ %i.ar, %scalar.ph.prol ]
  %i.as = sub i64 %.010.i.ph, %i.o
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %_ZZN3jxl12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS6_PNS_10ThreadPoolEENKUljmE0_clEjm.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.010.i = phi i64 [ %i.bn, %scalar.ph ], [ %.010.i.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.010.i
  %i.av = load float, ptr %i.au, align 4, !tbaa !49
  %i.aw = xor i64 %.010.i, -1
  %i.ax = getelementptr [4 x i8], ptr %i.ac, i64 %i.aw
  store float %i.av, ptr %i.ax, align 4, !tbaa !49
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.010.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load float, ptr %i.az, align 4, !tbaa !49
  %i.bb = sub i64 -2, %.010.i
  %i.bc = getelementptr [4 x i8], ptr %i.ac, i64 %i.bb
  store float %i.ba, ptr %i.bc, align 4, !tbaa !49
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.010.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !49
  %i.bg = sub i64 -3, %.010.i
  %i.bh = getelementptr [4 x i8], ptr %i.ac, i64 %i.bg
  store float %i.bf, ptr %i.bh, align 4, !tbaa !49
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.010.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !49
  %i.bl = sub i64 -4, %.010.i
  %i.bm = getelementptr [4 x i8], ptr %i.ac, i64 %i.bl
  store float %i.bk, ptr %i.bm, align 4, !tbaa !49
  %i.bn = add nuw i64 %.010.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bn, %i.o
  br i1 %exitcond.not.i.3, label %_ZZN3jxl12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS6_PNS_10ThreadPoolEENKUljmE0_clEjm.exit, label %scalar.ph, !llvm.loop !379

_ZZN3jxl12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS6_PNS_10ThreadPoolEENKUljmE0_clEjm.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i32 -1, 1) i32 @_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE1_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallInitFuncEPvm(ptr nofree readnone captures(none) %0, i64 %1) #16 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS9_PS0_EUljmE1_EES5_SD_jjRKNS_16ThreadPoolNoInitERKS8_PKcEUlmE_SE_E12CallDataFuncEPvjm(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 %2) #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load atomic i32, ptr %i.a seq_cst, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %_ZZN3jxl12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS6_PNS_10ThreadPoolEENKUljmE1_clEjm.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74, !nonnull !60, !align !61 ; 4 uses
  %i.e = zext i32 %1 to i64                       ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !76, !nonnull !60, !align !61 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !47
  %i.l = mul i64 %i.k, %i.e                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 64) ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !77, !nonnull !60, !align !61 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !78, !nonnull !60, !align !61
  %i.r = load i64, ptr %i.q, align 8, !tbaa !18
  %i.s = xor i64 %i.e, -1
  %i.t = add i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !46   ; 2 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !47
  %i.z = mul i64 %i.y, %i.t                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aa, i64 64) ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !79, !nonnull !60, !align !61
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !18 ; 7 uses
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %_ZZN3jxl12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS6_PNS_10ThreadPoolEENKUljmE1_clEjm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.ad, 16
  br i1 %min.iters.check, label %.lr.ph.i.preheader6, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.ae = add i64 %i.z, %i.w
  %i.af = add i64 %i.l, %i.i
  %i.ag = sub i64 %i.af, %i.ae
  %diff.check = icmp ugt i64 %i.ag, -32
  br i1 %diff.check, label %.lr.ph.i.preheader6, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <4 x float>, ptr %i.ah, align 32, !tbaa !49
  %wide.load5 = load <4 x float>, ptr %i.ai, align 16, !tbaa !49
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <4 x float> %wide.load, ptr %i.aj, align 32, !tbaa !49
  store <4 x float> %wide.load5, ptr %i.ak, align 16, !tbaa !49
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !382

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZZN3jxl12_GLOBAL__N_115UndoOrientationIfEENS_6StatusENS_11OrientationERKNS_5PlaneIT_EERS6_PNS_10ThreadPoolEENKUljmE1_clEjm.exit, label %.lr.ph.i.preheader6

.lr.ph.i.preheader6:                              ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.09.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ad, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader6, %.lr.ph.i.prol
  %.09.i.prol = phi i64 [ %i.ap, %.lr.ph.i.prol ], [ %.09.i.ph, %.lr.ph.i.preheader6 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader6 ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.09.i.prol
  %i.an = load float, ptr %i.am, align 4, !tbaa !49
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.09.i.prol
  store float %i.an, ptr %i.ao, align 4, !tbaa !49
  %i.ap = add nuw i64 %.09.i.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !383

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader6
  %.09.i.unr = phi i64 [ %.09.i.ph, %.lr.ph.i.preheader6 ], [ %i.ap, %.lr.ph.i.prol ]
  %i.aq = sub i64 %.09.i.ph, %i.ad
  %i.ar = icmp ugt i64 %i.aq, -4
end_hunk_1
