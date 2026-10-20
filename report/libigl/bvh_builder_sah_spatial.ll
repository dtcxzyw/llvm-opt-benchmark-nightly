Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_sah_spatial?download=true
inline.NumInlined: 6054
inline.NumDeleted: 749
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 80
loop-unroll.NumUnrolled: 205
begin_hunk_0_@_ZN6embree4sse218BVHNBuilderVirtualILi4EE12BVHNBuilderTINS0_17CreateLeafSpatialILi4ENS_9TriangleMILi4EEEEEE10createLeafEPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit: ; preds = %bb.f, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  tail call void @__clang_call_terminate(ptr %i.cf) #28
  unreachable

bb.m:                                             ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load i8, ptr %i.r, align 8, !range !70, !noundef !71
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.n, label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit14

bb.n:                                             ; preds = %bb.m
  %i.ci = load ptr, ptr %5, align 8, !nonnull !71, !align !74
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit14 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  tail call void @__clang_call_terminate(ptr %i.ck) #28
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
  br i1 %.not.i, label %bb.r, label %bb.q, !prof !75

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
  br i1 %.not23.i, label %bb.v, label %bb.u, !prof !75

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
  br i1 %.not24.i, label %bb.x, label %bb.w, !prof !75

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
  br i1 %.not, label %_ZNK6embree4sse217CreateLeafSpatialILi4ENS_9TriangleMILi4EEEEclEPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorE.exit, label %.lr.ph36

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
  %i.fb = load ptr, ptr %i.fa, align 8, !noalias !445 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eq, i64 160
  %i.fd = load i64, ptr %i.fc, align 8, !noalias !445 ; 3 uses
  %i.fe = mul i64 %i.fd, %i.ez
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fe
  %i.fg = load <4 x float>, ptr %i.ff, align 1, !noalias !446 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = zext i32 %i.fi to i64
  %i.fk = mul i64 %i.fd, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fk
  %i.fm = load <4 x float>, ptr %i.fl, align 1, !noalias !447 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fo = load i32, ptr %i.fn, align 4
  %i.fp = zext i32 %i.fo to i64
  %i.fq = mul i64 %i.fd, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fq
  %i.fs = load <4 x float>, ptr %i.fr, align 1, !noalias !448 ; 3 uses
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
  %i.gn = load ptr, ptr %i.gm, align 8, !noalias !445 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 160
  %i.gp = load i64, ptr %i.go, align 8, !noalias !445 ; 3 uses
  %i.gq = mul i64 %i.gp, %i.gl
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gq
  %i.gs = load <4 x float>, ptr %i.gr, align 1, !noalias !446 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gu = load i32, ptr %i.gt, align 4
  %i.gv = zext i32 %i.gu to i64
  %i.gw = mul i64 %i.gp, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gw
  %i.gy = load <4 x float>, ptr %i.gx, align 1, !noalias !447 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.ha = load i32, ptr %i.gz, align 4
  %i.hb = zext i32 %i.ha to i64
  %i.hc = mul i64 %i.gp, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.hc
  %i.he = load <4 x float>, ptr %i.hd, align 1, !noalias !448 ; 3 uses
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
  %i.hz = load ptr, ptr %i.hy, align 8, !noalias !445 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ho, i64 160
  %i.ib = load i64, ptr %i.ia, align 8, !noalias !445 ; 3 uses
  %i.ic = mul i64 %i.ib, %i.hx
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ic
  %i.ie = load <4 x float>, ptr %i.id, align 1, !noalias !446 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = zext i32 %i.ig to i64
  %i.ii = mul i64 %i.ib, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ii
  %i.ik = load <4 x float>, ptr %i.ij, align 1, !noalias !447 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.im = load i32, ptr %i.il, align 4
  %i.in = zext i32 %i.im to i64
  %i.io = mul i64 %i.ib, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.io
  %i.iq = load <4 x float>, ptr %i.ip, align 1, !noalias !448 ; 3 uses
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
  %i.jl = load ptr, ptr %i.jk, align 8, !noalias !445 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ja, i64 160
  %i.jn = load i64, ptr %i.jm, align 8, !noalias !445 ; 3 uses
  %i.jo = mul i64 %i.jn, %i.jj
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jo
  %i.jq = load <4 x float>, ptr %i.jp, align 1, !noalias !446 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.js = load i32, ptr %i.jr, align 4
  %i.jt = zext i32 %i.js to i64
  %i.ju = mul i64 %i.jn, %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.ju
  %i.jw = load <4 x float>, ptr %i.jv, align 1, !noalias !447 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jy = load i32, ptr %i.jx, align 4
  %i.jz = zext i32 %i.jy to i64
  %i.ka = mul i64 %i.jn, %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.ka
  %i.kc = load <4 x float>, ptr %i.kb, align 1, !noalias !448 ; 3 uses
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
begin_hunk_1_@_ZNK6embree4sse230BVHBuilderBinnedFastSpatialSAH13CreateLeafExtINS_10NodeRefPtrILi4EEENS0_17CreateLeafSpatialILi4ENS_9TriangleMILi4EEEEEEclINS_13FastAllocator15CachedAllocatorEEES4_PNS_7PrimRefERKNS_5rangeImEET_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit: ; preds = %bb.f, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  tail call void @__clang_call_terminate(ptr %i.cg) #28
  unreachable

bb.m:                                             ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ch = load i8, ptr %i.s, align 8, !range !70, !noundef !71
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.n, label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit18

bb.n:                                             ; preds = %bb.m
  %i.cj = load ptr, ptr %5, align 8, !nonnull !71, !align !74
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit18 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  tail call void @__clang_call_terminate(ptr %i.cl) #28
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit18:        ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit

bb.p:                                             ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit13
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.cm, %bb.p ], [ %i.ce, %bb.k ]
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %eh.lpad-body

_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit: ; preds = %._crit_edge, %_ZN6embree4LockINS_8MutexSysEED2Ev.exit18
  %i.cn = load i64, ptr %i.a, align 8             ; 8 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = add i64 %i.cp, %i.cn
  store i64 %i.cq, ptr %i.co, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 9 uses
  %i.cs = load i64, ptr %i.cr, align 16           ; 3 uses
  %i.ct = sub i64 0, %i.cs
  %i.cu = and i64 %i.ct, 15                       ; 2 uses
  %i.cv = add i64 %i.cs, %i.cn
  %i.cw = add i64 %i.cv, %i.cu                    ; 3 uses
  store i64 %i.cw, ptr %i.cr, align 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 5 uses
  %i.cy = load i64, ptr %i.cx, align 8
  %.not.i = icmp ugt i64 %i.cw, %i.cy
  br i1 %.not.i, label %bb.r, label %bb.q, !prof !75

bb.q:                                             ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 16
  %i.db = add i64 %i.da, %i.cu
  store i64 %i.db, ptr %i.cz, align 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = sub i64 %i.cw, %i.cn
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.de
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit

bb.r:                                             ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit
  store i64 %i.cs, ptr %i.cr, align 16
  %i.dg = shl i64 %i.cn, 2
  %i.dh = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 32           ; 2 uses
  %i.dj = icmp ugt i64 %i.dg, %i.di
  br i1 %i.dj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dk = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 64, i1 noundef zeroext false)
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.di, ptr %i.b, align 8
  %i.dl = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext true) ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.dl, ptr %i.dm, align 8
  %i.dn = load i64, ptr %i.cx, align 8
  %i.do = load i64, ptr %i.cr, align 16
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 6 uses
  %i.dr = load i64, ptr %i.dq, align 16
  %i.ds = add i64 %i.dr, %i.dp                    ; 2 uses
  store i64 %i.ds, ptr %i.dq, align 16
  %i.dt = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.dt, ptr %i.cx, align 8
  store i64 %i.cn, ptr %i.cr, align 16
  %.not23.i = icmp ugt i64 %i.cn, %i.dt
  br i1 %.not23.i, label %bb.v, label %bb.u, !prof !75

bb.u:                                             ; preds = %bb.t
  store i64 %i.ds, ptr %i.dq, align 16
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  store i64 0, ptr %i.cr, align 16
  %i.du = load i64, ptr %i.dh, align 32
  store i64 %i.du, ptr %i.b, align 8
  %i.dv = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext false) ; 2 uses
  store ptr %i.dv, ptr %i.dm, align 8
  %i.dw = load i64, ptr %i.cx, align 8
  %i.dx = load i64, ptr %i.cr, align 16
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = load i64, ptr %i.dq, align 16
  %i.ea = add i64 %i.dz, %i.dy                    ; 2 uses
  store i64 %i.ea, ptr %i.dq, align 16
  %i.eb = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.eb, ptr %i.cx, align 8
  store i64 %i.cn, ptr %i.cr, align 16
  %.not24.i = icmp ugt i64 %i.cn, %i.eb
  br i1 %.not24.i, label %bb.x, label %bb.w, !prof !75

