inline.NumInlined: 1851
inline.NumDeleted: 929
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6Assimp4Ogre20VertexAnimationTrack28ConvertToAssimpAnimationNodeEPNS0_8SkeletonE:bb.a
  unreachable

bb.i:                                             ; preds = %.loopexit48
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZNK6Assimp4Ogre8Skeleton10BoneByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 44                ; 11 uses
  %i.am = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.al, i64 24) ; 2 uses
  %i.an = extractvalue { i64, i1 } %i.am, 1
  %i.ao = extractvalue { i64, i1 } %i.am, 0
  %i.ap = select i1 %i.an, i64 -1, i64 %i.ao      ; 3 uses
  %i.aq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #30 ; 3 uses
  %i.ar = icmp eq ptr %i.ag, %i.ah                ; 2 uses
  br i1 %i.ar, label %.loopexit47, label %bb.j

bb.j:                                             ; preds = %_ZNK6Assimp4Ogre8Skeleton10BoneByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.as = getelementptr inbounds [24 x i8], ptr %i.aq, i64 %i.al
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %i.at = phi ptr [ %i.aq, %bb.j ], [ %i.av, %bb.k ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.as
  br i1 %i.aw, label %.loopexit47, label %bb.k

.loopexit47:                                      ; preds = %bb.k, %_ZNK6Assimp4Ogre8Skeleton10BoneByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 1032 ; 2 uses
  store ptr %i.aq, ptr %i.ax, align 8
  %i.ay = icmp ugt i64 %i.al, 576460752303423487
  %i.az = shl nsw i64 %i.al, 5
  %i.ba = select i1 %i.ay, i64 -1, i64 %i.az
  %i.bb = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ba) #30 ; 5 uses
  br i1 %i.ar, label %.loopexit.thread, label %bb.l

.loopexit.thread:                                 ; preds = %.loopexit47
  store ptr %i.bb, ptr %i.i, align 8
  %i.bc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #30
  store ptr %i.bc, ptr %i.k, align 8
  %i.bd = trunc nuw nsw i64 %i.al to i32          ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 1028
  store i32 %i.bd, ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 1040
  store i32 %i.bd, ptr %i.bf, align 8
  store i32 %i.bd, ptr %i.j, align 8
  br label %._crit_edge

