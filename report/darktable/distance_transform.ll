Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/distance_transform?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dt_image_distance_transform:bb.a
  %i.c = mul i64 %3, %2                           ; 11 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader86
  %min.iters.check = icmp ult i64 %i.c, 4
  %i.d = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.d, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check138 = icmp ult i64 %i.c, 32
  br i1 %min.iters.check138, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.c, 28
  %n.vec = and i64 %i.c, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %4, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %wide.load = load <8 x float>, ptr %i.f, align 4, !tbaa !12
  %wide.load139 = load <8 x float>, ptr %i.g, align 4, !tbaa !12
  %wide.load140 = load <8 x float>, ptr %i.h, align 4, !tbaa !12
  %wide.load141 = load <8 x float>, ptr %i.i, align 4, !tbaa !12
  %i.j = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.load, %broadcast.splat
  %i.k = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.load139, %broadcast.splat
  %i.l = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.load140, %broadcast.splat
  %i.m = fcmp reassoc nsz arcp contract afn olt <8 x float> %wide.load141, %broadcast.splat
  %i.n = select <8 x i1> %i.j, <8 x float> zeroinitializer, <8 x float> splat (float 1.000000e+20)
  %i.o = select <8 x i1> %i.k, <8 x float> zeroinitializer, <8 x float> splat (float 1.000000e+20)
  %i.p = select <8 x i1> %i.l, <8 x float> zeroinitializer, <8 x float> splat (float 1.000000e+20)
  %i.q = select <8 x i1> %i.m, <8 x float> zeroinitializer, <8 x float> splat (float 1.000000e+20)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  store <8 x float> %i.n, ptr %i.r, align 4, !tbaa !12
  store <8 x float> %i.o, ptr %i.s, align 4, !tbaa !12
  store <8 x float> %i.p, ptr %i.t, align 4, !tbaa !12
  store <8 x float> %i.q, ptr %i.u, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec142 = and i64 %i.c, -4                    ; 3 uses
  %broadcast.splatinsert143 = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat144 = shufflevector <4 x float> %broadcast.splatinsert143, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index145 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next147, %vec.epilog.vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index145
  %wide.load146 = load <4 x float>, ptr %i.w, align 4, !tbaa !12
  %i.x = fcmp reassoc nsz arcp contract afn olt <4 x float> %wide.load146, %broadcast.splat144
  %i.y = select <4 x i1> %i.x, <4 x float> zeroinitializer, <4 x float> splat (float 1.000000e+20)
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index145
  store <4 x float> %i.y, ptr %i.z, align 4, !tbaa !12
  %index.next147 = add nuw i64 %index145, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next147, %n.vec142
  br i1 %i.aa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !14

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n148 = icmp eq i64 %i.c, %n.vec142
  br i1 %cmp.n148, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08187.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec142, %vec.epilog.middle.block ] ; 4 uses
  %i.ab = sub i64 %i.c, %.08187.ph
  %xtraiter = and i64 %i.ab, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.08187.prol = phi i64 [ %i.ah, %.lr.ph.prol ], [ %.08187.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.08187.prol
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !12
  %i.ae = fcmp reassoc nsz arcp contract afn olt float %i.ad, %4
  %i.af = select i1 %i.ae, float 0.000000e+00, float 1.000000e+20
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.08187.prol
  store float %i.af, ptr %i.ag, align 4, !tbaa !12
  %i.ah = add nuw i64 %.08187.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !15

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.08187.unr = phi i64 [ %.08187.ph, %.lr.ph.preheader ], [ %i.ah, %.lr.ph.prol ]
  %i.ai = sub i64 %.08187.ph, %i.c
  %i.aj = icmp ugt i64 %i.ai, -8
  br i1 %i.aj, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.08187 = phi i64 [ %i.cf, %.lr.ph ], [ %.08187.unr, %.lr.ph.prol.loopexit ] ; 10 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.08187
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12
  %i.am = fcmp reassoc nsz arcp contract afn olt float %i.al, %4
  %i.an = select i1 %i.am, float 0.000000e+00, float 1.000000e+20
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.08187
  store float %i.an, ptr %i.ao, align 4, !tbaa !12
  %i.ap = add nuw i64 %.08187, 1                  ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !12
  %i.as = fcmp reassoc nsz arcp contract afn olt float %i.ar, %4
  %i.at = select i1 %i.as, float 0.000000e+00, float 1.000000e+20
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ap
  store float %i.at, ptr %i.au, align 4, !tbaa !12
  %i.av = add nuw i64 %.08187, 2                  ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !12
  %i.ay = fcmp reassoc nsz arcp contract afn olt float %i.ax, %4
  %i.az = select i1 %i.ay, float 0.000000e+00, float 1.000000e+20
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.av
  store float %i.az, ptr %i.ba, align 4, !tbaa !12
  %i.bb = add nuw i64 %.08187, 3                  ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bb
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !12
  %i.be = fcmp reassoc nsz arcp contract afn olt float %i.bd, %4
  %i.bf = select i1 %i.be, float 0.000000e+00, float 1.000000e+20
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bb
  store float %i.bf, ptr %i.bg, align 4, !tbaa !12
  %i.bh = add nuw i64 %.08187, 4                  ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bh
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !12
  %i.bk = fcmp reassoc nsz arcp contract afn olt float %i.bj, %4
  %i.bl = select i1 %i.bk, float 0.000000e+00, float 1.000000e+20
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bh
  store float %i.bl, ptr %i.bm, align 4, !tbaa !12
  %i.bn = add nuw i64 %.08187, 5                  ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bn
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !12
  %i.bq = fcmp reassoc nsz arcp contract afn olt float %i.bp, %4
  %i.br = select i1 %i.bq, float 0.000000e+00, float 1.000000e+20
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bn
  store float %i.br, ptr %i.bs, align 4, !tbaa !12
  %i.bt = add nuw i64 %.08187, 6                  ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bt
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !12
  %i.bw = fcmp reassoc nsz arcp contract afn olt float %i.bv, %4
  %i.bx = select i1 %i.bw, float 0.000000e+00, float 1.000000e+20
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bt
  store float %i.bx, ptr %i.by, align 4, !tbaa !12
  %i.bz = add nuw i64 %.08187, 7                  ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bz
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !12
  %i.cc = fcmp reassoc nsz arcp contract afn olt float %i.cb, %4
  %i.cd = select i1 %i.cc, float 0.000000e+00, float 1.000000e+20
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bz
  store float %i.cd, ptr %i.ce, align 4, !tbaa !12
  %i.cf = add nuw i64 %.08187, 8                  ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.cf, %i.c
  br i1 %exitcond.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !16

bb.b:                                             ; preds = %bb.a
  tail call void @dt_iop_image_fill(ptr noundef %1, float noundef 0.000000e+00, i64 noundef %2, i64 noundef %3, i64 noundef 1) #6
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str, i32 noundef %5) #6
  br label %bb.d

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader86, %bb.a
  %i.cg = tail call i64 @llvm.umax.i64(i64 %2, i64 %3)
  %i.ch = shl i64 %i.cg, 2                        ; 4 uses
  %i.ci = tail call ptr @dt_alloc_aligned(i64 noundef %i.ch) #6 ; 16 uses
  %i.cj = ptrtoaddr ptr %i.ci to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ci, i64 64) ]
  %i.ck = add i64 %i.ch, 4
  %i.cl = tail call ptr @dt_alloc_aligned(i64 noundef %i.ck) #6 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cl, i64 64) ]
  %i.cm = tail call ptr @dt_alloc_aligned(i64 noundef %i.ch) #6 ; 23 uses
  %i.cn = ptrtoaddr ptr %i.cm to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cm, i64 64) ]
  %i.co = tail call ptr @dt_alloc_aligned(i64 noundef %i.ch) #6 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.co, i64 64) ]
  %.not113 = icmp eq i64 %2, 0
  %.not115 = icmp eq i64 %3, 0                    ; 2 uses
  br i1 %.not113, label %.preheader, label %.preheader85.lr.ph

