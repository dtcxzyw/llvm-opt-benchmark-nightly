Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapgen_v6?download=true
inline.NumInlined: 602
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8MapgenV66addMudEv:bb.a

bb.o:                                             ; preds = %bb.h
  %i.ed = load float, ptr %i.z, align 8, !tbaa !141 ; 2 uses
  %i.ee = fcmp nsz ogt float %i.df, %i.ed
  br i1 %i.ee, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ef = and i32 %i.ao, 2
  %.not20.i = icmp eq i32 %i.ef, 0
  br i1 %.not20.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eg = fpext nsz float %i.df to double
  %i.eh = fpext nsz float %i.ed to double
  %i.ei = fadd nsz double %i.eh, -1.000000e-01
  %i.ej = fcmp nsz olt double %i.ei, %i.eg
  br i1 %i.ej, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ek = load i32, ptr %i.y, align 8, !tbaa !81
  %i.el = tail call nsz noundef float @_Z7noise2diii(i32 noundef %i.cv, i32 noundef %i.ak, i32 noundef %i.ek)
  %i.em = fpext nsz float %i.el to double
  %i.en = fadd nsz double %i.em, 1.000000e+00
  %i.eo = load float, ptr %i.z, align 8, !tbaa !141
  %i.ep = fsub nsz float %i.eo, %i.df
  %i.eq = fpext nsz float %i.ep to double
  %i.er = fmul nsz double %i.eq, 2.000000e+01
  %i.es = fcmp nsz ogt double %i.en, %i.er
  br i1 %i.es, label %bb.t, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.r
  %.pre.i = load i32, ptr %i.o, align 4, !tbaa !75
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i, %bb.q, %bb.p
  %i.et = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.ao, %bb.q ], [ %i.ao, %bb.p ]
  %.not22.i64 = trunc i32 %i.et to i1
  %i.eu = fcmp nsz ogt float %i.dk, 7.500000e-01
  %or.cond.i = select i1 %.not22.i64, i1 %i.eu, i1 false
  %spec.select.i = select i1 %or.cond.i, i32 2, i32 0
  br label %.thread

bb.t:                                             ; preds = %bb.r, %bb.o, %bb.l
  %i.ev = sext i16 %.0.i to i32
  %i.ew = add nsw i32 %i.cm, %i.ev
  %i.ex = load i32, ptr %i.ac, align 4, !tbaa !133
  %i.ey = add nsw i32 %i.ex, 1
  %.not55 = icmp sgt i32 %i.ew, %i.ey
  br i1 %.not55, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.ez = icmp slt i16 %.0.i, 1
  br i1 %i.ez, label %bb.v, label %bb.y

.thread:                                          ; preds = %bb.l, %bb.n, %bb.m, %bb.s
  %.1.i.ph = phi i32 [ %spec.select.i, %bb.s ], [ %.26.i, %bb.n ], [ 0, %bb.m ], [ 2, %bb.l ] ; 3 uses
  %i.fa = zext nneg i16 %.0.i to i32
  %i.fb = icmp slt i16 %.0.i, 1
  br i1 %i.fb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.thread, %bb.u
  %.1.i98100 = phi i32 [ %.1.i.ph, %.thread ], [ 1, %bb.u ]
  %i.fc = phi i1 [ false, %.thread ], [ true, %bb.u ]
  %i.fd = sub i16 1, %.0.i
  br label %bb.y

