Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/kuhn_munkres?download=true
inline.NumInlined: 276
inline.NumDeleted: 152
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2cv6detail8tracking11KuhnMunkres3RunEv:bb.a
  %wide.load177 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !35
  %i.cr = icmp eq <4 x i32> %wide.load177, zeroinitializer ; 4 uses
  %i.cs = extractelement <4 x i1> %i.cr, i64 0
  br i1 %i.cs, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.ct = extractelement <4 x float> %i.cp, i64 0
  %i.cu = fsub float %i.ct, %i.cf
  store float %i.cu, ptr %i.co, align 4, !tbaa !57
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cv = extractelement <4 x i1> %i.cr, i64 1
  br i1 %i.cv, label %pred.store.if178, label %pred.store.continue179

pred.store.if178:                                 ; preds = %pred.store.continue
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %index
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = extractelement <4 x float> %i.cp, i64 1
  %i.cz = fsub float %i.cy, %i.cf
  store float %i.cz, ptr %i.cx, align 4, !tbaa !57
  br label %pred.store.continue179

pred.store.continue179:                           ; preds = %pred.store.if178, %pred.store.continue
  %i.da = extractelement <4 x i1> %i.cr, i64 2
  br i1 %i.da, label %pred.store.if180, label %pred.store.continue181

pred.store.if180:                                 ; preds = %pred.store.continue179
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %index
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = extractelement <4 x float> %i.cp, i64 2
  %i.de = fsub float %i.dd, %i.cf
  store float %i.de, ptr %i.dc, align 4, !tbaa !57
  br label %pred.store.continue181

pred.store.continue181:                           ; preds = %pred.store.if180, %pred.store.continue179
  %i.df = extractelement <4 x i1> %i.cr, i64 3
  br i1 %i.df, label %pred.store.if182, label %pred.store.continue183

pred.store.if182:                                 ; preds = %pred.store.continue181
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %index
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.di = extractelement <4 x float> %i.cp, i64 3
  %i.dj = fsub float %i.di, %i.cf
  store float %i.dj, ptr %i.dh, align 4, !tbaa !57
  br label %pred.store.continue183

pred.store.continue183:                           ; preds = %pred.store.if182, %pred.store.continue181
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %pred.store.continue183
  br i1 %cmp.n, label %._crit_edge.i54, label %.lr.ph.split.i.preheader184

