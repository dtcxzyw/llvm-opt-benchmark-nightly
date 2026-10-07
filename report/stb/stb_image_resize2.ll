Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image_resize2?download=true
inline.NumInlined: 166
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@stbir__encode_half_float_linear:bb.a
  %i.ax = select i1 %i.aw, i32 32256, i32 31744
  br label %stbir__float_to_half.exit

bb.e:                                             ; preds = %.lr.ph
  %i.ay = icmp samesign ult i32 %i.au, 947912704
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.az = fadd float %i.at, 5.000000e-01
  %i.ba = bitcast float %i.az to i32
  br label %stbir__float_to_half.exit

bb.g:                                             ; preds = %bb.e
  %i.bb = lshr i32 %i.au, 13
  %i.bc = and i32 %i.bb, 1
  %i.bd = add nuw nsw i32 %i.au, 134221823
  %i.be = add nuw nsw i32 %i.bd, %i.bc
  %i.bf = lshr i32 %i.be, 13
  br label %stbir__float_to_half.exit

stbir__float_to_half.exit:                        ; preds = %bb.d, %bb.f, %bb.g
  %.sroa.016.0.i = phi i32 [ %i.ax, %bb.d ], [ %i.ba, %bb.f ], [ %i.bf, %bb.g ]
  %i.bg = bitcast float %i.as to i32
  %i.bh = lshr i32 %i.bg, 16
  %i.bi = and i32 %i.bh, 32768
  %i.bj = or i32 %.sroa.016.0.i, %i.bi
  %i.bk = trunc i32 %i.bj to i16
  store i16 %i.bk, ptr %.pn62, align 2, !tbaa !24
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn62, i64 2
  %i.bm = getelementptr inbounds nuw i8, ptr %.163, i64 4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !58 ; 2 uses
  %i.bo = tail call float @llvm.fabs.f32(float %i.bn) ; 2 uses
  %i.bp = bitcast float %i.bo to i32              ; 5 uses
  %i.bq = icmp samesign ugt i32 %i.bp, 1199570943
  br i1 %i.bq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %stbir__float_to_half.exit
  %i.br = icmp samesign ugt i32 %i.bp, 2139095040
  %i.bs = select i1 %i.br, i32 32256, i32 31744
  br label %stbir__float_to_half.exit51

bb.i:                                             ; preds = %stbir__float_to_half.exit
  %i.bt = icmp samesign ult i32 %i.bp, 947912704
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bu = fadd float %i.bo, 5.000000e-01
  %i.bv = bitcast float %i.bu to i32
  br label %stbir__float_to_half.exit51

bb.k:                                             ; preds = %bb.i
  %i.bw = lshr i32 %i.bp, 13
  %i.bx = and i32 %i.bw, 1
  %i.by = add nuw nsw i32 %i.bp, 134221823
  %i.bz = add nuw nsw i32 %i.by, %i.bx
  %i.ca = lshr i32 %i.bz, 13
  br label %stbir__float_to_half.exit51

stbir__float_to_half.exit51:                      ; preds = %bb.h, %bb.j, %bb.k
  %.sroa.016.0.i50 = phi i32 [ %i.bs, %bb.h ], [ %i.bv, %bb.j ], [ %i.ca, %bb.k ]
  %i.cb = bitcast float %i.bn to i32
  %i.cc = lshr i32 %i.cb, 16
  %i.cd = and i32 %i.cc, 32768
  %i.ce = or i32 %.sroa.016.0.i50, %i.cd
  %i.cf = trunc i32 %i.ce to i16
  store i16 %i.cf, ptr %i.bl, align 2, !tbaa !24
  %i.cg = getelementptr inbounds nuw i8, ptr %.pn62, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %.163, i64 8
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !58 ; 2 uses
  %i.cj = tail call float @llvm.fabs.f32(float %i.ci) ; 2 uses
  %i.ck = bitcast float %i.cj to i32              ; 5 uses
  %i.cl = icmp samesign ugt i32 %i.ck, 1199570943
  br i1 %i.cl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %stbir__float_to_half.exit51
  %i.cm = icmp samesign ugt i32 %i.ck, 2139095040
  %i.cn = select i1 %i.cm, i32 32256, i32 31744
  br label %stbir__float_to_half.exit53