.preheader85.lr.ph:                               ; preds = %.loopexit
  %i.cp = trunc i64 %3 to i32                     ; 2 uses
  br i1 %.not115, label %.preheader85, label %.preheader85.us.us.preheader

.preheader85.us.us.preheader:                     ; preds = %.preheader85.lr.ph
  %i.cq = sub i64 %i.a, %i.cn
  %min.iters.check185 = icmp ugt i64 %3, 3
  %ident.check182.not = icmp eq i64 %2, 1
  %or.cond215 = and i1 %min.iters.check185, %ident.check182.not
  %invariant.op = sub i64 %i.a, %i.cj
  %min.iters.check185.a = icmp ult i64 %3, 32
  %i.cr = and i64 %3, 28
  %n.vec187 = and i64 %3, -32                     ; 4 uses
  %cmp.n196 = icmp eq i64 %3, %n.vec187
  %min.epilog.iters.check200 = icmp eq i64 %i.cr, 0
  %n.vec203 = and i64 %3, -4                      ; 3 uses
  %cmp.n209 = icmp eq i64 %3, %n.vec203
  %min.iters.check151 = icmp ugt i64 %3, 3
  %ident.check.not = icmp eq i64 %2, 1
  %or.cond216 = and i1 %min.iters.check151, %ident.check.not
  %invariant.op235 = add i64 %i.cq, -1
  %min.iters.check153 = icmp ult i64 %3, 32
  %i.cs = and i64 %3, 28
  %n.vec155 = and i64 %3, -32                     ; 4 uses
  %cmp.n164 = icmp eq i64 %3, %n.vec155
  %min.epilog.iters.check168 = icmp eq i64 %i.cs, 0
  %n.vec171 = and i64 %3, -4                      ; 3 uses
  %cmp.n177 = icmp eq i64 %3, %n.vec171
  br label %iter.check201

iter.check201:                                    ; preds = %.preheader85.us.us.preheader, %._crit_edge95.us.us
  %.07996.us.us = phi i64 [ %i.gs, %._crit_edge95.us.us ], [ 0, %.preheader85.us.us.preheader ] ; 4 uses
  %invariant.gep.us.us = getelementptr [4 x i8], ptr %1, i64 %.07996.us.us ; 22 uses
  br i1 %or.cond215, label %iter.check197, label %vec.epilog.scalar.ph199.preheader