.lr.ph.split.i.preheader184:                      ; preds = %.lr.ph.split.i.preheader, %middle.block
  %indvars.iv.i51.ph = phi i64 [ 0, %.lr.ph.split.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %bb.o
  %indvars.iv22.i = phi i64 [ %indvars.iv.next23.i.1, %bb.o ], [ 0, %.lr.ph.split.us.i.preheader ] ; 4 uses
  %niter202 = phi i64 [ %niter202.next.1, %bb.o ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv22.i
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !35
  %.not14.us.i = icmp eq i32 %i.dm, 0
  br i1 %.not14.us.i, label %bb.m, label %.lr.ph.split.us.i.1

bb.m:                                             ; preds = %.lr.ph.split.us.i
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv22.i ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !57
  %i.dp = fsub float %i.do, %i.cf
  store float %i.dp, ptr %i.dn, align 4, !tbaa !57
  br label %.lr.ph.split.us.i.1

.lr.ph.split.us.i.1:                              ; preds = %bb.m, %.lr.ph.split.us.i
  %indvars.iv.next23.i = or disjoint i64 %indvars.iv22.i, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next23.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !35
  %.not14.us.i.1 = icmp eq i32 %i.dr, 0
  br i1 %.not14.us.i.1, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.split.us.i.1
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next23.i ; 2 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !57
  %i.du = fsub float %i.dt, %i.cf
  store float %i.du, ptr %i.ds, align 4, !tbaa !57
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.split.us.i.1
  %indvars.iv.next23.i.1 = add nuw nsw i64 %indvars.iv22.i, 2 ; 2 uses
  %niter202.next.1 = add i64 %niter202, 2         ; 2 uses
  %niter202.ncmp.1 = icmp eq i64 %niter202.next.1, %unroll_iter201
  br i1 %niter202.ncmp.1, label %._crit_edge.i54.loopexit.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !4

._crit_edge.i54.loopexit.unr-lcssa:               ; preds = %bb.o
  br i1 %lcmp.mod199.not, label %._crit_edge.i54, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %._crit_edge.i54.loopexit.unr-lcssa, %.lr.ph.split.us.i.preheader
  %indvars.iv22.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %indvars.iv.next23.i.1, %._crit_edge.i54.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod200)
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv22.i.epil.init
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !35
  %.not14.us.i.epil = icmp eq i32 %i.dw, 0
  br i1 %.not14.us.i.epil, label %bb.p, label %._crit_edge.i54

bb.p:                                             ; preds = %.lr.ph.split.us.i.epil.preheader
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv22.i.epil.init ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !57
  %i.dz = fsub float %i.dy, %i.cf
  store float %i.dz, ptr %i.dx, align 4, !tbaa !57
  br label %._crit_edge.i54

._crit_edge.i54:                                  ; preds = %bb.r, %._crit_edge.i54.loopexit.unr-lcssa, %bb.p, %.lr.ph.split.us.i.epil.preheader, %middle.block
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count30.i
  br i1 %exitcond31.not.i, label %_ZN2cv6detail8tracking11KuhnMunkres25UpdateDissimilarityMatrixEf.exit, label %.lr.ph.i50, !llvm.loop !5

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader184, %bb.r
  %indvars.iv.i51 = phi i64 [ %indvars.iv.next.i52, %bb.r ], [ %indvars.iv.i51.ph, %.lr.ph.split.i.preheader184 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.i51 ; 3 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !57
  %i.ec = fadd float %i.cf, %i.eb                 ; 2 uses
  store float %i.ec, ptr %i.ea, align 4, !tbaa !57
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i51
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !35
  %.not14.i = icmp eq i32 %i.ee, 0
  br i1 %.not14.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.split.i
  %i.ef = fsub float %i.ec, %i.cf
  store float %i.ef, ptr %i.ea, align 4, !tbaa !57
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.split.i
  %indvars.iv.next.i52 = add nuw nsw i64 %indvars.iv.i51, 1 ; 2 uses
  %exitcond.not.i53 = icmp eq i64 %indvars.iv.next.i52, %wide.trip.count30.i
  br i1 %exitcond.not.i53, label %._crit_edge.i54, label %.lr.ph.split.i, !llvm.loop !81

bb.s:                                             ; preds = %_ZN2cv6detail8tracking11KuhnMunkres22FindUncoveredMinValPosEv.exit
  %i.eg = load i32, ptr %i.l, align 4, !tbaa !58
  %i.eh = icmp slt i32 %i.eg, 2
  %i.ei = load i64, ptr %i.f, align 8
  %i.ej = mul i64 %i.ei, %i.cb
  %.sink.idx.i55 = select i1 %i.eh, i64 0, i64 %i.ej
  %.sink.i56 = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sink.idx.i55
  %i.ek = getelementptr inbounds i8, ptr %.sink.i56, i64 %i.cd
  store i8 2, ptr %i.ek, align 1, !tbaa !28
  %i.el = load i32, ptr %i.b, align 8, !tbaa !47  ; 2 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph.i58, label %_ZN2cv6detail8tracking11KuhnMunkres9FindInRowEii.exit.thread

.lr.ph.i58:                                       ; preds = %bb.s
  %i.en = load i32, ptr %i.l, align 4, !tbaa !58
  %i.eo = icmp slt i32 %i.en, 2
  %i.ep = load ptr, ptr %i.e, align 8, !tbaa !53  ; 2 uses
  %i.eq = load i64, ptr %i.f, align 8
  %i.er = mul i64 %i.eq, %i.cb
  %.sink.idx.i.i = select i1 %i.eo, i64 0, i64 %i.er
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sink.idx.i.i
  %wide.trip.count.i = zext nneg i32 %i.el to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i58
  %indvars.iv.i59 = phi i64 [ 0, %.lr.ph.i58 ], [ %indvars.iv.next.i60, %bb.u ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 %indvars.iv.i59
  %i.et = load i8, ptr %i.es, align 1, !tbaa !28
  %i.eu = icmp eq i8 %i.et, 1
  br i1 %i.eu, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next.i60 = add nuw nsw i64 %indvars.iv.i59, 1 ; 2 uses
  %exitcond.not.i61 = icmp eq i64 %indvars.iv.next.i60, %wide.trip.count.i
  br i1 %exitcond.not.i61, label %_ZN2cv6detail8tracking11KuhnMunkres9FindInRowEii.exit.thread, label %bb.t, !llvm.loop !6

.thread:                                          ; preds = %bb.t
  %i.ev = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.cb
  store i32 1, ptr %i.ew, align 4, !tbaa !35
  %i.ex = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.i59
  store i32 0, ptr %i.ey, align 4, !tbaa !35
  %.pre.pre = load i32, ptr %i.b, align 8, !tbaa !47
  br label %_ZN2cv6detail8tracking11KuhnMunkres25UpdateDissimilarityMatrixEf.exit

_ZN2cv6detail8tracking11KuhnMunkres9FindInRowEii.exit.thread: ; preds = %bb.s, %bb.u
  %i.ez = load ptr, ptr %i.m, align 8, !tbaa !48  ; 4 uses
  store i64 %.sroa.018.0.insert.insert.i, ptr %i.ez, align 4
  %i.fa = load i32, ptr %i.b, align 8, !tbaa !47  ; 2 uses
  %i.fb = icmp sgt i32 %i.fa, 0
  br i1 %i.fb, label %.lr.ph.i63.preheader, label %.lr.ph.preheader

.lr.ph.i63.preheader:                             ; preds = %_ZN2cv6detail8tracking11KuhnMunkres9FindInRowEii.exit.thread
  %i.fc = load ptr, ptr %i.e, align 8, !tbaa !53  ; 2 uses
  br label %.lr.ph.i63

_ZN2cv6detail8tracking11KuhnMunkres9FindInRowEii.exit.thread.splitthread-pre-split: ; preds = %bb.x, %bb.y, %bb.w
  %.sroa.0107.0.insert.ext = phi i64 [ 4294967295, %bb.w ], [ %indvars.iv.i75, %bb.x ], [ 4294967295, %bb.y ]
  %i.fd = add nuw nsw i32 %.039176, 2             ; 4 uses
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fe
  %.sroa.0107.0.insert.insert = or i64 %.sroa.0107.0.insert.ext, %.sroa.4109.0.insert.shift
  store i64 %.sroa.0107.0.insert.insert, ptr %i.ff, align 4, !tbaa !35
  %.pr = load i32, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.fg = zext nneg i32 %i.fd to i64
  %i.fh = getelementptr [8 x i8], ptr %i.ez, i64 %i.fg
  %i.fi = icmp sgt i32 %.pr, 0
  br i1 %i.fi, label %.lr.ph.i63, label %.lr.ph.preheader

.lr.ph.i63:                                       ; preds = %.lr.ph.i63.preheader, %_ZN2cv6detail8tracking11KuhnMunkres9FindInRowEii.exit.thread.splitthread-pre-split
  %i.fj = phi ptr [ %i.fh, %_ZN2cv6detail8tracking11KuhnMunkres9FindInRowEii.exit.thread.splitthread-pre-split ], [ %i.ez, %.lr.ph.i63.preheader ] ; 2 uses
  %.039176 = phi i32 [ %i.fd, %_ZN2cv6detail8tracking11KuhnMunkres9FindInRowEii.exit.thread.splitthread-pre-split ], [ 0, %.lr.ph.i63.preheader ] ; 3 uses
  %i.fk = phi i32 [ %.pr, %_ZN2cv6detail8tracking11KuhnMunkres9FindInRowEii.exit.thread.splitthread-pre-split ], [ %i.fa, %.lr.ph.i63.preheader ]
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !85 ; 2 uses
  %i.fm = load i32, ptr %i.l, align 4, !tbaa !58
  %.fr15.i = freeze i32 %i.fm
  %i.fn = icmp slt i32 %.fr15.i, 2
  %i.fo = load i64, ptr %i.f, align 8
  %i.fp = sext i32 %i.fl to i64
  %invariant.gep.i = getelementptr i8, ptr %i.fc, i64 %i.fp ; 2 uses
  br i1 %i.fn, label %.lr.ph.split.us.i69, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i63
  %wide.trip.count.i64 = zext nneg i32 %i.fk to i64
  br label %.lr.ph.split.i65

.lr.ph.split.us.i69:                              ; preds = %.lr.ph.i63
  %4 = load i8, ptr %invariant.gep.i, align 1, !tbaa !28
  %5 = icmp ne i8 %4, 1
  %spec.select.i = sext i1 %5 to i32
  br label %_ZN2cv6detail8tracking11KuhnMunkres9FindInColEii.exit

.lr.ph.split.i65:                                 ; preds = %bb.v, %.lr.ph.split.preheader.i
  %indvars.iv.i66 = phi i64 [ 0, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i67, %bb.v ] ; 3 uses
  %i.fq = mul i64 %indvars.iv.i66, %i.fo
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.fq
  %i.fr = load i8, ptr %gep.i, align 1, !tbaa !28
  %i.fs = icmp eq i8 %i.fr, 1
  br i1 %i.fs, label %._crit_edge.loopexit.split.loop.exit18.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.i65
  %indvars.iv.next.i67 = add nuw nsw i64 %indvars.iv.i66, 1 ; 2 uses
  %exitcond.not.i68 = icmp eq i64 %indvars.iv.next.i67, %wide.trip.count.i64
  br i1 %exitcond.not.i68, label %.lr.ph.preheader, label %.lr.ph.split.i65, !llvm.loop !7

._crit_edge.loopexit.split.loop.exit18.i:         ; preds = %.lr.ph.split.i65
  %6 = trunc nuw nsw i64 %indvars.iv.i66 to i32
  br label %_ZN2cv6detail8tracking11KuhnMunkres9FindInColEii.exit

_ZN2cv6detail8tracking11KuhnMunkres9FindInColEii.exit: ; preds = %.lr.ph.split.us.i69, %._crit_edge.loopexit.split.loop.exit18.i
  %7 = phi i32 [ %spec.select.i, %.lr.ph.split.us.i69 ], [ %6, %._crit_edge.loopexit.split.loop.exit18.i ] ; 3 uses
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %bb.w, label %.lr.ph.preheader

bb.w:                                             ; preds = %_ZN2cv6detail8tracking11KuhnMunkres9FindInColEii.exit
  %9 = getelementptr i8, ptr %i.fj, i64 8
  %.sroa.4109.0.insert.ext = zext nneg i32 %7 to i64
  %.sroa.4109.0.insert.shift = shl nuw nsw i64 %.sroa.4109.0.insert.ext, 32 ; 2 uses
  %.sroa.0108.0.insert.ext = zext i32 %i.fl to i64
  %.sroa.0108.0.insert.insert = or disjoint i64 %.sroa.4109.0.insert.shift, %.sroa.0108.0.insert.ext
  store i64 %.sroa.0108.0.insert.insert, ptr %9, align 4, !tbaa !35
  %i.ft = load i32, ptr %i.b, align 8, !tbaa !47  ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, 0
  br i1 %i.fu, label %.lr.ph.i71, label %_ZN2cv6detail8tracking11KuhnMunkres9FindInRowEii.exit.thread.splitthread-pre-split

.lr.ph.i71:                                       ; preds = %bb.w
  %i.fv = load i32, ptr %i.l, align 4, !tbaa !58
  %i.fw = icmp slt i32 %i.fv, 2
  %i.fx = load i64, ptr %i.f, align 8
  %10 = zext nneg i32 %7 to i64
  %i.fy = mul i64 %i.fx, %10
  %.sink.idx.i.i72 = select i1 %i.fw, i64 0, i64 %i.fy
  %.sink.i.i73 = getelementptr inbounds nuw i8, ptr %i.fc, i64 %.sink.idx.i.i72
  %wide.trip.count.i74 = zext nneg i32 %i.ft to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i71
  %indvars.iv.i75 = phi i64 [ 0, %.lr.ph.i71 ], [ %indvars.iv.next.i76, %bb.y ] ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sink.i.i73, i64 %indvars.iv.i75
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !28
  %i.gb = icmp eq i8 %i.ga, 2
  br i1 %i.gb, label %_ZN2cv6detail8tracking11KuhnMunkres9FindInRowEii.exit.thread.splitthread-pre-split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %indvars.iv.next.i76 = add nuw nsw i64 %indvars.iv.i75, 1 ; 2 uses
  %exitcond.not.i77 = icmp eq i64 %indvars.iv.next.i76, %wide.trip.count.i74
  br i1 %exitcond.not.i77, label %_ZN2cv6detail8tracking11KuhnMunkres9FindInRowEii.exit.thread.splitthread-pre-split, label %bb.x, !llvm.loop !6

.lr.ph.preheader:                                 ; preds = %_ZN2cv6detail8tracking11KuhnMunkres9FindInColEii.exit, %_ZN2cv6detail8tracking11KuhnMunkres9FindInRowEii.exit.thread.splitthread-pre-split, %bb.v, %_ZN2cv6detail8tracking11KuhnMunkres9FindInRowEii.exit.thread
  %.us-phi = phi i32 [ 0, %_ZN2cv6detail8tracking11KuhnMunkres9FindInRowEii.exit.thread ], [ %.039176, %bb.v ], [ %i.fd, %_ZN2cv6detail8tracking11KuhnMunkres9FindInRowEii.exit.thread.splitthread-pre-split ], [ %.039176, %_ZN2cv6detail8tracking11KuhnMunkres9FindInColEii.exit ]
  %i.gc = or disjoint i32 %.us-phi, 1
  %wide.trip.count = zext nneg i32 %i.gc to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.gd = load i32, ptr %i.b, align 8, !tbaa !47  ; 3 uses
  %i.ge = sext i32 %i.gd to i64                   ; 2 uses
  %i.gf = icmp slt i32 %i.gd, 0
  br i1 %i.gf, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %._crit_edge
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #16
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge
  %.not.i.i.i.i = icmp eq i32 %i.gd, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %.noexc80

.noexc80:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.gg = shl nuw nsw i64 %i.ge, 2                ; 3 uses
  %i.gh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gg) #18 ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gh, i8 0, i64 %i.gg, i1 false), !tbaa !35
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.ge
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gg
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.gk = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !86
  %i.go = load i32, ptr %i.gl, align 4, !tbaa !85
  %i.gp = load i32, ptr %i.l, align 4, !tbaa !58
  %i.gq = icmp slt i32 %i.gp, 2
  %i.gr = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.gs = load i64, ptr %i.f, align 8
  %i.gt = sext i32 %i.gn to i64
  %i.gu = mul i64 %i.gs, %i.gt
  %.sink.idx.i81 = select i1 %i.gq, i64 0, i64 %i.gu
  %.sink.i82 = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.sink.idx.i81
  %i.gv = sext i32 %i.go to i64
  %i.gw = getelementptr inbounds i8, ptr %.sink.i82, i64 %i.gv ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !28
  %i.gy = icmp ne i8 %i.gx, 1
  %i.gz = zext i1 %i.gy to i8
  store i8 %i.gz, ptr %i.gw, align 1, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !82

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc80, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.11105.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.gi, %.noexc80 ]
  %.sroa.0102.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.gh, %.noexc80 ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.gj, %.noexc80 ]
  %i.ha = load ptr, ptr %i.k, align 8, !tbaa !49  ; 3 uses
  %i.hb = load ptr, ptr %i.o, align 8, !tbaa !50
  store ptr %.sroa.0102.0, ptr %i.k, align 8, !tbaa !49
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.n, align 8, !tbaa !51
  store ptr %.sroa.11105.0, ptr %i.o, align 8, !tbaa !50
  %.not.i.i.i.i.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %i.ha to i64
  %i.he = sub i64 %i.hc, %i.hd
  call void @_ZdlPvm(ptr noundef nonnull %i.ha, i64 noundef %i.he) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.z, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.hf = load i32, ptr %i.b, align 8, !tbaa !47  ; 3 uses
  %i.hg = sext i32 %i.hf to i64                   ; 2 uses
  %i.hh = icmp slt i32 %i.hf, 0
  br i1 %i.hh, label %.noexc90, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i83

