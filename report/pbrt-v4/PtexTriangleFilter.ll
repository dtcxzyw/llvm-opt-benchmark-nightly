Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/PtexTriangleFilter?download=true
inline.NumInlined: 111
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@_ZTSN4Ptex4v2_410PtexFilterE = linkonce_odr hidden constant [25 x i8] c"N4Ptex4v2_410PtexFilterE\00", comdat, align 1
@_ZZN4Ptex4v2_48DataSizeENS0_8DataTypeEE5sizes = linkonce_odr hidden local_unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 4], comdat, align 16
@_ZZN4Ptex4v2_48OneValueENS0_8DataTypeEE3one = linkonce_odr hidden local_unnamed_addr constant [4 x float] [float 2.550000e+02, float 6.553500e+04, float 1.000000e+00, float 1.000000e+00], comdat, align 16
@_ZN4Ptex4v2_422PtexTriangleKernelIter14applyFunctionsE = external local_unnamed_addr global [40 x ptr], align 16

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_418PtexTriangleFilter4evalEPfiiiffffffff(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11, float noundef %12) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %13 = alloca %"class.Ptex::v2_4::PtexTriangleKernel", align 4 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = icmp slt i32 %3, 1
  %or.cond = or i1 %i.e, %i.d
  %i.f = icmp slt i32 %4, 0
  %or.cond3 = or i1 %i.f, %or.cond
  br i1 %or.cond3, label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit40, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.not = icmp slt i32 %4, %i.j
  br i1 %.not, label %bb.c, label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit40

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store i32 %i.o, ptr %i.p, align 4, !tbaa !22
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store i32 %i.u, ptr %i.v, align 8, !tbaa !23
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @_ZZN4Ptex4v2_48DataSizeENS0_8DataTypeEE5sizes, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !24
  %i.z = mul nsw i32 %i.y, %2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !25
  %i.ab = load i32, ptr %i.p, align 4, !tbaa !22
  %i.ac = sub nsw i32 %i.ab, %2
  %i.ad = tail call noundef i32 @llvm.smin.i32(i32 %3, i32 %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !26
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef nonnull align 4 dereferenceable(20) ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i32 noundef %4) ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !53
  %i.am = and i8 %i.al, 4
  %.not45 = icmp eq i8 %i.am, 0
  br i1 %.not45, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 160
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i32 noundef %4, i16 0) ; 7 uses
  %.not38 = icmp eq ptr %i.ar, null
  br i1 %.not38, label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit40, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = invoke noundef ptr %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aw = load i32, ptr %i.aa, align 4, !tbaa !25
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.av, i64 %i.ax
  %i.az = load i32, ptr %i.v, align 8, !tbaa !23
  %i.ba = load i32, ptr %i.ae, align 8, !tbaa !26
  invoke void @_ZN4Ptex4v2_414ConvertToFloatEPfPKvNS0_8DataTypeEi(ptr noundef %1, ptr noundef %i.ay, i32 noundef %i.az, i32 noundef %i.ba)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %i.ar, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #11
  unreachable

_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit: ; preds = %bb.g
  resume { ptr, i32 } %i.bb

bb.i:                                             ; preds = %bb.f
  %i.bh = load ptr, ptr %i.ar, align 8, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  invoke void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit40 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #11
  unreachable

