Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/sgemm_beta?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@sgemm_beta:bb.a
  br i1 %i.bg, label %vec.epilog.scalar.ph240.1, label %.loopexit119.us.us

vec.epilog.scalar.ph240.1:                        ; preds = %vec.epilog.scalar.ph240
  %i.bh = getelementptr inbounds nuw i8, ptr %.3103.us.us.ph, i64 32 ; 2 uses
  %i.bi = load <8 x float>, ptr %i.bh, align 4, !tbaa !15
  %i.bj = fmul <8 x float> %i.ag, %i.bi
  store <8 x float> %i.bj, ptr %i.bh, align 4, !tbaa !15
  %.not264 = icmp eq i64 %.3.us.us.ph, 2
  br i1 %.not264, label %.loopexit119.us.us, label %vec.epilog.scalar.ph240.2

vec.epilog.scalar.ph240.2:                        ; preds = %vec.epilog.scalar.ph240.1
  %i.bk = getelementptr inbounds nuw i8, ptr %.3103.us.us.ph, i64 64 ; 2 uses
  %i.bl = load <8 x float>, ptr %i.bk, align 4, !tbaa !15
  %i.bm = fmul <8 x float> %i.ai, %i.bl
  store <8 x float> %i.bm, ptr %i.bk, align 4, !tbaa !15
  %i.bn = icmp samesign ugt i64 %.3.us.us.ph, 3
  br i1 %i.bn, label %vec.epilog.scalar.ph240.3, label %.loopexit119.us.us

vec.epilog.scalar.ph240.3:                        ; preds = %vec.epilog.scalar.ph240.2
  %i.bo = getelementptr inbounds nuw i8, ptr %.3103.us.us.ph, i64 96 ; 2 uses
  %i.bp = load <8 x float>, ptr %i.bo, align 4, !tbaa !15
  %i.bq = fmul <8 x float> %i.ak, %i.bp
  store <8 x float> %i.bq, ptr %i.bo, align 4, !tbaa !15
  %.not265 = icmp eq i64 %.3.us.us.ph, 4
  br i1 %.not265, label %.loopexit119.us.us, label %vec.epilog.scalar.ph240.4

vec.epilog.scalar.ph240.4:                        ; preds = %vec.epilog.scalar.ph240.3
  %i.br = getelementptr inbounds nuw i8, ptr %.3103.us.us.ph, i64 128 ; 2 uses
  %i.bs = load <8 x float>, ptr %i.br, align 4, !tbaa !15
  %i.bt = fmul <8 x float> %i.am, %i.bs
  store <8 x float> %i.bt, ptr %i.br, align 4, !tbaa !15
  %i.bu = icmp samesign ugt i64 %.3.us.us.ph, 5
  br i1 %i.bu, label %vec.epilog.scalar.ph240.5, label %.loopexit119.us.us

vec.epilog.scalar.ph240.5:                        ; preds = %vec.epilog.scalar.ph240.4
  %i.bv = getelementptr inbounds nuw i8, ptr %.3103.us.us.ph, i64 160 ; 2 uses
  %i.bw = load <8 x float>, ptr %i.bv, align 4, !tbaa !15
  %i.bx = fmul <8 x float> %i.ao, %i.bw
  store <8 x float> %i.bx, ptr %i.bv, align 4, !tbaa !15
  %i.by = icmp eq i64 %.3.us.us.ph, 7
  br i1 %i.by, label %vec.epilog.scalar.ph240.6, label %.loopexit119.us.us

vec.epilog.scalar.ph240.6:                        ; preds = %vec.epilog.scalar.ph240.5
  %i.bz = getelementptr inbounds nuw i8, ptr %.3103.us.us.ph, i64 192 ; 2 uses
  %i.ca = load <8 x float>, ptr %i.bz, align 4, !tbaa !15
  %i.cb = fmul <8 x float> %i.aq, %i.ca
  store <8 x float> %i.cb, ptr %i.bz, align 4, !tbaa !15
  br label %.loopexit119.us.us

