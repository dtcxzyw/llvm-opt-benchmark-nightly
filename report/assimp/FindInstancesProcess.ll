inline.NumInlined: 330
inline.NumDeleted: 230
begin_hunk_0_@_ZN6Assimp20FindInstancesProcess7ExecuteEP7aiScene:bb.a
bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = shl nuw nsw i64 %i.e, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #21 ; 4 uses
  %i.h = shl nuw nsw i64 %i.e, 2
  %i.i = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #21
          to label %.lr.ph322 unwind label %bb.c  ; 6 uses

.lr.ph322:                                        ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %i.j, align 8
  br label %bb.d

._crit_edge323:                                   ; preds = %bb.bo
  %.not161 = icmp eq i32 %.1147, %i.rj
  br i1 %.not161, label %bb.bz, label %.preheader

.preheader:                                       ; preds = %._crit_edge323
  %.not336 = icmp eq i32 %.1147, 0
  br i1 %.not336, label %._crit_edge329, label %.lr.ph328

.lr.ph328:                                        ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.bp

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit249

bb.d:                                             ; preds = %.lr.ph322, %bb.bo
  %i.n = phi ptr [ %.pre, %.lr.ph322 ], [ %i.re, %bb.bo ]
  %indvars.iv369 = phi i64 [ 0, %.lr.ph322 ], [ %indvars.iv.next370, %bb.bo ] ; 8 uses
  %indvars.iv364 = phi i32 [ -1, %.lr.ph322 ], [ %indvars.iv.next365, %bb.bo ] ; 2 uses
  %.0146321 = phi i32 [ 0, %.lr.ph322 ], [ %.1147, %bb.bo ] ; 3 uses
  %i.o = zext i32 %indvars.iv364 to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv369
  %i.q = load ptr, ptr %i.p, align 8              ; 25 uses
  %i.r = invoke noundef i32 @_ZN6Assimp20GetMeshVFormatUniqueEPK6aiMesh(ptr noundef %i.q)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw i64 %i.s, 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 216 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = shl i32 %i.v, 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = xor i32 %i.w, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = shl i32 %i.ab, 4
  %i.ad = xor i32 %i.z, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 232 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = shl i32 %i.af, 15
  %i.ah = xor i32 %i.ad, %i.ag
  %i.ai = load i32, ptr %i.q, align 8
  %i.aj = shl i32 %i.ai, 28
  %i.ak = xor i32 %i.ah, %i.aj
  %i.al = zext i32 %i.ak to i64
  %i.am = or disjoint i64 %i.t, %i.al
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv369 ; 2 uses
  store i64 %i.am, ptr %i.an, align 8
  %i.ao = invoke noundef float @_ZN6Assimp22ComputePositionEpsilonEPK6aiMesh(ptr noundef nonnull %i.q)
          to label %bb.f unwind label %bb.h       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ap = fmul float %i.ao, %i.ao                 ; 4 uses
  %i.aq = trunc nuw i64 %indvars.iv369 to i32
  %.0155316 = add i32 %i.aq, -1
  %i.ar = icmp sgt i32 %.0155316, -1
  br i1 %i.ar, label %.lr.ph319, label %.loopexit

.lr.ph319:                                        ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 208
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 168
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit246

bb.h:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit246

