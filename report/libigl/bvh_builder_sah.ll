Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_sah?download=true
inline.NumInlined: 1131
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN6embree4sse218BVHNBuilderVirtualILi4EE12BVHNBuilderTINS0_10CreateLeafILi4ENS_9TriangleMILi4EEEEEE10createLeafEPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit: ; preds = %bb.f, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  tail call void @__clang_call_terminate(ptr %i.cf) #20
  unreachable

bb.m:                                             ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load i8, ptr %i.r, align 8, !range !13, !noundef !14
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.n, label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit14

bb.n:                                             ; preds = %bb.m
  %i.ci = load ptr, ptr %5, align 8, !nonnull !14, !align !17
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit14 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  tail call void @__clang_call_terminate(ptr %i.ck) #20
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit14:        ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit

bb.p:                                             ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit9
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.cl, %bb.p ], [ %i.cd, %bb.k ]
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %eh.lpad-body

_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit: ; preds = %bb.a, %_ZN6embree4LockINS_8MutexSysEED2Ev.exit14
  %i.cm = load i64, ptr %i.a, align 8             ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = add i64 %i.co, %i.cm
  store i64 %i.cp, ptr %i.cn, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 9 uses
  %i.cr = load i64, ptr %i.cq, align 16           ; 3 uses
  %i.cs = sub i64 0, %i.cr
  %i.ct = and i64 %i.cs, 15                       ; 2 uses
  %i.cu = add i64 %i.cr, %i.cm
  %i.cv = add i64 %i.cu, %i.ct                    ; 3 uses
  store i64 %i.cv, ptr %i.cq, align 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 5 uses
  %i.cx = load i64, ptr %i.cw, align 8
  %.not.i = icmp ugt i64 %i.cv, %i.cx
  br i1 %.not.i, label %bb.r, label %bb.q, !prof !16

bb.q:                                             ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 16
  %i.da = add i64 %i.cz, %i.ct
  store i64 %i.da, ptr %i.cy, align 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = sub i64 %i.cv, %i.cm
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dd
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit

bb.r:                                             ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit
  store i64 %i.cr, ptr %i.cq, align 16
  %i.df = shl i64 %i.cm, 2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 32           ; 2 uses
  %i.di = icmp ugt i64 %i.df, %i.dh
  br i1 %i.di, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dj = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 64, i1 noundef zeroext false)
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.dh, ptr %i.b, align 8
  %i.dk = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext true) ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.dk, ptr %i.dl, align 8
  %i.dm = load i64, ptr %i.cw, align 8
  %i.dn = load i64, ptr %i.cq, align 16
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 6 uses
  %i.dq = load i64, ptr %i.dp, align 16
  %i.dr = add i64 %i.dq, %i.do                    ; 2 uses
  store i64 %i.dr, ptr %i.dp, align 16
  %i.ds = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.ds, ptr %i.cw, align 8
  store i64 %i.cm, ptr %i.cq, align 16
  %.not23.i = icmp ugt i64 %i.cm, %i.ds
  br i1 %.not23.i, label %bb.v, label %bb.u, !prof !16

bb.u:                                             ; preds = %bb.t
  store i64 %i.dr, ptr %i.dp, align 16
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  store i64 0, ptr %i.cq, align 16
  %i.dt = load i64, ptr %i.dg, align 32
  store i64 %i.dt, ptr %i.b, align 8
  %i.du = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext false) ; 2 uses
  store ptr %i.du, ptr %i.dl, align 8
  %i.dv = load i64, ptr %i.cw, align 8
  %i.dw = load i64, ptr %i.cq, align 16
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = load i64, ptr %i.dp, align 16
  %i.dz = add i64 %i.dy, %i.dx                    ; 2 uses
  store i64 %i.dz, ptr %i.dp, align 16
  %i.ea = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.ea, ptr %i.cw, align 8
  store i64 %i.cm, ptr %i.cq, align 16
  %.not24.i = icmp ugt i64 %i.cm, %i.ea
  br i1 %.not24.i, label %bb.x, label %bb.w, !prof !16

