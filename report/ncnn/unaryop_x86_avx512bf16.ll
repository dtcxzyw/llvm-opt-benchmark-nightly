Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/unaryop_x86_avx512bf16?download=true
inline.NumInlined: 28
inline.NumDeleted: 28
begin_hunk_0_@_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor13unary_op_sinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.fa = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.eo, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.fb = shl <16 x i32> %i.fa, splat (i32 23)
  %i.fc = add <16 x i32> %i.fb, splat (i32 1065353216)
  %i.fd = bitcast <16 x i32> %i.fc to <16 x float>
  %i.fe = fmul fast <16 x float> %i.ez, %i.fd
  %i.ff = fadd fast <16 x float> %i.fe, splat (float -1.000000e+00)
  %i.fg = select fast <16 x i1> %i.ec, <16 x float> %i.eh, <16 x float> %i.ff
  %i.fh = fsub fast <16 x float> %i.ed, %i.fg
  %i.fi = fmul fast <16 x float> %i.fh, splat (float 5.000000e-01)
  %i.fj = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.fi)
  %i.fk = bitcast <16 x bfloat> %i.fj to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.fk, ptr align 1 %.034.lcssa, <16 x i1> %i.cu)
  %.pre92 = load i32, ptr %4, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.fl = phi i32 [ %.pre92, %bb.c ], [ %i.cp, %._crit_edge ] ; 4 uses
  %.1 = phi i32 [ %i.cp, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.fm = icmp slt i32 %.1, %i.fl
  br i1 %i.fm, label %iter.check, label %._crit_edge84

iter.check:                                       ; preds = %bb.d
  %i.fn = xor i32 %.1, -1
  %i.fo = add i32 %i.fl, %i.fn                    ; 3 uses
  %i.fp = zext i32 %i.fo to i64
  %i.fq = add nuw nsw i64 %i.fp, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.fo, 7
  br i1 %min.iters.check, label %.lr.ph83.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check103 = icmp ult i32 %i.fo, 31
  br i1 %min.iters.check103, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fr = and i64 %i.fq, 24
  %n.vec = and i64 %i.fq, 8589934560              ; 5 uses
  %i.fs = trunc i64 %n.vec to i32
  %i.ft = add i32 %.1, %i.fs
  %i.fu = shl nuw nsw i64 %n.vec, 1
  %i.fv = getelementptr i8, ptr %.034.lcssa, i64 %i.fu
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fw = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.034.lcssa, i64 %i.fw ; 2 uses
  %wide.load = load <32 x i16>, ptr %next.gep, align 2, !tbaa !21
  %i.fx = zext <32 x i16> %wide.load to <32 x i32>
  %i.fy = shl nuw <32 x i32> %i.fx, splat (i32 16)
  %i.fz = bitcast <32 x i32> %i.fy to <32 x float>
  %i.ga = call fast <32 x float> @llvm.sinh.v32f32(<32 x float> %i.fz)
  %i.gb = bitcast <32 x float> %i.ga to <32 x i32>
  %i.gc = lshr <32 x i32> %i.gb, splat (i32 16)
  %i.gd = trunc nuw <32 x i32> %i.gc to <32 x i16>
  store <32 x i16> %i.gd, ptr %next.gep, align 2, !tbaa !21
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ge = icmp eq i64 %index.next, %n.vec
  br i1 %i.ge, label %middle.block, label %vector.body, !llvm.loop !192

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fq, %n.vec
  br i1 %cmp.n, label %._crit_edge84, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fr, 0
  br i1 %min.epilog.iters.check, label %.lr.ph83.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec105 = and i64 %i.fq, 8589934584           ; 4 uses
  %i.gf = trunc i64 %n.vec105 to i32
  %i.gg = add i32 %.1, %i.gf
  %i.gh = shl nuw nsw i64 %n.vec105, 1
  %i.gi = getelementptr i8, ptr %.034.lcssa, i64 %i.gh
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index106 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next109, %vec.epilog.vector.body ] ; 2 uses
  %i.gj = shl i64 %index106, 1
  %next.gep107 = getelementptr i8, ptr %.034.lcssa, i64 %i.gj ; 2 uses
  %wide.load108 = load <8 x i16>, ptr %next.gep107, align 2, !tbaa !21
  %i.gk = zext <8 x i16> %wide.load108 to <8 x i32>
  %i.gl = shl nuw <8 x i32> %i.gk, splat (i32 16)
  %i.gm = bitcast <8 x i32> %i.gl to <8 x float>
  %i.gn = call fast <8 x float> @llvm.sinh.v8f32(<8 x float> %i.gm)
  %i.go = bitcast <8 x float> %i.gn to <8 x i32>
  %i.gp = lshr <8 x i32> %i.go, splat (i32 16)
  %i.gq = trunc nuw <8 x i32> %i.gp to <8 x i16>
  store <8 x i16> %i.gq, ptr %next.gep107, align 2, !tbaa !21
  %index.next109 = add nuw i64 %index106, 8       ; 2 uses
  %i.gr = icmp eq i64 %index.next109, %n.vec105
  br i1 %i.gr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !193

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n110 = icmp eq i64 %i.fq, %n.vec105
  br i1 %cmp.n110, label %._crit_edge84, label %.lr.ph83.preheader

