Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/curve_tools?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@monotone_hermite_set:bb.a
  %.phi.trans.insert = getelementptr [4 x i8], ptr %i.i, i64 %i.h
  %.phi.trans.insert115 = getelementptr i8, ptr %.phi.trans.insert, i64 -8
  %.pre116 = load float, ptr %.phi.trans.insert115, align 4, !tbaa !12 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %wide.trip.count
  store float %.pre116, ptr %i.au, align 4, !tbaa !12
  %i.av = load float, ptr %i.i, align 4, !tbaa !12
  store float %i.av, ptr %i.l, align 4, !tbaa !12
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %wide.trip.count
  store float %.pre116, ptr %i.aw, align 4, !tbaa !12
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %.lr.ph95.preheader, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 2)
  %wide.trip.count106 = zext nneg i32 %smax to i64 ; 2 uses
  %i.ax = add nsw i64 %wide.trip.count106, -1     ; 5 uses
  %min.iters.check133 = icmp slt i32 %0, 10
  br i1 %min.iters.check133, label %.lr.ph93.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check134 = icmp slt i32 %0, 34
  br i1 %min.iters.check134, label %vec.epilog.ph, label %vector.ph135

vector.ph135:                                     ; preds = %vector.main.loop.iter.check
  %i.ay = and i64 %i.ax, 24
  %n.vec136 = and i64 %i.ax, -32                  ; 4 uses
  %i.az = or disjoint i64 %n.vec136, 1
  br label %vector.body137

vector.body137:                                   ; preds = %vector.ph135, %vector.body137
  %index138 = phi i64 [ 0, %vector.ph135 ], [ %index.next147, %vector.body137 ] ; 2 uses
  %i.ba = or disjoint i64 %index138, 1            ; 2 uses
  %i.bb = getelementptr [4 x i8], ptr %i.i, i64 %i.ba ; 8 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 -4
  %i.bd = getelementptr i8, ptr %i.bb, i64 28
  %i.be = getelementptr i8, ptr %i.bb, i64 60
  %i.bf = getelementptr i8, ptr %i.bb, i64 92
  %wide.load139 = load <8 x float>, ptr %i.bc, align 4, !tbaa !12
  %wide.load140 = load <8 x float>, ptr %i.bd, align 4, !tbaa !12
  %wide.load141 = load <8 x float>, ptr %i.be, align 4, !tbaa !12
  %wide.load142 = load <8 x float>, ptr %i.bf, align 4, !tbaa !12
  %i.bg = getelementptr i8, ptr %i.bb, i64 32
  %i.bh = getelementptr i8, ptr %i.bb, i64 64
  %i.bi = getelementptr i8, ptr %i.bb, i64 96
  %wide.load143 = load <8 x float>, ptr %i.bb, align 4, !tbaa !12
  %wide.load144 = load <8 x float>, ptr %i.bg, align 4, !tbaa !12
  %wide.load145 = load <8 x float>, ptr %i.bh, align 4, !tbaa !12
  %wide.load146 = load <8 x float>, ptr %i.bi, align 4, !tbaa !12
  %i.bj = fadd reassoc nsz arcp contract afn <8 x float> %wide.load143, %wide.load139
  %i.bk = fadd reassoc nsz arcp contract afn <8 x float> %wide.load144, %wide.load140
  %i.bl = fadd reassoc nsz arcp contract afn <8 x float> %wide.load145, %wide.load141
  %i.bm = fadd reassoc nsz arcp contract afn <8 x float> %wide.load146, %wide.load142
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
  %index.next147 = add nuw i64 %index138, 32      ; 2 uses
  %i.bv = icmp eq i64 %index.next147, %n.vec136
  br i1 %i.bv, label %middle.block148, label %vector.body137, !llvm.loop !24