iter.check197:                                    ; preds = %iter.check201
  %i.ct = shl i64 %.07996.us.us, 2
  %.reass = add i64 %i.ct, %invariant.op
  %diff.check182 = icmp ugt i64 %.reass, -128
  br i1 %diff.check182, label %vec.epilog.scalar.ph199.preheader, label %vector.main.loop.iter.check184

vector.main.loop.iter.check184:                   ; preds = %iter.check197
  br i1 %min.iters.check185.a, label %vec.epilog.ph201, label %vector.body188

vector.body188:                                   ; preds = %vector.main.loop.iter.check184, %vector.body188
  %index189 = phi i64 [ %index.next194, %vector.body188 ], [ 0, %vector.main.loop.iter.check184 ] ; 3 uses
  %i.cu = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %index189 ; 4 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 32
  %i.cw = getelementptr i8, ptr %i.cu, i64 64
  %i.cx = getelementptr i8, ptr %i.cu, i64 96
  %wide.load190 = load <8 x float>, ptr %i.cu, align 4, !tbaa !12
  %wide.load191 = load <8 x float>, ptr %i.cv, align 4, !tbaa !12
  %wide.load192 = load <8 x float>, ptr %i.cw, align 4, !tbaa !12
  %wide.load193 = load <8 x float>, ptr %i.cx, align 4, !tbaa !12
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %index189 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  store <8 x float> %wide.load190, ptr %i.cy, align 64, !tbaa !12
  store <8 x float> %wide.load191, ptr %i.cz, align 32, !tbaa !12
  store <8 x float> %wide.load192, ptr %i.da, align 64, !tbaa !12
  store <8 x float> %wide.load193, ptr %i.db, align 32, !tbaa !12
  %index.next194 = add nuw i64 %index189, 32      ; 2 uses
  %i.dc = icmp eq i64 %index.next194, %n.vec187
  br i1 %i.dc, label %middle.block195, label %vector.body188, !llvm.loop !17

middle.block195:                                  ; preds = %vector.body188
  br i1 %cmp.n196, label %iter.check167, label %vec.epilog.iter.check198

vec.epilog.iter.check198:                         ; preds = %middle.block195
  br i1 %min.epilog.iters.check200, label %vec.epilog.scalar.ph199.preheader, label %vec.epilog.ph201, !prof !28

vec.epilog.ph201:                                 ; preds = %vector.main.loop.iter.check184, %vec.epilog.iter.check198
  %vec.epilog.resume.val202 = phi i64 [ %n.vec187, %vec.epilog.iter.check198 ], [ 0, %vector.main.loop.iter.check184 ]
  br label %vec.epilog.vector.body204

vec.epilog.vector.body204:                        ; preds = %vec.epilog.vector.body204, %vec.epilog.ph201
  %index205 = phi i64 [ %vec.epilog.resume.val202, %vec.epilog.ph201 ], [ %index.next207, %vec.epilog.vector.body204 ] ; 3 uses
  %i.dd = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %index205
  %wide.load206 = load <4 x float>, ptr %i.dd, align 4, !tbaa !12
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %index205
  store <4 x float> %wide.load206, ptr %i.de, align 16, !tbaa !12
  %index.next207 = add nuw i64 %index205, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next207, %n.vec203
  br i1 %i.df, label %vec.epilog.middle.block208, label %vec.epilog.vector.body204, !llvm.loop !18

vec.epilog.middle.block208:                       ; preds = %vec.epilog.vector.body204
  br i1 %cmp.n209, label %iter.check167, label %vec.epilog.scalar.ph199.preheader

vec.epilog.scalar.ph199.preheader:                ; preds = %iter.check201, %iter.check197, %vec.epilog.iter.check198, %vec.epilog.middle.block208
  %.07888.us.us.ph = phi i64 [ 0, %iter.check201 ], [ 0, %iter.check197 ], [ %n.vec187, %vec.epilog.iter.check198 ], [ %n.vec203, %vec.epilog.middle.block208 ] ; 4 uses
  %i.dg = sub i64 %3, %.07888.us.us.ph
  %xtraiter219 = and i64 %i.dg, 7                 ; 2 uses
  %lcmp.mod220.not = icmp eq i64 %xtraiter219, 0
  br i1 %lcmp.mod220.not, label %vec.epilog.scalar.ph199.prol.loopexit, label %vec.epilog.scalar.ph199.prol

vec.epilog.scalar.ph199.prol:                     ; preds = %vec.epilog.scalar.ph199.preheader, %vec.epilog.scalar.ph199.prol
  %.07888.us.us.prol = phi i64 [ %i.dk, %vec.epilog.scalar.ph199.prol ], [ %.07888.us.us.ph, %vec.epilog.scalar.ph199.preheader ] ; 3 uses
  %prol.iter221 = phi i64 [ %prol.iter221.next, %vec.epilog.scalar.ph199.prol ], [ 0, %vec.epilog.scalar.ph199.preheader ]
  %i.dh = mul i64 %.07888.us.us.prol, %2
  %gep.us.us.prol = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.dh
  %i.di = load float, ptr %gep.us.us.prol, align 4, !tbaa !12
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.07888.us.us.prol
  store float %i.di, ptr %i.dj, align 4, !tbaa !12
  %i.dk = add nuw i64 %.07888.us.us.prol, 1       ; 2 uses
  %prol.iter221.next = add i64 %prol.iter221, 1   ; 2 uses
  %prol.iter221.cmp.not = icmp eq i64 %prol.iter221.next, %xtraiter219
  br i1 %prol.iter221.cmp.not, label %vec.epilog.scalar.ph199.prol.loopexit, label %vec.epilog.scalar.ph199.prol, !llvm.loop !19