.lr.ph83.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.281.ph = phi i32 [ %.1, %iter.check ], [ %i.ft, %vec.epilog.iter.check ], [ %i.gg, %vec.epilog.middle.block ]
  %.13580.ph = phi ptr [ %.034.lcssa, %iter.check ], [ %i.fv, %vec.epilog.iter.check ], [ %i.gi, %vec.epilog.middle.block ]
  br label %.lr.ph83

.lr.ph83:                                         ; preds = %.lr.ph83.preheader, %.lr.ph83
  %.281 = phi i32 [ %i.hb, %.lr.ph83 ], [ %.281.ph, %.lr.ph83.preheader ]
  %.13580 = phi ptr [ %i.ha, %.lr.ph83 ], [ %.13580.ph, %.lr.ph83.preheader ] ; 3 uses
  %i.gs = load i16, ptr %.13580, align 2, !tbaa !21
  %i.gt = zext i16 %i.gs to i32
  %i.gu = shl nuw i32 %i.gt, 16
  %i.gv = bitcast i32 %i.gu to float
  %i.gw = call fast noundef nofpclass(nan inf) float @llvm.sinh.f32(float %i.gv)
  %i.gx = bitcast float %i.gw to i32
  %i.gy = lshr i32 %i.gx, 16
  %i.gz = trunc nuw i32 %i.gy to i16
  store i16 %i.gz, ptr %.13580, align 2, !tbaa !21
  %i.ha = getelementptr inbounds nuw i8, ptr %.13580, i64 2
  %i.hb = add nuw nsw i32 %.281, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.hb, %i.fl
  br i1 %exitcond.not, label %._crit_edge84, label %.lr.ph83, !llvm.loop !194

._crit_edge84:                                    ; preds = %.lr.ph83, %middle.block, %vec.epilog.middle.block, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.hc = load i32, ptr %i.b, align 4, !tbaa !14
  %i.hd = sext i32 %i.hc to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.hd
  br i1 %.not.not, label %.noexc, label %._crit_edge87