bb.k:                                             ; preds = %bb.c
  %i.bm = fcmp ogt float %5, 0.000000e+00
  %i.bn = select i1 %i.bm, float %5, float 0.000000e+00
  %i.bo = fcmp ogt float %6, 0.000000e+00
  %i.bp = select i1 %i.bo, float %6, float 0.000000e+00 ; 2 uses
  %i.bq = fcmp olt float %i.bp, 1.000000e+00
  %i.br = select i1 %i.bq, float %i.bp, float 1.000000e+00 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %.sroa.0.0.copyload = load i16, ptr %i.aj, align 4
  %i.bs = fmul float %11, 2.500000e-01
  %i.bt = fmul float %11, %i.bs                   ; 3 uses
  %i.bu = fmul float %i.bt, -2.000000e+00
  %i.bv = fmul float %10, %10
  %i.bw = tail call float @llvm.fmuladd.f32(float %8, float %8, float %i.bv)
  %i.bx = fmul float %i.bw, %i.bt                 ; 3 uses
  %i.by = fmul float %9, %10
  %i.bz = tail call float @llvm.fmuladd.f32(float %7, float %8, float %i.by)
  %i.ca = fmul float %i.bz, %i.bu                 ; 2 uses
  %i.cb = fmul float %9, %9
  %i.cc = tail call float @llvm.fmuladd.f32(float %7, float %7, float %i.cb)
  %i.cd = fmul float %i.cc, %i.bt
  %i.ce = fmul float %i.bx, 7.500000e-01          ; 3 uses
  %i.cf = fsub float %i.ca, %i.bx
  %i.cg = fmul float %i.cf, f0x3F5DB3D7           ; 5 uses
  %i.ch = fmul float %i.ca, -5.000000e-01
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.bx, float 2.500000e-01, float %i.ch)
  %i.cj = fadd float %i.cd, %i.ci                 ; 3 uses
  %i.ck = fsub float %i.ce, %i.cj                 ; 2 uses
  %i.cl = fmul float %i.ck, %i.ck
  %i.cm = fmul float %i.cg, %i.cg
  %i.cn = fadd float %i.cm, %i.cl
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.cn) ; 2 uses
  %i.co = fadd float %i.ce, %i.cj
  %i.cp = fneg float %i.co
  %i.cq = tail call float @llvm.fmuladd.f32(float %sqrt.i, float f0x3F812492, float %i.cp)
  %i.cr = fmul float %i.cq, 5.000000e-01          ; 2 uses
  %i.cs = and i16 %.sroa.0.0.copyload, 255
  %i.ct = zext nneg i16 %i.cs to i32
  %i.cu = shl nuw i32 1, %i.ct
  %i.cv = sitofp i32 %i.cu to float
  %i.cw = fdiv float 5.000000e-01, %i.cv          ; 2 uses
  %i.cx = fmul float %i.cw, %i.cw                 ; 2 uses
  %i.cy = fmul float %12, 2.500000e-01
  %i.cz = fmul float %12, %i.cy                   ; 2 uses
  %i.da = fcmp ogt float %i.cr, %i.cx
  %i.db = select i1 %i.da, float %i.cr, float %i.cx ; 2 uses
  %i.dc = fcmp ogt float %i.cz, %i.db
  %i.dd = select i1 %i.dc, float %i.cz, float %i.db ; 2 uses
  %i.de = fadd float %i.ce, %i.dd                 ; 3 uses
  %i.df = fadd float %i.cj, %i.dd                 ; 3 uses
  %i.dg = fmul float %i.cg, 2.500000e-01
  %i.dh = fneg float %i.cg
  %i.di = fmul float %i.dg, %i.dh
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.de, float %i.df, float %i.di)
  %i.dk = fmul float %i.dj, 2.000000e+00
  %i.dl = fadd float %i.de, %i.df
  %i.dm = fadd float %sqrt.i, %i.dl
  %i.dn = fdiv float %i.dk, %i.dm
  %i.do = tail call float @sqrtf(float noundef %i.dn) #12
  %i.dp = fmul float %i.do, 2.000000e+00
  %i.dq = bitcast float %i.dp to i32
  %i.dr = lshr i32 %i.dq, 23
  %i.ds = and i32 %i.dr, 255
  %i.dt = sub nsw i32 127, %i.ds
  %i.du = tail call noundef i32 @llvm.smax.i32(i32 %i.dt, i32 0)
  %i.dv = fmul float %i.de, f0x3FAAAAAB           ; 3 uses
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.cg, float f0x3F93CD3A, float %i.dv) ; 2 uses
  %i.dx = fmul float %i.dw, 5.000000e-01
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dv, float -2.500000e-01, float %i.dx)
  %i.dz = fadd float %i.df, %i.dy
  %i.ea = fmul float %i.dv, 1.225000e+01          ; 3 uses
  %i.eb = fmul float %i.dw, 1.225000e+01          ; 2 uses
  %i.ec = fmul float %i.dz, 1.225000e+01          ; 3 uses
  %i.ed = tail call float @sqrtf(float noundef %i.ec) #12
  %i.ee = tail call float @sqrtf(float noundef %i.ea) #12
  %i.ef = fsub float %i.ea, %i.eb
  %i.eg = fadd float %i.ef, %i.ec
  %i.eh = tail call float @sqrtf(float noundef %i.eg) #12
  %i.ei = trunc nuw nsw i32 %i.du to i16          ; 2 uses
  %.sroa.2.0.insert.shift.i = shl nuw nsw i16 %i.ei, 8
  %.sroa.0.0.insert.insert.i = or i16 %.sroa.2.0.insert.shift.i, %i.ei
  store i16 %.sroa.0.0.insert.insert.i, ptr %13, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ek = getelementptr inbounds nuw i8, ptr %13, i64 8
  store float %i.br, ptr %i.ek, align 4, !tbaa !30
  %i.el = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.em = insertelement <4 x float> poison, float %i.ed, i64 0
  %i.en = insertelement <4 x float> %i.em, float %i.ee, i64 1
  %i.eo = insertelement <4 x float> %i.en, float %i.eh, i64 2
  %i.ep = insertelement <4 x float> %i.eo, float %i.bn, i64 3 ; 2 uses
  %i.eq = fcmp olt <4 x float> %i.ep, splat (float 1.000000e+00)
  %i.er = select <4 x i1> %i.eq, <4 x float> %i.ep, <4 x float> splat (float 1.000000e+00) ; 5 uses
  %i.es = extractelement <4 x float> %i.er, i64 3 ; 2 uses
  %i.et = fsub float 1.000000e+00, %i.es
  %i.eu = fsub float %i.et, %i.br                 ; 2 uses
  %i.ev = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 0>
  %i.ew = insertelement <4 x float> %i.ev, float %i.br, i64 1
  %i.ex = insertelement <4 x float> %i.ew, float %i.eu, i64 2 ; 2 uses
  %i.ey = fsub <4 x float> %i.ex, %i.er
  %i.ez = fadd <4 x float> %i.ex, %i.er
  %i.fa = shufflevector <4 x float> %i.ey, <4 x float> %i.ez, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store float %i.es, ptr %i.ej, align 4, !tbaa !31
  store <4 x float> %i.fa, ptr %i.el, align 4, !tbaa !32
  %i.fb = getelementptr inbounds nuw i8, ptr %13, i64 28
  %i.fc = insertelement <2 x float> poison, float %i.br, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.eu, i64 1
  %i.fe = shufflevector <4 x float> %i.er, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ff = fadd <2 x float> %i.fd, %i.fe
  store <2 x float> %i.ff, ptr %i.fb, align 4, !tbaa !32
  %i.fg = getelementptr inbounds nuw i8, ptr %13, i64 36
  store float %i.ea, ptr %i.fg, align 4, !tbaa !33
  %i.fh = getelementptr inbounds nuw i8, ptr %13, i64 40
  store float %i.eb, ptr %i.fh, align 4, !tbaa !34
  %i.fi = getelementptr inbounds nuw i8, ptr %13, i64 44
  store float %i.ec, ptr %i.fi, align 4, !tbaa !35
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store float 0.000000e+00, ptr %i.fj, align 8, !tbaa !36
  %i.fk = load i32, ptr %i.ae, align 8, !tbaa !26
  %i.fl = sext i32 %i.fk to i64
  %i.fm = shl nsw i64 %i.fl, 2                    ; 2 uses
  %i.fn = alloca i8, i64 %i.fm, align 16          ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.fn, i8 0, i64 %i.fm, i1 false)
  call void @_ZN4Ptex4v2_418PtexTriangleFilter13splitAndApplyERNS0_18PtexTriangleKernelEiRKNS0_8FaceInfoE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(48) %13, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(20) %i.aj)
  %i.fp = load float, ptr %i.fj, align 8, !tbaa !36
  %i.fq = load i32, ptr %i.v, align 8, !tbaa !23
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr @_ZZN4Ptex4v2_48OneValueENS0_8DataTypeEE3one, i64 %i.fr
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !32
  %i.fu = fmul float %i.fp, %i.ft
  %i.fv = fdiv float 1.000000e+00, %i.fu          ; 6 uses
  %i.fw = load i32, ptr %i.ae, align 8, !tbaa !26 ; 3 uses
  %i.fx = icmp sgt i32 %i.fw, 0
  br i1 %i.fx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %i.fy = load ptr, ptr %i.fo, align 8, !tbaa !37 ; 7 uses
  %wide.trip.count = zext nneg i32 %i.fw to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %i.fw, 8
  %i.fz = ptrtoaddr ptr %i.fy to i64
  %i.ga = sub i64 %i.fz, %i.a
  %diff.check = icmp ugt i64 %i.ga, -32
  %or.cond54 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond54, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fv, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %index ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %wide.load = load <4 x float>, ptr %i.gb, align 4, !tbaa !32
  %wide.load52 = load <4 x float>, ptr %i.gc, align 4, !tbaa !32
  %i.gd = fmul <4 x float> %broadcast.splat, %wide.load
  %i.ge = fmul <4 x float> %broadcast.splat, %wide.load52
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store <4 x float> %i.gd, ptr %i.gf, align 4, !tbaa !32
  store <4 x float> %i.ge, ptr %i.gg, align 4, !tbaa !32
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gh = icmp eq i64 %index.next, %n.vec
  br i1 %i.gh, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv.prol
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !32
  %i.gk = fmul float %i.fv, %i.gj
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  store float %i.gk, ptr %i.gl, align 4, !tbaa !32
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !51

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.gm = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.gn = icmp ugt i64 %i.gm, -4
  br i1 %i.gn, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.k
  store ptr null, ptr %i.fo, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  br label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit40

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv
  %i.gp = load float, ptr %i.go, align 4, !tbaa !32
  %i.gq = fmul float %i.fv, %i.gp
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store float %i.gq, ptr %i.gr, align 4, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv.next
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !32
  %i.gu = fmul float %i.fv, %i.gt
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store float %i.gu, ptr %i.gv, align 4, !tbaa !32
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv.next.1
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !32
  %i.gy = fmul float %i.fv, %i.gx
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  store float %i.gy, ptr %i.gz, align 4, !tbaa !32
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv.next.2
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !32
  %i.hc = fmul float %i.fv, %i.hb
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  store float %i.hc, ptr %i.hd, align 4, !tbaa !32
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !52

