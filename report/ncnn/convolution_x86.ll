Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86?download=true
inline.NumInlined: 404
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 220
begin_hunk_0_@_ZN4ncnnL40convolution_im2col_gemm_transform_kernelERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.il = lshr i32 %i.ik, 2                       ; 2 uses
  %i.im = add nuw nsw i32 %i.il, 1                ; 2 uses
  %i.in = icmp eq i32 %i.il, 0
  %unroll_iter = and i32 %i.im, 2147483646
  %i.io = and i32 %i.ik, 4
  %lcmp.mod.not.not = icmp eq i32 %i.io, 0
  %lcmp.mod248 = trunc i32 %i.im to i1
  %i.ip = or disjoint i32 %i.ht, 1
  %i.iq = call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 %i.ip)
  %i.ir = xor i32 %i.ht, -1
  %i.is = add nsw i32 %i.iq, %i.ir                ; 2 uses
  %i.it = zext i32 %i.is to i64
  %i.iu = add nuw nsw i64 %i.it, 1                ; 2 uses
  %min.iters.check152 = icmp ult i32 %i.is, 9
  %n.vec154 = and i64 %i.iu, 8589934588           ; 5 uses
  %i.iv = shl nuw nsw i64 %n.vec154, 3
  %i.iw = trunc i64 %n.vec154 to i32
  %i.ix = add i32 %i.ht, %i.iw
  %i.iy = shl nuw nsw i64 %n.vec154, 2            ; 2 uses
  %cmp.n168 = icmp eq i64 %i.iu, %n.vec154
  br label %.lr.ph.us72.i

.lr.ph.us72.i:                                    ; preds = %._crit_edge.us74.i, %.lr.ph.us72.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us74.i ], [ 0, %.lr.ph.us72.preheader.i ] ; 2 uses
  %indvars.iv145.i = phi i64 [ %indvars.iv.next146.i, %._crit_edge.us74.i ], [ %i.hu, %.lr.ph.us72.preheader.i ] ; 2 uses
  %.368.us.i = phi ptr [ %.5.lcssa.us.i, %._crit_edge.us74.i ], [ %.0139.lcssa.i, %.lr.ph.us72.preheader.i ] ; 4 uses
  %.368.us.i143 = ptrtoaddr ptr %.368.us.i to i64
  %i.iz = mul i64 %i.ig, %indvar                  ; 2 uses
  %i.ja = load ptr, ptr %8, align 8, !tbaa !34    ; 4 uses
  %i.jb = add nsw i64 %indvars.iv145.i, %i.z      ; 2 uses
  %i.jc = mul nsw i64 %i.jb, %i.hv
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.jc
  %i.je = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.hr ; 2 uses
  %i.jf = add nsw i64 %i.jb, 1
  %i.jg = mul nsw i64 %i.jf, %i.hv
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.jg
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.jh, i64 %i.hr ; 2 uses
  br i1 %i.in, label %.epil.preheader, label %.lr.ph.us72.i.new

.lr.ph.us72.i.new:                                ; preds = %.lr.ph.us72.i, %.lr.ph.us72.i.new
  %indvar144 = phi i64 [ %indvar.next145.1, %.lr.ph.us72.i.new ], [ 0, %.lr.ph.us72.i ] ; 2 uses
  %.457.us.i = phi ptr [ %i.jw, %.lr.ph.us72.i.new ], [ %.368.us.i, %.lr.ph.us72.i ] ; 5 uses
  %.014855.us.i = phi ptr [ %i.jy, %.lr.ph.us72.i.new ], [ %i.ji, %.lr.ph.us72.i ] ; 3 uses
  %.015054.us.i = phi ptr [ %i.jx, %.lr.ph.us72.i.new ], [ %i.je, %.lr.ph.us72.i ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph.us72.i.new ], [ 0, %.lr.ph.us72.i ]
  %i.jj = load <4 x float>, ptr %.015054.us.i, align 1, !tbaa !108 ; 2 uses
  %i.jk = load <4 x float>, ptr %.014855.us.i, align 1, !tbaa !108 ; 2 uses
  %i.jl = shufflevector <4 x float> %i.jj, <4 x float> %i.jk, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.jm = shufflevector <4 x float> %i.jj, <4 x float> %i.jk, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.jl, ptr %.457.us.i, align 16, !tbaa !108
  %i.jn = getelementptr inbounds nuw i8, ptr %.457.us.i, i64 16
  store <4 x float> %i.jm, ptr %i.jn, align 16, !tbaa !108
  %i.jo = getelementptr i8, ptr %.457.us.i, i64 32
  %i.jp = getelementptr i8, ptr %.015054.us.i, i64 16
  %i.jq = getelementptr i8, ptr %.014855.us.i, i64 16
  %i.jr = load <4 x float>, ptr %i.jp, align 1, !tbaa !108 ; 2 uses
  %i.js = load <4 x float>, ptr %i.jq, align 1, !tbaa !108 ; 2 uses
  %i.jt = shufflevector <4 x float> %i.jr, <4 x float> %i.js, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ju = shufflevector <4 x float> %i.jr, <4 x float> %i.js, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.jt, ptr %i.jo, align 16, !tbaa !108
  %i.jv = getelementptr i8, ptr %.457.us.i, i64 48
  store <4 x float> %i.ju, ptr %i.jv, align 16, !tbaa !108
  %i.jw = getelementptr i8, ptr %.457.us.i, i64 64 ; 3 uses
  %i.jx = getelementptr i8, ptr %.015054.us.i, i64 32 ; 3 uses
  %i.jy = getelementptr i8, ptr %.014855.us.i, i64 32 ; 3 uses
  %indvar.next145.1 = add nuw nsw i64 %indvar144, 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %..preheader2_crit_edge.us.i.unr-lcssa, label %.lr.ph.us72.i.new, !llvm.loop !534

.lr.ph65.us.i:                                    ; preds = %.lr.ph65.us.i.preheader227, %.lr.ph65.us.i
  %.564.us.i = phi ptr [ %i.kc, %.lr.ph65.us.i ], [ %.564.us.i.ph, %.lr.ph65.us.i.preheader227 ] ; 3 uses
  %.114763.us.i = phi i32 [ %i.kf, %.lr.ph65.us.i ], [ %.114763.us.i.ph, %.lr.ph65.us.i.preheader227 ]
  %.114962.us.i = phi ptr [ %i.ke, %.lr.ph65.us.i ], [ %.114962.us.i.ph, %.lr.ph65.us.i.preheader227 ] ; 2 uses
  %.115161.us.i = phi ptr [ %i.kd, %.lr.ph65.us.i ], [ %.115161.us.i.ph, %.lr.ph65.us.i.preheader227 ] ; 2 uses
  %i.jz = load float, ptr %.115161.us.i, align 4, !tbaa !53
  store float %i.jz, ptr %.564.us.i, align 4, !tbaa !53
  %i.ka = load float, ptr %.114962.us.i, align 4, !tbaa !53
  %i.kb = getelementptr inbounds nuw i8, ptr %.564.us.i, i64 4
  store float %i.ka, ptr %i.kb, align 4, !tbaa !53
  %i.kc = getelementptr inbounds nuw i8, ptr %.564.us.i, i64 8 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.115161.us.i, i64 4
  %i.ke = getelementptr inbounds nuw i8, ptr %.114962.us.i, i64 4
  %i.kf = add nuw nsw i32 %.114763.us.i, 1        ; 2 uses
  %i.kg = icmp slt i32 %i.kf, %.sroa.speculated
  br i1 %i.kg, label %.lr.ph65.us.i, label %._crit_edge.us74.i, !llvm.loop !535

._crit_edge.us74.i:                               ; preds = %.lr.ph65.us.i, %middle.block167, %..preheader2_crit_edge.us.i
  %.5.lcssa.us.i = phi ptr [ %.lcssa238, %..preheader2_crit_edge.us.i ], [ %i.le, %middle.block167 ], [ %i.kc, %.lr.ph65.us.i ] ; 2 uses
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 2 ; 3 uses
  %i.kh = icmp slt i64 %indvars.iv.next146.i, %invariant.op.i
  %indvar.next = add i64 %indvar, 1
  br i1 %i.kh, label %.lr.ph.us72.i, label %.preheader1.loopexit.i, !llvm.loop !536

..preheader2_crit_edge.us.i.unr-lcssa:            ; preds = %.lr.ph.us72.i.new
  %indvar.next145 = or disjoint i64 %indvar144, 1
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %..preheader2_crit_edge.us.i

.epil.preheader:                                  ; preds = %..preheader2_crit_edge.us.i.unr-lcssa, %.lr.ph.us72.i
  %indvar144.epil.init = phi i64 [ 0, %.lr.ph.us72.i ], [ %indvar.next145.1, %..preheader2_crit_edge.us.i.unr-lcssa ]
  %.457.us.i.epil.init = phi ptr [ %.368.us.i, %.lr.ph.us72.i ], [ %i.jw, %..preheader2_crit_edge.us.i.unr-lcssa ] ; 3 uses
  %.014855.us.i.epil.init = phi ptr [ %i.ji, %.lr.ph.us72.i ], [ %i.jy, %..preheader2_crit_edge.us.i.unr-lcssa ] ; 2 uses
  %.015054.us.i.epil.init = phi ptr [ %i.je, %.lr.ph.us72.i ], [ %i.jx, %..preheader2_crit_edge.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod248)
  %i.ki = load <4 x float>, ptr %.015054.us.i.epil.init, align 1, !tbaa !108 ; 2 uses
  %i.kj = load <4 x float>, ptr %.014855.us.i.epil.init, align 1, !tbaa !108 ; 2 uses
  %i.kk = shufflevector <4 x float> %i.ki, <4 x float> %i.kj, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.kl = shufflevector <4 x float> %i.ki, <4 x float> %i.kj, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.kk, ptr %.457.us.i.epil.init, align 16, !tbaa !108
  %i.km = getelementptr inbounds nuw i8, ptr %.457.us.i.epil.init, i64 16
  store <4 x float> %i.kl, ptr %i.km, align 16, !tbaa !108
  %i.kn = getelementptr i8, ptr %.457.us.i.epil.init, i64 32
  %i.ko = getelementptr i8, ptr %.015054.us.i.epil.init, i64 16
  %i.kp = getelementptr i8, ptr %.014855.us.i.epil.init, i64 16
  br label %..preheader2_crit_edge.us.i

..preheader2_crit_edge.us.i:                      ; preds = %..preheader2_crit_edge.us.i.unr-lcssa, %.epil.preheader
  %indvar144.lcssa = phi i64 [ %indvar.next145, %..preheader2_crit_edge.us.i.unr-lcssa ], [ %indvar144.epil.init, %.epil.preheader ]
  %.lcssa238 = phi ptr [ %i.jw, %..preheader2_crit_edge.us.i.unr-lcssa ], [ %i.kn, %.epil.preheader ] ; 9 uses
  %.lcssa237 = phi ptr [ %i.jx, %..preheader2_crit_edge.us.i.unr-lcssa ], [ %i.ko, %.epil.preheader ] ; 5 uses
  %.lcssa236 = phi ptr [ %i.jy, %..preheader2_crit_edge.us.i.unr-lcssa ], [ %i.kp, %.epil.preheader ] ; 5 uses
  br i1 %.not61, label %._crit_edge.us74.i, label %.lr.ph65.us.i.preheader

.lr.ph65.us.i.preheader:                          ; preds = %..preheader2_crit_edge.us.i
  br i1 %min.iters.check152, label %.lr.ph65.us.i.preheader227, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph65.us.i.preheader
  %i.kq = ptrtoaddr ptr %.lcssa238 to i64
  %reass.sub225 = sub i64 %i.kq, %.368.us.i143
  %i.kr = getelementptr i8, ptr %.368.us.i, i64 %i.ia
  %i.ks = getelementptr i8, ptr %i.kr, i64 %reass.sub225
  %scevgep = getelementptr i8, ptr %i.ks, i64 8   ; 2 uses
  %i.kt = shl nuw nsw i64 %indvar144.lcssa, 4     ; 2 uses
  %i.ku = getelementptr i8, ptr %i.ja, i64 %i.kt
  %i.kv = getelementptr i8, ptr %i.ku, i64 %i.id
  %i.kw = getelementptr i8, ptr %i.kv, i64 20
  %i.kx = getelementptr i8, ptr %i.kw, i64 %i.ie
  %i.ky = getelementptr i8, ptr %i.kx, i64 %i.if
  %scevgep146 = getelementptr i8, ptr %i.ky, i64 %i.iz
  %i.kz = getelementptr i8, ptr %i.ja, i64 %i.kt
  %i.la = getelementptr i8, ptr %i.kz, i64 %i.ij
  %i.lb = getelementptr i8, ptr %i.la, i64 20
  %i.lc = getelementptr i8, ptr %i.lb, i64 %i.ie
  %i.ld = getelementptr i8, ptr %i.lc, i64 %i.if
  %scevgep147 = getelementptr i8, ptr %i.ld, i64 %i.iz
  %bound0 = icmp ult ptr %.lcssa238, %scevgep146
  %bound1 = icmp ult ptr %.lcssa236, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0148 = icmp ult ptr %.lcssa238, %scevgep147
  %bound1149 = icmp ult ptr %.lcssa237, %scevgep
  %found.conflict150 = and i1 %bound0148, %bound1149
  %conflict.rdx = or i1 %found.conflict, %found.conflict150
  br i1 %conflict.rdx, label %.lr.ph65.us.i.preheader227, label %vector.ph153

vector.ph153:                                     ; preds = %vector.memcheck142
  %i.le = getelementptr i8, ptr %.lcssa238, i64 %i.iv ; 2 uses
  %i.lf = getelementptr i8, ptr %.lcssa236, i64 %i.iy
  %i.lg = getelementptr i8, ptr %.lcssa237, i64 %i.iy
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph153
  %index156 = phi i64 [ 0, %vector.ph153 ], [ %index.next166, %vector.body155 ] ; 3 uses
  %i.lh = shl i64 %index156, 3                    ; 2 uses
  %next.gep157 = getelementptr i8, ptr %.lcssa238, i64 %i.lh
  %i.li = getelementptr i8, ptr %.lcssa238, i64 %i.lh
  %next.gep158 = getelementptr i8, ptr %i.li, i64 16
  %i.lj = shl i64 %index156, 2                    ; 2 uses
  %next.gep159 = getelementptr i8, ptr %.lcssa236, i64 %i.lj ; 2 uses
  %next.gep160 = getelementptr i8, ptr %.lcssa237, i64 %i.lj ; 2 uses
  %i.lk = getelementptr i8, ptr %next.gep160, i64 8
  %wide.load161 = load <2 x float>, ptr %next.gep160, align 4, !tbaa !53, !alias.scope !556
  %wide.load162 = load <2 x float>, ptr %i.lk, align 4, !tbaa !53, !alias.scope !556
  %i.ll = getelementptr i8, ptr %next.gep159, i64 8
  %wide.load163 = load <2 x float>, ptr %next.gep159, align 4, !tbaa !53, !alias.scope !557
  %wide.load164 = load <2 x float>, ptr %i.ll, align 4, !tbaa !53, !alias.scope !557
  %interleaved.vec = shufflevector <2 x float> %wide.load161, <2 x float> %wide.load163, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec, ptr %next.gep157, align 4, !tbaa !53, !alias.scope !558, !noalias !559
  %interleaved.vec165 = shufflevector <2 x float> %wide.load162, <2 x float> %wide.load164, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec165, ptr %next.gep158, align 4, !tbaa !53, !alias.scope !558, !noalias !559
  %index.next166 = add nuw i64 %index156, 4       ; 2 uses
  %i.lm = icmp eq i64 %index.next166, %n.vec154
  br i1 %i.lm, label %middle.block167, label %vector.body155, !llvm.loop !541

middle.block167:                                  ; preds = %vector.body155
  br i1 %cmp.n168, label %._crit_edge.us74.i, label %.lr.ph65.us.i.preheader227

.lr.ph65.us.i.preheader227:                       ; preds = %vector.memcheck142, %.lr.ph65.us.i.preheader, %middle.block167
  %.564.us.i.ph = phi ptr [ %.lcssa238, %vector.memcheck142 ], [ %.lcssa238, %.lr.ph65.us.i.preheader ], [ %i.le, %middle.block167 ]
  %.114763.us.i.ph = phi i32 [ %i.ht, %vector.memcheck142 ], [ %i.ht, %.lr.ph65.us.i.preheader ], [ %i.ix, %middle.block167 ]
  %.114962.us.i.ph = phi ptr [ %.lcssa236, %vector.memcheck142 ], [ %.lcssa236, %.lr.ph65.us.i.preheader ], [ %i.lf, %middle.block167 ]
  %.115161.us.i.ph = phi ptr [ %.lcssa237, %vector.memcheck142 ], [ %.lcssa237, %.lr.ph65.us.i.preheader ], [ %i.lg, %middle.block167 ]
  br label %.lr.ph65.us.i

.lr.ph69.split.i:                                 ; preds = %.lr.ph69.i
  %i.ln = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.ln, label %.lr.ph69.split.split.us.i, label %.preheader2.preheader.i

.preheader2.preheader.i:                          ; preds = %.lr.ph69.split.i
  %i.lo = sub i32 %i.ab, %.0141.lcssa.i
  %i.lp = and i32 %i.lo, -2
  %i.lq = add nsw i32 %.0141.lcssa.i, 2
  %i.lr = add i32 %i.lq, %i.lp
  br label %.preheader1.i

.lr.ph69.split.split.us.i:                        ; preds = %.lr.ph69.split.i
  %i.ls = load ptr, ptr %8, align 8, !tbaa !34
  %invariant.gep92.i = getelementptr [4 x i8], ptr %i.ls, i64 %i.hr ; 2 uses
  %i.lt = sext i32 %.0141.lcssa.i to i64
  %i.lu = sext i32 %i.bg to i64                   ; 2 uses
  %exitcond141.not.i = icmp eq i32 %.sroa.speculated, 1
  %exitcond141.not.i.1 = icmp eq i32 %.sroa.speculated, 2
  br label %.preheader2.us77.i

.preheader2.us77.i:                               ; preds = %._crit_edge.us85.i, %.lr.ph69.split.split.us.i
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i, %._crit_edge.us85.i ], [ %i.lt, %.lr.ph69.split.split.us.i ] ; 2 uses
  %.368.us78.i = phi ptr [ %.lcssa235, %._crit_edge.us85.i ], [ %.0139.lcssa.i, %.lr.ph69.split.split.us.i ] ; 7 uses
  %i.lv = add nsw i64 %indvars.iv142.i, %i.z      ; 2 uses
  %i.lw = add nsw i64 %i.lv, 1
  %i.lx = mul nsw i64 %i.lw, %i.lu
  %gep95.i = getelementptr [4 x i8], ptr %invariant.gep92.i, i64 %i.lx ; 3 uses
  %i.ly = mul nsw i64 %i.lv, %i.lu
  %gep93.i = getelementptr [4 x i8], ptr %invariant.gep92.i, i64 %i.ly ; 3 uses
  %i.lz = load float, ptr %gep93.i, align 4, !tbaa !53
  store float %i.lz, ptr %.368.us78.i, align 4, !tbaa !53
  %i.ma = load float, ptr %gep95.i, align 4, !tbaa !53
  %i.mb = getelementptr inbounds nuw i8, ptr %.368.us78.i, i64 4
  store float %i.ma, ptr %i.mb, align 4, !tbaa !53
  %i.mc = getelementptr inbounds nuw i8, ptr %.368.us78.i, i64 8 ; 2 uses
  br i1 %exitcond141.not.i, label %._crit_edge.us85.i, label %bb.f

bb.f:                                             ; preds = %.preheader2.us77.i
  %i.md = getelementptr inbounds nuw i8, ptr %gep95.i, i64 4
  %i.me = getelementptr inbounds nuw i8, ptr %gep93.i, i64 4
  %i.mf = load float, ptr %i.me, align 4, !tbaa !53
  store float %i.mf, ptr %i.mc, align 4, !tbaa !53
  %i.mg = load float, ptr %i.md, align 4, !tbaa !53
  %i.mh = getelementptr inbounds nuw i8, ptr %.368.us78.i, i64 12
  store float %i.mg, ptr %i.mh, align 4, !tbaa !53
  %i.mi = getelementptr inbounds nuw i8, ptr %.368.us78.i, i64 16 ; 2 uses
  br i1 %exitcond141.not.i.1, label %._crit_edge.us85.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.mj = getelementptr inbounds nuw i8, ptr %gep95.i, i64 8
  %i.mk = getelementptr inbounds nuw i8, ptr %gep93.i, i64 8
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !53
  store float %i.ml, ptr %i.mi, align 4, !tbaa !53
  %i.mm = load float, ptr %i.mj, align 4, !tbaa !53
  %i.mn = getelementptr inbounds nuw i8, ptr %.368.us78.i, i64 20
  store float %i.mm, ptr %i.mn, align 4, !tbaa !53
  %i.mo = getelementptr inbounds nuw i8, ptr %.368.us78.i, i64 24
  br label %._crit_edge.us85.i

._crit_edge.us85.i:                               ; preds = %bb.g, %bb.f, %.preheader2.us77.i
  %.lcssa235 = phi ptr [ %i.mc, %.preheader2.us77.i ], [ %i.mi, %bb.f ], [ %i.mo, %bb.g ] ; 2 uses
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 2 ; 3 uses
  %i.mp = icmp slt i64 %indvars.iv.next143.i, %invariant.op.i
  br i1 %i.mp, label %.preheader2.us77.i, label %.preheader1.loopexit110.i, !llvm.loop !536

.preheader1.loopexit.i:                           ; preds = %._crit_edge.us74.i
  %i.mq = trunc nsw i64 %indvars.iv.next146.i to i32
  br label %.preheader1.i

.preheader1.loopexit110.i:                        ; preds = %._crit_edge.us85.i
  %i.mr = trunc nsw i64 %indvars.iv.next143.i to i32
  br label %.preheader1.i

