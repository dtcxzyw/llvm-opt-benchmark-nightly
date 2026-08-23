Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fpu_helper?download=true
inline.NumInlined: 830
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 540
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 554
begin_hunk_0_@helper_pslldq_ymm:bb.a
  %i.w = and i64 %i.j, 24
  %n.vec = and i64 %i.j, -32                      ; 4 uses
  %i.x = sub nsw i64 15, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = sub i64 15, %index                       ; 2 uses
  %i.z = trunc nsw i64 %i.y to i32
  %i.aa = sub i32 %i.z, %spec.store.select
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %2, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -15
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ad, align 1
  %wide.load53 = load <16 x i8>, ptr %i.ae, align 1
  %i.af = getelementptr inbounds i8, ptr %1, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -15
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -31
  store <16 x i8> %wide.load, ptr %i.ag, align 1
  store <16 x i8> %wide.load53, ptr %i.ah, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %iter.check76, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %i.j, -8                     ; 3 uses
  %i.aj = sub nsw i64 15, %n.vec54
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 2 uses
  %i.ak = sub i64 15, %index55                    ; 2 uses
  %i.al = trunc nsw i64 %i.ak to i32
  %i.am = sub i32 %i.al, %spec.store.select
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -7
  %wide.load56 = load <8 x i8>, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds i8, ptr %1, i64 %i.ak
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -7
  store <8 x i8> %wide.load56, ptr %i.ar, align 1
  %index.next57 = add nuw i64 %index55, 8         ; 2 uses
  %i.as = icmp eq i64 %index.next57, %n.vec54
  br i1 %i.as, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !77

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %i.j, %n.vec54
  br i1 %cmp.n58, label %iter.check76, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 15, %iter.check ], [ 15, %vector.memcheck ], [ %i.x, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

.preheader20.us28.preheader:                      ; preds = %.split
  %i.at = zext nneg i32 %spec.store.select to i64 ; 2 uses
  %i.au = tail call i32 @llvm.umin.i32(i32 %spec.store.select, i32 15)
  %umin = zext nneg i32 %i.au to i64              ; 2 uses
  %i.av = sub nuw nsw i64 16, %umin               ; 5 uses
  %i.aw = xor i64 %umin, 15
  %xtraiter = and i64 %i.av, 3                    ; 3 uses
  %i.ax = icmp samesign ult i64 %i.aw, 3
  br i1 %i.ax, label %.epil.preheader, label %.preheader20.us28.preheader.new

.preheader20.us28.preheader.new:                  ; preds = %.preheader20.us28.preheader
  %unroll_iter = and i64 %i.av, 28
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader20.us28.preheader.new
  %indvars.iv39 = phi i64 [ 15, %.preheader20.us28.preheader.new ], [ %indvars.iv.next40.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader20.us28.preheader.new ], [ %niter.next.3, %bb.b ]
  %i.ay = trunc nsw i64 %indvars.iv39 to i32
  %i.az = sub i32 %i.ay, %spec.store.select
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %2, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds i8, ptr %1, i64 %indvars.iv39
  store i8 %i.bc, ptr %i.bd, align 1
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, -1 ; 2 uses
  %i.be = trunc nsw i64 %indvars.iv.next40 to i32
  %i.bf = sub i32 %i.be, %spec.store.select
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %2, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next40
  store i8 %i.bi, ptr %i.bj, align 1
  %indvars.iv.next40.197 = add nsw i64 %indvars.iv39, -2 ; 2 uses
  %i.bk = trunc nsw i64 %indvars.iv.next40.197 to i32
  %i.bl = sub i32 %i.bk, %spec.store.select
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr %2, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next40.197
  store i8 %i.bo, ptr %i.bp, align 1
  %indvars.iv.next40.2 = add nsw i64 %indvars.iv39, -3 ; 2 uses
  %i.bq = trunc nsw i64 %indvars.iv.next40.2 to i32
  %i.br = sub i32 %i.bq, %spec.store.select
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %2, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next40.2
  store i8 %i.bu, ptr %i.bv, align 1
  %indvars.iv.next40.3 = add nsw i64 %indvars.iv39, -4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %..preheader_crit_edge.us.preheader.unr-lcssa, label %bb.b, !llvm.loop !78

..preheader_crit_edge.us.preheader.unr-lcssa:     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.preheader.unr-lcssa, %.preheader20.us28.preheader
  %indvars.iv39.epil.init = phi i64 [ 15, %.preheader20.us28.preheader ], [ %indvars.iv.next40.3, %..preheader_crit_edge.us.preheader.unr-lcssa ]
  %lcmp.mod95 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod95)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv39.epil = phi i64 [ %indvars.iv.next40.epil, %bb.c ], [ %indvars.iv39.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader ]
  %i.bw = trunc nsw i64 %indvars.iv39.epil to i32
  %i.bx = sub i32 %i.bw, %spec.store.select
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds i8, ptr %2, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr inbounds i8, ptr %1, i64 %indvars.iv39.epil
  store i8 %i.ca, ptr %i.cb, align 1
  %indvars.iv.next40.epil = add nsw i64 %indvars.iv39.epil, -1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge.us.preheader, label %bb.c, !llvm.loop !79

