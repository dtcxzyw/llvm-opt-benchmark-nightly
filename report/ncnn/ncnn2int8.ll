Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/ncnn2int8?download=true
inline.NumInlined: 1198
inline.NumDeleted: 366
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN11NetQuantize13quantize_gemmEv:bb.a
  store i64 %i.dc, ptr %i.cv, align 8, !tbaa !95
  %i.dd = load i32, ptr %i.h, align 8, !tbaa !96
  store i32 %i.dd, ptr %i.cw, align 8, !tbaa !96
  %i.de = load ptr, ptr %i.i, align 16, !tbaa !80
  %i.df = getelementptr inbounds nuw i8, ptr %i.ay, i64 320
  store ptr %i.de, ptr %i.df, align 8, !tbaa !80
  %i.dg = load <4 x i32>, ptr %i.j, align 8, !tbaa !83
  store <4 x i32> %i.dg, ptr %i.cx, align 8, !tbaa !83
  %i.dh = load i32, ptr %i.k, align 8, !tbaa !90
  store i32 %i.dh, ptr %i.cy, align 8, !tbaa !90
  %i.di = load i64, ptr %i.l, align 16, !tbaa !78
  store i64 %i.di, ptr %i.cz, align 8, !tbaa !78
  br label %_ZN4ncnn3MataSERKS0_.exit140

.lr.ph:                                           ; preds = %.lr.ph485.split, %._crit_edge
  %indvars.iv516 = phi i64 [ 0, %.lr.ph485.split ], [ %indvars.iv.next517, %._crit_edge ] ; 3 uses
  %i.dj = mul nuw nsw i64 %indvars.iv516, %i.cd
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.dj ; 6 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv516 ; 6 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %found.conflict657
  br i1 %brmerge, label %scalar.ph652.preheader, label %vector.body660

vector.body660:                                   ; preds = %.lr.ph, %vector.body660
  %index661 = phi i64 [ %index.next664, %vector.body660 ], [ 0, %.lr.ph ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index661 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load662 = load <4 x float>, ptr %i.dl, align 4, !tbaa !92, !alias.scope !856
  %wide.load663 = load <4 x float>, ptr %i.dm, align 4, !tbaa !92, !alias.scope !856
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %index661 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <4 x float> %wide.load662, ptr %i.dn, align 4, !tbaa !92, !alias.scope !857, !noalias !856
  store <4 x float> %wide.load663, ptr %i.do, align 4, !tbaa !92, !alias.scope !857, !noalias !856
  %index.next664 = add nuw i64 %index661, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next664, %n.vec659
  br i1 %i.dp, label %middle.block665, label %vector.body660, !llvm.loop !841

middle.block665:                                  ; preds = %vector.body660
  br i1 %cmp.n666, label %._crit_edge, label %scalar.ph652.preheader

scalar.ph652.preheader:                           ; preds = %.lr.ph, %middle.block665
  %indvars.iv.ph = phi i64 [ %n.vec659, %middle.block665 ], [ 0, %.lr.ph ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph652.prol.loopexit, label %scalar.ph652.prol

scalar.ph652.prol:                                ; preds = %scalar.ph652.preheader, %scalar.ph652.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph652.prol ], [ %indvars.iv.ph, %scalar.ph652.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph652.prol ], [ 0, %scalar.ph652.preheader ]
  %i.dq = mul nuw nsw i64 %indvars.iv.prol, %i.cc
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.dq
  %i.dr = load float, ptr %gep.prol, align 4, !tbaa !92
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.prol
  store float %i.dr, ptr %i.ds, align 4, !tbaa !92
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph652.prol.loopexit, label %scalar.ph652.prol, !llvm.loop !842

scalar.ph652.prol.loopexit:                       ; preds = %scalar.ph652.prol, %scalar.ph652.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph652.preheader ], [ %indvars.iv.next.prol, %scalar.ph652.prol ]
  %i.dt = sub nsw i64 %indvars.iv.ph, %i.cd
  %i.du = icmp ugt i64 %i.dt, -4
  br i1 %i.du, label %._crit_edge, label %scalar.ph652

._crit_edge:                                      ; preds = %scalar.ph652.prol.loopexit, %scalar.ph652, %middle.block665
  %indvars.iv.next517 = add nuw nsw i64 %indvars.iv516, 1 ; 2 uses
  %exitcond520.not = icmp eq i64 %indvars.iv.next517, %i.cc
  br i1 %exitcond520.not, label %._crit_edge486.split, label %.lr.ph, !llvm.loop !843