.preheader1.i:                                    ; preds = %.preheader1.loopexit110.i, %.preheader1.loopexit.i, %.preheader2.preheader.i, %.preheader3.i
  %.1142.lcssa.i = phi i32 [ %.0141.lcssa.i, %.preheader3.i ], [ %i.mr, %.preheader1.loopexit110.i ], [ %i.mq, %.preheader1.loopexit.i ], [ %i.lr, %.preheader2.preheader.i ] ; 2 uses
  %.3.lcssa.i = phi ptr [ %.0139.lcssa.i, %.preheader3.i ], [ %.lcssa235, %.preheader1.loopexit110.i ], [ %.5.lcssa.us.i, %.preheader1.loopexit.i ], [ %.0139.lcssa.i, %.preheader2.preheader.i ]
  %i.ms = icmp slt i32 %.1142.lcssa.i, %.sroa.speculated57
  br i1 %i.ms, label %.lr.ph108.i, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph108.i:                                      ; preds = %.preheader1.i
  %i.mt = sext i32 %.076 to i64
  %i.mu = icmp sgt i32 %.sroa.speculated, 3
  %i.mv = and i32 %.sroa.speculated, -4           ; 2 uses
  %i.mw = sext i32 %.1142.lcssa.i to i64
  %i.mx = sext i32 %i.bg to i64
  %i.my = add i32 %.sroa.speculated, -4           ; 2 uses
  %i.mz = lshr i32 %i.my, 2
  %i.na = add nuw nsw i32 %i.mz, 1                ; 2 uses
  %xtraiter249 = and i32 %i.na, 3                 ; 3 uses
  %i.nb = icmp ult i32 %i.my, 12
  %unroll_iter254 = and i32 %i.na, 2147483644
  %lcmp.mod250.not = icmp eq i32 %xtraiter249, 0
  %lcmp.mod253 = icmp ne i32 %xtraiter249, 0
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %.lr.ph108.i
  %indvars.iv149.i = phi i64 [ %i.mw, %.lr.ph108.i ], [ %indvars.iv.next150.i, %._crit_edge.i ] ; 2 uses
  %.6107.i = phi ptr [ %.3.lcssa.i, %.lr.ph108.i ], [ %.8.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.nc = load ptr, ptr %8, align 8, !tbaa !34
  %i.nd = add nsw i64 %indvars.iv149.i, %i.z
  %i.ne = mul nsw i64 %i.nd, %i.mx
  %i.nf = getelementptr inbounds [4 x i8], ptr %i.nc, i64 %i.ne
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.nf, i64 %i.mt ; 3 uses
  br i1 %i.mu, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %bb.h
  br i1 %i.nb, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  br i1 %lcmp.mod250.not, label %.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.013797.i.epil.init = phi ptr [ %i.ng, %.lr.ph.i.preheader ], [ %i.or, %.preheader.i.loopexit.unr-lcssa ]
  %.796.i.epil.init = phi ptr [ %.6107.i, %.lr.ph.i.preheader ], [ %i.oq, %.preheader.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod253)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.013797.i.epil = phi ptr [ %i.nj, %.lr.ph.i.epil ], [ %.013797.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.796.i.epil = phi ptr [ %i.ni, %.lr.ph.i.epil ], [ %.796.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.nh = load <4 x float>, ptr %.013797.i.epil, align 1, !tbaa !108
  store <4 x float> %i.nh, ptr %.796.i.epil, align 1, !tbaa !108
  %i.ni = getelementptr inbounds nuw i8, ptr %.796.i.epil, i64 16 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.013797.i.epil, i64 16 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter249
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph.i.epil, !llvm.loop !542

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.h
  %.7.lcssa.i = phi ptr [ %.6107.i, %bb.h ], [ %i.oq, %.preheader.i.loopexit.unr-lcssa ], [ %i.ni, %.lr.ph.i.epil ] ; 5 uses
  %.0137.lcssa.i = phi ptr [ %i.ng, %bb.h ], [ %i.or, %.preheader.i.loopexit.unr-lcssa ], [ %i.nj, %.lr.ph.i.epil ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.mv, %.lr.ph.i.epil ], [ %i.mv, %.preheader.i.loopexit.unr-lcssa ] ; 4 uses
  %i.nk = icmp slt i32 %.0.lcssa.i, %.sroa.speculated
  br i1 %i.nk, label %.lr.ph104.i.preheader, label %._crit_edge.i

.lr.ph104.i.preheader:                            ; preds = %.preheader.i
  %.0137.lcssa.i137 = ptrtoaddr ptr %.0137.lcssa.i to i64
  %.7.lcssa.i136 = ptrtoaddr ptr %.7.lcssa.i to i64
  %i.nl = xor i32 %.0.lcssa.i, -1
  %i.nm = add i32 %.sroa.speculated, %i.nl        ; 2 uses
  %i.nn = zext i32 %i.nm to i64
  %i.no = add nuw nsw i64 %i.nn, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.nm, 7
  %i.np = sub i64 %.0137.lcssa.i137, %.7.lcssa.i136
  %diff.check = icmp ugt i64 %i.np, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph104.i.preheader226, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph104.i.preheader
  %n.vec = and i64 %i.no, 8589934584              ; 4 uses
  %i.nq = trunc i64 %n.vec to i32
  %i.nr = add i32 %.0.lcssa.i, %i.nq
  %i.ns = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.nt = getelementptr i8, ptr %.0137.lcssa.i, i64 %i.ns
  %i.nu = getelementptr i8, ptr %.7.lcssa.i, i64 %i.ns ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nv = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0137.lcssa.i, i64 %i.nv ; 2 uses
  %next.gep138 = getelementptr i8, ptr %.7.lcssa.i, i64 %i.nv ; 2 uses
  %i.nw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !53
  %wide.load139 = load <4 x float>, ptr %i.nw, align 4, !tbaa !53
  %i.nx = getelementptr i8, ptr %next.gep138, i64 16
  store <4 x float> %wide.load, ptr %next.gep138, align 4, !tbaa !53
  store <4 x float> %wide.load139, ptr %i.nx, align 4, !tbaa !53
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ny = icmp eq i64 %index.next, %n.vec
  br i1 %i.ny, label %middle.block, label %vector.body, !llvm.loop !543

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.no, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph104.i.preheader226

.lr.ph104.i.preheader226:                         ; preds = %.lr.ph104.i.preheader, %middle.block
  %.1103.i.ph = phi i32 [ %.0.lcssa.i, %.lr.ph104.i.preheader ], [ %i.nr, %middle.block ] ; 4 uses
  %.1138102.i.ph = phi ptr [ %.0137.lcssa.i, %.lr.ph104.i.preheader ], [ %i.nt, %middle.block ] ; 2 uses
  %.8101.i.ph = phi ptr [ %.7.lcssa.i, %.lr.ph104.i.preheader ], [ %i.nu, %middle.block ] ; 2 uses
  %i.nz = sub i32 %.sroa.speculated, %.1103.i.ph
  %xtraiter256 = and i32 %i.nz, 7                 ; 2 uses
  %lcmp.mod257.not = icmp eq i32 %xtraiter256, 0
  br i1 %lcmp.mod257.not, label %.lr.ph104.i.prol.loopexit, label %.lr.ph104.i.prol

.lr.ph104.i.prol:                                 ; preds = %.lr.ph104.i.preheader226, %.lr.ph104.i.prol
  %.1103.i.prol = phi i32 [ %i.od, %.lr.ph104.i.prol ], [ %.1103.i.ph, %.lr.ph104.i.preheader226 ]
  %.1138102.i.prol = phi ptr [ %i.oc, %.lr.ph104.i.prol ], [ %.1138102.i.ph, %.lr.ph104.i.preheader226 ] ; 2 uses
  %.8101.i.prol = phi ptr [ %i.ob, %.lr.ph104.i.prol ], [ %.8101.i.ph, %.lr.ph104.i.preheader226 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph104.i.prol ], [ 0, %.lr.ph104.i.preheader226 ]
  %i.oa = load float, ptr %.1138102.i.prol, align 4, !tbaa !53
  store float %i.oa, ptr %.8101.i.prol, align 4, !tbaa !53
  %i.ob = getelementptr inbounds nuw i8, ptr %.8101.i.prol, i64 4 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.1138102.i.prol, i64 4 ; 2 uses
  %i.od = add nuw nsw i32 %.1103.i.prol, 1        ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter256
  br i1 %prol.iter.cmp.not, label %.lr.ph104.i.prol.loopexit, label %.lr.ph104.i.prol, !llvm.loop !544

.lr.ph104.i.prol.loopexit:                        ; preds = %.lr.ph104.i.prol, %.lr.ph104.i.preheader226
  %.lcssa242.unr = phi ptr [ poison, %.lr.ph104.i.preheader226 ], [ %i.ob, %.lr.ph104.i.prol ]
  %.1103.i.unr = phi i32 [ %.1103.i.ph, %.lr.ph104.i.preheader226 ], [ %i.od, %.lr.ph104.i.prol ]
  %.1138102.i.unr = phi ptr [ %.1138102.i.ph, %.lr.ph104.i.preheader226 ], [ %i.oc, %.lr.ph104.i.prol ]
  %.8101.i.unr = phi ptr [ %.8101.i.ph, %.lr.ph104.i.preheader226 ], [ %i.ob, %.lr.ph104.i.prol ]
  %i.oe = sub i32 %.1103.i.ph, %.sroa.speculated
  %i.of = icmp ugt i32 %i.oe, -8
  br i1 %i.of, label %._crit_edge.i, label %.lr.ph104.i
end_hunk_0
begin_hunk_1_@_ZN4ncnnL20conv3x3s1_winograd23ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.3:bb.a
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %_ZN4ncnn3MatD2Ev.exit337.us.i, !llvm.loop !768

._crit_edge.us.i:                                 ; preds = %bb.r
  %indvars.iv.next136.i = add nuw nsw i64 %indvars.iv135.i, 4 ; 3 uses
  %i.gs = or disjoint i64 %indvars.iv.next136.i, 3
  %i.gt = icmp samesign ult i64 %i.gs, %i.bk
  br i1 %i.gt, label %.lr.ph67.split.us.i, label %.preheader55.loopexit.i, !llvm.loop !769

.preheader55.loopexit.i:                          ; preds = %._crit_edge.us.i
  %i.gu = trunc nuw nsw i64 %indvars.iv.next136.i to i32
  br label %.preheader55.i

.preheader55.i:                                   ; preds = %.lr.ph67.i, %.preheader55.loopexit.i, %._crit_edge
  %.0322.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.gu, %.preheader55.loopexit.i ], [ %i.bj, %.lr.ph67.i ] ; 5 uses
  %i.gv = or disjoint i32 %.0322.lcssa.i, 1
  %i.gw = icmp slt i32 %i.gv, %.sroa.speculated121
  br i1 %i.gw, label %.lr.ph83.i, label %.preheader.i

.lr.ph83.i:                                       ; preds = %.preheader55.i
  %.not331.i = icmp eq ptr %.val78, null
  %i.gx = icmp sgt i32 %.sroa.speculated117, 0
  %i.gy = shl nuw nsw i32 %.sroa.speculated117, 1
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = shl nuw nsw i32 %.sroa.speculated117, 2
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = mul nuw nsw i32 %.sroa.speculated117, 6
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = shl nuw nsw i32 %.sroa.speculated117, 3
  %i.hf = zext nneg i32 %i.he to i64              ; 12 uses
  %i.hg = sext i32 %i.bu to i64
  br i1 %i.gx, label %.lr.ph83.split.us.i, label %.lr.ph83.split.i

.lr.ph83.split.us.i:                              ; preds = %.lr.ph83.i
  %i.hh = load i32, ptr %i.an, align 4, !tbaa !86, !noalias !790
  %i.hi = load ptr, ptr %12, align 8, !tbaa !34, !noalias !790
  %i.hj = load i64, ptr %i.aq, align 8, !tbaa !35, !noalias !790
  %i.hk = load i64, ptr %i.ar, align 8, !tbaa !76, !noalias !790 ; 2 uses
  %factor.op.mul.i = mul i64 %i.hk, %i.hj
  %i.hl = sext i32 %i.hh to i64
  %factor.op.mul79.us.i = mul i64 %i.hk, %i.hl
  %i.hm = sext i32 %.0322.lcssa.i to i64
  %wide.trip.count148.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.us87.i, %.lr.ph83.split.us.i
  %indvars.iv150.i = phi i64 [ %indvars.iv.next151.i, %._crit_edge.us87.i ], [ %i.hm, %.lr.ph83.split.us.i ] ; 3 uses
  %.pre.i = add nsw i64 %indvars.iv150.i, %i.bi   ; 2 uses
  br i1 %.not331.i, label %.thread.us.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hn = getelementptr [4 x i8], ptr %.val78, i64 %.pre.i
  %i.ho = load <2 x float>, ptr %i.hn, align 4, !tbaa !53
  br label %.thread.us.i

.thread.us.i:                                     ; preds = %bb.t, %bb.s
  %i.hp = phi <2 x float> [ %i.ho, %bb.t ], [ zeroinitializer, %bb.s ] ; 2 uses
  %i.hq = trunc nsw i64 %indvars.iv150.i to i32
  %factor.op.mul.reass.us85.i = mul i32 %factor.op.mul64.i, %i.hq
  %i.hr = sext i32 %factor.op.mul.reass.us85.i to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.hr
  %.reass.i = mul i64 %factor.op.mul.i, %.pre.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.reass.i
  br label %_ZN4ncnn3MatD2Ev.exit336.us.i

_ZN4ncnn3MatD2Ev.exit336.us.i:                    ; preds = %bb.aa, %.thread.us.i
  %indvars.iv145.i = phi i64 [ 0, %.thread.us.i ], [ %indvars.iv.next146.i, %bb.aa ] ; 3 uses
  %.idx197.i = shl nuw nsw i64 %indvars.iv145.i, 3
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.idx197.i ; 5 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.gz ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hb ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hd ; 2 uses
  %i.hy = load <2 x float>, ptr %i.hv, align 4, !tbaa !53 ; 2 uses
  %i.hz = load <2 x float>, ptr %i.hw, align 4, !tbaa !53 ; 2 uses
  %i.ia = fsub fast <2 x float> %i.hy, %i.hz
  %i.ib = load <2 x float>, ptr %i.hx, align 4, !tbaa !53
  %i.ic = fadd fast <2 x float> %i.ia, %i.ib
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hf ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.hf ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hf ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.hf ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %i.hf ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.hf ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.hf ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.hf ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.hf
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.hf
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.hf
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.hf
  %i.ip = load <2 x float>, ptr %i.ie, align 4, !tbaa !53 ; 2 uses
  %i.iq = load <2 x float>, ptr %i.if, align 4, !tbaa !53 ; 2 uses
  %i.ir = load <2 x float>, ptr %i.ig, align 4, !tbaa !53
  %i.is = load <2 x float>, ptr %i.ii, align 4, !tbaa !53 ; 2 uses
  %i.it = load <2 x float>, ptr %i.ij, align 4, !tbaa !53 ; 2 uses
  %i.iu = load <2 x float>, ptr %i.ih, align 4, !tbaa !53
  %i.iv = load <2 x float>, ptr %i.il, align 4, !tbaa !53
  %i.iw = fadd fast <2 x float> %i.is, %i.iu
  %i.ix = fadd fast <2 x float> %i.iw, %i.it      ; 2 uses
  %i.iy = fsub fast <2 x float> %i.is, %i.it
  %i.iz = load <2 x float>, ptr %i.ik, align 4, !tbaa !53
  %i.ja = fadd fast <2 x float> %i.iz, %i.iy      ; 2 uses
  %i.jb = load <2 x float>, ptr %i.im, align 4, !tbaa !53 ; 2 uses
  %i.jc = load <2 x float>, ptr %i.in, align 4, !tbaa !53 ; 2 uses
  %i.jd = load <2 x float>, ptr %i.io, align 4, !tbaa !53
  %i.je = trunc i64 %indvars.iv145.i to i32
  %i.jf = add i32 %.044147, %i.je                 ; 2 uses
  %i.jg = sdiv i32 %i.jf, %i.cb
  %i.jh = srem i32 %i.jf, %i.cb
  %i.ji = shl nsw i32 %i.jg, 1                    ; 3 uses
  %i.jj = sext i32 %i.ji to i64
  %.reass80.us.i = mul i64 %factor.op.mul79.us.i, %i.jj
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ht, i64 %.reass80.us.i
  %i.jl = shl nsw i32 %i.jh, 1                    ; 2 uses
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.jk, i64 %i.jm ; 5 uses
  %i.jo = or disjoint i32 %i.jl, 1
  %i.jp = icmp slt i32 %i.jo, %i.bu               ; 2 uses
  %.not332.us.i = icmp slt i32 %i.ji, %i.bv
  br i1 %.not332.us.i, label %bb.u, label %bb.x

bb.u:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit336.us.i
  %i.jq = load <2 x float>, ptr %i.id, align 4, !tbaa !53
  %i.jr = fadd fast <2 x float> %i.ip, %i.hp
  %i.js = fadd fast <2 x float> %i.jr, %i.iq
  %i.jt = fadd fast <2 x float> %i.js, %i.jq      ; 2 uses
  %i.ju = load <2 x float>, ptr %i.hu, align 4, !tbaa !53
  %i.jv = fadd fast <2 x float> %i.hz, %i.hy
  %i.jw = fadd fast <2 x float> %i.jv, %i.ix
  %i.jx = fadd fast <2 x float> %i.jw, %i.ju
  %i.jy = fadd fast <2 x float> %i.jx, %i.jt      ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.bz ; 2 uses
  %i.ka = extractelement <2 x float> %i.jy, i64 0
  store float %i.ka, ptr %i.jn, align 4, !tbaa !53
  %i.kb = extractelement <2 x float> %i.jy, i64 1
  store float %i.kb, ptr %i.jz, align 4, !tbaa !53
  br i1 %i.jp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.kc = fsub fast <2 x float> %i.iv, %i.ix
  %i.kd = fadd fast <2 x float> %i.kc, %i.jb
  %i.ke = fadd fast <2 x float> %i.kd, %i.jc
  %i.kf = fadd fast <2 x float> %i.ke, %i.jt      ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %i.kh = extractelement <2 x float> %i.kf, i64 0
  store float %i.kh, ptr %i.kg, align 4, !tbaa !53
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  %i.kj = extractelement <2 x float> %i.kf, i64 1
  store float %i.kj, ptr %i.ki, align 4, !tbaa !53
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.jn, i64 %i.hg
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN4ncnn3MatD2Ev.exit336.us.i
  %.1306.us.i = phi ptr [ %i.jn, %_ZN4ncnn3MatD2Ev.exit336.us.i ], [ %i.kk, %bb.w ] ; 3 uses
  %i.kl = or disjoint i32 %i.ji, 1
  %.not332.us.1.i = icmp slt i32 %i.kl, %i.bv
  br i1 %.not332.us.1.i, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.km = fadd fast <2 x float> %i.ip, %i.hp
  %i.kn = fsub fast <2 x float> %i.km, %i.iq
  %i.ko = fadd fast <2 x float> %i.kn, %i.ir      ; 2 uses
  %i.kp = fadd fast <2 x float> %i.ic, %i.ko
  %i.kq = fadd fast <2 x float> %i.kp, %i.ja      ; 2 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.1306.us.i, i64 %i.bz ; 2 uses
  %i.ks = extractelement <2 x float> %i.kq, i64 0
  store float %i.ks, ptr %.1306.us.i, align 4, !tbaa !53
  %i.kt = extractelement <2 x float> %i.kq, i64 1
  store float %i.kt, ptr %i.kr, align 4, !tbaa !53
  br i1 %i.jp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ku = fadd fast <2 x float> %i.ko, %i.jb
  %i.kv = fadd fast <2 x float> %i.ja, %i.jc
  %i.kw = fsub fast <2 x float> %i.ku, %i.kv
  %i.kx = fadd fast <2 x float> %i.kw, %i.jd      ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.1306.us.i, i64 4
  %i.kz = extractelement <2 x float> %i.kx, i64 0
  store float %i.kz, ptr %i.ky, align 4, !tbaa !53
  %i.la = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  %i.lb = extractelement <2 x float> %i.kx, i64 1
  store float %i.lb, ptr %i.la, align 4, !tbaa !53
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 1 ; 2 uses
  %exitcond149.not.i = icmp eq i64 %indvars.iv.next146.i, %wide.trip.count148.i
  br i1 %exitcond149.not.i, label %._crit_edge.us87.i, label %_ZN4ncnn3MatD2Ev.exit336.us.i, !llvm.loop !772

._crit_edge.us87.i:                               ; preds = %bb.aa
  %indvars.iv.next151.i = add nuw nsw i64 %indvars.iv150.i, 2 ; 3 uses
  %i.lc = icmp slt i64 %indvars.iv.next151.i, %invariant.op.i
  br i1 %i.lc, label %bb.s, label %.preheader.loopexit.i, !llvm.loop !773

.lr.ph83.split.i:                                 ; preds = %.lr.ph83.i
  %i.ld = sub i32 %i.bl, %.0322.lcssa.i
  %i.le = and i32 %i.ld, -2
  %i.lf = add nsw i32 %.0322.lcssa.i, 2
  %i.lg = add i32 %i.lf, %i.le
  br label %.preheader.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.us87.i
  %i.lh = trunc nsw i64 %indvars.iv.next151.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph83.split.i, %.preheader55.i
  %.1323.lcssa.i = phi i32 [ %.0322.lcssa.i, %.preheader55.i ], [ %i.lg, %.lr.ph83.split.i ], [ %i.lh, %.preheader.loopexit.i ] ; 2 uses
  %i.li = icmp slt i32 %.1323.lcssa.i, %.sroa.speculated121
  br i1 %i.li, label %.lr.ph107.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit

.lr.ph107.i:                                      ; preds = %.preheader.i
  %.not.i80 = icmp eq ptr %.val78, null
  %i.lj = icmp sgt i32 %.sroa.speculated117, 0
  %i.lk = sext i32 %.sroa.speculated117 to i64
  %i.ll = shl nuw nsw i32 %.sroa.speculated117, 1
  %i.lm = zext nneg i32 %i.ll to i64
  %i.ln = mul nuw nsw i32 %.sroa.speculated117, 3
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = shl nuw nsw i32 %.sroa.speculated117, 2
  %i.lq = zext nneg i32 %i.lp to i64              ; 12 uses
  %i.lr = sext i32 %i.bu to i64                   ; 2 uses
  br i1 %i.lj, label %.lr.ph107.split.us.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit

.lr.ph107.split.us.i:                             ; preds = %.lr.ph107.i
  %i.ls = load i32, ptr %i.an, align 4, !tbaa !86, !noalias !791
  %i.lt = load ptr, ptr %12, align 8, !tbaa !34, !noalias !791
  %i.lu = load i64, ptr %i.aq, align 8, !tbaa !35, !noalias !791
  %i.lv = load i64, ptr %i.ar, align 8, !tbaa !76, !noalias !791 ; 2 uses
  %factor.op.mul118.i = mul i64 %i.lv, %i.lu
  %i.lw = sext i32 %i.ls to i64
  %factor.op.mul103.us.i = mul i64 %i.lv, %i.lw
  %i.lx = sext i32 %.1323.lcssa.i to i64
  %wide.trip.count166.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.us116.i, %.lr.ph107.split.us.i
  %indvars.iv168.i = phi i64 [ %indvars.iv.next169.i, %._crit_edge.us116.i ], [ %i.lx, %.lr.ph107.split.us.i ] ; 3 uses
  %.pre191.i = add nsw i64 %indvars.iv168.i, %i.bi ; 2 uses
  br i1 %.not.i80, label %.lr.ph.us115.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ly = getelementptr inbounds [4 x i8], ptr %.val78, i64 %.pre191.i
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !53
  br label %.lr.ph.us115.i

.lr.ph.us115.i:                                   ; preds = %bb.ac, %bb.ab
  %i.ma = phi fast float [ %i.lz, %bb.ac ], [ 0.000000e+00, %bb.ab ] ; 4 uses
  %i.mb = trunc nsw i64 %indvars.iv168.i to i32
  %factor.op.mul100.reass.us.i = mul i32 %factor.op.mul64.i, %i.mb
  %i.mc = sext i32 %factor.op.mul100.reass.us.i to i64
  %i.md = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.mc
  %.reass119.i = mul i64 %factor.op.mul118.i, %.pre191.i
  %i.me = getelementptr inbounds nuw i8, ptr %i.lt, i64 %.reass119.i
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %.split.us114.i, %.lr.ph.us115.i
  %indvars.iv163.i = phi i64 [ 0, %.lr.ph.us115.i ], [ %indvars.iv.next164.i, %.split.us114.i ] ; 3 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv163.i ; 5 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.lk ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.lm ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.lo ; 2 uses
  %i.mj = load float, ptr %i.mf, align 4, !tbaa !53
  %i.mk = load float, ptr %i.mg, align 4, !tbaa !53 ; 2 uses
  %i.ml = fadd fast float %i.mk, %i.mj
  %i.mm = load float, ptr %i.mh, align 4, !tbaa !53 ; 2 uses
  %i.mn = fadd fast float %i.ml, %i.mm            ; 2 uses
  %i.mo = fsub fast float %i.mk, %i.mm
  %i.mp = load float, ptr %i.mi, align 4, !tbaa !53
  %i.mq = fadd fast float %i.mo, %i.mp            ; 2 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.lq ; 2 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.lq ; 2 uses
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %i.lq ; 2 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %i.lq ; 2 uses
  %i.mv = load float, ptr %i.mr, align 4, !tbaa !53
  %i.mw = load float, ptr %i.ms, align 4, !tbaa !53 ; 2 uses
  %i.mx = fadd fast float %i.mw, %i.mv
  %i.my = load float, ptr %i.mt, align 4, !tbaa !53 ; 2 uses
  %i.mz = fadd fast float %i.mx, %i.my            ; 2 uses
  %i.na = fsub fast float %i.mw, %i.my
  %i.nb = load float, ptr %i.mu, align 4, !tbaa !53
  %i.nc = fadd fast float %i.na, %i.nb            ; 2 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.lq ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.lq ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %i.lq ; 2 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.lq ; 2 uses
  %i.nh = load float, ptr %i.nd, align 4, !tbaa !53
  %i.ni = load float, ptr %i.ne, align 4, !tbaa !53 ; 2 uses
  %i.nj = fadd fast float %i.ni, %i.nh
  %i.nk = load float, ptr %i.nf, align 4, !tbaa !53 ; 2 uses
  %i.nl = fadd fast float %i.nj, %i.nk            ; 3 uses
  %i.nm = fsub fast float %i.ni, %i.nk
  %i.nn = load float, ptr %i.ng, align 4, !tbaa !53
  %i.no = fadd fast float %i.nm, %i.nn            ; 3 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %i.lq
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %i.lq
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.lq
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.lq
  %i.nt = load float, ptr %i.np, align 4, !tbaa !53
  %i.nu = load float, ptr %i.nq, align 4, !tbaa !53 ; 2 uses
  %i.nv = load float, ptr %i.nr, align 4, !tbaa !53 ; 2 uses
  %i.nw = load float, ptr %i.ns, align 4, !tbaa !53
  %i.nx = trunc i64 %indvars.iv163.i to i32
  %i.ny = add i32 %.044147, %i.nx                 ; 2 uses
  %i.nz = sdiv i32 %i.ny, %i.cb
  %i.oa = srem i32 %i.ny, %i.cb
  %i.ob = shl nsw i32 %i.nz, 1                    ; 4 uses
  %i.oc = sext i32 %i.ob to i64
  %.reass104.us.i = mul i64 %factor.op.mul103.us.i, %i.oc
  %i.od = getelementptr inbounds nuw i8, ptr %i.me, i64 %.reass104.us.i
  %i.oe = shl nsw i32 %i.oa, 1                    ; 2 uses
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds [4 x i8], ptr %i.od, i64 %i.of ; 7 uses
  %i.oh = or disjoint i32 %i.oe, 1
  %i.oi = icmp slt i32 %i.oh, %i.bu
  %.fr.us.i = freeze i1 %i.oi
  %.not330.us.us.i = icmp slt i32 %i.ob, %i.bv    ; 2 uses
  br i1 %.fr.us.i, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit.split.us109.preheader.i

_ZN4ncnn3MatD2Ev.exit.split.us109.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not330.us.us.i, label %bb.ad, label %_ZN4ncnn3MatD2Ev.exit.split.us109.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not330.us.us.i, label %bb.af, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

bb.ad:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us109.preheader.i
  %i.oj = fadd fast float %i.mz, %i.ma
  %i.ok = fadd fast float %i.oj, %i.mn
  %i.ol = fadd fast float %i.ok, %i.nl
  store float %i.ol, ptr %i.og, align 4, !tbaa !53
  %i.om = getelementptr inbounds [4 x i8], ptr %i.og, i64 %i.lr
  br label %_ZN4ncnn3MatD2Ev.exit.split.us109.1.i

_ZN4ncnn3MatD2Ev.exit.split.us109.1.i:            ; preds = %bb.ad, %_ZN4ncnn3MatD2Ev.exit.split.us109.preheader.i
  %.1.us113.i = phi ptr [ %i.og, %_ZN4ncnn3MatD2Ev.exit.split.us109.preheader.i ], [ %i.om, %bb.ad ]
  %i.on = or disjoint i32 %i.ob, 1
  %.not330.us112.1.i = icmp slt i32 %i.on, %i.bv
  br i1 %.not330.us112.1.i, label %bb.ae, label %.split.us114.i

bb.ae:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us109.1.i
  %i.oo = fadd fast float %i.nc, %i.ma
  %i.op = fadd fast float %i.oo, %i.mq
  %i.oq = fadd fast float %i.op, %i.no
  store float %i.oq, ptr %.1.us113.i, align 4, !tbaa !53
  br label %.split.us114.i

bb.af:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %i.or = fadd fast float %i.mz, %i.ma            ; 2 uses
  %i.os = fadd fast float %i.or, %i.mn
  %i.ot = fadd fast float %i.os, %i.nl
  store float %i.ot, ptr %i.og, align 4, !tbaa !53
  %i.ou = fsub fast float %i.or, %i.nl
  %i.ov = fadd fast float %i.ou, %i.nt
  %i.ow = fadd fast float %i.ov, %i.nu
  %i.ox = fadd fast float %i.ow, %i.nv
  %i.oy = getelementptr inbounds nuw i8, ptr %i.og, i64 4
  store float %i.ox, ptr %i.oy, align 4, !tbaa !53
  %i.oz = getelementptr inbounds [4 x i8], ptr %i.og, i64 %i.lr
  br label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i:            ; preds = %bb.af, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %.1.us.us.i = phi ptr [ %i.og, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i ], [ %i.oz, %bb.af ] ; 2 uses
  %i.pa = or disjoint i32 %i.ob, 1
  %.not330.us.us.1.i = icmp slt i32 %i.pa, %i.bv
  br i1 %.not330.us.us.1.i, label %bb.ag, label %.split.us114.i

bb.ag:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i
  %i.pb = fadd fast float %i.nc, %i.ma            ; 2 uses
  %i.pc = fadd fast float %i.pb, %i.mq
  %i.pd = fadd fast float %i.pc, %i.no
  store float %i.pd, ptr %.1.us.us.i, align 4, !tbaa !53
  %i.pe = fadd fast float %i.pb, %i.nu
  %i.pf = fadd fast float %i.no, %i.nv
  %i.pg = fsub fast float %i.pe, %i.pf
  %i.ph = fadd fast float %i.pg, %i.nw
  %i.pi = getelementptr inbounds nuw i8, ptr %.1.us.us.i, i64 4
  store float %i.ph, ptr %i.pi, align 4, !tbaa !53
  br label %.split.us114.i

.split.us114.i:                                   ; preds = %bb.ag, %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i, %bb.ae, %_ZN4ncnn3MatD2Ev.exit.split.us109.1.i
  %indvars.iv.next164.i = add nuw nsw i64 %indvars.iv163.i, 1 ; 2 uses
  %exitcond167.not.i = icmp eq i64 %indvars.iv.next164.i, %wide.trip.count166.i
  br i1 %exitcond167.not.i, label %._crit_edge.us116.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !776

._crit_edge.us116.i:                              ; preds = %.split.us114.i
  %indvars.iv.next169.i = add nuw nsw i64 %indvars.iv168.i, 1 ; 2 uses
  %exitcond172.not.i = icmp eq i64 %indvars.iv.next169.i, %i.bm
  br i1 %exitcond172.not.i, label %_ZN4ncnnL42conv3x3s1_winograd23_transform_output_tileERKNS_3MatERS0_S2_iiii.exit, label %bb.ab, !llvm.loop !777

.noexc:                                           ; preds = %.noexc.preheader, %.noexc
  %i.pj = phi i32 [ %i.rg, %.noexc ], [ %.pre153, %.noexc.preheader ] ; 2 uses
  %i.pk = phi i32 [ %i.ri, %.noexc ], [ %i.bs, %.noexc.preheader ]
  %.0146 = phi i32 [ %i.rh, %.noexc ], [ 0, %.noexc.preheader ] ; 4 uses
  %i.pl = sub nsw i32 %i.pk, %.0146
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.pj, i32 %i.pl)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  %i.pm = load i32, ptr %3, align 4, !tbaa !78
  %i.pn = sdiv i32 %i.at, %i.pm
  %i.po = load ptr, ptr %10, align 8, !tbaa !34, !noalias !792
end_hunk_1
begin_hunk_2_@_ZN4ncnnL20conv3x3s1_winograd43ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.4:bb.a
  store float %i.abq, ptr %i.abp, align 4, !tbaa !53
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  br i1 %i.xu, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.abr = getelementptr inbounds nuw i8, ptr %.1489.us.i, i64 8
  store float %i.aay, ptr %i.abr, align 4, !tbaa !53
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abg, i64 8
  store float %i.aaz, ptr %i.abs, align 4, !tbaa !53
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  br i1 %i.xw, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.abt = getelementptr inbounds nuw i8, ptr %.1489.us.i, i64 12
  store float %i.aba, ptr %i.abt, align 4, !tbaa !53
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abg, i64 12
  store float %i.abf, ptr %i.abu, align 4, !tbaa !53
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.abv = getelementptr inbounds [4 x i8], ptr %.1489.us.i, i64 %i.rc
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bv
  %.1489.us.1.i = phi ptr [ %.1489.us.i, %bb.bv ], [ %i.abv, %bb.cc ] ; 7 uses
  %i.abw = or disjoint i32 %i.xl, 2
  %.not519.us.2.i = icmp slt i32 %i.abw, %i.bv
  br i1 %.not519.us.2.i, label %bb.ce, label %bb.cl

bb.ce:                                            ; preds = %bb.cd
  %.sroa.38.136.vec.extract = extractelement <2 x float> %i.xb, i64 0
  %.sroa.38.140.vec.extract = extractelement <2 x float> %i.xb, i64 1
  %i.abx = fsub fast <2 x float> %i.tj, %i.uh     ; 2 uses
  %i.aby = fsub fast <2 x float> %i.vf, %i.wd     ; 2 uses
  %i.abz = fadd fast <2 x float> %i.uh, %i.tj     ; 2 uses
  %i.aca = fadd fast <2 x float> %i.wd, %i.vf     ; 2 uses
  %i.acb = fadd fast <2 x float> %i.sl, %i.rl
  %i.acc = fadd fast <2 x float> %i.acb, %i.abz
  %i.acd = fadd fast <2 x float> %i.acc, %i.aca   ; 2 uses
  %i.ace = shufflevector <2 x float> %i.abz, <2 x float> %i.aca, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.acf = fmul fast <4 x float> %i.ace, <float 5.000000e-01, float 2.000000e+00, float 5.000000e-01, float 2.000000e+00> ; 3 uses
  %i.acg = shufflevector <2 x float> %i.abx, <2 x float> %i.aby, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ach = fmul fast <4 x float> %i.acg, <float f0x3EB504F3, float f0x403504F3, float f0x3EB504F3, float f0x403504F3> ; 3 uses
  %i.aci = shufflevector <4 x float> %i.rr, <4 x float> %i.ach, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.acj = shufflevector <4 x float> %i.acf, <4 x float> %i.rr, <4 x i32> <i32 0, i32 2, i32 4, i32 poison>
  %i.ack = insertelement <4 x float> %i.acj, float %.sroa.38.136.vec.extract, i64 3
  %i.acl = fadd fast <4 x float> %i.aci, %i.ack   ; 4 uses
  %shift166 = shufflevector <4 x float> %i.acf, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop167 = fadd fast <4 x float> %shift166, %i.acl
  %i.acm = extractelement <4 x float> %foldExtExtBinop167, i64 0
  %shift169 = shufflevector <4 x float> %i.acf, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop170 = fadd fast <4 x float> %shift169, %i.acl
  %i.acn = extractelement <4 x float> %foldExtExtBinop170, i64 1
  %shift172 = shufflevector <4 x float> %i.acl, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop173 = fadd fast <4 x float> %shift172, %i.acl
  %i.aco = extractelement <4 x float> %foldExtExtBinop173, i64 2
  %i.acp = extractelement <4 x float> %i.ach, i64 2
  %i.acq = fadd fast float %i.rq, %i.acp
  %i.acr = extractelement <4 x float> %i.ach, i64 3
  %i.acs = fadd fast float %i.acr, %.sroa.38.140.vec.extract
  %i.act = fadd fast float %i.acs, %i.acq
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %.1489.us.1.i, i64 %i.bz ; 4 uses
  %i.acv = extractelement <2 x float> %i.acd, i64 0
  store float %i.acv, ptr %.1489.us.1.i, align 4, !tbaa !53
  %i.acw = extractelement <2 x float> %i.acd, i64 1
  store float %i.acw, ptr %i.acu, align 4, !tbaa !53
  br i1 %i.xs, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.acx = fmul fast <2 x float> %i.abx, splat (float f0x3F3504F3)
  %i.acy = fmul fast <2 x float> %i.aby, splat (float f0x3FB504F3)
  %i.acz = fadd fast <2 x float> %i.rl, %i.acx
  %i.ada = fadd fast <2 x float> %i.acy, %i.acz   ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %.1489.us.1.i, i64 4
  %i.adc = extractelement <2 x float> %i.ada, i64 0
  store float %i.adc, ptr %i.adb, align 4, !tbaa !53
  %i.add = getelementptr inbounds nuw i8, ptr %i.acu, i64 4
  %i.ade = extractelement <2 x float> %i.ada, i64 1
  store float %i.ade, ptr %i.add, align 4, !tbaa !53
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  br i1 %i.xu, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.adf = getelementptr inbounds nuw i8, ptr %.1489.us.1.i, i64 8
  store float %i.acm, ptr %i.adf, align 4, !tbaa !53
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acu, i64 8
  store float %i.acn, ptr %i.adg, align 4, !tbaa !53
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  br i1 %i.xw, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.adh = getelementptr inbounds nuw i8, ptr %.1489.us.1.i, i64 12
  store float %i.aco, ptr %i.adh, align 4, !tbaa !53
  %i.adi = getelementptr inbounds nuw i8, ptr %i.acu, i64 12
  store float %i.act, ptr %i.adi, align 4, !tbaa !53
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.adj = getelementptr inbounds [4 x i8], ptr %.1489.us.1.i, i64 %i.rc
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cd
  %.1489.us.2.i = phi ptr [ %.1489.us.1.i, %bb.cd ], [ %i.adj, %bb.ck ] ; 5 uses
  %i.adk = or disjoint i32 %i.xl, 3
  %.not519.us.3.i = icmp slt i32 %i.adk, %i.bv
  br i1 %.not519.us.3.i, label %bb.cm, label %bb.cs

bb.cm:                                            ; preds = %bb.cl
  %.sroa.51.184.vec.extract = extractelement <2 x float> %i.xg, i64 0
  %.sroa.51.188.vec.extract = extractelement <2 x float> %i.xg, i64 1
  %i.adl = fsub fast <2 x float> %i.to, %i.um     ; 2 uses
  %i.adm = fsub fast <2 x float> %i.vk, %i.wi     ; 2 uses
  %i.adn = fadd fast <2 x float> %i.um, %i.to     ; 2 uses
  %i.ado = fadd fast <2 x float> %i.wi, %i.vk     ; 2 uses
  %i.adp = fadd fast <2 x float> %i.sq, %i.rl
  %i.adq = fadd fast <2 x float> %i.adp, %i.adn
  %i.adr = fadd fast <2 x float> %i.adq, %i.ado   ; 2 uses
  %i.ads = shufflevector <2 x float> %i.adn, <2 x float> %i.ado, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.adt = fmul fast <4 x float> %i.ads, <float 5.000000e-01, float 2.000000e+00, float 5.000000e-01, float 2.000000e+00> ; 3 uses
  %i.adu = shufflevector <2 x float> %i.adl, <2 x float> %i.adm, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.adv = fmul fast <4 x float> %i.adu, <float f0x3EB504F3, float f0x403504F3, float f0x3EB504F3, float f0x403504F3> ; 3 uses
  %i.adw = shufflevector <4 x float> %i.rr, <4 x float> %i.adv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.adx = shufflevector <4 x float> %i.adt, <4 x float> %i.rr, <4 x i32> <i32 0, i32 2, i32 4, i32 poison>
  %i.ady = insertelement <4 x float> %i.adx, float %.sroa.51.184.vec.extract, i64 3
  %i.adz = fadd fast <4 x float> %i.adw, %i.ady   ; 4 uses
  %shift175 = shufflevector <4 x float> %i.adt, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop176 = fadd fast <4 x float> %shift175, %i.adz
  %i.aea = extractelement <4 x float> %foldExtExtBinop176, i64 0
  %shift178 = shufflevector <4 x float> %i.adt, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop179 = fadd fast <4 x float> %shift178, %i.adz
  %i.aeb = extractelement <4 x float> %foldExtExtBinop179, i64 1
  %shift181 = shufflevector <4 x float> %i.adz, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop182 = fadd fast <4 x float> %shift181, %i.adz
  %i.aec = extractelement <4 x float> %foldExtExtBinop182, i64 2
  %i.aed = extractelement <4 x float> %i.adv, i64 2
  %i.aee = fadd fast float %i.rq, %i.aed
  %i.aef = extractelement <4 x float> %i.adv, i64 3
  %i.aeg = fadd fast float %i.aef, %.sroa.51.188.vec.extract
  %i.aeh = fadd fast float %i.aeg, %i.aee
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %.1489.us.2.i, i64 %i.bz ; 4 uses
  %i.aej = extractelement <2 x float> %i.adr, i64 0
  store float %i.aej, ptr %.1489.us.2.i, align 4, !tbaa !53
  %i.aek = extractelement <2 x float> %i.adr, i64 1
  store float %i.aek, ptr %i.aei, align 4, !tbaa !53
  br i1 %i.xs, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.ael = fmul fast <2 x float> %i.adl, splat (float f0x3F3504F3)
  %i.aem = fmul fast <2 x float> %i.adm, splat (float f0x3FB504F3)
  %i.aen = fadd fast <2 x float> %i.rl, %i.ael
  %i.aeo = fadd fast <2 x float> %i.aem, %i.aen   ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %.1489.us.2.i, i64 4
  %i.aeq = extractelement <2 x float> %i.aeo, i64 0
  store float %i.aeq, ptr %i.aep, align 4, !tbaa !53
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aei, i64 4
  %i.aes = extractelement <2 x float> %i.aeo, i64 1
  store float %i.aes, ptr %i.aer, align 4, !tbaa !53
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  br i1 %i.xu, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.aet = getelementptr inbounds nuw i8, ptr %.1489.us.2.i, i64 8
  store float %i.aea, ptr %i.aet, align 4, !tbaa !53
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aei, i64 8
  store float %i.aeb, ptr %i.aeu, align 4, !tbaa !53
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  br i1 %i.xw, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.aev = getelementptr inbounds nuw i8, ptr %.1489.us.2.i, i64 12
  store float %i.aec, ptr %i.aev, align 4, !tbaa !53
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aei, i64 12
  store float %i.aeh, ptr %i.aew, align 4, !tbaa !53
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq, %bb.cl
  %indvars.iv.next177.i = add nuw nsw i64 %indvars.iv176.i, 1 ; 2 uses
  %exitcond180.not.i = icmp eq i64 %indvars.iv.next177.i, %wide.trip.count179.i
  br i1 %exitcond180.not.i, label %._crit_edge.us122.i, label %_ZN4ncnn3MatD2Ev.exit523.us.i, !llvm.loop !892

._crit_edge.us122.i:                              ; preds = %bb.cs
  %indvars.iv.next182.i = add nuw nsw i64 %indvars.iv181.i, 2 ; 3 uses
  %i.aex = icmp slt i64 %indvars.iv.next182.i, %invariant.op.i
  br i1 %i.aex, label %bb.bm, label %.preheader.loopexit.i, !llvm.loop !893

.lr.ph118.split.i:                                ; preds = %.lr.ph118.i
  %i.aey = sub i32 %i.bl, %.0490.lcssa.i
  %i.aez = and i32 %i.aey, -2
  %i.afa = add nsw i32 %.0490.lcssa.i, 2
  %i.afb = add i32 %i.afa, %i.aez
  br label %.preheader.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.us122.i
  %i.afc = trunc nsw i64 %indvars.iv.next182.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph118.split.i, %.preheader86.i
  %.1491.lcssa.i = phi i32 [ %.0490.lcssa.i, %.preheader86.i ], [ %i.afb, %.lr.ph118.split.i ], [ %i.afc, %.preheader.loopexit.i ] ; 2 uses
  %i.afd = icmp slt i32 %.1491.lcssa.i, %.sroa.speculated121
  br i1 %i.afd, label %.lr.ph144.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_output_tileERKNS_3MatERS0_S2_iiii.exit

.lr.ph144.i:                                      ; preds = %.preheader.i
  %.not.i80 = icmp eq ptr %.val78, null
  %i.afe = icmp sgt i32 %.sroa.speculated117, 0
  %i.aff = sext i32 %.sroa.speculated117 to i64
  %i.afg = shl nuw nsw i32 %.sroa.speculated117, 1
  %i.afh = zext nneg i32 %i.afg to i64
  %i.afi = mul nuw nsw i32 %.sroa.speculated117, 3
  %i.afj = zext nneg i32 %i.afi to i64
  %i.afk = shl nuw nsw i32 %.sroa.speculated117, 2
  %i.afl = zext nneg i32 %i.afk to i64
  %i.afm = mul nuw nsw i32 %.sroa.speculated117, 5
  %i.afn = zext nneg i32 %i.afm to i64
  %i.afo = mul nuw nsw i32 %.sroa.speculated117, 6
  %i.afp = zext nneg i32 %i.afo to i64            ; 30 uses
  %i.afq = sext i32 %i.bu to i64                  ; 3 uses
  br i1 %i.afe, label %.lr.ph144.split.us.i, label %_ZN4ncnnL42conv3x3s1_winograd43_transform_output_tileERKNS_3MatERS0_S2_iiii.exit

.lr.ph144.split.us.i:                             ; preds = %.lr.ph144.i
  %i.afr = load i32, ptr %i.an, align 4, !tbaa !86, !noalias !911
  %i.afs = load ptr, ptr %12, align 8, !tbaa !34, !noalias !911
  %i.aft = load i64, ptr %i.aq, align 8, !tbaa !35, !noalias !911
  %i.afu = load i64, ptr %i.ar, align 8, !tbaa !76, !noalias !911 ; 2 uses
  %factor.op.mul149.i = mul i64 %i.afu, %i.aft
  %i.afv = sext i32 %i.afr to i64
  %factor.op.mul140.us.i = mul i64 %i.afu, %i.afv
  %i.afw = sext i32 %.1491.lcssa.i to i64
  %wide.trip.count195.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %bb.ct

bb.ct:                                            ; preds = %._crit_edge.us147.i, %.lr.ph144.split.us.i
  %indvars.iv197.i = phi i64 [ %indvars.iv.next198.i, %._crit_edge.us147.i ], [ %i.afw, %.lr.ph144.split.us.i ] ; 3 uses
  %.pre226.i = add nsw i64 %indvars.iv197.i, %i.bi ; 2 uses
  br i1 %.not.i80, label %.lr.ph.us146.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.afx = getelementptr inbounds [4 x i8], ptr %.val78, i64 %.pre226.i
  %i.afy = load float, ptr %i.afx, align 4, !tbaa !53
  br label %.lr.ph.us146.i

.lr.ph.us146.i:                                   ; preds = %bb.cu, %bb.ct
  %i.afz = phi fast float [ %i.afy, %bb.cu ], [ 0.000000e+00, %bb.ct ] ; 16 uses
  %i.aga = trunc nsw i64 %indvars.iv197.i to i32
  %factor.op.mul137.reass.us.i = mul i32 %factor.op.mul97.i, %i.aga
  %i.agb = sext i32 %factor.op.mul137.reass.us.i to i64
  %i.agc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.agb
  %.reass150.i = mul i64 %factor.op.mul149.i, %.pre226.i
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afs, i64 %.reass150.i
  %i.age = insertelement <4 x float> poison, float %i.afz, i64 3
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %bb.dz, %.lr.ph.us146.i
  %indvars.iv192.i = phi i64 [ 0, %.lr.ph.us146.i ], [ %indvars.iv.next193.i, %bb.dz ] ; 3 uses
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.agc, i64 %indvars.iv192.i ; 7 uses
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.agf, i64 %i.aff ; 2 uses
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.agf, i64 %i.afh ; 2 uses
  %i.agi = getelementptr inbounds nuw [4 x i8], ptr %i.agf, i64 %i.afj ; 2 uses
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %i.agf, i64 %i.afl ; 2 uses
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.agf, i64 %i.afn ; 2 uses
  %i.agl = load float, ptr %i.agg, align 4, !tbaa !53 ; 2 uses
  %i.agm = load float, ptr %i.agh, align 4, !tbaa !53 ; 2 uses
  %i.agn = fadd fast float %i.agm, %i.agl         ; 2 uses
  %i.ago = load float, ptr %i.agi, align 4, !tbaa !53 ; 2 uses
  %i.agp = load float, ptr %i.agj, align 4, !tbaa !53 ; 2 uses
  %i.agq = fadd fast float %i.agp, %i.ago         ; 2 uses
  %i.agr = fsub fast float %i.agl, %i.agm         ; 2 uses
  %i.ags = fsub fast float %i.ago, %i.agp         ; 2 uses
  %i.agt = fmul fast float %i.agr, f0x3F3504F3
  %i.agu = fmul fast float %i.ags, f0x3FB504F3
  %i.agv = fmul fast float %i.agn, 5.000000e-01
  %i.agw = fmul fast float %i.agq, 2.000000e+00
  %i.agx = load float, ptr %i.agk, align 4, !tbaa !53
  %i.agy = insertelement <4 x float> %i.age, float %i.ags, i64 0
  %i.agz = insertelement <4 x float> %i.agy, float %i.agr, i64 1
  %i.aha = insertelement <4 x float> %i.agz, float %i.agx, i64 2
  %i.ahb = fmul reassoc nsz arcp contract afn <4 x float> %i.aha, <float f0x403504F3, float f0x3EB504F3, float 1.000000e+00, float 1.000000e+00>
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.agg, i64 %i.afp ; 2 uses
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %i.agh, i64 %i.afp ; 2 uses
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.agi, i64 %i.afp ; 2 uses
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %i.agj, i64 %i.afp ; 2 uses
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.agk, i64 %i.afp ; 2 uses
  %i.ahh = load float, ptr %i.ahc, align 4, !tbaa !53 ; 2 uses
  %i.ahi = load float, ptr %i.ahd, align 4, !tbaa !53 ; 2 uses
  %i.ahj = load float, ptr %i.ahe, align 4, !tbaa !53 ; 2 uses
  %i.ahk = load float, ptr %i.ahf, align 4, !tbaa !53 ; 2 uses
  %i.ahl = load float, ptr %i.ahg, align 4, !tbaa !53
  %i.ahm = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %i.afp ; 2 uses
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.ahd, i64 %i.afp ; 2 uses
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %i.afp ; 2 uses
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.ahf, i64 %i.afp ; 2 uses
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %i.afp ; 2 uses
  %i.ahr = load float, ptr %i.ahm, align 4, !tbaa !53 ; 2 uses
  %i.ahs = load float, ptr %i.ahn, align 4, !tbaa !53 ; 2 uses
  %i.aht = load float, ptr %i.aho, align 4, !tbaa !53 ; 2 uses
  %i.ahu = load float, ptr %i.ahp, align 4, !tbaa !53 ; 2 uses
  %i.ahv = load float, ptr %i.ahq, align 4, !tbaa !53
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %i.afp ; 2 uses
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.ahn, i64 %i.afp ; 2 uses
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %i.afp ; 2 uses
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %i.afp ; 2 uses
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.ahq, i64 %i.afp ; 2 uses
  %i.aib = load float, ptr %i.ahw, align 4, !tbaa !53 ; 2 uses
  %i.aic = load float, ptr %i.ahx, align 4, !tbaa !53 ; 2 uses
  %i.aid = load float, ptr %i.ahy, align 4, !tbaa !53 ; 2 uses
  %i.aie = load float, ptr %i.ahz, align 4, !tbaa !53 ; 2 uses
  %i.aif = load float, ptr %i.aia, align 4, !tbaa !53
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.ahw, i64 %i.afp ; 2 uses
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %i.ahx, i64 %i.afp ; 2 uses
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.ahy, i64 %i.afp ; 2 uses
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %i.afp ; 2 uses
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.aia, i64 %i.afp ; 2 uses
  %i.ail = load float, ptr %i.aig, align 4, !tbaa !53 ; 2 uses
  %i.aim = load float, ptr %i.aih, align 4, !tbaa !53 ; 2 uses
  %i.ain = load float, ptr %i.aii, align 4, !tbaa !53 ; 2 uses
  %i.aio = load float, ptr %i.aij, align 4, !tbaa !53 ; 2 uses
  %i.aip = insertelement <4 x float> poison, float %i.ahs, i64 0
  %i.aiq = insertelement <4 x float> %i.aip, float %i.aim, i64 1
  %i.air = insertelement <4 x float> %i.aiq, float %i.ahi, i64 2
  %i.ais = insertelement <4 x float> %i.air, float %i.aic, i64 3
  %i.ait = insertelement <4 x float> poison, float %i.ahr, i64 0
  %i.aiu = insertelement <4 x float> %i.ait, float %i.ail, i64 1
  %i.aiv = insertelement <4 x float> %i.aiu, float %i.ahh, i64 2
  %i.aiw = insertelement <4 x float> %i.aiv, float %i.aib, i64 3
  %i.aix = fadd fast <4 x float> %i.ais, %i.aiw   ; 3 uses
  %i.aiy = insertelement <4 x float> poison, float %i.ahu, i64 0
  %i.aiz = insertelement <4 x float> %i.aiy, float %i.aio, i64 1
  %i.aja = insertelement <4 x float> %i.aiz, float %i.ahk, i64 2
  %i.ajb = insertelement <4 x float> %i.aja, float %i.aie, i64 3
  %i.ajc = insertelement <4 x float> poison, float %i.aht, i64 0
  %i.ajd = insertelement <4 x float> %i.ajc, float %i.ain, i64 1
  %i.aje = insertelement <4 x float> %i.ajd, float %i.ahj, i64 2
  %i.ajf = insertelement <4 x float> %i.aje, float %i.aid, i64 3
  %i.ajg = fadd fast <4 x float> %i.ajb, %i.ajf   ; 3 uses
  %i.ajh = fmul fast <4 x float> %i.aix, splat (float 5.000000e-01)
  %i.aji = fmul fast <4 x float> %i.ajg, splat (float 2.000000e+00)
  %i.ajj = fadd fast <4 x float> %i.aji, %i.ajh   ; 3 uses
  %i.ajk = load float, ptr %i.aik, align 4, !tbaa !53
  %i.ajl = insertelement <4 x float> poison, float %i.ail, i64 0
  %i.ajm = insertelement <4 x float> %i.ajl, float %i.aib, i64 1
  %i.ajn = insertelement <4 x float> %i.ajm, float %i.ahr, i64 2
  %i.ajo = insertelement <4 x float> %i.ajn, float %i.ahh, i64 3
  %i.ajp = insertelement <4 x float> poison, float %i.aim, i64 0
  %i.ajq = insertelement <4 x float> %i.ajp, float %i.aic, i64 1
  %i.ajr = insertelement <4 x float> %i.ajq, float %i.ahs, i64 2
  %i.ajs = insertelement <4 x float> %i.ajr, float %i.ahi, i64 3
  %i.ajt = fsub fast <4 x float> %i.ajo, %i.ajs   ; 3 uses
  %i.aju = insertelement <4 x float> poison, float %i.ain, i64 0
  %i.ajv = insertelement <4 x float> %i.aju, float %i.aid, i64 1
  %i.ajw = insertelement <4 x float> %i.ajv, float %i.aht, i64 2
  %i.ajx = insertelement <4 x float> %i.ajw, float %i.ahj, i64 3
  %i.ajy = insertelement <4 x float> poison, float %i.aio, i64 0
  %i.ajz = insertelement <4 x float> %i.ajy, float %i.aie, i64 1
  %i.aka = insertelement <4 x float> %i.ajz, float %i.ahu, i64 2
  %i.akb = insertelement <4 x float> %i.aka, float %i.ahk, i64 3
  %i.akc = fsub fast <4 x float> %i.ajx, %i.akb   ; 3 uses
  %i.akd = fmul fast <4 x float> %i.ajt, splat (float f0x3EB504F3)
  %i.ake = insertelement <4 x float> poison, float %i.ajk, i64 0
  %i.akf = insertelement <4 x float> %i.ake, float %i.aif, i64 1
  %i.akg = insertelement <4 x float> %i.akf, float %i.ahv, i64 2
  %i.akh = insertelement <4 x float> %i.akg, float %i.ahl, i64 3
  %i.aki = fadd fast <4 x float> %i.akd, %i.akh
  %i.akj = fmul fast <4 x float> %i.akc, splat (float f0x403504F3)
  %i.akk = shufflevector <4 x float> %i.ajt, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.akl = fmul fast <2 x float> %i.akk, splat (float f0x3F3504F3)
  %i.akm = shufflevector <4 x float> %i.akc, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.akn = fmul fast <2 x float> %i.akm, splat (float f0x3FB504F3)
  %i.ako = shufflevector <4 x float> %i.ajt, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.akp = fmul fast <2 x float> %i.ako, splat (float f0x3F3504F3)
  %i.akq = shufflevector <4 x float> %i.akc, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.akr = fmul fast <2 x float> %i.akq, splat (float f0x3FB504F3)
  %i.aks = fadd fast <2 x float> %i.akn, %i.akl   ; 2 uses
  %i.akt = fadd fast <2 x float> %i.akr, %i.akp   ; 2 uses
  %i.aku = fadd fast <4 x float> %i.aki, %i.akj   ; 4 uses
  %i.akv = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %i.afp
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %i.aih, i64 %i.afp
  %i.akx = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %i.afp
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %i.aij, i64 %i.afp
  %i.akz = getelementptr inbounds nuw [4 x i8], ptr %i.aik, i64 %i.afp
  %i.ala = load float, ptr %i.akv, align 4, !tbaa !53 ; 2 uses
  %i.alb = load float, ptr %i.akw, align 4, !tbaa !53 ; 2 uses
  %i.alc = fadd fast float %i.alb, %i.ala         ; 2 uses
  %i.ald = load float, ptr %i.akx, align 4, !tbaa !53 ; 2 uses
  %i.ale = load float, ptr %i.aky, align 4, !tbaa !53 ; 2 uses
  %i.alf = fadd fast float %i.ale, %i.ald         ; 2 uses
  %i.alg = fsub fast float %i.ala, %i.alb         ; 2 uses
  %i.alh = fsub fast float %i.ald, %i.ale         ; 2 uses
  %i.ali = fmul fast float %i.alg, f0x3F3504F3
  %i.alj = fmul fast float %i.alh, f0x3FB504F3
  %i.alk = fmul fast float %i.alc, 5.000000e-01
end_hunk_2
begin_hunk_3_@_ZN4ncnnL20conv3x3s1_winograd63ERKNS_3MatERS0_S2_S2_iRKNS_6OptionE.omp_outlined.5:bb.a
  store <2 x float> %i.ns, ptr %i.no, align 8, !tbaa !53
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv218.i
  %i.nu = load <2 x float>, ptr %.0714151.us.i, align 4, !tbaa !53
  %i.nv = fmul fast <2 x float> %i.my, splat (float 3.200000e+01)
  %i.nw = fadd fast <2 x float> %i.mx, %i.nv
  %i.nx = fadd fast <2 x float> %i.mz, %i.nw
  %i.ny = fadd fast <2 x float> %i.nx, %i.nu
  store <2 x float> %i.ny, ptr %i.nt, align 8, !tbaa !53
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %.0721144.us.i, i64 %i.lj
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %.0720145.us.i, i64 %i.lj
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %.0719146.us.i, i64 %i.lj
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %.0718147.us.i, i64 %i.lj
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %.0717148.us.i, i64 %i.lj
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %.0716149.us.i, i64 %i.lj
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %.0715150.us.i, i64 %i.lj
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %.0714151.us.i, i64 %i.lj
  %indvars.iv.next219.i = add nuw nsw i64 %indvars.iv218.i, 1 ; 2 uses
  %exitcond221.not.i = icmp eq i64 %indvars.iv.next219.i, 8
  br i1 %exitcond221.not.i, label %_ZN4ncnn3MatD2Ev.exit740.us.i, label %bb.aj, !llvm.loop !954

_ZN4ncnn3MatD2Ev.exit740.us.i:                    ; preds = %bb.aj
  %i.oh = trunc i64 %indvars.iv226.i to i32
  %i.oi = add i32 %.044131, %i.oh                 ; 2 uses
  %i.oj = sdiv i32 %i.oi, %i.ct
  %i.ok = srem i32 %i.oi, %i.ct
  %i.ol = mul nsw i32 %i.oj, 6
  %i.om = sext i32 %i.ol to i64                   ; 2 uses
  %.reass157.us.i = mul i64 %factor.op.mul156.us.i, %i.om
  %i.on = getelementptr inbounds nuw i8, ptr %i.ly, i64 %.reass157.us.i
  %i.oo = mul nsw i32 %i.ok, 6                    ; 6 uses
  %i.op = sext i32 %i.oo to i64
  %i.oq = getelementptr inbounds [4 x i8], ptr %i.on, i64 %i.op
  %i.or = or disjoint i32 %i.oo, 1
  %i.os = icmp slt i32 %i.or, %i.cm
  %i.ot = add nsw i32 %i.oo, 2
  %i.ou = icmp slt i32 %i.ot, %i.cm
  %i.ov = add nsw i32 %i.oo, 3
  %i.ow = icmp slt i32 %i.ov, %i.cm
  %i.ox = add nsw i32 %i.oo, 4
  %i.oy = icmp slt i32 %i.ox, %i.cm
  %i.oz = add nsw i32 %i.oo, 5
  %i.pa = icmp slt i32 %i.oz, %i.cm
  %invariant.op259.i = sub nsw i64 %i.lq, %i.om
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aw, %_ZN4ncnn3MatD2Ev.exit740.us.i
  %indvars.iv222.i = phi i64 [ %indvars.iv.next223.i, %bb.aw ], [ 0, %_ZN4ncnn3MatD2Ev.exit740.us.i ] ; 3 uses
  %.0701153.us.i = phi ptr [ %.1702.us.i, %bb.aw ], [ %i.oq, %_ZN4ncnn3MatD2Ev.exit740.us.i ] ; 9 uses
  %.not736.us.i = icmp slt i64 %indvars.iv222.i, %invariant.op259.i
  br i1 %.not736.us.i, label %bb.al, label %bb.aw

bb.al:                                            ; preds = %bb.ak
  %i.pb = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %indvars.iv222.i ; 9 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 32
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pb, i64 40
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pb, i64 48
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pb, i64 56
  %i.pj = load float, ptr %i.pi, align 8, !tbaa !53
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pb, i64 60
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !53
  %i.pm = load <2 x float>, ptr %i.pc, align 8, !tbaa !53 ; 2 uses
  %i.pn = load <2 x float>, ptr %i.pd, align 16, !tbaa !53 ; 2 uses
  %i.po = load <2 x float>, ptr %i.pe, align 8, !tbaa !53 ; 2 uses
  %i.pp = load <2 x float>, ptr %i.pf, align 16, !tbaa !53 ; 2 uses
  %i.pq = load <2 x float>, ptr %i.pg, align 8, !tbaa !53 ; 2 uses
  %i.pr = load <2 x float>, ptr %i.ph, align 16, !tbaa !53 ; 2 uses
  %i.ps = fsub fast <2 x float> %i.pm, %i.pn
  %i.pt = fsub fast <2 x float> %i.po, %i.pp      ; 3 uses
  %i.pu = fsub fast <2 x float> %i.pq, %i.pr      ; 4 uses
  %i.pv = load <2 x float>, ptr %i.pb, align 16, !tbaa !53
  %i.pw = fadd fast <2 x float> %i.pp, %i.po      ; 2 uses
  %i.px = fadd fast <2 x float> %i.pr, %i.pq      ; 2 uses
  %i.py = fmul fast <2 x float> %i.px, splat (float 3.200000e+01)
  %i.pz = fadd fast <2 x float> %i.pm, %i.lu
  %i.qa = fadd fast <2 x float> %i.pz, %i.pn      ; 3 uses
  %i.qb = fadd fast <2 x float> %i.qa, %i.pv
  %i.qc = fadd fast <2 x float> %i.qb, %i.pw
  %i.qd = fadd fast <2 x float> %i.qc, %i.py      ; 2 uses
  %i.qe = fadd fast <2 x float> %i.ps, %i.lu      ; 4 uses
  %i.qf = shufflevector <2 x float> %i.pw, <2 x float> %i.px, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  %i.qg = fmul fast <4 x float> %i.qf, <float 4.000000e+00, float 8.000000e+00, float 4.000000e+00, float 8.000000e+00> ; 3 uses
  %i.qh = shufflevector <2 x float> %i.pt, <2 x float> %i.pu, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.qi = fmul fast <4 x float> %i.qh, <float 8.000000e+00, float 4.000000e+00, float 8.000000e+00, float 4.000000e+00> ; 2 uses
  %i.qj = shufflevector <2 x float> %i.qa, <2 x float> %i.qe, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.qk = shufflevector <4 x float> %i.qg, <4 x float> %i.qi, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ql = fadd fast <4 x float> %i.qj, %i.qk      ; 3 uses
  %shift = shufflevector <4 x float> %i.qg, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd fast <4 x float> %shift, %i.ql
  %i.qm = extractelement <4 x float> %foldExtExtBinop, i64 0
  %shift144 = shufflevector <4 x float> %i.qg, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop145 = fadd fast <4 x float> %shift144, %i.ql
  %i.qn = extractelement <4 x float> %foldExtExtBinop145, i64 1
  %i.qo = fmul fast <4 x float> %i.qf, <float 1.600000e+01, float 2.000000e+00, float 1.600000e+01, float 2.000000e+00> ; 3 uses
  %i.qp = shufflevector <2 x float> %i.qa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qq = shufflevector <4 x float> %i.qi, <4 x float> %i.qp, <4 x i32> <i32 1, i32 3, i32 4, i32 5>
  %i.qr = shufflevector <4 x float> %i.ql, <4 x float> %i.qo, <4 x i32> <i32 2, i32 3, i32 4, i32 6>
  %i.qs = fadd fast <4 x float> %i.qq, %i.qr      ; 4 uses
  %shift147 = shufflevector <4 x float> %i.qs, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop148 = fadd fast <4 x float> %i.qo, %shift147
  %i.qt = extractelement <4 x float> %foldExtExtBinop148, i64 1
  %foldExtExtBinop150 = fadd fast <4 x float> %i.qo, %i.qs
  %i.qu = extractelement <4 x float> %foldExtExtBinop150, i64 3
  %i.qv = fmul fast <2 x float> %i.pt, splat (float 3.200000e+01) ; 2 uses
  %foldExtExtBinop152 = fadd fast <2 x float> %i.qe, %i.qv
  %foldExtExtBinop154 = fadd fast <2 x float> %i.pu, %foldExtExtBinop152
  %i.qw = extractelement <2 x float> %foldExtExtBinop154, i64 0
  %i.qx = fadd fast float %i.qw, %i.pj
  %foldExtExtBinop156 = fadd fast <2 x float> %i.qe, %i.qv
  %foldExtExtBinop158 = fadd fast <2 x float> %i.pu, %foldExtExtBinop156
  %i.qy = extractelement <2 x float> %foldExtExtBinop158, i64 1
  %i.qz = fadd fast float %i.qy, %i.pl
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %.0701153.us.i, i64 %i.cr ; 6 uses
  %i.rb = extractelement <2 x float> %i.qd, i64 0
  store float %i.rb, ptr %.0701153.us.i, align 4, !tbaa !53
  %i.rc = extractelement <2 x float> %i.qd, i64 1
  store float %i.rc, ptr %i.ra, align 4, !tbaa !53
  br i1 %i.os, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.rd = fmul fast <2 x float> %i.pu, splat (float 1.600000e+01)
  %i.re = fmul fast <2 x float> %i.pt, splat (float 2.000000e+00)
  %i.rf = fadd fast <2 x float> %i.qe, %i.rd
  %i.rg = fadd fast <2 x float> %i.rf, %i.re      ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.0701153.us.i, i64 4
  %i.ri = extractelement <2 x float> %i.rg, i64 0
  store float %i.ri, ptr %i.rh, align 4, !tbaa !53
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ra, i64 4
  %i.rk = extractelement <2 x float> %i.rg, i64 1
  store float %i.rk, ptr %i.rj, align 4, !tbaa !53
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  br i1 %i.ou, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.rl = getelementptr inbounds nuw i8, ptr %.0701153.us.i, i64 8
  store float %i.qm, ptr %i.rl, align 4, !tbaa !53
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  store float %i.qn, ptr %i.rm, align 4, !tbaa !53
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  br i1 %i.ow, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.rn = getelementptr inbounds nuw i8, ptr %.0701153.us.i, i64 12
  %i.ro = extractelement <4 x float> %i.qs, i64 0
  store float %i.ro, ptr %i.rn, align 4, !tbaa !53
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ra, i64 12
  %i.rq = extractelement <4 x float> %i.qs, i64 1
  store float %i.rq, ptr %i.rp, align 4, !tbaa !53
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  br i1 %i.oy, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.rr = getelementptr inbounds nuw i8, ptr %.0701153.us.i, i64 16
  store float %i.qt, ptr %i.rr, align 4, !tbaa !53
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  store float %i.qu, ptr %i.rs, align 4, !tbaa !53
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  br i1 %i.pa, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.rt = getelementptr inbounds nuw i8, ptr %.0701153.us.i, i64 20
  store float %i.qx, ptr %i.rt, align 4, !tbaa !53
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ra, i64 20
  store float %i.qz, ptr %i.ru, align 4, !tbaa !53
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.rv = getelementptr inbounds [4 x i8], ptr %.0701153.us.i, i64 %i.lk
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ak
  %.1702.us.i = phi ptr [ %.0701153.us.i, %bb.ak ], [ %i.rv, %bb.av ]
  %indvars.iv.next223.i = add nuw nsw i64 %indvars.iv222.i, 1 ; 2 uses
  %exitcond225.not.i = icmp eq i64 %indvars.iv.next223.i, 6
  br i1 %exitcond225.not.i, label %bb.ax, label %bb.ak, !llvm.loop !955

bb.ax:                                            ; preds = %bb.aw
  %indvars.iv.next227.i = add nuw nsw i64 %indvars.iv226.i, 1 ; 2 uses
  %exitcond230.not.i = icmp eq i64 %indvars.iv.next227.i, %wide.trip.count229.i
  br i1 %exitcond230.not.i, label %._crit_edge.us164.i, label %bb.ai, !llvm.loop !956

._crit_edge.us164.i:                              ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %indvars.iv.next232.i = add nuw nsw i64 %indvars.iv231.i, 2 ; 3 uses
  %i.rw = icmp slt i64 %indvars.iv.next232.i, %invariant.op260.i
  br i1 %i.rw, label %bb.ag, label %.preheader.loopexit.i, !llvm.loop !957

.lr.ph160.split.i:                                ; preds = %.lr.ph160.i
  %i.rx = sub i32 %i.cd, %.0703.lcssa.i
  %i.ry = and i32 %i.rx, -2
  %i.rz = add nsw i32 %.0703.lcssa.i, 2
  %i.sa = add i32 %i.rz, %i.ry
  br label %.preheader.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.us164.i
  %i.sb = trunc nsw i64 %indvars.iv.next232.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph160.split.i, %.preheader124.i
  %.1704.lcssa.i = phi i32 [ %.0703.lcssa.i, %.preheader124.i ], [ %i.sa, %.lr.ph160.split.i ], [ %i.sb, %.preheader.loopexit.i ] ; 2 uses
  %i.sc = icmp slt i32 %.1704.lcssa.i, %.sroa.speculated121
  br i1 %i.sc, label %.lr.ph188.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit

.lr.ph188.i:                                      ; preds = %.preheader.i
  %.not.i80 = icmp eq ptr %.val78, null
  %i.sd = icmp sgt i32 %.sroa.speculated117, 0
  %i.se = sext i32 %.sroa.speculated117 to i64
  %i.sf = shl nuw nsw i32 %.sroa.speculated117, 1
  %i.sg = zext nneg i32 %i.sf to i64
  %i.sh = mul nuw nsw i32 %.sroa.speculated117, 3
  %i.si = zext nneg i32 %i.sh to i64
  %i.sj = shl nuw nsw i32 %.sroa.speculated117, 2
  %i.sk = zext nneg i32 %i.sj to i64
  %i.sl = mul nuw nsw i32 %.sroa.speculated117, 5
  %i.sm = zext nneg i32 %i.sl to i64
  %i.sn = mul nuw nsw i32 %.sroa.speculated117, 6
  %i.so = zext nneg i32 %i.sn to i64
  %i.sp = mul nuw nsw i32 %.sroa.speculated117, 7
  %i.sq = zext nneg i32 %i.sp to i64
  %i.sr = shl nuw nsw i32 %.sroa.speculated117, 3
  %i.ss = zext nneg i32 %i.sr to i64              ; 8 uses
  %i.st = sext i32 %i.cm to i64
  br i1 %i.sd, label %.lr.ph188.split.us.i, label %_ZN4ncnnL42conv3x3s1_winograd63_transform_output_tileERKNS_3MatERS0_S2_iiii.exit

.lr.ph188.split.us.i:                             ; preds = %.lr.ph188.i
  %i.su = load i32, ptr %i.aq, align 4, !tbaa !86, !noalias !977
  %i.sv = load ptr, ptr %12, align 8, !tbaa !34, !noalias !977
  %i.sw = load i64, ptr %i.at, align 8, !tbaa !35, !noalias !977
  %i.sx = load i64, ptr %i.az, align 8, !tbaa !76, !noalias !977 ; 2 uses
  %factor.op.mul193.i = mul i64 %i.sx, %i.sw
  %i.sy = sext i32 %i.su to i64
  %factor.op.mul184.us.i = mul i64 %i.sx, %i.sy
  %i.sz = sext i32 %i.cn to i64
  %i.ta = sext i32 %.1704.lcssa.i to i64
  %wide.trip.count245.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.us191.i, %.lr.ph188.split.us.i
  %indvars.iv247.i = phi i64 [ %indvars.iv.next248.i, %._crit_edge.us191.i ], [ %i.ta, %.lr.ph188.split.us.i ] ; 3 uses
  %.pre252.i = add nsw i64 %indvars.iv247.i, %i.ca ; 2 uses
  br i1 %.not.i80, label %.lr.ph.us190.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.tb = getelementptr inbounds [4 x i8], ptr %.val78, i64 %.pre252.i
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !53
  br label %.lr.ph.us190.i

.lr.ph.us190.i:                                   ; preds = %bb.az, %bb.ay
  %i.td = phi fast float [ %i.tc, %bb.az ], [ 0.000000e+00, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.te = trunc nsw i64 %indvars.iv247.i to i32
  %factor.op.mul181.reass.us.i = mul i32 %factor.op.mul137.i, %i.te
  %i.tf = sext i32 %factor.op.mul181.reass.us.i to i64
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.tf
  %.reass194.i = mul i64 %factor.op.mul193.i, %.pre252.i
  %i.th = getelementptr inbounds nuw i8, ptr %i.sv, i64 %.reass194.i
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bp, %.lr.ph.us190.i
  %indvars.iv242.i = phi i64 [ 0, %.lr.ph.us190.i ], [ %indvars.iv.next243.i, %bb.bp ] ; 3 uses
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %indvars.iv242.i ; 8 uses
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.se
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.sg
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.si
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.sk
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.sm
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.so
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.sq
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %bb.ba
  %indvars.iv234.i = phi i64 [ %indvars.iv.next235.i, %bb.bb ], [ 0, %bb.ba ] ; 7 uses
  %.0691177.us.i = phi ptr [ %i.vt, %bb.bb ], [ %i.tp, %bb.ba ] ; 2 uses
  %.0692176.us.i = phi ptr [ %i.vs, %bb.bb ], [ %i.to, %bb.ba ] ; 2 uses
  %.0693175.us.i = phi ptr [ %i.vr, %bb.bb ], [ %i.tn, %bb.ba ] ; 2 uses
  %.0694174.us.i = phi ptr [ %i.vq, %bb.bb ], [ %i.tm, %bb.ba ] ; 2 uses
  %.0695173.us.i = phi ptr [ %i.vp, %bb.bb ], [ %i.tl, %bb.ba ] ; 2 uses
  %.0696172.us.i = phi ptr [ %i.vo, %bb.bb ], [ %i.tk, %bb.ba ] ; 2 uses
  %.0697171.us.i = phi ptr [ %i.vn, %bb.bb ], [ %i.tj, %bb.ba ] ; 2 uses
  %.0698170.us.i = phi ptr [ %i.vm, %bb.bb ], [ %i.ti, %bb.ba ] ; 2 uses
  %i.tq = load float, ptr %.0697171.us.i, align 4, !tbaa !53 ; 2 uses
  %i.tr = load float, ptr %.0696172.us.i, align 4, !tbaa !53 ; 2 uses
  %i.ts = load float, ptr %.0695173.us.i, align 4, !tbaa !53 ; 2 uses
  %i.tt = load float, ptr %.0694174.us.i, align 4, !tbaa !53 ; 2 uses
  %i.tu = load float, ptr %.0693175.us.i, align 4, !tbaa !53 ; 2 uses
  %i.tv = load float, ptr %.0692176.us.i, align 4, !tbaa !53 ; 2 uses
  %i.tw = fadd fast float %i.tv, %i.tu            ; 3 uses
  %i.tx = fsub fast float %i.tu, %i.tv            ; 3 uses
  %i.ty = load float, ptr %.0698170.us.i, align 4, !tbaa !53
  %i.tz = fmul fast float %i.tw, 3.200000e+01
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv234.i
  %i.ub = fmul fast float %i.tx, 1.600000e+01
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv234.i
  %i.ud = fmul fast float %i.tw, 8.000000e+00
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv234.i
  %i.uf = fmul fast float %i.tx, 4.000000e+00
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv234.i
  %i.uh = fsub fast float %i.tq, %i.tr            ; 3 uses
  %i.ui = fadd fast float %i.tt, %i.ts            ; 2 uses
  %i.uj = fsub fast float %i.ts, %i.tt            ; 2 uses
  %i.uk = fadd fast float %i.tr, %i.tq            ; 2 uses
  %i.ul = fadd fast float %i.uh, %i.ub
  %i.um = fadd fast float %i.ui, %i.uk
  %i.un = fadd fast float %i.um, %i.ty
  %i.uo = fadd fast float %i.un, %i.tz
  store float %i.uo, ptr %i.ua, align 4, !tbaa !53
  %i.up = insertelement <4 x float> poison, float %i.uj, i64 0
  %i.uq = insertelement <4 x float> %i.up, float %i.ui, i64 1
  %i.ur = shufflevector <4 x float> %i.uq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.us = fmul fast <4 x float> %i.ur, <float 2.000000e+00, float 4.000000e+00, float 8.000000e+00, float 1.600000e+01>
  %i.ut = insertelement <4 x float> poison, float %i.ul, i64 0
  %i.uu = insertelement <4 x float> %i.ut, float %i.uk, i64 1
  %i.uv = insertelement <4 x float> %i.uu, float %i.uh, i64 2
  %i.uw = shufflevector <4 x float> %i.uv, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ux = fadd fast <4 x float> %i.uw, %i.us      ; 4 uses
  %i.uy = extractelement <4 x float> %i.ux, i64 0
  store float %i.uy, ptr %i.uc, align 4, !tbaa !53
  %i.uz = extractelement <4 x float> %i.ux, i64 1
  %i.va = fadd fast float %i.ud, %i.uz
  store float %i.va, ptr %i.ue, align 4, !tbaa !53
  %i.vb = extractelement <4 x float> %i.ux, i64 2
  %i.vc = fadd fast float %i.uf, %i.vb
  store float %i.vc, ptr %i.ug, align 4, !tbaa !53
  %factor115.us.i = fmul fast float %i.tw, 2.000000e+00
  %i.vd = extractelement <4 x float> %i.ux, i64 3
  %i.ve = fadd fast float %factor115.us.i, %i.vd
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv234.i
  store float %i.ve, ptr %i.vf, align 4, !tbaa !53
  %i.vg = load float, ptr %.0691177.us.i, align 4, !tbaa !53
  %i.vh = fmul fast float %i.uj, 3.200000e+01
  %i.vi = fadd fast float %i.uh, %i.vh
  %i.vj = fadd fast float %i.vi, %i.tx
  %i.vk = fadd fast float %i.vj, %i.vg
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv234.i
  store float %i.vk, ptr %i.vl, align 4, !tbaa !53
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %.0698170.us.i, i64 %i.ss
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %.0697171.us.i, i64 %i.ss
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %.0696172.us.i, i64 %i.ss
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %.0695173.us.i, i64 %i.ss
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %.0694174.us.i, i64 %i.ss
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %.0693175.us.i, i64 %i.ss
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %.0692176.us.i, i64 %i.ss
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %.0691177.us.i, i64 %i.ss
  %indvars.iv.next235.i = add nuw nsw i64 %indvars.iv234.i, 1 ; 2 uses
  %exitcond237.not.i = icmp eq i64 %indvars.iv.next235.i, 8
  br i1 %exitcond237.not.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, label %bb.bb, !llvm.loop !960

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %bb.bb
  %i.vu = trunc i64 %indvars.iv242.i to i32
  %i.vv = add i32 %.044131, %i.vu                 ; 2 uses
  %i.vw = sdiv i32 %i.vv, %i.ct
  %i.vx = srem i32 %i.vv, %i.ct
  %i.vy = mul nsw i32 %i.vw, 6
  %i.vz = sext i32 %i.vy to i64                   ; 2 uses
  %.reass185.us.i = mul i64 %factor.op.mul184.us.i, %i.vz
  %i.wa = getelementptr inbounds nuw i8, ptr %i.th, i64 %.reass185.us.i
  %i.wb = mul nsw i32 %i.vx, 6                    ; 6 uses
  %i.wc = sext i32 %i.wb to i64
  %i.wd = getelementptr inbounds [4 x i8], ptr %i.wa, i64 %i.wc
  %i.we = or disjoint i32 %i.wb, 1
  %i.wf = icmp slt i32 %i.we, %i.cm
  %i.wg = add nsw i32 %i.wb, 2
  %i.wh = icmp slt i32 %i.wg, %i.cm
  %i.wi = add nsw i32 %i.wb, 3
  %i.wj = icmp slt i32 %i.wi, %i.cm
  %i.wk = add nsw i32 %i.wb, 4
  %i.wl = icmp slt i32 %i.wk, %i.cm
  %i.wm = add nsw i32 %i.wb, 5
  %i.wn = icmp slt i32 %i.wm, %i.cm
  %invariant.op261.i = sub nsw i64 %i.sz, %i.vz
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bo, %_ZN4ncnn3MatD2Ev.exit.us.i
  %indvars.iv238.i = phi i64 [ %indvars.iv.next239.i, %bb.bo ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us.i ] ; 3 uses
  %.0689179.us.i = phi ptr [ %.1.us.i, %bb.bo ], [ %i.wd, %_ZN4ncnn3MatD2Ev.exit.us.i ] ; 8 uses
  %.not734.us.i = icmp slt i64 %indvars.iv238.i, %invariant.op261.i
  br i1 %.not734.us.i, label %bb.bd, label %bb.bo

bb.bd:                                            ; preds = %bb.bc
  %i.wo = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv238.i ; 8 uses
  %i.wp = load float, ptr %i.wo, align 16, !tbaa !53
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wo, i64 4
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !53 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wo, i64 8
  %i.wt = load float, ptr %i.ws, align 8, !tbaa !53 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wo, i64 12
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wo, i64 20
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wo, i64 24
  %i.wy = load float, ptr %i.wx, align 8, !tbaa !53 ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wo, i64 28
end_hunk_3
begin_hunk_4_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.10:bb.a
  %i.mq = icmp slt i32 %i.mp, %i.eo               ; 2 uses
  %i.mr = or disjoint i32 %i.ml, 2
  %i.ms = icmp slt i32 %i.mr, %i.eo               ; 2 uses
  %i.mt = or disjoint i32 %i.ml, 3
  %i.mu = icmp slt i32 %i.mt, %i.eo               ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.t, %.preheader776.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.t ], [ 0, %.preheader776.us.i ] ; 3 uses
  %.0682794.us.i = phi ptr [ %.1683.us.i, %bb.t ], [ %i.mo, %.preheader776.us.i ] ; 13 uses
  %i.mv = trunc i64 %indvars.iv.i to i32
  %i.mw = or i32 %i.mg, %i.mv
  %.not704.us.i = icmp slt i32 %i.mw, %i.ep
  br i1 %.not704.us.i, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.mx = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %indvars.iv.i ; 6 uses
  %i.my = load <4 x i32>, ptr %i.mx, align 16, !tbaa !108
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.na = load <4 x i32>, ptr %i.mz, align 16, !tbaa !108 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mx, i64 32
  %i.nc = load <4 x i32>, ptr %i.nb, align 16, !tbaa !108 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mx, i64 48
  %i.ne = load <4 x i32>, ptr %i.nd, align 16, !tbaa !108 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mx, i64 64
  %i.ng = load <4 x i32>, ptr %i.nf, align 16, !tbaa !108 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mx, i64 80
  %i.ni = load <4 x i32>, ptr %i.nh, align 16, !tbaa !108
  %i.nj = add <4 x i32> %i.nc, %i.na              ; 2 uses
  %i.nk = add <4 x i32> %i.ng, %i.ne              ; 2 uses
  %i.nl = sub <4 x i32> %i.na, %i.nc              ; 2 uses
  %i.nm = sub <4 x i32> %i.ne, %i.ng              ; 2 uses
  %i.nn = add <4 x i32> %i.nj, %i.my
  %i.no = add <4 x i32> %i.nn, %i.nk
  %i.np = shl <4 x i32> %i.nm, splat (i32 1)
  %i.nq = add <4 x i32> %i.np, %i.nl
  %i.nr = shl <4 x i32> %i.nk, splat (i32 2)
  %i.ns = add <4 x i32> %i.nr, %i.nj
  %i.nt = shl <4 x i32> %i.nm, splat (i32 3)
  %i.nu = add <4 x i32> %i.ni, %i.nl
  %i.nv = add <4 x i32> %i.nu, %i.nt
  %i.nw = sitofp fast <4 x i32> %i.no to <4 x float>
  %i.nx = fmul fast <4 x float> %i.nw, splat (float f0x3AE38E39)
  %i.ny = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nx) ; 5 uses
  %i.nz = sitofp fast <4 x i32> %i.nq to <4 x float>
  %i.oa = fmul fast <4 x float> %i.nz, splat (float f0x3AE38E39)
  %i.ob = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.oa) ; 5 uses
  %i.oc = sitofp fast <4 x i32> %i.ns to <4 x float>
  %i.od = fmul fast <4 x float> %i.oc, splat (float f0x3AE38E39)
  %i.oe = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.od) ; 5 uses
  %i.of = sitofp fast <4 x i32> %i.nv to <4 x float>
  %i.og = fmul fast <4 x float> %i.of, splat (float f0x3AE38E39)
  %i.oh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.og) ; 5 uses
  switch i32 %i.eq, label %bb.s [
    i32 4, label %bb.m
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %.0682794.us.i, i64 %i.et ; 4 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.0682794.us.i, i64 %.idx.i ; 4 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.0682794.us.i, i64 %.idx705.i ; 4 uses
  %.sroa.0748.0.vec.extract.us.i = extractelement <4 x i32> %i.ny, i64 0
  store i32 %.sroa.0748.0.vec.extract.us.i, ptr %.0682794.us.i, align 4, !tbaa !78
  %.sroa.0748.4.vec.extract.us.i = extractelement <4 x i32> %i.ny, i64 1
  store i32 %.sroa.0748.4.vec.extract.us.i, ptr %i.oi, align 4, !tbaa !78
  %.sroa.0748.8.vec.extract.us.i = extractelement <4 x i32> %i.ny, i64 2
  store i32 %.sroa.0748.8.vec.extract.us.i, ptr %i.oj, align 4, !tbaa !78
  %.sroa.0748.12.vec.extract.us.i = extractelement <4 x i32> %i.ny, i64 3
  store i32 %.sroa.0748.12.vec.extract.us.i, ptr %i.ok, align 4, !tbaa !78
  br i1 %i.mq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.7750.16.vec.extract.us.i = extractelement <4 x i32> %i.ob, i64 0
  %i.ol = getelementptr inbounds nuw i8, ptr %.0682794.us.i, i64 4
  store i32 %.sroa.7750.16.vec.extract.us.i, ptr %i.ol, align 4, !tbaa !78
  %.sroa.7750.20.vec.extract.us.i = extractelement <4 x i32> %i.ob, i64 1
  %i.om = getelementptr inbounds nuw i8, ptr %i.oi, i64 4
  store i32 %.sroa.7750.20.vec.extract.us.i, ptr %i.om, align 4, !tbaa !78
  %.sroa.7750.24.vec.extract.us.i = extractelement <4 x i32> %i.ob, i64 2
  %i.on = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  store i32 %.sroa.7750.24.vec.extract.us.i, ptr %i.on, align 4, !tbaa !78
  %.sroa.7750.28.vec.extract.us.i = extractelement <4 x i32> %i.ob, i64 3
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ok, i64 4
  store i32 %.sroa.7750.28.vec.extract.us.i, ptr %i.oo, align 4, !tbaa !78
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.ms, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.12.32.vec.extract.us.i = extractelement <4 x i32> %i.oe, i64 0
  %i.op = getelementptr inbounds nuw i8, ptr %.0682794.us.i, i64 8
  store i32 %.sroa.12.32.vec.extract.us.i, ptr %i.op, align 4, !tbaa !78
  %.sroa.12.36.vec.extract.us.i = extractelement <4 x i32> %i.oe, i64 1
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  store i32 %.sroa.12.36.vec.extract.us.i, ptr %i.oq, align 4, !tbaa !78
  %.sroa.12.40.vec.extract.us.i = extractelement <4 x i32> %i.oe, i64 2
  %i.or = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  store i32 %.sroa.12.40.vec.extract.us.i, ptr %i.or, align 4, !tbaa !78
  %.sroa.12.44.vec.extract.us.i = extractelement <4 x i32> %i.oe, i64 3
  %i.os = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  store i32 %.sroa.12.44.vec.extract.us.i, ptr %i.os, align 4, !tbaa !78
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.mu, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %.sroa.17753.48.vec.extract.us.i = extractelement <4 x i32> %i.oh, i64 0
  %i.ot = getelementptr inbounds nuw i8, ptr %.0682794.us.i, i64 12
  store i32 %.sroa.17753.48.vec.extract.us.i, ptr %i.ot, align 4, !tbaa !78
  %.sroa.17753.52.vec.extract.us.i = extractelement <4 x i32> %i.oh, i64 1
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oi, i64 12
  store i32 %.sroa.17753.52.vec.extract.us.i, ptr %i.ou, align 4, !tbaa !78
  %.sroa.17753.56.vec.extract.us.i = extractelement <4 x i32> %i.oh, i64 2
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oj, i64 12
  store i32 %.sroa.17753.56.vec.extract.us.i, ptr %i.ov, align 4, !tbaa !78
  %.sroa.17753.60.vec.extract.us.i = extractelement <4 x i32> %i.oh, i64 3
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ok, i64 12
  store i32 %.sroa.17753.60.vec.extract.us.i, ptr %i.ow, align 4, !tbaa !78
  br label %bb.s

bb.m:                                             ; preds = %bb.f
  store <4 x i32> %i.ny, ptr %.0682794.us.i, align 16, !tbaa !108
  br i1 %i.mq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ox = getelementptr inbounds nuw i8, ptr %.0682794.us.i, i64 16
  store <4 x i32> %i.ob, ptr %i.ox, align 16, !tbaa !108
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %i.ms, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.oy = getelementptr inbounds nuw i8, ptr %.0682794.us.i, i64 32
  store <4 x i32> %i.oe, ptr %i.oy, align 16, !tbaa !108
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %i.mu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.oz = getelementptr inbounds nuw i8, ptr %.0682794.us.i, i64 48
  store <4 x i32> %i.oh, ptr %i.oz, align 16, !tbaa !108
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.l, %bb.k, %bb.f
  %i.pa = getelementptr inbounds [4 x i8], ptr %.0682794.us.i, i64 %i.fk
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.e
  %.1683.us.i = phi ptr [ %.0682794.us.i, %bb.e ], [ %i.pa, %bb.s ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %bb.u, label %bb.e, !llvm.loop !1273

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next996.i = add nuw nsw i64 %indvars.iv995.i, 1 ; 2 uses
  %exitcond998.not.i = icmp eq i64 %indvars.iv.next996.i, %wide.trip.count.i
  br i1 %exitcond998.not.i, label %._crit_edge.us.i, label %.preheader776.us.i, !llvm.loop !1274

._crit_edge.us.i:                                 ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %indvars.iv.next1000.i = add nuw nsw i64 %indvars.iv999.i, 4 ; 3 uses
  %i.pb = or disjoint i64 %indvars.iv.next1000.i, 3
  %i.pc = icmp samesign ult i64 %i.pb, %i.ed
  br i1 %i.pc, label %.lr.ph.us.i, label %.preheader775.loopexit.i, !llvm.loop !1275

.preheader775.loopexit.i:                         ; preds = %._crit_edge.us.i
  %i.pd = trunc nuw nsw i64 %indvars.iv.next1000.i to i32
  br label %.preheader775.i

.preheader775.i:                                  ; preds = %.lr.ph799.i, %.preheader775.loopexit.i, %._crit_edge
  %.0647.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.pd, %.preheader775.loopexit.i ], [ %i.ec, %.lr.ph799.i ] ; 5 uses
  %i.pe = or disjoint i32 %.0647.lcssa.i, 1
  %i.pf = icmp slt i32 %i.pe, %.sroa.speculated118
  br i1 %i.pf, label %.lr.ph850.i, label %.preheader773.i

.lr.ph850.i:                                      ; preds = %.preheader775.i
  %i.pg = icmp sgt i32 %.sroa.speculated114, 0
  %i.ph = shl nuw nsw i32 %.sroa.speculated114, 1
  %i.pi = zext nneg i32 %i.ph to i64
  %i.pj = shl nuw nsw i32 %.sroa.speculated114, 2
  %i.pk = zext nneg i32 %i.pj to i64
  %i.pl = mul nuw nsw i32 %.sroa.speculated114, 6
  %i.pm = zext nneg i32 %i.pl to i64
  %i.pn = shl nuw nsw i32 %.sroa.speculated114, 3
  %i.po = zext nneg i32 %i.pn to i64
  %i.pp = mul nuw nsw i32 %.sroa.speculated114, 10
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = mul nuw nsw i32 %.sroa.speculated114, 12
  %i.ps = zext nneg i32 %i.pr to i64              ; 30 uses
  %i.pt = sext i32 %i.eo to i64
  br i1 %i.pg, label %.lr.ph850.split.us.i, label %.lr.ph850.split.preheader.i

.lr.ph850.split.preheader.i:                      ; preds = %.lr.ph850.i
  %i.pu = sub i32 %i.ee, %.0647.lcssa.i
  %i.pv = and i32 %i.pu, -2
  %i.pw = add nsw i32 %.0647.lcssa.i, 2
  %i.px = add i32 %i.pw, %i.pv
  br label %.preheader773.i

.lr.ph850.split.us.i:                             ; preds = %.lr.ph850.i
  %i.py = load ptr, ptr %12, align 8, !tbaa !34, !noalias !1297
  %i.pz = load i64, ptr %i.as, align 8, !tbaa !35, !noalias !1297
  %i.qa = load i64, ptr %i.ba, align 8, !tbaa !76, !noalias !1297 ; 2 uses
  %factor.op.mul.i = mul i64 %i.qa, %i.pz
  %i.qb = sext i32 %.0647.lcssa.i to i64
  %wide.trip.count1013.i = zext nneg i32 %.sroa.speculated114 to i64
  br label %.lr.ph.us853.i

.lr.ph.us853.i:                                   ; preds = %._crit_edge.us854.i, %.lr.ph850.split.us.i
  %indvars.iv1015.i = phi i64 [ %indvars.iv.next1016.i, %._crit_edge.us854.i ], [ %i.qb, %.lr.ph850.split.us.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.qc = trunc nsw i64 %indvars.iv1015.i to i32
  %factor.op.mul.reass.us852.i = mul i32 %factor.op.mul796.i, %i.qc
  %i.qd = sext i32 %factor.op.mul.reass.us852.i to i64
  %i.qe = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.qd
  %i.qf = add nsw i64 %indvars.iv1015.i, %i.eg
  %.reass.i = mul i64 %factor.op.mul.i, %i.qf
  %i.qg = getelementptr inbounds nuw i8, ptr %i.py, i64 %.reass.i
  br label %.preheader774.us.i

.preheader774.us.i:                               ; preds = %bb.ae, %.lr.ph.us853.i
  %indvars.iv1010.i = phi i64 [ 0, %.lr.ph.us853.i ], [ %indvars.iv.next1011.i, %bb.ae ] ; 3 uses
  %.idx1040.i = shl nuw nsw i64 %indvars.iv1010.i, 3
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 %.idx1040.i ; 8 uses
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %i.pi ; 3 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %i.pk ; 3 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %i.pm ; 3 uses
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %i.po ; 3 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %i.pq ; 3 uses
  %i.qn = load i32, ptr %i.qi, align 4, !tbaa !78 ; 2 uses
  %i.qo = load i32, ptr %i.qj, align 4, !tbaa !78 ; 2 uses
  %i.qp = add nsw i32 %i.qo, %i.qn                ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qi, i64 4
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !78 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qj, i64 4
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !78 ; 2 uses
  %i.qu = add nsw i32 %i.qt, %i.qr                ; 2 uses
  %i.qv = load i32, ptr %i.qk, align 4, !tbaa !78 ; 2 uses
  %i.qw = load i32, ptr %i.ql, align 4, !tbaa !78 ; 2 uses
  %i.qx = add nsw i32 %i.qw, %i.qv                ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qk, i64 4
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !78 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.ql, i64 4
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !78 ; 2 uses
  %i.rc = add nsw i32 %i.rb, %i.qz                ; 2 uses
  %i.rd = sub nsw i32 %i.qn, %i.qo                ; 2 uses
  %i.re = sub nsw i32 %i.qr, %i.qt                ; 2 uses
  %i.rf = sub nsw i32 %i.qv, %i.qw                ; 2 uses
  %i.rg = sub nsw i32 %i.qz, %i.rb                ; 2 uses
  %i.rh = add nsw i32 %i.qx, %i.qp
  %i.ri = load i32, ptr %i.qh, align 4, !tbaa !78
  %i.rj = add nsw i32 %i.rh, %i.ri
  %i.rk = add nsw i32 %i.rc, %i.qu
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qh, i64 4
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !78
  %i.rn = add nsw i32 %i.rk, %i.rm
  %i.ro = shl nsw i32 %i.rf, 1
  %i.rp = add nsw i32 %i.ro, %i.rd
  %i.rq = shl nsw i32 %i.rg, 1
  %i.rr = add nsw i32 %i.rq, %i.re
  %i.rs = shl nsw i32 %i.qx, 2
  %i.rt = add nsw i32 %i.rs, %i.qp
  %i.ru = shl nsw i32 %i.rc, 2
  %i.rv = add nsw i32 %i.ru, %i.qu
  %i.rw = shl nsw i32 %i.rf, 3
  %i.rx = add nsw i32 %i.rw, %i.rd
  %i.ry = load i32, ptr %i.qm, align 4, !tbaa !78
  %i.rz = shl nsw i32 %i.ry, 2
  %i.sa = add nsw i32 %i.rx, %i.rz
  %i.sb = shl nsw i32 %i.rg, 3
  %i.sc = add nsw i32 %i.sb, %i.re
  %i.sd = getelementptr inbounds nuw i8, ptr %i.qm, i64 4
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !78
  %i.sf = shl nsw i32 %i.se, 2
  %i.sg = add nsw i32 %i.sc, %i.sf
  store i32 %i.rj, ptr %i.b, align 16, !tbaa !78
  store i32 %i.rn, ptr %i.cc, align 4, !tbaa !78
  store i32 %i.rp, ptr %i.br, align 16, !tbaa !78
  store i32 %i.rr, ptr %i.cd, align 4, !tbaa !78
  store i32 %i.rt, ptr %i.bs, align 16, !tbaa !78
  store i32 %i.rv, ptr %i.ce, align 4, !tbaa !78
  store i32 %i.sa, ptr %i.bt, align 16, !tbaa !78
  store i32 %i.sg, ptr %i.cf, align 4, !tbaa !78
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %i.ps ; 3 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %i.ps ; 3 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %i.ps ; 3 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.qk, i64 %i.ps ; 3 uses
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %i.ps ; 3 uses
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.qm, i64 %i.ps ; 3 uses
  %i.sn = load i32, ptr %i.si, align 4, !tbaa !78 ; 2 uses
  %i.so = load i32, ptr %i.sj, align 4, !tbaa !78 ; 2 uses
  %i.sp = add nsw i32 %i.so, %i.sn                ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.si, i64 4
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !78 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !78 ; 2 uses
  %i.su = add nsw i32 %i.st, %i.sr                ; 2 uses
  %i.sv = load i32, ptr %i.sk, align 4, !tbaa !78 ; 2 uses
  %i.sw = load i32, ptr %i.sl, align 4, !tbaa !78 ; 2 uses
  %i.sx = add nsw i32 %i.sw, %i.sv                ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sk, i64 4
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !78 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sl, i64 4
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !78 ; 2 uses
  %i.tc = add nsw i32 %i.tb, %i.sz                ; 2 uses
  %i.td = sub nsw i32 %i.sn, %i.so                ; 2 uses
  %i.te = sub nsw i32 %i.sr, %i.st                ; 2 uses
  %i.tf = sub nsw i32 %i.sv, %i.sw                ; 2 uses
  %i.tg = sub nsw i32 %i.sz, %i.tb                ; 2 uses
  %i.th = add nsw i32 %i.sx, %i.sp
  %i.ti = load i32, ptr %i.sh, align 4, !tbaa !78
  %i.tj = add nsw i32 %i.th, %i.ti
  %i.tk = add nsw i32 %i.tc, %i.su
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sh, i64 4
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !78
  %i.tn = add nsw i32 %i.tk, %i.tm
  %i.to = shl nsw i32 %i.tf, 1
  %i.tp = add nsw i32 %i.to, %i.td
  %i.tq = shl nsw i32 %i.tg, 1
  %i.tr = add nsw i32 %i.tq, %i.te
  %i.ts = shl nsw i32 %i.sx, 2
  %i.tt = add nsw i32 %i.ts, %i.sp
  %i.tu = shl nsw i32 %i.tc, 2
  %i.tv = add nsw i32 %i.tu, %i.su
  %i.tw = shl nsw i32 %i.tf, 3
  %i.tx = add nsw i32 %i.tw, %i.td
  %i.ty = load i32, ptr %i.sm, align 4, !tbaa !78
  %i.tz = shl nsw i32 %i.ty, 2
  %i.ua = add nsw i32 %i.tx, %i.tz
  %i.ub = shl nsw i32 %i.tg, 3
  %i.uc = add nsw i32 %i.ub, %i.te
  %i.ud = getelementptr inbounds nuw i8, ptr %i.sm, i64 4
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !78
  %i.uf = shl nsw i32 %i.ue, 2
  %i.ug = add nsw i32 %i.uc, %i.uf
  store i32 %i.tj, ptr %i.cg, align 8, !tbaa !78
  store i32 %i.tn, ptr %i.ch, align 4, !tbaa !78
  store i32 %i.tp, ptr %i.ci, align 8, !tbaa !78
  store i32 %i.tr, ptr %i.cj, align 4, !tbaa !78
  store i32 %i.tt, ptr %i.ck, align 8, !tbaa !78
  store i32 %i.tv, ptr %i.cl, align 4, !tbaa !78
  store i32 %i.ua, ptr %i.cm, align 8, !tbaa !78
  store i32 %i.ug, ptr %i.cn, align 4, !tbaa !78
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %i.ps ; 3 uses
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %i.ps ; 3 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %i.ps ; 3 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %i.ps ; 3 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %i.ps ; 3 uses
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.sm, i64 %i.ps ; 3 uses
  %i.un = load i32, ptr %i.ui, align 4, !tbaa !78 ; 2 uses
  %i.uo = load i32, ptr %i.uj, align 4, !tbaa !78 ; 2 uses
  %i.up = add nsw i32 %i.uo, %i.un                ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ui, i64 4
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !78 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.uj, i64 4
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !78 ; 2 uses
  %i.uu = add nsw i32 %i.ut, %i.ur                ; 2 uses
  %i.uv = load i32, ptr %i.uk, align 4, !tbaa !78 ; 2 uses
  %i.uw = load i32, ptr %i.ul, align 4, !tbaa !78 ; 2 uses
  %i.ux = add nsw i32 %i.uw, %i.uv                ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uk, i64 4
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !78 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.ul, i64 4
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !78 ; 2 uses
  %i.vc = add nsw i32 %i.vb, %i.uz                ; 2 uses
  %i.vd = sub nsw i32 %i.un, %i.uo                ; 2 uses
  %i.ve = sub nsw i32 %i.ur, %i.ut                ; 2 uses
  %i.vf = sub nsw i32 %i.uv, %i.uw                ; 2 uses
  %i.vg = sub nsw i32 %i.uz, %i.vb                ; 2 uses
  %i.vh = add nsw i32 %i.ux, %i.up
  %i.vi = load i32, ptr %i.uh, align 4, !tbaa !78
  %i.vj = add nsw i32 %i.vh, %i.vi
  %i.vk = add nsw i32 %i.vc, %i.uu
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !78
  %i.vn = add nsw i32 %i.vk, %i.vm
  %i.vo = shl nsw i32 %i.vf, 1
  %i.vp = add nsw i32 %i.vo, %i.vd
  %i.vq = shl nsw i32 %i.vg, 1
  %i.vr = add nsw i32 %i.vq, %i.ve
  %i.vs = shl nsw i32 %i.ux, 2
  %i.vt = add nsw i32 %i.vs, %i.up
  %i.vu = shl nsw i32 %i.vc, 2
  %i.vv = add nsw i32 %i.vu, %i.uu
  %i.vw = shl nsw i32 %i.vf, 3
  %i.vx = add nsw i32 %i.vw, %i.vd
  %i.vy = load i32, ptr %i.um, align 4, !tbaa !78
  %i.vz = shl nsw i32 %i.vy, 2
  %i.wa = add nsw i32 %i.vx, %i.vz
  %i.wb = shl nsw i32 %i.vg, 3
  %i.wc = add nsw i32 %i.wb, %i.ve
  %i.wd = getelementptr inbounds nuw i8, ptr %i.um, i64 4
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !78
  %i.wf = shl nsw i32 %i.we, 2
  %i.wg = add nsw i32 %i.wc, %i.wf
  store i32 %i.vj, ptr %i.co, align 16, !tbaa !78
end_hunk_4
begin_hunk_5_@_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.11:bb.a
  %i.dn = load <4 x i32>, ptr %i.dk, align 16, !tbaa !108 ; 2 uses
  %i.do = load <4 x i32>, ptr %i.dl, align 16, !tbaa !108
  %i.dp = sub <4 x i32> %i.dm, %i.dn
  %i.dq = add <4 x i32> %i.dp, %i.do              ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.cj
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.cj
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.cj
  %i.du = load <4 x i32>, ptr %i.dr, align 16, !tbaa !108 ; 2 uses
  %i.dv = load <4 x i32>, ptr %i.ds, align 16, !tbaa !108 ; 2 uses
  %i.dw = load <4 x i32>, ptr %i.dt, align 16, !tbaa !108
  %i.dx = trunc i64 %indvars.iv.i to i32
  %i.dy = add i32 %.044143, %i.dx                 ; 2 uses
  %i.dz = sdiv i32 %i.dy, %i.cb
  %i.ea = srem i32 %i.dy, %i.cb
  %i.eb = load i32, ptr %i.an, align 4, !tbaa !86, !noalias !1418
  %i.ec = load ptr, ptr %12, align 8, !tbaa !34, !noalias !1418
  %i.ed = load i64, ptr %i.aq, align 8, !tbaa !35, !noalias !1418
  %i.ee = mul i64 %i.ed, %i.cr
  %i.ef = load i64, ptr %i.ar, align 8, !tbaa !76, !noalias !1418 ; 2 uses
  %i.eg = mul i64 %i.ee, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.eg
  %i.ei = sext i32 %i.eb to i64
  %i.ej = shl nsw i32 %i.dz, 1                    ; 3 uses
  %i.ek = sext i32 %i.ej to i64
  %i.el = mul nsw i64 %i.ei, %i.ek
  %i.em = mul i64 %i.el, %i.ef
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.em
  %i.eo = shl nsw i32 %i.ea, 1                    ; 2 uses
  %i.ep = mul nsw i32 %i.eo, %i.bw
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.en, i64 %i.eq ; 9 uses
  %i.es = or disjoint i32 %i.eo, 1
  %i.et = icmp slt i32 %i.es, %i.bu               ; 4 uses
  %.not299.us.i = icmp slt i32 %i.ej, %i.bv
  br i1 %.not299.us.i, label %bb.e, label %bb.k

bb.e:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit302.us.i
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cj ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.cj ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.cj
  %i.ex = load <4 x i32>, ptr %i.ew, align 16, !tbaa !108
  %i.ey = load <4 x i32>, ptr %i.ev, align 16, !tbaa !108
  %i.ez = add <4 x i32> %i.dn, %i.dm
  %i.fa = add <4 x i32> %i.ez, %i.ey              ; 2 uses
  %i.fb = load <4 x i32>, ptr %i.eu, align 16, !tbaa !108
  %i.fc = add <4 x i32> %i.df, %i.de
  %i.fd = add <4 x i32> %i.fc, %i.fb              ; 2 uses
  %i.fe = load <4 x i32>, ptr %i.cs, align 16, !tbaa !108
  %i.ff = add <4 x i32> %i.cx, %i.cw
  %i.fg = add <4 x i32> %i.ff, %i.fe
  %i.fh = add <4 x i32> %i.fg, %i.fa
  %i.fi = add <4 x i32> %i.fh, %i.fd
  %i.fj = add <4 x i32> %i.dv, %i.du
  %i.fk = add <4 x i32> %i.fj, %i.ex
  %i.fl = sub <4 x i32> %i.fk, %i.fa
  %i.fm = add <4 x i32> %i.fl, %i.fd
  %i.fn = ashr <4 x i32> %i.fi, splat (i32 2)     ; 5 uses
  %i.fo = ashr <4 x i32> %i.fm, splat (i32 2)     ; 5 uses
  switch i32 %i.bw, label %bb.j [
    i32 4, label %bb.h
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.bz ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.er, i64 %.idx.i ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.er, i64 %.idx300.i ; 2 uses
  %.sroa.026.0.vec.extract.us.i = extractelement <4 x i32> %i.fn, i64 0
  store i32 %.sroa.026.0.vec.extract.us.i, ptr %i.er, align 4, !tbaa !78
  %.sroa.026.4.vec.extract.us.i = extractelement <4 x i32> %i.fn, i64 1
  store i32 %.sroa.026.4.vec.extract.us.i, ptr %i.fp, align 4, !tbaa !78
  %.sroa.026.8.vec.extract.us.i = extractelement <4 x i32> %i.fn, i64 2
  store i32 %.sroa.026.8.vec.extract.us.i, ptr %i.fq, align 4, !tbaa !78
  %.sroa.026.12.vec.extract.us.i = extractelement <4 x i32> %i.fn, i64 3
  store i32 %.sroa.026.12.vec.extract.us.i, ptr %i.fr, align 4, !tbaa !78
  br i1 %i.et, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.sroa.728.16.vec.extract.us.i = extractelement <4 x i32> %i.fo, i64 0
  %i.fs = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  store i32 %.sroa.728.16.vec.extract.us.i, ptr %i.fs, align 4, !tbaa !78
  %.sroa.728.20.vec.extract.us.i = extractelement <4 x i32> %i.fo, i64 1
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store i32 %.sroa.728.20.vec.extract.us.i, ptr %i.ft, align 4, !tbaa !78
  %.sroa.728.24.vec.extract.us.i = extractelement <4 x i32> %i.fo, i64 2
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store i32 %.sroa.728.24.vec.extract.us.i, ptr %i.fu, align 4, !tbaa !78
  %.sroa.728.28.vec.extract.us.i = extractelement <4 x i32> %i.fo, i64 3
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i32 %.sroa.728.28.vec.extract.us.i, ptr %i.fv, align 4, !tbaa !78
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  store <4 x i32> %i.fn, ptr %i.er, align 16, !tbaa !108
  br i1 %i.et, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fw = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <4 x i32> %i.fo, ptr %i.fw, align 16, !tbaa !108
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.cl
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4ncnn3MatD2Ev.exit302.us.i
  %.1286.us.i = phi ptr [ %i.er, %_ZN4ncnn3MatD2Ev.exit302.us.i ], [ %i.fx, %bb.j ] ; 7 uses
  %i.fy = or disjoint i32 %i.ej, 1
  %.not299.us.1.i = icmp slt i32 %i.fy, %i.bv
  br i1 %.not299.us.1.i, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.fz = add <4 x i32> %i.da, %i.di
  %i.ga = add <4 x i32> %i.fz, %i.dq
  %i.gb = add <4 x i32> %i.di, %i.du
  %i.gc = add <4 x i32> %i.dq, %i.dv
  %i.gd = sub <4 x i32> %i.gb, %i.gc
  %i.ge = add <4 x i32> %i.gd, %i.dw
  %i.gf = ashr <4 x i32> %i.ga, splat (i32 2)     ; 5 uses
  %i.gg = ashr <4 x i32> %i.ge, splat (i32 2)     ; 5 uses
  switch i32 %i.bw, label %bb.q [
    i32 4, label %bb.o
    i32 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.1286.us.i, i64 %i.bz ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.1286.us.i, i64 %.idx.i ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.1286.us.i, i64 %.idx300.i ; 2 uses
  %.sroa.026.0.vec.extract.us.1.i = extractelement <4 x i32> %i.gf, i64 0
  store i32 %.sroa.026.0.vec.extract.us.1.i, ptr %.1286.us.i, align 4, !tbaa !78
  %.sroa.026.4.vec.extract.us.1.i = extractelement <4 x i32> %i.gf, i64 1
  store i32 %.sroa.026.4.vec.extract.us.1.i, ptr %i.gh, align 4, !tbaa !78
  %.sroa.026.8.vec.extract.us.1.i = extractelement <4 x i32> %i.gf, i64 2
  store i32 %.sroa.026.8.vec.extract.us.1.i, ptr %i.gi, align 4, !tbaa !78
  %.sroa.026.12.vec.extract.us.1.i = extractelement <4 x i32> %i.gf, i64 3
  store i32 %.sroa.026.12.vec.extract.us.1.i, ptr %i.gj, align 4, !tbaa !78
  br i1 %i.et, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.sroa.728.16.vec.extract.us.1.i = extractelement <4 x i32> %i.gg, i64 0
  %i.gk = getelementptr inbounds nuw i8, ptr %.1286.us.i, i64 4
  store i32 %.sroa.728.16.vec.extract.us.1.i, ptr %i.gk, align 4, !tbaa !78
  %.sroa.728.20.vec.extract.us.1.i = extractelement <4 x i32> %i.gg, i64 1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i32 %.sroa.728.20.vec.extract.us.1.i, ptr %i.gl, align 4, !tbaa !78
  %.sroa.728.24.vec.extract.us.1.i = extractelement <4 x i32> %i.gg, i64 2
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  store i32 %.sroa.728.24.vec.extract.us.1.i, ptr %i.gm, align 4, !tbaa !78
  %.sroa.728.28.vec.extract.us.1.i = extractelement <4 x i32> %i.gg, i64 3
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  store i32 %.sroa.728.28.vec.extract.us.1.i, ptr %i.gn, align 4, !tbaa !78
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  store <4 x i32> %i.gf, ptr %.1286.us.i, align 16, !tbaa !108
  br i1 %i.et, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.go = getelementptr inbounds nuw i8, ptr %.1286.us.i, i64 16
  store <4 x i32> %i.gg, ptr %i.go, align 16, !tbaa !108
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %_ZN4ncnn3MatD2Ev.exit302.us.i, !llvm.loop !1397

._crit_edge.us.i:                                 ; preds = %bb.q
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 4 ; 3 uses
  %i.gp = or disjoint i64 %indvars.iv.next119.i, 3
  %i.gq = icmp samesign ult i64 %i.gp, %i.bj
  br i1 %i.gq, label %.lr.ph.us.i, label %.preheader55.loopexit.i, !llvm.loop !1398

.preheader55.loopexit.i:                          ; preds = %._crit_edge.us.i
  %i.gr = trunc nuw nsw i64 %indvars.iv.next119.i to i32
  br label %.preheader55.i

.preheader55.i:                                   ; preds = %.lr.ph67.i, %.preheader55.loopexit.i, %._crit_edge
  %.0287.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.gr, %.preheader55.loopexit.i ], [ %i.bi, %.lr.ph67.i ] ; 5 uses
  %i.gs = or disjoint i32 %.0287.lcssa.i, 1
  %i.gt = icmp slt i32 %i.gs, %.sroa.speculated119
  br i1 %i.gt, label %.lr.ph78.i, label %.preheader.i

.lr.ph78.i:                                       ; preds = %.preheader55.i
  %i.gu = icmp sgt i32 %.sroa.speculated115, 0
  %i.gv = shl nuw nsw i32 %.sroa.speculated115, 1
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = shl nuw nsw i32 %.sroa.speculated115, 2
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = mul nuw nsw i32 %.sroa.speculated115, 6
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = shl nuw nsw i32 %.sroa.speculated115, 3
  %i.hc = zext nneg i32 %i.hb to i64              ; 12 uses
  %i.hd = sext i32 %i.bu to i64
  br i1 %i.gu, label %.lr.ph78.split.us.i, label %.lr.ph78.split.preheader.i

.lr.ph78.split.preheader.i:                       ; preds = %.lr.ph78.i
  %i.he = sub i32 %i.bk, %.0287.lcssa.i
  %i.hf = and i32 %i.he, -2
  %i.hg = add nsw i32 %.0287.lcssa.i, 2
  %i.hh = add i32 %i.hg, %i.hf
  br label %.preheader.i

.lr.ph78.split.us.i:                              ; preds = %.lr.ph78.i
  %i.hi = load ptr, ptr %12, align 8, !tbaa !34, !noalias !1419
  %i.hj = load i64, ptr %i.aq, align 8, !tbaa !35, !noalias !1419
  %i.hk = load i64, ptr %i.ar, align 8, !tbaa !76, !noalias !1419 ; 2 uses
  %factor.op.mul.i = mul i64 %i.hk, %i.hj
  %i.hl = sext i32 %.0287.lcssa.i to i64
  %wide.trip.count131.i = zext nneg i32 %.sroa.speculated115 to i64
  br label %.lr.ph.us81.i

.lr.ph.us81.i:                                    ; preds = %._crit_edge.us82.i, %.lr.ph78.split.us.i
  %indvars.iv133.i = phi i64 [ %indvars.iv.next134.i, %._crit_edge.us82.i ], [ %i.hl, %.lr.ph78.split.us.i ] ; 3 uses
  %i.hm = trunc nsw i64 %indvars.iv133.i to i32
  %factor.op.mul.reass.us80.i = mul i32 %factor.op.mul64.i, %i.hm
  %i.hn = sext i32 %factor.op.mul.reass.us80.i to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.hn
  %i.hp = add nsw i64 %indvars.iv133.i, %i.bm
  %.reass.i = mul i64 %factor.op.mul.i, %i.hp
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.reass.i
  br label %_ZN4ncnn3MatD2Ev.exit301.us.i

_ZN4ncnn3MatD2Ev.exit301.us.i:                    ; preds = %bb.x, %.lr.ph.us81.i
  %indvars.iv128.i = phi i64 [ 0, %.lr.ph.us81.i ], [ %indvars.iv.next129.i, %bb.x ] ; 3 uses
  %.idx178.i = shl nuw nsw i64 %indvars.iv128.i, 3
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.idx178.i ; 6 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.gw ; 3 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.gy ; 3 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.ha ; 3 uses
  %i.hv = load i32, ptr %i.hs, align 4, !tbaa !78 ; 2 uses
  %i.hw = load i32, ptr %i.ht, align 4, !tbaa !78 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !78 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !78 ; 2 uses
  %i.ib = sub i32 %i.hv, %i.hw
  %i.ic = load i32, ptr %i.hu, align 4, !tbaa !78
  %i.id = add nsw i32 %i.ib, %i.ic
  %i.ie = sub i32 %i.hy, %i.ia
  %i.if = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !78
  %i.ih = add nsw i32 %i.ie, %i.ig
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.hc ; 3 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hc ; 3 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hc ; 3 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.hc ; 3 uses
  %i.im = load i32, ptr %i.ii, align 4, !tbaa !78
  %i.in = load i32, ptr %i.ij, align 4, !tbaa !78 ; 2 uses
  %i.io = add nsw i32 %i.in, %i.im
  %i.ip = load i32, ptr %i.ik, align 4, !tbaa !78 ; 2 uses
  %i.iq = add nsw i32 %i.io, %i.ip                ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !78
  %i.it = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !78 ; 2 uses
  %i.iv = add nsw i32 %i.iu, %i.is
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !78 ; 2 uses
  %i.iy = add nsw i32 %i.iv, %i.ix                ; 2 uses
  %i.iz = sub i32 %i.in, %i.ip
  %i.ja = load i32, ptr %i.il, align 4, !tbaa !78
  %i.jb = add nsw i32 %i.ja, %i.iz                ; 2 uses
  %i.jc = sub i32 %i.iu, %i.ix
  %i.jd = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !78
  %i.jf = add nsw i32 %i.je, %i.jc                ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.hc ; 3 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.hc ; 3 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.hc ; 3 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.hc ; 3 uses
  %i.jk = load i32, ptr %i.jg, align 4, !tbaa !78
  %i.jl = load i32, ptr %i.jh, align 4, !tbaa !78 ; 2 uses
  %i.jm = add nsw i32 %i.jl, %i.jk
  %i.jn = load i32, ptr %i.ji, align 4, !tbaa !78 ; 2 uses
  %i.jo = add nsw i32 %i.jm, %i.jn                ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !78
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !78 ; 2 uses
  %i.jt = add nsw i32 %i.js, %i.jq
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !78 ; 2 uses
  %i.jw = add nsw i32 %i.jt, %i.jv                ; 2 uses
  %i.jx = sub i32 %i.jl, %i.jn
  %i.jy = load i32, ptr %i.jj, align 4, !tbaa !78
  %i.jz = add nsw i32 %i.jy, %i.jx                ; 2 uses
  %i.ka = sub i32 %i.js, %i.jv
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !78
  %i.kd = add nsw i32 %i.kc, %i.ka                ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.hc ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.hc ; 2 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.hc ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.hc ; 2 uses
  %i.ki = load i32, ptr %i.ke, align 4, !tbaa !78
  %i.kj = load i32, ptr %i.kf, align 4, !tbaa !78 ; 2 uses
  %i.kk = load i32, ptr %i.kg, align 4, !tbaa !78 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !78
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !78 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !78 ; 2 uses
  %i.kr = load i32, ptr %i.kh, align 4, !tbaa !78
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !78
  %i.ku = trunc i64 %indvars.iv128.i to i32
  %i.kv = add i32 %.044143, %i.ku                 ; 2 uses
  %i.kw = sdiv i32 %i.kv, %i.cb
  %i.kx = srem i32 %i.kv, %i.cb
  %i.ky = load i32, ptr %i.an, align 4, !tbaa !86, !noalias !1419
  %i.kz = sext i32 %i.ky to i64
  %i.la = shl nsw i32 %i.kw, 1                    ; 3 uses
  %i.lb = sext i32 %i.la to i64
  %i.lc = mul i64 %i.hk, %i.lb
  %i.ld = mul i64 %i.lc, %i.kz
  %i.le = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.ld
  %i.lf = shl nsw i32 %i.kx, 1                    ; 2 uses
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.le, i64 %i.lg ; 5 uses
  %i.li = or disjoint i32 %i.lf, 1
  %i.lj = icmp slt i32 %i.li, %i.bu               ; 2 uses
  %.not298.us.i = icmp slt i32 %i.la, %i.bv
  br i1 %.not298.us.i, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit301.us.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !78
  %i.lm = load i32, ptr %i.hr, align 4, !tbaa !78
  %i.ln = add i32 %i.hw, %i.hv
  %i.lo = add i32 %i.ln, %i.iq
  %i.lp = add i32 %i.lo, %i.jo
  %i.lq = add i32 %i.lp, %i.lm
  %i.lr = add i32 %i.ia, %i.hy
  %i.ls = add i32 %i.lr, %i.iy
  %i.lt = add i32 %i.ls, %i.jw
  %i.lu = add i32 %i.lt, %i.ll
  %i.lv = ashr i32 %i.lq, 2
  %i.lw = ashr i32 %i.lu, 2
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.bz ; 2 uses
  store i32 %i.lv, ptr %i.lh, align 4, !tbaa !78
  store i32 %i.lw, ptr %i.lx, align 4, !tbaa !78
  br i1 %i.lj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ly = sub i32 %i.iy, %i.jw
  %i.lz = add i32 %i.ly, %i.km
  %i.ma = add i32 %i.lz, %i.ko
  %i.mb = add i32 %i.ma, %i.kq
  %i.mc = ashr i32 %i.mb, 2
  %i.md = sub i32 %i.iq, %i.jo
  %i.me = add i32 %i.md, %i.ki
  %i.mf = add i32 %i.me, %i.kj
  %i.mg = add i32 %i.mf, %i.kk
  %i.mh = ashr i32 %i.mg, 2
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  store i32 %i.mh, ptr %i.mi, align 4, !tbaa !78
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lx, i64 4
  store i32 %i.mc, ptr %i.mj, align 4, !tbaa !78
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.lh, i64 %i.hd
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN4ncnn3MatD2Ev.exit301.us.i
  %.1277.us.i = phi ptr [ %i.lh, %_ZN4ncnn3MatD2Ev.exit301.us.i ], [ %i.mk, %bb.t ] ; 3 uses
  %i.ml = or disjoint i32 %i.la, 1
  %.not298.us.1.i = icmp slt i32 %i.ml, %i.bv
  br i1 %.not298.us.1.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.mm = add nsw i32 %i.id, %i.jb
  %i.mn = add nsw i32 %i.mm, %i.jz
  %i.mo = add nsw i32 %i.ih, %i.jf
  %i.mp = add nsw i32 %i.mo, %i.kd
  %i.mq = ashr i32 %i.mn, 2
  %i.mr = ashr i32 %i.mp, 2
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.1277.us.i, i64 %i.bz ; 2 uses
  store i32 %i.mq, ptr %.1277.us.i, align 4, !tbaa !78
  store i32 %i.mr, ptr %i.ms, align 4, !tbaa !78
  br i1 %i.lj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.mt = add i32 %i.jf, %i.ko
  %i.mu = add i32 %i.kd, %i.kq
  %i.mv = sub i32 %i.mt, %i.mu
  %i.mw = add i32 %i.mv, %i.kt
  %i.mx = ashr i32 %i.mw, 2
  %i.my = add i32 %i.jb, %i.kj
  %i.mz = add i32 %i.jz, %i.kk
  %i.na = sub i32 %i.my, %i.mz
  %i.nb = add i32 %i.na, %i.kr
  %i.nc = ashr i32 %i.nb, 2
  %i.nd = getelementptr inbounds nuw i8, ptr %.1277.us.i, i64 4
  store i32 %i.nc, ptr %i.nd, align 4, !tbaa !78
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  store i32 %i.mx, ptr %i.ne, align 4, !tbaa !78
  br label %bb.x
end_hunk_5
begin_hunk_6_@_ZN4ncnnL26conv3x3s1_winograd23_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.14:bb.a

bb.af:                                            ; preds = %bb.ae
  %i.aby = load ptr, ptr %15, align 8, !tbaa !34  ; 2 uses
  %i.abz = load float, ptr %i.aby, align 4, !tbaa !53 ; 9 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.aby, i64 4
  %i.acb = load float, ptr %i.aca, align 4, !tbaa !53 ; 5 uses
  %i.acc = fneg fast float %i.acb
  %i.acd = fdiv fast float %i.acc, %i.abz         ; 8 uses
  %i.ace = extractelement <2 x float> %i.abu, i64 0 ; 5 uses
  %i.acf = fcmp fast olt float %i.ace, %i.acd
  br i1 %i.acf, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.1.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.acg = fdiv fast float 1.000000e+00, %i.abz
  %i.ach = fadd fast float %i.acd, %i.acg
  %i.aci = fcmp fast ogt float %i.ace, %i.ach
  br i1 %i.aci, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.1.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.acj = fmul fast float %i.abz, %i.ace
  %i.ack = fadd fast float %i.acj, %i.acb
  %i.acl = fmul fast float %i.ack, %i.ace
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.1.i: ; preds = %bb.ah, %bb.ag, %bb.af
  %.1343373.us.1.i = phi float [ %i.acl, %bb.ah ], [ 0.000000e+00, %bb.af ], [ %i.ace, %bb.ag ]
  %i.acm = extractelement <2 x float> %i.abu, i64 1 ; 5 uses
  %i.acn = fcmp fast olt float %i.acm, %i.acd
  br i1 %i.acn, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.1.i, label %bb.ai

bb.ai:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.1.i
  %i.aco = fdiv fast float 1.000000e+00, %i.abz
  %i.acp = fadd fast float %i.acd, %i.aco
  %i.acq = fcmp fast ogt float %i.acm, %i.acp
  br i1 %i.acq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.1.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.acr = fmul fast float %i.abz, %i.acm
  %i.acs = fadd fast float %i.acr, %i.acb
  %i.act = fmul fast float %i.acs, %i.acm
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.1.i: ; preds = %bb.aj, %bb.ai, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.1.i
  %.1345396.us.1.i = phi float [ %i.act, %bb.aj ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread.us.1.i ], [ %i.acm, %bb.ai ]
  %i.acu = extractelement <2 x float> %i.abx, i64 0 ; 5 uses
  %i.acv = fcmp fast olt float %i.acu, %i.acd
  br i1 %i.acv, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.1.i, label %bb.ak

bb.ak:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.1.i
  %i.acw = fdiv fast float 1.000000e+00, %i.abz
  %i.acx = fadd fast float %i.acd, %i.acw
  %i.acy = fcmp fast ogt float %i.acu, %i.acx
  br i1 %i.acy, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.1.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.acz = fmul fast float %i.abz, %i.acu
  %i.ada = fadd fast float %i.acz, %i.acb
  %i.adb = fmul fast float %i.ada, %i.acu
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.1.i: ; preds = %bb.al, %bb.ak, %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.1.i
  %.1347432.us.1.i = phi float [ %i.adb, %bb.al ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit376.thread.us.1.i ], [ %i.acu, %bb.ak ] ; 2 uses
  %i.adc = extractelement <2 x float> %i.abx, i64 1 ; 4 uses
  %i.add = fcmp fast olt float %i.adc, %i.acd
  %i.ade = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.1347432.us.1.i, i64 0 ; 2 uses
  %i.adf = insertelement <2 x float> poison, float %.1343373.us.1.i, i64 0
  %i.adg = insertelement <2 x float> %i.adf, float %.1345396.us.1.i, i64 1 ; 3 uses
  br i1 %i.add, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i, label %bb.am

bb.am:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.1.i
  %i.adh = fdiv fast float 1.000000e+00, %i.abz
  %i.adi = fadd fast float %i.acd, %i.adh
  %i.adj = fcmp fast ogt float %i.adc, %i.adi
  %i.adk = insertelement <2 x float> %i.abx, float %.1347432.us.1.i, i64 0
  br i1 %i.adj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.adl = fmul fast float %i.abz, %i.adc
  %i.adm = fadd fast float %i.adl, %i.acb
  %i.adn = fmul fast float %i.adm, %i.adc
  %i.ado = insertelement <2 x float> %i.ade, float %i.adn, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread389.us.1.i: ; preds = %bb.ae
  %i.adp = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.abu)
  %i.adq = fadd fast <2 x float> %i.adp, splat (float 1.000000e+00)
  %i.adr = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.adq)
  %i.ads = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.adr)
  %i.adt = fmul fast <2 x float> %i.ads, %i.abu
  %i.adu = extractelement <2 x float> %i.abx, i64 0
  %i.adv = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.adu)
  %i.adw = extractelement <2 x float> %i.abx, i64 1
  %i.adx = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.adw)
  %i.ady = fadd fast float %i.adx, 1.000000e+00
  %i.adz = fadd fast float %i.adv, 1.000000e+00
  %i.aea = call fast float @llvm.log.f32(float %i.ady)
  %i.aeb = call fast float @llvm.log.f32(float %i.adz)
  %i.aec = call fast float @llvm.tanh.f32(float %i.aea)
  %i.aed = call fast float @llvm.tanh.f32(float %i.aeb)
  %i.aee = insertelement <2 x float> poison, float %i.aed, i64 0
  %i.aef = insertelement <2 x float> %i.aee, float %i.aec, i64 1
  %i.aeg = fmul fast <2 x float> %i.aef, %i.abx
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread386.us.1.i: ; preds = %bb.ae
  %i.aeh = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.abu, <2 x float> splat (float f0x42B0C0A5))
  %i.aei = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.aeh, <2 x float> splat (float f0xC2B0C0A5))
  %i.aej = fneg fast <2 x float> %i.aei
  %i.aek = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.aej)
  %i.ael = fadd fast <2 x float> %i.aek, splat (float 1.000000e+00)
  %i.aem = fdiv fast <2 x float> splat (float 1.000000e+00), %i.ael
  %i.aen = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.abx, <2 x float> splat (float f0x42B0C0A5))
  %i.aeo = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.aen, <2 x float> splat (float f0xC2B0C0A5))
  %i.aep = fneg fast <2 x float> %i.aeo
  %i.aeq = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.aep)
  %i.aer = fadd fast <2 x float> %i.aeq, splat (float 1.000000e+00)
  %i.aes = fdiv fast <2 x float> splat (float 1.000000e+00), %i.aer
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread377.us.1.i: ; preds = %bb.ae
  %i.aet = load ptr, ptr %15, align 8, !tbaa !34
  %i.aeu = load <2 x float>, ptr %i.aet, align 4, !tbaa !53 ; 5 uses
  %i.aev = shufflevector <2 x float> %i.aeu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aew = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.abu, <2 x float> %i.aev) ; 2 uses
  %i.aex = shufflevector <2 x float> %i.aeu, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.aey = fcmp fast ogt <2 x float> %i.aew, %i.aex
  %i.aez = select <2 x i1> %i.aey, <2 x float> %i.aex, <2 x float> %i.aew ; 2 uses
  %i.afa = extractelement <2 x float> %i.abx, i64 0
  %i.afb = extractelement <2 x float> %i.aeu, i64 0 ; 2 uses
  %.0346.us.1.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.afa, float %i.afb) ; 2 uses
  %i.afc = extractelement <2 x float> %i.aeu, i64 1 ; 3 uses
  %i.afd = fcmp fast ogt float %.0346.us.1.i, %i.afc
  %.1347442.us.1.i = select i1 %i.afd, float %i.afc, float %.0346.us.1.i ; 2 uses
  %i.afe = extractelement <2 x float> %i.abx, i64 1
  %.0348.us.1.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.afe, float %i.afb) ; 2 uses
  %i.aff = fcmp fast ogt float %.0348.us.1.i, %i.afc
  %i.afg = insertelement <2 x float> poison, float %.1347442.us.1.i, i64 0
  %i.afh = insertelement <2 x float> %i.afg, float %.0348.us.1.i, i64 1
  br i1 %i.aff, label %bb.ao, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i

