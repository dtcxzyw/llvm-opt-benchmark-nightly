Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng_util?download=true
inline.NumInlined: 864
inline.NumDeleted: 299
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7lodepngL12lodepng_powfEff:bb.a
  %or.cond129 = fcmp uno float %0, %1
  br i1 %or.cond129, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = fadd float %0, %1
  br label %common.ret231

bb.f:                                             ; preds = %bb.d
  br i1 %i.d, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.j = fcmp ogt float %0, f0x7F7FFFFF
  br i1 %i.j, label %bb.h, label %bb.y

bb.h:                                             ; preds = %bb.g
  %i.k = fcmp ugt float %1, 0.000000e+00
  %. = select i1 %i.k, float %0, float 0.000000e+00
  br label %common.ret231

bb.i:                                             ; preds = %bb.f
  %or.cond9 = fcmp ogt float %i.f, f0x4E800000
  br i1 %or.cond9, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = fptosi float %1 to i32                   ; 3 uses
  %i.m = sitofp i32 %i.l to float
  %i.n = fcmp une float %1, %i.m
  br i1 %i.n, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.o = fcmp olt float %0, f0xFF7FFFFF
  br i1 %i.o, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.p = fcmp olt float %1, 0.000000e+00
  %i.q = select i1 %i.p, float 0.000000e+00, float +inf
  br label %common.ret231

bb.m:                                             ; preds = %bb.k
  %i.r = fcmp oeq float %0, 0.000000e+00
  br i1 %i.r, label %bb.n, label %common.ret231

bb.n:                                             ; preds = %bb.m
  %i.s = fcmp olt float %1, 0.000000e+00
  %i.t = select i1 %i.s, float +inf, float 0.000000e+00
  br label %common.ret231

bb.o:                                             ; preds = %bb.j
  %i.u = and i32 %i.l, 1
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = fcmp oeq float %0, 0.000000e+00
  br i1 %i.v, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.w = fcmp olt float %1, 0.000000e+00
  %i.x = fdiv float 1.000000e+00, %0
  %i.y = select i1 %i.w, float %i.x, float %0
  br label %common.ret231

common.ret231:                                    ; preds = %bb.ae, %._crit_edge160.thread.a, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.v, %bb.q, %bb.l, %bb.n, %bb.m, %bb.b, %bb.a, %bb.ac, %bb.t, %bb.h, %bb.e, %bb.r
  %common.ret231.op = phi float [ %i.ab, %bb.r ], [ %i.co, %bb.ae ], [ +qnan, %bb.m ], [ 1.000000e+00, %bb.a ], [ %i.bu, %bb.ac ], [ 0.000000e+00, %bb.z ], [ %i.i, %bb.e ], [ %., %bb.h ], [ 1.000000e+00, %bb.x ], [ %i.ae, %bb.t ], [ %i.cs, %._crit_edge160.thread.a ], [ 0.000000e+00, %bb.v ], [ %0, %bb.b ], [ %i.q, %bb.l ], [ %i.t, %bb.n ], [ %i.y, %bb.q ], [ %i.ai, %bb.w ], [ %i.ap, %bb.aa ]
  ret float %common.ret231.op

bb.r:                                             ; preds = %bb.p
  %i.z = fneg float %0
  %i.aa = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.z, float noundef %1)
  %i.ab = fneg float %i.aa
  br label %common.ret231

bb.s:                                             ; preds = %bb.o, %bb.i
  %.0 = phi i32 [ 0, %bb.i ], [ %i.l, %bb.o ]
  %i.ac = fcmp oeq float %0, 0.000000e+00
  br i1 %i.ac, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ad = fcmp ole float %1, 0.000000e+00
  %i.ae = select i1 %i.ad, float +inf, float 0.000000e+00
  br label %common.ret231

bb.u:                                             ; preds = %bb.s
  %i.af = fcmp olt float %0, f0xFF7FFFFF
  br i1 %i.af, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ag = fcmp ugt float %1, 0.000000e+00
  br i1 %i.ag, label %bb.w, label %common.ret231

