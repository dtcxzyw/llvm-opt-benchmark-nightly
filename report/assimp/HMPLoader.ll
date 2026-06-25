inline.NumInlined: 334
inline.NumDeleted: 192
begin_hunk_0_@_ZN6Assimp11HMPImporter19InternReadFile_HMP7Ev:bb.a
  store ptr %i.h, ptr %i.j, align 8
  %i.k = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #21 ; 9 uses
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 224
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 1272
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 1312
  store ptr null, ptr %i.q, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.n, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.o, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.p, i8 0, i64 36, i1 false)
  %i.r = load ptr, ptr %i.e, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  store ptr %i.k, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.v = load i32, ptr %i.u, align 1
  %.fr = freeze i32 %i.v                          ; 3 uses
  %i.w = sext i32 %.fr to i64
  %i.x = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.w, i64 12) ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 1
  %i.z = extractvalue { i64, i1 } %i.x, 0         ; 3 uses
  %i.aa = select i1 %i.y, i64 -1, i64 %i.z        ; 3 uses
  %i.ab = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #21 ; 3 uses
  %i.ac = icmp eq i32 %.fr, 0
  br i1 %i.ac, label %.loopexit55.thread, label %.loopexit.loopexit

.loopexit55.thread:                               ; preds = %bb.a
  store ptr %i.ab, ptr %i.n, align 8
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #21
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.a
  %i.ae = add nsw i64 %i.z, -12                   ; 2 uses
  %i.af = urem i64 %i.ae, 12
  %i.ag = sub nuw nsw i64 %i.ae, %i.af
  %i.ah = add nsw i64 %i.ag, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ab, i8 0, i64 %i.ah, i1 false)
  store ptr %i.ab, ptr %i.n, align 8
  %i.ai = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #21 ; 2 uses
  %i.aj = add nsw i64 %i.z, -12                   ; 2 uses
  %i.ak = urem i64 %i.aj, 12
  %i.al = sub nuw nsw i64 %i.aj, %i.ak
  %i.am = add nsw i64 %i.al, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ai, i8 0, i64 %i.am, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit55.thread, %.loopexit.loopexit
  %i.an = phi ptr [ %i.ad, %.loopexit55.thread ], [ %i.ai, %.loopexit.loopexit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = sitofp i32 %.fr to float
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.ar = load float, ptr %i.aq, align 1          ; 2 uses
  %i.as = fdiv float %i.ap, %i.ar
  %i.at = fptoui float %i.as to i32               ; 6 uses
  %i.au = fptoui float %i.ar to i32               ; 12 uses
  call void @_ZN6Assimp11HMPImporter14CreateMaterialEPKhPS2_(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
  %i.av = load ptr, ptr %i.a, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 36 ; 2 uses
  %i.ax = zext i32 %i.at to i64
  %i.ay = zext i32 %i.au to i64
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = mul i64 %i.az, %i.ax
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ba
  tail call void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.bb)
  %.not67 = icmp eq i32 %i.at, 0                  ; 2 uses
  br i1 %.not67, label %._crit_edge66.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.loopexit
  %.not68 = icmp eq i32 %i.au, 0
  %i.bc = getelementptr i8, ptr %i.c, i64 36      ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  br i1 %.not68, label %._crit_edge66.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.be = load ptr, ptr %i.n, align 8
  %i.bf = load ptr, ptr %i.ao, align 8
  %i.bg = add i32 %i.au, -1
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = mul nuw nsw i64 %i.bh, 12
  %i.bj = add nuw nsw i64 %i.bi, 12               ; 2 uses
  %scevgep87 = getelementptr i8, ptr %i.c, i64 44 ; 2 uses
  %i.bk = shl nuw nsw i64 %i.bh, 2
  %i.bl = zext i32 %i.au to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.au, 5
  %n.mod.vf = and i64 %i.bl, 3                    ; 2 uses
  %i.bm = icmp eq i64 %n.mod.vf, 0
  %i.bn = select i1 %i.bm, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.bl, %i.bn               ; 4 uses
  %i.bo = trunc i64 %n.vec to i32
  %i.bp = shl nsw i64 %n.vec, 2
  %i.bq = mul nsw i64 %n.vec, 12                  ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.04565 = phi i32 [ %i.ef, %._crit_edge ], [ 0, %.preheader.preheader ] ; 2 uses
  %.04664 = phi ptr [ %i.fm, %._crit_edge ], [ %i.aw, %.preheader.preheader ] ; 10 uses
  %.04763 = phi ptr [ %i.fl, %._crit_edge ], [ %i.bf, %.preheader.preheader ] ; 11 uses
  %.04962 = phi ptr [ %i.fk, %._crit_edge ], [ %i.be, %.preheader.preheader ] ; 8 uses
  %i.br = uitofp i32 %.04565 to float             ; 2 uses
  br i1 %min.iters.check, label %_ZN10aiVector3tIfEdVEf.exit.i.preheader, label %vector.memcheck

_ZN10aiVector3tIfEdVEf.exit.i.preheader:          ; preds = %vector.body, %vector.memcheck, %.preheader
  %.04459.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %i.bo, %vector.body ]
  %.158.ph = phi ptr [ %.04664, %vector.memcheck ], [ %.04664, %.preheader ], [ %i.bt, %vector.body ]
  %.14857.ph = phi ptr [ %.04763, %vector.memcheck ], [ %.04763, %.preheader ], [ %i.bu, %vector.body ]
  %.15056.ph = phi ptr [ %.04962, %vector.memcheck ], [ %.04962, %.preheader ], [ %i.bv, %vector.body ]
  br label %_ZN10aiVector3tIfEdVEf.exit.i