bb.w:                                             ; preds = %bb.v
  store i64 %i.ea, ptr %i.dq, align 16
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  store i64 0, ptr %i.cr, align 16
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  %.0.i9 = phi ptr [ %i.dl, %bb.u ], [ %i.dv, %bb.w ], [ null, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit

_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit: ; preds = %bb.q, %bb.s, %bb.y
  %.1.i = phi ptr [ %i.df, %bb.q ], [ %i.dk, %bb.s ], [ %.0.i9, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %_ZNK6embree4sse217CreateLeafSpatialILi4ENS_9TriangleMILi4EEEEclEPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorE.exit, label %.lr.ph46

.lr.ph46:                                         ; preds = %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit
  %.0.i45 = phi i64 [ %i.li, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit ], [ 0, %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit ] ; 2 uses
  %.03444 = phi i64 [ %.1.lcssa, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit ], [ %i.g, %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit ] ; 7 uses
  %i.ec = getelementptr inbounds nuw [176 x i8], ptr %.1.i, i64 %.0.i45 ; 11 uses
  %i.ed = load i64, ptr %i.d, align 8             ; 4 uses
  %i.ee = icmp ult i64 %.03444, %i.ed
  br i1 %i.ee, label %.lr.ph42, label %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit

.lr.ph42:                                         ; preds = %.lr.ph46
  %i.ef = load ptr, ptr %0, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 104
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 488
  %i.ej = load ptr, ptr %i.ei, align 8            ; 4 uses
  %i.ek = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.03444 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  %i.em = load i32, ptr %i.el, align 4            ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 28
  %i.eo = load i32, ptr %i.en, align 4            ; 2 uses
  %i.ep = zext i32 %i.em to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8            ; 4 uses
  %i.es = zext i32 %i.eo to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 88
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 104
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = mul i64 %i.ew, %i.es
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ex ; 3 uses
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 144
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !1255 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.er, i64 160
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !1255 ; 3 uses
  %i.ff = mul i64 %i.fe, %i.fa
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ff
  %i.fh = load <4 x float>, ptr %i.fg, align 1, !noalias !1256 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fj = load i32, ptr %i.fi, align 4
  %i.fk = zext i32 %i.fj to i64
  %i.fl = mul i64 %i.fe, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fl
  %i.fn = load <4 x float>, ptr %i.fm, align 1, !noalias !1257 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = zext i32 %i.fp to i64
  %i.fr = mul i64 %i.fe, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fr
  %i.ft = load <4 x float>, ptr %i.fs, align 1, !noalias !1258 ; 3 uses
  %.sroa.097.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.em, i64 0 ; 2 uses
  %.sroa.094.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.eo, i64 0 ; 2 uses
  %.sroa.088.0.vec.insert = shufflevector <4 x float> %i.fh, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.890.16.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fh, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.1392.32.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fh, <4 x i32> <i32 6, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.082.0.vec.insert = shufflevector <4 x float> %i.fn, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.884.16.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fn, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.1386.32.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fn, <4 x i32> <i32 6, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.0.0.vec.insert = shufflevector <4 x float> %i.ft, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.8.16.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.ft, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.13.32.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.ft, <4 x i32> <i32 6, i32 1, i32 2, i32 3> ; 2 uses
  %i.fu = add nuw i64 %.03444, 1                  ; 3 uses
  %i.fv = icmp ult i64 %i.fu, %i.ed
  br i1 %i.fv, label %bb.z, label %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit

bb.z:                                             ; preds = %.lr.ph42
  %i.fw = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.fu ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  %i.fy = load i32, ptr %i.fx, align 4            ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 28
  %i.ga = load i32, ptr %i.fz, align 4            ; 2 uses
  %i.gb = zext i32 %i.fy to i64
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.gb
  %i.gd = load ptr, ptr %i.gc, align 8            ; 4 uses
  %i.ge = zext i32 %i.ga to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 88
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 104
  %i.gi = load i64, ptr %i.gh, align 8
  %i.gj = mul i64 %i.gi, %i.ge
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gj ; 3 uses
  %i.gl = load i32, ptr %i.gk, align 4
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gd, i64 144
  %i.go = load ptr, ptr %i.gn, align 8, !noalias !1255 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gd, i64 160
  %i.gq = load i64, ptr %i.gp, align 8, !noalias !1255 ; 3 uses
  %i.gr = mul i64 %i.gq, %i.gm
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gr
  %i.gt = load <4 x float>, ptr %i.gs, align 1, !noalias !1256 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.gv = load i32, ptr %i.gu, align 4
  %i.gw = zext i32 %i.gv to i64
  %i.gx = mul i64 %i.gq, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gx
  %i.gz = load <4 x float>, ptr %i.gy, align 1, !noalias !1257 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.hb = load i32, ptr %i.ha, align 4
  %i.hc = zext i32 %i.hb to i64
  %i.hd = mul i64 %i.gq, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.hd
  %i.hf = load <4 x float>, ptr %i.he, align 1, !noalias !1258 ; 3 uses
  %.sroa.097.4.vec.insert = insertelement <4 x i32> %.sroa.097.0.vec.insert, i32 %i.fy, i64 1 ; 2 uses
  %.sroa.094.4.vec.insert = insertelement <4 x i32> %.sroa.094.0.vec.insert, i32 %i.ga, i64 1 ; 2 uses
  %.sroa.088.4.vec.insert = shufflevector <4 x float> %.sroa.088.0.vec.insert, <4 x float> %i.gt, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.890.20.vec.insert = shufflevector <4 x float> %.sroa.890.16.vec.insert, <4 x float> %i.gt, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.1392.36.vec.insert = shufflevector <4 x float> %.sroa.1392.32.vec.insert, <4 x float> %i.gt, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.082.4.vec.insert = shufflevector <4 x float> %.sroa.082.0.vec.insert, <4 x float> %i.gz, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.884.20.vec.insert = shufflevector <4 x float> %.sroa.884.16.vec.insert, <4 x float> %i.gz, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.1386.36.vec.insert = shufflevector <4 x float> %.sroa.1386.32.vec.insert, <4 x float> %i.gz, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.0.4.vec.insert = shufflevector <4 x float> %.sroa.0.0.vec.insert, <4 x float> %i.hf, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8.20.vec.insert = shufflevector <4 x float> %.sroa.8.16.vec.insert, <4 x float> %i.hf, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13.36.vec.insert = shufflevector <4 x float> %.sroa.13.32.vec.insert, <4 x float> %i.hf, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %i.hg = add nuw i64 %.03444, 2                  ; 3 uses
  %i.hh = icmp ult i64 %i.hg, %i.ed
  br i1 %i.hh, label %bb.aa, label %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.hi = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.hg ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 12
  %i.hk = load i32, ptr %i.hj, align 4            ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 28
  %i.hm = load i32, ptr %i.hl, align 4            ; 2 uses
  %i.hn = zext i32 %i.hk to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.hn
  %i.hp = load ptr, ptr %i.ho, align 8            ; 4 uses
  %i.hq = zext i32 %i.hm to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 88
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 104
  %i.hu = load i64, ptr %i.ht, align 8
  %i.hv = mul i64 %i.hu, %i.hq
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hv ; 3 uses
  %i.hx = load i32, ptr %i.hw, align 4
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hp, i64 144
  %i.ia = load ptr, ptr %i.hz, align 8, !noalias !1255 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hp, i64 160
  %i.ic = load i64, ptr %i.ib, align 8, !noalias !1255 ; 3 uses
  %i.id = mul i64 %i.ic, %i.hy
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.id
  %i.if = load <4 x float>, ptr %i.ie, align 1, !noalias !1256 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.ih = load i32, ptr %i.ig, align 4
  %i.ii = zext i32 %i.ih to i64
  %i.ij = mul i64 %i.ic, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ij
  %i.il = load <4 x float>, ptr %i.ik, align 1, !noalias !1257 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.in = load i32, ptr %i.im, align 4
  %i.io = zext i32 %i.in to i64
  %i.ip = mul i64 %i.ic, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ip
  %i.ir = load <4 x float>, ptr %i.iq, align 1, !noalias !1258 ; 3 uses
  %.sroa.097.8.vec.insert = insertelement <4 x i32> %.sroa.097.4.vec.insert, i32 %i.hk, i64 2 ; 2 uses
  %.sroa.094.8.vec.insert = insertelement <4 x i32> %.sroa.094.4.vec.insert, i32 %i.hm, i64 2 ; 2 uses
  %.sroa.088.8.vec.insert = shufflevector <4 x float> %.sroa.088.4.vec.insert, <4 x float> %i.if, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.890.24.vec.insert = shufflevector <4 x float> %.sroa.890.20.vec.insert, <4 x float> %i.if, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.1392.40.vec.insert = shufflevector <4 x float> %.sroa.1392.36.vec.insert, <4 x float> %i.if, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.082.8.vec.insert = shufflevector <4 x float> %.sroa.082.4.vec.insert, <4 x float> %i.il, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.884.24.vec.insert = shufflevector <4 x float> %.sroa.884.20.vec.insert, <4 x float> %i.il, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.1386.40.vec.insert = shufflevector <4 x float> %.sroa.1386.36.vec.insert, <4 x float> %i.il, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.0.8.vec.insert = shufflevector <4 x float> %.sroa.0.4.vec.insert, <4 x float> %i.ir, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8.24.vec.insert = shufflevector <4 x float> %.sroa.8.20.vec.insert, <4 x float> %i.ir, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13.40.vec.insert = shufflevector <4 x float> %.sroa.13.36.vec.insert, <4 x float> %i.ir, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %i.is = add nuw i64 %.03444, 3                  ; 3 uses
  %i.it = icmp ult i64 %i.is, %i.ed
  br i1 %i.it, label %bb.ab, label %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.iu = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.is ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 12
  %i.iw = load i32, ptr %i.iv, align 4            ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 28
  %i.iy = load i32, ptr %i.ix, align 4            ; 2 uses
  %i.iz = zext i32 %i.iw to i64
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.iz
  %i.jb = load ptr, ptr %i.ja, align 8            ; 4 uses
  %i.jc = zext i32 %i.iy to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 88
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 104
  %i.jg = load i64, ptr %i.jf, align 8
  %i.jh = mul i64 %i.jg, %i.jc
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jh ; 3 uses
  %i.jj = load i32, ptr %i.ji, align 4
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jb, i64 144
  %i.jm = load ptr, ptr %i.jl, align 8, !noalias !1255 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jb, i64 160
  %i.jo = load i64, ptr %i.jn, align 8, !noalias !1255 ; 3 uses
  %i.jp = mul i64 %i.jo, %i.jk
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jp
  %i.jr = load <4 x float>, ptr %i.jq, align 1, !noalias !1256 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jt = load i32, ptr %i.js, align 4
  %i.ju = zext i32 %i.jt to i64
  %i.jv = mul i64 %i.jo, %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jv
  %i.jx = load <4 x float>, ptr %i.jw, align 1, !noalias !1257 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jz = load i32, ptr %i.jy, align 4
  %i.ka = zext i32 %i.jz to i64
  %i.kb = mul i64 %i.jo, %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.kb
  %i.kd = load <4 x float>, ptr %i.kc, align 1, !noalias !1258 ; 3 uses
  %.sroa.097.12.vec.insert = insertelement <4 x i32> %.sroa.097.8.vec.insert, i32 %i.iw, i64 3
  %.sroa.094.12.vec.insert = insertelement <4 x i32> %.sroa.094.8.vec.insert, i32 %i.iy, i64 3
  %.sroa.088.12.vec.insert = shufflevector <4 x float> %.sroa.088.8.vec.insert, <4 x float> %i.jr, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.890.28.vec.insert = shufflevector <4 x float> %.sroa.890.24.vec.insert, <4 x float> %i.jr, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.1392.44.vec.insert = shufflevector <4 x float> %.sroa.1392.40.vec.insert, <4 x float> %i.jr, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.082.12.vec.insert = shufflevector <4 x float> %.sroa.082.8.vec.insert, <4 x float> %i.jx, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.884.28.vec.insert = shufflevector <4 x float> %.sroa.884.24.vec.insert, <4 x float> %i.jx, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.1386.44.vec.insert = shufflevector <4 x float> %.sroa.1386.40.vec.insert, <4 x float> %i.jx, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.0.12.vec.insert = shufflevector <4 x float> %.sroa.0.8.vec.insert, <4 x float> %i.kd, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8.28.vec.insert = shufflevector <4 x float> %.sroa.8.24.vec.insert, <4 x float> %i.kd, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13.44.vec.insert = shufflevector <4 x float> %.sroa.13.40.vec.insert, <4 x float> %i.kd, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.ke = add nuw i64 %.03444, 4
  br label %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit

_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit: ; preds = %bb.ab, %bb.aa, %bb.z, %.lr.ph42
  %.sroa.097.0 = phi <4 x i32> [ %.sroa.097.12.vec.insert, %bb.ab ], [ %.sroa.097.8.vec.insert, %bb.aa ], [ %.sroa.097.4.vec.insert, %bb.z ], [ %.sroa.097.0.vec.insert, %.lr.ph42 ]
  %.sroa.094.0 = phi <4 x i32> [ %.sroa.094.12.vec.insert, %bb.ab ], [ %.sroa.094.8.vec.insert, %bb.aa ], [ %.sroa.094.4.vec.insert, %bb.z ], [ %.sroa.094.0.vec.insert, %.lr.ph42 ]
  %.sroa.1392.0 = phi <4 x float> [ %.sroa.1392.44.vec.insert, %bb.ab ], [ %.sroa.1392.40.vec.insert, %bb.aa ], [ %.sroa.1392.36.vec.insert, %bb.z ], [ %.sroa.1392.32.vec.insert, %.lr.ph42 ]
  %.sroa.890.0 = phi <4 x float> [ %.sroa.890.28.vec.insert, %bb.ab ], [ %.sroa.890.24.vec.insert, %bb.aa ], [ %.sroa.890.20.vec.insert, %bb.z ], [ %.sroa.890.16.vec.insert, %.lr.ph42 ]
  %.sroa.088.0 = phi <4 x float> [ %.sroa.088.12.vec.insert, %bb.ab ], [ %.sroa.088.8.vec.insert, %bb.aa ], [ %.sroa.088.4.vec.insert, %bb.z ], [ %.sroa.088.0.vec.insert, %.lr.ph42 ]
  %.sroa.1386.0 = phi <4 x float> [ %.sroa.1386.44.vec.insert, %bb.ab ], [ %.sroa.1386.40.vec.insert, %bb.aa ], [ %.sroa.1386.36.vec.insert, %bb.z ], [ %.sroa.1386.32.vec.insert, %.lr.ph42 ]
  %.sroa.884.0 = phi <4 x float> [ %.sroa.884.28.vec.insert, %bb.ab ], [ %.sroa.884.24.vec.insert, %bb.aa ], [ %.sroa.884.20.vec.insert, %bb.z ], [ %.sroa.884.16.vec.insert, %.lr.ph42 ]
  %.sroa.082.0 = phi <4 x float> [ %.sroa.082.12.vec.insert, %bb.ab ], [ %.sroa.082.8.vec.insert, %bb.aa ], [ %.sroa.082.4.vec.insert, %bb.z ], [ %.sroa.082.0.vec.insert, %.lr.ph42 ]
  %.sroa.13.0 = phi <4 x float> [ %.sroa.13.44.vec.insert, %bb.ab ], [ %.sroa.13.40.vec.insert, %bb.aa ], [ %.sroa.13.36.vec.insert, %bb.z ], [ %.sroa.13.32.vec.insert, %.lr.ph42 ]
  %.sroa.8.0 = phi <4 x float> [ %.sroa.8.28.vec.insert, %bb.ab ], [ %.sroa.8.24.vec.insert, %bb.aa ], [ %.sroa.8.20.vec.insert, %bb.z ], [ %.sroa.8.16.vec.insert, %.lr.ph42 ]
  %.sroa.0.0 = phi <4 x float> [ %.sroa.0.12.vec.insert, %bb.ab ], [ %.sroa.0.8.vec.insert, %bb.aa ], [ %.sroa.0.4.vec.insert, %bb.z ], [ %.sroa.0.0.vec.insert, %.lr.ph42 ]
  %.lcssa77 = phi i64 [ %i.ke, %bb.ab ], [ %i.is, %bb.aa ], [ %i.hg, %bb.z ], [ %i.fu, %.lr.ph42 ]
  %i.kf = bitcast <4 x i32> %.sroa.097.0 to <2 x i64>
  %i.kg = bitcast <4 x i32> %.sroa.094.0 to <2 x i64>
  br label %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit

_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit: ; preds = %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit, %.lr.ph46
  %i.kh = phi <2 x i64> [ splat (i64 -1), %.lr.ph46 ], [ %i.kg, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.ki = phi <2 x i64> [ splat (i64 -1), %.lr.ph46 ], [ %i.kf, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kj = phi <4 x float> [ zeroinitializer, %.lr.ph46 ], [ %.sroa.13.0, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kk = phi <4 x float> [ zeroinitializer, %.lr.ph46 ], [ %.sroa.8.0, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kl = phi <4 x float> [ zeroinitializer, %.lr.ph46 ], [ %.sroa.0.0, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.km = phi <4 x float> [ zeroinitializer, %.lr.ph46 ], [ %.sroa.1386.0, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kn = phi <4 x float> [ zeroinitializer, %.lr.ph46 ], [ %.sroa.884.0, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.ko = phi <4 x float> [ zeroinitializer, %.lr.ph46 ], [ %.sroa.082.0, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kp = phi <4 x float> [ zeroinitializer, %.lr.ph46 ], [ %.sroa.1392.0, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ] ; 3 uses
  %i.kq = phi <4 x float> [ zeroinitializer, %.lr.ph46 ], [ %.sroa.890.0, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ] ; 3 uses
  %i.kr = phi <4 x float> [ zeroinitializer, %.lr.ph46 ], [ %.sroa.088.0, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ] ; 3 uses
  %.1.lcssa = phi i64 [ %.03444, %.lr.ph46 ], [ %.lcssa77, %_ZN6embree9TriangleMILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.ks = fsub <4 x float> %i.kr, %i.ko
  %i.kt = fsub <4 x float> %i.kq, %i.kn
  %i.ku = fsub <4 x float> %i.kp, %i.km
  %i.kv = fsub <4 x float> %i.kl, %i.kr
  %i.kw = fsub <4 x float> %i.kk, %i.kq
  %i.kx = fsub <4 x float> %i.kj, %i.kp
  store <4 x float> %i.kr, ptr %i.ec, align 16
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <4 x float> %i.kq, ptr %i.ky, align 16
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  store <4 x float> %i.kp, ptr %i.kz, align 16
end_hunk_1
begin_hunk_2_@_ZN6embree4sse218BVHNBuilderVirtualILi4EE12BVHNBuilderTINS0_17CreateLeafSpatialILi4ENS_10TriangleMvILi4EEEEEE10createLeafEPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body.i

_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  tail call void @__clang_call_terminate(ptr %i.cf) #28
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit:          ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load i8, ptr %i.r, align 8, !range !70, !noundef !71
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.m, label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit14

bb.m:                                             ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit
  %i.ci = load ptr, ptr %5, align 8, !nonnull !71, !align !74
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit14 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  tail call void @__clang_call_terminate(ptr %i.ck) #28
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
  br i1 %.not.i.i, label %bb.q, label %bb.p, !prof !75

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
  br i1 %.not23.i.i, label %bb.u, label %bb.t, !prof !75

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
  br i1 %.not24.i.i, label %bb.w, label %bb.v, !prof !75

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
  br i1 %.not, label %_ZNK6embree4sse217CreateLeafSpatialILi4ENS_10TriangleMvILi4EEEEclEPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorE.exit, label %.lr.ph30

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
  %i.fb = load ptr, ptr %i.fa, align 8, !noalias !1770 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eq, i64 160
  %i.fd = load i64, ptr %i.fc, align 8, !noalias !1770 ; 3 uses
  %i.fe = mul i64 %i.fd, %i.ez
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fe
  %i.fg = load <4 x float>, ptr %i.ff, align 1, !noalias !1771 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = zext i32 %i.fi to i64
  %i.fk = mul i64 %i.fd, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fk
  %i.fm = load <4 x float>, ptr %i.fl, align 1, !noalias !1772 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fo = load i32, ptr %i.fn, align 4
  %i.fp = zext i32 %i.fo to i64
  %i.fq = mul i64 %i.fd, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fq
  %i.fs = load <4 x float>, ptr %i.fr, align 1, !noalias !1773 ; 3 uses
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
  %i.gn = load ptr, ptr %i.gm, align 8, !noalias !1770 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 160
  %i.gp = load i64, ptr %i.go, align 8, !noalias !1770 ; 3 uses
  %i.gq = mul i64 %i.gp, %i.gl
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gq
  %i.gs = load <4 x float>, ptr %i.gr, align 1, !noalias !1771 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gu = load i32, ptr %i.gt, align 4
  %i.gv = zext i32 %i.gu to i64
  %i.gw = mul i64 %i.gp, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gw
  %i.gy = load <4 x float>, ptr %i.gx, align 1, !noalias !1772 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.ha = load i32, ptr %i.gz, align 4
  %i.hb = zext i32 %i.ha to i64
  %i.hc = mul i64 %i.gp, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.hc
  %i.he = load <4 x float>, ptr %i.hd, align 1, !noalias !1773 ; 3 uses
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
  %i.hz = load ptr, ptr %i.hy, align 8, !noalias !1770 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ho, i64 160
  %i.ib = load i64, ptr %i.ia, align 8, !noalias !1770 ; 3 uses
  %i.ic = mul i64 %i.ib, %i.hx
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ic
  %i.ie = load <4 x float>, ptr %i.id, align 1, !noalias !1771 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = zext i32 %i.ig to i64
  %i.ii = mul i64 %i.ib, %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ii
  %i.ik = load <4 x float>, ptr %i.ij, align 1, !noalias !1772 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.im = load i32, ptr %i.il, align 4
  %i.in = zext i32 %i.im to i64
  %i.io = mul i64 %i.ib, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.io
  %i.iq = load <4 x float>, ptr %i.ip, align 1, !noalias !1773 ; 3 uses
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
  %i.jl = load ptr, ptr %i.jk, align 8, !noalias !1770 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ja, i64 160
  %i.jn = load i64, ptr %i.jm, align 8, !noalias !1770 ; 3 uses
  %i.jo = mul i64 %i.jn, %i.jj
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.jo
  %i.jq = load <4 x float>, ptr %i.jp, align 1, !noalias !1771 ; 3 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.js = load i32, ptr %i.jr, align 4
  %i.jt = zext i32 %i.js to i64
  %i.ju = mul i64 %i.jn, %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.ju
  %i.jw = load <4 x float>, ptr %i.jv, align 1, !noalias !1772 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jy = load i32, ptr %i.jx, align 4
  %i.jz = zext i32 %i.jy to i64
  %i.ka = mul i64 %i.jn, %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.ka
  %i.kc = load <4 x float>, ptr %i.kb, align 1, !noalias !1773 ; 3 uses
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
end_hunk_2
begin_hunk_3_@_ZNK6embree4sse230BVHBuilderBinnedFastSpatialSAH13CreateLeafExtINS_10NodeRefPtrILi4EEENS0_17CreateLeafSpatialILi4ENS_10TriangleMvILi4EEEEEEclINS_13FastAllocator15CachedAllocatorEEES4_PNS_7PrimRefERKNS_5rangeImEET_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body.i

_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  tail call void @__clang_call_terminate(ptr %i.cg) #28
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit:          ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ch = load i8, ptr %i.s, align 8, !range !70, !noundef !71
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.m, label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit18

bb.m:                                             ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit
  %i.cj = load ptr, ptr %5, align 8, !nonnull !71, !align !74
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit18 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  tail call void @__clang_call_terminate(ptr %i.cl) #28
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit18:        ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i

bb.o:                                             ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit15
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cm, %bb.o ], [ %i.ce, %bb.k ]
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %eh.lpad-body.i

_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i: ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit18, %._crit_edge
  %i.cn = load i64, ptr %i.a, align 8             ; 8 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = add i64 %i.cp, %i.cn
  store i64 %i.cq, ptr %i.co, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 9 uses
  %i.cs = load i64, ptr %i.cr, align 16           ; 3 uses
  %i.ct = sub i64 0, %i.cs
  %i.cu = and i64 %i.ct, 15                       ; 2 uses
  %i.cv = add i64 %i.cs, %i.cn
  %i.cw = add i64 %i.cv, %i.cu                    ; 3 uses
  store i64 %i.cw, ptr %i.cr, align 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 5 uses
  %i.cy = load i64, ptr %i.cx, align 8
  %.not.i.i = icmp ugt i64 %i.cw, %i.cy
  br i1 %.not.i.i, label %bb.q, label %bb.p, !prof !75

bb.p:                                             ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 16
  %i.db = add i64 %i.da, %i.cu
  store i64 %i.db, ptr %i.cz, align 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = sub i64 %i.cw, %i.cn
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.de
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i

bb.q:                                             ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i
  store i64 %i.cs, ptr %i.cr, align 16
  %i.dg = shl i64 %i.cn, 2
  %i.dh = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 32           ; 2 uses
  %i.dj = icmp ugt i64 %i.dg, %i.di
  br i1 %i.dj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dk = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 64, i1 noundef zeroext false)
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.di, ptr %i.b, align 8
  %i.dl = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext true) ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.dl, ptr %i.dm, align 8
  %i.dn = load i64, ptr %i.cx, align 8
  %i.do = load i64, ptr %i.cr, align 16
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 6 uses
  %i.dr = load i64, ptr %i.dq, align 16
  %i.ds = add i64 %i.dr, %i.dp                    ; 2 uses
  store i64 %i.ds, ptr %i.dq, align 16
  %i.dt = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.dt, ptr %i.cx, align 8
  store i64 %i.cn, ptr %i.cr, align 16
  %.not23.i.i = icmp ugt i64 %i.cn, %i.dt
  br i1 %.not23.i.i, label %bb.u, label %bb.t, !prof !75

bb.t:                                             ; preds = %bb.s
  store i64 %i.ds, ptr %i.dq, align 16
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  store i64 0, ptr %i.cr, align 16
  %i.du = load i64, ptr %i.dh, align 32
  store i64 %i.du, ptr %i.b, align 8
  %i.dv = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext false) ; 2 uses
  store ptr %i.dv, ptr %i.dm, align 8
  %i.dw = load i64, ptr %i.cx, align 8
  %i.dx = load i64, ptr %i.cr, align 16
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = load i64, ptr %i.dq, align 16
  %i.ea = add i64 %i.dz, %i.dy                    ; 2 uses
  store i64 %i.ea, ptr %i.dq, align 16
  %i.eb = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.eb, ptr %i.cx, align 8
  store i64 %i.cn, ptr %i.cr, align 16
  %.not24.i.i = icmp ugt i64 %i.cn, %i.eb
  br i1 %.not24.i.i, label %bb.w, label %bb.v, !prof !75

bb.v:                                             ; preds = %bb.u
  store i64 %i.ea, ptr %i.dq, align 16
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  store i64 0, ptr %i.cr, align 16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t
  %.0.i.i = phi ptr [ %i.dl, %bb.t ], [ %i.dv, %bb.v ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i

_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i: ; preds = %bb.x, %bb.r, %bb.p
  %.1.i.i = phi ptr [ %i.df, %bb.p ], [ %i.dk, %bb.r ], [ %.0.i.i, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %_ZNK6embree4sse217CreateLeafSpatialILi4ENS_10TriangleMvILi4EEEEclEPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorE.exit, label %.lr.ph40

.lr.ph40:                                         ; preds = %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit
  %.0.i39 = phi i64 [ %i.lc, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit ], [ 0, %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i ] ; 2 uses
  %.02838 = phi i64 [ %.1.lcssa, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit ], [ %i.g, %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i ] ; 7 uses
  %i.ec = getelementptr inbounds nuw [176 x i8], ptr %.1.i.i, i64 %.0.i39 ; 11 uses
  %i.ed = load i64, ptr %i.d, align 8             ; 4 uses
  %i.ee = icmp ult i64 %.02838, %i.ed
  br i1 %i.ee, label %.lr.ph36, label %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit

.lr.ph36:                                         ; preds = %.lr.ph40
  %i.ef = load ptr, ptr %0, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 104
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 488
  %i.ej = load ptr, ptr %i.ei, align 8            ; 4 uses
  %i.ek = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.02838 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  %i.em = load i32, ptr %i.el, align 4            ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 28
  %i.eo = load i32, ptr %i.en, align 4            ; 2 uses
  %i.ep = zext i32 %i.em to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8            ; 4 uses
  %i.es = zext i32 %i.eo to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 88
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 104
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = mul i64 %i.ew, %i.es
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ex ; 3 uses
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 144
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !1872 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.er, i64 160
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !1872 ; 3 uses
  %i.ff = mul i64 %i.fe, %i.fa
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ff
  %i.fh = load <4 x float>, ptr %i.fg, align 1, !noalias !1873 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fj = load i32, ptr %i.fi, align 4
  %i.fk = zext i32 %i.fj to i64
  %i.fl = mul i64 %i.fe, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fl
  %i.fn = load <4 x float>, ptr %i.fm, align 1, !noalias !1874 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = zext i32 %i.fp to i64
  %i.fr = mul i64 %i.fe, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fr
  %i.ft = load <4 x float>, ptr %i.fs, align 1, !noalias !1875 ; 3 uses
  %.sroa.091.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.em, i64 0 ; 2 uses
  %.sroa.088.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.eo, i64 0 ; 2 uses
  %.sroa.082.0.vec.insert = shufflevector <4 x float> %i.fh, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.884.16.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fh, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.1386.32.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fh, <4 x i32> <i32 6, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.076.0.vec.insert = shufflevector <4 x float> %i.fn, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.878.16.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fn, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.1380.32.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fn, <4 x i32> <i32 6, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.0.0.vec.insert = shufflevector <4 x float> %i.ft, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.8.16.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.ft, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.13.32.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.ft, <4 x i32> <i32 6, i32 1, i32 2, i32 3> ; 2 uses
  %i.fu = add nuw i64 %.02838, 1                  ; 3 uses
  %i.fv = icmp ult i64 %i.fu, %i.ed
  br i1 %i.fv, label %bb.y, label %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit

bb.y:                                             ; preds = %.lr.ph36
  %i.fw = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.fu ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  %i.fy = load i32, ptr %i.fx, align 4            ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 28
  %i.ga = load i32, ptr %i.fz, align 4            ; 2 uses
  %i.gb = zext i32 %i.fy to i64
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.gb
  %i.gd = load ptr, ptr %i.gc, align 8            ; 4 uses
  %i.ge = zext i32 %i.ga to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 88
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 104
  %i.gi = load i64, ptr %i.gh, align 8
  %i.gj = mul i64 %i.gi, %i.ge
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gj ; 3 uses
  %i.gl = load i32, ptr %i.gk, align 4
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gd, i64 144
  %i.go = load ptr, ptr %i.gn, align 8, !noalias !1872 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gd, i64 160
  %i.gq = load i64, ptr %i.gp, align 8, !noalias !1872 ; 3 uses
  %i.gr = mul i64 %i.gq, %i.gm
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gr
  %i.gt = load <4 x float>, ptr %i.gs, align 1, !noalias !1873 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.gv = load i32, ptr %i.gu, align 4
  %i.gw = zext i32 %i.gv to i64
  %i.gx = mul i64 %i.gq, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gx
  %i.gz = load <4 x float>, ptr %i.gy, align 1, !noalias !1874 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.hb = load i32, ptr %i.ha, align 4
  %i.hc = zext i32 %i.hb to i64
  %i.hd = mul i64 %i.gq, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.hd
  %i.hf = load <4 x float>, ptr %i.he, align 1, !noalias !1875 ; 3 uses
  %.sroa.091.4.vec.insert = insertelement <4 x i32> %.sroa.091.0.vec.insert, i32 %i.fy, i64 1 ; 2 uses
  %.sroa.088.4.vec.insert = insertelement <4 x i32> %.sroa.088.0.vec.insert, i32 %i.ga, i64 1 ; 2 uses
  %.sroa.082.4.vec.insert = shufflevector <4 x float> %.sroa.082.0.vec.insert, <4 x float> %i.gt, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.884.20.vec.insert = shufflevector <4 x float> %.sroa.884.16.vec.insert, <4 x float> %i.gt, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.1386.36.vec.insert = shufflevector <4 x float> %.sroa.1386.32.vec.insert, <4 x float> %i.gt, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.076.4.vec.insert = shufflevector <4 x float> %.sroa.076.0.vec.insert, <4 x float> %i.gz, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.878.20.vec.insert = shufflevector <4 x float> %.sroa.878.16.vec.insert, <4 x float> %i.gz, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.1380.36.vec.insert = shufflevector <4 x float> %.sroa.1380.32.vec.insert, <4 x float> %i.gz, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.0.4.vec.insert = shufflevector <4 x float> %.sroa.0.0.vec.insert, <4 x float> %i.hf, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8.20.vec.insert = shufflevector <4 x float> %.sroa.8.16.vec.insert, <4 x float> %i.hf, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13.36.vec.insert = shufflevector <4 x float> %.sroa.13.32.vec.insert, <4 x float> %i.hf, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %i.hg = add nuw i64 %.02838, 2                  ; 3 uses
  %i.hh = icmp ult i64 %i.hg, %i.ed
  br i1 %i.hh, label %bb.z, label %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit

bb.z:                                             ; preds = %bb.y
  %i.hi = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.hg ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 12
  %i.hk = load i32, ptr %i.hj, align 4            ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 28
  %i.hm = load i32, ptr %i.hl, align 4            ; 2 uses
  %i.hn = zext i32 %i.hk to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.hn
  %i.hp = load ptr, ptr %i.ho, align 8            ; 4 uses
  %i.hq = zext i32 %i.hm to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 88
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 104
  %i.hu = load i64, ptr %i.ht, align 8
  %i.hv = mul i64 %i.hu, %i.hq
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hv ; 3 uses
  %i.hx = load i32, ptr %i.hw, align 4
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hp, i64 144
  %i.ia = load ptr, ptr %i.hz, align 8, !noalias !1872 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hp, i64 160
  %i.ic = load i64, ptr %i.ib, align 8, !noalias !1872 ; 3 uses
  %i.id = mul i64 %i.ic, %i.hy
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.id
  %i.if = load <4 x float>, ptr %i.ie, align 1, !noalias !1873 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.ih = load i32, ptr %i.ig, align 4
  %i.ii = zext i32 %i.ih to i64
  %i.ij = mul i64 %i.ic, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ij
  %i.il = load <4 x float>, ptr %i.ik, align 1, !noalias !1874 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.in = load i32, ptr %i.im, align 4
  %i.io = zext i32 %i.in to i64
  %i.ip = mul i64 %i.ic, %i.io
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ip
  %i.ir = load <4 x float>, ptr %i.iq, align 1, !noalias !1875 ; 3 uses
  %.sroa.091.8.vec.insert = insertelement <4 x i32> %.sroa.091.4.vec.insert, i32 %i.hk, i64 2 ; 2 uses
  %.sroa.088.8.vec.insert = insertelement <4 x i32> %.sroa.088.4.vec.insert, i32 %i.hm, i64 2 ; 2 uses
  %.sroa.082.8.vec.insert = shufflevector <4 x float> %.sroa.082.4.vec.insert, <4 x float> %i.if, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.884.24.vec.insert = shufflevector <4 x float> %.sroa.884.20.vec.insert, <4 x float> %i.if, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.1386.40.vec.insert = shufflevector <4 x float> %.sroa.1386.36.vec.insert, <4 x float> %i.if, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.076.8.vec.insert = shufflevector <4 x float> %.sroa.076.4.vec.insert, <4 x float> %i.il, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.878.24.vec.insert = shufflevector <4 x float> %.sroa.878.20.vec.insert, <4 x float> %i.il, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.1380.40.vec.insert = shufflevector <4 x float> %.sroa.1380.36.vec.insert, <4 x float> %i.il, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.0.8.vec.insert = shufflevector <4 x float> %.sroa.0.4.vec.insert, <4 x float> %i.ir, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8.24.vec.insert = shufflevector <4 x float> %.sroa.8.20.vec.insert, <4 x float> %i.ir, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13.40.vec.insert = shufflevector <4 x float> %.sroa.13.36.vec.insert, <4 x float> %i.ir, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %i.is = add nuw i64 %.02838, 3                  ; 3 uses
  %i.it = icmp ult i64 %i.is, %i.ed
  br i1 %i.it, label %bb.aa, label %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.iu = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.is ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 12
  %i.iw = load i32, ptr %i.iv, align 4            ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 28
  %i.iy = load i32, ptr %i.ix, align 4            ; 2 uses
  %i.iz = zext i32 %i.iw to i64
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.iz
  %i.jb = load ptr, ptr %i.ja, align 8            ; 4 uses
  %i.jc = zext i32 %i.iy to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 88
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 104
  %i.jg = load i64, ptr %i.jf, align 8
  %i.jh = mul i64 %i.jg, %i.jc
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jh ; 3 uses
  %i.jj = load i32, ptr %i.ji, align 4
  %i.jk = zext i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jb, i64 144
  %i.jm = load ptr, ptr %i.jl, align 8, !noalias !1872 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jb, i64 160
  %i.jo = load i64, ptr %i.jn, align 8, !noalias !1872 ; 3 uses
  %i.jp = mul i64 %i.jo, %i.jk
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jp
  %i.jr = load <4 x float>, ptr %i.jq, align 1, !noalias !1873 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jt = load i32, ptr %i.js, align 4
  %i.ju = zext i32 %i.jt to i64
  %i.jv = mul i64 %i.jo, %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jv
  %i.jx = load <4 x float>, ptr %i.jw, align 1, !noalias !1874 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jz = load i32, ptr %i.jy, align 4
  %i.ka = zext i32 %i.jz to i64
  %i.kb = mul i64 %i.jo, %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.kb
  %i.kd = load <4 x float>, ptr %i.kc, align 1, !noalias !1875 ; 3 uses
  %.sroa.091.12.vec.insert = insertelement <4 x i32> %.sroa.091.8.vec.insert, i32 %i.iw, i64 3
  %.sroa.088.12.vec.insert = insertelement <4 x i32> %.sroa.088.8.vec.insert, i32 %i.iy, i64 3
  %.sroa.082.12.vec.insert = shufflevector <4 x float> %.sroa.082.8.vec.insert, <4 x float> %i.jr, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.884.28.vec.insert = shufflevector <4 x float> %.sroa.884.24.vec.insert, <4 x float> %i.jr, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.1386.44.vec.insert = shufflevector <4 x float> %.sroa.1386.40.vec.insert, <4 x float> %i.jr, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.076.12.vec.insert = shufflevector <4 x float> %.sroa.076.8.vec.insert, <4 x float> %i.jx, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.878.28.vec.insert = shufflevector <4 x float> %.sroa.878.24.vec.insert, <4 x float> %i.jx, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.1380.44.vec.insert = shufflevector <4 x float> %.sroa.1380.40.vec.insert, <4 x float> %i.jx, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.0.12.vec.insert = shufflevector <4 x float> %.sroa.0.8.vec.insert, <4 x float> %i.kd, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8.28.vec.insert = shufflevector <4 x float> %.sroa.8.24.vec.insert, <4 x float> %i.kd, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13.44.vec.insert = shufflevector <4 x float> %.sroa.13.40.vec.insert, <4 x float> %i.kd, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.ke = add nuw i64 %.02838, 4
  br label %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit

_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit: ; preds = %bb.aa, %bb.z, %bb.y, %.lr.ph36
  %.sroa.091.0 = phi <4 x i32> [ %.sroa.091.12.vec.insert, %bb.aa ], [ %.sroa.091.8.vec.insert, %bb.z ], [ %.sroa.091.4.vec.insert, %bb.y ], [ %.sroa.091.0.vec.insert, %.lr.ph36 ]
  %.sroa.088.0 = phi <4 x i32> [ %.sroa.088.12.vec.insert, %bb.aa ], [ %.sroa.088.8.vec.insert, %bb.z ], [ %.sroa.088.4.vec.insert, %bb.y ], [ %.sroa.088.0.vec.insert, %.lr.ph36 ]
  %.sroa.1386.0 = phi <4 x float> [ %.sroa.1386.44.vec.insert, %bb.aa ], [ %.sroa.1386.40.vec.insert, %bb.z ], [ %.sroa.1386.36.vec.insert, %bb.y ], [ %.sroa.1386.32.vec.insert, %.lr.ph36 ]
  %.sroa.884.0 = phi <4 x float> [ %.sroa.884.28.vec.insert, %bb.aa ], [ %.sroa.884.24.vec.insert, %bb.z ], [ %.sroa.884.20.vec.insert, %bb.y ], [ %.sroa.884.16.vec.insert, %.lr.ph36 ]
  %.sroa.082.0 = phi <4 x float> [ %.sroa.082.12.vec.insert, %bb.aa ], [ %.sroa.082.8.vec.insert, %bb.z ], [ %.sroa.082.4.vec.insert, %bb.y ], [ %.sroa.082.0.vec.insert, %.lr.ph36 ]
  %.sroa.1380.0 = phi <4 x float> [ %.sroa.1380.44.vec.insert, %bb.aa ], [ %.sroa.1380.40.vec.insert, %bb.z ], [ %.sroa.1380.36.vec.insert, %bb.y ], [ %.sroa.1380.32.vec.insert, %.lr.ph36 ]
  %.sroa.878.0 = phi <4 x float> [ %.sroa.878.28.vec.insert, %bb.aa ], [ %.sroa.878.24.vec.insert, %bb.z ], [ %.sroa.878.20.vec.insert, %bb.y ], [ %.sroa.878.16.vec.insert, %.lr.ph36 ]
  %.sroa.076.0 = phi <4 x float> [ %.sroa.076.12.vec.insert, %bb.aa ], [ %.sroa.076.8.vec.insert, %bb.z ], [ %.sroa.076.4.vec.insert, %bb.y ], [ %.sroa.076.0.vec.insert, %.lr.ph36 ]
  %.sroa.13.0 = phi <4 x float> [ %.sroa.13.44.vec.insert, %bb.aa ], [ %.sroa.13.40.vec.insert, %bb.z ], [ %.sroa.13.36.vec.insert, %bb.y ], [ %.sroa.13.32.vec.insert, %.lr.ph36 ]
  %.sroa.8.0 = phi <4 x float> [ %.sroa.8.28.vec.insert, %bb.aa ], [ %.sroa.8.24.vec.insert, %bb.z ], [ %.sroa.8.20.vec.insert, %bb.y ], [ %.sroa.8.16.vec.insert, %.lr.ph36 ]
  %.sroa.0.0 = phi <4 x float> [ %.sroa.0.12.vec.insert, %bb.aa ], [ %.sroa.0.8.vec.insert, %bb.z ], [ %.sroa.0.4.vec.insert, %bb.y ], [ %.sroa.0.0.vec.insert, %.lr.ph36 ]
  %.lcssa71 = phi i64 [ %i.ke, %bb.aa ], [ %i.is, %bb.z ], [ %i.hg, %bb.y ], [ %i.fu, %.lr.ph36 ]
  %i.kf = bitcast <4 x i32> %.sroa.091.0 to <2 x i64>
  %i.kg = bitcast <4 x i32> %.sroa.088.0 to <2 x i64>
  br label %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit

_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit: ; preds = %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit, %.lr.ph40
  %i.kh = phi <2 x i64> [ splat (i64 -1), %.lr.ph40 ], [ %i.kg, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.ki = phi <2 x i64> [ splat (i64 -1), %.lr.ph40 ], [ %i.kf, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kj = phi <4 x float> [ zeroinitializer, %.lr.ph40 ], [ %.sroa.13.0, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kk = phi <4 x float> [ zeroinitializer, %.lr.ph40 ], [ %.sroa.8.0, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kl = phi <4 x float> [ zeroinitializer, %.lr.ph40 ], [ %.sroa.0.0, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.km = phi <4 x float> [ zeroinitializer, %.lr.ph40 ], [ %.sroa.1380.0, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kn = phi <4 x float> [ zeroinitializer, %.lr.ph40 ], [ %.sroa.878.0, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.ko = phi <4 x float> [ zeroinitializer, %.lr.ph40 ], [ %.sroa.076.0, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kp = phi <4 x float> [ zeroinitializer, %.lr.ph40 ], [ %.sroa.1386.0, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kq = phi <4 x float> [ zeroinitializer, %.lr.ph40 ], [ %.sroa.884.0, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %i.kr = phi <4 x float> [ zeroinitializer, %.lr.ph40 ], [ %.sroa.082.0, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  %.1.lcssa = phi i64 [ %.02838, %.lr.ph40 ], [ %.lcssa71, %_ZN6embree10TriangleMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit ]
  store <4 x float> %i.kr, ptr %i.ec, align 16
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <4 x float> %i.kq, ptr %i.ks, align 16
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  store <4 x float> %i.kp, ptr %i.kt, align 16
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ec, i64 48
  store <4 x float> %i.ko, ptr %i.ku, align 16
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ec, i64 64
  store <4 x float> %i.kn, ptr %i.kv, align 16
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ec, i64 80
  store <4 x float> %i.km, ptr %i.kw, align 16
end_hunk_3
begin_hunk_4_@_ZN6embree4sse218BVHNBuilderVirtualILi4EE12BVHNBuilderTINS0_17CreateLeafSpatialILi4ENS_6QuadMvILi4EEEEEE10createLeafEPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorE:bb.a

bb.l:                                             ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  tail call void @__clang_call_terminate(ptr %i.cf) #28
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit:          ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.cg = load i8, ptr %i.r, align 8, !range !70, !noundef !71
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.m, label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit14

bb.m:                                             ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit
  %i.ci = load ptr, ptr %5, align 8, !nonnull !71, !align !74
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit14 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  tail call void @__clang_call_terminate(ptr %i.ck) #28
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
  br i1 %.not.i.i, label %bb.q, label %bb.p, !prof !75

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
  br i1 %.not23.i.i, label %bb.u, label %bb.t, !prof !75

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
  br i1 %.not24.i.i, label %bb.w, label %bb.v, !prof !75

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
  br i1 %.not, label %_ZNK6embree4sse217CreateLeafSpatialILi4ENS_6QuadMvILi4EEEEclEPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorE.exit, label %.lr.ph32

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
  %i.fb = load ptr, ptr %i.fa, align 8, !noalias !2338 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eq, i64 160
  %i.fd = load i64, ptr %i.fc, align 8, !noalias !2338 ; 4 uses
  %i.fe = mul i64 %i.fd, %i.ez
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fe
  %i.fg = load <4 x float>, ptr %i.ff, align 1, !noalias !2339 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = zext i32 %i.fi to i64
  %i.fk = mul i64 %i.fd, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fk
  %i.fm = load <4 x float>, ptr %i.fl, align 1, !noalias !2340 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fo = load i32, ptr %i.fn, align 4
  %i.fp = zext i32 %i.fo to i64
  %i.fq = mul i64 %i.fd, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fq
  %i.fs = load <4 x float>, ptr %i.fr, align 1, !noalias !2341 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %i.fu = load i32, ptr %i.ft, align 4
  %i.fv = zext i32 %i.fu to i64
  %i.fw = mul i64 %i.fd, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fw
  %i.fy = load <4 x float>, ptr %i.fx, align 1, !noalias !2342 ; 3 uses
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
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !2338 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gi, i64 160
  %i.gv = load i64, ptr %i.gu, align 8, !noalias !2338 ; 4 uses
  %i.gw = mul i64 %i.gv, %i.gr
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gw
  %i.gy = load <4 x float>, ptr %i.gx, align 1, !noalias !2339 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.ha = load i32, ptr %i.gz, align 4
  %i.hb = zext i32 %i.ha to i64
  %i.hc = mul i64 %i.gv, %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hc
  %i.he = load <4 x float>, ptr %i.hd, align 1, !noalias !2340 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = zext i32 %i.hg to i64
  %i.hi = mul i64 %i.gv, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hi
  %i.hk = load <4 x float>, ptr %i.hj, align 1, !noalias !2341 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  %i.hm = load i32, ptr %i.hl, align 4
  %i.hn = zext i32 %i.hm to i64
  %i.ho = mul i64 %i.gv, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.ho
  %i.hq = load <4 x float>, ptr %i.hp, align 1, !noalias !2342 ; 3 uses
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
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !2338 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ia, i64 160
  %i.in = load i64, ptr %i.im, align 8, !noalias !2338 ; 4 uses
  %i.io = mul i64 %i.in, %i.ij
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.io
  %i.iq = load <4 x float>, ptr %i.ip, align 1, !noalias !2339 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.is = load i32, ptr %i.ir, align 4
  %i.it = zext i32 %i.is to i64
  %i.iu = mul i64 %i.in, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.iu
  %i.iw = load <4 x float>, ptr %i.iv, align 1, !noalias !2340 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.iy = load i32, ptr %i.ix, align 4
  %i.iz = zext i32 %i.iy to i64
  %i.ja = mul i64 %i.in, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ja
  %i.jc = load <4 x float>, ptr %i.jb, align 1, !noalias !2341 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  %i.je = load i32, ptr %i.jd, align 4
  %i.jf = zext i32 %i.je to i64
  %i.jg = mul i64 %i.in, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.jg
  %i.ji = load <4 x float>, ptr %i.jh, align 1, !noalias !2342 ; 3 uses
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
  %i.kd = load ptr, ptr %i.kc, align 8, !noalias !2338 ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.js, i64 160
  %i.kf = load i64, ptr %i.ke, align 8, !noalias !2338 ; 4 uses
  %i.kg = mul i64 %i.kf, %i.kb
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.kg
  %i.ki = load <4 x float>, ptr %i.kh, align 1, !noalias !2339 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  %i.kk = load i32, ptr %i.kj, align 4
  %i.kl = zext i32 %i.kk to i64
  %i.km = mul i64 %i.kf, %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.km
  %i.ko = load <4 x float>, ptr %i.kn, align 1, !noalias !2340 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kq = load i32, ptr %i.kp, align 4
  %i.kr = zext i32 %i.kq to i64
  %i.ks = mul i64 %i.kf, %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.ks
  %i.ku = load <4 x float>, ptr %i.kt, align 1, !noalias !2341 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jz, i64 12
  %i.kw = load i32, ptr %i.kv, align 4
  %i.kx = zext i32 %i.kw to i64
  %i.ky = mul i64 %i.kf, %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.ky
  %i.la = load <4 x float>, ptr %i.kz, align 1, !noalias !2342 ; 3 uses
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
end_hunk_4
begin_hunk_5_@_ZNK6embree4sse230BVHBuilderBinnedFastSpatialSAH13CreateLeafExtINS_10NodeRefPtrILi4EEENS0_17CreateLeafSpatialILi4ENS_6QuadMvILi4EEEEEEclINS_13FastAllocator15CachedAllocatorEEES4_PNS_7PrimRefERKNS_5rangeImEET_:bb.a

bb.l:                                             ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  tail call void @__clang_call_terminate(ptr %i.cg) #28
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit:          ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.ch = load i8, ptr %i.s, align 8, !range !70, !noundef !71
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.m, label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit18

bb.m:                                             ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit
  %i.cj = load ptr, ptr %5, align 8, !nonnull !71, !align !74
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit18 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  tail call void @__clang_call_terminate(ptr %i.cl) #28
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit18:        ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i

bb.o:                                             ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit15
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cm, %bb.o ], [ %i.ce, %bb.k ]
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %eh.lpad-body.i

_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i: ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit18, %._crit_edge
  %i.cn = load i64, ptr %i.a, align 8             ; 8 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = add i64 %i.cp, %i.cn
  store i64 %i.cq, ptr %i.co, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 9 uses
  %i.cs = load i64, ptr %i.cr, align 16           ; 3 uses
  %i.ct = sub i64 0, %i.cs
  %i.cu = and i64 %i.ct, 15                       ; 2 uses
  %i.cv = add i64 %i.cs, %i.cn
  %i.cw = add i64 %i.cv, %i.cu                    ; 3 uses
  store i64 %i.cw, ptr %i.cr, align 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 5 uses
  %i.cy = load i64, ptr %i.cx, align 8
  %.not.i.i = icmp ugt i64 %i.cw, %i.cy
  br i1 %.not.i.i, label %bb.q, label %bb.p, !prof !75

bb.p:                                             ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 16
  %i.db = add i64 %i.da, %i.cu
  store i64 %i.db, ptr %i.cz, align 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = sub i64 %i.cw, %i.cn
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.de
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i

bb.q:                                             ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i
  store i64 %i.cs, ptr %i.cr, align 16
  %i.dg = shl i64 %i.cn, 2
  %i.dh = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 32           ; 2 uses
  %i.dj = icmp ugt i64 %i.dg, %i.di
  br i1 %i.dj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dk = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 64, i1 noundef zeroext false)
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.di, ptr %i.b, align 8
  %i.dl = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext true) ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.dl, ptr %i.dm, align 8
  %i.dn = load i64, ptr %i.cx, align 8
  %i.do = load i64, ptr %i.cr, align 16
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 6 uses
  %i.dr = load i64, ptr %i.dq, align 16
  %i.ds = add i64 %i.dr, %i.dp                    ; 2 uses
  store i64 %i.ds, ptr %i.dq, align 16
  %i.dt = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.dt, ptr %i.cx, align 8
  store i64 %i.cn, ptr %i.cr, align 16
  %.not23.i.i = icmp ugt i64 %i.cn, %i.dt
  br i1 %.not23.i.i, label %bb.u, label %bb.t, !prof !75

bb.t:                                             ; preds = %bb.s
  store i64 %i.ds, ptr %i.dq, align 16
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  store i64 0, ptr %i.cr, align 16
  %i.du = load i64, ptr %i.dh, align 32
  store i64 %i.du, ptr %i.b, align 8
  %i.dv = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext false) ; 2 uses
  store ptr %i.dv, ptr %i.dm, align 8
  %i.dw = load i64, ptr %i.cx, align 8
  %i.dx = load i64, ptr %i.cr, align 16
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = load i64, ptr %i.dq, align 16
  %i.ea = add i64 %i.dz, %i.dy                    ; 2 uses
  store i64 %i.ea, ptr %i.dq, align 16
  %i.eb = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.eb, ptr %i.cx, align 8
  store i64 %i.cn, ptr %i.cr, align 16
  %.not24.i.i = icmp ugt i64 %i.cn, %i.eb
  br i1 %.not24.i.i, label %bb.w, label %bb.v, !prof !75

bb.v:                                             ; preds = %bb.u
  store i64 %i.ea, ptr %i.dq, align 16
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  store i64 0, ptr %i.cr, align 16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t
  %.0.i.i = phi ptr [ %i.dl, %bb.t ], [ %i.dv, %bb.v ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i

_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i: ; preds = %bb.x, %bb.r, %bb.p
  %.1.i.i = phi ptr [ %i.df, %bb.p ], [ %i.dk, %bb.r ], [ %.0.i.i, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %_ZNK6embree4sse217CreateLeafSpatialILi4ENS_6QuadMvILi4EEEEclEPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorE.exit, label %.lr.ph42

.lr.ph42:                                         ; preds = %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i, %_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit
  %.0.i41 = phi i64 [ %i.mg, %_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit ], [ 0, %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i ] ; 2 uses
  %.03040 = phi i64 [ %.1.lcssa, %_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit ], [ %i.g, %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i ] ; 7 uses
  %i.ec = getelementptr inbounds nuw [224 x i8], ptr %.1.i.i, i64 %.0.i41 ; 14 uses
  %i.ed = load i64, ptr %i.d, align 8             ; 4 uses
  %i.ee = icmp ult i64 %.03040, %i.ed
  br i1 %i.ee, label %.lr.ph38, label %_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit

.lr.ph38:                                         ; preds = %.lr.ph42
  %i.ef = load ptr, ptr %0, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 104
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 488
  %i.ej = load ptr, ptr %i.ei, align 8            ; 4 uses
  %i.ek = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.03040 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  %i.em = load i32, ptr %i.el, align 4            ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 28
  %i.eo = load i32, ptr %i.en, align 4            ; 2 uses
  %i.ep = zext i32 %i.em to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8            ; 4 uses
  %i.es = zext i32 %i.eo to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 88
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 104
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = mul i64 %i.ew, %i.es
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ex ; 4 uses
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 144
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !3122 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.er, i64 160
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !3122 ; 4 uses
  %i.ff = mul i64 %i.fe, %i.fa
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ff
  %i.fh = load <4 x float>, ptr %i.fg, align 1, !noalias !3123 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fj = load i32, ptr %i.fi, align 4
  %i.fk = zext i32 %i.fj to i64
  %i.fl = mul i64 %i.fe, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fl
  %i.fn = load <4 x float>, ptr %i.fm, align 1, !noalias !3124 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = zext i32 %i.fp to i64
  %i.fr = mul i64 %i.fe, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fr
  %i.ft = load <4 x float>, ptr %i.fs, align 1, !noalias !3125 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  %i.fv = load i32, ptr %i.fu, align 4
  %i.fw = zext i32 %i.fv to i64
  %i.fx = mul i64 %i.fe, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fx
  %i.fz = load <4 x float>, ptr %i.fy, align 1, !noalias !3126 ; 3 uses
  %.sroa.0102.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.em, i64 0 ; 2 uses
  %.sroa.099.0.vec.insert = insertelement <4 x i32> <i32 poison, i32 -1, i32 -1, i32 -1>, i32 %i.eo, i64 0 ; 2 uses
  %.sroa.093.0.vec.insert = shufflevector <4 x float> %i.fh, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.895.16.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fh, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.1397.32.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fh, <4 x i32> <i32 6, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.087.0.vec.insert = shufflevector <4 x float> %i.fn, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.889.16.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fn, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.1391.32.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fn, <4 x i32> <i32 6, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.081.0.vec.insert = shufflevector <4 x float> %i.ft, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.883.16.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.ft, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.1385.32.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.ft, <4 x i32> <i32 6, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.0.0.vec.insert = shufflevector <4 x float> %i.fz, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %.sroa.8.16.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fz, <4 x i32> <i32 5, i32 1, i32 2, i32 3> ; 2 uses
  %.sroa.13.32.vec.insert = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fz, <4 x i32> <i32 6, i32 1, i32 2, i32 3> ; 2 uses
  %i.ga = add nuw i64 %.03040, 1                  ; 3 uses
  %i.gb = icmp ult i64 %i.ga, %i.ed
  br i1 %i.gb, label %bb.y, label %_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit

bb.y:                                             ; preds = %.lr.ph38
  %i.gc = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.ga ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  %i.ge = load i32, ptr %i.gd, align 4            ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 28
  %i.gg = load i32, ptr %i.gf, align 4            ; 2 uses
  %i.gh = zext i32 %i.ge to i64
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.gh
  %i.gj = load ptr, ptr %i.gi, align 8            ; 4 uses
  %i.gk = zext i32 %i.gg to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 88
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 104
  %i.go = load i64, ptr %i.gn, align 8
  %i.gp = mul i64 %i.go, %i.gk
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gp ; 4 uses
  %i.gr = load i32, ptr %i.gq, align 4
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gj, i64 144
  %i.gu = load ptr, ptr %i.gt, align 8, !noalias !3122 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gj, i64 160
  %i.gw = load i64, ptr %i.gv, align 8, !noalias !3122 ; 4 uses
  %i.gx = mul i64 %i.gw, %i.gs
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gx
  %i.gz = load <4 x float>, ptr %i.gy, align 1, !noalias !3123 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  %i.hb = load i32, ptr %i.ha, align 4
  %i.hc = zext i32 %i.hb to i64
  %i.hd = mul i64 %i.gw, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.hd
  %i.hf = load <4 x float>, ptr %i.he, align 1, !noalias !3124 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.hh = load i32, ptr %i.hg, align 4
  %i.hi = zext i32 %i.hh to i64
  %i.hj = mul i64 %i.gw, %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.hj
  %i.hl = load <4 x float>, ptr %i.hk, align 1, !noalias !3125 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  %i.hn = load i32, ptr %i.hm, align 4
  %i.ho = zext i32 %i.hn to i64
  %i.hp = mul i64 %i.gw, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.hp
  %i.hr = load <4 x float>, ptr %i.hq, align 1, !noalias !3126 ; 3 uses
  %.sroa.0102.4.vec.insert = insertelement <4 x i32> %.sroa.0102.0.vec.insert, i32 %i.ge, i64 1 ; 2 uses
  %.sroa.099.4.vec.insert = insertelement <4 x i32> %.sroa.099.0.vec.insert, i32 %i.gg, i64 1 ; 2 uses
  %.sroa.093.4.vec.insert = shufflevector <4 x float> %.sroa.093.0.vec.insert, <4 x float> %i.gz, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.895.20.vec.insert = shufflevector <4 x float> %.sroa.895.16.vec.insert, <4 x float> %i.gz, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.1397.36.vec.insert = shufflevector <4 x float> %.sroa.1397.32.vec.insert, <4 x float> %i.gz, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.087.4.vec.insert = shufflevector <4 x float> %.sroa.087.0.vec.insert, <4 x float> %i.hf, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.889.20.vec.insert = shufflevector <4 x float> %.sroa.889.16.vec.insert, <4 x float> %i.hf, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.1391.36.vec.insert = shufflevector <4 x float> %.sroa.1391.32.vec.insert, <4 x float> %i.hf, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.081.4.vec.insert = shufflevector <4 x float> %.sroa.081.0.vec.insert, <4 x float> %i.hl, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.883.20.vec.insert = shufflevector <4 x float> %.sroa.883.16.vec.insert, <4 x float> %i.hl, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.1385.36.vec.insert = shufflevector <4 x float> %.sroa.1385.32.vec.insert, <4 x float> %i.hl, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %.sroa.0.4.vec.insert = shufflevector <4 x float> %.sroa.0.0.vec.insert, <4 x float> %i.hr, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %.sroa.8.20.vec.insert = shufflevector <4 x float> %.sroa.8.16.vec.insert, <4 x float> %i.hr, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %.sroa.13.36.vec.insert = shufflevector <4 x float> %.sroa.13.32.vec.insert, <4 x float> %i.hr, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %i.hs = add nuw i64 %.03040, 2                  ; 3 uses
  %i.ht = icmp ult i64 %i.hs, %i.ed
  br i1 %i.ht, label %bb.z, label %_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit

bb.z:                                             ; preds = %bb.y
  %i.hu = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.hs ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 12
  %i.hw = load i32, ptr %i.hv, align 4            ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hu, i64 28
  %i.hy = load i32, ptr %i.hx, align 4            ; 2 uses
  %i.hz = zext i32 %i.hw to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.hz
  %i.ib = load ptr, ptr %i.ia, align 8            ; 4 uses
  %i.ic = zext i32 %i.hy to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 88
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 104
  %i.ig = load i64, ptr %i.if, align 8
  %i.ih = mul i64 %i.ig, %i.ic
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ih ; 4 uses
  %i.ij = load i32, ptr %i.ii, align 4
  %i.ik = zext i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr %i.ib, i64 144
  %i.im = load ptr, ptr %i.il, align 8, !noalias !3122 ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ib, i64 160
  %i.io = load i64, ptr %i.in, align 8, !noalias !3122 ; 4 uses
  %i.ip = mul i64 %i.io, %i.ik
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.ip
  %i.ir = load <4 x float>, ptr %i.iq, align 1, !noalias !3123 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.it = load i32, ptr %i.is, align 4
  %i.iu = zext i32 %i.it to i64
  %i.iv = mul i64 %i.io, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.iv
  %i.ix = load <4 x float>, ptr %i.iw, align 1, !noalias !3124 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.iz = load i32, ptr %i.iy, align 4
  %i.ja = zext i32 %i.iz to i64
  %i.jb = mul i64 %i.io, %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.jb
  %i.jd = load <4 x float>, ptr %i.jc, align 1, !noalias !3125 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ii, i64 12
  %i.jf = load i32, ptr %i.je, align 4
  %i.jg = zext i32 %i.jf to i64
  %i.jh = mul i64 %i.io, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.jh
  %i.jj = load <4 x float>, ptr %i.ji, align 1, !noalias !3126 ; 3 uses
  %.sroa.0102.8.vec.insert = insertelement <4 x i32> %.sroa.0102.4.vec.insert, i32 %i.hw, i64 2 ; 2 uses
  %.sroa.099.8.vec.insert = insertelement <4 x i32> %.sroa.099.4.vec.insert, i32 %i.hy, i64 2 ; 2 uses
  %.sroa.093.8.vec.insert = shufflevector <4 x float> %.sroa.093.4.vec.insert, <4 x float> %i.ir, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.895.24.vec.insert = shufflevector <4 x float> %.sroa.895.20.vec.insert, <4 x float> %i.ir, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.1397.40.vec.insert = shufflevector <4 x float> %.sroa.1397.36.vec.insert, <4 x float> %i.ir, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.087.8.vec.insert = shufflevector <4 x float> %.sroa.087.4.vec.insert, <4 x float> %i.ix, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.889.24.vec.insert = shufflevector <4 x float> %.sroa.889.20.vec.insert, <4 x float> %i.ix, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.1391.40.vec.insert = shufflevector <4 x float> %.sroa.1391.36.vec.insert, <4 x float> %i.ix, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.081.8.vec.insert = shufflevector <4 x float> %.sroa.081.4.vec.insert, <4 x float> %i.jd, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.883.24.vec.insert = shufflevector <4 x float> %.sroa.883.20.vec.insert, <4 x float> %i.jd, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.1385.40.vec.insert = shufflevector <4 x float> %.sroa.1385.36.vec.insert, <4 x float> %i.jd, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %.sroa.0.8.vec.insert = shufflevector <4 x float> %.sroa.0.4.vec.insert, <4 x float> %i.jj, <4 x i32> <i32 0, i32 1, i32 4, i32 3> ; 2 uses
  %.sroa.8.24.vec.insert = shufflevector <4 x float> %.sroa.8.20.vec.insert, <4 x float> %i.jj, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %.sroa.13.40.vec.insert = shufflevector <4 x float> %.sroa.13.36.vec.insert, <4 x float> %i.jj, <4 x i32> <i32 0, i32 1, i32 6, i32 3> ; 2 uses
  %i.jk = add nuw i64 %.03040, 3                  ; 3 uses
  %i.jl = icmp ult i64 %i.jk, %i.ed
  br i1 %i.jl, label %bb.aa, label %_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.jm = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.jk ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 12
  %i.jo = load i32, ptr %i.jn, align 4            ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 28
  %i.jq = load i32, ptr %i.jp, align 4            ; 2 uses
  %i.jr = zext i32 %i.jo to i64
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.jr
  %i.jt = load ptr, ptr %i.js, align 8            ; 4 uses
  %i.ju = zext i32 %i.jq to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 88
  %i.jw = load ptr, ptr %i.jv, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 104
  %i.jy = load i64, ptr %i.jx, align 8
  %i.jz = mul i64 %i.jy, %i.ju
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.jz ; 4 uses
  %i.kb = load i32, ptr %i.ka, align 4
  %i.kc = zext i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jt, i64 144
  %i.ke = load ptr, ptr %i.kd, align 8, !noalias !3122 ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jt, i64 160
  %i.kg = load i64, ptr %i.kf, align 8, !noalias !3122 ; 4 uses
  %i.kh = mul i64 %i.kg, %i.kc
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kh
  %i.kj = load <4 x float>, ptr %i.ki, align 1, !noalias !3123 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  %i.kl = load i32, ptr %i.kk, align 4
  %i.km = zext i32 %i.kl to i64
  %i.kn = mul i64 %i.kg, %i.km
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kn
  %i.kp = load <4 x float>, ptr %i.ko, align 1, !noalias !3124 ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kr = load i32, ptr %i.kq, align 4
  %i.ks = zext i32 %i.kr to i64
  %i.kt = mul i64 %i.kg, %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kt
  %i.kv = load <4 x float>, ptr %i.ku, align 1, !noalias !3125 ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ka, i64 12
  %i.kx = load i32, ptr %i.kw, align 4
  %i.ky = zext i32 %i.kx to i64
  %i.kz = mul i64 %i.kg, %i.ky
  %i.la = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kz
  %i.lb = load <4 x float>, ptr %i.la, align 1, !noalias !3126 ; 3 uses
  %.sroa.0102.12.vec.insert = insertelement <4 x i32> %.sroa.0102.8.vec.insert, i32 %i.jo, i64 3
  %.sroa.099.12.vec.insert = insertelement <4 x i32> %.sroa.099.8.vec.insert, i32 %i.jq, i64 3
  %.sroa.093.12.vec.insert = shufflevector <4 x float> %.sroa.093.8.vec.insert, <4 x float> %i.kj, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.895.28.vec.insert = shufflevector <4 x float> %.sroa.895.24.vec.insert, <4 x float> %i.kj, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.1397.44.vec.insert = shufflevector <4 x float> %.sroa.1397.40.vec.insert, <4 x float> %i.kj, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.087.12.vec.insert = shufflevector <4 x float> %.sroa.087.8.vec.insert, <4 x float> %i.kp, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.889.28.vec.insert = shufflevector <4 x float> %.sroa.889.24.vec.insert, <4 x float> %i.kp, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.1391.44.vec.insert = shufflevector <4 x float> %.sroa.1391.40.vec.insert, <4 x float> %i.kp, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.081.12.vec.insert = shufflevector <4 x float> %.sroa.081.8.vec.insert, <4 x float> %i.kv, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.883.28.vec.insert = shufflevector <4 x float> %.sroa.883.24.vec.insert, <4 x float> %i.kv, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.1385.44.vec.insert = shufflevector <4 x float> %.sroa.1385.40.vec.insert, <4 x float> %i.kv, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %.sroa.0.12.vec.insert = shufflevector <4 x float> %.sroa.0.8.vec.insert, <4 x float> %i.lb, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %.sroa.8.28.vec.insert = shufflevector <4 x float> %.sroa.8.24.vec.insert, <4 x float> %i.lb, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %.sroa.13.44.vec.insert = shufflevector <4 x float> %.sroa.13.40.vec.insert, <4 x float> %i.lb, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.lc = add nuw i64 %.03040, 4
  br label %_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit

_ZN6embree6QuadMvILi4EE4fillEPKNS_7PrimRefERmmPNS_5SceneE.exit.loopexit: ; preds = %bb.aa, %bb.z, %bb.y, %.lr.ph38
  %.sroa.0102.0 = phi <4 x i32> [ %.sroa.0102.12.vec.insert, %bb.aa ], [ %.sroa.0102.8.vec.insert, %bb.z ], [ %.sroa.0102.4.vec.insert, %bb.y ], [ %.sroa.0102.0.vec.insert, %.lr.ph38 ]
  %.sroa.099.0 = phi <4 x i32> [ %.sroa.099.12.vec.insert, %bb.aa ], [ %.sroa.099.8.vec.insert, %bb.z ], [ %.sroa.099.4.vec.insert, %bb.y ], [ %.sroa.099.0.vec.insert, %.lr.ph38 ]
  %.sroa.1397.0 = phi <4 x float> [ %.sroa.1397.44.vec.insert, %bb.aa ], [ %.sroa.1397.40.vec.insert, %bb.z ], [ %.sroa.1397.36.vec.insert, %bb.y ], [ %.sroa.1397.32.vec.insert, %.lr.ph38 ]
  %.sroa.895.0 = phi <4 x float> [ %.sroa.895.28.vec.insert, %bb.aa ], [ %.sroa.895.24.vec.insert, %bb.z ], [ %.sroa.895.20.vec.insert, %bb.y ], [ %.sroa.895.16.vec.insert, %.lr.ph38 ]
  %.sroa.093.0 = phi <4 x float> [ %.sroa.093.12.vec.insert, %bb.aa ], [ %.sroa.093.8.vec.insert, %bb.z ], [ %.sroa.093.4.vec.insert, %bb.y ], [ %.sroa.093.0.vec.insert, %.lr.ph38 ]
  %.sroa.1391.0 = phi <4 x float> [ %.sroa.1391.44.vec.insert, %bb.aa ], [ %.sroa.1391.40.vec.insert, %bb.z ], [ %.sroa.1391.36.vec.insert, %bb.y ], [ %.sroa.1391.32.vec.insert, %.lr.ph38 ]
  %.sroa.889.0 = phi <4 x float> [ %.sroa.889.28.vec.insert, %bb.aa ], [ %.sroa.889.24.vec.insert, %bb.z ], [ %.sroa.889.20.vec.insert, %bb.y ], [ %.sroa.889.16.vec.insert, %.lr.ph38 ]
  %.sroa.087.0 = phi <4 x float> [ %.sroa.087.12.vec.insert, %bb.aa ], [ %.sroa.087.8.vec.insert, %bb.z ], [ %.sroa.087.4.vec.insert, %bb.y ], [ %.sroa.087.0.vec.insert, %.lr.ph38 ]
  %.sroa.1385.0 = phi <4 x float> [ %.sroa.1385.44.vec.insert, %bb.aa ], [ %.sroa.1385.40.vec.insert, %bb.z ], [ %.sroa.1385.36.vec.insert, %bb.y ], [ %.sroa.1385.32.vec.insert, %.lr.ph38 ]
  %.sroa.883.0 = phi <4 x float> [ %.sroa.883.28.vec.insert, %bb.aa ], [ %.sroa.883.24.vec.insert, %bb.z ], [ %.sroa.883.20.vec.insert, %bb.y ], [ %.sroa.883.16.vec.insert, %.lr.ph38 ]
  %.sroa.081.0 = phi <4 x float> [ %.sroa.081.12.vec.insert, %bb.aa ], [ %.sroa.081.8.vec.insert, %bb.z ], [ %.sroa.081.4.vec.insert, %bb.y ], [ %.sroa.081.0.vec.insert, %.lr.ph38 ]
  %.sroa.13.0 = phi <4 x float> [ %.sroa.13.44.vec.insert, %bb.aa ], [ %.sroa.13.40.vec.insert, %bb.z ], [ %.sroa.13.36.vec.insert, %bb.y ], [ %.sroa.13.32.vec.insert, %.lr.ph38 ]
  %.sroa.8.0 = phi <4 x float> [ %.sroa.8.28.vec.insert, %bb.aa ], [ %.sroa.8.24.vec.insert, %bb.z ], [ %.sroa.8.20.vec.insert, %bb.y ], [ %.sroa.8.16.vec.insert, %.lr.ph38 ]
end_hunk_5