..preheader_crit_edge.us.preheader:               ; preds = %bb.c, %..preheader_crit_edge.us.preheader.unr-lcssa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %1, i8 0, i64 %i.at, i1 false)
  %xtraiter99 = and i64 %i.av, 1
  %i.cc = icmp eq i32 %i.c, 15
  br i1 %i.cc, label %.epil.preheader98, label %..preheader_crit_edge.us.preheader.new

..preheader_crit_edge.us.preheader.new:           ; preds = %..preheader_crit_edge.us.preheader
  %unroll_iter103 = and i64 %i.av, 30
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %..preheader_crit_edge.us.preheader.new
  %indvars.iv39.1 = phi i64 [ 15, %..preheader_crit_edge.us.preheader.new ], [ %indvars.iv.next40.1.1, %bb.d ] ; 3 uses
  %niter104 = phi i64 [ 0, %..preheader_crit_edge.us.preheader.new ], [ %niter104.next.1, %bb.d ]
  %i.cd = add nuw nsw i64 %indvars.iv39.1, 16     ; 2 uses
  %i.ce = trunc nsw i64 %i.cd to i32
  %i.cf = sub i32 %i.ce, %spec.store.select
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %2, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = getelementptr inbounds i8, ptr %1, i64 %i.cd
  store i8 %i.ci, ptr %i.cj, align 1
  %i.ck = add nsw i64 %indvars.iv39.1, 15         ; 2 uses
  %i.cl = trunc nsw i64 %i.ck to i32
  %i.cm = sub i32 %i.cl, %spec.store.select
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %2, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = getelementptr inbounds i8, ptr %1, i64 %i.ck
  store i8 %i.cp, ptr %i.cq, align 1
  %indvars.iv.next40.1.1 = add nsw i64 %indvars.iv39.1, -2 ; 2 uses
  %niter104.next.1 = add i64 %niter104, 2         ; 2 uses
  %niter104.ncmp.1.not = icmp eq i64 %niter104.next.1, %unroll_iter103
  br i1 %niter104.ncmp.1.not, label %..preheader_crit_edge.us.preheader.1.unr-lcssa, label %bb.d, !llvm.loop !78

..preheader_crit_edge.us.preheader.1.unr-lcssa:   ; preds = %bb.d
  %lcmp.mod101.not = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod101.not, label %..preheader_crit_edge.us.preheader.1, label %.epil.preheader98

.epil.preheader98:                                ; preds = %..preheader_crit_edge.us.preheader.1.unr-lcssa, %..preheader_crit_edge.us.preheader
  %indvars.iv39.1.epil.init = phi i64 [ 15, %..preheader_crit_edge.us.preheader ], [ %indvars.iv.next40.1.1, %..preheader_crit_edge.us.preheader.1.unr-lcssa ]
  %lcmp.mod102 = trunc i64 %i.av to i1
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %i.cr = add nuw nsw i64 %indvars.iv39.1.epil.init, 16 ; 2 uses
  %i.cs = trunc nsw i64 %i.cr to i32
  %i.ct = sub i32 %i.cs, %spec.store.select
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %2, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = getelementptr inbounds i8, ptr %1, i64 %i.cr
  store i8 %i.cw, ptr %i.cx, align 1
  br label %..preheader_crit_edge.us.preheader.1

..preheader_crit_edge.us.preheader.1:             ; preds = %..preheader_crit_edge.us.preheader.1.unr-lcssa, %.epil.preheader98
  %scevgep.1 = getelementptr i8, ptr %1, i64 16
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep.1, i8 0, i64 %i.at, i1 false)
  br label %.split27.us.split