bb.ao:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread377.us.1.i
  %i.afi = insertelement <2 x float> %i.aeu, float %.1347442.us.1.i, i64 0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread383.us.1.i: ; preds = %bb.ae
  %i.afj = load ptr, ptr %15, align 8, !tbaa !34
  %i.afk = load float, ptr %i.afj, align 4, !tbaa !53
  %i.afl = fcmp fast ogt <2 x float> %i.abu, zeroinitializer
  %i.afm = insertelement <2 x float> poison, float %i.afk, i64 0
  %i.afn = shufflevector <2 x float> %i.afm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.afo = select <2 x i1> %i.afl, <2 x float> splat (float 1.000000e+00), <2 x float> %i.afn
  %i.afp = fmul fast <2 x float> %i.afo, %i.abu
  %i.afq = fcmp fast ogt <2 x float> %i.abx, zeroinitializer
  %i.afr = select <2 x i1> %i.afq, <2 x float> splat (float 1.000000e+00), <2 x float> %i.afn
  %i.afs = fmul fast <2 x float> %i.afr, %i.abx
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread380.us.1.i: ; preds = %bb.ae
  %i.aft = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.abu, <2 x float> zeroinitializer)
  %i.afu = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.abx, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i: ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread380.us.1.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread383.us.1.i, %bb.ao, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread377.us.1.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread386.us.1.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread389.us.1.i, %bb.an, %bb.am, %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.1.i, %bb.ae
  %i.afv = phi <2 x float> [ %i.ade, %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.1.i ], [ %i.afu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread380.us.1.i ], [ %i.afs, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread383.us.1.i ], [ %i.afi, %bb.ao ], [ %i.afh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread377.us.1.i ], [ %i.aes, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread386.us.1.i ], [ %i.aeg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread389.us.1.i ], [ %i.ado, %bb.an ], [ %i.adk, %bb.am ], [ %i.abx, %bb.ae ]
  %i.afw = phi <2 x float> [ %i.adg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit375.thread.us.1.i ], [ %i.aft, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread380.us.1.i ], [ %i.afp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread383.us.1.i ], [ %i.aez, %bb.ao ], [ %i.aez, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread377.us.1.i ], [ %i.aem, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread386.us.1.i ], [ %i.adt, %_ZL13activation_ssfiRKN4ncnn3MatE.exit377.thread389.us.1.i ], [ %i.adg, %bb.an ], [ %i.adg, %bb.am ], [ %i.abu, %bb.ae ]
  %i.afx = getelementptr inbounds nuw [2 x i8], ptr %.1324.us.i, i64 %i.ch ; 2 uses
  %i.afy = bitcast <2 x float> %i.afw to <2 x i32>
  %i.afz = lshr <2 x i32> %i.afy, splat (i32 16)
  %i.aga = trunc nuw <2 x i32> %i.afz to <2 x i16> ; 2 uses
  %i.agb = extractelement <2 x i16> %i.aga, i64 0
  store i16 %i.agb, ptr %.1324.us.i, align 2, !tbaa !110
  %i.agc = extractelement <2 x i16> %i.aga, i64 1
  store i16 %i.agc, ptr %i.afx, align 2, !tbaa !110
  br i1 %i.wg, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i
  %i.agd = bitcast <2 x float> %i.afv to <2 x i32>
  %i.age = getelementptr inbounds nuw i8, ptr %.1324.us.i, i64 2
  %i.agf = lshr <2 x i32> %i.agd, splat (i32 16)
  %i.agg = trunc nuw <2 x i32> %i.agf to <2 x i16> ; 2 uses
  %i.agh = extractelement <2 x i16> %i.agg, i64 0
  store i16 %i.agh, ptr %i.age, align 2, !tbaa !110
  %i.agi = getelementptr inbounds nuw i8, ptr %i.afx, i64 2
  %i.agj = extractelement <2 x i16> %i.agg, i64 1
  store i16 %i.agj, ptr %i.agi, align 2, !tbaa !110
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZL13activation_ssfiRKN4ncnn3MatE.exit374.us.1.i, %bb.ad
  %indvars.iv.next594.i = add nuw nsw i64 %indvars.iv593.i, 1 ; 2 uses
  %exitcond597.not.i = icmp eq i64 %indvars.iv.next594.i, %wide.trip.count596.i
  br i1 %exitcond597.not.i, label %._crit_edge.us540.i, label %_ZN4ncnn3MatD2Ev.exit354.us.i, !llvm.loop !1713