_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit40: ; preds = %bb.d, %bb.i, %._crit_edge, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN4Ptex4v2_414ConvertToFloatEPfPKvNS0_8DataTypeEi(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define hidden void @_ZN4Ptex4v2_418PtexTriangleFilter11buildKernelERNS0_18PtexTriangleKernelEffffffffNS0_3ResE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(68) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(48) initializes((0, 2), (4, 48)) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, i16 %10) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = fmul float %8, 2.500000e-01
  %i.b = fmul float %8, %i.a                      ; 3 uses
  %i.c = fmul float %i.b, -2.000000e+00
  %i.d = fmul float %7, %7
  %i.e = tail call float @llvm.fmuladd.f32(float %5, float %5, float %i.d)
  %i.f = fmul float %i.e, %i.b                    ; 3 uses
  %i.g = fmul float %6, %7
  %i.h = tail call float @llvm.fmuladd.f32(float %4, float %5, float %i.g)
  %i.i = fmul float %i.h, %i.c                    ; 2 uses
  %i.j = fmul float %6, %6
  %i.k = tail call float @llvm.fmuladd.f32(float %4, float %4, float %i.j)
  %i.l = fmul float %i.k, %i.b
  %i.m = fmul float %i.f, 7.500000e-01            ; 3 uses
  %i.n = fsub float %i.i, %i.f
  %i.o = fmul float %i.n, f0x3F5DB3D7             ; 5 uses
  %i.p = fmul float %i.i, -5.000000e-01
  %i.q = tail call float @llvm.fmuladd.f32(float %i.f, float 2.500000e-01, float %i.p)
  %i.r = fadd float %i.l, %i.q                    ; 3 uses
  %i.s = fsub float %i.m, %i.r                    ; 2 uses
  %i.t = fmul float %i.s, %i.s
  %i.u = fmul float %i.o, %i.o
  %i.v = fadd float %i.u, %i.t
  %sqrt = tail call float @llvm.sqrt.f32(float %i.v) ; 2 uses
  %i.w = fadd float %i.m, %i.r
  %i.x = fneg float %i.w
  %i.y = tail call float @llvm.fmuladd.f32(float %sqrt, float f0x3F812492, float %i.x)
  %i.z = fmul float %i.y, 5.000000e-01            ; 2 uses
  %i.aa = and i16 %10, 255
  %i.ab = zext nneg i16 %i.aa to i32
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = sitofp i32 %i.ac to float
  %i.ae = fdiv float 5.000000e-01, %i.ad          ; 2 uses
  %i.af = fmul float %i.ae, %i.ae                 ; 2 uses
  %i.ag = fmul float %9, 2.500000e-01
  %i.ah = fmul float %9, %i.ag                    ; 2 uses
  %i.ai = fcmp ogt float %i.z, %i.af
  %i.aj = select i1 %i.ai, float %i.z, float %i.af ; 2 uses
  %i.ak = fcmp ogt float %i.ah, %i.aj
  %i.al = select i1 %i.ak, float %i.ah, float %i.aj ; 2 uses
  %i.am = fadd float %i.m, %i.al                  ; 3 uses
  %i.an = fadd float %i.r, %i.al                  ; 3 uses
  %i.ao = fmul float %i.o, 2.500000e-01
  %i.ap = fneg float %i.o
  %i.aq = fmul float %i.ao, %i.ap
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.am, float %i.an, float %i.aq)
  %i.as = fmul float %i.ar, 2.000000e+00
  %i.at = fadd float %i.am, %i.an
  %i.au = fadd float %sqrt, %i.at
  %i.av = fdiv float %i.as, %i.au
  %i.aw = tail call float @sqrtf(float noundef %i.av) #12
  %i.ax = fmul float %i.aw, 2.000000e+00
  %i.ay = bitcast float %i.ax to i32
  %i.az = lshr i32 %i.ay, 23
  %i.ba = and i32 %i.az, 255
  %i.bb = sub nsw i32 127, %i.ba
  %i.bc = tail call noundef i32 @llvm.smax.i32(i32 %i.bb, i32 0)
  %i.bd = fmul float %i.am, f0x3FAAAAAB           ; 3 uses
  %i.be = tail call float @llvm.fmuladd.f32(float %i.o, float f0x3F93CD3A, float %i.bd) ; 2 uses
  %i.bf = fmul float %i.be, 5.000000e-01
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bd, float -2.500000e-01, float %i.bf)
  %i.bh = fadd float %i.an, %i.bg
  %i.bi = fmul float %i.bd, 1.225000e+01          ; 3 uses
  %i.bj = fmul float %i.be, 1.225000e+01          ; 2 uses
  %i.bk = fmul float %i.bh, 1.225000e+01          ; 3 uses
  %i.bl = tail call float @sqrtf(float noundef %i.bk) #12
  %i.bm = tail call float @sqrtf(float noundef %i.bi) #12
  %i.bn = fsub float %i.bi, %i.bj
  %i.bo = fadd float %i.bn, %i.bk
  %i.bp = tail call float @sqrtf(float noundef %i.bo) #12
  %i.bq = fsub float 1.000000e+00, %2
  %i.br = fsub float %i.bq, %3                    ; 2 uses
  %i.bs = trunc nuw nsw i32 %i.bc to i16          ; 2 uses
  %.sroa.2.0.insert.shift = shl nuw nsw i16 %i.bs, 8
  %.sroa.0.0.insert.insert = or i16 %.sroa.2.0.insert.shift, %i.bs
  store i16 %.sroa.0.0.insert.insert, ptr %1, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %2, ptr %i.bt, align 4, !tbaa !31
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %3, ptr %i.bu, align 4, !tbaa !30
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bw = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bx = insertelement <4 x float> %i.bw, float %i.bm, i64 1
  %i.by = insertelement <4 x float> %i.bx, float %i.bp, i64 2
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.ca = fcmp olt <4 x float> %i.bz, splat (float 1.000000e+00)
  %i.cb = select <4 x i1> %i.ca, <4 x float> %i.bz, <4 x float> splat (float 1.000000e+00) ; 3 uses
  %i.cc = insertelement <4 x float> poison, float %2, i64 0
  %i.cd = insertelement <4 x float> %i.cc, float %3, i64 1
  %i.ce = insertelement <4 x float> %i.cd, float %i.br, i64 2
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.cg = fsub <4 x float> %i.cf, %i.cb
  %i.ch = fadd <4 x float> %i.cf, %i.cb
  %i.ci = shufflevector <4 x float> %i.cg, <4 x float> %i.ch, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.ci, ptr %i.bv, align 4, !tbaa !32
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ck = insertelement <2 x float> poison, float %3, i64 0
  %i.cl = insertelement <2 x float> %i.ck, float %i.br, i64 1
  %i.cm = shufflevector <4 x float> %i.cb, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.cn = fadd <2 x float> %i.cl, %i.cm
  store <2 x float> %i.cn, ptr %i.cj, align 4, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %i.bi, ptr %i.co, align 4, !tbaa !33
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %i.bj, ptr %i.cp, align 4, !tbaa !34
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float %i.bk, ptr %i.cq, align 4, !tbaa !35
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_418PtexTriangleFilter13splitAndApplyERNS0_18PtexTriangleKernelEiRKNS0_8FaceInfoE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(48) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.Ptex::v2_4::PtexTriangleKernel", align 4 ; 6 uses
  %5 = alloca %"class.Ptex::v2_4::PtexTriangleKernel", align 4 ; 6 uses
  %6 = alloca %"class.Ptex::v2_4::PtexTriangleKernel", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !39
  %i.c = fcmp olt float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !24   ; 3 uses
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !58
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.i = load i8, ptr %i.h, align 2, !tbaa !41
  %i.j = lshr i8 %i.i, 4
  %i.k = and i8 %i.j, 3
  %i.l = zext nneg i8 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef nonnull align 4 dereferenceable(20) ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef %i.e), !inline_history !59
  call void @_ZN4Ptex4v2_418PtexTriangleKernel8reorientEii(ptr noundef nonnull align 4 dereferenceable(48) %4, i32 noundef 2, i32 noundef %i.l), !inline_history !59
  call void @_ZN4Ptex4v2_418PtexTriangleFilter13splitAndApplyERNS0_18PtexTriangleKernelEiRKNS0_8FaceInfoE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(48) %4, i32 noundef %i.e, ptr noundef nonnull align 4 dereferenceable(20) %i.r), !inline_history !59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !42
  %i.u = fcmp olt float %i.t, 0.000000e+00
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !24   ; 3 uses
  %i.x = icmp sgt i32 %i.w, -1
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %5, ptr noundef nonnull align 4 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !58
  store float 0.000000e+00, ptr %i.s, align 4, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 28
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !41
  %i.ab = and i8 %i.aa, 3
  %i.ac = zext nneg i8 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef nonnull align 4 dereferenceable(20) ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i32 noundef %i.w), !inline_history !59
  call void @_ZN4Ptex4v2_418PtexTriangleKernel8reorientEii(ptr noundef nonnull align 4 dereferenceable(48) %5, i32 noundef 0, i32 noundef %i.ac), !inline_history !59
  call void @_ZN4Ptex4v2_418PtexTriangleFilter13splitAndApplyERNS0_18PtexTriangleKernelEiRKNS0_8FaceInfoE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(48) %5, i32 noundef %i.w, ptr noundef nonnull align 4 dereferenceable(20) %i.ai), !inline_history !59
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !44
  %i.al = fcmp olt float %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !24 ; 3 uses
  %i.ao = icmp sgt i32 %i.an, -1
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %6, ptr noundef nonnull align 4 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !58
  store float 0.000000e+00, ptr %i.aj, align 4, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 32
  store float 0.000000e+00, ptr %i.ap, align 4, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !41
  %i.as = lshr i8 %i.ar, 2
  %i.at = and i8 %i.as, 3
  %i.au = zext nneg i8 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !19 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !21
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef nonnull align 4 dereferenceable(20) ptr %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i32 noundef %i.an), !inline_history !59
  call void @_ZN4Ptex4v2_418PtexTriangleKernel8reorientEii(ptr noundef nonnull align 4 dereferenceable(48) %6, i32 noundef 1, i32 noundef %i.au), !inline_history !59
  call void @_ZN4Ptex4v2_418PtexTriangleFilter13splitAndApplyERNS0_18PtexTriangleKernelEiRKNS0_8FaceInfoE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(48) %6, i32 noundef %i.an, ptr noundef nonnull align 4 dereferenceable(20) %i.ba), !inline_history !59
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  call void @_ZN4Ptex4v2_418PtexTriangleFilter5applyERNS0_18PtexTriangleKernelEiRKNS0_8FaceInfoE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(20) %3)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_418PtexTriangleFilter15applyAcrossEdgeERNS0_18PtexTriangleKernelERKNS0_8FaceInfoEi(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = sext i32 %3 to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !24   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = load i8, ptr %i.e, align 2, !tbaa !41
  %i.g = zext i8 %i.f to i32
  %i.h = shl nsw i32 %3, 1
  %i.i = lshr i32 %i.g, %i.h
  %i.j = and i32 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef nonnull align 4 dereferenceable(20) ptr %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef %i.d)
  tail call void @_ZN4Ptex4v2_418PtexTriangleKernel8reorientEii(ptr noundef nonnull align 4 dereferenceable(48) %1, i32 noundef %3, i32 noundef %i.j)
  tail call void @_ZN4Ptex4v2_418PtexTriangleFilter13splitAndApplyERNS0_18PtexTriangleKernelEiRKNS0_8FaceInfoE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(48) %1, i32 noundef %i.d, ptr noundef nonnull align 4 dereferenceable(20) %i.p)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_418PtexTriangleFilter5applyERNS0_18PtexTriangleKernelEiRKNS0_8FaceInfoE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(48) initializes((1, 2)) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Ptex::v2_4::PtexTriangleKernelIter", align 4 ; 6 uses
  %5 = alloca %"class.Ptex::v2_4::PtexTriangleKernelIter", align 4 ; 6 uses
  %.sroa.03.0.copyload = load i16, ptr %3, align 4
  %.sroa.0.0.extract.trunc.i = trunc i16 %.sroa.03.0.copyload to i8
  %i.a = load i8, ptr %1, align 4, !tbaa !60
  %i.b = tail call noundef i8 @llvm.smin.i8(i8 %i.a, i8 %.sroa.0.0.extract.trunc.i) ; 2 uses
  store i8 %i.b, ptr %1, align 4, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.b, ptr %i.c, align 1, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = load <2 x float>, ptr %i.d, align 4, !tbaa !32 ; 2 uses
  %i.f = fcmp ogt <2 x float> %i.e, zeroinitializer
  %i.g = select <2 x i1> %i.f, <2 x float> %i.e, <2 x float> zeroinitializer ; 3 uses
  store <2 x float> %i.g, ptr %i.d, align 4, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4Ptex4v2_418PtexTriangleKernel8reorientEii:bb.a
  %i.hs = fneg float %i.b
  %i.ht = fsub float 1.000000e+00, %i.e
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !40
  %i.hw = fneg float %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !39
  %i.ia = fneg float %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store float %i.hs, ptr %i.a, align 4, !tbaa !31
  store float %i.ht, ptr %i.d, align 4, !tbaa !30
  store float %i.hw, ptr %i.hy, align 4, !tbaa !39
  %i.ic = load <2 x float>, ptr %i.hx, align 4, !tbaa !32
  %i.id = fsub <2 x float> splat (float 1.000000e+00), %i.ic
  store float %i.ia, ptr %i.hu, align 4, !tbaa !40
  %i.ie = load <2 x float>, ptr %i.ib, align 4, !tbaa !32
  %i.if = fsub <2 x float> splat (float 1.000000e+00), %i.ie
  store <2 x float> %i.id, ptr %i.ib, align 4, !tbaa !32
  store <2 x float> %i.if, ptr %i.hx, align 4, !tbaa !32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_418PtexTriangleKernel12getIteratorsERNS0_22PtexTriangleKernelIterES3_(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(60) %1, ptr noundef nonnull align 4 dereferenceable(60) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !tbaa !64
  %i.b = zext nneg i8 %i.a to i32
  %i.c = shl nuw i32 1, %i.b                      ; 3 uses
  %i.d = sitofp i32 %i.c to float                 ; 4 uses
  %i.e = fmul nnan float %i.d, %i.d               ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = load float, ptr %i.f, align 4, !tbaa !33 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load float, ptr %i.h, align 4, !tbaa !35 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load float, ptr %i.j, align 4, !tbaa !34 ; 3 uses
  %i.l = fmul float %i.k, 2.500000e-01
  %i.m = fneg float %i.k
  %i.n = fmul float %i.l, %i.m
  %i.o = tail call float @llvm.fmuladd.f32(float %i.g, float %i.i, float %i.n)
  %i.p = fmul float %i.e, %i.o
  store i32 %i.c, ptr %1, align 4, !tbaa !48
  %i.q = insertelement <2 x float> poison, float %i.p, i64 0
  %i.r = insertelement <2 x float> %i.q, float %i.e, i64 1
  %i.s = fdiv <2 x float> splat (float 1.000000e+00), %i.r ; 2 uses
  %i.t = extractelement <2 x float> %i.s, i64 0   ; 3 uses
  %i.u = fmul float %i.g, %i.t                    ; 2 uses
  %i.v = fmul float %i.k, %i.t                    ; 2 uses
  %i.w = fmul float %i.i, %i.t                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.y = extractelement <2 x float> %i.s, i64 1   ; 2 uses
  store float %i.y, ptr %i.x, align 4, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load <2 x float>, ptr %i.z, align 4, !tbaa !32 ; 2 uses
  %i.ac = insertelement <2 x float> poison, float %i.d, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ad, <2 x float> splat (float f0xBEAAAAAB))
  store <2 x float> %i.ae, ptr %i.aa, align 4, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ah = load <4 x float>, ptr %i.af, align 4, !tbaa !32 ; 4 uses
  %i.ai = insertelement <4 x float> poison, float %i.d, i64 0
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ak = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.aj, <4 x float> splat (float f0xBEAAAAAB))
  %i.al = tail call <4 x float> @llvm.ceil.v4f32(<4 x float> %i.ak)
  %i.am = fptosi <4 x float> %i.al to <4 x i32>   ; 5 uses
  store <4 x i32> %i.am, ptr %i.ag, align 4, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ap = load <2 x float>, ptr %i.an, align 4, !tbaa !32 ; 2 uses
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.ad, <2 x float> splat (float f0xBEAAAAAB))
  %i.ar = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.aq)
  %i.as = fptosi <2 x float> %i.ar to <2 x i32>   ; 3 uses
  store <2 x i32> %i.as, ptr %i.ao, align 4, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %i.u, ptr %i.at, align 4, !tbaa !66
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %i.v, ptr %i.au, align 4, !tbaa !67
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float %i.w, ptr %i.av, align 4, !tbaa !68
  %shift = shufflevector <4 x i32> %i.am, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.aw = icmp sgt <4 x i32> %shift, %i.am
  %i.ax = extractelement <4 x i1> %i.aw, i64 0
  %i.ay = extractelement <4 x i32> %i.am, i64 1
  %i.az = extractelement <2 x i32> %i.as, i64 0
  %i.ba = icmp sgt i32 %i.az, %i.ay
  %or.cond = select i1 %i.ax, i1 %i.ba, i1 false
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float 0.000000e+00, ptr %i.bc, align 4, !tbaa !49
  store i32 %i.c, ptr %2, align 4, !tbaa !48
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 52
  store float %i.y, ptr %i.bd, align 4, !tbaa !65
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bf = fsub <2 x float> splat (float 1.000000e+00), %i.ab
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.ad, <2 x float> splat (float f0xBEAAAAAB))
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.bh, ptr %i.be, align 4, !tbaa !32
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bj = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> %i.ah, <4 x i32> <i32 0, i32 7, i32 poison, i32 5>
  %i.bl = insertelement <4 x float> %i.bk, float 0.000000e+00, i64 2
  %i.bm = extractelement <4 x float> %i.ah, i64 0
  %i.bn = fsub float 1.000000e+00, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bp = shufflevector <4 x float> %i.bj, <4 x float> %i.ah, <2 x i32> <i32 1, i32 6>
  %i.bq = fneg <2 x float> %i.bp                  ; 2 uses
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bs = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float 1.000000e+00>, <4 x float> %i.br, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.bt = fsub <4 x float> %i.bs, %i.bl
  %i.bu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> %i.aj, <4 x float> splat (float f0xBEAAAAAB))
  %i.bv = tail call <4 x float> @llvm.ceil.v4f32(<4 x float> %i.bu)
  %i.bw = fptosi <4 x float> %i.bv to <4 x i32>   ; 3 uses
  store <4 x i32> %i.bw, ptr %i.bi, align 4, !tbaa !24
  %i.bx = insertelement <2 x float> %i.bq, float %i.bn, i64 0
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.ad, <2 x float> splat (float f0xBEAAAAAB))
  %i.bz = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.by)
  %i.ca = fptosi <2 x float> %i.bz to <2 x i32>   ; 2 uses
  store <2 x i32> %i.ca, ptr %i.bo, align 4, !tbaa !24
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 36
  store float %i.w, ptr %i.cb, align 4, !tbaa !66
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 40
  store float %i.v, ptr %i.cc, align 4, !tbaa !67
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 44
  store float %i.u, ptr %i.cd, align 4, !tbaa !68
  %i.ce = shufflevector <2 x i32> %i.ca, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cf = shufflevector <4 x i32> %i.ce, <4 x i32> %i.bw, <4 x i32> <i32 1, i32 0, i32 7, i32 poison>
  %i.cg = shufflevector <2 x i32> %i.as, <2 x i32> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ch = shufflevector <4 x i32> %i.cf, <4 x i32> %i.cg, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ci = shufflevector <4 x i32> %i.bw, <4 x i32> %i.am, <4 x i32> <i32 2, i32 1, i32 0, i32 6>
  %i.cj = icmp sgt <4 x i32> %i.ch, %i.ci         ; 4 uses
  %i.ck = extractelement <4 x i1> %i.cj, i64 3
  %narrow = select i1 %or.cond, i1 %i.ck, i1 false
  %i.cl = zext i1 %narrow to i8
  store i8 %i.cl, ptr %i.bb, align 4, !tbaa !47
  %i.cm = extractelement <4 x i1> %i.cj, i64 1
  %i.cn = extractelement <4 x i1> %i.cj, i64 2
  %or.cond75 = select i1 %i.cn, i1 %i.cm, i1 false
  %i.co = extractelement <4 x i1> %i.cj, i64 0
  %narrow76 = select i1 %or.cond75, i1 %i.co, i1 false
  %i.cp = zext i1 %narrow76 to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i8 %i.cp, ptr %i.cq, align 4, !tbaa !47
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 56
  store float 0.000000e+00, ptr %i.cr, align 4, !tbaa !49
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_418PtexTriangleFilter9applyIterERNS0_22PtexTriangleKernelIterEPNS0_12PtexFaceDataE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(68) %0, ptr noundef nonnull align 4 dereferenceable(60) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Ptex::v2_4::PtexTriangleKernelIter", align 4 ; 16 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.g = load ptr, ptr %2, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !25
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i32, ptr %i.o, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !26
  tail call void @_ZN4Ptex4v2_422PtexTriangleKernelIter10applyConstEPfPvNS0_8DataTypeEi(ptr noundef nonnull align 4 dereferenceable(60) %1, ptr noundef %i.f, ptr noundef %i.n, i32 noundef %i.p, i32 noundef %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.t = load float, ptr %i.s, align 4, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = load float, ptr %i.u, align 8, !tbaa !36
  %i.w = fadd float %i.t, %i.v
  store float %i.w, ptr %i.u, align 8, !tbaa !36
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %2, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.aa, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %2, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call i16 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %.sroa.5.0.extract.shift = lshr i16 %i.ae, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %3, ptr noundef nonnull align 4 dereferenceable(60) %1, i64 60, i1 false), !tbaa.struct !73
  %i.af = and i16 %i.ae, 255
  %i.ag = zext nneg i16 %i.af to i32              ; 2 uses
  %i.ah = shl nuw i32 1, %i.ag                    ; 6 uses
  %4 = zext nneg i16 %.sroa.5.0.extract.shift to i32 ; 2 uses
  %i.ai = shl nuw i32 1, %4                       ; 3 uses
  store i32 %i.ah, ptr %3, align 4, !tbaa !48
  %i.aj = load i32, ptr %1, align 4, !tbaa !48    ; 2 uses
  %i.ak = sdiv i32 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !74
  %i.an = sdiv i32 %i.am, %i.ai                   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !75
  %i.aq = add nsw i32 %i.ap, -1
  %i.ar = sdiv i32 %i.aq, %i.ai                   ; 2 uses
  %.not79 = icmp sgt i32 %i.an, %i.ar
  br i1 %.not79, label %._crit_edge83, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.e