bb.w:                                             ; preds = %bb.v
  %i.ah = and i32 %.0, 1
  %.not127 = icmp eq i32 %i.ah, 0
  %i.ai = select i1 %.not127, float +inf, float -inf
  br label %common.ret231

bb.x:                                             ; preds = %bb.u
  %i.aj = fneg float %0
  %i.ak = fcmp oeq float %0, -1.000000e+00
  br i1 %i.ak, label %common.ret231, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.g
  %.0121 = phi float [ %0, %bb.g ], [ %i.aj, %bb.x ] ; 2 uses
  %or.cond11 = fcmp ogt float %i.f, f0x7F7FFFFF
  br i1 %or.cond11, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.al = fcmp olt float %.0121, 1.000000e+00
  %i.am = fcmp ule float %1, 0.000000e+00
  %.not128 = xor i1 %i.am, %i.al
  br i1 %.not128, label %common.ret231, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.an = fcmp olt float %1, 0.000000e+00
  %i.ao = fneg float %1
  %i.ap = select i1 %i.an, float %i.ao, float %1
  br label %common.ret231

bb.ab:                                            ; preds = %bb.y, %bb.c
  %.1122 = phi float [ %0, %bb.c ], [ %.0121, %bb.y ] ; 4 uses
  %i.aq = fcmp olt float %.1122, f0x37800000
  br i1 %i.aq, label %.lr.ph, label %.preheader132

.preheader132:                                    ; preds = %.lr.ph, %bb.ab
  %.0116.lcssa = phi float [ 0.000000e+00, %bb.ab ], [ %i.as, %.lr.ph ] ; 2 uses
  %.0111.lcssa = phi float [ %.1122, %bb.ab ], [ %i.at, %.lr.ph ] ; 3 uses
  %i.ar = fcmp ogt float %.0111.lcssa, 6.553600e+04
  br i1 %i.ar, label %.lr.ph138, label %.preheader131

.lr.ph:                                           ; preds = %bb.ab, %.lr.ph
  %.0111134 = phi float [ %i.at, %.lr.ph ], [ %.1122, %bb.ab ]
  %.0116133 = phi float [ %i.as, %.lr.ph ], [ 0.000000e+00, %bb.ab ]
  %i.as = fadd float %.0116133, -1.600000e+01     ; 2 uses
  %i.at = fmul nnan float %.0111134, 6.553600e+04 ; 3 uses
  %i.au = fcmp olt float %i.at, f0x37800000
  br i1 %i.au, label %.lr.ph, label %.preheader132, !llvm.loop !148

.preheader131:                                    ; preds = %.lr.ph138, %.preheader132
  %.1117.lcssa = phi float [ %.0116.lcssa, %.preheader132 ], [ %i.aw, %.lr.ph138 ] ; 2 uses
  %.1112.lcssa = phi float [ %.0111.lcssa, %.preheader132 ], [ %i.ax, %.lr.ph138 ] ; 3 uses
  %i.av = fcmp olt float %.1112.lcssa, 1.000000e+00
  br i1 %i.av, label %.lr.ph143, label %.preheader130

.lr.ph138:                                        ; preds = %.preheader132, %.lr.ph138
  %.1112137 = phi float [ %i.ax, %.lr.ph138 ], [ %.0111.lcssa, %.preheader132 ]
  %.1117136 = phi float [ %i.aw, %.lr.ph138 ], [ %.0116.lcssa, %.preheader132 ]
  %i.aw = fadd float %.1117136, 1.600000e+01      ; 2 uses
  %i.ax = fmul nnan float %.1112137, f0x37800000  ; 3 uses
  %i.ay = fcmp ogt float %i.ax, 6.553600e+04
  br i1 %i.ay, label %.lr.ph138, label %.preheader131, !llvm.loop !149

