Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/compound?download=true
inline.NumInlined: 186
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 12
begin_hunk_0_@b3CompoundMoverCallback:bb.a
  %i.dk = extractelement <2 x float> %foldExtExtBinop103, i64 0
  %i.dl = fmul <2 x float> %i.dj, splat (float 2.000000e+00)
  %i.dm = fadd <2 x float> %.sroa.08.0.copyload, %i.dl
  %i.dn = fmul float %i.dk, 2.000000e+00
  %i.do = fadd float %.sroa.29.0.copyload, %i.dn
  store <2 x float> %i.dm, ptr %i.cq, align 4
  store float %i.do, ptr %.sroa.29.0..sroa_idx, align 4, !tbaa !19
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.dp, align 4 ; 5 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4 ; 4 uses
  %i.dq = fmul float %.sroa.22.0.copyload, %.sroa.011.0.vec.extract.i.i
  %i.dr = fmul <2 x float> %.sroa.01.0.copyload, %i.cj
  %i.ds = shufflevector <2 x float> %.sroa.01.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dt = insertelement <2 x float> %i.ds, float %.sroa.22.0.copyload, i64 1
  %i.du = fmul <2 x float> %i.dt, %.pre
  %i.dv = fsub <2 x float> %i.du, %i.dr
  %i.dw = shufflevector <2 x float> %.sroa.01.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dx = insertelement <2 x float> %i.dw, float %.sroa.22.0.copyload, i64 0
  %i.dy = fmul <2 x float> %i.dx, %i.ck
  %i.dz = fmul <2 x float> %.sroa.01.0.copyload, %.pre95 ; 2 uses
  %i.ea = extractelement <2 x float> %i.dz, i64 0
  %i.eb = fsub float %i.ea, %i.dq
  %i.ec = fadd <2 x float> %i.dy, %i.dv           ; 3 uses
  %i.ed = extractelement <2 x float> %i.dz, i64 1
  %i.ee = fadd float %i.ed, %i.eb                 ; 2 uses
  %i.ef = fmul <2 x float> %i.cj, %i.ec
  %i.eg = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.eh = insertelement <2 x float> %i.eg, float %i.ee, i64 0
  %i.ei = fmul <2 x float> %i.cl, %i.eh
  %i.ej = fsub <2 x float> %i.ef, %i.ei
  %i.ek = fmul float %.sroa.011.0.vec.extract.i.i, %i.ee
  %foldExtExtBinop108 = fmul <2 x float> %.pre, %i.ec
  %i.el = extractelement <2 x float> %foldExtExtBinop108, i64 1
  %i.em = fsub float %i.ek, %i.el
  %i.en = fmul <2 x float> %i.ej, splat (float 2.000000e+00)
  %i.eo = fadd <2 x float> %.sroa.01.0.copyload, %i.en
  %i.ep = fmul float %i.em, 2.000000e+00
  %i.eq = fadd float %.sroa.22.0.copyload, %i.ep
  %i.er = fadd <2 x float> %.sroa.0.0.copyload.pre, %i.eo
  %i.es = fadd float %.sroa.4.0.copyload.pre, %i.eq
  store <2 x float> %i.er, ptr %i.dp, align 4
  store float %i.es, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !19
  %i.et = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store i32 %i.a, ptr %i.et, align 4, !tbaa !239
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cq, i64 36 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !240
  %i.ew = call range(i32 -2147483648, 129) i32 @llvm.smin.i32(i32 %i.ev, i32 3)
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !20
  store i32 %i.ez, ptr %i.eu, align 4, !tbaa !240
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !235
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc noundef zeroext i1 @b3MaterialMap_rehash(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1) unnamed_addr #12 {
bb.a:
  %2 = alloca %struct.b3MaterialMap, align 8      ; 12 uses
  %3 = alloca %struct.b3MaterialMap_itr, align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store i64 0, ptr %2, align 8
  %i.b = add i64 %1, -1                           ; 3 uses
  store i64 %i.b, ptr %i.a, align 8, !tbaa !54
  %i.c = mul i64 %i.b, 18
  %i.d = add i64 %i.c, 26
  %i.e = tail call ptr @b3Alloc(i64 noundef %i.d) #19 ; 2 uses
  %.not45.not = icmp eq ptr %i.e, null
  br i1 %.not45.not, label %.loopexit, label %.lr.ph49, !prof !103

