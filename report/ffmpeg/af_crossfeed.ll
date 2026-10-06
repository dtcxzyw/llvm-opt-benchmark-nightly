Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_crossfeed?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@filter_frame:bb.a
  %i.hc = getelementptr i8, ptr %i.gq, i64 %i.hb  ; 2 uses
  %i.hd = getelementptr i8, ptr %i.gt, i64 %i.hb  ; 2 uses
  %i.he = shl nuw nsw i64 %wide.trip.count50, 4
  %i.hf = getelementptr i8, ptr %i.h, i64 %i.he   ; 2 uses
  %bound0137 = icmp ult ptr %i.gr, %i.hd
  %bound1138 = icmp ult ptr %i.gu, %i.hc
  %found.conflict139 = and i1 %bound0137, %bound1138
  %bound0140 = icmp ult ptr %i.gr, %i.hf
  %bound1141 = icmp ult ptr %i.h, %i.hc
  %found.conflict142 = and i1 %bound0140, %bound1141
  %conflict.rdx143 = or i1 %found.conflict139, %found.conflict142
  %bound0144 = icmp ult ptr %i.gu, %i.hf
  %bound1145 = icmp ult ptr %i.h, %i.hd
  %found.conflict146 = and i1 %bound0144, %bound1145
  %conflict.rdx147 = or i1 %conflict.rdx143, %found.conflict146
  br i1 %conflict.rdx147, label %.lr.ph31.preheader278, label %vector.ph148

vector.ph148:                                     ; preds = %vector.memcheck136
  %n.vec149 = and i64 %wide.trip.count50, 2147483646 ; 4 uses
  %i.hg = shl nuw nsw i64 %n.vec149, 4
  %i.hh = getelementptr i8, ptr %i.h, i64 %i.hg
  %broadcast.splatinsert150 = insertelement <2 x double> poison, double %i.j, i64 0
  %broadcast.splat151 = shufflevector <2 x double> %broadcast.splatinsert150, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body152, %vector.ph148
  %index153 = phi i64 [ 0, %vector.ph148 ], [ %index.next159, %vector.body152 ] ; 4 uses
  %i.hi = shl i64 %index153, 4
  %next.gep154 = getelementptr i8, ptr %i.h, i64 %i.hi ; 2 uses
  %wide.vec = load <4 x double>, ptr %next.gep154, align 8, !tbaa !41, !alias.scope !119 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec155 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.hj = fadd nsz <2 x double> %strided.vec, %strided.vec155
  %i.hk = fmul nsz <2 x double> %broadcast.splat151, %i.hj
  %i.hl = fmul nsz <2 x double> %i.hk, splat (double 5.000000e-01)
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %index153
  store <2 x double> %i.hl, ptr %i.hm, align 8, !tbaa !41, !alias.scope !120, !noalias !121
  %wide.vec156 = load <4 x double>, ptr %next.gep154, align 8, !tbaa !41, !alias.scope !119 ; 2 uses
  %strided.vec157 = shufflevector <4 x double> %wide.vec156, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec158 = shufflevector <4 x double> %wide.vec156, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.hn = fsub nsz <2 x double> %strided.vec157, %strided.vec158
  %i.ho = fmul nsz <2 x double> %broadcast.splat151, %i.hn
  %i.hp = fmul nsz <2 x double> %i.ho, splat (double 5.000000e-01)
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %index153
  store <2 x double> %i.hp, ptr %i.hq, align 8, !tbaa !41, !alias.scope !122, !noalias !119
  %index.next159 = add nuw i64 %index153, 2       ; 2 uses
  %i.hr = icmp eq i64 %index.next159, %n.vec149
  br i1 %i.hr, label %middle.block160, label %vector.body152, !llvm.loop !71

middle.block160:                                  ; preds = %vector.body152
  %cmp.n161 = icmp eq i64 %n.vec149, %wide.trip.count50
  br i1 %cmp.n161, label %._crit_edge32, label %.lr.ph31.preheader278

