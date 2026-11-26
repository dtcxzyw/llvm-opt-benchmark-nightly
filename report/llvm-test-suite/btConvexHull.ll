Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btConvexHull?download=true
inline.NumInlined: 627
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN11HullLibrary16CreateConvexHullERK8HullDescR10HullResult:bb.a
  %indvars.iv.next.i.i.i182.3 = add nuw nsw i64 %indvars.iv.i.i.i181, 4 ; 2 uses
  %exitcond.not.i.i.i183.3 = icmp eq i64 %indvars.iv.next.i.i.i182.3, %wide.trip.count.i.i.i180
  br i1 %exitcond.not.i.i.i183.3, label %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i177, label %scalar.ph317, !llvm.loop !156

_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i175: ; preds = %_ZN20btAlignedObjectArrayIjE8allocateEi.exit.i.i173
  %.not.i5.i.i176 = icmp eq ptr %i.hk, null
  br i1 %.not.i5.i.i176, label %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i178, label %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i177

_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i177: ; preds = %scalar.ph317.prol.loopexit, %scalar.ph317, %middle.block328, %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i175
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ik = load i8, ptr %i.ij, align 8, !tbaa !62, !range !30, !noundef !31
  %i.il = trunc nuw i8 %i.ik to i1
  br i1 %i.il, label %bb.ad, label %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i178

bb.ad:                                            ; preds = %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i177
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.hk)
          to label %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i178 unwind label %.thread243

_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i178: ; preds = %bb.ad, %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.thread.i.i177, %_ZNK20btAlignedObjectArrayIjE4copyEiiPj.exit.i.i175
  %i.im = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i8 1, ptr %i.im, align 8, !tbaa !62
  store ptr %.0.i.i.i174, ptr %i.hj, align 8, !tbaa !61
  store i32 %i.gw, ptr %i.hb, align 8, !tbaa !60
  br label %.lr.ph.i165

.lr.ph.i165:                                      ; preds = %..lr.ph.i165_crit_edge, %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i178
  %i.in = phi ptr [ %.pre289, %..lr.ph.i165_crit_edge ], [ %.0.i.i.i174, %_ZN20btAlignedObjectArrayIjE10deallocateEv.exit.i.i178 ]
  %i.io = sext i32 %i.gz to i64                   ; 2 uses
  %wide.trip.count.i166 = sext i32 %i.gw to i64
  %i.ip = shl nsw i64 %i.io, 2
  %scevgep286 = getelementptr i8, ptr %i.in, i64 %i.ip
  %i.iq = sub nsw i64 %wide.trip.count.i166, %i.io
  %i.ir = shl nsw i64 %i.iq, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep286, i8 0, i64 %i.ir, i1 false), !tbaa !7
  br label %.loopexit266

.loopexit266:                                     ; preds = %.lr.ph.i165, %.loopexit267
  store i32 %i.gw, ptr %i.gy, align 4, !tbaa !59
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !26
  %i.iu = zext i32 %i.ft to i64
  %i.iv = shl nuw nsw i64 %i.iu, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.it, ptr nonnull align 4 %i.bj, i64 %i.iv, i1 false)
  %.not283 = icmp eq i32 %i.be, 0
  br i1 %.not283, label %.loopexit, label %.lr.ph281.preheader

.lr.ph281.preheader:                              ; preds = %.loopexit266
  %i.iw = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !61
  br label %.lr.ph281

.lr.ph281:                                        ; preds = %.lr.ph281.preheader, %bb.ag
  %.0279 = phi i32 [ %i.jp, %bb.ag ], [ 0, %.lr.ph281.preheader ]
  %.067278 = phi ptr [ %i.jn, %bb.ag ], [ %i.ix, %.lr.ph281.preheader ] ; 7 uses
  %.068277 = phi ptr [ %i.jo, %bb.ag ], [ %i.bk, %.lr.ph281.preheader ] ; 7 uses
  store i32 3, ptr %.067278, align 4, !tbaa !7
  %i.iy = load i32, ptr %1, align 8, !tbaa !164
  %i.iz = and i32 %i.iy, 2
  %.not.i187.not = icmp eq i32 %i.iz, 0
  br i1 %.not.i187.not, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph281
  %i.ja = getelementptr inbounds nuw i8, ptr %.068277, i64 8
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !7
  %i.jc = getelementptr inbounds nuw i8, ptr %.067278, i64 4
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !7
  %i.jd = getelementptr inbounds nuw i8, ptr %.068277, i64 4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !7
  %i.jf = getelementptr inbounds nuw i8, ptr %.067278, i64 8
  store i32 %i.je, ptr %i.jf, align 4, !tbaa !7
  br label %bb.ag

bb.af:                                            ; preds = %.lr.ph281
  %i.jg = load i32, ptr %.068277, align 4, !tbaa !7
  %i.jh = getelementptr inbounds nuw i8, ptr %.067278, i64 4
  store i32 %i.jg, ptr %i.jh, align 4, !tbaa !7
  %i.ji = getelementptr inbounds nuw i8, ptr %.068277, i64 4
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !7
  %i.jk = getelementptr inbounds nuw i8, ptr %.067278, i64 8
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !7
  %i.jl = getelementptr inbounds nuw i8, ptr %.068277, i64 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sink.in = phi ptr [ %i.jl, %bb.af ], [ %.068277, %bb.ae ]
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !7
  %i.jm = getelementptr inbounds nuw i8, ptr %.067278, i64 12
  store i32 %.sink, ptr %i.jm, align 4, !tbaa !7
  %i.jn = getelementptr inbounds nuw i8, ptr %.067278, i64 16
  %i.jo = getelementptr inbounds nuw i8, ptr %.068277, i64 12
  %i.jp = add nuw i32 %.0279, 1                   ; 2 uses
  %exitcond287.not = icmp eq i32 %i.jp, %i.be
  br i1 %exitcond287.not, label %.loopexit, label %.lr.ph281

.loopexit.loopexit332.unr-lcssa:                  ; preds = %.lr.ph276
  %lcmp.mod343.not = icmp eq i32 %xtraiter342, 0
  br i1 %lcmp.mod343.not, label %.loopexit, label %.lr.ph276.epil.preheader

.lr.ph276.epil.preheader:                         ; preds = %.loopexit.loopexit332.unr-lcssa, %.lr.ph276.preheader
  %.070273.epil.init = phi ptr [ %i.eu, %.lr.ph276.preheader ], [ %i.fn, %.loopexit.loopexit332.unr-lcssa ] ; 3 uses
  %.071272.epil.init = phi ptr [ %i.bk, %.lr.ph276.preheader ], [ %i.fo, %.loopexit.loopexit332.unr-lcssa ] ; 3 uses
  %lcmp.mod344 = trunc i32 %i.be to i1
  tail call void @llvm.assume(i1 %lcmp.mod344)
  %i.jq = getelementptr inbounds nuw i8, ptr %.071272.epil.init, i64 8
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !7
  store i32 %i.jr, ptr %.070273.epil.init, align 4, !tbaa !7
  %i.js = getelementptr inbounds nuw i8, ptr %.071272.epil.init, i64 4
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !7
  %i.ju = getelementptr inbounds nuw i8, ptr %.070273.epil.init, i64 4
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !7
  %i.jv = load i32, ptr %.071272.epil.init, align 4, !tbaa !7
  %i.jw = getelementptr inbounds nuw i8, ptr %.070273.epil.init, i64 8
  store i32 %i.jv, ptr %i.jw, align 4, !tbaa !7
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph276.epil.preheader, %.loopexit.loopexit332.unr-lcssa, %bb.ag, %bb.r, %.loopexit266, %bb.s
  %i.jx = load i32, ptr %i.e, align 4, !tbaa !59
  %.not.i188 = icmp eq i32 %i.jx, 0
  br i1 %.not.i188, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %.loopexit
  %i.jy = load i8, ptr %i.c, align 8, !range !30
  %i.jz = trunc nuw i8 %i.jy to i1
  br i1 %i.jz, label %bb.ai, label %_ZN20btAlignedObjectArrayIjE5clearEv.exit.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bk)
          to label %_ZN20btAlignedObjectArrayIjE5clearEv.exit.i unwind label %.thread243

