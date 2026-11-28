Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.14?download=true
inline.NumInlined: 1160
inline.NumDeleted: 448
loop-unroll.NumCompletelyUnrolled: 107
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_RNvXs1_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_9BlockQ5_1NtB5_8GgmlType10from_float:bb.a
  %i.fh = lshr exact i32 %i.er, 13
  %i.fi = add nuw nsw i32 %i.fh, 16384
  %i.fj = lshr i32 %i.es, 13
  %i.fk = and i32 %i.ep, 4096
  %i.fl = icmp ne i32 %i.fk, 0
  %i.fm = and i32 %i.ep, 12287
  %i.fn = icmp ne i32 %i.fm, 0
  %or.cond.not.i = and i1 %i.fl, %i.fn
  %i.fo = or disjoint i32 %i.fi, %i.fj
  %i.fp = or i32 %i.fo, %i.fb
  %i.fq = trunc i32 %i.fp to i16
  %i.fr = zext i1 %or.cond.not.i to i16
  %spec.select7.i = add i16 %i.fq, %i.fr
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.i:                                             ; preds = %bb.f
  %i.fs = icmp samesign ult i32 %i.er, 855638016
  br i1 %i.fs, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ft = sub nsw i32 126, %i.fc
  %i.fu = or disjoint i32 %i.es, 8388608          ; 3 uses
  %i.fv = lshr i32 %i.fu, %i.ft                   ; 2 uses
  %i.fw = sub nsw i32 29, %i.fc
  %i.fx = and i32 %i.fw, 31                       ; 2 uses
  %i.fy = shl nuw i32 1, %i.fx
  %i.fz = and i32 %i.fy, %i.fu
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.gb = trunc nuw i32 %i.fb to i16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.l:                                             ; preds = %bb.j
  %i.gc = shl i32 3, %i.fx
  %i.gd = add nuw i32 %i.gc, 16777215
  %i.ge = and i32 %i.gd, %i.fu
  %i.gf = icmp ne i32 %i.ge, 0
  %i.gg = zext i1 %i.gf to i32
  %spec.select.i = add nuw nsw i32 %i.fv, %i.gg
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.03.0.i = phi i32 [ %i.fv, %bb.j ], [ %spec.select.i, %bb.l ]
  %i.gh = or i32 %.sroa.03.0.i, %i.fb
  %i.gi = trunc nuw i32 %i.gh to i16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.n:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.gj = call fastcc noundef i16 @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.eh) #30
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit: ; preds = %bb.m, %bb.k, %bb.h, %bb.g, %bb.d, %bb.n
  %.sroa.026.0 = phi i16 [ %i.gj, %bb.n ], [ %i.fa, %bb.d ], [ %i.fg, %bb.g ], [ %i.gb, %bb.k ], [ %i.gi, %bb.m ], [ %spec.select7.i, %bb.h ]
  store i16 %.sroa.026.0, ptr %.sroa.0.088, align 2
  %i.gk = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.gl = icmp eq i64 %i.gk, 0
  br i1 %i.gl, label %.split56, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit38, !prof !14

.split56:                                         ; preds = %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit
  %i.gm = call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.gn = and i128 %i.gm, 18014398509481984
  %.not65 = icmp eq i128 %i.gn, 0
  br i1 %.not65, label %bb.o, label %bb.z

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit38: ; preds = %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit
  %i.go = and i64 %i.gk, 18014398509481984
  %.not64 = icmp eq i64 %i.go, 0
  br i1 %.not64, label %bb.o, label %bb.z

bb.o:                                             ; preds = %.split56, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit38
  %i.gp = bitcast float %i.cz to i32              ; 5 uses
  %i.gq = and i32 %i.gp, -2147483648              ; 2 uses
  %i.gr = and i32 %i.gp, 2139095040               ; 6 uses
  %i.gs = and i32 %i.gp, 8388607                  ; 4 uses
  %i.gt = icmp eq i32 %i.gr, 2139095040
  br i1 %i.gt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gu = icmp eq i32 %i.gs, 0
  %..i44 = select i1 %i.gu, i32 0, i32 512
  %i.gv = lshr exact i32 %i.gq, 16
  %i.gw = lshr i32 %i.gs, 13
  %i.gx = or disjoint i32 %i.gw, %i.gv
  %i.gy = or i32 %i.gx, %..i44
  %i.gz = trunc nuw i32 %i.gy to i16
  %i.ha = or disjoint i16 %i.gz, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit45