..preheader_crit_edge:                            ; preds = %..preheader_crit_edge.preheader, %..preheader_crit_edge
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %..preheader_crit_edge ], [ %indvars.iv.1.ph, %..preheader_crit_edge.preheader ] ; 3 uses
  %i.cy = add nsw i64 %indvars.iv.1, 16           ; 2 uses
  %i.cz = trunc nsw i64 %i.cy to i32
  %i.da = sub i32 %i.cz, %spec.store.select
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds i8, ptr %2, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = getelementptr inbounds i8, ptr %1, i64 %i.cy
  store i8 %i.dd, ptr %i.de, align 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, -1
  %.not.1.not = icmp sgt i64 %indvars.iv.1, %i.i
  br i1 %.not.1.not, label %..preheader_crit_edge, label %.split27.us.split, !llvm.loop !80

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %i.df = trunc nsw i64 %indvars.iv to i32
  %i.dg = sub i32 %i.df, %spec.store.select
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds i8, ptr %2, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = getelementptr inbounds i8, ptr %1, i64 %indvars.iv
  store i8 %i.dj, ptr %i.dk, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not.not = icmp sgt i64 %indvars.iv, %i.i
  br i1 %.not.not, label %vec.epilog.scalar.ph, label %iter.check76, !llvm.loop !81

iter.check76:                                     ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %min.iters.check63 = icmp ult i64 %i.j, 8
  br i1 %min.iters.check63, label %..preheader_crit_edge.preheader, label %vector.scevcheck60

vector.scevcheck60:                               ; preds = %iter.check76
  %i.dl = sub nsw i64 15, %i.i                    ; 2 uses
  %i.dm = sub i32 31, %spec.store.select          ; 2 uses
  %i.dn = trunc i64 %i.dl to i32
  %i.do = sub i32 %i.dm, %i.dn
  %i.dp = icmp sgt i32 %i.do, %i.dm
  %i.dq = icmp ugt i64 %i.dl, 4294967295
  %i.dr = or i1 %i.dp, %i.dq
  br i1 %i.dr, label %..preheader_crit_edge.preheader, label %vector.memcheck61

vector.memcheck61:                                ; preds = %vector.scevcheck60
  %i.ds = sub i32 31, %spec.store.select
  %i.dt = sext i32 %i.ds to i64
  %i.du = add i64 %i.b, %i.dt
  %i.dv = sub i64 %i.du, %i.a
  %i.dw = add i64 %i.dv, -32
  %diff.check62 = icmp ult i64 %i.dw, 31
  br i1 %diff.check62, label %..preheader_crit_edge.preheader, label %vector.main.loop.iter.check64

vector.main.loop.iter.check64:                    ; preds = %vector.memcheck61
  %min.iters.check65 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check65, label %vec.epilog.ph80, label %vector.ph66

vector.ph66:                                      ; preds = %vector.main.loop.iter.check64
  %i.dx = and i64 %i.j, 24
  %n.vec67 = and i64 %i.j, -32                    ; 4 uses
  %i.dy = sub nsw i64 15, %n.vec67
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph66
  %index69 = phi i64 [ 0, %vector.ph66 ], [ %index.next72, %vector.body68 ] ; 2 uses
  %i.dz = sub i64 31, %index69                    ; 2 uses
  %i.ea = trunc nsw i64 %i.dz to i32
  %i.eb = sub i32 %i.ea, %spec.store.select
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds i8, ptr %2, i64 %i.ec ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -15
  %i.ef = getelementptr inbounds i8, ptr %i.ed, i64 -31
  %wide.load70 = load <16 x i8>, ptr %i.ee, align 1
  %wide.load71 = load <16 x i8>, ptr %i.ef, align 1
  %i.eg = getelementptr inbounds i8, ptr %1, i64 %i.dz ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -15
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 -31
  store <16 x i8> %wide.load70, ptr %i.eh, align 1
  store <16 x i8> %wide.load71, ptr %i.ei, align 1
  %index.next72 = add nuw i64 %index69, 32        ; 2 uses
  %i.ej = icmp eq i64 %index.next72, %n.vec67
  br i1 %i.ej, label %middle.block73, label %vector.body68, !llvm.loop !82

middle.block73:                                   ; preds = %vector.body68
  %cmp.n74 = icmp eq i64 %i.j, %n.vec67
  br i1 %cmp.n74, label %.split27.us.split, label %vec.epilog.iter.check78

vec.epilog.iter.check78:                          ; preds = %middle.block73
  %min.epilog.iters.check79 = icmp eq i64 %i.dx, 0
  br i1 %min.epilog.iters.check79, label %..preheader_crit_edge.preheader, label %vec.epilog.ph80, !prof !34

vec.epilog.ph80:                                  ; preds = %vector.main.loop.iter.check64, %vec.epilog.iter.check78
  %vec.epilog.resume.val75 = phi i64 [ %n.vec67, %vec.epilog.iter.check78 ], [ 0, %vector.main.loop.iter.check64 ]
  %n.vec81 = and i64 %i.j, -8                     ; 3 uses
  %i.ek = sub nsw i64 15, %n.vec81
  br label %vec.epilog.vector.body82

