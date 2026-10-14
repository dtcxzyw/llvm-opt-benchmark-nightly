Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/filters?download=true
inline.NumInlined: 1651
inline.NumDeleted: 347
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4pbrt19PiecewiseConstant2DC2EN4pstd4spanIKfEEiiNS_7Bounds2IfEENS1_3pmr21polymorphic_allocatorISt4byteEE:bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  store <8 x float> %wide.load, ptr %i.bm, align 4, !tbaa !55
  store <8 x float> %wide.load106, ptr %i.br, align 4, !tbaa !55
  store <8 x float> %wide.load107, ptr %i.bs, align 4, !tbaa !55
  store <8 x float> %wide.load108, ptr %i.bt, align 4, !tbaa !55
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre24.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !81

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec109 = and i64 %.pre24.i, -4               ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index110 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next112, %vec.epilog.vector.body ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %index110
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index110
  %wide.load111 = load <4 x float>, ptr %i.bw, align 4, !tbaa !55
  store <4 x float> %wide.load111, ptr %i.bv, align 4, !tbaa !55
  %index.next112 = add nuw i64 %index110, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next112, %n.vec109
  br i1 %i.bx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !183

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n113 = icmp eq i64 %.pre24.i, %n.vec109
  br i1 %cmp.n113, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec109, %vec.epilog.middle.block ] ; 4 uses
  %i.by = sub i64 %.pre24.i, %indvars.iv.i.i.ph
  %xtraiter = and i64 %i.by, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i.prol
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !55
  store float %i.cb, ptr %i.bz, align 4, !tbaa !55
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !184

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.cc = sub i64 %indvars.iv.i.i.ph, %.pre24.i
  %i.cd = icmp ugt i64 %i.cc, -8
  br i1 %i.cd, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  %i.ce = load i64, ptr %i.v, align 8, !tbaa !72
  %i.cf = shl i64 %i.ce, 2
  %i.cg = load ptr, ptr %i.s, align 8, !tbaa !30
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  invoke void %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %.pre.i.i, i64 noundef %i.cf, i64 noundef 4)
          to label %.noexc38 unwind label %bb.s, !inline_history !181

.noexc38:                                         ; preds = %._crit_edge.thread.i.i
  %.pre2.pre.i = load i64, ptr %i.ab, align 8, !tbaa !70
  br label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i: ; preds = %.noexc38, %._crit_edge.i.i
  %.pre2.i = phi i64 [ %.pre2.pre.i, %.noexc38 ], [ 0, %._crit_edge.i.i ]
  store i64 %spec.select.i35, ptr %i.v, align 8, !tbaa !72
  store ptr %.0.i.i.i.i.i, ptr %i.u, align 8, !tbaa !71
  br label %bb.r

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.i.i
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !55
  store float %i.cl, ptr %i.cj, align 4, !tbaa !55
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.co = load float, ptr %i.cn, align 4, !tbaa !55
  store float %i.co, ptr %i.cm, align 4, !tbaa !55
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.1
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !55
  store float %i.cr, ptr %i.cp, align 4, !tbaa !55
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.2
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !55
  store float %i.cu, ptr %i.cs, align 4, !tbaa !55
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.3
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.3
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !55
  store float %i.cx, ptr %i.cv, align 4, !tbaa !55
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.4
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.4
  %i.da = load float, ptr %i.cz, align 4, !tbaa !55
  store float %i.da, ptr %i.cy, align 4, !tbaa !55
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.5
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.5
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !55
  store float %i.dd, ptr %i.db, align 4, !tbaa !55
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i, 7 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %indvars.iv.next.i.i.6
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.6
  %i.dg = load float, ptr %i.df, align 4, !tbaa !55
  store float %i.dg, ptr %i.de, align 4, !tbaa !55
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.7, %.pre24.i
  br i1 %exitcond.not.i.i.7, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !185

bb.r:                                             ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i, %bb.o, %bb.n
  %i.dh = phi ptr [ %.0.i.i.i.i.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i ], [ %i.au, %bb.o ], [ %i.au, %bb.n ] ; 3 uses
  %i.di = phi i64 [ %spec.select.i35, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i ], [ %i.av, %bb.o ], [ %i.aw, %bb.n ]
  %i.dj = phi i64 [ %.pre2.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i ], [ %i.av, %bb.o ], [ %i.av, %bb.n ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dj
  store float %i.ba, ptr %i.dk, align 4, !tbaa !55
  %i.dl = add i64 %i.dj, 1                        ; 3 uses
  store i64 %i.dl, ptr %i.ab, align 8, !tbaa !70
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %._crit_edge75, label %bb.n, !llvm.loop !186

bb.s:                                             ; preds = %._crit_edge.thread.i.i, %bb.q
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.t:                                             ; preds = %._crit_edge75
  %i.dn = load ptr, ptr %i.f, align 8, !tbaa !73  ; 3 uses
  %i.do = load ptr, ptr %9, align 8, !tbaa !73
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.dr = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !83
  store ptr %i.ds, ptr %i.g, align 8, !tbaa !83
  store ptr %i.dr, ptr %i.dq, align 8, !tbaa !83
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dv = load <2 x i64>, ptr %i.du, align 8, !tbaa !78
  %i.dw = load <2 x i64>, ptr %i.dt, align 8, !tbaa !78
  store <2 x i64> %i.dv, ptr %i.dt, align 8, !tbaa !78
  store <2 x i64> %i.dw, ptr %i.du, align 8, !tbaa !78
  br label %.noexc39

bb.v:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i64 0, ptr %i.dx, align 8, !tbaa !70
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !70 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !72
  %.not.i.i44 = icmp ult i64 %i.eb, %i.dz
  br i1 %.not.i.i44, label %bb.w, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i

bb.w:                                             ; preds = %bb.v
  %i.ec = shl i64 %i.dz, 2                        ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread.i, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i49

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread.i: ; preds = %bb.w
  %.pre.i28.i = load ptr, ptr %i.g, align 8, !tbaa !71
  br label %._crit_edge.i.i60

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i49: ; preds = %bb.w
  %i.ee = load ptr, ptr %i.dn, align 8, !tbaa !30
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = invoke noundef ptr %i.eg(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, i64 noundef %i.ec, i64 noundef 4)
          to label %.noexc62 unwind label %bb.af, !inline_history !195 ; 17 uses

.noexc62:                                         ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i49
  %.pre.i50 = load i64, ptr %i.dx, align 8, !tbaa !70 ; 11 uses
  %.not13.i.i51 = icmp eq i64 %.pre.i50, 0
  %.pre.i.i53 = load ptr, ptr %i.g, align 8, !tbaa !71 ; 17 uses
  br i1 %.not13.i.i51, label %._crit_edge.i.i60, label %iter.check132

iter.check132:                                    ; preds = %.noexc62
  %.pre.i.i53115 = ptrtoaddr ptr %.pre.i.i53 to i64
  %i.ei = ptrtoaddr ptr %i.eh to i64
  %min.iters.check117 = icmp ult i64 %.pre.i50, 4
  %i.ej = sub i64 %.pre.i.i53115, %i.ei
  %diff.check116 = icmp ugt i64 %i.ej, -128
  %or.cond175 = select i1 %min.iters.check117, i1 true, i1 %diff.check116
  br i1 %or.cond175, label %.lr.ph.i.i54.preheader, label %vector.main.loop.iter.check118

vector.main.loop.iter.check118:                   ; preds = %iter.check132
  %min.iters.check119 = icmp ult i64 %.pre.i50, 32
  br i1 %min.iters.check119, label %vec.epilog.ph136, label %vector.ph120

vector.ph120:                                     ; preds = %vector.main.loop.iter.check118
  %i.ek = and i64 %.pre.i50, 28
  %n.vec121 = and i64 %.pre.i50, -32              ; 4 uses
  br label %vector.body122

vector.body122:                                   ; preds = %vector.ph120, %vector.body122
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next128, %vector.body122 ] ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %index123 ; 4 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i53, i64 %index123 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 96
  %wide.load124 = load <8 x float>, ptr %i.em, align 4, !tbaa !55
  %wide.load125 = load <8 x float>, ptr %i.en, align 4, !tbaa !55
  %wide.load126 = load <8 x float>, ptr %i.eo, align 4, !tbaa !55
  %wide.load127 = load <8 x float>, ptr %i.ep, align 4, !tbaa !55
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 96
  store <8 x float> %wide.load124, ptr %i.el, align 4, !tbaa !55
  store <8 x float> %wide.load125, ptr %i.eq, align 4, !tbaa !55
  store <8 x float> %wide.load126, ptr %i.er, align 4, !tbaa !55
  store <8 x float> %wide.load127, ptr %i.es, align 4, !tbaa !55
  %index.next128 = add nuw i64 %index123, 32      ; 2 uses
  %i.et = icmp eq i64 %index.next128, %n.vec121
  br i1 %i.et, label %middle.block129, label %vector.body122, !llvm.loop !187

middle.block129:                                  ; preds = %vector.body122
  %cmp.n130 = icmp eq i64 %.pre.i50, %n.vec121
  br i1 %cmp.n130, label %._crit_edge.thread.i.i58, label %vec.epilog.iter.check134

vec.epilog.iter.check134:                         ; preds = %middle.block129
  %min.epilog.iters.check135 = icmp eq i64 %i.ek, 0
  br i1 %min.epilog.iters.check135, label %.lr.ph.i.i54.preheader, label %vec.epilog.ph136, !prof !81

vec.epilog.ph136:                                 ; preds = %vector.main.loop.iter.check118, %vec.epilog.iter.check134
  %vec.epilog.resume.val131 = phi i64 [ %n.vec121, %vec.epilog.iter.check134 ], [ 0, %vector.main.loop.iter.check118 ]
  %n.vec137 = and i64 %.pre.i50, -4               ; 3 uses
  br label %vec.epilog.vector.body138

