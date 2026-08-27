Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapgen_v6?download=true
inline.NumInlined: 602
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8MapgenV66addMudEv:bb.a
  %i.bp = sub nsw i32 %i.ak, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !170
  %i.bs = mul nsw i32 %i.bp, %i.br
  %i.bt = sext i16 %i.bd to i32
  %i.bu = sext i16 %i.bf to i32                   ; 4 uses
  %i.bv = sub nsw i32 %i.bt, %i.bu
  %i.bw = add i32 %i.bv, %i.bs
  %i.bx = mul i32 %i.bw, %i.bg
  %i.by = add nsw i32 %i.bl, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !171
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i
  %.01424.i = phi i16 [ %i.bd, %.lr.ph.i ], [ %i.cj, %bb.g ] ; 3 uses
  %.01823.i = phi i32 [ %i.by, %.lr.ph.i ], [ %i.ci, %bb.g ] ; 2 uses
  %i.cb = zext i32 %.01823.i to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 4, !tbaa !172 ; 3 uses
  %.not16.i = icmp eq i16 %i.cd, 127
  br i1 %.not16.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ce = load i16, ptr %i.r, align 4, !tbaa !122
  %i.cf = icmp eq i16 %i.cd, %i.ce
  br i1 %i.cf, label %_ZN8MapgenV616find_stone_levelEN4core8vector2dIsEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cg = load i16, ptr %i.s, align 2, !tbaa !130
  %i.ch = icmp eq i16 %i.cd, %i.cg
  br i1 %i.ch, label %_ZN8MapgenV616find_stone_levelEN4core8vector2dIsEE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.ci = sub i32 %.01823.i, %i.bg
  %i.cj = add i16 %.01424.i, -1                   ; 2 uses
  %.not.i61 = icmp slt i16 %i.cj, %i.bf
  br i1 %.not.i61, label %.loopexit.i, label %bb.d, !llvm.loop !174

.loopexit.i:                                      ; preds = %bb.g, %_ZN8MapgenV612getMudAmountEi.exit..loopexit.i_crit_edge
  %.pre133.pre-phi = phi i32 [ %.pre134, %_ZN8MapgenV612getMudAmountEi.exit..loopexit.i_crit_edge ], [ %i.bu, %bb.g ]
  %i.ck = add nsw i16 %i.bf, -1
  br label %_ZN8MapgenV616find_stone_levelEN4core8vector2dIsEE.exit