vector.memcheck:                                  ; preds = %.preheader
  %scevgep = getelementptr i8, ptr %.04962, i64 %i.bj ; 3 uses
  %scevgep86 = getelementptr i8, ptr %.04763, i64 %i.bj ; 3 uses
  %i.bs = getelementptr i8, ptr %.04664, i64 %i.bk
  %scevgep88 = getelementptr i8, ptr %i.bs, i64 4 ; 2 uses
  %bound0 = icmp ult ptr %.04962, %scevgep86
  %bound1 = icmp ult ptr %.04763, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound089 = icmp ult ptr %.04962, %scevgep87
  %bound190 = icmp ult ptr %i.bc, %scevgep
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx = or i1 %found.conflict, %found.conflict91
  %bound092 = icmp ult ptr %.04962, %scevgep88
  %bound193 = icmp ult ptr %.04664, %scevgep
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx, %found.conflict94
  %bound096 = icmp ult ptr %.04763, %scevgep87
  %bound197 = icmp ult ptr %i.bc, %scevgep86
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx99 = or i1 %conflict.rdx95, %found.conflict98
  %bound0100 = icmp ult ptr %.04763, %scevgep88
  %bound1101 = icmp ult ptr %.04664, %scevgep86
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx103 = or i1 %conflict.rdx99, %found.conflict102
  br i1 %conflict.rdx103, label %_ZN10aiVector3tIfEdVEf.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bt = getelementptr i8, ptr %.04664, i64 %i.bp
  %i.bu = getelementptr i8, ptr %.04763, i64 %i.bq
  %i.bv = getelementptr i8, ptr %.04962, i64 %i.bq
  %i.bw = load float, ptr %i.bc, align 1, !alias.scope !13
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bw, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bx = load float, ptr %i.bd, align 1, !alias.scope !13
  %i.by = fmul float %i.bx, %i.br
  %broadcast.splatinsert114 = insertelement <4 x float> poison, float %i.by, i64 0
  %broadcast.splat115 = shufflevector <4 x float> %broadcast.splatinsert114, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bz = load float, ptr %i.bc, align 1, !alias.scope !13
  %broadcast.splatinsert112 = insertelement <4 x float> poison, float %i.bz, i64 0
  %broadcast.splat113 = shufflevector <4 x float> %broadcast.splatinsert112, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ca = shl i64 %index, 2                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.04664, i64 %i.ca ; 3 uses
  %i.cb = getelementptr i8, ptr %.04664, i64 %i.ca ; 2 uses
  %i.cc = getelementptr i8, ptr %.04664, i64 %i.ca ; 2 uses
  %i.cd = getelementptr i8, ptr %.04664, i64 %i.ca ; 2 uses
  %i.ce = mul i64 %index, 12                      ; 5 uses
  %next.gep107 = getelementptr i8, ptr %.04763, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %.04763, i64 %i.ce
  %next.gep108 = getelementptr i8, ptr %i.cf, i64 12
  %i.cg = getelementptr i8, ptr %.04763, i64 %i.ce
  %next.gep109 = getelementptr i8, ptr %i.cg, i64 24
  %i.ch = getelementptr i8, ptr %.04763, i64 %i.ce
  %next.gep110 = getelementptr i8, ptr %i.ch, i64 36
  %next.gep111 = getelementptr i8, ptr %.04962, i64 %i.ce
  %i.ci = uitofp <4 x i32> %vec.ind to <4 x float>
  %i.cj = fmul <4 x float> %broadcast.splat, %i.ci
  %wide.vec = load <8 x i16>, ptr %next.gep, align 1, !alias.scope !16
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ck = uitofp <4 x i16> %strided.vec to <4 x float>
  %i.cl = fdiv nnan <4 x float> %i.ck, splat (float 6.553500e+04)
  %i.cm = fadd nnan <4 x float> %i.cl, splat (float -5.000000e-01)
  %i.cn = fmul <4 x float> %broadcast.splat113, %i.cm
  %i.co = fmul <4 x float> %i.cn, splat (float 8.000000e+00)
  %i.cp = shufflevector <4 x float> %i.cj, <4 x float> %broadcast.splat115, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cq = shufflevector <4 x float> %i.co, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x float> %i.cp, <8 x float> %i.cq, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %next.gep111, align 4, !alias.scope !18, !noalias !20
  %i.cr = getelementptr i8, ptr %i.cb, i64 6
  %i.cs = getelementptr i8, ptr %i.cc, i64 10
  %i.ct = getelementptr i8, ptr %i.cd, i64 14
  %i.cu = load <16 x i8>, ptr %next.gep, align 1
  %i.cv = shufflevector <16 x i8> %i.cu, <16 x i8> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.cw = load i8, ptr %i.cr, align 1, !alias.scope !16
  %i.cx = load i8, ptr %i.cs, align 1, !alias.scope !16
  %i.cy = load i8, ptr %i.ct, align 1, !alias.scope !16
  %i.cz = insertelement <4 x i8> %i.cv, i8 %i.cw, i64 1
  %i.da = insertelement <4 x i8> %i.cz, i8 %i.cx, i64 2
  %i.db = insertelement <4 x i8> %i.da, i8 %i.cy, i64 3
  %i.dc = sitofp <4 x i8> %i.db to <4 x float>
  %i.dd = fmul nnan <4 x float> %i.dc, splat (float 7.812500e-03) ; 7 uses
  %i.de = extractelement <4 x float> %i.dd, i64 0
  %1 = extractelement <4 x float> %i.dd, i64 1
  %i.df = extractelement <4 x float> %i.dd, i64 2
  %2 = extractelement <4 x float> %i.dd, i64 3
  store float %i.de, ptr %next.gep107, align 4, !alias.scope !22, !noalias !23
  store float %1, ptr %next.gep108, align 4, !alias.scope !22, !noalias !23
  store float %i.df, ptr %next.gep109, align 4, !alias.scope !22, !noalias !23
  store float %2, ptr %next.gep110, align 4, !alias.scope !22, !noalias !23
  %i.dg = getelementptr i8, ptr %i.cb, i64 7
  %i.dh = getelementptr i8, ptr %i.cc, i64 11
  %i.di = getelementptr i8, ptr %i.cd, i64 15
  %i.dj = load <16 x i8>, ptr %next.gep, align 1
  %i.dk = shufflevector <16 x i8> %i.dj, <16 x i8> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.dl = load i8, ptr %i.dg, align 1, !alias.scope !16
  %i.dm = load i8, ptr %i.dh, align 1, !alias.scope !16
  %i.dn = load i8, ptr %i.di, align 1, !alias.scope !16
  %i.do = insertelement <4 x i8> %i.dk, i8 %i.dl, i64 1
  %i.dp = insertelement <4 x i8> %i.do, i8 %i.dm, i64 2
  %i.dq = insertelement <4 x i8> %i.dp, i8 %i.dn, i64 3
  %i.dr = sitofp <4 x i8> %i.dq to <4 x float>
  %i.ds = fmul nnan <4 x float> %i.dr, splat (float 7.812500e-03) ; 3 uses
  %i.dt = fmul nnan <4 x float> %i.ds, %i.ds
  %i.du = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.dd, <4 x float> %i.dt)
  %i.dv = fadd <4 x float> %i.du, splat (float 1.000000e+00)
  %i.dw = tail call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.dv)
  %i.dx = fdiv <4 x float> splat (float 1.000000e+00), %i.dw ; 2 uses
  %i.dy = shufflevector <4 x float> %i.dd, <4 x float> %i.ds, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dz = shufflevector <4 x float> %i.dx, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ea = fmul <8 x float> %i.dy, %i.dz
  %i.eb = shufflevector <4 x float> %i.dx, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec116 = shufflevector <8 x float> %i.ea, <8 x float> %i.eb, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec116, ptr %next.gep107, align 4, !alias.scope !22, !noalias !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %_ZN10aiVector3tIfEdVEf.exit.i.preheader, label %vector.body, !llvm.loop !24