bb.m:                                             ; preds = %stbir__float_to_half.exit51
  %i.co = icmp samesign ult i32 %i.ck, 947912704
  br i1 %i.co, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cp = fadd float %i.cj, 5.000000e-01
  %i.cq = bitcast float %i.cp to i32
  br label %stbir__float_to_half.exit53

bb.o:                                             ; preds = %bb.m
  %i.cr = lshr i32 %i.ck, 13
  %i.cs = and i32 %i.cr, 1
  %i.ct = add nuw nsw i32 %i.ck, 134221823
  %i.cu = add nuw nsw i32 %i.ct, %i.cs
  %i.cv = lshr i32 %i.cu, 13
  br label %stbir__float_to_half.exit53

stbir__float_to_half.exit53:                      ; preds = %bb.l, %bb.n, %bb.o
  %.sroa.016.0.i52 = phi i32 [ %i.cn, %bb.l ], [ %i.cq, %bb.n ], [ %i.cv, %bb.o ]
  %i.cw = bitcast float %i.ci to i32
  %i.cx = lshr i32 %i.cw, 16
  %i.cy = and i32 %i.cx, 32768
  %i.cz = or i32 %.sroa.016.0.i52, %i.cy
  %i.da = trunc i32 %i.cz to i16
  store i16 %i.da, ptr %i.cg, align 2, !tbaa !24
  %i.db = getelementptr inbounds nuw i8, ptr %.pn62, i64 6
  %i.dc = getelementptr inbounds nuw i8, ptr %.163, i64 12
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !58 ; 2 uses
  %i.de = tail call float @llvm.fabs.f32(float %i.dd) ; 2 uses
  %i.df = bitcast float %i.de to i32              ; 5 uses
  %i.dg = icmp samesign ugt i32 %i.df, 1199570943
  br i1 %i.dg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %stbir__float_to_half.exit53
  %i.dh = icmp samesign ugt i32 %i.df, 2139095040
  %i.di = select i1 %i.dh, i32 32256, i32 31744
  br label %stbir__float_to_half.exit55

bb.q:                                             ; preds = %stbir__float_to_half.exit53
  %i.dj = icmp samesign ult i32 %i.df, 947912704
  br i1 %i.dj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dk = fadd float %i.de, 5.000000e-01
  %i.dl = bitcast float %i.dk to i32
  br label %stbir__float_to_half.exit55

bb.s:                                             ; preds = %bb.q
  %i.dm = lshr i32 %i.df, 13
  %i.dn = and i32 %i.dm, 1
  %i.do = add nuw nsw i32 %i.df, 134221823
  %i.dp = add nuw nsw i32 %i.do, %i.dn
  %i.dq = lshr i32 %i.dp, 13
  br label %stbir__float_to_half.exit55

stbir__float_to_half.exit55:                      ; preds = %bb.p, %bb.r, %bb.s
  %.sroa.016.0.i54 = phi i32 [ %i.di, %bb.p ], [ %i.dl, %bb.r ], [ %i.dq, %bb.s ]
  %i.dr = bitcast float %i.dd to i32
  %i.ds = lshr i32 %i.dr, 16
  %i.dt = and i32 %i.ds, 32768
  %i.du = or i32 %.sroa.016.0.i54, %i.dt
  %i.dv = trunc i32 %i.du to i16
  store i16 %i.dv, ptr %i.db, align 2, !tbaa !24
  %i.dw = getelementptr inbounds nuw i8, ptr %.163, i64 16 ; 2 uses
  %.144 = getelementptr inbounds nuw i8, ptr %.14464, i64 8 ; 2 uses
  %.not = icmp ugt ptr %.144, %i.b
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !340