vec.epilog.scalar.ph199.prol.loopexit:            ; preds = %vec.epilog.scalar.ph199.prol, %vec.epilog.scalar.ph199.preheader
  %.07888.us.us.unr = phi i64 [ %.07888.us.us.ph, %vec.epilog.scalar.ph199.preheader ], [ %i.dk, %vec.epilog.scalar.ph199.prol ]
  %i.dl = sub i64 %.07888.us.us.ph, %3
  %i.dm = icmp ugt i64 %i.dl, -8
  br i1 %i.dm, label %iter.check167, label %vec.epilog.scalar.ph199

vec.epilog.scalar.ph199:                          ; preds = %vec.epilog.scalar.ph199.prol.loopexit, %vec.epilog.scalar.ph199
  %.07888.us.us = phi i64 [ %i.es, %vec.epilog.scalar.ph199 ], [ %.07888.us.us.unr, %vec.epilog.scalar.ph199.prol.loopexit ] ; 10 uses
  %i.dn = mul i64 %.07888.us.us, %2
  %gep.us.us = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.dn
  %i.do = load float, ptr %gep.us.us, align 4, !tbaa !12
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.07888.us.us
  store float %i.do, ptr %i.dp, align 4, !tbaa !12
  %i.dq = add nuw i64 %.07888.us.us, 1            ; 2 uses
  %i.dr = mul i64 %i.dq, %2
  %gep.us.us.1 = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.dr
  %i.ds = load float, ptr %gep.us.us.1, align 4, !tbaa !12
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.dq
  store float %i.ds, ptr %i.dt, align 4, !tbaa !12
  %i.du = add nuw i64 %.07888.us.us, 2            ; 2 uses
  %i.dv = mul i64 %i.du, %2
  %gep.us.us.2 = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.dv
  %i.dw = load float, ptr %gep.us.us.2, align 4, !tbaa !12
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.du
  store float %i.dw, ptr %i.dx, align 4, !tbaa !12
  %i.dy = add nuw i64 %.07888.us.us, 3            ; 2 uses
  %i.dz = mul i64 %i.dy, %2
  %gep.us.us.3 = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.dz
  %i.ea = load float, ptr %gep.us.us.3, align 4, !tbaa !12
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.dy
  store float %i.ea, ptr %i.eb, align 4, !tbaa !12
  %i.ec = add nuw i64 %.07888.us.us, 4            ; 2 uses
  %i.ed = mul i64 %i.ec, %2
  %gep.us.us.4 = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.ed
  %i.ee = load float, ptr %gep.us.us.4, align 4, !tbaa !12
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.ec
  store float %i.ee, ptr %i.ef, align 4, !tbaa !12
  %i.eg = add nuw i64 %.07888.us.us, 5            ; 2 uses
  %i.eh = mul i64 %i.eg, %2
  %gep.us.us.5 = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.eh
  %i.ei = load float, ptr %gep.us.us.5, align 4, !tbaa !12
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.eg
  store float %i.ei, ptr %i.ej, align 4, !tbaa !12
  %i.ek = add nuw i64 %.07888.us.us, 6            ; 2 uses
  %i.el = mul i64 %i.ek, %2
  %gep.us.us.6 = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.el
  %i.em = load float, ptr %gep.us.us.6, align 4, !tbaa !12
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.ek
  store float %i.em, ptr %i.en, align 4, !tbaa !12
  %i.eo = add nuw i64 %.07888.us.us, 7            ; 2 uses
  %i.ep = mul i64 %i.eo, %2
  %gep.us.us.7 = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.ep
  %i.eq = load float, ptr %gep.us.us.7, align 4, !tbaa !12
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.eo
  store float %i.eq, ptr %i.er, align 4, !tbaa !12
  %i.es = add nuw i64 %.07888.us.us, 8            ; 2 uses
  %exitcond119.not.7 = icmp eq i64 %i.es, %3
  br i1 %exitcond119.not.7, label %iter.check167, label %vec.epilog.scalar.ph199, !llvm.loop !20

iter.check167:                                    ; preds = %vec.epilog.scalar.ph199.prol.loopexit, %vec.epilog.scalar.ph199, %vec.epilog.middle.block208, %middle.block195
  tail call fastcc void @_image_distance_transform(ptr noundef nonnull %i.ci, ptr noundef %i.cl, ptr noundef %i.cm, ptr noundef %i.co, i32 noundef %i.cp)
  br i1 %or.cond216, label %iter.check165, label %vec.epilog.scalar.ph167.preheader

iter.check165:                                    ; preds = %iter.check167
  %6 = shl i64 %.07996.us.us, 2
  %.reass236 = add i64 %6, %invariant.op235
  %diff.check150 = icmp ult i64 %.reass236, 127
  br i1 %diff.check150, label %vec.epilog.scalar.ph167.preheader, label %vector.main.loop.iter.check152