vec.epilog.vector.body138:                        ; preds = %vec.epilog.vector.body138, %vec.epilog.ph136
  %index139 = phi i64 [ %vec.epilog.resume.val131, %vec.epilog.ph136 ], [ %index.next141, %vec.epilog.vector.body138 ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %index139
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i53, i64 %index139
  %wide.load140 = load <4 x float>, ptr %i.ev, align 4, !tbaa !55
  store <4 x float> %wide.load140, ptr %i.eu, align 4, !tbaa !55
  %index.next141 = add nuw i64 %index139, 4       ; 2 uses
  %i.ew = icmp eq i64 %index.next141, %n.vec137
  br i1 %i.ew, label %vec.epilog.middle.block142, label %vec.epilog.vector.body138, !llvm.loop !188

vec.epilog.middle.block142:                       ; preds = %vec.epilog.vector.body138
  %cmp.n143 = icmp eq i64 %.pre.i50, %n.vec137
  br i1 %cmp.n143, label %._crit_edge.thread.i.i58, label %.lr.ph.i.i54.preheader

.lr.ph.i.i54.preheader:                           ; preds = %iter.check132, %vec.epilog.iter.check134, %vec.epilog.middle.block142
  %indvars.iv.i.i55.ph = phi i64 [ 0, %iter.check132 ], [ %n.vec121, %vec.epilog.iter.check134 ], [ %n.vec137, %vec.epilog.middle.block142 ] ; 4 uses
  %i.ex = sub i64 %.pre.i50, %indvars.iv.i.i55.ph
  %xtraiter180 = and i64 %i.ex, 7                 ; 2 uses
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %.lr.ph.i.i54.prol.loopexit, label %.lr.ph.i.i54.prol

.lr.ph.i.i54.prol:                                ; preds = %.lr.ph.i.i54.preheader, %.lr.ph.i.i54.prol
  %indvars.iv.i.i55.prol = phi i64 [ %indvars.iv.next.i.i56.prol, %.lr.ph.i.i54.prol ], [ %indvars.iv.i.i55.ph, %.lr.ph.i.i54.preheader ] ; 3 uses
  %prol.iter182 = phi i64 [ %prol.iter182.next, %.lr.ph.i.i54.prol ], [ 0, %.lr.ph.i.i54.preheader ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.i.i55.prol
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i53, i64 %indvars.iv.i.i55.prol
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !55
  store float %i.fa, ptr %i.ey, align 4, !tbaa !55
  %indvars.iv.next.i.i56.prol = add nuw nsw i64 %indvars.iv.i.i55.prol, 1 ; 2 uses
  %prol.iter182.next = add i64 %prol.iter182, 1   ; 2 uses
  %prol.iter182.cmp.not = icmp eq i64 %prol.iter182.next, %xtraiter180
  br i1 %prol.iter182.cmp.not, label %.lr.ph.i.i54.prol.loopexit, label %.lr.ph.i.i54.prol, !llvm.loop !189

.lr.ph.i.i54.prol.loopexit:                       ; preds = %.lr.ph.i.i54.prol, %.lr.ph.i.i54.preheader
  %indvars.iv.i.i55.unr = phi i64 [ %indvars.iv.i.i55.ph, %.lr.ph.i.i54.preheader ], [ %indvars.iv.next.i.i56.prol, %.lr.ph.i.i54.prol ]
  %i.fb = sub i64 %indvars.iv.i.i55.ph, %.pre.i50
  %i.fc = icmp ugt i64 %i.fb, -8
  br i1 %i.fc, label %._crit_edge.thread.i.i58, label %.lr.ph.i.i54

._crit_edge.i.i60:                                ; preds = %.noexc62, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread.i
  %.pre.i36.i = phi ptr [ %.pre.i28.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread.i ], [ %.pre.i.i53, %.noexc62 ] ; 2 uses
  %.0.i.i.i.i31.i = phi ptr [ null, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread.i ], [ %i.eh, %.noexc62 ] ; 2 uses
  %.not.i.i.i.i.i61 = icmp eq ptr %.pre.i36.i, null
  br i1 %.not.i.i.i.i.i61, label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i59, label %._crit_edge.thread.i.i58

._crit_edge.thread.i.i58:                         ; preds = %.lr.ph.i.i54.prol.loopexit, %.lr.ph.i.i54, %middle.block129, %vec.epilog.middle.block142, %._crit_edge.i.i60
  %.pre.i35.i = phi ptr [ %.pre.i36.i, %._crit_edge.i.i60 ], [ %.pre.i.i53, %middle.block129 ], [ %.pre.i.i53, %vec.epilog.middle.block142 ], [ %.pre.i.i53, %.lr.ph.i.i54 ], [ %.pre.i.i53, %.lr.ph.i.i54.prol.loopexit ]
  %.0.i.i.i.i29.i = phi ptr [ %.0.i.i.i.i31.i, %._crit_edge.i.i60 ], [ %i.eh, %middle.block129 ], [ %i.eh, %vec.epilog.middle.block142 ], [ %i.eh, %.lr.ph.i.i54 ], [ %i.eh, %.lr.ph.i.i54.prol.loopexit ]
  %i.fd = load i64, ptr %i.ea, align 8, !tbaa !72
  %i.fe = shl i64 %i.fd, 2
  %i.ff = load ptr, ptr %i.f, align 8, !tbaa !73  ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !30
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  invoke void %i.fi(ptr noundef nonnull align 8 dereferenceable(8) %i.ff, ptr noundef nonnull %.pre.i35.i, i64 noundef %i.fe, i64 noundef 4)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i59 unwind label %bb.af, !inline_history !195

_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i59: ; preds = %._crit_edge.thread.i.i58, %._crit_edge.i.i60
  %.0.i.i.i.i30.i = phi ptr [ %.0.i.i.i.i31.i, %._crit_edge.i.i60 ], [ %.0.i.i.i.i29.i, %._crit_edge.thread.i.i58 ]
  store i64 %i.dz, ptr %i.ea, align 8, !tbaa !72
  store ptr %.0.i.i.i.i30.i, ptr %i.g, align 8, !tbaa !71
  %.pre18.i = load i64, ptr %i.dy, align 8, !tbaa !70
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i

.lr.ph.i.i54:                                     ; preds = %.lr.ph.i.i54.prol.loopexit, %.lr.ph.i.i54
  %indvars.iv.i.i55 = phi i64 [ %indvars.iv.next.i.i56.7, %.lr.ph.i.i54 ], [ %indvars.iv.i.i55.unr, %.lr.ph.i.i54.prol.loopexit ] ; 10 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.i.i55
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i53, i64 %indvars.iv.i.i55
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !55
  store float %i.fl, ptr %i.fj, align 4, !tbaa !55
  %indvars.iv.next.i.i56 = add nuw nsw i64 %indvars.iv.i.i55, 1 ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.next.i.i56
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i53, i64 %indvars.iv.next.i.i56
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !55
  store float %i.fo, ptr %i.fm, align 4, !tbaa !55
  %indvars.iv.next.i.i56.1 = add nuw nsw i64 %indvars.iv.i.i55, 2 ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.next.i.i56.1
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i53, i64 %indvars.iv.next.i.i56.1
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !55
  store float %i.fr, ptr %i.fp, align 4, !tbaa !55
  %indvars.iv.next.i.i56.2 = add nuw nsw i64 %indvars.iv.i.i55, 3 ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.next.i.i56.2
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i53, i64 %indvars.iv.next.i.i56.2
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !55
  store float %i.fu, ptr %i.fs, align 4, !tbaa !55
  %indvars.iv.next.i.i56.3 = add nuw nsw i64 %indvars.iv.i.i55, 4 ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.next.i.i56.3
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i53, i64 %indvars.iv.next.i.i56.3
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !55
  store float %i.fx, ptr %i.fv, align 4, !tbaa !55
  %indvars.iv.next.i.i56.4 = add nuw nsw i64 %indvars.iv.i.i55, 5 ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.next.i.i56.4
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i53, i64 %indvars.iv.next.i.i56.4
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !55
  store float %i.ga, ptr %i.fy, align 4, !tbaa !55
  %indvars.iv.next.i.i56.5 = add nuw nsw i64 %indvars.iv.i.i55, 6 ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.next.i.i56.5
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i53, i64 %indvars.iv.next.i.i56.5
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !55
  store float %i.gd, ptr %i.gb, align 4, !tbaa !55
  %indvars.iv.next.i.i56.6 = add nuw nsw i64 %indvars.iv.i.i55, 7 ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.next.i.i56.6
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i53, i64 %indvars.iv.next.i.i56.6
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !55
  store float %i.gg, ptr %i.ge, align 4, !tbaa !55
  %indvars.iv.next.i.i56.7 = add nuw nsw i64 %indvars.iv.i.i55, 8 ; 2 uses
  %exitcond.not.i.i57.7 = icmp eq i64 %indvars.iv.next.i.i56.7, %.pre.i50
  br i1 %exitcond.not.i.i57.7, label %._crit_edge.thread.i.i58, label %.lr.ph.i.i54, !llvm.loop !190

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i: ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i59, %bb.v
  %i.gh = phi i64 [ %i.dz, %bb.v ], [ %.pre18.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i.i59 ] ; 12 uses
  %.not.i45 = icmp eq i64 %i.gh, 0
  br i1 %.not.i45, label %._crit_edge.i48, label %iter.check162

iter.check162:                                    ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i
  %i.gi = load ptr, ptr %i.g, align 8, !tbaa !71  ; 12 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !71 ; 12 uses
  %min.iters.check147 = icmp ult i64 %i.gh, 4
  %i.gl = ptrtoaddr ptr %i.gk to i64
  %i.gm = ptrtoaddr ptr %i.gi to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %diff.check146 = icmp ugt i64 %i.gn, -128
  %or.cond178 = select i1 %min.iters.check147, i1 true, i1 %diff.check146
  br i1 %or.cond178, label %vec.epilog.scalar.ph163.preheader, label %vector.main.loop.iter.check148

vector.main.loop.iter.check148:                   ; preds = %iter.check162
  %min.iters.check149 = icmp ult i64 %i.gh, 32
  br i1 %min.iters.check149, label %vec.epilog.ph166, label %vector.ph150

vector.ph150:                                     ; preds = %vector.main.loop.iter.check148
  %i.go = and i64 %i.gh, 28
  %n.vec151 = and i64 %i.gh, -32                  ; 4 uses
  br label %vector.body152

vector.body152:                                   ; preds = %vector.ph150, %vector.body152
  %index153 = phi i64 [ 0, %vector.ph150 ], [ %index.next158, %vector.body152 ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %index153 ; 4 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %index153 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 96
  %wide.load154 = load <8 x float>, ptr %i.gq, align 4, !tbaa !55
  %wide.load155 = load <8 x float>, ptr %i.gr, align 4, !tbaa !55
  %wide.load156 = load <8 x float>, ptr %i.gs, align 4, !tbaa !55
  %wide.load157 = load <8 x float>, ptr %i.gt, align 4, !tbaa !55
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gp, i64 64
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 96
  store <8 x float> %wide.load154, ptr %i.gp, align 4, !tbaa !55
  store <8 x float> %wide.load155, ptr %i.gu, align 4, !tbaa !55
  store <8 x float> %wide.load156, ptr %i.gv, align 4, !tbaa !55
  store <8 x float> %wide.load157, ptr %i.gw, align 4, !tbaa !55
  %index.next158 = add nuw i64 %index153, 32      ; 2 uses
  %i.gx = icmp eq i64 %index.next158, %n.vec151
  br i1 %i.gx, label %middle.block159, label %vector.body152, !llvm.loop !191

middle.block159:                                  ; preds = %vector.body152
  %cmp.n160 = icmp eq i64 %i.gh, %n.vec151
  br i1 %cmp.n160, label %._crit_edge.i48, label %vec.epilog.iter.check164

vec.epilog.iter.check164:                         ; preds = %middle.block159
  %min.epilog.iters.check165 = icmp eq i64 %i.go, 0
  br i1 %min.epilog.iters.check165, label %vec.epilog.scalar.ph163.preheader, label %vec.epilog.ph166, !prof !81

vec.epilog.ph166:                                 ; preds = %vector.main.loop.iter.check148, %vec.epilog.iter.check164
  %vec.epilog.resume.val161 = phi i64 [ %n.vec151, %vec.epilog.iter.check164 ], [ 0, %vector.main.loop.iter.check148 ]
  %n.vec167 = and i64 %i.gh, -4                   ; 3 uses
  br label %vec.epilog.vector.body168

vec.epilog.vector.body168:                        ; preds = %vec.epilog.vector.body168, %vec.epilog.ph166
  %index169 = phi i64 [ %vec.epilog.resume.val161, %vec.epilog.ph166 ], [ %index.next171, %vec.epilog.vector.body168 ] ; 3 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %index169
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %index169
  %wide.load170 = load <4 x float>, ptr %i.gz, align 4, !tbaa !55
  store <4 x float> %wide.load170, ptr %i.gy, align 4, !tbaa !55
  %index.next171 = add nuw i64 %index169, 4       ; 2 uses
  %i.ha = icmp eq i64 %index.next171, %n.vec167
  br i1 %i.ha, label %vec.epilog.middle.block172, label %vec.epilog.vector.body168, !llvm.loop !192

vec.epilog.middle.block172:                       ; preds = %vec.epilog.vector.body168
  %cmp.n173 = icmp eq i64 %i.gh, %n.vec167
  br i1 %cmp.n173, label %._crit_edge.i48, label %vec.epilog.scalar.ph163.preheader

vec.epilog.scalar.ph163.preheader:                ; preds = %iter.check162, %vec.epilog.iter.check164, %vec.epilog.middle.block172
  %.017.i.ph = phi i64 [ 0, %iter.check162 ], [ %n.vec151, %vec.epilog.iter.check164 ], [ %n.vec167, %vec.epilog.middle.block172 ] ; 4 uses
  %i.hb = sub i64 %i.gh, %.017.i.ph
  %xtraiter183 = and i64 %i.hb, 7                 ; 2 uses
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %vec.epilog.scalar.ph163.prol.loopexit, label %vec.epilog.scalar.ph163.prol

vec.epilog.scalar.ph163.prol:                     ; preds = %vec.epilog.scalar.ph163.preheader, %vec.epilog.scalar.ph163.prol
  %.017.i.prol = phi i64 [ %i.hf, %vec.epilog.scalar.ph163.prol ], [ %.017.i.ph, %vec.epilog.scalar.ph163.preheader ] ; 3 uses
  %prol.iter185 = phi i64 [ %prol.iter185.next, %vec.epilog.scalar.ph163.prol ], [ 0, %vec.epilog.scalar.ph163.preheader ]
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %.017.i.prol
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %.017.i.prol
  %i.he = load float, ptr %i.hd, align 4, !tbaa !55
  store float %i.he, ptr %i.hc, align 4, !tbaa !55
  %i.hf = add nuw i64 %.017.i.prol, 1             ; 2 uses
  %prol.iter185.next = add i64 %prol.iter185, 1   ; 2 uses
  %prol.iter185.cmp.not = icmp eq i64 %prol.iter185.next, %xtraiter183
  br i1 %prol.iter185.cmp.not, label %vec.epilog.scalar.ph163.prol.loopexit, label %vec.epilog.scalar.ph163.prol, !llvm.loop !193

vec.epilog.scalar.ph163.prol.loopexit:            ; preds = %vec.epilog.scalar.ph163.prol, %vec.epilog.scalar.ph163.preheader
  %.017.i.unr = phi i64 [ %.017.i.ph, %vec.epilog.scalar.ph163.preheader ], [ %i.hf, %vec.epilog.scalar.ph163.prol ]
  %i.hg = sub i64 %.017.i.ph, %i.gh
  %i.hh = icmp ugt i64 %i.hg, -8
  br i1 %i.hh, label %._crit_edge.i48, label %vec.epilog.scalar.ph163

._crit_edge.i48:                                  ; preds = %vec.epilog.scalar.ph163.prol.loopexit, %vec.epilog.scalar.ph163, %middle.block159, %vec.epilog.middle.block172, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i
  store i64 %i.gh, ptr %i.dx, align 8, !tbaa !70
  br label %.noexc39

vec.epilog.scalar.ph163:                          ; preds = %vec.epilog.scalar.ph163.prol.loopexit, %vec.epilog.scalar.ph163
  %.017.i = phi i64 [ %i.in, %vec.epilog.scalar.ph163 ], [ %.017.i.unr, %vec.epilog.scalar.ph163.prol.loopexit ] ; 10 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %.017.i
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %.017.i
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !55
  store float %i.hk, ptr %i.hi, align 4, !tbaa !55
  %i.hl = add nuw i64 %.017.i, 1                  ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.hl
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.hl
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !55
  store float %i.ho, ptr %i.hm, align 4, !tbaa !55
  %i.hp = add nuw i64 %.017.i, 2                  ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.hp
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.hp
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !55
  store float %i.hs, ptr %i.hq, align 4, !tbaa !55
  %i.ht = add nuw i64 %.017.i, 3                  ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.ht
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.ht
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !55
  store float %i.hw, ptr %i.hu, align 4, !tbaa !55
  %i.hx = add nuw i64 %.017.i, 4                  ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.hx
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.hx
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !55
  store float %i.ia, ptr %i.hy, align 4, !tbaa !55
  %i.ib = add nuw i64 %.017.i, 5                  ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.ib
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.ib
  %i.ie = load float, ptr %i.id, align 4, !tbaa !55
  store float %i.ie, ptr %i.ic, align 4, !tbaa !55
  %i.if = add nuw i64 %.017.i, 6                  ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.if
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.if
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !55
  store float %i.ii, ptr %i.ig, align 4, !tbaa !55
  %i.ij = add nuw i64 %.017.i, 7                  ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %i.ij
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.ij
  %i.im = load float, ptr %i.il, align 4, !tbaa !55
  store float %i.im, ptr %i.ik, align 4, !tbaa !55
  %i.in = add nuw i64 %.017.i, 8                  ; 2 uses
  %exitcond.not.i47.7 = icmp eq i64 %i.in, %i.gh
  br i1 %exitcond.not.i47.7, label %._crit_edge.i48, label %vec.epilog.scalar.ph163, !llvm.loop !194

.noexc39:                                         ; preds = %._crit_edge.i48, %bb.u
  %i.io = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.ip = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.io)
          to label %bb.x unwind label %bb.af      ; 0 uses

bb.x:                                             ; preds = %.noexc39
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ir = getelementptr inbounds nuw i8, ptr %9, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.iq, ptr noundef nonnull align 8 dereferenceable(12) %i.ir, i64 12, i1 false)
  %i.is = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i64 0, ptr %i.is, align 8, !tbaa !70
  %i.it = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !71 ; 2 uses
  %.not.i.i.i.i.i41 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i.i.i41, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.iv = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !72
  %i.ix = shl i64 %i.iw, 2
  %i.iy = load ptr, ptr %i.io, align 8, !tbaa !73 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !30
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8
  invoke void %i.jb(ptr noundef nonnull align 8 dereferenceable(8) %i.iy, ptr noundef nonnull %i.iu, i64 noundef %i.ix, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i unwind label %bb.z, !inline_history !0

bb.z:                                             ; preds = %bb.y
  %i.jc = landingpad { ptr, i32 }
          catch ptr null
  %i.jd = extractvalue { ptr, i32 } %i.jc, 0
  call void @__clang_call_terminate(ptr %i.jd) #24
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i: ; preds = %bb.y, %bb.x
  %i.je = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 0, ptr %i.je, align 8, !tbaa !70
  %i.jf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !71 ; 2 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i.i1.i, label %_ZN4pbrt19PiecewiseConstant1DD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i
  %i.jh = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !72
  %i.jj = shl i64 %i.ji, 2
  %i.jk = load ptr, ptr %9, align 8, !tbaa !73    ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !30
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 24
  %i.jn = load ptr, ptr %i.jm, align 8
  invoke void %i.jn(ptr noundef nonnull align 8 dereferenceable(8) %i.jk, ptr noundef nonnull %i.jg, i64 noundef %i.jj, i64 noundef 4)
          to label %_ZN4pbrt19PiecewiseConstant1DD2Ev.exit unwind label %bb.ab, !inline_history !0

bb.ab:                                            ; preds = %bb.aa
  %i.jo = landingpad { ptr, i32 }
          catch ptr null
  %i.jp = extractvalue { ptr, i32 } %i.jo, 0
  call void @__clang_call_terminate(ptr %i.jp) #24
  unreachable

_ZN4pbrt19PiecewiseConstant1DD2Ev.exit:           ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.jq = load ptr, ptr %i.u, align 8, !tbaa !71  ; 2 uses
  %.not.i.i.i.i42 = icmp eq ptr %i.jq, null
end_hunk_0
begin_hunk_1_@_ZN4pbrt8LogFatalIJRA12_KcRA24_S1_S3_RmS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_:bb.a
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA12_KcJRA24_S2_S4_RmS6_S7_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(12) %4, ptr noundef nonnull align 1 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN4pbrt12StringPrintfIJRA12_KcRA24_S1_S3_RmS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %10, align 8, !tbaa !28, !alias.scope !198 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !27, !alias.scope !198
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #21
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA12_KcRA24_S1_S3_RmS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %10, align 8, !tbaa !28
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #23
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA12_KcRA24_S1_S3_RmS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA12_KcRA24_S1_S3_RmS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !28    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !27
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pstd6vectorIN4pbrt19PiecewiseConstant1DENS_3pmr21polymorphic_allocatorIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !76
  %.not = icmp ult i64 %i.b, %1
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = mul i64 %1, 80                           ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt19PiecewiseConstant1DEE15allocate_objectIS3_EEPT_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !77     ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.c, i64 noundef 8), !inline_history !199
  br label %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt19PiecewiseConstant1DEE15allocate_objectIS3_EEPT_m.exit

_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt19PiecewiseConstant1DEE15allocate_objectIS3_EEPT_m.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.i, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !74
  %.not13 = icmp eq i64 %i.k, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt19PiecewiseConstant1DEE15allocate_objectIS3_EEPT_m.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt19PiecewiseConstant1DEE7destroyIS3_EEvPT_.exit, %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt19PiecewiseConstant1DEE15allocate_objectIS3_EEPT_m.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !75   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt19PiecewiseConstant1DEE17deallocate_objectIS3_EEvPT_m.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.o = load i64, ptr %i.a, align 8, !tbaa !76
  %i.p = mul i64 %i.o, 80
  %i.q = load ptr, ptr %0, align 8, !tbaa !77     ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.n, i64 noundef %i.p, i64 noundef 8), !inline_history !200
  br label %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt19PiecewiseConstant1DEE17deallocate_objectIS3_EEvPT_m.exit