._crit_edge66.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %.loopexit
  %i.ed = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ee = load i32, ptr %i.ed, align 1
  %.not = icmp eq i32 %i.ee, 0
  br i1 %.not, label %_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj.exit, label %bb.b

._crit_edge:                                      ; preds = %_ZN10aiVector3tIfEdVEf.exit.i
  %i.ef = add nuw i32 %.04565, 1                  ; 2 uses
  %exitcond72.not = icmp eq i32 %i.ef, %i.at
  br i1 %exitcond72.not, label %._crit_edge66.split, label %.preheader, !llvm.loop !25

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %_ZN10aiVector3tIfEdVEf.exit.i.preheader, %_ZN10aiVector3tIfEdVEf.exit.i
  %.04459 = phi i32 [ %i.fn, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %.04459.ph, %_ZN10aiVector3tIfEdVEf.exit.i.preheader ] ; 2 uses
  %.158 = phi ptr [ %i.fm, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %.158.ph, %_ZN10aiVector3tIfEdVEf.exit.i.preheader ] ; 4 uses
  %.14857 = phi ptr [ %i.fl, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %.14857.ph, %_ZN10aiVector3tIfEdVEf.exit.i.preheader ] ; 5 uses
  %.15056 = phi ptr [ %i.fk, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %.15056.ph, %_ZN10aiVector3tIfEdVEf.exit.i.preheader ] ; 4 uses
  %i.eg = uitofp i32 %.04459 to float
  %i.eh = load float, ptr %i.bc, align 1
  %i.ei = fmul float %i.eh, %i.eg
  store float %i.ei, ptr %.15056, align 4
  %i.ej = load float, ptr %i.bd, align 1
  %i.ek = fmul float %i.ej, %i.br
  %i.el = getelementptr inbounds nuw i8, ptr %.15056, i64 4
  store float %i.ek, ptr %i.el, align 4
  %i.em = load i16, ptr %.158, align 1
  %i.en = uitofp i16 %i.em to float
  %i.eo = fdiv nnan float %i.en, 6.553500e+04
  %i.ep = fadd nnan float %i.eo, -5.000000e-01
  %i.eq = load float, ptr %i.bc, align 1
  %i.er = fmul float %i.eq, %i.ep
  %i.es = fmul float %i.er, 8.000000e+00
  %i.et = getelementptr inbounds nuw i8, ptr %.15056, i64 8
  store float %i.es, ptr %i.et, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %.158, i64 2
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = sitofp i8 %i.ev to float
  %i.ex = fmul nnan float %i.ew, 7.812500e-03     ; 4 uses
  store float %i.ex, ptr %.14857, align 4
  %i.ey = getelementptr inbounds nuw i8, ptr %.158, i64 3
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = sitofp i8 %i.ez to float
  %i.fb = fmul nnan float %i.fa, 7.812500e-03     ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.14857, i64 4
  %i.fd = getelementptr inbounds nuw i8, ptr %.14857, i64 8
  %i.fe = fmul nnan float %i.fb, %i.fb
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.ex, float %i.fe)
  %i.fg = fadd float %i.ff, 1.000000e+00
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.fg)
  %i.fh = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.fi = fmul float %i.ex, %i.fh
  store float %i.fi, ptr %.14857, align 4
  %i.fj = fmul float %i.fb, %i.fh
  store float %i.fj, ptr %i.fc, align 4
  store float %i.fh, ptr %i.fd, align 4
  %i.fk = getelementptr inbounds nuw i8, ptr %.15056, i64 12 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.14857, i64 12 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.158, i64 4 ; 2 uses
  %i.fn = add nuw i32 %.04459, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.fn, %i.au
  br i1 %exitcond.not, label %._crit_edge, label %_ZN10aiVector3tIfEdVEf.exit.i, !llvm.loop !26