._crit_edge83:                                    ; preds = %._crit_edge, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.r

bb.e:                                             ; preds = %.lr.ph82, %._crit_edge
  %.05980 = phi i32 [ %i.an, %.lr.ph82 ], [ %i.ce, %._crit_edge ] ; 4 uses
  %i.bn = shl i32 %.05980, %4                     ; 4 uses
  %i.bo = load float, ptr %i.as, align 4, !tbaa !76
  %i.bp = sitofp i32 %i.bn to float
  %i.bq = fsub float %i.bo, %i.bp
  store float %i.bq, ptr %i.at, align 4, !tbaa !76
  %i.br = load i32, ptr %i.al, align 4, !tbaa !74
  %i.bs = sub nsw i32 %i.br, %i.bn
  %i.bt = call noundef i32 @llvm.smax.i32(i32 %i.bs, i32 0)
  store i32 %i.bt, ptr %i.au, align 4, !tbaa !74
  %i.bu = load i32, ptr %i.ao, align 4, !tbaa !75
  %i.bv = sub nsw i32 %i.bu, %i.bn
  %i.bw = call noundef i32 @llvm.smin.i32(i32 %i.bv, i32 %i.ai)
  store i32 %i.bw, ptr %i.av, align 4, !tbaa !75
  %i.bx = load i32, ptr %i.aw, align 4, !tbaa !77
  %i.by = sdiv i32 %i.bx, %i.ah                   ; 2 uses
  %i.bz = load i32, ptr %i.ax, align 4, !tbaa !78
  %i.ca = add nsw i32 %i.bz, -1
  %i.cb = sdiv i32 %i.ca, %i.ah                   ; 2 uses
  %.not6077 = icmp sgt i32 %i.by, %i.cb
  br i1 %.not6077, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.cc = add i32 %i.ah, %i.bn
  %i.cd = mul nsw i32 %.05980, %i.ak
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit64, %bb.e
  %i.ce = add i32 %.05980, 1
  %exitcond86.not = icmp eq i32 %.05980, %i.ar
  br i1 %exitcond86.not, label %._crit_edge83, label %bb.e, !llvm.loop !69