bb.w:                                             ; preds = %.thread
  %i.fe = load ptr, ptr %i.aa, align 8, !tbaa !87
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 80
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !138
  %i.fh = sext i32 %.148119 to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.fh
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !15
  %i.fk = load float, ptr %i.ab, align 4, !tbaa !142
  %i.fl = fcmp nsz ogt float %i.fj, %i.fk
  br i1 %i.fl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fm = add nsw i32 %i.cm, %i.fa
  %i.fn = load i32, ptr %i.ac, align 4, !tbaa !133
  %i.fo = add nsw i32 %i.fn, 2
  %.not57 = icmp sgt i32 %i.fm, %i.fo
  %spec.select105 = select i1 %.not57, i32 %.sroa.090.0.insert.ext96, i32 %.sroa.071.0.insert.ext
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %bb.x, %bb.u, %bb.v, %bb.w
  %i.fp = phi i1 [ %i.fc, %bb.v ], [ false, %bb.w ], [ false, %bb.x ], [ true, %bb.u ], [ true, %bb.t ]
  %.1.i97 = phi i32 [ %.1.i98100, %bb.v ], [ %.1.i.ph, %bb.w ], [ %.1.i.ph, %bb.x ], [ 1, %bb.u ], [ 1, %bb.t ]
  %.sroa.069.0 = phi i32 [ %.sroa.087.0.insert.ext, %bb.v ], [ %.sroa.090.0.insert.ext96, %bb.w ], [ %spec.select105, %bb.x ], [ %.sroa.070.0.insert.ext, %bb.u ], [ %.sroa.071.0.insert.ext, %bb.t ]
  %.044 = phi i16 [ %i.fd, %bb.v ], [ %.0.i, %bb.w ], [ %.0.i, %bb.x ], [ %.0.i, %bb.u ], [ %.0.i, %bb.t ] ; 2 uses
  %i.fq = icmp eq i32 %.1.i97, 3
  %or.cond = or i1 %i.fp, %i.fq
  %i.fr = icmp sgt i16 %i.cl, 20
  %or.cond4 = and i1 %i.fr, %or.cond
  br i1 %or.cond4, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fs = sext i16 %.044 to i32
  %.lhs.trunc = add nsw i16 %i.cl, -20
  %i.ft = udiv i16 %.lhs.trunc, 5
  %.zext = zext nneg i16 %i.ft to i32
  %i.fu = sub nsw i32 %i.fs, %.zext
  %spec.select106 = tail call i32 @llvm.smax.i32(i32 %i.fu, i32 0)
  %spec.select = trunc nuw nsw i32 %spec.select106 to i16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.1 = phi i16 [ %spec.select, %bb.z ], [ %.044, %bb.y ] ; 2 uses
  %i.fv = load ptr, ptr %i.q, align 8, !tbaa !118 ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 20 ; 2 uses
  %i.fx = add i16 %i.cl, 1                        ; 3 uses
  %i.fy = load i16, ptr %i.ad, align 8, !tbaa !151
  %.not58112 = icmp sle i16 %i.fx, %i.fy
  %.not59113 = icmp sgt i16 %.1, 0
  %or.cond60114 = select i1 %.not58112, i1 %.not59113, i1 false
  br i1 %or.cond60114, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.aa
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.ga = load i16, ptr %i.fz, align 4, !tbaa !126
  %i.gb = sext i16 %i.ga to i32
  %i.gc = sub nsw i32 %i.cv, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  %i.ge = load i16, ptr %i.gd, align 4, !tbaa !127
  %i.gf = sext i16 %i.ge to i32
  %i.gg = sub nsw i32 %i.ak, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !128
  %i.gj = mul nsw i32 %i.gg, %i.gi
  %i.gk = sext i16 %i.fx to i32
  %i.gl = add i32 %i.gj, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fv, i64 10
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !152
  %i.go = sext i16 %i.gn to i32
  %i.gp = sub i32 %i.gl, %i.go
  %i.gq = load i32, ptr %i.fw, align 4, !tbaa !125
  %i.gr = mul i32 %i.gp, %i.gq
  %i.gs = add nsw i32 %i.gc, %i.gr
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0117 = phi i16 [ %i.hb, %.lr.ph ], [ %i.fx, %.lr.ph.preheader ]
  %.043116 = phi i16 [ %i.gy, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.093115 = phi i32 [ %i.ha, %.lr.ph ], [ %i.gs, %.lr.ph.preheader ] ; 2 uses
  %i.gt = load ptr, ptr %i.q, align 8, !tbaa !118
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !129
  %i.gw = zext i32 %.093115 to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.gw
  store i32 %.sroa.069.0, ptr %i.gx, align 4
  %i.gy = add nuw nsw i16 %.043116, 1             ; 2 uses
  %i.gz = load i32, ptr %i.fw, align 4, !tbaa !153
  %i.ha = add i32 %i.gz, %.093115
  %i.hb = add i16 %.0117, 1                       ; 2 uses
  %i.hc = load i16, ptr %i.ad, align 8, !tbaa !151
  %.not58 = icmp sle i16 %i.hb, %i.hc
  %.not59 = icmp slt i16 %i.gy, %.1
  %or.cond60 = select i1 %.not58, i1 %.not59, i1 false
  br i1 %or.cond60, label %.lr.ph, label %.loopexit, !llvm.loop !282

.loopexit:                                        ; preds = %.lr.ph, %bb.aa, %_ZN8MapgenV616find_stone_levelEN4core8vector2dIsEE.exit
  %i.hd = add i16 %.045123, 1                     ; 2 uses
  %i.he = add i32 %.148119, 1                     ; 2 uses
  %i.hf = load i16, ptr %i.d, align 2, !tbaa !149 ; 2 uses
  %.not53 = icmp sgt i16 %i.hd, %i.hf
  br i1 %.not53, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !283
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN8MapgenV67flowMudERsS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(422) %0, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(2) %1, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(2) %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 214 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 218 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 210 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 390
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 222
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.q = load i16, ptr %1, align 2, !tbaa !76
  %i.r = load i16, ptr %2, align 2, !tbaa !76     ; 4 uses
  %i.s = icmp sgt i16 %i.q, %i.r
  br i1 %i.s, label %.split157.us, label %.split

.split157.us:                                     ; preds = %._crit_edge154, %bb.a
  ret void

.split:                                           ; preds = %bb.a, %._crit_edge154
  %i.t = phi i16 [ %i.aa, %._crit_edge154 ], [ %i.r, %bb.a ] ; 3 uses
  %i.u = phi ptr [ %i.ab, %._crit_edge154 ], [ %i.b, %bb.a ] ; 3 uses
  %i.v = phi i16 [ %i.ac, %._crit_edge154 ], [ %i.r, %bb.a ] ; 5 uses
  %i.w = phi i16 [ %i.ad, %._crit_edge154 ], [ %i.r, %bb.a ] ; 2 uses
  %i.x = phi i1 [ true, %._crit_edge154 ], [ false, %bb.a ] ; 2 uses
  %i.y = load i16, ptr %1, align 2, !tbaa !76     ; 3 uses
  %.not150 = icmp sgt i16 %i.y, %i.w
  br i1 %.not150, label %._crit_edge154, label %.lr.ph153

.lr.ph153:                                        ; preds = %.split
  %i.z = icmp sgt i16 %i.y, %i.v
  br i1 %i.z, label %._crit_edge154, label %.lr.ph153.split

._crit_edge154:                                   ; preds = %._crit_edge149, %.lr.ph153, %.split
  %i.aa = phi i16 [ %i.t, %.lr.ph153 ], [ %i.t, %.split ], [ %i.ai, %._crit_edge149 ]
  %i.ab = phi ptr [ %i.u, %.lr.ph153 ], [ %i.u, %.split ], [ %i.aj, %._crit_edge149 ]
  %i.ac = phi i16 [ %i.v, %.lr.ph153 ], [ %i.v, %.split ], [ %i.ai, %._crit_edge149 ]
  %i.ad = phi i16 [ %i.v, %.lr.ph153 ], [ %i.w, %.split ], [ %i.ai, %._crit_edge149 ]
  br i1 %i.x, label %.split157.us, label %.split, !llvm.loop !284

.lr.ph153.split:                                  ; preds = %.lr.ph153, %._crit_edge149
  %i.ae = phi i16 [ %i.ai, %._crit_edge149 ], [ %i.t, %.lr.ph153 ] ; 2 uses
  %i.af = phi ptr [ %i.aj, %._crit_edge149 ], [ %i.u, %.lr.ph153 ] ; 2 uses
  %i.ag = phi i16 [ %i.ai, %._crit_edge149 ], [ %i.v, %.lr.ph153 ] ; 2 uses
  %.068151 = phi i16 [ %i.ak, %._crit_edge149 ], [ %i.y, %.lr.ph153 ] ; 3 uses
  %i.ah = load i16, ptr %1, align 2, !tbaa !76    ; 2 uses
  %.not72145 = icmp sgt i16 %i.ah, %i.ag
  br i1 %.not72145, label %._crit_edge149, label %.lr.ph148

._crit_edge149:                                   ; preds = %._crit_edge, %.lr.ph153.split
  %i.ai = phi i16 [ %i.ae, %.lr.ph153.split ], [ %i.kx, %._crit_edge ] ; 6 uses
  %i.aj = phi ptr [ %i.af, %.lr.ph153.split ], [ %i.kz, %._crit_edge ] ; 2 uses
  %i.ak = add i16 %.068151, 1                     ; 2 uses
  %.not = icmp sgt i16 %i.ak, %i.ai
  br i1 %.not, label %._crit_edge154, label %.lr.ph153.split, !llvm.loop !285

.lr.ph148:                                        ; preds = %.lr.ph153.split, %._crit_edge
  %i.al = phi i16 [ %i.kx, %._crit_edge ], [ %i.ae, %.lr.ph153.split ]
  %i.am = phi i16 [ %i.ky, %._crit_edge ], [ %i.ag, %.lr.ph153.split ]
  %i.an = phi ptr [ %i.kz, %._crit_edge ], [ %i.af, %.lr.ph153.split ] ; 2 uses
  %.069146 = phi i16 [ %i.la, %._crit_edge ], [ %i.ah, %.lr.ph153.split ] ; 3 uses
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph148
  %i.ao = load i16, ptr %i.f, align 2, !tbaa !149
  %i.ap = load i16, ptr %i.g, align 2, !tbaa !148
  %i.aq = sub i16 %i.ao, %.069146
  %i.ar = sub i16 %i.ap, %.068151
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph148
  %i.as = load i16, ptr %i.d, align 8, !tbaa !135
  %i.at = load i16, ptr %i.e, align 4, !tbaa !134
  %i.au = add i16 %i.as, %.069146
  %i.av = add i16 %i.at, %.068151
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0111.0 = phi i16 [ %i.aq, %bb.b ], [ %i.au, %bb.c ] ; 3 uses
  %.sroa.7.0 = phi i16 [ %i.ar, %bb.b ], [ %i.av, %bb.c ] ; 3 uses
  %i.aw = load i16, ptr %i.h, align 8, !tbaa !151 ; 2 uses
  %i.ax = load i16, ptr %i.i, align 2, !tbaa !146 ; 2 uses
  %.not73143 = icmp slt i16 %i.aw, %i.ax
  br i1 %.not73143, label %._crit_edge, label %.preheader130

.preheader130:                                    ; preds = %bb.d
  %i.ay = sext i16 %.sroa.7.0 to i32
  %i.az = sext i16 %.sroa.0111.0 to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.preheader130, %_ZN8MapgenV67moveMudEjjjN4core8vector2dIsEENS0_8vector3dIiEE.exit
  %.166261 = phi i16 [ %i.aw, %.preheader130 ], [ %i.kv, %_ZN8MapgenV67moveMudEjjjN4core8vector2dIsEENS0_8vector3dIiEE.exit ] ; 2 uses
  %i.ba = phi ptr [ %i.an, %.preheader130 ], [ %.pre, %_ZN8MapgenV67moveMudEjjjN4core8vector2dIsEENS0_8vector3dIiEE.exit ] ; 7 uses
  %i.bb = phi i16 [ %i.ax, %.preheader130 ], [ %.pre170, %_ZN8MapgenV67moveMudEjjjN4core8vector2dIsEENS0_8vector3dIiEE.exit ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load i16, ptr %i.bc, align 4, !tbaa !126
  %i.be = sext i16 %i.bd to i32
  %i.bf = sub nsw i32 %i.az, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bh = load i16, ptr %i.bg, align 4, !tbaa !127
  %i.bi = sext i16 %i.bh to i32
  %i.bj = sub nsw i32 %i.ay, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !128
  %i.bm = mul nsw i32 %i.bj, %i.bl
  %i.bn = sext i16 %.166261 to i32
  %i.bo = add i32 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 10
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !152
  %i.br = sext i16 %i.bq to i32
  %i.bs = sub i32 %i.bo, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !125
  %i.bv = mul i32 %i.bs, %i.bu
  %i.bw = add nsw i32 %i.bf, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !129 ; 15 uses
  %i.bz = load i16, ptr %i.j, align 2, !tbaa !98  ; 3 uses
  %i.ca = load i16, ptr %i.k, align 8
  %i.cb = load i16, ptr %i.l, align 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %.267139 = phi i16 [ %.166261, %.lr.ph ], [ %i.ck, %bb.g ] ; 3 uses
  %.0118138 = phi i32 [ %i.bw, %.lr.ph ], [ %i.cj, %bb.g ] ; 8 uses
  %i.cc = zext i32 %.0118138 to i64               ; 4 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 4, !tbaa !131 ; 4 uses
  %i.cf = icmp eq i16 %i.ce, %i.bz
  br i1 %i.cf, label %._crit_edge173, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cg = icmp eq i16 %i.ce, %i.ca
  %i.ch = icmp eq i16 %i.ce, %i.cb
  %or.cond = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = load i32, ptr %i.c, align 4, !tbaa !153
  %i.cj = sub i32 %.0118138, %i.ci
  %i.ck = add i16 %.267139, -1                    ; 2 uses
  %.not74 = icmp slt i16 %i.ck, %i.bb
  br i1 %.not74, label %._crit_edge.loopexit, label %bb.e, !llvm.loop !286

._crit_edge173:                                   ; preds = %bb.e
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.cc
  %.pre174 = load i32, ptr %i.c, align 4, !tbaa !153
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.cc ; 2 uses
  %i.cn = load i16, ptr %i.k, align 8, !tbaa !100
  %i.co = icmp eq i16 %i.ce, %i.cn
  %.pre175 = load i32, ptr %i.c, align 4, !tbaa !153 ; 2 uses
  br i1 %i.co, label %bb.i, label %.thread121

bb.i:                                             ; preds = %._crit_edge173, %bb.h
  %i.cp = phi ptr [ %i.cl, %._crit_edge173 ], [ %i.cm, %bb.h ] ; 2 uses
  %i.cq = phi i32 [ %.pre174, %._crit_edge173 ], [ %.pre175, %bb.h ] ; 2 uses
  store i16 %i.bz, ptr %i.cp, align 4, !tbaa !131
  %i.cr = sub i32 %.0118138, %i.cq
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 4, !tbaa !131 ; 2 uses
  %.not75 = icmp eq i16 %i.cu, %i.bz
  %i.cv = load i16, ptr %i.k, align 8
  %.not76 = icmp eq i16 %i.cu, %i.cv
  %or.cond263 = select i1 %.not75, i1 true, i1 %.not76
  br i1 %or.cond263, label %.thread121, label %_ZN8MapgenV67moveMudEjjjN4core8vector2dIsEENS0_8vector3dIiEE.exit

.thread121:                                       ; preds = %bb.h, %bb.i
  %i.cw = phi ptr [ %i.cp, %bb.i ], [ %i.cm, %bb.h ]
  %i.cx = phi i32 [ %i.cq, %bb.i ], [ %.pre175, %bb.h ] ; 11 uses
  %i.cy = add i32 %i.cx, %.0118138                ; 3 uses
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.cz
  %i.db = load ptr, ptr %i.m, align 8, !tbaa !143 ; 2 uses
  %i.dc = load i16, ptr %i.da, align 4, !tbaa !131
  %i.dd = zext i16 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !156
  %i.dg = load ptr, ptr %i.db, align 8, !tbaa !157 ; 13 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = sdiv exact i64 %i.dj, 2072              ; 10 uses
  %i.dl = icmp ugt i64 %i.dk, %i.dd
  br i1 %i.dl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread121
  %i.dm = getelementptr inbounds nuw [2072 x i8], ptr %i.dg, i64 %i.dd ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !96
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.k, label %_ZNK14NodeDefManager3getERK7MapNode.exit

bb.k:                                             ; preds = %bb.j, %.thread121
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 259000
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit

_ZNK14NodeDefManager3getERK7MapNode.exit:         ; preds = %bb.j, %bb.k
  %i.dr = phi ptr [ %i.dq, %bb.k ], [ %i.dm, %bb.j ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1403
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !290, !range !291, !noundef !56
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %_ZN8MapgenV67moveMudEjjjN4core8vector2dIsEENS0_8vector3dIiEE.exit, label %.preheader

.preheader:                                       ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit
  %i.dv = load i32, ptr %i.n, align 4, !tbaa !292 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dg, i64 259000 ; 9 uses
  %reass.mul.i = mul i32 %i.dv, %i.cx
  %i.dx = add i32 %.0118138, %reass.mul.i         ; 2 uses
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.dy
  %i.ea = load i16, ptr %i.dz, align 4, !tbaa !131
  %i.eb = zext i16 %i.ea to i64                   ; 2 uses
  %i.ec = icmp ugt i64 %i.dk, %i.eb
  br i1 %i.ec, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.preheader
  %i.ed = getelementptr inbounds nuw [2072 x i8], ptr %i.dg, i64 %i.eb ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !96
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %bb.m, label %_ZNK14NodeDefManager3getERK7MapNode.exit84

bb.m:                                             ; preds = %bb.l, %.preheader
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit84

_ZNK14NodeDefManager3getERK7MapNode.exit84:       ; preds = %bb.l, %bb.m
  %i.eh = phi ptr [ %i.dw, %bb.m ], [ %i.ed, %bb.l ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1403
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !290, !range !291, !noundef !56
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %.critedge79, label %bb.n

bb.n:                                             ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit84
  %i.el = sub i32 %i.dx, %i.cx                    ; 2 uses
  %i.em = zext i32 %i.el to i64
end_hunk_0