.lr.ph31.preheader278:                            ; preds = %vector.memcheck136, %.lr.ph31.preheader, %middle.block160
  %indvars.iv47.ph = phi i64 [ 0, %vector.memcheck136 ], [ 0, %.lr.ph31.preheader ], [ %n.vec149, %middle.block160 ]
  %.119128.ph = phi ptr [ %i.h, %vector.memcheck136 ], [ %i.h, %.lr.ph31.preheader ], [ %i.hh, %middle.block160 ]
  br label %.lr.ph31

._crit_edge32:                                    ; preds = %.lr.ph31, %middle.block160, %bb.n
  %i.hs = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !44 ; 26 uses
  br i1 %i.aj, label %.lr.ph.preheader.i, label %filter_samples.exit213

.lr.ph.preheader.i:                               ; preds = %._crit_edge32
  %wide.trip.count.i = zext nneg i32 %.pre60 to i64 ; 5 uses
  %i.hu = insertelement <2 x double> poison, double %i.s, i64 0
  %i.hv = insertelement <2 x double> %i.hu, double %i.p, i64 1 ; 7 uses
  %i.hw = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter285 = and i64 %wide.trip.count.i, 1
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %i.hy = phi <2 x double> [ %i.gw, %.lr.ph.preheader.i.new ], [ %i.iv, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv.i
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !41 ; 2 uses
  %i.ib = insertelement <2 x double> poison, double %i.ia, i64 0
  %i.ic = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> zeroinitializer
  %i.id = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ic, <2 x double> %i.n, <2 x double> %i.hy) ; 3 uses
  %i.ie = extractelement <2 x double> %i.id, i64 0 ; 2 uses
  %i.if = fmul nsz double %i.ie, %i.v
  %i.ig = insertelement <2 x double> %i.id, double %i.ia, i64 1
  %i.ih = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ii = insertelement <2 x double> %i.ih, double %i.if, i64 1
  %i.ij = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.ig, <2 x double> %i.ii)
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv.i
  store double %i.ie, ptr %i.ik, align 8, !tbaa !41
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv.next.i
  %i.im = load double, ptr %i.il, align 8, !tbaa !41 ; 2 uses
  %i.in = insertelement <2 x double> poison, double %i.im, i64 0
  %i.io = shufflevector <2 x double> %i.in, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ip = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.io, <2 x double> %i.n, <2 x double> %i.ij) ; 3 uses
  %i.iq = extractelement <2 x double> %i.ip, i64 0 ; 2 uses
  %i.ir = fmul nsz double %i.iq, %i.v
  %i.is = insertelement <2 x double> %i.ip, double %i.im, i64 1
  %i.it = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.iu = insertelement <2 x double> %i.it, double %i.ir, i64 1
  %i.iv = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.is, <2 x double> %i.iu) ; 3 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv.next.i
  store double %i.iq, ptr %i.iw, align 8, !tbaa !41
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.preheader.i205.unr-lcssa, label %.lr.ph.i, !llvm.loop !72

.lr.ph.preheader.i205.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod286.not = icmp eq i64 %xtraiter285, 0
  br i1 %lcmp.mod286.not, label %.lr.ph.preheader.i205, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph.preheader.i205.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.lr.ph.preheader.i205.unr-lcssa ] ; 2 uses
  %.epil.init = phi <2 x double> [ %i.gw, %.lr.ph.preheader.i ], [ %i.iv, %.lr.ph.preheader.i205.unr-lcssa ]
  %lcmp.mod288 = trunc i32 %.pre60 to i1
  tail call void @llvm.assume(i1 %lcmp.mod288)
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv.i.epil.init
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !41 ; 2 uses
  %i.iz = insertelement <2 x double> poison, double %i.iy, i64 0
  %i.ja = shufflevector <2 x double> %i.iz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ja, <2 x double> %i.n, <2 x double> %.epil.init) ; 3 uses
  %i.jc = extractelement <2 x double> %i.jb, i64 0 ; 2 uses
  %i.jd = fmul nsz double %i.jc, %i.v
  %i.je = insertelement <2 x double> %i.jb, double %i.iy, i64 1
  %i.jf = shufflevector <2 x double> %i.jb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jg = insertelement <2 x double> %i.jf, double %i.jd, i64 1
  %i.jh = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.je, <2 x double> %i.jg)
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv.i.epil.init
  store double %i.jc, ptr %i.ji, align 8, !tbaa !41
  br label %.lr.ph.preheader.i205