.preheader130:                                    ; preds = %.lr.ph143, %.preheader131
  %.2118.lcssa = phi float [ %.1117.lcssa, %.preheader131 ], [ %i.ba, %.lr.ph143 ] ; 2 uses
  %.2113.lcssa = phi float [ %.1112.lcssa, %.preheader131 ], [ %i.bb, %.lr.ph143 ] ; 3 uses
  %i.az = fcmp ogt float %.2113.lcssa, 2.000000e+00
  br i1 %i.az, label %.lr.ph148, label %._crit_edge

.lr.ph143:                                        ; preds = %.preheader131, %.lr.ph143
  %.2113142 = phi float [ %i.bb, %.lr.ph143 ], [ %.1112.lcssa, %.preheader131 ]
  %.2118141 = phi float [ %i.ba, %.lr.ph143 ], [ %.1117.lcssa, %.preheader131 ]
  %i.ba = fadd float %.2118141, -1.000000e+00     ; 2 uses
  %i.bb = fmul nnan float %.2113142, 2.000000e+00 ; 3 uses
  %i.bc = fcmp olt float %i.bb, 1.000000e+00
  br i1 %i.bc, label %.lr.ph143, label %.preheader130, !llvm.loop !150

.lr.ph148:                                        ; preds = %.preheader130, %.lr.ph148
  %.3147 = phi float [ %i.be, %.lr.ph148 ], [ %.2113.lcssa, %.preheader130 ]
  %.3119146 = phi float [ %i.bd, %.lr.ph148 ], [ %.2118.lcssa, %.preheader130 ]
  %i.bd = fadd float %.3119146, 1.000000e+00      ; 2 uses
  %i.be = fmul nnan float %.3147, 5.000000e-01    ; 3 uses
  %i.bf = fcmp ogt float %i.be, 2.000000e+00
  br i1 %i.bf, label %.lr.ph148, label %._crit_edge, !llvm.loop !151

._crit_edge:                                      ; preds = %.lr.ph148, %.preheader130
  %.3119.lcssa = phi float [ %.2118.lcssa, %.preheader130 ], [ %i.bd, %.lr.ph148 ]
  %.3.lcssa = phi float [ %.2113.lcssa, %.preheader130 ], [ %i.be, %.lr.ph148 ]
  %i.bg = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.3.lcssa, i64 0 ; 2 uses
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> <float f0x3C7B5381, float 0.000000e+00>, <2 x float> <float f0x3EEEAA40, float f0x3E0C8592>)
  %i.bi = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bh, <2 x float> <float f0xBDB4F828, float f0x3EC71CDB>)
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bj, <2 x float> <float f0xBEC946D1, float f0x3DB9D868>) ; 2 uses
  %i.bl = extractelement <2 x float> %i.bk, i64 0
  %i.bm = extractelement <2 x float> %i.bk, i64 1
  %i.bn = fdiv float %i.bl, %i.bm
  %i.bo = fadd float %.3119.lcssa, %i.bn
  %i.bp = fmul float %1, %i.bo                    ; 3 uses
  %i.bq = tail call float @llvm.fabs.f32(float %i.bp)
  %or.cond13 = fcmp ult float %i.bq, 1.280000e+02
  br i1 %or.cond13, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  %i.br = fcmp ogt float %.1122, 1.000000e+00
  %i.bs = fcmp ule float %1, 0.000000e+00
  %i.bt = xor i1 %i.bs, %i.br
  %i.bu = select i1 %i.bt, float +inf, float 0.000000e+00
  br label %common.ret231

bb.ad:                                            ; preds = %._crit_edge
  %i.bv = fptosi float %i.bp to i32               ; 6 uses
  %i.bw = sitofp i32 %i.bv to float
  %i.bx = fsub float %i.bp, %i.bw                 ; 5 uses
  %2 = tail call float @llvm.fmuladd.f32(float %i.bx, float f0x3BB8A601, float f0x3D953178)
  %3 = tail call float @llvm.fmuladd.f32(float %i.bx, float %2, float f0x3ED5E70B)
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bx, float %3, float 1.000000e+00) ; 3 uses
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bx, float f0x3CC0861B, float f0xBE8CFD51)
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.bz, float 1.000000e+00) ; 2 uses
  %i.cb = icmp slt i32 %i.bv, -30
  br i1 %i.cb, label %.lr.ph154, label %.preheader