vector.main.loop.iter.check152:                   ; preds = %iter.check165
  br i1 %min.iters.check153, label %vec.epilog.ph169, label %vector.body156

vector.body156:                                   ; preds = %vector.main.loop.iter.check152, %vector.body156
  %index157 = phi i64 [ %index.next162, %vector.body156 ], [ 0, %vector.main.loop.iter.check152 ] ; 3 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %index157 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  %wide.load158 = load <8 x float>, ptr %i.et, align 64, !tbaa !12
  %wide.load159 = load <8 x float>, ptr %i.eu, align 32, !tbaa !12
  %wide.load160 = load <8 x float>, ptr %i.ev, align 64, !tbaa !12
  %wide.load161 = load <8 x float>, ptr %i.ew, align 32, !tbaa !12
  %i.ex = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %index157 ; 4 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 32
  %i.ez = getelementptr i8, ptr %i.ex, i64 64
  %i.fa = getelementptr i8, ptr %i.ex, i64 96
  store <8 x float> %wide.load158, ptr %i.ex, align 4, !tbaa !12
  store <8 x float> %wide.load159, ptr %i.ey, align 4, !tbaa !12
  store <8 x float> %wide.load160, ptr %i.ez, align 4, !tbaa !12
  store <8 x float> %wide.load161, ptr %i.fa, align 4, !tbaa !12
  %index.next162 = add nuw i64 %index157, 32      ; 2 uses
  %i.fb = icmp eq i64 %index.next162, %n.vec155
  br i1 %i.fb, label %middle.block163, label %vector.body156, !llvm.loop !21

middle.block163:                                  ; preds = %vector.body156
  br i1 %cmp.n164, label %._crit_edge95.us.us, label %vec.epilog.iter.check166

vec.epilog.iter.check166:                         ; preds = %middle.block163
  br i1 %min.epilog.iters.check168, label %vec.epilog.scalar.ph167.preheader, label %vec.epilog.ph169, !prof !28

vec.epilog.ph169:                                 ; preds = %vector.main.loop.iter.check152, %vec.epilog.iter.check166
  %vec.epilog.resume.val170 = phi i64 [ %n.vec155, %vec.epilog.iter.check166 ], [ 0, %vector.main.loop.iter.check152 ]
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph169
  %index173 = phi i64 [ %vec.epilog.resume.val170, %vec.epilog.ph169 ], [ %index.next175, %vec.epilog.vector.body172 ] ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %index173
  %wide.load174 = load <4 x float>, ptr %i.fc, align 16, !tbaa !12
  %i.fd = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %index173
  store <4 x float> %wide.load174, ptr %i.fd, align 4, !tbaa !12
  %index.next175 = add nuw i64 %index173, 4       ; 2 uses
  %i.fe = icmp eq i64 %index.next175, %n.vec171
  br i1 %i.fe, label %vec.epilog.middle.block176, label %vec.epilog.vector.body172, !llvm.loop !22

vec.epilog.middle.block176:                       ; preds = %vec.epilog.vector.body172
  br i1 %cmp.n177, label %._crit_edge95.us.us, label %vec.epilog.scalar.ph167.preheader

vec.epilog.scalar.ph167.preheader:                ; preds = %iter.check167, %iter.check165, %vec.epilog.iter.check166, %vec.epilog.middle.block176
  %.07792.us.us.ph = phi i64 [ 0, %iter.check167 ], [ 0, %iter.check165 ], [ %n.vec155, %vec.epilog.iter.check166 ], [ %n.vec171, %vec.epilog.middle.block176 ] ; 4 uses
  %i.ff = sub i64 %3, %.07792.us.us.ph
  %xtraiter222 = and i64 %i.ff, 7                 ; 2 uses
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  br i1 %lcmp.mod223.not, label %vec.epilog.scalar.ph167.prol.loopexit, label %vec.epilog.scalar.ph167.prol

vec.epilog.scalar.ph167.prol:                     ; preds = %vec.epilog.scalar.ph167.preheader, %vec.epilog.scalar.ph167.prol
  %.07792.us.us.prol = phi i64 [ %i.fj, %vec.epilog.scalar.ph167.prol ], [ %.07792.us.us.ph, %vec.epilog.scalar.ph167.preheader ] ; 3 uses
  %prol.iter224 = phi i64 [ %prol.iter224.next, %vec.epilog.scalar.ph167.prol ], [ 0, %vec.epilog.scalar.ph167.preheader ]
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.07792.us.us.prol
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !12
  %i.fi = mul i64 %.07792.us.us.prol, %2
  %gep91.us.us.prol = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.fi
  store float %i.fh, ptr %gep91.us.us.prol, align 4, !tbaa !12
  %i.fj = add nuw i64 %.07792.us.us.prol, 1       ; 2 uses
  %prol.iter224.next = add i64 %prol.iter224, 1   ; 2 uses
  %prol.iter224.cmp.not = icmp eq i64 %prol.iter224.next, %xtraiter222
  br i1 %prol.iter224.cmp.not, label %vec.epilog.scalar.ph167.prol.loopexit, label %vec.epilog.scalar.ph167.prol, !llvm.loop !23