middle.block148:                                  ; preds = %vector.body137
  %cmp.n149 = icmp eq i64 %i.ax, %n.vec136
  br i1 %cmp.n149, label %.lr.ph95.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block148
  %min.epilog.iters.check = icmp eq i64 %i.ay, 0
  br i1 %min.epilog.iters.check, label %.lr.ph93.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec136, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec151 = and i64 %i.ax, -8                   ; 3 uses
  %i.bw = or disjoint i64 %n.vec151, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index152 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next155, %vec.epilog.vector.body ] ; 2 uses
  %i.bx = or disjoint i64 %index152, 1            ; 2 uses
  %i.by = getelementptr [4 x i8], ptr %i.i, i64 %i.bx ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -4
  %wide.load153 = load <8 x float>, ptr %i.bz, align 4, !tbaa !12
  %wide.load154 = load <8 x float>, ptr %i.by, align 4, !tbaa !12
  %i.ca = fadd reassoc nsz arcp contract afn <8 x float> %wide.load154, %wide.load153
  %i.cb = fmul reassoc nsz arcp contract afn <8 x float> %i.ca, splat (float 5.000000e-01)
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bx
  store <8 x float> %i.cb, ptr %i.cc, align 4, !tbaa !12
  %index.next155 = add nuw i64 %index152, 8       ; 2 uses
  %i.cd = icmp eq i64 %index.next155, %n.vec151
  br i1 %i.cd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !25

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n156 = icmp eq i64 %i.ax, %n.vec151
  br i1 %cmp.n156, label %.lr.ph95.preheader, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv103.ph = phi i64 [ 1, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bw, %vec.epilog.middle.block ]
  br label %.lr.ph93

.lr.ph:                                           ; preds = %.lr.ph.preheader163, %.lr.ph
  %i.ce = phi float [ %i.ck, %.lr.ph ], [ %.ph, %.lr.ph.preheader163 ]
  %i.cf = phi float [ %i.ch, %.lr.ph ], [ %.ph164, %.lr.ph.preheader163 ]
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %.lr.ph ], [ %indvars.iv98.ph, %.lr.ph.preheader163 ] ; 2 uses
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

.lr.ph95.preheader:                               ; preds = %.lr.ph93, %middle.block148, %vec.epilog.middle.block, %._crit_edge
  %wide.trip.count112 = zext nneg i32 %0 to i64
  br label %.lr.ph95

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
  %indvars.iv108 = phi i64 [ 0, %.lr.ph95.preheader ], [ %indvars.iv.next109, %bb.f ] ; 3 uses
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
  %foldExtExtBinop159 = fmul reassoc nsz arcp contract afn <2 x float> %i.dd, %i.dd
  %shift = shufflevector <2 x float> %foldExtExtBinop159, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop161 = fadd reassoc nsz arcp contract afn <2 x float> %shift, %foldExtExtBinop
  %i.de = extractelement <2 x float> %foldExtExtBinop161, i64 0 ; 2 uses
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
  %exitcond113.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count112
  br i1 %exitcond113.not, label %._crit_edge96, label %.lr.ph95

.loopexit:                                        ; preds = %.lr.ph120, %bb.a, %._crit_edge96
  %.1 = phi ptr [ null, %bb.a ], [ %i.l, %._crit_edge96 ], [ null, %.lr.ph120 ]
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
  %3 = shl nuw nsw i64 %wide.trip.count, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.f, ptr align 4 %2, i64 %3, i1 false), !tbaa !12
  %i.g = icmp sgt i32 %0, 1
  br i1 %i.g, label %.lr.ph72.preheader, label %._crit_edge73

.lr.ph72.preheader:                               ; preds = %.preheader
  %.pre = load float, ptr %i.f, align 4, !tbaa !12 ; 2 uses
  %i.h = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.h, 1
  %i.i = icmp eq i32 %0, 2
  br i1 %i.i, label %.lr.ph72.epil.preheader, label %.lr.ph72.preheader.new

.lr.ph72.preheader.new:                           ; preds = %.lr.ph72.preheader
  %unroll_iter = and i64 %i.h, -2
  br label %.lr.ph72

._crit_edge73:                                    ; preds = %.preheader
  %i.j = add nsw i32 %0, -1                       ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.k ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !12
  %i.n = mul nuw nsw i32 %i.j, 3
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !12
  %i.s = fdiv reassoc nsz arcp contract afn float %i.m, %i.r
  store float %i.s, ptr %i.l, align 4, !tbaa !12
  br label %.loopexit

.lr.ph76.preheader.unr-lcssa:                     ; preds = %.lr.ph72
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph76.preheader, label %.lr.ph72.epil.preheader

