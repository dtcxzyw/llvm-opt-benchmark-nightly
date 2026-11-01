Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/OgreStructs?download=true
inline.NumInlined: 1851
inline.NumDeleted: 929
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6Assimp4Ogre20VertexAnimationTrack28ConvertToAssimpAnimationNodeEPNS0_8SkeletonE:bb.a
  %i.ab = load ptr, ptr %.sroa.04.012.i, align 8  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = icmp eq i64 %i.ad, %.fr53
  br i1 %i.ae, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %.lr.ph.i.split
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ag, ptr %i.u, i64 %.fr53)
  %i.ah = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ah, label %_ZNK6Assimp4Ogre8Skeleton10BoneByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %.lr.ph.i.split
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.012.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, %i.t
  br i1 %.not.i, label %.loopexit48, label %.lr.ph.i.split, !llvm.loop !9

.loopexit48:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8.i.us, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA73_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA22_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 1 dereferenceable(73) @.str.51, ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 1 dereferenceable(22) @.str.52)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.loopexit48
  tail call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.h:                                             ; preds = %.loopexit48
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_ZNK6Assimp4Ogre8Skeleton10BoneByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %.lr.ph.i.split.us
  %.us-phi = phi ptr [ %i.w, %.lr.ph.i.split.us ], [ %i.ab, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = sdiv exact i64 %i.ar, 44                ; 11 uses
  %i.at = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.as, i64 24) ; 2 uses
  %i.au = extractvalue { i64, i1 } %i.at, 1
  %i.av = extractvalue { i64, i1 } %i.at, 0
  %i.aw = select i1 %i.au, i64 -1, i64 %i.av      ; 3 uses
  %i.ax = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aw) #30 ; 3 uses
  %i.ay = icmp eq ptr %i.an, %i.ao                ; 2 uses
  br i1 %i.ay, label %.loopexit47, label %bb.i

bb.i:                                             ; preds = %_ZNK6Assimp4Ogre8Skeleton10BoneByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.az = getelementptr inbounds [24 x i8], ptr %i.ax, i64 %i.as
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %i.ba = phi ptr [ %i.ax, %bb.i ], [ %i.bc, %bb.j ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.az
  br i1 %i.bd, label %.loopexit47, label %bb.j

.loopexit47:                                      ; preds = %bb.j, %_ZNK6Assimp4Ogre8Skeleton10BoneByNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 1032 ; 2 uses
  store ptr %i.ax, ptr %i.be, align 8
  %i.bf = icmp ugt i64 %i.as, 576460752303423487
  %i.bg = shl nsw i64 %i.as, 5
  %i.bh = select i1 %i.bf, i64 -1, i64 %i.bg
  %i.bi = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bh) #30 ; 5 uses
  br i1 %i.ay, label %.loopexit.thread, label %bb.k

.loopexit.thread:                                 ; preds = %.loopexit47
  store ptr %i.bi, ptr %i.i, align 8
  %i.bj = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aw) #30
  store ptr %i.bj, ptr %i.k, align 8
  %i.bk = trunc nuw nsw i64 %i.as to i32          ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 1028
  store i32 %i.bk, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 1040
  store i32 %i.bk, ptr %i.bm, align 8
  store i32 %i.bk, ptr %i.j, align 8
  br label %._crit_edge