bb.b:                                             ; preds = %._crit_edge66.split
  %i.fo = load ptr, ptr %i.e, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 112
  %i.ft = load ptr, ptr %i.fs, align 8            ; 2 uses
  %i.fu = icmp eq ptr %i.ft, null
  %i.fv = icmp eq i32 %i.au, 0
  %or.cond.i = or i1 %i.fv, %.not67
  %or.cond = select i1 %i.fu, i1 true, i1 %or.cond.i
  br i1 %or.cond, label %_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj.exit, label %.split.i

.split.i:                                         ; preds = %bb.b
  %i.fw = uitofp i32 %i.at to float               ; 2 uses
  %i.fx = fdiv float 1.000000e+00, %i.fw          ; 2 uses
  %i.fy = fdiv float %i.fx, %i.fw
  %i.fz = fadd float %i.fx, %i.fy
  %i.ga = uitofp i32 %i.au to float               ; 2 uses
  %i.gb = fdiv float 1.000000e+00, %i.ga          ; 2 uses
  %i.gc = fdiv float %i.gb, %i.ga
  %i.gd = fadd float %i.gb, %i.gc                 ; 2 uses
  %i.ge = zext i32 %i.au to i64                   ; 2 uses
  %min.iters.check121 = icmp ult i32 %i.au, 4
  %n.vec124 = and i64 %i.ge, 4294967292           ; 4 uses
  %i.gf = trunc nuw i64 %n.vec124 to i32
  %i.gg = mul nuw nsw i64 %n.vec124, 12
  %broadcast.splatinsert127 = insertelement <4 x float> poison, float %i.gd, i64 0
  %broadcast.splat128 = shufflevector <4 x float> %broadcast.splatinsert127, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec124, %i.ge
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.split.i
  %.02330.i = phi i32 [ 0, %.split.i ], [ %i.gq, %._crit_edge.i ] ; 2 uses
  %.02429.i = phi ptr [ %i.ft, %.split.i ], [ %.lcssa, %._crit_edge.i ] ; 3 uses
  %i.gh = uitofp i32 %.02330.i to float
  %i.gi = fmul float %i.fz, %i.gh                 ; 2 uses
  br i1 %min.iters.check121, label %scalar.ph120.preheader, label %vector.ph122