.noexc90:                                         ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #16
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i83: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.not.i.i.i.i84 = icmp eq i32 %i.hf, 0
  br i1 %.not.i.i.i.i84, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit92, label %.noexc91

.noexc91:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i83
  %i.hi = shl nuw nsw i64 %i.hg, 2                ; 3 uses
  %i.hj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hi) #18 ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hj, i8 0, i64 %i.hi, i1 false), !tbaa !35
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.hg
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hi
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit92

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit92:          ; preds = %.noexc91, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i83
  %.sroa.097.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i83 ], [ %i.hj, %.noexc91 ]
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i83 ], [ %i.hk, %.noexc91 ]
  %.0.i.i.i.i.i.i.i88 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i83 ], [ %i.hl, %.noexc91 ]
  %i.hm = load ptr, ptr %i.g, align 8, !tbaa !49  ; 3 uses
  %i.hn = load ptr, ptr %i.q, align 8, !tbaa !50
  store ptr %.sroa.097.0, ptr %i.g, align 8, !tbaa !49
  store ptr %.0.i.i.i.i.i.i.i88, ptr %i.p, align 8, !tbaa !51
  store ptr %.sroa.11.0, ptr %i.q, align 8, !tbaa !50
  %.not.i.i.i.i.i93 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i.i.i93, label %_ZNSt6vectorIiSaIiEED2Ev.exit96, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit92
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = ptrtoint ptr %i.hm to i64
  %i.hq = sub i64 %i.ho, %i.hp
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef %i.hq) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit96