.lr.ph.preheader.i205:                            ; preds = %.lr.ph.preheader.i205.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa277 = phi <2 x double> [ %i.iv, %.lr.ph.preheader.i205.unr-lcssa ], [ %i.jh, %.lr.ph.i.epil.preheader ] ; 3 uses
  store <2 x double> %.lcssa277, ptr %i.gv, align 8, !tbaa !41
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.cd ; 3 uses
  %xtraiter289 = and i64 %wide.trip.count.i, 1
  %i.jk = icmp eq i64 %i.hw, 0
  br i1 %i.jk, label %.lr.ph.i207.epil.preheader, label %.lr.ph.preheader.i205.new

.lr.ph.preheader.i205.new:                        ; preds = %.lr.ph.preheader.i205
  %unroll_iter294 = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i207

.lr.ph.i207:                                      ; preds = %.lr.ph.i207, %.lr.ph.preheader.i205.new
  %indvars.iv.i208 = phi i64 [ 0, %.lr.ph.preheader.i205.new ], [ %indvars.iv.next.i211.1, %.lr.ph.i207 ] ; 4 uses
  %i.jl = phi <2 x double> [ %.lcssa277, %.lr.ph.preheader.i205.new ], [ %i.ki, %.lr.ph.i207 ]
  %niter295 = phi i64 [ 0, %.lr.ph.preheader.i205.new ], [ %niter295.next.1, %.lr.ph.i207 ]
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.i208
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !41 ; 2 uses
  %i.jo = insertelement <2 x double> poison, double %i.jn, i64 0
  %i.jp = shufflevector <2 x double> %i.jo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jq = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> %i.n, <2 x double> %i.jl) ; 3 uses
  %i.jr = extractelement <2 x double> %i.jq, i64 0 ; 2 uses
  %i.js = fmul nsz double %i.jr, %i.v
  %i.jt = insertelement <2 x double> %i.jq, double %i.jn, i64 1
  %i.ju = shufflevector <2 x double> %i.jq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jv = insertelement <2 x double> %i.ju, double %i.js, i64 1
  %i.jw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.jt, <2 x double> %i.jv)
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %indvars.iv.i208
  store double %i.jr, ptr %i.jx, align 8, !tbaa !41
  %indvars.iv.next.i211 = or disjoint i64 %indvars.iv.i208, 1 ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next.i211
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !41 ; 2 uses
  %i.ka = insertelement <2 x double> poison, double %i.jz, i64 0
  %i.kb = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kc = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kb, <2 x double> %i.n, <2 x double> %i.jw) ; 3 uses
  %i.kd = extractelement <2 x double> %i.kc, i64 0 ; 2 uses
  %i.ke = fmul nsz double %i.kd, %i.v
  %i.kf = insertelement <2 x double> %i.kc, double %i.jz, i64 1
  %i.kg = shufflevector <2 x double> %i.kc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.kh = insertelement <2 x double> %i.kg, double %i.ke, i64 1
  %i.ki = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.kf, <2 x double> %i.kh) ; 2 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %indvars.iv.next.i211
  store double %i.kd, ptr %i.kj, align 8, !tbaa !41
  %indvars.iv.next.i211.1 = add nuw nsw i64 %indvars.iv.i208, 2 ; 2 uses
  %niter295.next.1 = add i64 %niter295, 2         ; 2 uses
  %niter295.ncmp.1 = icmp eq i64 %niter295.next.1, %unroll_iter294
  br i1 %niter295.ncmp.1, label %.lr.ph.preheader.i214.unr-lcssa, label %.lr.ph.i207, !llvm.loop !72

filter_samples.exit213:                           ; preds = %._crit_edge32
  store <2 x double> %i.gw, ptr %i.gv, align 8, !tbaa !41
  br label %reverse_samples.exit239

.lr.ph.preheader.i214.unr-lcssa:                  ; preds = %.lr.ph.i207
  %lcmp.mod292.not = icmp eq i64 %xtraiter289, 0
  br i1 %lcmp.mod292.not, label %.lr.ph.preheader.i214, label %.lr.ph.i207.epil.preheader