vec.epilog.scalar.ph167.prol.loopexit:            ; preds = %vec.epilog.scalar.ph167.prol, %vec.epilog.scalar.ph167.preheader
  %.07792.us.us.unr = phi i64 [ %.07792.us.us.ph, %vec.epilog.scalar.ph167.preheader ], [ %i.fj, %vec.epilog.scalar.ph167.prol ]
  %i.fk = sub i64 %.07792.us.us.ph, %3
  %i.fl = icmp ugt i64 %i.fk, -8
  br i1 %i.fl, label %._crit_edge95.us.us, label %vec.epilog.scalar.ph167

vec.epilog.scalar.ph167:                          ; preds = %vec.epilog.scalar.ph167.prol.loopexit, %vec.epilog.scalar.ph167
  %.07792.us.us = phi i64 [ %i.gr, %vec.epilog.scalar.ph167 ], [ %.07792.us.us.unr, %vec.epilog.scalar.ph167.prol.loopexit ] ; 10 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.07792.us.us
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !12
  %i.fo = mul i64 %.07792.us.us, %2
  %gep91.us.us = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.fo
  store float %i.fn, ptr %gep91.us.us, align 4, !tbaa !12
  %i.fp = add nuw i64 %.07792.us.us, 1            ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.fp
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !12
  %i.fs = mul i64 %i.fp, %2
  %gep91.us.us.1 = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.fs
  store float %i.fr, ptr %gep91.us.us.1, align 4, !tbaa !12
  %i.ft = add nuw i64 %.07792.us.us, 2            ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ft
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !12
  %i.fw = mul i64 %i.ft, %2
  %gep91.us.us.2 = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.fw
  store float %i.fv, ptr %gep91.us.us.2, align 4, !tbaa !12
  %i.fx = add nuw i64 %.07792.us.us, 3            ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.fx
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !12
  %i.ga = mul i64 %i.fx, %2
  %gep91.us.us.3 = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.ga
  store float %i.fz, ptr %gep91.us.us.3, align 4, !tbaa !12
  %i.gb = add nuw i64 %.07792.us.us, 4            ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.gb
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !12
  %i.ge = mul i64 %i.gb, %2
  %gep91.us.us.4 = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.ge
  store float %i.gd, ptr %gep91.us.us.4, align 4, !tbaa !12
  %i.gf = add nuw i64 %.07792.us.us, 5            ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.gf
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !12
  %i.gi = mul i64 %i.gf, %2
  %gep91.us.us.5 = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.gi
  store float %i.gh, ptr %gep91.us.us.5, align 4, !tbaa !12
  %i.gj = add nuw i64 %.07792.us.us, 6            ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.gj
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !12
  %i.gm = mul i64 %i.gj, %2
  %gep91.us.us.6 = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.gm
  store float %i.gl, ptr %gep91.us.us.6, align 4, !tbaa !12
  %i.gn = add nuw i64 %.07792.us.us, 7            ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.gn
  %i.gp = load float, ptr %i.go, align 4, !tbaa !12
  %i.gq = mul i64 %i.gn, %2
  %gep91.us.us.7 = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.gq
  store float %i.gp, ptr %gep91.us.us.7, align 4, !tbaa !12
  %i.gr = add nuw i64 %.07792.us.us, 8            ; 2 uses
  %exitcond120.not.7 = icmp eq i64 %i.gr, %3
  br i1 %exitcond120.not.7, label %._crit_edge95.us.us, label %vec.epilog.scalar.ph167, !llvm.loop !24

._crit_edge95.us.us:                              ; preds = %vec.epilog.scalar.ph167.prol.loopexit, %vec.epilog.scalar.ph167, %vec.epilog.middle.block176, %middle.block163
  %i.gs = add nuw i64 %.07996.us.us, 1            ; 2 uses
  %exitcond121.not = icmp eq i64 %i.gs, %2
  br i1 %exitcond121.not, label %.lr.ph106.us.preheader, label %iter.check201

.preheader85:                                     ; preds = %.preheader85.lr.ph, %.preheader85
  %.07996 = phi i64 [ %i.gt, %.preheader85 ], [ 0, %.preheader85.lr.ph ]
  tail call fastcc void @_image_distance_transform(ptr noundef %i.ci, ptr noundef %i.cl, ptr noundef %i.cm, ptr noundef %i.co, i32 noundef %i.cp)
  %i.gt = add nuw i64 %.07996, 1                  ; 2 uses
  %exitcond122.not = icmp eq i64 %i.gt, %2
  br i1 %exitcond122.not, label %._crit_edge110, label %.preheader85

.preheader:                                       ; preds = %.loopexit
  br i1 %.not115, label %._crit_edge110, label %.lr.ph109.split

.lr.ph106.us.preheader:                           ; preds = %._crit_edge95.us.us
  %i.gu = trunc i64 %2 to i32
  %i.gv = add i64 %2, -1
  %xtraiter225 = and i64 %2, 3                    ; 3 uses
  %i.gw = icmp ult i64 %i.gv, 3
  %unroll_iter = and i64 %2, -4
  %lcmp.mod226.not = icmp eq i64 %xtraiter225, 0
  %lcmp.mod228 = icmp ne i64 %xtraiter225, 0
  br label %.lr.ph106.us