.preheader:                                       ; preds = %bb.ad
  %i.cc = icmp sgt i32 %i.bv, 30
  br i1 %i.cc, label %.lr.ph159, label %._crit_edge160

.lr.ph154:                                        ; preds = %bb.ad, %.lr.ph154
  %.1152 = phi i32 [ %i.ce, %.lr.ph154 ], [ %i.bv, %bb.ad ] ; 2 uses
  %.0114151 = phi float [ %i.cd, %.lr.ph154 ], [ %i.by, %bb.ad ]
  %i.cd = fmul float %.0114151, f0x30000000       ; 2 uses
  %i.ce = add nsw i32 %.1152, 31                  ; 2 uses
  %i.cf = icmp samesign ult i32 %.1152, -61
  br i1 %i.cf, label %.lr.ph154, label %._crit_edge160, !llvm.loop !152

.lr.ph159:                                        ; preds = %.preheader, %.lr.ph159
  %.2158 = phi i32 [ %i.ch, %.lr.ph159 ], [ %i.bv, %.preheader ] ; 2 uses
  %.1115157 = phi float [ %i.cg, %.lr.ph159 ], [ %i.by, %.preheader ]
  %i.cg = fmul float %.1115157, f0x4F000000       ; 2 uses
  %i.ch = add nsw i32 %.2158, -31                 ; 2 uses
  %i.ci = icmp samesign ugt i32 %.2158, 61
  br i1 %i.ci, label %.lr.ph159, label %._crit_edge160.thread.a, !llvm.loop !153

._crit_edge160:                                   ; preds = %.lr.ph154, %.preheader
  %.1115.lcssa = phi float [ %i.by, %.preheader ], [ %i.cd, %.lr.ph154 ] ; 2 uses
  %.2.lcssa = phi i32 [ %i.bv, %.preheader ], [ %i.ce, %.lr.ph154 ] ; 3 uses
  %i.cj = icmp slt i32 %.2.lcssa, 0
  br i1 %i.cj, label %bb.ae, label %._crit_edge160.thread.a

bb.ae:                                            ; preds = %._crit_edge160
  %i.ck = sub nsw i32 0, %.2.lcssa
  %i.cl = shl nuw nsw i32 1, %i.ck
  %i.cm = uitofp nneg i32 %i.cl to float
  %i.cn = fmul float %i.ca, %i.cm
  %i.co = fdiv float %.1115.lcssa, %i.cn
  br label %common.ret231