bb.l:                                             ; preds = %.loopexit47
  %i.bg = getelementptr inbounds [32 x i8], ptr %i.bb, i64 %i.al
  %i.bh = add nsw i64 %i.al, 576460752303423487
  %i.bi = and i64 %i.bh, 576460752303423487
  %xtraiter = and i64 %i.al, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.l, %.prol.preheader
  %i.bj = phi ptr [ %i.bm, %.prol.preheader ], [ %i.bb, %bb.l ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.l ]
  store double 0.000000e+00, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store i32 1, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !63

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.l
  %.unr = phi ptr [ %i.bb, %bb.l ], [ %i.bm, %.prol.preheader ]
  %i.bn = icmp samesign ult i64 %i.bi, 7
  br i1 %i.bn, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.bo = phi ptr [ %i.cm, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i32 1, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store double 0.000000e+00, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  store i32 1, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  store double 0.000000e+00, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 88
  store i32 1, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  store double 0.000000e+00, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 120
  store i32 1, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 128
  store double 0.000000e+00, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 152
  store i32 1, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 160
  store double 0.000000e+00, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bo, i64 184
  store i32 1, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 192
  store double 0.000000e+00, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bo, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 216
  store i32 1, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 224
  store double 0.000000e+00, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bo, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bo, i64 248
  store i32 1, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bo, i64 256 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.bg
  br i1 %i.cn, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  store ptr %i.bb, ptr %i.i, align 8
  %i.co = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #30 ; 3 uses
  %i.cp = getelementptr inbounds [24 x i8], ptr %i.co, i64 %i.al
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.unr-lcssa
  %i.cq = phi ptr [ %i.co, %.unr-lcssa ], [ %i.cs, %bb.m ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.cp
  br i1 %i.ct, label %.lr.ph, label %bb.m

.lr.ph:                                           ; preds = %bb.m
  store ptr %i.co, ptr %i.k, align 8
  %i.cu = trunc i64 %i.al to i32                  ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.h, i64 1028
  store i32 %i.cu, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 1040
  store i32 %i.cu, ptr %i.cw, align 8
  store i32 %i.cu, ptr %i.j, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.u, i64 184
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 60
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n, %.loopexit.thread
  ret ptr %i.h

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %.04150 = phi i64 [ 0, %.lr.ph ], [ %i.ib, %bb.n ] ; 5 uses
  %i.dp = load ptr, ptr %i.ae, align 8
  %i.dq = getelementptr inbounds nuw [44 x i8], ptr %i.dp, i64 %.04150 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store <2 x float> zeroinitializer, ptr %2, align 8
  store float 0.000000e+00, ptr %i.cx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %3, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store <2 x float> zeroinitializer, ptr %4, align 8
  store float 0.000000e+00, ptr %i.cy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dv = load float, ptr %i.dr, align 4, !noalias !64 ; 3 uses
  %i.dw = fneg float %i.dv                        ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  %i.dz = load float, ptr %i.dy, align 4, !noalias !69
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 28
  %i.eb = load <4 x float>, ptr %i.du, align 4, !noalias !69 ; 9 uses
  %i.ec = load float, ptr %i.ds, align 4, !noalias !69
  %i.ed = load <2 x float>, ptr %i.dt, align 4, !noalias !64 ; 5 uses
  %i.ee = extractelement <2 x float> %i.ed, i64 0 ; 2 uses
  %i.ef = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.eg = insertelement <2 x float> %i.ef, float %i.dw, i64 1
  %i.eh = fmul <2 x float> %i.ed, %i.eg
  %6 = shufflevector <2 x float> %i.ed, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %7 = shufflevector <4 x float> %6, <4 x float> %i.eb, <4 x i32> <i32 1, i32 4, i32 4, i32 0>
  %8 = insertelement <4 x float> poison, float %i.dv, i64 0
  %9 = insertelement <4 x float> %8, float %i.dw, i64 1
  %10 = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %11 = fmul <4 x float> %7, %10                  ; 2 uses
  %i.ei = fmul <2 x float> %i.ed, %i.ed           ; 2 uses
  %12 = extractelement <2 x float> %i.ei, i64 1
  %13 = call float @llvm.fmuladd.f32(float %i.ee, float %i.ee, float %12)
  %14 = shufflevector <4 x float> %i.eb, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ej = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> %14, <2 x float> %i.ei)
  %i.ek = shufflevector <4 x float> %i.eb, <4 x float> <float -2.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 4, i32 0, i32 0, i32 7>
  %i.el = insertelement <4 x float> %i.eb, float -0.000000e+00, i64 3
  %i.em = insertelement <4 x float> %i.el, float %13, i64 0
  %i.en = insertelement <4 x float> %i.eb, float 1.000000e+00, i64 0
  %i.eo = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ep = shufflevector <4 x float> %i.en, <4 x float> %i.eo, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.eq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ek, <4 x float> %i.em, <4 x float> %i.ep)
  %i.er = fmul <4 x float> %i.eq, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.es = load <4 x float>, ptr %i.dx, align 4, !noalias !69 ; 5 uses
  %i.et = load float, ptr %i.ea, align 4, !noalias !69
  %i.eu = shufflevector <4 x float> %i.es, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.ev = fmul <4 x float> %i.er, %i.eu           ; 2 uses
  %i.ew = shufflevector <4 x float> %i.eb, <4 x float> <float poison, float -2.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 1, i32 7>
  %i.ex = shufflevector <4 x float> %i.eb, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 poison, i32 2, i32 7>
  %i.ey = shufflevector <2 x float> %i.ej, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ez = shufflevector <4 x float> %i.ex, <4 x float> %i.ey, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %15 = shufflevector <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x float> %11, <4 x i32> <i32 4, i32 1, i32 5, i32 poison>
  %i.fa = shufflevector <4 x float> %15, <4 x float> %i.es, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.fb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ew, <4 x float> %i.ez, <4 x float> %i.fa)
  %i.fc = fmul <4 x float> %i.fb, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.fd = shufflevector <4 x float> %i.es, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.fe = fmul <4 x float> %i.fd, %i.fc           ; 2 uses
  %i.ff = shufflevector <4 x float> %i.eb, <4 x float> <float poison, float poison, float -2.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fg = shufflevector <4 x float> %i.eb, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 poison, i32 7>
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> %i.ey, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %16 = shufflevector <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x float> %11, <4 x i32> <i32 7, i32 6, i32 2, i32 poison>
  %i.fi = shufflevector <4 x float> %16, <4 x float> %i.es, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.fj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ff, <4 x float> %i.fh, <4 x float> %i.fi)
  %i.fk = fmul <4 x float> %i.fj, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.fl = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.dz, i64 0
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fn = fmul <4 x float> %i.fm, %i.fk           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(64) %i.cz, i64 64, i1 false)
  %i.fo = load <4 x float>, ptr %5, align 16
  %i.fp = load <4 x float>, ptr %i.da, align 4
  %i.fq = load <4 x float>, ptr %i.db, align 8
  %i.fr = load <4 x float>, ptr %i.dc, align 4
  %i.fs = shufflevector <4 x float> %i.fp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ft = fmul <4 x float> %i.fe, %i.fs
  %i.fu = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ev, <4 x float> %i.fu, <4 x float> %i.ft)
  %i.fw = shufflevector <4 x float> %i.fq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fn, <4 x float> %i.fw, <4 x float> %i.fv)
  %i.fy = shufflevector <4 x float> %i.fr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fy, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.fx)
  %i.ga = load <4 x float>, ptr %i.dd, align 16
  %i.gb = load <4 x float>, ptr %i.de, align 4
  %i.gc = load <4 x float>, ptr %i.df, align 8
  %i.gd = load <4 x float>, ptr %i.dg, align 4
  %i.ge = load <4 x float>, ptr %i.dh, align 16
  %i.gf = load <4 x float>, ptr %i.di, align 4
  %i.gg = load <4 x float>, ptr %i.dj, align 8
  %i.gh = load <4 x float>, ptr %i.dk, align 4
  %i.gi = load <4 x float>, ptr %i.dl, align 16
  %i.gj = load float, ptr %i.dm, align 4
  %i.gk = load float, ptr %i.dn, align 8
  %i.gl = load float, ptr %i.do, align 4
  store <4 x float> %i.fz, ptr %5, align 16
  %i.gm = shufflevector <4 x float> %i.fe, <4 x float> %i.es, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 3 uses
  %i.gn = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.go = fmul <4 x float> %i.gm, %i.gn
  %i.gp = insertelement <4 x float> %i.ev, float %i.ec, i64 3 ; 3 uses
  %i.gq = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gp, <4 x float> %i.gq, <4 x float> %i.go)
  %i.gs = insertelement <4 x float> %i.fn, float %i.et, i64 3 ; 3 uses
  %i.gt = shufflevector <4 x float> %i.gc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gs, <4 x float> %i.gt, <4 x float> %i.gr)
  %i.gv = shufflevector <4 x float> %i.gd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gv, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gu)
  store <4 x float> %i.gw, ptr %i.dd, align 16
  %i.gx = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gy = fmul <4 x float> %i.gm, %i.gx
  %i.gz = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ha = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gp, <4 x float> %i.gz, <4 x float> %i.gy)
  %i.hb = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gs, <4 x float> %i.hb, <4 x float> %i.ha)
  %i.hd = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.he = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hd, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.hc)
  store <4 x float> %i.he, ptr %i.dh, align 16
  %i.hf = insertelement <4 x float> poison, float %i.gj, i64 0
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hh = fmul <4 x float> %i.gm, %i.hg
  %i.hi = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gp, <4 x float> %i.hi, <4 x float> %i.hh)
  %i.hk = insertelement <4 x float> poison, float %i.gk, i64 0
  %i.hl = shufflevector <4 x float> %i.hk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gs, <4 x float> %i.hl, <4 x float> %i.hj)
  %i.hn = insertelement <4 x float> poison, float %i.gl, i64 0
  %i.ho = shufflevector <4 x float> %i.hn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ho, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.hm)
  store <4 x float> %i.hp, ptr %i.dl, align 16
  call void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.hq = load float, ptr %i.dq, align 4
  %i.hr = fpext float %i.hq to double             ; 3 uses
  %i.hs = load ptr, ptr %i.ax, align 8
  %i.ht = getelementptr inbounds nuw [24 x i8], ptr %i.hs, i64 %.04150 ; 2 uses
  store double %i.hr, ptr %i.ht, align 8
  %i.hu = load ptr, ptr %i.i, align 8
  %i.hv = getelementptr inbounds nuw [32 x i8], ptr %i.hu, i64 %.04150 ; 2 uses
  store double %i.hr, ptr %i.hv, align 8
  %i.hw = load ptr, ptr %i.k, align 8
  %i.hx = getelementptr inbounds nuw [24 x i8], ptr %i.hw, i64 %.04150 ; 2 uses
  store double %i.hr, ptr %i.hx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.hy, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hz, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ia, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.ib = add nuw i64 %.04150, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ib, %i.al
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !70