scalar.ph652:                                     ; preds = %scalar.ph652.prol.loopexit, %scalar.ph652
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph652 ], [ %indvars.iv.unr, %scalar.ph652.prol.loopexit ] ; 6 uses
  %i.dv = mul nuw nsw i64 %indvars.iv, %i.cc
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.dv
  %i.dw = load float, ptr %gep, align 4, !tbaa !92
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv
  store float %i.dw, ptr %i.dx, align 4, !tbaa !92
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dy = mul nuw nsw i64 %indvars.iv.next, %i.cc
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.dy
  %i.dz = load float, ptr %gep.1, align 4, !tbaa !92
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.next
  store float %i.dz, ptr %i.ea, align 4, !tbaa !92
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.eb = mul nuw nsw i64 %indvars.iv.next.1, %i.cc
  %gep.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.eb
  %i.ec = load float, ptr %gep.2, align 4, !tbaa !92
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.next.1
  store float %i.ec, ptr %i.ed, align 4, !tbaa !92
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ee = mul nuw nsw i64 %indvars.iv.next.2, %i.cc
  %gep.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.ee
  %i.ef = load float, ptr %gep.3, align 4, !tbaa !92
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.next.2
  store float %i.ef, ptr %i.eg, align 4, !tbaa !92
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.cd
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph652, !llvm.loop !844

_ZN4ncnn3MataSERKS0_.exit140:                     ; preds = %.noexc139, %._crit_edge486.split
  %i.eh = phi ptr [ %i.da, %.noexc139 ], [ %.pre, %._crit_edge486.split ] ; 2 uses
  store i32 0, ptr %i.bn, align 8, !tbaa !145
  %.not.i155 = icmp eq ptr %i.eh, null
  br i1 %.not.i155, label %_ZN4ncnn3MatD2Ev.exit131, label %bb.m

bb.m:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit140
  %i.ei = atomicrmw add ptr %i.eh, i32 -1 acq_rel, align 4
  %i.ej = icmp eq i32 %i.ei, 1
  br i1 %i.ej, label %bb.n, label %_ZN4ncnn3MatD2Ev.exit131

bb.n:                                             ; preds = %bb.m
  %i.ek = load ptr, ptr %i.i, align 16, !tbaa !80 ; 3 uses
  %.not3.i156 = icmp eq ptr %i.ek, null
  %i.el = load ptr, ptr %1, align 16, !tbaa !81   ; 3 uses
  br i1 %.not3.i156, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !30
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8
  invoke void %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef %i.el)
          to label %_ZN4ncnn3MatD2Ev.exit131 unwind label %bb.r, !inline_history !1

bb.p:                                             ; preds = %bb.n
  %.not.i260 = icmp eq ptr %i.el, null
  br i1 %.not.i260, label %_ZN4ncnn3MatD2Ev.exit131, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef nonnull %i.el) #26
  br label %_ZN4ncnn3MatD2Ev.exit131

bb.r:                                             ; preds = %bb.o
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit131:                         ; preds = %bb.m, %_ZN4ncnn3MataSERKS0_.exit140, %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.z

bb.s:                                             ; preds = %bb.j
  %i.er = landingpad { ptr, i32 }
          cleanup
  %i.es = load ptr, ptr %i.f, align 8, !tbaa !79  ; 2 uses
  %.not.i159 = icmp eq ptr %i.es, null
  br i1 %.not.i159, label %_ZN4ncnn3MatD2Ev.exit130, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.et = atomicrmw add ptr %i.es, i32 -1 acq_rel, align 4
  %i.eu = icmp eq i32 %i.et, 1
  br i1 %i.eu, label %bb.u, label %_ZN4ncnn3MatD2Ev.exit130

bb.u:                                             ; preds = %bb.t
  %i.ev = load ptr, ptr %i.i, align 16, !tbaa !80 ; 3 uses
  %.not3.i160 = icmp eq ptr %i.ev, null
  %i.ew = load ptr, ptr %1, align 16, !tbaa !81   ; 3 uses
  br i1 %.not3.i160, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ex = load ptr, ptr %i.ev, align 8, !tbaa !30
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8
  invoke void %i.ez(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef %i.ew)
          to label %_ZN4ncnn3MatD2Ev.exit130 unwind label %bb.y, !inline_history !1