bb.f:                                             ; preds = %.lr.ph, %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit64
  %.078 = phi i32 [ %i.by, %.lr.ph ], [ %i.es, %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit64 ] ; 4 uses
  %i.cf = shl i32 %.078, %i.ag                    ; 4 uses
  %i.cg = add i32 %i.cc, %i.cf
  %i.ch = sub i32 %i.aj, %i.cg                    ; 2 uses
  %i.ci = load float, ptr %i.ay, align 4, !tbaa !79
  %i.cj = sitofp i32 %i.cf to float
  %i.ck = fsub float %i.ci, %i.cj
  store float %i.ck, ptr %i.az, align 4, !tbaa !79
  %i.cl = load i32, ptr %i.aw, align 4, !tbaa !77
  %i.cm = sub nsw i32 %i.cl, %i.cf
  %i.cn = call noundef i32 @llvm.smax.i32(i32 %i.cm, i32 0)
  store i32 %i.cn, ptr %i.ba, align 4, !tbaa !77
  %i.co = load i32, ptr %i.ax, align 4, !tbaa !78
  %i.cp = sub nsw i32 %i.co, %i.cf
  %i.cq = call noundef i32 @llvm.smin.i32(i32 %i.cp, i32 %i.ah)
  store i32 %i.cq, ptr %i.bb, align 4, !tbaa !78
  %i.cr = load i32, ptr %i.bc, align 4, !tbaa !80
  %i.cs = sub nsw i32 %i.cr, %i.ch
  store i32 %i.cs, ptr %i.bd, align 4, !tbaa !80
  %i.ct = load i32, ptr %i.be, align 4, !tbaa !81
  %i.cu = sub nsw i32 %i.ct, %i.ch
  store i32 %i.cu, ptr %i.bf, align 4, !tbaa !81
  %i.cv = add nsw i32 %.078, %i.cd
  %i.cw = load ptr, ptr %2, align 8, !tbaa !21
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = call noundef ptr %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.cv) ; 10 uses
  %.not61 = icmp eq ptr %i.cz, null
  br i1 %.not61, label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit64, label %bb.g