_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt19PiecewiseConstant1DEE17deallocate_objectIS3_EEvPT_m.exit: ; preds = %._crit_edge, %bb.d
  store i64 %1, ptr %i.a, align 8, !tbaa !76
  store ptr %.0.i.i.i, ptr %i.m, align 8, !tbaa !75
  br label %bb.j

bb.e:                                             ; preds = %.lr.ph, %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt19PiecewiseConstant1DEE7destroyIS3_EEvPT_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt19PiecewiseConstant1DEE7destroyIS3_EEvPT_.exit ] ; 4 uses
  %i.u = getelementptr inbounds nuw [80 x i8], ptr %.0.i.i.i, i64 %indvars.iv ; 7 uses
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !75
  %i.w = getelementptr inbounds nuw [80 x i8], ptr %i.v, i64 %indvars.iv ; 7 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !59
  store i64 %i.x, ptr %i.u, align 8, !tbaa !59
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ab = load <2 x i64>, ptr %i.aa, align 8, !tbaa !78
  store <2 x i64> %i.ab, ptr %i.z, align 8, !tbaa !78
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !71
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !59
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !59
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ak = load <2 x i64>, ptr %i.aj, align 8, !tbaa !78
  store <2 x i64> %i.ak, ptr %i.ai, align 8, !tbaa !78
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !71
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.an, ptr noundef nonnull align 8 dereferenceable(12) %i.ao, i64 12, i1 false)
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !75
  %i.aq = getelementptr inbounds nuw [80 x i8], ptr %i.ap, i64 %indvars.iv ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  store i64 0, ptr %i.ar, align 8, !tbaa !70
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !71 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !72
  %i.ax = shl i64 %i.aw, 2
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !73 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull %i.at, i64 noundef %i.ax, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i unwind label %bb.g, !inline_history !0