bb.k:                                             ; preds = %.loopexit47
  %i.bn = getelementptr inbounds [32 x i8], ptr %i.bi, i64 %i.as
  %i.bo = add nsw i64 %i.as, 576460752303423487
  %i.bp = and i64 %i.bo, 576460752303423487
  %xtraiter = and i64 %i.as, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.k, %.prol.preheader
  %i.bq = phi ptr [ %i.bt, %.prol.preheader ], [ %i.bi, %bb.k ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.k ]
  store double 0.000000e+00, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store i32 1, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !61

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.k
  %.unr = phi ptr [ %i.bi, %bb.k ], [ %i.bt, %.prol.preheader ]
  %i.bu = icmp samesign ult i64 %i.bp, 7
  br i1 %i.bu, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.bv = phi ptr [ %i.ct, %.new ], [ %.unr, %.prol.loopexit ] ; 25 uses
  store double 0.000000e+00, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store i32 1, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store double 0.000000e+00, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  store i32 1, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  store double 0.000000e+00, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 88
  store i32 1, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 96
  store double 0.000000e+00, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 104
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 120
  store i32 1, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 128
  store double 0.000000e+00, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 136
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bv, i64 152
  store i32 1, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bv, i64 160
  store double 0.000000e+00, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 168
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bv, i64 184
  store i32 1, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bv, i64 192
  store double 0.000000e+00, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.bv, i64 200
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bv, i64 216
  store i32 1, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bv, i64 224
  store double 0.000000e+00, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bv, i64 232
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bv, i64 248
  store i32 1, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bv, i64 256 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bn
  br i1 %i.cu, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  store ptr %i.bi, ptr %i.i, align 8
  %i.cv = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aw) #30 ; 3 uses
  %i.cw = getelementptr inbounds [24 x i8], ptr %i.cv, i64 %i.as
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.unr-lcssa
  %i.cx = phi ptr [ %i.cv, %.unr-lcssa ], [ %i.cz, %bb.l ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.cy, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.cw
  br i1 %i.da, label %.lr.ph, label %bb.l

.lr.ph:                                           ; preds = %bb.l
  store ptr %i.cv, ptr %i.k, align 8
  %i.db = trunc i64 %i.as to i32                  ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.h, i64 1028
  store i32 %i.db, ptr %i.dc, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.h, i64 1040
  store i32 %i.db, ptr %i.dd, align 8
  store i32 %i.db, ptr %i.j, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.us-phi, i64 184
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  br label %bb.m

._crit_edge:                                      ; preds = %bb.m, %.loopexit.thread
  ret ptr %i.h

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %.04152 = phi i64 [ 0, %.lr.ph ], [ %i.ho, %bb.m ] ; 5 uses
  %i.dk = load ptr, ptr %i.al, align 8
  %i.dl = getelementptr inbounds nuw [44 x i8], ptr %i.dk, i64 %.04152 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store <2 x float> zeroinitializer, ptr %2, align 8
  store float 0.000000e+00, ptr %i.de, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %3, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store <2 x float> zeroinitializer, ptr %4, align 8
  store float 0.000000e+00, ptr %i.df, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dp = load float, ptr %i.dm, align 4, !noalias !67 ; 4 uses
  %i.dq = fneg float %i.dp                        ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %i.dt = load float, ptr %i.ds, align 4, !noalias !68
  %i.du = load <4 x float>, ptr %i.do, align 4, !noalias !68 ; 9 uses
  %i.dv = load <2 x float>, ptr %i.dn, align 4, !noalias !67 ; 6 uses
  %i.dw = extractelement <2 x float> %i.dv, i64 1
  %i.dx = extractelement <2 x float> %i.dv, i64 0 ; 2 uses
  %i.dy = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %i.dq, i64 1
  %i.ea = fmul <2 x float> %i.dv, %i.dz
  %i.eb = fmul float %i.dw, %i.dp
  %i.ec = extractelement <4 x float> %i.du, i64 0
  %i.ed = fmul float %i.ec, %i.dq
  %i.ee = insertelement <2 x float> %i.dv, float %i.dp, i64 1
  %i.ef = shufflevector <4 x float> %i.du, <4 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.eg = insertelement <2 x float> %i.ef, float %i.dq, i64 0
  %i.eh = fmul <2 x float> %i.ee, %i.eg
  %i.ei = fmul <2 x float> %i.dv, %i.dv           ; 2 uses
  %i.ej = extractelement <2 x float> %i.ei, i64 1
  %i.ek = call float @llvm.fmuladd.f32(float %i.dx, float %i.dx, float %i.ej)
  %i.el = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.ef, <2 x float> %i.ei)
  %i.em = shufflevector <4 x float> %i.du, <4 x float> <float -2.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 4, i32 0, i32 0, i32 7>
  %i.en = insertelement <4 x float> %i.du, float -0.000000e+00, i64 3
  %i.eo = insertelement <4 x float> %i.en, float %i.ek, i64 0
  %i.ep = insertelement <4 x float> %i.du, float 1.000000e+00, i64 0
  %i.eq = shufflevector <2 x float> %i.ea, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.er = shufflevector <4 x float> %i.ep, <4 x float> %i.eq, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.es = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.em, <4 x float> %i.eo, <4 x float> %i.er)
  %i.et = fmul <4 x float> %i.es, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.eu = load <4 x float>, ptr %i.dr, align 4, !noalias !68 ; 4 uses
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.ew = fmul <4 x float> %i.et, %i.ev           ; 4 uses
  %i.ex = shufflevector <4 x float> %i.du, <4 x float> <float poison, float -2.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 1, i32 7>
  %i.ey = shufflevector <4 x float> %i.du, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 poison, i32 2, i32 7>
  %i.ez = shufflevector <2 x float> %i.el, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fa = shufflevector <4 x float> %i.ey, <4 x float> %i.ez, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.fb = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.eb, i64 0
  %i.fc = insertelement <4 x float> %i.fb, float %i.ed, i64 2
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> %i.eu, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.fe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ex, <4 x float> %i.fa, <4 x float> %i.fd)
  %i.ff = fmul <4 x float> %i.fe, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.fg = shufflevector <4 x float> %i.eu, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.fh = fmul <4 x float> %i.fg, %i.ff           ; 4 uses
  %i.fi = shufflevector <4 x float> %i.du, <4 x float> <float poison, float poison, float -2.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fj = shufflevector <4 x float> %i.du, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 poison, i32 7>
  %i.fk = shufflevector <4 x float> %i.fj, <4 x float> %i.ez, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.fl = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fm = insertelement <4 x float> %i.fl, float 1.000000e+00, i64 2
  %i.fn = shufflevector <4 x float> %i.fm, <4 x float> %i.eu, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.fo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fi, <4 x float> %i.fk, <4 x float> %i.fn)
  %i.fp = fmul <4 x float> %i.fo, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %i.fq = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.dt, i64 0
  %i.fr = shufflevector <4 x float> %i.fq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fs = fmul <4 x float> %i.fr, %i.fp           ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(64) %i.dg, i64 64, i1 false)
  %i.ft = load <4 x float>, ptr %5, align 16      ; 4 uses
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fv = fmul <4 x float> %i.fh, %i.fu
  %i.fw = shufflevector <4 x float> %i.ft, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ew, <4 x float> %i.fw, <4 x float> %i.fv)
  %i.fy = shufflevector <4 x float> %i.ft, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fs, <4 x float> %i.fy, <4 x float> %i.fx)
  %i.ga = shufflevector <4 x float> %i.ft, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ga, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.fz)
  store <4 x float> %i.gb, ptr %5, align 16
  %i.gc = load <4 x float>, ptr %i.dh, align 16   ; 4 uses
  %i.gd = shufflevector <4 x float> %i.gc, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ge = fmul <4 x float> %i.fh, %i.gd
  %i.gf = shufflevector <4 x float> %i.gc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ew, <4 x float> %i.gf, <4 x float> %i.ge)
  %i.gh = shufflevector <4 x float> %i.gc, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fs, <4 x float> %i.gh, <4 x float> %i.gg)
  %i.gj = shufflevector <4 x float> %i.gc, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gj, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gi)
  store <4 x float> %i.gk, ptr %i.dh, align 16
  %i.gl = load <4 x float>, ptr %i.di, align 16   ; 4 uses
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gn = fmul <4 x float> %i.fh, %i.gm
  %i.go = shufflevector <4 x float> %i.gl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ew, <4 x float> %i.go, <4 x float> %i.gn)
  %i.gq = shufflevector <4 x float> %i.gl, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fs, <4 x float> %i.gq, <4 x float> %i.gp)
  %i.gs = shufflevector <4 x float> %i.gl, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gs, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gr)
  store <4 x float> %i.gt, ptr %i.di, align 16
  %i.gu = load <4 x float>, ptr %i.dj, align 16   ; 4 uses
  %i.gv = shufflevector <4 x float> %i.gu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gw = fmul <4 x float> %i.fh, %i.gv
  %i.gx = shufflevector <4 x float> %i.gu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ew, <4 x float> %i.gx, <4 x float> %i.gw)
  %i.gz = shufflevector <4 x float> %i.gu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ha = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fs, <4 x float> %i.gz, <4 x float> %i.gy)
  %i.hb = shufflevector <4 x float> %i.gu, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.hc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hb, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.ha)
  store <4 x float> %i.hc, ptr %i.dj, align 16
  call void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.hd = load float, ptr %i.dl, align 4
  %i.he = fpext float %i.hd to double             ; 3 uses
  %i.hf = load ptr, ptr %i.be, align 8
  %i.hg = getelementptr inbounds nuw [24 x i8], ptr %i.hf, i64 %.04152 ; 2 uses
  store double %i.he, ptr %i.hg, align 8
  %i.hh = load ptr, ptr %i.i, align 8
  %i.hi = getelementptr inbounds nuw [32 x i8], ptr %i.hh, i64 %.04152 ; 2 uses
  store double %i.he, ptr %i.hi, align 8
  %i.hj = load ptr, ptr %i.k, align 8
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr %i.hj, i64 %.04152 ; 2 uses
  store double %i.he, ptr %i.hk, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.hl, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, ptr noundef nonnull align 16 dereferenceable(16) %3, i64 16, i1 false)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.hn, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.ho = add nuw i64 %.04152, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ho, %i.as
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !66