bb.w:                                             ; preds = %bb.v
  store i64 %i.dz, ptr %i.dp, align 16
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  store i64 0, ptr %i.cq, align 16
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  %.0.i5 = phi ptr [ %i.dk, %bb.u ], [ %i.du, %bb.w ], [ null, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit

_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit: ; preds = %bb.q, %bb.s, %bb.y
  %.1.i = phi ptr [ %i.de, %bb.q ], [ %i.dj, %bb.s ], [ %.0.i5, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %_ZNK6embree4sse210CreateLeafILi4ENS_9TriangleMILi4EEEEclEPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorE.exit, label %.lr.ph36

.lr.ph36:                                         ; preds = %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit
  %.0.i35 = phi i64 [ %i.lh, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit ], [ 0, %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit ] ; 2 uses
  %.034 = phi i64 [ %.1.lcssa, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit ], [ %i.f, %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit ] ; 7 uses
  %i.eb = getelementptr inbounds nuw [176 x i8], ptr %.1.i, i64 %.0.i35 ; 11 uses
  %i.ec = load i64, ptr %i.d, align 8             ; 4 uses
  %i.ed = icmp ult i64 %.034, %i.ec
  br i1 %i.ed, label %.lr.ph, label %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit

.lr.ph:                                           ; preds = %.lr.ph36
  %i.ee = load ptr, ptr %i.c, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 104
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 488
  %i.ei = load ptr, ptr %i.eh, align 8            ; 4 uses
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.034 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %i.el = load i32, ptr %i.ek, align 4            ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 28
  %i.en = load i32, ptr %i.em, align 4            ; 2 uses
  %i.eo = zext i32 %i.el to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8            ; 4 uses
  %i.er = zext i32 %i.en to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 88
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 104
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = mul i64 %i.ev, %i.er
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ew ; 3 uses
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 144
  %i.fb = load ptr, ptr %i.fa, align 8, !noalias !47 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eq, i64 160
  %i.fd = load i64, ptr %i.fc, align 8, !noalias !47 ; 3 uses
  %i.fe = mul i64 %i.fd, %i.ez
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fe
  %i.fg = load <4 x float>, ptr %i.ff, align 1, !noalias !48 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = zext i32 %i.fi to i64
  %i.fk = mul i64 %i.fd, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fk
  %i.fm = load <4 x float>, ptr %i.fl, align 1, !noalias !49 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fo = load i32, ptr %i.fn, align 4
  %i.fp = zext i32 %i.fo to i64
  %i.fq = mul i64 %i.fd, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fq
  %i.fs = load <4 x float>, ptr %i.fr, align 1, !noalias !50 ; 3 uses
  %.sroa.074.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.el, i64 0 ; 2 uses
  %.sroa.071.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.en, i64 0 ; 2 uses
  %.sroa.065.0.vec.insert = shufflevector <4 x float> %i.fg, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.867.16.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fg, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.1369.32.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fg, <4 x i32> <i32 6, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.059.0.vec.insert = shufflevector <4 x float> %i.fm, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.861.16.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fm, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.1363.32.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fm, <4 x i32> <i32 6, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.0.0.vec.insert = shufflevector <4 x float> %i.fs, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.8.16.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fs, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.13.32.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fs, <4 x i32> <i32 6, i32 1, i32 2, i32 3> ; 2 uses
  %i.ft = add nuw i64 %.034, 1                    ; 3 uses
  %i.fu = icmp ult i64 %i.ft, %i.ec
  br i1 %i.fu, label %bb.z, label %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit

bb.z:                                             ; preds = %.lr.ph
  %i.fv = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.ft ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  %i.fx = load i32, ptr %i.fw, align 4            ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 28
  %i.fz = load i32, ptr %i.fy, align 4            ; 2 uses
  %i.ga = zext i32 %i.fx to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ga
  %i.gc = load ptr, ptr %i.gb, align 8            ; 4 uses
  %i.gd = zext i32 %i.fz to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 88
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 104
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = mul i64 %i.gh, %i.gd
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gi ; 3 uses
  %i.gk = load i32, ptr %i.gj, align 4
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gc, i64 144
  %i.gn = load ptr, ptr %i.gm, align 8, !noalias !47 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 160
  %i.gp = load i64, ptr %i.go, align 8, !noalias !47 ; 3 uses
  %i.gq = mul i64 %i.gp, %i.gl
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gq
  %i.gs = load <4 x float>, ptr %i.gr, align 1, !noalias !48 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gu = load i32, ptr %i.gt, align 4
  %i.gv = zext i32 %i.gu to i64
  %i.gw = mul i64 %i.gp, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gw
  %i.gy = load <4 x float>, ptr %i.gx, align 1, !noalias !49 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.ha = load i32, ptr %i.gz, align 4
  %i.hb = zext i32 %i.ha to i64
  %i.hc = mul i64 %i.gp, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.hc
  %i.he = load <4 x float>, ptr %i.hd, align 1, !noalias !50 ; 3 uses
  %.sroa.074.4.vec.insert = insertelement <4 x i32> %.sroa.074.0.vec.insert, i32 %i.fx, i64 1 ; 2 uses
  %.sroa.071.4.vec.insert = insertelement <4 x i32> %.sroa.071.0.vec.insert, i32 %i.fz, i64 1 ; 2 uses
  %.sroa.065.4.vec.insert = shufflevector <4 x float> %.sroa.065.0.vec.insert, <4 x float> %i.gs, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.867.20.vec.insert = shufflevector <4 x float> %.sroa.867.16.vec.insert, <4 x float> %i.gs, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.1369.36.vec.insert = shufflevector <4 x float> %.sroa.1369.32.vec.insert, <4 x float> %i.gs, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.059.4.vec.insert = shufflevector <4 x float> %.sroa.059.0.vec.insert, <4 x float> %i.gy, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.861.20.vec.insert = shufflevector <4 x float> %.sroa.861.16.vec.insert, <4 x float> %i.gy, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.1363.36.vec.insert = shufflevector <4 x float> %.sroa.1363.32.vec.insert, <4 x float> %i.gy, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.0.4.vec.insert = shufflevector <4 x float> %.sroa.0.0.vec.insert, <4 x float> %i.he, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8.20.vec.insert = shufflevector <4 x float> %.sroa.8.16.vec.insert, <4 x float> %i.he, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13.36.vec.insert = shufflevector <4 x float> %.sroa.13.32.vec.insert, <4 x float> %i.he, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %i.hf = add nuw i64 %.034, 2                    ; 3 uses
  %i.hg = icmp ult i64 %i.hf, %i.ec
  br i1 %i.hg, label %bb.aa, label %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.hh = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.hf ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  %i.hj = load i32, ptr %i.hi, align 4            ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 28
  %i.hl = load i32, ptr %i.hk, align 4            ; 2 uses
  %i.hm = zext i32 %i.hj to i64
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.hm
  %i.ho = load ptr, ptr %i.hn, align 8            ; 4 uses
  %i.hp = zext i32 %i.hl to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 88
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 104
  %i.ht = load i64, ptr %i.hs, align 8
  %i.hu = mul i64 %i.ht, %i.hp
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hu ; 3 uses
  %i.hw = load i32, ptr %i.hv, align 4
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ho, i64 144
  %i.hz = load ptr, ptr %i.hy, align 8, !noalias !47 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ho, i64 160
  %i.ib = load i64, ptr %i.ia, align 8, !noalias !47 ; 3 uses
  %i.ic = mul i64 %i.ib, %i.hx
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ic
  %i.ie = load <4 x float>, ptr %i.id, align 1, !noalias !48 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = zext i32 %i.ig to i64
  %i.ii = mul i64 %i.ib, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ii
  %i.ik = load <4 x float>, ptr %i.ij, align 1, !noalias !49 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.im = load i32, ptr %i.il, align 4
  %i.in = zext i32 %i.im to i64
  %i.io = mul i64 %i.ib, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.io
  %i.iq = load <4 x float>, ptr %i.ip, align 1, !noalias !50 ; 3 uses
  %.sroa.074.8.vec.insert = insertelement <4 x i32> %.sroa.074.4.vec.insert, i32 %i.hj, i64 2 ; 2 uses
  %.sroa.071.8.vec.insert = insertelement <4 x i32> %.sroa.071.4.vec.insert, i32 %i.hl, i64 2 ; 2 uses
  %.sroa.065.8.vec.insert = shufflevector <4 x float> %.sroa.065.4.vec.insert, <4 x float> %i.ie, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.867.24.vec.insert = shufflevector <4 x float> %.sroa.867.20.vec.insert, <4 x float> %i.ie, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.1369.40.vec.insert = shufflevector <4 x float> %.sroa.1369.36.vec.insert, <4 x float> %i.ie, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.059.8.vec.insert = shufflevector <4 x float> %.sroa.059.4.vec.insert, <4 x float> %i.ik, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.861.24.vec.insert = shufflevector <4 x float> %.sroa.861.20.vec.insert, <4 x float> %i.ik, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.1363.40.vec.insert = shufflevector <4 x float> %.sroa.1363.36.vec.insert, <4 x float> %i.ik, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.0.8.vec.insert = shufflevector <4 x float> %.sroa.0.4.vec.insert, <4 x float> %i.iq, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8.24.vec.insert = shufflevector <4 x float> %.sroa.8.20.vec.insert, <4 x float> %i.iq, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13.40.vec.insert = shufflevector <4 x float> %.sroa.13.36.vec.insert, <4 x float> %i.iq, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %i.ir = add nuw i64 %.034, 3                    ; 3 uses
  %i.is = icmp ult i64 %i.ir, %i.ec
  br i1 %i.is, label %bb.ab, label %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.it = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.ir ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 12
  %i.iv = load i32, ptr %i.iu, align 4            ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 28
  %i.ix = load i32, ptr %i.iw, align 4            ; 2 uses
  %i.iy = zext i32 %i.iv to i64
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.iy
  %i.ja = load ptr, ptr %i.iz, align 8            ; 4 uses
  %i.jb = zext i32 %i.ix to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 88
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 104
  %i.jf = load i64, ptr %i.je, align 8
  %i.jg = mul i64 %i.jf, %i.jb
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.jg ; 3 uses
  %i.ji = load i32, ptr %i.jh, align 4
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ja, i64 144
  %i.jl = load ptr, ptr %i.jk, align 8, !noalias !47 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ja, i64 160
  %i.jn = load i64, ptr %i.jm, align 8, !noalias !47 ; 3 uses
  %i.jo = mul i64 %i.jn, %i.jj
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jo
  %i.jq = load <4 x float>, ptr %i.jp, align 1, !noalias !48 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.js = load i32, ptr %i.jr, align 4
  %i.jt = zext i32 %i.js to i64
  %i.ju = mul i64 %i.jn, %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.ju
  %i.jw = load <4 x float>, ptr %i.jv, align 1, !noalias !49 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jy = load i32, ptr %i.jx, align 4
  %i.jz = zext i32 %i.jy to i64
  %i.ka = mul i64 %i.jn, %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.ka
  %i.kc = load <4 x float>, ptr %i.kb, align 1, !noalias !50 ; 3 uses
  %.sroa.074.12.vec.insert = insertelement <4 x i32> %.sroa.074.8.vec.insert, i32 %i.iv, i64 3
  %.sroa.071.12.vec.insert = insertelement <4 x i32> %.sroa.071.8.vec.insert, i32 %i.ix, i64 3
  %.sroa.065.12.vec.insert = shufflevector <4 x float> %.sroa.065.8.vec.insert, <4 x float> %i.jq, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.867.28.vec.insert = shufflevector <4 x float> %.sroa.867.24.vec.insert, <4 x float> %i.jq, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.1369.44.vec.insert = shufflevector <4 x float> %.sroa.1369.40.vec.insert, <4 x float> %i.jq, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.059.12.vec.insert = shufflevector <4 x float> %.sroa.059.8.vec.insert, <4 x float> %i.jw, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.861.28.vec.insert = shufflevector <4 x float> %.sroa.861.24.vec.insert, <4 x float> %i.jw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.1363.44.vec.insert = shufflevector <4 x float> %.sroa.1363.40.vec.insert, <4 x float> %i.jw, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.0.12.vec.insert = shufflevector <4 x float> %.sroa.0.8.vec.insert, <4 x float> %i.kc, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8.28.vec.insert = shufflevector <4 x float> %.sroa.8.24.vec.insert, <4 x float> %i.kc, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13.44.vec.insert = shufflevector <4 x float> %.sroa.13.40.vec.insert, <4 x float> %i.kc, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.kd = add nuw i64 %.034, 4
  br label %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit

_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit: ; preds = %bb.ab, %bb.aa, %bb.z, %.lr.ph
  %.sroa.074.0 = phi <4 x i32> [ %.sroa.074.12.vec.insert, %bb.ab ], [ %.sroa.074.8.vec.insert, %bb.aa ], [ %.sroa.074.4.vec.insert, %bb.z ], [ %.sroa.074.0.vec.insert, %.lr.ph ]
  %.sroa.071.0 = phi <4 x i32> [ %.sroa.071.12.vec.insert, %bb.ab ], [ %.sroa.071.8.vec.insert, %bb.aa ], [ %.sroa.071.4.vec.insert, %bb.z ], [ %.sroa.071.0.vec.insert, %.lr.ph ]
  %.sroa.1369.0 = phi <4 x float> [ %.sroa.1369.44.vec.insert, %bb.ab ], [ %.sroa.1369.40.vec.insert, %bb.aa ], [ %.sroa.1369.36.vec.insert, %bb.z ], [ %.sroa.1369.32.vec.insert, %.lr.ph ]
  %.sroa.867.0 = phi <4 x float> [ %.sroa.867.28.vec.insert, %bb.ab ], [ %.sroa.867.24.vec.insert, %bb.aa ], [ %.sroa.867.20.vec.insert, %bb.z ], [ %.sroa.867.16.vec.insert, %.lr.ph ]
  %.sroa.065.0 = phi <4 x float> [ %.sroa.065.12.vec.insert, %bb.ab ], [ %.sroa.065.8.vec.insert, %bb.aa ], [ %.sroa.065.4.vec.insert, %bb.z ], [ %.sroa.065.0.vec.insert, %.lr.ph ]
  %.sroa.1363.0 = phi <4 x float> [ %.sroa.1363.44.vec.insert, %bb.ab ], [ %.sroa.1363.40.vec.insert, %bb.aa ], [ %.sroa.1363.36.vec.insert, %bb.z ], [ %.sroa.1363.32.vec.insert, %.lr.ph ]
  %.sroa.861.0 = phi <4 x float> [ %.sroa.861.28.vec.insert, %bb.ab ], [ %.sroa.861.24.vec.insert, %bb.aa ], [ %.sroa.861.20.vec.insert, %bb.z ], [ %.sroa.861.16.vec.insert, %.lr.ph ]
  %.sroa.059.0 = phi <4 x float> [ %.sroa.059.12.vec.insert, %bb.ab ], [ %.sroa.059.8.vec.insert, %bb.aa ], [ %.sroa.059.4.vec.insert, %bb.z ], [ %.sroa.059.0.vec.insert, %.lr.ph ]
  %.sroa.13.0 = phi <4 x float> [ %.sroa.13.44.vec.insert, %bb.ab ], [ %.sroa.13.40.vec.insert, %bb.aa ], [ %.sroa.13.36.vec.insert, %bb.z ], [ %.sroa.13.32.vec.insert, %.lr.ph ]
  %.sroa.8.0 = phi <4 x float> [ %.sroa.8.28.vec.insert, %bb.ab ], [ %.sroa.8.24.vec.insert, %bb.aa ], [ %.sroa.8.20.vec.insert, %bb.z ], [ %.sroa.8.16.vec.insert, %.lr.ph ]
  %.sroa.0.0 = phi <4 x float> [ %.sroa.0.12.vec.insert, %bb.ab ], [ %.sroa.0.8.vec.insert, %bb.aa ], [ %.sroa.0.4.vec.insert, %bb.z ], [ %.sroa.0.0.vec.insert, %.lr.ph ]
  %.lcssa = phi i64 [ %i.kd, %bb.ab ], [ %i.ir, %bb.aa ], [ %i.hf, %bb.z ], [ %i.ft, %.lr.ph ]
  %i.ke = bitcast <4 x i32> %.sroa.074.0 to <2 x i64>
  %i.kf = bitcast <4 x i32> %.sroa.071.0 to <2 x i64>
  br label %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit

_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit: ; preds = %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit, %.lr.ph36
  %i.kg = phi <2 x i64> [ splat (i64 -1), %.lr.ph36 ], [ %i.kf, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kh = phi <2 x i64> [ splat (i64 -1), %.lr.ph36 ], [ %i.ke, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.ki = phi <4 x float> [ zeroinitializer, %.lr.ph36 ], [ %.sroa.13.0, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kj = phi <4 x float> [ zeroinitializer, %.lr.ph36 ], [ %.sroa.8.0, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kk = phi <4 x float> [ zeroinitializer, %.lr.ph36 ], [ %.sroa.0.0, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kl = phi <4 x float> [ zeroinitializer, %.lr.ph36 ], [ %.sroa.1363.0, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.km = phi <4 x float> [ zeroinitializer, %.lr.ph36 ], [ %.sroa.861.0, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kn = phi <4 x float> [ zeroinitializer, %.lr.ph36 ], [ %.sroa.059.0, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.ko = phi <4 x float> [ zeroinitializer, %.lr.ph36 ], [ %.sroa.1369.0, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ] ; 3 uses
  %i.kp = phi <4 x float> [ zeroinitializer, %.lr.ph36 ], [ %.sroa.867.0, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ] ; 3 uses
  %i.kq = phi <4 x float> [ zeroinitializer, %.lr.ph36 ], [ %.sroa.065.0, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ] ; 3 uses
  %.1.lcssa = phi i64 [ %.034, %.lr.ph36 ], [ %.lcssa, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kr = fsub <4 x float> %i.kq, %i.kn
  %i.ks = fsub <4 x float> %i.kp, %i.km
  %i.kt = fsub <4 x float> %i.ko, %i.kl
  %i.ku = fsub <4 x float> %i.kk, %i.kq
  %i.kv = fsub <4 x float> %i.kj, %i.kp
  %i.kw = fsub <4 x float> %i.ki, %i.ko
  store <4 x float> %i.kq, ptr %i.eb, align 16
  %i.kx = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <4 x float> %i.kp, ptr %i.kx, align 16
  %i.ky = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  store <4 x float> %i.ko, ptr %i.ky, align 16
end_hunk_0
begin_hunk_1_@_ZN6embree4sse218BVHNBuilderVirtualILi4EE12BVHNBuilderTINS0_10CreateLeafILi4ENS_10TriangleMvILi4EEEEEE10createLeafEPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body.i

_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  tail call void @__clang_call_terminate(ptr %i.cf) #20
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit:          ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load i8, ptr %i.r, align 8, !range !13, !noundef !14
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.m, label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit14

bb.m:                                             ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit
  %i.ci = load ptr, ptr %5, align 8, !nonnull !14, !align !17
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit14 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  tail call void @__clang_call_terminate(ptr %i.ck) #20
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit14:        ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i

bb.o:                                             ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit11
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cl, %bb.o ], [ %i.cd, %bb.k ]
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %eh.lpad-body.i

_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i: ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit14, %bb.a
  %i.cm = load i64, ptr %i.a, align 8             ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = add i64 %i.co, %i.cm
  store i64 %i.cp, ptr %i.cn, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 9 uses
  %i.cr = load i64, ptr %i.cq, align 16           ; 3 uses
  %i.cs = sub i64 0, %i.cr
  %i.ct = and i64 %i.cs, 15                       ; 2 uses
  %i.cu = add i64 %i.cr, %i.cm
  %i.cv = add i64 %i.cu, %i.ct                    ; 3 uses
  store i64 %i.cv, ptr %i.cq, align 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 5 uses
  %i.cx = load i64, ptr %i.cw, align 8
  %.not.i.i = icmp ugt i64 %i.cv, %i.cx
  br i1 %.not.i.i, label %bb.q, label %bb.p, !prof !16

bb.p:                                             ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 16
  %i.da = add i64 %i.cz, %i.ct
  store i64 %i.da, ptr %i.cy, align 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = sub i64 %i.cv, %i.cm
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dd
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i

bb.q:                                             ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i
  store i64 %i.cr, ptr %i.cq, align 16
  %i.df = shl i64 %i.cm, 2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 32           ; 2 uses
  %i.di = icmp ugt i64 %i.df, %i.dh
  br i1 %i.di, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dj = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 64, i1 noundef zeroext false)
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.dh, ptr %i.b, align 8
  %i.dk = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext true) ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.dk, ptr %i.dl, align 8
  %i.dm = load i64, ptr %i.cw, align 8
  %i.dn = load i64, ptr %i.cq, align 16
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 6 uses
  %i.dq = load i64, ptr %i.dp, align 16
  %i.dr = add i64 %i.dq, %i.do                    ; 2 uses
  store i64 %i.dr, ptr %i.dp, align 16
  %i.ds = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.ds, ptr %i.cw, align 8
  store i64 %i.cm, ptr %i.cq, align 16
  %.not23.i.i = icmp ugt i64 %i.cm, %i.ds
  br i1 %.not23.i.i, label %bb.u, label %bb.t, !prof !16

bb.t:                                             ; preds = %bb.s
  store i64 %i.dr, ptr %i.dp, align 16
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  store i64 0, ptr %i.cq, align 16
  %i.dt = load i64, ptr %i.dg, align 32
  store i64 %i.dt, ptr %i.b, align 8
  %i.du = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext false) ; 2 uses
  store ptr %i.du, ptr %i.dl, align 8
  %i.dv = load i64, ptr %i.cw, align 8
  %i.dw = load i64, ptr %i.cq, align 16
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = load i64, ptr %i.dp, align 16
  %i.dz = add i64 %i.dy, %i.dx                    ; 2 uses
  store i64 %i.dz, ptr %i.dp, align 16
  %i.ea = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.ea, ptr %i.cw, align 8
  store i64 %i.cm, ptr %i.cq, align 16
  %.not24.i.i = icmp ugt i64 %i.cm, %i.ea
  br i1 %.not24.i.i, label %bb.w, label %bb.v, !prof !16

bb.v:                                             ; preds = %bb.u
  store i64 %i.dz, ptr %i.dp, align 16
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  store i64 0, ptr %i.cq, align 16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t
  %.0.i.i = phi ptr [ %i.dk, %bb.t ], [ %i.du, %bb.v ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i

_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i: ; preds = %bb.x, %bb.r, %bb.p
  %.1.i.i = phi ptr [ %i.de, %bb.p ], [ %i.dj, %bb.r ], [ %.0.i.i, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %_ZNK6embree4sse210CreateLeafILi4ENS_10TriangleMvILi4EEEEclEPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorE.exit, label %.lr.ph30

.lr.ph30:                                         ; preds = %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit
  %.0.i29 = phi i64 [ %i.lb, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit ], [ 0, %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i ] ; 2 uses
  %.028 = phi i64 [ %.1.lcssa, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit ], [ %i.f, %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i ] ; 7 uses
  %i.eb = getelementptr inbounds nuw [176 x i8], ptr %.1.i.i, i64 %.0.i29 ; 11 uses
  %i.ec = load i64, ptr %i.d, align 8             ; 4 uses
  %i.ed = icmp ult i64 %.028, %i.ec
  br i1 %i.ed, label %.lr.ph, label %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit

.lr.ph:                                           ; preds = %.lr.ph30
  %i.ee = load ptr, ptr %i.c, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 104
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 488
  %i.ei = load ptr, ptr %i.eh, align 8            ; 4 uses
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.028 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %i.el = load i32, ptr %i.ek, align 4            ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 28
  %i.en = load i32, ptr %i.em, align 4            ; 2 uses
  %i.eo = zext i32 %i.el to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8            ; 4 uses
  %i.er = zext i32 %i.en to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 88
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 104
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = mul i64 %i.ev, %i.er
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ew ; 3 uses
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 144
  %i.fb = load ptr, ptr %i.fa, align 8, !noalias !78 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eq, i64 160
  %i.fd = load i64, ptr %i.fc, align 8, !noalias !78 ; 3 uses
  %i.fe = mul i64 %i.fd, %i.ez
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fe
  %i.fg = load <4 x float>, ptr %i.ff, align 1, !noalias !79 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = zext i32 %i.fi to i64
  %i.fk = mul i64 %i.fd, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fk
  %i.fm = load <4 x float>, ptr %i.fl, align 1, !noalias !80 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fo = load i32, ptr %i.fn, align 4
  %i.fp = zext i32 %i.fo to i64
  %i.fq = mul i64 %i.fd, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fq
  %i.fs = load <4 x float>, ptr %i.fr, align 1, !noalias !81 ; 3 uses
  %.sroa.068.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.el, i64 0 ; 2 uses
  %.sroa.065.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.en, i64 0 ; 2 uses
  %.sroa.059.0.vec.insert = shufflevector <4 x float> %i.fg, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.861.16.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fg, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.1363.32.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fg, <4 x i32> <i32 6, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.053.0.vec.insert = shufflevector <4 x float> %i.fm, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.855.16.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fm, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.1357.32.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fm, <4 x i32> <i32 6, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.0.0.vec.insert = shufflevector <4 x float> %i.fs, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.8.16.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fs, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.13.32.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fs, <4 x i32> <i32 6, i32 1, i32 2, i32 3> ; 2 uses
  %i.ft = add nuw i64 %.028, 1                    ; 3 uses
  %i.fu = icmp ult i64 %i.ft, %i.ec
  br i1 %i.fu, label %bb.y, label %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit

bb.y:                                             ; preds = %.lr.ph
  %i.fv = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.ft ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 12
  %i.fx = load i32, ptr %i.fw, align 4            ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 28
  %i.fz = load i32, ptr %i.fy, align 4            ; 2 uses
  %i.ga = zext i32 %i.fx to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ga
  %i.gc = load ptr, ptr %i.gb, align 8            ; 4 uses
  %i.gd = zext i32 %i.fz to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 88
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 104
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = mul i64 %i.gh, %i.gd
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gi ; 3 uses
  %i.gk = load i32, ptr %i.gj, align 4
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gc, i64 144
  %i.gn = load ptr, ptr %i.gm, align 8, !noalias !78 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 160
  %i.gp = load i64, ptr %i.go, align 8, !noalias !78 ; 3 uses
  %i.gq = mul i64 %i.gp, %i.gl
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gq
  %i.gs = load <4 x float>, ptr %i.gr, align 1, !noalias !79 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gu = load i32, ptr %i.gt, align 4
  %i.gv = zext i32 %i.gu to i64
  %i.gw = mul i64 %i.gp, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gw
  %i.gy = load <4 x float>, ptr %i.gx, align 1, !noalias !80 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.ha = load i32, ptr %i.gz, align 4
  %i.hb = zext i32 %i.ha to i64
  %i.hc = mul i64 %i.gp, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.hc
  %i.he = load <4 x float>, ptr %i.hd, align 1, !noalias !81 ; 3 uses
  %.sroa.068.4.vec.insert = insertelement <4 x i32> %.sroa.068.0.vec.insert, i32 %i.fx, i64 1 ; 2 uses
  %.sroa.065.4.vec.insert = insertelement <4 x i32> %.sroa.065.0.vec.insert, i32 %i.fz, i64 1 ; 2 uses
  %.sroa.059.4.vec.insert = shufflevector <4 x float> %.sroa.059.0.vec.insert, <4 x float> %i.gs, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.861.20.vec.insert = shufflevector <4 x float> %.sroa.861.16.vec.insert, <4 x float> %i.gs, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.1363.36.vec.insert = shufflevector <4 x float> %.sroa.1363.32.vec.insert, <4 x float> %i.gs, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.053.4.vec.insert = shufflevector <4 x float> %.sroa.053.0.vec.insert, <4 x float> %i.gy, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.855.20.vec.insert = shufflevector <4 x float> %.sroa.855.16.vec.insert, <4 x float> %i.gy, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.1357.36.vec.insert = shufflevector <4 x float> %.sroa.1357.32.vec.insert, <4 x float> %i.gy, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.0.4.vec.insert = shufflevector <4 x float> %.sroa.0.0.vec.insert, <4 x float> %i.he, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8.20.vec.insert = shufflevector <4 x float> %.sroa.8.16.vec.insert, <4 x float> %i.he, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13.36.vec.insert = shufflevector <4 x float> %.sroa.13.32.vec.insert, <4 x float> %i.he, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %i.hf = add nuw i64 %.028, 2                    ; 3 uses
  %i.hg = icmp ult i64 %i.hf, %i.ec
  br i1 %i.hg, label %bb.z, label %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit

bb.z:                                             ; preds = %bb.y
  %i.hh = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.hf ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  %i.hj = load i32, ptr %i.hi, align 4            ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 28
  %i.hl = load i32, ptr %i.hk, align 4            ; 2 uses
  %i.hm = zext i32 %i.hj to i64
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.hm
  %i.ho = load ptr, ptr %i.hn, align 8            ; 4 uses
  %i.hp = zext i32 %i.hl to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 88
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 104
  %i.ht = load i64, ptr %i.hs, align 8
  %i.hu = mul i64 %i.ht, %i.hp
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hu ; 3 uses
  %i.hw = load i32, ptr %i.hv, align 4
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ho, i64 144
  %i.hz = load ptr, ptr %i.hy, align 8, !noalias !78 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ho, i64 160
  %i.ib = load i64, ptr %i.ia, align 8, !noalias !78 ; 3 uses
  %i.ic = mul i64 %i.ib, %i.hx
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ic
  %i.ie = load <4 x float>, ptr %i.id, align 1, !noalias !79 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = zext i32 %i.ig to i64
  %i.ii = mul i64 %i.ib, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ii
  %i.ik = load <4 x float>, ptr %i.ij, align 1, !noalias !80 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.im = load i32, ptr %i.il, align 4
  %i.in = zext i32 %i.im to i64
  %i.io = mul i64 %i.ib, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.io
  %i.iq = load <4 x float>, ptr %i.ip, align 1, !noalias !81 ; 3 uses
  %.sroa.068.8.vec.insert = insertelement <4 x i32> %.sroa.068.4.vec.insert, i32 %i.hj, i64 2 ; 2 uses
  %.sroa.065.8.vec.insert = insertelement <4 x i32> %.sroa.065.4.vec.insert, i32 %i.hl, i64 2 ; 2 uses
  %.sroa.059.8.vec.insert = shufflevector <4 x float> %.sroa.059.4.vec.insert, <4 x float> %i.ie, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.861.24.vec.insert = shufflevector <4 x float> %.sroa.861.20.vec.insert, <4 x float> %i.ie, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.1363.40.vec.insert = shufflevector <4 x float> %.sroa.1363.36.vec.insert, <4 x float> %i.ie, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.053.8.vec.insert = shufflevector <4 x float> %.sroa.053.4.vec.insert, <4 x float> %i.ik, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.855.24.vec.insert = shufflevector <4 x float> %.sroa.855.20.vec.insert, <4 x float> %i.ik, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.1357.40.vec.insert = shufflevector <4 x float> %.sroa.1357.36.vec.insert, <4 x float> %i.ik, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.0.8.vec.insert = shufflevector <4 x float> %.sroa.0.4.vec.insert, <4 x float> %i.iq, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8.24.vec.insert = shufflevector <4 x float> %.sroa.8.20.vec.insert, <4 x float> %i.iq, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13.40.vec.insert = shufflevector <4 x float> %.sroa.13.36.vec.insert, <4 x float> %i.iq, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %i.ir = add nuw i64 %.028, 3                    ; 3 uses
  %i.is = icmp ult i64 %i.ir, %i.ec
  br i1 %i.is, label %bb.aa, label %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.it = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.ir ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 12
  %i.iv = load i32, ptr %i.iu, align 4            ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 28
  %i.ix = load i32, ptr %i.iw, align 4            ; 2 uses
  %i.iy = zext i32 %i.iv to i64
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.iy
  %i.ja = load ptr, ptr %i.iz, align 8            ; 4 uses
  %i.jb = zext i32 %i.ix to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 88
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 104
  %i.jf = load i64, ptr %i.je, align 8
  %i.jg = mul i64 %i.jf, %i.jb
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.jg ; 3 uses
  %i.ji = load i32, ptr %i.jh, align 4
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ja, i64 144
  %i.jl = load ptr, ptr %i.jk, align 8, !noalias !78 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ja, i64 160
  %i.jn = load i64, ptr %i.jm, align 8, !noalias !78 ; 3 uses
  %i.jo = mul i64 %i.jn, %i.jj
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jo
  %i.jq = load <4 x float>, ptr %i.jp, align 1, !noalias !79 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.js = load i32, ptr %i.jr, align 4
  %i.jt = zext i32 %i.js to i64
  %i.ju = mul i64 %i.jn, %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.ju
  %i.jw = load <4 x float>, ptr %i.jv, align 1, !noalias !80 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jy = load i32, ptr %i.jx, align 4
  %i.jz = zext i32 %i.jy to i64
  %i.ka = mul i64 %i.jn, %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.ka
  %i.kc = load <4 x float>, ptr %i.kb, align 1, !noalias !81 ; 3 uses
  %.sroa.068.12.vec.insert = insertelement <4 x i32> %.sroa.068.8.vec.insert, i32 %i.iv, i64 3
  %.sroa.065.12.vec.insert = insertelement <4 x i32> %.sroa.065.8.vec.insert, i32 %i.ix, i64 3
  %.sroa.059.12.vec.insert = shufflevector <4 x float> %.sroa.059.8.vec.insert, <4 x float> %i.jq, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.861.28.vec.insert = shufflevector <4 x float> %.sroa.861.24.vec.insert, <4 x float> %i.jq, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.1363.44.vec.insert = shufflevector <4 x float> %.sroa.1363.40.vec.insert, <4 x float> %i.jq, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.053.12.vec.insert = shufflevector <4 x float> %.sroa.053.8.vec.insert, <4 x float> %i.jw, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.855.28.vec.insert = shufflevector <4 x float> %.sroa.855.24.vec.insert, <4 x float> %i.jw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.1357.44.vec.insert = shufflevector <4 x float> %.sroa.1357.40.vec.insert, <4 x float> %i.jw, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.0.12.vec.insert = shufflevector <4 x float> %.sroa.0.8.vec.insert, <4 x float> %i.kc, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8.28.vec.insert = shufflevector <4 x float> %.sroa.8.24.vec.insert, <4 x float> %i.kc, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13.44.vec.insert = shufflevector <4 x float> %.sroa.13.40.vec.insert, <4 x float> %i.kc, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.kd = add nuw i64 %.028, 4
  br label %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit

_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit: ; preds = %bb.aa, %bb.z, %bb.y, %.lr.ph
  %.sroa.068.0 = phi <4 x i32> [ %.sroa.068.12.vec.insert, %bb.aa ], [ %.sroa.068.8.vec.insert, %bb.z ], [ %.sroa.068.4.vec.insert, %bb.y ], [ %.sroa.068.0.vec.insert, %.lr.ph ]
  %.sroa.065.0 = phi <4 x i32> [ %.sroa.065.12.vec.insert, %bb.aa ], [ %.sroa.065.8.vec.insert, %bb.z ], [ %.sroa.065.4.vec.insert, %bb.y ], [ %.sroa.065.0.vec.insert, %.lr.ph ]
  %.sroa.1363.0 = phi <4 x float> [ %.sroa.1363.44.vec.insert, %bb.aa ], [ %.sroa.1363.40.vec.insert, %bb.z ], [ %.sroa.1363.36.vec.insert, %bb.y ], [ %.sroa.1363.32.vec.insert, %.lr.ph ]
  %.sroa.861.0 = phi <4 x float> [ %.sroa.861.28.vec.insert, %bb.aa ], [ %.sroa.861.24.vec.insert, %bb.z ], [ %.sroa.861.20.vec.insert, %bb.y ], [ %.sroa.861.16.vec.insert, %.lr.ph ]
  %.sroa.059.0 = phi <4 x float> [ %.sroa.059.12.vec.insert, %bb.aa ], [ %.sroa.059.8.vec.insert, %bb.z ], [ %.sroa.059.4.vec.insert, %bb.y ], [ %.sroa.059.0.vec.insert, %.lr.ph ]
  %.sroa.1357.0 = phi <4 x float> [ %.sroa.1357.44.vec.insert, %bb.aa ], [ %.sroa.1357.40.vec.insert, %bb.z ], [ %.sroa.1357.36.vec.insert, %bb.y ], [ %.sroa.1357.32.vec.insert, %.lr.ph ]
  %.sroa.855.0 = phi <4 x float> [ %.sroa.855.28.vec.insert, %bb.aa ], [ %.sroa.855.24.vec.insert, %bb.z ], [ %.sroa.855.20.vec.insert, %bb.y ], [ %.sroa.855.16.vec.insert, %.lr.ph ]
  %.sroa.053.0 = phi <4 x float> [ %.sroa.053.12.vec.insert, %bb.aa ], [ %.sroa.053.8.vec.insert, %bb.z ], [ %.sroa.053.4.vec.insert, %bb.y ], [ %.sroa.053.0.vec.insert, %.lr.ph ]
  %.sroa.13.0 = phi <4 x float> [ %.sroa.13.44.vec.insert, %bb.aa ], [ %.sroa.13.40.vec.insert, %bb.z ], [ %.sroa.13.36.vec.insert, %bb.y ], [ %.sroa.13.32.vec.insert, %.lr.ph ]
  %.sroa.8.0 = phi <4 x float> [ %.sroa.8.28.vec.insert, %bb.aa ], [ %.sroa.8.24.vec.insert, %bb.z ], [ %.sroa.8.20.vec.insert, %bb.y ], [ %.sroa.8.16.vec.insert, %.lr.ph ]
  %.sroa.0.0 = phi <4 x float> [ %.sroa.0.12.vec.insert, %bb.aa ], [ %.sroa.0.8.vec.insert, %bb.z ], [ %.sroa.0.4.vec.insert, %bb.y ], [ %.sroa.0.0.vec.insert, %.lr.ph ]
  %.lcssa = phi i64 [ %i.kd, %bb.aa ], [ %i.ir, %bb.z ], [ %i.hf, %bb.y ], [ %i.ft, %.lr.ph ]
  %i.ke = bitcast <4 x i32> %.sroa.068.0 to <2 x i64>
  %i.kf = bitcast <4 x i32> %.sroa.065.0 to <2 x i64>
  br label %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit

_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit: ; preds = %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit, %.lr.ph30
  %i.kg = phi <2 x i64> [ splat (i64 -1), %.lr.ph30 ], [ %i.kf, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kh = phi <2 x i64> [ splat (i64 -1), %.lr.ph30 ], [ %i.ke, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.ki = phi <4 x float> [ zeroinitializer, %.lr.ph30 ], [ %.sroa.13.0, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kj = phi <4 x float> [ zeroinitializer, %.lr.ph30 ], [ %.sroa.8.0, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kk = phi <4 x float> [ zeroinitializer, %.lr.ph30 ], [ %.sroa.0.0, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kl = phi <4 x float> [ zeroinitializer, %.lr.ph30 ], [ %.sroa.1357.0, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.km = phi <4 x float> [ zeroinitializer, %.lr.ph30 ], [ %.sroa.855.0, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kn = phi <4 x float> [ zeroinitializer, %.lr.ph30 ], [ %.sroa.053.0, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.ko = phi <4 x float> [ zeroinitializer, %.lr.ph30 ], [ %.sroa.1363.0, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kp = phi <4 x float> [ zeroinitializer, %.lr.ph30 ], [ %.sroa.861.0, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kq = phi <4 x float> [ zeroinitializer, %.lr.ph30 ], [ %.sroa.059.0, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %.1.lcssa = phi i64 [ %.028, %.lr.ph30 ], [ %.lcssa, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  store <4 x float> %i.kq, ptr %i.eb, align 16
  %i.kr = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <4 x float> %i.kp, ptr %i.kr, align 16
  %i.ks = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  store <4 x float> %i.ko, ptr %i.ks, align 16
  %i.kt = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  store <4 x float> %i.kn, ptr %i.kt, align 16
  %i.ku = getelementptr inbounds nuw i8, ptr %i.eb, i64 64
  store <4 x float> %i.km, ptr %i.ku, align 16
  %i.kv = getelementptr inbounds nuw i8, ptr %i.eb, i64 80
  store <4 x float> %i.kl, ptr %i.kv, align 16
end_hunk_1
begin_hunk_2_@_ZN6embree4sse218BVHNBuilderVirtualILi4EE12BVHNBuilderTINS0_10CreateLeafILi4ENS_6QuadMvILi4EEEEEE10createLeafEPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorE:bb.a

bb.l:                                             ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  tail call void @__clang_call_terminate(ptr %i.cf) #20
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit:          ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load i8, ptr %i.r, align 8, !range !13, !noundef !14
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.m, label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit14

bb.m:                                             ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit
  %i.ci = load ptr, ptr %5, align 8, !nonnull !14, !align !17
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit14 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  tail call void @__clang_call_terminate(ptr %i.ck) #20
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit14:        ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i

bb.o:                                             ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit11
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cl, %bb.o ], [ %i.cd, %bb.k ]
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %eh.lpad-body.i

_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i: ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit14, %bb.a
  %i.cm = load i64, ptr %i.a, align 8             ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = add i64 %i.co, %i.cm
  store i64 %i.cp, ptr %i.cn, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 9 uses
  %i.cr = load i64, ptr %i.cq, align 16           ; 3 uses
  %i.cs = sub i64 0, %i.cr
  %i.ct = and i64 %i.cs, 15                       ; 2 uses
  %i.cu = add i64 %i.cr, %i.cm
  %i.cv = add i64 %i.cu, %i.ct                    ; 3 uses
  store i64 %i.cv, ptr %i.cq, align 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 5 uses
  %i.cx = load i64, ptr %i.cw, align 8
  %.not.i.i = icmp ugt i64 %i.cv, %i.cx
  br i1 %.not.i.i, label %bb.q, label %bb.p, !prof !16

bb.p:                                             ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 16
  %i.da = add i64 %i.cz, %i.ct
  store i64 %i.da, ptr %i.cy, align 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = sub i64 %i.cv, %i.cm
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dd
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i

bb.q:                                             ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i
  store i64 %i.cr, ptr %i.cq, align 16
  %i.df = shl i64 %i.cm, 2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 32           ; 2 uses
  %i.di = icmp ugt i64 %i.df, %i.dh
  br i1 %i.di, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dj = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 64, i1 noundef zeroext false)
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.dh, ptr %i.b, align 8
  %i.dk = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext true) ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.dk, ptr %i.dl, align 8
  %i.dm = load i64, ptr %i.cw, align 8
  %i.dn = load i64, ptr %i.cq, align 16
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 6 uses
  %i.dq = load i64, ptr %i.dp, align 16
  %i.dr = add i64 %i.dq, %i.do                    ; 2 uses
  store i64 %i.dr, ptr %i.dp, align 16
  %i.ds = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.ds, ptr %i.cw, align 8
  store i64 %i.cm, ptr %i.cq, align 16
  %.not23.i.i = icmp ugt i64 %i.cm, %i.ds
  br i1 %.not23.i.i, label %bb.u, label %bb.t, !prof !16

bb.t:                                             ; preds = %bb.s
  store i64 %i.dr, ptr %i.dp, align 16
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  store i64 0, ptr %i.cq, align 16
  %i.dt = load i64, ptr %i.dg, align 32
  store i64 %i.dt, ptr %i.b, align 8
  %i.du = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext false) ; 2 uses
  store ptr %i.du, ptr %i.dl, align 8
  %i.dv = load i64, ptr %i.cw, align 8
  %i.dw = load i64, ptr %i.cq, align 16
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = load i64, ptr %i.dp, align 16
  %i.dz = add i64 %i.dy, %i.dx                    ; 2 uses
  store i64 %i.dz, ptr %i.dp, align 16
  %i.ea = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.ea, ptr %i.cw, align 8
  store i64 %i.cm, ptr %i.cq, align 16
  %.not24.i.i = icmp ugt i64 %i.cm, %i.ea
  br i1 %.not24.i.i, label %bb.w, label %bb.v, !prof !16

bb.v:                                             ; preds = %bb.u
  store i64 %i.dz, ptr %i.dp, align 16
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  store i64 0, ptr %i.cq, align 16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t
  %.0.i.i = phi ptr [ %i.dk, %bb.t ], [ %i.du, %bb.v ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i

_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i: ; preds = %bb.x, %bb.r, %bb.p
  %.1.i.i = phi ptr [ %i.de, %bb.p ], [ %i.dj, %bb.r ], [ %.0.i.i, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %_ZNK6embree4sse210CreateLeafILi4ENS_6QuadMvILi4EEEEclEPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorE.exit, label %.lr.ph32

.lr.ph32:                                         ; preds = %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i, %_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit
  %.0.i31 = phi i64 [ %i.mf, %_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit ], [ 0, %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i ] ; 2 uses
  %.030 = phi i64 [ %.1.lcssa, %_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit ], [ %i.f, %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i ] ; 7 uses
  %i.eb = getelementptr inbounds nuw [224 x i8], ptr %.1.i.i, i64 %.0.i31 ; 14 uses
  %i.ec = load i64, ptr %i.d, align 8             ; 4 uses
  %i.ed = icmp ult i64 %.030, %i.ec
  br i1 %i.ed, label %.lr.ph, label %_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit

.lr.ph:                                           ; preds = %.lr.ph32
  %i.ee = load ptr, ptr %i.c, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 104
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 488
  %i.ei = load ptr, ptr %i.eh, align 8            ; 4 uses
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.030 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %i.el = load i32, ptr %i.ek, align 4            ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 28
  %i.en = load i32, ptr %i.em, align 4            ; 2 uses
  %i.eo = zext i32 %i.el to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8            ; 4 uses
  %i.er = zext i32 %i.en to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 88
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 104
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = mul i64 %i.ev, %i.er
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ew ; 4 uses
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 144
  %i.fb = load ptr, ptr %i.fa, align 8, !noalias !139 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eq, i64 160
  %i.fd = load i64, ptr %i.fc, align 8, !noalias !139 ; 4 uses
  %i.fe = mul i64 %i.fd, %i.ez
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fe
  %i.fg = load <4 x float>, ptr %i.ff, align 1, !noalias !140 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = zext i32 %i.fi to i64
  %i.fk = mul i64 %i.fd, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fk
  %i.fm = load <4 x float>, ptr %i.fl, align 1, !noalias !141 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fo = load i32, ptr %i.fn, align 4
  %i.fp = zext i32 %i.fo to i64
  %i.fq = mul i64 %i.fd, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fq
  %i.fs = load <4 x float>, ptr %i.fr, align 1, !noalias !142 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %i.fu = load i32, ptr %i.ft, align 4
  %i.fv = zext i32 %i.fu to i64
  %i.fw = mul i64 %i.fd, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fw
  %i.fy = load <4 x float>, ptr %i.fx, align 1, !noalias !143 ; 3 uses
  %.sroa.079.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.el, i64 0 ; 2 uses
  %.sroa.076.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.en, i64 0 ; 2 uses
  %.sroa.070.0.vec.insert = shufflevector <4 x float> %i.fg, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.872.16.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fg, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.1374.32.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fg, <4 x i32> <i32 6, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.064.0.vec.insert = shufflevector <4 x float> %i.fm, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.866.16.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fm, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.1368.32.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fm, <4 x i32> <i32 6, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.058.0.vec.insert = shufflevector <4 x float> %i.fs, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.860.16.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fs, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.1362.32.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fs, <4 x i32> <i32 6, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.0.0.vec.insert = shufflevector <4 x float> %i.fy, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.8.16.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fy, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.13.32.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fy, <4 x i32> <i32 6, i32 1, i32 2, i32 3> ; 2 uses
  %i.fz = add nuw i64 %.030, 1                    ; 3 uses
  %i.ga = icmp ult i64 %i.fz, %i.ec
  br i1 %i.ga, label %bb.y, label %_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit

bb.y:                                             ; preds = %.lr.ph
  %i.gb = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.fz ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 12
  %i.gd = load i32, ptr %i.gc, align 4            ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 28
  %i.gf = load i32, ptr %i.ge, align 4            ; 2 uses
  %i.gg = zext i32 %i.gd to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.gg
  %i.gi = load ptr, ptr %i.gh, align 8            ; 4 uses
  %i.gj = zext i32 %i.gf to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 88
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 104
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = mul i64 %i.gn, %i.gj
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.go ; 4 uses
  %i.gq = load i32, ptr %i.gp, align 4
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gi, i64 144
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !139 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gi, i64 160
  %i.gv = load i64, ptr %i.gu, align 8, !noalias !139 ; 4 uses
  %i.gw = mul i64 %i.gv, %i.gr
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gw
  %i.gy = load <4 x float>, ptr %i.gx, align 1, !noalias !140 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.ha = load i32, ptr %i.gz, align 4
  %i.hb = zext i32 %i.ha to i64
  %i.hc = mul i64 %i.gv, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hc
  %i.he = load <4 x float>, ptr %i.hd, align 1, !noalias !141 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = zext i32 %i.hg to i64
  %i.hi = mul i64 %i.gv, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hi
  %i.hk = load <4 x float>, ptr %i.hj, align 1, !noalias !142 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  %i.hm = load i32, ptr %i.hl, align 4
  %i.hn = zext i32 %i.hm to i64
  %i.ho = mul i64 %i.gv, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.ho
  %i.hq = load <4 x float>, ptr %i.hp, align 1, !noalias !143 ; 3 uses
  %.sroa.079.4.vec.insert = insertelement <4 x i32> %.sroa.079.0.vec.insert, i32 %i.gd, i64 1 ; 2 uses
  %.sroa.076.4.vec.insert = insertelement <4 x i32> %.sroa.076.0.vec.insert, i32 %i.gf, i64 1 ; 2 uses
  %.sroa.070.4.vec.insert = shufflevector <4 x float> %.sroa.070.0.vec.insert, <4 x float> %i.gy, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.872.20.vec.insert = shufflevector <4 x float> %.sroa.872.16.vec.insert, <4 x float> %i.gy, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.1374.36.vec.insert = shufflevector <4 x float> %.sroa.1374.32.vec.insert, <4 x float> %i.gy, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.064.4.vec.insert = shufflevector <4 x float> %.sroa.064.0.vec.insert, <4 x float> %i.he, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.866.20.vec.insert = shufflevector <4 x float> %.sroa.866.16.vec.insert, <4 x float> %i.he, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.1368.36.vec.insert = shufflevector <4 x float> %.sroa.1368.32.vec.insert, <4 x float> %i.he, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.058.4.vec.insert = shufflevector <4 x float> %.sroa.058.0.vec.insert, <4 x float> %i.hk, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.860.20.vec.insert = shufflevector <4 x float> %.sroa.860.16.vec.insert, <4 x float> %i.hk, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.1362.36.vec.insert = shufflevector <4 x float> %.sroa.1362.32.vec.insert, <4 x float> %i.hk, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.0.4.vec.insert = shufflevector <4 x float> %.sroa.0.0.vec.insert, <4 x float> %i.hq, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8.20.vec.insert = shufflevector <4 x float> %.sroa.8.16.vec.insert, <4 x float> %i.hq, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13.36.vec.insert = shufflevector <4 x float> %.sroa.13.32.vec.insert, <4 x float> %i.hq, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %i.hr = add nuw i64 %.030, 2                    ; 3 uses
  %i.hs = icmp ult i64 %i.hr, %i.ec
  br i1 %i.hs, label %bb.z, label %_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit

bb.z:                                             ; preds = %bb.y
  %i.ht = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.hr ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  %i.hv = load i32, ptr %i.hu, align 4            ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 28
  %i.hx = load i32, ptr %i.hw, align 4            ; 2 uses
  %i.hy = zext i32 %i.hv to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.hy
  %i.ia = load ptr, ptr %i.hz, align 8            ; 4 uses
  %i.ib = zext i32 %i.hx to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 88
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 104
  %i.if = load i64, ptr %i.ie, align 8
  %i.ig = mul i64 %i.if, %i.ib
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ig ; 4 uses
  %i.ii = load i32, ptr %i.ih, align 4
  %i.ij = zext i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ia, i64 144
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !139 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ia, i64 160
  %i.in = load i64, ptr %i.im, align 8, !noalias !139 ; 4 uses
  %i.io = mul i64 %i.in, %i.ij
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.io
  %i.iq = load <4 x float>, ptr %i.ip, align 1, !noalias !140 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.is = load i32, ptr %i.ir, align 4
  %i.it = zext i32 %i.is to i64
  %i.iu = mul i64 %i.in, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.iu
  %i.iw = load <4 x float>, ptr %i.iv, align 1, !noalias !141 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.iy = load i32, ptr %i.ix, align 4
  %i.iz = zext i32 %i.iy to i64
  %i.ja = mul i64 %i.in, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ja
  %i.jc = load <4 x float>, ptr %i.jb, align 1, !noalias !142 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  %i.je = load i32, ptr %i.jd, align 4
  %i.jf = zext i32 %i.je to i64
  %i.jg = mul i64 %i.in, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.jg
  %i.ji = load <4 x float>, ptr %i.jh, align 1, !noalias !143 ; 3 uses
  %.sroa.079.8.vec.insert = insertelement <4 x i32> %.sroa.079.4.vec.insert, i32 %i.hv, i64 2 ; 2 uses
  %.sroa.076.8.vec.insert = insertelement <4 x i32> %.sroa.076.4.vec.insert, i32 %i.hx, i64 2 ; 2 uses
  %.sroa.070.8.vec.insert = shufflevector <4 x float> %.sroa.070.4.vec.insert, <4 x float> %i.iq, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.872.24.vec.insert = shufflevector <4 x float> %.sroa.872.20.vec.insert, <4 x float> %i.iq, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.1374.40.vec.insert = shufflevector <4 x float> %.sroa.1374.36.vec.insert, <4 x float> %i.iq, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.064.8.vec.insert = shufflevector <4 x float> %.sroa.064.4.vec.insert, <4 x float> %i.iw, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.866.24.vec.insert = shufflevector <4 x float> %.sroa.866.20.vec.insert, <4 x float> %i.iw, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.1368.40.vec.insert = shufflevector <4 x float> %.sroa.1368.36.vec.insert, <4 x float> %i.iw, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.058.8.vec.insert = shufflevector <4 x float> %.sroa.058.4.vec.insert, <4 x float> %i.jc, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.860.24.vec.insert = shufflevector <4 x float> %.sroa.860.20.vec.insert, <4 x float> %i.jc, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.1362.40.vec.insert = shufflevector <4 x float> %.sroa.1362.36.vec.insert, <4 x float> %i.jc, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.0.8.vec.insert = shufflevector <4 x float> %.sroa.0.4.vec.insert, <4 x float> %i.ji, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8.24.vec.insert = shufflevector <4 x float> %.sroa.8.20.vec.insert, <4 x float> %i.ji, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13.40.vec.insert = shufflevector <4 x float> %.sroa.13.36.vec.insert, <4 x float> %i.ji, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %i.jj = add nuw i64 %.030, 3                    ; 3 uses
  %i.jk = icmp ult i64 %i.jj, %i.ec
  br i1 %i.jk, label %bb.aa, label %_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.jl = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.jj ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 12
  %i.jn = load i32, ptr %i.jm, align 4            ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 28
  %i.jp = load i32, ptr %i.jo, align 4            ; 2 uses
  %i.jq = zext i32 %i.jn to i64
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.jq
  %i.js = load ptr, ptr %i.jr, align 8            ; 4 uses
  %i.jt = zext i32 %i.jp to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 88
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 104
  %i.jx = load i64, ptr %i.jw, align 8
  %i.jy = mul i64 %i.jx, %i.jt
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.jy ; 4 uses
  %i.ka = load i32, ptr %i.jz, align 4
  %i.kb = zext i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw i8, ptr %i.js, i64 144
  %i.kd = load ptr, ptr %i.kc, align 8, !noalias !139 ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.js, i64 160
  %i.kf = load i64, ptr %i.ke, align 8, !noalias !139 ; 4 uses
  %i.kg = mul i64 %i.kf, %i.kb
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.kg
  %i.ki = load <4 x float>, ptr %i.kh, align 1, !noalias !140 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  %i.kk = load i32, ptr %i.kj, align 4
  %i.kl = zext i32 %i.kk to i64
  %i.km = mul i64 %i.kf, %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.km
  %i.ko = load <4 x float>, ptr %i.kn, align 1, !noalias !141 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kq = load i32, ptr %i.kp, align 4
  %i.kr = zext i32 %i.kq to i64
  %i.ks = mul i64 %i.kf, %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.ks
  %i.ku = load <4 x float>, ptr %i.kt, align 1, !noalias !142 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jz, i64 12
  %i.kw = load i32, ptr %i.kv, align 4
  %i.kx = zext i32 %i.kw to i64
  %i.ky = mul i64 %i.kf, %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.ky
  %i.la = load <4 x float>, ptr %i.kz, align 1, !noalias !143 ; 3 uses
  %.sroa.079.12.vec.insert = insertelement <4 x i32> %.sroa.079.8.vec.insert, i32 %i.jn, i64 3
  %.sroa.076.12.vec.insert = insertelement <4 x i32> %.sroa.076.8.vec.insert, i32 %i.jp, i64 3
  %.sroa.070.12.vec.insert = shufflevector <4 x float> %.sroa.070.8.vec.insert, <4 x float> %i.ki, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.872.28.vec.insert = shufflevector <4 x float> %.sroa.872.24.vec.insert, <4 x float> %i.ki, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.1374.44.vec.insert = shufflevector <4 x float> %.sroa.1374.40.vec.insert, <4 x float> %i.ki, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.064.12.vec.insert = shufflevector <4 x float> %.sroa.064.8.vec.insert, <4 x float> %i.ko, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.866.28.vec.insert = shufflevector <4 x float> %.sroa.866.24.vec.insert, <4 x float> %i.ko, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.1368.44.vec.insert = shufflevector <4 x float> %.sroa.1368.40.vec.insert, <4 x float> %i.ko, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.058.12.vec.insert = shufflevector <4 x float> %.sroa.058.8.vec.insert, <4 x float> %i.ku, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.860.28.vec.insert = shufflevector <4 x float> %.sroa.860.24.vec.insert, <4 x float> %i.ku, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.1362.44.vec.insert = shufflevector <4 x float> %.sroa.1362.40.vec.insert, <4 x float> %i.ku, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.0.12.vec.insert = shufflevector <4 x float> %.sroa.0.8.vec.insert, <4 x float> %i.la, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8.28.vec.insert = shufflevector <4 x float> %.sroa.8.24.vec.insert, <4 x float> %i.la, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13.44.vec.insert = shufflevector <4 x float> %.sroa.13.40.vec.insert, <4 x float> %i.la, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.lb = add nuw i64 %.030, 4
  br label %_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit

_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit: ; preds = %bb.aa, %bb.z, %bb.y, %.lr.ph
  %.sroa.079.0 = phi <4 x i32> [ %.sroa.079.12.vec.insert, %bb.aa ], [ %.sroa.079.8.vec.insert, %bb.z ], [ %.sroa.079.4.vec.insert, %bb.y ], [ %.sroa.079.0.vec.insert, %.lr.ph ]
  %.sroa.076.0 = phi <4 x i32> [ %.sroa.076.12.vec.insert, %bb.aa ], [ %.sroa.076.8.vec.insert, %bb.z ], [ %.sroa.076.4.vec.insert, %bb.y ], [ %.sroa.076.0.vec.insert, %.lr.ph ]
  %.sroa.1374.0 = phi <4 x float> [ %.sroa.1374.44.vec.insert, %bb.aa ], [ %.sroa.1374.40.vec.insert, %bb.z ], [ %.sroa.1374.36.vec.insert, %bb.y ], [ %.sroa.1374.32.vec.insert, %.lr.ph ]
  %.sroa.872.0 = phi <4 x float> [ %.sroa.872.28.vec.insert, %bb.aa ], [ %.sroa.872.24.vec.insert, %bb.z ], [ %.sroa.872.20.vec.insert, %bb.y ], [ %.sroa.872.16.vec.insert, %.lr.ph ]
  %.sroa.070.0 = phi <4 x float> [ %.sroa.070.12.vec.insert, %bb.aa ], [ %.sroa.070.8.vec.insert, %bb.z ], [ %.sroa.070.4.vec.insert, %bb.y ], [ %.sroa.070.0.vec.insert, %.lr.ph ]
  %.sroa.1368.0 = phi <4 x float> [ %.sroa.1368.44.vec.insert, %bb.aa ], [ %.sroa.1368.40.vec.insert, %bb.z ], [ %.sroa.1368.36.vec.insert, %bb.y ], [ %.sroa.1368.32.vec.insert, %.lr.ph ]
  %.sroa.866.0 = phi <4 x float> [ %.sroa.866.28.vec.insert, %bb.aa ], [ %.sroa.866.24.vec.insert, %bb.z ], [ %.sroa.866.20.vec.insert, %bb.y ], [ %.sroa.866.16.vec.insert, %.lr.ph ]
  %.sroa.064.0 = phi <4 x float> [ %.sroa.064.12.vec.insert, %bb.aa ], [ %.sroa.064.8.vec.insert, %bb.z ], [ %.sroa.064.4.vec.insert, %bb.y ], [ %.sroa.064.0.vec.insert, %.lr.ph ]
  %.sroa.1362.0 = phi <4 x float> [ %.sroa.1362.44.vec.insert, %bb.aa ], [ %.sroa.1362.40.vec.insert, %bb.z ], [ %.sroa.1362.36.vec.insert, %bb.y ], [ %.sroa.1362.32.vec.insert, %.lr.ph ]
  %.sroa.860.0 = phi <4 x float> [ %.sroa.860.28.vec.insert, %bb.aa ], [ %.sroa.860.24.vec.insert, %bb.z ], [ %.sroa.860.20.vec.insert, %bb.y ], [ %.sroa.860.16.vec.insert, %.lr.ph ]
  %.sroa.058.0 = phi <4 x float> [ %.sroa.058.12.vec.insert, %bb.aa ], [ %.sroa.058.8.vec.insert, %bb.z ], [ %.sroa.058.4.vec.insert, %bb.y ], [ %.sroa.058.0.vec.insert, %.lr.ph ]
  %.sroa.13.0 = phi <4 x float> [ %.sroa.13.44.vec.insert, %bb.aa ], [ %.sroa.13.40.vec.insert, %bb.z ], [ %.sroa.13.36.vec.insert, %bb.y ], [ %.sroa.13.32.vec.insert, %.lr.ph ]
  %.sroa.8.0 = phi <4 x float> [ %.sroa.8.28.vec.insert, %bb.aa ], [ %.sroa.8.24.vec.insert, %bb.z ], [ %.sroa.8.20.vec.insert, %bb.y ], [ %.sroa.8.16.vec.insert, %.lr.ph ]
end_hunk_2
begin_hunk_3_@_ZN6embree4sse227BVHNBuilderQuantizedVirtualILi4EE12BVHNBuilderTINS0_19CreateLeafQuantizedILi4ENS_6QuadMvILi4EEEEEE10createLeafEPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorE:bb.a

bb.l:                                             ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  tail call void @__clang_call_terminate(ptr %i.cf) #20
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit:          ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load i8, ptr %i.r, align 8, !range !13, !noundef !14
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.m, label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit13

bb.m:                                             ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit
  %i.ci = load ptr, ptr %5, align 8, !nonnull !14, !align !17
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit13 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  tail call void @__clang_call_terminate(ptr %i.ck) #20
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit13:        ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i

bb.o:                                             ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit10
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cl, %bb.o ], [ %i.cd, %bb.k ]
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %eh.lpad-body.i

_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i: ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit13, %bb.a
  %i.cm = load i64, ptr %i.a, align 8             ; 8 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = add i64 %i.co, %i.cm
  store i64 %i.cp, ptr %i.cn, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 9 uses
  %i.cr = load i64, ptr %i.cq, align 16           ; 3 uses
  %i.cs = sub i64 0, %i.cr
  %i.ct = and i64 %i.cs, 15                       ; 2 uses
  %i.cu = add i64 %i.cr, %i.cm
  %i.cv = add i64 %i.cu, %i.ct                    ; 3 uses
  store i64 %i.cv, ptr %i.cq, align 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 5 uses
  %i.cx = load i64, ptr %i.cw, align 8
  %.not.i.i = icmp ugt i64 %i.cv, %i.cx
  br i1 %.not.i.i, label %bb.q, label %bb.p, !prof !16

bb.p:                                             ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 16
  %i.da = add i64 %i.cz, %i.ct
  store i64 %i.da, ptr %i.cy, align 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = sub i64 %i.cv, %i.cm
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dd
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i

bb.q:                                             ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i
  store i64 %i.cr, ptr %i.cq, align 16
  %i.df = shl i64 %i.cm, 2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 32           ; 2 uses
  %i.di = icmp ugt i64 %i.df, %i.dh
  br i1 %i.di, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dj = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 64, i1 noundef zeroext false)
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.dh, ptr %i.b, align 8
  %i.dk = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext true) ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.dk, ptr %i.dl, align 8
  %i.dm = load i64, ptr %i.cw, align 8
  %i.dn = load i64, ptr %i.cq, align 16
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 6 uses
  %i.dq = load i64, ptr %i.dp, align 16
  %i.dr = add i64 %i.dq, %i.do                    ; 2 uses
  store i64 %i.dr, ptr %i.dp, align 16
  %i.ds = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.ds, ptr %i.cw, align 8
  store i64 %i.cm, ptr %i.cq, align 16
  %.not23.i.i = icmp ugt i64 %i.cm, %i.ds
  br i1 %.not23.i.i, label %bb.u, label %bb.t, !prof !16

bb.t:                                             ; preds = %bb.s
  store i64 %i.dr, ptr %i.dp, align 16
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  store i64 0, ptr %i.cq, align 16
  %i.dt = load i64, ptr %i.dg, align 32
  store i64 %i.dt, ptr %i.b, align 8
  %i.du = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext false) ; 2 uses
  store ptr %i.du, ptr %i.dl, align 8
  %i.dv = load i64, ptr %i.cw, align 8
  %i.dw = load i64, ptr %i.cq, align 16
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = load i64, ptr %i.dp, align 16
  %i.dz = add i64 %i.dy, %i.dx                    ; 2 uses
  store i64 %i.dz, ptr %i.dp, align 16
  %i.ea = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.ea, ptr %i.cw, align 8
  store i64 %i.cm, ptr %i.cq, align 16
  %.not24.i.i = icmp ugt i64 %i.cm, %i.ea
  br i1 %.not24.i.i, label %bb.w, label %bb.v, !prof !16

bb.v:                                             ; preds = %bb.u
  store i64 %i.dz, ptr %i.dp, align 16
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  store i64 0, ptr %i.cq, align 16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t
  %.0.i.i = phi ptr [ %i.dk, %bb.t ], [ %i.du, %bb.v ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i

_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i: ; preds = %bb.x, %bb.r, %bb.p
  %.1.i.i = phi ptr [ %i.de, %bb.p ], [ %i.dj, %bb.r ], [ %.0.i.i, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %_ZNK6embree4sse219CreateLeafQuantizedILi4ENS_6QuadMvILi4EEEEclEPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorE.exit, label %.lr.ph31

.lr.ph31:                                         ; preds = %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i, %_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.i
  %.0.i30 = phi i64 [ %i.mf, %_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.i ], [ 0, %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i ] ; 2 uses
  %.029 = phi i64 [ %.1.lcssa, %_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.i ], [ %i.f, %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i ] ; 7 uses
  %i.eb = getelementptr inbounds nuw [224 x i8], ptr %.1.i.i, i64 %.0.i30 ; 14 uses
  %i.ec = load i64, ptr %i.d, align 8             ; 4 uses
  %i.ed = icmp ult i64 %.029, %i.ec
  br i1 %i.ed, label %.lr.ph, label %_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.i

.lr.ph:                                           ; preds = %.lr.ph31
  %i.ee = load ptr, ptr %i.c, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 104
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 488
  %i.ei = load ptr, ptr %i.eh, align 8            ; 4 uses
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.029 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %i.el = load i32, ptr %i.ek, align 4            ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 28
  %i.en = load i32, ptr %i.em, align 4            ; 2 uses
  %i.eo = zext i32 %i.el to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8            ; 4 uses
  %i.er = zext i32 %i.en to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 88
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 104
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = mul i64 %i.ev, %i.er
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ew ; 4 uses
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 144
  %i.fb = load ptr, ptr %i.fa, align 8, !noalias !190 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eq, i64 160
  %i.fd = load i64, ptr %i.fc, align 8, !noalias !190 ; 4 uses
  %i.fe = mul i64 %i.fd, %i.ez
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fe
  %i.fg = load <4 x float>, ptr %i.ff, align 1, !noalias !191 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = zext i32 %i.fi to i64
  %i.fk = mul i64 %i.fd, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fk
  %i.fm = load <4 x float>, ptr %i.fl, align 1, !noalias !192 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fo = load i32, ptr %i.fn, align 4
  %i.fp = zext i32 %i.fo to i64
  %i.fq = mul i64 %i.fd, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fq
  %i.fs = load <4 x float>, ptr %i.fr, align 1, !noalias !193 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %i.fu = load i32, ptr %i.ft, align 4
  %i.fv = zext i32 %i.fu to i64
  %i.fw = mul i64 %i.fd, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fw
  %i.fy = load <4 x float>, ptr %i.fx, align 1, !noalias !194 ; 3 uses
  %.sroa.078.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.el, i64 0 ; 2 uses
  %.sroa.075.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.en, i64 0 ; 2 uses
  %.sroa.069.0.vec.insert = shufflevector <4 x float> %i.fg, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.871.16.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fg, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.1373.32.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fg, <4 x i32> <i32 6, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.063.0.vec.insert = shufflevector <4 x float> %i.fm, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.865.16.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fm, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.1367.32.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fm, <4 x i32> <i32 6, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.057.0.vec.insert = shufflevector <4 x float> %i.fs, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.859.16.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fs, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.1361.32.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fs, <4 x i32> <i32 6, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.0.0.vec.insert = shufflevector <4 x float> %i.fy, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.8.16.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fy, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.13.32.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fy, <4 x i32> <i32 6, i32 1, i32 2, i32 3> ; 2 uses
  %i.fz = add nuw i64 %.029, 1                    ; 3 uses
  %i.ga = icmp ult i64 %i.fz, %i.ec
  br i1 %i.ga, label %bb.y, label %_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.i.loopexit

bb.y:                                             ; preds = %.lr.ph
  %i.gb = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.fz ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 12
  %i.gd = load i32, ptr %i.gc, align 4            ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 28
  %i.gf = load i32, ptr %i.ge, align 4            ; 2 uses
  %i.gg = zext i32 %i.gd to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.gg
  %i.gi = load ptr, ptr %i.gh, align 8            ; 4 uses
  %i.gj = zext i32 %i.gf to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 88
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 104
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = mul i64 %i.gn, %i.gj
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.go ; 4 uses
  %i.gq = load i32, ptr %i.gp, align 4
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gi, i64 144
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !190 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gi, i64 160
  %i.gv = load i64, ptr %i.gu, align 8, !noalias !190 ; 4 uses
  %i.gw = mul i64 %i.gv, %i.gr
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gw
  %i.gy = load <4 x float>, ptr %i.gx, align 1, !noalias !191 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.ha = load i32, ptr %i.gz, align 4
  %i.hb = zext i32 %i.ha to i64
  %i.hc = mul i64 %i.gv, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hc
  %i.he = load <4 x float>, ptr %i.hd, align 1, !noalias !192 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = zext i32 %i.hg to i64
  %i.hi = mul i64 %i.gv, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hi
  %i.hk = load <4 x float>, ptr %i.hj, align 1, !noalias !193 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  %i.hm = load i32, ptr %i.hl, align 4
  %i.hn = zext i32 %i.hm to i64
  %i.ho = mul i64 %i.gv, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.ho
  %i.hq = load <4 x float>, ptr %i.hp, align 1, !noalias !194 ; 3 uses
  %.sroa.078.4.vec.insert = insertelement <4 x i32> %.sroa.078.0.vec.insert, i32 %i.gd, i64 1 ; 2 uses
  %.sroa.075.4.vec.insert = insertelement <4 x i32> %.sroa.075.0.vec.insert, i32 %i.gf, i64 1 ; 2 uses
  %.sroa.069.4.vec.insert = shufflevector <4 x float> %.sroa.069.0.vec.insert, <4 x float> %i.gy, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.871.20.vec.insert = shufflevector <4 x float> %.sroa.871.16.vec.insert, <4 x float> %i.gy, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.1373.36.vec.insert = shufflevector <4 x float> %.sroa.1373.32.vec.insert, <4 x float> %i.gy, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.063.4.vec.insert = shufflevector <4 x float> %.sroa.063.0.vec.insert, <4 x float> %i.he, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.865.20.vec.insert = shufflevector <4 x float> %.sroa.865.16.vec.insert, <4 x float> %i.he, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.1367.36.vec.insert = shufflevector <4 x float> %.sroa.1367.32.vec.insert, <4 x float> %i.he, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.057.4.vec.insert = shufflevector <4 x float> %.sroa.057.0.vec.insert, <4 x float> %i.hk, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.859.20.vec.insert = shufflevector <4 x float> %.sroa.859.16.vec.insert, <4 x float> %i.hk, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.1361.36.vec.insert = shufflevector <4 x float> %.sroa.1361.32.vec.insert, <4 x float> %i.hk, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.0.4.vec.insert = shufflevector <4 x float> %.sroa.0.0.vec.insert, <4 x float> %i.hq, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8.20.vec.insert = shufflevector <4 x float> %.sroa.8.16.vec.insert, <4 x float> %i.hq, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13.36.vec.insert = shufflevector <4 x float> %.sroa.13.32.vec.insert, <4 x float> %i.hq, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %i.hr = add nuw i64 %.029, 2                    ; 3 uses
  %i.hs = icmp ult i64 %i.hr, %i.ec
  br i1 %i.hs, label %bb.z, label %_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.i.loopexit

bb.z:                                             ; preds = %bb.y
  %i.ht = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.hr ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  %i.hv = load i32, ptr %i.hu, align 4            ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 28
  %i.hx = load i32, ptr %i.hw, align 4            ; 2 uses
  %i.hy = zext i32 %i.hv to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.hy
  %i.ia = load ptr, ptr %i.hz, align 8            ; 4 uses
  %i.ib = zext i32 %i.hx to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 88
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 104
  %i.if = load i64, ptr %i.ie, align 8
  %i.ig = mul i64 %i.if, %i.ib
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ig ; 4 uses
  %i.ii = load i32, ptr %i.ih, align 4
  %i.ij = zext i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ia, i64 144
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !190 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ia, i64 160
  %i.in = load i64, ptr %i.im, align 8, !noalias !190 ; 4 uses
  %i.io = mul i64 %i.in, %i.ij
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.io
  %i.iq = load <4 x float>, ptr %i.ip, align 1, !noalias !191 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.is = load i32, ptr %i.ir, align 4
  %i.it = zext i32 %i.is to i64
  %i.iu = mul i64 %i.in, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.iu
  %i.iw = load <4 x float>, ptr %i.iv, align 1, !noalias !192 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.iy = load i32, ptr %i.ix, align 4
  %i.iz = zext i32 %i.iy to i64
  %i.ja = mul i64 %i.in, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ja
  %i.jc = load <4 x float>, ptr %i.jb, align 1, !noalias !193 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  %i.je = load i32, ptr %i.jd, align 4
  %i.jf = zext i32 %i.je to i64
  %i.jg = mul i64 %i.in, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.jg
  %i.ji = load <4 x float>, ptr %i.jh, align 1, !noalias !194 ; 3 uses
  %.sroa.078.8.vec.insert = insertelement <4 x i32> %.sroa.078.4.vec.insert, i32 %i.hv, i64 2 ; 2 uses
  %.sroa.075.8.vec.insert = insertelement <4 x i32> %.sroa.075.4.vec.insert, i32 %i.hx, i64 2 ; 2 uses
  %.sroa.069.8.vec.insert = shufflevector <4 x float> %.sroa.069.4.vec.insert, <4 x float> %i.iq, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.871.24.vec.insert = shufflevector <4 x float> %.sroa.871.20.vec.insert, <4 x float> %i.iq, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.1373.40.vec.insert = shufflevector <4 x float> %.sroa.1373.36.vec.insert, <4 x float> %i.iq, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.063.8.vec.insert = shufflevector <4 x float> %.sroa.063.4.vec.insert, <4 x float> %i.iw, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.865.24.vec.insert = shufflevector <4 x float> %.sroa.865.20.vec.insert, <4 x float> %i.iw, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.1367.40.vec.insert = shufflevector <4 x float> %.sroa.1367.36.vec.insert, <4 x float> %i.iw, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.057.8.vec.insert = shufflevector <4 x float> %.sroa.057.4.vec.insert, <4 x float> %i.jc, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.859.24.vec.insert = shufflevector <4 x float> %.sroa.859.20.vec.insert, <4 x float> %i.jc, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.1361.40.vec.insert = shufflevector <4 x float> %.sroa.1361.36.vec.insert, <4 x float> %i.jc, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.0.8.vec.insert = shufflevector <4 x float> %.sroa.0.4.vec.insert, <4 x float> %i.ji, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8.24.vec.insert = shufflevector <4 x float> %.sroa.8.20.vec.insert, <4 x float> %i.ji, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13.40.vec.insert = shufflevector <4 x float> %.sroa.13.36.vec.insert, <4 x float> %i.ji, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %i.jj = add nuw i64 %.029, 3                    ; 3 uses
  %i.jk = icmp ult i64 %i.jj, %i.ec
  br i1 %i.jk, label %bb.aa, label %_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.i.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.jl = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.jj ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 12
  %i.jn = load i32, ptr %i.jm, align 4            ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 28
  %i.jp = load i32, ptr %i.jo, align 4            ; 2 uses
  %i.jq = zext i32 %i.jn to i64
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.jq
  %i.js = load ptr, ptr %i.jr, align 8            ; 4 uses
  %i.jt = zext i32 %i.jp to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 88
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 104
  %i.jx = load i64, ptr %i.jw, align 8
  %i.jy = mul i64 %i.jx, %i.jt
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.jy ; 4 uses
  %i.ka = load i32, ptr %i.jz, align 4
  %i.kb = zext i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw i8, ptr %i.js, i64 144
  %i.kd = load ptr, ptr %i.kc, align 8, !noalias !190 ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.js, i64 160
  %i.kf = load i64, ptr %i.ke, align 8, !noalias !190 ; 4 uses
  %i.kg = mul i64 %i.kf, %i.kb
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.kg
  %i.ki = load <4 x float>, ptr %i.kh, align 1, !noalias !191 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  %i.kk = load i32, ptr %i.kj, align 4
  %i.kl = zext i32 %i.kk to i64
  %i.km = mul i64 %i.kf, %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.km
  %i.ko = load <4 x float>, ptr %i.kn, align 1, !noalias !192 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kq = load i32, ptr %i.kp, align 4
  %i.kr = zext i32 %i.kq to i64
  %i.ks = mul i64 %i.kf, %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.ks
  %i.ku = load <4 x float>, ptr %i.kt, align 1, !noalias !193 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jz, i64 12
  %i.kw = load i32, ptr %i.kv, align 4
  %i.kx = zext i32 %i.kw to i64
  %i.ky = mul i64 %i.kf, %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.ky
  %i.la = load <4 x float>, ptr %i.kz, align 1, !noalias !194 ; 3 uses
  %.sroa.078.12.vec.insert = insertelement <4 x i32> %.sroa.078.8.vec.insert, i32 %i.jn, i64 3
  %.sroa.075.12.vec.insert = insertelement <4 x i32> %.sroa.075.8.vec.insert, i32 %i.jp, i64 3
  %.sroa.069.12.vec.insert = shufflevector <4 x float> %.sroa.069.8.vec.insert, <4 x float> %i.ki, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.871.28.vec.insert = shufflevector <4 x float> %.sroa.871.24.vec.insert, <4 x float> %i.ki, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.1373.44.vec.insert = shufflevector <4 x float> %.sroa.1373.40.vec.insert, <4 x float> %i.ki, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.063.12.vec.insert = shufflevector <4 x float> %.sroa.063.8.vec.insert, <4 x float> %i.ko, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.865.28.vec.insert = shufflevector <4 x float> %.sroa.865.24.vec.insert, <4 x float> %i.ko, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.1367.44.vec.insert = shufflevector <4 x float> %.sroa.1367.40.vec.insert, <4 x float> %i.ko, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.057.12.vec.insert = shufflevector <4 x float> %.sroa.057.8.vec.insert, <4 x float> %i.ku, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.859.28.vec.insert = shufflevector <4 x float> %.sroa.859.24.vec.insert, <4 x float> %i.ku, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.1361.44.vec.insert = shufflevector <4 x float> %.sroa.1361.40.vec.insert, <4 x float> %i.ku, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.0.12.vec.insert = shufflevector <4 x float> %.sroa.0.8.vec.insert, <4 x float> %i.la, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8.28.vec.insert = shufflevector <4 x float> %.sroa.8.24.vec.insert, <4 x float> %i.la, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13.44.vec.insert = shufflevector <4 x float> %.sroa.13.40.vec.insert, <4 x float> %i.la, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.lb = add nuw i64 %.029, 4
  br label %_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.i.loopexit

_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.i.loopexit: ; preds = %bb.aa, %bb.z, %bb.y, %.lr.ph
  %.sroa.078.0 = phi <4 x i32> [ %.sroa.078.12.vec.insert, %bb.aa ], [ %.sroa.078.8.vec.insert, %bb.z ], [ %.sroa.078.4.vec.insert, %bb.y ], [ %.sroa.078.0.vec.insert, %.lr.ph ]
  %.sroa.075.0 = phi <4 x i32> [ %.sroa.075.12.vec.insert, %bb.aa ], [ %.sroa.075.8.vec.insert, %bb.z ], [ %.sroa.075.4.vec.insert, %bb.y ], [ %.sroa.075.0.vec.insert, %.lr.ph ]
  %.sroa.1373.0 = phi <4 x float> [ %.sroa.1373.44.vec.insert, %bb.aa ], [ %.sroa.1373.40.vec.insert, %bb.z ], [ %.sroa.1373.36.vec.insert, %bb.y ], [ %.sroa.1373.32.vec.insert, %.lr.ph ]
  %.sroa.871.0 = phi <4 x float> [ %.sroa.871.28.vec.insert, %bb.aa ], [ %.sroa.871.24.vec.insert, %bb.z ], [ %.sroa.871.20.vec.insert, %bb.y ], [ %.sroa.871.16.vec.insert, %.lr.ph ]
  %.sroa.069.0 = phi <4 x float> [ %.sroa.069.12.vec.insert, %bb.aa ], [ %.sroa.069.8.vec.insert, %bb.z ], [ %.sroa.069.4.vec.insert, %bb.y ], [ %.sroa.069.0.vec.insert, %.lr.ph ]
  %.sroa.1367.0 = phi <4 x float> [ %.sroa.1367.44.vec.insert, %bb.aa ], [ %.sroa.1367.40.vec.insert, %bb.z ], [ %.sroa.1367.36.vec.insert, %bb.y ], [ %.sroa.1367.32.vec.insert, %.lr.ph ]
  %.sroa.865.0 = phi <4 x float> [ %.sroa.865.28.vec.insert, %bb.aa ], [ %.sroa.865.24.vec.insert, %bb.z ], [ %.sroa.865.20.vec.insert, %bb.y ], [ %.sroa.865.16.vec.insert, %.lr.ph ]
  %.sroa.063.0 = phi <4 x float> [ %.sroa.063.12.vec.insert, %bb.aa ], [ %.sroa.063.8.vec.insert, %bb.z ], [ %.sroa.063.4.vec.insert, %bb.y ], [ %.sroa.063.0.vec.insert, %.lr.ph ]
  %.sroa.1361.0 = phi <4 x float> [ %.sroa.1361.44.vec.insert, %bb.aa ], [ %.sroa.1361.40.vec.insert, %bb.z ], [ %.sroa.1361.36.vec.insert, %bb.y ], [ %.sroa.1361.32.vec.insert, %.lr.ph ]
  %.sroa.859.0 = phi <4 x float> [ %.sroa.859.28.vec.insert, %bb.aa ], [ %.sroa.859.24.vec.insert, %bb.z ], [ %.sroa.859.20.vec.insert, %bb.y ], [ %.sroa.859.16.vec.insert, %.lr.ph ]
  %.sroa.057.0 = phi <4 x float> [ %.sroa.057.12.vec.insert, %bb.aa ], [ %.sroa.057.8.vec.insert, %bb.z ], [ %.sroa.057.4.vec.insert, %bb.y ], [ %.sroa.057.0.vec.insert, %.lr.ph ]
  %.sroa.13.0 = phi <4 x float> [ %.sroa.13.44.vec.insert, %bb.aa ], [ %.sroa.13.40.vec.insert, %bb.z ], [ %.sroa.13.36.vec.insert, %bb.y ], [ %.sroa.13.32.vec.insert, %.lr.ph ]
  %.sroa.8.0 = phi <4 x float> [ %.sroa.8.28.vec.insert, %bb.aa ], [ %.sroa.8.24.vec.insert, %bb.z ], [ %.sroa.8.20.vec.insert, %bb.y ], [ %.sroa.8.16.vec.insert, %.lr.ph ]
end_hunk_3