_ZN20btAlignedObjectArrayIjE5clearEv.exit.i:      ; preds = %bb.ai, %bb.ah
  store i8 1, ptr %i.c, align 8, !tbaa !62
  store ptr null, ptr %i.d, align 8, !tbaa !61
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit, %_ZN20btAlignedObjectArrayIjE5clearEv.exit.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bj)
          to label %bb.ak unwind label %.thread250

.thread243:                                       ; preds = %bb.ac, %bb.ad, %.lr.ph.i90, %bb.q, %bb.p, %bb.w, %bb.z, %bb.j, %bb.m, %bb.ai
  %i.ka = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bj)
          to label %bb.am unwind label %bb.ao

bb.ak:                                            ; preds = %bb.b, %bb.d, %bb.aj
  %.072 = phi i32 [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.o)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit201 unwind label %.thread256

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit201: ; preds = %bb.ak
  %i.kb = load ptr, ptr %i.d, align 8, !tbaa !61  ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.kb, null
  %i.kc = load i8, ptr %i.c, align 8, !range !30
  %i.kd = trunc nuw i8 %i.kc to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.kd, i1 false
  br i1 %or.cond.i.i.i, label %bb.al, label %_ZN11PHullResultD2Ev.exit

bb.al:                                            ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit201
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.kb)
  br label %_ZN11PHullResultD2Ev.exit

_ZN11PHullResultD2Ev.exit:                        ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit201, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i32 %.072

bb.am:                                            ; preds = %.thread243, %.thread250
  %.pn82.pn265 = phi { ptr, i32 } [ %i.ew, %.thread250 ], [ %i.ka, %.thread243 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.o)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit205 unwind label %bb.ao

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit205: ; preds = %.thread256, %bb.am
  %.pn86 = phi { ptr, i32 } [ %.pn82.pn265, %bb.am ], [ %i.an, %.thread256 ]
  %i.ke = load ptr, ptr %i.d, align 8, !tbaa !61  ; 2 uses
  %.not.i.i.i.i206 = icmp ne ptr %i.ke, null
  %i.kf = load i8, ptr %i.c, align 8, !range !30
  %i.kg = trunc nuw i8 %i.kf to i1
  %or.cond.i.i.i207 = select i1 %.not.i.i.i.i206, i1 %i.kg, i1 false
  br i1 %or.cond.i.i.i207, label %bb.an, label %_ZN11PHullResultD2Ev.exit209

bb.an:                                            ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit205
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ke)
          to label %_ZN11PHullResultD2Ev.exit209 unwind label %bb.ao

_ZN11PHullResultD2Ev.exit209:                     ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit205, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %.pn86

bb.ao:                                            ; preds = %bb.an, %bb.am, %.thread243
  %i.kh = landingpad { ptr, i32 }
          catch ptr null
  %i.ki = extractvalue { ptr, i32 } %i.kh, 0
  tail call void @__clang_call_terminate(ptr %i.ki) #20
  unreachable
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN11HullLibrary15CleanupVerticesEjPK9btVector3jRjPS0_fRS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef captures(none) %5, float noundef %6, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %7) local_unnamed_addr #4 align 2 !guid !170 {
bb.a:
  %i.a = icmp ne i32 %1, 0                        ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 7 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !55   ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.loopexit371

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56
  %i.g = icmp slt i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53   ; 3 uses
  br i1 %i.g, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %.lr.ph.i

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i: ; preds = %bb.c
  %.not.i5.i.i = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !30
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond368 = select i1 %.not.i5.i.i, i1 %i.l, i1 false
  br i1 %or.cond368, label %bb.d, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.i)
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i: ; preds = %bb.d, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i
  store i8 1, ptr %i.j, align 8, !tbaa !54
  store ptr null, ptr %i.h, align 8, !tbaa !53
  store i32 0, ptr %i.e, align 8, !tbaa !56
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i
  %i.m = phi ptr [ null, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i ], [ %i.i, %bb.c ]
  %i.n = sext i32 %i.c to i64                     ; 2 uses
  %i.o = shl nsw i64 %i.n, 2
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.o
  %i.p = mul nsw i64 %i.n, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.p, i1 false), !tbaa !7
  br label %.loopexit371

.loopexit371:                                     ; preds = %.lr.ph.i, %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !55
  store i32 0, ptr %4, align 4, !tbaa !7
  store <2 x float> splat (float 1.000000e+00), ptr %7, align 4, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store float 1.000000e+00, ptr %i.q, align 4, !tbaa !15
  %i.r = zext i32 %3 to i64                       ; 3 uses
  %xtraiter = and i32 %1, 1
  %i.s = icmp eq i32 %1, 1
  br i1 %i.s, label %.epil.preheader, label %.loopexit371.new

.loopexit371.new:                                 ; preds = %.loopexit371
  %unroll_iter = and i32 %1, -2
  br label %bb.f

.unr-lcssa:                                       ; preds = %bb.f
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.e, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.loopexit371
  %.0282384.epil.init = phi ptr [ %2, %.loopexit371 ], [ %i.ax, %.unr-lcssa ]
  %.epil.init = phi <4 x float> [ splat (float f0xFF7FFFFF), %.loopexit371 ], [ %i.aw, %.unr-lcssa ] ; 2 uses
  %.epil.init531 = phi <4 x float> [ splat (float f0x7F7FFFFF), %.loopexit371 ], [ %i.av, %.unr-lcssa ] ; 2 uses
  %lcmp.mod534 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod534)
  %i.t = load <3 x float>, ptr %.0282384.epil.init, align 4, !tbaa !15
  %i.u = shufflevector <3 x float> %i.t, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %i.v = fcmp olt <4 x float> %i.u, %.epil.init531
  %i.w = fcmp ogt <4 x float> %i.u, %.epil.init
  %i.x = select <4 x i1> %i.v, <4 x float> %i.u, <4 x float> %.epil.init531
  %i.y = select <4 x i1> %i.w, <4 x float> %i.u, <4 x float> %.epil.init
  br label %bb.e

bb.e:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa529 = phi <4 x float> [ %i.av, %.unr-lcssa ], [ %i.x, %.epil.preheader ] ; 2 uses
  %.lcssa528 = phi <4 x float> [ %i.aw, %.unr-lcssa ], [ %i.y, %.epil.preheader ]
  %i.z = fsub <4 x float> %.lcssa528, %.lcssa529  ; 5 uses
  %i.aa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> splat (float 5.000000e-01), <4 x float> %.lcssa529) ; 5 uses
  %i.ab = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 4 uses
  %i.ac = fcmp olt <2 x float> %i.ab, splat (float f0x358637BD) ; 3 uses
  %i.ad = extractelement <2 x i1> %i.ac, i64 0
  %i.ae = extractelement <2 x i1> %i.ac, i64 1
  %or.cond = select i1 %i.ad, i1 true, i1 %i.ae
  %i.af = extractelement <4 x float> %i.z, i64 2  ; 7 uses
  %i.ag = fcmp olt float %i.af, f0x358637BD       ; 2 uses
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.ag
  %i.ah = icmp ult i32 %1, 3
  %or.cond5 = or i1 %i.ah, %or.cond3
  br i1 %or.cond5, label %bb.g, label %bb.k

