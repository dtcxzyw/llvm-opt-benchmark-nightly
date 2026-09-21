Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/quantize-pvt?download=true
inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 38
begin_hunk_0_@scale_bitcount_lsf:bb.a

vector.ph194:                                     ; preds = %.lr.ph.1
  %n.vec195 = and i64 %i.dj, 2147483640           ; 4 uses
  %i.dk = add nuw nsw i64 %n.vec195, %i.di
  %i.dl = trunc nuw nsw i64 %n.vec195 to i32
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.di
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph194
  %index197 = phi i64 [ 0, %vector.ph194 ], [ %index.next202, %vector.body196 ] ; 2 uses
  %vec.phi198 = phi <4 x i32> [ zeroinitializer, %vector.ph194 ], [ %i.dn, %vector.body196 ]
  %vec.phi199 = phi <4 x i32> [ zeroinitializer, %vector.ph194 ], [ %i.do, %vector.body196 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index197 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load200 = load <4 x i32>, ptr %gep, align 4, !tbaa !7
  %wide.load201 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !7
  %i.dn = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load200, <4 x i32> %vec.phi198) ; 2 uses
  %i.do = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load201, <4 x i32> %vec.phi199) ; 2 uses
  %index.next202 = add nuw i64 %index197, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next202, %n.vec195
  br i1 %i.dp, label %middle.block203, label %vector.body196, !llvm.loop !59

middle.block203:                                  ; preds = %vector.body196
  %rdx.minmax204 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dn, <4 x i32> %i.do)
  %i.dq = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax204) ; 2 uses
  %cmp.n205 = icmp eq i64 %n.vec195, %i.dj
  br i1 %cmp.n205, label %._crit_edge.1, label %scalar.ph192.preheader

scalar.ph192.preheader:                           ; preds = %.lr.ph.1, %middle.block203
  %indvars.iv.1.ph = phi i64 [ %i.di, %.lr.ph.1 ], [ %i.dk, %middle.block203 ]
  %.ph249 = phi i32 [ 0, %.lr.ph.1 ], [ %i.dq, %middle.block203 ]
  %.284100.1.ph = phi i32 [ 0, %.lr.ph.1 ], [ %i.dl, %middle.block203 ]
  br label %scalar.ph192

scalar.ph192:                                     ; preds = %scalar.ph192.preheader, %scalar.ph192
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %scalar.ph192 ], [ %indvars.iv.1.ph, %scalar.ph192.preheader ] ; 2 uses
  %i.dr = phi i32 [ %spec.store.select97.1, %scalar.ph192 ], [ %.ph249, %scalar.ph192.preheader ]
  %.284100.1 = phi i32 [ %i.du, %scalar.ph192 ], [ %.284100.1.ph, %scalar.ph192.preheader ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.1
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !7
  %spec.store.select97.1 = tail call i32 @llvm.smax.i32(i32 %i.dt, i32 %i.dr) ; 2 uses
  %i.du = add nuw nsw i32 %.284100.1, 1           ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.1.not = icmp eq i32 %i.du, %i.dg
  br i1 %exitcond.1.not, label %._crit_edge.1, label %scalar.ph192, !llvm.loop !60

._crit_edge.1:                                    ; preds = %scalar.ph192, %middle.block203
  %spec.store.select97.1.lcssa = phi i32 [ %i.dq, %middle.block203 ], [ %spec.store.select97.1, %scalar.ph192 ]
  %i.dv = add nuw i32 %.3.lcssa, %i.dg
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.1, %._crit_edge
  %.sroa.9.1 = phi i32 [ %spec.store.select97.1.lcssa, %._crit_edge.1 ], [ 0, %._crit_edge ] ; 3 uses
  %.3.lcssa.1 = phi i32 [ %i.dv, %._crit_edge.1 ], [ %.3.lcssa, %._crit_edge ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !7  ; 5 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.lr.ph.2, label %bb.g

.lr.ph.2:                                         ; preds = %bb.f
  %i.dz = sext i32 %.3.lcssa.1 to i64             ; 3 uses
  %i.ea = zext nneg i32 %i.dx to i64              ; 2 uses
  %min.iters.check210 = icmp ult i32 %i.dx, 8
  br i1 %min.iters.check210, label %scalar.ph209.preheader, label %vector.ph211

vector.ph211:                                     ; preds = %.lr.ph.2
  %n.vec212 = and i64 %i.ea, 2147483640           ; 4 uses
  %i.eb = add nsw i64 %n.vec212, %i.dz
  %i.ec = trunc nuw nsw i64 %n.vec212 to i32
  %invariant.gep295 = getelementptr [4 x i8], ptr %0, i64 %i.dz
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %vector.ph211
  %index214 = phi i64 [ 0, %vector.ph211 ], [ %index.next219, %vector.body213 ] ; 2 uses
  %vec.phi215 = phi <4 x i32> [ zeroinitializer, %vector.ph211 ], [ %i.ee, %vector.body213 ]
  %vec.phi216 = phi <4 x i32> [ zeroinitializer, %vector.ph211 ], [ %i.ef, %vector.body213 ]
  %gep296 = getelementptr [4 x i8], ptr %invariant.gep295, i64 %index214 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %gep296, i64 16
  %wide.load217 = load <4 x i32>, ptr %gep296, align 4, !tbaa !7
  %wide.load218 = load <4 x i32>, ptr %i.ed, align 4, !tbaa !7
  %i.ee = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load217, <4 x i32> %vec.phi215) ; 2 uses
  %i.ef = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load218, <4 x i32> %vec.phi216) ; 2 uses
  %index.next219 = add nuw i64 %index214, 8       ; 2 uses
  %i.eg = icmp eq i64 %index.next219, %n.vec212
  br i1 %i.eg, label %middle.block220, label %vector.body213, !llvm.loop !61