bb.g:                                             ; preds = %bb.f
  store float 0.000000e+00, ptr %i.bg, align 4, !tbaa !49
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !21
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = invoke noundef zeroext i1 %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.de = load ptr, ptr %i.bh, align 8, !tbaa !37 ; 2 uses
  %i.df = load ptr, ptr %i.cz, align 8, !tbaa !21
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  br i1 %i.dd, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.di = invoke noundef ptr %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dj = load i32, ptr %i.bi, align 4, !tbaa !25
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %i.dk
  %i.dm = load i32, ptr %i.bj, align 8, !tbaa !23
  %i.dn = load i32, ptr %i.bk, align 8, !tbaa !26
  invoke void @_ZN4Ptex4v2_422PtexTriangleKernelIter10applyConstEPfPvNS0_8DataTypeEi(ptr noundef nonnull align 4 dereferenceable(60) %3, ptr noundef %i.de, ptr noundef %i.dl, i32 noundef %i.dm, i32 noundef %i.dn)
          to label %bb.o unwind label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.j, %bb.m, %bb.n
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = load ptr, ptr %i.cz, align 8, !tbaa !21
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  invoke void %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #11
  unreachable

_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  resume { ptr, i32 } %i.do

bb.m:                                             ; preds = %bb.h
  %i.du = invoke noundef ptr %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %bb.n unwind label %bb.k