bb.f:                                             ; preds = %bb.f, %.loopexit371.new
  %.0282384 = phi ptr [ %2, %.loopexit371.new ], [ %i.ax, %bb.f ] ; 2 uses
  %i.ai = phi <4 x float> [ splat (float f0xFF7FFFFF), %.loopexit371.new ], [ %i.aw, %bb.f ] ; 2 uses
  %i.aj = phi <4 x float> [ splat (float f0x7F7FFFFF), %.loopexit371.new ], [ %i.av, %bb.f ] ; 2 uses
  %niter = phi i32 [ 0, %.loopexit371.new ], [ %niter.next.1, %bb.f ]
  %i.ak = load <3 x float>, ptr %.0282384, align 4, !tbaa !15
  %i.al = shufflevector <3 x float> %i.ak, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %i.am = fcmp olt <4 x float> %i.al, %i.aj
  %i.an = fcmp ogt <4 x float> %i.al, %i.ai
  %i.ao = select <4 x i1> %i.am, <4 x float> %i.al, <4 x float> %i.aj ; 2 uses
  %i.ap = select <4 x i1> %i.an, <4 x float> %i.al, <4 x float> %i.ai ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0282384, i64 %i.r ; 2 uses
  %i.ar = load <3 x float>, ptr %i.aq, align 4, !tbaa !15
  %i.as = shufflevector <3 x float> %i.ar, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 4 uses
  %i.at = fcmp olt <4 x float> %i.as, %i.ao
  %i.au = fcmp ogt <4 x float> %i.as, %i.ap
  %i.av = select <4 x i1> %i.at, <4 x float> %i.as, <4 x float> %i.ao ; 3 uses
  %i.aw = select <4 x i1> %i.au, <4 x float> %i.as, <4 x float> %i.ap ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.r ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.f

bb.g:                                             ; preds = %bb.e
  %i.ay = extractelement <4 x float> %i.z, i64 0  ; 3 uses
  %i.az = fcmp ogt float %i.ay, f0x358637BD
  %i.ba = fcmp olt float %i.ay, f0x7F7FFFFF
  %or.cond332 = and i1 %i.az, %i.ba
  %.0308 = select i1 %or.cond332, float %i.ay, float f0x7F7FFFFF ; 2 uses
  %i.bb = extractelement <4 x float> %i.z, i64 1  ; 3 uses
  %i.bc = fcmp ogt float %i.bb, f0x358637BD
  %i.bd = fcmp olt float %i.bb, %.0308
  %or.cond333 = and i1 %i.bc, %i.bd
  %.1309 = select i1 %or.cond333, float %i.bb, float %.0308 ; 2 uses
  %i.be = fcmp ogt float %i.af, f0x358637BD
  %i.bf = fcmp olt float %i.af, %.1309
  %or.cond334 = select i1 %i.be, i1 %i.bf, i1 false
  %.2310 = select i1 %or.cond334, float %i.af, float %.1309 ; 2 uses
  %i.bg = fcmp oeq float %.2310, f0x7F7FFFFF
  br i1 %i.bg, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = fmul float %.2310, 5.000000e-02         ; 2 uses
  %i.bi = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = select <2 x i1> %i.ac, <2 x float> %i.bj, <2 x float> %i.ab ; 2 uses
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.0307 = phi float [ %i.af, %bb.h ], [ %i.bh, %bb.i ], [ f0x3C23D70A, %bb.g ] ; 2 uses
  %i.bl = phi <2 x float> [ %i.bk, %bb.h ], [ %i.bk, %bb.i ], [ splat (float f0x3C23D70A), %bb.g ] ; 2 uses
  %i.bm = extractelement <4 x float> %i.aa, i64 1
  %i.bn = extractelement <2 x float> %i.bl, i64 1
  %i.bo = fsub float %i.bm, %i.bn
  %i.bp = extractelement <4 x float> %i.aa, i64 2
  %i.bq = fsub float %i.bp, %.0307
  %i.br = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bs = insertelement <4 x float> %i.br, float %.0307, i64 2
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.bu = fadd <4 x float> %i.aa, %i.bt
  %i.bv = fsub <4 x float> %i.aa, %i.bt
  %i.bw = shufflevector <4 x float> %i.bu, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %.sink.split

bb.k:                                             ; preds = %bb.e
  store <2 x float> %i.ab, ptr %7, align 4, !tbaa !15
  store float %i.af, ptr %i.q, align 4, !tbaa !15
  %i.bx = fdiv <2 x float> splat (float 1.000000e+00), %i.ab ; 2 uses
  %i.by = fdiv float 1.000000e+00, %i.af          ; 2 uses
  %i.bz = shufflevector <4 x float> %i.aa, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.ca = shufflevector <2 x float> %i.bx, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.cb = insertelement <3 x float> %i.ca, float %i.by, i64 2
  %i.cc = fmul <3 x float> %i.bz, %i.cb           ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cg = shufflevector <3 x float> %i.cc, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ch = shufflevector <3 x float> %i.cc, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ci = shufflevector <3 x float> %i.cc, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.m

bb.l:                                             ; preds = %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit
  %i.cj = load i32, ptr %4, align 4, !tbaa !7     ; 3 uses
  %.not395 = icmp eq i32 %i.cj, 0
  br i1 %.not395, label %._crit_edge, label %.lr.ph393.preheader.a

.lr.ph393.preheader.a:                            ; preds = %bb.l
  %wide.trip.count414 = zext i32 %i.cj to i64
  br label %.lr.ph393

bb.m:                                             ; preds = %bb.k, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit
  %.1283390 = phi ptr [ %2, %bb.k ], [ %i.ck, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit ] ; 3 uses
  %.0301389 = phi i32 [ 0, %bb.k ], [ %i.fs, %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.1283390, i64 %i.r
  %i.cl = load <2 x float>, ptr %.1283390, align 4, !tbaa !15
  %i.cm = getelementptr inbounds nuw i8, ptr %.1283390, i64 8
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !15
  %i.co = fmul <2 x float> %i.bx, %i.cl           ; 6 uses
  %i.cp = fmul float %i.by, %i.cn                 ; 4 uses
  %i.cq = load i32, ptr %4, align 4, !tbaa !7     ; 6 uses
  %.not = icmp eq i32 %i.cq, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %wide.trip.count = zext i32 %i.cq to i64
  %i.cr = extractelement <2 x float> %i.co, i64 0
  %shift = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv ; 5 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !15 ; 2 uses
  %i.cu = fsub float %i.ct, %i.cr
  %i.cv = tail call float @llvm.fabs.f32(float %i.cu)
  %i.cw = fcmp olt float %i.cv, %6
  br i1 %i.cw, label %bb.n, label %bb.q

bb.n:                                             ; preds = %.lr.ph
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cz = load <2 x float>, ptr %i.cy, align 4, !tbaa !15 ; 3 uses
  %i.da = load float, ptr %i.cx, align 4, !tbaa !15
  %i.db = fsub float %i.da, %i.cp
  %i.dc = tail call float @llvm.fabs.f32(float %i.db)
  %foldExtExtBinop = fsub <2 x float> %i.cz, %shift
  %i.dd = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.de = tail call float @llvm.fabs.f32(float %i.dd)
  %i.df = fcmp olt float %i.de, %6
  %i.dg = fcmp olt float %i.dc, %6
  %or.cond335 = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %or.cond335, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dh = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.di = insertelement <2 x float> %i.cz, float %i.cp, i64 0
  %i.dj = fsub <2 x float> %i.di, %i.cg           ; 2 uses
  %i.dk = insertelement <2 x float> %i.co, float %i.ct, i64 1
  %i.dl = fsub <2 x float> %i.dk, %i.ch           ; 2 uses
  %i.dm = shufflevector <2 x float> %i.co, <2 x float> %i.cz, <2 x i32> <i32 1, i32 2>
  %i.dn = fsub <2 x float> %i.dm, %i.ci           ; 2 uses
  %i.do = fmul <2 x float> %i.dn, %i.dn
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dl, <2 x float> %i.do)
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.dj, <2 x float> %i.dp) ; 2 uses
  %i.dr = extractelement <2 x float> %i.dq, i64 0
  %i.ds = extractelement <2 x float> %i.dq, i64 1
  %i.dt = fcmp ogt float %i.dr, %i.ds
  br i1 %i.dt, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.du = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store <2 x float> %i.co, ptr %i.cs, align 4, !tbaa !15
  store float %i.cp, ptr %i.du, align 4, !tbaa !15
  br label %.loopexit