.lr.ph.i207.epil.preheader:                       ; preds = %.lr.ph.preheader.i214.unr-lcssa, %.lr.ph.preheader.i205
  %indvars.iv.i208.epil.init = phi i64 [ 0, %.lr.ph.preheader.i205 ], [ %indvars.iv.next.i211.1, %.lr.ph.preheader.i214.unr-lcssa ] ; 2 uses
  %.epil.init291 = phi <2 x double> [ %.lcssa277, %.lr.ph.preheader.i205 ], [ %i.ki, %.lr.ph.preheader.i214.unr-lcssa ]
  %lcmp.mod293 = trunc i32 %.pre60 to i1
  tail call void @llvm.assume(i1 %lcmp.mod293)
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.i208.epil.init
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !41
  %i.km = insertelement <2 x double> poison, double %i.kl, i64 0
  %i.kn = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.km, <2 x double> %i.n, <2 x double> %.epil.init291)
  %i.ko = extractelement <2 x double> %i.kn, i64 0
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %indvars.iv.i208.epil.init
  store double %i.ko, ptr %i.kp, align 8, !tbaa !41
  br label %.lr.ph.preheader.i214

.lr.ph.preheader.i214:                            ; preds = %.lr.ph.preheader.i214.unr-lcssa, %.lr.ph.i207.epil.preheader
  %i.kq = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !44 ; 18 uses
  %i.ks = shl nuw i32 %.pre60, 1
  %i.kt = zext i32 %i.ks to i64                   ; 21 uses
  %min.iters.check170 = icmp ult i32 %.pre60, 4
  br i1 %min.iters.check170, label %.lr.ph.i216.preheader, label %vector.memcheck171

vector.memcheck171:                               ; preds = %.lr.ph.preheader.i214
  %i.ku = shl nuw nsw i64 %i.kt, 3                ; 2 uses
  %i.kv = getelementptr i8, ptr %i.kr, i64 %i.ku
  %i.kw = getelementptr i8, ptr %i.ht, i64 %i.ku
  %bound0172 = icmp ult ptr %i.kr, %i.kw
  %bound1173 = icmp ult ptr %i.ht, %i.kv
  %found.conflict174 = and i1 %bound0172, %bound1173
  br i1 %found.conflict174, label %.lr.ph.i216.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %vector.memcheck171
  %n.vec176 = and i64 %i.kt, 2147483644           ; 3 uses
  %i.kx = and i64 %i.kt, 2
  %invariant.gep = getelementptr [8 x i8], ptr %i.ht, i64 %i.kt
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph175
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next182, %vector.body177 ] ; 3 uses
  %i.ky = xor i64 %index178, -1
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ky ; 2 uses
  %i.kz = getelementptr inbounds i8, ptr %gep, i64 -8
  %i.la = getelementptr inbounds i8, ptr %gep, i64 -24
  %wide.load179 = load <2 x double>, ptr %i.kz, align 8, !tbaa !41, !alias.scope !123
  %wide.load180 = load <2 x double>, ptr %i.la, align 8, !tbaa !41, !alias.scope !123
  %reverse = shufflevector <2 x double> %wide.load179, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse181 = shufflevector <2 x double> %wide.load180, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %index178 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  store <2 x double> %reverse, ptr %i.lb, align 8, !tbaa !41, !alias.scope !124, !noalias !123
  store <2 x double> %reverse181, ptr %i.lc, align 8, !tbaa !41, !alias.scope !124, !noalias !123
  %index.next182 = add nuw i64 %index178, 4       ; 2 uses
  %i.ld = icmp eq i64 %index.next182, %n.vec176
  br i1 %i.ld, label %middle.block183, label %vector.body177, !llvm.loop !76

middle.block183:                                  ; preds = %vector.body177
  %cmp.n184 = icmp eq i64 %n.vec176, %i.kt
  br i1 %cmp.n184, label %.lr.ph.i224.preheader, label %.lr.ph.i216.preheader

