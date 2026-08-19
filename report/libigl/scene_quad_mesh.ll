inline.NumInlined: 379
inline.NumDeleted: 54
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6embree8QuadMesh6verifyEv:bb.a
.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load ptr, ptr %i.d, align 16             ; 5 uses
  %.idx = mul nuw nsw i64 %i.b, 56
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.h = load i64, ptr %i.g, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.03668, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.i, %i.f
  br i1 %.not, label %.preheader63, label %bb.c

.preheader63:                                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i32, ptr %i.j, align 16             ; 2 uses
  %i.l = zext i32 %i.k to i64
  %.not76 = icmp eq i32 %i.k, 0
  br i1 %.not76, label %.preheader.preheader, label %.lr.ph70

.preheader.preheader:                             ; preds = %bb.d, %.preheader63
  br label %.preheader

.lr.ph70:                                         ; preds = %.preheader63
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.r = load i64, ptr %i.q, align 8              ; 4 uses
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.03668 = phi ptr [ %i.e, %.lr.ph ], [ %i.i, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.03668, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %.not42 = icmp eq i64 %i.t, %i.h
  br i1 %.not42, label %bb.b, label %.thread

bb.d:                                             ; preds = %bb.h
  %i.u = add nuw nsw i64 %.03469, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.l
  br i1 %exitcond.not, label %.preheader.preheader, label %bb.e, !llvm.loop !26

bb.e:                                             ; preds = %.lr.ph70, %bb.d
  %.03469 = phi i64 [ 0, %.lr.ph70 ], [ %i.u, %bb.d ] ; 2 uses
  %i.v = mul i64 %i.p, %.03469
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.v ; 4 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = zext i32 %i.x to i64
  %.not43 = icmp ugt i64 %i.r, %i.y
  br i1 %.not43, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = zext i32 %i.aa to i64
  %.not44 = icmp ugt i64 %i.r, %i.ab
  br i1 %.not44, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = zext i32 %i.ad to i64
  %.not45 = icmp ugt i64 %i.r, %i.ae
  br i1 %.not45, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = zext i32 %i.ag to i64
  %.not46 = icmp ugt i64 %i.r, %i.ah
  br i1 %.not46, label %bb.d, label %.thread

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.03375 = phi ptr [ %i.ax, %._crit_edge ], [ %i.e, %.preheader.preheader ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.03375, i64 24
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %.not4871.not = icmp eq i64 %i.aj, 0
  br i1 %.not4871.not, label %._crit_edge, label %.lr.ph73

.lr.ph73:                                         ; preds = %.preheader
  %i.ak = load ptr, ptr %.03375, align 8, !noalias !27
  %i.al = getelementptr inbounds nuw i8, ptr %.03375, i64 16
  %i.am = load i64, ptr %i.al, align 8, !noalias !27
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.an = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond80.not = icmp eq i64 %i.an, %i.aj
  br i1 %exitcond80.not, label %._crit_edge, label %bb.j, !llvm.loop !30

bb.j:                                             ; preds = %.lr.ph73, %bb.i
  %.072 = phi i64 [ 0, %.lr.ph73 ], [ %i.an, %bb.i ] ; 2 uses
  %i.ao = mul i64 %i.am, %.072
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ao
  %i.aq = load <4 x float>, ptr %i.ap, align 1, !noalias !31 ; 2 uses
  %i.ar = fcmp ugt <4 x float> %i.aq, splat (float -1.844000e+18)
  %i.as = fcmp olt <4 x float> %i.aq, splat (float 1.844000e+18)
  %i.at = and <4 x i1> %i.ar, %i.as
  %i.au = bitcast <4 x i1> %i.at to i4
  %i.av = and i4 %i.au, 7
  %i.aw = icmp eq i4 %i.av, 7
  br i1 %i.aw, label %bb.i, label %.thread

._crit_edge:                                      ; preds = %bb.i, %.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %.03375, i64 56 ; 2 uses
  %.not47 = icmp eq ptr %i.ax, %i.f
  br i1 %.not47, label %.thread, label %.preheader

.thread:                                          ; preds = %bb.c, %bb.h, %bb.g, %bb.f, %bb.e, %._crit_edge, %bb.j, %bb.a
  %.7 = phi i1 [ false, %bb.h ], [ false, %bb.a ], [ false, %bb.j ], [ true, %._crit_edge ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.c ]
  ret i1 %.7
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6embree8QuadMesh11interpolateEPK23RTCInterpolateArguments(ptr noundef nonnull align 16 dereferenceable(264) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6embree8QuadMesh16interpolate_implILi4EEEvPK23RTCInterpolateArguments(ptr noundef nonnull align 16 dereferenceable(264) %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree8QuadMesh16interpolate_implILi4EEEvPK23RTCInterpolateArguments(ptr noundef nonnull align 16 dereferenceable(264) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.r = load i32, ptr %i.q, align 8              ; 3 uses
  %i.s = icmp eq i32 %i.b, 2
  %i.t = zext i32 %i.d to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.v = load ptr, ptr %i.u, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.x = load ptr, ptr %i.w, align 16
  %.062.in.v = select i1 %i.s, ptr %i.v, ptr %i.x
  %.062.in = getelementptr inbounds nuw [56 x i8], ptr %.062.in.v, i64 %i.t ; 2 uses
  %.061.in.in.in = getelementptr inbounds nuw i8, ptr %.062.in, i64 16
  %.061.in.in = load i64, ptr %.061.in.in.in, align 8
  %.062 = load ptr, ptr %.062.in, align 8         ; 4 uses
  %.061 = and i64 %.061.in.in, 4294967295         ; 4 uses
  %.not162 = icmp eq i32 %i.r, 0
  br i1 %.not162, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load float, ptr %i.y, align 8            ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ab = load float, ptr %i.aa, align 4          ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = insertelement <4 x i32> poison, i32 %i.r, i64 0
  %i.af = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ag = zext i32 %i.ad to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aj = fadd float %i.ab, %i.z
  %i.ak = fcmp ole float %i.aj, 1.000000e+00
  %i.al = select i1 %i.ak, i64 15, i64 0
  %i.am = getelementptr inbounds nuw [16 x i8], ptr @_ZN6embree16mm_lookupmask_psE, i64 %i.al
  %i.an = load <4 x i32>, ptr %i.am, align 16     ; 8 uses
  %i.ao = xor <4 x i32> %i.an, splat (i32 -1)     ; 7 uses
  %.not = icmp eq ptr %i.f, null
  %i.ap = insertelement <4 x float> poison, float %i.ab, i64 0
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ar = bitcast <4 x float> %i.aq to <4 x i32>
  %i.as = and <4 x i32> %i.an, %i.ar
  %i.at = fsub <4 x float> splat (float 1.000000e+00), %i.aq
  %i.au = bitcast <4 x float> %i.at to <4 x i32>
  %i.av = and <4 x i32> %i.ao, %i.au
  %i.aw = or <4 x i32> %i.as, %i.av
  %i.ax = bitcast <4 x i32> %i.aw to <4 x float>  ; 2 uses
  %i.ay = fsub <4 x float> splat (float 1.000000e+00), %i.ax
  %i.az = insertelement <4 x float> poison, float %i.z, i64 0
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bb = bitcast <4 x float> %i.ba to <4 x i32>
  %i.bc = and <4 x i32> %i.an, %i.bb
  %i.bd = fsub <4 x float> splat (float 1.000000e+00), %i.ba
  %i.be = bitcast <4 x float> %i.bd to <4 x i32>
  %i.bf = and <4 x i32> %i.ao, %i.be
  %i.bg = or <4 x i32> %i.bc, %i.bf
  %i.bh = bitcast <4 x i32> %i.bg to <4 x float>  ; 2 uses
  %i.bi = fsub <4 x float> %i.ay, %i.bh
  %.not67 = icmp eq ptr %i.h, null
  %.not68 = icmp eq ptr %i.l, null
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.0161 = phi i32 [ 0, %.lr.ph ], [ %3, %bb.h ]  ; 3 uses
  %i.bj = insertelement <4 x i32> poison, i32 %.0161, i64 0
  %i.bk = shufflevector <4 x i32> %i.bj, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bl = or disjoint <4 x i32> %i.bk, <i32 0, i32 1, i32 2, i32 3>
  %.not160 = icmp sgt <4 x i32> %i.af, %i.bl      ; 10 uses
  %2 = zext i32 %.0161 to i64                     ; 7 uses
  %i.bm = shl nuw nsw i64 %2, 2                   ; 4 uses
  %i.bn = load ptr, ptr %i.ah, align 8
  %i.bo = load i64, ptr %i.ai, align 8
  %i.bp = mul i64 %i.bo, %i.ag
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp ; 4 uses
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = zext i32 %i.br to i64
  %i.bt = mul nuw i64 %.061, %i.bs
  %i.bu = getelementptr i8, ptr %.062, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bm
  %i.bw = load <4 x i32>, ptr %i.bv, align 1, !noalias !34
  %i.bx = select <4 x i1> %.not160, <4 x i32> %i.bw, <4 x i32> zeroinitializer
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = zext i32 %i.bz to i64
  %i.cb = mul nuw i64 %.061, %i.ca
  %i.cc = getelementptr i8, ptr %.062, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 %i.bm
  %i.ce = load <4 x i32>, ptr %i.cd, align 1, !noalias !37
  %i.cf = select <4 x i1> %.not160, <4 x i32> %i.ce, <4 x i32> zeroinitializer ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = zext i32 %i.ch to i64
  %i.cj = mul nuw i64 %.061, %i.ci
  %i.ck = getelementptr i8, ptr %.062, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.bm
  %i.cm = load <4 x i32>, ptr %i.cl, align 1, !noalias !40
  %i.cn = select <4 x i1> %.not160, <4 x i32> %i.cm, <4 x i32> zeroinitializer
  %i.co = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = zext i32 %i.cp to i64
  %i.cr = mul nuw i64 %.061, %i.cq
  %i.cs = getelementptr i8, ptr %.062, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.bm
  %i.cu = load <4 x i32>, ptr %i.ct, align 1, !noalias !43
  %i.cv = select <4 x i1> %.not160, <4 x i32> %i.cu, <4 x i32> zeroinitializer ; 2 uses
  %i.cw = and <4 x i32> %i.an, %i.bx
  %i.cx = and <4 x i32> %i.cn, %i.ao
  %i.cy = or <4 x i32> %i.cw, %i.cx
  %i.cz = bitcast <4 x i32> %i.cy to <4 x float>  ; 5 uses
  %i.da = and <4 x i32> %i.an, %i.cf
  %i.db = and <4 x i32> %i.cv, %i.ao
  %i.dc = or <4 x i32> %i.da, %i.db
  %i.dd = bitcast <4 x i32> %i.dc to <4 x float>  ; 3 uses
  %i.de = and <4 x i32> %i.an, %i.cv
  %i.df = and <4 x i32> %i.cf, %i.ao
  %i.dg = or <4 x i32> %i.de, %i.df
  %i.dh = bitcast <4 x i32> %i.dg to <4 x float>  ; 3 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %2 ; 2 uses
  %i.dj = fmul <4 x float> %i.bh, %i.dh
  %i.dk = fmul <4 x float> %i.ax, %i.dd
  %i.dl = fadd <4 x float> %i.dk, %i.dj
  %i.dm = fmul <4 x float> %i.bi, %i.cz
  %i.dn = fadd <4 x float> %i.dl, %i.dm
  %i.do = load <4 x float>, ptr %i.di, align 1, !noalias !46
  %i.dp = select <4 x i1> %.not160, <4 x float> %i.dn, <4 x float> %i.do
  store <4 x float> %i.dp, ptr %i.di, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %.not67, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %2 ; 2 uses
  %i.dr = fsub <4 x float> %i.dd, %i.cz
  %i.ds = fsub <4 x float> %i.cz, %i.dd
  %i.dt = bitcast <4 x float> %i.dr to <4 x i32>
  %i.du = and <4 x i32> %i.an, %i.dt
  %i.dv = bitcast <4 x float> %i.ds to <4 x i32>
  %i.dw = and <4 x i32> %i.dv, %i.ao
  %i.dx = or <4 x i32> %i.du, %i.dw
  %i.dy = load <4 x i32>, ptr %i.dq, align 1, !noalias !49
  %i.dz = select <4 x i1> %.not160, <4 x i32> %i.dx, <4 x i32> %i.dy
  store <4 x i32> %i.dz, ptr %i.dq, align 1
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %2 ; 2 uses
  %i.eb = fsub <4 x float> %i.dh, %i.cz
  %i.ec = fsub <4 x float> %i.cz, %i.dh
  %i.ed = bitcast <4 x float> %i.eb to <4 x i32>
  %i.ee = and <4 x i32> %i.an, %i.ed
  %i.ef = bitcast <4 x float> %i.ec to <4 x i32>
  %i.eg = and <4 x i32> %i.ef, %i.ao
  %i.eh = or <4 x i32> %i.ee, %i.eg
  %i.ei = load <4 x i32>, ptr %i.ea, align 1, !noalias !52
  %i.ej = select <4 x i1> %.not160, <4 x i32> %i.eh, <4 x i32> %i.ei
  store <4 x i32> %i.ej, ptr %i.ea, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %.not68, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %2 ; 2 uses
  %i.el = load <4 x float>, ptr %i.ek, align 1, !noalias !55
  %i.em = select <4 x i1> %.not160, <4 x float> zeroinitializer, <4 x float> %i.el
  store <4 x float> %i.em, ptr %i.ek, align 1
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %2 ; 2 uses
  %i.eo = load <4 x float>, ptr %i.en, align 1, !noalias !58
  %i.ep = select <4 x i1> %.not160, <4 x float> zeroinitializer, <4 x float> %i.eo
  store <4 x float> %i.ep, ptr %i.en, align 1
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %2 ; 2 uses
  %i.er = load <4 x float>, ptr %i.eq, align 1, !noalias !61
  %i.es = select <4 x i1> %.not160, <4 x float> zeroinitializer, <4 x float> %i.er
  store <4 x float> %i.es, ptr %i.eq, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %3 = add i32 %.0161, 4                          ; 2 uses
  %i.et = icmp ult i32 %3, %i.r
  br i1 %i.et, label %bb.b, label %._crit_edge, !llvm.loop !64
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 272, 240518168801) i64 @_ZNK6embree8QuadMesh29getGeometryDataDeviceByteSizeEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(264) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4
  %i.c = zext i32 %i.b to i64
  %i.d = mul nuw nsw i64 %i.c, 56
  %i.e = add nuw nsw i64 %i.d, 280
  %i.f = and i64 %i.e, 549755813872
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK6embree8QuadMesh29convertToDeviceRepresentationEmPcS1_(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(264) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %i.a, ptr noundef nonnull align 16 dereferenceable(272) %0, i64 noundef 272, i1 noundef false) #22
  %i.b = add i64 %1, 272                          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store ptr %i.f, ptr %i.g, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.017 = phi i64 [ 0, %.lr.ph ], [ %i.l, %bb.b ] ; 2 uses
  %.01516 = phi i64 [ %i.b, %.lr.ph ], [ %i.k, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.01516
  %i.i = load ptr, ptr %i.e, align 16
  %i.j = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %.017
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.h, ptr noundef nonnull align 1 dereferenceable(56) %i.j, i64 noundef 56, i1 noundef false) #22
  %i.k = add i64 %.01516, 56
  %i.l = add nuw nsw i64 %.017, 1                 ; 2 uses
  %i.m = load i32, ptr %i.c, align 4
  %i.n = zext i32 %i.m to i64
  %i.o = icmp samesign ult i64 %i.l, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge, !llvm.loop !65
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6embree4sse214createQuadMeshEPNS_6DeviceE(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #25 ; 4 uses
  invoke void @_ZN6embree8QuadMeshC2EPNS_6DeviceE(ptr noundef nonnull align 16 dereferenceable(264) %i.a, ptr noundef %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 512) (i8, ptr @_ZTVN6embree4sse211QuadMeshISAE, i64 16), ptr %i.a, align 16
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #24
  resume { ptr, i32 } %i.b
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree8QuadMeshD2Ev(ptr noundef nonnull align 16 dead_on_return(264) dereferenceable(264) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 512) (i8, ptr @_ZTVN6embree8QuadMeshE, i64 16), ptr %0, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.c = load i64, ptr %i.b, align 16             ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN6embree13RawBufferViewD2Ev.exit, %bb.a
  %i.e = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i3 = icmp eq ptr %i.e, null
  br i1 %.not.i3, label %_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.g = load ptr, ptr %i.f, align 16
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(1384) %i.e, ptr noundef %i.g)
          to label %_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEED2Ev.exit unwind label %bb.f, !inline_history !7

bb.c:                                             ; preds = %.lr.ph, %_ZN6embree13RawBufferViewD2Ev.exit
  %i.k = phi i64 [ %i.c, %.lr.ph ], [ %i.u, %_ZN6embree13RawBufferViewD2Ev.exit ]
  %.0.i114 = phi i64 [ 0, %.lr.ph ], [ %i.v, %_ZN6embree13RawBufferViewD2Ev.exit ] ; 2 uses
  %i.l = load ptr, ptr %i.d, align 16
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %.0.i114
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN6embree13RawBufferViewD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge unwind label %bb.e

._ZN6embree13RawBufferViewD2Ev.exit_crit_edge:    ; preds = %bb.d
  %.pre = load i64, ptr %i.b, align 16
  br label %_ZN6embree13RawBufferViewD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #21
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit:               ; preds = %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge, %bb.c
  %i.u = phi i64 [ %.pre, %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge ], [ %i.k, %bb.c ] ; 2 uses
  %i.v = add nuw i64 %.0.i114, 1                  ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  br i1 %i.w, label %bb.c, label %._crit_edge, !llvm.loop !8

bb.f:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #21
  unreachable

_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEED2Ev.exit: ; preds = %bb.b, %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.ab = load i64, ptr %i.aa, align 16           ; 2 uses
  %.not18 = icmp eq i64 %i.ab, 0
  br i1 %.not18, label %._crit_edge17, label %.lr.ph16

.lr.ph16:                                         ; preds = %_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.h

._crit_edge17:                                    ; preds = %_ZN6embree13RawBufferViewD2Ev.exit6, %_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEED2Ev.exit
  %i.ad = load ptr, ptr %i.z, align 8             ; 3 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge17
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.af = load ptr, ptr %i.ae, align 16
  %i.ag = load ptr, ptr %i.ad, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(1384) %i.ad, ptr noundef %i.af)
          to label %_ZN6embree8vector_tINS_10BufferViewINS_6Vec3faEEENS_6Device9allocatorIS3_Lm8EEEED2Ev.exit unwind label %bb.k, !inline_history !9

bb.h:                                             ; preds = %.lr.ph16, %_ZN6embree13RawBufferViewD2Ev.exit6
  %i.aj = phi i64 [ %i.ab, %.lr.ph16 ], [ %i.at, %_ZN6embree13RawBufferViewD2Ev.exit6 ]
  %.0.i15 = phi i64 [ 0, %.lr.ph16 ], [ %i.au, %_ZN6embree13RawBufferViewD2Ev.exit6 ] ; 2 uses
  %i.ak = load ptr, ptr %i.ac, align 16
  %i.al = getelementptr inbounds nuw [56 x i8], ptr %i.ak, i64 %.0.i15
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.an, null
  br i1 %.not.i.i5, label %_ZN6embree13RawBufferViewD2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %._ZN6embree13RawBufferViewD2Ev.exit6_crit_edge unwind label %bb.j

._ZN6embree13RawBufferViewD2Ev.exit6_crit_edge:   ; preds = %bb.i
  %.pre19 = load i64, ptr %i.aa, align 16
  br label %_ZN6embree13RawBufferViewD2Ev.exit6

bb.j:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #21
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit6:              ; preds = %._ZN6embree13RawBufferViewD2Ev.exit6_crit_edge, %bb.h
  %i.at = phi i64 [ %.pre19, %._ZN6embree13RawBufferViewD2Ev.exit6_crit_edge ], [ %i.aj, %bb.h ] ; 2 uses
end_hunk_0