bb.q:                                             ; preds = %bb.n, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond405.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond405.not, label %.loopexit.thread, label %.lr.ph

.loopexit:                                        ; preds = %bb.m, %bb.p, %bb.o
  %.0297375 = phi i32 [ %i.dh, %bb.o ], [ %i.dh, %bb.p ], [ 0, %bb.m ] ; 3 uses
  %i.dv = icmp eq i32 %.0297375, %i.cq
  br i1 %i.dv, label %.loopexit.thread, label %bb.r

.loopexit.thread:                                 ; preds = %bb.q, %.loopexit
  %.0297375453 = phi i32 [ %.0297375, %.loopexit ], [ %i.cq, %bb.q ]
  %i.dw = zext i32 %i.cq to i64
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.dw ; 2 uses
  store <2 x float> %i.co, ptr %i.dx, align 4, !tbaa !15
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store float %i.cp, ptr %i.dy, align 4, !tbaa !15
  %i.dz = add i32 %i.cq, 1
  store i32 %i.dz, ptr %4, align 4, !tbaa !7
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.thread, %.loopexit
  %.0297375452 = phi i32 [ %.0297375453, %.loopexit.thread ], [ %.0297375, %.loopexit ]
  %i.ea = load i32, ptr %i.b, align 4, !tbaa !55  ; 7 uses
  %i.eb = load i32, ptr %i.cd, align 8, !tbaa !56
  %i.ec = icmp eq i32 %i.ea, %i.eb
  br i1 %i.ec, label %bb.s, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.s:                                             ; preds = %bb.r
  %.not.i.i = icmp eq i32 %i.ea, 0
  %i.ed = shl nsw i32 %i.ea, 1
  %i.ee = select i1 %.not.i.i, i32 1, i32 %i.ed   ; 4 uses
  %i.ef = icmp slt i32 %i.ea, %i.ee
  br i1 %i.ef, label %bb.t, label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eg = sext i32 %i.ee to i64
  %i.eh = shl nsw i64 %i.eg, 2
  %i.ei = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.eh, i32 noundef 16)
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !55
  br label %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.u, %bb.t
  %i.ej = phi i32 [ %.pre.i, %bb.u ], [ %i.ea, %bb.t ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.ei, %bb.u ], [ null, %bb.t ] ; 8 uses
  %i.ek = icmp sgt i32 %i.ej, 0
  %i.el = load ptr, ptr %i.ce, align 8, !tbaa !53 ; 9 uses
  br i1 %i.ek, label %.lr.ph.i.i.i345, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i341