._crit_edge87:                                    ; preds = %._crit_edge84, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge87, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sinh.f32(float) #10

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor14unary_op_asinhEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !14     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !14
  %i.h = load i32, ptr %0, align 4, !tbaa !14     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !14
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !14
  %i.k = load i32, ptr %i.a, align 4, !tbaa !14   ; 2 uses
  %.not75 = icmp sgt i32 %i.k, %i.j
  br i1 %.not75, label %._crit_edge77, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !14
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge74
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.gh, %._crit_edge74 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge74 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !15, !noalias !200
  %i.q = load i64, ptr %i.l, align 8, !tbaa !16, !noalias !200
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !200
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.067 = phi i32 [ %i.cw, %.lr.ph ], [ 0, %.noexc ]
  %.03466 = phi ptr [ %i.cv, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x bfloat>, ptr %.03466, align 1, !tbaa !18 ; 2 uses
  %i.x = fpext fast <16 x bfloat> %i.w to <16 x float> ; 4 uses
  %i.y = bitcast <16 x float> %i.x to <16 x i32>
  %i.z = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.x) ; 3 uses
  %i.aa = fmul fast <16 x float> %i.x, %i.x
  %i.ab = fadd fast <16 x float> %i.aa, splat (float 1.000000e+00)
  %i.ac = call fast noundef nofpclass(nan inf) <16 x float> @llvm.sqrt.v16f32(<16 x float> nofpclass(nan inf) %i.ab)
  %i.ad = fadd fast <16 x float> %i.ac, %i.z      ; 2 uses
  %6 = fcmp fast ole <16 x float> %i.ad, zeroinitializer
  %7 = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ad, <16 x float> splat (float f0x00800000), i32 4)
  %i.ae = bitcast <16 x float> %7 to <16 x i32>   ; 2 uses
  %i.af = lshr <16 x i32> %i.ae, splat (i32 23)
  %i.ag = and <16 x i32> %i.ae, splat (i32 -2139095041)
  %i.ah = or disjoint <16 x i32> %i.ag, splat (i32 1056964608)
  %i.ai = bitcast <16 x i32> %i.ah to <16 x float> ; 3 uses
  %i.aj = add nsw <16 x i32> %i.af, splat (i32 -127)
  %i.ak = sitofp fast <16 x i32> %i.aj to <16 x float> ; 2 uses
  %i.al = fadd fast <16 x float> %i.ak, splat (float 1.000000e+00)
  %i.am = fcmp fast olt <16 x float> %i.ai, splat (float f0x3F3504F3) ; 2 uses
  %i.an = fadd fast <16 x float> %i.ai, splat (float -1.000000e+00)
  %i.ao = select fast <16 x i1> %i.am, <16 x float> %i.ak, <16 x float> %i.al ; 2 uses
  %i.ap = select fast <16 x i1> %i.am, <16 x float> %i.ai, <16 x float> zeroinitializer
  %i.aq = fadd fast <16 x float> %i.an, %i.ap     ; 12 uses
  %i.ar = fmul fast <16 x float> %i.aq, %i.aq     ; 2 uses
  %i.as = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aq, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.at = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.as, <16 x float> nofpclass(nan inf) %i.aq, <16 x float> splat (float f0x3DEF251A))
  %i.au = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.at, <16 x float> nofpclass(nan inf) %i.aq, <16 x float> splat (float f0xBDFE5D4F))
  %i.av = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.au, <16 x float> nofpclass(nan inf) %i.aq, <16 x float> splat (float f0x3E11E9BF))
  %i.aw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.av, <16 x float> nofpclass(nan inf) %i.aq, <16 x float> splat (float f0xBE2AAE50))
  %i.ax = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aw, <16 x float> nofpclass(nan inf) %i.aq, <16 x float> splat (float f0x3E4CCEAC))
  %i.ay = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ax, <16 x float> nofpclass(nan inf) %i.aq, <16 x float> splat (float f0xBE7FFFFC))
  %i.az = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ay, <16 x float> nofpclass(nan inf) %i.aq, <16 x float> splat (float f0x3EAAAAAA))
  %i.ba = fmul fast <16 x float> %i.ar, %i.aq
  %i.bb = fmul fast <16 x float> %i.ba, %i.az
  %i.bc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ao, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.bb)
  %i.bd = fneg fast <16 x float> %i.ar
  %i.be = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bd, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.bc)
  %i.bf = fadd fast <16 x float> %i.be, %i.aq
  %i.bg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ao, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.bf)
  %8 = select <16 x i1> %6, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.bg
  %i.bh = fcmp fast oeq <16 x bfloat> %i.w, zeroinitializer
  %i.bi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.z, <16 x float> splat (float f0x00800000), i32 4)
  %i.bj = bitcast <16 x float> %i.bi to <16 x i32> ; 2 uses
  %i.bk = lshr <16 x i32> %i.bj, splat (i32 23)
  %i.bl = and <16 x i32> %i.bj, splat (i32 -2139095041)
  %i.bm = or disjoint <16 x i32> %i.bl, splat (i32 1056964608)
  %i.bn = bitcast <16 x i32> %i.bm to <16 x float> ; 3 uses
  %i.bo = add nsw <16 x i32> %i.bk, splat (i32 -127)
  %i.bp = sitofp fast <16 x i32> %i.bo to <16 x float> ; 2 uses
  %i.bq = fadd fast <16 x float> %i.bp, splat (float 1.000000e+00)
  %i.br = fcmp fast olt <16 x float> %i.bn, splat (float f0x3F3504F3) ; 2 uses
  %i.bs = fadd fast <16 x float> %i.bn, splat (float -1.000000e+00)
  %i.bt = select fast <16 x i1> %i.br, <16 x float> %i.bp, <16 x float> %i.bq ; 2 uses
  %i.bu = select fast <16 x i1> %i.br, <16 x float> %i.bn, <16 x float> zeroinitializer
  %i.bv = fadd fast <16 x float> %i.bs, %i.bu     ; 12 uses
  %i.bw = fmul fast <16 x float> %i.bv, %i.bv     ; 2 uses
  %i.bx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bv, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.by = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bx, <16 x float> nofpclass(nan inf) %i.bv, <16 x float> splat (float f0x3DEF251A))
  %i.bz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.by, <16 x float> nofpclass(nan inf) %i.bv, <16 x float> splat (float f0xBDFE5D4F))
  %i.ca = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bz, <16 x float> nofpclass(nan inf) %i.bv, <16 x float> splat (float f0x3E11E9BF))
  %i.cb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ca, <16 x float> nofpclass(nan inf) %i.bv, <16 x float> splat (float f0xBE2AAE50))
  %i.cc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cb, <16 x float> nofpclass(nan inf) %i.bv, <16 x float> splat (float f0x3E4CCEAC))
  %i.cd = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cc, <16 x float> nofpclass(nan inf) %i.bv, <16 x float> splat (float f0xBE7FFFFC))
  %i.ce = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cd, <16 x float> nofpclass(nan inf) %i.bv, <16 x float> splat (float f0x3EAAAAAA))
  %i.cf = fmul fast <16 x float> %i.bw, %i.bv
  %i.cg = fmul fast <16 x float> %i.cf, %i.ce
  %i.ch = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bt, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.cg)
  %i.ci = fneg fast <16 x float> %i.bw
  %i.cj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ci, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.ch)
  %i.ck = fadd fast <16 x float> %i.cj, %i.bv
  %i.cl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bt, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ck)
  %i.cm = fadd fast <16 x float> %i.cl, splat (float f0x3F317218)
  %i.cn = select <16 x i1> %i.bh, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.cm
  %i.co = fcmp fast ogt <16 x float> %i.z, splat (float f0x5F0AC723)
  %i.cp = select fast <16 x i1> %i.co, <16 x float> %i.cn, <16 x float> %8
  %i.cq = and <16 x i32> %i.y, splat (i32 -2147483648)
  %i.cr = bitcast <16 x float> %i.cp to <16 x i32>
  %i.cs = or <16 x i32> %i.cq, %i.cr
  %i.ct = bitcast <16 x i32> %i.cs to <16 x float>
  %i.cu = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ct)
  store <16 x bfloat> %i.cu, ptr %.03466, align 1, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %.03466, i64 32 ; 2 uses
  %i.cw = add nuw nsw i32 %.067, 16               ; 3 uses
  %i.cx = or disjoint i32 %i.cw, 15
  %i.cy = load i32, ptr %4, align 4, !tbaa !14    ; 2 uses
  %i.cz = icmp slt i32 %i.cx, %i.cy
  br i1 %i.cz, label %.lr.ph, label %._crit_edge, !llvm.loop !198

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.da = phi i32 [ %i.o, %.noexc ], [ %i.cy, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.cv, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.cw, %.lr.ph ] ; 3 uses
  %i.db = icmp slt i32 %.0.lcssa, %i.da
  br i1 %i.db, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.dc = sub nuw nsw i32 %i.da, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.dc
  %i.dd = trunc i32 %notmask to i16
  %i.de = xor i16 %i.dd, -1
  %i.df = bitcast i16 %i.de to <16 x i1>          ; 2 uses
  %i.dg = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.df, <16 x i16> zeroinitializer)
  %i.dh = bitcast <16 x i16> %i.dg to <16 x bfloat> ; 2 uses
  %i.di = fpext fast <16 x bfloat> %i.dh to <16 x float> ; 4 uses
  %i.dj = bitcast <16 x float> %i.di to <16 x i32>
  %i.dk = call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.di) ; 3 uses
  %i.dl = fmul fast <16 x float> %i.di, %i.di
  %i.dm = fadd fast <16 x float> %i.dl, splat (float 1.000000e+00)
  %i.dn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.sqrt.v16f32(<16 x float> nofpclass(nan inf) %i.dm)
  %i.do = fadd fast <16 x float> %i.dn, %i.dk     ; 2 uses
  %9 = fcmp fast ole <16 x float> %i.do, zeroinitializer
  %10 = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.do, <16 x float> splat (float f0x00800000), i32 4)
  %i.dp = bitcast <16 x float> %10 to <16 x i32>  ; 2 uses
  %i.dq = lshr <16 x i32> %i.dp, splat (i32 23)
  %i.dr = and <16 x i32> %i.dp, splat (i32 -2139095041)
  %i.ds = or disjoint <16 x i32> %i.dr, splat (i32 1056964608)
  %i.dt = bitcast <16 x i32> %i.ds to <16 x float> ; 3 uses
  %i.du = add nsw <16 x i32> %i.dq, splat (i32 -127)
  %i.dv = sitofp fast <16 x i32> %i.du to <16 x float> ; 2 uses
  %i.dw = fadd fast <16 x float> %i.dv, splat (float 1.000000e+00)
  %i.dx = fcmp fast olt <16 x float> %i.dt, splat (float f0x3F3504F3) ; 2 uses
  %i.dy = fadd fast <16 x float> %i.dt, splat (float -1.000000e+00)
  %i.dz = select fast <16 x i1> %i.dx, <16 x float> %i.dv, <16 x float> %i.dw ; 2 uses
  %i.ea = select fast <16 x i1> %i.dx, <16 x float> %i.dt, <16 x float> zeroinitializer
  %i.eb = fadd fast <16 x float> %i.dy, %i.ea     ; 12 uses
  %i.ec = fmul fast <16 x float> %i.eb, %i.eb     ; 2 uses
  %i.ed = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eb, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.ee = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ed, <16 x float> nofpclass(nan inf) %i.eb, <16 x float> splat (float f0x3DEF251A))
  %i.ef = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ee, <16 x float> nofpclass(nan inf) %i.eb, <16 x float> splat (float f0xBDFE5D4F))
  %i.eg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ef, <16 x float> nofpclass(nan inf) %i.eb, <16 x float> splat (float f0x3E11E9BF))
  %i.eh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eg, <16 x float> nofpclass(nan inf) %i.eb, <16 x float> splat (float f0xBE2AAE50))
  %i.ei = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eh, <16 x float> nofpclass(nan inf) %i.eb, <16 x float> splat (float f0x3E4CCEAC))
  %i.ej = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ei, <16 x float> nofpclass(nan inf) %i.eb, <16 x float> splat (float f0xBE7FFFFC))
  %i.ek = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ej, <16 x float> nofpclass(nan inf) %i.eb, <16 x float> splat (float f0x3EAAAAAA))
  %i.el = fmul fast <16 x float> %i.ec, %i.eb
  %i.em = fmul fast <16 x float> %i.el, %i.ek
  %i.en = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dz, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.em)
  %i.eo = fneg fast <16 x float> %i.ec
  %i.ep = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.eo, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.en)
  %i.eq = fadd fast <16 x float> %i.ep, %i.eb
  %i.er = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.dz, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.eq)
  %11 = select <16 x i1> %9, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.er
  %i.es = fcmp fast oeq <16 x bfloat> %i.dh, zeroinitializer
  %i.et = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.dk, <16 x float> splat (float f0x00800000), i32 4)
  %i.eu = bitcast <16 x float> %i.et to <16 x i32> ; 2 uses
  %i.ev = lshr <16 x i32> %i.eu, splat (i32 23)
  %i.ew = and <16 x i32> %i.eu, splat (i32 -2139095041)
  %i.ex = or disjoint <16 x i32> %i.ew, splat (i32 1056964608)
  %i.ey = bitcast <16 x i32> %i.ex to <16 x float> ; 3 uses
  %i.ez = add nsw <16 x i32> %i.ev, splat (i32 -127)
  %i.fa = sitofp fast <16 x i32> %i.ez to <16 x float> ; 2 uses
  %i.fb = fadd fast <16 x float> %i.fa, splat (float 1.000000e+00)
  %i.fc = fcmp fast olt <16 x float> %i.ey, splat (float f0x3F3504F3) ; 2 uses
  %i.fd = fadd fast <16 x float> %i.ey, splat (float -1.000000e+00)
  %i.fe = select fast <16 x i1> %i.fc, <16 x float> %i.fa, <16 x float> %i.fb ; 2 uses
  %i.ff = select fast <16 x i1> %i.fc, <16 x float> %i.ey, <16 x float> zeroinitializer
  %i.fg = fadd fast <16 x float> %i.fd, %i.ff     ; 12 uses
  %i.fh = fmul fast <16 x float> %i.fg, %i.fg     ; 2 uses
  %i.fi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fg, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.fj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fi, <16 x float> nofpclass(nan inf) %i.fg, <16 x float> splat (float f0x3DEF251A))
  %i.fk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fj, <16 x float> nofpclass(nan inf) %i.fg, <16 x float> splat (float f0xBDFE5D4F))
  %i.fl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fk, <16 x float> nofpclass(nan inf) %i.fg, <16 x float> splat (float f0x3E11E9BF))
  %i.fm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fl, <16 x float> nofpclass(nan inf) %i.fg, <16 x float> splat (float f0xBE2AAE50))
  %i.fn = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fm, <16 x float> nofpclass(nan inf) %i.fg, <16 x float> splat (float f0x3E4CCEAC))
  %i.fo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fn, <16 x float> nofpclass(nan inf) %i.fg, <16 x float> splat (float f0xBE7FFFFC))
  %i.fp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fo, <16 x float> nofpclass(nan inf) %i.fg, <16 x float> splat (float f0x3EAAAAAA))
  %i.fq = fmul fast <16 x float> %i.fh, %i.fg
  %i.fr = fmul fast <16 x float> %i.fq, %i.fp
  %i.fs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fe, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.fr)
  %i.ft = fneg fast <16 x float> %i.fh
  %i.fu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ft, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.fs)
  %i.fv = fadd fast <16 x float> %i.fu, %i.fg
  %i.fw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fe, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.fv)
  %i.fx = fadd fast <16 x float> %i.fw, splat (float f0x3F317218)
  %i.fy = select <16 x i1> %i.es, <16 x float> splat (float -nan(0x3FFFFF)), <16 x float> %i.fx
  %i.fz = fcmp fast ogt <16 x float> %i.dk, splat (float f0x5F0AC723)
  %i.ga = select fast <16 x i1> %i.fz, <16 x float> %i.fy, <16 x float> %11
  %i.gb = and <16 x i32> %i.dj, splat (i32 -2147483648)
  %i.gc = bitcast <16 x float> %i.ga to <16 x i32>
  %i.gd = or <16 x i32> %i.gb, %i.gc
  %i.ge = bitcast <16 x i32> %i.gd to <16 x float>
  %i.gf = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ge)
  %i.gg = bitcast <16 x bfloat> %i.gf to <16 x i16>
  call void @llvm.masked.store.v16i16.p0(<16 x i16> %i.gg, ptr align 1 %.034.lcssa, <16 x i1> %i.df)
  %.pre82 = load i32, ptr %4, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.gh = phi i32 [ %.pre82, %bb.c ], [ %i.da, %._crit_edge ] ; 3 uses
  %.1 = phi i32 [ %i.da, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %i.gi = icmp slt i32 %.1, %i.gh
  br i1 %i.gi, label %.lr.ph73, label %._crit_edge74

.lr.ph73:                                         ; preds = %bb.d, %.lr.ph73
  %.271 = phi i32 [ %i.gs, %.lr.ph73 ], [ %.1, %bb.d ]
  %.13570 = phi ptr [ %i.gr, %.lr.ph73 ], [ %.034.lcssa, %bb.d ] ; 3 uses
  %i.gj = load i16, ptr %.13570, align 2, !tbaa !21
  %i.gk = zext i16 %i.gj to i32
  %i.gl = shl nuw i32 %i.gk, 16
  %i.gm = bitcast i32 %i.gl to float
  %i.gn = call fast noundef nofpclass(nan inf) float @asinhf(float noundef nofpclass(nan inf) %i.gm) #17
  %i.go = bitcast float %i.gn to i32
  %i.gp = lshr i32 %i.go, 16
  %i.gq = trunc nuw i32 %i.gp to i16
  store i16 %i.gq, ptr %.13570, align 2, !tbaa !21
  %i.gr = getelementptr inbounds nuw i8, ptr %.13570, i64 2
  %i.gs = add nuw nsw i32 %.271, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.gs, %i.gh
  br i1 %exitcond.not, label %._crit_edge74, label %.lr.ph73, !llvm.loop !199

._crit_edge74:                                    ; preds = %.lr.ph73, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.gt = load i32, ptr %i.b, align 4, !tbaa !14
  %i.gu = sext i32 %i.gt to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.gu
  br i1 %.not.not, label %.noexc, label %._crit_edge77

._crit_edge77:                                    ; preds = %._crit_edge74, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge77, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare nofpclass(nan inf) float @asinhf(float noundef nofpclass(nan inf)) local_unnamed_addr #12

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL22unary_op_inplace_bf16sINS_19UnaryOp_x86_functor13unary_op_coshEEEiRNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree nonnull readnone align 1 captures(none) %5) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !14     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i32 %i.g, ptr %i.b, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 1, ptr %i.c, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i32 0, ptr %i.d, align 4, !tbaa !14
  %i.h = load i32, ptr %0, align 4, !tbaa !14     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !14
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !14
  %i.k = load i32, ptr %i.a, align 4, !tbaa !14   ; 2 uses
  %.not69 = icmp sgt i32 %i.k, %i.j
  br i1 %.not69, label %._crit_edge71, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %.pre = load i32, ptr %4, align 4, !tbaa !14
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge68
  %i.o = phi i32 [ %.pre, %.noexc.lr.ph ], [ %i.ej, %._crit_edge68 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge68 ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !15, !noalias !207
  %i.q = load i64, ptr %i.l, align 8, !tbaa !16, !noalias !207
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !17, !noalias !207
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 2 uses
  %i.v = icmp sgt i32 %i.o, 15
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.061 = phi i32 [ %i.bx, %.lr.ph ], [ 0, %.noexc ]
  %.03460 = phi ptr [ %i.bw, %.lr.ph ], [ %i.u, %.noexc ] ; 3 uses
  %i.w = load <16 x bfloat>, ptr %.03460, align 1, !tbaa !18
  %i.x = fpext fast <16 x bfloat> %i.w to <16 x float> ; 2 uses
  %i.y = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.x, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.z = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.y, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.aa = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.z, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ab = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.aa, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ac = fcmp fast ogt <16 x float> %i.ab, %i.aa
  %i.ad = fadd fast <16 x float> %i.ab, splat (float -1.000000e+00)
  %i.ae = select fast <16 x i1> %i.ac, <16 x float> %i.ad, <16 x float> %i.ab ; 2 uses
  %i.af = fneg fast <16 x float> %i.ae            ; 2 uses
  %i.ag = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.af, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.z)
  %i.ah = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.af, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ag) ; 8 uses
  %i.ai = fmul fast <16 x float> %i.ah, %i.ah
  %i.aj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.ak = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aj, <16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x3C088908))
  %i.al = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ak, <16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x3D2AA9C1))
  %i.am = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.al, <16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float f0x3E2AAAAA))
  %i.an = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.am, <16 x float> nofpclass(nan inf) %i.ah, <16 x float> splat (float 5.000000e-01))
  %i.ao = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.an, <16 x float> nofpclass(nan inf) %i.ai, <16 x float> nofpclass(nan inf) %i.ah)
  %i.ap = fadd fast <16 x float> %i.ao, splat (float 1.000000e+00)
  %i.aq = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ae, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.ar = shl <16 x i32> %i.aq, splat (i32 23)
  %i.as = add <16 x i32> %i.ar, splat (i32 1065353216)
  %i.at = bitcast <16 x i32> %i.as to <16 x float>
  %i.au = fmul fast <16 x float> %i.ap, %i.at
  %i.av = fneg fast <16 x float> %i.x
  %i.aw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.av, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ax = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.aw, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ay = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ax, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.az = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ay, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ba = fcmp fast ogt <16 x float> %i.az, %i.ay
  %i.bb = fadd fast <16 x float> %i.az, splat (float -1.000000e+00)
  %i.bc = select fast <16 x i1> %i.ba, <16 x float> %i.bb, <16 x float> %i.az ; 2 uses
  %i.bd = fneg fast <16 x float> %i.bc            ; 2 uses
  %i.be = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bd, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ax)
  %i.bf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.bd, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.be) ; 8 uses
  %i.bg = fmul fast <16 x float> %i.bf, %i.bf
  %i.bh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bf, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.bi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bh, <16 x float> nofpclass(nan inf) %i.bf, <16 x float> splat (float f0x3C088908))
  %i.bj = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bi, <16 x float> nofpclass(nan inf) %i.bf, <16 x float> splat (float f0x3D2AA9C1))
  %i.bk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bj, <16 x float> nofpclass(nan inf) %i.bf, <16 x float> splat (float f0x3E2AAAAA))
  %i.bl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bk, <16 x float> nofpclass(nan inf) %i.bf, <16 x float> splat (float 5.000000e-01))
  %i.bm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.bl, <16 x float> nofpclass(nan inf) %i.bg, <16 x float> nofpclass(nan inf) %i.bf)
  %i.bn = fadd fast <16 x float> %i.bm, splat (float 1.000000e+00)
  %i.bo = call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.bc, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.bp = shl <16 x i32> %i.bo, splat (i32 23)
  %i.bq = add <16 x i32> %i.bp, splat (i32 1065353216)
  %i.br = bitcast <16 x i32> %i.bq to <16 x float>
  %i.bs = fmul fast <16 x float> %i.bn, %i.br
  %i.bt = fadd fast <16 x float> %i.bs, %i.au
  %i.bu = fmul fast <16 x float> %i.bt, splat (float 5.000000e-01)
  %i.bv = call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bu)
  store <16 x bfloat> %i.bv, ptr %.03460, align 1, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %.03460, i64 32 ; 2 uses
  %i.bx = add nuw nsw i32 %.061, 16               ; 3 uses
  %i.by = or disjoint i32 %i.bx, 15
  %i.bz = load i32, ptr %4, align 4, !tbaa !14    ; 2 uses
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %.lr.ph, label %._crit_edge, !llvm.loop !203

