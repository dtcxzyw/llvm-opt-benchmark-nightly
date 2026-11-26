Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/curve_tools?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@monotone_hermite_set:bb.a
  br i1 %min.iters.check133, label %vec.epilog.ph, label %vector.ph134

vector.ph134:                                     ; preds = %vector.main.loop.iter.check
  %i.ay = and i64 %i.ax, 24
  %n.vec135 = and i64 %i.ax, -32                  ; 4 uses
  %i.az = or disjoint i64 %n.vec135, 1
  br label %vector.body136

vector.body136:                                   ; preds = %vector.ph134, %vector.body136
  %index137 = phi i64 [ 0, %vector.ph134 ], [ %index.next146, %vector.body136 ] ; 2 uses
  %i.ba = or disjoint i64 %index137, 1            ; 2 uses
  %i.bb = getelementptr [4 x i8], ptr %i.i, i64 %i.ba ; 8 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 -4
  %i.bd = getelementptr i8, ptr %i.bb, i64 28
  %i.be = getelementptr i8, ptr %i.bb, i64 60
  %i.bf = getelementptr i8, ptr %i.bb, i64 92
  %wide.load138 = load <8 x float>, ptr %i.bc, align 4, !tbaa !12
  %wide.load139 = load <8 x float>, ptr %i.bd, align 4, !tbaa !12
  %wide.load140 = load <8 x float>, ptr %i.be, align 4, !tbaa !12
  %wide.load141 = load <8 x float>, ptr %i.bf, align 4, !tbaa !12
  %i.bg = getelementptr i8, ptr %i.bb, i64 32
  %i.bh = getelementptr i8, ptr %i.bb, i64 64
  %i.bi = getelementptr i8, ptr %i.bb, i64 96
  %wide.load142 = load <8 x float>, ptr %i.bb, align 4, !tbaa !12
  %wide.load143 = load <8 x float>, ptr %i.bg, align 4, !tbaa !12
  %wide.load144 = load <8 x float>, ptr %i.bh, align 4, !tbaa !12
  %wide.load145 = load <8 x float>, ptr %i.bi, align 4, !tbaa !12
  %i.bj = fadd reassoc nsz arcp contract afn <8 x float> %wide.load142, %wide.load138
  %i.bk = fadd reassoc nsz arcp contract afn <8 x float> %wide.load143, %wide.load139
  %i.bl = fadd reassoc nsz arcp contract afn <8 x float> %wide.load144, %wide.load140
  %i.bm = fadd reassoc nsz arcp contract afn <8 x float> %wide.load145, %wide.load141
  %i.bn = fmul reassoc nsz arcp contract afn <8 x float> %i.bj, splat (float 5.000000e-01)
  %i.bo = fmul reassoc nsz arcp contract afn <8 x float> %i.bk, splat (float 5.000000e-01)
  %i.bp = fmul reassoc nsz arcp contract afn <8 x float> %i.bl, splat (float 5.000000e-01)
  %i.bq = fmul reassoc nsz arcp contract afn <8 x float> %i.bm, splat (float 5.000000e-01)
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ba ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  store <8 x float> %i.bn, ptr %i.br, align 4, !tbaa !12
  store <8 x float> %i.bo, ptr %i.bs, align 4, !tbaa !12
  store <8 x float> %i.bp, ptr %i.bt, align 4, !tbaa !12
  store <8 x float> %i.bq, ptr %i.bu, align 4, !tbaa !12
  %index.next146 = add nuw i64 %index137, 32      ; 2 uses
  %i.bv = icmp eq i64 %index.next146, %n.vec135
  br i1 %i.bv, label %middle.block147, label %vector.body136, !llvm.loop !24

