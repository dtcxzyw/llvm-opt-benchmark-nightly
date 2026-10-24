Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ObjFileImporter?download=true
inline.NumInlined: 1002
inline.NumDeleted: 561
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6Assimp15ObjFileImporter17createVertexArrayEPKNS_7ObjFile5ModelEPKNS1_6ObjectEjP6aiMeshj:bb.a
  store i32 %5, ptr %i.r, align 4
  %i.s = icmp eq i32 %5, 0
  br i1 %i.s, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.t = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull @.str.15)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.i:                                             ; preds = %bb.e
  %i.v = icmp slt i32 %5, 0
  br i1 %i.v, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.w = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull @.str.16)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.m:                                             ; preds = %bb.i
  %i.y = zext nneg i32 %5 to i64
  %i.z = mul nuw nsw i64 %i.y, 12                 ; 2 uses
  %i.aa = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #24 ; 2 uses
  %i.ab = add nsw i64 %i.z, -12                   ; 2 uses
  %i.ac = urem i64 %i.ab, 12
  %i.ad = sub nuw nsw i64 %i.ab, %i.ac
  %i.ae = add nuw nsw i64 %i.ad, 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aa, i8 0, i64 %i.ae, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.aa, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.am = load i8, ptr %i.al, align 8, !range !7, !noundef !8
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ao = load i32, ptr %i.r, align 4             ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = mul nuw nsw i64 %i.ap, 12               ; 2 uses
  %i.ar = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aq) #24 ; 2 uses
  %i.as = icmp eq i32 %i.ao, 0
  br i1 %i.as, label %.loopexit197, label %.loopexit197.loopexit

.loopexit197.loopexit:                            ; preds = %bb.o
  %i.at = add nsw i64 %i.aq, -12                  ; 2 uses
  %i.au = urem i64 %i.at, 12
  %i.av = sub nuw nsw i64 %i.at, %i.au
  %i.aw = add nsw i64 %i.av, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ar, i8 0, i64 %i.aw, i1 false)
  br label %.loopexit197

.loopexit197:                                     ; preds = %.loopexit197.loopexit, %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.ar, ptr %i.ax, align 8
  br label %bb.p

bb.p:                                             ; preds = %.loopexit197, %bb.n, %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %i.az, %i.bb
  br i1 %i.bc, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = load i32, ptr %i.r, align 4             ; 2 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 4                ; 2 uses
  %i.bg = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bf) #24 ; 2 uses
  %i.bh = icmp eq i32 %i.bd, 0
  br i1 %i.bh, label %.loopexit196, label %.loopexit196.loopexit

.loopexit196.loopexit:                            ; preds = %bb.q
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bg, i8 0, i64 %i.bf, i1 false)
  br label %.loopexit196

.loopexit196:                                     ; preds = %.loopexit196.loopexit, %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %i.bg, ptr %i.bi, align 8
  br label %bb.r

bb.r:                                             ; preds = %.loopexit196, %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = icmp eq ptr %i.bk, %i.bm
  br i1 %i.bn, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %i.m, i64 68
  %i.bp = load i32, ptr %i.bo, align 4
  %.not = icmp eq i32 %i.bp, 0
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 176
  store i32 %i.br, ptr %i.bs, align 8
  %i.bt = load i32, ptr %i.r, align 4             ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = mul nuw nsw i64 %i.bu, 12               ; 2 uses
  %i.bw = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bv) #24 ; 2 uses
  %i.bx = icmp eq i32 %i.bt, 0
  br i1 %i.bx, label %.loopexit195, label %.loopexit195.loopexit

.loopexit195.loopexit:                            ; preds = %bb.t
  %i.by = add nsw i64 %i.bv, -12                  ; 2 uses
  %i.bz = urem i64 %i.by, 12
  %i.ca = sub nuw nsw i64 %i.by, %i.bz
  %i.cb = add nsw i64 %i.ca, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bw, i8 0, i64 %i.cb, i1 false)
  br label %.loopexit195

.loopexit195:                                     ; preds = %.loopexit195.loopexit, %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr %i.bw, ptr %i.cc, align 8
  br label %bb.u

bb.u:                                             ; preds = %.loopexit195, %bb.s, %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not194225 = icmp eq ptr %i.ce, %i.cg
  br i1 %.not194225, label %.thread261, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 208
  br label %bb.v

._crit_edge232:                                   ; preds = %._crit_edge
  %i.cn = trunc nuw i8 %.1150.lcssa to i1
  %i.co = trunc nuw i8 %.1146.lcssa to i1         ; 2 uses
  br i1 %i.cn, label %bb.be, label %bb.bc