middle.block220:                                  ; preds = %vector.body213
  %rdx.minmax221 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ee, <4 x i32> %i.ef)
  %i.eh = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax221) ; 2 uses
  %cmp.n222 = icmp eq i64 %n.vec212, %i.ea
  br i1 %cmp.n222, label %._crit_edge.2, label %scalar.ph209.preheader

scalar.ph209.preheader:                           ; preds = %.lr.ph.2, %middle.block220
  %indvars.iv.2.ph = phi i64 [ %i.dz, %.lr.ph.2 ], [ %i.eb, %middle.block220 ]
  %.ph245 = phi i32 [ 0, %.lr.ph.2 ], [ %i.eh, %middle.block220 ]
  %.284100.2.ph = phi i32 [ 0, %.lr.ph.2 ], [ %i.ec, %middle.block220 ]
  br label %scalar.ph209

scalar.ph209:                                     ; preds = %scalar.ph209.preheader, %scalar.ph209
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %scalar.ph209 ], [ %indvars.iv.2.ph, %scalar.ph209.preheader ] ; 2 uses
  %i.ei = phi i32 [ %spec.store.select97.2, %scalar.ph209 ], [ %.ph245, %scalar.ph209.preheader ]
  %.284100.2 = phi i32 [ %i.el, %scalar.ph209 ], [ %.284100.2.ph, %scalar.ph209.preheader ]
  %i.ej = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.2
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !7
  %spec.store.select97.2 = tail call i32 @llvm.smax.i32(i32 %i.ek, i32 %i.ei) ; 2 uses
  %i.el = add nuw nsw i32 %.284100.2, 1           ; 2 uses
  %indvars.iv.next.2 = add nsw i64 %indvars.iv.2, 1
  %exitcond.2.not = icmp eq i32 %i.el, %i.dx
  br i1 %exitcond.2.not, label %._crit_edge.2, label %scalar.ph209, !llvm.loop !62

._crit_edge.2:                                    ; preds = %scalar.ph209, %middle.block220
  %spec.store.select97.2.lcssa = phi i32 [ %i.eh, %middle.block220 ], [ %spec.store.select97.2, %scalar.ph209 ]
  %i.em = add i32 %.3.lcssa.1, %i.dx
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.2, %bb.f
  %.sroa.15.1 = phi i32 [ %spec.store.select97.2.lcssa, %._crit_edge.2 ], [ 0, %bb.f ] ; 3 uses
  %.3.lcssa.2 = phi i32 [ %i.em, %._crit_edge.2 ], [ %.3.lcssa.1, %bb.f ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !7  ; 4 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %.lr.ph.3, label %.loopexit

.lr.ph.3:                                         ; preds = %bb.g
  %i.eq = sext i32 %.3.lcssa.2 to i64             ; 3 uses
  %i.er = zext nneg i32 %i.eo to i64              ; 2 uses
  %min.iters.check227 = icmp ult i32 %i.eo, 8
  br i1 %min.iters.check227, label %scalar.ph226.preheader, label %vector.ph228

vector.ph228:                                     ; preds = %.lr.ph.3
  %n.vec229 = and i64 %i.er, 2147483640           ; 4 uses
  %i.es = add nsw i64 %n.vec229, %i.eq
  %i.et = trunc nuw nsw i64 %n.vec229 to i32
  %invariant.gep297 = getelementptr [4 x i8], ptr %0, i64 %i.eq
  br label %vector.body230

vector.body230:                                   ; preds = %vector.body230, %vector.ph228
  %index231 = phi i64 [ 0, %vector.ph228 ], [ %index.next236, %vector.body230 ] ; 2 uses
  %vec.phi232 = phi <4 x i32> [ zeroinitializer, %vector.ph228 ], [ %i.ev, %vector.body230 ]
  %vec.phi233 = phi <4 x i32> [ zeroinitializer, %vector.ph228 ], [ %i.ew, %vector.body230 ]
  %gep298 = getelementptr [4 x i8], ptr %invariant.gep297, i64 %index231 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %gep298, i64 16
  %wide.load234 = load <4 x i32>, ptr %gep298, align 4, !tbaa !7
  %wide.load235 = load <4 x i32>, ptr %i.eu, align 4, !tbaa !7
  %i.ev = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load234, <4 x i32> %vec.phi232) ; 2 uses
  %i.ew = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load235, <4 x i32> %vec.phi233) ; 2 uses
  %index.next236 = add nuw i64 %index231, 8       ; 2 uses
  %i.ex = icmp eq i64 %index.next236, %n.vec229
  br i1 %i.ex, label %middle.block237, label %vector.body230, !llvm.loop !63