_ZN8MapgenV616find_stone_levelEN4core8vector2dIsEE.exit: ; preds = %bb.e, %bb.f, %.loopexit.i
  %.pre-phi = phi i32 [ %.pre133.pre-phi, %.loopexit.i ], [ %i.bu, %bb.f ], [ %i.bu, %bb.e ]
  %i.cl = phi i16 [ %i.ck, %.loopexit.i ], [ %.01424.i, %bb.f ], [ %.01424.i, %bb.e ] ; 4 uses
  %i.cm = sext i16 %i.cl to i32                   ; 3 uses
  %i.cn = add nsw i32 %.pre-phi, -1
  %i.co = icmp eq i32 %i.cn, %i.cm
  br i1 %i.co, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %_ZN8MapgenV616find_stone_levelEN4core8vector2dIsEE.exit
  %i.cp = load i16, ptr %i.u, align 8, !tbaa !184
  %i.cq = sext i16 %i.cp to i32
  %i.cr = sub nsw i32 %i.ak, %i.cq
  %i.cs = load i32, ptr %i.v, align 8, !tbaa !89
  %i.ct = add nsw i32 %i.cs, 32
  %i.cu = mul nsw i32 %i.cr, %i.ct
  %i.cv = sext i16 %.045123 to i32                ; 4 uses
  %i.cw = load i16, ptr %i.t, align 4, !tbaa !185
  %i.cx = sext i16 %i.cw to i32
  %i.cy = sub nsw i32 %i.cv, %i.cx
  %i.cz = add nsw i32 %i.cy, %i.cu
  %i.da = load ptr, ptr %i.w, align 8, !tbaa !112
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 80
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !181
  %i.dd = sext i32 %i.cz to i64                   ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !11 ; 4 uses
  %i.dg = load ptr, ptr %i.x, align 8, !tbaa !113
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 80
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !181
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.dd
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !11 ; 3 uses
  %i.dl = and i32 %i.ao, 8
  %.not.i63 = icmp eq i32 %i.dl, 0
  br i1 %.not.i63, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dm = and i32 %i.ao, 2
  %.not23.i = icmp eq i32 %i.dm, 0
  br i1 %.not23.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dn = load i32, ptr %i.y, align 8, !tbaa !105
  %i.do = tail call nsz noundef float @_Z7noise2diii(i32 noundef %i.cv, i32 noundef %i.ak, i32 noundef %i.dn)
  %i.dp = fdiv nsz float %i.do, 4.000000e+01
  %i.dq = fpext nsz float %i.dp to double
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.dr = phi double [ %i.dq, %bb.j ], [ 0.000000e+00, %bb.i ] ; 4 uses
  %i.ds = fpext nsz float %i.df to double         ; 2 uses
  %i.dt = fadd nsz double %i.dr, 4.000000e-01
  %i.du = fcmp nsz olt double %i.dt, %i.ds
  br i1 %i.du, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dv = fpext nsz float %i.dk to double
  %i.dw = fadd nsz double %i.dr, 5.000000e-01
  %i.dx = fcmp nsz olt double %i.dw, %i.dv
  br i1 %i.dx, label %.thread, label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.dy = fadd nsz double %i.dr, -4.000000e-01
  %i.dz = fcmp nsz ogt double %i.dy, %i.ds
  br i1 %i.dz, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ea = fpext nsz float %i.dk to double
  %i.eb = fadd nsz double %i.dr, 5.000000e-01
  %i.ec = fcmp nsz olt double %i.eb, %i.ea
  %.26.i = select i1 %i.ec, i32 4, i32 3
  br label %.thread