bb.q:                                             ; preds = %bb.o
  %i.hb = lshr exact i32 %i.gq, 16                ; 4 uses
  %i.hc = lshr exact i32 %i.gr, 23                ; 2 uses
  %i.hd = icmp samesign ugt i32 %i.gr, 1191182336
  br i1 %i.hd, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.he = icmp samesign ult i32 %i.gr, 947912704
  br i1 %i.he, label %bb.u, label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.hf = trunc nuw i32 %i.hb to i16
  %i.hg = or disjoint i16 %i.hf, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit45

bb.t:                                             ; preds = %bb.r
  %i.hh = lshr exact i32 %i.gr, 13
  %i.hi = add nuw nsw i32 %i.hh, 16384
  %i.hj = lshr i32 %i.gs, 13
  %i.hk = and i32 %i.gp, 4096
  %i.hl = icmp ne i32 %i.hk, 0
  %i.hm = and i32 %i.gp, 12287
  %i.hn = icmp ne i32 %i.hm, 0
  %or.cond.not.i39 = and i1 %i.hl, %i.hn
  %i.ho = or disjoint i32 %i.hi, %i.hj
  %i.hp = or i32 %i.ho, %i.hb
  %i.hq = trunc i32 %i.hp to i16
  %i.hr = zext i1 %or.cond.not.i39 to i16
  %spec.select7.i40 = add i16 %i.hq, %i.hr
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit45

bb.u:                                             ; preds = %bb.r
  %i.hs = icmp samesign ult i32 %i.gr, 855638016
  br i1 %i.hs, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ht = sub nsw i32 126, %i.hc
  %i.hu = or disjoint i32 %i.gs, 8388608          ; 3 uses
  %i.hv = lshr i32 %i.hu, %i.ht                   ; 2 uses
  %i.hw = sub nsw i32 29, %i.hc
  %i.hx = and i32 %i.hw, 31                       ; 2 uses
  %i.hy = shl nuw i32 1, %i.hx
  %i.hz = and i32 %i.hy, %i.hu
  %i.ia = icmp eq i32 %i.hz, 0
  br i1 %i.ia, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ib = trunc nuw i32 %i.hb to i16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit45

bb.x:                                             ; preds = %bb.v
  %i.ic = shl i32 3, %i.hx
  %i.id = add nuw i32 %i.ic, 16777215
  %i.ie = and i32 %i.id, %i.hu
  %i.if = icmp ne i32 %i.ie, 0
  %i.ig = zext i1 %i.if to i32
  %spec.select.i42 = add nuw nsw i32 %i.hv, %i.ig
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.sroa.03.0.i43 = phi i32 [ %i.hv, %bb.v ], [ %spec.select.i42, %bb.x ]
  %i.ih = or i32 %.sroa.03.0.i43, %i.hb
  %i.ii = trunc nuw i32 %i.ih to i16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit45