bb.v:                                             ; preds = %.lr.ph, %._crit_edge
  %.0138230 = phi i32 [ 0, %.lr.ph ], [ %.1139.lcssa, %._crit_edge ] ; 2 uses
  %.0141229 = phi i32 [ 0, %.lr.ph ], [ %.1142.lcssa, %._crit_edge ] ; 2 uses
  %.0145228 = phi i8 [ 1, %.lr.ph ], [ %.1146.lcssa, %._crit_edge ] ; 2 uses
  %.0149227 = phi i8 [ 1, %.lr.ph ], [ %.1150.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.0190.0226 = phi ptr [ %i.ce, %.lr.ph ], [ %i.cy, %._crit_edge ] ; 2 uses
  %i.cp = load ptr, ptr %.sroa.0190.0226, align 8 ; 8 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = load ptr, ptr %i.cq, align 8            ; 2 uses
  %.not235 = icmp eq ptr %i.cs, %i.ct
  br i1 %.not235, label %._crit_edge, label %_ZNSt6vectorIjSaIjEE2atEm.exit.lr.ph

_ZNSt6vectorIjSaIjEE2atEm.exit.lr.ph:             ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 32 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 40 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  br label %_ZNSt6vectorIjSaIjEE2atEm.exit

._crit_edge:                                      ; preds = %bb.bb, %bb.v
  %.1150.lcssa = phi i8 [ %.0149227, %bb.v ], [ %.3152, %bb.bb ] ; 2 uses
  %.1146.lcssa = phi i8 [ %.0145228, %bb.v ], [ %.3148, %bb.bb ] ; 2 uses
  %.1142.lcssa = phi i32 [ %.0141229, %bb.v ], [ %i.ia, %bb.bb ]
  %.1139.lcssa = phi i32 [ %.0138230, %bb.v ], [ %.3, %bb.bb ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0190.0226, i64 8 ; 2 uses
  %.not194 = icmp eq ptr %i.cy, %i.cg
  br i1 %.not194, label %._crit_edge232, label %bb.v

_ZNSt6vectorIjSaIjEE2atEm.exit:                   ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit.lr.ph, %bb.bb
  %i.cz = phi ptr [ %i.ct, %_ZNSt6vectorIjSaIjEE2atEm.exit.lr.ph ], [ %i.id, %bb.bb ]
  %.0136221 = phi i64 [ 0, %_ZNSt6vectorIjSaIjEE2atEm.exit.lr.ph ], [ %.2, %bb.bb ] ; 2 uses
  %.0137220 = phi i64 [ 0, %_ZNSt6vectorIjSaIjEE2atEm.exit.lr.ph ], [ %i.ib, %bb.bb ] ; 9 uses
  %.1139219 = phi i32 [ %.0138230, %_ZNSt6vectorIjSaIjEE2atEm.exit.lr.ph ], [ %.3, %bb.bb ] ; 6 uses
  %.1142218 = phi i32 [ %.0141229, %_ZNSt6vectorIjSaIjEE2atEm.exit.lr.ph ], [ %i.ia, %bb.bb ] ; 10 uses
  %.1146217 = phi i8 [ %.0145228, %_ZNSt6vectorIjSaIjEE2atEm.exit.lr.ph ], [ %.3148, %bb.bb ]
  %.1150216 = phi i8 [ %.0149227, %_ZNSt6vectorIjSaIjEE2atEm.exit.lr.ph ], [ %.3152, %bb.bb ]
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.0137220
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = zext i32 %i.db to i64                   ; 4 uses
  %i.dd = load ptr, ptr %i.ci, align 8
  %i.de = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = sdiv exact i64 %i.dh, 12
  %.not172 = icmp ugt i64 %i.di, %i.dc
  br i1 %.not172, label %bb.z, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit
  %i.dj = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull @.str.17)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @__cxa_throw(ptr nonnull %i.dj, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.z:                                             ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit
  %i.dl = load i32, ptr %i.r, align 4
  %.not173 = icmp ugt i32 %i.dl, %.1142218
  br i1 %.not173, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dm = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull @.str.18)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @__cxa_throw(ptr nonnull %i.dm, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ad:                                            ; preds = %bb.z
  %i.do = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %i.dc
  %i.dp = load ptr, ptr %i.af, align 8
  %i.dq = zext i32 %.1142218 to i64               ; 7 uses
  %i.dr = getelementptr inbounds nuw [12 x i8], ptr %i.dp, i64 %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dr, ptr noundef nonnull align 4 dereferenceable(12) %i.do, i64 12, i1 false)
  %i.ds = trunc nuw i8 %.1150216 to i1
  br i1 %i.ds, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.dt = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.du = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dw = load ptr, ptr %i.cv, align 8
  %i.dx = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = ashr exact i64 %i.ea, 2
  %i.ec = icmp ult i64 %.0137220, %i.eb
  br i1 %i.ec, label %_ZNSt6vectorIjSaIjEE2atEm.exit183, label %bb.ah

_ZNSt6vectorIjSaIjEE2atEm.exit183:                ; preds = %bb.af
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.0137220
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = zext i32 %i.ee to i64                   ; 2 uses
  %i.eg = ptrtoint ptr %i.du to i64
  %i.eh = ptrtoint ptr %i.dt to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = sdiv exact i64 %i.ei, 12
  %.not174 = icmp ugt i64 %i.ej, %i.ef
  br i1 %.not174, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit183
  %i.ek = getelementptr inbounds nuw [12 x i8], ptr %i.dt, i64 %i.ef
  %i.el = load ptr, ptr %i.cj, align 8
  %i.em = getelementptr inbounds nuw [12 x i8], ptr %i.el, i64 %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.em, ptr noundef nonnull align 4 dereferenceable(12) %i.ek, i64 12, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZNSt6vectorIjSaIjEE2atEm.exit183, %bb.af, %bb.ae, %bb.ad
  %.3152 = phi i8 [ 1, %bb.ae ], [ 0, %bb.ad ], [ 1, %bb.af ], [ 1, %bb.ag ], [ 0, %_ZNSt6vectorIjSaIjEE2atEm.exit183 ] ; 2 uses
  %i.en = load ptr, ptr %i.ba, align 8
  %i.eo = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = sdiv exact i64 %i.er, 12
  %i.et = icmp ugt i64 %i.es, %i.dc
  br i1 %i.et, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eu = getelementptr inbounds nuw [12 x i8], ptr %i.eo, i64 %i.dc ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load float, ptr %i.ev, align 4
  %i.ex = load ptr, ptr %i.ck, align 8
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.dq ; 3 uses
  %i.ez = load <2 x float>, ptr %i.eu, align 4
  store <2 x float> %i.ez, ptr %i.ey, align 4
  %.sroa.5188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store float %i.ew, ptr %.sroa.5188.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  store float 1.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.fa = trunc nuw i8 %.1146217 to i1
  br i1 %i.fa, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.fb = load ptr, ptr %i.bj, align 8            ; 3 uses
  %i.fc = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fe = load ptr, ptr %i.cx, align 8
  %i.ff = load ptr, ptr %i.cw, align 8            ; 2 uses
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = ashr exact i64 %i.fi, 2
  %i.fk = icmp ult i64 %.0137220, %i.fj
  br i1 %i.fk, label %_ZNSt6vectorIjSaIjEE2atEm.exit185, label %bb.an

_ZNSt6vectorIjSaIjEE2atEm.exit185:                ; preds = %bb.al
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %.0137220
  %i.fm = load i32, ptr %i.fl, align 4
  %i.fn = zext i32 %i.fm to i64                   ; 2 uses
  %i.fo = ptrtoint ptr %i.fc to i64
  %i.fp = ptrtoint ptr %i.fb to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = sdiv exact i64 %i.fq, 12
  %.not175 = icmp ugt i64 %i.fr, %i.fn
  br i1 %.not175, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit185
  %i.fs = getelementptr inbounds nuw [12 x i8], ptr %i.fb, i64 %i.fn ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load float, ptr %i.ft, align 4
  %i.fv = load ptr, ptr %i.cl, align 8
  %i.fw = getelementptr inbounds nuw [12 x i8], ptr %i.fv, i64 %i.dq ; 2 uses
  %i.fx = load <2 x float>, ptr %i.fs, align 4
  store <2 x float> %i.fx, ptr %i.fw, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store float %i.fu, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_ZNSt6vectorIjSaIjEE2atEm.exit185, %bb.al, %bb.ak, %bb.aj
  %.3148 = phi i8 [ 1, %bb.ak ], [ 0, %bb.aj ], [ 1, %bb.al ], [ 1, %bb.am ], [ 0, %_ZNSt6vectorIjSaIjEE2atEm.exit185 ] ; 2 uses
  %i.fy = load ptr, ptr %i.cm, align 8
  %i.fz = zext i32 %.1139219 to i64
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %i.fz ; 2 uses
  %i.gb = load ptr, ptr %i.cr, align 8
  %i.gc = load ptr, ptr %i.cq, align 8
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = ashr exact i64 %i.gf, 2
  %i.gh = add nsw i64 %i.gg, -1
  %i.gi = icmp eq i64 %.0137220, %i.gh            ; 4 uses
  %i.gj = load i32, ptr %i.cp, align 8
  %i.gk = icmp eq i32 %i.gj, 2
  %or.cond5 = select i1 %i.gk, i1 %i.gi, i1 false
  br i1 %or.cond5, label %.thread194, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %.0136221
  store i32 %.1142218, ptr %i.gn, align 4
  %.pr = load i32, ptr %i.cp, align 8
  switch i32 %.pr, label %bb.ba [
    i32 1, label %bb.ap
    i32 2, label %.thread.a
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.go = add i32 %.1139219, 1
  br label %bb.bb

.thread.a:                                        ; preds = %bb.ao
  %not. = xor i1 %i.gi, true
  %i.gp = zext i1 %not. to i32
  %spec.select = add i32 %.1139219, %i.gp         ; 4 uses
  %.not176 = icmp eq i64 %.0137220, 0
  br i1 %.not176, label %bb.bb, label %bb.aq

.thread194:                                       ; preds = %bb.an
  %.not176196 = icmp eq i64 %.0137220, 0
  br i1 %.not176196, label %bb.bb, label %.loopexit

bb.aq:                                            ; preds = %.thread.a
  br i1 %i.gi, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gq = load i32, ptr %i.r, align 4
  %i.gr = add nuw i32 %.1142218, 1                ; 4 uses
  %.not177 = icmp ugt i32 %i.gq, %i.gr
  br i1 %.not177, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gs = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gs, ptr noundef nonnull @.str.18)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  tail call void @__cxa_throw(ptr nonnull %i.gs, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.av:                                            ; preds = %bb.ar
  %i.gu = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.gv = getelementptr inbounds nuw [12 x i8], ptr %i.gu, i64 %i.dq
  %i.gw = zext i32 %i.gr to i64                   ; 3 uses
  %i.gx = getelementptr inbounds nuw [12 x i8], ptr %i.gu, i64 %i.gw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.gx, ptr noundef nonnull align 4 dereferenceable(12) %i.gv, i64 12, i1 false)
  %i.gy = load ptr, ptr %i.cu, align 8
  %i.gz = load ptr, ptr %i.cv, align 8
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hb = load ptr, ptr %i.ag, align 8
  %i.hc = load ptr, ptr %i.ai, align 8
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.he = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.hf = getelementptr inbounds nuw [12 x i8], ptr %i.he, i64 %i.dq
  %i.hg = getelementptr inbounds nuw [12 x i8], ptr %i.he, i64 %i.gw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hg, ptr noundef nonnull align 4 dereferenceable(12) %i.hf, i64 12, i1 false)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %i.hh = load ptr, ptr %i.bj, align 8
  %i.hi = load ptr, ptr %i.bl, align 8
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ay, %bb.az
  %.0 = phi i64 [ %i.hu, %bb.az ], [ 0, %bb.ay ]  ; 3 uses
  %i.hk = load <8 x ptr>, ptr %i.cl, align 8
  %i.hl = icmp ne <8 x ptr> %i.hk, splat (ptr null)
  %i.hm = bitcast <8 x i1> %i.hl to i8
  %i.hn = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.hm)
  %i.ho = zext nneg i8 %i.hn to i64
  %i.hp = icmp samesign ult i64 %.0, %i.ho
  br i1 %i.hp, label %bb.az, label %.loopexit