.lr.ph72.epil.preheader:                          ; preds = %.lr.ph76.preheader.unr-lcssa, %.lr.ph72.preheader
  %.epil.init = phi float [ %.pre, %.lr.ph72.preheader ], [ %i.cr, %.lr.ph76.preheader.unr-lcssa ]
  %indvars.iv82.epil.init = phi i64 [ 1, %.lr.ph72.preheader ], [ %indvars.iv.next83.1, %.lr.ph76.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod99 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod99)
  %.idx92.epil = mul i64 %indvars.iv82.epil.init, 12
  %i.t = getelementptr i8, ptr %1, i64 %.idx92.epil ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -4
  %i.v = load float, ptr %i.u, align 4, !tbaa !12
  %i.w = getelementptr i8, ptr %i.t, i64 -8
  %i.x = load float, ptr %i.w, align 4, !tbaa !12
  %i.y = fdiv reassoc nsz arcp contract afn float %i.v, %i.x ; 2 uses
  %.idx93.epil = mul nuw nsw i64 %indvars.iv82.epil.init, 12
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.idx93.epil ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !12
  %i.ac = load float, ptr %i.z, align 4, !tbaa !12
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.y
  %i.ae = fsub reassoc nsz arcp contract afn float %i.ab, %i.ad
  store float %i.ae, ptr %i.aa, align 4, !tbaa !12
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv82.epil.init ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !12
  %i.ah = fmul reassoc nsz arcp contract afn float %.epil.init, %i.y
  %i.ai = fsub reassoc nsz arcp contract afn float %i.ag, %i.ah
  store float %i.ai, ptr %i.af, align 4, !tbaa !12
  br label %.lr.ph76.preheader

.lr.ph76.preheader:                               ; preds = %.lr.ph76.preheader.unr-lcssa, %.lr.ph72.epil.preheader
  %i.aj = add nsw i32 %0, -1                      ; 2 uses
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ak ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !12
  %i.an = mul nuw nsw i32 %i.aj, 3
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !12
  %i.as = fdiv reassoc nsz arcp contract afn float %i.am, %i.ar
  store float %i.as, ptr %i.al, align 4, !tbaa !12
  %i.at = add nsw i32 %0, -2                      ; 2 uses
  %i.au = zext i32 %i.at to i64                   ; 4 uses
  %i.av = shl nuw nsw i64 %i.au, 2
  %i.aw = getelementptr i8, ptr %i.f, i64 %i.av
  %scevgep = getelementptr i8, ptr %i.aw, i64 4
  %load_initial = load float, ptr %scevgep, align 4 ; 2 uses
  %i.ax = add nuw nsw i64 %i.au, 1
  %xtraiter100 = and i64 %i.ax, 3                 ; 2 uses
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.lr.ph76.prol.loopexit, label %.lr.ph76.prol