bb.z:                                             ; preds = %.split56, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit38
  %i.ij = call fastcc noundef i16 @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.cz) #30
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit45

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit45: ; preds = %bb.y, %bb.w, %bb.t, %bb.s, %bb.p, %bb.z
  %.sroa.027.0 = phi i16 [ %i.ij, %bb.z ], [ %i.ha, %bb.p ], [ %i.hg, %bb.s ], [ %i.ib, %bb.w ], [ %i.ii, %bb.y ], [ %spec.select7.i40, %bb.t ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0.088, i64 2
  store i16 %.sroa.027.0, ptr %i.ik, align 2
  %broadcast.splatinsert114 = insertelement <4 x float> poison, float %.sroa.014.0, i64 0
  %broadcast.splat115 = shufflevector <4 x float> %broadcast.splatinsert114, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cz, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %.sroa.048.0.ptr81 = getelementptr inbounds nuw i8, ptr %.sroa.0.088, i64 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <4 x float>, ptr %i.i, align 4
  %wide.load119.a = load <4 x float>, ptr %i.il, align 4
  %i.im = fsub <4 x float> %wide.load, %broadcast.splat
  %i.in = fsub <4 x float> %wide.load119.a, %broadcast.splat
  %i.io = fmul <4 x float> %broadcast.splat115, %i.im
  %i.ip = fmul <4 x float> %broadcast.splat115, %i.in
  %i.iq = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %wide.load120 = load <4 x float>, ptr %i.iq, align 4
  %wide.load121 = load <4 x float>, ptr %i.ir, align 4
  %i.is = fsub <4 x float> %wide.load120, %broadcast.splat
  %i.it = fsub <4 x float> %wide.load121, %broadcast.splat
  %i.iu = fmul <4 x float> %broadcast.splat115, %i.is
  %i.iv = fmul <4 x float> %broadcast.splat115, %i.it
  %i.iw = fadd <4 x float> %i.io, splat (float 5.000000e-01)
  %i.ix = fadd <4 x float> %i.ip, splat (float 5.000000e-01)
  %i.iy = call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.iw) ; 2 uses
  %i.iz = call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.ix) ; 2 uses
  %i.ja = fadd <4 x float> %i.iu, splat (float 5.000000e-01)
  %i.jb = fadd <4 x float> %i.iv, splat (float 5.000000e-01)
  %i.jc = call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.ja) ; 2 uses
  %i.jd = call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.jb) ; 2 uses
  %i.je = and <4 x i8> %i.iy, splat (i8 15)
  %i.jf = and <4 x i8> %i.iz, splat (i8 15)
  %i.jg = shl <4 x i8> %i.jc, splat (i8 4)
  %i.jh = shl <4 x i8> %i.jd, splat (i8 4)
  %i.ji = or disjoint <4 x i8> %i.jg, %i.je
  %i.jj = or disjoint <4 x i8> %i.jh, %i.jf
  %i.jk = getelementptr i8, ptr %.sroa.0.088, i64 12
  store <4 x i8> %i.ji, ptr %.sroa.048.0.ptr81, align 2
  store <4 x i8> %i.jj, ptr %i.jk, align 2
  %4 = lshr <4 x i8> %i.iy, splat (i8 4)
  %i.jl = lshr <4 x i8> %i.iz, splat (i8 4)
  %5 = and <4 x i8> %4, splat (i8 1)
  %i.jm = and <4 x i8> %i.jl, splat (i8 1)
  %6 = zext nneg <4 x i8> %5 to <4 x i32>
  %i.jn = zext nneg <4 x i8> %i.jm to <4 x i32>
  %7 = shl nuw nsw <4 x i32> %6, <i32 0, i32 1, i32 2, i32 3>
  %i.jo = shl nuw nsw <4 x i32> %i.jn, <i32 4, i32 5, i32 6, i32 7>
  %8 = lshr <4 x i8> %i.jc, splat (i8 4)
  %i.jp = lshr <4 x i8> %i.jd, splat (i8 4)
  %9 = and <4 x i8> %8, splat (i8 1)
  %i.jq = and <4 x i8> %i.jp, splat (i8 1)
  %10 = zext nneg <4 x i8> %9 to <4 x i32>
  %i.jr = zext nneg <4 x i8> %i.jq to <4 x i32>
  %11 = shl nuw nsw <4 x i32> %10, <i32 16, i32 17, i32 18, i32 19>
  %i.js = shl nuw nsw <4 x i32> %i.jr, <i32 20, i32 21, i32 22, i32 23>
  %12 = or disjoint <4 x i32> %11, %7
  %13 = or disjoint <4 x i32> %i.js, %i.jo
  %next.gep.1 = getelementptr i8, ptr %.sroa.0.088, i64 16
  %i.jt = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ju = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %wide.load.1 = load <4 x float>, ptr %i.jt, align 4
  %wide.load119.1.a = load <4 x float>, ptr %i.ju, align 4
  %i.jv = fsub <4 x float> %wide.load.1, %broadcast.splat
  %i.jw = fsub <4 x float> %wide.load119.1.a, %broadcast.splat
  %i.jx = fmul <4 x float> %broadcast.splat115, %i.jv
  %i.jy = fmul <4 x float> %broadcast.splat115, %i.jw
  %i.jz = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.ka = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %wide.load120.1 = load <4 x float>, ptr %i.jz, align 4
  %wide.load121.1 = load <4 x float>, ptr %i.ka, align 4
  %i.kb = fsub <4 x float> %wide.load120.1, %broadcast.splat
  %i.kc = fsub <4 x float> %wide.load121.1, %broadcast.splat
  %i.kd = fmul <4 x float> %broadcast.splat115, %i.kb
  %i.ke = fmul <4 x float> %broadcast.splat115, %i.kc
  %i.kf = fadd <4 x float> %i.jx, splat (float 5.000000e-01)
  %i.kg = fadd <4 x float> %i.jy, splat (float 5.000000e-01)
  %i.kh = call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.kf) ; 2 uses
  %i.ki = call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.kg) ; 2 uses
  %i.kj = fadd <4 x float> %i.kd, splat (float 5.000000e-01)
  %i.kk = fadd <4 x float> %i.ke, splat (float 5.000000e-01)
  %i.kl = call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.kj) ; 2 uses
  %i.km = call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.kk) ; 2 uses
  %i.kn = and <4 x i8> %i.kh, splat (i8 15)
  %i.ko = and <4 x i8> %i.ki, splat (i8 15)
  %i.kp = shl <4 x i8> %i.kl, splat (i8 4)
  %i.kq = shl <4 x i8> %i.km, splat (i8 4)
  %i.kr = or disjoint <4 x i8> %i.kp, %i.kn
  %i.ks = or disjoint <4 x i8> %i.kq, %i.ko
  %i.kt = getelementptr i8, ptr %.sroa.0.088, i64 20
  store <4 x i8> %i.kr, ptr %next.gep.1, align 2
  store <4 x i8> %i.ks, ptr %i.kt, align 2
  %14 = lshr <4 x i8> %i.kh, splat (i8 4)
  %i.ku = lshr <4 x i8> %i.ki, splat (i8 4)
  %15 = and <4 x i8> %14, splat (i8 1)
  %i.kv = and <4 x i8> %i.ku, splat (i8 1)
  %16 = zext nneg <4 x i8> %15 to <4 x i32>
  %i.kw = zext nneg <4 x i8> %i.kv to <4 x i32>
  %17 = shl nuw nsw <4 x i32> %16, <i32 8, i32 9, i32 10, i32 11>
  %i.kx = shl nuw nsw <4 x i32> %i.kw, <i32 12, i32 13, i32 14, i32 15>
  %18 = lshr <4 x i8> %i.kl, splat (i8 4)
  %i.ky = lshr <4 x i8> %i.km, splat (i8 4)
  %19 = and <4 x i8> %18, splat (i8 1)
  %i.kz = and <4 x i8> %i.ky, splat (i8 1)
  %20 = zext nneg <4 x i8> %19 to <4 x i32>
  %i.la = zext nneg <4 x i8> %i.kz to <4 x i32>
  %21 = shl nuw nsw <4 x i32> %20, <i32 24, i32 25, i32 26, i32 27>
  %i.lb = shl nuw <4 x i32> %i.la, <i32 28, i32 29, i32 30, i32 31>
  %22 = or disjoint <4 x i32> %21, %17
  %23 = or disjoint <4 x i32> %i.lb, %i.kx
  %i.lc = or disjoint <4 x i32> %22, %12
  %i.ld = or disjoint <4 x i32> %23, %13
  %bin.rdx = or disjoint <4 x i32> %i.ld, %i.lc
  %i.le = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx)
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0.088, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !720
  store i32 %i.le, ptr %i.a, align 4, !noalias !720
  call void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull %i.lf, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !720
  %i.lg = icmp eq ptr %i.e, %i.b
  br i1 %i.lg, label %._crit_edge91, label %.lr.ph90
}

