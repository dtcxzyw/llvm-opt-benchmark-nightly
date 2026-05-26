inline.NumInlined: 641
inline.NumDeleted: 336
begin_hunk_0_@_ZN6Assimp32SplitLargeMeshesProcess_Triangle9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE:bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 120
  store ptr null, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 128 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.bv
  br i1 %i.ct, label %.loopexit278, label %.new

.loopexit278:                                     ; preds = %.prol.loopexit, %.new, %thread-pre-split
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ax, i64 208 ; 4 uses
  store ptr %i.bt, ptr %i.cu, align 8
  %i.cv = mul i32 %.0118330, %i.k                 ; 3 uses
  %i.cw = add i32 %i.bo, %i.cv
  %i.cx = icmp ult i32 %i.cv, %i.cw
  br i1 %i.cx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit278
  %i.cy = load ptr, ptr %i.p, align 8             ; 9 uses
  %i.cz = zext i32 %indvars.iv to i64             ; 3 uses
  %i.da = add i32 %i.bo, %indvars.iv
  %i.db = add i32 %i.bo, -1                       ; 2 uses
  %min.iters.check = icmp ult i32 %i.db, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.dc = zext i32 %i.db to i64
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %n.mod.vf = and i64 %i.dd, 7                    ; 2 uses
  %i.de = icmp eq i64 %n.mod.vf, 0
  %i.df = select i1 %i.de, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.dd, %i.df               ; 2 uses
  %i.dg = add nsw i64 %n.vec, %i.cz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ep, %vector.body ]
  %vec.phi465 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.eq, %vector.body ]
  %i.dh = add i64 %index, %i.cz                   ; 8 uses
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.dh
  %i.dj = getelementptr [16 x i8], ptr %i.cy, i64 %i.dh
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  %i.dl = getelementptr [16 x i8], ptr %i.cy, i64 %i.dh
  %i.dm = getelementptr i8, ptr %i.dl, i64 32
  %i.dn = getelementptr [16 x i8], ptr %i.cy, i64 %i.dh
  %i.do = getelementptr i8, ptr %i.dn, i64 48
  %i.dp = getelementptr [16 x i8], ptr %i.cy, i64 %i.dh
  %i.dq = getelementptr i8, ptr %i.dp, i64 64
  %i.dr = getelementptr [16 x i8], ptr %i.cy, i64 %i.dh
  %i.ds = getelementptr i8, ptr %i.dr, i64 80
  %i.dt = getelementptr [16 x i8], ptr %i.cy, i64 %i.dh
  %i.du = getelementptr i8, ptr %i.dt, i64 96
  %i.dv = getelementptr [16 x i8], ptr %i.cy, i64 %i.dh
  %i.dw = getelementptr i8, ptr %i.dv, i64 112
  %i.dx = load i32, ptr %i.di, align 8
  %i.dy = load i32, ptr %i.dk, align 8
  %i.dz = load i32, ptr %i.dm, align 8
  %i.ea = load i32, ptr %i.do, align 8
  %i.eb = insertelement <4 x i32> poison, i32 %i.dx, i64 0
  %i.ec = insertelement <4 x i32> %i.eb, i32 %i.dy, i64 1
  %i.ed = insertelement <4 x i32> %i.ec, i32 %i.dz, i64 2
  %i.ee = insertelement <4 x i32> %i.ed, i32 %i.ea, i64 3
  %i.ef = load i32, ptr %i.dq, align 8
  %i.eg = load i32, ptr %i.ds, align 8
  %i.eh = load i32, ptr %i.du, align 8
  %i.ei = load i32, ptr %i.dw, align 8
  %i.ej = insertelement <4 x i32> poison, i32 %i.ef, i64 0
  %i.ek = insertelement <4 x i32> %i.ej, i32 %i.eg, i64 1
  %i.el = insertelement <4 x i32> %i.ek, i32 %i.eh, i64 2
  %i.em = insertelement <4 x i32> %i.el, i32 %i.ei, i64 3
  %i.en = freeze <4 x i32> %i.ee
  %i.eo = freeze <4 x i32> %i.em
  %i.ep = add <4 x i32> %i.en, %vec.phi           ; 2 uses
  %i.eq = add <4 x i32> %i.eo, %vec.phi465        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.eq, %i.ep
  %i.es = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv354.ph = phi i64 [ %i.cz, %.lr.ph ], [ %i.dg, %middle.block ]
  %.0120299.ph = phi i32 [ 0, %.lr.ph ], [ %i.es, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %.loopexit278
  %.0120.lcssa = phi i32 [ 0, %.loopexit278 ], [ %i.ew, %scalar.ph ] ; 8 uses
  store i32 %.0120.lcssa, ptr %i.ay, align 4
  %i.et = load ptr, ptr %i.q, align 8
  %.not = icmp eq ptr %i.et, null
  br i1 %.not, label %bb.h, label %bb.g

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv354 = phi i64 [ %indvars.iv.next355, %scalar.ph ], [ %indvars.iv354.ph, %scalar.ph.preheader ] ; 2 uses
  %.0120299 = phi i32 [ %i.ew, %scalar.ph ], [ %.0120299.ph, %scalar.ph.preheader ]
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %indvars.iv354
  %i.ev = load i32, ptr %i.eu, align 8
  %.fr = freeze i32 %i.ev
  %i.ew = add i32 %.fr, %.0120299                 ; 2 uses
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next355 to i32
  %exitcond.not = icmp eq i32 %i.da, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !11

bb.g:                                             ; preds = %._crit_edge
  %i.ex = zext i32 %.0120.lcssa to i64
  %i.ey = mul nuw nsw i64 %i.ex, 12               ; 2 uses
  %i.ez = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ey) #17 ; 2 uses
  %i.fa = icmp eq i32 %.0120.lcssa, 0
  br i1 %i.fa, label %.loopexit277, label %.loopexit277.loopexit

.loopexit277.loopexit:                            ; preds = %bb.g
  %i.fb = add nsw i64 %i.ey, -12                  ; 2 uses
  %i.fc = urem i64 %i.fb, 12
  %i.fd = sub nuw nsw i64 %i.fb, %i.fc
  %i.fe = add nsw i64 %i.fd, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ez, i8 0, i64 %i.fe, i1 false)
  br label %.loopexit277

.loopexit277:                                     ; preds = %.loopexit277.loopexit, %bb.g
  store ptr %i.ez, ptr %i.ba, align 8
  br label %bb.h

bb.h:                                             ; preds = %.loopexit277, %._crit_edge
  %i.ff = load ptr, ptr %i.r, align 8
  %.not.i = icmp ne ptr %i.ff, null
  %i.fg = load i32, ptr %i.s, align 4
  %i.fh = icmp ne i32 %i.fg, 0                    ; 18 uses
  %i.fi = select i1 %.not.i, i1 %i.fh, i1 false
  br i1 %i.fi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fj = zext i32 %.0120.lcssa to i64
  %i.fk = mul nuw nsw i64 %i.fj, 12               ; 2 uses
  %i.fl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fk) #17 ; 2 uses
  %i.fm = icmp eq i32 %.0120.lcssa, 0
  br i1 %i.fm, label %.loopexit276, label %.loopexit276.loopexit

.loopexit276.loopexit:                            ; preds = %bb.i
  %i.fn = add nsw i64 %i.fk, -12                  ; 2 uses
  %i.fo = urem i64 %i.fn, 12
  %i.fp = sub nuw nsw i64 %i.fn, %i.fo
  %i.fq = add nsw i64 %i.fp, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fl, i8 0, i64 %i.fq, i1 false)
  br label %.loopexit276

.loopexit276:                                     ; preds = %.loopexit276.loopexit, %bb.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store ptr %i.fl, ptr %i.fr, align 8
  br label %bb.j

