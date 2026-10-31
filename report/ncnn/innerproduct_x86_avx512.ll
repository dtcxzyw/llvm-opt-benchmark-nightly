Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/innerproduct_x86_avx512?download=true
inline.NumInlined: 33
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZNK4ncnn23InnerProduct_x86_avx51216forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.16:bb.a
  %i.ba = mul i64 %i.am, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ba ; 5 uses
  %i.bc = or disjoint i64 %i.az, 1
  %i.bd = mul i64 %i.am, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bd ; 5 uses
  %i.bf = or disjoint i64 %i.az, 2
  %i.bg = mul i64 %i.am, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bg ; 5 uses
  %i.bi = or disjoint i64 %i.az, 3
  %i.bj = mul i64 %i.am, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bj ; 5 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 %n.vec
  %i.bm = getelementptr i8, ptr %i.bh, i64 %n.vec
  %i.bn = getelementptr i8, ptr %i.be, i64 %n.vec
  %i.bo = getelementptr i8, ptr %i.bb, i64 %n.vec
  %i.bp = getelementptr i8, ptr %i.bk, i64 %n.vec256
  %i.bq = getelementptr i8, ptr %i.bh, i64 %n.vec256
  %i.br = getelementptr i8, ptr %i.be, i64 %n.vec256
  %i.bs = getelementptr i8, ptr %i.bb, i64 %n.vec256
  br label %bb.c

._crit_edge209:                                   ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv.next223 = add nsw i64 %indvars.iv222, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next223 to i32
  %exitcond225.not = icmp eq i32 %i.at, %lftr.wideiv
  br i1 %exitcond225.not, label %._crit_edge214.split, label %.lr.ph208