bb.az:                                            ; preds = %.preheader
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.0
  %i.hr = load ptr, ptr %i.hq, align 8            ; 2 uses
  %i.hs = getelementptr inbounds nuw [12 x i8], ptr %i.hr, i64 %i.dq
  %i.ht = getelementptr inbounds nuw [12 x i8], ptr %i.hr, i64 %i.gw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ht, ptr noundef nonnull align 4 dereferenceable(12) %i.hs, i64 12, i1 false)
  %i.hu = add nuw nsw i64 %.0, 1
  br label %.preheader, !llvm.loop !47

.loopexit:                                        ; preds = %.preheader, %.thread194, %bb.ay, %bb.aq
  %spec.select197200 = phi i32 [ %spec.select, %bb.aq ], [ %.1139219, %.thread194 ], [ %spec.select, %bb.ay ], [ %spec.select, %.preheader ]
  %.2143 = phi i32 [ %.1142218, %bb.aq ], [ %.1142218, %.thread194 ], [ %i.gr, %bb.ay ], [ %i.gr, %.preheader ] ; 2 uses
  %i.hv = getelementptr inbounds i8, ptr %i.ga, i64 -8
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  store i32 %.2143, ptr %i.hx, align 4
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ao
  %i.hy = add i64 %.0136221, 1
  %i.hz = zext i1 %i.gi to i32
  %spec.select181 = add i32 %.1139219, %i.hz
  br label %bb.bb