bb.j:                                             ; preds = %.loopexit276, %bb.h
  %i.fs = load ptr, ptr %i.t, align 8
  %.not.i146 = icmp ne ptr %i.fs, null
  %i.ft = load ptr, ptr %i.u, align 8
  %.not1.i = icmp ne ptr %i.ft, null
  %or.cond.i.not269 = select i1 %.not.i146, i1 %.not1.i, i1 false
  %brmerge.not = select i1 %or.cond.i.not269, i1 %i.fh, i1 false
  %i.fu = zext i32 %.0120.lcssa to i64            ; 2 uses
  %i.fv = mul nuw nsw i64 %i.fu, 12               ; 13 uses
  br i1 %brmerge.not, label %bb.k, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.fw = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fv) #17 ; 3 uses
  %i.fx = icmp eq i32 %.0120.lcssa, 0
  br i1 %i.fx, label %.thread, label %.loopexit275.loopexit

.thread:                                          ; preds = %bb.k
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr %i.fw, ptr %i.fy, align 8
  %i.fz = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fv) #17
  br label %.loopexit275

.loopexit275.loopexit:                            ; preds = %bb.k
  %i.ga = add nsw i64 %i.fv, -12                  ; 2 uses
  %i.gb = urem i64 %i.ga, 12
  %i.gc = sub nuw nsw i64 %i.ga, %i.gb
  %i.gd = add nsw i64 %i.gc, 12                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fw, i8 0, i64 %i.gd, i1 false)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr %i.fw, ptr %i.ge, align 8
  %i.gf = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fv) #17 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gf, i8 0, i64 %i.gd, i1 false)
  br label %.loopexit275

.loopexit275:                                     ; preds = %.loopexit275.loopexit, %.thread
  %i.gg = phi ptr [ %i.fz, %.thread ], [ %i.gf, %.loopexit275.loopexit ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store ptr %i.gg, ptr %i.gh, align 8
  br label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread: ; preds = %bb.j, %.loopexit275
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ax, i64 176
  %i.gj = icmp eq i32 %.0120.lcssa, 0             ; 16 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ax, i64 112 ; 2 uses
  %i.gl = add nsw i64 %i.fv, -12                  ; 2 uses
  %i.gm = urem i64 %i.gl, 12
  %i.gn = sub nsw i64 %i.gl, %i.gm
  %i.go = add nsw i64 %i.gn, 12                   ; 8 uses
  %i.gp = load i32, ptr %i.v, align 4
  store i32 %i.gp, ptr %i.gi, align 4
  %i.gq = load ptr, ptr %i.w, align 8
  %.not.i147 = icmp ne ptr %i.gq, null
  %i.gr = select i1 %.not.i147, i1 %i.fh, i1 false
  br i1 %i.gr, label %bb.l, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.1

bb.l:                                             ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %i.gs = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fv) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit273, label %.loopexit273.loopexit

.loopexit273.loopexit:                            ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gs, i8 0, i64 %i.go, i1 false)
  br label %.loopexit273

.loopexit273:                                     ; preds = %.loopexit273.loopexit, %bb.l
  store ptr %i.gs, ptr %i.gk, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.1

_ZNK6aiMesh16HasTextureCoordsEj.exit.1:           ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, %.loopexit273
  %i.gt = load i32, ptr %i.ac, align 4
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ax, i64 180
  store i32 %i.gt, ptr %i.gu, align 4
  %i.gv = load ptr, ptr %i.ad, align 8
  %.not.i147.1 = icmp ne ptr %i.gv, null
  %i.gw = select i1 %.not.i147.1, i1 %i.fh, i1 false
  br i1 %i.gw, label %bb.m, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.2

bb.m:                                             ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.1
  %i.gx = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fv) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit273.1, label %.loopexit273.loopexit.1

.loopexit273.loopexit.1:                          ; preds = %bb.m
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gx, i8 0, i64 %i.go, i1 false)
  br label %.loopexit273.1

.loopexit273.1:                                   ; preds = %.loopexit273.loopexit.1, %bb.m
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  store ptr %i.gx, ptr %i.gy, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.2

_ZNK6aiMesh16HasTextureCoordsEj.exit.2:           ; preds = %.loopexit273.1, %_ZNK6aiMesh16HasTextureCoordsEj.exit.1
  %i.gz = load i32, ptr %i.ae, align 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ax, i64 184
  store i32 %i.gz, ptr %i.ha, align 4
  %i.hb = load ptr, ptr %i.af, align 8
  %.not.i147.2 = icmp ne ptr %i.hb, null
  %i.hc = select i1 %.not.i147.2, i1 %i.fh, i1 false
  br i1 %i.hc, label %bb.n, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.3

bb.n:                                             ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.2
  %i.hd = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fv) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit273.2, label %.loopexit273.loopexit.2

.loopexit273.loopexit.2:                          ; preds = %bb.n
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hd, i8 0, i64 %i.go, i1 false)
  br label %.loopexit273.2

.loopexit273.2:                                   ; preds = %.loopexit273.loopexit.2, %bb.n
  %i.he = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  store ptr %i.hd, ptr %i.he, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.3

_ZNK6aiMesh16HasTextureCoordsEj.exit.3:           ; preds = %.loopexit273.2, %_ZNK6aiMesh16HasTextureCoordsEj.exit.2
  %i.hf = load i32, ptr %i.ag, align 4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ax, i64 188
  store i32 %i.hf, ptr %i.hg, align 4
  %i.hh = load ptr, ptr %i.ah, align 8
  %.not.i147.3 = icmp ne ptr %i.hh, null
  %i.hi = select i1 %.not.i147.3, i1 %i.fh, i1 false
  br i1 %i.hi, label %bb.o, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.4

bb.o:                                             ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.3
  %i.hj = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fv) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit273.3, label %.loopexit273.loopexit.3

.loopexit273.loopexit.3:                          ; preds = %bb.o
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hj, i8 0, i64 %i.go, i1 false)
  br label %.loopexit273.3

.loopexit273.3:                                   ; preds = %.loopexit273.loopexit.3, %bb.o
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ax, i64 136
  store ptr %i.hj, ptr %i.hk, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.4

_ZNK6aiMesh16HasTextureCoordsEj.exit.4:           ; preds = %.loopexit273.3, %_ZNK6aiMesh16HasTextureCoordsEj.exit.3
  %i.hl = load i32, ptr %i.ai, align 4
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ax, i64 192
  store i32 %i.hl, ptr %i.hm, align 4
  %i.hn = load ptr, ptr %i.aj, align 8
  %.not.i147.4 = icmp ne ptr %i.hn, null
  %i.ho = select i1 %.not.i147.4, i1 %i.fh, i1 false
  br i1 %i.ho, label %bb.p, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.5

bb.p:                                             ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.4
  %i.hp = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fv) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit273.4, label %.loopexit273.loopexit.4

.loopexit273.loopexit.4:                          ; preds = %bb.p
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hp, i8 0, i64 %i.go, i1 false)
  br label %.loopexit273.4

.loopexit273.4:                                   ; preds = %.loopexit273.loopexit.4, %bb.p
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  store ptr %i.hp, ptr %i.hq, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.5

_ZNK6aiMesh16HasTextureCoordsEj.exit.5:           ; preds = %.loopexit273.4, %_ZNK6aiMesh16HasTextureCoordsEj.exit.4
  %i.hr = load i32, ptr %i.ak, align 4
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ax, i64 196
  store i32 %i.hr, ptr %i.hs, align 4
  %i.ht = load ptr, ptr %i.al, align 8
  %.not.i147.5 = icmp ne ptr %i.ht, null
  %i.hu = select i1 %.not.i147.5, i1 %i.fh, i1 false
  br i1 %i.hu, label %bb.q, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.6