.loopexit119.us.us:                               ; preds = %vec.epilog.vector.body246, %vec.epilog.scalar.ph240, %vec.epilog.scalar.ph240.1, %vec.epilog.scalar.ph240.2, %vec.epilog.scalar.ph240.3, %vec.epilog.scalar.ph240.4, %vec.epilog.scalar.ph240.5, %vec.epilog.scalar.ph240.6, %middle.block235
  %i.cc = getelementptr inbounds [4 x i8], ptr %.199.us.us, i64 %9
  %i.cd = add nsw i64 %.1106.us.us, -1
  %i.ce = icmp sgt i64 %.1106.us.us, 1
  br i1 %i.ce, label %iter.check239, label %.loopexit, !llvm.loop !10

iter.check:                                       ; preds = %iter.check.preheader, %vector.body193
  %.1106.us = phi i64 [ %i.du, %vector.body193 ], [ %1, %iter.check.preheader ] ; 2 uses
  %.199.us = phi ptr [ %i.dt, %vector.body193 ], [ %8, %iter.check.preheader ] ; 9 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check196, label %vec.epilog.ph, label %vector.ph197

vector.ph197:                                     ; preds = %vector.main.loop.iter.check
  %i.cf = getelementptr i8, ptr %.199.us, i64 %i.j ; 2 uses
  br label %vector.body200

vector.body200:                                   ; preds = %vector.ph197, %vector.body200
  %index = phi i64 [ 0, %vector.ph197 ], [ %index.next, %vector.body200 ] ; 2 uses
  %i.cg = shl i64 %index, 5                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.199.us, i64 %i.cg ; 2 uses
  %i.ch = getelementptr i8, ptr %.199.us, i64 %i.cg
  %next.gep201 = getelementptr i8, ptr %i.ch, i64 32 ; 2 uses
  %i.ci = getelementptr i8, ptr %.199.us, i64 %i.cg
  %next.gep202 = getelementptr i8, ptr %i.ci, i64 64 ; 2 uses
  %i.cj = getelementptr i8, ptr %.199.us, i64 %i.cg
  %next.gep203 = getelementptr i8, ptr %i.cj, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %next.gep, align 4, !tbaa !15
  %wide.load204 = load <8 x float>, ptr %next.gep201, align 4, !tbaa !15
  %wide.load205 = load <8 x float>, ptr %next.gep202, align 4, !tbaa !15
  %wide.load206 = load <8 x float>, ptr %next.gep203, align 4, !tbaa !15
  %i.ck = fmul <8 x float> %broadcast.splat199, %wide.load
  %i.cl = fmul <8 x float> %broadcast.splat199, %wide.load204
  %i.cm = fmul <8 x float> %broadcast.splat199, %wide.load205
  %i.cn = fmul <8 x float> %broadcast.splat199, %wide.load206
  store <8 x float> %i.ck, ptr %next.gep, align 4, !tbaa !15
  store <8 x float> %i.cl, ptr %next.gep201, align 4, !tbaa !15
  store <8 x float> %i.cm, ptr %next.gep202, align 4, !tbaa !15
  store <8 x float> %i.cn, ptr %next.gep203, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block207, label %vector.body200, !llvm.loop !11

middle.block207:                                  ; preds = %vector.body200
  br i1 %cmp.n, label %vector.body193, label %vec.epilog.scalar.ph

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %i.cp = getelementptr i8, ptr %.199.us, i64 %i.l
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index211 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next214, %vec.epilog.vector.body ] ; 2 uses
  %i.cq = shl i64 %index211, 5
  %next.gep212 = getelementptr i8, ptr %.199.us, i64 %i.cq ; 2 uses
  %wide.load213 = load <8 x float>, ptr %next.gep212, align 4, !tbaa !15
  %i.cr = fmul <8 x float> %broadcast.splat210, %wide.load213
  store <8 x float> %i.cr, ptr %next.gep212, align 4, !tbaa !15
  %index.next214 = add nuw i64 %index211, 1       ; 2 uses
  %i.cs = icmp eq i64 %index.next214, %i.g
  br i1 %i.cs, label %vector.body193, label %vec.epilog.vector.body, !llvm.loop !12