bb.g:                                             ; preds = %bb.f
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #24
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i: ; preds = %bb.f, %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i64 0, ptr %i.be, align 8, !tbaa !70
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !71 ; 2 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt19PiecewiseConstant1DEE7destroyIS3_EEvPT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !72
  %i.bj = shl i64 %i.bi, 2
  %i.bk = load ptr, ptr %i.aq, align 8, !tbaa !73 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !30
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull %i.bg, i64 noundef %i.bj, i64 noundef 4)
          to label %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt19PiecewiseConstant1DEE7destroyIS3_EEvPT_.exit unwind label %bb.i, !inline_history !0

bb.i:                                             ; preds = %bb.h
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  tail call void @__clang_call_terminate(ptr %i.bp) #24
  unreachable

_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt19PiecewiseConstant1DEE7destroyIS3_EEvPT_.exit: ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bq = load i64, ptr %i.j, align 8, !tbaa !74
  %i.br = icmp ugt i64 %i.bq, %indvars.iv.next
  br i1 %i.br, label %bb.e, label %._crit_edge, !llvm.loop !201

bb.j:                                             ; preds = %bb.a, %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt19PiecewiseConstant1DEE17deallocate_objectIS3_EEvPT_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt19PiecewiseConstant1DC2EN4pstd4spanIKfEEffNS1_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr %1, i64 %2, float noundef %3, float noundef %4, ptr %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = ptrtoaddr ptr %1 to i64
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %.idx54 = shl i64 %2, 2                         ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx54
  %i.f = ptrtoint ptr %5 to i64                   ; 3 uses
  store i64 %i.f, ptr %0, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.not.i.not.i = icmp eq i64 %2, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  br i1 %.not.i.not.i, label %.thread, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i

.thread:                                          ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 %i.f, ptr %i.j, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  br label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %5, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %.idx54, i64 noundef 4), !inline_history !202 ; 16 uses
  %7 = ptrtoaddr ptr %i.q to i64                  ; 2 uses
  %i.r = load i64, ptr %i.i, align 8, !tbaa !70   ; 11 uses
  %.not13.i.i = icmp eq i64 %i.r, 0
  %.pre.i.i = load ptr, ptr %i.g, align 8, !tbaa !71 ; 14 uses
  br i1 %.not13.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i
  %.pre.i.i81 = ptrtoaddr ptr %.pre.i.i to i64
  %min.iters.check = icmp ult i64 %i.r, 4
  %i.s = sub i64 %.pre.i.i81, %7
  %diff.check = icmp ugt i64 %i.s, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check82 = icmp ult i64 %i.r, 32
  br i1 %min.iters.check82, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.t = and i64 %i.r, 28
  %n.vec = and i64 %i.r, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 4 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %wide.load = load <8 x float>, ptr %i.v, align 4, !tbaa !55
  %wide.load83 = load <8 x float>, ptr %i.w, align 4, !tbaa !55
  %wide.load84 = load <8 x float>, ptr %i.x, align 4, !tbaa !55
  %wide.load85 = load <8 x float>, ptr %i.y, align 4, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  store <8 x float> %wide.load, ptr %i.u, align 4, !tbaa !55
  store <8 x float> %wide.load83, ptr %i.z, align 4, !tbaa !55
  store <8 x float> %wide.load84, ptr %i.aa, align 4, !tbaa !55
  store <8 x float> %wide.load85, ptr %i.ab, align 4, !tbaa !55
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !203

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !81

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec86 = and i64 %i.r, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index87 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next89, %vec.epilog.vector.body ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index87
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index87
  %wide.load88 = load <4 x float>, ptr %i.ae, align 4, !tbaa !55
  store <4 x float> %wide.load88, ptr %i.ad, align 4, !tbaa !55
  %index.next89 = add nuw i64 %index87, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next89, %n.vec86
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !204

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n90 = icmp eq i64 %i.r, %n.vec86
  br i1 %cmp.n90, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec86, %vec.epilog.middle.block ] ; 4 uses
  %i.ag = sub i64 %i.r, %indvars.iv.i.i.ph
  %xtraiter = and i64 %i.ag, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i.prol
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !55
  store float %i.aj, ptr %i.ah, align 4, !tbaa !55
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !205

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.ak = sub i64 %indvars.iv.i.i.ph, %i.r
  %i.al = icmp ugt i64 %i.ak, -8
  br i1 %i.al, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i.i.i.i, label %iter.check109, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  %i.am = load i64, ptr %i.h, align 8, !tbaa !72
  %i.an = shl i64 %i.am, 2
  %i.ao = load ptr, ptr %0, align 8, !tbaa !73    ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %.pre.i.i, i64 noundef %i.an, i64 noundef 4), !inline_history !206
  br label %iter.check109

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.i
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.au = load float, ptr %i.at, align 4, !tbaa !55
  store float %i.au, ptr %i.as, align 4, !tbaa !55
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !55
  store float %i.ax, ptr %i.av, align 4, !tbaa !55
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.1
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.ba = load float, ptr %i.az, align 4, !tbaa !55
  store float %i.ba, ptr %i.ay, align 4, !tbaa !55
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.2
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !55
  store float %i.bd, ptr %i.bb, align 4, !tbaa !55
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.3
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.3
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !55
  store float %i.bg, ptr %i.be, align 4, !tbaa !55
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.4
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !55
  store float %i.bj, ptr %i.bh, align 4, !tbaa !55
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.5
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.5
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !55
  store float %i.bm, ptr %i.bk, align 4, !tbaa !55
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i, 7 ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.6
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.6
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !55
  store float %i.bp, ptr %i.bn, align 4, !tbaa !55
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.7, %i.r
  br i1 %exitcond.not.i.i.7, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !207