bb.q:                                             ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.5
  %i.hv = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fv) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit273.5, label %.loopexit273.loopexit.5

.loopexit273.loopexit.5:                          ; preds = %bb.q
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hv, i8 0, i64 %i.go, i1 false)
  br label %.loopexit273.5

.loopexit273.5:                                   ; preds = %.loopexit273.loopexit.5, %bb.q
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ax, i64 152
  store ptr %i.hv, ptr %i.hw, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.6

_ZNK6aiMesh16HasTextureCoordsEj.exit.6:           ; preds = %.loopexit273.5, %_ZNK6aiMesh16HasTextureCoordsEj.exit.5
  %i.hx = load i32, ptr %i.am, align 4
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ax, i64 200
  store i32 %i.hx, ptr %i.hy, align 4
  %i.hz = load ptr, ptr %i.an, align 8
  %.not.i147.6 = icmp ne ptr %i.hz, null
  %i.ia = select i1 %.not.i147.6, i1 %i.fh, i1 false
  br i1 %i.ia, label %bb.r, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.7

bb.r:                                             ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.6
  %i.ib = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fv) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit273.6, label %.loopexit273.loopexit.6

.loopexit273.loopexit.6:                          ; preds = %bb.r
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ib, i8 0, i64 %i.go, i1 false)
  br label %.loopexit273.6

.loopexit273.6:                                   ; preds = %.loopexit273.loopexit.6, %bb.r
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ax, i64 160
  store ptr %i.ib, ptr %i.ic, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.7

_ZNK6aiMesh16HasTextureCoordsEj.exit.7:           ; preds = %.loopexit273.6, %_ZNK6aiMesh16HasTextureCoordsEj.exit.6
  %i.id = load i32, ptr %i.ao, align 4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ax, i64 204
  store i32 %i.id, ptr %i.ie, align 4
  %i.if = load ptr, ptr %i.ap, align 8
  %.not.i147.7 = icmp ne ptr %i.if, null
  %i.ig = select i1 %.not.i147.7, i1 %i.fh, i1 false
  br i1 %i.ig, label %bb.s, label %.preheader274

bb.s:                                             ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.7
  %i.ih = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.fv) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit273.7, label %.loopexit273.loopexit.7

.loopexit273.loopexit.7:                          ; preds = %bb.s
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ih, i8 0, i64 %i.go, i1 false)
  br label %.loopexit273.7

.loopexit273.7:                                   ; preds = %.loopexit273.loopexit.7, %bb.s
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ax, i64 168
  store ptr %i.ih, ptr %i.ii, align 8
  br label %.preheader274

.preheader274:                                    ; preds = %.loopexit273.7, %_ZNK6aiMesh16HasTextureCoordsEj.exit.7
  %i.ij = shl nuw nsw i64 %i.fu, 4                ; 16 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 2 uses
  %i.il = load ptr, ptr %i.x, align 8
  %.not.i149 = icmp ne ptr %i.il, null
  %i.im = select i1 %.not.i149, i1 %i.fh, i1 false
  br i1 %i.im, label %bb.t, label %_ZNK6aiMesh15HasVertexColorsEj.exit.1

bb.t:                                             ; preds = %.preheader274
  %i.in = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ij) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit272, label %.loopexit272.loopexit

.loopexit272.loopexit:                            ; preds = %bb.t
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.in, i8 0, i64 %i.ij, i1 false)
  br label %.loopexit272

.loopexit272:                                     ; preds = %.loopexit272.loopexit, %bb.t
  store ptr %i.in, ptr %i.ik, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.1

_ZNK6aiMesh15HasVertexColorsEj.exit.1:            ; preds = %.preheader274, %.loopexit272
  %i.io = load ptr, ptr %i.aq, align 8
  %.not.i149.1 = icmp ne ptr %i.io, null
  %i.ip = select i1 %.not.i149.1, i1 %i.fh, i1 false
  br i1 %i.ip, label %bb.u, label %_ZNK6aiMesh15HasVertexColorsEj.exit.2

bb.u:                                             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.1
  %i.iq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ij) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit272.1, label %.loopexit272.loopexit.1

.loopexit272.loopexit.1:                          ; preds = %bb.u
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.iq, i8 0, i64 %i.ij, i1 false)
  br label %.loopexit272.1

.loopexit272.1:                                   ; preds = %.loopexit272.loopexit.1, %bb.u
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  store ptr %i.iq, ptr %i.ir, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.2

_ZNK6aiMesh15HasVertexColorsEj.exit.2:            ; preds = %.loopexit272.1, %_ZNK6aiMesh15HasVertexColorsEj.exit.1
  %i.is = load ptr, ptr %i.ar, align 8
  %.not.i149.2 = icmp ne ptr %i.is, null
  %i.it = select i1 %.not.i149.2, i1 %i.fh, i1 false
  br i1 %i.it, label %bb.v, label %_ZNK6aiMesh15HasVertexColorsEj.exit.3

bb.v:                                             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.2
  %i.iu = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ij) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit272.2, label %.loopexit272.loopexit.2

.loopexit272.loopexit.2:                          ; preds = %bb.v
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.iu, i8 0, i64 %i.ij, i1 false)
  br label %.loopexit272.2

.loopexit272.2:                                   ; preds = %.loopexit272.loopexit.2, %bb.v
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  store ptr %i.iu, ptr %i.iv, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.3

_ZNK6aiMesh15HasVertexColorsEj.exit.3:            ; preds = %.loopexit272.2, %_ZNK6aiMesh15HasVertexColorsEj.exit.2
  %i.iw = load ptr, ptr %i.as, align 8
  %.not.i149.3 = icmp ne ptr %i.iw, null
  %i.ix = select i1 %.not.i149.3, i1 %i.fh, i1 false
  br i1 %i.ix, label %bb.w, label %_ZNK6aiMesh15HasVertexColorsEj.exit.4

bb.w:                                             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.3
  %i.iy = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ij) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit272.3, label %.loopexit272.loopexit.3

.loopexit272.loopexit.3:                          ; preds = %bb.w
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.iy, i8 0, i64 %i.ij, i1 false)
  br label %.loopexit272.3

.loopexit272.3:                                   ; preds = %.loopexit272.loopexit.3, %bb.w
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  store ptr %i.iy, ptr %i.iz, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.4

_ZNK6aiMesh15HasVertexColorsEj.exit.4:            ; preds = %.loopexit272.3, %_ZNK6aiMesh15HasVertexColorsEj.exit.3
  %i.ja = load ptr, ptr %i.at, align 8
  %.not.i149.4 = icmp ne ptr %i.ja, null
  %i.jb = select i1 %.not.i149.4, i1 %i.fh, i1 false
  br i1 %i.jb, label %bb.x, label %_ZNK6aiMesh15HasVertexColorsEj.exit.5

bb.x:                                             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.4
  %i.jc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ij) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit272.4, label %.loopexit272.loopexit.4

.loopexit272.loopexit.4:                          ; preds = %bb.x
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jc, i8 0, i64 %i.ij, i1 false)
  br label %.loopexit272.4

.loopexit272.4:                                   ; preds = %.loopexit272.loopexit.4, %bb.x
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  store ptr %i.jc, ptr %i.jd, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.5

_ZNK6aiMesh15HasVertexColorsEj.exit.5:            ; preds = %.loopexit272.4, %_ZNK6aiMesh15HasVertexColorsEj.exit.4
  %i.je = load ptr, ptr %i.au, align 8
  %.not.i149.5 = icmp ne ptr %i.je, null
  %i.jf = select i1 %.not.i149.5, i1 %i.fh, i1 false
  br i1 %i.jf, label %bb.y, label %_ZNK6aiMesh15HasVertexColorsEj.exit.6

bb.y:                                             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.5
  %i.jg = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ij) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit272.5, label %.loopexit272.loopexit.5