vector.ph122:                                     ; preds = %.preheader.i
  %i.gj = getelementptr i8, ptr %.02429.i, i64 %i.gg ; 2 uses
  %broadcast.splatinsert125 = insertelement <4 x float> poison, float %i.gi, i64 0
  %broadcast.splat126 = shufflevector <4 x float> %broadcast.splatinsert125, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph122
  %index130 = phi i64 [ 0, %vector.ph122 ], [ %index.next134, %vector.body129 ] ; 2 uses
  %vec.ind131 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph122 ], [ %vec.ind.next135, %vector.body129 ] ; 2 uses
  %i.gk = mul i64 %index130, 12
  %next.gep132 = getelementptr i8, ptr %.02429.i, i64 %i.gk
  %i.gl = uitofp <4 x i32> %vec.ind131 to <4 x float>
  %i.gm = fmul <4 x float> %broadcast.splat128, %i.gl
  %i.gn = shufflevector <4 x float> %i.gm, <4 x float> %broadcast.splat126, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec133 = shufflevector <8 x float> %i.gn, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec133, ptr %next.gep132, align 4
  %index.next134 = add nuw i64 %index130, 4       ; 2 uses
  %vec.ind.next135 = add nuw <4 x i32> %vec.ind131, splat (i32 4)
  %i.go = icmp eq i64 %index.next134, %n.vec124
  br i1 %i.go, label %middle.block136, label %vector.body129, !llvm.loop !27