bb.i:                                             ; preds = %.lr.ph319, %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273
  %indvars.iv366 = phi i64 [ %i.o, %.lr.ph319 ], [ %indvars.iv.next367, %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273 ] ; 5 uses
  %i.bi = load i64, ptr %i.an, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv366
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = icmp eq i64 %i.bi, %i.bk
  br i1 %i.bl, label %bb.j, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.j:                                             ; preds = %bb.i
  %i.bm = load ptr, ptr %i.j, align 8
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv366
  %i.bo = load ptr, ptr %i.bn, align 8            ; 28 uses
  %.not163 = icmp eq ptr %i.bo, null
  br i1 %.not163, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 216
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = load i32, ptr %i.u, align 8
  %.not164 = icmp eq i32 %i.bq, %i.br
  br i1 %.not164, label %bb.l, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = load i32, ptr %i.aa, align 8
  %.not165 = icmp eq i32 %i.bt, %i.bu
  br i1 %.not165, label %bb.m, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4            ; 10 uses
  %i.bx = load i32, ptr %i.x, align 4
  %.not166 = icmp eq i32 %i.bw, %i.bx
  br i1 %.not166, label %bb.n, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 232
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = load i32, ptr %i.ae, align 8
  %.not167 = icmp eq i32 %i.bz, %i.ca
  br i1 %.not167, label %bb.o, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.o:                                             ; preds = %bb.n
  %i.cb = load i32, ptr %i.bo, align 8
  %i.cc = load i32, ptr %i.q, align 8
  %.not168 = icmp eq i32 %i.cb, %i.cc
  br i1 %.not168, label %bb.p, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8            ; 3 uses
  %.not.i = icmp ne ptr %i.ce, null
  %i.cf = icmp ne i32 %i.bw, 0                    ; 3 uses
  %i.cg = and i1 %i.cf, %.not.i
  br i1 %i.cg, label %bb.q, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.ch = load ptr, ptr %i.as, align 8
  %i.ci = zext i32 %i.bw to i64
  %.idx.i = mul nuw nsw i64 %i.ci, 12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.r
  %.01015.i = phi ptr [ %i.db, %bb.r ], [ %i.ce, %bb.q ] ; 4 uses
  %.01214.i = phi ptr [ %i.dc, %bb.r ], [ %i.ch, %bb.q ] ; 4 uses
  %i.ck = load float, ptr %.01015.i, align 4
  %i.cl = load float, ptr %.01214.i, align 4
  %i.cm = fsub float %i.ck, %i.cl                 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.01015.i, i64 4
  %i.co = load float, ptr %i.cn, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.01214.i, i64 4
  %i.cq = load float, ptr %i.cp, align 4
  %i.cr = fsub float %i.co, %i.cq                 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.01015.i, i64 8
  %i.ct = load float, ptr %i.cs, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %.01214.i, i64 8
  %i.cv = load float, ptr %i.cu, align 4
  %i.cw = fsub float %i.ct, %i.cv                 ; 2 uses
  %i.cx = fmul float %i.cr, %i.cr
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cm, float %i.cx)
  %i.cz = tail call noundef float @llvm.fmuladd.f32(float %i.cw, float %i.cw, float %i.cy)
  %i.da = fcmp ult float %i.cz, %i.ap
  br i1 %i.da, label %bb.r, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.r:                                             ; preds = %.lr.ph.i
  %i.db = getelementptr inbounds nuw i8, ptr %.01015.i, i64 12 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.01214.i, i64 12
  %.not.i183 = icmp eq ptr %i.db, %i.cj
  br i1 %.not.i183, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread, label %.lr.ph.i, !llvm.loop !8

_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread: ; preds = %bb.r, %bb.p
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.de = load ptr, ptr %i.dd, align 8            ; 3 uses
  %.not.i184 = icmp ne ptr %i.de, null
  %i.df = and i1 %i.cf, %.not.i184
  br i1 %i.df, label %bb.s, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit192.thread.a

bb.s:                                             ; preds = %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread
  %i.dg = load ptr, ptr %i.at, align 8
  %i.dh = zext i32 %i.bw to i64
  %.idx.i185 = mul nuw nsw i64 %i.dh, 12
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx.i185
  br label %.lr.ph.i187

.lr.ph.i187:                                      ; preds = %bb.s, %bb.t
  %.01015.i188 = phi ptr [ %i.ea, %bb.t ], [ %i.de, %bb.s ] ; 4 uses
  %.01214.i189 = phi ptr [ %i.eb, %bb.t ], [ %i.dg, %bb.s ] ; 4 uses
  %i.dj = load float, ptr %.01015.i188, align 4
  %i.dk = load float, ptr %.01214.i189, align 4
  %i.dl = fsub float %i.dj, %i.dk                 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.01015.i188, i64 4
  %i.dn = load float, ptr %i.dm, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %.01214.i189, i64 4
  %i.dp = load float, ptr %i.do, align 4
  %i.dq = fsub float %i.dn, %i.dp                 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.01015.i188, i64 8
  %i.ds = load float, ptr %i.dr, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %.01214.i189, i64 8
  %i.du = load float, ptr %i.dt, align 4
  %i.dv = fsub float %i.ds, %i.du                 ; 2 uses
  %i.dw = fmul float %i.dq, %i.dq
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dl, float %i.dl, float %i.dw)
  %i.dy = tail call noundef float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float %i.dx)
  %i.dz = fcmp ult float %i.dy, %i.ap
  br i1 %i.dz, label %bb.t, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.t:                                             ; preds = %.lr.ph.i187
  %i.ea = getelementptr inbounds nuw i8, ptr %.01015.i188, i64 12 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.01214.i189, i64 12
  %.not.i191 = icmp eq ptr %i.ea, %i.di
  br i1 %.not.i191, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit192.thread.a, label %.lr.ph.i187, !llvm.loop !8