middle.block237:                                  ; preds = %vector.body230
  %rdx.minmax238 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ev, <4 x i32> %i.ew)
  %i.ey = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax238) ; 2 uses
  %cmp.n239 = icmp eq i64 %n.vec229, %i.er
  br i1 %cmp.n239, label %.loopexit, label %scalar.ph226.preheader

scalar.ph226.preheader:                           ; preds = %.lr.ph.3, %middle.block237
  %indvars.iv.3.ph = phi i64 [ %i.eq, %.lr.ph.3 ], [ %i.es, %middle.block237 ]
  %.ph = phi i32 [ 0, %.lr.ph.3 ], [ %i.ey, %middle.block237 ]
  %.284100.3.ph = phi i32 [ 0, %.lr.ph.3 ], [ %i.et, %middle.block237 ]
  br label %scalar.ph226

scalar.ph226:                                     ; preds = %scalar.ph226.preheader, %scalar.ph226
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %scalar.ph226 ], [ %indvars.iv.3.ph, %scalar.ph226.preheader ] ; 2 uses
  %i.ez = phi i32 [ %spec.store.select97.3, %scalar.ph226 ], [ %.ph, %scalar.ph226.preheader ]
  %.284100.3 = phi i32 [ %i.fc, %scalar.ph226 ], [ %.284100.3.ph, %scalar.ph226.preheader ]
  %i.fa = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.3
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !7
  %spec.store.select97.3 = tail call i32 @llvm.smax.i32(i32 %i.fb, i32 %i.ez) ; 2 uses
  %i.fc = add nuw nsw i32 %.284100.3, 1           ; 2 uses
  %indvars.iv.next.3 = add nsw i64 %indvars.iv.3, 1
  %exitcond.3.not = icmp eq i32 %i.fc, %i.eo
  br i1 %exitcond.3.not, label %.loopexit, label %scalar.ph226, !llvm.loop !64

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader.3
  %lcmp.mod278.not = icmp eq i32 %xtraiter277, 0
  br i1 %lcmp.mod278.not, label %.loopexit, label %.preheader.3.epil.preheader

