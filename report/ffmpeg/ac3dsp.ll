Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ac3dsp?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ac3_downmix_5_to_1_symmetric_c:bb.a
; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_ac3dsp_init(ptr nofree noundef writeonly captures(none) initializes((0, 88)) %0) local_unnamed_addr #2 {
bb.a:
  store <4 x ptr> <ptr @ac3_exponent_min_c, ptr @float_to_fixed24_c, ptr @ac3_bit_alloc_calc_bap_c, ptr @ac3_update_bap_counts_c>, ptr %0, align 8, !tbaa !72
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x ptr> <ptr @ac3_compute_mantissa_size_c, ptr @ac3_extract_exponents_c, ptr @ac3_sum_square_butterfly_int32_c, ptr @ac3_sum_square_butterfly_float_c>, ptr %i.a, align 8, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ac3_exponent_min_c(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #3 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  %i.b = icmp sgt i32 %1, 0
  %or.cond30 = and i1 %i.b, %i.a
  br i1 %or.cond30, label %.lr.ph.us.preheader, label %.loopexit

.lr.ph.us.preheader:                              ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64                  ; 5 uses
  %min.iters.check = icmp ult i32 %1, 8
  %min.iters.check31 = icmp ult i32 %1, 32
  %i.d = and i64 %i.c, 24
  %n.vec = and i64 %i.c, 2147483616               ; 5 uses
  %i.e = shl nuw nsw i64 %n.vec, 8
  %i.f = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.c
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  %n.vec65 = and i64 %i.c, 2147483640             ; 4 uses
  %i.g = shl nuw nsw i64 %n.vec65, 8
  %i.h = trunc nuw nsw i64 %n.vec65 to i32
  %cmp.n79 = icmp eq i64 %n.vec65, %i.c
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.01624.us = phi i32 [ %i.fy, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.01823.us = phi ptr [ %i.fx, %._crit_edge.us ], [ %0, %.lr.ph.us.preheader ] ; 46 uses
  %i.i = load i8, ptr %.01823.us, align 1, !tbaa !28 ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = getelementptr i8, ptr %.01823.us, i64 %i.e
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.ei, %vector.body ]
  %vec.phi32 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.ej, %vector.body ]
  %i.k = shl i64 %index, 8                        ; 32 uses
  %next.gep = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.l = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.m = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.n = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.o = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.p = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.q = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.r = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.s = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.t = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.u = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.v = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.w = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.x = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.y = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.z = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.aa = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.ab = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.ac = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.ad = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.ae = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.af = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.ag = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.ah = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.ai = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.aj = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.ak = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.al = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.am = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.an = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.ao = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.ap = getelementptr i8, ptr %.01823.us, i64 %i.k
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep, i64 256
  %i.ar = getelementptr i8, ptr %i.l, i64 512
  %i.as = getelementptr i8, ptr %i.m, i64 768
  %i.at = getelementptr i8, ptr %i.n, i64 1024
  %i.au = getelementptr i8, ptr %i.o, i64 1280
  %i.av = getelementptr i8, ptr %i.p, i64 1536
  %i.aw = getelementptr i8, ptr %i.q, i64 1792
  %i.ax = getelementptr i8, ptr %i.r, i64 2048
  %i.ay = getelementptr i8, ptr %i.s, i64 2304
  %i.az = getelementptr i8, ptr %i.t, i64 2560
  %i.ba = getelementptr i8, ptr %i.u, i64 2816
  %i.bb = getelementptr i8, ptr %i.v, i64 3072
  %i.bc = getelementptr i8, ptr %i.w, i64 3328
  %i.bd = getelementptr i8, ptr %i.x, i64 3584
  %i.be = getelementptr i8, ptr %i.y, i64 3840
  %i.bf = getelementptr i8, ptr %i.z, i64 4096
  %i.bg = getelementptr i8, ptr %i.aa, i64 4352
  %i.bh = getelementptr i8, ptr %i.ab, i64 4608
  %i.bi = getelementptr i8, ptr %i.ac, i64 4864
  %i.bj = getelementptr i8, ptr %i.ad, i64 5120
  %i.bk = getelementptr i8, ptr %i.ae, i64 5376
  %i.bl = getelementptr i8, ptr %i.af, i64 5632
  %i.bm = getelementptr i8, ptr %i.ag, i64 5888
  %i.bn = getelementptr i8, ptr %i.ah, i64 6144
  %i.bo = getelementptr i8, ptr %i.ai, i64 6400
  %i.bp = getelementptr i8, ptr %i.aj, i64 6656
  %i.bq = getelementptr i8, ptr %i.ak, i64 6912
  %i.br = getelementptr i8, ptr %i.al, i64 7168
  %i.bs = getelementptr i8, ptr %i.am, i64 7424
  %i.bt = getelementptr i8, ptr %i.an, i64 7680
  %i.bu = getelementptr i8, ptr %i.ao, i64 7936
  %i.bv = getelementptr i8, ptr %i.ap, i64 8192
  %i.bw = load i8, ptr %i.aq, align 1, !tbaa !28
  %i.bx = load i8, ptr %i.ar, align 1, !tbaa !28
  %i.by = load i8, ptr %i.as, align 1, !tbaa !28
  %i.bz = load i8, ptr %i.at, align 1, !tbaa !28
  %i.ca = load i8, ptr %i.au, align 1, !tbaa !28
  %i.cb = load i8, ptr %i.av, align 1, !tbaa !28
  %i.cc = load i8, ptr %i.aw, align 1, !tbaa !28
  %i.cd = load i8, ptr %i.ax, align 1, !tbaa !28
  %i.ce = load i8, ptr %i.ay, align 1, !tbaa !28
  %i.cf = load i8, ptr %i.az, align 1, !tbaa !28
  %i.cg = load i8, ptr %i.ba, align 1, !tbaa !28
  %i.ch = load i8, ptr %i.bb, align 1, !tbaa !28
  %i.ci = load i8, ptr %i.bc, align 1, !tbaa !28
  %i.cj = load i8, ptr %i.bd, align 1, !tbaa !28
  %i.ck = load i8, ptr %i.be, align 1, !tbaa !28
  %i.cl = load i8, ptr %i.bf, align 1, !tbaa !28
  %i.cm = insertelement <16 x i8> poison, i8 %i.bw, i64 0
  %i.cn = insertelement <16 x i8> %i.cm, i8 %i.bx, i64 1
  %i.co = insertelement <16 x i8> %i.cn, i8 %i.by, i64 2
  %i.cp = insertelement <16 x i8> %i.co, i8 %i.bz, i64 3
  %i.cq = insertelement <16 x i8> %i.cp, i8 %i.ca, i64 4
  %i.cr = insertelement <16 x i8> %i.cq, i8 %i.cb, i64 5
  %i.cs = insertelement <16 x i8> %i.cr, i8 %i.cc, i64 6
  %i.ct = insertelement <16 x i8> %i.cs, i8 %i.cd, i64 7
  %i.cu = insertelement <16 x i8> %i.ct, i8 %i.ce, i64 8
  %i.cv = insertelement <16 x i8> %i.cu, i8 %i.cf, i64 9
  %i.cw = insertelement <16 x i8> %i.cv, i8 %i.cg, i64 10
  %i.cx = insertelement <16 x i8> %i.cw, i8 %i.ch, i64 11
  %i.cy = insertelement <16 x i8> %i.cx, i8 %i.ci, i64 12
  %i.cz = insertelement <16 x i8> %i.cy, i8 %i.cj, i64 13
  %i.da = insertelement <16 x i8> %i.cz, i8 %i.ck, i64 14
  %i.db = insertelement <16 x i8> %i.da, i8 %i.cl, i64 15
  %i.dc = load i8, ptr %i.bg, align 1, !tbaa !28
  %i.dd = load i8, ptr %i.bh, align 1, !tbaa !28
  %i.de = load i8, ptr %i.bi, align 1, !tbaa !28
  %i.df = load i8, ptr %i.bj, align 1, !tbaa !28
  %i.dg = load i8, ptr %i.bk, align 1, !tbaa !28
  %i.dh = load i8, ptr %i.bl, align 1, !tbaa !28
  %i.di = load i8, ptr %i.bm, align 1, !tbaa !28
  %i.dj = load i8, ptr %i.bn, align 1, !tbaa !28
  %i.dk = load i8, ptr %i.bo, align 1, !tbaa !28
  %i.dl = load i8, ptr %i.bp, align 1, !tbaa !28
  %i.dm = load i8, ptr %i.bq, align 1, !tbaa !28
  %i.dn = load i8, ptr %i.br, align 1, !tbaa !28
  %i.do = load i8, ptr %i.bs, align 1, !tbaa !28
  %i.dp = load i8, ptr %i.bt, align 1, !tbaa !28
  %i.dq = load i8, ptr %i.bu, align 1, !tbaa !28
  %i.dr = load i8, ptr %i.bv, align 1, !tbaa !28
  %i.ds = insertelement <16 x i8> poison, i8 %i.dc, i64 0
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 1
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 2
  %i.dv = insertelement <16 x i8> %i.du, i8 %i.df, i64 3
  %i.dw = insertelement <16 x i8> %i.dv, i8 %i.dg, i64 4
  %i.dx = insertelement <16 x i8> %i.dw, i8 %i.dh, i64 5
  %i.dy = insertelement <16 x i8> %i.dx, i8 %i.di, i64 6
  %i.dz = insertelement <16 x i8> %i.dy, i8 %i.dj, i64 7
  %i.ea = insertelement <16 x i8> %i.dz, i8 %i.dk, i64 8
  %i.eb = insertelement <16 x i8> %i.ea, i8 %i.dl, i64 9
  %i.ec = insertelement <16 x i8> %i.eb, i8 %i.dm, i64 10
  %i.ed = insertelement <16 x i8> %i.ec, i8 %i.dn, i64 11
  %i.ee = insertelement <16 x i8> %i.ed, i8 %i.do, i64 12
  %i.ef = insertelement <16 x i8> %i.ee, i8 %i.dp, i64 13
  %i.eg = insertelement <16 x i8> %i.ef, i8 %i.dq, i64 14
  %i.eh = insertelement <16 x i8> %i.eg, i8 %i.dr, i64 15
  %i.ei = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.db, <16 x i8> %vec.phi) ; 2 uses
  %i.ej = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.eh, <16 x i8> %vec.phi32) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.ei, <16 x i8> %i.ej)
  %i.el = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !77

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.el, %vec.epilog.iter.check ], [ %i.i, %vector.main.loop.iter.check ]
  %3 = getelementptr i8, ptr %.01823.us, i64 %i.g
  %broadcast.splatinsert66 = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat67 = shufflevector <8 x i8> %broadcast.splatinsert66, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index68 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next78, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi69 = phi <8 x i8> [ %broadcast.splat67, %vec.epilog.ph ], [ %i.fs, %vec.epilog.vector.body ]
  %i.em = shl i64 %index68, 8                     ; 8 uses
  %next.gep70 = getelementptr i8, ptr %.01823.us, i64 %i.em
  %i.en = getelementptr i8, ptr %.01823.us, i64 %i.em
  %i.eo = getelementptr i8, ptr %.01823.us, i64 %i.em
  %i.ep = getelementptr i8, ptr %.01823.us, i64 %i.em
  %i.eq = getelementptr i8, ptr %.01823.us, i64 %i.em
  %i.er = getelementptr i8, ptr %.01823.us, i64 %i.em
  %i.es = getelementptr i8, ptr %.01823.us, i64 %i.em
  %i.et = getelementptr i8, ptr %.01823.us, i64 %i.em
  %i.eu = getelementptr inbounds nuw i8, ptr %next.gep70, i64 256
  %i.ev = getelementptr i8, ptr %i.en, i64 512
  %i.ew = getelementptr i8, ptr %i.eo, i64 768
  %i.ex = getelementptr i8, ptr %i.ep, i64 1024
  %i.ey = getelementptr i8, ptr %i.eq, i64 1280
  %i.ez = getelementptr i8, ptr %i.er, i64 1536
  %i.fa = getelementptr i8, ptr %i.es, i64 1792
  %i.fb = getelementptr i8, ptr %i.et, i64 2048
  %i.fc = load i8, ptr %i.eu, align 1, !tbaa !28
  %i.fd = load i8, ptr %i.ev, align 1, !tbaa !28
  %i.fe = load i8, ptr %i.ew, align 1, !tbaa !28
  %i.ff = load i8, ptr %i.ex, align 1, !tbaa !28
  %i.fg = load i8, ptr %i.ey, align 1, !tbaa !28
  %i.fh = load i8, ptr %i.ez, align 1, !tbaa !28
  %i.fi = load i8, ptr %i.fa, align 1, !tbaa !28
  %i.fj = load i8, ptr %i.fb, align 1, !tbaa !28
  %i.fk = insertelement <8 x i8> poison, i8 %i.fc, i64 0
  %i.fl = insertelement <8 x i8> %i.fk, i8 %i.fd, i64 1
  %i.fm = insertelement <8 x i8> %i.fl, i8 %i.fe, i64 2
  %i.fn = insertelement <8 x i8> %i.fm, i8 %i.ff, i64 3
  %i.fo = insertelement <8 x i8> %i.fn, i8 %i.fg, i64 4
  %i.fp = insertelement <8 x i8> %i.fo, i8 %i.fh, i64 5
  %i.fq = insertelement <8 x i8> %i.fp, i8 %i.fi, i64 6
  %i.fr = insertelement <8 x i8> %i.fq, i8 %i.fj, i64 7
  %i.fs = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.fr, <8 x i8> %vec.phi69) ; 2 uses
  %index.next78 = add nuw i64 %index68, 8         ; 2 uses
  %i.ft = icmp eq i64 %index.next78, %n.vec65
  br i1 %i.ft, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !74

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.fu = tail call i8 @llvm.vector.reduce.umin.v8i8(<8 x i8> %i.fs) ; 2 uses
  br i1 %cmp.n79, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.018.pn22.us.ph = phi ptr [ %.01823.us, %iter.check ], [ %i.j, %vec.epilog.iter.check ], [ %3, %vec.epilog.middle.block ]
  %.01521.us.ph = phi i8 [ %i.i, %iter.check ], [ %i.el, %vec.epilog.iter.check ], [ %i.fu, %vec.epilog.middle.block ]
  %.01720.us.ph = phi i32 [ 0, %iter.check ], [ %i.f, %vec.epilog.iter.check ], [ %i.h, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.018.pn22.us = phi ptr [ %.0.us, %vec.epilog.scalar.ph ], [ %.018.pn22.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.01521.us = phi i8 [ %spec.select.us, %vec.epilog.scalar.ph ], [ %.01521.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.01720.us = phi i32 [ %i.fw, %vec.epilog.scalar.ph ], [ %.01720.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.0.us = getelementptr inbounds nuw i8, ptr %.018.pn22.us, i64 256 ; 2 uses
  %i.fv = load i8, ptr %.0.us, align 1, !tbaa !28
  %spec.select.us = tail call i8 @llvm.umin.i8(i8 %i.fv, i8 %.01521.us) ; 2 uses
  %i.fw = add nuw nsw i32 %.01720.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.fw, %1
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !75

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %spec.select.us.lcssa = phi i8 [ %i.fu, %vec.epilog.middle.block ], [ %i.el, %middle.block ], [ %spec.select.us, %vec.epilog.scalar.ph ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.01823.us, i64 1
  store i8 %spec.select.us.lcssa, ptr %.01823.us, align 1, !tbaa !28
  %i.fy = add nuw nsw i32 %.01624.us, 1           ; 2 uses
  %exitcond27.not = icmp eq i32 %i.fy, %2
  br i1 %exitcond27.not, label %.loopexit, label %iter.check, !llvm.loop !76

.loopexit:                                        ; preds = %._crit_edge.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @float_to_fixed24_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #3 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.018 = phi ptr [ %0, %bb.a ], [ %i.av, %bb.b ] ; 9 uses
  %.017 = phi ptr [ %1, %bb.a ], [ %i.aq, %bb.b ] ; 9 uses
  %.0 = phi i64 [ %2, %bb.a ], [ %i.aw, %bb.b ]
  %i.a = getelementptr inbounds nuw i8, ptr %.017, i64 4
  %i.b = load float, ptr %.017, align 4, !tbaa !25
  %i.c = fmul nsz float %i.b, f0x4B800000
  %i.d = tail call i64 @llvm.lrint.i64.f32(float %i.c)
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %.018, i64 4
  store i32 %i.e, ptr %.018, align 4, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %.017, i64 8
  %i.h = load float, ptr %i.a, align 4, !tbaa !25
  %i.i = fmul nsz float %i.h, f0x4B800000
  %i.j = tail call i64 @llvm.lrint.i64.f32(float %i.i)
  %i.k = trunc i64 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 8
  store i32 %i.k, ptr %i.f, align 4, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %.017, i64 12
  %i.n = load float, ptr %i.g, align 4, !tbaa !25
  %i.o = fmul nsz float %i.n, f0x4B800000
  %i.p = tail call i64 @llvm.lrint.i64.f32(float %i.o)
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %.018, i64 12
  store i32 %i.q, ptr %i.l, align 4, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %.017, i64 16
  %i.t = load float, ptr %i.m, align 4, !tbaa !25
  %i.u = fmul nsz float %i.t, f0x4B800000
  %i.v = tail call i64 @llvm.lrint.i64.f32(float %i.u)
  %i.w = trunc i64 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %.018, i64 16
  store i32 %i.w, ptr %i.r, align 4, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %.017, i64 20
  %i.z = load float, ptr %i.s, align 4, !tbaa !25
  %i.aa = fmul nsz float %i.z, f0x4B800000
  %i.ab = tail call i64 @llvm.lrint.i64.f32(float %i.aa)
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %.018, i64 20
  store i32 %i.ac, ptr %i.x, align 4, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %.017, i64 24
  %i.af = load float, ptr %i.y, align 4, !tbaa !25
  %i.ag = fmul nsz float %i.af, f0x4B800000
  %i.ah = tail call i64 @llvm.lrint.i64.f32(float %i.ag)
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %.018, i64 24
  store i32 %i.ai, ptr %i.ad, align 4, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %.017, i64 28
  %i.al = load float, ptr %i.ae, align 4, !tbaa !25
  %i.am = fmul nsz float %i.al, f0x4B800000
  %i.an = tail call i64 @llvm.lrint.i64.f32(float %i.am)
  %i.ao = trunc i64 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %.018, i64 28
  store i32 %i.ao, ptr %i.aj, align 4, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %.017, i64 32
  %i.ar = load float, ptr %i.ak, align 4, !tbaa !25
  %i.as = fmul nsz float %i.ar, f0x4B800000
  %i.at = tail call i64 @llvm.lrint.i64.f32(float %i.as)
  %i.au = trunc i64 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %.018, i64 32
  store i32 %i.au, ptr %i.ap, align 4, !tbaa !19
  %i.aw = add i64 %.0, -8                         ; 2 uses
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !78

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ac3_bit_alloc_calc_bap_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7) #3 {
bb.a:
  %i.a = icmp eq i32 %4, -960
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %7, i8 0, i64 256, i1 false)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr inbounds i8, ptr @ff_ac3_bin_to_band_tab, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !28
  %i.e = add i32 %5, %4
  %i.f = zext i8 %i.d to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge ], [ %i.f, %bb.c ] ; 2 uses
  %.0 = phi i32 [ %.1.lcssa, %._crit_edge ], [ %2, %bb.c ] ; 3 uses
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr @ff_ac3_band_start_tab, i64 %indvars.iv.next39
  %i.h = load i8, ptr %i.g, align 1, !tbaa !28
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.i) ; 4 uses
  %i.k = icmp slt i32 %.0, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv38
  %i.m = load i16, ptr %i.l, align 2, !tbaa !16
  %i.n = sext i16 %i.m to i32
  %i.o = sub i32 %i.n, %i.e
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %spec.select = and i32 %i.p, 8160
  %i.q = add i32 %spec.select, %5                 ; 3 uses
  %i.r = sext i32 %.0 to i64                      ; 6 uses
  %wide.trip.count = sext i32 %i.j to i64         ; 3 uses
  %i.s = sub nsw i64 %wide.trip.count, %i.r
  %xtraiter = and i64 %i.s, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.t = getelementptr inbounds [2 x i8], ptr %1, i64 %i.r
  %i.u = load i16, ptr %i.t, align 2, !tbaa !16
  %i.v = sext i16 %i.u to i32
  %i.w = sub i32 %i.v, %i.q
  %i.x = ashr i32 %i.w, 5
  %i.y = tail call i32 @llvm.smax.i32(i32 %i.x, i32 0)
end_hunk_0