iter.check109:                                    ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i
  store i64 %2, ptr %i.h, align 8, !tbaa !72
  store ptr %i.q, ptr %i.g, align 8, !tbaa !71
  %i.bq = add i64 %.idx54, -4                     ; 3 uses
  %i.br = lshr exact i64 %i.bq, 2
  %i.bs = add nuw nsw i64 %i.br, 1                ; 5 uses
  %min.iters.check93 = icmp ult i64 %i.bq, 28
  %i.bt = sub i64 %6, %7
  %diff.check92 = icmp ugt i64 %i.bt, -128
  %or.cond253 = select i1 %min.iters.check93, i1 true, i1 %diff.check92
  br i1 %or.cond253, label %vec.epilog.scalar.ph110.preheader, label %vector.main.loop.iter.check94

vector.main.loop.iter.check94:                    ; preds = %iter.check109
  %min.iters.check95 = icmp ult i64 %i.bq, 124
  br i1 %min.iters.check95, label %vec.epilog.ph113, label %vector.ph96

vector.ph96:                                      ; preds = %vector.main.loop.iter.check94
  %i.bu = and i64 %i.bs, 24
  %n.vec97 = and i64 %i.bs, 9223372036854775776   ; 5 uses
  %i.bv = shl i64 %n.vec97, 2
  %i.bw = getelementptr i8, ptr %1, i64 %i.bv
  br label %vector.body98

vector.body98:                                    ; preds = %vector.ph96, %vector.body98
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next104, %vector.body98 ] ; 3 uses
  %i.bx = shl i64 %index99, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.bx ; 4 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index99 ; 4 uses
  %i.bz = getelementptr i8, ptr %next.gep, i64 32
  %i.ca = getelementptr i8, ptr %next.gep, i64 64
  %i.cb = getelementptr i8, ptr %next.gep, i64 96
  %wide.load100 = load <8 x float>, ptr %next.gep, align 4, !tbaa !55
  %wide.load101 = load <8 x float>, ptr %i.bz, align 4, !tbaa !55
  %wide.load102 = load <8 x float>, ptr %i.ca, align 4, !tbaa !55
  %wide.load103 = load <8 x float>, ptr %i.cb, align 4, !tbaa !55
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 96
  store <8 x float> %wide.load100, ptr %i.by, align 4, !tbaa !55
  store <8 x float> %wide.load101, ptr %i.cc, align 4, !tbaa !55
  store <8 x float> %wide.load102, ptr %i.cd, align 4, !tbaa !55
  store <8 x float> %wide.load103, ptr %i.ce, align 4, !tbaa !55
  %index.next104 = add nuw i64 %index99, 32       ; 2 uses
  %i.cf = icmp eq i64 %index.next104, %n.vec97
  br i1 %i.cf, label %middle.block105, label %vector.body98, !llvm.loop !208

middle.block105:                                  ; preds = %vector.body98
  %cmp.n106 = icmp eq i64 %i.bs, %n.vec97
  br i1 %cmp.n106, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2IPKfEET_S8_RKS3_.exit, label %vec.epilog.iter.check111

vec.epilog.iter.check111:                         ; preds = %middle.block105
  %min.epilog.iters.check112 = icmp eq i64 %i.bu, 0
  br i1 %min.epilog.iters.check112, label %vec.epilog.scalar.ph110.preheader, label %vec.epilog.ph113, !prof !230

vec.epilog.ph113:                                 ; preds = %vector.main.loop.iter.check94, %vec.epilog.iter.check111
  %vec.epilog.resume.val107 = phi i64 [ %n.vec97, %vec.epilog.iter.check111 ], [ 0, %vector.main.loop.iter.check94 ]
  %n.vec114 = and i64 %i.bs, 9223372036854775800  ; 4 uses
  %i.cg = shl i64 %n.vec114, 2
  %i.ch = getelementptr i8, ptr %1, i64 %i.cg
  br label %vec.epilog.vector.body115

vec.epilog.vector.body115:                        ; preds = %vec.epilog.vector.body115, %vec.epilog.ph113
  %index116 = phi i64 [ %vec.epilog.resume.val107, %vec.epilog.ph113 ], [ %index.next119, %vec.epilog.vector.body115 ] ; 3 uses
  %i.ci = shl i64 %index116, 2
  %next.gep117 = getelementptr i8, ptr %1, i64 %i.ci
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index116
  %wide.load118 = load <8 x float>, ptr %next.gep117, align 4, !tbaa !55
  store <8 x float> %wide.load118, ptr %i.cj, align 4, !tbaa !55
  %index.next119 = add nuw i64 %index116, 8       ; 2 uses
  %i.ck = icmp eq i64 %index.next119, %n.vec114
  br i1 %i.ck, label %vec.epilog.middle.block120, label %vec.epilog.vector.body115, !llvm.loop !209

vec.epilog.middle.block120:                       ; preds = %vec.epilog.vector.body115
  %cmp.n121 = icmp eq i64 %i.bs, %n.vec114
  br i1 %cmp.n121, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2IPKfEET_S8_RKS3_.exit, label %vec.epilog.scalar.ph110.preheader

vec.epilog.scalar.ph110.preheader:                ; preds = %iter.check109, %vec.epilog.iter.check111, %vec.epilog.middle.block120
  %.013.i.ph = phi ptr [ %1, %iter.check109 ], [ %i.bw, %vec.epilog.iter.check111 ], [ %i.ch, %vec.epilog.middle.block120 ]
  %.01012.i.ph = phi i64 [ 0, %iter.check109 ], [ %n.vec97, %vec.epilog.iter.check111 ], [ %n.vec114, %vec.epilog.middle.block120 ]
  br label %vec.epilog.scalar.ph110

vec.epilog.scalar.ph110:                          ; preds = %vec.epilog.scalar.ph110.preheader, %vec.epilog.scalar.ph110
  %.013.i = phi ptr [ %i.cn, %vec.epilog.scalar.ph110 ], [ %.013.i.ph, %vec.epilog.scalar.ph110.preheader ] ; 2 uses
  %.01012.i = phi i64 [ %i.co, %vec.epilog.scalar.ph110 ], [ %.01012.i.ph, %vec.epilog.scalar.ph110.preheader ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.01012.i
  %i.cm = load float, ptr %.013.i, align 4, !tbaa !55
  store float %i.cm, ptr %i.cl, align 4, !tbaa !55
  %i.cn = getelementptr inbounds nuw i8, ptr %.013.i, i64 4 ; 2 uses
  %i.co = add nuw nsw i64 %.01012.i, 1
  %.not.i = icmp eq ptr %i.cn, %i.e
  br i1 %.not.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2IPKfEET_S8_RKS3_.exit, label %vec.epilog.scalar.ph110, !llvm.loop !210

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2IPKfEET_S8_RKS3_.exit: ; preds = %vec.epilog.scalar.ph110, %vec.epilog.middle.block120, %middle.block105
  store i64 %2, ptr %i.i, align 8, !tbaa !70
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.cq = add i64 %2, 1                           ; 4 uses
  store i64 %i.f, ptr %i.cp, align 8, !tbaa !59
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.not.i.not.i.i = icmp eq i64 %i.cq, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i8 0, i64 24, i1 false)
  br i1 %.not.i.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2IPKfEET_S8_RKS3_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cu = shl i64 %i.cq, 2                        ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %.lr.ph.i.i45, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i: ; preds = %.thread, %bb.b
  %i.cw = phi i64 [ 4, %.thread ], [ %i.cu, %bb.b ] ; 3 uses
  %i.cx = phi ptr [ %i.j, %.thread ], [ %i.cp, %bb.b ] ; 3 uses
  %i.cy = phi i64 [ 1, %.thread ], [ %i.cq, %bb.b ] ; 2 uses
  %i.cz = phi ptr [ %i.k, %.thread ], [ %i.cr, %bb.b ] ; 3 uses
  %i.da = phi ptr [ %i.l, %.thread ], [ %i.ct, %bb.b ] ; 3 uses
  %i.db = phi ptr [ %i.m, %.thread ], [ %i.cs, %bb.b ] ; 3 uses
  %i.dc = load ptr, ptr %5, align 8, !tbaa !30
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = invoke noundef ptr %i.de(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.cw, i64 noundef 4)
          to label %.noexc unwind label %bb.f, !inline_history !211 ; 14 uses

.noexc:                                           ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i
  %.pr.i.i = load i64, ptr %i.db, align 8, !tbaa !70 ; 11 uses
  %.not13.i.i.i = icmp eq i64 %.pr.i.i, 0
  %.pre.i.i.i = load ptr, ptr %i.cz, align 8, !tbaa !71 ; 14 uses
  br i1 %.not13.i.i.i, label %._crit_edge.i.i.i, label %iter.check142

iter.check142:                                    ; preds = %.noexc
  %.pre.i.i.i125 = ptrtoaddr ptr %.pre.i.i.i to i64
  %i.dg = ptrtoaddr ptr %i.df to i64
  %min.iters.check127 = icmp ult i64 %.pr.i.i, 4
  %i.dh = sub i64 %.pre.i.i.i125, %i.dg
  %diff.check126 = icmp ugt i64 %i.dh, -128
  %or.cond254 = select i1 %min.iters.check127, i1 true, i1 %diff.check126
  br i1 %or.cond254, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check128

vector.main.loop.iter.check128:                   ; preds = %iter.check142
  %min.iters.check129.a = icmp ult i64 %.pr.i.i, 32
  br i1 %min.iters.check129.a, label %vec.epilog.ph146, label %vector.ph130