_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit192.thread.a: ; preds = %bb.t, %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread
  %2 = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %3 = load ptr, ptr %2, align 8                  ; 3 uses
  %.not.i193 = icmp ne ptr %3, null
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.ed = load ptr, ptr %i.ec, align 8            ; 3 uses
  %.not1.i = icmp ne ptr %i.ed, null
  %or.cond.i.not280 = select i1 %.not.i193, i1 %.not1.i, i1 false
  %brmerge.not = and i1 %i.cf, %or.cond.i.not280
  br i1 %brmerge.not, label %bb.u, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread

bb.u:                                             ; preds = %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit192.thread.a
  %i.ee = load ptr, ptr %i.au, align 8
  %i.ef = zext i32 %i.bw to i64
  %.idx.i194 = mul nuw nsw i64 %i.ef, 12          ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.i194
  br label %.lr.ph.i196

.lr.ph.i196:                                      ; preds = %bb.u, %bb.v
  %.01015.i197 = phi ptr [ %i.ey, %bb.v ], [ %3, %bb.u ] ; 4 uses
  %.01214.i198 = phi ptr [ %i.ez, %bb.v ], [ %i.ee, %bb.u ] ; 4 uses
  %i.eh = load float, ptr %.01015.i197, align 4
  %i.ei = load float, ptr %.01214.i198, align 4
  %i.ej = fsub float %i.eh, %i.ei                 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.01015.i197, i64 4
  %i.el = load float, ptr %i.ek, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %.01214.i198, i64 4
  %i.en = load float, ptr %i.em, align 4
  %i.eo = fsub float %i.el, %i.en                 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.01015.i197, i64 8
  %i.eq = load float, ptr %i.ep, align 4
  %i.er = getelementptr inbounds nuw i8, ptr %.01214.i198, i64 8
  %i.es = load float, ptr %i.er, align 4
  %i.et = fsub float %i.eq, %i.es                 ; 2 uses
  %i.eu = fmul float %i.eo, %i.eo
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.ej, float %i.eu)
  %i.ew = tail call noundef float @llvm.fmuladd.f32(float %i.et, float %i.et, float %i.ev)
  %i.ex = fcmp ult float %i.ew, %i.ap
  br i1 %i.ex, label %bb.v, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.v:                                             ; preds = %.lr.ph.i196
  %i.ey = getelementptr inbounds nuw i8, ptr %.01015.i197, i64 12 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.01214.i198, i64 12
  %.not.i200 = icmp eq ptr %i.ey, %i.eg
  br i1 %.not.i200, label %bb.w, label %.lr.ph.i196, !llvm.loop !8

bb.w:                                             ; preds = %bb.v
  %i.fa = load ptr, ptr %i.av, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.idx.i194
  br label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %bb.w, %bb.x
  %.01015.i205 = phi ptr [ %i.ft, %bb.x ], [ %i.ed, %bb.w ] ; 4 uses
  %.01214.i206 = phi ptr [ %i.fu, %bb.x ], [ %i.fa, %bb.w ] ; 4 uses
  %i.fc = load float, ptr %.01015.i205, align 4
  %i.fd = load float, ptr %.01214.i206, align 4
  %i.fe = fsub float %i.fc, %i.fd                 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.01015.i205, i64 4
  %i.fg = load float, ptr %i.ff, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %.01214.i206, i64 4
  %i.fi = load float, ptr %i.fh, align 4
  %i.fj = fsub float %i.fg, %i.fi                 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.01015.i205, i64 8
  %i.fl = load float, ptr %i.fk, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %.01214.i206, i64 8
  %i.fn = load float, ptr %i.fm, align 4
  %i.fo = fsub float %i.fl, %i.fn                 ; 2 uses
  %i.fp = fmul float %i.fj, %i.fj
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fe, float %i.fe, float %i.fp)
  %i.fr = tail call noundef float @llvm.fmuladd.f32(float %i.fo, float %i.fo, float %i.fq)
  %i.fs = fcmp ult float %i.fr, %i.ap
  br i1 %i.fs, label %bb.x, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit.thread273