bb.n:                                             ; preds = %bb.m
  %i.dv = load i32, ptr %i.bi, align 4, !tbaa !25
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr %i.du, i64 %i.dw
  %i.dy = load i32, ptr %i.bj, align 8, !tbaa !23
  %i.dz = load i32, ptr %i.bk, align 8, !tbaa !26 ; 4 uses
  %i.ea = load i32, ptr %i.bl, align 4, !tbaa !22 ; 2 uses
  %.not.i62 = icmp eq i32 %i.dz, %i.ea
  %i.eb = select i1 %.not.i62, i32 0, i32 20
  %i.ec = icmp ult i32 %i.dz, 5
  %i.ed = shl nuw nsw i32 %i.dz, 2
  %i.ee = select i1 %i.ec, i32 %i.ed, i32 0
  %i.ef = add i32 %i.ee, %i.dy
  %i.eg = add i32 %i.ef, %i.eb
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr @_ZN4Ptex4v2_422PtexTriangleKernelIter14applyFunctionsE, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !82
  invoke void %i.ej(ptr noundef nonnull align 4 dereferenceable(60) %3, ptr noundef %i.de, ptr noundef %i.dx, i32 noundef %i.dz, i32 noundef %i.ea)
          to label %bb.o unwind label %bb.k, !inline_history !70

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.ek = load float, ptr %i.bg, align 4, !tbaa !49
  %i.el = load float, ptr %i.bm, align 8, !tbaa !36
  %i.em = fadd float %i.ek, %i.el
  store float %i.em, ptr %i.bm, align 8, !tbaa !36
  %i.en = load ptr, ptr %i.cz, align 8, !tbaa !21
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  invoke void %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit64 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #11
  unreachable