.loopexit272.loopexit.5:                          ; preds = %bb.y
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jg, i8 0, i64 %i.ij, i1 false)
  br label %.loopexit272.5

.loopexit272.5:                                   ; preds = %.loopexit272.loopexit.5, %bb.y
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  store ptr %i.jg, ptr %i.jh, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.6

_ZNK6aiMesh15HasVertexColorsEj.exit.6:            ; preds = %.loopexit272.5, %_ZNK6aiMesh15HasVertexColorsEj.exit.5
  %i.ji = load ptr, ptr %i.av, align 8
  %.not.i149.6 = icmp ne ptr %i.ji, null
  %i.jj = select i1 %.not.i149.6, i1 %i.fh, i1 false
  br i1 %i.jj, label %bb.z, label %_ZNK6aiMesh15HasVertexColorsEj.exit.7

bb.z:                                             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.6
  %i.jk = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ij) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit272.6, label %.loopexit272.loopexit.6

.loopexit272.loopexit.6:                          ; preds = %bb.z
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jk, i8 0, i64 %i.ij, i1 false)
  br label %.loopexit272.6

.loopexit272.6:                                   ; preds = %.loopexit272.loopexit.6, %bb.z
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  store ptr %i.jk, ptr %i.jl, align 8
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.7

_ZNK6aiMesh15HasVertexColorsEj.exit.7:            ; preds = %.loopexit272.6, %_ZNK6aiMesh15HasVertexColorsEj.exit.6
  %i.jm = load ptr, ptr %i.aw, align 8
  %.not.i149.7 = icmp ne ptr %i.jm, null
  %i.jn = select i1 %.not.i149.7, i1 %i.fh, i1 false
  br i1 %i.jn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.7
  %i.jo = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ij) #17 ; 2 uses
  br i1 %i.gj, label %.loopexit272.7, label %.loopexit272.loopexit.7

.loopexit272.loopexit.7:                          ; preds = %bb.aa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jo, i8 0, i64 %i.ij, i1 false)
  br label %.loopexit272.7

.loopexit272.7:                                   ; preds = %.loopexit272.loopexit.7, %bb.aa
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  store ptr %i.jo, ptr %i.jp, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit272.7, %_ZNK6aiMesh15HasVertexColorsEj.exit.7
  %i.jq = load ptr, ptr %i.y, align 8
  %.not.i148 = icmp ne ptr %i.jq, null
  %i.jr = load i32, ptr %i.z, align 8             ; 2 uses
  %i.js = icmp ne i32 %i.jr, 0
  %i.jt = select i1 %.not.i148, i1 %i.js, i1 false
  br i1 %i.jt, label %._crit_edge315, label %_ZNSt6vectorI14aiVertexWeightSaIS0_EED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN6Assimp30SplitLargeMeshesProcess_Vertex9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE:bb.a
  %i.et = icmp eq i32 %.fr, 0                     ; 16 uses
  %i.eu = load ptr, ptr %i.ab, align 8
  %.not.i161.not = icmp eq ptr %i.eu, null
  br i1 %.not.i161.not, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %bb.w

_ZNK6aiMesh15HasVertexColorsEj.exit.preheader.split: ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bv, i64 112
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split

_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader:   ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.preheader, %.loopexit310, %.loopexit310.1, %.loopexit310.2, %.loopexit310.3, %.loopexit310.4, %.loopexit310.5, %.loopexit310.6, %.loopexit310.7
  %i.ew = mul nuw nsw i64 %i.ea, 12               ; 9 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bv, i64 112 ; 10 uses
  %i.ey = add nsw i64 %i.ew, -12                  ; 2 uses
  %i.ez = urem i64 %i.ey, 12
  %i.fa = sub nuw nsw i64 %i.ey, %i.ez
  %i.fb = add nsw i64 %i.fa, 12                   ; 8 uses
  %i.fc = load ptr, ptr %i.ac, align 8
  %.not.i162.not = icmp eq ptr %i.fc, null
  br i1 %.not.i162.not, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.an

bb.v:                                             ; preds = %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.w:                                             ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.preheader
  %i.fe = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.es) #17
          to label %bb.x unwind label %bb.v       ; 2 uses

bb.x:                                             ; preds = %bb.w
  br i1 %i.et, label %.loopexit310, label %.loopexit310.loopexit

.loopexit310.loopexit:                            ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fe, i8 0, i64 %i.es, i1 false)
  br label %.loopexit310

.loopexit310:                                     ; preds = %.loopexit310.loopexit, %bb.x
  store ptr %i.fe, ptr %i.er, align 8
  %i.ff = load ptr, ptr %i.al, align 8
  %.not.i161.not.1 = icmp eq ptr %i.ff, null
  br i1 %.not.i161.not.1, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %bb.y

bb.y:                                             ; preds = %.loopexit310
  %i.fg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.es) #17
          to label %bb.z unwind label %bb.v       ; 2 uses

bb.z:                                             ; preds = %bb.y
  br i1 %i.et, label %.loopexit310.1, label %.loopexit310.loopexit.1

.loopexit310.loopexit.1:                          ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fg, i8 0, i64 %i.es, i1 false)
  br label %.loopexit310.1

.loopexit310.1:                                   ; preds = %.loopexit310.loopexit.1, %bb.z
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  store ptr %i.fg, ptr %i.fh, align 8
  %i.fi = load ptr, ptr %i.am, align 8
  %.not.i161.not.2 = icmp eq ptr %i.fi, null
  br i1 %.not.i161.not.2, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %bb.aa

bb.aa:                                            ; preds = %.loopexit310.1
  %i.fj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.es) #17
          to label %bb.ab unwind label %bb.v      ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.et, label %.loopexit310.2, label %.loopexit310.loopexit.2

.loopexit310.loopexit.2:                          ; preds = %bb.ab
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fj, i8 0, i64 %i.es, i1 false)
  br label %.loopexit310.2

.loopexit310.2:                                   ; preds = %.loopexit310.loopexit.2, %bb.ab
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  store ptr %i.fj, ptr %i.fk, align 8
  %i.fl = load ptr, ptr %i.an, align 8
  %.not.i161.not.3 = icmp eq ptr %i.fl, null
  br i1 %.not.i161.not.3, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %bb.ac

bb.ac:                                            ; preds = %.loopexit310.2
  %i.fm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.es) #17
          to label %bb.ad unwind label %bb.v      ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.et, label %.loopexit310.3, label %.loopexit310.loopexit.3

.loopexit310.loopexit.3:                          ; preds = %bb.ad
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fm, i8 0, i64 %i.es, i1 false)
  br label %.loopexit310.3

.loopexit310.3:                                   ; preds = %.loopexit310.loopexit.3, %bb.ad
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  store ptr %i.fm, ptr %i.fn, align 8
  %i.fo = load ptr, ptr %i.ao, align 8
  %.not.i161.not.4 = icmp eq ptr %i.fo, null
  br i1 %.not.i161.not.4, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %bb.ae

bb.ae:                                            ; preds = %.loopexit310.3
  %i.fp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.es) #17
          to label %bb.af unwind label %bb.v      ; 2 uses

bb.af:                                            ; preds = %bb.ae
  br i1 %i.et, label %.loopexit310.4, label %.loopexit310.loopexit.4

.loopexit310.loopexit.4:                          ; preds = %bb.af
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fp, i8 0, i64 %i.es, i1 false)
  br label %.loopexit310.4

.loopexit310.4:                                   ; preds = %.loopexit310.loopexit.4, %bb.af
  %i.fq = getelementptr inbounds nuw i8, ptr %i.bv, i64 80
  store ptr %i.fp, ptr %i.fq, align 8
  %i.fr = load ptr, ptr %i.ap, align 8
  %.not.i161.not.5 = icmp eq ptr %i.fr, null
  br i1 %.not.i161.not.5, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %bb.ag