bb.x:                                             ; preds = %.lr.ph.i204
  %i.ft = getelementptr inbounds nuw i8, ptr %.01015.i205, i64 12 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.01214.i206, i64 12
  %.not.i208 = icmp eq ptr %i.ft, %i.fb
  br i1 %.not.i208, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread, label %.lr.ph.i204, !llvm.loop !8

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread: ; preds = %bb.x, %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit192.thread.a
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bo, i64 112 ; 2 uses
  %i.fw = load <8 x ptr>, ptr %i.fv, align 8
  %i.fx = icmp ne <8 x ptr> %i.fw, splat (ptr null)
  %i.fy = bitcast <8 x i1> %i.fx to i8            ; 3 uses
  %i.fz = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.fy) ; 7 uses
  %i.ga = zext nneg i8 %i.fz to i32
  %.not331 = icmp eq i8 %i.fy, 0
  br i1 %.not331, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %i.gb = zext i32 %i.bw to i64
  %.idx.i211 = mul nuw nsw i64 %i.gb, 12          ; 8 uses
  %.not13.i212 = icmp eq i32 %i.bw, 0             ; 8 uses
  %i.gc = load ptr, ptr %i.fv, align 8            ; 3 uses
  %.not169 = icmp eq ptr %i.gc, null
  br i1 %.not169, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218.thread, label %bb.y

bb.y:                                             ; preds = %.lr.ph
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.idx.i211
  br i1 %.not13.i212, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218.thread, label %.lr.ph.i213.preheader

.lr.ph.i213.preheader:                            ; preds = %bb.y
  %i.ge = load ptr, ptr %i.aw, align 8
  br label %.lr.ph.i213

.lr.ph.i213:                                      ; preds = %.lr.ph.i213.preheader, %bb.z
  %.01015.i214 = phi ptr [ %i.gw, %bb.z ], [ %i.gc, %.lr.ph.i213.preheader ] ; 4 uses
  %.01214.i215 = phi ptr [ %i.gx, %bb.z ], [ %i.ge, %.lr.ph.i213.preheader ] ; 4 uses
  %i.gf = load float, ptr %.01015.i214, align 4
  %i.gg = load float, ptr %.01214.i215, align 4
  %i.gh = fsub float %i.gf, %i.gg                 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.01015.i214, i64 4
  %i.gj = load float, ptr %i.gi, align 4
  %i.gk = getelementptr inbounds nuw i8, ptr %.01214.i215, i64 4
  %i.gl = load float, ptr %i.gk, align 4
  %i.gm = fsub float %i.gj, %i.gl                 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.01015.i214, i64 8
  %i.go = load float, ptr %i.gn, align 4
  %i.gp = getelementptr inbounds nuw i8, ptr %.01214.i215, i64 8
  %i.gq = load float, ptr %i.gp, align 4
  %i.gr = fsub float %i.go, %i.gq                 ; 2 uses
  %i.gs = fmul float %i.gm, %i.gm
  %i.gt = tail call float @llvm.fmuladd.f32(float %i.gh, float %i.gh, float %i.gs)
  %i.gu = tail call noundef float @llvm.fmuladd.f32(float %i.gr, float %i.gr, float %i.gt)
  %i.gv = fcmp ult float %i.gu, 1.000000e-03
  br i1 %i.gv, label %bb.z, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218

bb.z:                                             ; preds = %.lr.ph.i213
  %i.gw = getelementptr inbounds nuw i8, ptr %.01015.i214, i64 12 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.01214.i215, i64 12
  %.not.i217 = icmp eq ptr %i.gw, %i.gd
  br i1 %.not.i217, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218.thread, label %.lr.ph.i213, !llvm.loop !8

_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218.thread: ; preds = %bb.z, %bb.y, %.lr.ph
  %i.gy = icmp samesign ugt i8 %i.fz, 1
  br i1 %i.gy, label %bb.aa, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218

bb.aa:                                            ; preds = %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218.thread
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bo, i64 120
  %i.ha = load ptr, ptr %i.gz, align 8            ; 3 uses
  %.not169.1 = icmp eq ptr %i.ha, null
  br i1 %.not169.1, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218.thread.1, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %.idx.i211
  br i1 %.not13.i212, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218.thread.1, label %.lr.ph.i213.preheader.1

.lr.ph.i213.preheader.1:                          ; preds = %bb.ab
  %i.hc = load ptr, ptr %i.az, align 8
  br label %.lr.ph.i213.1