bb.o:                                             ; preds = %bb.h
  %i.ed = load float, ptr %i.z, align 8, !tbaa !186 ; 2 uses
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
  %i.ek = load i32, ptr %i.y, align 8, !tbaa !105
  %i.el = tail call nsz noundef float @_Z7noise2diii(i32 noundef %i.cv, i32 noundef %i.ak, i32 noundef %i.ek)
  %i.em = fpext nsz float %i.el to double
  %i.en = fadd nsz double %i.em, 1.000000e+00
  %i.eo = load float, ptr %i.z, align 8, !tbaa !186
  %i.ep = fsub nsz float %i.eo, %i.df
  %i.eq = fpext nsz float %i.ep to double
  %i.er = fmul nsz double %i.eq, 2.000000e+01
  %i.es = fcmp nsz ogt double %i.en, %i.er
  br i1 %i.es, label %bb.t, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.r
  %.pre.i = load i32, ptr %i.o, align 4, !tbaa !98
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
  %i.ex = load i32, ptr %i.ac, align 4, !tbaa !176
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
  %i.fe = load ptr, ptr %i.aa, align 8, !tbaa !111
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 80
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !181
  %i.fh = sext i32 %.148119 to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.fh
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !11
  %i.fk = load float, ptr %i.ab, align 4, !tbaa !187
  %i.fl = fcmp nsz ogt float %i.fj, %i.fk
  br i1 %i.fl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fm = add nsw i32 %i.cm, %i.fa
  %i.fn = load i32, ptr %i.ac, align 4, !tbaa !176
  %i.fo = add nsw i32 %i.fn, 2
  %.not57.a = icmp sgt i32 %i.fm, %i.fo
  %spec.select105 = select i1 %.not57.a, i32 %.sroa.090.0.insert.ext96, i32 %.sroa.071.0.insert.ext
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %bb.u, %bb.x, %bb.v, %bb.w
  %i.fp = phi i1 [ true, %bb.u ], [ %i.fc, %bb.v ], [ false, %bb.w ], [ false, %bb.x ], [ true, %bb.t ]
  %.1.i97 = phi i32 [ 1, %bb.u ], [ %.1.i98100, %bb.v ], [ %.1.i.ph, %bb.w ], [ %.1.i.ph, %bb.x ], [ 1, %bb.t ]
  %.sroa.069.0 = phi i32 [ %.sroa.070.0.insert.ext, %bb.u ], [ %.sroa.087.0.insert.ext, %bb.v ], [ %.sroa.090.0.insert.ext96, %bb.w ], [ %spec.select105, %bb.x ], [ %.sroa.071.0.insert.ext, %bb.t ]
  %.044 = phi i16 [ %.0.i, %bb.u ], [ %i.fd, %bb.v ], [ %.0.i, %bb.w ], [ %.0.i, %bb.x ], [ %.0.i, %bb.t ] ; 2 uses
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
  %i.fv = load ptr, ptr %i.q, align 8, !tbaa !160 ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 20 ; 2 uses
  %i.fx = add i16 %i.cl, 1                        ; 3 uses
  %i.fy = load i16, ptr %i.ad, align 8, !tbaa !233
  %.not58112 = icmp sle i16 %i.fx, %i.fy
  %.not59113 = icmp sgt i16 %.1, 0
  %or.cond60114 = select i1 %.not58112, i1 %.not59113, i1 false
  br i1 %or.cond60114, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.aa
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.ga = load i16, ptr %i.fz, align 4, !tbaa !168
  %i.gb = sext i16 %i.ga to i32
  %i.gc = sub nsw i32 %i.cv, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  %i.ge = load i16, ptr %i.gd, align 4, !tbaa !169
  %i.gf = sext i16 %i.ge to i32
  %i.gg = sub nsw i32 %i.ak, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !170
  %i.gj = mul nsw i32 %i.gg, %i.gi
  %i.gk = sext i16 %i.fx to i32
  %i.gl = add i32 %i.gj, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fv, i64 10
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !234
  %i.go = sext i16 %i.gn to i32
  %i.gp = sub i32 %i.gl, %i.go
  %i.gq = load i32, ptr %i.fw, align 4, !tbaa !167
  %i.gr = mul i32 %i.gp, %i.gq
  %i.gs = add nsw i32 %i.gc, %i.gr
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0117 = phi i16 [ %i.hb, %.lr.ph ], [ %i.fx, %.lr.ph.preheader ]
  %.043116 = phi i16 [ %i.gy, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.093115 = phi i32 [ %i.ha, %.lr.ph ], [ %i.gs, %.lr.ph.preheader ] ; 2 uses
  %i.gt = load ptr, ptr %i.q, align 8, !tbaa !160
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !171
  %i.gw = zext i32 %.093115 to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.gw
  store i32 %.sroa.069.0, ptr %i.gx, align 4
  %i.gy = add nuw nsw i16 %.043116, 1             ; 2 uses
  %i.gz = load i32, ptr %i.fw, align 4, !tbaa !235
  %i.ha = add i32 %i.gz, %.093115
  %i.hb = add i16 %.0117, 1                       ; 2 uses
  %i.hc = load i16, ptr %i.ad, align 8, !tbaa !233
  %.not58 = icmp sle i16 %i.hb, %i.hc
  %.not59 = icmp slt i16 %i.gy, %.1
  %or.cond60 = select i1 %.not58, i1 %.not59, i1 false
  br i1 %or.cond60, label %.lr.ph, label %.loopexit, !llvm.loop !239

.loopexit:                                        ; preds = %.lr.ph, %bb.aa, %_ZN8MapgenV616find_stone_levelEN4core8vector2dIsEE.exit
  %i.hd = add i16 %.045123, 1                     ; 2 uses
  %i.he = add i32 %.148119, 1                     ; 2 uses
  %i.hf = load i16, ptr %i.d, align 2, !tbaa !230 ; 2 uses
  %.not53 = icmp sgt i16 %i.hd, %i.hf
  br i1 %.not53, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !240
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN8MapgenV67flowMudERsS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(422) %0, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(2) %1, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(2) %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160  ; 3 uses
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
  %i.q = load i16, ptr %1, align 2, !tbaa !99
  %i.r = load i16, ptr %2, align 2, !tbaa !99     ; 4 uses
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
  %i.y = load i16, ptr %1, align 2, !tbaa !99     ; 3 uses
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
  br i1 %i.x, label %.split157.us, label %.split, !llvm.loop !241

.lr.ph153.split:                                  ; preds = %.lr.ph153, %._crit_edge149
  %i.ae = phi i16 [ %i.ai, %._crit_edge149 ], [ %i.t, %.lr.ph153 ] ; 2 uses
  %i.af = phi ptr [ %i.aj, %._crit_edge149 ], [ %i.u, %.lr.ph153 ] ; 2 uses
  %i.ag = phi i16 [ %i.ai, %._crit_edge149 ], [ %i.v, %.lr.ph153 ] ; 2 uses
  %.068151 = phi i16 [ %i.ak, %._crit_edge149 ], [ %i.y, %.lr.ph153 ] ; 3 uses
  %i.ah = load i16, ptr %1, align 2, !tbaa !99    ; 2 uses
  %.not72145 = icmp sgt i16 %i.ah, %i.ag
  br i1 %.not72145, label %._crit_edge149, label %.lr.ph148

._crit_edge149:                                   ; preds = %._crit_edge, %.lr.ph153.split
  %i.ai = phi i16 [ %i.ae, %.lr.ph153.split ], [ %i.kx, %._crit_edge ] ; 6 uses
  %i.aj = phi ptr [ %i.af, %.lr.ph153.split ], [ %i.kz, %._crit_edge ] ; 2 uses
  %i.ak = add i16 %.068151, 1                     ; 2 uses
  %.not = icmp sgt i16 %i.ak, %i.ai
  br i1 %.not, label %._crit_edge154, label %.lr.ph153.split, !llvm.loop !242

.lr.ph148:                                        ; preds = %.lr.ph153.split, %._crit_edge
  %i.al = phi i16 [ %i.kx, %._crit_edge ], [ %i.ae, %.lr.ph153.split ]
  %i.am = phi i16 [ %i.ky, %._crit_edge ], [ %i.ag, %.lr.ph153.split ]
  %i.an = phi ptr [ %i.kz, %._crit_edge ], [ %i.af, %.lr.ph153.split ] ; 2 uses
  %.069146 = phi i16 [ %i.la, %._crit_edge ], [ %i.ah, %.lr.ph153.split ] ; 3 uses
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph148
  %i.ao = load i16, ptr %i.f, align 2, !tbaa !230
  %i.ap = load i16, ptr %i.g, align 2, !tbaa !229
  %i.aq = sub i16 %i.ao, %.069146
  %i.ar = sub i16 %i.ap, %.068151
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph148
  %i.as = load i16, ptr %i.d, align 8, !tbaa !180
  %i.at = load i16, ptr %i.e, align 4, !tbaa !179
  %i.au = add i16 %i.as, %.069146
  %i.av = add i16 %i.at, %.068151
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0111.0 = phi i16 [ %i.aq, %bb.b ], [ %i.au, %bb.c ] ; 3 uses
  %.sroa.7.0 = phi i16 [ %i.ar, %bb.b ], [ %i.av, %bb.c ] ; 3 uses
  %i.aw = load i16, ptr %i.h, align 8, !tbaa !233 ; 2 uses
  %i.ax = load i16, ptr %i.i, align 2, !tbaa !208 ; 2 uses
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
  %i.bd = load i16, ptr %i.bc, align 4, !tbaa !168
  %i.be = sext i16 %i.bd to i32
  %i.bf = sub nsw i32 %i.az, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bh = load i16, ptr %i.bg, align 4, !tbaa !169
  %i.bi = sext i16 %i.bh to i32
  %i.bj = sub nsw i32 %i.ay, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !170
  %i.bm = mul nsw i32 %i.bj, %i.bl
  %i.bn = sext i16 %.166261 to i32
  %i.bo = add i32 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 10
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !234
  %i.br = sext i16 %i.bq to i32
  %i.bs = sub i32 %i.bo, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !167
  %i.bv = mul i32 %i.bs, %i.bu
end_hunk_0
begin_hunk_1_@_ZN8MapgenV67flowMudERsS0_:bb.a
  br i1 %i.gv, label %_ZNK9VoxelArea8containsEi.exit.i, label %.critedge.i, !llvm.loop !286

.critedge.i:                                      ; preds = %bb.aa, %bb.z, %bb.y, %_ZNK9VoxelArea8containsEi.exit.i, %bb.x
  %.03342.i = add i32 %.0, %i.cx                  ; 2 uses
  %i.gw = icmp sgt i32 %.03342.i, -1
  br i1 %i.gw, label %_ZNK9VoxelArea8containsEi.exit19.i, label %_ZN8MapgenV67moveMudEjjjN4core8vector2dIsEENS0_8vector3dIiEE.exit

_ZNK9VoxelArea8containsEi.exit19.i:               ; preds = %.critedge.i, %bb.ad
  %.03343.i = phi i32 [ %.033.i, %bb.ad ], [ %.03342.i, %.critedge.i ] ; 3 uses
  %i.gx = load ptr, ptr %i.a, align 8, !tbaa !160 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 20
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !167
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !170
  %i.hc = mul i32 %i.hb, %i.gz
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gx, i64 28
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !285
  %i.hf = mul i32 %i.hc, %i.he
  %i.hg = icmp ult i32 %.03343.i, %i.hf
  br i1 %i.hg, label %bb.ab, label %_ZN8MapgenV67moveMudEjjjN4core8vector2dIsEENS0_8vector3dIiEE.exit

bb.ab:                                            ; preds = %_ZNK9VoxelArea8containsEi.exit19.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !171
  %i.hj = zext nneg i32 %.03343.i to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.hj ; 2 uses
  %i.hl = load i16, ptr %i.hk, align 4, !tbaa !172 ; 3 uses
  %.not14.i = icmp eq i16 %i.hl, 126
  br i1 %.not14.i, label %_ZN8MapgenV67moveMudEjjjN4core8vector2dIsEENS0_8vector3dIiEE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hm = load i16, ptr %i.p, align 4, !tbaa !127
  %.not15.i = icmp eq i16 %i.hl, %i.hm
  %.not16.i = icmp eq i16 %i.hl, 127
  %or.cond38.i = or i1 %.not16.i, %.not15.i
  br i1 %or.cond38.i, label %_ZN8MapgenV67moveMudEjjjN4core8vector2dIsEENS0_8vector3dIiEE.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 126, ptr %i.hk, align 4
  %.033.i = add i32 %.03343.i, %i.cx              ; 2 uses
  %i.hn = icmp sgt i32 %.033.i, -1
  br i1 %i.hn, label %_ZNK9VoxelArea8containsEi.exit19.i, label %_ZN8MapgenV67moveMudEjjjN4core8vector2dIsEENS0_8vector3dIiEE.exit, !llvm.loop !287

.critedge79:                                      ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit84, %_ZNK14NodeDefManager3getERK7MapNode.exit85
  %i.ho = add i32 %.0118138, 1                    ; 2 uses
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.hp
  %i.hr = load i16, ptr %i.hq, align 4, !tbaa !172
  %i.hs = zext i16 %i.hr to i64                   ; 2 uses
  %i.ht = icmp ugt i64 %i.dk, %i.hs
  br i1 %i.ht, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.critedge79
  %i.hu = getelementptr inbounds nuw [2072 x i8], ptr %i.dg, i64 %i.hs ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !121
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %bb.af, label %_ZNK14NodeDefManager3getERK7MapNode.exit84.1

bb.af:                                            ; preds = %bb.ae, %.critedge79
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit84.1

_ZNK14NodeDefManager3getERK7MapNode.exit84.1:     ; preds = %bb.af, %bb.ae
  %i.hy = phi ptr [ %i.dw, %bb.af ], [ %i.hu, %bb.ae ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1403
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !248, !range !282, !noundef !65
  %i.ib = trunc nuw i8 %i.ia to i1
  br i1 %i.ib, label %.critedge79.1, label %bb.ag

bb.ag:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit84.1
  %i.ic = sub i32 %i.ho, %i.cx                    ; 2 uses
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.id
  %i.if = load i16, ptr %i.ie, align 4, !tbaa !172
  %i.ig = zext i16 %i.if to i64                   ; 2 uses
  %i.ih = icmp ugt i64 %i.dk, %i.ig
  br i1 %i.ih, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ii = getelementptr inbounds nuw [2072 x i8], ptr %i.dg, i64 %i.ig ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !121
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %bb.ai, label %_ZNK14NodeDefManager3getERK7MapNode.exit85.1

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit85.1

_ZNK14NodeDefManager3getERK7MapNode.exit85.1:     ; preds = %bb.ai, %bb.ah
  %i.im = phi ptr [ %i.dw, %bb.ai ], [ %i.ii, %bb.ah ]
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 1403
  %i.io = load i8, ptr %i.in, align 1, !tbaa !248, !range !282, !noundef !65
  %i.ip = trunc nuw i8 %i.io to i1
  br i1 %i.ip, label %.critedge79.1, label %bb.q

.critedge79.1:                                    ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit85.1, %_ZNK14NodeDefManager3getERK7MapNode.exit84.1
  %i.iq = mul i32 %i.dv, %i.cx
  %i.ir = sub i32 %.0118138, %i.iq                ; 2 uses
  %i.is = zext i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.is
  %i.iu = load i16, ptr %i.it, align 4, !tbaa !172
  %i.iv = zext i16 %i.iu to i64                   ; 2 uses
  %i.iw = icmp ugt i64 %i.dk, %i.iv
  br i1 %i.iw, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.critedge79.1
  %i.ix = getelementptr inbounds nuw [2072 x i8], ptr %i.dg, i64 %i.iv ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !121
  %i.ja = icmp eq i64 %i.iz, 0
  br i1 %i.ja, label %bb.ak, label %_ZNK14NodeDefManager3getERK7MapNode.exit84.2

bb.ak:                                            ; preds = %bb.aj, %.critedge79.1
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit84.2

_ZNK14NodeDefManager3getERK7MapNode.exit84.2:     ; preds = %bb.ak, %bb.aj
  %i.jb = phi ptr [ %i.dw, %bb.ak ], [ %i.ix, %bb.aj ]
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 1403
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !248, !range !282, !noundef !65
  %i.je = trunc nuw i8 %i.jd to i1
  br i1 %i.je, label %.critedge79.2, label %bb.al

bb.al:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit84.2
  %i.jf = sub i32 %i.ir, %i.cx                    ; 2 uses
  %i.jg = zext i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.jg
  %i.ji = load i16, ptr %i.jh, align 4, !tbaa !172
  %i.jj = zext i16 %i.ji to i64                   ; 2 uses
  %i.jk = icmp ugt i64 %i.dk, %i.jj
  br i1 %i.jk, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.jl = getelementptr inbounds nuw [2072 x i8], ptr %i.dg, i64 %i.jj ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !121
  %i.jo = icmp eq i64 %i.jn, 0
  br i1 %i.jo, label %bb.an, label %_ZNK14NodeDefManager3getERK7MapNode.exit85.2

bb.an:                                            ; preds = %bb.am, %bb.al
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit85.2

_ZNK14NodeDefManager3getERK7MapNode.exit85.2:     ; preds = %bb.an, %bb.am
  %i.jp = phi ptr [ %i.dw, %bb.an ], [ %i.jl, %bb.am ]
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 1403
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !248, !range !282, !noundef !65
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %.critedge79.2, label %bb.q

.critedge79.2:                                    ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit85.2, %_ZNK14NodeDefManager3getERK7MapNode.exit84.2
  %i.jt = add i32 %.0118138, -1                   ; 2 uses
  %i.ju = zext i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ju
  %i.jw = load i16, ptr %i.jv, align 4, !tbaa !172
  %i.jx = zext i16 %i.jw to i64                   ; 2 uses
  %i.jy = icmp ugt i64 %i.dk, %i.jx
  br i1 %i.jy, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.critedge79.2
  %i.jz = getelementptr inbounds nuw [2072 x i8], ptr %i.dg, i64 %i.jx ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !121
  %i.kc = icmp eq i64 %i.kb, 0
  br i1 %i.kc, label %bb.ap, label %_ZNK14NodeDefManager3getERK7MapNode.exit84.3

bb.ap:                                            ; preds = %bb.ao, %.critedge79.2
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit84.3

_ZNK14NodeDefManager3getERK7MapNode.exit84.3:     ; preds = %bb.ap, %bb.ao
  %i.kd = phi ptr [ %i.dw, %bb.ap ], [ %i.jz, %bb.ao ]
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 1403
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !248, !range !282, !noundef !65
  %i.kg = trunc nuw i8 %i.kf to i1
  br i1 %i.kg, label %_ZN8MapgenV67moveMudEjjjN4core8vector2dIsEENS0_8vector3dIiEE.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZNK14NodeDefManager3getERK7MapNode.exit84.3
  %i.kh = sub i32 %i.jt, %i.cx                    ; 2 uses
  %i.ki = zext i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ki
  %i.kk = load i16, ptr %i.kj, align 4, !tbaa !172
  %i.kl = zext i16 %i.kk to i64                   ; 2 uses
  %i.km = icmp ugt i64 %i.dk, %i.kl
  br i1 %i.km, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.kn = getelementptr inbounds nuw [2072 x i8], ptr %i.dg, i64 %i.kl ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !121
  %i.kq = icmp eq i64 %i.kp, 0
  br i1 %i.kq, label %bb.as, label %_ZNK14NodeDefManager3getERK7MapNode.exit85.3

bb.as:                                            ; preds = %bb.ar, %bb.aq
  br label %_ZNK14NodeDefManager3getERK7MapNode.exit85.3

_ZNK14NodeDefManager3getERK7MapNode.exit85.3:     ; preds = %bb.as, %bb.ar
  %i.kr = phi ptr [ %i.dw, %bb.as ], [ %i.kn, %bb.ar ]
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 1403
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !248, !range !282, !noundef !65
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %_ZN8MapgenV67moveMudEjjjN4core8vector2dIsEENS0_8vector3dIiEE.exit, label %bb.q

_ZN8MapgenV67moveMudEjjjN4core8vector2dIsEENS0_8vector3dIiEE.exit: ; preds = %bb.r, %bb.s, %bb.ad, %bb.ac, %bb.ab, %_ZNK9VoxelArea8containsEi.exit19.i, %bb.i, %_ZNK14NodeDefManager3getERK7MapNode.exit84.3, %_ZNK14NodeDefManager3getERK7MapNode.exit85.3, %_ZNK14NodeDefManager3getERK7MapNode.exit, %.critedge.i, %bb.w
  %i.kv = add i16 %.267139, -1                    ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !160 ; 2 uses
  %.pre170 = load i16, ptr %i.i, align 2, !tbaa !208 ; 2 uses
  %.not74137 = icmp slt i16 %i.kv, %.pre170
  br i1 %.not74137, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !288

._crit_edge.loopexit:                             ; preds = %_ZN8MapgenV67moveMudEjjjN4core8vector2dIsEENS0_8vector3dIiEE.exit, %bb.g
  %i.kw = phi ptr [ %i.ba, %bb.g ], [ %.pre, %_ZN8MapgenV67moveMudEjjjN4core8vector2dIsEENS0_8vector3dIiEE.exit ]
  %.pre172 = load i16, ptr %2, align 2, !tbaa !99 ; 2 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.kx = phi i16 [ %.pre172, %._crit_edge.loopexit ], [ %i.al, %bb.d ] ; 2 uses
  %i.ky = phi i16 [ %.pre172, %._crit_edge.loopexit ], [ %i.am, %bb.d ] ; 2 uses
  %i.kz = phi ptr [ %i.kw, %._crit_edge.loopexit ], [ %i.an, %bb.d ] ; 2 uses
  %i.la = add i16 %.069146, 1                     ; 2 uses
  %.not72 = icmp sgt i16 %i.la, %i.ky
  br i1 %.not72, label %._crit_edge149, label %.lr.ph148, !llvm.loop !289
}

declare noundef float @_Z14NoiseFractal3DPK11NoiseParamsfffi(ptr noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::allocator.6", align 1  ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::allocator.6", align 1  ; 4 uses
  %i.a = icmp slt i32 %2, %1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 40) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @_ZN13PrngExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3)
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI13PrngException, ptr nonnull @_ZN13BaseExceptionD2Ev) #24
          to label %bb.m unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %3, align 8, !tbaa !47     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !51
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.l

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.j = sub nsw i32 %2, %1                       ; 2 uses
  %i.k = icmp ugt i32 %i.j, 6553
  br i1 %i.k, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @__cxa_allocate_exception(i64 40) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.51, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @_ZN13PrngExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %5)
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI13PrngException, ptr nonnull @_ZN13BaseExceptionD2Ev) #24
          to label %bb.m unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %5, align 8, !tbaa !47     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !51
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @__cxa_free_exception(ptr %i.l) #23
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.t = load i32, ptr %0, align 4, !tbaa !290
  %i.u = mul i32 %i.t, 1103515245
  %i.v = add i32 %i.u, 12345                      ; 2 uses
  store i32 %i.v, ptr %0, align 4, !tbaa !290
  %i.w = sdiv i32 %i.v, 65536
  %i.x = trunc nsw i32 %i.w to i16
  %.lhs.trunc = and i16 %i.x, 32767
  %i.y = trunc nuw nsw i32 %i.j to i16
  %.rhs.trunc = add nuw nsw i16 %i.y, 1
  %i.z = urem i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext nneg i16 %i.z to i32
  %i.aa = add i32 %1, %.zext
  ret i32 %i.aa

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.j, %bb.e
  %.pn20.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.s, %bb.j ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread ]
  resume { ptr, i32 } %.pn20.pn