bb.ag:                                            ; preds = %.loopexit310.4
  %i.fs = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.es) #17
          to label %bb.ah unwind label %bb.v      ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.et, label %.loopexit310.5, label %.loopexit310.loopexit.5

.loopexit310.loopexit.5:                          ; preds = %bb.ah
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fs, i8 0, i64 %i.es, i1 false)
  br label %.loopexit310.5

.loopexit310.5:                                   ; preds = %.loopexit310.loopexit.5, %bb.ah
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bv, i64 88
  store ptr %i.fs, ptr %i.ft, align 8
  %i.fu = load ptr, ptr %i.aq, align 8
  %.not.i161.not.6 = icmp eq ptr %i.fu, null
  br i1 %.not.i161.not.6, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %bb.ai

bb.ai:                                            ; preds = %.loopexit310.5
  %i.fv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.es) #17
          to label %bb.aj unwind label %bb.v      ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.et, label %.loopexit310.6, label %.loopexit310.loopexit.6

.loopexit310.loopexit.6:                          ; preds = %bb.aj
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fv, i8 0, i64 %i.es, i1 false)
  br label %.loopexit310.6

.loopexit310.6:                                   ; preds = %.loopexit310.loopexit.6, %bb.aj
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bv, i64 96
  store ptr %i.fv, ptr %i.fw, align 8
  %i.fx = load ptr, ptr %i.ar, align 8
  %.not.i161.not.7 = icmp eq ptr %i.fx, null
  br i1 %.not.i161.not.7, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, label %bb.ak

bb.ak:                                            ; preds = %.loopexit310.6
  %i.fy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.es) #17
          to label %bb.al unwind label %bb.v      ; 2 uses

bb.al:                                            ; preds = %bb.ak
  br i1 %i.et, label %.loopexit310.7, label %.loopexit310.loopexit.7

.loopexit310.loopexit.7:                          ; preds = %bb.al
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fy, i8 0, i64 %i.es, i1 false)
  br label %.loopexit310.7

.loopexit310.7:                                   ; preds = %.loopexit310.loopexit.7, %bb.al
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bv, i64 104
  store ptr %i.fy, ptr %i.fz, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader

_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split: ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader, %_ZNK6aiMesh15HasVertexColorsEj.exit, %_ZNK6aiMesh15HasVertexColorsEj.exit.1, %_ZNK6aiMesh15HasVertexColorsEj.exit.2, %_ZNK6aiMesh15HasVertexColorsEj.exit.3, %_ZNK6aiMesh15HasVertexColorsEj.exit.4, %_ZNK6aiMesh15HasVertexColorsEj.exit.5, %_ZNK6aiMesh15HasVertexColorsEj.exit.6, %_ZNK6aiMesh15HasVertexColorsEj.exit.7, %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader.split
  %i.ga = phi ptr [ %i.ev, %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader.split ], [ %i.ex, %_ZNK6aiMesh15HasVertexColorsEj.exit.7 ], [ %i.ex, %_ZNK6aiMesh15HasVertexColorsEj.exit.6 ], [ %i.ex, %_ZNK6aiMesh15HasVertexColorsEj.exit.5 ], [ %i.ex, %_ZNK6aiMesh15HasVertexColorsEj.exit.4 ], [ %i.ex, %_ZNK6aiMesh15HasVertexColorsEj.exit.3 ], [ %i.ex, %_ZNK6aiMesh15HasVertexColorsEj.exit.2 ], [ %i.ex, %_ZNK6aiMesh15HasVertexColorsEj.exit.1 ], [ %i.ex, %_ZNK6aiMesh15HasVertexColorsEj.exit ], [ %i.ex, %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader ]
  %i.gb = phi ptr [ %i.eq, %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader.split ], [ %i.er, %_ZNK6aiMesh15HasVertexColorsEj.exit.7 ], [ %i.er, %_ZNK6aiMesh15HasVertexColorsEj.exit.6 ], [ %i.er, %_ZNK6aiMesh15HasVertexColorsEj.exit.5 ], [ %i.er, %_ZNK6aiMesh15HasVertexColorsEj.exit.4 ], [ %i.er, %_ZNK6aiMesh15HasVertexColorsEj.exit.3 ], [ %i.er, %_ZNK6aiMesh15HasVertexColorsEj.exit.2 ], [ %i.er, %_ZNK6aiMesh15HasVertexColorsEj.exit.1 ], [ %i.er, %_ZNK6aiMesh15HasVertexColorsEj.exit ], [ %i.er, %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader ]
  invoke void @_ZNSt6vectorI6aiFaceSaIS0_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.ae)
          to label %.preheader313 unwind label %.loopexit319

.preheader313:                                    ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.gf = zext i32 %.0118 to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bv, i64 120
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bv, i64 128
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bv, i64 136
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bv, i64 144
  %i.gk = getelementptr inbounds nuw i8, ptr %i.bv, i64 152
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bv, i64 160
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bv, i64 168
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.go = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bv, i64 80
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bv, i64 88
  %i.gs = getelementptr inbounds nuw i8, ptr %i.bv, i64 96
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bv, i64 104
  br label %bb.bd

bb.am:                                            ; preds = %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.at, %bb.ar, %bb.ap, %bb.an
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.an:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.preheader
  %i.gv = getelementptr inbounds nuw i8, ptr %i.bv, i64 176
  %i.gw = load i32, ptr %i.ad, align 4
  store i32 %i.gw, ptr %i.gv, align 4
  %i.gx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ew) #17
          to label %bb.ao unwind label %bb.am     ; 2 uses

bb.ao:                                            ; preds = %bb.an
  br i1 %i.et, label %_ZNK6aiMesh15HasVertexColorsEj.exit, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit:     ; preds = %bb.ao
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gx, i8 0, i64 %i.fb, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit

_ZNK6aiMesh15HasVertexColorsEj.exit:              ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit, %bb.ao
  store ptr %i.gx, ptr %i.ex, align 8
  %i.gy = load ptr, ptr %i.as, align 8
  %.not.i162.not.1 = icmp eq ptr %i.gy, null
  br i1 %.not.i162.not.1, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.ap

bb.ap:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit
  %i.gz = load i32, ptr %i.at, align 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bv, i64 180
  store i32 %i.gz, ptr %i.ha, align 4
  %i.hb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ew) #17
          to label %bb.aq unwind label %bb.am     ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.et, label %_ZNK6aiMesh15HasVertexColorsEj.exit.1, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.1

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.1:   ; preds = %bb.aq
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hb, i8 0, i64 %i.fb, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.1

_ZNK6aiMesh15HasVertexColorsEj.exit.1:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.1, %bb.aq
  %i.hc = getelementptr inbounds nuw i8, ptr %i.bv, i64 120
  store ptr %i.hb, ptr %i.hc, align 8
  %i.hd = load ptr, ptr %i.au, align 8
  %.not.i162.not.2 = icmp eq ptr %i.hd, null
  br i1 %.not.i162.not.2, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.ar

bb.ar:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.1
  %i.he = load i32, ptr %i.av, align 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.bv, i64 184
  store i32 %i.he, ptr %i.hf, align 4
  %i.hg = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ew) #17
          to label %bb.as unwind label %bb.am     ; 2 uses

bb.as:                                            ; preds = %bb.ar
  br i1 %i.et, label %_ZNK6aiMesh15HasVertexColorsEj.exit.2, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.2

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.2:   ; preds = %bb.as
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hg, i8 0, i64 %i.fb, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.2

_ZNK6aiMesh15HasVertexColorsEj.exit.2:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.2, %bb.as
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bv, i64 128
  store ptr %i.hg, ptr %i.hh, align 8
  %i.hi = load ptr, ptr %i.aw, align 8
  %.not.i162.not.3 = icmp eq ptr %i.hi, null
  br i1 %.not.i162.not.3, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.at