bb.c:                                             ; preds = %.lr.ph208, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph208 ], [ %indvars.iv.next, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 4 uses
  %.077205 = phi ptr [ %i.ay, %.lr.ph208 ], [ %i.kx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 20 uses
  br i1 %i.ao, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.c
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.reass ; 5 uses
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check241, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bu = getelementptr i8, ptr %i.bt, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.ch, %vector.body ]
  %vec.phi242 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.ce, %vector.body ]
  %vec.phi243 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.cb, %vector.body ]
  %vec.phi244 = phi <16 x i32> [ zeroinitializer, %vector.ph ], [ %i.by, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.bk, i64 %index
  %next.gep245 = getelementptr i8, ptr %i.bh, i64 %index
  %next.gep246 = getelementptr i8, ptr %i.be, i64 %index
  %next.gep247 = getelementptr i8, ptr %i.bb, i64 %index
  %next.gep248 = getelementptr i8, ptr %i.bt, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep247, align 1, !tbaa !50
  %i.bv = sext <16 x i8> %wide.load to <16 x i32>
  %wide.load249 = load <16 x i8>, ptr %next.gep248, align 1, !tbaa !50
  %i.bw = sext <16 x i8> %wide.load249 to <16 x i32> ; 4 uses
  %i.bx = mul nsw <16 x i32> %i.bw, %i.bv
  %i.by = add <16 x i32> %i.bx, %vec.phi244       ; 2 uses
  %wide.load250 = load <16 x i8>, ptr %next.gep246, align 1, !tbaa !50
  %i.bz = sext <16 x i8> %wide.load250 to <16 x i32>
  %i.ca = mul nsw <16 x i32> %i.bz, %i.bw
  %i.cb = add <16 x i32> %i.ca, %vec.phi243       ; 2 uses
  %wide.load251 = load <16 x i8>, ptr %next.gep245, align 1, !tbaa !50
  %i.cc = sext <16 x i8> %wide.load251 to <16 x i32>
  %i.cd = mul nsw <16 x i32> %i.cc, %i.bw
  %i.ce = add <16 x i32> %i.cd, %vec.phi242       ; 2 uses
  %wide.load252 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !50
  %i.cf = sext <16 x i8> %wide.load252 to <16 x i32>
  %i.cg = mul nsw <16 x i32> %i.cf, %i.bw
  %i.ch = add <16 x i32> %i.cg, %vec.phi          ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !401

middle.block:                                     ; preds = %vector.body
  %i.cj = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ch) ; 3 uses
  %i.ck = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ce) ; 3 uses
  %i.cl = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.cb) ; 3 uses
  %i.cm = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.by) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.cj, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx253 = phi i32 [ %i.ck, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx254 = phi i32 [ %i.cl, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx255 = phi i32 [ %i.cm, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.cn = getelementptr i8, ptr %i.bt, i64 %n.vec256
  %i.co = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %i.cp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx253, i64 0
  %i.cq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx254, i64 0
  %i.cr = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx255, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index257 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next272, %vec.epilog.vector.body ] ; 6 uses
  %vec.phi258 = phi <4 x i32> [ %i.co, %vec.epilog.ph ], [ %i.de, %vec.epilog.vector.body ]
  %vec.phi259 = phi <4 x i32> [ %i.cp, %vec.epilog.ph ], [ %i.db, %vec.epilog.vector.body ]
  %vec.phi260 = phi <4 x i32> [ %i.cq, %vec.epilog.ph ], [ %i.cy, %vec.epilog.vector.body ]
  %vec.phi261 = phi <4 x i32> [ %i.cr, %vec.epilog.ph ], [ %i.cv, %vec.epilog.vector.body ]
  %next.gep262 = getelementptr i8, ptr %i.bk, i64 %index257
  %next.gep263 = getelementptr i8, ptr %i.bh, i64 %index257
  %next.gep264 = getelementptr i8, ptr %i.be, i64 %index257
  %next.gep265 = getelementptr i8, ptr %i.bb, i64 %index257
  %next.gep266 = getelementptr i8, ptr %i.bt, i64 %index257
  %wide.load267 = load <4 x i8>, ptr %next.gep265, align 1, !tbaa !50
  %i.cs = sext <4 x i8> %wide.load267 to <4 x i32>
  %wide.load268 = load <4 x i8>, ptr %next.gep266, align 1, !tbaa !50
  %i.ct = sext <4 x i8> %wide.load268 to <4 x i32> ; 4 uses
  %i.cu = mul nsw <4 x i32> %i.ct, %i.cs
  %i.cv = add <4 x i32> %i.cu, %vec.phi261        ; 2 uses
  %wide.load269 = load <4 x i8>, ptr %next.gep264, align 1, !tbaa !50
  %i.cw = sext <4 x i8> %wide.load269 to <4 x i32>
  %i.cx = mul nsw <4 x i32> %i.cw, %i.ct
  %i.cy = add <4 x i32> %i.cx, %vec.phi260        ; 2 uses
  %wide.load270 = load <4 x i8>, ptr %next.gep263, align 1, !tbaa !50
  %i.cz = sext <4 x i8> %wide.load270 to <4 x i32>
  %i.da = mul nsw <4 x i32> %i.cz, %i.ct
  %i.db = add <4 x i32> %i.da, %vec.phi259        ; 2 uses
  %wide.load271 = load <4 x i8>, ptr %next.gep262, align 1, !tbaa !50
  %i.dc = sext <4 x i8> %wide.load271 to <4 x i32>
  %i.dd = mul nsw <4 x i32> %i.dc, %i.ct
  %i.de = add <4 x i32> %i.dd, %vec.phi258        ; 2 uses
  %index.next272 = add nuw i64 %index257, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next272, %n.vec256
  br i1 %i.df, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !402

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.de) ; 2 uses
  %i.dh = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.db) ; 2 uses
  %i.di = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cy) ; 2 uses
  %i.dj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cv) ; 2 uses
  br i1 %cmp.n273, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.066201.ph = phi i32 [ 0, %iter.check ], [ %i.aw, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  %.067200.ph = phi i32 [ 0, %iter.check ], [ %i.cj, %vec.epilog.iter.check ], [ %i.dg, %vec.epilog.middle.block ]
  %.068199.ph = phi i32 [ 0, %iter.check ], [ %i.ck, %vec.epilog.iter.check ], [ %i.dh, %vec.epilog.middle.block ]
  %.069198.ph = phi i32 [ 0, %iter.check ], [ %i.cl, %vec.epilog.iter.check ], [ %i.di, %vec.epilog.middle.block ]
  %.070197.ph = phi i32 [ 0, %iter.check ], [ %i.cm, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.middle.block ]
  %.071196.ph = phi ptr [ %i.bk, %iter.check ], [ %i.bl, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  %.072195.ph = phi ptr [ %i.bh, %iter.check ], [ %i.bm, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  %.073194.ph = phi ptr [ %i.be, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ]
  %.074193.ph = phi ptr [ %i.bb, %iter.check ], [ %i.bo, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ]
  %.075192.ph = phi ptr [ %i.bt, %iter.check ], [ %i.bu, %vec.epilog.iter.check ], [ %i.cn, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.066201 = phi i32 [ %i.eh, %.lr.ph ], [ %.066201.ph, %.lr.ph.preheader ]
  %.067200 = phi i32 [ %i.ef, %.lr.ph ], [ %.067200.ph, %.lr.ph.preheader ]
  %.068199 = phi i32 [ %i.ec, %.lr.ph ], [ %.068199.ph, %.lr.ph.preheader ]
  %.069198 = phi i32 [ %i.dz, %.lr.ph ], [ %.069198.ph, %.lr.ph.preheader ]
  %.070197 = phi i32 [ %i.dw, %.lr.ph ], [ %.070197.ph, %.lr.ph.preheader ]
  %.071196 = phi ptr [ %i.ds, %.lr.ph ], [ %.071196.ph, %.lr.ph.preheader ] ; 2 uses
  %.072195 = phi ptr [ %i.dq, %.lr.ph ], [ %.072195.ph, %.lr.ph.preheader ] ; 2 uses
  %.073194 = phi ptr [ %i.do, %.lr.ph ], [ %.073194.ph, %.lr.ph.preheader ] ; 2 uses
  %.074193 = phi ptr [ %i.dk, %.lr.ph ], [ %.074193.ph, %.lr.ph.preheader ] ; 2 uses
  %.075192 = phi ptr [ %i.eg, %.lr.ph ], [ %.075192.ph, %.lr.ph.preheader ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.074193, i64 1
  %i.dl = load i8, ptr %.074193, align 1, !tbaa !50
  %i.dm = load i8, ptr %.075192, align 1, !tbaa !50
  %i.dn = sext i8 %i.dm to i32                    ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.073194, i64 1
  %i.dp = load i8, ptr %.073194, align 1, !tbaa !50
  %i.dq = getelementptr inbounds nuw i8, ptr %.072195, i64 1
  %i.dr = load i8, ptr %.072195, align 1, !tbaa !50
  %i.ds = getelementptr inbounds nuw i8, ptr %.071196, i64 1
  %i.dt = load i8, ptr %.071196, align 1, !tbaa !50
  %i.du = sext i8 %i.dl to i32
  %i.dv = mul nsw i32 %i.dn, %i.du
  %i.dw = add nsw i32 %i.dv, %.070197             ; 2 uses
  %i.dx = sext i8 %i.dp to i32
  %i.dy = mul nsw i32 %i.dx, %i.dn
  %i.dz = add nsw i32 %i.dy, %.069198             ; 2 uses
  %i.ea = sext i8 %i.dr to i32
  %i.eb = mul nsw i32 %i.ea, %i.dn
  %i.ec = add nsw i32 %i.eb, %.068199             ; 2 uses
  %i.ed = sext i8 %i.dt to i32
  %i.ee = mul nsw i32 %i.ed, %i.dn
  %i.ef = add nsw i32 %i.ee, %.067200             ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.075192, i64 1
  %i.eh = add nuw nsw i32 %.066201, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.eh, %i.an
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !403

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa240 = phi i32 [ %i.dj, %vec.epilog.middle.block ], [ %i.cm, %middle.block ], [ %i.dw, %.lr.ph ]
  %.lcssa239 = phi i32 [ %i.di, %vec.epilog.middle.block ], [ %i.cl, %middle.block ], [ %i.dz, %.lr.ph ]
  %.lcssa238 = phi i32 [ %i.dh, %vec.epilog.middle.block ], [ %i.ck, %middle.block ], [ %i.ec, %.lr.ph ]
  %.lcssa = phi i32 [ %i.dg, %vec.epilog.middle.block ], [ %i.cj, %middle.block ], [ %i.ef, %.lr.ph ]
  %i.ei = insertelement <4 x i32> poison, i32 %.lcssa240, i64 0
  %i.ej = insertelement <4 x i32> %i.ei, i32 %.lcssa239, i64 1
  %i.ek = insertelement <4 x i32> %i.ej, i32 %.lcssa, i64 2
  %i.el = insertelement <4 x i32> %i.ek, i32 %.lcssa238, i64 3
  %i.em = sitofp fast <4 x i32> %i.el to <4 x float>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.en = phi <4 x float> [ zeroinitializer, %bb.c ], [ %i.em, %._crit_edge.loopexit ]
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !53
  %i.eq = insertelement <4 x float> poison, float %i.ep, i64 0
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.es = fmul fast <4 x float> %i.er, %i.en      ; 2 uses
  br i1 %.not79, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.et = load ptr, ptr %i.u, align 8, !tbaa !19
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !53
  %i.ew = insertelement <4 x float> poison, float %i.ev, i64 0
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ey = fadd fast <4 x float> %i.ex, %i.es
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ez = phi <4 x float> [ %i.ey, %bb.d ], [ %i.es, %._crit_edge ] ; 26 uses
  switch i32 %i.ar, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread157
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread159
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread155
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread161
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread163
    i32 6, label %bb.f
  ]

_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread157: ; preds = %bb.e
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.fb = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fa, <2 x float> zeroinitializer)
  store <2 x float> %i.fb, ptr %.077205, align 4, !tbaa !53
  %i.fc = getelementptr inbounds nuw i8, ptr %.077205, i64 8
  %i.fd = shufflevector <4 x float> %i.ez, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.fe = call fast <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.fd, <2 x float> zeroinitializer) ; 2 uses
  %i.ff = extractelement <2 x float> %i.fe, i64 1
  store float %i.ff, ptr %i.fc, align 4, !tbaa !53
  %i.fg = extractelement <2 x float> %i.fe, i64 0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread159: ; preds = %bb.e
  %i.fh = load ptr, ptr %i.v, align 8, !tbaa !19  ; 4 uses
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !53
  %i.fj = fcmp fast ogt <4 x float> %i.ez, zeroinitializer ; 4 uses
  %i.fk = extractelement <4 x i1> %i.fj, i64 0
  %i.fl = select fast i1 %i.fk, float 1.000000e+00, float %i.fi
  %i.fm = extractelement <4 x float> %i.ez, i64 0
  %i.fn = fmul fast float %i.fl, %i.fm
  store float %i.fn, ptr %.077205, align 4, !tbaa !53
  %i.fo = load float, ptr %i.fh, align 4, !tbaa !53
  %i.fp = extractelement <4 x i1> %i.fj, i64 1
  %i.fq = select fast i1 %i.fp, float 1.000000e+00, float %i.fo
  %i.fr = extractelement <4 x float> %i.ez, i64 1
  %i.fs = fmul fast float %i.fq, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %.077205, i64 4
  store float %i.fs, ptr %i.ft, align 4, !tbaa !53
  %i.fu = load float, ptr %i.fh, align 4, !tbaa !53
  %i.fv = extractelement <4 x i1> %i.fj, i64 3
  %i.fw = select fast i1 %i.fv, float 1.000000e+00, float %i.fu
  %i.fx = extractelement <4 x float> %i.ez, i64 3
  %i.fy = fmul fast float %i.fw, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %.077205, i64 8
  store float %i.fy, ptr %i.fz, align 4, !tbaa !53
  %i.ga = load float, ptr %i.fh, align 4, !tbaa !53
  %i.gb = extractelement <4 x i1> %i.fj, i64 2
  %i.gc = select fast i1 %i.gb, float 1.000000e+00, float %i.ga
  %i.gd = extractelement <4 x float> %i.ez, i64 2
  %i.ge = fmul fast float %i.gc, %i.gd
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread155: ; preds = %bb.e
  %i.gf = load ptr, ptr %i.v, align 8, !tbaa !19  ; 5 uses
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !53
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 4 ; 4 uses
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !53 ; 2 uses
  %i.gj = extractelement <4 x float> %i.ez, i64 0
  %spec.select = call nnan ninf nsz float @llvm.maxnum.f32(float %i.gj, float %i.gg) ; 2 uses
  %i.gk = fcmp fast ogt float %spec.select, %i.gi
  %.1.ph154 = select i1 %i.gk, float %i.gi, float %spec.select
  store float %.1.ph154, ptr %.077205, align 4, !tbaa !53
  %i.gl = load float, ptr %i.gf, align 4, !tbaa !53
  %i.gm = load float, ptr %i.gh, align 4, !tbaa !53 ; 2 uses
  %i.gn = extractelement <4 x float> %i.ez, i64 1
  %.0146 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.gn, float %i.gl) ; 2 uses
  %i.go = fcmp fast ogt float %.0146, %i.gm
  %.1147.ph167 = select i1 %i.go, float %i.gm, float %.0146
  %i.gp = getelementptr inbounds nuw i8, ptr %.077205, i64 4
  store float %.1147.ph167, ptr %i.gp, align 4, !tbaa !53
  %i.gq = load float, ptr %i.gf, align 4, !tbaa !53
  %i.gr = load float, ptr %i.gh, align 4, !tbaa !53 ; 2 uses
  %i.gs = extractelement <4 x float> %i.ez, i64 3
  %.0150 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.gs, float %i.gq) ; 2 uses
  %i.gt = fcmp fast ogt float %.0150, %i.gr
  %.1151.ph180 = select i1 %i.gt, float %i.gr, float %.0150
  %i.gu = getelementptr inbounds nuw i8, ptr %.077205, i64 8
  store float %.1151.ph180, ptr %i.gu, align 4, !tbaa !53
  %i.gv = load float, ptr %i.gf, align 4, !tbaa !53
  %i.gw = load float, ptr %i.gh, align 4, !tbaa !53
  %i.gx = extractelement <4 x float> %i.ez, i64 2
  %.0148 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.gx, float %i.gv)
  %spec.select191 = call nnan ninf nsz float @llvm.minnum.f32(float %.0148, float %i.gw)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread161: ; preds = %bb.e
  %i.gy = shufflevector <4 x float> %i.ez, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gz = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.gy, <2 x float> splat (float f0x42B0C0A5))
  %i.ha = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.gz, <2 x float> splat (float f0xC2B0C0A5))
  %i.hb = fneg fast <2 x float> %i.ha
  %i.hc = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.hb)
  %i.hd = fadd fast <2 x float> %i.hc, splat (float 1.000000e+00)
  %i.he = fdiv fast <2 x float> splat (float 1.000000e+00), %i.hd
  store <2 x float> %i.he, ptr %.077205, align 4, !tbaa !53
  %i.hf = getelementptr inbounds nuw i8, ptr %.077205, i64 8
  %i.hg = shufflevector <4 x float> %i.ez, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.hh = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.hg, <2 x float> splat (float f0x42B0C0A5))
  %i.hi = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.hh, <2 x float> splat (float f0xC2B0C0A5))
  %i.hj = fneg fast <2 x float> %i.hi
  %i.hk = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.hj)
  %i.hl = fadd fast <2 x float> %i.hk, splat (float 1.000000e+00)
  %i.hm = fdiv fast <2 x float> splat (float 1.000000e+00), %i.hl ; 2 uses
  %i.hn = extractelement <2 x float> %i.hm, i64 1
  store float %i.hn, ptr %i.hf, align 4, !tbaa !53
  %i.ho = extractelement <2 x float> %i.hm, i64 0
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread163: ; preds = %bb.e
  %i.hp = extractelement <4 x float> %i.ez, i64 0
  %i.hq = extractelement <4 x float> %i.ez, i64 1
  %i.hr = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.hp)
  %i.hs = fadd fast float %i.hr, 1.000000e+00
  %i.ht = call fast float @llvm.log.f32(float %i.hs)
  %i.hu = call fast float @llvm.tanh.f32(float %i.ht)
  %i.hv = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.hq)
  %i.hw = fadd fast float %i.hv, 1.000000e+00
  %i.hx = call fast float @llvm.log.f32(float %i.hw)
  %i.hy = call fast float @llvm.tanh.f32(float %i.hx)
  %i.hz = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.ia = insertelement <2 x float> %i.hz, float %i.hy, i64 1
  %i.ib = shufflevector <4 x float> %i.ez, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ic = fmul fast <2 x float> %i.ia, %i.ib
  store <2 x float> %i.ic, ptr %.077205, align 4, !tbaa !53
  %i.id = extractelement <4 x float> %i.ez, i64 3 ; 2 uses
  %i.ie = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.id)
  %i.if = fadd fast float %i.ie, 1.000000e+00
  %i.ig = call fast float @llvm.log.f32(float %i.if)
  %i.ih = call fast float @llvm.tanh.f32(float %i.ig)
  %i.ii = fmul fast float %i.ih, %i.id
  %i.ij = getelementptr inbounds nuw i8, ptr %.077205, i64 8
  store float %i.ii, ptr %i.ij, align 4, !tbaa !53
  %i.ik = extractelement <4 x float> %i.ez, i64 2 ; 2 uses
  %i.il = call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.ik)
  %i.im = fadd fast float %i.il, 1.000000e+00
  %i.in = call fast float @llvm.log.f32(float %i.im)
  %i.io = call fast float @llvm.tanh.f32(float %i.in)
  %i.ip = fmul fast float %i.io, %i.ik
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.f:                                             ; preds = %bb.e
  %i.iq = load ptr, ptr %i.v, align 8, !tbaa !19  ; 5 uses
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !53 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 4 ; 4 uses
  %i.it = load float, ptr %i.is, align 4, !tbaa !53 ; 2 uses
  %i.iu = fneg fast float %i.it
  %i.iv = fdiv fast float %i.iu, %i.ir            ; 2 uses
  %i.iw = extractelement <4 x float> %i.ez, i64 0 ; 5 uses
  %i.ix = fcmp fast olt float %i.iw, %i.iv
  br i1 %i.ix, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.iy = fdiv fast float 1.000000e+00, %i.ir
  %i.iz = fadd fast float %i.iv, %i.iy
  %i.ja = fcmp fast ogt float %i.iw, %i.iz
  br i1 %i.ja, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.jb = fmul fast float %i.ir, %i.iw
  %i.jc = fadd fast float %i.jb, %i.it
  %i.jd = fmul fast float %i.jc, %i.iw
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit82.thread:  ; preds = %bb.h, %bb.g, %bb.f
  %.1.ph = phi float [ 0.000000e+00, %bb.f ], [ %i.iw, %bb.g ], [ %i.jd, %bb.h ]
  store float %.1.ph, ptr %.077205, align 4, !tbaa !53
  %i.je = load float, ptr %i.iq, align 4, !tbaa !53 ; 3 uses
  %i.jf = load float, ptr %i.is, align 4, !tbaa !53 ; 2 uses
  %i.jg = fneg fast float %i.jf
  %i.jh = fdiv fast float %i.jg, %i.je            ; 2 uses
  %i.ji = extractelement <4 x float> %i.ez, i64 1 ; 5 uses
  %i.jj = fcmp fast olt float %i.ji, %i.jh
  br i1 %i.jj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit81.thread, label %bb.i

_ZL13activation_ssfiRKN4ncnn3MatE.exit82:         ; preds = %bb.e
  %i.jk = extractelement <4 x float> %i.ez, i64 0
  store float %i.jk, ptr %.077205, align 4, !tbaa !53
  %i.jl = getelementptr inbounds nuw i8, ptr %.077205, i64 4
  %i.jm = extractelement <4 x float> %i.ez, i64 1
  store float %i.jm, ptr %i.jl, align 4, !tbaa !53
end_hunk_0