bb.w:                                             ; preds = %bb.u
  %.not.i258 = icmp eq ptr %i.ew, null
  br i1 %.not.i258, label %_ZN4ncnn3MatD2Ev.exit130, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @free(ptr noundef nonnull %i.ew) #26
  br label %_ZN4ncnn3MatD2Ev.exit130

bb.y:                                             ; preds = %bb.v
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit130:                         ; preds = %bb.t, %bb.s, %bb.v, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.fg

bb.z:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit131, %bb.c
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ay, i64 504 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ay, i64 236 ; 3 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !149
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.fc, i32 noundef %i.fe, i64 noundef 4, ptr noundef null)
  %i.ff = load i32, ptr %i.fd, align 4, !tbaa !149 ; 3 uses
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.lr.ph494, label %._crit_edge495

.lr.ph494:                                        ; preds = %bb.z
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ay, i64 288
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !81
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ay, i64 244
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !151 ; 5 uses
  %i.fl = icmp sgt i32 %i.fk, 0
  %i.fm = load ptr, ptr %i.fc, align 8, !tbaa !81
  %10 = zext nneg i32 %i.fk to i64
  %wide.trip.count529 = zext nneg i32 %i.ff to i64
  %wide.trip.count524 = zext i32 %i.fk to i64     ; 2 uses
  %xtraiter669 = and i64 %wide.trip.count524, 1
  %i.fn = icmp eq i32 %i.fk, 1
  %unroll_iter = and i64 %wide.trip.count524, 2147483646
  %lcmp.mod670.not = icmp eq i64 %xtraiter669, 0
  %lcmp.mod672 = trunc i32 %i.fk to i1
  br label %bb.aa

._crit_edge495:                                   ; preds = %._crit_edge491, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ay, i64 288 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ay, i64 244 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !151
  call void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.fo, i32 noundef %i.fq, i32 noundef %i.ff, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i64 0, ptr %i.p, align 8, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %3, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.n, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 64, i1 false), !tbaa.struct !187
  %i.fr = load ptr, ptr %i.r, align 8, !tbaa !80
  store ptr %i.fr, ptr %i.s, align 8, !tbaa !188
  store i8 0, ptr %i.t, align 1, !tbaa !189
  invoke void @_ZN4ncnn16quantize_to_int8ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.fc, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.ab unwind label %bb.ac

bb.aa:                                            ; preds = %.lr.ph494, %._crit_edge491
  %indvars.iv526 = phi i64 [ 0, %.lr.ph494 ], [ %indvars.iv.next527, %._crit_edge491 ] ; 3 uses
  %i.fs = mul nuw nsw i64 %indvars.iv526, %10
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fs ; 3 uses
  br i1 %i.fl, label %.lr.ph490.preheader, label %._crit_edge491

.lr.ph490.preheader:                              ; preds = %bb.aa
  br i1 %i.fn, label %.lr.ph490.epil.preheader, label %.lr.ph490

._crit_edge491.loopexit.unr-lcssa:                ; preds = %.lr.ph490
  br i1 %lcmp.mod670.not, label %._crit_edge491, label %.lr.ph490.epil.preheader

.lr.ph490.epil.preheader:                         ; preds = %._crit_edge491.loopexit.unr-lcssa, %.lr.ph490.preheader
  %indvars.iv521.epil.init = phi i64 [ 0, %.lr.ph490.preheader ], [ %indvars.iv.next522.1, %._crit_edge491.loopexit.unr-lcssa ]
  %.0279487.epil.init = phi float [ 0.000000e+00, %.lr.ph490.preheader ], [ %.sroa.speculated274.1, %._crit_edge491.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod672)
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv521.epil.init
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !92
  %i.fw = call noundef float @llvm.fabs.f32(float %i.fv) ; 2 uses
  %i.fx = fcmp olt float %.0279487.epil.init, %i.fw
  %.sroa.speculated274.epil = select i1 %i.fx, float %i.fw, float %.0279487.epil.init
  br label %._crit_edge491

._crit_edge491:                                   ; preds = %.lr.ph490.epil.preheader, %._crit_edge491.loopexit.unr-lcssa, %bb.aa
  %.0279.lcssa = phi float [ 0.000000e+00, %bb.aa ], [ %.sroa.speculated274.1, %._crit_edge491.loopexit.unr-lcssa ], [ %.sroa.speculated274.epil, %.lr.ph490.epil.preheader ] ; 2 uses
  %i.fy = fcmp oeq float %.0279.lcssa, 0.000000e+00
  %i.fz = fdiv float 1.270000e+02, %.0279.lcssa
  %i.ga = select i1 %i.fy, float 1.000000e+00, float %i.fz
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv526
  store float %i.ga, ptr %i.gb, align 4, !tbaa !92
  %indvars.iv.next527 = add nuw nsw i64 %indvars.iv526, 1 ; 2 uses
  %exitcond530.not = icmp eq i64 %indvars.iv.next527, %wide.trip.count529
  br i1 %exitcond530.not, label %._crit_edge495, label %bb.aa, !llvm.loop !845