.lr.ph.i213.1:                                    ; preds = %bb.ac, %.lr.ph.i213.preheader.1
  %.01015.i214.1 = phi ptr [ %i.hu, %bb.ac ], [ %i.ha, %.lr.ph.i213.preheader.1 ] ; 4 uses
  %.01214.i215.1 = phi ptr [ %i.hv, %bb.ac ], [ %i.hc, %.lr.ph.i213.preheader.1 ] ; 4 uses
  %i.hd = load float, ptr %.01015.i214.1, align 4
  %i.he = load float, ptr %.01214.i215.1, align 4
  %i.hf = fsub float %i.hd, %i.he                 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.01015.i214.1, i64 4
  %i.hh = load float, ptr %i.hg, align 4
  %i.hi = getelementptr inbounds nuw i8, ptr %.01214.i215.1, i64 4
  %i.hj = load float, ptr %i.hi, align 4
  %i.hk = fsub float %i.hh, %i.hj                 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.01015.i214.1, i64 8
  %i.hm = load float, ptr %i.hl, align 4
  %i.hn = getelementptr inbounds nuw i8, ptr %.01214.i215.1, i64 8
  %i.ho = load float, ptr %i.hn, align 4
  %i.hp = fsub float %i.hm, %i.ho                 ; 2 uses
  %i.hq = fmul float %i.hk, %i.hk
  %i.hr = tail call float @llvm.fmuladd.f32(float %i.hf, float %i.hf, float %i.hq)
  %i.hs = tail call noundef float @llvm.fmuladd.f32(float %i.hp, float %i.hp, float %i.hr)
  %i.ht = fcmp ult float %i.hs, 1.000000e-03
  br i1 %i.ht, label %bb.ac, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218

bb.ac:                                            ; preds = %.lr.ph.i213.1
  %i.hu = getelementptr inbounds nuw i8, ptr %.01015.i214.1, i64 12 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.01214.i215.1, i64 12
  %.not.i217.1 = icmp eq ptr %i.hu, %i.hb
  br i1 %.not.i217.1, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218.thread.1, label %.lr.ph.i213.1, !llvm.loop !8

_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218.thread.1: ; preds = %bb.ac, %bb.ab, %bb.aa
  %.not434.a = icmp eq i8 %i.fz, 2
  br i1 %.not434.a, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218, label %bb.ad

bb.ad:                                            ; preds = %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218.thread.1
  %i.hw = getelementptr inbounds nuw i8, ptr %i.bo, i64 128
  %i.hx = load ptr, ptr %i.hw, align 8            ; 3 uses
  %.not169.2 = icmp eq ptr %i.hx, null
  br i1 %.not169.2, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218.thread.2, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.idx.i211
  br i1 %.not13.i212, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218.thread.2, label %.lr.ph.i213.preheader.2

.lr.ph.i213.preheader.2:                          ; preds = %bb.ae
  %i.hz = load ptr, ptr %i.ba, align 8
  br label %.lr.ph.i213.2

.lr.ph.i213.2:                                    ; preds = %bb.af, %.lr.ph.i213.preheader.2
  %.01015.i214.2 = phi ptr [ %i.ir, %bb.af ], [ %i.hx, %.lr.ph.i213.preheader.2 ] ; 4 uses
  %.01214.i215.2 = phi ptr [ %i.is, %bb.af ], [ %i.hz, %.lr.ph.i213.preheader.2 ] ; 4 uses
  %i.ia = load float, ptr %.01015.i214.2, align 4
  %i.ib = load float, ptr %.01214.i215.2, align 4
  %i.ic = fsub float %i.ia, %i.ib                 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.01015.i214.2, i64 4
  %i.ie = load float, ptr %i.id, align 4
  %i.if = getelementptr inbounds nuw i8, ptr %.01214.i215.2, i64 4
  %i.ig = load float, ptr %i.if, align 4
  %i.ih = fsub float %i.ie, %i.ig                 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.01015.i214.2, i64 8
  %i.ij = load float, ptr %i.ii, align 4
  %i.ik = getelementptr inbounds nuw i8, ptr %.01214.i215.2, i64 8
  %i.il = load float, ptr %i.ik, align 4
  %i.im = fsub float %i.ij, %i.il                 ; 2 uses
  %i.in = fmul float %i.ih, %i.ih
  %i.io = tail call float @llvm.fmuladd.f32(float %i.ic, float %i.ic, float %i.in)
  %i.ip = tail call noundef float @llvm.fmuladd.f32(float %i.im, float %i.im, float %i.io)
  %i.iq = fcmp ult float %i.ip, 1.000000e-03
  br i1 %i.iq, label %bb.af, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218