.preheader.3.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.lr.ph.3
  %indvars.iv135.3.epil.init = phi i64 [ %i.cf, %.preheader.lr.ph.3 ], [ %indvars.iv.next136.3.1, %.loopexit.loopexit.unr-lcssa ]
  %.lcssa111.3.epil.init = phi i32 [ 0, %.preheader.lr.ph.3 ], [ %spec.store.select.2.3.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod280 = trunc i32 %i.ce to i1
  tail call void @llvm.assume(i1 %lcmp.mod280)
  %i.fd = getelementptr inbounds [12 x i8], ptr %i.h, i64 %indvars.iv135.3.epil.init ; 3 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !7
  %spec.store.select.3.epil = tail call i32 @llvm.smax.i32(i32 %i.fe, i32 %.lcssa111.3.epil.init)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !7
  %spec.store.select.1.3.epil = tail call i32 @llvm.smax.i32(i32 %i.fg, i32 %spec.store.select.3.epil)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !7
  %spec.store.select.2.3.epil = tail call i32 @llvm.smax.i32(i32 %i.fi, i32 %spec.store.select.1.3.epil)
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph226, %.preheader.3.epil.preheader, %.loopexit.loopexit.unr-lcssa, %middle.block237, %bb.g, %bb.d
  %.sroa.0.2 = phi i32 [ %.sroa.0.0, %bb.d ], [ %.sroa.0.1, %bb.g ], [ %.sroa.0.1, %middle.block237 ], [ %.sroa.0.0, %.preheader.3.epil.preheader ], [ %.sroa.0.0, %.loopexit.loopexit.unr-lcssa ], [ %.sroa.0.1, %scalar.ph226 ] ; 2 uses
  %.sroa.9.0 = phi i32 [ %.sroa.9.2, %bb.d ], [ %.sroa.9.1, %bb.g ], [ %.sroa.9.1, %middle.block237 ], [ %.sroa.9.2, %.preheader.3.epil.preheader ], [ %.sroa.9.2, %.loopexit.loopexit.unr-lcssa ], [ %.sroa.9.1, %scalar.ph226 ] ; 2 uses
  %.sroa.15.0 = phi i32 [ %.sroa.15.2, %bb.d ], [ %.sroa.15.1, %bb.g ], [ %.sroa.15.1, %middle.block237 ], [ %.sroa.15.2, %.preheader.3.epil.preheader ], [ %.sroa.15.2, %.loopexit.loopexit.unr-lcssa ], [ %.sroa.15.1, %scalar.ph226 ] ; 2 uses
  %.sroa.21.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.g ], [ %i.ey, %middle.block237 ], [ %spec.store.select.2.3.epil, %.preheader.3.epil.preheader ], [ %spec.store.select.2.3.1, %.loopexit.loopexit.unr-lcssa ], [ %spec.store.select97.3, %scalar.ph226 ] ; 2 uses
  %.092 = phi i64 [ 1, %bb.d ], [ 0, %bb.g ], [ 0, %middle.block237 ], [ 1, %.preheader.3.epil.preheader ], [ 1, %.loopexit.loopexit.unr-lcssa ], [ 0, %scalar.ph226 ]
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr @max_range_sfac_tab, i64 %.
  %2 = load <4 x i32>, ptr %i.fj, align 16, !tbaa !7
  %3 = insertelement <4 x i32> poison, i32 %.sroa.0.2, i64 0
  %4 = insertelement <4 x i32> %3, i32 %.sroa.9.0, i64 1
  %5 = insertelement <4 x i32> %4, i32 %.sroa.15.0, i64 2
  %6 = insertelement <4 x i32> %5, i32 %.sroa.21.0, i64 3
  %7 = icmp sgt <4 x i32> %6, %2
  %8 = bitcast <4 x i1> %7 to i4                  ; 2 uses
  %.not96 = icmp eq i4 %8, 0
  br i1 %.not96, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.loopexit
  %i.fk = getelementptr inbounds nuw [48 x i8], ptr @nr_of_sfb_block, i64 %.
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %.092 ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !65
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.fo = zext nneg i32 %.sroa.0.2 to i64
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr @scale_bitcount_lsf.log2tab, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !7  ; 4 uses
  store i32 %i.fq, ptr %i.fn, align 8, !tbaa !7
  %i.fr = zext nneg i32 %.sroa.9.0 to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr @scale_bitcount_lsf.log2tab, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !7  ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 108
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !7
  %i.fv = zext nneg i32 %.sroa.15.0 to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr @scale_bitcount_lsf.log2tab, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !7  ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.fx, ptr %i.fy, align 8, !tbaa !7
  %i.fz = zext nneg i32 %.sroa.21.0 to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr @scale_bitcount_lsf.log2tab, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !7  ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !7
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.gd = mul i32 %i.fq, 5
  %i.ge = add i32 %i.gd, %i.ft
  %i.gf = shl i32 %i.ge, 4
  %i.gg = shl i32 %i.fx, 2
  %i.gh = add i32 %i.gg, %i.gf
  %i.gi = add i32 %i.gh, %i.gb
  br label %.critedge.loopexit