.lr.ph.i216.preheader:                            ; preds = %vector.memcheck171, %.lr.ph.preheader.i214, %middle.block183
  %indvars.iv11.i.ph = phi i64 [ 0, %vector.memcheck171 ], [ 0, %.lr.ph.preheader.i214 ], [ %n.vec176, %middle.block183 ] ; 3 uses
  %indvars.iv.i217.ph = phi i64 [ %i.kt, %vector.memcheck171 ], [ %i.kt, %.lr.ph.preheader.i214 ], [ %i.kx, %middle.block183 ] ; 2 uses
  %xtraiter296 = and i64 %i.kt, 2                 ; 2 uses
  %lcmp.mod297.not = icmp eq i64 %xtraiter296, 0
  br i1 %lcmp.mod297.not, label %.lr.ph.i216.prol.loopexit, label %.lr.ph.i216.prol

.lr.ph.i216.prol:                                 ; preds = %.lr.ph.i216.preheader, %.lr.ph.i216.prol
  %indvars.iv11.i.prol = phi i64 [ %indvars.iv.next12.i.prol, %.lr.ph.i216.prol ], [ %indvars.iv11.i.ph, %.lr.ph.i216.preheader ] ; 2 uses
  %indvars.iv.i217.prol = phi i64 [ %indvars.iv.next.i218.prol, %.lr.ph.i216.prol ], [ %indvars.iv.i217.ph, %.lr.ph.i216.preheader ]
  %prol.iter298 = phi i64 [ %prol.iter298.next, %.lr.ph.i216.prol ], [ 0, %.lr.ph.i216.preheader ]
  %indvars.iv.next.i218.prol = add nsw i64 %indvars.iv.i217.prol, -1 ; 3 uses
  %i.le = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %indvars.iv.next.i218.prol
  %i.lf = load double, ptr %i.le, align 8, !tbaa !41
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv11.i.prol
  store double %i.lf, ptr %i.lg, align 8, !tbaa !41
  %indvars.iv.next12.i.prol = add nuw nsw i64 %indvars.iv11.i.prol, 1 ; 2 uses
  %prol.iter298.next = add i64 %prol.iter298, 1   ; 2 uses
  %prol.iter298.cmp.not = icmp eq i64 %prol.iter298.next, %xtraiter296
  br i1 %prol.iter298.cmp.not, label %.lr.ph.i216.prol.loopexit, label %.lr.ph.i216.prol, !llvm.loop !77

.lr.ph.i216.prol.loopexit:                        ; preds = %.lr.ph.i216.prol, %.lr.ph.i216.preheader
  %indvars.iv11.i.unr = phi i64 [ %indvars.iv11.i.ph, %.lr.ph.i216.preheader ], [ %indvars.iv.next12.i.prol, %.lr.ph.i216.prol ]
  %indvars.iv.i217.unr = phi i64 [ %indvars.iv.i217.ph, %.lr.ph.i216.preheader ], [ %indvars.iv.next.i218.prol, %.lr.ph.i216.prol ]
  %i.lh = sub nsw i64 %indvars.iv11.i.ph, %i.kt
  %i.li = icmp ugt i64 %i.lh, -4
  br i1 %i.li, label %.lr.ph.i224.preheader, label %.lr.ph.i216

.lr.ph.i216:                                      ; preds = %.lr.ph.i216.prol.loopexit, %.lr.ph.i216
  %indvars.iv11.i = phi i64 [ %indvars.iv.next12.i.3, %.lr.ph.i216 ], [ %indvars.iv11.i.unr, %.lr.ph.i216.prol.loopexit ] ; 5 uses
  %indvars.iv.i217 = phi i64 [ %indvars.iv.next.i218.3, %.lr.ph.i216 ], [ %indvars.iv.i217.unr, %.lr.ph.i216.prol.loopexit ] ; 4 uses
  %i.lj = getelementptr [8 x i8], ptr %i.ht, i64 %indvars.iv.i217
  %i.lk = getelementptr i8, ptr %i.lj, i64 -8
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !41
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv11.i
  store double %i.ll, ptr %i.lm, align 8, !tbaa !41
  %i.ln = getelementptr [8 x i8], ptr %i.ht, i64 %indvars.iv.i217
  %i.lo = getelementptr i8, ptr %i.ln, i64 -16
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !41
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv11.i
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  store double %i.lp, ptr %i.lr, align 8, !tbaa !41
  %i.ls = getelementptr [8 x i8], ptr %i.ht, i64 %indvars.iv.i217
  %i.lt = getelementptr i8, ptr %i.ls, i64 -24
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !41
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv11.i
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  store double %i.lu, ptr %i.lw, align 8, !tbaa !41
  %indvars.iv.next.i218.3 = add nsw i64 %indvars.iv.i217, -4 ; 2 uses
  %i.lx = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %indvars.iv.next.i218.3
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !41
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv11.i
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  store double %i.ly, ptr %i.ma, align 8, !tbaa !41
  %indvars.iv.next12.i.3 = add nuw nsw i64 %indvars.iv11.i, 4 ; 2 uses
  %exitcond.not.i219.3 = icmp eq i64 %indvars.iv.next12.i.3, %i.kt
  br i1 %exitcond.not.i219.3, label %.lr.ph.i224.preheader, label %.lr.ph.i216, !llvm.loop !78

