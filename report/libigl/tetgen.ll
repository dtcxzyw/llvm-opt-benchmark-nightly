Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6986
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 116
loop-unroll.NumUnrolled: 555
begin_hunk_0_@_ZN10tetgenmesh15reconstructmeshEv:bb.a
  %.pre1083 = load i32, ptr %i.az, align 8, !tbaa !223
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph792, %bb.bd
  %i.bf = phi i32 [ %.pre1083, %.lr.ph792 ], [ %i.gn, %bb.bd ]
  %indvars.iv962 = phi i64 [ 0, %.lr.ph792 ], [ %indvars.iv.next963, %bb.bd ] ; 3 uses
  %i.bg = phi ptr [ %i.ag, %.lr.ph792 ], [ %i.fe, %bb.bd ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 132
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !63
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !220 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !69 ; 4 uses
  %i.bm = trunc nuw nsw i64 %indvars.iv962 to i32 ; 3 uses
  %i.bn = mul i32 %i.bi, %i.bm
  %i.bo = sext i32 %i.bn to i64                   ; 4 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !59
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !112 ; 6 uses
  %i.bu = sext i32 %i.bf to i64                   ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 4      ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !59 ; 2 uses
  %i.by = icmp ult i32 %i.bx, 256
  br i1 %i.by, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bz = or disjoint i32 %i.bx, 1024
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !59
  %i.ca = load i64, ptr %i.ak, align 8, !tbaa !291
  %i.cb = add nsw i64 %i.ca, -1
  store i64 %i.cb, ptr %i.ak, align 8, !tbaa !291
  %.pre1084 = load i32, ptr %i.az, align 8, !tbaa !223
  %.pre1140 = sext i32 %.pre1084 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.pre-phi = phi i64 [ %i.bu, %bb.j ], [ %.pre1140, %bb.k ] ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %i.bl, i64 %i.bo
  %i.cd = getelementptr i8, ptr %i.cc, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !59
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !112 ; 6 uses
  %i.ci = getelementptr [4 x i8], ptr %i.ch, i64 %.pre-phi
  %i.cj = getelementptr i8, ptr %i.ci, i64 4      ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !59 ; 2 uses
  %i.cl = icmp ult i32 %i.ck, 256
  br i1 %i.cl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cm = or disjoint i32 %i.ck, 1024
  store i32 %i.cm, ptr %i.cj, align 4, !tbaa !59
  %i.cn = load i64, ptr %i.ak, align 8, !tbaa !291
  %i.co = add nsw i64 %i.cn, -1
  store i64 %i.co, ptr %i.ak, align 8, !tbaa !291
  %.pre1085 = load i32, ptr %i.az, align 8, !tbaa !223
  %.pre1141 = sext i32 %.pre1085 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pre-phi1142 = phi i64 [ %.pre1141, %bb.m ], [ %.pre-phi, %bb.l ] ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %i.bl, i64 %i.bo
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !59
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !112 ; 3 uses
  %i.cv = getelementptr [4 x i8], ptr %i.cu, i64 %.pre-phi1142
  %i.cw = getelementptr i8, ptr %i.cv, i64 4      ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !59 ; 2 uses
  %i.cy = icmp ult i32 %i.cx, 256
  br i1 %i.cy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cz = or disjoint i32 %i.cx, 1024
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !59
  %i.da = load i64, ptr %i.ak, align 8, !tbaa !291
  %i.db = add nsw i64 %i.da, -1
  store i64 %i.db, ptr %i.ak, align 8, !tbaa !291
  %.pre1086 = load i32, ptr %i.az, align 8, !tbaa !223
  %.pre1143 = sext i32 %.pre1086 to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre-phi1144 = phi i64 [ %.pre1143, %bb.o ], [ %.pre-phi1142, %bb.n ]
  %i.dc = getelementptr [4 x i8], ptr %i.bl, i64 %i.bo
  %i.dd = getelementptr i8, ptr %i.dc, i64 12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !59
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !112 ; 3 uses
  %i.di = getelementptr [4 x i8], ptr %i.dh, i64 %.pre-phi1144
  %i.dj = getelementptr i8, ptr %i.di, i64 4      ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !59 ; 2 uses
  %i.dl = icmp ult i32 %i.dk, 256
  br i1 %i.dl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dm = or disjoint i32 %i.dk, 1024
  store i32 %i.dm, ptr %i.dj, align 4, !tbaa !59
  %i.dn = load i64, ptr %i.ak, align 8, !tbaa !291
  %i.do = add nsw i64 %i.dn, -1
  store i64 %i.do, ptr %i.ak, align 8, !tbaa !291
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dp = tail call noundef double @_Z8orient3dPdS_S_S_(ptr noundef nonnull %i.bt, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.cu, ptr noundef nonnull %i.dh) ; 2 uses
  %i.dq = fcmp ogt double %i.dp, 0.000000e+00
  br i1 %i.dq, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dr = fcmp oeq double %i.dp, 0.000000e+00
  br i1 %i.dr, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ds = load ptr, ptr %i.f, align 8, !tbaa !218
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 148
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !183
  %.not253 = icmp eq i32 %i.du, 0
  br i1 %.not253, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dv = load ptr, ptr %0, align 8, !tbaa !221
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !55
  %i.dx = add nsw i32 %i.dw, %i.bm
  %i.dy = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.451, i32 noundef %i.dx) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.s, %bb.u, %bb.t
  %.sroa.29.0 = phi ptr [ %i.ch, %bb.s ], [ %i.ch, %bb.u ], [ %i.ch, %bb.t ], [ %i.bt, %bb.r ]
  %.sroa.01039.0 = phi ptr [ %i.bt, %bb.s ], [ %i.bt, %bb.u ], [ %i.bt, %bb.t ], [ %i.ch, %bb.r ]
  %i.dz = load ptr, ptr %i.ba, align 8, !tbaa !230
  %i.ea = tail call noundef ptr @_ZN10tetgenmesh10memorypool5allocEv(ptr noundef nonnull align 8 dereferenceable(88) %i.dz) ; 29 uses
  %i.eb = ptrtoaddr ptr %i.ea to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ea, i8 0, i64 88, i1 false)
  %i.ec = load i32, ptr %i.bb, align 4, !tbaa !232
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.ed
  store i32 0, ptr %i.ee, align 4, !tbaa !59
  %i.ef = load i32, ptr %i.bc, align 4, !tbaa !233 ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.v
  %i.eh = load i32, ptr %i.bd, align 8, !tbaa !234
  %i.ei = sext i32 %i.eh to i64
  %i.ej = shl nsw i64 %i.ei, 3
  %scevgep.i = getelementptr i8, ptr %i.ea, i64 %i.ej
  %i.ek = zext nneg i32 %i.ef to i64
  %i.el = shl nuw nsw i64 %i.ek, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.el, i1 false), !tbaa !58
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.v
  %i.em = load ptr, ptr %i.f, align 8, !tbaa !218
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !148
  %.not.i = icmp eq i32 %i.eo, 0                  ; 2 uses
  br i1 %.not.i, label %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i
  %i.ep = load i32, ptr %i.be, align 8, !tbaa !235
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.eq
  store double -1.000000e+00, ptr %i.er, align 8, !tbaa !58
  br label %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit

_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit: ; preds = %._crit_edge.i, %bb.w
  %i.es = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh8orgpivotE, i64 44), align 4, !tbaa !59
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.et
  store ptr %.sroa.01039.0, ptr %i.eu, align 8, !tbaa !220
  %i.ev = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9destpivotE, i64 44), align 4, !tbaa !59
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.ew
  store ptr %.sroa.29.0, ptr %i.ex, align 8, !tbaa !220
  %i.ey = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9apexpivotE, i64 44), align 4, !tbaa !59
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.ez
  store ptr %i.cu, ptr %i.fa, align 8, !tbaa !220
  %i.fb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN10tetgenmesh9oppopivotE, i64 44), align 4, !tbaa !59
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.fc
  store ptr %i.dh, ptr %i.fd, align 8, !tbaa !220
  %i.fe = load ptr, ptr %0, align 8, !tbaa !221   ; 6 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 136
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !68 ; 4 uses
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %.lr.ph777, label %._crit_edge

.lr.ph777:                                        ; preds = %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit
  %i.fi = mul nuw nsw i32 %i.fg, %i.bm
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 88
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !70 ; 2 uses
  %i.fl = load i32, ptr %i.bd, align 8, !tbaa !234
  %i.fm = sext i32 %i.fl to i64                   ; 2 uses
  %i.fn = zext nneg i32 %i.fi to i64              ; 2 uses
  %wide.trip.count = zext nneg i32 %i.fg to i64   ; 5 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.fk, i64 %i.fn ; 6 uses
  %invariant.gep1407 = getelementptr [8 x i8], ptr %i.ea, i64 %i.fm ; 6 uses
  %min.iters.check = icmp ult i32 %i.fg, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph777
  %i.fo = ptrtoaddr ptr %i.fk to i64
  %i.fp = shl nsw i64 %i.fm, 3
  %i.fq = add i64 %i.fp, %i.eb
  %i.fr = shl nuw nsw i64 %i.fn, 3
  %i.fs = add i64 %i.fr, %i.fo
  %i.ft = sub i64 %i.fs, %i.fq
  %diff.check = icmp ugt i64 %i.ft, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fu = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 16
  %wide.load = load <2 x double>, ptr %i.fu, align 8, !tbaa !58
  %wide.load1518 = load <2 x double>, ptr %i.fv, align 8, !tbaa !58
  %i.fw = getelementptr [8 x i8], ptr %invariant.gep1407, i64 %index ; 2 uses
  %i.fx = getelementptr i8, ptr %i.fw, i64 16
  store <2 x double> %wide.load, ptr %i.fw, align 8, !tbaa !58
  store <2 x double> %wide.load1518, ptr %i.fx, align 8, !tbaa !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fy = icmp eq i64 %index.next, %n.vec
  br i1 %i.fy, label %middle.block, label %vector.body, !llvm.loop !1259

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph777, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph777 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.fz = load double, ptr %gep.prol, align 8, !tbaa !58
  %gep1408.prol = getelementptr [8 x i8], ptr %invariant.gep1407, i64 %indvars.iv.prol
  store double %i.fz, ptr %gep1408.prol, align 8, !tbaa !58
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1260

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ga = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.gb = icmp ugt i64 %i.ga, -4
  br i1 %i.gb, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.gc = load double, ptr %gep, align 8, !tbaa !58
  %gep1408 = getelementptr [8 x i8], ptr %invariant.gep1407, i64 %indvars.iv
  store double %i.gc, ptr %gep1408, align 8, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.gd = load double, ptr %gep.1, align 8, !tbaa !58
  %gep1408.1 = getelementptr [8 x i8], ptr %invariant.gep1407, i64 %indvars.iv.next
  store double %i.gd, ptr %gep1408.1, align 8, !tbaa !58
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.ge = load double, ptr %gep.2, align 8, !tbaa !58
  %gep1408.2 = getelementptr [8 x i8], ptr %invariant.gep1407, i64 %indvars.iv.next.1
  store double %i.ge, ptr %gep1408.2, align 8, !tbaa !58
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.gf = load double, ptr %gep.3, align 8, !tbaa !58
  %gep1408.3 = getelementptr [8 x i8], ptr %invariant.gep1407, i64 %indvars.iv.next.2
  store double %i.gf, ptr %gep1408.3, align 8, !tbaa !58
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !1261

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN10tetgenmesh15maketetrahedronEPNS_7trifaceE.exit
  br i1 %.not.i, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fe, i64 96
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !71 ; 2 uses
  %.not255 = icmp eq ptr %i.gh, null
  br i1 %.not255, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv962
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !58
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.0193 = phi double [ %i.gj, %bb.y ], [ -1.000000e+00, %bb.x ]
  %i.gk = load i32, ptr %i.be, align 8, !tbaa !235
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.gl
  store double %.0193, ptr %i.gm, align 8, !tbaa !58
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge
  %i.gn = load i32, ptr %i.az, align 8, !tbaa !223 ; 2 uses
  %i.go = sext i32 %i.gn to i64
  %i.gp = ptrtoint ptr %i.ea to i64               ; 10 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.loopexit752
  %indvars.iv958 = phi i64 [ 0, %bb.aa ], [ %indvars.iv.next959, %.loopexit752 ] ; 11 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9oppopivotE, i64 %indvars.iv958
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !59
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.gs
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !220
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.go
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !59
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.gx ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !220 ; 2 uses
  %i.ha = getelementptr [8 x i8], ptr %i.ea, i64 %indvars.iv958
  %i.hb = getelementptr i8, ptr %i.ha, i64 64
  store ptr %i.gz, ptr %i.hb, align 8, !tbaa !220
  %i.hc = or i64 %indvars.iv958, %i.gp
  %i.hd = inttoptr i64 %i.hc to ptr
  store ptr %i.hd, ptr %i.gy, align 8, !tbaa !220
  %i.he = ptrtoint ptr %i.gz to i64               ; 2 uses
  %i.hf = trunc i64 %i.he to i32
  %i.hg = and i32 %i.hf, 15                       ; 2 uses
  %i.hh = and i64 %i.he, -16                      ; 2 uses
  %i.hi = inttoptr i64 %i.hh to ptr               ; 2 uses
  %.not257 = icmp eq i64 %i.hh, 0
  br i1 %.not257, label %.loopexit752, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %indvars.iv958
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !59
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.hl
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !220 ; 6 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %indvars.iv958
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !59
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.hq
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !220 ; 6 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %indvars.iv958
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !59
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.hv
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !220 ; 6 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %indvars.iv958 ; 3 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %indvars.iv958 ; 3 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %indvars.iv958 ; 3 uses
  %i.ib = trunc nuw nsw i64 %indvars.iv958 to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.bc, %bb.ac
  %.lcssa778784 = phi i32 [ %i.hg, %bb.ac ], [ %i.si, %bb.bc ] ; 2 uses
  %i.ic = phi ptr [ %i.hi, %bb.ac ], [ %i.sk, %bb.bc ] ; 9 uses
  %.sroa.0601.0 = phi ptr [ %i.ea, %bb.ac ], [ %.sroa.0601.1, %bb.bc ] ; 2 uses
  %.sroa.6602.0 = phi i32 [ %i.ib, %bb.ac ], [ %.sroa.6602.1, %bb.bc ] ; 2 uses
  %i.id = zext nneg i32 %.lcssa778784 to i64      ; 3 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh8orgpivotE, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !59
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.ig
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !220 ; 6 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9destpivotE, i64 %i.id
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !59
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.il
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !220 ; 6 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh9apexpivotE, i64 %i.id
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !59
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.iq
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !220 ; 6 uses
  %i.it = ptrtoint ptr %i.ic to i64               ; 9 uses
  %i.iu = zext nneg i32 %.lcssa778784 to i64      ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !59 ; 4 uses
  %i.ix = and i32 %i.iw, 3
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %i.iy ; 4 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !220
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.jc = icmp eq ptr %i.in, %i.hn
  %i.jd = icmp eq ptr %i.ii, %i.hs
  %or.cond1409 = select i1 %i.jc, i1 %i.jd, i1 false
  br i1 %or.cond1409, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.je = load i32, ptr %i.hy, align 4, !tbaa !59 ; 2 uses
  %i.jf = sext i32 %i.je to i64                   ; 2 uses
  %i.jg = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.jf
  %i.jh = sext i32 %i.iw to i64                   ; 2 uses
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.jh
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !59
  %i.jk = sext i32 %i.jj to i64
  %i.jl = or i64 %i.jk, %i.it
  %i.jm = inttoptr i64 %i.jl to ptr
  %i.jn = and i32 %i.je, 3
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.jo
  store ptr %i.jm, ptr %i.jp, align 8, !tbaa !220
  %i.jq = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.jh
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.jq, i64 %i.jf
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !59
  %i.jt = sext i32 %i.js to i64
  %i.ju = or i64 %i.jt, %i.gp
  %i.jv = inttoptr i64 %i.ju to ptr
  store ptr %i.jv, ptr %i.iz, align 8, !tbaa !220
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.1182 = phi i32 [ 1, %bb.af ], [ 0, %bb.ae ]   ; 2 uses
  %i.jw = icmp eq ptr %i.in, %i.hs
  %i.jx = icmp eq ptr %i.ii, %i.hx
  %or.cond1410 = select i1 %i.jw, i1 %i.jx, i1 false
  br i1 %or.cond1410, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.jy = load i32, ptr %i.hz, align 4, !tbaa !59
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.jz
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !59 ; 2 uses
  %i.kc = sext i32 %i.kb to i64                   ; 2 uses
  %i.kd = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.kc
  %i.ke = sext i32 %i.iw to i64                   ; 2 uses
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %i.ke
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !59
  %i.kh = sext i32 %i.kg to i64
  %i.ki = or i64 %i.kh, %i.it
  %i.kj = inttoptr i64 %i.ki to ptr
  %i.kk = and i32 %i.kb, 3
  %i.kl = zext nneg i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.kl
  store ptr %i.kj, ptr %i.km, align 8, !tbaa !220
  %i.kn = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.ke
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.kn, i64 %i.kc
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !59
  %i.kq = sext i32 %i.kp to i64
  %i.kr = or i64 %i.kq, %i.gp
  %i.ks = inttoptr i64 %i.kr to ptr
  store ptr %i.ks, ptr %i.iz, align 8, !tbaa !220
  %i.kt = add nuw nsw i32 %.1182, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.2183 = phi i32 [ %i.kt, %bb.ah ], [ %.1182, %bb.ag ] ; 2 uses
  %i.ku = icmp eq ptr %i.in, %i.hx
  %i.kv = icmp eq ptr %i.ii, %i.hn
  %or.cond1411 = select i1 %i.ku, i1 %i.kv, i1 false
  br i1 %or.cond1411, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.kw = load i32, ptr %i.ia, align 4, !tbaa !59
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.kx
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !59 ; 2 uses
  %i.la = sext i32 %i.kz to i64                   ; 2 uses
  %i.lb = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh7bondtblE, i64 %i.la
  %i.lc = sext i32 %i.iw to i64                   ; 2 uses
  %i.ld = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %i.lc
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !59
  %i.lf = sext i32 %i.le to i64
  %i.lg = or i64 %i.lf, %i.it
  %i.lh = inttoptr i64 %i.lg to ptr
  %i.li = and i32 %i.kz, 3
  %i.lj = zext nneg i32 %i.li to i64
end_hunk_0