bb.bb:                                            ; preds = %.thread194, %bb.ba, %.loopexit, %.thread.a, %bb.ap
  %.3144 = phi i32 [ %.1142218, %bb.ap ], [ %.2143, %.loopexit ], [ %.1142218, %.thread.a ], [ %.1142218, %bb.ba ], [ %.1142218, %.thread194 ]
  %.3 = phi i32 [ %i.go, %bb.ap ], [ %spec.select197200, %.loopexit ], [ %spec.select, %.thread.a ], [ %spec.select181, %bb.ba ], [ %.1139219, %.thread194 ] ; 2 uses
  %.2 = phi i64 [ 0, %bb.ap ], [ 0, %.loopexit ], [ 0, %.thread.a ], [ %i.hy, %bb.ba ], [ 0, %.thread194 ]
  %i.ia = add i32 %.3144, 1                       ; 2 uses
  %i.ib = add nuw i64 %.0137220, 1                ; 2 uses
  %i.ic = load ptr, ptr %i.cr, align 8
  %i.id = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = ashr exact i64 %i.ig, 2
  %i.ii = icmp ult i64 %i.ib, %i.ih
  br i1 %i.ii, label %_ZNSt6vectorIjSaIjEE2atEm.exit, label %._crit_edge, !llvm.loop !48