middle.block147:                                  ; preds = %vector.body136
  %cmp.n148 = icmp eq i64 %i.ax, %n.vec135
  br i1 %cmp.n148, label %.lr.ph95.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block147
  %min.epilog.iters.check = icmp eq i64 %i.ay, 0
  br i1 %min.epilog.iters.check, label %.lr.ph93.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec135, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec149 = and i64 %i.ax, -8                   ; 3 uses
  %i.bw = or disjoint i64 %n.vec149, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index150 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next153, %vec.epilog.vector.body ] ; 2 uses
  %i.bx = or disjoint i64 %index150, 1            ; 2 uses
  %i.by = getelementptr [4 x i8], ptr %i.i, i64 %i.bx ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -4
  %wide.load151 = load <8 x float>, ptr %i.bz, align 4, !tbaa !12
  %wide.load152 = load <8 x float>, ptr %i.by, align 4, !tbaa !12
  %i.ca = fadd reassoc nsz arcp contract afn <8 x float> %wide.load152, %wide.load151
  %i.cb = fmul reassoc nsz arcp contract afn <8 x float> %i.ca, splat (float 5.000000e-01)
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bx
  store <8 x float> %i.cb, ptr %i.cc, align 4, !tbaa !12
  %index.next153 = add nuw i64 %index150, 8       ; 2 uses
  %i.cd = icmp eq i64 %index.next153, %n.vec149
  br i1 %i.cd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !25

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n154 = icmp eq i64 %i.ax, %n.vec149
  br i1 %cmp.n154, label %.lr.ph95.preheader, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv103.ph = phi i64 [ 1, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bw, %vec.epilog.middle.block ]
  br label %.lr.ph93

.lr.ph:                                           ; preds = %.lr.ph.preheader161, %.lr.ph
  %i.ce = phi float [ %i.ck, %.lr.ph ], [ %.ph, %.lr.ph.preheader161 ]
  %i.cf = phi float [ %i.ch, %.lr.ph ], [ %.ph162, %.lr.ph.preheader161 ]
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %.lr.ph ], [ %indvars.iv98.ph, %.lr.ph.preheader161 ] ; 2 uses
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 4 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next99
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !12 ; 2 uses
  %i.ci = fsub reassoc nsz arcp contract afn float %i.ch, %i.cf
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next99
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !12 ; 2 uses
  %i.cl = fsub reassoc nsz arcp contract afn float %i.ck, %i.ce
  %i.cm = fdiv reassoc nsz arcp contract afn float %i.ci, %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv98
  store float %i.cm, ptr %i.cn, align 4, !tbaa !12
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count
  br i1 %exitcond102.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %.lr.ph93
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %.lr.ph93 ], [ %indvars.iv103.ph, %.lr.ph93.preheader ] ; 3 uses
  %i.co = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv103 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 -4
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !12
  %i.cr = load float, ptr %i.co, align 4, !tbaa !12
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cr, %i.cq
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, 5.000000e-01
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv103
  store float %i.ct, ptr %i.cu, align 4, !tbaa !12
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %.lr.ph95.preheader, label %.lr.ph93, !llvm.loop !27

._crit_edge96:                                    ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.i) #14
  br label %.loopexit

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %bb.f
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %bb.f ], [ 0, %.lr.ph95.preheader ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv108
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !12 ; 3 uses
  %i.cx = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cw)
  %i.cy = fcmp reassoc nsz arcp contract afn olt float %i.cx, f0x01000000
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv108 ; 3 uses
  br i1 %i.cy, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph95
  store <2 x float> zeroinitializer, ptr %i.cz, align 4, !tbaa !12
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph95
  %i.da = load <2 x float>, ptr %i.cz, align 4, !tbaa !12
  %i.db = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fdiv reassoc nsz arcp contract afn <2 x float> %i.da, %i.dc ; 5 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x float> %i.dd, %i.dd
  %foldExtExtBinop157 = fmul reassoc nsz arcp contract afn <2 x float> %i.dd, %i.dd
  %shift = shufflevector <2 x float> %foldExtExtBinop157, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop159 = fadd reassoc nsz arcp contract afn <2 x float> %shift, %foldExtExtBinop
  %i.de = extractelement <2 x float> %foldExtExtBinop159, i64 0 ; 2 uses
  %i.df = fcmp reassoc nsz arcp contract afn ogt float %i.de, 9.000000e+00
  br i1 %i.df, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dg = fmul reassoc nsz arcp contract afn float %i.cw, 3.000000e+00
  %i.dh = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.de)
  %i.di = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = fmul reassoc nsz arcp contract afn <2 x float> %i.dj, %i.dd
  %i.dl = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fdiv reassoc nsz arcp contract afn <2 x float> %i.dk, %i.dm
  store <2 x float> %i.dn, ptr %i.cz, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %i.h
  br i1 %exitcond112.not, label %._crit_edge96, label %.lr.ph95