.lr.ph.i224.preheader:                            ; preds = %.lr.ph.i216.prol.loopexit, %.lr.ph.i216, %middle.block183
  br label %.lr.ph.i224

.lr.ph.i224:                                      ; preds = %.lr.ph.i224, %.lr.ph.i224.preheader
  %indvars.iv.i225 = phi i64 [ 0, %.lr.ph.i224.preheader ], [ %indvars.iv.next.i228.1, %.lr.ph.i224 ] ; 3 uses
  %i.mb = phi <2 x double> [ zeroinitializer, %.lr.ph.i224.preheader ], [ %i.my, %.lr.ph.i224 ]
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv.i225 ; 2 uses
  %i.md = load double, ptr %i.mc, align 8, !tbaa !41 ; 2 uses
  %i.me = insertelement <2 x double> poison, double %i.md, i64 0
  %i.mf = shufflevector <2 x double> %i.me, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mg = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mf, <2 x double> %i.n, <2 x double> %i.mb) ; 3 uses
  %i.mh = extractelement <2 x double> %i.mg, i64 0 ; 2 uses
  %i.mi = fmul nsz double %i.mh, %i.v
  %i.mj = insertelement <2 x double> %i.mg, double %i.md, i64 1
  %i.mk = shufflevector <2 x double> %i.mg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ml = insertelement <2 x double> %i.mk, double %i.mi, i64 1
  %i.mm = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.mj, <2 x double> %i.ml)
  store double %i.mh, ptr %i.mc, align 8, !tbaa !41
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv.i225
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 2 uses
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !41 ; 2 uses
  %i.mq = insertelement <2 x double> poison, double %i.mp, i64 0
  %i.mr = shufflevector <2 x double> %i.mq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ms = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mr, <2 x double> %i.n, <2 x double> %i.mm) ; 3 uses
  %i.mt = extractelement <2 x double> %i.ms, i64 0 ; 2 uses
  %i.mu = fmul nsz double %i.mt, %i.v
  %i.mv = insertelement <2 x double> %i.ms, double %i.mp, i64 1
  %i.mw = shufflevector <2 x double> %i.ms, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.mx = insertelement <2 x double> %i.mw, double %i.mu, i64 1
  %i.my = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.mv, <2 x double> %i.mx)
  store double %i.mt, ptr %i.mo, align 8, !tbaa !41
  %indvars.iv.next.i228.1 = add nuw nsw i64 %indvars.iv.i225, 2 ; 2 uses
  %exitcond.not.i229.1 = icmp eq i64 %indvars.iv.next.i228.1, %i.kt
  br i1 %exitcond.not.i229.1, label %.lr.ph.i233.preheader, label %.lr.ph.i224, !llvm.loop !72

.lr.ph.i233.preheader:                            ; preds = %.lr.ph.i224
  %min.iters.check193 = icmp ult i32 %.pre60, 4
  br i1 %min.iters.check193, label %.lr.ph.i233.preheader276, label %vector.memcheck194