.lr.ph76.prol:                                    ; preds = %.lr.ph76.preheader, %.lr.ph76.prol
  %store_forwarded.prol = phi float [ %i.bj, %.lr.ph76.prol ], [ %load_initial, %.lr.ph76.preheader ]
  %indvars.iv87.prol = phi i64 [ %indvars.iv.next88.prol, %.lr.ph76.prol ], [ %i.au, %.lr.ph76.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph76.prol ], [ 0, %.lr.ph76.preheader ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv87.prol ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !12
  %i.ba = mul nuw i64 %indvars.iv87.prol, 12
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !12
  %i.be = fmul reassoc nsz arcp contract afn float %store_forwarded.prol, %i.bd
  %i.bf = fsub reassoc nsz arcp contract afn float %i.az, %i.be
  %.idx95.prol = mul nuw nsw i64 %indvars.iv87.prol, 12
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %.idx95.prol
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !12
  %i.bj = fdiv reassoc nsz arcp contract afn float %i.bf, %i.bi ; 3 uses
  store float %i.bj, ptr %i.ay, align 4, !tbaa !12
  %indvars.iv.next88.prol = add nsw i64 %indvars.iv87.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter100
  br i1 %prol.iter.cmp.not, label %.lr.ph76.prol.loopexit, label %.lr.ph76.prol, !llvm.loop !29

.lr.ph76.prol.loopexit:                           ; preds = %.lr.ph76.prol, %.lr.ph76.preheader
  %store_forwarded.unr = phi float [ %load_initial, %.lr.ph76.preheader ], [ %i.bj, %.lr.ph76.prol ]
  %indvars.iv87.unr = phi i64 [ %i.au, %.lr.ph76.preheader ], [ %indvars.iv.next88.prol, %.lr.ph76.prol ]
  %i.bk = icmp ult i32 %i.at, 3
  br i1 %i.bk, label %.loopexit, label %.lr.ph76

.lr.ph72:                                         ; preds = %.lr.ph72, %.lr.ph72.preheader.new
  %i.bl = phi float [ %.pre, %.lr.ph72.preheader.new ], [ %i.cr, %.lr.ph72 ]
  %indvars.iv82 = phi i64 [ 1, %.lr.ph72.preheader.new ], [ %indvars.iv.next83.1, %.lr.ph72 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph72.preheader.new ], [ %niter.next.1, %.lr.ph72 ]
  %.idx92 = mul i64 %indvars.iv82, 12
  %i.bm = getelementptr i8, ptr %1, i64 %.idx92   ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 -4
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !12
  %i.bp = getelementptr i8, ptr %i.bm, i64 -8
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !12
  %i.br = fdiv reassoc nsz arcp contract afn float %i.bo, %i.bq ; 2 uses
  %.idx93 = mul nuw nsw i64 %indvars.iv82, 12
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %.idx93 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !12
  %i.bv = load float, ptr %i.bs, align 4, !tbaa !12
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bv, %i.br
  %i.bx = fsub reassoc nsz arcp contract afn float %i.bu, %i.bw
  store float %i.bx, ptr %i.bt, align 4, !tbaa !12
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv82 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !12
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bl, %i.br
  %i.cb = fsub reassoc nsz arcp contract afn float %i.bz, %i.ca ; 2 uses
  store float %i.cb, ptr %i.by, align 4, !tbaa !12
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 3 uses
  %.idx92.1 = mul i64 %indvars.iv.next83, 12
  %i.cc = getelementptr i8, ptr %1, i64 %.idx92.1 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 -4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !12
  %i.cf = getelementptr i8, ptr %i.cc, i64 -8
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !12
  %i.ch = fdiv reassoc nsz arcp contract afn float %i.ce, %i.cg ; 2 uses
  %.idx93.1 = mul nuw nsw i64 %indvars.iv.next83, 12
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %.idx93.1 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !12
  %i.cl = load float, ptr %i.ci, align 4, !tbaa !12
  %i.cm = fmul reassoc nsz arcp contract afn float %i.cl, %i.ch
  %i.cn = fsub reassoc nsz arcp contract afn float %i.ck, %i.cm
  store float %i.cn, ptr %i.cj, align 4, !tbaa !12
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next83 ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !12
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cb, %i.ch
  %i.cr = fsub reassoc nsz arcp contract afn float %i.cp, %i.cq ; 3 uses
  store float %i.cr, ptr %i.co, align 4, !tbaa !12
  %indvars.iv.next83.1 = add nuw nsw i64 %indvars.iv82, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph76.preheader.unr-lcssa, label %.lr.ph72

.lr.ph76:                                         ; preds = %.lr.ph76.prol.loopexit, %.lr.ph76
  %store_forwarded = phi float [ %i.en, %.lr.ph76 ], [ %store_forwarded.unr, %.lr.ph76.prol.loopexit ]
  %indvars.iv87 = phi i64 [ %indvars.iv.next88.3, %.lr.ph76 ], [ %indvars.iv87.unr, %.lr.ph76.prol.loopexit ] ; 7 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv87 ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !12
  %i.cu = mul nuw i64 %indvars.iv87, 12
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !12
  %i.cy = fmul reassoc nsz arcp contract afn float %store_forwarded, %i.cx
  %i.cz = fsub reassoc nsz arcp contract afn float %i.ct, %i.cy
  %.idx95 = mul nuw nsw i64 %indvars.iv87, 12
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 %.idx95
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dc = load float, ptr %i.db, align 4, !tbaa !12
  %i.dd = fdiv reassoc nsz arcp contract afn float %i.cz, %i.dc ; 2 uses
  store float %i.dd, ptr %i.cs, align 4, !tbaa !12
  %indvars.iv.next88 = add nsw i64 %indvars.iv87, -1 ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next88 ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !12
  %i.dg = mul nuw i64 %indvars.iv.next88, 12
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  %i.dj = load float, ptr %i.di, align 4, !tbaa !12
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dd, %i.dj
  %i.dl = fsub reassoc nsz arcp contract afn float %i.df, %i.dk
  %.idx95.1 = mul nuw nsw i64 %indvars.iv.next88, 12
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 %.idx95.1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.do = load float, ptr %i.dn, align 4, !tbaa !12
  %i.dp = fdiv reassoc nsz arcp contract afn float %i.dl, %i.do ; 2 uses
  store float %i.dp, ptr %i.de, align 4, !tbaa !12
  %indvars.iv.next88.1 = add nsw i64 %indvars.iv87, -2 ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next88.1 ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !12
  %i.ds = mul nuw i64 %indvars.iv.next88.1, 12
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  %i.dv = load float, ptr %i.du, align 4, !tbaa !12
end_hunk_0