._crit_edge160.thread.a:                          ; preds = %.lr.ph159, %._crit_edge160
  %.2.lcssa186 = phi i32 [ %.2.lcssa, %._crit_edge160 ], [ %i.ch, %.lr.ph159 ]
  %.1115.lcssa185 = phi float [ %.1115.lcssa, %._crit_edge160 ], [ %i.cg, %.lr.ph159 ]
  %i.cp = shl nuw nsw i32 1, %.2.lcssa186
  %i.cq = uitofp nneg i32 %i.cp to float
  %i.cr = fmul float %.1115.lcssa185, %i.cq
  %i.cs = fdiv float %i.cr, %i.ca
  br label %common.ret231
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN7lodepngL7getChrmEPfS0_jPKNS_10LodePNGICCEPK11LodePNGInfo(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #17 {
bb.a:
  %i.a = alloca [9 x float], align 16             ; 9 uses
  %i.b = alloca [9 x float], align 16             ; 11 uses
  %i.c = alloca [9 x float], align 16             ; 10 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %3, align 8, !tbaa !54
  %i.e = icmp eq i32 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !59
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load float, ptr %i.h, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.k = load float, ptr %i.j, align 4, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = load float, ptr %i.l, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.p = fpext float %i.i to double
  %i.q = fpext float %i.k to double
  %i.r = fpext float %i.m to double
  %i.s = load <2 x float>, ptr %i.n, align 8, !tbaa !58 ; 2 uses
  %i.t = load float, ptr %i.o, align 8, !tbaa !58 ; 2 uses
  %i.u = insertelement <3 x double> poison, double %i.q, i64 0
  %i.v = shufflevector <3 x double> %i.u, <3 x double> poison, <3 x i32> zeroinitializer
  %i.w = fmul <3 x double> %i.v, <double f0x3FD10CB2A0000000, double f0x3FFB6A7F00000000, double f0xBFB1893740000000>
  %i.x = insertelement <3 x double> poison, double %i.p, i64 0
  %i.y = shufflevector <3 x double> %i.x, <3 x double> poison, <3 x i32> zeroinitializer
  %i.z = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.y, <3 x double> <double f0x3FECA4A8C0000000, double f0xBFE801A360000000, double f0x3FA3EAB360000000>, <3 x double> %i.w)
  %i.aa = insertelement <3 x double> poison, double %i.r, i64 0
  %i.ab = shufflevector <3 x double> %i.aa, <3 x double> poison, <3 x i32> zeroinitializer
  %i.ac = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.ab, <3 x double> <double f0xBFC4A8C160000000, double f0x3FA2CA57A0000000, double f0x3FF0793DE0000000>, <3 x double> %i.z)
  %i.ad = fptrunc <3 x double> %i.ac to <3 x float>
  %i.ae = fpext <2 x float> %i.s to <2 x double>  ; 2 uses
  %i.af = fpext float %i.t to double
  %i.ag = shufflevector <2 x double> %i.ae, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ah = fmul <3 x double> %i.ag, <double f0x3FD10CB2A0000000, double f0x3FFB6A7F00000000, double f0xBFB1893740000000>
  %i.ai = shufflevector <2 x double> %i.ae, <2 x double> poison, <3 x i32> zeroinitializer
  %i.aj = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.ai, <3 x double> <double f0x3FECA4A8C0000000, double f0xBFE801A360000000, double f0x3FA3EAB360000000>, <3 x double> %i.ah)
  %i.ak = insertelement <3 x double> poison, double %i.af, i64 0
  %i.al = shufflevector <3 x double> %i.ak, <3 x double> poison, <3 x i32> zeroinitializer
  %i.am = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.al, <3 x double> <double f0xBFC4A8C160000000, double f0x3FA2CA57A0000000, double f0x3FF0793DE0000000>, <3 x double> %i.aj)
  %i.an = fptrunc <3 x double> %i.am to <3 x float>
  %i.ao = fdiv <3 x float> %i.an, %i.ad
  %i.ap = shufflevector <3 x float> %i.ao, <3 x float> poison, <9 x i32> <i32 2, i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.aq = fmul <9 x float> %i.ap, <float 1.029600e+00, float -1.614000e-01, float 3.670000e-02, float 3.890000e-02, float f0x3F652546, float f0xBF400D1B, float -6.850000e-02, float 2.664000e-01, float 1.713500e+00>
  %i.ar = fpext <9 x float> %i.aq to <9 x double> ; 15 uses
  %i.as = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 5, i32 5>
  %i.at = fmul <2 x double> %i.as, <double f0xBFC2D2ACE0000000, double f0x3FE0966860000000>
  %i.au = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 4, i32 4>
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> <double f0x3FEF957220000000, double f0x3FDBAAE3E0000000>, <2 x double> %i.at)
  %i.aw = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> <double f0x3FC479A860000000, double f0x3FA93CB240000000>, <2 x double> %i.av)
  %i.ay = fptrunc <2 x double> %i.ax to <2 x float>
  %i.az = extractelement <9 x double> %i.ar, i64 5
  %i.ba = fmul double %i.az, f0x3FA4807D60000000
  %i.bb = extractelement <9 x double> %i.ar, i64 4
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double f0xBF81777EC0000000, double %i.ba)
  %i.bd = extractelement <9 x double> %i.ar, i64 3
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bd, double f0x3FEEFDD7E0000000, double %i.bc)
  %i.bf = fptrunc double %i.be to float
  %i.bg = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 8, i32 8>
  %i.bh = fmul <2 x double> %i.bg, <double f0xBFC2D2ACE0000000, double f0x3FE0966860000000>
  %i.bi = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 7, i32 7>
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> <double f0x3FEF957220000000, double f0x3FDBAAE3E0000000>, <2 x double> %i.bh)
  %i.bk = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 6, i32 6>
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> <double f0x3FC479A860000000, double f0x3FA93CB240000000>, <2 x double> %i.bj)
  %i.bm = fptrunc <2 x double> %i.bl to <2 x float>
  %i.bn = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.bo = fmul <2 x double> %i.bn, <double f0xBFC2D2ACE0000000, double f0x3FE0966860000000>
  %i.bp = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> <double f0x3FEF957220000000, double f0x3FDBAAE3E0000000>, <2 x double> %i.bo)
  %i.br = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> zeroinitializer
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> <double f0x3FC479A860000000, double f0x3FA93CB240000000>, <2 x double> %i.bq)
  %i.bt = fptrunc <2 x double> %i.bs to <2 x float>
  %i.bu = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 8, i32 2>
  %i.bv = fmul <2 x double> %i.bu, splat (double f0x3FA4807D60000000)
  %i.bw = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 7, i32 1>
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> splat (double f0xBF81777EC0000000), <2 x double> %i.bv)
  %i.by = shufflevector <9 x double> %i.ar, <9 x double> poison, <2 x i32> <i32 6, i32 0>
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> splat (double f0x3FEEFDD7E0000000), <2 x double> %i.bx)
  %i.ca = fptrunc <2 x double> %i.bz to <2 x float>
  %i.cb = fpext <2 x float> %i.ay to <2 x double>
  %i.cc = fpext <2 x float> %i.bm to <2 x double>
  %i.cd = fpext <2 x float> %i.bt to <2 x double>
  %.pre86.i = fpext float %i.bf to double
  %i.ce = fpext <2 x float> %i.ca to <2 x double>
  br label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 76
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(36) %i.cg, i64 36, i1 false), !tbaa !58
  %i.ch = call fastcc noundef i32 @_ZN7lodepngL9invMatrixEPf(ptr noundef %i.c) ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.co = load <4 x float>, ptr %i.c, align 16, !tbaa !58
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.cq = load <4 x float>, ptr %i.cl, align 8, !tbaa !58
  %i.cr = load float, ptr %i.cm, align 8, !tbaa !58
  %i.cs = fpext <2 x float> %i.cp to <2 x double> ; 2 uses
  %i.ct = load <4 x float>, ptr %i.ck, align 4, !tbaa !58
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.cv = shufflevector <4 x float> %i.cq, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.cw = fpext <2 x float> %i.cv to <2 x double> ; 2 uses
  %i.cx = fpext <2 x float> %i.cu to <2 x double> ; 2 uses
  %i.cy = fpext float %i.cr to double             ; 2 uses
  %i.cz = load <2 x float>, ptr %i.cn, align 4, !tbaa !58
  %i.da = fpext <2 x float> %i.cz to <2 x double> ; 3 uses
  %i.db = load float, ptr %i.cf, align 4, !tbaa !58
  %i.dc = load float, ptr %i.ci, align 8, !tbaa !58
  %i.dd = load float, ptr %i.cj, align 8, !tbaa !58
  %i.de = fpext float %i.db to double             ; 2 uses
  %i.df = fpext float %i.dc to double             ; 2 uses
  %i.dg = fpext float %i.dd to double             ; 2 uses
  %i.dh = insertelement <2 x double> poison, double %i.de, i64 0
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x double> %i.di, %i.cx
  %i.dk = extractelement <2 x double> %i.da, i64 0
  %i.dl = fmul double %i.dk, %i.de
  %i.dm = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.cs, <2 x double> %i.dj)
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.df, double %i.cy, double %i.dl)
  %i.dq = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.cw, <2 x double> %i.do)
  %i.dt = extractelement <2 x double> %i.da, i64 1
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.dt, double %i.dp)
  %i.dv = fptrunc <2 x double> %i.ds to <2 x float>
  %i.dw = fptrunc double %i.du to float
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.d, %.preheader.i
  %.pre-phi87.i = phi double [ %.pre86.i, %.preheader.i ], [ %i.cy, %bb.d ] ; 2 uses
  %.sroa.8.0.i = phi float [ %i.t, %.preheader.i ], [ %i.dw, %bb.d ] ; 2 uses
  %i.dx = phi <2 x double> [ %i.cd, %.preheader.i ], [ %i.cw, %bb.d ] ; 2 uses
  %i.dy = phi <2 x double> [ %i.cb, %.preheader.i ], [ %i.cs, %bb.d ] ; 2 uses
  %i.dz = phi <2 x double> [ %i.cc, %.preheader.i ], [ %i.cx, %bb.d ] ; 2 uses
  %i.ea = phi <2 x float> [ %i.s, %.preheader.i ], [ %i.dv, %bb.d ] ; 2 uses
  %i.eb = phi <2 x double> [ %i.ce, %.preheader.i ], [ %i.da, %bb.d ] ; 4 uses
  %i.ec = shufflevector <2 x double> %i.dz, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ed = shufflevector <2 x double> %i.dy, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ee = shufflevector <2 x double> %i.dx, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.eh = load float, ptr %i.eg, align 8, !tbaa !58
  %i.ei = load <8 x float>, ptr %i.ef, align 8, !tbaa !58 ; 3 uses
  %i.ej = shufflevector <8 x float> %i.ei, <8 x float> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 1>
  %i.ek = fpext <4 x float> %i.ej to <4 x double> ; 3 uses
  %i.el = shufflevector <8 x float> %i.ei, <8 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 0>
  %i.em = fpext <4 x float> %i.el to <4 x double> ; 3 uses
  %i.en = shufflevector <8 x float> %i.ei, <8 x float> poison, <3 x i32> <i32 5, i32 poison, i32 2>
  %i.eo = insertelement <3 x float> %i.en, float %i.eh, i64 1
  %i.ep = shufflevector <3 x float> %i.eo, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.eq = fpext <4 x float> %i.ep to <4 x double> ; 3 uses
  %i.er = fmul <4 x double> %i.ec, %i.ek
  %i.es = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.em, <4 x double> %i.ed, <4 x double> %i.er)
  %i.et = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.eq, <4 x double> %i.ee, <4 x double> %i.es)
  %i.eu = fptrunc <4 x double> %i.et to <4 x float> ; 2 uses
  %i.ev = extractelement <4 x double> %i.ek, i64 2
  %i.ew = extractelement <4 x double> %i.em, i64 2
  %i.ex = extractelement <4 x double> %i.eq, i64 2
  %i.ey = shufflevector <2 x double> %i.dz, <2 x double> %i.eb, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.ez = shufflevector <4 x double> %i.ek, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.fa = fmul <4 x double> %i.ey, %i.ez
  %i.fb = shufflevector <4 x double> %i.em, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.fc = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fd = insertelement <2 x double> %i.fc, double %.pre-phi87.i, i64 1
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ff = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fb, <4 x double> %i.fe, <4 x double> %i.fa)
  %i.fg = shufflevector <4 x double> %i.eq, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.fh = shufflevector <2 x double> %i.dx, <2 x double> %i.eb, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.fi = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fg, <4 x double> %i.fh, <4 x double> %i.ff)
  %i.fj = fptrunc <4 x double> %i.fi to <4 x float> ; 2 uses
  %i.fk = extractelement <2 x double> %i.eb, i64 0
  %i.fl = fmul double %i.fk, %i.ev
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.ew, double %.pre-phi87.i, double %i.fl)
  %i.fn = extractelement <2 x double> %i.eb, i64 1
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.fn, double %i.fm)
  %i.fp = fptrunc double %i.fo to float           ; 2 uses
end_hunk_0