.lr.ph49:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph49, %bb.h
  %i.m = phi ptr [ %i.e, %.lr.ph49 ], [ %i.av, %bb.h ] ; 2 uses
  %i.n = phi i64 [ %i.b, %.lr.ph49 ], [ %i.as, %bb.h ]
  %.02446 = phi i64 [ %1, %.lr.ph49 ], [ %i.r, %bb.h ] ; 2 uses
  store ptr %i.m, ptr %i.f, align 8, !tbaa !61
  %i.o = shl i64 %i.n, 4
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 16       ; 3 uses
  store ptr %i.q, ptr %i.g, align 8, !tbaa !49
  %i.r = shl i64 %.02446, 1                       ; 3 uses
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.q, i8 0, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.02446
  store i16 1, ptr %i.t, align 2, !tbaa !105
  %.val42 = load i64, ptr %i.h, align 8, !tbaa !54 ; 2 uses
  %i.u = add i64 %.val42, 1
  %.not50 = icmp ult i64 %i.u, 2
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.val52 = phi i64 [ %.val, %bb.d ], [ %.val42, %bb.b ]
  %.043 = phi i64 [ %i.ad, %bb.d ], [ 0, %bb.b ]  ; 3 uses
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %.043
  %i.x = load i16, ptr %i.w, align 2, !tbaa !105
  %.not28 = icmp eq i16 %i.x, 0
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.043 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !106
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call fastcc void @b3MaterialMap_insert_raw(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %2, ptr noundef %i.aa, ptr noundef nonnull %i.ab, i1 noundef zeroext true)
  %.val34 = load ptr, ptr %i.k, align 8, !tbaa !51
  %.val35 = load ptr, ptr %i.l, align 8, !tbaa !52
  %i.ac = icmp eq ptr %.val34, %.val35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br i1 %i.ac, label %._crit_edge.loopexit, label %._crit_edge51

._crit_edge51:                                    ; preds = %bb.c
  %.val.pre = load i64, ptr %i.h, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge51, %.lr.ph
  %.val = phi i64 [ %.val.pre, %._crit_edge51 ], [ %.val52, %.lr.ph ] ; 3 uses
  %i.ad = add nuw i64 %.043, 1                    ; 2 uses
  %i.ae = icmp ne i64 %.val, 0
  %i.af = zext i1 %i.ae to i64
  %i.ag = add i64 %.val, %i.af
  %i.ah = icmp ult i64 %i.ad, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !241

._crit_edge.loopexit:                             ; preds = %bb.d, %bb.c
  %.pre = load i64, ptr %2, align 8, !tbaa !107
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ai = phi i64 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.b ]
  %i.aj = load i64, ptr %0, align 8, !tbaa !107
  %i.ak = icmp ult i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.e, !prof !53

bb.e:                                             ; preds = %._crit_edge
  %i.al = load i64, ptr %i.h, align 8, !tbaa !54  ; 2 uses
  %.not29 = icmp eq i64 %i.al, 0
  br i1 %.not29, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.an = mul i64 %i.al, 18
  %i.ao = add i64 %i.an, 26
  tail call void @b3Free(ptr noundef %i.am, i64 noundef %i.ao) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !110
  br label %.loopexit