.lr.ph.i.i.i345:                                  ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.em = ptrtoaddr ptr %i.el to i64
  %.0.i.i.i517 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i346 = zext nneg i32 %i.ej to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ej, 8
  %i.en = sub i64 %i.em, %.0.i.i.i517
  %diff.check = icmp ugt i64 %i.en, -32
  %or.cond519 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond519, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i345
  %n.vec = and i64 %wide.trip.count.i.i.i346, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %index ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %wide.load = load <4 x i32>, ptr %i.ep, align 4, !tbaa !7
  %wide.load518 = load <4 x i32>, ptr %i.eq, align 4, !tbaa !7
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store <4 x i32> %wide.load, ptr %i.eo, align 4, !tbaa !7
  store <4 x i32> %wide.load518, ptr %i.er, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !167

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i346
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i343, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i345, %middle.block
  %indvars.iv.i.i.i347.ph = phi i64 [ 0, %.lr.ph.i.i.i345 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter535 = and i64 %wide.trip.count.i.i.i346, 3 ; 2 uses
  %lcmp.mod536.not = icmp eq i64 %xtraiter535, 0
  br i1 %lcmp.mod536.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i347.prol = phi i64 [ %indvars.iv.next.i.i.i348.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i347.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i347.prol
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv.i.i.i347.prol
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !7
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !7
  %indvars.iv.next.i.i.i348.prol = add nuw nsw i64 %indvars.iv.i.i.i347.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter535
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !168

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i347.unr = phi i64 [ %indvars.iv.i.i.i347.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i348.prol, %scalar.ph.prol ]
  %i.ew = sub nsw i64 %indvars.iv.i.i.i347.ph, %wide.trip.count.i.i.i346
  %i.ex = icmp ugt i64 %i.ew, -4
  br i1 %i.ex, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i343, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i347 = phi i64 [ %indvars.iv.next.i.i.i348.3, %scalar.ph ], [ %indvars.iv.i.i.i347.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i347
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv.i.i.i347
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !7
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !7
  %indvars.iv.next.i.i.i348 = add nuw nsw i64 %indvars.iv.i.i.i347, 1 ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i348
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv.next.i.i.i348
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !7
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !7
  %indvars.iv.next.i.i.i348.1 = add nuw nsw i64 %indvars.iv.i.i.i347, 2 ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i348.1
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv.next.i.i.i348.1
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !7
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !7
  %indvars.iv.next.i.i.i348.2 = add nuw nsw i64 %indvars.iv.i.i.i347, 3 ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i348.2
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv.next.i.i.i348.2
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !7
  store i32 %i.fj, ptr %i.fh, align 4, !tbaa !7
  %indvars.iv.next.i.i.i348.3 = add nuw nsw i64 %indvars.iv.i.i.i347, 4 ; 2 uses
  %exitcond.not.i.i.i349.3 = icmp eq i64 %indvars.iv.next.i.i.i348.3, %wide.trip.count.i.i.i346
  br i1 %exitcond.not.i.i.i349.3, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i343, label %scalar.ph, !llvm.loop !169

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i341: ; preds = %_ZN20btAlignedObjectArrayIiE8allocateEi.exit.i.i
  %.not.i5.i.i342 = icmp eq ptr %i.el, null
  br i1 %.not.i5.i.i342, label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i344, label %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i343

_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i343: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i341
  %i.fk = load i8, ptr %i.cf, align 8, !tbaa !54, !range !30, !noundef !31
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i343
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.el)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.thread.i.i343
  %.pre2.pre.i = load i32, ptr %i.b, align 4, !tbaa !55
  br label %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i344

_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i344: ; preds = %bb.w, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i341
  %.pre2.i = phi i32 [ %.pre2.pre.i, %bb.w ], [ %i.ej, %_ZNK20btAlignedObjectArrayIiE4copyEiiPi.exit.i.i341 ]
  store i8 1, ptr %i.cf, align 8, !tbaa !54
  store ptr %.0.i.i.i, ptr %i.ce, align 8, !tbaa !53
  store i32 %i.ee, ptr %i.cd, align 8, !tbaa !56
  br label %_ZN20btAlignedObjectArrayIiE9push_backERKi.exit

_ZN20btAlignedObjectArrayIiE9push_backERKi.exit:  ; preds = %bb.r, %bb.s, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i344
  %i.fm = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIiE10deallocateEv.exit.i.i344 ], [ %i.ea, %bb.s ], [ %i.ea, %bb.r ]
  %i.fn = load ptr, ptr %i.ce, align 8, !tbaa !53
  %i.fo = sext i32 %i.fm to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %i.fo
  store i32 %.0297375452, ptr %i.fp, align 4, !tbaa !7
  %i.fq = load i32, ptr %i.b, align 4, !tbaa !55
  %i.fr = add nsw i32 %i.fq, 1
  store i32 %i.fr, ptr %i.b, align 4, !tbaa !55
  %i.fs = add nuw i32 %.0301389, 1                ; 2 uses
  %exitcond406.not = icmp eq i32 %i.fs, %1
  br i1 %exitcond406.not, label %bb.l, label %bb.m

._crit_edge:                                      ; preds = %.lr.ph393, %bb.l
  %.sroa.10423.0 = phi float [ f0x7F7FFFFF, %bb.l ], [ %spec.store.select369.2, %.lr.ph393 ] ; 2 uses
  %.sroa.10.0 = phi float [ f0xFF7FFFFF, %bb.l ], [ %spec.store.select370.2, %.lr.ph393 ]
  %i.ft = phi <2 x float> [ splat (float f0xFF7FFFFF), %bb.l ], [ %i.gj, %.lr.ph393 ]
  %i.fu = phi <2 x float> [ splat (float f0x7F7FFFFF), %bb.l ], [ %i.gi, %.lr.ph393 ] ; 2 uses
  %i.fv = fsub <2 x float> %i.ft, %i.fu           ; 5 uses
  %i.fw = fsub float %.sroa.10.0, %.sroa.10423.0  ; 6 uses
  %i.fx = fcmp olt <2 x float> %i.fv, splat (float f0x358637BD) ; 3 uses
  %i.fy = extractelement <2 x i1> %i.fx, i64 0
  %i.fz = extractelement <2 x i1> %i.fx, i64 1
  %or.cond7 = select i1 %i.fy, i1 true, i1 %i.fz
  %i.ga = fcmp olt float %i.fw, f0x358637BD       ; 2 uses
  %or.cond9 = select i1 %or.cond7, i1 true, i1 %i.ga
  %i.gb = icmp ult i32 %i.cj, 3
  %or.cond336 = or i1 %i.gb, %or.cond9
  br i1 %or.cond336, label %bb.x, label %bb.aa

.lr.ph393:                                        ; preds = %.lr.ph393.preheader.a, %.lr.ph393
  %.sroa.10423.1 = phi float [ f0x7F7FFFFF, %.lr.ph393.preheader.a ], [ %spec.store.select369.2, %.lr.ph393 ] ; 2 uses
  %.sroa.10.1 = phi float [ f0xFF7FFFFF, %.lr.ph393.preheader.a ], [ %spec.store.select370.2, %.lr.ph393 ] ; 2 uses
  %indvars.iv411 = phi i64 [ 0, %.lr.ph393.preheader.a ], [ %indvars.iv.next412, %.lr.ph393 ] ; 2 uses
  %i.gc = phi <2 x float> [ splat (float f0xFF7FFFFF), %.lr.ph393.preheader.a ], [ %i.gj, %.lr.ph393 ] ; 2 uses
  %i.gd = phi <2 x float> [ splat (float f0x7F7FFFFF), %.lr.ph393.preheader.a ], [ %i.gi, %.lr.ph393 ] ; 2 uses
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv411 ; 2 uses
  %i.gf = load <2 x float>, ptr %i.ge, align 4, !tbaa !15 ; 4 uses
  %i.gg = fcmp olt <2 x float> %i.gf, %i.gd
  %i.gh = fcmp ogt <2 x float> %i.gf, %i.gc
  %i.gi = select <2 x i1> %i.gg, <2 x float> %i.gf, <2 x float> %i.gd ; 2 uses
  %i.gj = select <2 x i1> %i.gh, <2 x float> %i.gf, <2 x float> %i.gc ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !15 ; 4 uses
  %i.gm = fcmp olt float %i.gl, %.sroa.10423.1
  %spec.store.select369.2 = select i1 %i.gm, float %i.gl, float %.sroa.10423.1 ; 2 uses
  %i.gn = fcmp ogt float %i.gl, %.sroa.10.1
  %spec.store.select370.2 = select i1 %i.gn, float %i.gl, float %.sroa.10.1 ; 2 uses
  %indvars.iv.next412 = add nuw nsw i64 %indvars.iv411, 1 ; 2 uses
  %exitcond415.not = icmp eq i64 %indvars.iv.next412, %wide.trip.count414
  br i1 %exitcond415.not, label %._crit_edge, label %.lr.ph393

bb.x:                                             ; preds = %._crit_edge
  %i.go = extractelement <2 x float> %i.fv, i64 0 ; 3 uses
  %i.gp = extractelement <2 x float> %i.fv, i64 1 ; 3 uses
  %i.gq = shufflevector <2 x float> %i.fv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.gr = insertelement <4 x float> %i.gq, float %i.fw, i64 2
  %i.gs = shufflevector <2 x float> %i.fu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.gt = insertelement <4 x float> %i.gs, float %.sroa.10423.0, i64 2
  %i.gu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gr, <4 x float> splat (float 5.000000e-01), <4 x float> %i.gt) ; 4 uses
  %i.gv = fcmp oge float %i.go, f0x358637BD
  %i.gw = fcmp olt float %i.go, f0x7F7FFFFF
  %or.cond337 = and i1 %i.gv, %i.gw
  %.0285 = select i1 %or.cond337, float %i.go, float f0x7F7FFFFF ; 2 uses
  %i.gx = fcmp oge float %i.gp, f0x358637BD
  %i.gy = fcmp olt float %i.gp, %.0285
  %or.cond338 = and i1 %i.gx, %i.gy
  %.1286 = select i1 %or.cond338, float %i.gp, float %.0285 ; 2 uses
  %i.gz = fcmp oge float %i.fw, f0x358637BD
  %i.ha = fcmp olt float %i.fw, %.1286
  %or.cond339 = select i1 %i.gz, i1 %i.ha, i1 false
  %.2287 = select i1 %or.cond339, float %i.fw, float %.1286 ; 2 uses
  %i.hb = fcmp oeq float %.2287, f0x7F7FFFFF
  br i1 %i.hb, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hc = fmul float %.2287, 5.000000e-02         ; 2 uses
  %i.hd = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hf = select <2 x i1> %i.fx, <2 x float> %i.he, <2 x float> %i.fv ; 2 uses
  br i1 %i.ga, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  br label %.critedge