vec.epilog.scalar.ph:                             ; preds = %iter.check, %middle.block207
  %.3103.us.ph = phi ptr [ %i.cf, %middle.block207 ], [ %.199.us, %iter.check ] ; 9 uses
  %.3.us.ph = phi i64 [ %i.k, %middle.block207 ], [ %i.g, %iter.check ] ; 6 uses
  %i.ct = load <8 x float>, ptr %.3103.us.ph, align 4, !tbaa !15
  %i.cu = fmul <8 x float> %i.n, %i.ct
  store <8 x float> %i.cu, ptr %.3103.us.ph, align 4, !tbaa !15
  %i.cv = getelementptr inbounds nuw i8, ptr %.3103.us.ph, i64 32 ; 3 uses
  %i.cw = icmp samesign ugt i64 %.3.us.ph, 1
  br i1 %i.cw, label %vec.epilog.scalar.ph.1, label %vector.body193

vec.epilog.scalar.ph.1:                           ; preds = %vec.epilog.scalar.ph
  %i.cx = load <8 x float>, ptr %i.cv, align 4, !tbaa !15
  %i.cy = fmul <8 x float> %i.p, %i.cx
  store <8 x float> %i.cy, ptr %i.cv, align 4, !tbaa !15
  %i.cz = getelementptr inbounds nuw i8, ptr %.3103.us.ph, i64 64 ; 3 uses
  %.not262 = icmp eq i64 %.3.us.ph, 2
  br i1 %.not262, label %vector.body193, label %vec.epilog.scalar.ph.2

vec.epilog.scalar.ph.2:                           ; preds = %vec.epilog.scalar.ph.1
  %i.da = load <8 x float>, ptr %i.cz, align 4, !tbaa !15
  %i.db = fmul <8 x float> %i.r, %i.da
  store <8 x float> %i.db, ptr %i.cz, align 4, !tbaa !15
  %i.dc = getelementptr inbounds nuw i8, ptr %.3103.us.ph, i64 96 ; 3 uses
  %i.dd = icmp samesign ugt i64 %.3.us.ph, 3
  br i1 %i.dd, label %vec.epilog.scalar.ph.3, label %vector.body193

vec.epilog.scalar.ph.3:                           ; preds = %vec.epilog.scalar.ph.2
  %i.de = load <8 x float>, ptr %i.dc, align 4, !tbaa !15
  %i.df = fmul <8 x float> %i.t, %i.de
  store <8 x float> %i.df, ptr %i.dc, align 4, !tbaa !15
  %i.dg = getelementptr inbounds nuw i8, ptr %.3103.us.ph, i64 128 ; 3 uses
  %.not263 = icmp eq i64 %.3.us.ph, 4
  br i1 %.not263, label %vector.body193, label %vec.epilog.scalar.ph.4

vec.epilog.scalar.ph.4:                           ; preds = %vec.epilog.scalar.ph.3
  %i.dh = load <8 x float>, ptr %i.dg, align 4, !tbaa !15
  %i.di = fmul <8 x float> %i.v, %i.dh
  store <8 x float> %i.di, ptr %i.dg, align 4, !tbaa !15
  %i.dj = getelementptr inbounds nuw i8, ptr %.3103.us.ph, i64 160 ; 3 uses
  %i.dk = icmp samesign ugt i64 %.3.us.ph, 5
  br i1 %i.dk, label %vec.epilog.scalar.ph.5, label %vector.body193

vec.epilog.scalar.ph.5:                           ; preds = %vec.epilog.scalar.ph.4
  %i.dl = load <8 x float>, ptr %i.dj, align 4, !tbaa !15
  %i.dm = fmul <8 x float> %i.x, %i.dl
  store <8 x float> %i.dm, ptr %i.dj, align 4, !tbaa !15
  %i.dn = getelementptr inbounds nuw i8, ptr %.3103.us.ph, i64 192 ; 3 uses
  %i.do = icmp eq i64 %.3.us.ph, 7
  br i1 %i.do, label %vec.epilog.scalar.ph.6, label %vector.body193