.lr.ph68:                                         ; preds = %.preheader, %stbir__float_to_half.exit57
  %.267 = phi ptr [ %i.er, %stbir__float_to_half.exit57 ], [ %.1.lcssa, %.preheader ] ; 2 uses
  %.24566 = phi ptr [ %i.eq, %stbir__float_to_half.exit57 ], [ %.pn.lcssa, %.preheader ] ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.24566) #24, !srcloc !344
  %i.dx = load float, ptr %.267, align 4, !tbaa !58 ; 2 uses
  %i.dy = tail call float @llvm.fabs.f32(float %i.dx) ; 2 uses
  %i.dz = bitcast float %i.dy to i32              ; 5 uses
  %i.ea = icmp samesign ugt i32 %i.dz, 1199570943
  br i1 %i.ea, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph68
  %i.eb = icmp samesign ugt i32 %i.dz, 2139095040
  %i.ec = select i1 %i.eb, i32 32256, i32 31744
  br label %stbir__float_to_half.exit57

bb.u:                                             ; preds = %.lr.ph68
  %i.ed = icmp samesign ult i32 %i.dz, 947912704
  br i1 %i.ed, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ee = fadd float %i.dy, 5.000000e-01
  %i.ef = bitcast float %i.ee to i32
  br label %stbir__float_to_half.exit57

bb.w:                                             ; preds = %bb.u
  %i.eg = lshr i32 %i.dz, 13
  %i.eh = and i32 %i.eg, 1
  %i.ei = add nuw nsw i32 %i.dz, 134221823
  %i.ej = add nuw nsw i32 %i.ei, %i.eh
  %i.ek = lshr i32 %i.ej, 13
  br label %stbir__float_to_half.exit57

stbir__float_to_half.exit57:                      ; preds = %bb.t, %bb.v, %bb.w
  %.sroa.016.0.i56 = phi i32 [ %i.ec, %bb.t ], [ %i.ef, %bb.v ], [ %i.ek, %bb.w ]
  %i.el = bitcast float %i.dx to i32
  %i.em = lshr i32 %i.el, 16
  %i.en = and i32 %i.em, 32768
  %i.eo = or i32 %.sroa.016.0.i56, %i.en
  %i.ep = trunc i32 %i.eo to i16
  store i16 %i.ep, ptr %.24566, align 2, !tbaa !24
  %i.eq = getelementptr inbounds nuw i8, ptr %.24566, i64 2 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.267, i64 4
  %i.es = icmp ult ptr %i.eq, %i.b
  br i1 %i.es, label %.lr.ph68, label %.loopexit, !llvm.loop !341