_ZNSt6vectorIiSaIiEED2Ev.exit96:                  ; preds = %bb.aa, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit92
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !34
  store i32 -1056833530, ptr %1, align 8, !tbaa !31
  store ptr %i.a, ptr %i.s, align 8, !tbaa !32
  store i64 4294967297, ptr %i.r, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @_ZN2cveqERKNS_3MatEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(208) %i.w, double noundef 2.000000e+00)
  invoke void @_ZN2cv11_InputArrayC1ERKNS_7MatExprE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(688) %3)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit96
  %i.hr = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.critedge unwind label %bb.ad ; 0 uses

bb.ac:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit96
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.ht, %bb.ad ], [ %i.hs, %bb.ac ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  resume { ptr, i32 } %.pn

.critedge:                                        ; preds = %bb.ab
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.t) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.u) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.v) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %i.hu = load i32, ptr %i.b, align 8, !tbaa !47  ; 2 uses
  %i.hv = icmp sgt i32 %i.hu, 0
  br i1 %i.hv, label %.lr.ph18.split.preheader.i, label %_ZN2cv6detail8tracking11KuhnMunkres21CheckIfOptimumIsFoundEv.exit.thread

_ZN2cv6detail8tracking11KuhnMunkres25UpdateDissimilarityMatrixEf.exit: ; preds = %._crit_edge.i54, %bb.l, %.thread
  %.pre = phi i32 [ %.pre.pre, %.thread ], [ %.pre141.a, %bb.l ], [ %.pre141.a, %._crit_edge.i54 ]
  %i.hw = phi ptr [ %i.ep, %.thread ], [ %i.at, %bb.l ], [ %i.at, %._crit_edge.i54 ]
  br label %.preheader114, !llvm.loop !83

_ZN2cv6detail8tracking11KuhnMunkres21CheckIfOptimumIsFoundEv.exit.thread: ; preds = %_ZN2cv6detail8tracking11KuhnMunkres21CheckIfOptimumIsFoundEv.exit, %.critedge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv6detail8tracking11KuhnMunkres13TrySimpleCaseEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(492) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = icmp slt i32 %i.b, 0
  br i1 %i.d, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #16
  unreachable

end_hunk_0