bb.h:                                             ; preds = %._crit_edge
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !61
  %.val32 = load i64, ptr %i.a, align 8, !tbaa !54
  %i.aq = mul i64 %.val32, 18
  %i.ar = add i64 %i.aq, 26
  tail call void @b3Free(ptr noundef %i.ap, i64 noundef %i.ar) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.as = add i64 %i.r, -1                        ; 3 uses
  store i64 %i.as, ptr %i.a, align 8, !tbaa !54
  %i.at = mul i64 %i.as, 18
  %i.au = add i64 %i.at, 26
  %i.av = tail call ptr @b3Alloc(i64 noundef %i.au) #19 ; 2 uses
  %.not.not = icmp eq ptr %i.av, null
  br i1 %.not.not, label %.loopexit, label %bb.b, !prof !111

.loopexit:                                        ; preds = %bb.h, %bb.a, %bb.g
  %.not41 = phi i1 [ true, %bb.g ], [ false, %bb.a ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i1 %.not41
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @b3MaterialMap_insert_raw(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i1 noundef zeroext %4) unnamed_addr #13 {
bb.a:
  %.251.val.i.i = load i64, ptr %2, align 1
  %i.a = xor i64 %.251.val.i.i, -8378864009470890807
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val59.i.i = load i64, ptr %i.b, align 1
  %i.c = xor i64 %.val59.i.i, -3854733883544440663
  %i.d = zext i64 %i.a to i128
  %i.e = zext i64 %i.c to i128
  %i.f = mul nuw i128 %i.e, %i.d                  ; 2 uses
  %i.g = lshr i128 %i.f, 64
  %i.h = xor i128 %i.g, %i.f
  %i.i = trunc i128 %i.h to i64
  %i.j = getelementptr nuw i8, ptr %2, i64 16
  %.251.val.i.1.i = load i64, ptr %i.j, align 1
  %i.k = xor i64 %.251.val.i.1.i, -8378864009470890807
  %i.l = getelementptr nuw i8, ptr %2, i64 24
  %.val59.i.1.i = load i64, ptr %i.l, align 1     ; 2 uses
  %i.m = xor i64 %.val59.i.1.i, %i.i
  %i.n = zext i64 %i.k to i128
  %i.o = zext i64 %i.m to i128
  %i.p = mul nuw i128 %i.o, %i.n                  ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64
  %i.t = getelementptr i8, ptr %2, i64 32
  %.val57.i.i = load i64, ptr %i.t, align 1
  %i.u = xor i64 %.val59.i.1.i, -8378864009470890807
  %i.v = xor i64 %.val57.i.i, %i.s
  %i.w = zext i64 %i.u to i128
  %i.x = zext i64 %i.v to i128
  %i.y = mul nuw i128 %i.x, %i.w                  ; 2 uses
  %i.z = trunc i128 %i.y to i64
  %i.aa = lshr i128 %i.y, 64
  %i.ab = xor i64 %i.z, 3257665815644502157
  %i.ac = zext i64 %i.ab to i128
  %i.ad = xor i128 %i.aa, 10067880064238660809
  %i.ae = mul nuw i128 %i.ad, %i.ac               ; 2 uses
  %i.af = lshr i128 %i.ae, 64
  %i.ag = xor i128 %i.af, %i.ae                   ; 2 uses
  %i.ah = trunc i128 %i.ag to i64
  %i.ai = lshr i128 %i.ag, 48
  %i.aj = trunc i128 %i.ai to i16                 ; 2 uses
  %i.ak = and i16 %i.aj, -4096                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !54 ; 19 uses
  %i.an = and i64 %i.am, %i.ah                    ; 16 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !49 ; 19 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.an
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !105 ; 5 uses
  %i.as = and i16 %i.ar, 2048
  %.not = icmp eq i16 %i.as, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.at = load i64, ptr %1, align 8, !tbaa !107
  %i.au = add i64 %i.at, 1                        ; 2 uses
  %i.av = uitofp i64 %i.au to double
  %i.aw = icmp ne i64 %i.am, 0
  %i.ax = zext i1 %i.aw to i64
  %i.ay = add i64 %i.am, %i.ax
  %i.az = uitofp i64 %i.ay to double
  %i.ba = fmul nnan double %i.az, 9.000000e-01
  %i.bb = fcmp olt double %i.ba, %i.av
  br i1 %i.bb, label %b3MaterialMap_evict.exit, label %bb.c, !prof !53

bb.c:                                             ; preds = %bb.b
  %.not84 = icmp eq i16 %i.ar, 0
  br i1 %.not84, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !61 ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.an ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !106 ; 5 uses
  %.251.val.i.i.i = load i64, ptr %i.bf, align 1
  %i.bg = xor i64 %.251.val.i.i.i, -8378864009470890807
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.val59.i.i.i = load i64, ptr %i.bh, align 1
  %i.bi = xor i64 %.val59.i.i.i, -3854733883544440663
  %i.bj = zext i64 %i.bg to i128
  %i.bk = zext i64 %i.bi to i128
  %i.bl = mul nuw i128 %i.bk, %i.bj               ; 2 uses
  %i.bm = lshr i128 %i.bl, 64
  %i.bn = xor i128 %i.bm, %i.bl
  %i.bo = trunc i128 %i.bn to i64
  %i.bp = getelementptr nuw i8, ptr %i.bf, i64 16
  %.251.val.i.1.i.i = load i64, ptr %i.bp, align 1
  %i.bq = xor i64 %.251.val.i.1.i.i, -8378864009470890807
  %i.br = getelementptr nuw i8, ptr %i.bf, i64 24
  %.val59.i.1.i.i = load i64, ptr %i.br, align 1  ; 2 uses
  %i.bs = xor i64 %.val59.i.1.i.i, %i.bo
  %i.bt = zext i64 %i.bq to i128
  %i.bu = zext i64 %i.bs to i128
  %i.bv = mul nuw i128 %i.bu, %i.bt               ; 2 uses
  %i.bw = lshr i128 %i.bv, 64
  %i.bx = xor i128 %i.bw, %i.bv
  %i.by = trunc i128 %i.bx to i64
  %i.bz = getelementptr i8, ptr %i.bf, i64 32
  %.val57.i.i.i = load i64, ptr %i.bz, align 1
  %i.ca = xor i64 %.val59.i.1.i.i, -8378864009470890807
  %i.cb = xor i64 %.val57.i.i.i, %i.by
  %i.cc = zext i64 %i.ca to i128
  %i.cd = zext i64 %i.cb to i128
  %i.ce = mul nuw i128 %i.cd, %i.cc               ; 2 uses
  %i.cf = trunc i128 %i.ce to i64
  %i.cg = lshr i128 %i.ce, 64
  %i.ch = xor i64 %i.cf, 3257665815644502157
  %i.ci = zext i64 %i.ch to i128
  %i.cj = xor i128 %i.cg, 10067880064238660809
  %i.ck = mul nuw i128 %i.cj, %i.ci               ; 2 uses
  %i.cl = lshr i128 %i.ck, 64
  %i.cm = xor i128 %i.cl, %i.ck
  %i.cn = trunc i128 %i.cm to i64
  %i.co = and i64 %i.am, %i.cn                    ; 8 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.034.i = phi i64 [ %i.co, %bb.d ], [ %i.cx, %bb.e ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %.034.i
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !105 ; 2 uses
  %i.cr = and i16 %i.cq, 2047
  %i.cs = zext nneg i16 %i.cr to i64              ; 2 uses
  %i.ct = add nuw nsw i64 %i.cs, 1
  %i.cu = mul nuw nsw i64 %i.ct, %i.cs
  %i.cv = lshr i64 %i.cu, 1
  %i.cw = add i64 %i.cv, %i.co
  %i.cx = and i64 %i.cw, %i.am                    ; 2 uses
  %i.cy = icmp eq i64 %i.cx, %i.an
  br i1 %i.cy, label %bb.f, label %bb.e

bb.f:                                             ; preds = %bb.e
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %.034.i
  %i.da = and i16 %i.cq, -2048
  %i.db = and i16 %i.ar, 2047
  %i.dc = or disjoint i16 %i.da, %i.db
  store i16 %i.dc, ptr %i.cz, align 2, !tbaa !105
  %i.dd = add i64 %i.co, 1
  %i.de = and i64 %i.dd, %i.am                    ; 2 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !105
  %i.dh = icmp eq i16 %i.dg, 0
  br i1 %i.dh, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f, %.lr.ph.i.i.1
  %indvars.iv.next.i13 = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i.i.1 ], [ 2, %bb.f ] ; 5 uses
  %.011.i.i12 = phi i64 [ %i.do, %.lr.ph.i.i.1 ], [ 1, %bb.f ]
  %i.di = add i64 %.011.i.i12, %indvars.iv.next.i13 ; 2 uses
  %i.dj = add i64 %i.di, %i.co
  %i.dk = and i64 %i.dj, %i.am                    ; 2 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.dk
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !105
  %i.dn = icmp eq i16 %i.dm, 0
  br i1 %i.dn, label %.loopexit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader
  %.not.i.i = icmp eq i64 %indvars.iv.next.i13, 2046
  br i1 %.not.i.i, label %b3MaterialMap_evict.exit, label %.lr.ph.i.i.preheader.1, !prof !112

.lr.ph.i.i.preheader.1:                           ; preds = %.lr.ph.i.i
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.next.i13, 1 ; 2 uses
  %i.do = add i64 %i.di, %indvars.iv.next.i       ; 2 uses
  %i.dp = add i64 %i.do, %i.co
  %i.dq = and i64 %i.dp, %i.am                    ; 2 uses
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !105
  %i.dt = icmp eq i16 %i.ds, 0
  br i1 %i.dt, label %.loopexit.loopexit.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i.preheader.1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.next.i13, 2
  br label %.lr.ph.i.i.preheader

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i.i.preheader.1, %.lr.ph.i.i.preheader
  %indvars.iv.next.i13.lcssa = phi i64 [ %indvars.iv.next.i13, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i, %.lr.ph.i.i.preheader.1 ]
  %.lcssa14 = phi i64 [ %i.dk, %.lr.ph.i.i.preheader ], [ %i.dq, %.lr.ph.i.i.preheader.1 ]
  %i.du = trunc nuw nsw i64 %indvars.iv.next.i13.lcssa to i16
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.f
  %.1.ph.i = phi i64 [ %i.de, %bb.f ], [ %.lcssa14, %.loopexit.loopexit.i ] ; 2 uses
  %.0.ph.i = phi i16 [ 1, %bb.f ], [ %i.du, %.loopexit.loopexit.i ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.co
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !105
  %i.dx = and i16 %i.dw, 2047                     ; 2 uses
  %.not16.i.i = icmp ugt i16 %i.dx, %.0.ph.i
  br i1 %.not16.i.i, label %b3MaterialMap_evict.exit.thread, label %.lr.ph.i37.i

.lr.ph.i37.i:                                     ; preds = %.loopexit.i, %.lr.ph.i37.i
  %i.dy = phi i16 [ %i.eh, %.lr.ph.i37.i ], [ %i.dx, %.loopexit.i ]
  %i.dz = zext nneg i16 %i.dy to i64              ; 2 uses
  %i.ea = add nuw nsw i64 %i.dz, 1
  %i.eb = mul nuw nsw i64 %i.ea, %i.dz
  %i.ec = lshr i64 %i.eb, 1
  %i.ed = add i64 %i.ec, %i.co
  %i.ee = and i64 %i.ed, %i.am                    ; 2 uses
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.ee
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !105
  %i.eh = and i16 %i.eg, 2047                     ; 2 uses
  %.not.i38.i = icmp ugt i16 %i.eh, %.0.ph.i
  br i1 %.not.i38.i, label %b3MaterialMap_evict.exit.thread, label %.lr.ph.i37.i

b3MaterialMap_evict.exit.thread:                  ; preds = %.lr.ph.i37.i, %.loopexit.i
  %.010.lcssa.i.i = phi i64 [ %i.co, %.loopexit.i ], [ %i.ee, %.lr.ph.i37.i ]
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %.1.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 8 dereferenceable(16) %i.be, i64 16, i1 false), !tbaa.struct !247
  %i.ej = load ptr, ptr %i.ao, align 8, !tbaa !49 ; 4 uses
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %i.an
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !105
  %i.em = and i16 %i.el, -4096
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %.010.lcssa.i.i ; 3 uses
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !105
  %i.ep = and i16 %i.eo, 2047
  %i.eq = or disjoint i16 %i.ep, %i.em
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.ej, i64 %.1.ph.i
  store i16 %i.eq, ptr %i.er, align 2, !tbaa !105
  %i.es = load i16, ptr %i.en, align 2, !tbaa !105
  %i.et = and i16 %i.es, -2048
  %i.eu = or i16 %i.et, %.0.ph.i
  store i16 %i.eu, ptr %i.en, align 2, !tbaa !105
  %.pre127 = load i64, ptr %1, align 8, !tbaa !107
  %.pre128 = load i64, ptr %i.al, align 8, !tbaa !54
  %.pre129 = add i64 %.pre127, 1
  br label %bb.g

b3MaterialMap_evict.exit:                         ; preds = %.lr.ph.i.i, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false), !alias.scope !248
  br label %bb.n