bb.bc:                                            ; preds = %._crit_edge232
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8            ; 2 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %.split, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @_ZdaPv(ptr noundef nonnull %i.ik) #22
  br label %.split

.split:                                           ; preds = %bb.bd, %bb.bc
  store ptr null, ptr %i.ij, align 8
  br i1 %i.co, label %.thread261, label %bb.bf

bb.be:                                            ; preds = %._crit_edge232
  br i1 %i.co, label %.thread261, label %bb.bf

bb.bf:                                            ; preds = %.split, %bb.be
  %i.im = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8            ; 2 uses
  %i.io = icmp eq ptr %i.in, null
  br i1 %i.io, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @_ZdaPv(ptr noundef nonnull %i.in) #22
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  store ptr null, ptr %i.im, align 8
  br label %.thread261

.thread261:                                       ; preds = %bb.u, %.split, %bb.d, %bb.c, %bb.bh, %bb.be, %bb.b, %bb.a
  ret void

bb.bi:                                            ; preds = %bb.y, %bb.ac, %bb.au, %bb.l, %bb.h
  %.sink = phi ptr [ %i.dj, %bb.y ], [ %i.dm, %bb.ac ], [ %i.gs, %bb.au ], [ %i.w, %bb.l ], [ %i.t, %bb.h ]
  %.pn179 = phi { ptr, i32 } [ %i.dk, %bb.y ], [ %i.dn, %bb.ac ], [ %i.gt, %bb.au ], [ %i.x, %bb.l ], [ %i.u, %bb.h ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %.pn179
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp15ObjFileImporter12countObjectsERKSt6vectorIPNS_7ObjFile6ObjectESaIS4_EERi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2) local_unnamed_addr #11 align 2 {
bb.a:
  store i32 0, ptr %2, align 4
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  store i32 %i.i, ptr %2, align 4
  %i.j = load ptr, ptr %1, align 8                ; 2 uses
  %i.k = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not14 = icmp eq ptr %i.j, %i.k
  br i1 %.not14, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.sroa.011.015 = phi ptr [ %i.r, %bb.d ], [ %i.j, %bb.b ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.011.015, align 8    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @_ZN6Assimp15ObjFileImporter12countObjectsERKSt6vectorIPNS_7ObjFile6ObjectESaIS4_EERi(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.k
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp15ObjFileImporter29addTextureMappingModePropertyEP10aiMaterial13aiTextureTypeii(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(136) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  store i32 %3, ptr %i.a, align 4
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.19, i32 noundef %2, i32 noundef %4, i32 noundef 4) ; 0 uses
  %i.d = call noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %2, i32 noundef %4, i32 noundef 4) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

declare void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

declare void @_ZN6Assimp12BaseImporter15SetupPropertiesEPKNS_8ImporterE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #21
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %3, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #22
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #21
end_hunk_0
