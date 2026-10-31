Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_sah?download=true
inline.NumInlined: 1131
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN6embree4sse218BVHNBuilderVirtualILi4EE12BVHNBuilderTINS0_14CreateLeafGridILi4ENS_12SubGridQBVHNILi4EEEEEE10createLeafEPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorE:bb.a
  %i.bt = load ptr, ptr %i.bm, align 8            ; 4 uses
  %i.bu = ptrtoint ptr %i.bo to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 5 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775800
  br i1 %i.bx, label %bb.h, label %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #23
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.by = ashr exact i64 %i.bw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #18
          to label %.noexc33 unwind label %bb.k   ; 4 uses

.noexc33:                                         ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.bw ; 2 uses
  store ptr %i.t, ptr %i.cf, align 8
  %i.cg = icmp sgt i64 %i.bw, 0
  br i1 %i.cg, label %bb.i, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.i:                                             ; preds = %.noexc33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ce, ptr align 8 %i.bt, i64 %i.bw, i1 false)
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.i, %.noexc33
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bt) #21
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.ce, ptr %i.bm, align 8
  store ptr %i.ch, ptr %i.bn, align 8
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc
  store ptr %i.ci, ptr %i.bp, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i

bb.k:                                             ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.h
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.body.i

_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  tail call void @__clang_call_terminate(ptr %i.cl) #20
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit:          ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.cm = load i8, ptr %i.x, align 8, !range !13, !noundef !14
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.m, label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit34

bb.m:                                             ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit
  %i.co = load ptr, ptr %6, align 8, !nonnull !14, !align !17
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.co)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit34 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  tail call void @__clang_call_terminate(ptr %i.cq) #20
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit34:        ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i

bb.o:                                             ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit31
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cr, %bb.o ], [ %i.cj, %bb.k ]
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  resume { ptr, i32 } %eh.lpad-body.i

_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i: ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit34, %._crit_edge
  %i.cs = load i64, ptr %i.a, align 8             ; 8 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = add i64 %i.cu, %i.cs
  store i64 %i.cv, ptr %i.ct, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 9 uses
  %i.cx = load i64, ptr %i.cw, align 16           ; 3 uses
  %i.cy = sub i64 0, %i.cx
  %i.cz = and i64 %i.cy, 15                       ; 2 uses
  %i.da = add i64 %i.cx, %i.cs
  %i.db = add i64 %i.da, %i.cz                    ; 3 uses
  store i64 %i.db, ptr %i.cw, align 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 5 uses
  %i.dd = load i64, ptr %i.dc, align 8
  %.not.i.i = icmp ugt i64 %i.db, %i.dd
  br i1 %.not.i.i, label %bb.q, label %bb.p, !prof !16

bb.p:                                             ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.df = load i64, ptr %i.de, align 16
  %i.dg = add i64 %i.df, %i.cz
  store i64 %i.dg, ptr %i.de, align 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = sub i64 %i.db, %i.cs
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dj
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i

bb.q:                                             ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i
  store i64 %i.cx, ptr %i.cw, align 16
  %i.dl = shl i64 %i.cs, 2
  %i.dm = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 32           ; 2 uses
  %i.do = icmp ugt i64 %i.dl, %i.dn
  br i1 %i.do, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dp = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 64, i1 noundef zeroext false)
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.dn, ptr %i.b, align 8
  %i.dq = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext true) ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.dq, ptr %i.dr, align 8
  %i.ds = load i64, ptr %i.dc, align 8
  %i.dt = load i64, ptr %i.cw, align 16
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 6 uses
  %i.dw = load i64, ptr %i.dv, align 16
  %i.dx = add i64 %i.dw, %i.du                    ; 2 uses
  store i64 %i.dx, ptr %i.dv, align 16
  %i.dy = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.dy, ptr %i.dc, align 8
  store i64 %i.cs, ptr %i.cw, align 16
  %.not23.i.i = icmp ugt i64 %i.cs, %i.dy
  br i1 %.not23.i.i, label %bb.u, label %bb.t, !prof !16

bb.t:                                             ; preds = %bb.s
  store i64 %i.dx, ptr %i.dv, align 16
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  store i64 0, ptr %i.cw, align 16
  %i.dz = load i64, ptr %i.dm, align 32
  store i64 %i.dz, ptr %i.b, align 8
  %i.ea = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext false) ; 2 uses
  store ptr %i.ea, ptr %i.dr, align 8
  %i.eb = load i64, ptr %i.dc, align 8
  %i.ec = load i64, ptr %i.cw, align 16
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = load i64, ptr %i.dv, align 16
  %i.ef = add i64 %i.ee, %i.ed                    ; 2 uses
  store i64 %i.ef, ptr %i.dv, align 16
  %i.eg = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.eg, ptr %i.dc, align 8
  store i64 %i.cs, ptr %i.cw, align 16
  %.not24.i.i = icmp ugt i64 %i.cs, %i.eg
  br i1 %.not24.i.i, label %bb.w, label %bb.v, !prof !16