bb.m:                                             ; preds = %bb.h, %bb.c
  unreachable
}

declare void @_ZN10DungeonGenC1EPK14NodeDefManagerP16GenerateNotifierP13DungeonParams(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN10DungeonGen8generateEP8MMVManipjN4core8vector3dIsEES4_(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef, i32 noundef, i48, i48) local_unnamed_addr #1

declare void @_ZN6Mapgen12updateLiquidEP11UniqueQueueIN4core8vector3dIsEEES3_S3_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i48, i48) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8MapgenV69growGrassEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(422) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load i16, ptr %i.e, align 8, !tbaa !184  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 226 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 230 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !292  ; 2 uses
  %.not119 = icmp sgt i16 %i.f, %i.i
  br i1 %.not119, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 410
  %i.k = load i16, ptr %i.j, align 2, !tbaa !134
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 406
  %i.m = load i16, ptr %i.l, align 2, !tbaa !132
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.o = load i16, ptr %i.n, align 8, !tbaa !125
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 222
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 390 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 388
  %.sroa.053.0.insert.ext = zext i16 %i.k to i32  ; 2 uses
  %.sroa.068.0.insert.ext = zext i16 %i.m to i32  ; 2 uses
  %.sroa.085.0.insert.ext = zext i16 %i.o to i32
  %i.ab = load i16, ptr %i.d, align 4, !tbaa !185
  %i.ac = load i16, ptr %i.g, align 2, !tbaa !293 ; 2 uses
  %i.ad = icmp sgt i16 %i.ab, %i.ac
  br i1 %i.ad, label %._crit_edge124, label %.lr.ph123.split

._crit_edge124:                                   ; preds = %._crit_edge, %.lr.ph123, %bb.a
  ret void

.lr.ph123.split:                                  ; preds = %.lr.ph123, %._crit_edge
  %i.ae = phi i16 [ %i.ai, %._crit_edge ], [ %i.i, %.lr.ph123 ]
  %i.af = phi i16 [ %i.aj, %._crit_edge ], [ %i.ac, %.lr.ph123 ] ; 2 uses
  %.034121 = phi i16 [ %i.ak, %._crit_edge ], [ %i.f, %.lr.ph123 ] ; 2 uses
  %.035120 = phi i32 [ %.1.lcssa, %._crit_edge ], [ 0, %.lr.ph123 ] ; 2 uses
  %i.ag = load i16, ptr %i.d, align 4, !tbaa !185 ; 2 uses
  %.not38113 = icmp sgt i16 %i.ag, %i.af
  br i1 %.not38113, label %._crit_edge, label %.lr.ph117

.lr.ph117:                                        ; preds = %.lr.ph123.split
  %i.ah = sext i16 %.034121 to i32                ; 5 uses
end_hunk_1