vector.ph130:                                     ; preds = %vector.main.loop.iter.check128
  %i.di = and i64 %.pr.i.i, 28
  %n.vec131 = and i64 %.pr.i.i, -32               ; 4 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.ph130, %vector.body132
  %index133 = phi i64 [ 0, %vector.ph130 ], [ %index.next138, %vector.body132 ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %index133 ; 4 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %index133 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 96
  %wide.load134 = load <8 x float>, ptr %i.dk, align 4, !tbaa !55
  %wide.load135 = load <8 x float>, ptr %i.dl, align 4, !tbaa !55
  %wide.load136 = load <8 x float>, ptr %i.dm, align 4, !tbaa !55
  %wide.load137 = load <8 x float>, ptr %i.dn, align 4, !tbaa !55
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 96
  store <8 x float> %wide.load134, ptr %i.dj, align 4, !tbaa !55
  store <8 x float> %wide.load135, ptr %i.do, align 4, !tbaa !55
  store <8 x float> %wide.load136, ptr %i.dp, align 4, !tbaa !55
  store <8 x float> %wide.load137, ptr %i.dq, align 4, !tbaa !55
  %index.next138 = add nuw i64 %index133, 32      ; 2 uses
  %i.dr = icmp eq i64 %index.next138, %n.vec131
  br i1 %i.dr, label %middle.block139, label %vector.body132, !llvm.loop !212

middle.block139:                                  ; preds = %vector.body132
  %cmp.n140 = icmp eq i64 %.pr.i.i, %n.vec131
  br i1 %cmp.n140, label %._crit_edge.thread.i.i.i, label %vec.epilog.iter.check144

vec.epilog.iter.check144:                         ; preds = %middle.block139
  %min.epilog.iters.check145 = icmp eq i64 %i.di, 0
  br i1 %min.epilog.iters.check145, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph146, !prof !81

vec.epilog.ph146:                                 ; preds = %vector.main.loop.iter.check128, %vec.epilog.iter.check144
  %vec.epilog.resume.val141 = phi i64 [ %n.vec131, %vec.epilog.iter.check144 ], [ 0, %vector.main.loop.iter.check128 ]
  %n.vec147 = and i64 %.pr.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body148

vec.epilog.vector.body148:                        ; preds = %vec.epilog.vector.body148, %vec.epilog.ph146
  %index149 = phi i64 [ %vec.epilog.resume.val141, %vec.epilog.ph146 ], [ %index.next151, %vec.epilog.vector.body148 ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %index149
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %index149
  %wide.load150 = load <4 x float>, ptr %i.dt, align 4, !tbaa !55
  store <4 x float> %wide.load150, ptr %i.ds, align 4, !tbaa !55
  %index.next151 = add nuw i64 %index149, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next151, %n.vec147
  br i1 %i.du, label %vec.epilog.middle.block152, label %vec.epilog.vector.body148, !llvm.loop !213

vec.epilog.middle.block152:                       ; preds = %vec.epilog.vector.body148
  %cmp.n153 = icmp eq i64 %.pr.i.i, %n.vec147
  br i1 %cmp.n153, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check142, %vec.epilog.iter.check144, %vec.epilog.middle.block152
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check142 ], [ %n.vec131, %vec.epilog.iter.check144 ], [ %n.vec147, %vec.epilog.middle.block152 ] ; 4 uses
  %i.dv = sub i64 %.pr.i.i, %indvars.iv.i.i.i.ph
  %xtraiter256 = and i64 %i.dv, 7                 ; 2 uses
  %lcmp.mod257.not = icmp eq i64 %xtraiter256, 0
  br i1 %lcmp.mod257.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter258 = phi i64 [ %prol.iter258.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.i.i.i.prol
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !55
  store float %i.dy, ptr %i.dw, align 4, !tbaa !55
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter258.next = add i64 %prol.iter258, 1   ; 2 uses
  %prol.iter258.cmp.not = icmp eq i64 %prol.iter258.next, %xtraiter256
  br i1 %prol.iter258.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !214

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.dz = sub i64 %indvars.iv.i.i.i.ph, %.pr.i.i
  %i.ea = icmp ugt i64 %i.dz, -8
  br i1 %i.ea, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc
  %.not.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i45, label %._crit_edge.thread.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block139, %vec.epilog.middle.block152, %._crit_edge.i.i.i
  %i.eb = load i64, ptr %i.da, align 8, !tbaa !72
  %i.ec = shl i64 %i.eb, 2
  %i.ed = load ptr, ptr %i.cx, align 8, !tbaa !73 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !30
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  invoke void %i.eg(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef nonnull %.pre.i.i.i, i64 noundef %i.ec, i64 noundef 4)
          to label %.lr.ph.i.i45 unwind label %bb.f, !inline_history !211

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.7, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 10 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.i.i.i
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !55
  store float %i.ej, ptr %i.eh, align 4, !tbaa !55
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next.i.i.i
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.em = load float, ptr %i.el, align 4, !tbaa !55
  store float %i.em, ptr %i.ek, align 4, !tbaa !55
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next.i.i.i.1
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !55
  store float %i.ep, ptr %i.en, align 4, !tbaa !55
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next.i.i.i.2
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.es = load float, ptr %i.er, align 4, !tbaa !55
  store float %i.es, ptr %i.eq, align 4, !tbaa !55
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next.i.i.i.3
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.3
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !55
  store float %i.ev, ptr %i.et, align 4, !tbaa !55
  %indvars.iv.next.i.i.i.4 = add nuw nsw i64 %indvars.iv.i.i.i, 5 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next.i.i.i.4
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.4
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !55
  store float %i.ey, ptr %i.ew, align 4, !tbaa !55
  %indvars.iv.next.i.i.i.5 = add nuw nsw i64 %indvars.iv.i.i.i, 6 ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next.i.i.i.5
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.5
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !55
  store float %i.fb, ptr %i.ez, align 4, !tbaa !55
  %indvars.iv.next.i.i.i.6 = add nuw nsw i64 %indvars.iv.i.i.i, 7 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.next.i.i.i.6
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.6
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !55
  store float %i.fe, ptr %i.fc, align 4, !tbaa !55
  %indvars.iv.next.i.i.i.7 = add nuw nsw i64 %indvars.iv.i.i.i, 8 ; 2 uses
  %exitcond.not.i.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.i.7, %.pr.i.i
  br i1 %exitcond.not.i.i.i.7, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !215

.lr.ph.i.i45:                                     ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i, %bb.b
  %i.ff = phi i64 [ %i.cw, %._crit_edge.i.i.i ], [ 0, %bb.b ], [ %i.cw, %._crit_edge.thread.i.i.i ]
  %i.fg = phi ptr [ %i.cx, %._crit_edge.i.i.i ], [ %i.cp, %bb.b ], [ %i.cx, %._crit_edge.thread.i.i.i ]
  %i.fh = phi i64 [ %i.cy, %._crit_edge.i.i.i ], [ %i.cq, %bb.b ], [ %i.cy, %._crit_edge.thread.i.i.i ] ; 2 uses
  %i.fi = phi ptr [ %i.cz, %._crit_edge.i.i.i ], [ %i.cr, %bb.b ], [ %i.cz, %._crit_edge.thread.i.i.i ]
  %i.fj = phi ptr [ %i.da, %._crit_edge.i.i.i ], [ %i.ct, %bb.b ], [ %i.da, %._crit_edge.thread.i.i.i ]
  %i.fk = phi ptr [ %i.db, %._crit_edge.i.i.i ], [ %i.cs, %bb.b ], [ %i.db, %._crit_edge.thread.i.i.i ]
  %.0.i.i.i.i12.i.i = phi ptr [ %i.df, %._crit_edge.i.i.i ], [ null, %bb.b ], [ %i.df, %._crit_edge.thread.i.i.i ] ; 3 uses
  store i64 %i.fh, ptr %i.fj, align 8, !tbaa !72
  store ptr %.0.i.i.i.i12.i.i, ptr %i.fi, align 8, !tbaa !71
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0.i.i.i.i12.i.i, i8 0, i64 %i.ff, i1 false), !tbaa !55
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i45, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2IPKfEET_S8_RKS3_.exit
  %i.fl = phi ptr [ %i.fk, %.lr.ph.i.i45 ], [ %i.cs, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2IPKfEET_S8_RKS3_.exit ]
  %i.fm = phi i64 [ %i.fh, %.lr.ph.i.i45 ], [ 0, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2IPKfEET_S8_RKS3_.exit ] ; 2 uses
  %i.fn = phi ptr [ %i.fg, %.lr.ph.i.i45 ], [ %i.cp, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2IPKfEET_S8_RKS3_.exit ]
  %i.fo = phi ptr [ %.0.i.i.i.i12.i.i, %.lr.ph.i.i45 ], [ null, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEC2IPKfEET_S8_RKS3_.exit ] ; 21 uses
  store i64 %i.fm, ptr %i.fl, align 8, !tbaa !70
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %3, ptr %i.fp, align 8, !tbaa !231
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %4, ptr %i.fq, align 4, !tbaa !232
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 15 uses
  store float 0.000000e+00, ptr %i.fr, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store float %4, ptr %i.a, align 4, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store float %3, ptr %i.b, align 4, !tbaa !55
  %i.fs = fcmp ogt float %4, %3
  br i1 %i.fs, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4pbrt8LogFatalIJRA4_KcS3_S3_RfS3_S4_EEEvNS_8LogLevelEPS1_iS6_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.21, i32 noundef 628, ptr noundef nonnull @.str.34, ptr noundef nonnull align 1 dereferenceable(4) @.str.35, ptr noundef nonnull align 1 dereferenceable(4) @.str.36, ptr noundef nonnull align 1 dereferenceable(4) @.str.35, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(4) @.str.36, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #23
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %._crit_edge.thread.i.i.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.g:                                             ; preds = %bb.d
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.fv = load ptr, ptr %i.g, align 8, !tbaa !71  ; 7 uses
  %i.fw = load i64, ptr %i.i, align 8, !tbaa !70  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4pbrt6detail21stringPrintfRecursiveIRiJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_:bb.a
bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ec = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !483)
  %i.ed = load i32, ptr %2, align 4, !tbaa !84, !noalias !483
  %i.ee = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.ec, i32 noundef %i.ed) #22, !noalias !483
  %i.ef = add nsw i32 %i.ee, 1
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.eh, ptr %8, align 8, !tbaa !24, !alias.scope !483
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.ei, align 8, !tbaa !26, !alias.scope !483
  store i8 0, ptr %i.eh, align 8, !tbaa !27, !alias.scope !483
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.eg, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i67 unwind label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i67: ; preds = %bb.z
  %i.ej = load ptr, ptr %8, align 8, !tbaa !28, !alias.scope !483
  %i.ek = load i32, ptr %2, align 4, !tbaa !84, !noalias !483
  %i.el = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ej, i64 noundef %i.eg, ptr noundef %i.ec, i32 noundef %i.ek) #22 ; 0 uses
  %i.em = load i64, ptr %i.ei, align 8, !tbaa !26, !alias.scope !483
  %i.en = add i64 %i.em, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.en, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIRiEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_.exit70 unwind label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i67
  %i.eo = landingpad { ptr, i32 }
          catch ptr null
  %i.ep = extractvalue { ptr, i32 } %i.eo, 0
  call void @__clang_call_terminate(ptr %i.ep) #24
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = load ptr, ptr %8, align 8, !tbaa !28, !alias.scope !483 ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.eh
  br i1 %i.es, label %.body68, label %.body68.sink.split