.lr.ph106.us:                                     ; preds = %.lr.ph106.us.preheader, %._crit_edge.us112
  %.076108.us = phi i64 [ %i.id, %._crit_edge.us112 ], [ 0, %.lr.ph106.us.preheader ] ; 2 uses
  %.080107.us = phi float [ %.lcssa, %._crit_edge.us112 ], [ 0.000000e+00, %.lr.ph106.us.preheader ] ; 2 uses
  %i.gx = mul i64 %.076108.us, %2
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gx ; 6 uses
  tail call fastcc void @_image_distance_transform(ptr noundef %i.gy, ptr noundef %i.cl, ptr noundef nonnull %i.cm, ptr noundef %i.co, i32 noundef %i.gu)
  br i1 %i.gw, label %.epil.preheader, label %.lr.ph106.us.new

.lr.ph106.us.new:                                 ; preds = %.lr.ph106.us, %.lr.ph106.us.new
  %.075105.us = phi i64 [ %i.hw, %.lr.ph106.us.new ], [ 0, %.lr.ph106.us ] ; 6 uses
  %.1104.us = phi float [ %i.hv, %.lr.ph106.us.new ], [ %.080107.us, %.lr.ph106.us ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph106.us.new ], [ 0, %.lr.ph106.us ]
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.075105.us
  %i.ha = load float, ptr %i.gz, align 16, !tbaa !12
  %i.hb = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ha) ; 2 uses
  %i.hc = getelementptr [4 x i8], ptr %i.gy, i64 %.075105.us
  store float %i.hb, ptr %i.hc, align 4, !tbaa !12
  %i.hd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.1104.us, float %i.hb)
  %i.he = or disjoint i64 %.075105.us, 1          ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.he
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !12
  %i.hh = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.hg) ; 2 uses
  %i.hi = getelementptr [4 x i8], ptr %i.gy, i64 %i.he
  store float %i.hh, ptr %i.hi, align 4, !tbaa !12
  %i.hj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hd, float %i.hh)
  %i.hk = or disjoint i64 %.075105.us, 2          ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.hk
  %i.hm = load float, ptr %i.hl, align 8, !tbaa !12
  %i.hn = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.hm) ; 2 uses
  %i.ho = getelementptr [4 x i8], ptr %i.gy, i64 %i.hk
  store float %i.hn, ptr %i.ho, align 4, !tbaa !12
  %i.hp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hj, float %i.hn)
  %i.hq = or disjoint i64 %.075105.us, 3          ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.hq
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !12
  %i.ht = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.hs) ; 2 uses
  %i.hu = getelementptr [4 x i8], ptr %i.gy, i64 %i.hq
  store float %i.ht, ptr %i.hu, align 4, !tbaa !12
  %i.hv = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hp, float %i.ht) ; 3 uses
  %i.hw = add nuw i64 %.075105.us, 4              ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us112.unr-lcssa, label %.lr.ph106.us.new

._crit_edge.us112.unr-lcssa:                      ; preds = %.lr.ph106.us.new
  br i1 %lcmp.mod226.not, label %._crit_edge.us112, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us112.unr-lcssa, %.lr.ph106.us
  %.075105.us.epil.init = phi i64 [ 0, %.lr.ph106.us ], [ %i.hw, %._crit_edge.us112.unr-lcssa ]
  %.1104.us.epil.init = phi float [ %.080107.us, %.lr.ph106.us ], [ %i.hv, %._crit_edge.us112.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod228)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.075105.us.epil = phi i64 [ %.075105.us.epil.init, %.epil.preheader ], [ %i.ic, %bb.c ] ; 3 uses
  %.1104.us.epil = phi float [ %.1104.us.epil.init, %.epil.preheader ], [ %i.ib, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.075105.us.epil
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !12
  %i.hz = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.hy) ; 2 uses
  %i.ia = getelementptr [4 x i8], ptr %i.gy, i64 %.075105.us.epil
  store float %i.hz, ptr %i.ia, align 4, !tbaa !12
  %i.ib = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.1104.us.epil, float %i.hz) ; 2 uses
  %i.ic = add nuw i64 %.075105.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter225
  br i1 %epil.iter.cmp.not, label %._crit_edge.us112, label %bb.c, !llvm.loop !25

._crit_edge.us112:                                ; preds = %bb.c, %._crit_edge.us112.unr-lcssa
  %.lcssa = phi float [ %i.hv, %._crit_edge.us112.unr-lcssa ], [ %i.ib, %bb.c ] ; 2 uses
  %i.id = add nuw i64 %.076108.us, 1              ; 2 uses
  %exitcond124.not = icmp eq i64 %i.id, %3
  br i1 %exitcond124.not, label %._crit_edge110, label %.lr.ph106.us

._crit_edge110:                                   ; preds = %._crit_edge.us112, %.preheader85, %.lr.ph109.split, %.preheader
  %.080.lcssa = phi float [ 0.000000e+00, %.preheader ], [ 0.000000e+00, %.lr.ph109.split ], [ 0.000000e+00, %.preheader85 ], [ %.lcssa, %._crit_edge.us112 ]
  tail call void @free(ptr noundef %i.ci) #6
  tail call void @free(ptr noundef %i.cm) #6
  tail call void @free(ptr noundef %i.cl) #6
  tail call void @free(ptr noundef %i.co) #6
  br label %bb.d