bb.o:                                             ; preds = %bb.i, %bb.d
  %.sink = phi ptr [ %i.ac, %bb.i ], [ %i.f, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.g, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6Assimp4Ogre8SkeletonC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(52) initializes((0, 52)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %0, i8 0, i64 52, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp4Ogre8SkeletonD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(52) dereferenceable(52) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6Assimp4Ogre8Skeleton5ResetEv(ptr noundef nonnull align 8 dereferenceable(52) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN6Assimp4Ogre9AnimationESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #31
  br label %_ZNSt6vectorIPN6Assimp4Ogre9AnimationESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6Assimp4Ogre9AnimationESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN6Assimp4Ogre9AnimationESaIS3_EED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #31
  br label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6Assimp4Ogre9AnimationESaIS3_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp4Ogre8Skeleton5ResetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(52) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not31 = icmp eq ptr %i.a, %i.c
  br i1 %.not31, label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE5clearEv.exit, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  %.pre37 = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %.pre37, %.pre
  br i1 %i.d, label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPPN6Assimp4Ogre4BoneES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN6Assimp4Ogre4BoneES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  store ptr %.pre, ptr %i.b, align 8
  br label %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE5clearEv.exit

_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE5clearEv.exit: ; preds = %bb.a, %._crit_edge, %_ZSt8_DestroyIPPN6Assimp4Ogre4BoneES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not3033 = icmp eq ptr %i.f, %i.h
  br i1 %.not3033, label %_ZNSt6vectorIPN6Assimp4Ogre9AnimationESaIS3_EE5clearEv.exit, label %.lr.ph35

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.027.032 = phi ptr [ %i.x, %bb.d ], [ %i.a, %bb.a ] ; 3 uses
  %i.i = load ptr, ptr %.sroa.027.032, align 8    ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #31
  br label %_ZNSt6vectorItSaItEED2Ev.exit.i

_ZNSt6vectorItSaItEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN6Assimp4Ogre4BoneD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit.i
  %i.v = load i64, ptr %i.t, align 8
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #31
  br label %_ZN6Assimp4Ogre4BoneD2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.hl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fe, <4 x float> %i.hk, <4 x float> %i.hj)
  %i.hm = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hn = fmul <4 x float> %i.hl, %i.hm
  %i.ho = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.hp = shufflevector <4 x float> %i.gv, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.hq = phi <4 x float> [ %i.er, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.hr = phi <4 x float> [ %i.ho, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.hs = phi <4 x float> [ %i.hp, %bb.b ], [ splat (float +qnan), %bb.a ]
  %i.ht = phi <4 x float> [ %i.hn, %bb.b ], [ splat (float +qnan), %bb.a ]
  store <4 x float> %i.hq, ptr %0, align 4
  store <4 x float> %i.hr, ptr %i.p, align 4
  store <4 x float> %i.hs, ptr %i.o, align 4
  store <4 x float> %i.ht, ptr %i.m, align 4
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA63_KcRtRA13_S1_S4_RA2_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(63) %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 1 dereferenceable(13) %3, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %7)
  invoke void @_ZN15DeadlyErrorBaseC2IJRtRA13_KcS1_RA2_S2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA63_S2_EEN6Assimp9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %7, ptr noundef nonnull align 1 dereferenceable(63) %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 1 dereferenceable(13) %3, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %7, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %7, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %7) #28
  resume { ptr, i32 } %i.o
}

declare void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA48_KcRtRA13_S1_S4_RA2_S1_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(48) %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 1 dereferenceable(13) %3, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %7)
  invoke void @_ZN15DeadlyErrorBaseC2IJRtRA13_KcS1_RA2_S2_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA48_S2_EEN6Assimp9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %7, ptr noundef nonnull align 1 dereferenceable(48) %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 1 dereferenceable(13) %3, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 1 dereferenceable(2) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %7, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %7, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %7) #28
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6Assimp4Ogre20VertexAnimationTrackC2Ev(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 6)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8
  store i8 0, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA73_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA22_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(22) %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA22_KcERA73_S8_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(73) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(22) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN6Assimp4Ogre17TransformKeyFrame9TransformEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.aiMatrix4x4t) align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(44) %1) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.b, align 4, !noalias !81 ; 4 uses
  %i.g = fneg float %i.f                          ; 3 uses
  %i.h = load float, ptr %i.a, align 4
  %i.i = load <4 x float>, ptr %i.e, align 4      ; 6 uses
  %i.j = extractelement <4 x float> %i.i, i64 0   ; 2 uses
  %i.k = fmul float %i.j, %i.g
  %i.l = fmul float %i.j, %i.f
  %i.m = shufflevector <4 x float> %i.i, <4 x float> <float -2.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 4, i32 0, i32 0, i32 7>
  %i.n = insertelement <4 x float> %i.i, float -0.000000e+00, i64 3
  %i.o = insertelement <4 x float> %i.i, float 1.000000e+00, i64 0
  %i.p = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.h, i64 0
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.s = load float, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load <2 x float>, ptr %i.c, align 4, !noalias !81 ; 4 uses
  %i.w = load float, ptr %i.d, align 4, !noalias !81 ; 5 uses
  %2 = fmul float %i.w, %i.g
  %i.x = fmul float %i.w, %i.f
  %i.y = load float, ptr %i.u, align 4
  %i.z = shufflevector <4 x float> %i.i, <4 x float> <float poison, float -2.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 poison, i32 7>
  %i.aa = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 4 uses
  %i.ab = shufflevector <4 x float> %i.z, <4 x float> %i.aa, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.ac = insertelement <4 x float> %i.aa, float -0.000000e+00, i64 3
  %i.ad = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.x, i64 0
  %i.ae = insertelement <4 x float> %i.ad, float %i.k, i64 2
  %i.af = insertelement <4 x float> %i.ae, float %i.y, i64 3
  %3 = insertelement <4 x float> %i.o, float %2, i64 1
  %i.ag = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.s, i64 0
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.am = load float, ptr %i.al, align 4
  %4 = extractelement <2 x float> %i.v, i64 0
  %5 = fmul float %4, %i.f
  %6 = insertelement <4 x float> %3, float %5, i64 2
  %i.an = insertelement <2 x float> <float poison, float -2.000000e+00>, float %i.w, i64 0
  %i.ao = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.l, i64 0
  %7 = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ap = insertelement <2 x float> %7, float %i.w, i64 0 ; 2 uses
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ar = shufflevector <2 x float> %i.ap, <2 x float> %i.v, <4 x i32> <i32 0, i32 2, i32 0, i32 poison>
  %i.as = insertelement <4 x float> %i.ar, float %i.g, i64 3
  %i.at = fmul <4 x float> %i.aq, %i.as
  %i.au = shufflevector <4 x float> %i.i, <4 x float> %i.aa, <4 x i32> <i32 0, i32 0, i32 4, i32 0> ; 2 uses
  %i.av = insertelement <4 x float> %i.au, float %i.w, i64 3
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> %i.av, <4 x float> %i.at) ; 4 uses
  %i.ax = shufflevector <4 x float> %i.ac, <4 x float> %i.aw, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.ay = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.ax, <4 x float> %i.af)
  %i.az = fmul <4 x float> %i.ay, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.ba = fmul <4 x float> %i.ah, %i.az
  store <4 x float> %i.ba, ptr %i.t, align 4
  %i.bb = shufflevector <4 x float> %i.n, <4 x float> %i.aw, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %i.bc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.m, <4 x float> %i.bb, <4 x float> %6)
  %i.bd = fmul <4 x float> %i.bc, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.be = fmul <4 x float> %i.bd, %i.q
  store <4 x float> %i.be, ptr %0, align 4
  %i.bf = shufflevector <4 x float> %i.aa, <4 x float> %i.aw, <2 x i32> <i32 0, i32 5>
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.an, <2 x float> %i.ao)
  %i.bh = shufflevector <4 x float> %i.aw, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.bi = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bj = shufflevector <4 x float> %i.bh, <4 x float> %i.bi, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bk = insertelement <4 x float> %i.bj, float %i.am, i64 3
  %i.bl = fmul <4 x float> %i.bk, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.bm = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.aj, i64 0
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bo = fmul <4 x float> %i.bn, %i.bl
  store <4 x float> %i.bo, ptr %i.ak, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.bp, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load float, ptr %i.a, align 4
  store float %i.b, ptr %3, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load <4 x float>, ptr %i.n, align 4
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 poison> ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load float, ptr %i.q, align 4            ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load float, ptr %i.s, align 4            ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load float, ptr %i.k, align 4            ; 4 uses
  %i.w = load float, ptr %0, align 4              ; 3 uses
  %i.x = load float, ptr %i.l, align 4            ; 4 uses
  %i.y = load float, ptr %i.c, align 4            ; 2 uses
  %i.z = load float, ptr %i.m, align 4            ; 4 uses
  %i.aa = load float, ptr %i.g, align 4           ; 3 uses
  %i.ab = fmul float %i.x, %i.x
  %i.ac = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.y, i64 1 ; 2 uses
  %i.ae = fmul <2 x float> %i.ad, %i.ad
  %i.af = tail call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.ab)
  %i.ag = insertelement <2 x float> %i.p, float %i.w, i64 1 ; 2 uses
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ag, <2 x float> %i.ae)
  %i.ai = tail call noundef float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.af)
  %i.aj = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.aa, i64 1 ; 2 uses
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.ak, <2 x float> %i.ah)
  %sqrt.i31 = tail call noundef float @llvm.sqrt.f32(float %i.ai) ; 3 uses
  %i.am = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.al) ; 4 uses
  %i.an = extractelement <2 x float> %i.am, i64 1
  store float %i.an, ptr %1, align 4
  store float %sqrt.i31, ptr %i.u, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ap = extractelement <2 x float> %i.am, i64 0
  store float %i.ap, ptr %i.ao, align 4
  %i.aq = load float, ptr %0, align 4             ; 3 uses
  %i.ar = load float, ptr %i.l, align 4           ; 3 uses
  %i.as = fmul float %i.aq, %i.ar                 ; 2 uses
  %i.at = load float, ptr %i.s, align 4           ; 4 uses
  %i.au = fmul float %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.aw = load float, ptr %i.av, align 4          ; 6 uses
  %i.ax = load float, ptr %i.h, align 4           ; 5 uses
  %i.ay = fmul float %i.as, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ba = load float, ptr %i.az, align 4          ; 6 uses
  %i.bb = fneg float %i.ba
  %i.bc = fmul float %i.ay, %i.bb
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.au, float %i.aw, float %i.bc)
  %i.be = load float, ptr %i.q, align 4           ; 3 uses
  %i.bf = fmul float %i.aq, %i.be                 ; 2 uses
  %i.bg = fmul float %i.ax, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bi = load float, ptr %i.bh, align 4          ; 6 uses
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bi, float %i.bd)
  %i.bk = load float, ptr %i.m, align 4           ; 4 uses
  %i.bl = fneg float %i.bk                        ; 3 uses
  %i.bm = fmul float %i.bf, %i.bl
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.aw, float %i.bj)
  %i.bo = load float, ptr %i.d, align 4           ; 3 uses
  %i.bp = fmul float %i.aq, %i.bo                 ; 2 uses
  %i.bq = fmul float %i.bk, %i.bp
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.ba, float %i.bn)
  %i.bs = fneg float %i.at                        ; 3 uses
  %i.bt = fmul float %i.bp, %i.bs
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bi, float %i.br)
  %i.bv = load float, ptr %i.k, align 4           ; 3 uses
  %i.bw = fmul float %i.be, %i.bv                 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.by = load float, ptr %i.bx, align 4          ; 6 uses
  %i.bz = fneg float %i.ax                        ; 2 uses
  %i.ca = fmul float %i.bw, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.by, float %i.bu)
  %i.cc = load float, ptr %i.g, align 4           ; 4 uses
  %i.cd = fmul float %i.bw, %i.cc
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.aw, float %i.cb)
  %i.cf = fmul float %i.bo, %i.bv                 ; 2 uses
  %i.cg = fneg float %i.cc                        ; 3 uses
  %i.ch = fmul float %i.cf, %i.cg
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.ba, float %i.ce)
  %i.cj = fmul float %i.at, %i.cf
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.by, float %i.ci)
  %i.cl = load float, ptr %i.c, align 4           ; 3 uses
  %i.cm = fmul float %i.bv, %i.cl                 ; 2 uses
  %i.cn = fmul float %i.cm, %i.bs
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.aw, float %i.ck)
  %i.cp = fmul float %i.ax, %i.cm
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.ba, float %i.co)
  %i.cr = load float, ptr %i.n, align 4           ; 3 uses
  %i.cs = fmul float %i.bo, %i.cr                 ; 2 uses
  %i.ct = fmul float %i.cc, %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.bi, float %i.cq)
  %i.cv = fmul float %i.cs, %i.bl
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.by, float %i.cu)
  %i.cx = fmul float %i.cl, %i.cr                 ; 2 uses
  %i.cy = fmul float %i.bk, %i.cx
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.aw, float %i.cw)
  %i.da = fmul float %i.cx, %i.bz
  %i.db = tail call float @llvm.fmuladd.f32(float %i.da, float %i.bi, float %i.cz)
  %i.dc = fmul float %i.ar, %i.cr                 ; 2 uses
  %i.dd = fmul float %i.ax, %i.dc
  %i.de = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.by, float %i.db)
  %i.df = fmul float %i.dc, %i.cg
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.df, float %i.aw, float %i.de)
  %i.dh = load float, ptr %i.a, align 4           ; 3 uses
  %i.di = fmul float %i.cl, %i.dh                 ; 2 uses
  %i.dj = fmul float %i.di, %i.bl
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.ba, float %i.dg)
  %i.dl = fmul float %i.at, %i.di
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.dl, float %i.bi, float %i.dk)
  %i.dn = fmul float %i.ar, %i.dh                 ; 2 uses
  %i.do = fmul float %i.dn, %i.bs
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.do, float %i.by, float %i.dm)
  %i.dq = fmul float %i.cc, %i.dn
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dq, float %i.ba, float %i.dp)
  %i.ds = fmul float %i.be, %i.dh                 ; 2 uses
  %i.dt = fmul float %i.ds, %i.cg
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.bi, float %i.dr)
  %i.dv = fmul float %i.bk, %i.ds
  %i.dw = tail call noundef float @llvm.fmuladd.f32(float %i.dv, float %i.by, float %i.du)
  %i.dx = fcmp olt float %i.dw, 0.000000e+00
  br i1 %i.dx, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load float, ptr %1, align 4
  %i.dy = insertelement <2 x float> %i.am, float %.pre, i64 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.dz = fneg <2 x float> %i.am                  ; 3 uses
  %i.ea = fneg float %sqrt.i31                    ; 2 uses
  %i.eb = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %i.eb, float %i.ea, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %1, align 4
  %i.ec = extractelement <2 x float> %i.dz, i64 0
  store float %i.ec, ptr %i.ao, align 4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.ed = phi float [ %sqrt.i31, %._crit_edge ], [ %i.ea, %bb.b ] ; 2 uses
  %i.ee = phi <2 x float> [ %i.dy, %._crit_edge ], [ %i.dz, %bb.b ] ; 2 uses
  %i.ef = fcmp une <2 x float> %i.ee, zeroinitializer ; 3 uses
  %i.eg = fdiv <2 x float> splat (float 1.000000e+00), %i.ee ; 3 uses
  %i.eh = extractelement <2 x float> %i.eg, i64 1 ; 2 uses
  %i.ei = fmul float %i.w, %i.eh
  %i.ej = extractelement <2 x i1> %i.ef, i64 1    ; 2 uses
  %.sroa.055.0 = select i1 %i.ej, float %i.ei, float %i.w ; 6 uses
  %i.ek = fcmp une float %i.ed, 0.000000e+00      ; 3 uses
  %i.el = fdiv float 1.000000e+00, %i.ed          ; 3 uses
  %i.em = fmul float %i.x, %i.el
  %i.en = fmul float %i.z, %i.el
  %.sroa.22.0 = select i1 %i.ek, float %i.em, float %i.x ; 6 uses
  %.sroa.27.0 = select i1 %i.ek, float %i.en, float %i.z ; 4 uses
  %i.eo = insertelement <2 x float> %i.p, float %i.y, i64 1 ; 2 uses
  %i.ep = fmul <2 x float> %i.eo, %i.eg
  %i.eq = fmul float %i.aa, %i.eh
  %i.er = fmul float %i.v, %i.el
  %.sroa.1260.0 = select i1 %i.ej, float %i.eq, float %i.aa ; 4 uses
  %.sroa.17.0 = select i1 %i.ek, float %i.er, float %i.v ; 4 uses
  %i.es = extractelement <2 x float> %i.eg, i64 0 ; 2 uses
  %i.et = fmul float %i.r, %i.es
  %i.eu = fmul float %i.t, %i.es
  %i.ev = select <2 x i1> %i.ef, <2 x float> %i.ep, <2 x float> %i.eo ; 6 uses
  %i.ew = extractelement <2 x i1> %i.ef, i64 0    ; 2 uses
end_hunk_1