; Function Attrs: nonlazybind uwtable
define noundef float @_RNvXs1_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_9BlockQ5_1NtB5_8GgmlType13vec_dot_unopt(i64 %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 384307168202282326) %2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef range(i64 0, 256204778801521551) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %2
  %i.c = getelementptr inbounds nuw [36 x i8], ptr %3, i64 %4
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_1EIBX_NtB1o_9BlockQ8_1EEINtB5_7ZipImplBW_B2n_E3newB1s_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %1, ptr noundef nonnull %i.b, ptr noundef nonnull %3, ptr noundef nonnull %i.c)
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.433.0.copyload = load ptr, ptr %.sroa.433.0..sroa_idx, align 8 ; 2 uses
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.534.0.copyload = load i64, ptr %.sroa.534.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.d = icmp ult i64 %.sroa.534.0.copyload, %.sroa.7.0.copyload
  br i1 %i.d, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_1EIBX_NtB1o_9BlockQ8_1EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit.lr.ph, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_1EIBX_NtB1o_9BlockQ8_1EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit.thread

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_1EIBX_NtB1o_9BlockQ8_1EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit.lr.ph: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.433.0.copyload) ]
  br label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_1EIBX_NtB1o_9BlockQ8_1EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_1EIBX_NtB1o_9BlockQ8_1EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_1EIBX_NtB1o_9BlockQ8_1EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit.lr.ph, %bb.as
  %.sroa.0.055 = phi float [ 0.000000e+00, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_1EIBX_NtB1o_9BlockQ8_1EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit.lr.ph ], [ %i.sp, %bb.as ]
  %.sroa.534.054 = phi i64 [ %.sroa.534.0.copyload, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_1EIBX_NtB1o_9BlockQ8_1EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit.lr.ph ], [ %i.md, %bb.as ] ; 3 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.534.054 ; 19 uses
  %i.f = getelementptr inbounds nuw [36 x i8], ptr %.sroa.433.0.copyload, i64 %.sroa.534.054 ; 34 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.val = load i32, ptr %i.g, align 1             ; 28 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.j = load i8, ptr %i.h, align 1, !noundef !7
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = and i32 %i.k, 15
  %i.m = shl i32 %.val, 4
  %i.n = and i32 %i.m, 16
  %i.o = or disjoint i32 %i.l, %i.n
  %i.p = load i8, ptr %i.i, align 1, !noundef !7
  %i.q = sext i8 %i.p to i32
  %i.r = mul nsw i32 %i.o, %i.q
  %i.s = lshr i32 %i.k, 4
  %i.t = lshr i32 %.val, 12                       ; 2 uses
  %i.u = and i32 %i.t, 16
  %i.v = or disjoint i32 %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.x = load i8, ptr %i.w, align 1, !noundef !7
  %i.y = sext i8 %i.x to i32
  %i.z = mul nsw i32 %i.v, %i.y
  %i.aa = add nsw i32 %i.z, %i.r
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.ac = load i8, ptr %i.ab, align 1, !noundef !7
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  %i.ae = and i32 %i.ad, 15
  %i.af = shl i32 %.val, 3
  %i.ag = and i32 %i.af, 16
  %i.ah = or disjoint i32 %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !7
  %i.ak = sext i8 %i.aj to i32
  %i.al = mul nsw i32 %i.ah, %i.ak
  %i.am = lshr i32 %i.ad, 4
  %i.an = lshr i32 %.val, 13                      ; 2 uses
  %i.ao = and i32 %i.an, 16
  %i.ap = or disjoint i32 %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 21
  %i.ar = load i8, ptr %i.aq, align 1, !noundef !7
  %i.as = sext i8 %i.ar to i32
  %i.at = mul nsw i32 %i.ap, %i.as
  %i.au = add nsw i32 %i.at, %i.aa
  %i.av = add nsw i32 %i.au, %i.al
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.ax = load i8, ptr %i.aw, align 1, !noundef !7
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  %i.az = and i32 %i.ay, 15
  %i.ba = shl i32 %.val, 2
  %i.bb = and i32 %i.ba, 16
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.be = load i8, ptr %i.bd, align 1, !noundef !7
  %i.bf = sext i8 %i.be to i32
  %i.bg = mul nsw i32 %i.bc, %i.bf
  %i.bh = lshr i32 %i.ay, 4
  %i.bi = lshr i32 %.val, 14                      ; 2 uses
  %i.bj = and i32 %i.bi, 16
  %i.bk = or disjoint i32 %i.bh, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 22
  %i.bm = load i8, ptr %i.bl, align 1, !noundef !7
  %i.bn = sext i8 %i.bm to i32
  %i.bo = mul nsw i32 %i.bk, %i.bn
  %i.bp = add nsw i32 %i.bo, %i.av
  %i.bq = add nsw i32 %i.bp, %i.bg
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 11
  %i.bs = load i8, ptr %i.br, align 1, !noundef !7
  %i.bt = zext i8 %i.bs to i32                    ; 2 uses
  %i.bu = and i32 %i.bt, 15
  %i.bv = shl i32 %.val, 1
  %i.bw = and i32 %i.bv, 16
  %i.bx = or disjoint i32 %i.bu, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 7
  %i.bz = load i8, ptr %i.by, align 1, !noundef !7
  %i.ca = sext i8 %i.bz to i32
  %i.cb = mul nsw i32 %i.bx, %i.ca
  %i.cc = lshr i32 %i.bt, 4
  %i.cd = lshr i32 %.val, 15                      ; 2 uses
  %i.ce = and i32 %i.cd, 16
  %i.cf = or disjoint i32 %i.cc, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 23
  %i.ch = load i8, ptr %i.cg, align 1, !noundef !7
  %i.ci = sext i8 %i.ch to i32
  %i.cj = mul nsw i32 %i.cf, %i.ci
  %i.ck = add nsw i32 %i.cj, %i.bq
  %i.cl = add nsw i32 %i.ck, %i.cb
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !7
  %i.co = zext i8 %i.cn to i32                    ; 2 uses
  %i.cp = and i32 %i.co, 15
  %i.cq = and i32 %.val, 16
  %i.cr = or disjoint i32 %i.cp, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ct = load i8, ptr %i.cs, align 1, !noundef !7
  %i.cu = sext i8 %i.ct to i32
  %i.cv = mul nsw i32 %i.cr, %i.cu
  %i.cw = lshr i32 %i.co, 4
  %i.cx = lshr i32 %.val, 16
  %i.cy = and i32 %i.cx, 16
  %i.cz = or disjoint i32 %i.cw, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.db = load i8, ptr %i.da, align 1, !noundef !7
  %i.dc = sext i8 %i.db to i32
  %i.dd = mul nsw i32 %i.cz, %i.dc
  %i.de = add nsw i32 %i.dd, %i.cl
  %i.df = add nsw i32 %i.de, %i.cv
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 13
  %i.dh = load i8, ptr %i.dg, align 1, !noundef !7
  %i.di = zext i8 %i.dh to i32                    ; 2 uses
  %i.dj = and i32 %i.di, 15
  %i.dk = lshr i32 %.val, 1
  %i.dl = and i32 %i.dk, 16
  %i.dm = or disjoint i32 %i.dj, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.do = load i8, ptr %i.dn, align 1, !noundef !7
  %i.dp = sext i8 %i.do to i32
  %i.dq = mul nsw i32 %i.dm, %i.dp
  %i.dr = lshr i32 %i.di, 4
  %i.ds = lshr i32 %.val, 17
  %i.dt = and i32 %i.ds, 16
  %i.du = or disjoint i32 %i.dr, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.f, i64 25
  %i.dw = load i8, ptr %i.dv, align 1, !noundef !7
  %i.dx = sext i8 %i.dw to i32
  %i.dy = mul nsw i32 %i.du, %i.dx
  %i.dz = add nsw i32 %i.dy, %i.df
  %i.ea = add nsw i32 %i.dz, %i.dq
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  %i.ec = load i8, ptr %i.eb, align 1, !noundef !7
  %i.ed = zext i8 %i.ec to i32                    ; 2 uses
  %i.ee = and i32 %i.ed, 15
  %i.ef = lshr i32 %.val, 2
  %i.eg = and i32 %i.ef, 16
  %i.eh = or disjoint i32 %i.ee, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.ej = load i8, ptr %i.ei, align 1, !noundef !7
  %i.ek = sext i8 %i.ej to i32
  %i.el = mul nsw i32 %i.eh, %i.ek
  %i.em = lshr i32 %i.ed, 4
  %i.en = lshr i32 %.val, 18
  %i.eo = and i32 %i.en, 16
  %i.ep = or disjoint i32 %i.em, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.f, i64 26
  %i.er = load i8, ptr %i.eq, align 1, !noundef !7
  %i.es = sext i8 %i.er to i32
  %i.et = mul nsw i32 %i.ep, %i.es
  %i.eu = add nsw i32 %i.et, %i.ea
  %i.ev = add nsw i32 %i.eu, %i.el
  %i.ew = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  %i.ex = load i8, ptr %i.ew, align 1, !noundef !7
  %i.ey = zext i8 %i.ex to i32                    ; 2 uses
  %i.ez = and i32 %i.ey, 15
  %i.fa = lshr i32 %.val, 3
  %i.fb = and i32 %i.fa, 16
  %i.fc = or disjoint i32 %i.ez, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.fe = load i8, ptr %i.fd, align 1, !noundef !7
  %i.ff = sext i8 %i.fe to i32
  %i.fg = mul nsw i32 %i.fc, %i.ff
  %i.fh = lshr i32 %i.ey, 4
  %i.fi = lshr i32 %.val, 19
  %i.fj = and i32 %i.fi, 16
  %i.fk = or disjoint i32 %i.fh, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 27
end_hunk_0