.loopexit:                                        ; preds = %stbir__float_to_half.exit57, %bb.c, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @stbir__decode_float_linear(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %.not = icmp eq ptr %0, %2
  %.pre = sext i32 %1 to i64                      ; 2 uses
  br i1 %.not, label %stbir_simd_memcpy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = shl nsw i64 %.pre, 2                     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a ; 5 uses
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d                       ; 5 uses
  %i.f = icmp ult i64 %i.a, 64
  br i1 %i.f, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = icmp samesign ult i64 %i.a, 16
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %stbir_simd_memcpy.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.0.i = phi ptr [ %i.j, %.preheader.i ], [ %0, %bb.d ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0.i) #24, !srcloc !23
  %i.h = getelementptr inbounds i8, ptr %.0.i, i64 %i.e
  %i.i = load i8, ptr %i.h, align 1, !tbaa !24
  store i8 %i.i, ptr %.0.i, align 1, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %i.k = icmp ult ptr %i.j, %i.b
  br i1 %i.k, label %.preheader.i, label %stbir_simd_memcpy.exit, !llvm.loop !0

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.e
  %i.m = load <4 x float>, ptr %i.l, align 1, !tbaa !24
  store <4 x float> %i.m, ptr %0, align 1, !tbaa !24
  %i.n = and i64 %i.d, -16
  %i.o = add i64 %i.n, 16
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.1.i = phi ptr [ %i.p, %bb.e ], [ %i.v, %bb.h ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.1.i) #24, !srcloc !28
  %i.r = icmp ugt ptr %.1.i, %i.q
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = icmp eq ptr %.1.i, %i.b
  br i1 %i.s, label %stbir_simd_memcpy.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2.i = phi ptr [ %.1.i, %bb.f ], [ %i.q, %bb.g ] ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %.2.i, i64 %i.e
  %i.u = load <4 x float>, ptr %i.t, align 1, !tbaa !24
  store <4 x float> %i.u, ptr %.2.i, align 1, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %.2.i, i64 16
  br label %bb.f, !llvm.loop !1

bb.i:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds i8, ptr %0, i64 %i.e ; 4 uses
  %i.x = load <4 x float>, ptr %i.w, align 1, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load <4 x float>, ptr %i.y, align 1, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ab = load <4 x float>, ptr %i.aa, align 1, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ad = load <4 x float>, ptr %i.ac, align 1, !tbaa !24
  store <4 x float> %i.x, ptr %0, align 1, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %i.z, ptr %i.ae, align 1, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %i.ab, ptr %i.af, align 1, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %i.ad, ptr %i.ag, align 1, !tbaa !24
  %i.ah = and i64 %i.d, -64
  %i.ai = add i64 %i.ah, 64
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds i8, ptr %i.b, i64 -64 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.3.i = phi ptr [ %i.aj, %bb.i ], [ %i.ay, %bb.l ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.3.i) #24, !srcloc !29
  %i.al = icmp ugt ptr %.3.i, %i.ak
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = icmp eq ptr %.3.i, %i.b
  br i1 %i.am, label %stbir_simd_memcpy.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.4.i = phi ptr [ %.3.i, %bb.j ], [ %i.ak, %bb.k ] ; 6 uses
  %i.an = getelementptr inbounds i8, ptr %.4.i, i64 %i.e ; 4 uses
  %i.ao = load <4 x float>, ptr %i.an, align 1, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.aq = load <4 x float>, ptr %i.ap, align 1, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.as = load <4 x float>, ptr %i.ar, align 1, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.au = load <4 x float>, ptr %i.at, align 1, !tbaa !24
  store <4 x float> %i.ao, ptr %.4.i, align 1, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %.4.i, i64 16
  store <4 x float> %i.aq, ptr %i.av, align 1, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %.4.i, i64 32
  store <4 x float> %i.as, ptr %i.aw, align 1, !tbaa !24
  %i.ax = getelementptr inbounds nuw i8, ptr %.4.i, i64 48
  store <4 x float> %i.au, ptr %i.ax, align 1, !tbaa !24
  %i.ay = getelementptr inbounds nuw i8, ptr %.4.i, i64 64
  br label %bb.j, !llvm.loop !2

stbir_simd_memcpy.exit:                           ; preds = %bb.k, %bb.g, %.preheader.i, %bb.a, %bb.d
  %i.az = getelementptr inbounds [4 x i8], ptr %0, i64 %.pre
  ret ptr %i.az
}