vec.epilog.scalar.ph.6:                           ; preds = %vec.epilog.scalar.ph.5
  %i.dp = load <8 x float>, ptr %i.dn, align 4, !tbaa !15
  %i.dq = fmul <8 x float> %i.z, %i.dp
  store <8 x float> %i.dq, ptr %i.dn, align 4, !tbaa !15
  %i.dr = getelementptr inbounds nuw i8, ptr %.3103.us.ph, i64 224
  br label %vector.body193

vector.body193:                                   ; preds = %vec.epilog.vector.body, %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.1, %vec.epilog.scalar.ph.2, %vec.epilog.scalar.ph.3, %vec.epilog.scalar.ph.4, %vec.epilog.scalar.ph.5, %vec.epilog.scalar.ph.6, %middle.block207
  %.lcssa = phi ptr [ %i.dr, %vec.epilog.scalar.ph.6 ], [ %i.cf, %middle.block207 ], [ %i.cv, %vec.epilog.scalar.ph ], [ %i.cz, %vec.epilog.scalar.ph.1 ], [ %i.dc, %vec.epilog.scalar.ph.2 ], [ %i.dg, %vec.epilog.scalar.ph.3 ], [ %i.dj, %vec.epilog.scalar.ph.4 ], [ %i.dn, %vec.epilog.scalar.ph.5 ], [ %i.cp, %vec.epilog.vector.body ] ; 2 uses
  %wide.masked.load194 = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %.lcssa, <8 x i1> %i.aa, <8 x float> poison), !tbaa !15
  %i.ds = fmul <8 x float> %broadcast.splat192, %wide.masked.load194
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.ds, ptr align 4 %.lcssa, <8 x i1> %i.aa), !tbaa !15
  %i.dt = getelementptr inbounds [4 x i8], ptr %.199.us, i64 %9
  %i.du = add nsw i64 %.1106.us, -1
  %i.dv = icmp sgt i64 %.1106.us, 1
  br i1 %i.dv, label %iter.check, label %.loopexit, !llvm.loop !10

.preheader120.split:                              ; preds = %.preheader120
  br i1 %.not, label %.loopexit, label %vector.body.preheader

vector.body.preheader:                            ; preds = %.preheader120.split
  %broadcast.splatinsert185 = insertelement <8 x float> poison, float %3, i64 0
  %broadcast.splat186 = shufflevector <8 x float> %broadcast.splatinsert185, <8 x float> poison, <8 x i32> zeroinitializer
  %trip.count.minus.1 = add nsw i64 %i.i, -1
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.dw = icmp uge <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7> ; 2 uses
  br label %vector.body

.preheader115:                                    ; preds = %bb.d
  %i.dx = icmp sgt i64 %0, 31
  br i1 %i.dx, label %.lr.ph.us.preheader, label %.preheader115.split