bb.at:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.2
  %i.hj = load i32, ptr %i.ax, align 4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.bv, i64 188
  store i32 %i.hj, ptr %i.hk, align 4
  %i.hl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ew) #17
          to label %bb.au unwind label %bb.am     ; 2 uses

bb.au:                                            ; preds = %bb.at
  br i1 %i.et, label %_ZNK6aiMesh15HasVertexColorsEj.exit.3, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.3

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.3:   ; preds = %bb.au
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hl, i8 0, i64 %i.fb, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.3

_ZNK6aiMesh15HasVertexColorsEj.exit.3:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.3, %bb.au
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bv, i64 136
  store ptr %i.hl, ptr %i.hm, align 8
  %i.hn = load ptr, ptr %i.ay, align 8
  %.not.i162.not.4 = icmp eq ptr %i.hn, null
  br i1 %.not.i162.not.4, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.av

bb.av:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.3
  %i.ho = load i32, ptr %i.az, align 4
  %i.hp = getelementptr inbounds nuw i8, ptr %i.bv, i64 192
  store i32 %i.ho, ptr %i.hp, align 4
  %i.hq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ew) #17
          to label %bb.aw unwind label %bb.am     ; 2 uses

bb.aw:                                            ; preds = %bb.av
  br i1 %i.et, label %_ZNK6aiMesh15HasVertexColorsEj.exit.4, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.4

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.4:   ; preds = %bb.aw
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hq, i8 0, i64 %i.fb, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.4

_ZNK6aiMesh15HasVertexColorsEj.exit.4:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.4, %bb.aw
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bv, i64 144
  store ptr %i.hq, ptr %i.hr, align 8
  %i.hs = load ptr, ptr %i.ba, align 8
  %.not.i162.not.5 = icmp eq ptr %i.hs, null
  br i1 %.not.i162.not.5, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.ax

bb.ax:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.4
  %i.ht = load i32, ptr %i.bb, align 4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bv, i64 196
  store i32 %i.ht, ptr %i.hu, align 4
  %i.hv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ew) #17
          to label %bb.ay unwind label %bb.am     ; 2 uses

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.et, label %_ZNK6aiMesh15HasVertexColorsEj.exit.5, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.5

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.5:   ; preds = %bb.ay
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hv, i8 0, i64 %i.fb, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.5

_ZNK6aiMesh15HasVertexColorsEj.exit.5:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.5, %bb.ay
  %i.hw = getelementptr inbounds nuw i8, ptr %i.bv, i64 152
  store ptr %i.hv, ptr %i.hw, align 8
  %i.hx = load ptr, ptr %i.bc, align 8
  %.not.i162.not.6 = icmp eq ptr %i.hx, null
  br i1 %.not.i162.not.6, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.az

bb.az:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.5
  %i.hy = load i32, ptr %i.bd, align 4
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bv, i64 200
  store i32 %i.hy, ptr %i.hz, align 4
  %i.ia = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ew) #17
          to label %bb.ba unwind label %bb.am     ; 2 uses

bb.ba:                                            ; preds = %bb.az
  br i1 %i.et, label %_ZNK6aiMesh15HasVertexColorsEj.exit.6, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.6

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.6:   ; preds = %bb.ba
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ia, i8 0, i64 %i.fb, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.6

_ZNK6aiMesh15HasVertexColorsEj.exit.6:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.6, %bb.ba
  %i.ib = getelementptr inbounds nuw i8, ptr %i.bv, i64 160
  store ptr %i.ia, ptr %i.ib, align 8
  %i.ic = load ptr, ptr %i.be, align 8
  %.not.i162.not.7 = icmp eq ptr %i.ic, null
  br i1 %.not.i162.not.7, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split, label %bb.bb

bb.bb:                                            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.6
  %i.id = load i32, ptr %i.bf, align 4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.bv, i64 204
  store i32 %i.id, ptr %i.ie, align 4
  %i.if = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ew) #17
          to label %bb.bc unwind label %bb.am     ; 2 uses

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.et, label %_ZNK6aiMesh15HasVertexColorsEj.exit.7, label %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.7

_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.7:   ; preds = %bb.bc
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.if, i8 0, i64 %i.fb, i1 false)
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.7

_ZNK6aiMesh15HasVertexColorsEj.exit.7:            ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.loopexit.7, %bb.bc
  %i.ig = getelementptr inbounds nuw i8, ptr %i.bv, i64 168
  store ptr %i.if, ptr %i.ig, align 8
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit.thread.split

bb.bd:                                            ; preds = %.preheader313, %._crit_edge342
  %indvars.iv374 = phi i64 [ %i.gf, %.preheader313 ], [ %indvars.iv.next375, %._crit_edge342 ] ; 6 uses
  %i.ih = load i32, ptr %i.n, align 8
  %i.ii = zext i32 %i.ih to i64
  %i.ij = icmp samesign ult i64 %indvars.iv374, %i.ii
  br i1 %i.ij, label %bb.be, label %.thread

bb.be:                                            ; preds = %bb.bd
  %i.ik = load ptr, ptr %i.af, align 8
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.ik, i64 %indvars.iv374 ; 2 uses
  %i.im = load i32, ptr %i.il, align 8            ; 5 uses
  %.not352 = icmp eq i32 %i.im, 0                 ; 2 uses
  br i1 %.not352, label %._crit_edge, label %.lr.ph333

.lr.ph333:                                        ; preds = %bb.be
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.io = load ptr, ptr %i.in, align 8            ; 5 uses
  %i.ip = load ptr, ptr %4, align 8               ; 5 uses
  %wide.trip.count = zext i32 %i.im to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.iq = icmp ult i32 %i.im, 4
  br i1 %i.iq, label %.epil.preheader, label %.lr.ph333.new

.lr.ph333.new:                                    ; preds = %.lr.ph333
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.bg

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.bg
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph333
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph333 ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0129331.epil.init = phi i32 [ 0, %.lr.ph333 ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod501 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod501)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.bf ] ; 2 uses
  %.0129331.epil = phi i32 [ %.0129331.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.bf ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bf ]
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv.epil
  %i.is = load i32, ptr %i.ir, align 4
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4
  %i.iw = icmp eq i32 %i.iv, -1
  %i.ix = zext i1 %i.iw to i32
  %spec.select.epil = add i32 %.0129331.epil, %i.ix ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.bf, !llvm.loop !34

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.bf, %bb.be
  %.0129.lcssa = phi i32 [ 0, %bb.be ], [ %spec.select.3, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select.epil, %bb.bf ]
  %i.iy = load i32, ptr %i.bw, align 4
  %i.iz = add i32 %i.iy, %.0129.lcssa
  %i.ja = icmp ugt i32 %i.iz, %.fr
  br i1 %i.ja, label %.thread, label %bb.bh

bb.bg:                                            ; preds = %bb.bg, %.lr.ph333.new
  %indvars.iv = phi i64 [ 0, %.lr.ph333.new ], [ %indvars.iv.next.3, %bb.bg ] ; 5 uses
  %.0129331 = phi i32 [ 0, %.lr.ph333.new ], [ %spec.select.3, %bb.bg ]
  %niter = phi i64 [ 0, %.lr.ph333.new ], [ %niter.next.3, %bb.bg ]
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv
  %i.jc = load i32, ptr %i.jb, align 4
  %i.jd = zext i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4
  %i.jg = icmp eq i32 %i.jf, -1
  %i.jh = zext i1 %i.jg to i32
  %spec.select = add i32 %.0129331, %i.jh
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jk = load i32, ptr %i.jj, align 4
  %i.jl = zext i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 4
  %i.jo = icmp eq i32 %i.jn, -1
  %i.jp = zext i1 %i.jo to i32
  %spec.select.1 = add i32 %spec.select, %i.jp
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load i32, ptr %i.jr, align 4
  %i.jt = zext i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4
  %i.jw = icmp eq i32 %i.jv, -1
  %i.jx = zext i1 %i.jw to i32
  %spec.select.2 = add i32 %spec.select.1, %i.jx
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 12
  %i.ka = load i32, ptr %i.jz, align 4
  %i.kb = zext i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4
  %i.ke = icmp eq i32 %i.kd, -1
  %i.kf = zext i1 %i.ke to i32
  %spec.select.3 = add i32 %spec.select.2, %i.kf  ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.bg, !llvm.loop !35