_ZN4pbrt6detail9formatOneIRiEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_.exit70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i67
  %i.et = load i64, ptr %i.ei, align 8, !tbaa !26 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !26
  %i.ew = sub i64 4611686018427387903, %i.ev
  %i.ex = icmp ult i64 %i.ew, %i.et
  br i1 %i.ex, label %bb.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i71

bb.ac:                                            ; preds = %_ZN4pbrt6detail9formatOneIRiEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_.exit70
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #23
          to label %.noexc72 unwind label %bb.ad

.noexc72:                                         ; preds = %bb.ac
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i71: ; preds = %_ZN4pbrt6detail9formatOneIRiEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_.exit70
  %i.ey = load ptr, ptr %8, align 8, !tbaa !28
  %i.ez = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ey, i64 noundef %i.et)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit74 unwind label %bb.ad ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i71
  %i.fa = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.eh
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit74
  %i.fc = load i64, ptr %i.eh, align 8, !tbaa !27
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ae

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i71, %bb.ac
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.eh
  br i1 %i.fg, label %.body68, label %.body68.sink.split

.body68.sink.split:                               ; preds = %bb.ad, %bb.ab
  %.sink130 = phi ptr [ %i.er, %bb.ab ], [ %i.ff, %bb.ad ]
  %.pn.ph = phi { ptr, i32 } [ %i.eq, %bb.ab ], [ %i.fe, %bb.ad ]
  %i.fh = load i64, ptr %i.eh, align 8, !tbaa !27
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %.sink130, i64 noundef %i.fi) #21
  br label %.body68

.body68:                                          ; preds = %.body68.sink.split, %bb.ad, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.eq, %bb.ab ], [ %i.fe, %bb.ad ], [ %.pn.ph, %.body68.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ag

bb.ae:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fj = load ptr, ptr %i.a, align 8, !tbaa !85
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull %0, ptr noundef %i.fj)
          to label %bb.af unwind label %bb.b

bb.af:                                            ; preds = %bb.ae
  %i.fk = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.af
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !27
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.ag:                                            ; preds = %.body68, %bb.x, %.body, %bb.b
  %.pn31 = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn29, %.body ], [ %.pn24.pn.pn.pn, %bb.x ], [ %.pn, %.body68 ]
  %i.fp = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.ag
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !27
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn31
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !73     ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !73
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !83
  store ptr %i.h, ptr %i.e, align 8, !tbaa !83
  store ptr %i.g, ptr %i.f, align 8, !tbaa !83
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.i, align 8, !tbaa !78
  %i.l = load i64, ptr %i.j, align 8, !tbaa !78
  store i64 %i.l, ptr %i.i, align 8, !tbaa !78
  store i64 %i.k, ptr %i.j, align 8, !tbaa !78
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.m, align 8, !tbaa !78
  %i.p = load i64, ptr %i.n, align 8, !tbaa !78
  store i64 %i.p, ptr %i.m, align 8, !tbaa !78
  store i64 %i.o, ptr %i.n, align 8, !tbaa !78
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i64 0, ptr %i.q, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !70   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !72
  %.not.i = icmp ult i64 %i.u, %i.s
  br i1 %.not.i, label %bb.e, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.v = shl i64 %i.s, 2                          ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread, label %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread: ; preds = %bb.e
  %.phi.trans.insert.i27 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre.i28 = load ptr, ptr %.phi.trans.insert.i27, align 8, !tbaa !71
  br label %._crit_edge.i

_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i: ; preds = %bb.e
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.v, i64 noundef 4), !inline_history !484 ; 17 uses
  %.pre = load i64, ptr %i.q, align 8, !tbaa !70  ; 11 uses
  %.not13.i = icmp eq i64 %.pre, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !71 ; 17 uses
  br i1 %.not13.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i
  %.pre.i37 = ptrtoaddr ptr %.pre.i to i64
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %min.iters.check = icmp ult i64 %.pre, 4
  %i.ac = sub i64 %.pre.i37, %i.ab
  %diff.check = icmp ugt i64 %i.ac, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check38 = icmp ult i64 %.pre, 32
  br i1 %min.iters.check38, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %.pre, 28
  %n.vec = and i64 %.pre, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %index ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %wide.load = load <8 x float>, ptr %i.af, align 4, !tbaa !55
  %wide.load39 = load <8 x float>, ptr %i.ag, align 4, !tbaa !55
  %wide.load40 = load <8 x float>, ptr %i.ah, align 4, !tbaa !55
  %wide.load41 = load <8 x float>, ptr %i.ai, align 4, !tbaa !55
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  store <8 x float> %wide.load, ptr %i.ae, align 4, !tbaa !55
  store <8 x float> %wide.load39, ptr %i.aj, align 4, !tbaa !55
  store <8 x float> %wide.load40, ptr %i.ak, align 4, !tbaa !55
  store <8 x float> %wide.load41, ptr %i.al, align 4, !tbaa !55
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !485

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !81

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %.pre, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index43
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %index43
  %wide.load44 = load <4 x float>, ptr %i.ao, align 4, !tbaa !55
  store <4 x float> %wide.load44, ptr %i.an, align 4, !tbaa !55
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %i.ap = icmp eq i64 %index.next45, %n.vec42
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !486

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %.pre, %n.vec42
  br i1 %cmp.n46, label %._crit_edge.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ] ; 4 uses
  %i.aq = sub i64 %.pre, %indvars.iv.i.ph
  %xtraiter = and i64 %i.aq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i.prol
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.i.prol
  %i.at = load float, ptr %i.as, align 4, !tbaa !55
  store float %i.at, ptr %i.ar, align 4, !tbaa !55
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !487

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.au = sub i64 %indvars.iv.i.ph, %.pre
  %i.av = icmp ugt i64 %i.au, -8
  br i1 %i.av, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i
  %.pre.i36 = phi ptr [ %.pre.i28, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread ], [ %.pre.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i ] ; 2 uses
  %.phi.trans.insert.i34 = phi ptr [ %.phi.trans.insert.i27, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread ], [ %.phi.trans.insert.i, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i ] ; 2 uses
  %.0.i.i.i.i31 = phi ptr [ null, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.thread ], [ %i.aa, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.pre.i36, null
  br i1 %.not.i.i.i.i, label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %._crit_edge.i
  %.pre.i35 = phi ptr [ %.pre.i36, %._crit_edge.i ], [ %.pre.i, %middle.block ], [ %.pre.i, %vec.epilog.middle.block ], [ %.pre.i, %.lr.ph.i ], [ %.pre.i, %.lr.ph.i.prol.loopexit ]
  %.phi.trans.insert.i32 = phi ptr [ %.phi.trans.insert.i34, %._crit_edge.i ], [ %.phi.trans.insert.i, %middle.block ], [ %.phi.trans.insert.i, %vec.epilog.middle.block ], [ %.phi.trans.insert.i, %.lr.ph.i ], [ %.phi.trans.insert.i, %.lr.ph.i.prol.loopexit ]
  %.0.i.i.i.i29 = phi ptr [ %.0.i.i.i.i31, %._crit_edge.i ], [ %i.aa, %middle.block ], [ %i.aa, %vec.epilog.middle.block ], [ %i.aa, %.lr.ph.i ], [ %i.aa, %.lr.ph.i.prol.loopexit ]
  %i.aw = load i64, ptr %i.t, align 8, !tbaa !72
  %i.ax = shl i64 %i.aw, 2
  %i.ay = load ptr, ptr %0, align 8, !tbaa !73    ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull %.pre.i35, i64 noundef %i.ax, i64 noundef 4), !inline_history !488
  br label %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i

_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i: ; preds = %._crit_edge.thread.i, %._crit_edge.i
  %.phi.trans.insert.i33 = phi ptr [ %.phi.trans.insert.i32, %._crit_edge.thread.i ], [ %.phi.trans.insert.i34, %._crit_edge.i ]
  %.0.i.i.i.i30 = phi ptr [ %.0.i.i.i.i29, %._crit_edge.thread.i ], [ %.0.i.i.i.i31, %._crit_edge.i ]
  store i64 %i.s, ptr %i.t, align 8, !tbaa !72
  store ptr %.0.i.i.i.i30, ptr %.phi.trans.insert.i33, align 8, !tbaa !71
  %.pre18 = load i64, ptr %i.r, align 8, !tbaa !70
  br label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.i
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.i
  %i.be = load float, ptr %i.bd, align 4, !tbaa !55
  store float %i.be, ptr %i.bc, align 4, !tbaa !55
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.i
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next.i
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !55
  store float %i.bh, ptr %i.bf, align 4, !tbaa !55
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.i.1
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next.i.1
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !55
  store float %i.bk, ptr %i.bi, align 4, !tbaa !55
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.i.2
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next.i.2
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !55
  store float %i.bn, ptr %i.bl, align 4, !tbaa !55
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.i.3
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next.i.3
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !55
  store float %i.bq, ptr %i.bo, align 4, !tbaa !55
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.i.4
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next.i.4
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !55
  store float %i.bt, ptr %i.br, align 4, !tbaa !55
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i, 6 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.i.5
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next.i.5
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !55
  store float %i.bw, ptr %i.bu, align 4, !tbaa !55
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next.i.6
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next.i.6
  %i.bz = load float, ptr %i.by, align 4, !tbaa !55
  store float %i.bz, ptr %i.bx, align 4, !tbaa !55
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %.pre
  br i1 %exitcond.not.i.7, label %._crit_edge.thread.i, label %.lr.ph.i, !llvm.loop !489

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit: ; preds = %bb.d, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i
  %i.ca = phi i64 [ %i.s, %bb.d ], [ %.pre18, %_ZN4pstd3pmr21polymorphic_allocatorIfE17deallocate_objectIfEEvPT_m.exit.i ] ; 12 uses
  %.not = icmp eq i64 %i.ca, 0
  br i1 %.not, label %._crit_edge, label %iter.check64