._crit_edge.us540.i:                              ; preds = %bb.aq
  %indvars.iv.next599.i = add nuw nsw i64 %indvars.iv598.i, 2 ; 3 uses
  %i.agk = icmp slt i64 %indvars.iv.next599.i, %invariant.op.i
  br i1 %i.agk, label %bb.o, label %.preheader.loopexit.i, !llvm.loop !1714

.lr.ph536.split.i:                                ; preds = %.lr.ph536.i
  %i.agl = sub i32 %i.bs, %.0340.lcssa.i
  %i.agm = and i32 %i.agl, -2
  %i.agn = add nsw i32 %.0340.lcssa.i, 2
  %i.ago = add i32 %i.agn, %i.agm
  br label %.preheader.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.us540.i
  %i.agp = trunc nsw i64 %indvars.iv.next599.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph536.split.i, %.preheader508.i
  %.1341.lcssa.i = phi i32 [ %.0340.lcssa.i, %.preheader508.i ], [ %i.ago, %.lr.ph536.split.i ], [ %i.agp, %.preheader.loopexit.i ] ; 2 uses
  %i.agq = icmp slt i32 %.1341.lcssa.i, %.sroa.speculated123
  br i1 %i.agq, label %.lr.ph560.i, label %_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit

.lr.ph560.i:                                      ; preds = %.preheader.i
  %.not.i82 = icmp eq ptr %.val, null
  %i.agr = icmp sgt i32 %.sroa.speculated119, 0
  %i.ags = sext i32 %.sroa.speculated119 to i64
  %i.agt = shl nuw nsw i32 %.sroa.speculated119, 1
  %i.agu = zext nneg i32 %i.agt to i64
  %i.agv = mul nuw nsw i32 %.sroa.speculated119, 3
  %i.agw = zext nneg i32 %i.agv to i64
  %i.agx = shl nuw nsw i32 %.sroa.speculated119, 2
  %i.agy = zext nneg i32 %i.agx to i64            ; 12 uses
  %i.agz = sext i32 %i.cc to i64
  br i1 %i.agr, label %.lr.ph560.split.us.i, label %_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit

.lr.ph560.split.us.i:                             ; preds = %.lr.ph560.i
  %i.aha = load i32, ptr %i.ao, align 4, !tbaa !86, !noalias !1732
  %i.ahb = load ptr, ptr %12, align 8, !tbaa !34, !noalias !1732
  %i.ahc = load i64, ptr %i.ar, align 8, !tbaa !35, !noalias !1732
  %i.ahd = load i64, ptr %i.as, align 8, !tbaa !76, !noalias !1732 ; 2 uses
  %factor.op.mul565.i = mul i64 %i.ahd, %i.ahc
  %i.ahe = sext i32 %i.aha to i64
  %factor.op.mul556.us.i = mul i64 %i.ahd, %i.ahe
  %i.ahf = sext i32 %.1341.lcssa.i to i64
  %wide.trip.count611.i = zext nneg i32 %.sroa.speculated119 to i64
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.us563.i, %.lr.ph560.split.us.i
  %indvars.iv613.i = phi i64 [ %indvars.iv.next614.i, %._crit_edge.us563.i ], [ %i.ahf, %.lr.ph560.split.us.i ] ; 3 uses
  %.pre626.i = add nsw i64 %indvars.iv613.i, %i.bp ; 2 uses
  br i1 %.not.i82, label %.lr.ph.us562.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ahg = getelementptr inbounds [4 x i8], ptr %.val, i64 %.pre626.i
  %i.ahh = load float, ptr %i.ahg, align 4, !tbaa !53
  br label %.lr.ph.us562.i