.lr.ph490:                                        ; preds = %.lr.ph490.preheader, %.lr.ph490
  %indvars.iv521 = phi i64 [ %indvars.iv.next522.1, %.lr.ph490 ], [ 0, %.lr.ph490.preheader ] ; 3 uses
  %.0279487 = phi float [ %.sroa.speculated274.1, %.lr.ph490 ], [ 0.000000e+00, %.lr.ph490.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph490 ], [ 0, %.lr.ph490.preheader ]
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv521
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !92
  %i.ge = call noundef float @llvm.fabs.f32(float %i.gd) ; 2 uses
  %i.gf = fcmp olt float %.0279487, %i.ge
  %.sroa.speculated274 = select i1 %i.gf, float %i.ge, float %.0279487 ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv521
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !92
  %i.gj = call noundef float @llvm.fabs.f32(float %i.gi) ; 2 uses
  %i.gk = fcmp olt float %.sroa.speculated274, %i.gj
  %.sroa.speculated274.1 = select i1 %i.gk, float %i.gj, float %.sroa.speculated274 ; 3 uses
  %indvars.iv.next522.1 = add nuw nsw i64 %indvars.iv521, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge491.loopexit.unr-lcssa, label %.lr.ph490, !llvm.loop !846

bb.ab:                                            ; preds = %._crit_edge495
  %i.gl = load ptr, ptr %3, align 8, !tbaa !81
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit270

_ZNK4ncnn3Mat5emptyEv.exit270:                    ; preds = %bb.ab
  %i.gn = load i64, ptr %i.p, align 8, !tbaa !78
  %i.go = load i32, ptr %i.o, align 8, !tbaa !90
  %i.gp = sext i32 %i.go to i64
  %i.gq = mul i64 %i.gn, %i.gp
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %.critedge, label %bb.ad

bb.ac:                                            ; preds = %._crit_edge495
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.ad:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit270
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.gt = load i32, ptr %i.fp, align 4, !tbaa !151
  %i.gu = load i32, ptr %i.fd, align 4, !tbaa !149
  %i.gv = mul nsw i32 %i.gu, %i.gt
  invoke void @_ZNK4ncnn3Mat7reshapeEiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %i.gv, ptr noundef null)
          to label %bb.ae unwind label %bb.bf

bb.ae:                                            ; preds = %bb.ad
  %i.gw = icmp eq ptr %i.fo, %5
  %.pre546 = load ptr, ptr %i.u, align 8, !tbaa !79 ; 3 uses
  br i1 %i.gw, label %_ZN4ncnn3MataSERKS0_.exit137, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.i135 = icmp eq ptr %.pre546, null
  br i1 %.not.i135, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gx = atomicrmw add ptr %.pre546, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ay, i64 296
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !79 ; 2 uses
  %.not.i143 = icmp eq ptr %i.gz, null
  br i1 %.not.i143, label %.noexc136, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ha = atomicrmw add ptr %i.gz, i32 -1 acq_rel, align 4
  %i.hb = icmp eq i32 %i.ha, 1
  br i1 %i.hb, label %bb.aj, label %.noexc136

bb.aj:                                            ; preds = %bb.ai
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ay, i64 320
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !80 ; 3 uses
  %.not3.i144 = icmp eq ptr %i.hd, null
  %i.he = load ptr, ptr %i.fo, align 8, !tbaa !81 ; 3 uses
  br i1 %.not3.i144, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hf = load ptr, ptr %i.hd, align 8, !tbaa !30
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8
  invoke void %i.hh(ptr noundef nonnull align 8 dereferenceable(8) %i.hd, ptr noundef %i.he)
          to label %.noexc136 unwind label %bb.bg, !inline_history !1

bb.al:                                            ; preds = %bb.aj
  %.not.i266 = icmp eq ptr %i.he, null
  br i1 %.not.i266, label %.noexc136, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @free(ptr noundef nonnull %i.he) #26
  br label %.noexc136