bb.v:                                             ; preds = %bb.u
  store i64 %i.ef, ptr %i.dv, align 16
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  store i64 0, ptr %i.cw, align 16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t
  %.0.i.i = phi ptr [ %i.dq, %bb.t ], [ %i.ea, %bb.v ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i

_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i: ; preds = %bb.x, %bb.r, %bb.p
  %.1.i.i = phi ptr [ %i.dk, %bb.p ], [ %i.dp, %bb.r ], [ %.0.i.i, %bb.x ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i32 %.055.i.lcssa, 0
  br i1 %.not, label %_ZNK6embree4sse214CreateLeafGridILi4ENS_12SubGridQBVHNILi4EEEEclEPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorE.exit, label %.lr.ph297

.lr.ph297:                                        ; preds = %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i
  %.not298 = icmp eq i64 %i.h, %i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.ek = insertelement <4 x ptr> poison, ptr %4, i64 0
  %i.el = insertelement <4 x ptr> %i.ek, ptr %i.d, i64 1
  %i.em = insertelement <4 x ptr> %i.el, ptr %i.e, i64 2
  %i.en = insertelement <4 x ptr> %i.em, ptr %i.f, i64 3
  %i.eo = getelementptr inbounds nuw i8, <4 x ptr> %i.en, <4 x i64> <i64 32, i64 0, i64 0, i64 0>
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  %scevgep352 = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 4 uses
  %scevgep357 = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.er = insertelement <4 x ptr> poison, ptr %i.ep, i64 0
  %i.es = shufflevector <4 x ptr> %i.er, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.et = insertelement <4 x ptr> poison, ptr %i.d, i64 0
  %i.eu = insertelement <4 x ptr> %i.et, ptr %i.e, i64 1
  %i.ev = insertelement <4 x ptr> %i.eu, ptr %i.f, i64 2
  %i.ew = insertelement <4 x ptr> %i.ev, ptr %7, i64 3
  br label %.preheader273

.lr.ph.preheader:                                 ; preds = %bb.a, %.loopexit
  %.054.i277 = phi i64 [ %i.fh, %.loopexit ], [ 1, %bb.a ] ; 2 uses
  %.055.i276 = phi i32 [ %.156.i, %.loopexit ], [ 1, %bb.a ] ; 3 uses
  %i.ex = getelementptr [32 x i8], ptr %i.k, i64 %.054.i277
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %i.ez = load i32, ptr %i.ey, align 4            ; 2 uses
  %i.fa = zext i32 %.055.i276 to i64              ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.fa, i64 1)
  br label %.lr.ph

bb.y:                                             ; preds = %.lr.ph
  %i.fb = add nuw nsw i64 %.052.i275, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.fb, %umax
  br i1 %exitcond.not, label %.critedge.i, label %.lr.ph, !llvm.loop !248

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.y
  %.052.i275 = phi i64 [ %i.fb, %bb.y ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.052.i275
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = icmp eq i32 %i.ez, %i.fd
  br i1 %i.fe, label %.loopexit, label %bb.y

.critedge.i:                                      ; preds = %bb.y
  %i.ff = add nuw i32 %.055.i276, 1
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fa
  store i32 %i.ez, ptr %i.fg, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.critedge.i
  %.156.i = phi i32 [ %i.ff, %.critedge.i ], [ %.055.i276, %.lr.ph ] ; 2 uses
  %i.fh = add nuw i64 %.054.i277, 1               ; 2 uses
  %exitcond302.not = icmp eq i64 %i.fh, %i.j
  br i1 %exitcond302.not, label %._crit_edge, label %.lr.ph.preheader, !llvm.loop !249

.preheader273:                                    ; preds = %.lr.ph297, %_ZN6embree12SubGridQBVHNILi4EEC2EPKjS3_S3_PKNS_4BBoxINS_6Vec3faEEEjj.exit
  %.051.i296 = phi i64 [ 0, %.lr.ph297 ], [ %i.rl, %_ZN6embree12SubGridQBVHNILi4EEC2EPKjS3_S3_PKNS_4BBoxINS_6Vec3faEEEjj.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.051.i296
  %.pre = load i32, ptr %.phi.trans.insert, align 4 ; 2 uses
  br i1 %.not298, label %._crit_edge282, label %.lr.ph281

._crit_edge282:                                   ; preds = %bb.aa, %.preheader273
  %.050.i.lcssa = phi i32 [ 0, %.preheader273 ], [ %.1.i, %bb.aa ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [88 x i8], ptr %.1.i.i, i64 %.051.i296 ; 36 uses
  store <4 x i64> splat (i64 -4294967296), ptr %i.fi, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 32 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 48 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 49
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 41
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 50
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 42
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fi, i64 51
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 43
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fi, i64 52 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fi, i64 44
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fi, i64 36
  store i32 -1, ptr %i.fk, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fi, i64 53
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fi, i64 45
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fi, i64 54
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fi, i64 46
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fi, i64 55
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fi, i64 47
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fi, i64 80
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.fj, align 8
  store i32 0, ptr %i.fs, align 4
  store i32 %.pre, ptr %i.gb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store <4 x float> splat (float +inf), ptr %i.ei, align 32
  store <4 x float> splat (float +inf), ptr %i.ej, align 64
  store <4 x float> splat (float +inf), ptr %i.ep, align 32
  store <4 x float> splat (float -inf), ptr %i.eq, align 16
  store <4 x float> splat (float -inf), ptr %scevgep352, align 16
  store <4 x float> splat (float -inf), ptr %scevgep357, align 16
  %i.gc = zext i32 %.050.i.lcssa to i64           ; 5 uses
  %.not299 = icmp eq i32 %.050.i.lcssa, 0
  br i1 %.not299, label %_ZN6embree12SubGridQBVHNILi4EEC2EPKjS3_S3_PKNS_4BBoxINS_6Vec3faEEEjj.exit, label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.preheader

_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.preheader: ; preds = %._crit_edge282
  %min.iters.check = icmp ult i32 %.050.i.lcssa, 11
  br i1 %min.iters.check, label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.preheader474, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.preheader
  %8 = mul nuw nsw i64 %.051.i296, 88
  %i.gd = shl nuw nsw i64 %i.gc, 3
  %9 = getelementptr i8, ptr %.1.i.i, i64 %8
  %scevgep = getelementptr i8, ptr %9, i64 %i.gd  ; 2 uses
  %i.ge = shl nuw nsw i64 %i.gc, 2                ; 4 uses
  %10 = getelementptr i8, ptr %4, i64 %i.ge
  %scevgep353 = getelementptr i8, ptr %10, i64 112
  %scevgep354 = getelementptr i8, ptr %i.d, i64 %i.ge ; 2 uses
  %scevgep355 = getelementptr i8, ptr %i.e, i64 %i.ge ; 2 uses
  %scevgep356 = getelementptr i8, ptr %i.f, i64 %i.ge ; 2 uses
  %i.gf = shl nuw nsw i64 %i.gc, 5
  %11 = getelementptr i8, ptr %7, i64 %i.gf
  %scevgep358 = getelementptr i8, ptr %11, i64 -4 ; 2 uses
  %i.gg = insertelement <4 x ptr> poison, ptr %i.fi, i64 0
  %i.gh = shufflevector <4 x ptr> %i.gg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.gi = insertelement <4 x ptr> poison, ptr %scevgep353, i64 0 ; 2 uses
  %i.gj = insertelement <4 x ptr> %i.gi, ptr %scevgep354, i64 1
  %i.gk = insertelement <4 x ptr> %i.gj, ptr %scevgep355, i64 2
  %i.gl = insertelement <4 x ptr> %i.gk, ptr %scevgep356, i64 3
  %i.gm = icmp ult <4 x ptr> %i.gh, %i.gl
  %i.gn = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.go = shufflevector <4 x ptr> %i.gn, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.gp = icmp ult <4 x ptr> %i.eo, %i.go
  %i.gq = and <4 x i1> %i.gm, %i.gp
  %bound0370 = icmp ult ptr %i.fi, %scevgep358
  %bound1371 = icmp ult ptr %7, %scevgep
  %found.conflict372 = and i1 %bound0370, %bound1371
  %i.gr = insertelement <4 x ptr> poison, ptr %scevgep354, i64 0
  %i.gs = insertelement <4 x ptr> %i.gr, ptr %scevgep355, i64 1
  %i.gt = insertelement <4 x ptr> %i.gs, ptr %scevgep356, i64 2
  %i.gu = insertelement <4 x ptr> %i.gt, ptr %scevgep358, i64 3
  %i.gv = icmp ult <4 x ptr> %i.es, %i.gu
  %i.gw = shufflevector <4 x ptr> %i.gi, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.gx = icmp ult <4 x ptr> %i.ew, %i.gw
  %i.gy = and <4 x i1> %i.gv, %i.gx
  %rdx.op = or <4 x i1> %i.gq, %i.gy
  %i.gz = bitcast <4 x i1> %rdx.op to i4
  %i.ha = icmp ne i4 %i.gz, 0
  %op.rdx = or i1 %i.ha, %found.conflict372
  br i1 %op.rdx, label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.preheader474, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.hb = add nsw i64 %i.gc, -1
  %n.vec = and i64 %i.hb, -2                      ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 13 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index
  %wide.load = load <2 x i32>, ptr %i.hc, align 8, !alias.scope !285
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index
  %wide.load390 = load <2 x i32>, ptr %i.hd, align 8, !alias.scope !286
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index
  %wide.load391 = load <2 x i32>, ptr %i.he, align 8, !alias.scope !287
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %index
  %i.hg = zext <2 x i32> %wide.load391 to <2 x i64>
  %i.hh = shl nuw <2 x i64> %i.hg, splat (i64 32)
  %i.hi = shl <2 x i32> %wide.load390, splat (i32 16)
  %i.hj = and <2 x i32> %wide.load, splat (i32 65535)
  %i.hk = or disjoint <2 x i32> %i.hi, %i.hj
  %i.hl = zext <2 x i32> %i.hk to <2 x i64>
  %i.hm = or disjoint <2 x i64> %i.hh, %i.hl
  store <2 x i64> %i.hm, ptr %i.hf, align 8, !alias.scope !288, !noalias !289
  %i.hn = getelementptr inbounds nuw [32 x i8], ptr %7, i64 %index ; 6 uses
  %i.ho = getelementptr inbounds nuw [32 x i8], ptr %7, i64 %index ; 6 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = load float, ptr %i.hn, align 16, !alias.scope !290
  %i.hr = load float, ptr %i.hp, align 16, !alias.scope !290
  %i.hs = insertelement <2 x float> poison, float %i.hq, i64 0
  %i.ht = insertelement <2 x float> %i.hs, float %i.hr, i64 1
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %index
  store <2 x float> %i.ht, ptr %i.hu, align 8, !alias.scope !291, !noalias !292
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 36
  %i.hx = load float, ptr %i.hv, align 4, !alias.scope !290
  %i.hy = load float, ptr %i.hw, align 4, !alias.scope !290
  %i.hz = insertelement <2 x float> poison, float %i.hx, i64 0
  %i.ia = insertelement <2 x float> %i.hz, float %i.hy, i64 1
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %index
  store <2 x float> %i.ia, ptr %i.ib, align 8, !alias.scope !291, !noalias !292
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.ie = load float, ptr %i.ic, align 8, !alias.scope !290
  %i.if = load float, ptr %i.id, align 8, !alias.scope !290
  %i.ig = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.ih = insertelement <2 x float> %i.ig, float %i.if, i64 1
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %index
  store <2 x float> %i.ih, ptr %i.ii, align 8, !alias.scope !291, !noalias !292
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ho, i64 48
  %i.il = load float, ptr %i.ij, align 16, !alias.scope !290
  %i.im = load float, ptr %i.ik, align 16, !alias.scope !290
  %i.in = insertelement <2 x float> poison, float %i.il, i64 0
  %i.io = insertelement <2 x float> %i.in, float %i.im, i64 1
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %scevgep357, i64 %index
  store <2 x float> %i.io, ptr %i.ip, align 8, !alias.scope !291, !noalias !292
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hn, i64 20
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ho, i64 52
  %i.is = load float, ptr %i.iq, align 4, !alias.scope !290
  %i.it = load float, ptr %i.ir, align 4, !alias.scope !290
  %i.iu = insertelement <2 x float> poison, float %i.is, i64 0
  %i.iv = insertelement <2 x float> %i.iu, float %i.it, i64 1
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %scevgep352, i64 %index
  store <2 x float> %i.iv, ptr %i.iw, align 8, !alias.scope !291, !noalias !292
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ho, i64 56
  %i.iz = load float, ptr %i.ix, align 8, !alias.scope !290
  %i.ja = load float, ptr %i.iy, align 8, !alias.scope !290
  %i.jb = insertelement <2 x float> poison, float %i.iz, i64 0
  %i.jc = insertelement <2 x float> %i.jb, float %i.ja, i64 1
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %index
  store <2 x float> %i.jc, ptr %i.jd, align 8, !alias.scope !291, !noalias !292
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.je = icmp eq i64 %index.next, %n.vec
  br i1 %i.je, label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.preheader474, label %vector.body, !llvm.loop !257

_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.preheader474: ; preds = %vector.body, %vector.memcheck, %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.preheader
  %.0.i7288.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.preheader ], [ %n.vec, %vector.body ]
  br label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit

_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit: ; preds = %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.preheader474, %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit
  %.0.i7288 = phi i64 [ %i.kg, %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit ], [ %.0.i7288.ph, %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.preheader474 ] ; 12 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0.i7288
  %i.jg = load i32, ptr %i.jf, align 4
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.0.i7288
  %i.ji = load i32, ptr %i.jh, align 4
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.0.i7288
  %i.jk = load i32, ptr %i.jj, align 4
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %.0.i7288
  %.sroa.5.0.insert.ext = zext i32 %i.jk to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %i.jm = shl i32 %i.ji, 16
  %i.jn = and i32 %i.jg, 65535
  %.sroa.440.0.insert.insert300 = or disjoint i32 %i.jm, %i.jn
  %.sroa.440.0.insert.insert = zext i32 %.sroa.440.0.insert.insert300 to i64
  %.sroa.039.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.440.0.insert.insert
  store i64 %.sroa.039.0.insert.insert, ptr %i.jl, align 8
  %i.jo = getelementptr inbounds nuw [32 x i8], ptr %7, i64 %.0.i7288 ; 6 uses
  %i.jp = load float, ptr %i.jo, align 16
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %.0.i7288
  store float %i.jp, ptr %i.jq, align 4
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %i.js = load float, ptr %i.jr, align 4
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %.0.i7288
  store float %i.js, ptr %i.jt, align 4
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jv = load float, ptr %i.ju, align 8
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.0.i7288
  store float %i.jv, ptr %i.jw, align 4
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jy = load float, ptr %i.jx, align 16
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %scevgep357, i64 %.0.i7288
  store float %i.jy, ptr %i.jz, align 4
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jo, i64 20
  %i.kb = load float, ptr %i.ka, align 4
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %scevgep352, i64 %.0.i7288
  store float %i.kb, ptr %i.kc, align 4
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.ke = load float, ptr %i.kd, align 8
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %.0.i7288
  store float %i.ke, ptr %i.kf, align 4
  %i.kg = add nuw nsw i64 %.0.i7288, 1            ; 2 uses
  %exitcond308.not = icmp eq i64 %i.kg, %i.gc
  br i1 %exitcond308.not, label %_ZN6embree12SubGridQBVHNILi4EEC2EPKjS3_S3_PKNS_4BBoxINS_6Vec3faEEEjj.exit.loopexit, label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit, !llvm.loop !258

_ZN6embree12SubGridQBVHNILi4EEC2EPKjS3_S3_PKNS_4BBoxINS_6Vec3faEEEjj.exit.loopexit: ; preds = %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit
  %.pre339 = load <4 x float>, ptr %i.ep, align 32, !noalias !295
  %.pre340 = load <4 x float>, ptr %scevgep357, align 16, !noalias !296
  br label %_ZN6embree12SubGridQBVHNILi4EEC2EPKjS3_S3_PKNS_4BBoxINS_6Vec3faEEEjj.exit

_ZN6embree12SubGridQBVHNILi4EEC2EPKjS3_S3_PKNS_4BBoxINS_6Vec3faEEEjj.exit: ; preds = %_ZN6embree12SubGridQBVHNILi4EEC2EPKjS3_S3_PKNS_4BBoxINS_6Vec3faEEEjj.exit.loopexit, %._crit_edge282
  %i.kh = phi <4 x float> [ %.pre340, %_ZN6embree12SubGridQBVHNILi4EEC2EPKjS3_S3_PKNS_4BBoxINS_6Vec3faEEEjj.exit.loopexit ], [ splat (float -inf), %._crit_edge282 ] ; 4 uses
  %i.ki = phi <4 x float> [ %.pre339, %_ZN6embree12SubGridQBVHNILi4EEC2EPKjS3_S3_PKNS_4BBoxINS_6Vec3faEEEjj.exit.loopexit ], [ splat (float +inf), %._crit_edge282 ] ; 5 uses
  %i.kj = fcmp une <4 x float> %i.ki, splat (float +inf) ; 2 uses
  %i.kk = shufflevector <4 x float> %i.ki, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.kl = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kk, <4 x float> %i.ki) ; 2 uses
  %i.km = shufflevector <4 x float> %i.kl, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.kn = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.km, <4 x float> %i.kl) ; 3 uses
  %i.ko = extractelement <4 x float> %i.kn, i64 0
  %i.kp = shufflevector <4 x float> %i.kh, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.kq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kp, <4 x float> %i.kh) ; 2 uses
  %i.kr = shufflevector <4 x float> %i.kq, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ks = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.kr, <4 x float> %i.kq)
  %foldExtExtBinop = fsub <4 x float> %i.ks, %i.kn
  %i.kt = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.ku = fmul float %i.kt, f0x3F800002           ; 3 uses
  %i.kv = fdiv float %i.ku, 2.550000e+02          ; 2 uses
  %i.kw = fcmp oeq float %i.kv, 0.000000e+00
  %spec.store.select.i12 = select i1 %i.kw, float f0x01000000, float %i.kv ; 2 uses
  %i.kx = fcmp ogt float %i.ku, 0.000000e+00
  %i.ky = fdiv float 2.550000e+02, %i.ku
  %i.kz = select i1 %i.kx, float %i.ky, float 0.000000e+00
  %i.la = shufflevector <4 x float> %i.kn, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.lb = fsub <4 x float> %i.ki, %i.la
  %i.lc = insertelement <4 x float> poison, float %i.kz, i64 0
  %i.ld = shufflevector <4 x float> %i.lc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.le = fmul <4 x float> %i.lb, %i.ld
  %i.lf = call <4 x float> @llvm.floor.v4f32(<4 x float> %i.le)
  %i.lg = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.lf)
  %.inner393 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.lg, <4 x i32> zeroinitializer) ; 2 uses
  %i.lh = fsub <4 x float> %i.kh, %i.la
  %i.li = fmul <4 x float> %i.lh, %i.ld
  %i.lj = call <4 x float> @llvm.ceil.v4f32(<4 x float> %i.li)
  %i.lk = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.lj)
  %.inner395 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.lk, <4 x i32> splat (i32 255)) ; 2 uses
  %i.ll = uitofp nneg <4 x i32> %.inner393 to <4 x float>
  %i.lm = insertelement <4 x float> poison, float %spec.store.select.i12, i64 0
  %i.ln = shufflevector <4 x float> %i.lm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.lo = fmul <4 x float> %i.ln, %i.ll
  %i.lp = fadd <4 x float> %i.la, %i.lo
  %i.lq = fcmp ugt <4 x float> %i.lp, %i.ki
  %i.lr = sitofp <4 x i32> %.inner395 to <4 x float>
  %i.ls = fmul <4 x float> %i.ln, %i.lr
  %i.lt = fadd <4 x float> %i.la, %i.ls
  %i.lu = fcmp olt <4 x float> %i.lt, %i.kh
  %i.lv = sext <4 x i1> %i.lq to <4 x i32>
  %.inner397 = add nsw <4 x i32> %.inner393, %i.lv
  %.inner399 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.inner397, <4 x i32> zeroinitializer)
  %i.lw = zext <4 x i1> %i.lu to <4 x i32>
  %.inner401 = add nsw <4 x i32> %.inner395, %i.lw
  %.inner405 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %.inner401, <4 x i32> splat (i32 255))
  %.inner409 = select <4 x i1> %i.kj, <4 x i32> %.inner399, <4 x i32> splat (i32 255) ; 4 uses
  %.inner410 = select <4 x i1> %i.kj, <4 x i32> %.inner405, <4 x i32> zeroinitializer ; 4 uses
  %i.lx = bitcast <4 x i32> %.inner409 to <16 x i8>
  %i.ly = extractelement <16 x i8> %i.lx, i64 0
  store i8 %i.ly, ptr %i.fj, align 8
  %i.lz = bitcast <4 x i32> %.inner409 to <16 x i8>
  %i.ma = extractelement <16 x i8> %i.lz, i64 4
  %i.mb = getelementptr inbounds nuw i8, ptr %i.fi, i64 33
  store i8 %i.ma, ptr %i.mb, align 1
  %i.mc = bitcast <4 x i32> %.inner409 to <16 x i8>
  %i.md = extractelement <16 x i8> %i.mc, i64 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.fi, i64 34
  store i8 %i.md, ptr %i.me, align 2
  %i.mf = bitcast <4 x i32> %.inner409 to <16 x i8>
  %i.mg = extractelement <16 x i8> %i.mf, i64 12
  %i.mh = getelementptr inbounds nuw i8, ptr %i.fi, i64 35
  store i8 %i.mg, ptr %i.mh, align 1
  %i.mi = bitcast <4 x i32> %.inner410 to <16 x i8>
  %i.mj = extractelement <16 x i8> %i.mi, i64 0
  store i8 %i.mj, ptr %i.fu, align 4
  %i.mk = bitcast <4 x i32> %.inner410 to <16 x i8>
  %i.ml = extractelement <16 x i8> %i.mk, i64 4
  %i.mm = getelementptr inbounds nuw i8, ptr %i.fi, i64 37
  store i8 %i.ml, ptr %i.mm, align 1
  %i.mn = bitcast <4 x i32> %.inner410 to <16 x i8>
  %i.mo = extractelement <16 x i8> %i.mn, i64 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.fi, i64 38
  store i8 %i.mo, ptr %i.mp, align 2
  %i.mq = bitcast <4 x i32> %.inner410 to <16 x i8>
  %i.mr = extractelement <16 x i8> %i.mq, i64 12
  %i.ms = getelementptr inbounds nuw i8, ptr %i.fi, i64 39
  store i8 %i.mr, ptr %i.ms, align 1
  %i.mt = getelementptr inbounds nuw i8, ptr %i.fi, i64 56
  %i.mu = getelementptr inbounds nuw i8, ptr %i.fi, i64 68
  store float %i.ko, ptr %i.mt, align 8
  store float %spec.store.select.i12, ptr %i.mu, align 4
  %i.mv = load <4 x float>, ptr %i.ej, align 64, !noalias !297 ; 5 uses
  %i.mw = fcmp une <4 x float> %i.mv, splat (float +inf) ; 2 uses
  %i.mx = shufflevector <4 x float> %i.mv, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.my = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mx, <4 x float> %i.mv) ; 2 uses
  %i.mz = shufflevector <4 x float> %i.my, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.na = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mz, <4 x float> %i.my) ; 3 uses
  %i.nb = extractelement <4 x float> %i.na, i64 0
  %i.nc = load <4 x float>, ptr %scevgep352, align 16, !noalias !298 ; 4 uses
  %i.nd = shufflevector <4 x float> %i.nc, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ne = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.nd, <4 x float> %i.nc) ; 2 uses
  %i.nf = shufflevector <4 x float> %i.ne, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ng = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.nf, <4 x float> %i.ne)
  %foldExtExtBinop411 = fsub <4 x float> %i.ng, %i.na
  %i.nh = extractelement <4 x float> %foldExtExtBinop411, i64 0
  %i.ni = fmul float %i.nh, f0x3F800002           ; 3 uses
  %i.nj = fdiv float %i.ni, 2.550000e+02          ; 2 uses
  %i.nk = fcmp oeq float %i.nj, 0.000000e+00
  %spec.store.select.i11 = select i1 %i.nk, float f0x01000000, float %i.nj ; 2 uses
  %i.nl = fcmp ogt float %i.ni, 0.000000e+00
  %i.nm = fdiv float 2.550000e+02, %i.ni
  %i.nn = select i1 %i.nl, float %i.nm, float 0.000000e+00
  %i.no = shufflevector <4 x float> %i.na, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.np = fsub <4 x float> %i.mv, %i.no
  %i.nq = insertelement <4 x float> poison, float %i.nn, i64 0
  %i.nr = shufflevector <4 x float> %i.nq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ns = fmul <4 x float> %i.np, %i.nr
  %i.nt = call <4 x float> @llvm.floor.v4f32(<4 x float> %i.ns)
  %i.nu = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.nt)
  %.inner414 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.nu, <4 x i32> zeroinitializer) ; 2 uses
  %i.nv = fsub <4 x float> %i.nc, %i.no
  %i.nw = fmul <4 x float> %i.nv, %i.nr
  %i.nx = call <4 x float> @llvm.ceil.v4f32(<4 x float> %i.nw)
  %i.ny = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.nx)
  %.inner416 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ny, <4 x i32> splat (i32 255)) ; 2 uses
  %i.nz = uitofp nneg <4 x i32> %.inner414 to <4 x float>
  %i.oa = insertelement <4 x float> poison, float %spec.store.select.i11, i64 0
  %i.ob = shufflevector <4 x float> %i.oa, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.oc = fmul <4 x float> %i.ob, %i.nz
  %i.od = fadd <4 x float> %i.no, %i.oc
  %i.oe = fcmp ugt <4 x float> %i.od, %i.mv
  %i.of = sitofp <4 x i32> %.inner416 to <4 x float>
  %i.og = fmul <4 x float> %i.ob, %i.of
  %i.oh = fadd <4 x float> %i.no, %i.og
  %i.oi = fcmp olt <4 x float> %i.oh, %i.nc
  %i.oj = sext <4 x i1> %i.oe to <4 x i32>
  %.inner418 = add nsw <4 x i32> %.inner414, %i.oj
  %.inner420 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.inner418, <4 x i32> zeroinitializer)
  %i.ok = zext <4 x i1> %i.oi to <4 x i32>
  %.inner422 = add nsw <4 x i32> %.inner416, %i.ok
  %.inner426 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %.inner422, <4 x i32> splat (i32 255))
  %.inner430 = select <4 x i1> %i.mw, <4 x i32> %.inner420, <4 x i32> splat (i32 255) ; 4 uses
  %.inner431 = select <4 x i1> %i.mw, <4 x i32> %.inner426, <4 x i32> zeroinitializer ; 4 uses
  %i.ol = bitcast <4 x i32> %.inner430 to <16 x i8>
  %i.om = extractelement <16 x i8> %i.ol, i64 0
  store i8 %i.om, ptr %i.fl, align 8
  %i.on = bitcast <4 x i32> %.inner430 to <16 x i8>
  %i.oo = extractelement <16 x i8> %i.on, i64 4
  store i8 %i.oo, ptr %i.fn, align 1
  %i.op = bitcast <4 x i32> %.inner430 to <16 x i8>
  %i.oq = extractelement <16 x i8> %i.op, i64 8
  store i8 %i.oq, ptr %i.fp, align 2
  %i.or = bitcast <4 x i32> %.inner430 to <16 x i8>
  %i.os = extractelement <16 x i8> %i.or, i64 12
  store i8 %i.os, ptr %i.fr, align 1
  %i.ot = bitcast <4 x i32> %.inner431 to <16 x i8>
  %i.ou = extractelement <16 x i8> %i.ot, i64 0
  store i8 %i.ou, ptr %i.ft, align 4
  %i.ov = bitcast <4 x i32> %.inner431 to <16 x i8>
  %i.ow = extractelement <16 x i8> %i.ov, i64 4
  store i8 %i.ow, ptr %i.fw, align 1
  %i.ox = bitcast <4 x i32> %.inner431 to <16 x i8>
  %i.oy = extractelement <16 x i8> %i.ox, i64 8
  store i8 %i.oy, ptr %i.fy, align 2
  %i.oz = bitcast <4 x i32> %.inner431 to <16 x i8>
  %i.pa = extractelement <16 x i8> %i.oz, i64 12
  store i8 %i.pa, ptr %i.ga, align 1
  %i.pb = getelementptr inbounds nuw i8, ptr %i.fi, i64 60
  %i.pc = getelementptr inbounds nuw i8, ptr %i.fi, i64 72
  store float %i.nb, ptr %i.pb, align 4
  store float %spec.store.select.i11, ptr %i.pc, align 8
  %i.pd = load <4 x float>, ptr %i.ei, align 32, !noalias !299 ; 5 uses
  %i.pe = fcmp une <4 x float> %i.pd, splat (float +inf) ; 2 uses
  %i.pf = shufflevector <4 x float> %i.pd, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.pg = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.pf, <4 x float> %i.pd) ; 2 uses
  %i.ph = shufflevector <4 x float> %i.pg, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.pi = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ph, <4 x float> %i.pg) ; 3 uses
  %i.pj = extractelement <4 x float> %i.pi, i64 0
  %i.pk = load <4 x float>, ptr %i.eq, align 16, !noalias !300 ; 4 uses
  %i.pl = shufflevector <4 x float> %i.pk, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.pm = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.pl, <4 x float> %i.pk) ; 2 uses
  %i.pn = shufflevector <4 x float> %i.pm, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.po = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.pn, <4 x float> %i.pm)
  %foldExtExtBinop432 = fsub <4 x float> %i.po, %i.pi
  %i.pp = extractelement <4 x float> %foldExtExtBinop432, i64 0
  %i.pq = fmul float %i.pp, f0x3F800002           ; 3 uses
  %i.pr = fdiv float %i.pq, 2.550000e+02          ; 2 uses
  %i.ps = fcmp oeq float %i.pr, 0.000000e+00
  %spec.store.select.i = select i1 %i.ps, float f0x01000000, float %i.pr ; 2 uses
  %i.pt = fcmp ogt float %i.pq, 0.000000e+00
  %i.pu = fdiv float 2.550000e+02, %i.pq
  %i.pv = select i1 %i.pt, float %i.pu, float 0.000000e+00
  %i.pw = shufflevector <4 x float> %i.pi, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.px = fsub <4 x float> %i.pd, %i.pw
  %i.py = insertelement <4 x float> poison, float %i.pv, i64 0
  %i.pz = shufflevector <4 x float> %i.py, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.qa = fmul <4 x float> %i.px, %i.pz
  %i.qb = call <4 x float> @llvm.floor.v4f32(<4 x float> %i.qa)
  %i.qc = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.qb)
  %.inner435 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.qc, <4 x i32> zeroinitializer) ; 2 uses
  %i.qd = fsub <4 x float> %i.pk, %i.pw
  %i.qe = fmul <4 x float> %i.qd, %i.pz
  %i.qf = call <4 x float> @llvm.ceil.v4f32(<4 x float> %i.qe)
  %i.qg = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.qf)
  %.inner437 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.qg, <4 x i32> splat (i32 255)) ; 2 uses
  %i.qh = uitofp nneg <4 x i32> %.inner435 to <4 x float>
  %i.qi = insertelement <4 x float> poison, float %spec.store.select.i, i64 0
  %i.qj = shufflevector <4 x float> %i.qi, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.qk = fmul <4 x float> %i.qj, %i.qh
  %i.ql = fadd <4 x float> %i.pw, %i.qk
  %i.qm = fcmp ugt <4 x float> %i.ql, %i.pd
  %i.qn = sitofp <4 x i32> %.inner437 to <4 x float>
  %i.qo = fmul <4 x float> %i.qj, %i.qn
  %i.qp = fadd <4 x float> %i.pw, %i.qo
  %i.qq = fcmp olt <4 x float> %i.qp, %i.pk
  %i.qr = sext <4 x i1> %i.qm to <4 x i32>
  %.inner439 = add nsw <4 x i32> %.inner435, %i.qr
  %.inner441 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.inner439, <4 x i32> zeroinitializer)
  %i.qs = zext <4 x i1> %i.qq to <4 x i32>
  %.inner443 = add nsw <4 x i32> %.inner437, %i.qs
  %.inner447 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %.inner443, <4 x i32> splat (i32 255))
  %.inner451 = select <4 x i1> %i.pe, <4 x i32> %.inner441, <4 x i32> splat (i32 255) ; 4 uses
  %.inner452 = select <4 x i1> %i.pe, <4 x i32> %.inner447, <4 x i32> zeroinitializer ; 4 uses
  %i.qt = bitcast <4 x i32> %.inner451 to <16 x i8>
  %i.qu = extractelement <16 x i8> %i.qt, i64 0
  store i8 %i.qu, ptr %i.fk, align 8
  %i.qv = bitcast <4 x i32> %.inner451 to <16 x i8>
  %i.qw = extractelement <16 x i8> %i.qv, i64 4
  store i8 %i.qw, ptr %i.fm, align 1
  %i.qx = bitcast <4 x i32> %.inner451 to <16 x i8>
  %i.qy = extractelement <16 x i8> %i.qx, i64 8
  store i8 %i.qy, ptr %i.fo, align 2
  %i.qz = bitcast <4 x i32> %.inner451 to <16 x i8>
  %i.ra = extractelement <16 x i8> %i.qz, i64 12
  store i8 %i.ra, ptr %i.fq, align 1
  %i.rb = bitcast <4 x i32> %.inner452 to <16 x i8>
  %i.rc = extractelement <16 x i8> %i.rb, i64 0
  store i8 %i.rc, ptr %i.fs, align 4
  %i.rd = bitcast <4 x i32> %.inner452 to <16 x i8>
  %i.re = extractelement <16 x i8> %i.rd, i64 4
  store i8 %i.re, ptr %i.fv, align 1
  %i.rf = bitcast <4 x i32> %.inner452 to <16 x i8>
  %i.rg = extractelement <16 x i8> %i.rf, i64 8
  store i8 %i.rg, ptr %i.fx, align 2
  %i.rh = bitcast <4 x i32> %.inner452 to <16 x i8>
  %i.ri = extractelement <16 x i8> %i.rh, i64 12
  store i8 %i.ri, ptr %i.fz, align 1
  %i.rj = getelementptr inbounds nuw i8, ptr %i.fi, i64 64
  %i.rk = getelementptr inbounds nuw i8, ptr %i.fi, i64 76
  store float %i.pj, ptr %i.rj, align 8
  store float %spec.store.select.i, ptr %i.rk, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.rl = add nuw nsw i64 %.051.i296, 1           ; 2 uses
  %exitcond315.not = icmp eq i64 %i.rl, %i.o
  br i1 %exitcond315.not, label %_ZNK6embree4sse214CreateLeafGridILi4ENS_12SubGridQBVHNILi4EEEEclEPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorE.exit, label %.preheader273, !llvm.loop !277