middle.block136:                                  ; preds = %vector.body129
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph120.preheader

scalar.ph120.preheader:                           ; preds = %.preheader.i, %middle.block136
  %.028.i.ph = phi i32 [ 0, %.preheader.i ], [ %i.gf, %middle.block136 ]
  %.127.i.ph = phi ptr [ %.02429.i, %.preheader.i ], [ %i.gj, %middle.block136 ]
  %i.gp = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gi, i64 0
  br label %scalar.ph120

._crit_edge.i:                                    ; preds = %scalar.ph120, %middle.block136
  %.lcssa = phi ptr [ %i.gj, %middle.block136 ], [ %i.gv, %scalar.ph120 ]
  %i.gq = add nuw i32 %.02330.i, 1                ; 2 uses
  %exitcond31.not.i = icmp eq i32 %i.gq, %i.at
  br i1 %exitcond31.not.i, label %_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj.exit, label %.preheader.i, !llvm.loop !11

scalar.ph120:                                     ; preds = %scalar.ph120.preheader, %scalar.ph120
  %.028.i = phi i32 [ %i.gu, %scalar.ph120 ], [ %.028.i.ph, %scalar.ph120.preheader ] ; 2 uses
  %.127.i = phi ptr [ %i.gv, %scalar.ph120 ], [ %.127.i.ph, %scalar.ph120.preheader ] ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.127.i, i64 4
  %i.gs = uitofp i32 %.028.i to float
  %i.gt = fmul float %i.gd, %i.gs
  store float %i.gt, ptr %.127.i, align 4
  store <2 x float> %i.gp, ptr %i.gr, align 4
  %i.gu = add nuw i32 %.028.i, 1                  ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.127.i, i64 12 ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.gu, %i.au
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph120, !llvm.loop !28

_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj.exit: ; preds = %._crit_edge.i, %bb.b, %._crit_edge66.split
  tail call void @_ZN6Assimp11HMPImporter20CreateOutputFaceListEjj(ptr noundef nonnull align 8 dereferenceable(159) %0, i32 noundef %i.au, i32 noundef %i.at)
  %i.gw = tail call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #21 ; 3 uses
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.gw)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit unwind label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp11HMPImporter21GenerateTextureCoordsEjj.exit
  %i.gx = load ptr, ptr %i.e, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store ptr %i.gw, ptr %i.gy, align 8
  %i.gz = load ptr, ptr %i.e, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8            ; 3 uses
  store i32 12, ptr %i.hb, align 4
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hc, ptr noundef nonnull align 1 dereferenceable(12) @.str.23, i64 12, i1 false)
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store i8 0, ptr %i.hd, align 4
  %.pre = load ptr, ptr %i.e, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.hf = load ptr, ptr %i.he, align 8
end_hunk_0