.critedge:                                        ; preds = %bb.x, %bb.y, %bb.z
  %.0288 = phi float [ %i.fw, %bb.y ], [ %i.hc, %bb.z ], [ f0x3C23D70A, %bb.x ] ; 2 uses
  %i.hg = phi <2 x float> [ %i.hf, %bb.y ], [ %i.hf, %bb.z ], [ splat (float f0x3C23D70A), %bb.x ] ; 2 uses
  %i.hh = extractelement <2 x float> %i.hg, i64 1
  %i.hi = extractelement <4 x float> %i.gu, i64 1
  %i.hj = fsub float %i.hi, %i.hh
  %i.hk = extractelement <4 x float> %i.gu, i64 2
  %i.hl = fsub float %i.hk, %.0288
  %i.hm = shufflevector <2 x float> %i.hg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.hn = insertelement <4 x float> %i.hm, float %.0288, i64 2 ; 2 uses
  %i.ho = fadd <4 x float> %i.gu, %i.hn
  %i.hp = fsub <4 x float> %i.gu, %i.hn
  %i.hq = shufflevector <4 x float> %i.ho, <4 x float> %i.hp, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %bb.j
  %.sink507 = phi float [ %i.bo, %bb.j ], [ %i.hj, %.critedge ] ; 4 uses
  %.sink505 = phi float [ %i.bq, %bb.j ], [ %i.hl, %.critedge ] ; 4 uses
  %i.hr = phi <4 x float> [ %i.bw, %bb.j ], [ %i.hq, %.critedge ] ; 4 uses
  %i.hs = extractelement <4 x float> %i.hr, i64 3 ; 4 uses
  store float %i.hs, ptr %5, align 4, !tbaa !15
  %i.ht = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %.sink507, ptr %i.ht, align 4, !tbaa !15
  %i.hu = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.sink505, ptr %i.hu, align 4, !tbaa !15
  %i.hv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.hw = extractelement <4 x float> %i.hr, i64 0 ; 4 uses
  store float %i.hw, ptr %i.hv, align 4, !tbaa !15
  %i.hx = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float %.sink507, ptr %i.hx, align 4, !tbaa !15
  %i.hy = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float %.sink505, ptr %i.hy, align 4, !tbaa !15
  %i.hz = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float %i.hw, ptr %i.hz, align 4, !tbaa !15
  %i.ia = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.ib = extractelement <4 x float> %i.hr, i64 1 ; 4 uses
  store float %i.ib, ptr %i.ia, align 4, !tbaa !15
  %i.ic = getelementptr inbounds nuw i8, ptr %5, i64 40
  store float %.sink505, ptr %i.ic, align 4, !tbaa !15
  %i.id = getelementptr inbounds nuw i8, ptr %5, i64 48
  store float %i.hs, ptr %i.id, align 4, !tbaa !15
  %i.ie = getelementptr inbounds nuw i8, ptr %5, i64 52
  store float %i.ib, ptr %i.ie, align 4, !tbaa !15
  %i.if = getelementptr inbounds nuw i8, ptr %5, i64 56
  store float %.sink505, ptr %i.if, align 4, !tbaa !15
  %i.ig = getelementptr inbounds nuw i8, ptr %5, i64 64
  store float %i.hs, ptr %i.ig, align 4, !tbaa !15
  %i.ih = getelementptr inbounds nuw i8, ptr %5, i64 68
  store float %.sink507, ptr %i.ih, align 4, !tbaa !15
  %i.ii = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.ij = extractelement <4 x float> %i.hr, i64 2 ; 4 uses
  store float %i.ij, ptr %i.ii, align 4, !tbaa !15
  %i.ik = getelementptr inbounds nuw i8, ptr %5, i64 80
  store float %i.hw, ptr %i.ik, align 4, !tbaa !15
  %i.il = getelementptr inbounds nuw i8, ptr %5, i64 84
  store float %.sink507, ptr %i.il, align 4, !tbaa !15
  %i.im = getelementptr inbounds nuw i8, ptr %5, i64 88
  store float %i.ij, ptr %i.im, align 4, !tbaa !15
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 96
  store float %i.hw, ptr %i.in, align 4, !tbaa !15
  %i.io = getelementptr inbounds nuw i8, ptr %5, i64 100
  store float %i.ib, ptr %i.io, align 4, !tbaa !15
  %i.ip = getelementptr inbounds nuw i8, ptr %5, i64 104
  store float %i.ij, ptr %i.ip, align 4, !tbaa !15
  %i.iq = getelementptr inbounds nuw i8, ptr %5, i64 112
  store float %i.hs, ptr %i.iq, align 4, !tbaa !15
  %i.ir = getelementptr inbounds nuw i8, ptr %5, i64 116
  store float %i.ib, ptr %i.ir, align 4, !tbaa !15
  %i.is = getelementptr inbounds nuw i8, ptr %5, i64 120
  store float %i.ij, ptr %i.is, align 4, !tbaa !15
  store i32 8, ptr %4, align 4, !tbaa !7
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %._crit_edge, %bb.a
  ret i1 %i.a
}

; Function Attrs: uwtable
define dso_local void @_ZN11HullLibrary16BringOutYourDeadEPK9btVector3jPS0_RjPjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !171 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !55   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit, label %._crit_edge

_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit:    ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %i.e = shl nuw nsw i64 %i.d, 2                  ; 2 uses
  %i.f = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.e, i32 noundef 16) ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.f, i8 0, i64 %i.e, i1 false), !tbaa !7
  %.pre = load i32, ptr %i.a, align 4, !tbaa !55
  %i.g = icmp sgt i32 %.pre, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store i32 %i.k, ptr %i.l, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i32, ptr %i.a, align 4, !tbaa !55
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a, %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit
  %.sroa.1096.2133 = phi ptr [ null, %bb.a ], [ %i.f, %_ZN20btAlignedObjectArrayIiE6resizeEiRKi.exit ], [ %i.f, %bb.b ] ; 5 uses
  %i.p = icmp sgt i32 %2, 0
  %i.q = zext i32 %2 to i64
  %i.r = shl nuw nsw i64 %i.q, 2                  ; 2 uses
  br i1 %i.p, label %bb.c, label %_ZN20btAlignedObjectArrayIjE6resizeEiRKj.exit.thread

bb.c:                                             ; preds = %._crit_edge
  %i.s = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.r, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIjE6resizeEiRKj.exit unwind label %_ZN20btAlignedObjectArrayIjED2Ev.exit ; 4 uses

_ZN20btAlignedObjectArrayIjE6resizeEiRKj.exit:    ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.s, i8 0, i64 %i.r, i1 false)
  store i32 0, ptr %4, align 4, !tbaa !7
  %i.t = icmp sgt i32 %6, 0
  br i1 %i.t, label %.lr.ph114, label %._crit_edge115

_ZN20btAlignedObjectArrayIjE6resizeEiRKj.exit.thread: ; preds = %._crit_edge
  %i.u = icmp eq i32 %2, 0
  tail call void @llvm.assume(i1 %i.u)
  store i32 0, ptr %4, align 4, !tbaa !7
  %i.v = icmp sgt i32 %6, 0
  br i1 %i.v, label %.lr.ph114, label %_ZN20btAlignedObjectArrayIjED2Ev.exit72