bb.bh:                                            ; preds = %._crit_edge
  %i.kg = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.kh = load ptr, ptr %i.ah, align 8
  %.not.i164 = icmp eq ptr %i.kg, %i.kh
  br i1 %.not.i164, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.kg, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store ptr null, ptr %i.ki, align 8
  %i.kj = load ptr, ptr %i.ag, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16 ; 2 uses
  store ptr %i.kk, ptr %i.ag, align 8
  br label %_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

bb.bj:                                            ; preds = %bb.bh
  invoke void @_ZNSt6vectorI6aiFaceSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.kg)
          to label %._ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit_crit_edge unwind label %bb.bl

._ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit_crit_edge: ; preds = %bb.bj
  %.pre = load ptr, ptr %i.ag, align 8
  br label %_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit: ; preds = %._ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit_crit_edge, %bb.bi
  %i.kl = phi ptr [ %.pre, %._ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit_crit_edge ], [ %i.kk, %bb.bi ] ; 2 uses
  %i.km = getelementptr inbounds i8, ptr %i.kl, i64 -16 ; 2 uses
  store i32 %i.im, ptr %i.km, align 8
  %i.kn = zext i32 %i.im to i64                   ; 2 uses
  %i.ko = shl nuw nsw i64 %i.kn, 2
  %i.kp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ko) #17
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit
  %i.kq = getelementptr inbounds i8, ptr %i.kl, i64 -8 ; 3 uses
  store ptr %i.kp, ptr %i.kq, align 8
  %i.kr = load i32, ptr %i.km, align 8
  %i.ks = load i32, ptr %i.bv, align 8
  %switch.tableidx = add i32 %i.kr, -1            ; 2 uses
  %i.kt = icmp ult i32 %switch.tableidx, 3
  br i1 %i.kt, label %switch.lookup, label %bb.bn

bb.bl:                                            ; preds = %bb.bj
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.bm:                                            ; preds = %_ZNSt6vectorI6aiFaceSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

switch.lookup:                                    ; preds = %bb.bk
  %i.kw = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6Assimp30SplitLargeMeshesProcess_Vertex9SplitMeshEjP6aiMeshRSt6vectorISt4pairIS2_jESaIS5_EE, i64 %i.kw
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bk, %switch.lookup
  %.sink491 = phi i32 [ %switch.load, %switch.lookup ], [ 8, %bb.bk ]
  %i.kx = or i32 %i.ks, %.sink491
  store i32 %i.kx, ptr %i.bv, align 8
  br i1 %.not352, label %._crit_edge342, label %.lr.ph341

._crit_edge342:                                   ; preds = %bb.cs, %bb.bn
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 2 uses
  %i.ky = load i32, ptr %i.bw, align 4
  %i.kz = icmp eq i32 %i.ky, %.fr
  br i1 %i.kz, label %.thread, label %bb.bd

.lr.ph341:                                        ; preds = %bb.bn, %bb.cs
  %indvars.iv369 = phi i64 [ %indvars.iv.next370, %bb.cs ], [ 0, %bb.bn ] ; 4 uses
  %i.la = load ptr, ptr %i.af, align 8
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr %i.la, i64 %indvars.iv374
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv369
  %i.lf = load i32, ptr %i.le, align 4
  %i.lg = zext i32 %i.lf to i64                   ; 22 uses
  %i.lh = load ptr, ptr %4, align 8
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.lg
  %i.lj = load i32, ptr %i.li, align 4            ; 2 uses
  %.not147 = icmp eq i32 %i.lj, -1
  br i1 %.not147, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph341
  %i.lk = load ptr, ptr %i.kq, align 8
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %indvars.iv369
  store i32 %i.lj, ptr %i.ll, align 4
  br label %bb.cs

bb.bp:                                            ; preds = %.lr.ph341
  %i.lm = load ptr, ptr %i.x, align 8
  %i.ln = getelementptr inbounds nuw [12 x i8], ptr %i.lm, i64 %i.lg
  %i.lo = load ptr, ptr %i.by, align 8
  %i.lp = load i32, ptr %i.bw, align 4
  %i.lq = zext i32 %i.lp to i64
  %i.lr = getelementptr inbounds nuw [12 x i8], ptr %i.lo, i64 %i.lq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.lr, ptr noundef nonnull align 4 dereferenceable(12) %i.ln, i64 12, i1 false)
  %i.ls = load ptr, ptr %i.y, align 8             ; 2 uses
  %.not.i166 = icmp ne ptr %i.ls, null
  %i.lt = load i32, ptr %i.b, align 4             ; 2 uses
  %i.lu = icmp ne i32 %i.lt, 0
  %i.lv = select i1 %.not.i166, i1 %i.lu, i1 false
  br i1 %i.lv, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.lw = getelementptr inbounds nuw [12 x i8], ptr %i.ls, i64 %i.lg
  %i.lx = load ptr, ptr %i.gc, align 8
  %i.ly = load i32, ptr %i.bw, align 4
  %i.lz = zext i32 %i.ly to i64
  %i.ma = getelementptr inbounds nuw [12 x i8], ptr %i.lx, i64 %i.lz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ma, ptr noundef nonnull align 4 dereferenceable(12) %i.lw, i64 12, i1 false)
  %.pre386.pre = load i32, ptr %i.b, align 4
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pre386 = phi i32 [ %.pre386.pre, %bb.bq ], [ %i.lt, %bb.bp ] ; 2 uses
  %i.mb = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i167 = icmp eq ptr %i.mb, null
  %i.mc = load ptr, ptr %i.aa, align 8
  %.not1.i168 = icmp eq ptr %i.mc, null
  %or.cond.i169 = select i1 %.not.i167, i1 true, i1 %.not1.i168
  br i1 %or.cond.i169, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170.thread, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170:  ; preds = %bb.br
  %.not302 = icmp eq i32 %.pre386, 0
  br i1 %.not302, label %_ZNK6aiMesh15HasVertexColorsEj.exit176.7.thread, label %bb.bs

bb.bs:                                            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170
  %i.md = getelementptr inbounds nuw [12 x i8], ptr %i.mb, i64 %i.lg
  %i.me = load ptr, ptr %i.gd, align 8
  %i.mf = load i32, ptr %i.bw, align 4
  %i.mg = zext i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw [12 x i8], ptr %i.me, i64 %i.mg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mh, ptr noundef nonnull align 4 dereferenceable(12) %i.md, i64 12, i1 false)
  %i.mi = load ptr, ptr %i.aa, align 8
  %i.mj = getelementptr inbounds nuw [12 x i8], ptr %i.mi, i64 %i.lg
  %i.mk = load ptr, ptr %i.ge, align 8
  %i.ml = load i32, ptr %i.bw, align 4
  %i.mm = zext i32 %i.ml to i64
  %i.mn = getelementptr inbounds nuw [12 x i8], ptr %i.mk, i64 %i.mm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mn, ptr noundef nonnull align 4 dereferenceable(12) %i.mj, i64 12, i1 false)
  %.pre385 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170.thread

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170.thread: ; preds = %bb.br, %bb.bs
  %i.mo = phi i32 [ %.pre386, %bb.br ], [ %.pre385, %bb.bs ] ; 2 uses
  %i.mp = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.i171 = icmp ne ptr %i.mp, null
  %i.mq = icmp ne i32 %i.mo, 0
  %i.mr = select i1 %.not.i171, i1 %i.mq, i1 false
  br i1 %i.mr, label %bb.bt, label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.1