iter.check64:                                     ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !71 ; 12 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !71 ; 12 uses
  %min.iters.check49 = icmp ult i64 %i.ca, 4
  %i.cf = ptrtoaddr ptr %i.ce to i64
  %i.cg = ptrtoaddr ptr %i.cc to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %diff.check48 = icmp ugt i64 %i.ch, -128
  %or.cond79 = select i1 %min.iters.check49, i1 true, i1 %diff.check48
  br i1 %or.cond79, label %vec.epilog.scalar.ph65.preheader, label %vector.main.loop.iter.check50

vector.main.loop.iter.check50:                    ; preds = %iter.check64
  %min.iters.check51 = icmp ult i64 %i.ca, 32
  br i1 %min.iters.check51, label %vec.epilog.ph68, label %vector.ph52

vector.ph52:                                      ; preds = %vector.main.loop.iter.check50
  %i.ci = and i64 %i.ca, 28
  %n.vec53 = and i64 %i.ca, -32                   ; 4 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.ph52, %vector.body54
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next60, %vector.body54 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %index55 ; 4 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index55 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 96
  %wide.load56 = load <8 x float>, ptr %i.ck, align 4, !tbaa !55
  %wide.load57 = load <8 x float>, ptr %i.cl, align 4, !tbaa !55
  %wide.load58 = load <8 x float>, ptr %i.cm, align 4, !tbaa !55
  %wide.load59 = load <8 x float>, ptr %i.cn, align 4, !tbaa !55
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 96
  store <8 x float> %wide.load56, ptr %i.cj, align 4, !tbaa !55
  store <8 x float> %wide.load57, ptr %i.co, align 4, !tbaa !55
  store <8 x float> %wide.load58, ptr %i.cp, align 4, !tbaa !55
  store <8 x float> %wide.load59, ptr %i.cq, align 4, !tbaa !55
  %index.next60 = add nuw i64 %index55, 32        ; 2 uses
  %i.cr = icmp eq i64 %index.next60, %n.vec53
  br i1 %i.cr, label %middle.block61, label %vector.body54, !llvm.loop !490

middle.block61:                                   ; preds = %vector.body54
  %cmp.n62 = icmp eq i64 %i.ca, %n.vec53
  br i1 %cmp.n62, label %._crit_edge, label %vec.epilog.iter.check66

vec.epilog.iter.check66:                          ; preds = %middle.block61
  %min.epilog.iters.check67 = icmp eq i64 %i.ci, 0
  br i1 %min.epilog.iters.check67, label %vec.epilog.scalar.ph65.preheader, label %vec.epilog.ph68, !prof !81

vec.epilog.ph68:                                  ; preds = %vector.main.loop.iter.check50, %vec.epilog.iter.check66
  %vec.epilog.resume.val63 = phi i64 [ %n.vec53, %vec.epilog.iter.check66 ], [ 0, %vector.main.loop.iter.check50 ]
  %n.vec69 = and i64 %i.ca, -4                    ; 3 uses
  br label %vec.epilog.vector.body70

vec.epilog.vector.body70:                         ; preds = %vec.epilog.vector.body70, %vec.epilog.ph68
  %index71 = phi i64 [ %vec.epilog.resume.val63, %vec.epilog.ph68 ], [ %index.next73, %vec.epilog.vector.body70 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %index71
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index71
  %wide.load72 = load <4 x float>, ptr %i.ct, align 4, !tbaa !55
  store <4 x float> %wide.load72, ptr %i.cs, align 4, !tbaa !55
  %index.next73 = add nuw i64 %index71, 4         ; 2 uses
  %i.cu = icmp eq i64 %index.next73, %n.vec69
  br i1 %i.cu, label %vec.epilog.middle.block74, label %vec.epilog.vector.body70, !llvm.loop !491

vec.epilog.middle.block74:                        ; preds = %vec.epilog.vector.body70
  %cmp.n75 = icmp eq i64 %i.ca, %n.vec69
  br i1 %cmp.n75, label %._crit_edge, label %vec.epilog.scalar.ph65.preheader

vec.epilog.scalar.ph65.preheader:                 ; preds = %iter.check64, %vec.epilog.iter.check66, %vec.epilog.middle.block74
  %.017.ph = phi i64 [ 0, %iter.check64 ], [ %n.vec53, %vec.epilog.iter.check66 ], [ %n.vec69, %vec.epilog.middle.block74 ] ; 4 uses
  %i.cv = sub i64 %i.ca, %.017.ph
  %xtraiter80 = and i64 %i.cv, 7                  ; 2 uses
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod81.not, label %vec.epilog.scalar.ph65.prol.loopexit, label %vec.epilog.scalar.ph65.prol

vec.epilog.scalar.ph65.prol:                      ; preds = %vec.epilog.scalar.ph65.preheader, %vec.epilog.scalar.ph65.prol
  %.017.prol = phi i64 [ %i.cz, %vec.epilog.scalar.ph65.prol ], [ %.017.ph, %vec.epilog.scalar.ph65.preheader ] ; 3 uses
  %prol.iter82 = phi i64 [ %prol.iter82.next, %vec.epilog.scalar.ph65.prol ], [ 0, %vec.epilog.scalar.ph65.preheader ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.017.prol
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.017.prol
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !55
  store float %i.cy, ptr %i.cw, align 4, !tbaa !55
  %i.cz = add nuw i64 %.017.prol, 1               ; 2 uses
  %prol.iter82.next = add i64 %prol.iter82, 1     ; 2 uses
  %prol.iter82.cmp.not = icmp eq i64 %prol.iter82.next, %xtraiter80
  br i1 %prol.iter82.cmp.not, label %vec.epilog.scalar.ph65.prol.loopexit, label %vec.epilog.scalar.ph65.prol, !llvm.loop !492

vec.epilog.scalar.ph65.prol.loopexit:             ; preds = %vec.epilog.scalar.ph65.prol, %vec.epilog.scalar.ph65.preheader
  %.017.unr = phi i64 [ %.017.ph, %vec.epilog.scalar.ph65.preheader ], [ %i.cz, %vec.epilog.scalar.ph65.prol ]
  %i.da = sub i64 %.017.ph, %i.ca
  %i.db = icmp ugt i64 %i.da, -8
  br i1 %i.db, label %._crit_edge, label %vec.epilog.scalar.ph65

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph65.prol.loopexit, %vec.epilog.scalar.ph65, %middle.block61, %vec.epilog.middle.block74, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit
  store i64 %i.ca, ptr %i.q, align 8, !tbaa !70
  br label %bb.f

vec.epilog.scalar.ph65:                           ; preds = %vec.epilog.scalar.ph65.prol.loopexit, %vec.epilog.scalar.ph65
  %.017 = phi i64 [ %i.eh, %vec.epilog.scalar.ph65 ], [ %.017.unr, %vec.epilog.scalar.ph65.prol.loopexit ] ; 10 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.017
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.017
  %i.de = load float, ptr %i.dd, align 4, !tbaa !55
  store float %i.de, ptr %i.dc, align 4, !tbaa !55
  %i.df = add nuw i64 %.017, 1                    ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.df
  %i.di = load float, ptr %i.dh, align 4, !tbaa !55
  store float %i.di, ptr %i.dg, align 4, !tbaa !55
  %i.dj = add nuw i64 %.017, 2                    ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.dj
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.dj
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !55
  store float %i.dm, ptr %i.dk, align 4, !tbaa !55
  %i.dn = add nuw i64 %.017, 3                    ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.dn
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.dn
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !55
  store float %i.dq, ptr %i.do, align 4, !tbaa !55
  %i.dr = add nuw i64 %.017, 4                    ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.dr
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.dr
  %i.du = load float, ptr %i.dt, align 4, !tbaa !55
  store float %i.du, ptr %i.ds, align 4, !tbaa !55
  %i.dv = add nuw i64 %.017, 5                    ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.dv
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.dv
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !55
  store float %i.dy, ptr %i.dw, align 4, !tbaa !55
  %i.dz = add nuw i64 %.017, 6                    ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.dz
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.dz
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !55
  store float %i.ec, ptr %i.ea, align 4, !tbaa !55
  %i.ed = add nuw i64 %.017, 7                    ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.ed
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.ed
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !55
  store float %i.eg, ptr %i.ee, align 4, !tbaa !55
  %i.eh = add nuw i64 %.017, 8                    ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.eh, %i.ca
  br i1 %exitcond.not.7, label %._crit_edge, label %vec.epilog.scalar.ph65, !llvm.loop !493

bb.f:                                             ; preds = %bb.c, %._crit_edge, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIN4pbrt19PiecewiseConstant1DENS_3pmr21polymorphic_allocatorIS2_EEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !77
  %i.c = load ptr, ptr %1, align 8, !tbaa !77
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !495
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !495
  store ptr %i.h, ptr %i.e, align 8, !tbaa !495
  store ptr %i.g, ptr %i.f, align 8, !tbaa !495
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.i, align 8, !tbaa !78
  %i.l = load i64, ptr %i.j, align 8, !tbaa !78
  store i64 %i.l, ptr %i.i, align 8, !tbaa !78
  store i64 %i.k, ptr %i.j, align 8, !tbaa !78
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.m, align 8, !tbaa !78
  %i.p = load i64, ptr %i.n, align 8, !tbaa !78
  store i64 %i.p, ptr %i.m, align 8, !tbaa !78
  store i64 %i.o, ptr %i.n, align 8, !tbaa !78
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !74
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %_ZN4pstd6vectorIN4pbrt19PiecewiseConstant1DENS_3pmr21polymorphic_allocatorIS2_EEE5clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt19PiecewiseConstant1DEE7destroyIS3_EEvPT_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt19PiecewiseConstant1DEE7destroyIS3_EEvPT_.exit.i ] ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.u = getelementptr inbounds nuw [80 x i8], ptr %i.t, i64 %indvars.iv.i ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i64 0, ptr %i.v, align 8, !tbaa !70
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !71   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !72
  %i.ab = shl i64 %i.aa, 2
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !73  ; 2 uses
end_hunk_2