.lr.ph281:                                        ; preds = %.preheader273, %bb.aa
  %.0.i280 = phi i64 [ %i.sl, %bb.aa ], [ 0, %.preheader273 ] ; 2 uses
  %.050.i279 = phi i32 [ %.1.i, %bb.aa ], [ 0, %.preheader273 ] ; 3 uses
  %i.rm = getelementptr [32 x i8], ptr %i.k, i64 %.0.i280 ; 4 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 12
  %i.ro = load i32, ptr %i.rn, align 4
  %.not.i = icmp eq i32 %i.ro, %.pre
  br i1 %.not.i, label %bb.z, label %bb.aa, !prof !18

bb.z:                                             ; preds = %.lr.ph281
  %i.rp = load ptr, ptr %i.eh, align 8
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rm, i64 28
  %i.rr = load i32, ptr %i.rq, align 4
  %i.rs = zext i32 %i.rr to i64
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %i.rs ; 3 uses
  %i.ru = load i16, ptr %i.rt, align 4
  %i.rv = zext i16 %i.ru to i32
  %i.rw = zext i32 %.050.i279 to i64              ; 4 uses
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.rw
  store i32 %i.rv, ptr %i.rx, align 4
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rt, i64 2
  %i.rz = load i16, ptr %i.ry, align 2
  %i.sa = zext i16 %i.rz to i32
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.rw
  store i32 %i.sa, ptr %i.sb, align 4
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rt, i64 4
  %i.sd = load i32, ptr %i.sc, align 4
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.rw
  store i32 %i.sd, ptr %i.se, align 4
  %i.sf = load <4 x float>, ptr %i.rm, align 16, !noalias !301
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  %i.sh = load <4 x float>, ptr %i.sg, align 16, !noalias !302
  %i.si = getelementptr inbounds nuw [32 x i8], ptr %7, i64 %i.rw ; 2 uses
  store <4 x float> %i.sf, ptr %i.si, align 16
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  store <4 x float> %i.sh, ptr %i.sj, align 16
  %i.sk = add nuw i32 %.050.i279, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph281
  %.1.i = phi i32 [ %.050.i279, %.lr.ph281 ], [ %i.sk, %bb.z ] ; 2 uses
  %i.sl = add nuw i64 %.0.i280, 1                 ; 2 uses
  %exitcond303.not = icmp eq i64 %i.sl, %i.j
  br i1 %exitcond303.not, label %._crit_edge282, label %.lr.ph281, !llvm.loop !284

_ZNK6embree4sse214CreateLeafGridILi4ENS_12SubGridQBVHNILi4EEEEclEPKNS_7PrimRefERKNS_5rangeImEERKNS_13FastAllocator15CachedAllocatorE.exit: ; preds = %_ZN6embree12SubGridQBVHNILi4EEC2EPKjS3_S3_PKNS_4BBoxINS_6Vec3faEEEjj.exit, %_ZN6embree13FastAllocator11ThreadLocal6mallocEPS0_mm.exit.i
  %i.sm = ptrtoint ptr %.1.i.i to i64
  %i.sn = call noundef i64 @llvm.umin.i64(i64 %i.o, i64 7)
  %i.so = or i64 %i.sn, %i.sm
  %i.sp = or i64 %i.so, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret i64 %i.sp
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.ceil.v4f32(<4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #13 = { cold noreturn }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { nounwind memory(none) }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { nounwind }
attributes #23 = { noreturn }

!llvm.module.flags = !{!9, !10}
end_hunk_0