.lr.ph.us562.i:                                   ; preds = %bb.as, %bb.ar
  %i.ahi = phi fast float [ %i.ahh, %bb.as ], [ 0.000000e+00, %bb.ar ] ; 2 uses
  %i.ahj = trunc nsw i64 %indvars.iv613.i to i32
  %factor.op.mul553.reass.us.i = mul i32 %factor.op.mul517.i, %i.ahj
  %i.ahk = sext i32 %factor.op.mul553.reass.us.i to i64
  %i.ahl = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.ahk
  %.reass566.i = mul i64 %factor.op.mul565.i, %.pre626.i
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahb, i64 %.reass566.i
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %bb.bl, %.lr.ph.us562.i
  %indvars.iv608.i = phi i64 [ 0, %.lr.ph.us562.i ], [ %indvars.iv.next609.i, %bb.bl ] ; 3 uses
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.ahl, i64 %indvars.iv608.i ; 5 uses
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.ahn, i64 %i.ags ; 2 uses
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.ahn, i64 %i.agu ; 2 uses
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.ahn, i64 %i.agw ; 2 uses
  %i.ahr = load float, ptr %i.aho, align 4, !tbaa !53 ; 2 uses
  %i.ahs = load float, ptr %i.ahp, align 4, !tbaa !53 ; 2 uses
  %i.aht = fsub fast float %i.ahr, %i.ahs
  %i.ahu = load float, ptr %i.ahq, align 4, !tbaa !53
  %i.ahv = fadd fast float %i.aht, %i.ahu
  %i.ahw = getelementptr inbounds nuw [4 x i8], ptr %i.aho, i64 %i.agy ; 2 uses
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.ahp, i64 %i.agy ; 2 uses
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.ahq, i64 %i.agy ; 2 uses
  %i.ahz = load float, ptr %i.ahw, align 4, !tbaa !53 ; 2 uses
  %i.aia = load float, ptr %i.ahx, align 4, !tbaa !53 ; 2 uses
  %i.aib = load float, ptr %i.ahy, align 4, !tbaa !53
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.ahw, i64 %i.agy ; 2 uses
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr %i.ahx, i64 %i.agy ; 2 uses
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.ahy, i64 %i.agy ; 2 uses
  %i.aif = load float, ptr %i.aic, align 4, !tbaa !53 ; 2 uses
  %i.aig = load float, ptr %i.aid, align 4, !tbaa !53 ; 2 uses
  %i.aih = fsub fast float %i.aif, %i.aig
  %i.aii = load float, ptr %i.aie, align 4, !tbaa !53
  %i.aij = fadd fast float %i.aih, %i.aii         ; 2 uses
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.aic, i64 %i.agy
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %i.aid, i64 %i.agy
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.aie, i64 %i.agy
  %i.ain = load float, ptr %i.aik, align 4, !tbaa !53 ; 2 uses
  %i.aio = load float, ptr %i.ail, align 4, !tbaa !53 ; 2 uses
  %i.aip = fsub fast float %i.ain, %i.aio
  %i.aiq = load float, ptr %i.aim, align 4, !tbaa !53
  %i.air = trunc i64 %indvars.iv608.i to i32
  %i.ais = add i32 %.047153, %i.air               ; 2 uses
  %i.ait = sdiv i32 %i.ais, %i.cj
  %i.aiu = srem i32 %i.ais, %i.cj
  %i.aiv = shl nsw i32 %i.ait, 1                  ; 3 uses
  %i.aiw = sext i32 %i.aiv to i64
  %.reass557.us.i = mul i64 %factor.op.mul556.us.i, %i.aiw
  %i.aix = getelementptr inbounds nuw i8, ptr %i.ahm, i64 %.reass557.us.i
  %i.aiy = shl nsw i32 %i.aiu, 1                  ; 2 uses
  %i.aiz = sext i32 %i.aiy to i64
  %i.aja = getelementptr inbounds [2 x i8], ptr %i.aix, i64 %i.aiz ; 4 uses
  %i.ajb = or disjoint i32 %i.aiy, 1
  %i.ajc = icmp slt i32 %i.ajb, %i.cc             ; 2 uses
  %.not348.us.i = icmp slt i32 %i.aiv, %i.cd
  br i1 %.not348.us.i, label %bb.at, label %bb.bc

bb.at:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.ahn, i64 %i.agy ; 2 uses
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.ajd, i64 %i.agy ; 2 uses
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.aje, i64 %i.agy
  %i.ajg = load float, ptr %i.ajf, align 4, !tbaa !53
  %i.ajh = load float, ptr %i.aje, align 4, !tbaa !53
  %i.aji = fadd fast float %i.aig, %i.aif
  %i.ajj = fadd fast float %i.aji, %i.ajh         ; 2 uses
  %i.ajk = load float, ptr %i.ajd, align 4, !tbaa !53
  %i.ajl = load float, ptr %i.ahn, align 4, !tbaa !53
  %i.ajm = fadd fast float %i.ahz, %i.ahi
  %i.ajn = fadd fast float %i.ajm, %i.aia
  %i.ajo = fadd fast float %i.ajn, %i.ajk         ; 2 uses
  %i.ajp = fadd fast float %i.ahs, %i.ahr
  %i.ajq = fsub fast float %i.ajo, %i.ajj
  %i.ajr = insertelement <2 x float> poison, float %i.ajp, i64 0
  %i.ajs = insertelement <2 x float> %i.ajr, float %i.aio, i64 1
  %i.ajt = insertelement <2 x float> poison, float %i.ajl, i64 0
  %i.aju = insertelement <2 x float> %i.ajt, float %i.ain, i64 1
  %i.ajv = fadd fast <2 x float> %i.ajs, %i.aju
  %i.ajw = insertelement <2 x float> poison, float %i.ajj, i64 0
  %i.ajx = insertelement <2 x float> %i.ajw, float %i.ajg, i64 1
  %i.ajy = fadd fast <2 x float> %i.ajv, %i.ajx
  %i.ajz = insertelement <2 x float> poison, float %i.ajo, i64 0
  %i.aka = insertelement <2 x float> %i.ajz, float %i.ajq, i64 1
  %i.akb = fadd fast <2 x float> %i.ajy, %i.aka   ; 13 uses
  switch i32 %i.cb, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread479.us.i
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread482.us.i
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread476.us.i
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread485.us.i
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread488.us.i
    i32 6, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at
  %i.akc = load ptr, ptr %15, align 8, !tbaa !34  ; 2 uses
  %i.akd = load float, ptr %i.akc, align 4, !tbaa !53 ; 5 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akc, i64 4
  %i.akf = load float, ptr %i.ake, align 4, !tbaa !53 ; 3 uses
  %i.akg = fneg fast float %i.akf
  %i.akh = fdiv fast float %i.akg, %i.akd         ; 4 uses
  %i.aki = extractelement <2 x float> %i.akb, i64 0 ; 5 uses
  %i.akj = fcmp fast olt float %i.aki, %i.akh
  br i1 %i.akj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread.us.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.akk = fdiv fast float 1.000000e+00, %i.akd
  %i.akl = fadd fast float %i.akh, %i.akk
  %i.akm = fcmp fast ogt float %i.aki, %i.akl
  br i1 %i.akm, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread.us.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.akn = fmul fast float %i.akd, %i.aki
  %i.ako = fadd fast float %i.akn, %i.akf
  %i.akp = fmul fast float %i.ako, %i.aki
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread.us.i: ; preds = %bb.aw, %bb.av, %bb.au
  %.1351472.us.i = phi float [ %i.akp, %bb.aw ], [ 0.000000e+00, %bb.au ], [ %i.aki, %bb.av ] ; 2 uses
  %i.akq = extractelement <2 x float> %i.akb, i64 1 ; 4 uses
  %i.akr = fcmp fast olt float %i.akq, %i.akh
  %i.aks = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.1351472.us.i, i64 0 ; 2 uses
  br i1 %i.akr, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i, label %bb.ax

bb.ax:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread.us.i
  %i.akt = fdiv fast float 1.000000e+00, %i.akd
  %i.aku = fadd fast float %i.akh, %i.akt
  %i.akv = fcmp fast ogt float %i.akq, %i.aku
  %i.akw = insertelement <2 x float> %i.akb, float %.1351472.us.i, i64 0
  br i1 %i.akv, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.akx = fmul fast float %i.akd, %i.akq
  %i.aky = fadd fast float %i.akx, %i.akf
  %i.akz = fmul fast float %i.aky, %i.akq
  %i.ala = insertelement <2 x float> %i.aks, float %i.akz, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit373.thread488.us.i: ; preds = %bb.at
  %i.alb = extractelement <2 x float> %i.akb, i64 0
  %i.alc = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.alb)
  %i.ald = extractelement <2 x float> %i.akb, i64 1
  %i.ale = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.ald)
  %i.alf = fadd fast float %i.ale, 1.000000e+00
  %i.alg = fadd fast float %i.alc, 1.000000e+00
  %i.alh = call fast float @llvm.log.f32(float %i.alf)
  %i.ali = call fast float @llvm.log.f32(float %i.alg)
  %i.alj = call fast float @llvm.tanh.f32(float %i.alh)
  %i.alk = call fast float @llvm.tanh.f32(float %i.ali)
  %i.all = insertelement <2 x float> poison, float %i.alk, i64 0
  %i.alm = insertelement <2 x float> %i.all, float %i.alj, i64 1
  %i.aln = fmul fast <2 x float> %i.alm, %i.akb
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.us.i