.loopexit:                                        ; preds = %.lr.ph119, %bb.a, %._crit_edge96
  %.1 = phi ptr [ null, %bb.a ], [ %i.l, %._crit_edge96 ], [ null, %.lr.ph119 ]
  ret ptr %.1
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @d3_np_fs(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = add i32 %0, -21
  %or.cond = icmp ult i32 %i.a, -20
  br i1 %or.cond, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 4 uses
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !12
  %i.e = fcmp reassoc nsz arcp contract afn oeq float %i.d, 0.000000e+00
  br i1 %i.e, label %.loopexit, label %bb.b

.preheader:                                       ; preds = %bb.b
  %i.f = tail call noalias ptr @calloc(i64 noundef %wide.trip.count, i64 noundef 4) #13 ; 16 uses
  %i.g = shl nuw nsw i64 %wide.trip.count, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.f, ptr align 4 %2, i64 %i.g, i1 false), !tbaa !12
  %i.h = icmp sgt i32 %0, 1
  br i1 %i.h, label %.lr.ph72.preheader, label %._crit_edge73

.lr.ph72.preheader:                               ; preds = %.preheader
  %.pre = load float, ptr %i.f, align 4, !tbaa !12 ; 2 uses
  %i.i = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.i, 1
  %i.j = icmp eq i32 %0, 2
  br i1 %i.j, label %.lr.ph72.epil.preheader, label %.lr.ph72.preheader.new

.lr.ph72.preheader.new:                           ; preds = %.lr.ph72.preheader
  %unroll_iter = and i64 %i.i, -2
  br label %.lr.ph72

._crit_edge73:                                    ; preds = %.preheader
  %i.k = add nsw i32 %0, -1                       ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.l ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !12
  %i.o = mul nuw nsw i32 %i.k, 3
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !12
  %i.t = fdiv reassoc nsz arcp contract afn float %i.n, %i.s
  store float %i.t, ptr %i.m, align 4, !tbaa !12
  br label %.loopexit

.lr.ph76.preheader.unr-lcssa:                     ; preds = %.lr.ph72
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph76.preheader, label %.lr.ph72.epil.preheader

.lr.ph72.epil.preheader:                          ; preds = %.lr.ph76.preheader.unr-lcssa, %.lr.ph72.preheader
  %.epil.init = phi float [ %.pre, %.lr.ph72.preheader ], [ %i.cs, %.lr.ph76.preheader.unr-lcssa ]
  %indvars.iv82.epil.init = phi i64 [ 1, %.lr.ph72.preheader ], [ %indvars.iv.next83.1, %.lr.ph76.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod99 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod99)
  %.idx92.epil.a = mul i64 %indvars.iv82.epil.init, 12
  %i.u = getelementptr i8, ptr %1, i64 %.idx92.epil.a ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -4
  %i.w = load float, ptr %i.v, align 4, !tbaa !12
  %i.x = getelementptr i8, ptr %i.u, i64 -8
  %i.y = load float, ptr %i.x, align 4, !tbaa !12
  %i.z = fdiv reassoc nsz arcp contract afn float %i.w, %i.y ; 2 uses
  %.idx93.epil = mul nuw nsw i64 %indvars.iv82.epil.init, 12
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.idx93.epil ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !12
  %i.ad = load float, ptr %i.aa, align 4, !tbaa !12
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, %i.z
  %i.af = fsub reassoc nsz arcp contract afn float %i.ac, %i.ae
  store float %i.af, ptr %i.ab, align 4, !tbaa !12
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv82.epil.init ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !12
  %i.ai = fmul reassoc nsz arcp contract afn float %.epil.init, %i.z
  %i.aj = fsub reassoc nsz arcp contract afn float %i.ah, %i.ai
  store float %i.aj, ptr %i.ag, align 4, !tbaa !12
  br label %.lr.ph76.preheader