vector.memcheck194:                               ; preds = %.lr.ph.i233.preheader
  %i.mz = shl nuw nsw i64 %i.kt, 3                ; 2 uses
  %i.na = getelementptr i8, ptr %i.ht, i64 %i.mz
  %i.nb = getelementptr i8, ptr %i.kr, i64 %i.mz
  %bound0195 = icmp ult ptr %i.ht, %i.nb
  %bound1196 = icmp ult ptr %i.kr, %i.na
  %found.conflict197 = and i1 %bound0195, %bound1196
  br i1 %found.conflict197, label %.lr.ph.i233.preheader276, label %vector.ph198

vector.ph198:                                     ; preds = %vector.memcheck194
  %n.vec199 = and i64 %i.kt, 2147483644           ; 3 uses
  %i.nc = and i64 %i.kt, 2
  %invariant.gep316 = getelementptr [8 x i8], ptr %i.kr, i64 %i.kt
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph198
  %index201 = phi i64 [ 0, %vector.ph198 ], [ %index.next206, %vector.body200 ] ; 3 uses
  %i.nd = xor i64 %index201, -1
  %gep317 = getelementptr [8 x i8], ptr %invariant.gep316, i64 %i.nd ; 2 uses
  %i.ne = getelementptr inbounds i8, ptr %gep317, i64 -8
  %i.nf = getelementptr inbounds i8, ptr %gep317, i64 -24
  %wide.load202 = load <2 x double>, ptr %i.ne, align 8, !tbaa !41, !alias.scope !125
  %wide.load203 = load <2 x double>, ptr %i.nf, align 8, !tbaa !41, !alias.scope !125
  %reverse204 = shufflevector <2 x double> %wide.load202, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse205 = shufflevector <2 x double> %wide.load203, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %index201 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  store <2 x double> %reverse204, ptr %i.ng, align 8, !tbaa !41, !alias.scope !126, !noalias !125
  store <2 x double> %reverse205, ptr %i.nh, align 8, !tbaa !41, !alias.scope !126, !noalias !125
  %index.next206 = add nuw i64 %index201, 4       ; 2 uses
  %i.ni = icmp eq i64 %index.next206, %n.vec199
  br i1 %i.ni, label %middle.block207, label %vector.body200, !llvm.loop !82

middle.block207:                                  ; preds = %vector.body200
  %cmp.n208 = icmp eq i64 %n.vec199, %i.kt
  br i1 %cmp.n208, label %reverse_samples.exit239, label %.lr.ph.i233.preheader276

.lr.ph.i233.preheader276:                         ; preds = %vector.memcheck194, %.lr.ph.i233.preheader, %middle.block207
  %indvars.iv11.i234.ph = phi i64 [ 0, %vector.memcheck194 ], [ 0, %.lr.ph.i233.preheader ], [ %n.vec199, %middle.block207 ] ; 3 uses
  %indvars.iv.i235.ph = phi i64 [ %i.kt, %vector.memcheck194 ], [ %i.kt, %.lr.ph.i233.preheader ], [ %i.nc, %middle.block207 ] ; 2 uses
  %xtraiter299 = and i64 %i.kt, 2                 ; 2 uses
  %lcmp.mod300.not = icmp eq i64 %xtraiter299, 0
  br i1 %lcmp.mod300.not, label %.lr.ph.i233.prol.loopexit, label %.lr.ph.i233.prol

.lr.ph.i233.prol:                                 ; preds = %.lr.ph.i233.preheader276, %.lr.ph.i233.prol
  %indvars.iv11.i234.prol = phi i64 [ %indvars.iv.next12.i237.prol, %.lr.ph.i233.prol ], [ %indvars.iv11.i234.ph, %.lr.ph.i233.preheader276 ] ; 2 uses
  %indvars.iv.i235.prol = phi i64 [ %indvars.iv.next.i236.prol, %.lr.ph.i233.prol ], [ %indvars.iv.i235.ph, %.lr.ph.i233.preheader276 ]
  %prol.iter301 = phi i64 [ %prol.iter301.next, %.lr.ph.i233.prol ], [ 0, %.lr.ph.i233.preheader276 ]
  %indvars.iv.next.i236.prol = add nsw i64 %indvars.iv.i235.prol, -1 ; 3 uses
  %i.nj = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %indvars.iv.next.i236.prol
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !41
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv11.i234.prol
  store double %i.nk, ptr %i.nl, align 8, !tbaa !41
end_hunk_0