end_hunk_6
begin_hunk_7_@_ZN4ncnnL26conv3x3s1_winograd43_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.15:bb.a
  %i.azz = fmul fast float %i.azy, %i.azk
  %i.baa = insertelement <2 x float> %i.azm, float %i.azz, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread821.us.i: ; preds = %bb.z
  %i.bab = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.awq)
  %i.bac = fadd fast <2 x float> %i.bab, splat (float 1.000000e+00)
  %i.bad = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.bac)
  %i.bae = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.bad)
  %i.baf = fmul fast <2 x float> %i.bae, %i.awq
  %i.bag = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.awk)
  %i.bah = fadd fast <2 x float> %i.bag, splat (float 1.000000e+00)
  %i.bai = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.bah)
  %i.baj = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.bai)
  %i.bak = fmul fast <2 x float> %i.baj, %i.awk
  %i.bal = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.awu)
  %i.bam = fadd fast <2 x float> %i.bal, splat (float 1.000000e+00)
  %i.ban = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.bam)
  %i.bao = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.ban)
  %i.bap = fmul fast <2 x float> %i.bao, %i.awu
  %i.baq = extractelement <2 x float> %i.awz, i64 0
  %i.bar = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.baq)
  %i.bas = extractelement <2 x float> %i.awz, i64 1
  %i.bat = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bas)
  %i.bau = fadd fast float %i.bat, 1.000000e+00
  %i.bav = fadd fast float %i.bar, 1.000000e+00
  %i.baw = call fast float @llvm.log.f32(float %i.bau)
  %i.bax = call fast float @llvm.log.f32(float %i.bav)
  %i.bay = call fast float @llvm.tanh.f32(float %i.baw)
  %i.baz = call fast float @llvm.tanh.f32(float %i.bax)
  %i.bba = insertelement <2 x float> poison, float %i.baz, i64 0
  %i.bbb = insertelement <2 x float> %i.bba, float %i.bay, i64 1
  %i.bbc = fmul fast <2 x float> %i.bbb, %i.awz
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread818.us.i: ; preds = %bb.z
  %i.bbd = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.awq, <2 x float> splat (float f0x42B0C0A5))
  %i.bbe = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbd, <2 x float> splat (float f0xC2B0C0A5))
  %i.bbf = fneg fast <2 x float> %i.bbe
  %i.bbg = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bbf)
  %i.bbh = fadd fast <2 x float> %i.bbg, splat (float 1.000000e+00)
  %i.bbi = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bbh
  %i.bbj = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.awk, <2 x float> splat (float f0x42B0C0A5))
  %i.bbk = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbj, <2 x float> splat (float f0xC2B0C0A5))
  %i.bbl = fneg fast <2 x float> %i.bbk
  %i.bbm = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bbl)
  %i.bbn = fadd fast <2 x float> %i.bbm, splat (float 1.000000e+00)
  %i.bbo = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bbn
  %i.bbp = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.awu, <2 x float> splat (float f0x42B0C0A5))
  %i.bbq = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbp, <2 x float> splat (float f0xC2B0C0A5))
  %i.bbr = fneg fast <2 x float> %i.bbq
  %i.bbs = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bbr)
  %i.bbt = fadd fast <2 x float> %i.bbs, splat (float 1.000000e+00)
  %i.bbu = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bbt
  %i.bbv = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.awz, <2 x float> splat (float f0x42B0C0A5))
  %i.bbw = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbv, <2 x float> splat (float f0xC2B0C0A5))
  %i.bbx = fneg fast <2 x float> %i.bbw
  %i.bby = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bbx)
  %i.bbz = fadd fast <2 x float> %i.bby, splat (float 1.000000e+00)
  %i.bca = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bbz
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread809.us.i: ; preds = %bb.z
  %i.bcb = load ptr, ptr %15, align 8, !tbaa !34
  %i.bcc = load <2 x float>, ptr %i.bcb, align 4, !tbaa !53 ; 5 uses
  %i.bcd = extractelement <2 x float> %i.bcc, i64 0 ; 2 uses
  %i.bce = extractelement <2 x float> %i.bcc, i64 1 ; 3 uses
  %i.bcf = shufflevector <2 x float> %i.bcc, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bcg = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.awq, <2 x float> %i.bcf) ; 2 uses
  %i.bch = shufflevector <2 x float> %i.bcc, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 6 uses
  %i.bci = fcmp fast ogt <2 x float> %i.bcg, %i.bch
  %i.bcj = select <2 x i1> %i.bci, <2 x float> %i.bch, <2 x float> %i.bcg ; 2 uses
  %i.bck = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.awk, <2 x float> %i.bcf) ; 2 uses
  %i.bcl = fcmp fast ogt <2 x float> %i.bck, %i.bch
  %i.bcm = select <2 x i1> %i.bcl, <2 x float> %i.bch, <2 x float> %i.bck ; 2 uses
  %i.bcn = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.awu, <2 x float> %i.bcf) ; 2 uses
  %i.bco = fcmp fast ogt <2 x float> %i.bcn, %i.bch
  %i.bcp = select <2 x i1> %i.bco, <2 x float> %i.bch, <2 x float> %i.bcn ; 2 uses
  %i.bcq = extractelement <2 x float> %i.awz, i64 0
  %.0697.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bcq, float %i.bcd) ; 2 uses
  %i.bcr = fcmp fast ogt float %.0697.us.i, %i.bce
  %.16981156.us.i = select i1 %i.bcr, float %i.bce, float %.0697.us.i ; 2 uses
  %i.bcs = extractelement <2 x float> %i.awz, i64 1
  %.0699.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bcs, float %i.bcd) ; 2 uses
  %i.bct = fcmp fast ogt float %.0699.us.i, %i.bce
  %i.bcu = insertelement <2 x float> poison, float %.16981156.us.i, i64 0
  %i.bcv = insertelement <2 x float> %i.bcu, float %.0699.us.i, i64 1
  br i1 %i.bct, label %bb.ar, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i

bb.ar:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread809.us.i
  %i.bcw = insertelement <2 x float> %i.bcc, float %.16981156.us.i, i64 0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread815.us.i: ; preds = %bb.z
  %i.bcx = load ptr, ptr %15, align 8, !tbaa !34
  %i.bcy = load float, ptr %i.bcx, align 4, !tbaa !53
  %i.bcz = fcmp fast ogt <2 x float> %i.awq, zeroinitializer
  %i.bda = insertelement <2 x float> poison, float %i.bcy, i64 0
  %i.bdb = shufflevector <2 x float> %i.bda, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bdc = select <2 x i1> %i.bcz, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bdb
  %i.bdd = fmul fast <2 x float> %i.bdc, %i.awq
  %i.bde = fcmp fast ogt <2 x float> %i.awk, zeroinitializer
  %i.bdf = select <2 x i1> %i.bde, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bdb
  %i.bdg = fmul fast <2 x float> %i.bdf, %i.awk
  %i.bdh = fcmp fast ogt <2 x float> %i.awu, zeroinitializer
  %i.bdi = select <2 x i1> %i.bdh, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bdb
  %i.bdj = fmul fast <2 x float> %i.bdi, %i.awu
  %i.bdk = fcmp fast ogt <2 x float> %i.awz, zeroinitializer
  %i.bdl = select <2 x i1> %i.bdk, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bdb
  %i.bdm = fmul fast <2 x float> %i.bdl, %i.awz
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread812.us.i: ; preds = %bb.z
  %i.bdn = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.awq, <2 x float> zeroinitializer)
  %i.bdo = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.awk, <2 x float> zeroinitializer)
  %i.bdp = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.awu, <2 x float> zeroinitializer)
  %i.bdq = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.awz, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i:   ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread812.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread815.us.i, %bb.ar, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread809.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread818.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread821.us.i, %bb.aq, %bb.ap, %_ZL13activation_ssfiRKN4ncnn3MatE.exit586.thread.us.i, %bb.z
  %i.bdr = phi <2 x float> [ %i.azm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit586.thread.us.i ], [ %i.bdq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread812.us.i ], [ %i.bdm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread815.us.i ], [ %i.bcw, %bb.ar ], [ %i.bcv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread809.us.i ], [ %i.bca, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread818.us.i ], [ %i.bbc, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread821.us.i ], [ %i.baa, %bb.aq ], [ %i.azw, %bb.ap ], [ %i.awz, %bb.z ]
  %i.bds = phi <2 x float> [ %i.azo, %_ZL13activation_ssfiRKN4ncnn3MatE.exit586.thread.us.i ], [ %i.bdp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread812.us.i ], [ %i.bdj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread815.us.i ], [ %i.bcp, %bb.ar ], [ %i.bcp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread809.us.i ], [ %i.bbu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread818.us.i ], [ %i.bap, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread821.us.i ], [ %i.azo, %bb.aq ], [ %i.azo, %bb.ap ], [ %i.awu, %bb.z ]
  %i.bdt = phi <2 x float> [ %i.azq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit586.thread.us.i ], [ %i.bdo, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread812.us.i ], [ %i.bdg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread815.us.i ], [ %i.bcm, %bb.ar ], [ %i.bcm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread809.us.i ], [ %i.bbo, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread818.us.i ], [ %i.bak, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread821.us.i ], [ %i.azq, %bb.aq ], [ %i.azq, %bb.ap ], [ %i.awk, %bb.z ]
  %i.bdu = phi <2 x float> [ %i.azs, %_ZL13activation_ssfiRKN4ncnn3MatE.exit586.thread.us.i ], [ %i.bdn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread812.us.i ], [ %i.bdd, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread815.us.i ], [ %i.bcj, %bb.ar ], [ %i.bcj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread809.us.i ], [ %i.bbi, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread818.us.i ], [ %i.baf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit592.thread821.us.i ], [ %i.azs, %bb.aq ], [ %i.azs, %bb.ap ], [ %i.awq, %bb.z ]
  %i.bdv = getelementptr inbounds nuw [2 x i8], ptr %.05241362.us.i, i64 %i.dw ; 4 uses
  %i.bdw = bitcast <2 x float> %i.bdu to <2 x i32>
  %i.bdx = lshr <2 x i32> %i.bdw, splat (i32 16)
  %i.bdy = trunc nuw <2 x i32> %i.bdx to <2 x i16> ; 2 uses
  %i.bdz = extractelement <2 x i16> %i.bdy, i64 0
  store i16 %i.bdz, ptr %.05241362.us.i, align 2, !tbaa !110
  %i.bea = extractelement <2 x i16> %i.bdy, i64 1
  store i16 %i.bea, ptr %i.bdv, align 2, !tbaa !110
  br i1 %i.avn, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i
  %i.beb = bitcast <2 x float> %i.bdt to <2 x i32>
  %i.bec = getelementptr inbounds nuw i8, ptr %.05241362.us.i, i64 2
  %i.bed = lshr <2 x i32> %i.beb, splat (i32 16)
  %i.bee = trunc nuw <2 x i32> %i.bed to <2 x i16> ; 2 uses
  %i.bef = extractelement <2 x i16> %i.bee, i64 0
  store i16 %i.bef, ptr %i.bec, align 2, !tbaa !110
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bdv, i64 2
  %i.beh = extractelement <2 x i16> %i.bee, i64 1
  store i16 %i.beh, ptr %i.beg, align 2, !tbaa !110
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZL13activation_ssfiRKN4ncnn3MatE.exit585.us.i
  br i1 %i.avp, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.bei = bitcast <2 x float> %i.bds to <2 x i32>
  %i.bej = getelementptr inbounds nuw i8, ptr %.05241362.us.i, i64 4
  %i.bek = lshr <2 x i32> %i.bei, splat (i32 16)
  %i.bel = trunc nuw <2 x i32> %i.bek to <2 x i16> ; 2 uses
  %i.bem = extractelement <2 x i16> %i.bel, i64 0
  store i16 %i.bem, ptr %i.bej, align 2, !tbaa !110
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bdv, i64 4
  %i.beo = extractelement <2 x i16> %i.bel, i64 1
  store i16 %i.beo, ptr %i.ben, align 2, !tbaa !110
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  br i1 %i.avr, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.bep = bitcast <2 x float> %i.bdr to <2 x i32>
  %i.beq = getelementptr inbounds nuw i8, ptr %.05241362.us.i, i64 6
  %i.ber = lshr <2 x i32> %i.bep, splat (i32 16)
  %i.bes = trunc nuw <2 x i32> %i.ber to <2 x i16> ; 2 uses
  %i.bet = extractelement <2 x i16> %i.bes, i64 0
  store i16 %i.bet, ptr %i.beq, align 2, !tbaa !110
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bdv, i64 6
  %i.bev = extractelement <2 x i16> %i.bes, i64 1
  store i16 %i.bev, ptr %i.beu, align 2, !tbaa !110
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.bew = getelementptr inbounds [2 x i8], ptr %.05241362.us.i, i64 %i.aoc
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.y
  %.1525.us.i = phi ptr [ %.05241362.us.i, %bb.y ], [ %i.bew, %bb.ax ]
  %indvars.iv.next1427.i = add nuw nsw i64 %indvars.iv1426.i, 1 ; 2 uses
  %exitcond1429.not.i = icmp eq i64 %indvars.iv.next1427.i, 4
  br i1 %exitcond1429.not.i, label %bb.az, label %bb.y, !llvm.loop !1770

bb.az:                                            ; preds = %bb.ay
  %indvars.iv.next1431.i = add nuw nsw i64 %indvars.iv1430.i, 1 ; 2 uses
  %exitcond1434.not.i = icmp eq i64 %indvars.iv.next1431.i, %wide.trip.count1433.i
  br i1 %exitcond1434.not.i, label %._crit_edge.us1373.i, label %_ZN4ncnn3MatD2Ev.exit559.us.i, !llvm.loop !1771

._crit_edge.us1373.i:                             ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %indvars.iv.next1436.i = add nuw nsw i64 %indvars.iv1435.i, 2 ; 3 uses
  %i.bex = icmp slt i64 %indvars.iv.next1436.i, %invariant.op.i
  br i1 %i.bex, label %bb.w, label %.preheader.loopexit.i, !llvm.loop !1772

.lr.ph1369.split.i:                               ; preds = %.lr.ph1369.i
  %i.bey = sub i32 %i.dh, %.0526.lcssa.i
  %i.bez = and i32 %i.bey, -2
  %i.bfa = add nsw i32 %.0526.lcssa.i, 2
  %i.bfb = add i32 %i.bfa, %i.bez
  br label %.preheader.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.us1373.i
  %i.bfc = trunc nsw i64 %indvars.iv.next1436.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph1369.split.i, %.preheader1337.i
  %.1527.lcssa.i = phi i32 [ %.0526.lcssa.i, %.preheader1337.i ], [ %i.bfb, %.lr.ph1369.split.i ], [ %i.bfc, %.preheader.loopexit.i ] ; 2 uses
  %i.bfd = icmp slt i32 %.1527.lcssa.i, %.sroa.speculated124
  br i1 %i.bfd, label %.lr.ph1395.i, label %_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit

.lr.ph1395.i:                                     ; preds = %.preheader.i
  %.not.i83 = icmp eq ptr %.val81, null
  %i.bfe = icmp sgt i32 %.sroa.speculated120, 0
  %i.bff = sext i32 %.sroa.speculated120 to i64
  %i.bfg = shl nuw nsw i32 %.sroa.speculated120, 1
  %i.bfh = zext nneg i32 %i.bfg to i64
  %i.bfi = mul nuw nsw i32 %.sroa.speculated120, 3
  %i.bfj = zext nneg i32 %i.bfi to i64
  %i.bfk = shl nuw nsw i32 %.sroa.speculated120, 2
  %i.bfl = zext nneg i32 %i.bfk to i64
  %i.bfm = mul nuw nsw i32 %.sroa.speculated120, 5
  %i.bfn = zext nneg i32 %i.bfm to i64
  %i.bfo = mul nuw nsw i32 %.sroa.speculated120, 6
  %i.bfp = zext nneg i32 %i.bfo to i64            ; 30 uses
  %i.bfq = sext i32 %i.dr to i64                  ; 3 uses
  br i1 %i.bfe, label %.lr.ph1395.split.us.i, label %_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit

.lr.ph1395.split.us.i:                            ; preds = %.lr.ph1395.i
  %i.bfr = load i32, ptr %i.ap, align 4, !tbaa !86, !noalias !1790
  %i.bfs = load ptr, ptr %12, align 8, !tbaa !34, !noalias !1790
  %i.bft = load i64, ptr %i.as, align 8, !tbaa !35, !noalias !1790
  %i.bfu = load i64, ptr %i.aw, align 8, !tbaa !76, !noalias !1790 ; 2 uses
  %factor.op.mul1400.i = mul i64 %i.bfu, %i.bft
  %i.bfv = sext i32 %i.bfr to i64
  %factor.op.mul1391.us.i = mul i64 %i.bfu, %i.bfv
  %i.bfw = sext i32 %.1527.lcssa.i to i64
  %wide.trip.count1449.i = zext nneg i32 %.sroa.speculated120 to i64
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.us1398.i, %.lr.ph1395.split.us.i
  %indvars.iv1451.i = phi i64 [ %indvars.iv.next1452.i, %._crit_edge.us1398.i ], [ %i.bfw, %.lr.ph1395.split.us.i ] ; 3 uses
  %.pre1456.i = add nsw i64 %indvars.iv1451.i, %i.de ; 2 uses
  br i1 %.not.i83, label %.lr.ph.us1397.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.bfx = getelementptr inbounds [4 x i8], ptr %.val81, i64 %.pre1456.i
  %i.bfy = load float, ptr %i.bfx, align 4, !tbaa !53
  br label %.lr.ph.us1397.i

.lr.ph.us1397.i:                                  ; preds = %bb.bb, %bb.ba
  %i.bfz = phi fast float [ %i.bfy, %bb.bb ], [ 0.000000e+00, %bb.ba ] ; 2 uses
  %i.bga = trunc nsw i64 %indvars.iv1451.i to i32
  %factor.op.mul1388.reass.us.i = mul i32 %factor.op.mul1348.i, %i.bga
  %i.bgb = sext i32 %factor.op.mul1388.reass.us.i to i64
  %i.bgc = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.bgb
  %.reass1401.i = mul i64 %factor.op.mul1400.i, %.pre1456.i
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bfs, i64 %.reass1401.i
  %i.bge = insertelement <4 x float> poison, float %i.bfz, i64 0 ; 4 uses
  %i.bgf = insertelement <2 x float> poison, float %i.bfz, i64 0 ; 4 uses
  %i.bgg = shufflevector <2 x float> %i.bgf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bgh = shufflevector <2 x float> %i.bgf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bgi = shufflevector <2 x float> %i.bgf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.bgj = shufflevector <2 x float> %i.bgf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  br label %_ZN4ncnn3MatD2Ev.exit.us.i

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %bb.du, %.lr.ph.us1397.i
  %indvars.iv1446.i = phi i64 [ 0, %.lr.ph.us1397.i ], [ %indvars.iv.next1447.i, %bb.du ] ; 3 uses
  %i.bgk = getelementptr inbounds nuw [4 x i8], ptr %i.bgc, i64 %indvars.iv1446.i ; 7 uses
  %i.bgl = getelementptr inbounds nuw [4 x i8], ptr %i.bgk, i64 %i.bff ; 2 uses
  %i.bgm = getelementptr inbounds nuw [4 x i8], ptr %i.bgk, i64 %i.bfh ; 2 uses
  %i.bgn = getelementptr inbounds nuw [4 x i8], ptr %i.bgk, i64 %i.bfj ; 2 uses
  %i.bgo = getelementptr inbounds nuw [4 x i8], ptr %i.bgk, i64 %i.bfl ; 2 uses
  %i.bgp = getelementptr inbounds nuw [4 x i8], ptr %i.bgk, i64 %i.bfn ; 2 uses
  %i.bgq = load float, ptr %i.bgl, align 4, !tbaa !53 ; 2 uses
  %i.bgr = load float, ptr %i.bgm, align 4, !tbaa !53 ; 2 uses
  %i.bgs = load float, ptr %i.bgn, align 4, !tbaa !53 ; 2 uses
  %i.bgt = load float, ptr %i.bgk, align 4, !tbaa !53
  %i.bgu = load float, ptr %i.bgp, align 4, !tbaa !53
  %i.bgv = getelementptr inbounds nuw [4 x i8], ptr %i.bgk, i64 %i.bfp ; 2 uses
  %i.bgw = getelementptr inbounds nuw [4 x i8], ptr %i.bgl, i64 %i.bfp ; 2 uses
  %i.bgx = getelementptr inbounds nuw [4 x i8], ptr %i.bgm, i64 %i.bfp ; 2 uses
  %i.bgy = getelementptr inbounds nuw [4 x i8], ptr %i.bgn, i64 %i.bfp ; 2 uses
  %i.bgz = getelementptr inbounds nuw [4 x i8], ptr %i.bgo, i64 %i.bfp ; 2 uses
  %i.bha = getelementptr inbounds nuw [4 x i8], ptr %i.bgp, i64 %i.bfp ; 2 uses
  %i.bhb = load float, ptr %i.bgw, align 4, !tbaa !53 ; 2 uses
  %i.bhc = load float, ptr %i.bgx, align 4, !tbaa !53 ; 2 uses
  %i.bhd = load float, ptr %i.bgy, align 4, !tbaa !53 ; 2 uses
  %i.bhe = load float, ptr %i.bgv, align 4, !tbaa !53
  %i.bhf = load float, ptr %i.bha, align 4, !tbaa !53
  %i.bhg = getelementptr inbounds nuw [4 x i8], ptr %i.bgv, i64 %i.bfp ; 2 uses
  %i.bhh = getelementptr inbounds nuw [4 x i8], ptr %i.bgw, i64 %i.bfp ; 2 uses
  %i.bhi = getelementptr inbounds nuw [4 x i8], ptr %i.bgx, i64 %i.bfp ; 2 uses
  %i.bhj = getelementptr inbounds nuw [4 x i8], ptr %i.bgy, i64 %i.bfp ; 2 uses
  %i.bhk = getelementptr inbounds nuw [4 x i8], ptr %i.bgz, i64 %i.bfp ; 2 uses
  %i.bhl = getelementptr inbounds nuw [4 x i8], ptr %i.bha, i64 %i.bfp ; 2 uses
  %i.bhm = load float, ptr %i.bhh, align 4, !tbaa !53 ; 2 uses
  %i.bhn = load float, ptr %i.bhi, align 4, !tbaa !53 ; 2 uses
  %i.bho = load float, ptr %i.bhj, align 4, !tbaa !53 ; 2 uses
  %i.bhp = load float, ptr %i.bhg, align 4, !tbaa !53
  %i.bhq = load float, ptr %i.bhl, align 4, !tbaa !53
  %i.bhr = getelementptr inbounds nuw [4 x i8], ptr %i.bhg, i64 %i.bfp ; 2 uses
  %i.bhs = getelementptr inbounds nuw [4 x i8], ptr %i.bhh, i64 %i.bfp ; 2 uses
  %i.bht = getelementptr inbounds nuw [4 x i8], ptr %i.bhi, i64 %i.bfp ; 2 uses
  %i.bhu = getelementptr inbounds nuw [4 x i8], ptr %i.bhj, i64 %i.bfp ; 2 uses
  %i.bhv = getelementptr inbounds nuw [4 x i8], ptr %i.bhk, i64 %i.bfp ; 2 uses
  %i.bhw = getelementptr inbounds nuw [4 x i8], ptr %i.bhl, i64 %i.bfp ; 2 uses
  %i.bhx = load float, ptr %i.bhs, align 4, !tbaa !53 ; 2 uses
  %i.bhy = load float, ptr %i.bht, align 4, !tbaa !53 ; 2 uses
  %i.bhz = load float, ptr %i.bhu, align 4, !tbaa !53 ; 2 uses
  %i.bia = load float, ptr %i.bhv, align 4, !tbaa !53 ; 2 uses
  %i.bib = load float, ptr %i.bhr, align 4, !tbaa !53
  %i.bic = insertelement <4 x float> poison, float %i.bgr, i64 0
  %i.bid = insertelement <4 x float> %i.bic, float %i.bhc, i64 1
  %i.bie = insertelement <4 x float> %i.bid, float %i.bhn, i64 2
  %i.bif = insertelement <4 x float> %i.bie, float %i.bhy, i64 3
  %i.big = insertelement <4 x float> poison, float %i.bgq, i64 0
  %i.bih = insertelement <4 x float> %i.big, float %i.bhb, i64 1
  %i.bii = insertelement <4 x float> %i.bih, float %i.bhm, i64 2
  %i.bij = insertelement <4 x float> %i.bii, float %i.bhx, i64 3
  %i.bik = fadd fast <4 x float> %i.bif, %i.bij   ; 3 uses
  %i.bil = insertelement <4 x float> poison, float %i.bgs, i64 0
  %i.bim = insertelement <4 x float> %i.bil, float %i.bhd, i64 1
  %i.bin = insertelement <4 x float> %i.bim, float %i.bho, i64 2
  %i.bio = insertelement <4 x float> %i.bin, float %i.bhz, i64 3
  %i.bip = insertelement <4 x float> poison, float %i.bgt, i64 0
  %i.biq = insertelement <4 x float> %i.bip, float %i.bhe, i64 1
  %i.bir = insertelement <4 x float> %i.biq, float %i.bhp, i64 2
  %i.bis = insertelement <4 x float> %i.bir, float %i.bib, i64 3
  %i.bit = fadd fast <4 x float> %i.bis, %i.bik
  %i.biu = load float, ptr %i.bhw, align 4, !tbaa !53
  %i.biv = getelementptr inbounds nuw [4 x i8], ptr %i.bhr, i64 %i.bfp ; 2 uses
  %i.biw = getelementptr inbounds nuw [4 x i8], ptr %i.bhs, i64 %i.bfp ; 2 uses
  %i.bix = getelementptr inbounds nuw [4 x i8], ptr %i.bht, i64 %i.bfp ; 2 uses
  %i.biy = getelementptr inbounds nuw [4 x i8], ptr %i.bhu, i64 %i.bfp ; 2 uses
  %i.biz = getelementptr inbounds nuw [4 x i8], ptr %i.bhv, i64 %i.bfp ; 2 uses
  %i.bja = getelementptr inbounds nuw [4 x i8], ptr %i.bhw, i64 %i.bfp ; 2 uses
  %i.bjb = load float, ptr %i.biw, align 4, !tbaa !53 ; 2 uses
  %i.bjc = load float, ptr %i.bix, align 4, !tbaa !53 ; 2 uses
  %i.bjd = load float, ptr %i.biy, align 4, !tbaa !53 ; 2 uses
  %i.bje = load float, ptr %i.biz, align 4, !tbaa !53 ; 2 uses
  %i.bjf = load float, ptr %i.biv, align 4, !tbaa !53
  %i.bjg = load float, ptr %i.bja, align 4, !tbaa !53
  %i.bjh = getelementptr inbounds nuw [4 x i8], ptr %i.biv, i64 %i.bfp
  %i.bji = getelementptr inbounds nuw [4 x i8], ptr %i.biw, i64 %i.bfp
  %i.bjj = getelementptr inbounds nuw [4 x i8], ptr %i.bix, i64 %i.bfp
  %i.bjk = getelementptr inbounds nuw [4 x i8], ptr %i.biy, i64 %i.bfp
  %i.bjl = getelementptr inbounds nuw [4 x i8], ptr %i.biz, i64 %i.bfp
  %i.bjm = getelementptr inbounds nuw [4 x i8], ptr %i.bja, i64 %i.bfp
  %i.bjn = load float, ptr %i.bji, align 4, !tbaa !53 ; 2 uses
  %i.bjo = load float, ptr %i.bjj, align 4, !tbaa !53 ; 2 uses
  %i.bjp = load float, ptr %i.bjk, align 4, !tbaa !53 ; 2 uses
  %i.bjq = load float, ptr %i.bjl, align 4, !tbaa !53 ; 2 uses
  %i.bjr = load float, ptr %i.bjh, align 4, !tbaa !53
  %i.bjs = load float, ptr %i.bgo, align 4, !tbaa !53 ; 2 uses
  %i.bjt = load float, ptr %i.bgz, align 4, !tbaa !53 ; 2 uses
  %i.bju = load float, ptr %i.bhk, align 4, !tbaa !53 ; 2 uses
  %i.bjv = insertelement <4 x float> poison, float %i.bjs, i64 0
  %i.bjw = insertelement <4 x float> %i.bjv, float %i.bjt, i64 1
  %i.bjx = insertelement <4 x float> %i.bjw, float %i.bju, i64 2
  %i.bjy = insertelement <4 x float> %i.bjx, float %i.bia, i64 3
  %i.bjz = fadd fast <4 x float> %i.bjy, %i.bio   ; 3 uses
  %i.bka = fadd fast <4 x float> %i.bit, %i.bjz   ; 4 uses
  %i.bkb = fadd fast float %i.bjc, %i.bjb         ; 2 uses
  %i.bkc = fadd fast float %i.bje, %i.bjd         ; 2 uses
  %i.bkd = fadd fast float %i.bjf, %i.bkb
  %i.bke = fadd fast float %i.bkd, %i.bkc         ; 2 uses
  %i.bkf = insertelement <4 x float> %i.bik, float %i.bkb, i64 0
  %i.bkg = fmul fast <4 x float> %i.bkf, splat (float 5.000000e-01)
  %i.bkh = insertelement <4 x float> %i.bjz, float %i.bkc, i64 0
  %i.bki = fmul fast <4 x float> %i.bkh, splat (float 2.000000e+00)
  %i.bkj = fadd fast <4 x float> %i.bki, %i.bkg   ; 4 uses
  %i.bkk = fsub fast float %i.bjn, %i.bjo         ; 2 uses
  %i.bkl = fsub fast float %i.bjb, %i.bjc         ; 2 uses
  %i.bkm = fsub fast float %i.bhx, %i.bhy         ; 2 uses
  %i.bkn = fmul fast float %i.bkm, f0x3EB504F3
  %i.bko = fadd fast float %i.bkn, %i.biu
  %i.bkp = fsub fast float %i.bjp, %i.bjq         ; 2 uses
  %i.bkq = fsub fast float %i.bjd, %i.bje         ; 2 uses
  %i.bkr = fsub fast float %i.bhz, %i.bia         ; 2 uses
  %i.bks = fmul fast float %i.bkr, f0x403504F3
  %i.bkt = fadd fast float %i.bko, %i.bks         ; 2 uses
  %i.bku = fmul fast float %i.bkl, f0x3EB504F3
  %i.bkv = fadd fast float %i.bku, %i.bjg
  %i.bkw = fmul fast float %i.bkq, f0x403504F3
  %i.bkx = fadd fast float %i.bkv, %i.bkw         ; 2 uses
  %i.bky = shufflevector <4 x float> %i.bik, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.bkz = insertelement <4 x float> %i.bky, float %i.bkm, i64 0
  %i.bla = insertelement <4 x float> %i.bkz, float %i.bkl, i64 1
  %i.blb = insertelement <4 x float> %i.bla, float %i.bkk, i64 2
  %i.blc = fmul fast <4 x float> %i.blb, <float f0x3F3504F3, float f0x3F3504F3, float f0x3F3504F3, float 5.000000e-01>
  %i.bld = shufflevector <4 x float> %i.bjz, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.ble = insertelement <4 x float> %i.bld, float %i.bkr, i64 0
  %i.blf = insertelement <4 x float> %i.ble, float %i.bkq, i64 1
  %i.blg = insertelement <4 x float> %i.blf, float %i.bkp, i64 2
  %i.blh = fmul fast <4 x float> %i.blg, <float f0x3FB504F3, float f0x3FB504F3, float f0x3FB504F3, float 2.000000e+00>
  %i.bli = fadd fast <4 x float> %i.blh, %i.blc   ; 4 uses
  %i.blj = insertelement <4 x float> poison, float %i.bjo, i64 0
  %i.blk = insertelement <4 x float> %i.blj, float %i.bgq, i64 1