; Function Attrs: nounwind uwtable
define void @stbir__encode_float_linear(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %.not = icmp eq ptr %0, %2
  br i1 %.not, label %stbir_simd_memcpy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sext i32 %1 to i64
  %i.b = shl nsw i64 %i.a, 2                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 5 uses
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = icmp ult i64 %i.b, 64
  br i1 %i.g, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ult i64 %i.b, 16
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %stbir_simd_memcpy.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.0.i = phi ptr [ %i.k, %.preheader.i ], [ %0, %bb.d ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.0.i) #24, !srcloc !23
  %i.i = getelementptr inbounds i8, ptr %.0.i, i64 %i.f
  %i.j = load i8, ptr %i.i, align 1, !tbaa !24
  store i8 %i.j, ptr %.0.i, align 1, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 1 ; 2 uses
  %i.l = icmp ult ptr %i.k, %i.c
  br i1 %i.l, label %.preheader.i, label %stbir_simd_memcpy.exit, !llvm.loop !0

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.f
  %i.n = load <4 x float>, ptr %i.m, align 1, !tbaa !24
  store <4 x float> %i.n, ptr %0, align 1, !tbaa !24
  %i.o = and i64 %i.e, -16
  %i.p = add i64 %i.o, 16
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.1.i = phi ptr [ %i.q, %bb.e ], [ %i.w, %bb.h ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.1.i) #24, !srcloc !28
  %i.s = icmp ugt ptr %.1.i, %i.r
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq ptr %.1.i, %i.c
  br i1 %i.t, label %stbir_simd_memcpy.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2.i = phi ptr [ %.1.i, %bb.f ], [ %i.r, %bb.g ] ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.2.i, i64 %i.f
  %i.v = load <4 x float>, ptr %i.u, align 1, !tbaa !24
  store <4 x float> %i.v, ptr %.2.i, align 1, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %.2.i, i64 16
  br label %bb.f, !llvm.loop !1

bb.i:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.f ; 4 uses
  %i.y = load <4 x float>, ptr %i.x, align 1, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = load <4 x float>, ptr %i.z, align 1, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ac = load <4 x float>, ptr %i.ab, align 1, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ae = load <4 x float>, ptr %i.ad, align 1, !tbaa !24
  store <4 x float> %i.y, ptr %0, align 1, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %i.aa, ptr %i.af, align 1, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %i.ac, ptr %i.ag, align 1, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %i.ae, ptr %i.ah, align 1, !tbaa !24
  %i.ai = and i64 %i.e, -64
  %i.aj = add i64 %i.ai, 64
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds i8, ptr %i.c, i64 -64 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.3.i = phi ptr [ %i.ak, %bb.i ], [ %i.az, %bb.l ] ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.3.i) #24, !srcloc !29
  %i.am = icmp ugt ptr %.3.i, %i.al
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = icmp eq ptr %.3.i, %i.c
  br i1 %i.an, label %stbir_simd_memcpy.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.4.i = phi ptr [ %.3.i, %bb.j ], [ %i.al, %bb.k ] ; 6 uses
  %i.ao = getelementptr inbounds i8, ptr %.4.i, i64 %i.f ; 4 uses
  %i.ap = load <4 x float>, ptr %i.ao, align 1, !tbaa !24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = load <4 x float>, ptr %i.aq, align 1, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.at = load <4 x float>, ptr %i.as, align 1, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.av = load <4 x float>, ptr %i.au, align 1, !tbaa !24
  store <4 x float> %i.ap, ptr %.4.i, align 1, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %.4.i, i64 16
  store <4 x float> %i.ar, ptr %i.aw, align 1, !tbaa !24
  %i.ax = getelementptr inbounds nuw i8, ptr %.4.i, i64 32
  store <4 x float> %i.at, ptr %i.ax, align 1, !tbaa !24
  %i.ay = getelementptr inbounds nuw i8, ptr %.4.i, i64 48
  store <4 x float> %i.av, ptr %i.ay, align 1, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %.4.i, i64 64
  br label %bb.j, !llvm.loop !2