.lr.ph114:                                        ; preds = %_ZN20btAlignedObjectArrayIjE6resizeEiRKj.exit.thread, %_ZN20btAlignedObjectArrayIjE6resizeEiRKj.exit
  %.sroa.1080.1137 = phi ptr [ null, %_ZN20btAlignedObjectArrayIjE6resizeEiRKj.exit.thread ], [ %i.s, %_ZN20btAlignedObjectArrayIjE6resizeEiRKj.exit ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count = zext nneg i32 %6 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph114, %bb.i
  %indvars.iv120 = phi i64 [ 0, %.lr.ph114 ], [ %indvars.iv.next121, %bb.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv120 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7    ; 3 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %.sroa.1080.1137, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7  ; 2 uses
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = add i32 %i.ab, -1
  store i32 %i.ac, ptr %i.x, align 4, !tbaa !7
  br label %bb.i

_ZN20btAlignedObjectArrayIjED2Ev.exit:            ; preds = %._crit_edge115.thread, %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i75.not = icmp eq ptr %.sroa.1096.2133, null
  br i1 %.not.i.i.i75.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit78, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.ae = load i32, ptr %4, align 4, !tbaa !7     ; 4 uses
  store i32 %i.ae, ptr %i.x, align 4, !tbaa !7
  %i.af = zext i32 %i.y to i64
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.af ; 3 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !15
  %i.ai = zext i32 %i.ae to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ai ; 3 uses
  store float %i.ah, ptr %i.aj, align 4, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store float %i.al, ptr %i.am, align 4, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store float %i.ao, ptr %i.ap, align 4, !tbaa !15
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !55  ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph111, label %._crit_edge112

._crit_edge112:                                   ; preds = %bb.h, %bb.f
  %i.as = add i32 %i.ae, 1                        ; 2 uses
  store i32 %i.as, ptr %4, align 4, !tbaa !7
  store i32 %i.as, ptr %i.aa, align 4, !tbaa !7
  br label %bb.i

.lr.ph111:                                        ; preds = %bb.f, %bb.h
  %i.at = phi i32 [ %i.az, %bb.h ], [ %i.aq, %bb.f ]
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %bb.h ], [ 0, %bb.f ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.sroa.1096.2133, i64 %indvars.iv117
  %i.av = load i32, ptr %i.au, align 4, !tbaa !7
  %i.aw = icmp eq i32 %i.av, %i.y
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph111
  %i.ax = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv117
  store i32 %i.ae, ptr %i.ay, align 4, !tbaa !7
  %.pre123 = load i32, ptr %i.a, align 4, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph111, %bb.g
  %i.az = phi i32 [ %i.at, %.lr.ph111 ], [ %.pre123, %bb.g ] ; 2 uses
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next118, %i.ba
  br i1 %i.bb, label %.lr.ph111, label %._crit_edge112

bb.i:                                             ; preds = %._crit_edge112, %bb.e
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge115.thread, label %bb.d

._crit_edge115:                                   ; preds = %_ZN20btAlignedObjectArrayIjE6resizeEiRKj.exit
  %.not.i.i.i69.not = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i69.not, label %_ZN20btAlignedObjectArrayIjED2Ev.exit72, label %._crit_edge115.thread

._crit_edge115.thread:                            ; preds = %bb.i, %._crit_edge115
  %.sroa.1080.1139 = phi ptr [ %i.s, %._crit_edge115 ], [ %.sroa.1080.1137, %bb.i ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.1080.1139)
          to label %_ZN20btAlignedObjectArrayIjED2Ev.exit72 unwind label %_ZN20btAlignedObjectArrayIjED2Ev.exit

_ZN20btAlignedObjectArrayIjED2Ev.exit72:          ; preds = %_ZN20btAlignedObjectArrayIjE6resizeEiRKj.exit.thread, %._crit_edge115, %._crit_edge115.thread
  %.not.i.i.i73.not = icmp eq ptr %.sroa.1096.2133, null
  br i1 %.not.i.i.i73.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN20btAlignedObjectArrayIjED2Ev.exit72
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.1096.2133)
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %_ZN20btAlignedObjectArrayIjED2Ev.exit72, %bb.j
  ret void

bb.k:                                             ; preds = %_ZN20btAlignedObjectArrayIjED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.1096.2133)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit78 unwind label %bb.l

_ZN20btAlignedObjectArrayIiED2Ev.exit78:          ; preds = %_ZN20btAlignedObjectArrayIjED2Ev.exit, %bb.k
  resume { ptr, i32 } %i.ad

bb.l:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #20
  unreachable
}

; Function Attrs: uwtable
define dso_local noundef i32 @_ZN11HullLibrary13ReleaseResultER10HullResult(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #4 align 2 !guid !172 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %.not.i.i = icmp ne ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !30
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.h, i1 false
  br i1 %or.cond.i, label %bb.c, label %_ZN20btAlignedObjectArrayI9btVector3E5clearEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.e)
  br label %_ZN20btAlignedObjectArrayI9btVector3E5clearEv.exit

_ZN20btAlignedObjectArrayI9btVector3E5clearEv.exit: ; preds = %bb.b, %bb.c
  store i8 1, ptr %i.f, align 8, !tbaa !25
  store ptr null, ptr %i.d, align 8, !tbaa !26
  store i32 0, ptr %i.a, align 4, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.i, align 8, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3E5clearEv.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !59
  %.not6 = icmp eq i32 %i.k, 0
  br i1 %.not6, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 0, ptr %i.l, align 4, !tbaa !70
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61   ; 2 uses
  %.not.i.i7 = icmp ne ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !range !30
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond.i8 = select i1 %.not.i.i7, i1 %i.q, i1 false
  br i1 %or.cond.i8, label %bb.f, label %_ZN20btAlignedObjectArrayIjE5clearEv.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.n)
  br label %_ZN20btAlignedObjectArrayIjE5clearEv.exit

_ZN20btAlignedObjectArrayIjE5clearEv.exit:        ; preds = %bb.e, %bb.f
  store i8 1, ptr %i.o, align 8, !tbaa !62
  store ptr null, ptr %i.m, align 8, !tbaa !61
  store i32 0, ptr %i.j, align 4, !tbaa !59
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 0, ptr %i.r, align 8, !tbaa !60
  br label %bb.g