vec.epilog.vector.body82:                         ; preds = %vec.epilog.vector.body82, %vec.epilog.ph80
  %index83 = phi i64 [ %vec.epilog.resume.val75, %vec.epilog.ph80 ], [ %index.next85, %vec.epilog.vector.body82 ] ; 2 uses
  %i.el = sub i64 31, %index83                    ; 2 uses
  %i.em = trunc nsw i64 %i.el to i32
  %i.en = sub i32 %i.em, %spec.store.select
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds i8, ptr %2, i64 %i.eo
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -7
  %wide.load84 = load <8 x i8>, ptr %i.eq, align 1
  %i.er = getelementptr inbounds i8, ptr %1, i64 %i.el
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -7
  store <8 x i8> %wide.load84, ptr %i.es, align 1
  %index.next85 = add nuw i64 %index83, 8         ; 2 uses
  %i.et = icmp eq i64 %index.next85, %n.vec81
  br i1 %i.et, label %vec.epilog.middle.block86, label %vec.epilog.vector.body82, !llvm.loop !83

vec.epilog.middle.block86:                        ; preds = %vec.epilog.vector.body82
  %cmp.n87 = icmp eq i64 %i.j, %n.vec81
  br i1 %cmp.n87, label %.split27.us.split, label %..preheader_crit_edge.preheader

..preheader_crit_edge.preheader:                  ; preds = %vector.memcheck61, %vector.scevcheck60, %iter.check76, %vec.epilog.iter.check78, %vec.epilog.middle.block86
  %indvars.iv.1.ph = phi i64 [ 15, %iter.check76 ], [ 15, %vector.scevcheck60 ], [ 15, %vector.memcheck61 ], [ %i.dy, %vec.epilog.iter.check78 ], [ %i.ek, %vec.epilog.middle.block86 ]
  br label %..preheader_crit_edge

.split27.us.split:                                ; preds = %..preheader_crit_edge, %middle.block73, %vec.epilog.middle.block86, %..preheader_crit_edge.us.preheader.1, %.preheader20.us.preheader
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @helper_pmulhuw_ymm(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.d = add i64 %i.c, 32
  %i.e = add i64 %i.b, 32
  %i.f = add i64 %i.a, 32                         ; 2 uses
  %rt.bound0 = icmp ugt i64 %i.d, %i.a
  %rt.bound1 = icmp ugt i64 %i.f, %i.c
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound010 = icmp ugt i64 %i.e, %i.a
  %rt.bound111 = icmp ugt i64 %i.f, %i.b
  %rt.conflict12 = and i1 %rt.bound010, %rt.bound111
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict12
  br i1 %rt.conflict.all, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.g = load <8 x i16>, ptr %2, align 2
  %i.h = zext <8 x i16> %i.g to <8 x i32>
  %i.i = load <8 x i16>, ptr %3, align 2
  %i.j = zext <8 x i16> %i.i to <8 x i32>
  %i.k = mul nuw <8 x i32> %i.j, %i.h
  %i.l = lshr <8 x i32> %i.k, splat (i32 16)
  %i.m = trunc nuw <8 x i32> %i.l to <8 x i16>
  store <8 x i16> %i.m, ptr %1, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load <8 x i16>, ptr %i.n, align 2
  %i.r = zext <8 x i16> %i.q to <8 x i32>
  %i.s = load <8 x i16>, ptr %i.o, align 2
  %i.t = zext <8 x i16> %i.s to <8 x i32>
  %i.u = mul nuw <8 x i32> %i.t, %i.r
  %i.v = lshr <8 x i32> %i.u, splat (i32 16)
  %i.w = trunc nuw <8 x i32> %i.v to <8 x i16>
  store <8 x i16> %i.w, ptr %i.p, align 2
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.x = load i16, ptr %2, align 2
  %i.y = zext i16 %i.x to i32
  %i.z = load i16, ptr %3, align 2
  %i.aa = zext i16 %i.z to i32
  %i.ab = mul nuw i32 %i.aa, %i.y
  %i.ac = lshr i32 %i.ab, 16
  %i.ad = trunc nuw i32 %i.ac to i16
  store i16 %i.ad, ptr %1, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = zext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = zext i16 %i.ai to i32
  %i.ak = mul nuw i32 %i.aj, %i.ag
  %i.al = lshr i32 %i.ak, 16
  %i.am = trunc nuw i32 %i.al to i16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.am, ptr %i.an, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = zext i16 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = zext i16 %i.as to i32
  %i.au = mul nuw i32 %i.at, %i.aq
  %i.av = lshr i32 %i.au, 16
  %i.aw = trunc nuw i32 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 %i.aw, ptr %i.ax, align 2
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = zext i16 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = zext i16 %i.bc to i32
  %i.be = mul nuw i32 %i.bd, %i.ba
  %i.bf = lshr i32 %i.be, 16
  %i.bg = trunc nuw i32 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 6
end_hunk_0