stbir_simd_memcpy.exit:                           ; preds = %bb.k, %bb.g, %.preheader.i, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @stbir__decode_uint8_linear_scaled_BGRA(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %.idx = shl nsw i64 %i.a, 2
  %i.b = getelementptr inbounds i8, ptr %0, i64 %.idx ; 4 uses
  %i.c = getelementptr inbounds i8, ptr %2, i64 %i.a
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.e = icmp sgt i32 %1, 15
  br i1 %i.e, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not82 = icmp slt i32 %1, 4
  br i1 %.not82, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.27281 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -64 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.070 = phi ptr [ %0, %bb.b ], [ %.171, %bb.c ] ; 6 uses
  %.069 = phi ptr [ %2, %bb.b ], [ %.1, %bb.c ]   ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.070) #24, !srcloc !346
  %i.g = load <16 x i8>, ptr %.069, align 1, !tbaa !24 ; 2 uses
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.i = shufflevector <16 x i8> %i.g, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.j = bitcast <16 x i8> %i.h to <8 x i16>      ; 2 uses
  %i.k = shufflevector <8 x i16> %i.j, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.l = shufflevector <8 x i16> %i.j, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.m = bitcast <16 x i8> %i.i to <8 x i16>      ; 2 uses
  %i.n = shufflevector <8 x i16> %i.m, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.o = shufflevector <8 x i16> %i.m, <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.p = bitcast <8 x i16> %i.k to <4 x i32>
  %i.q = uitofp nneg <4 x i32> %i.p to <4 x float>
  %i.r = bitcast <8 x i16> %i.l to <4 x i32>
  %i.s = uitofp nneg <4 x i32> %i.r to <4 x float>
  %i.t = bitcast <8 x i16> %i.n to <4 x i32>
  %i.u = uitofp nneg <4 x i32> %i.t to <4 x float>
  %i.v = bitcast <8 x i16> %i.o to <4 x i32>
  %i.w = uitofp nneg <4 x i32> %i.v to <4 x float>
  %i.x = fmul nnan <4 x float> %i.q, splat (float f0x3B808081)
  %i.y = fmul nnan <4 x float> %i.s, splat (float f0x3B808081)
  %i.z = fmul nnan <4 x float> %i.u, splat (float f0x3B808081)
  %i.aa = fmul nnan <4 x float> %i.w, splat (float f0x3B808081)
  %i.ab = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.ac = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.ad = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.ae = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  store <4 x float> %i.ab, ptr %.070, align 1, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %.070, i64 16
  store <4 x float> %i.ac, ptr %i.af, align 1, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %.070, i64 32
  store <4 x float> %i.ad, ptr %i.ag, align 1, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %.070, i64 48
  store <4 x float> %i.ae, ptr %i.ah, align 1, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %.070, i64 64 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.069, i64 16
  %.not77 = icmp ugt ptr %i.ai, %i.f
  %i.ak = icmp ne ptr %i.ai, %i.b                 ; 2 uses
  %i.al = and i1 %.not77, %i.ak                   ; 2 uses
  %.171 = select i1 %i.al, ptr %i.f, ptr %i.ai
  %.1 = select i1 %i.al, ptr %i.d, ptr %i.aj
  br i1 %i.ak, label %bb.c, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.rtcont
  %.27285 = phi ptr [ %.272.rtmerge, %.lr.ph.rtcont ], [ %.27281, %.lr.ph.preheader ] ; 4 uses
  %.284 = phi ptr [ %.rtmerge, %.lr.ph.rtcont ], [ %2, %.lr.ph.preheader ] ; 7 uses
  %.pn83 = phi ptr [ %.27285, %.lr.ph.rtcont ], [ %0, %.lr.ph.preheader ] ; 6 uses
  %.28489 = ptrtoaddr ptr %.284 to i64            ; 2 uses
  %i.am = add i64 %.28489, 4
  %.pn8390 = ptrtoaddr ptr %.pn83 to i64          ; 2 uses
  %i.an = add i64 %.pn8390, 16
  %rt.bound0 = icmp ugt i64 %i.am, %.pn8390
  %rt.bound1 = icmp ugt i64 %i.an, %.28489
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
end_hunk_0