.lr.ph.us.preheader:                              ; preds = %.preheader115
  %i.dy = tail call i64 @llvm.usub.sat.i64(i64 %0, i64 63)
  %i.dz = add nuw i64 %i.dy, 31                   ; 2 uses
  %i.ea = shl i64 %i.dz, 2
  %i.eb = and i64 %i.ea, -128                     ; 2 uses
  %i.ec = add i64 %i.eb, 128                      ; 2 uses
  %i.ed = and i64 %i.dz, -32                      ; 3 uses
  %i.ee = sub nsw i64 %0, %i.ed
  %scevgep164 = getelementptr i8, ptr %8, i64 %i.ec
  %i.ef = shl i64 %9, 2                           ; 2 uses
  %i.eg = add nsw i64 %0, -32
  %i.eh = sub nsw i64 %i.eg, %i.ed
  %i.ei = add nuw i64 %0, 4611686018427387864
  %i.ej = sub i64 %i.ei, %i.ed
  %i.ek = shl i64 %i.ej, 2
  %i.el = and i64 %i.ek, -32                      ; 2 uses
  %i.em = add i64 %i.el, 32
  %i.en = getelementptr i8, ptr %8, i64 %i.eb
  %i.eo = getelementptr i8, ptr %i.en, i64 %i.el
  %scevgep167 = getelementptr i8, ptr %i.eo, i64 160
  %i.ep = and i64 %0, 7
  %i.eq = icmp sgt i64 %i.ee, 39
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv168 = phi ptr [ %scevgep167, %.lr.ph.us.preheader ], [ %scevgep169, %._crit_edge.us ] ; 2 uses
  %indvars.iv165 = phi ptr [ %scevgep164, %.lr.ph.us.preheader ], [ %scevgep166, %._crit_edge.us ] ; 3 uses
  %.0105.us = phi i64 [ %1, %.lr.ph.us.preheader ], [ %i.eu, %._crit_edge.us ] ; 2 uses
  %.098.us = phi ptr [ %8, %.lr.ph.us.preheader ], [ %i.er, %._crit_edge.us ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.098.us, i8 0, i64 %i.ec, i1 false), !tbaa !19
  %i.er = getelementptr [4 x i8], ptr %.098.us, i64 %9
  br i1 %i.eq, label %.lr.ph127.us.preheader, label %.preheader.us

.preheader.us:                                    ; preds = %.lr.ph127.us.preheader, %.lr.ph.us
  %.1101.lcssa.us = phi ptr [ %indvars.iv165, %.lr.ph.us ], [ %indvars.iv168, %.lr.ph127.us.preheader ]
  %.1.lcssa.us = phi i64 [ %i.eh, %.lr.ph.us ], [ %i.ep, %.lr.ph127.us.preheader ] ; 2 uses
  %i.es = icmp sgt i64 %.1.lcssa.us, 0
  br i1 %i.es, label %.lr.ph132.us.preheader, label %._crit_edge.us

.lr.ph132.us.preheader:                           ; preds = %.preheader.us
  %i.et = shl nuw i64 %.1.lcssa.us, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.1101.lcssa.us, i8 0, i64 %i.et, i1 false), !tbaa !15
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.lr.ph132.us.preheader, %.preheader.us
  %i.eu = add nsw i64 %.0105.us, -1
  %i.ev = icmp sgt i64 %.0105.us, 1
  %scevgep166 = getelementptr i8, ptr %indvars.iv165, i64 %i.ef
  %scevgep169 = getelementptr i8, ptr %indvars.iv168, i64 %i.ef
  br i1 %i.ev, label %.lr.ph.us, label %.loopexit, !llvm.loop !13

.lr.ph127.us.preheader:                           ; preds = %.lr.ph.us
  tail call void @llvm.memset.p0.i64(ptr align 1 %indvars.iv165, i8 0, i64 %i.em, i1 false), !tbaa !19
  br label %.preheader.us

.preheader115.split:                              ; preds = %.preheader115
  %i.ew = icmp sgt i64 %0, 7
  br i1 %i.ew, label %.preheader114.us133.preheader, label %.preheader115.split.split

.preheader114.us133.preheader:                    ; preds = %.preheader115.split
  %i.ex = tail call i64 @llvm.usub.sat.i64(i64 %0, i64 15)
  %i.ey = add nuw i64 %i.ex, 7                    ; 2 uses
  %i.ez = shl nuw nsw i64 %i.ey, 2
  %i.fa = and i64 %i.ez, 9223372036854775776
  %i.fb = add nuw nsw i64 %i.fa, 32               ; 2 uses
  %i.fc = and i64 %i.ey, -8                       ; 2 uses
  %i.fd = sub nsw i64 %0, %i.fc
  %scevgep = getelementptr i8, ptr %8, i64 %i.fb
  %i.fe = shl i64 %9, 2
  %i.ff = add nsw i64 %0, -8
  %i.fg = sub nsw i64 %i.ff, %i.fc
  %i.fh = shl nuw nsw i64 %i.fg, 2
  %i.fi = icmp sgt i64 %i.fd, 8
  br label %.preheader114.us133