._crit_edge:                                      ; preds = %.lr.ph, %.noexc
  %i.cb = phi i32 [ %i.o, %.noexc ], [ %i.bz, %.lr.ph ] ; 4 uses
  %.034.lcssa = phi ptr [ %i.u, %.noexc ], [ %i.bw, %.lr.ph ] ; 7 uses
  %.0.lcssa = phi i32 [ 0, %.noexc ], [ %i.bx, %.lr.ph ] ; 3 uses
  %i.cc = icmp slt i32 %.0.lcssa, %i.cb
  br i1 %i.cc, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.cd = sub nuw nsw i32 %i.cb, %.0.lcssa
  %notmask = shl nsw i32 -1, %i.cd
  %i.ce = trunc i32 %notmask to i16
  %i.cf = xor i16 %i.ce, -1
  %i.cg = bitcast i16 %i.cf to <16 x i1>          ; 2 uses
  %i.ch = call <16 x i16> @llvm.masked.load.v16i16.p0(ptr align 1 %.034.lcssa, <16 x i1> %i.cg, <16 x i16> zeroinitializer)
  %i.ci = bitcast <16 x i16> %i.ch to <16 x bfloat>
  %i.cj = fpext fast <16 x bfloat> %i.ci to <16 x float> ; 2 uses
  %i.ck = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.cj, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.cl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ck, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.cm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cl, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.cn = call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.cm, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.co = fcmp fast ogt <16 x float> %i.cn, %i.cm
  %i.cp = fadd fast <16 x float> %i.cn, splat (float -1.000000e+00)
  %i.cq = select fast <16 x i1> %i.co, <16 x float> %i.cp, <16 x float> %i.cn ; 2 uses
  %i.cr = fneg fast <16 x float> %i.cq            ; 2 uses
  %i.cs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cr, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.cl)
  %i.ct = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.cr, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.cs) ; 8 uses
  %i.cu = fmul fast <16 x float> %i.ct, %i.ct
  %i.cv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ct, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.cw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cv, <16 x float> nofpclass(nan inf) %i.ct, <16 x float> splat (float f0x3C088908))
  %i.cx = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cw, <16 x float> nofpclass(nan inf) %i.ct, <16 x float> splat (float f0x3D2AA9C1))
  %i.cy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cx, <16 x float> nofpclass(nan inf) %i.ct, <16 x float> splat (float f0x3E2AAAAA))
  %i.cz = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cy, <16 x float> nofpclass(nan inf) %i.ct, <16 x float> splat (float 5.000000e-01))
  %i.da = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.cz, <16 x float> nofpclass(nan inf) %i.cu, <16 x float> nofpclass(nan inf) %i.ct)
end_hunk_0