bb.af:                                            ; preds = %.lr.ph.i213.2
  %i.ir = getelementptr inbounds nuw i8, ptr %.01015.i214.2, i64 12 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.01214.i215.2, i64 12
  %.not.i217.2 = icmp eq ptr %i.ir, %i.hy
  br i1 %.not.i217.2, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218.thread.2, label %.lr.ph.i213.2, !llvm.loop !8

_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218.thread.2: ; preds = %bb.af, %bb.ae, %bb.ad
  %i.it = icmp samesign ugt i8 %i.fz, 3
  br i1 %i.it, label %bb.ag, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218

bb.ag:                                            ; preds = %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218.thread.2
  %i.iu = getelementptr inbounds nuw i8, ptr %i.bo, i64 136
  %i.iv = load ptr, ptr %i.iu, align 8            ; 3 uses
  %.not169.3 = icmp eq ptr %i.iv, null
  br i1 %.not169.3, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218.thread.3, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %.idx.i211
  br i1 %.not13.i212, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218.thread.3, label %.lr.ph.i213.preheader.3

.lr.ph.i213.preheader.3:                          ; preds = %bb.ah
  %i.ix = load ptr, ptr %i.bb, align 8
  br label %.lr.ph.i213.3

.lr.ph.i213.3:                                    ; preds = %bb.ai, %.lr.ph.i213.preheader.3
  %.01015.i214.3 = phi ptr [ %i.jp, %bb.ai ], [ %i.iv, %.lr.ph.i213.preheader.3 ] ; 4 uses
  %.01214.i215.3 = phi ptr [ %i.jq, %bb.ai ], [ %i.ix, %.lr.ph.i213.preheader.3 ] ; 4 uses
  %i.iy = load float, ptr %.01015.i214.3, align 4
  %i.iz = load float, ptr %.01214.i215.3, align 4
  %i.ja = fsub float %i.iy, %i.iz                 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.01015.i214.3, i64 4
  %i.jc = load float, ptr %i.jb, align 4
  %i.jd = getelementptr inbounds nuw i8, ptr %.01214.i215.3, i64 4
  %i.je = load float, ptr %i.jd, align 4
  %i.jf = fsub float %i.jc, %i.je                 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.01015.i214.3, i64 8
  %i.jh = load float, ptr %i.jg, align 4
  %i.ji = getelementptr inbounds nuw i8, ptr %.01214.i215.3, i64 8
  %i.jj = load float, ptr %i.ji, align 4
  %i.jk = fsub float %i.jh, %i.jj                 ; 2 uses
  %i.jl = fmul float %i.jf, %i.jf
  %i.jm = tail call float @llvm.fmuladd.f32(float %i.ja, float %i.ja, float %i.jl)
  %i.jn = tail call noundef float @llvm.fmuladd.f32(float %i.jk, float %i.jk, float %i.jm)
  %i.jo = fcmp ult float %i.jn, 1.000000e-03
  br i1 %i.jo, label %bb.ai, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218

bb.ai:                                            ; preds = %.lr.ph.i213.3
  %i.jp = getelementptr inbounds nuw i8, ptr %.01015.i214.3, i64 12 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.01214.i215.3, i64 12
  %.not.i217.3 = icmp eq ptr %i.jp, %i.iw
  br i1 %.not.i217.3, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218.thread.3, label %.lr.ph.i213.3, !llvm.loop !8

_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218.thread.3: ; preds = %bb.ai, %bb.ah, %bb.ag
  %.not435.a = icmp eq i8 %i.fz, 4
  br i1 %.not435.a, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218, label %bb.aj

bb.aj:                                            ; preds = %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218.thread.3
  %i.jr = getelementptr inbounds nuw i8, ptr %i.bo, i64 144
  %i.js = load ptr, ptr %i.jr, align 8            ; 3 uses
  %.not169.4 = icmp eq ptr %i.js, null
  br i1 %.not169.4, label %_ZN6Assimp13CompareArraysEPK10aiVector3tIfES3_jf.exit218.thread.4, label %bb.ak
end_hunk_0