.preheader114.us133:                              ; preds = %.preheader114.us133.preheader, %._crit_edge.us148
  %indvars.iv = phi ptr [ %scevgep, %.preheader114.us133.preheader ], [ %scevgep161, %._crit_edge.us148 ] ; 2 uses
  %.0105.us134 = phi i64 [ %1, %.preheader114.us133.preheader ], [ %i.fk, %._crit_edge.us148 ] ; 2 uses
  %.098.us135 = phi ptr [ %8, %.preheader114.us133.preheader ], [ %i.fj, %._crit_edge.us148 ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.098.us135, i8 0, i64 %i.fb, i1 false), !tbaa !19
  %i.fj = getelementptr [4 x i8], ptr %.098.us135, i64 %9
  br i1 %i.fi, label %.lr.ph132.us145.preheader, label %._crit_edge.us148

.lr.ph132.us145.preheader:                        ; preds = %.preheader114.us133
  tail call void @llvm.memset.p0.i64(ptr align 4 %indvars.iv, i8 0, i64 %i.fh, i1 false), !tbaa !15
  br label %._crit_edge.us148

._crit_edge.us148:                                ; preds = %.lr.ph132.us145.preheader, %.preheader114.us133
  %i.fk = add nsw i64 %.0105.us134, -1
  %i.fl = icmp sgt i64 %.0105.us134, 1
  %scevgep161 = getelementptr i8, ptr %indvars.iv, i64 %i.fe
  br i1 %i.fl, label %.preheader114.us133, label %.loopexit, !llvm.loop !13

.preheader115.split.split:                        ; preds = %.preheader115.split
  %i.fm = icmp sgt i64 %0, 0
  br i1 %i.fm, label %.preheader114.preheader, label %.loopexit

.preheader114.preheader:                          ; preds = %.preheader115.split.split
  %i.fn = shl nuw nsw i64 %0, 2
  br label %.preheader114

.preheader114:                                    ; preds = %.preheader114.preheader, %.preheader114
  %.0105 = phi i64 [ %i.fp, %.preheader114 ], [ %1, %.preheader114.preheader ] ; 2 uses
  %.098 = phi ptr [ %i.fo, %.preheader114 ], [ %8, %.preheader114.preheader ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %.098, i8 0, i64 %i.fn, i1 false), !tbaa !15
  %i.fo = getelementptr [4 x i8], ptr %.098, i64 %9
  %i.fp = add nsw i64 %.0105, -1
  %i.fq = icmp sgt i64 %.0105, 1
  br i1 %i.fq, label %.preheader114, label %.loopexit, !llvm.loop !13

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %.1106 = phi i64 [ %i.ft, %vector.body ], [ %1, %vector.body.preheader ] ; 2 uses
  %.199 = phi ptr [ %i.fs, %vector.body ], [ %8, %vector.body.preheader ] ; 3 uses
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %.199, <8 x i1> %i.dw, <8 x float> poison), !tbaa !15
  %i.fr = fmul <8 x float> %broadcast.splat186, %wide.masked.load
  tail call void @llvm.masked.store.v8f32.p0(<8 x float> %i.fr, ptr align 4 %.199, <8 x i1> %i.dw), !tbaa !15
  %i.fs = getelementptr inbounds [4 x i8], ptr %.199, i64 %9
  %i.ft = add nsw i64 %.1106, -1
  %i.fu = icmp sgt i64 %.1106, 1
  br i1 %i.fu, label %vector.body, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %vector.body, %vector.body193, %.loopexit119.us.us, %.preheader114, %._crit_edge.us148, %._crit_edge.us, %.preheader120.split, %.preheader115.split.split, %bb.c, %bb.b
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v8f32.p0(<8 x float>, ptr captures(none), <8 x i1>) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !16, !17, !18}
!9 = distinct !{!9, !16, !17, !18}
!10 = distinct !{!10, !16}
!11 = distinct !{!11, !16, !17, !18}
!12 = distinct !{!12, !16, !17, !18}
!13 = distinct !{!13, !16}
!14 = !{!"float", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!4, !4, i64 0}
end_hunk_0