bb.g:                                             ; preds = %b3MaterialMap_evict.exit.thread, %bb.c
  %.pre-phi = phi i64 [ %.pre129, %b3MaterialMap_evict.exit.thread ], [ %i.au, %bb.c ]
  %i.ev = phi i64 [ %.pre128, %b3MaterialMap_evict.exit.thread ], [ %i.am, %bb.c ]
  %i.ew = phi ptr [ %i.ej, %b3MaterialMap_evict.exit.thread ], [ %i.ap, %bb.c ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !61
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %i.an ; 3 uses
  store ptr %2, ptr %i.ez, align 8, !tbaa !106
  %i.fa = load i32, ptr %3, align 4, !tbaa !20
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i32 %i.fa, ptr %i.fb, align 8, !tbaa !58
  %i.fc = or i16 %i.aj, 4095
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %i.an ; 2 uses
  store i16 %i.fc, ptr %i.fd, align 2, !tbaa !105
  store i64 %.pre-phi, ptr %1, align 8, !tbaa !107
  store ptr %i.ez, ptr %0, align 8, !tbaa !56
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !51
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %i.ev
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 2
  store ptr %i.fh, ptr %i.ff, align 8, !tbaa !52
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.an, ptr %i.fi, align 8, !tbaa !113
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  br i1 %4, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.l
  %i.fk = phi i16 [ %.pre, %bb.l ], [ %i.ar, %.preheader ] ; 2 uses
  %.0 = phi i64 [ %i.gf, %bb.l ], [ %i.an, %.preheader ] ; 2 uses
  %i.fl = and i16 %i.fk, -4096
  %i.fm = icmp eq i16 %i.fl, %i.ak
  br i1 %i.fm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.fn = load ptr, ptr %i.fj, align 8, !tbaa !61
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.fn, i64 %.0 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !106 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %2
  br i1 %i.fq, label %.critedge, label %b3CompareMaterials.exit

b3CompareMaterials.exit:                          ; preds = %bb.j
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(40) %i.fp, ptr noundef nonnull readonly dereferenceable(40) %2, i64 40)
  %i.fr = icmp eq i32 %bcmp.i, 0
  br i1 %i.fr, label %.critedge, label %bb.k, !prof !249

.critedge:                                        ; preds = %bb.j, %b3CompareMaterials.exit
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %.0
  store ptr %i.fo, ptr %0, align 8, !tbaa !56
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !51
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.am
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  store ptr %i.fw, ptr %i.fu, align 8, !tbaa !52
end_hunk_0