.noexc136:                                        ; preds = %bb.ai, %bb.ah, %bb.ak, %bb.al, %bb.am
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ay, i64 304
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ay, i64 312
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ay, i64 328
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ay, i64 344
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ay, i64 352
  %i.hn = load ptr, ptr %i.u, align 8, !tbaa !79
  %i.ho = load <2 x ptr>, ptr %5, align 16, !tbaa !94
  store <2 x ptr> %i.ho, ptr %i.fo, align 8, !tbaa !94
  %i.hp = load i64, ptr %i.v, align 16, !tbaa !95
  store i64 %i.hp, ptr %i.hi, align 8, !tbaa !95
  %i.hq = load i32, ptr %i.w, align 8, !tbaa !96
  store i32 %i.hq, ptr %i.hj, align 8, !tbaa !96
  %i.hr = load ptr, ptr %i.x, align 16, !tbaa !80
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ay, i64 320
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !80
  %i.ht = load <4 x i32>, ptr %i.y, align 8, !tbaa !83
  store <4 x i32> %i.ht, ptr %i.hk, align 8, !tbaa !83
  %i.hu = load i32, ptr %i.z, align 8, !tbaa !90
  store i32 %i.hu, ptr %i.hl, align 8, !tbaa !90
  %i.hv = load i64, ptr %i.aa, align 16, !tbaa !78
  store i64 %i.hv, ptr %i.hm, align 8, !tbaa !78
  br label %_ZN4ncnn3MataSERKS0_.exit137

_ZN4ncnn3MataSERKS0_.exit137:                     ; preds = %.noexc136, %bb.ae
  %i.hw = phi ptr [ %i.hn, %.noexc136 ], [ %.pre546, %bb.ae ] ; 2 uses
  %.not.i163 = icmp eq ptr %i.hw, null
  br i1 %.not.i163, label %_ZN4ncnn3MatD2Ev.exit129, label %bb.an

bb.an:                                            ; preds = %_ZN4ncnn3MataSERKS0_.exit137
  %i.hx = atomicrmw add ptr %i.hw, i32 -1 acq_rel, align 4
  %i.hy = icmp eq i32 %i.hx, 1
  br i1 %i.hy, label %bb.ao, label %_ZN4ncnn3MatD2Ev.exit129

bb.ao:                                            ; preds = %bb.an
  %i.hz = load ptr, ptr %i.x, align 16, !tbaa !80 ; 3 uses
  %.not3.i164 = icmp eq ptr %i.hz, null
  %i.ia = load ptr, ptr %5, align 16, !tbaa !81   ; 3 uses
  br i1 %.not3.i164, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ib = load ptr, ptr %i.hz, align 8, !tbaa !30
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.id = load ptr, ptr %i.ic, align 8
  invoke void %i.id(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, ptr noundef %i.ia)
          to label %_ZN4ncnn3MatD2Ev.exit129 unwind label %bb.as, !inline_history !1

bb.aq:                                            ; preds = %bb.ao
  %.not.i256 = icmp eq ptr %i.ia, null
  br i1 %.not.i256, label %_ZN4ncnn3MatD2Ev.exit129, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @free(ptr noundef nonnull %i.ia) #26
  br label %_ZN4ncnn3MatD2Ev.exit129

bb.as:                                            ; preds = %bb.ap
  %i.ie = landingpad { ptr, i32 }
          catch ptr null
  %i.if = extractvalue { ptr, i32 } %i.ie, 0
  call void @__clang_call_terminate(ptr %i.if) #31
  unreachable

_ZN4ncnn3MatD2Ev.exit129:                         ; preds = %bb.an, %_ZN4ncnn3MataSERKS0_.exit137, %bb.ap, %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ig = load ptr, ptr %i.m, align 8, !tbaa !79  ; 2 uses
  %.not.i167 = icmp eq ptr %i.ig, null
  br i1 %.not.i167, label %_ZN4ncnn3MatD2Ev.exit128, label %bb.at

bb.at:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit129
  %i.ih = atomicrmw add ptr %i.ig, i32 -1 acq_rel, align 4
  %i.ii = icmp eq i32 %i.ih, 1
  br i1 %i.ii, label %bb.au, label %_ZN4ncnn3MatD2Ev.exit128

bb.au:                                            ; preds = %bb.at
  %i.ij = load ptr, ptr %i.n, align 8, !tbaa !80  ; 3 uses
  %.not3.i168 = icmp eq ptr %i.ij, null
  %i.ik = load ptr, ptr %3, align 8, !tbaa !81    ; 3 uses
end_hunk_0