_ZN4Ptex4v2_47PtexPtrINS0_12PtexFaceDataEED2Ev.exit64: ; preds = %bb.f, %bb.o
  %i.es = add i32 %.078, 1
  %exitcond.not = icmp eq i32 %.078, %i.cb
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !71

bb.q:                                             ; preds = %bb.c
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !37
  %i.ev = load ptr, ptr %2, align 8, !tbaa !21
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = tail call noundef ptr %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !25
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %i.ey, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !23
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !26 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !22 ; 2 uses
  %.not.i65 = icmp eq i32 %i.fg, %i.fi
  %i.fj = select i1 %.not.i65, i32 0, i32 20
  %i.fk = icmp ult i32 %i.fg, 5
  %i.fl = shl nuw nsw i32 %i.fg, 2
  %i.fm = select i1 %i.fk, i32 %i.fl, i32 0
  %i.fn = add i32 %i.fm, %i.fe
  %i.fo = add i32 %i.fn, %i.fj
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr @_ZN4Ptex4v2_422PtexTriangleKernelIter14applyFunctionsE, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !82
  tail call void %i.fr(ptr noundef nonnull align 4 dereferenceable(60) %1, ptr noundef %i.eu, ptr noundef %i.fc, i32 noundef %i.fg, i32 noundef %i.fi), !inline_history !70
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !49
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.fv = load float, ptr %i.fu, align 8, !tbaa !36
  %i.fw = fadd float %i.ft, %i.fv
  store float %i.fw, ptr %i.fu, align 8, !tbaa !36
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge83, %bb.q, %bb.b
  ret void
}

declare void @_ZN4Ptex4v2_422PtexTriangleKernelIter10applyConstEPfPvNS0_8DataTypeEi(ptr noundef nonnull align 4 dereferenceable(60), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4Ptex4v2_410PtexFilterD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
end_hunk_1