.lr.ph109.split:                                  ; preds = %.preheader, %.lr.ph109.split
  %.076108 = phi i64 [ %i.ie, %.lr.ph109.split ], [ 0, %.preheader ]
  tail call fastcc void @_image_distance_transform(ptr noundef %1, ptr noundef %i.cl, ptr noundef %i.cm, ptr noundef %i.co, i32 noundef 0)
  %i.ie = add nuw i64 %.076108, 1                 ; 2 uses
  %exitcond125.not = icmp eq i64 %i.ie, %3
  br i1 %exitcond125.not, label %._crit_edge110, label %.lr.ph109.split

bb.d:                                             ; preds = %._crit_edge110, %bb.b
  %.0 = phi nsz float [ 0.000000e+00, %bb.b ], [ %.080.lcssa, %._crit_edge110 ]
  ret float %.0
}

declare void @dt_iop_image_fill(ptr noundef, float noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_image_distance_transform(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 4)) %3, i32 noundef %4) unnamed_addr #2 {
bb.a:
  store i32 0, ptr %3, align 4, !tbaa !30
  store <2 x float> <float -1.000000e+20, float 1.000000e+20>, ptr %1, align 4, !tbaa !12
  %.not.not70 = icmp sgt i32 %4, 1
  br i1 %.not.not70, label %.lr.ph74.preheader, label %.preheader61

.lr.ph74.preheader:                               ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.lr.ph74

.preheader61:                                     ; preds = %._crit_edge, %bb.a
  %.not.not6075 = icmp sgt i32 %4, 0
  br i1 %.not.not6075, label %.preheader.preheader, label %._crit_edge78

.preheader.preheader:                             ; preds = %.preheader61
  %wide.trip.count93 = zext nneg i32 %4 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count93, 1
  %i.a = icmp eq i32 %4, 1
  br i1 %i.a, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %wide.trip.count93, 2147483646
  br label %.preheader

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %._crit_edge
  %i.b = phi i32 [ 0, %.lr.ph74.preheader ], [ %i.e, %._crit_edge ] ; 3 uses
  %indvars.iv84 = phi i64 [ 1, %.lr.ph74.preheader ], [ %indvars.iv.next85, %._crit_edge ] ; 3 uses
  %.05871 = phi i32 [ 0, %.lr.ph74.preheader ], [ %i.ao, %._crit_edge ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv84
  %i.d = load float, ptr %i.c, align 4, !tbaa !12
  %i.e = trunc nuw nsw i64 %indvars.iv84 to i32   ; 5 uses
  %i.f = uitofp nsz nneg i32 %i.e to float        ; 2 uses
  %i.g = fmul reassoc nnan nsz arcp contract afn float %i.f, %i.f
  %i.h = fadd reassoc nsz arcp contract afn float %i.g, %i.d ; 2 uses
  %i.i = sext i32 %.05871 to i64                  ; 3 uses
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %0, i64 %i.j
  %i.l = load float, ptr %i.k, align 4, !tbaa !12
  %i.m = sitofp reassoc nsz arcp contract afn i32 %i.b to float ; 2 uses
  %i.n = fmul reassoc nnan nsz arcp contract afn float %i.m, %i.m
  %i.o = fadd reassoc nsz arcp contract afn float %i.n, %i.l
  %.05665 = fsub reassoc nsz arcp contract afn float %i.h, %i.o ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %1, i64 %i.i
  %i.q = load float, ptr %i.p, align 4, !tbaa !12
  %i.r = sub nsw i32 %i.e, %i.b
  %i.s = shl nsw i32 %i.r, 1
  %i.t = sitofp reassoc nsz arcp contract afn i32 %i.s to float ; 2 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.q, %i.t
  %i.v = fcmp reassoc nsz arcp contract afn ugt float %.05665, %i.u
  br i1 %i.v, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph74, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.i, %.lr.ph74 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 5 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.x = load i32, ptr %i.w, align 4, !tbaa !30   ; 3 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %i.y
  %i.aa = load float, ptr %i.z, align 4, !tbaa !12
  %i.ab = sitofp reassoc nsz arcp contract afn i32 %i.x to float ; 2 uses
  %i.ac = fmul reassoc nnan nsz arcp contract afn float %i.ab, %i.ab
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ac, %i.aa
  %.056 = fsub reassoc nsz arcp contract afn float %i.h, %i.ad ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.af = load float, ptr %i.ae, align 4, !tbaa !12
  %i.ag = sub nsw i32 %i.e, %i.x
  %i.ah = shl nsw i32 %i.ag, 1
  %i.ai = sitofp reassoc nsz arcp contract afn i32 %i.ah to float ; 2 uses
  %i.aj = fmul reassoc nsz arcp contract afn float %i.af, %i.ai
  %i.ak = fcmp reassoc nsz arcp contract afn ugt float %.056, %i.aj
  br i1 %i.ak, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.al = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph74
  %.lcssa63 = phi i64 [ %i.i, %.lr.ph74 ], [ %indvars.iv.next, %._crit_edge.loopexit ]
  %.1.lcssa = phi i32 [ %.05871, %.lr.ph74 ], [ %i.al, %._crit_edge.loopexit ]
end_hunk_0