bb.n:                                             ; preds = %bb.h, %bb.d
  %.sink = phi ptr [ %i.aj, %bb.h ], [ %i.f, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.h ], [ %i.g, %bb.d ]
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

_ZN6Assimp4Ogre4BoneD2Ev.exit:                    ; preds = %_ZNSt6vectorItSaItEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 248) #31
  br label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp4Ogre4BoneD2Ev.exit, %.lr.ph
  store ptr null, ptr %.sroa.027.032, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.027.032, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge36:                                    ; preds = %bb.q
  %.pre38 = load ptr, ptr %i.e, align 8           ; 2 uses
  %.pre39 = load ptr, ptr %i.g, align 8
  %i.y = icmp eq ptr %.pre39, %.pre38
  br i1 %i.y, label %_ZNSt6vectorIPN6Assimp4Ogre9AnimationESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPPN6Assimp4Ogre9AnimationES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN6Assimp4Ogre9AnimationES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %._crit_edge36
  store ptr %.pre38, ptr %i.g, align 8
  br label %_ZNSt6vectorIPN6Assimp4Ogre9AnimationESaIS3_EE5clearEv.exit

_ZNSt6vectorIPN6Assimp4Ogre9AnimationESaIS3_EE5clearEv.exit: ; preds = %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE5clearEv.exit, %._crit_edge36, %_ZSt8_DestroyIPPN6Assimp4Ogre9AnimationES3_EvT_S5_RSaIT0_E.exit.i.i
  ret void

.lr.ph35:                                         ; preds = %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE5clearEv.exit, %bb.q
  %.sroa.023.034 = phi ptr [ %i.df, %bb.q ], [ %i.f, %_ZNSt6vectorIPN6Assimp4Ogre4BoneESaIS3_EE5clearEv.exit ] ; 3 uses
  %i.z = load ptr, ptr %.sroa.023.034, align 8    ; 9 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.q, label %bb.e

bb.e:                                             ; preds = %.lr.ph35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 88 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp4Ogre20VertexAnimationTrackES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZN6Assimp4Ogre20VertexAnimationTrackD2Ev.exit
  %.05.i.i.i.i = phi ptr [ %i.cm, %_ZN6Assimp4Ogre20VertexAnimationTrackD2Ev.exit ], [ %i.ac, %bb.e ] ; 11 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 88
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i14, label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 104
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #31
  br label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EED2Ev.exit.i: ; preds = %bb.f, %.lr.ph.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not4.i.i.i.i15 = icmp eq ptr %i.an, %i.ap
  br i1 %.not4.i.i.i.i15, label %_ZSt8_DestroyIPN6Assimp4Ogre13MorphKeyFrameES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i16
end_hunk_0