.lr.ph76.preheader:                               ; preds = %.lr.ph76.preheader.unr-lcssa, %.lr.ph72.epil.preheader
  %i.ak = add nsw i32 %0, -1                      ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.al ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !12
  %i.ao = mul nuw nsw i32 %i.ak, 3
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !12
  %i.at = fdiv reassoc nsz arcp contract afn float %i.an, %i.as
  store float %i.at, ptr %i.am, align 4, !tbaa !12
  %i.au = add nsw i32 %0, -2                      ; 2 uses
  %i.av = zext i32 %i.au to i64                   ; 4 uses
  %i.aw = shl nuw nsw i64 %i.av, 2
  %i.ax = getelementptr i8, ptr %i.f, i64 %i.aw
  %scevgep = getelementptr i8, ptr %i.ax, i64 4
  %load_initial = load float, ptr %scevgep, align 4 ; 2 uses
  %i.ay = add nuw nsw i64 %i.av, 1
  %xtraiter100 = and i64 %i.ay, 3                 ; 2 uses
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.lr.ph76.prol.loopexit, label %.lr.ph76.prol

.lr.ph76.prol:                                    ; preds = %.lr.ph76.preheader, %.lr.ph76.prol
  %store_forwarded.prol = phi float [ %i.bk, %.lr.ph76.prol ], [ %load_initial, %.lr.ph76.preheader ]
  %indvars.iv87.prol = phi i64 [ %indvars.iv.next88.prol, %.lr.ph76.prol ], [ %i.av, %.lr.ph76.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph76.prol ], [ 0, %.lr.ph76.preheader ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv87.prol ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !12
  %i.bb = mul nuw i64 %indvars.iv87.prol, 12
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.be = load float, ptr %i.bd, align 4, !tbaa !12
  %i.bf = fmul reassoc nsz arcp contract afn float %store_forwarded.prol, %i.be
  %i.bg = fsub reassoc nsz arcp contract afn float %i.ba, %i.bf
  %.idx95.prol = mul nuw nsw i64 %indvars.iv87.prol, 12
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %.idx95.prol
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !12
  %i.bk = fdiv reassoc nsz arcp contract afn float %i.bg, %i.bj ; 3 uses
  store float %i.bk, ptr %i.az, align 4, !tbaa !12
  %indvars.iv.next88.prol = add nsw i64 %indvars.iv87.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter100
  br i1 %prol.iter.cmp.not, label %.lr.ph76.prol.loopexit, label %.lr.ph76.prol, !llvm.loop !29

.lr.ph76.prol.loopexit:                           ; preds = %.lr.ph76.prol, %.lr.ph76.preheader
  %store_forwarded.unr = phi float [ %load_initial, %.lr.ph76.preheader ], [ %i.bk, %.lr.ph76.prol ]
  %indvars.iv87.unr = phi i64 [ %i.av, %.lr.ph76.preheader ], [ %indvars.iv.next88.prol, %.lr.ph76.prol ]
  %i.bl = icmp ult i32 %i.au, 3
  br i1 %i.bl, label %.loopexit, label %.lr.ph76

.lr.ph72:                                         ; preds = %.lr.ph72, %.lr.ph72.preheader.new
  %i.bm = phi float [ %.pre, %.lr.ph72.preheader.new ], [ %i.cs, %.lr.ph72 ]
  %indvars.iv82 = phi i64 [ 1, %.lr.ph72.preheader.new ], [ %indvars.iv.next83.1, %.lr.ph72 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph72.preheader.new ], [ %niter.next.1, %.lr.ph72 ]
  %.idx92.a = mul i64 %indvars.iv82, 12
  %i.bn = getelementptr i8, ptr %1, i64 %.idx92.a ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 -4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !12
  %i.bq = getelementptr i8, ptr %i.bn, i64 -8
  %i.br = load float, ptr %i.bq, align 4, !tbaa !12
  %i.bs = fdiv reassoc nsz arcp contract afn float %i.bp, %i.br ; 2 uses
  %.idx93 = mul nuw nsw i64 %indvars.iv82, 12
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %.idx93 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !12
  %i.bw = load float, ptr %i.bt, align 4, !tbaa !12
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, %i.bs
  %i.by = fsub reassoc nsz arcp contract afn float %i.bv, %i.bx
  store float %i.by, ptr %i.bu, align 4, !tbaa !12
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv82 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !12
  %i.cb = fmul reassoc nsz arcp contract afn float %i.bm, %i.bs
  %i.cc = fsub reassoc nsz arcp contract afn float %i.ca, %i.cb ; 2 uses
  store float %i.cc, ptr %i.bz, align 4, !tbaa !12
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 3 uses
  %.idx92.1.a = mul i64 %indvars.iv.next83, 12
  %i.cd = getelementptr i8, ptr %1, i64 %.idx92.1.a ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 -4
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !12
  %i.cg = getelementptr i8, ptr %i.cd, i64 -8
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !12
  %i.ci = fdiv reassoc nsz arcp contract afn float %i.cf, %i.ch ; 2 uses
  %.idx93.1 = mul nuw nsw i64 %indvars.iv.next83, 12
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %.idx93.1 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !12
  %i.cm = load float, ptr %i.cj, align 4, !tbaa !12
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cm, %i.ci
  %i.co = fsub reassoc nsz arcp contract afn float %i.cl, %i.cn
  store float %i.co, ptr %i.ck, align 4, !tbaa !12
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next83 ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !12
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cc, %i.ci
  %i.cs = fsub reassoc nsz arcp contract afn float %i.cq, %i.cr ; 3 uses
  store float %i.cs, ptr %i.cp, align 4, !tbaa !12
  %indvars.iv.next83.1 = add nuw nsw i64 %indvars.iv82, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph76.preheader.unr-lcssa, label %.lr.ph72

.lr.ph76:                                         ; preds = %.lr.ph76.prol.loopexit, %.lr.ph76
  %store_forwarded = phi float [ %i.eo, %.lr.ph76 ], [ %store_forwarded.unr, %.lr.ph76.prol.loopexit ]
  %indvars.iv87 = phi i64 [ %indvars.iv.next88.3, %.lr.ph76 ], [ %indvars.iv87.unr, %.lr.ph76.prol.loopexit ] ; 7 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv87 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !12
  %i.cv = mul nuw i64 %indvars.iv87, 12
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !12
  %i.cz = fmul reassoc nsz arcp contract afn float %store_forwarded, %i.cy
  %i.da = fsub reassoc nsz arcp contract afn float %i.cu, %i.cz
  %.idx95 = mul nuw nsw i64 %indvars.iv87, 12
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 %.idx95
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !12
  %i.de = fdiv reassoc nsz arcp contract afn float %i.da, %i.dd ; 2 uses
  store float %i.de, ptr %i.ct, align 4, !tbaa !12
  %indvars.iv.next88 = add nsw i64 %indvars.iv87, -1 ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next88 ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !12
  %i.dh = mul nuw i64 %indvars.iv.next88, 12
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !12
  %i.dl = fmul reassoc nsz arcp contract afn float %i.de, %i.dk
  %i.dm = fsub reassoc nsz arcp contract afn float %i.dg, %i.dl
  %.idx95.1 = mul nuw nsw i64 %indvars.iv.next88, 12
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 %.idx95.1
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dp = load float, ptr %i.do, align 4, !tbaa !12
  %i.dq = fdiv reassoc nsz arcp contract afn float %i.dm, %i.dp ; 2 uses
  store float %i.dq, ptr %i.df, align 4, !tbaa !12
  %indvars.iv.next88.1 = add nsw i64 %indvars.iv87, -2 ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next88.1 ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !12
  %i.dt = mul nuw i64 %indvars.iv.next88.1, 12
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !12
  %i.dx = fmul reassoc nsz arcp contract afn float %i.dq, %i.dw
  %i.dy = fsub reassoc nsz arcp contract afn float %i.ds, %i.dx
  %.idx95.2 = mul nuw nsw i64 %indvars.iv.next88.1, 12
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 %.idx95.2
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !12
  %i.ec = fdiv reassoc nsz arcp contract afn float %i.dy, %i.eb ; 2 uses
  store float %i.ec, ptr %i.dr, align 4, !tbaa !12
  %indvars.iv.next88.2 = add nsw i64 %indvars.iv87, -3 ; 4 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next88.2 ; 2 uses
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !12
  %i.ef = mul nuw i64 %indvars.iv.next88.2, 12
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !12
  %i.ej = fmul reassoc nsz arcp contract afn float %i.ec, %i.ei
  %i.ek = fsub reassoc nsz arcp contract afn float %i.ee, %i.ej
  %.idx95.3 = mul nuw nsw i64 %indvars.iv.next88.2, 12
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 %.idx95.3
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.en = load float, ptr %i.em, align 4, !tbaa !12
  %i.eo = fdiv reassoc nsz arcp contract afn float %i.ek, %i.en ; 2 uses
  store float %i.eo, ptr %i.ed, align 4, !tbaa !12
  %indvars.iv.next88.3 = add nsw i64 %indvars.iv87, -4
  %.not.3 = icmp eq i64 %indvars.iv.next88.2, 0
  br i1 %.not.3, label %.loopexit, label %.lr.ph76

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph76.prol.loopexit, %.lr.ph76, %._crit_edge73, %bb.a
  %.1 = phi ptr [ %i.f, %._crit_edge73 ], [ null, %bb.a ], [ %i.f, %.lr.ph76.prol.loopexit ], [ %i.f, %.lr.ph76 ], [ null, %.lr.ph ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define ptr @interpolate_set(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = zext i32 %3 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @spline_set, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = tail call ptr %i.c(i32 noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define float @interpolate_val(i32 noundef %0, ptr noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #9 {
bb.a:
  %i.a = zext i32 %5 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @spline_val, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = tail call reassoc nsz arcp contract afn float %i.c(i32 noundef %0, ptr noundef %1, float noundef %2, ptr noundef %3, ptr noundef %4) #14
  ret float %i.d
}

; Function Attrs: nounwind uwtable
define range(i32 0, 101) i32 @CurveDataSample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca [20 x float], align 16            ; 11 uses
  %i.b = alloca [20 x float], align 16            ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.b, i8 0, i64 80, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load <2 x float>, ptr %i.c, align 4, !tbaa !12 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !12 ; 7 uses
  %i.g = extractelement <2 x float> %i.f, i64 0   ; 2 uses
  %i.h = shufflevector <2 x float> %i.d, <2 x float> %i.f, <2 x i32> <i32 1, i32 3>
  %i.i = shufflevector <2 x float> %i.d, <2 x float> %i.f, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.j = fsub reassoc nsz arcp contract afn <2 x float> %i.h, %i.i ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i8, ptr %i.k, align 4, !tbaa !35    ; 5 uses
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.b, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.n = zext i8 %i.l to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %wide.trip.count = zext i8 %i.l to i64          ; 6 uses
  %min.iters.check = icmp ult i8 %i.l, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check86 = icmp ult i8 %i.l, 16
  br i1 %min.iters.check86, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 240          ; 4 uses
  %broadcast.splat = shufflevector <2 x float> %i.j, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat88 = shufflevector <2 x float> %i.d, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat90 = shufflevector <2 x float> %i.j, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat92 = shufflevector <2 x float> %i.f, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index
end_hunk_0