bb.bt:                                            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170.thread
  %i.ms = getelementptr inbounds nuw [12 x i8], ptr %i.mp, i64 %i.lg
  %i.mt = load ptr, ptr %i.ga, align 8
  %i.mu = load i32, ptr %i.bw, align 4
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [12 x i8], ptr %i.mt, i64 %i.mv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.mw, ptr noundef nonnull align 4 dereferenceable(12) %i.ms, i64 12, i1 false)
  %.pre387 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.1

_ZNK6aiMesh16HasTextureCoordsEj.exit173.1:        ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170.thread, %bb.bt
  %i.mx = phi i32 [ %i.mo, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit170.thread ], [ %.pre387, %bb.bt ] ; 2 uses
  %i.my = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not.i171.1 = icmp ne ptr %i.my, null
  %i.mz = icmp ne i32 %i.mx, 0
  %i.na = select i1 %.not.i171.1, i1 %i.mz, i1 false
  br i1 %i.na, label %bb.bu, label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.2

bb.bu:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit173.1
  %i.nb = getelementptr inbounds nuw [12 x i8], ptr %i.my, i64 %i.lg
  %i.nc = load ptr, ptr %i.gg, align 8
  %i.nd = load i32, ptr %i.bw, align 4
  %i.ne = zext i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [12 x i8], ptr %i.nc, i64 %i.ne
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.nf, ptr noundef nonnull align 4 dereferenceable(12) %i.nb, i64 12, i1 false)
  %.pre388 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.2

_ZNK6aiMesh16HasTextureCoordsEj.exit173.2:        ; preds = %bb.bu, %_ZNK6aiMesh16HasTextureCoordsEj.exit173.1
  %i.ng = phi i32 [ %.pre388, %bb.bu ], [ %i.mx, %_ZNK6aiMesh16HasTextureCoordsEj.exit173.1 ] ; 2 uses
  %i.nh = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not.i171.2 = icmp ne ptr %i.nh, null
  %i.ni = icmp ne i32 %i.ng, 0
  %i.nj = select i1 %.not.i171.2, i1 %i.ni, i1 false
  br i1 %i.nj, label %bb.bv, label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.3

bb.bv:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit173.2
  %i.nk = getelementptr inbounds nuw [12 x i8], ptr %i.nh, i64 %i.lg
  %i.nl = load ptr, ptr %i.gh, align 8
  %i.nm = load i32, ptr %i.bw, align 4
  %i.nn = zext i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw [12 x i8], ptr %i.nl, i64 %i.nn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.no, ptr noundef nonnull align 4 dereferenceable(12) %i.nk, i64 12, i1 false)
  %.pre389 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.3

_ZNK6aiMesh16HasTextureCoordsEj.exit173.3:        ; preds = %bb.bv, %_ZNK6aiMesh16HasTextureCoordsEj.exit173.2
  %i.np = phi i32 [ %.pre389, %bb.bv ], [ %i.ng, %_ZNK6aiMesh16HasTextureCoordsEj.exit173.2 ] ; 2 uses
  %i.nq = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not.i171.3 = icmp ne ptr %i.nq, null
  %i.nr = icmp ne i32 %i.np, 0
  %i.ns = select i1 %.not.i171.3, i1 %i.nr, i1 false
  br i1 %i.ns, label %bb.bw, label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.4

bb.bw:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit173.3
  %i.nt = getelementptr inbounds nuw [12 x i8], ptr %i.nq, i64 %i.lg
  %i.nu = load ptr, ptr %i.gi, align 8
  %i.nv = load i32, ptr %i.bw, align 4
  %i.nw = zext i32 %i.nv to i64
  %i.nx = getelementptr inbounds nuw [12 x i8], ptr %i.nu, i64 %i.nw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.nx, ptr noundef nonnull align 4 dereferenceable(12) %i.nt, i64 12, i1 false)
  %.pre390 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.4

_ZNK6aiMesh16HasTextureCoordsEj.exit173.4:        ; preds = %bb.bw, %_ZNK6aiMesh16HasTextureCoordsEj.exit173.3
  %i.ny = phi i32 [ %.pre390, %bb.bw ], [ %i.np, %_ZNK6aiMesh16HasTextureCoordsEj.exit173.3 ] ; 2 uses
  %i.nz = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not.i171.4 = icmp ne ptr %i.nz, null
  %i.oa = icmp ne i32 %i.ny, 0
  %i.ob = select i1 %.not.i171.4, i1 %i.oa, i1 false
  br i1 %i.ob, label %bb.bx, label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.5

bb.bx:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit173.4
  %i.oc = getelementptr inbounds nuw [12 x i8], ptr %i.nz, i64 %i.lg
  %i.od = load ptr, ptr %i.gj, align 8
  %i.oe = load i32, ptr %i.bw, align 4
  %i.of = zext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw [12 x i8], ptr %i.od, i64 %i.of
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.og, ptr noundef nonnull align 4 dereferenceable(12) %i.oc, i64 12, i1 false)
  %.pre391 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.5

_ZNK6aiMesh16HasTextureCoordsEj.exit173.5:        ; preds = %bb.bx, %_ZNK6aiMesh16HasTextureCoordsEj.exit173.4
  %i.oh = phi i32 [ %.pre391, %bb.bx ], [ %i.ny, %_ZNK6aiMesh16HasTextureCoordsEj.exit173.4 ] ; 2 uses
  %i.oi = load ptr, ptr %i.bk, align 8            ; 2 uses
  %.not.i171.5 = icmp ne ptr %i.oi, null
  %i.oj = icmp ne i32 %i.oh, 0
  %i.ok = select i1 %.not.i171.5, i1 %i.oj, i1 false
  br i1 %i.ok, label %bb.by, label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.6

bb.by:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit173.5
  %i.ol = getelementptr inbounds nuw [12 x i8], ptr %i.oi, i64 %i.lg
  %i.om = load ptr, ptr %i.gk, align 8
  %i.on = load i32, ptr %i.bw, align 4
  %i.oo = zext i32 %i.on to i64
  %i.op = getelementptr inbounds nuw [12 x i8], ptr %i.om, i64 %i.oo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.op, ptr noundef nonnull align 4 dereferenceable(12) %i.ol, i64 12, i1 false)
  %.pre392 = load i32, ptr %i.b, align 4
  br label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.6

_ZNK6aiMesh16HasTextureCoordsEj.exit173.6:        ; preds = %bb.by, %_ZNK6aiMesh16HasTextureCoordsEj.exit173.5
  %i.oq = phi i32 [ %.pre392, %bb.by ], [ %i.oh, %_ZNK6aiMesh16HasTextureCoordsEj.exit173.5 ] ; 2 uses
  %i.or = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not.i171.6 = icmp ne ptr %i.or, null
  %i.os = icmp ne i32 %i.oq, 0
  %i.ot = select i1 %.not.i171.6, i1 %i.os, i1 false
  br i1 %i.ot, label %bb.bz, label %_ZNK6aiMesh16HasTextureCoordsEj.exit173.7

bb.bz:                                            ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit173.6
  %i.ou = getelementptr inbounds nuw [12 x i8], ptr %i.or, i64 %i.lg
  %i.ov = load ptr, ptr %i.gl, align 8
  %i.ow = load i32, ptr %i.bw, align 4
  %i.ox = zext i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw [12 x i8], ptr %i.ov, i64 %i.ox
end_hunk_1