bb.g:                                             ; preds = %_ZN20btAlignedObjectArrayIjE5clearEv.exit, %bb.d
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_Z7GetDistfffPKf(float noundef %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #9 !guid !173 {
bb.a:
  %i.a = load float, ptr %3, align 4, !tbaa !15
  %i.b = fsub float %0, %i.a                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !15
  %i.e = fsub float %1, %i.d                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !15
  %i.h = fsub float %2, %i.g                      ; 2 uses
  %i.i = fmul float %i.e, %i.e
  %i.j = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.i)
  %i.k = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.j)
  ret float %i.k
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 -7789089738966274913}
!9 = !{i64 -2679553419455028267}
!10 = !{i64 37169254013151934}
!11 = !{i64 -601265970184313443}
!12 = !{i64 5660331040221305710}
!13 = !{!5, !5, i64 0}
!14 = !{!"float", !5, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"branch_weights", i32 1, i32 1048575}
!17 = !{!"_ZTS9btVector3", !5, i64 0}
!18 = !{!"_ZTS7btPlane", !17, i64 0, !14, i64 16}
!19 = !{!18, !14, i64 16}
!20 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!21 = !{!"any pointer", !5, i64 0}
!22 = !{!"p1 _ZTS9btVector3", !21, i64 0}
!23 = !{!"bool", !5, i64 0}
!24 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !20, i64 0, !6, i64 4, !6, i64 8, !22, i64 16, !23, i64 24}
!25 = !{!24, !23, i64 24}
!26 = !{!24, !22, i64 16}
!27 = !{!24, !6, i64 4}
!28 = !{!24, !6, i64 8}
!29 = !{i64 0, i64 16, !13}
!30 = !{i8 0, i8 2}
!31 = !{}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = !{!"_ZTS18btAlignedAllocatorIP14btHullTriangleLj16EE"}
!36 = !{!"any p2 pointer", !21, i64 0}
!37 = !{!"p2 _ZTS14btHullTriangle", !36, i64 0}
!38 = !{!"_ZTS20btAlignedObjectArrayIP14btHullTriangleE", !35, i64 0, !6, i64 4, !6, i64 8, !37, i64 16, !23, i64 24}
!39 = !{!38, !37, i64 16}
!40 = !{!"p1 _ZTS14btHullTriangle", !21, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!"_ZTS4int3", !6, i64 0, !6, i64 4, !6, i64 8}
!43 = !{!"_ZTS14btHullTriangle", !42, i64 0, !42, i64 12, !6, i64 24, !6, i64 28, !14, i64 32}
!44 = !{!43, !6, i64 24}
!45 = !{!43, !6, i64 28}
!46 = !{!43, !14, i64 32}
!47 = !{!38, !6, i64 4}
!48 = !{!38, !6, i64 8}
!49 = !{!38, !23, i64 24}
!50 = !{!"_ZTS18btAlignedAllocatorIiLj16EE"}
!51 = !{!"p1 int", !21, i64 0}
!52 = !{!"_ZTS20btAlignedObjectArrayIiE", !50, i64 0, !6, i64 4, !6, i64 8, !51, i64 16, !23, i64 24}
!53 = !{!52, !51, i64 16}
!54 = !{!52, !23, i64 24}
!55 = !{!52, !6, i64 4}
!56 = !{!52, !6, i64 8}
!57 = !{!"_ZTS18btAlignedAllocatorIjLj16EE"}
!58 = !{!"_ZTS20btAlignedObjectArrayIjE", !57, i64 0, !6, i64 4, !6, i64 8, !51, i64 16, !23, i64 24}
!59 = !{!58, !6, i64 4}
!60 = !{!58, !6, i64 8}
!61 = !{!58, !51, i64 16}
!62 = !{!58, !23, i64 24}
!63 = !{!"_ZTS11PHullResult", !6, i64 0, !6, i64 4, !6, i64 8, !22, i64 16, !58, i64 24}
!64 = !{!63, !6, i64 4}
!65 = !{!63, !6, i64 8}
!66 = !{!63, !22, i64 16}
!67 = !{!63, !6, i64 0}
!68 = !{!"_ZTS10HullResult", !23, i64 0, !6, i64 4, !24, i64 8, !6, i64 40, !6, i64 44, !58, i64 48}
!69 = !{!68, !6, i64 4}
!70 = !{!68, !6, i64 44}
!71 = !{i64 8964551350026833393}
!72 = !{i64 3526771788387635035}
!73 = !{i64 -2271380940900235106}
!74 = !{i64 -8211754246792413508}
!75 = !{i64 2153255753404981041}
!76 = distinct !{!76, !32}
!77 = distinct !{!77, !32}
!78 = !{i64 2256370946076122909}
!79 = !{!"_ZTS18btAlignedAllocatorIN7ConvexH8HalfEdgeELj16EE"}
!80 = !{!"p1 _ZTSN7ConvexH8HalfEdgeE", !21, i64 0}
!81 = !{!"_ZTS20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE", !79, i64 0, !6, i64 4, !6, i64 8, !80, i64 16, !23, i64 24}
!82 = !{!81, !23, i64 24}
!83 = !{!81, !80, i64 16}
!84 = !{!81, !6, i64 4}
!85 = !{!81, !6, i64 8}
!86 = !{!"_ZTS18btAlignedAllocatorI7btPlaneLj16EE"}
!87 = !{!"p1 _ZTS7btPlane", !21, i64 0}
!88 = !{!"_ZTS20btAlignedObjectArrayI7btPlaneE", !86, i64 0, !6, i64 4, !6, i64 8, !87, i64 16, !23, i64 24}
!89 = !{!88, !23, i64 24}
!90 = !{!88, !87, i64 16}
!91 = !{!88, !6, i64 4}
!92 = !{!88, !6, i64 8}
!93 = !{i64 0, i64 16, !13, i64 16, i64 4, !15}
!94 = !{i64 1080103601501470593}
!95 = !{i64 -7338565718568173823}
!96 = distinct !{!96, !33, !34}
!97 = distinct !{!97, !34, !33}
!98 = !{i64 3359000155229274831}
!99 = !{i64 2774562394053577335}
!100 = !{i64 -4328393346911554473}
!101 = !{i64 -4436133804600370648}
!102 = !{i64 3557197669551807368}
!103 = !{i64 -4932117237043802427}
!104 = !{i64 5439473648244449513}
!105 = !{i64 2808789807998979900}
!106 = !{i64 6571303453219829459}
!107 = !{i64 -1794560331683675613}
!108 = !{i64 -6957115741271541346}
!109 = !{i64 -766703745448764497}
!110 = distinct !{!110, !33, !34}
!111 = distinct !{!111, !32}
!112 = distinct !{!112, !33}
!113 = !{i64 -9167086947016655057}
!114 = !{!42, !6, i64 0}
!115 = !{!42, !6, i64 4}
!116 = !{!42, !6, i64 8}
!117 = !{i64 5352066924232664060}
!118 = !{i64 3151220021995633880}
!119 = !{i64 -3712066417196534752}
!120 = distinct !{!120, !122}
!121 = !{i64 -6988222632419586099}
!122 = !{!"llvm.loop.peeled.count", i32 1}
!123 = distinct !{!123, !33, !34}
!124 = distinct !{!124, !32}
!125 = distinct !{!125, !33}
!126 = distinct !{!126, !33, !34}
!127 = distinct !{!127, !32}
!128 = distinct !{!128, !33}
!129 = distinct !{!129, !33, !34}
!130 = distinct !{!130, !32}
!131 = distinct !{!131, !33}
!132 = !{i64 -3640724666204973311}
!133 = distinct !{!133, !33, !34}
!134 = distinct !{!134, !32}
!135 = distinct !{!135, !33}
!136 = distinct !{!136, !33, !34}
!137 = distinct !{!137, !32}
!138 = distinct !{!138, !33}
!139 = distinct !{!139, !33, !34}
!140 = distinct !{!140, !32}
!141 = distinct !{!141, !33}
!142 = distinct !{!142, !33, !34}
!143 = distinct !{!143, !32}
!144 = distinct !{!144, !33}
!145 = distinct !{!145, !33, !34}
!146 = distinct !{!146, !32}
!147 = distinct !{!147, !33}
!148 = !{i64 3404896273332984566}
!149 = !{i64 8523780639381769333}
!150 = !{i64 1479313201502252576}
!151 = distinct !{!151, !33, !34}
!152 = distinct !{!152, !32}
!153 = distinct !{!153, !33}
!154 = distinct !{!154, !33, !34}
!155 = distinct !{!155, !32}
!156 = distinct !{!156, !33}
!157 = !{i64 -2533540337957360015}
!158 = !{!"_ZTS8HullDesc", !6, i64 0, !6, i64 4, !22, i64 8, !6, i64 16, !14, i64 20, !6, i64 24, !6, i64 28}
!159 = !{!158, !6, i64 4}
!160 = !{!158, !22, i64 8}
!161 = !{!158, !6, i64 16}
!162 = !{!158, !14, i64 20}
!163 = !{!158, !6, i64 24}
!164 = !{!158, !6, i64 0}
!165 = !{!68, !23, i64 0}
!166 = !{!68, !6, i64 40}
!167 = distinct !{!167, !33, !34}
!168 = distinct !{!168, !32}
!169 = distinct !{!169, !33}
!170 = !{i64 -1612953614127440780}
!171 = !{i64 -699150764083932220}
!172 = !{i64 2404475434468888506}
!173 = !{i64 3637275566337294840}
end_hunk_0