bb.j:                                             ; preds = %bb.h
  %i.gj = mul i32 %i.fq, 3
  %i.gk = add i32 %i.gj, 500
  %i.gl = add i32 %i.gk, %i.ft
  br label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %bb.j, %bb.i
  %.sink = phi i32 [ %i.gi, %bb.i ], [ %i.gl, %bb.j ]
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %.sink, ptr %i.gm, align 8, !tbaa !28
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 5 uses
  store i32 0, ptr %i.gn, align 4, !tbaa !27
  %i.go = load i32, ptr %i.fl, align 16, !tbaa !7
  %i.gp = mul i32 %i.go, %i.fq                    ; 2 uses
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !27
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !7
  %i.gs = mul i32 %i.gr, %i.ft
  %i.gt = add i32 %i.gp, %i.gs                    ; 2 uses
  store i32 %i.gt, ptr %i.gn, align 4, !tbaa !27
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !7
  %i.gw = mul i32 %i.gv, %i.fx
  %i.gx = add i32 %i.gt, %i.gw                    ; 2 uses
  store i32 %i.gx, ptr %i.gn, align 4, !tbaa !27
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !7
  %i.ha = mul i32 %i.gz, %i.gb
  %i.hb = add i32 %i.gx, %i.ha
  store i32 %i.hb, ptr %i.gn, align 4, !tbaa !27
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.loopexit
  %9 = tail call range(i4 0, 5) i4 @llvm.ctpop.i4(i4 %8)
  %10 = zext nneg i4 %9 to i32
  ret i32 %10
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @calc_xmin(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #10 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load i32, ptr %i.b, align 8, !tbaa !78
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.e = load i32, ptr %i.d, align 4, !tbaa !21   ; 3 uses
  %i.f = icmp ult i32 %i.e, 12                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %.preheader114.lr.ph, label %.preheader112

.preheader114.lr.ph:                              ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.h = zext nneg i32 %i.e to i64
  br label %.preheader114

.preheader114:                                    ; preds = %.preheader114.lr.ph, %.preheader114
  %indvars.iv = phi i64 [ %i.h, %.preheader114.lr.ph ], [ %indvars.iv.next, %.preheader114 ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @ATH_s, i64 %indvars.iv ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %indvars.iv ; 3 uses
  %i.k = load double, ptr %i.i, align 8, !tbaa !14 ; 2 uses
  store double %i.k, ptr %i.j, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store double %i.k, ptr %i.l, align 8, !tbaa !14
  %i.m = load double, ptr %i.i, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store double %i.m, ptr %i.n, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.o, 12
  br i1 %exitcond.not, label %.preheader112, label %.preheader114, !llvm.loop !66

.preheader112:                                    ; preds = %.preheader114, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.q = load i32, ptr %i.p, align 8, !tbaa !20   ; 3 uses
  %.not134 = icmp eq i32 %i.q, 0
  br i1 %.not134, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader112
  %wide.trip.count = zext i32 %i.q to i64         ; 5 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  %i.r = add i64 %i.a, xor (i64 ptrtoaddr (ptr @ATH_l to i64), i64 -1)
  %diff.check = icmp ult i64 %i.r, 31
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader212, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @ATH_l, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x double>, ptr %i.s, align 16, !tbaa !14
  %wide.load208 = load <2 x double>, ptr %i.t, align 16, !tbaa !14
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x double> %wide.load, ptr %i.u, align 8, !tbaa !14
  store <2 x double> %wide.load208, ptr %i.v, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader212

.lr.ph.preheader212:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv141.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader212, %.lr.ph.prol
  %indvars.iv141.prol = phi i64 [ %indvars.iv.next142.prol, %.lr.ph.prol ], [ %indvars.iv141.ph, %.lr.ph.preheader212 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader212 ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @ATH_l, i64 %indvars.iv141.prol
  %i.y = load double, ptr %i.x, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv141.prol
  store double %i.y, ptr %i.z, align 8, !tbaa !14
  %indvars.iv.next142.prol = add nuw nsw i64 %indvars.iv141.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !68

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader212
  %indvars.iv141.unr = phi i64 [ %indvars.iv141.ph, %.lr.ph.preheader212 ], [ %indvars.iv.next142.prol, %.lr.ph.prol ]
  %i.aa = sub nsw i64 %indvars.iv141.ph, %wide.trip.count
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv141 = phi i64 [ %indvars.iv.next142.3, %.lr.ph ], [ %indvars.iv141.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @ATH_l, i64 %indvars.iv141
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv141
  store double %i.ad, ptr %i.ae, align 8, !tbaa !14
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @ATH_l, i64 %indvars.iv.next142
  %i.ag = load double, ptr %i.af, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next142
  store double %i.ag, ptr %i.ah, align 8, !tbaa !14
  %indvars.iv.next142.1 = add nuw nsw i64 %indvars.iv141, 2 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @ATH_l, i64 %indvars.iv.next142.1
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next142.1
  store double %i.aj, ptr %i.ak, align 8, !tbaa !14
  %indvars.iv.next142.2 = add nuw nsw i64 %indvars.iv141, 3 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @ATH_l, i64 %indvars.iv.next142.2
  %i.am = load double, ptr %i.al, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next142.2
  store double %i.am, ptr %i.an, align 8, !tbaa !14
  %indvars.iv.next142.3 = add nuw nsw i64 %indvars.iv141, 4 ; 2 uses
  %exitcond144.not.3 = icmp eq i64 %indvars.iv.next142.3, %wide.trip.count
  br i1 %exitcond144.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !69

bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %.lr.ph125, label %.preheader

.lr.ph125:                                        ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.ar = load float, ptr @masking_lower, align 4
  %i.as = fpext float %i.ar to double             ; 6 uses
  %i.at = zext nneg i32 %i.e to i64               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 92), i64 %i.at
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !7
  br label %bb.d

.loopexit111:                                     ; preds = %.loopexit111.loopexit136, %.loopexit111.loopexit
  %..0.2.sink = phi double [ %..0.2, %.loopexit111.loopexit136 ], [ %..0.us.2, %.loopexit111.loopexit ]
  %.sink = phi double [ %i.gi, %.loopexit111.loopexit136 ], [ %i.fv, %.loopexit111.loopexit ]
  %.298.1.sink = phi i32 [ %.298.1, %.loopexit111.loopexit136 ], [ %.298.us.1, %.loopexit111.loopexit ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store double %..0.2.sink, ptr %i.au, align 8, !tbaa !14
  %i.av = load double, ptr %i.bk, align 8, !tbaa !14
  %i.aw = fcmp ogt double %.sink, %i.av
  %i.ax = zext i1 %i.aw to i32
  %.298.2 = add nsw i32 %.298.1.sink, %i.ax       ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next159, 12
  br i1 %exitcond161.not, label %.preheader, label %bb.d, !llvm.loop !70

.preheader:                                       ; preds = %.loopexit111, %bb.c
  %.096.lcssa = phi i32 [ 0, %bb.c ], [ %.298.2, %.loopexit111 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !20 ; 2 uses
  %.not135 = icmp eq i32 %i.az, 0
  br i1 %.not135, label %.loopexit, label %.lr.ph132

.lr.ph132:                                        ; preds = %.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.bb = load float, ptr @masking_lower, align 4
  %i.bc = fpext float %i.bb to double
  %wide.trip.count170 = zext i32 %i.az to i64
  %.pre172 = load i32, ptr @scalefac_band, align 16, !tbaa !7
  br label %bb.k

bb.d:                                             ; preds = %.lr.ph125, %.loopexit111
  %i.bd = phi i32 [ %.pre, %.lr.ph125 ], [ %i.bf, %.loopexit111 ] ; 3 uses
  %indvars.iv158 = phi i64 [ %i.at, %.lr.ph125 ], [ %indvars.iv.next159, %.loopexit111 ] ; 5 uses
  %.096123 = phi i32 [ 0, %.lr.ph125 ], [ %.298.2, %.loopexit111 ] ; 2 uses
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 92), i64 %indvars.iv.next159
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !7  ; 4 uses
  %i.bg = sub nsw i32 %i.bf, %i.bd
  %i.bh = icmp slt i32 %i.bd, %i.bf
  %i.bi = sitofp i32 %i.bg to double              ; 4 uses
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %indvars.iv158 ; 6 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr @ATH_s, i64 %indvars.iv158 ; 7 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %indvars.iv158 ; 5 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %indvars.iv158 ; 6 uses
  br i1 %i.bh, label %.preheader110.us.preheader, label %.split

.preheader110.us.preheader:                       ; preds = %bb.d
  %i.bn = sext i32 %i.bd to i64                   ; 8 uses
  %wide.trip.count152 = sext i32 %i.bf to i64     ; 5 uses
  %i.bo = sub nsw i64 %wide.trip.count152, %i.bn  ; 3 uses
  %i.bp = xor i64 %i.bn, -1
  %i.bq = add nsw i64 %i.bp, %wide.trip.count152  ; 3 uses
  %xtraiter214 = and i64 %i.bo, 3                 ; 2 uses
  %lcmp.mod215.not = icmp eq i64 %xtraiter214, 0
  br i1 %lcmp.mod215.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader110.us.preheader, %.prol.preheader
  %indvars.iv149.prol = phi i64 [ %indvars.iv.next150.prol, %.prol.preheader ], [ %i.bn, %.preheader110.us.preheader ] ; 2 uses
  %.092119.us.prol = phi double [ %i.bu, %.prol.preheader ], [ 0.000000e+00, %.preheader110.us.preheader ]
  %prol.iter216 = phi i64 [ %prol.iter216.next, %.prol.preheader ], [ 0, %.preheader110.us.preheader ]
  %.idx.prol = mul nsw i64 %indvars.iv149.prol, 24
  %i.br = getelementptr inbounds i8, ptr %1, i64 %.idx.prol
  %i.bs = load double, ptr %i.br, align 8, !tbaa !14 ; 2 uses
  %i.bt = fmul double %i.bs, %i.bs
  %i.bu = fadd double %.092119.us.prol, %i.bt     ; 3 uses
end_hunk_0
begin_hunk_1_@bin_search_StepSize2:bb.a
  %i.p = icmp slt i32 %i.f, %1
  br i1 %i.p, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.q = icmp ne i32 %.039, 1
  %or.cond3 = or i1 %i.g, %i.q
  br i1 %or.cond3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = lshr i32 %i.i, 1                         ; 2 uses
  store i32 %i.r, ptr @bin_search_StepSize2.CurrentStep, align 4, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = phi i32 [ %i.i, %bb.h ], [ %i.r, %bb.i ]
  %.229 = phi i32 [ %.02737, %bb.h ], [ 1, %bb.i ]
  %i.t = sub nsw i32 %.02538, %i.s                ; 3 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.j
  %.3 = phi i32 [ %.128, %bb.f ], [ %.229, %bb.j ]
  %.126 = phi i32 [ %i.n, %bb.f ], [ %i.t, %bb.j ] ; 3 uses
  %.1 = phi i32 [ 1, %bb.f ], [ 2, %bb.j ]
  store i32 %.126, ptr %i.a, align 4, !tbaa !25
  %i.v = tail call i32 @count_bits(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5) #14 ; 2 uses
  %i.w = load i32, ptr @bin_search_StepSize2.CurrentStep, align 4, !tbaa !7 ; 2 uses
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.k, %bb.f, %bb.j, %bb.g, %bb.a
  %.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.f, %bb.g ], [ %i.f, %bb.j ], [ %i.f, %bb.f ], [ %i.v, %bb.k ]
  %.2 = phi i32 [ %2, %bb.a ], [ %.02538, %bb.g ], [ %i.t, %bb.j ], [ %i.n, %bb.f ], [ %.126, %bb.k ]
  %i.y = add i32 %2, -4
  %i.z = sub i32 %i.y, %.2
  %i.aa = icmp ult i32 %i.z, -7
  %. = select i1 %i.aa, i32 4, i32 2
  store i32 %., ptr @bin_search_StepSize2.CurrentStep, align 4, !tbaa !7
  ret i32 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @quantize_xrpow(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @ipow20, i64 %i.c
  %i.e = load double, ptr %i.d, align 8, !tbaa !14
  %i.f = insertelement <4 x double> poison, double %i.e, i64 0
  %i.g = shufflevector <4 x double> %i.f, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.062 = phi ptr [ %0, %bb.a ], [ %i.i, %bb.b ]  ; 3 uses
  %.05861 = phi ptr [ %1, %bb.a ], [ %i.am, %bb.b ] ; 3 uses
  %.05960 = phi i32 [ 72, %bb.a ], [ %i.bp, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.062, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %.062, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %.05861, i64 16
  %i.k = load <4 x double>, ptr %.062, align 8, !tbaa !14
  %i.l = fmul <4 x double> %i.g, %i.k             ; 5 uses
  %i.m = extractelement <4 x double> %i.l, i64 0
  %i.n = fptosi double %i.m to i32
  %i.o = extractelement <4 x double> %i.l, i64 1
  %i.p = fptosi double %i.o to i32
  %i.q = extractelement <4 x double> %i.l, i64 2
  %i.r = fptosi double %i.q to i32
  %i.s = extractelement <4 x double> %i.l, i64 3
  %i.t = fptosi double %i.s to i32
  %i.u = sext i32 %i.n to i64
  %i.v = getelementptr inbounds [8 x i8], ptr @adj43, i64 %i.u
  %i.w = load double, ptr %i.v, align 8, !tbaa !14
  %i.x = sext i32 %i.p to i64
  %i.y = getelementptr inbounds [8 x i8], ptr @adj43, i64 %i.x
  %i.z = load double, ptr %i.y, align 8, !tbaa !14
  %i.aa = sext i32 %i.r to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr @adj43, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !14
  %i.ad = sext i32 %i.t to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr @adj43, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !14
  %i.ag = insertelement <4 x double> poison, double %i.w, i64 0
  %i.ah = insertelement <4 x double> %i.ag, double %i.z, i64 1
  %i.ai = insertelement <4 x double> %i.ah, double %i.ac, i64 2
  %i.aj = insertelement <4 x double> %i.ai, double %i.af, i64 3
  %i.ak = fadd <4 x double> %i.l, %i.aj
  %i.al = fptosi <4 x double> %i.ak to <4 x i32>
  store <4 x i32> %i.al, ptr %.05861, align 4, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %.05861, i64 32
  %i.an = load <4 x double>, ptr %i.h, align 8, !tbaa !14
  %i.ao = fmul <4 x double> %i.g, %i.an           ; 5 uses
  %i.ap = extractelement <4 x double> %i.ao, i64 0
  %i.aq = fptosi double %i.ap to i32
  %i.ar = extractelement <4 x double> %i.ao, i64 1
  %i.as = fptosi double %i.ar to i32
  %i.at = extractelement <4 x double> %i.ao, i64 2
  %i.au = fptosi double %i.at to i32
  %i.av = extractelement <4 x double> %i.ao, i64 3
  %i.aw = fptosi double %i.av to i32
  %i.ax = sext i32 %i.aq to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr @adj43, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !14
  %i.ba = sext i32 %i.as to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr @adj43, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !14
  %i.bd = sext i32 %i.au to i64
  %i.be = getelementptr inbounds [8 x i8], ptr @adj43, i64 %i.bd
  %i.bf = load double, ptr %i.be, align 8, !tbaa !14
  %i.bg = sext i32 %i.aw to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr @adj43, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !14
  %i.bj = insertelement <4 x double> poison, double %i.az, i64 0
  %i.bk = insertelement <4 x double> %i.bj, double %i.bc, i64 1
  %i.bl = insertelement <4 x double> %i.bk, double %i.bf, i64 2
  %i.bm = insertelement <4 x double> %i.bl, double %i.bi, i64 3
  %i.bn = fadd <4 x double> %i.ao, %i.bm
  %i.bo = fptosi <4 x double> %i.bn to <4 x i32>
  store <4 x i32> %i.bo, ptr %i.j, align 4, !tbaa !7
  %i.bp = add nsw i32 %.05960, -1
  %i.bq = icmp samesign ugt i32 %.05960, 1
  br i1 %i.bq, label %bb.b, label %bb.c, !llvm.loop !82

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @quantize_xrpow_ISO(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #10 {
vector.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @ipow20, i64 %i.c
  %i.e = load double, ptr %i.d, align 8, !tbaa !14 ; 2 uses
  %i.f = fdiv double 5.946000e-01, %i.e
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.e, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert17 = insertelement <2 x double> poison, double %i.f, i64 0
  %broadcast.splat18 = shufflevector <2 x double> %broadcast.splatinsert17, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %i.g  ; 2 uses
  %i.h = shl i64 %index, 2
  %next.gep19 = getelementptr i8, ptr %1, i64 %i.h ; 2 uses
  %i.i = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !14 ; 2 uses
  %wide.load20 = load <2 x double>, ptr %i.i, align 8, !tbaa !14 ; 2 uses
  %i.j = fcmp ogt <2 x double> %broadcast.splat18, %wide.load
  %i.k = fcmp ogt <2 x double> %broadcast.splat18, %wide.load20
  %i.l = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> splat (double 4.054000e-01))
  %i.m = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load20, <2 x double> splat (double 4.054000e-01))
  %i.n = fptosi <2 x double> %i.l to <2 x i32>
  %i.o = fptosi <2 x double> %i.m to <2 x i32>
  %i.p = select <2 x i1> %i.j, <2 x i32> zeroinitializer, <2 x i32> %i.n
  %i.q = select <2 x i1> %i.k, <2 x i32> zeroinitializer, <2 x i32> %i.o
  %i.r = getelementptr i8, ptr %next.gep19, i64 8
  store <2 x i32> %i.p, ptr %next.gep19, align 4, !tbaa !7
  store <2 x i32> %i.q, ptr %i.r, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, 576
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  ret void
}

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v16i32(<16 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v8i32(<8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.ctpop.i4(i4) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"float", !5, i64 0}
!12 = !{!"", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !10, i64 128, !10, i64 136, !6, i64 144, !6, i64 148, !11, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !8, i64 168, !8, i64 176, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212, !11, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276}
!13 = !{!"double", !5, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!12, !6, i64 204}
!17 = !{!"p1 int", !9, i64 0}
!18 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !5, i64 32, !5, i64 44, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !17, i64 96, !5, i64 104}
!19 = !{!18, !6, i64 24}
!20 = !{!18, !6, i64 80}
!21 = !{!18, !6, i64 84}
!22 = !{!12, !6, i64 148}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!18, !6, i64 12}
!26 = !{!18, !6, i64 64}
!27 = !{!18, !6, i64 76}
!28 = !{!18, !6, i64 16}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
!33 = distinct !{!33, !15}
!34 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !5, i64 12, !5, i64 48}
!35 = !{!34, !6, i64 8}
!36 = !{!12, !8, i64 168}
!37 = !{!12, !6, i64 224}
!38 = !{!12, !6, i64 192}
!39 = !{!34, !6, i64 0}
!40 = !{!12, !6, i64 228}
!41 = !{!12, !6, i64 200}
!42 = distinct !{!42, !15}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
!46 = !{!12, !6, i64 16}
!47 = distinct !{!47, !"LVerDomain"}
!48 = distinct !{!48, !47}
!49 = distinct !{!49, !47}
!50 = distinct !{!50, !15, !23, !24}
!51 = distinct !{!51, !15, !23}
!52 = !{!48}
!53 = !{!49}
!54 = distinct !{!54, !15}
!55 = distinct !{!55, !15}
!56 = distinct !{!56, !15}
!57 = distinct !{!57, !15, !23, !24}
!58 = distinct !{!58, !15, !24, !23}
!59 = distinct !{!59, !15, !23, !24}
!60 = distinct !{!60, !15, !24, !23}
!61 = distinct !{!61, !15, !23, !24}
!62 = distinct !{!62, !15, !24, !23}
!63 = distinct !{!63, !15, !23, !24}
!64 = distinct !{!64, !15, !24, !23}
!65 = !{!18, !17, i64 96}
!66 = distinct !{!66, !15}
!67 = distinct !{!67, !15, !23, !24}
!68 = distinct !{!68, !79}
!69 = distinct !{!69, !15, !23}
!70 = distinct !{!70, !15}
!71 = distinct !{!71, !79}
!72 = distinct !{!72, !15}
!73 = distinct !{!73, !79}
!74 = distinct !{!74, !79}
!75 = distinct !{!75, !79}
!76 = distinct !{!76, !15}
!77 = distinct !{!77, !15}
!78 = !{!12, !6, i64 144}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = distinct !{!80, !15}
!81 = distinct !{!81, !15}
!82 = distinct !{!82, !15}
!83 = distinct !{!83, !15, !23, !24}
end_hunk_1