end_hunk_7
begin_hunk_8_@_ZN4ncnnL26conv3x3s1_winograd63_bf16sERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE.omp_outlined.16:bb.a
  %i.bir = fadd fast <2 x float> %i.biq, splat (float 1.000000e+00)
  %i.bis = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bir
  %i.bit = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bbt, <2 x float> splat (float f0x42B0C0A5))
  %i.biu = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bit, <2 x float> splat (float f0xC2B0C0A5))
  %i.biv = fneg fast <2 x float> %i.biu
  %i.biw = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.biv)
  %i.bix = fadd fast <2 x float> %i.biw, splat (float 1.000000e+00)
  %i.biy = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bix
  %i.biz = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.bbx, <2 x float> splat (float f0x42B0C0A5))
  %i.bja = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.biz, <2 x float> splat (float f0xC2B0C0A5))
  %i.bjb = fneg fast <2 x float> %i.bja
  %i.bjc = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.bjb)
  %i.bjd = fadd fast <2 x float> %i.bjc, splat (float 1.000000e+00)
  %i.bje = fdiv fast <2 x float> splat (float 1.000000e+00), %i.bjd
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i: ; preds = %bb.al
  %i.bjf = load ptr, ptr %15, align 8, !tbaa !34
  %i.bjg = load <2 x float>, ptr %i.bjf, align 4, !tbaa !53 ; 5 uses
  %i.bjh = extractelement <2 x float> %i.bjg, i64 0 ; 2 uses
  %i.bji = extractelement <2 x float> %i.bjg, i64 1 ; 3 uses
  %i.bjj = shufflevector <2 x float> %i.bjg, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.bjk = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbl, <2 x float> %i.bjj) ; 2 uses
  %i.bjl = shufflevector <2 x float> %i.bjg, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 10 uses
  %i.bjm = fcmp fast ogt <2 x float> %i.bjk, %i.bjl
  %i.bjn = select <2 x i1> %i.bjm, <2 x float> %i.bjl, <2 x float> %i.bjk ; 2 uses
  %i.bjo = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bay, <2 x float> %i.bjj) ; 2 uses
  %i.bjp = fcmp fast ogt <2 x float> %i.bjo, %i.bjl
  %i.bjq = select <2 x i1> %i.bjp, <2 x float> %i.bjl, <2 x float> %i.bjo ; 2 uses
  %i.bjr = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbp, <2 x float> %i.bjj) ; 2 uses
  %i.bjs = fcmp fast ogt <2 x float> %i.bjr, %i.bjl
  %i.bjt = select <2 x i1> %i.bjs, <2 x float> %i.bjl, <2 x float> %i.bjr ; 2 uses
  %i.bju = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbc, <2 x float> %i.bjj) ; 2 uses
  %i.bjv = fcmp fast ogt <2 x float> %i.bju, %i.bjl
  %i.bjw = select <2 x i1> %i.bjv, <2 x float> %i.bjl, <2 x float> %i.bju ; 2 uses
  %i.bjx = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbt, <2 x float> %i.bjj) ; 2 uses
  %i.bjy = fcmp fast ogt <2 x float> %i.bjx, %i.bjl
  %i.bjz = select <2 x i1> %i.bjy, <2 x float> %i.bjl, <2 x float> %i.bjx ; 2 uses
  %i.bka = extractelement <2 x float> %i.bbx, i64 0
  %.01034.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bka, float %i.bjh) ; 2 uses
  %i.bkb = fcmp fast ogt float %.01034.us.i, %i.bji
  %.110352116.us.i = select i1 %i.bkb, float %i.bji, float %.01034.us.i ; 2 uses
  %i.bkc = extractelement <2 x float> %i.bbx, i64 1
  %.01036.us.i = call nnan ninf nsz float @llvm.maxnum.f32(float %i.bkc, float %i.bjh) ; 2 uses
  %i.bkd = fcmp fast ogt float %.01036.us.i, %i.bji
  %i.bke = insertelement <2 x float> poison, float %.110352116.us.i, i64 0
  %i.bkf = insertelement <2 x float> %i.bke, float %.01036.us.i, i64 1
  br i1 %i.bkd, label %bb.bl, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i

bb.bl:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i
  %i.bkg = insertelement <2 x float> %i.bjg, float %.110352116.us.i, i64 0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i: ; preds = %bb.al
  %i.bkh = load ptr, ptr %15, align 8, !tbaa !34
  %i.bki = load float, ptr %i.bkh, align 4, !tbaa !53
  %i.bkj = fcmp fast ogt <2 x float> %i.bbl, zeroinitializer
  %i.bkk = insertelement <2 x float> poison, float %i.bki, i64 0
  %i.bkl = shufflevector <2 x float> %i.bkk, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.bkm = select <2 x i1> %i.bkj, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bkl
  %i.bkn = fmul fast <2 x float> %i.bkm, %i.bbl
  %i.bko = fcmp fast ogt <2 x float> %i.bay, zeroinitializer
  %i.bkp = select <2 x i1> %i.bko, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bkl
  %i.bkq = fmul fast <2 x float> %i.bkp, %i.bay
  %i.bkr = fcmp fast ogt <2 x float> %i.bbp, zeroinitializer
  %i.bks = select <2 x i1> %i.bkr, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bkl
  %i.bkt = fmul fast <2 x float> %i.bks, %i.bbp
  %i.bku = fcmp fast ogt <2 x float> %i.bbc, zeroinitializer
  %i.bkv = select <2 x i1> %i.bku, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bkl
  %i.bkw = fmul fast <2 x float> %i.bkv, %i.bbc
  %i.bkx = fcmp fast ogt <2 x float> %i.bbt, zeroinitializer
  %i.bky = select <2 x i1> %i.bkx, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bkl
  %i.bkz = fmul fast <2 x float> %i.bky, %i.bbt
  %i.bla = fcmp fast ogt <2 x float> %i.bbx, zeroinitializer
  %i.blb = select <2 x i1> %i.bla, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bkl
  %i.blc = fmul fast <2 x float> %i.blb, %i.bbx
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i: ; preds = %bb.al
  %i.bld = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbl, <2 x float> zeroinitializer)
  %i.ble = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bay, <2 x float> zeroinitializer)
  %i.blf = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbp, <2 x float> zeroinitializer)
  %i.blg = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbc, <2 x float> zeroinitializer)
  %i.blh = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbt, <2 x float> zeroinitializer)
  %i.bli = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.bbx, <2 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i:   ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i, %bb.bl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1288.us.i, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1291.us.i, %bb.bk, %bb.bj, %_ZL13activation_ssfiRKN4ncnn3MatE.exit827.thread.us.i, %bb.al
  %i.blj = phi <2 x float> [ %i.bfq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit827.thread.us.i ], [ %i.bli, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i ], [ %i.blc, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i ], [ %i.bkg, %bb.bl ], [ %i.bkf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i ], [ %i.bje, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1288.us.i ], [ %i.bhu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1291.us.i ], [ %i.bgi, %bb.bk ], [ %i.bge, %bb.bj ], [ %i.bbx, %bb.al ]
  %i.blk = phi <2 x float> [ %i.bfs, %_ZL13activation_ssfiRKN4ncnn3MatE.exit827.thread.us.i ], [ %i.blh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i ], [ %i.bkz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i ], [ %i.bjz, %bb.bl ], [ %i.bjz, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i ], [ %i.biy, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1288.us.i ], [ %i.bhh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1291.us.i ], [ %i.bfs, %bb.bk ], [ %i.bfs, %bb.bj ], [ %i.bbt, %bb.al ]
  %i.bll = phi <2 x float> [ %i.bfu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit827.thread.us.i ], [ %i.blg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i ], [ %i.bkw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i ], [ %i.bjw, %bb.bl ], [ %i.bjw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i ], [ %i.bis, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1288.us.i ], [ %i.bhc, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1291.us.i ], [ %i.bfu, %bb.bk ], [ %i.bfu, %bb.bj ], [ %i.bbc, %bb.al ]
  %i.blm = phi <2 x float> [ %i.bfw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit827.thread.us.i ], [ %i.blf, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i ], [ %i.bkt, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i ], [ %i.bjt, %bb.bl ], [ %i.bjt, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i ], [ %i.bim, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1288.us.i ], [ %i.bgx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1291.us.i ], [ %i.bfw, %bb.bk ], [ %i.bfw, %bb.bj ], [ %i.bbp, %bb.al ]
  %i.bln = phi <2 x float> [ %i.bfy, %_ZL13activation_ssfiRKN4ncnn3MatE.exit827.thread.us.i ], [ %i.ble, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i ], [ %i.bkq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i ], [ %i.bjq, %bb.bl ], [ %i.bjq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i ], [ %i.big, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1288.us.i ], [ %i.bgs, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1291.us.i ], [ %i.bfy, %bb.bk ], [ %i.bfy, %bb.bj ], [ %i.bay, %bb.al ]
  %i.blo = phi <2 x float> [ %i.bga, %_ZL13activation_ssfiRKN4ncnn3MatE.exit827.thread.us.i ], [ %i.bld, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1282.us.i ], [ %i.bkn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1285.us.i ], [ %i.bjn, %bb.bl ], [ %i.bjn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1279.us.i ], [ %i.bia, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1288.us.i ], [ %i.bgn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit837.thread1291.us.i ], [ %i.bga, %bb.bk ], [ %i.bga, %bb.bj ], [ %i.bbl, %bb.al ]
  %i.blp = getelementptr inbounds nuw [2 x i8], ptr %.07552512.us.i, i64 %i.cs ; 6 uses
  %i.blq = bitcast <2 x float> %i.blo to <2 x i32>
  %i.blr = lshr <2 x i32> %i.blq, splat (i32 16)
  %i.bls = trunc nuw <2 x i32> %i.blr to <2 x i16> ; 2 uses
  %i.blt = extractelement <2 x i16> %i.bls, i64 0
  store i16 %i.blt, ptr %.07552512.us.i, align 2, !tbaa !110
  %i.blu = extractelement <2 x i16> %i.bls, i64 1
  store i16 %i.blu, ptr %i.blp, align 2, !tbaa !110
  br i1 %i.azt, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i
  %i.blv = bitcast <2 x float> %i.bln to <2 x i32>
  %i.blw = getelementptr inbounds nuw i8, ptr %.07552512.us.i, i64 2
  %i.blx = lshr <2 x i32> %i.blv, splat (i32 16)
  %i.bly = trunc nuw <2 x i32> %i.blx to <2 x i16> ; 2 uses
  %i.blz = extractelement <2 x i16> %i.bly, i64 0
  store i16 %i.blz, ptr %i.blw, align 2, !tbaa !110
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blp, i64 2
  %i.bmb = extractelement <2 x i16> %i.bly, i64 1
  store i16 %i.bmb, ptr %i.bma, align 2, !tbaa !110
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %_ZL13activation_ssfiRKN4ncnn3MatE.exit826.us.i
  br i1 %i.azv, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.bmc = bitcast <2 x float> %i.blm to <2 x i32>
  %i.bmd = getelementptr inbounds nuw i8, ptr %.07552512.us.i, i64 4
  %i.bme = lshr <2 x i32> %i.bmc, splat (i32 16)
  %i.bmf = trunc nuw <2 x i32> %i.bme to <2 x i16> ; 2 uses
  %i.bmg = extractelement <2 x i16> %i.bmf, i64 0
  store i16 %i.bmg, ptr %i.bmd, align 2, !tbaa !110
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.blp, i64 4
  %i.bmi = extractelement <2 x i16> %i.bmf, i64 1
  store i16 %i.bmi, ptr %i.bmh, align 2, !tbaa !110
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  br i1 %i.azx, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.bmj = bitcast <2 x float> %i.bll to <2 x i32>
  %i.bmk = getelementptr inbounds nuw i8, ptr %.07552512.us.i, i64 6
  %i.bml = lshr <2 x i32> %i.bmj, splat (i32 16)
  %i.bmm = trunc nuw <2 x i32> %i.bml to <2 x i16> ; 2 uses
  %i.bmn = extractelement <2 x i16> %i.bmm, i64 0
  store i16 %i.bmn, ptr %i.bmk, align 2, !tbaa !110
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.blp, i64 6
  %i.bmp = extractelement <2 x i16> %i.bmm, i64 1
  store i16 %i.bmp, ptr %i.bmo, align 2, !tbaa !110
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  br i1 %i.azz, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.bmq = bitcast <2 x float> %i.blk to <2 x i32>
  %i.bmr = getelementptr inbounds nuw i8, ptr %.07552512.us.i, i64 8
  %i.bms = lshr <2 x i32> %i.bmq, splat (i32 16)
  %i.bmt = trunc nuw <2 x i32> %i.bms to <2 x i16> ; 2 uses
  %i.bmu = extractelement <2 x i16> %i.bmt, i64 0
  store i16 %i.bmu, ptr %i.bmr, align 2, !tbaa !110
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.blp, i64 8
  %i.bmw = extractelement <2 x i16> %i.bmt, i64 1
  store i16 %i.bmw, ptr %i.bmv, align 2, !tbaa !110
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  br i1 %i.bab, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.bmx = bitcast <2 x float> %i.blj to <2 x i32>
  %i.bmy = getelementptr inbounds nuw i8, ptr %.07552512.us.i, i64 10
  %i.bmz = lshr <2 x i32> %i.bmx, splat (i32 16)
  %i.bna = trunc nuw <2 x i32> %i.bmz to <2 x i16> ; 2 uses
  %i.bnb = extractelement <2 x i16> %i.bna, i64 0
  store i16 %i.bnb, ptr %i.bmy, align 2, !tbaa !110
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.blp, i64 10
  %i.bnd = extractelement <2 x i16> %i.bna, i64 1
  store i16 %i.bnd, ptr %i.bnc, align 2, !tbaa !110
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.bne = getelementptr inbounds [2 x i8], ptr %.07552512.us.i, i64 %i.awl
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.ak
  %.1756.us.i = phi ptr [ %.07552512.us.i, %bb.ak ], [ %i.bne, %bb.bv ]
  %indvars.iv.next2582.i = add nuw nsw i64 %indvars.iv2581.i, 1 ; 2 uses
  %exitcond2584.not.i = icmp eq i64 %indvars.iv.next2582.i, 6
  br i1 %exitcond2584.not.i, label %bb.bx, label %bb.ak, !llvm.loop !1834

bb.bx:                                            ; preds = %bb.bw
  %indvars.iv.next2586.i = add nuw nsw i64 %indvars.iv2585.i, 1 ; 2 uses
  %exitcond2589.not.i = icmp eq i64 %indvars.iv.next2586.i, %wide.trip.count2588.i
  br i1 %exitcond2589.not.i, label %._crit_edge.us2523.i, label %bb.ai, !llvm.loop !1835

._crit_edge.us2523.i:                             ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %indvars.iv.next2591.i = add nuw nsw i64 %indvars.iv2590.i, 2 ; 3 uses
  %i.bnf = icmp slt i64 %indvars.iv.next2591.i, %invariant.op2648.i
  br i1 %i.bnf, label %bb.ag, label %.preheader.loopexit.i, !llvm.loop !1836

.lr.ph2519.split.i:                               ; preds = %.lr.ph2519.i
  %i.bng = sub i32 %i.cd, %.0757.lcssa.i
  %i.bnh = and i32 %i.bng, -2
  %i.bni = add nsw i32 %.0757.lcssa.i, 2
  %i.bnj = add i32 %i.bni, %i.bnh
  br label %.preheader.i

.preheader.loopexit.i:                            ; preds = %._crit_edge.us2523.i
  %i.bnk = trunc nsw i64 %indvars.iv.next2591.i to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.lr.ph2519.split.i, %.preheader2483.i
  %.1758.lcssa.i = phi i32 [ %.0757.lcssa.i, %.preheader2483.i ], [ %i.bnj, %.lr.ph2519.split.i ], [ %i.bnk, %.preheader.loopexit.i ] ; 2 uses
  %i.bnl = icmp slt i32 %.1758.lcssa.i, %.sroa.speculated124
  br i1 %i.bnl, label %.lr.ph2547.i, label %_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit

.lr.ph2547.i:                                     ; preds = %.preheader.i
  %.not.i83 = icmp eq ptr %.val81, null
  %i.bnm = icmp sgt i32 %.sroa.speculated120, 0
  %i.bnn = sext i32 %.sroa.speculated120 to i64
  %i.bno = shl nuw nsw i32 %.sroa.speculated120, 1
  %i.bnp = zext nneg i32 %i.bno to i64
  %i.bnq = mul nuw nsw i32 %.sroa.speculated120, 3
  %i.bnr = zext nneg i32 %i.bnq to i64
  %i.bns = shl nuw nsw i32 %.sroa.speculated120, 2
  %i.bnt = zext nneg i32 %i.bns to i64
  %i.bnu = mul nuw nsw i32 %.sroa.speculated120, 5
  %i.bnv = zext nneg i32 %i.bnu to i64
  %i.bnw = mul nuw nsw i32 %.sroa.speculated120, 6
  %i.bnx = zext nneg i32 %i.bnw to i64
  %i.bny = mul nuw nsw i32 %.sroa.speculated120, 7
  %i.bnz = zext nneg i32 %i.bny to i64
  %i.boa = shl nuw nsw i32 %.sroa.speculated120, 3
  %i.bob = zext nneg i32 %i.boa to i64            ; 8 uses
  %i.boc = sext i32 %i.cn to i64
  br i1 %i.bnm, label %.lr.ph2547.split.us.i, label %_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_.exit

.lr.ph2547.split.us.i:                            ; preds = %.lr.ph2547.i
  %i.bod = load i32, ptr %i.aq, align 4, !tbaa !86, !noalias !1856
  %i.boe = load ptr, ptr %12, align 8, !tbaa !34, !noalias !1856
  %i.bof = load i64, ptr %i.at, align 8, !tbaa !35, !noalias !1856
  %i.bog = load i64, ptr %i.az, align 8, !tbaa !76, !noalias !1856 ; 2 uses
  %factor.op.mul2552.i = mul i64 %i.bog, %i.bof
  %i.boh = sext i32 %i.bod to i64
  %factor.op.mul2543.us.i = mul i64 %i.bog, %i.boh
  %i.boi = sext i32 %i.co to i64
  %i.boj = sext i32 %.1758.lcssa.i to i64
  %wide.trip.count2604.i = zext nneg i32 %.sroa.speculated120 to i64
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge.us2550.i, %.lr.ph2547.split.us.i
  %indvars.iv2606.i = phi i64 [ %indvars.iv.next2607.i, %._crit_edge.us2550.i ], [ %i.boj, %.lr.ph2547.split.us.i ] ; 3 uses
  %.pre2611.i = add nsw i64 %indvars.iv2606.i, %i.ca ; 2 uses
  br i1 %.not.i83, label %.lr.ph.us2549.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.bok = getelementptr inbounds [4 x i8], ptr %.val81, i64 %.pre2611.i
  %i.bol = load float, ptr %i.bok, align 4, !tbaa !53
  br label %.lr.ph.us2549.i

.lr.ph.us2549.i:                                  ; preds = %bb.bz, %bb.by
  %i.bom = phi fast float [ %i.bol, %bb.bz ], [ 0.000000e+00, %bb.by ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.bon = trunc nsw i64 %indvars.iv2606.i to i32
  %factor.op.mul2540.reass.us.i = mul i32 %factor.op.mul2496.i, %i.bon
  %i.boo = sext i32 %factor.op.mul2540.reass.us.i to i64
  %i.bop = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.boo
  %.reass2553.i = mul i64 %factor.op.mul2552.i, %.pre2611.i
  %i.boq = getelementptr inbounds nuw i8, ptr %i.boe, i64 %.reass2553.i
  %i.bor = insertelement <2 x float> poison, float %i.bom, i64 0
  br label %bb.ca

bb.ca:                                            ; preds = %bb.dd, %.lr.ph.us2549.i
  %indvars.iv2601.i = phi i64 [ 0, %.lr.ph.us2549.i ], [ %indvars.iv.next2602.i, %bb.dd ] ; 3 uses
  %i.bos = getelementptr inbounds nuw [4 x i8], ptr %i.bop, i64 %indvars.iv2601.i ; 8 uses
  %i.bot = getelementptr inbounds nuw [4 x i8], ptr %i.bos, i64 %i.bnn
  %i.bou = getelementptr inbounds nuw [4 x i8], ptr %i.bos, i64 %i.bnp
  %i.bov = getelementptr inbounds nuw [4 x i8], ptr %i.bos, i64 %i.bnr
  %i.bow = getelementptr inbounds nuw [4 x i8], ptr %i.bos, i64 %i.bnt
  %i.box = getelementptr inbounds nuw [4 x i8], ptr %i.bos, i64 %i.bnv
  %i.boy = getelementptr inbounds nuw [4 x i8], ptr %i.bos, i64 %i.bnx
  %i.boz = getelementptr inbounds nuw [4 x i8], ptr %i.bos, i64 %i.bnz
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %bb.ca
  %indvars.iv2593.i = phi i64 [ %indvars.iv.next2594.i, %bb.cb ], [ 0, %bb.ca ] ; 7 uses
  %.07452536.us.i = phi ptr [ %i.brd, %bb.cb ], [ %i.boz, %bb.ca ] ; 2 uses
  %.07462535.us.i = phi ptr [ %i.brc, %bb.cb ], [ %i.boy, %bb.ca ] ; 2 uses
  %.07472534.us.i = phi ptr [ %i.brb, %bb.cb ], [ %i.box, %bb.ca ] ; 2 uses
  %.07482533.us.i = phi ptr [ %i.bra, %bb.cb ], [ %i.bow, %bb.ca ] ; 2 uses
  %.07492532.us.i = phi ptr [ %i.bqz, %bb.cb ], [ %i.bov, %bb.ca ] ; 2 uses
  %.07502531.us.i = phi ptr [ %i.bqy, %bb.cb ], [ %i.bou, %bb.ca ] ; 2 uses
  %.07512530.us.i = phi ptr [ %i.bqx, %bb.cb ], [ %i.bot, %bb.ca ] ; 2 uses
  %.07522529.us.i = phi ptr [ %i.bqw, %bb.cb ], [ %i.bos, %bb.ca ] ; 2 uses
  %i.bpa = load float, ptr %.07512530.us.i, align 4, !tbaa !53 ; 2 uses
  %i.bpb = load float, ptr %.07502531.us.i, align 4, !tbaa !53 ; 2 uses
  %i.bpc = load float, ptr %.07492532.us.i, align 4, !tbaa !53 ; 2 uses
  %i.bpd = load float, ptr %.07482533.us.i, align 4, !tbaa !53 ; 2 uses
  %i.bpe = load float, ptr %.07472534.us.i, align 4, !tbaa !53 ; 2 uses
  %i.bpf = load float, ptr %.07462535.us.i, align 4, !tbaa !53 ; 2 uses
  %i.bpg = fadd fast float %i.bpf, %i.bpe         ; 3 uses
  %i.bph = fsub fast float %i.bpe, %i.bpf         ; 3 uses
  %i.bpi = load float, ptr %.07522529.us.i, align 4, !tbaa !53
  %i.bpj = fmul fast float %i.bpg, 3.200000e+01
  %i.bpk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv2593.i
  %i.bpl = fmul fast float %i.bph, 1.600000e+01
  %i.bpm = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv2593.i
  %i.bpn = fmul fast float %i.bpg, 8.000000e+00
  %i.bpo = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv2593.i
  %i.bpp = fmul fast float %i.bph, 4.000000e+00
  %i.bpq = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv2593.i
  %i.bpr = fsub fast float %i.bpa, %i.bpb         ; 3 uses
  %i.bps = fadd fast float %i.bpd, %i.bpc         ; 2 uses
  %i.bpt = fsub fast float %i.bpc, %i.bpd         ; 2 uses
  %i.bpu = fadd fast float %i.bpb, %i.bpa         ; 2 uses
  %i.bpv = fadd fast float %i.bpr, %i.bpl
  %i.bpw = fadd fast float %i.bps, %i.bpu
  %i.bpx = fadd fast float %i.bpw, %i.bpi
  %i.bpy = fadd fast float %i.bpx, %i.bpj
  store float %i.bpy, ptr %i.bpk, align 4, !tbaa !53
  %i.bpz = insertelement <4 x float> poison, float %i.bpt, i64 0
  %i.bqa = insertelement <4 x float> %i.bpz, float %i.bps, i64 1
  %i.bqb = shufflevector <4 x float> %i.bqa, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bqc = fmul fast <4 x float> %i.bqb, <float 2.000000e+00, float 4.000000e+00, float 8.000000e+00, float 1.600000e+01>
  %i.bqd = insertelement <4 x float> poison, float %i.bpv, i64 0
  %i.bqe = insertelement <4 x float> %i.bqd, float %i.bpu, i64 1
  %i.bqf = insertelement <4 x float> %i.bqe, float %i.bpr, i64 2
  %i.bqg = shufflevector <4 x float> %i.bqf, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.bqh = fadd fast <4 x float> %i.bqg, %i.bqc   ; 4 uses
  %i.bqi = extractelement <4 x float> %i.bqh, i64 0
  store float %i.bqi, ptr %i.bpm, align 4, !tbaa !53
  %i.bqj = extractelement <4 x float> %i.bqh, i64 1
  %i.bqk = fadd fast float %i.bpn, %i.bqj
  store float %i.bqk, ptr %i.bpo, align 4, !tbaa !53
  %i.bql = extractelement <4 x float> %i.bqh, i64 2
  %i.bqm = fadd fast float %i.bpp, %i.bql
  store float %i.bqm, ptr %i.bpq, align 4, !tbaa !53
  %factor2446.us.i = fmul fast float %i.bpg, 2.000000e+00
  %i.bqn = extractelement <4 x float> %i.bqh, i64 3
  %i.bqo = fadd fast float %factor2446.us.i, %i.bqn
  %i.bqp = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv2593.i
  store float %i.bqo, ptr %i.bqp, align 4, !tbaa !53
  %i.bqq = load float, ptr %.07452536.us.i, align 4, !tbaa !53
  %i.bqr = fmul fast float %i.bpt, 3.200000e+01
  %i.bqs = fadd fast float %i.bpr, %i.bqr
  %i.bqt = fadd fast float %i.bqs, %i.bph
  %i.bqu = fadd fast float %i.bqt, %i.bqq
  %i.bqv = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv2593.i
  store float %i.bqu, ptr %i.bqv, align 4, !tbaa !53
  %i.bqw = getelementptr inbounds nuw [4 x i8], ptr %.07522529.us.i, i64 %i.bob
  %i.bqx = getelementptr inbounds nuw [4 x i8], ptr %.07512530.us.i, i64 %i.bob
  %i.bqy = getelementptr inbounds nuw [4 x i8], ptr %.07502531.us.i, i64 %i.bob
  %i.bqz = getelementptr inbounds nuw [4 x i8], ptr %.07492532.us.i, i64 %i.bob
  %i.bra = getelementptr inbounds nuw [4 x i8], ptr %.07482533.us.i, i64 %i.bob
  %i.brb = getelementptr inbounds nuw [4 x i8], ptr %.07472534.us.i, i64 %i.bob
  %i.brc = getelementptr inbounds nuw [4 x i8], ptr %.07462535.us.i, i64 %i.bob
  %i.brd = getelementptr inbounds nuw [4 x i8], ptr %.07452536.us.i, i64 %i.bob
  %indvars.iv.next2594.i = add nuw nsw i64 %indvars.iv2593.i, 1 ; 2 uses
  %exitcond2596.not.i = icmp eq i64 %indvars.iv.next2594.i, 8
  br i1 %exitcond2596.not.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, label %bb.cb, !llvm.loop !1839

_ZN4ncnn3MatD2Ev.exit.us.i:                       ; preds = %bb.cb
  %i.bre = trunc i64 %indvars.iv2601.i to i32
  %i.brf = add i32 %.047134, %i.bre               ; 2 uses
  %i.brg = sdiv i32 %i.brf, %i.cu
  %i.brh = srem i32 %i.brf, %i.cu
  %i.bri = mul nsw i32 %i.brg, 6
  %i.brj = sext i32 %i.bri to i64                 ; 2 uses
  %.reass2544.us.i = mul i64 %factor.op.mul2543.us.i, %i.brj
  %i.brk = getelementptr inbounds nuw i8, ptr %i.boq, i64 %.reass2544.us.i
  %i.brl = mul nsw i32 %i.brh, 6                  ; 6 uses
  %i.brm = sext i32 %i.brl to i64
  %i.brn = getelementptr inbounds [2 x i8], ptr %i.brk, i64 %i.brm
  %i.bro = or disjoint i32 %i.brl, 1
  %i.brp = icmp slt i32 %i.bro, %i.cn
  %i.brq = add nsw i32 %i.brl, 2
  %i.brr = icmp slt i32 %i.brq, %i.cn
  %i.brs = add nsw i32 %i.brl, 3
  %i.brt = icmp slt i32 %i.brs, %i.cn
  %i.bru = add nsw i32 %i.brl, 4
  %i.brv = icmp slt i32 %i.bru, %i.cn
  %i.brw = add nsw i32 %i.brl, 5
  %i.brx = icmp slt i32 %i.brw, %i.cn
  %invariant.op2649.i = sub nsw i64 %i.boi, %i.brj
  br label %bb.cc

bb.cc:                                            ; preds = %bb.dc, %_ZN4ncnn3MatD2Ev.exit.us.i
  %indvars.iv2597.i = phi i64 [ %indvars.iv.next2598.i, %bb.dc ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us.i ] ; 3 uses
  %.07432538.us.i = phi ptr [ %.1.us.i, %bb.dc ], [ %i.brn, %_ZN4ncnn3MatD2Ev.exit.us.i ] ; 8 uses
  %.not788.us.i = icmp slt i64 %indvars.iv2597.i, %invariant.op2649.i
  br i1 %.not788.us.i, label %bb.cd, label %bb.dc

bb.cd:                                            ; preds = %bb.cc
  %i.bry = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %indvars.iv2597.i ; 8 uses
  %i.brz = load float, ptr %i.bry, align 16, !tbaa !53
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.bry, i64 4
  %i.bsb = load float, ptr %i.bsa, align 4, !tbaa !53 ; 2 uses
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.bry, i64 8
  %i.bsd = load float, ptr %i.bsc, align 8, !tbaa !53 ; 2 uses
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bry, i64 12
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.bry, i64 16
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bry, i64 20
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.bry, i64 24
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bry, i64 28
end_hunk_8
