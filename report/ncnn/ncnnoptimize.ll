Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/ncnnoptimize?download=true
inline.NumInlined: 1639
inline.NumDeleted: 315
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN11NetOptimize26fuse_convolution_batchnormEv:bb.a
  store float %i.di, ptr %i.dj, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond222.not, label %._crit_edge198, label %bb.f, !llvm.loop !825

bb.g:                                             ; preds = %._crit_edge198
  store i32 1, ptr %i.cp, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 0, ptr %i.p, align 16, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %1, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.m, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.bv, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit unwind label %bb.v

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit:            ; preds = %bb.g
  %i.dk = getelementptr inbounds nuw i8, ptr %i.u, i64 424 ; 4 uses
  %i.dl = icmp eq ptr %i.dk, %1
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !77  ; 3 uses
  br i1 %i.dl, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dm = atomicrmw add ptr %.pre, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dn = getelementptr inbounds nuw i8, ptr %i.u, i64 432
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !77 ; 2 uses
  %.not.i93 = icmp eq ptr %i.do, null
  br i1 %.not.i93, label %.noexc, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dp = atomicrmw add ptr %i.do, i32 -1 acq_rel, align 4
  %i.dq = icmp eq i32 %i.dp, 1
  br i1 %i.dq, label %bb.l, label %.noexc

bb.l:                                             ; preds = %bb.k
  %i.dr = getelementptr inbounds nuw i8, ptr %i.u, i64 456
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !78 ; 3 uses
  %.not3.i = icmp eq ptr %i.ds, null
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !28
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  invoke void %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef %i.dt)
          to label %.noexc unwind label %bb.w, !inline_history !1

bb.n:                                             ; preds = %bb.l
  %.not.i106 = icmp eq ptr %i.dt, null
  br i1 %.not.i106, label %.noexc, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.dt) #25
  br label %.noexc

.noexc:                                           ; preds = %bb.k, %bb.j, %bb.m, %bb.n, %bb.o
  %i.dx = getelementptr inbounds nuw i8, ptr %i.u, i64 440
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 448
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 464
  %i.ea = getelementptr inbounds nuw i8, ptr %i.u, i64 480
  %i.eb = getelementptr inbounds nuw i8, ptr %i.u, i64 488
  %i.ec = load ptr, ptr %i.j, align 8, !tbaa !77
  %i.ed = load <2 x ptr>, ptr %1, align 16, !tbaa !92
  store <2 x ptr> %i.ed, ptr %i.dk, align 8, !tbaa !92
  %i.ee = load i64, ptr %i.k, align 16, !tbaa !93
  store i64 %i.ee, ptr %i.dx, align 8, !tbaa !93
  %i.ef = load i32, ptr %i.l, align 8, !tbaa !94
  store i32 %i.ef, ptr %i.dy, align 8, !tbaa !94
  %i.eg = load ptr, ptr %i.m, align 16, !tbaa !78
  %i.eh = getelementptr inbounds nuw i8, ptr %i.u, i64 456
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !78
  %i.ei = load <4 x i32>, ptr %i.n, align 8, !tbaa !81
  store <4 x i32> %i.ei, ptr %i.dz, align 8, !tbaa !81
  %i.ej = load i32, ptr %i.o, align 8, !tbaa !88
  store i32 %i.ej, ptr %i.ea, align 8, !tbaa !88
  %i.ek = load i64, ptr %i.p, align 16, !tbaa !76
  store i64 %i.ek, ptr %i.eb, align 8, !tbaa !76
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %.noexc, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %i.el = phi ptr [ %i.ec, %.noexc ], [ %.pre, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit ] ; 2 uses
  %.not.i95 = icmp eq ptr %i.el, null
  br i1 %.not.i95, label %_ZN4ncnn3MatD2Ev.exit92, label %bb.p

bb.p:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit
  %i.em = atomicrmw add ptr %i.el, i32 -1 acq_rel, align 4
  %i.en = icmp eq i32 %i.em, 1
  br i1 %i.en, label %bb.q, label %_ZN4ncnn3MatD2Ev.exit92

bb.q:                                             ; preds = %bb.p
  %i.eo = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i96 = icmp eq ptr %i.eo, null
  %i.ep = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i96, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !28
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  invoke void %i.es(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef %i.ep)
          to label %_ZN4ncnn3MatD2Ev.exit92 unwind label %bb.u, !inline_history !1

bb.s:                                             ; preds = %bb.q
  %.not.i104 = icmp eq ptr %i.ep, null
  br i1 %.not.i104, label %_ZN4ncnn3MatD2Ev.exit92, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.ep) #25
  br label %_ZN4ncnn3MatD2Ev.exit92

bb.u:                                             ; preds = %bb.r
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit92:                          ; preds = %bb.p, %_ZN4ncnn3MataSERKS0_.exit, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.ev = getelementptr inbounds nuw i8, ptr %i.u, i64 488
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !76
  %i.ex = getelementptr inbounds nuw i8, ptr %i.u, i64 480
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !88
  %i.ez = trunc i64 %i.ew to i32
  %i.fa = mul i32 %i.ey, %i.ez                    ; 2 uses
  %i.fb = load ptr, ptr %i.dk, align 8, !tbaa !79 ; 3 uses
  %i.fc = icmp sgt i32 %i.fa, 0
  br i1 %i.fc, label %.lr.ph201.preheader, label %.lr.ph207

.lr.ph201.preheader:                              ; preds = %_ZN4ncnn3MatD2Ev.exit92
  %i.fd = zext nneg i32 %i.fa to i64
  %i.fe = shl nuw nsw i64 %i.fd, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fb, i8 0, i64 %i.fe, i1 false), !tbaa !90
  br label %.lr.ph207

bb.v:                                             ; preds = %bb.g
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit

bb.w:                                             ; preds = %bb.m
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.fh = load ptr, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %.not.i99 = icmp eq ptr %i.fh, null
  br i1 %.not.i99, label %_ZN4ncnn3MatD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fi = atomicrmw add ptr %i.fh, i32 -1 acq_rel, align 4
  %i.fj = icmp eq i32 %i.fi, 1
  br i1 %i.fj, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.fk = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i100 = icmp eq ptr %i.fk, null
  %i.fl = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i100, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fm = load ptr, ptr %i.fk, align 8, !tbaa !28
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8
  invoke void %i.fo(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef %i.fl)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ac, !inline_history !1

bb.aa:                                            ; preds = %bb.y
  %.not.i103 = icmp eq ptr %i.fl, null
  br i1 %.not.i103, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.fl) #25
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ac:                                            ; preds = %bb.z
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  call void @__clang_call_terminate(ptr %i.fq) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.w, %bb.x, %bb.v
  %.pn = phi { ptr, i32 } [ %i.ff, %bb.v ], [ %i.fg, %bb.x ], [ %i.fg, %bb.w ], [ %i.fg, %bb.z ], [ %i.fg, %bb.aa ], [ %i.fg, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.not.i.i.i124 = icmp eq ptr %.sroa.0128.0258, null
  br i1 %.not.i.i.i124, label %_ZNSt6vectorIfSaIfEED2Ev.exit125, label %bb.ae

.lr.ph207:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit92, %.lr.ph201.preheader, %._crit_edge198._ZN4ncnn3Mat4fillEf.exit_crit_edge
  %i.fr = phi ptr [ %.pre235, %._crit_edge198._ZN4ncnn3Mat4fillEf.exit_crit_edge ], [ %i.fb, %.lr.ph201.preheader ], [ %i.fb, %_ZN4ncnn3MatD2Ev.exit92 ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.u, i64 260
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !143
  %i.fu = sdiv i32 %i.ft, %i.bv                   ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.u, i64 352
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !79 ; 3 uses
  %i.fx = icmp sgt i32 %i.fu, 0
  %2 = zext nneg i32 %i.fu to i64
  %wide.trip.count232 = zext nneg i32 %i.bv to i64 ; 3 uses
  %wide.trip.count226 = zext i32 %i.fu to i64     ; 6 uses
  %i.fy = shl nuw nsw i64 %wide.trip.count232, 2
  %scevgep = getelementptr i8, ptr %.sroa.0128.0258, i64 %i.fy
  %i.fz = shl nuw nsw i64 %wide.trip.count232, 2
  %i.ga = mul i64 %i.fz, %wide.trip.count226
  %scevgep274 = getelementptr i8, ptr %i.fw, i64 %i.ga
  %min.iters.check = icmp ult i32 %i.fu, 8
  %bound0 = icmp ult ptr %i.fw, %scevgep
  %bound1 = icmp ult ptr %.sroa.0128.0258, %scevgep274
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count226, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count226
  %xtraiter = and i64 %wide.trip.count226, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.ad

_ZNSt6vectorIfSaIfEED2Ev.exit123:                 ; preds = %._crit_edge205
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0128.0258) #26
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0134.0144256) #26
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bn, i64 136
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !80
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !81 ; 2 uses
  %i.ge = load ptr, ptr %i.ai, align 8, !tbaa !80
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !81
  %i.gf = trunc i64 %.077209 to i32
  %i.gg = load ptr, ptr %i.q, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.gh = sext i32 %i.gd to i64
  %i.gi = load ptr, ptr %i.gg, align 8, !tbaa !51
  %i.gj = getelementptr inbounds nuw [112 x i8], ptr %i.gi, i64 %i.gh
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  store i32 %i.gf, ptr %i.gk, align 8, !tbaa !118
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !58
  %i.go = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.gl, i64 noundef 0, i64 noundef %i.gn, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.ad:                                            ; preds = %.lr.ph207, %._crit_edge205
  %indvars.iv228 = phi i64 [ 0, %.lr.ph207 ], [ %indvars.iv.next229, %._crit_edge205 ] ; 6 uses
  %i.gp = mul nuw nsw i64 %indvars.iv228, %2
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.gp ; 6 uses
  br i1 %i.fx, label %.lr.ph204, label %._crit_edge205

.lr.ph204:                                        ; preds = %bb.ad
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0128.0258, i64 %indvars.iv228 ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph204
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !90, !alias.scope !834
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gs, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %index ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.gt, align 4, !tbaa !90, !alias.scope !835, !noalias !834
  %wide.load275 = load <4 x float>, ptr %i.gu, align 4, !tbaa !90, !alias.scope !835, !noalias !834
  %i.gv = fmul <4 x float> %broadcast.splat, %wide.load
  %i.gw = fmul <4 x float> %broadcast.splat, %wide.load275
  store <4 x float> %i.gv, ptr %i.gt, align 4, !tbaa !90, !alias.scope !835, !noalias !834
  store <4 x float> %i.gw, ptr %i.gu, align 4, !tbaa !90, !alias.scope !835, !noalias !834
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gx = icmp eq i64 %index.next, %n.vec
  br i1 %i.gx, label %middle.block, label %vector.body, !llvm.loop !829

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge205, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph204, %middle.block
  %indvars.iv223.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph204 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv223.prol = phi i64 [ %indvars.iv.next224.prol, %scalar.ph.prol ], [ %indvars.iv223.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gy = load float, ptr %i.gr, align 4, !tbaa !90
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv223.prol ; 2 uses
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !90
  %i.hb = fmul float %i.gy, %i.ha
  store float %i.hb, ptr %i.gz, align 4, !tbaa !90
  %indvars.iv.next224.prol = add nuw nsw i64 %indvars.iv223.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !830

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv223.unr = phi i64 [ %indvars.iv223.ph, %scalar.ph.preheader ], [ %indvars.iv.next224.prol, %scalar.ph.prol ]
  %i.hc = sub nsw i64 %indvars.iv223.ph, %wide.trip.count226
  %i.hd = icmp ugt i64 %i.hc, -4
  br i1 %i.hd, label %._crit_edge205, label %scalar.ph

._crit_edge205:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv228 ; 2 uses
  %i.hf = load float, ptr %i.he, align 4, !tbaa !90
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0128.0258, i64 %indvars.iv228
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !90
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0134.0144256, i64 %indvars.iv228
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !90
  %i.hk = call float @llvm.fmuladd.f32(float %i.hf, float %i.hh, float %i.hj)
  store float %i.hk, ptr %i.he, align 4, !tbaa !90
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond233.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count232
  br i1 %exitcond233.not, label %_ZNSt6vectorIfSaIfEED2Ev.exit123, label %bb.ad, !llvm.loop !831

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv223 = phi i64 [ %indvars.iv.next224.3, %scalar.ph ], [ %indvars.iv223.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.hl = load float, ptr %i.gr, align 4, !tbaa !90
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv223 ; 2 uses
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !90
  %i.ho = fmul float %i.hl, %i.hn
  store float %i.ho, ptr %i.hm, align 4, !tbaa !90
  %i.hp = load float, ptr %i.gr, align 4, !tbaa !90
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv223
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 4 ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !90
  %i.ht = fmul float %i.hp, %i.hs
  store float %i.ht, ptr %i.hr, align 4, !tbaa !90
  %i.hu = load float, ptr %i.gr, align 4, !tbaa !90
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv223
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !90
  %i.hy = fmul float %i.hu, %i.hx
  store float %i.hy, ptr %i.hw, align 4, !tbaa !90
  %i.hz = load float, ptr %i.gr, align 4, !tbaa !90
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv223
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 12 ; 2 uses
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !90
  %i.id = fmul float %i.hz, %i.ic
  store float %i.id, ptr %i.ib, align 4, !tbaa !90
  %indvars.iv.next224.3 = add nuw nsw i64 %indvars.iv223, 4 ; 2 uses
  %exitcond227.not.3 = icmp eq i64 %indvars.iv.next224.3, %wide.trip.count226
  br i1 %exitcond227.not.3, label %._crit_edge205, label %scalar.ph, !llvm.loop !832

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread, %bb.b, %_ZNSt6vectorIfSaIfEED2Ev.exit123, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ie = add nuw i64 %.077209, 1                 ; 2 uses
  %exitcond234.not = icmp eq i64 %i.ie, %i.i
  br i1 %exitcond234.not, label %._crit_edge212, label %bb.b, !llvm.loop !833

bb.ae:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0128.0258) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit125

_ZNSt6vectorIfSaIfEED2Ev.exit125:                 ; preds = %bb.ae, %_ZN4ncnn3MatD2Ev.exit
  %.not.i.i.i126 = icmp eq ptr %.sroa.0134.0144256, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIfSaIfEED2Ev.exit127, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit125
  %.pn88.pn152 = phi { ptr, i32 } [ %i.cs, %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  %.sroa.0134.0142151 = phi ptr [ %i.cb, %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ], [ %.sroa.0134.0144256, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0134.0142151) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit127

_ZNSt6vectorIfSaIfEED2Ev.exit127:                 ; preds = %bb.af, %_ZNSt6vectorIfSaIfEED2Ev.exit125
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn88.pn152, %bb.af ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  resume { ptr, i32 } %.pn88.pn.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize20fuse_convolution_mulEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not105 = icmp eq ptr %i.d, %i.e
  br i1 %.not105, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge104:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph103, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.068101 = phi i64 [ 0, %.lr.ph103 ], [ %i.gu, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 5 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.068101
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !58
  %i.q = icmp eq i64 %i.p, 11
  br i1 %i.q, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57   ; 2 uses
  %i.t = load i64, ptr %i.s, align 1
  %i.u = xor i64 %i.t, 8391732706658905923
  %i.v = getelementptr i8, ptr %i.s, i64 3
  %i.w = load i64, ptr %i.v, align 1
  %i.x = xor i64 %i.w, 7957695015494119286
  %i.y = or i64 %i.u, %i.x
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not85 = icmp eq i32 %i.aa, 0
  br i1 %.not85, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 136 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !80
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !81
  %.06788 = add nuw i64 %.068101, 1               ; 3 uses
  %i.ae = icmp ult i64 %.06788, %i.i
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread
  %.06789 = phi i64 [ %.067, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread ], [ %.06788, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82 ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.06789
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !53 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !58
  %i.aj = icmp eq i64 %i.ai, 8
  br i1 %i.aj, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79: ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57
  %i.am = load i64, ptr %i.al, align 1
  %i.an = icmp ne i64 %i.am, 8092820587575929154
  %i.ao = zext i1 %i.an to i32
  %.not86 = icmp eq i32 %i.ao, 0
  br i1 %.not86, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread83, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread83: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !91
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !80 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11NetOptimize35fuse_convolutiondepthwise_batchnormEv:bb.a
  store float %i.dj, ptr %i.dk, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond222.not, label %._crit_edge198, label %bb.f, !llvm.loop !868

bb.g:                                             ; preds = %._crit_edge198
  store i32 1, ptr %i.cq, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 0, ptr %i.p, align 16, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %1, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.m, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.bw, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit unwind label %bb.v

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit:            ; preds = %bb.g
  %i.dl = getelementptr inbounds nuw i8, ptr %i.u, i64 432 ; 4 uses
  %i.dm = icmp eq ptr %i.dl, %1
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !77  ; 3 uses
  br i1 %i.dm, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dn = atomicrmw add ptr %.pre, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.do = getelementptr inbounds nuw i8, ptr %i.u, i64 440
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !77 ; 2 uses
  %.not.i93 = icmp eq ptr %i.dp, null
  br i1 %.not.i93, label %.noexc, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dq = atomicrmw add ptr %i.dp, i32 -1 acq_rel, align 4
  %i.dr = icmp eq i32 %i.dq, 1
  br i1 %i.dr, label %bb.l, label %.noexc

bb.l:                                             ; preds = %bb.k
  %i.ds = getelementptr inbounds nuw i8, ptr %i.u, i64 464
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !78 ; 3 uses
  %.not3.i = icmp eq ptr %i.dt, null
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dv = load ptr, ptr %i.dt, align 8, !tbaa !28
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8
  invoke void %i.dx(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef %i.du)
          to label %.noexc unwind label %bb.w, !inline_history !1

bb.n:                                             ; preds = %bb.l
  %.not.i106 = icmp eq ptr %i.du, null
  br i1 %.not.i106, label %.noexc, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.du) #25
  br label %.noexc

.noexc:                                           ; preds = %bb.k, %bb.j, %bb.m, %bb.n, %bb.o
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 448
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 456
  %i.ea = getelementptr inbounds nuw i8, ptr %i.u, i64 472
  %i.eb = getelementptr inbounds nuw i8, ptr %i.u, i64 488
  %i.ec = getelementptr inbounds nuw i8, ptr %i.u, i64 496
  %i.ed = load ptr, ptr %i.j, align 8, !tbaa !77
  %i.ee = load <2 x ptr>, ptr %1, align 16, !tbaa !92
  store <2 x ptr> %i.ee, ptr %i.dl, align 8, !tbaa !92
  %i.ef = load i64, ptr %i.k, align 16, !tbaa !93
  store i64 %i.ef, ptr %i.dy, align 8, !tbaa !93
  %i.eg = load i32, ptr %i.l, align 8, !tbaa !94
  store i32 %i.eg, ptr %i.dz, align 8, !tbaa !94
  %i.eh = load ptr, ptr %i.m, align 16, !tbaa !78
  %i.ei = getelementptr inbounds nuw i8, ptr %i.u, i64 464
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !78
  %i.ej = load <4 x i32>, ptr %i.n, align 8, !tbaa !81
  store <4 x i32> %i.ej, ptr %i.ea, align 8, !tbaa !81
  %i.ek = load i32, ptr %i.o, align 8, !tbaa !88
  store i32 %i.ek, ptr %i.eb, align 8, !tbaa !88
  %i.el = load i64, ptr %i.p, align 16, !tbaa !76
  store i64 %i.el, ptr %i.ec, align 8, !tbaa !76
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %.noexc, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %i.em = phi ptr [ %i.ed, %.noexc ], [ %.pre, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit ] ; 2 uses
  %.not.i95 = icmp eq ptr %i.em, null
  br i1 %.not.i95, label %_ZN4ncnn3MatD2Ev.exit92, label %bb.p

bb.p:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit
  %i.en = atomicrmw add ptr %i.em, i32 -1 acq_rel, align 4
  %i.eo = icmp eq i32 %i.en, 1
  br i1 %i.eo, label %bb.q, label %_ZN4ncnn3MatD2Ev.exit92

bb.q:                                             ; preds = %bb.p
  %i.ep = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i96 = icmp eq ptr %i.ep, null
  %i.eq = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i96, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !28
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  invoke void %i.et(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef %i.eq)
          to label %_ZN4ncnn3MatD2Ev.exit92 unwind label %bb.u, !inline_history !1

bb.s:                                             ; preds = %bb.q
  %.not.i104 = icmp eq ptr %i.eq, null
  br i1 %.not.i104, label %_ZN4ncnn3MatD2Ev.exit92, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.eq) #25
  br label %_ZN4ncnn3MatD2Ev.exit92

bb.u:                                             ; preds = %bb.r
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  %i.ev = extractvalue { ptr, i32 } %i.eu, 0
  call void @__clang_call_terminate(ptr %i.ev) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit92:                          ; preds = %bb.p, %_ZN4ncnn3MataSERKS0_.exit, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.ew = getelementptr inbounds nuw i8, ptr %i.u, i64 496
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !76
  %i.ey = getelementptr inbounds nuw i8, ptr %i.u, i64 488
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !88
  %i.fa = trunc i64 %i.ex to i32
  %i.fb = mul i32 %i.ez, %i.fa                    ; 2 uses
  %i.fc = load ptr, ptr %i.dl, align 8, !tbaa !79 ; 3 uses
  %i.fd = icmp sgt i32 %i.fb, 0
  br i1 %i.fd, label %.lr.ph201.preheader, label %.lr.ph207

.lr.ph201.preheader:                              ; preds = %_ZN4ncnn3MatD2Ev.exit92
  %i.fe = zext nneg i32 %i.fb to i64
  %i.ff = shl nuw nsw i64 %i.fe, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fc, i8 0, i64 %i.ff, i1 false), !tbaa !90
  br label %.lr.ph207

bb.v:                                             ; preds = %bb.g
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit

bb.w:                                             ; preds = %bb.m
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.fi = load ptr, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %.not.i99 = icmp eq ptr %i.fi, null
  br i1 %.not.i99, label %_ZN4ncnn3MatD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fj = atomicrmw add ptr %i.fi, i32 -1 acq_rel, align 4
  %i.fk = icmp eq i32 %i.fj, 1
  br i1 %i.fk, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.fl = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i100 = icmp eq ptr %i.fl, null
  %i.fm = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i100, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fn = load ptr, ptr %i.fl, align 8, !tbaa !28
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8
  invoke void %i.fp(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, ptr noundef %i.fm)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ac, !inline_history !1

bb.aa:                                            ; preds = %bb.y
  %.not.i103 = icmp eq ptr %i.fm, null
  br i1 %.not.i103, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.fm) #25
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ac:                                            ; preds = %bb.z
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.w, %bb.x, %bb.v
  %.pn = phi { ptr, i32 } [ %i.fg, %bb.v ], [ %i.fh, %bb.x ], [ %i.fh, %bb.w ], [ %i.fh, %bb.z ], [ %i.fh, %bb.aa ], [ %i.fh, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.not.i.i.i124 = icmp eq ptr %.sroa.0128.0258, null
  br i1 %.not.i.i.i124, label %_ZNSt6vectorIfSaIfEED2Ev.exit125, label %bb.ae

.lr.ph207:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit92, %.lr.ph201.preheader, %._crit_edge198._ZN4ncnn3Mat4fillEf.exit_crit_edge
  %i.fs = phi ptr [ %.pre235, %._crit_edge198._ZN4ncnn3Mat4fillEf.exit_crit_edge ], [ %i.fc, %.lr.ph201.preheader ], [ %i.fc, %_ZN4ncnn3MatD2Ev.exit92 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.u, i64 260
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !151
  %i.fv = sdiv i32 %i.fu, %i.bw                   ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.u, i64 360
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !79 ; 3 uses
  %i.fy = icmp sgt i32 %i.fv, 0
  %2 = zext nneg i32 %i.fv to i64
  %wide.trip.count232 = zext nneg i32 %i.bw to i64 ; 3 uses
  %wide.trip.count226 = zext i32 %i.fv to i64     ; 6 uses
  %i.fz = shl nuw nsw i64 %wide.trip.count232, 2
  %scevgep = getelementptr i8, ptr %.sroa.0128.0258, i64 %i.fz
  %i.ga = shl nuw nsw i64 %wide.trip.count232, 2
  %i.gb = mul i64 %i.ga, %wide.trip.count226
  %scevgep274 = getelementptr i8, ptr %i.fx, i64 %i.gb
  %min.iters.check = icmp ult i32 %i.fv, 8
  %bound0 = icmp ult ptr %i.fx, %scevgep
  %bound1 = icmp ult ptr %.sroa.0128.0258, %scevgep274
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count226, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count226
  %xtraiter = and i64 %wide.trip.count226, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.ad

_ZNSt6vectorIfSaIfEED2Ev.exit123:                 ; preds = %._crit_edge205
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0128.0258) #26
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0134.0144256) #26
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bo, i64 136
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !80
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !81 ; 2 uses
  %i.gf = load ptr, ptr %i.aj, align 8, !tbaa !80
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !81
  %i.gg = trunc i64 %.077209 to i32
  %i.gh = load ptr, ptr %i.q, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.gi = sext i32 %i.ge to i64
  %i.gj = load ptr, ptr %i.gh, align 8, !tbaa !51
  %i.gk = getelementptr inbounds nuw [112 x i8], ptr %i.gj, i64 %i.gi
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  store i32 %i.gg, ptr %i.gl, align 8, !tbaa !118
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !58
  %i.gp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.gm, i64 noundef 0, i64 noundef %i.go, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.ad:                                            ; preds = %.lr.ph207, %._crit_edge205
  %indvars.iv228 = phi i64 [ 0, %.lr.ph207 ], [ %indvars.iv.next229, %._crit_edge205 ] ; 6 uses
  %i.gq = mul nuw nsw i64 %indvars.iv228, %2
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.gq ; 6 uses
  br i1 %i.fy, label %.lr.ph204, label %._crit_edge205

.lr.ph204:                                        ; preds = %bb.ad
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0128.0258, i64 %indvars.iv228 ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph204
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !90, !alias.scope !877
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gt, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %index ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.gu, align 4, !tbaa !90, !alias.scope !878, !noalias !877
  %wide.load275 = load <4 x float>, ptr %i.gv, align 4, !tbaa !90, !alias.scope !878, !noalias !877
  %i.gw = fmul <4 x float> %broadcast.splat, %wide.load
  %i.gx = fmul <4 x float> %broadcast.splat, %wide.load275
  store <4 x float> %i.gw, ptr %i.gu, align 4, !tbaa !90, !alias.scope !878, !noalias !877
  store <4 x float> %i.gx, ptr %i.gv, align 4, !tbaa !90, !alias.scope !878, !noalias !877
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gy = icmp eq i64 %index.next, %n.vec
  br i1 %i.gy, label %middle.block, label %vector.body, !llvm.loop !872

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge205, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph204, %middle.block
  %indvars.iv223.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph204 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv223.prol = phi i64 [ %indvars.iv.next224.prol, %scalar.ph.prol ], [ %indvars.iv223.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gz = load float, ptr %i.gs, align 4, !tbaa !90
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv223.prol ; 2 uses
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !90
  %i.hc = fmul float %i.gz, %i.hb
  store float %i.hc, ptr %i.ha, align 4, !tbaa !90
  %indvars.iv.next224.prol = add nuw nsw i64 %indvars.iv223.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !873

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv223.unr = phi i64 [ %indvars.iv223.ph, %scalar.ph.preheader ], [ %indvars.iv.next224.prol, %scalar.ph.prol ]
  %i.hd = sub nsw i64 %indvars.iv223.ph, %wide.trip.count226
  %i.he = icmp ugt i64 %i.hd, -4
  br i1 %i.he, label %._crit_edge205, label %scalar.ph

._crit_edge205:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv228 ; 2 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !90
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0128.0258, i64 %indvars.iv228
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !90
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0134.0144256, i64 %indvars.iv228
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !90
  %i.hl = call float @llvm.fmuladd.f32(float %i.hg, float %i.hi, float %i.hk)
  store float %i.hl, ptr %i.hf, align 4, !tbaa !90
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond233.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count232
  br i1 %exitcond233.not, label %_ZNSt6vectorIfSaIfEED2Ev.exit123, label %bb.ad, !llvm.loop !874

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv223 = phi i64 [ %indvars.iv.next224.3, %scalar.ph ], [ %indvars.iv223.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.hm = load float, ptr %i.gs, align 4, !tbaa !90
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv223 ; 2 uses
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !90
  %i.hp = fmul float %i.hm, %i.ho
  store float %i.hp, ptr %i.hn, align 4, !tbaa !90
  %i.hq = load float, ptr %i.gs, align 4, !tbaa !90
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv223
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4 ; 2 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !90
  %i.hu = fmul float %i.hq, %i.ht
  store float %i.hu, ptr %i.hs, align 4, !tbaa !90
  %i.hv = load float, ptr %i.gs, align 4, !tbaa !90
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv223
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 2 uses
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !90
  %i.hz = fmul float %i.hv, %i.hy
  store float %i.hz, ptr %i.hx, align 4, !tbaa !90
  %i.ia = load float, ptr %i.gs, align 4, !tbaa !90
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv223
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 12 ; 2 uses
  %i.id = load float, ptr %i.ic, align 4, !tbaa !90
  %i.ie = fmul float %i.ia, %i.id
  store float %i.ie, ptr %i.ic, align 4, !tbaa !90
  %indvars.iv.next224.3 = add nuw nsw i64 %indvars.iv223, 4 ; 2 uses
  %exitcond227.not.3 = icmp eq i64 %indvars.iv.next224.3, %wide.trip.count226
  br i1 %exitcond227.not.3, label %._crit_edge205, label %scalar.ph, !llvm.loop !875

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread, %bb.b, %_ZNSt6vectorIfSaIfEED2Ev.exit123, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.if = add nuw i64 %.077209, 1                 ; 2 uses
  %exitcond234.not = icmp eq i64 %i.if, %i.i
  br i1 %exitcond234.not, label %._crit_edge212, label %bb.b, !llvm.loop !876

bb.ae:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0128.0258) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit125

_ZNSt6vectorIfSaIfEED2Ev.exit125:                 ; preds = %bb.ae, %_ZN4ncnn3MatD2Ev.exit
  %.not.i.i.i126 = icmp eq ptr %.sroa.0134.0144256, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIfSaIfEED2Ev.exit127, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit125
  %.pn88.pn152 = phi { ptr, i32 } [ %i.ct, %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  %.sroa.0134.0142151 = phi ptr [ %i.cc, %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ], [ %.sroa.0134.0144256, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0134.0142151) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit127

_ZNSt6vectorIfSaIfEED2Ev.exit127:                 ; preds = %bb.af, %_ZNSt6vectorIfSaIfEED2Ev.exit125
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn88.pn152, %bb.af ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  resume { ptr, i32 } %.pn88.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize29fuse_convolutiondepthwise_mulEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not105 = icmp eq ptr %i.d, %i.e
  br i1 %.not105, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge104:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph103, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.068101 = phi i64 [ 0, %.lr.ph103 ], [ %i.gv, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 5 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.068101
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !58
  %i.q = icmp eq i64 %i.p, 20
  br i1 %i.q, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57   ; 2 uses
  %i.t = load i128, ptr %i.s, align 1
  %i.u = xor i128 %i.t, 138844297650319802350679583742711721795
  %i.v = getelementptr i8, ptr %i.s, i64 16
  %i.w = load i32, ptr %i.v, align 1
  %i.x = zext i32 %i.w to i128
  %i.y = xor i128 %i.x, 1702062423
  %i.z = or i128 %i.u, %i.y
  %i.aa = icmp ne i128 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %.not85 = icmp eq i32 %i.ab, 0
  br i1 %.not85, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 136 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !80
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !81
  %.06788 = add nuw i64 %.068101, 1               ; 3 uses
  %i.af = icmp ult i64 %.06788, %i.i
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread
  %.06789 = phi i64 [ %.067, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread ], [ %.06788, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.06789
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !53 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !58
  %i.ak = icmp eq i64 %i.aj, 8
  br i1 %i.ak, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79: ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !57
  %i.an = load i64, ptr %i.am, align 1
  %i.ao = icmp ne i64 %i.an, 8092820587575929154
  %i.ap = zext i1 %i.ao to i32
  %.not86 = icmp eq i32 %i.ap, 0
  br i1 %.not86, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread83, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread83: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 120
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !91
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !80 ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
end_hunk_1
begin_hunk_2_@_ZN11NetOptimize28fuse_deconvolution_batchnormEv:bb.a
  store float %i.di, ptr %i.dj, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond222.not, label %._crit_edge198, label %bb.f, !llvm.loop !911

bb.g:                                             ; preds = %._crit_edge198
  store i32 1, ptr %i.cp, align 4, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 0, ptr %i.p, align 16, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %1, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.m, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.bv, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit unwind label %bb.v

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit:            ; preds = %bb.g
  %i.dk = getelementptr inbounds nuw i8, ptr %i.u, i64 432 ; 4 uses
  %i.dl = icmp eq ptr %i.dk, %1
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !77  ; 3 uses
  br i1 %i.dl, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dm = atomicrmw add ptr %.pre, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dn = getelementptr inbounds nuw i8, ptr %i.u, i64 440
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !77 ; 2 uses
  %.not.i93 = icmp eq ptr %i.do, null
  br i1 %.not.i93, label %.noexc, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dp = atomicrmw add ptr %i.do, i32 -1 acq_rel, align 4
  %i.dq = icmp eq i32 %i.dp, 1
  br i1 %i.dq, label %bb.l, label %.noexc

bb.l:                                             ; preds = %bb.k
  %i.dr = getelementptr inbounds nuw i8, ptr %i.u, i64 464
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !78 ; 3 uses
  %.not3.i = icmp eq ptr %i.ds, null
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !28
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  invoke void %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef %i.dt)
          to label %.noexc unwind label %bb.w, !inline_history !1

bb.n:                                             ; preds = %bb.l
  %.not.i106 = icmp eq ptr %i.dt, null
  br i1 %.not.i106, label %.noexc, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.dt) #25
  br label %.noexc

.noexc:                                           ; preds = %bb.k, %bb.j, %bb.m, %bb.n, %bb.o
  %i.dx = getelementptr inbounds nuw i8, ptr %i.u, i64 448
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 456
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 472
  %i.ea = getelementptr inbounds nuw i8, ptr %i.u, i64 488
  %i.eb = getelementptr inbounds nuw i8, ptr %i.u, i64 496
  %i.ec = load ptr, ptr %i.j, align 8, !tbaa !77
  %i.ed = load <2 x ptr>, ptr %1, align 16, !tbaa !92
  store <2 x ptr> %i.ed, ptr %i.dk, align 8, !tbaa !92
  %i.ee = load i64, ptr %i.k, align 16, !tbaa !93
  store i64 %i.ee, ptr %i.dx, align 8, !tbaa !93
  %i.ef = load i32, ptr %i.l, align 8, !tbaa !94
  store i32 %i.ef, ptr %i.dy, align 8, !tbaa !94
  %i.eg = load ptr, ptr %i.m, align 16, !tbaa !78
  %i.eh = getelementptr inbounds nuw i8, ptr %i.u, i64 464
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !78
  %i.ei = load <4 x i32>, ptr %i.n, align 8, !tbaa !81
  store <4 x i32> %i.ei, ptr %i.dz, align 8, !tbaa !81
  %i.ej = load i32, ptr %i.o, align 8, !tbaa !88
  store i32 %i.ej, ptr %i.ea, align 8, !tbaa !88
  %i.ek = load i64, ptr %i.p, align 16, !tbaa !76
  store i64 %i.ek, ptr %i.eb, align 8, !tbaa !76
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %.noexc, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %i.el = phi ptr [ %i.ec, %.noexc ], [ %.pre, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit ] ; 2 uses
  %.not.i95 = icmp eq ptr %i.el, null
  br i1 %.not.i95, label %_ZN4ncnn3MatD2Ev.exit92, label %bb.p

bb.p:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit
  %i.em = atomicrmw add ptr %i.el, i32 -1 acq_rel, align 4
  %i.en = icmp eq i32 %i.em, 1
  br i1 %i.en, label %bb.q, label %_ZN4ncnn3MatD2Ev.exit92

bb.q:                                             ; preds = %bb.p
  %i.eo = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i96 = icmp eq ptr %i.eo, null
  %i.ep = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i96, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !28
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  invoke void %i.es(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef %i.ep)
          to label %_ZN4ncnn3MatD2Ev.exit92 unwind label %bb.u, !inline_history !1

bb.s:                                             ; preds = %bb.q
  %.not.i104 = icmp eq ptr %i.ep, null
  br i1 %.not.i104, label %_ZN4ncnn3MatD2Ev.exit92, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.ep) #25
  br label %_ZN4ncnn3MatD2Ev.exit92

bb.u:                                             ; preds = %bb.r
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit92:                          ; preds = %bb.p, %_ZN4ncnn3MataSERKS0_.exit, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.ev = getelementptr inbounds nuw i8, ptr %i.u, i64 496
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !76
  %i.ex = getelementptr inbounds nuw i8, ptr %i.u, i64 488
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !88
  %i.ez = trunc i64 %i.ew to i32
  %i.fa = mul i32 %i.ey, %i.ez                    ; 2 uses
  %i.fb = load ptr, ptr %i.dk, align 8, !tbaa !79 ; 3 uses
  %i.fc = icmp sgt i32 %i.fa, 0
  br i1 %i.fc, label %.lr.ph201.preheader, label %.lr.ph207

.lr.ph201.preheader:                              ; preds = %_ZN4ncnn3MatD2Ev.exit92
  %i.fd = zext nneg i32 %i.fa to i64
  %i.fe = shl nuw nsw i64 %i.fd, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fb, i8 0, i64 %i.fe, i1 false), !tbaa !90
  br label %.lr.ph207

bb.v:                                             ; preds = %bb.g
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit

bb.w:                                             ; preds = %bb.m
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.fh = load ptr, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %.not.i99 = icmp eq ptr %i.fh, null
  br i1 %.not.i99, label %_ZN4ncnn3MatD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fi = atomicrmw add ptr %i.fh, i32 -1 acq_rel, align 4
  %i.fj = icmp eq i32 %i.fi, 1
  br i1 %i.fj, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.fk = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i100 = icmp eq ptr %i.fk, null
  %i.fl = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i100, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fm = load ptr, ptr %i.fk, align 8, !tbaa !28
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8
  invoke void %i.fo(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef %i.fl)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ac, !inline_history !1

bb.aa:                                            ; preds = %bb.y
  %.not.i103 = icmp eq ptr %i.fl, null
  br i1 %.not.i103, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.fl) #25
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ac:                                            ; preds = %bb.z
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  call void @__clang_call_terminate(ptr %i.fq) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.w, %bb.x, %bb.v
  %.pn = phi { ptr, i32 } [ %i.ff, %bb.v ], [ %i.fg, %bb.x ], [ %i.fg, %bb.w ], [ %i.fg, %bb.z ], [ %i.fg, %bb.aa ], [ %i.fg, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.not.i.i.i124 = icmp eq ptr %.sroa.0128.0258, null
  br i1 %.not.i.i.i124, label %_ZNSt6vectorIfSaIfEED2Ev.exit125, label %bb.ae

.lr.ph207:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit92, %.lr.ph201.preheader, %._crit_edge198._ZN4ncnn3Mat4fillEf.exit_crit_edge
  %i.fr = phi ptr [ %.pre235, %._crit_edge198._ZN4ncnn3Mat4fillEf.exit_crit_edge ], [ %i.fb, %.lr.ph201.preheader ], [ %i.fb, %_ZN4ncnn3MatD2Ev.exit92 ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.u, i64 272
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !156
  %i.fu = sdiv i32 %i.ft, %i.bv                   ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.u, i64 360
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !79 ; 3 uses
  %i.fx = icmp sgt i32 %i.fu, 0
  %2 = zext nneg i32 %i.fu to i64
  %wide.trip.count232 = zext nneg i32 %i.bv to i64 ; 3 uses
  %wide.trip.count226 = zext i32 %i.fu to i64     ; 6 uses
  %i.fy = shl nuw nsw i64 %wide.trip.count232, 2
  %scevgep = getelementptr i8, ptr %.sroa.0128.0258, i64 %i.fy
  %i.fz = shl nuw nsw i64 %wide.trip.count232, 2
  %i.ga = mul i64 %i.fz, %wide.trip.count226
  %scevgep274 = getelementptr i8, ptr %i.fw, i64 %i.ga
  %min.iters.check = icmp ult i32 %i.fu, 8
  %bound0 = icmp ult ptr %i.fw, %scevgep
  %bound1 = icmp ult ptr %.sroa.0128.0258, %scevgep274
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count226, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count226
  %xtraiter = and i64 %wide.trip.count226, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.ad

_ZNSt6vectorIfSaIfEED2Ev.exit123:                 ; preds = %._crit_edge205
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0128.0258) #26
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0134.0144256) #26
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bn, i64 136
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !80
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !81 ; 2 uses
  %i.ge = load ptr, ptr %i.ai, align 8, !tbaa !80
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !81
  %i.gf = trunc i64 %.077209 to i32
  %i.gg = load ptr, ptr %i.q, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.gh = sext i32 %i.gd to i64
  %i.gi = load ptr, ptr %i.gg, align 8, !tbaa !51
  %i.gj = getelementptr inbounds nuw [112 x i8], ptr %i.gi, i64 %i.gh
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  store i32 %i.gf, ptr %i.gk, align 8, !tbaa !118
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !58
  %i.go = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.gl, i64 noundef 0, i64 noundef %i.gn, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.ad:                                            ; preds = %.lr.ph207, %._crit_edge205
  %indvars.iv228 = phi i64 [ 0, %.lr.ph207 ], [ %indvars.iv.next229, %._crit_edge205 ] ; 6 uses
  %i.gp = mul nuw nsw i64 %indvars.iv228, %2
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.gp ; 6 uses
  br i1 %i.fx, label %.lr.ph204, label %._crit_edge205

.lr.ph204:                                        ; preds = %bb.ad
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0128.0258, i64 %indvars.iv228 ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph204
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !90, !alias.scope !920
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gs, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %index ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.gt, align 4, !tbaa !90, !alias.scope !921, !noalias !920
  %wide.load275 = load <4 x float>, ptr %i.gu, align 4, !tbaa !90, !alias.scope !921, !noalias !920
  %i.gv = fmul <4 x float> %broadcast.splat, %wide.load
  %i.gw = fmul <4 x float> %broadcast.splat, %wide.load275
  store <4 x float> %i.gv, ptr %i.gt, align 4, !tbaa !90, !alias.scope !921, !noalias !920
  store <4 x float> %i.gw, ptr %i.gu, align 4, !tbaa !90, !alias.scope !921, !noalias !920
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gx = icmp eq i64 %index.next, %n.vec
  br i1 %i.gx, label %middle.block, label %vector.body, !llvm.loop !915

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge205, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph204, %middle.block
  %indvars.iv223.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph204 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv223.prol = phi i64 [ %indvars.iv.next224.prol, %scalar.ph.prol ], [ %indvars.iv223.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gy = load float, ptr %i.gr, align 4, !tbaa !90
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv223.prol ; 2 uses
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !90
  %i.hb = fmul float %i.gy, %i.ha
  store float %i.hb, ptr %i.gz, align 4, !tbaa !90
  %indvars.iv.next224.prol = add nuw nsw i64 %indvars.iv223.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !916

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv223.unr = phi i64 [ %indvars.iv223.ph, %scalar.ph.preheader ], [ %indvars.iv.next224.prol, %scalar.ph.prol ]
  %i.hc = sub nsw i64 %indvars.iv223.ph, %wide.trip.count226
  %i.hd = icmp ugt i64 %i.hc, -4
  br i1 %i.hd, label %._crit_edge205, label %scalar.ph

._crit_edge205:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv228 ; 2 uses
  %i.hf = load float, ptr %i.he, align 4, !tbaa !90
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0128.0258, i64 %indvars.iv228
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !90
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0134.0144256, i64 %indvars.iv228
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !90
  %i.hk = call float @llvm.fmuladd.f32(float %i.hf, float %i.hh, float %i.hj)
  store float %i.hk, ptr %i.he, align 4, !tbaa !90
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond233.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count232
  br i1 %exitcond233.not, label %_ZNSt6vectorIfSaIfEED2Ev.exit123, label %bb.ad, !llvm.loop !917

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv223 = phi i64 [ %indvars.iv.next224.3, %scalar.ph ], [ %indvars.iv223.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.hl = load float, ptr %i.gr, align 4, !tbaa !90
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv223 ; 2 uses
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !90
  %i.ho = fmul float %i.hl, %i.hn
  store float %i.ho, ptr %i.hm, align 4, !tbaa !90
  %i.hp = load float, ptr %i.gr, align 4, !tbaa !90
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv223
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 4 ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !90
  %i.ht = fmul float %i.hp, %i.hs
  store float %i.ht, ptr %i.hr, align 4, !tbaa !90
  %i.hu = load float, ptr %i.gr, align 4, !tbaa !90
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv223
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !90
  %i.hy = fmul float %i.hu, %i.hx
  store float %i.hy, ptr %i.hw, align 4, !tbaa !90
  %i.hz = load float, ptr %i.gr, align 4, !tbaa !90
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv223
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 12 ; 2 uses
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !90
  %i.id = fmul float %i.hz, %i.ic
  store float %i.id, ptr %i.ib, align 4, !tbaa !90
  %indvars.iv.next224.3 = add nuw nsw i64 %indvars.iv223, 4 ; 2 uses
  %exitcond227.not.3 = icmp eq i64 %indvars.iv.next224.3, %wide.trip.count226
  br i1 %exitcond227.not.3, label %._crit_edge205, label %scalar.ph, !llvm.loop !918

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread, %bb.b, %_ZNSt6vectorIfSaIfEED2Ev.exit123, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ie = add nuw i64 %.077209, 1                 ; 2 uses
  %exitcond234.not = icmp eq i64 %i.ie, %i.i
  br i1 %exitcond234.not, label %._crit_edge212, label %bb.b, !llvm.loop !919

bb.ae:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0128.0258) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit125

_ZNSt6vectorIfSaIfEED2Ev.exit125:                 ; preds = %bb.ae, %_ZN4ncnn3MatD2Ev.exit
  %.not.i.i.i126 = icmp eq ptr %.sroa.0134.0144256, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIfSaIfEED2Ev.exit127, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit125
  %.pn88.pn152 = phi { ptr, i32 } [ %i.cs, %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  %.sroa.0134.0142151 = phi ptr [ %i.cb, %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ], [ %.sroa.0134.0144256, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0134.0142151) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit127

_ZNSt6vectorIfSaIfEED2Ev.exit127:                 ; preds = %bb.af, %_ZNSt6vectorIfSaIfEED2Ev.exit125
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn88.pn152, %bb.af ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  resume { ptr, i32 } %.pn88.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize22fuse_deconvolution_mulEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not105 = icmp eq ptr %i.d, %i.e
  br i1 %.not105, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge104:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph103, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.068101 = phi i64 [ 0, %.lr.ph103 ], [ %i.gu, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 5 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.068101
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !53   ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !58
  %i.q = icmp eq i64 %i.p, 13
  br i1 %i.q, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !57   ; 2 uses
  %i.t = load i64, ptr %i.s, align 1
  %i.u = xor i64 %i.t, 7813594095198364996
  %i.v = getelementptr i8, ptr %i.s, i64 5
  %i.w = load i64, ptr %i.v, align 1
  %i.x = xor i64 %i.w, 7957695015494119286
  %i.y = or i64 %i.u, %i.x
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %.not85 = icmp eq i32 %i.aa, 0
  br i1 %.not85, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 136 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !80
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !81
  %.06788 = add nuw i64 %.068101, 1               ; 3 uses
  %i.ae = icmp ult i64 %.06788, %i.i
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread
  %.06789 = phi i64 [ %.067, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread ], [ %.06788, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread82 ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.06789
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !53 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !58
  %i.aj = icmp eq i64 %i.ai, 8
  br i1 %i.aj, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79: ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57
  %i.am = load i64, ptr %i.al, align 1
  %i.an = icmp ne i64 %i.am, 8092820587575929154
  %i.ao = zext i1 %i.an to i32
  %.not86 = icmp eq i32 %i.ao, 0
  br i1 %.not86, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread83, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.thread83: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !91
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !80 ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
end_hunk_2
begin_hunk_3_@_ZN11NetOptimize37fuse_deconvolutiondepthwise_batchnormEv:bb.a
  store float %i.di, ptr %i.dj, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond222.not, label %._crit_edge198, label %bb.f, !llvm.loop !954

bb.g:                                             ; preds = %._crit_edge198
  store i32 1, ptr %i.cp, align 4, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 0, ptr %i.p, align 16, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %1, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.m, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.bv, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit unwind label %bb.v

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit:            ; preds = %bb.g
  %i.dk = getelementptr inbounds nuw i8, ptr %i.u, i64 440 ; 4 uses
  %i.dl = icmp eq ptr %i.dk, %1
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !77  ; 3 uses
  br i1 %i.dl, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dm = atomicrmw add ptr %.pre, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dn = getelementptr inbounds nuw i8, ptr %i.u, i64 448
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !77 ; 2 uses
  %.not.i93 = icmp eq ptr %i.do, null
  br i1 %.not.i93, label %.noexc, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dp = atomicrmw add ptr %i.do, i32 -1 acq_rel, align 4
  %i.dq = icmp eq i32 %i.dp, 1
  br i1 %i.dq, label %bb.l, label %.noexc

bb.l:                                             ; preds = %bb.k
  %i.dr = getelementptr inbounds nuw i8, ptr %i.u, i64 472
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !78 ; 3 uses
  %.not3.i = icmp eq ptr %i.ds, null
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !28
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  invoke void %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef %i.dt)
          to label %.noexc unwind label %bb.w, !inline_history !1

bb.n:                                             ; preds = %bb.l
  %.not.i106 = icmp eq ptr %i.dt, null
  br i1 %.not.i106, label %.noexc, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.dt) #25
  br label %.noexc

.noexc:                                           ; preds = %bb.k, %bb.j, %bb.m, %bb.n, %bb.o
  %i.dx = getelementptr inbounds nuw i8, ptr %i.u, i64 456
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 464
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 480
  %i.ea = getelementptr inbounds nuw i8, ptr %i.u, i64 496
  %i.eb = getelementptr inbounds nuw i8, ptr %i.u, i64 504
  %i.ec = load ptr, ptr %i.j, align 8, !tbaa !77
  %i.ed = load <2 x ptr>, ptr %1, align 16, !tbaa !92
  store <2 x ptr> %i.ed, ptr %i.dk, align 8, !tbaa !92
  %i.ee = load i64, ptr %i.k, align 16, !tbaa !93
  store i64 %i.ee, ptr %i.dx, align 8, !tbaa !93
  %i.ef = load i32, ptr %i.l, align 8, !tbaa !94
  store i32 %i.ef, ptr %i.dy, align 8, !tbaa !94
  %i.eg = load ptr, ptr %i.m, align 16, !tbaa !78
  %i.eh = getelementptr inbounds nuw i8, ptr %i.u, i64 472
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !78
  %i.ei = load <4 x i32>, ptr %i.n, align 8, !tbaa !81
  store <4 x i32> %i.ei, ptr %i.dz, align 8, !tbaa !81
  %i.ej = load i32, ptr %i.o, align 8, !tbaa !88
  store i32 %i.ej, ptr %i.ea, align 8, !tbaa !88
  %i.ek = load i64, ptr %i.p, align 16, !tbaa !76
  store i64 %i.ek, ptr %i.eb, align 8, !tbaa !76
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %.noexc, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %i.el = phi ptr [ %i.ec, %.noexc ], [ %.pre, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit ] ; 2 uses
  %.not.i95 = icmp eq ptr %i.el, null
  br i1 %.not.i95, label %_ZN4ncnn3MatD2Ev.exit92, label %bb.p

bb.p:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit
  %i.em = atomicrmw add ptr %i.el, i32 -1 acq_rel, align 4
  %i.en = icmp eq i32 %i.em, 1
  br i1 %i.en, label %bb.q, label %_ZN4ncnn3MatD2Ev.exit92

bb.q:                                             ; preds = %bb.p
  %i.eo = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i96 = icmp eq ptr %i.eo, null
  %i.ep = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i96, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !28
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  invoke void %i.es(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef %i.ep)
          to label %_ZN4ncnn3MatD2Ev.exit92 unwind label %bb.u, !inline_history !1

bb.s:                                             ; preds = %bb.q
  %.not.i104 = icmp eq ptr %i.ep, null
  br i1 %.not.i104, label %_ZN4ncnn3MatD2Ev.exit92, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.ep) #25
  br label %_ZN4ncnn3MatD2Ev.exit92

bb.u:                                             ; preds = %bb.r
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit92:                          ; preds = %bb.p, %_ZN4ncnn3MataSERKS0_.exit, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.ev = getelementptr inbounds nuw i8, ptr %i.u, i64 504
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !76
  %i.ex = getelementptr inbounds nuw i8, ptr %i.u, i64 496
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !88
  %i.ez = trunc i64 %i.ew to i32
  %i.fa = mul i32 %i.ey, %i.ez                    ; 2 uses
  %i.fb = load ptr, ptr %i.dk, align 8, !tbaa !79 ; 3 uses
  %i.fc = icmp sgt i32 %i.fa, 0
  br i1 %i.fc, label %.lr.ph201.preheader, label %.lr.ph207

.lr.ph201.preheader:                              ; preds = %_ZN4ncnn3MatD2Ev.exit92
  %i.fd = zext nneg i32 %i.fa to i64
  %i.fe = shl nuw nsw i64 %i.fd, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fb, i8 0, i64 %i.fe, i1 false), !tbaa !90
  br label %.lr.ph207

bb.v:                                             ; preds = %bb.g
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit

bb.w:                                             ; preds = %bb.m
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.fh = load ptr, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %.not.i99 = icmp eq ptr %i.fh, null
  br i1 %.not.i99, label %_ZN4ncnn3MatD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fi = atomicrmw add ptr %i.fh, i32 -1 acq_rel, align 4
  %i.fj = icmp eq i32 %i.fi, 1
  br i1 %i.fj, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.fk = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i100 = icmp eq ptr %i.fk, null
  %i.fl = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i100, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fm = load ptr, ptr %i.fk, align 8, !tbaa !28
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8
  invoke void %i.fo(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef %i.fl)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ac, !inline_history !1

bb.aa:                                            ; preds = %bb.y
  %.not.i103 = icmp eq ptr %i.fl, null
  br i1 %.not.i103, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.fl) #25
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ac:                                            ; preds = %bb.z
  %i.fp = landingpad { ptr, i32 }
          catch ptr null
  %i.fq = extractvalue { ptr, i32 } %i.fp, 0
  call void @__clang_call_terminate(ptr %i.fq) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.w, %bb.x, %bb.v
  %.pn = phi { ptr, i32 } [ %i.ff, %bb.v ], [ %i.fg, %bb.x ], [ %i.fg, %bb.w ], [ %i.fg, %bb.z ], [ %i.fg, %bb.aa ], [ %i.fg, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.not.i.i.i124 = icmp eq ptr %.sroa.0128.0258, null
  br i1 %.not.i.i.i124, label %_ZNSt6vectorIfSaIfEED2Ev.exit125, label %bb.ae

.lr.ph207:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit92, %.lr.ph201.preheader, %._crit_edge198._ZN4ncnn3Mat4fillEf.exit_crit_edge
  %i.fr = phi ptr [ %.pre235, %._crit_edge198._ZN4ncnn3Mat4fillEf.exit_crit_edge ], [ %i.fb, %.lr.ph201.preheader ], [ %i.fb, %_ZN4ncnn3MatD2Ev.exit92 ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.u, i64 272
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !160
  %i.fu = sdiv i32 %i.ft, %i.bv                   ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.u, i64 368
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !79 ; 3 uses
  %i.fx = icmp sgt i32 %i.fu, 0
  %2 = zext nneg i32 %i.fu to i64
  %wide.trip.count232 = zext nneg i32 %i.bv to i64 ; 3 uses
  %wide.trip.count226 = zext i32 %i.fu to i64     ; 6 uses
  %i.fy = shl nuw nsw i64 %wide.trip.count232, 2
  %scevgep = getelementptr i8, ptr %.sroa.0128.0258, i64 %i.fy
  %i.fz = shl nuw nsw i64 %wide.trip.count232, 2
  %i.ga = mul i64 %i.fz, %wide.trip.count226
  %scevgep274 = getelementptr i8, ptr %i.fw, i64 %i.ga
  %min.iters.check = icmp ult i32 %i.fu, 8
  %bound0 = icmp ult ptr %i.fw, %scevgep
  %bound1 = icmp ult ptr %.sroa.0128.0258, %scevgep274
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count226, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count226
  %xtraiter = and i64 %wide.trip.count226, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.ad

_ZNSt6vectorIfSaIfEED2Ev.exit123:                 ; preds = %._crit_edge205
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0128.0258) #26
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0134.0144256) #26
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bn, i64 136
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !80
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !81 ; 2 uses
  %i.ge = load ptr, ptr %i.ai, align 8, !tbaa !80
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !81
  %i.gf = trunc i64 %.077209 to i32
  %i.gg = load ptr, ptr %i.q, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.gh = sext i32 %i.gd to i64
  %i.gi = load ptr, ptr %i.gg, align 8, !tbaa !51
  %i.gj = getelementptr inbounds nuw [112 x i8], ptr %i.gi, i64 %i.gh
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  store i32 %i.gf, ptr %i.gk, align 8, !tbaa !118
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !58
  %i.go = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.gl, i64 noundef 0, i64 noundef %i.gn, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.ad:                                            ; preds = %.lr.ph207, %._crit_edge205
  %indvars.iv228 = phi i64 [ 0, %.lr.ph207 ], [ %indvars.iv.next229, %._crit_edge205 ] ; 6 uses
  %i.gp = mul nuw nsw i64 %indvars.iv228, %2
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.gp ; 6 uses
  br i1 %i.fx, label %.lr.ph204, label %._crit_edge205

.lr.ph204:                                        ; preds = %bb.ad
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0128.0258, i64 %indvars.iv228 ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph204
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !90, !alias.scope !963
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gs, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %index ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.gt, align 4, !tbaa !90, !alias.scope !964, !noalias !963
  %wide.load275 = load <4 x float>, ptr %i.gu, align 4, !tbaa !90, !alias.scope !964, !noalias !963
  %i.gv = fmul <4 x float> %broadcast.splat, %wide.load
  %i.gw = fmul <4 x float> %broadcast.splat, %wide.load275
  store <4 x float> %i.gv, ptr %i.gt, align 4, !tbaa !90, !alias.scope !964, !noalias !963
  store <4 x float> %i.gw, ptr %i.gu, align 4, !tbaa !90, !alias.scope !964, !noalias !963
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gx = icmp eq i64 %index.next, %n.vec
  br i1 %i.gx, label %middle.block, label %vector.body, !llvm.loop !958

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge205, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph204, %middle.block
  %indvars.iv223.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph204 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv223.prol = phi i64 [ %indvars.iv.next224.prol, %scalar.ph.prol ], [ %indvars.iv223.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gy = load float, ptr %i.gr, align 4, !tbaa !90
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv223.prol ; 2 uses
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !90
  %i.hb = fmul float %i.gy, %i.ha
  store float %i.hb, ptr %i.gz, align 4, !tbaa !90
  %indvars.iv.next224.prol = add nuw nsw i64 %indvars.iv223.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !959

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv223.unr = phi i64 [ %indvars.iv223.ph, %scalar.ph.preheader ], [ %indvars.iv.next224.prol, %scalar.ph.prol ]
  %i.hc = sub nsw i64 %indvars.iv223.ph, %wide.trip.count226
  %i.hd = icmp ugt i64 %i.hc, -4
  br i1 %i.hd, label %._crit_edge205, label %scalar.ph

._crit_edge205:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv228 ; 2 uses
  %i.hf = load float, ptr %i.he, align 4, !tbaa !90
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0128.0258, i64 %indvars.iv228
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !90
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0134.0144256, i64 %indvars.iv228
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !90
  %i.hk = call float @llvm.fmuladd.f32(float %i.hf, float %i.hh, float %i.hj)
  store float %i.hk, ptr %i.he, align 4, !tbaa !90
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond233.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count232
  br i1 %exitcond233.not, label %_ZNSt6vectorIfSaIfEED2Ev.exit123, label %bb.ad, !llvm.loop !960

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv223 = phi i64 [ %indvars.iv.next224.3, %scalar.ph ], [ %indvars.iv223.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.hl = load float, ptr %i.gr, align 4, !tbaa !90
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv223 ; 2 uses
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !90
  %i.ho = fmul float %i.hl, %i.hn
  store float %i.ho, ptr %i.hm, align 4, !tbaa !90
  %i.hp = load float, ptr %i.gr, align 4, !tbaa !90
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv223
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 4 ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !90
  %i.ht = fmul float %i.hp, %i.hs
  store float %i.ht, ptr %i.hr, align 4, !tbaa !90
  %i.hu = load float, ptr %i.gr, align 4, !tbaa !90
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv223
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !90
  %i.hy = fmul float %i.hu, %i.hx
  store float %i.hy, ptr %i.hw, align 4, !tbaa !90
  %i.hz = load float, ptr %i.gr, align 4, !tbaa !90
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv223
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 12 ; 2 uses
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !90
  %i.id = fmul float %i.hz, %i.ic
  store float %i.id, ptr %i.ib, align 4, !tbaa !90
  %indvars.iv.next224.3 = add nuw nsw i64 %indvars.iv223, 4 ; 2 uses
  %exitcond227.not.3 = icmp eq i64 %indvars.iv.next224.3, %wide.trip.count226
  br i1 %exitcond227.not.3, label %._crit_edge205, label %scalar.ph, !llvm.loop !961

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread, %bb.b, %_ZNSt6vectorIfSaIfEED2Ev.exit123, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ie = add nuw i64 %.077209, 1                 ; 2 uses
  %exitcond234.not = icmp eq i64 %i.ie, %i.i
  br i1 %exitcond234.not, label %._crit_edge212, label %bb.b, !llvm.loop !962

bb.ae:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0128.0258) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit125

_ZNSt6vectorIfSaIfEED2Ev.exit125:                 ; preds = %bb.ae, %_ZN4ncnn3MatD2Ev.exit
  %.not.i.i.i126 = icmp eq ptr %.sroa.0134.0144256, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIfSaIfEED2Ev.exit127, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit125
  %.pn88.pn152 = phi { ptr, i32 } [ %i.cs, %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  %.sroa.0134.0142151 = phi ptr [ %i.cb, %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ], [ %.sroa.0134.0144256, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0134.0142151) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit127

_ZNSt6vectorIfSaIfEED2Ev.exit127:                 ; preds = %bb.af, %_ZNSt6vectorIfSaIfEED2Ev.exit125
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn88.pn152, %bb.af ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  resume { ptr, i32 } %.pn88.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize27fuse_innerproduct_batchnormEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not213 = icmp eq ptr %i.d, %i.e
  br i1 %.not213, label %._crit_edge212, label %.lr.ph211

.lr.ph211:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge212:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph211, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.077209 = phi i64 [ 0, %.lr.ph211 ], [ %i.if, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.077209
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53   ; 19 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !58
  %i.x = icmp eq i64 %i.w, 12
  br i1 %i.x, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57   ; 2 uses
  %i.aa = load i64, ptr %i.z, align 1
  %i.ab = xor i64 %i.aa, 8030569537813245513
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = zext i32 %i.ad to i64
  %i.af = xor i64 %i.ae, 1952675172
  %i.ag = or i64 %i.ab, %i.af
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %.not154 = icmp eq i32 %i.ai, 0
  br i1 %.not154, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 136 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !80
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !81
  %.084192 = add nuw i64 %.077209, 1              ; 3 uses
  %i.am = icmp ult i64 %.084192, %i.i
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread
  %.084193 = phi i64 [ %.084, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread ], [ %.084192, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread139 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.084193
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !53 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !58
  %i.ar = icmp eq i64 %i.aq, 9
  br i1 %i.ar, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110: ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !57 ; 2 uses
  %i.au = load i64, ptr %i.at, align 1
  %i.av = xor i64 %i.au, 8245895652990804290
  %i.aw = getelementptr i8, ptr %i.at, i64 8
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i64
end_hunk_3
begin_hunk_4_@_ZN11NetOptimize27fuse_innerproduct_batchnormEv:bb.a
  store float %i.dj, ptr %i.dk, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond222.not, label %._crit_edge198, label %bb.f, !llvm.loop !966

bb.g:                                             ; preds = %._crit_edge198
  store i32 1, ptr %i.cq, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 0, ptr %i.p, align 16, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %1, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.m, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.bw, i64 noundef 4, ptr noundef null)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit unwind label %bb.v

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit:            ; preds = %bb.g
  %i.dl = getelementptr inbounds nuw i8, ptr %i.u, i64 376 ; 4 uses
  %i.dm = icmp eq ptr %i.dl, %1
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !77  ; 3 uses
  br i1 %i.dm, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %.not.i = icmp eq ptr %.pre, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dn = atomicrmw add ptr %.pre, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.do = getelementptr inbounds nuw i8, ptr %i.u, i64 384
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !77 ; 2 uses
  %.not.i93 = icmp eq ptr %i.dp, null
  br i1 %.not.i93, label %.noexc, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dq = atomicrmw add ptr %i.dp, i32 -1 acq_rel, align 4
  %i.dr = icmp eq i32 %i.dq, 1
  br i1 %i.dr, label %bb.l, label %.noexc

bb.l:                                             ; preds = %bb.k
  %i.ds = getelementptr inbounds nuw i8, ptr %i.u, i64 408
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !78 ; 3 uses
  %.not3.i = icmp eq ptr %i.dt, null
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !79 ; 3 uses
  br i1 %.not3.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dv = load ptr, ptr %i.dt, align 8, !tbaa !28
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8
  invoke void %i.dx(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef %i.du)
          to label %.noexc unwind label %bb.w, !inline_history !1

bb.n:                                             ; preds = %bb.l
  %.not.i106 = icmp eq ptr %i.du, null
  br i1 %.not.i106, label %.noexc, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.du) #25
  br label %.noexc

.noexc:                                           ; preds = %bb.k, %bb.j, %bb.m, %bb.n, %bb.o
  %i.dy = getelementptr inbounds nuw i8, ptr %i.u, i64 392
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 400
  %i.ea = getelementptr inbounds nuw i8, ptr %i.u, i64 416
  %i.eb = getelementptr inbounds nuw i8, ptr %i.u, i64 432
  %i.ec = getelementptr inbounds nuw i8, ptr %i.u, i64 440
  %i.ed = load ptr, ptr %i.j, align 8, !tbaa !77
  %i.ee = load <2 x ptr>, ptr %1, align 16, !tbaa !92
  store <2 x ptr> %i.ee, ptr %i.dl, align 8, !tbaa !92
  %i.ef = load i64, ptr %i.k, align 16, !tbaa !93
  store i64 %i.ef, ptr %i.dy, align 8, !tbaa !93
  %i.eg = load i32, ptr %i.l, align 8, !tbaa !94
  store i32 %i.eg, ptr %i.dz, align 8, !tbaa !94
  %i.eh = load ptr, ptr %i.m, align 16, !tbaa !78
  %i.ei = getelementptr inbounds nuw i8, ptr %i.u, i64 408
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !78
  %i.ej = load <4 x i32>, ptr %i.n, align 8, !tbaa !81
  store <4 x i32> %i.ej, ptr %i.ea, align 8, !tbaa !81
  %i.ek = load i32, ptr %i.o, align 8, !tbaa !88
  store i32 %i.ek, ptr %i.eb, align 8, !tbaa !88
  %i.el = load i64, ptr %i.p, align 16, !tbaa !76
  store i64 %i.el, ptr %i.ec, align 8, !tbaa !76
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %.noexc, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit
  %i.em = phi ptr [ %i.ed, %.noexc ], [ %.pre, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit ] ; 2 uses
  %.not.i95 = icmp eq ptr %i.em, null
  br i1 %.not.i95, label %_ZN4ncnn3MatD2Ev.exit92, label %bb.p

bb.p:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit
  %i.en = atomicrmw add ptr %i.em, i32 -1 acq_rel, align 4
  %i.eo = icmp eq i32 %i.en, 1
  br i1 %i.eo, label %bb.q, label %_ZN4ncnn3MatD2Ev.exit92

bb.q:                                             ; preds = %bb.p
  %i.ep = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i96 = icmp eq ptr %i.ep, null
  %i.eq = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i96, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !28
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  invoke void %i.et(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef %i.eq)
          to label %_ZN4ncnn3MatD2Ev.exit92 unwind label %bb.u, !inline_history !1

bb.s:                                             ; preds = %bb.q
  %.not.i104 = icmp eq ptr %i.eq, null
  br i1 %.not.i104, label %_ZN4ncnn3MatD2Ev.exit92, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.eq) #25
  br label %_ZN4ncnn3MatD2Ev.exit92

bb.u:                                             ; preds = %bb.r
  %i.eu = landingpad { ptr, i32 }
          catch ptr null
  %i.ev = extractvalue { ptr, i32 } %i.eu, 0
  call void @__clang_call_terminate(ptr %i.ev) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit92:                          ; preds = %bb.p, %_ZN4ncnn3MataSERKS0_.exit, %bb.r, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.ew = getelementptr inbounds nuw i8, ptr %i.u, i64 440
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !76
  %i.ey = getelementptr inbounds nuw i8, ptr %i.u, i64 432
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !88
  %i.fa = trunc i64 %i.ex to i32
  %i.fb = mul i32 %i.ez, %i.fa                    ; 2 uses
  %i.fc = load ptr, ptr %i.dl, align 8, !tbaa !79 ; 3 uses
  %i.fd = icmp sgt i32 %i.fb, 0
  br i1 %i.fd, label %.lr.ph201.preheader, label %.lr.ph207

.lr.ph201.preheader:                              ; preds = %_ZN4ncnn3MatD2Ev.exit92
  %i.fe = zext nneg i32 %i.fb to i64
  %i.ff = shl nuw nsw i64 %i.fe, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fc, i8 0, i64 %i.ff, i1 false), !tbaa !90
  br label %.lr.ph207

bb.v:                                             ; preds = %bb.g
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit

bb.w:                                             ; preds = %bb.m
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.fi = load ptr, ptr %i.j, align 8, !tbaa !77  ; 2 uses
  %.not.i99 = icmp eq ptr %i.fi, null
  br i1 %.not.i99, label %_ZN4ncnn3MatD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fj = atomicrmw add ptr %i.fi, i32 -1 acq_rel, align 4
  %i.fk = icmp eq i32 %i.fj, 1
  br i1 %i.fk, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.fl = load ptr, ptr %i.m, align 16, !tbaa !78 ; 3 uses
  %.not3.i100 = icmp eq ptr %i.fl, null
  %i.fm = load ptr, ptr %1, align 16, !tbaa !79   ; 3 uses
  br i1 %.not3.i100, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fn = load ptr, ptr %i.fl, align 8, !tbaa !28
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8
  invoke void %i.fp(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, ptr noundef %i.fm)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ac, !inline_history !1

bb.aa:                                            ; preds = %bb.y
  %.not.i103 = icmp eq ptr %i.fm, null
  br i1 %.not.i103, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.fm) #25
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ac:                                            ; preds = %bb.z
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.w, %bb.x, %bb.v
  %.pn = phi { ptr, i32 } [ %i.fg, %bb.v ], [ %i.fh, %bb.x ], [ %i.fh, %bb.w ], [ %i.fh, %bb.z ], [ %i.fh, %bb.aa ], [ %i.fh, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.not.i.i.i124 = icmp eq ptr %.sroa.0128.0258, null
  br i1 %.not.i.i.i124, label %_ZNSt6vectorIfSaIfEED2Ev.exit125, label %bb.ae

.lr.ph207:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit92, %.lr.ph201.preheader, %._crit_edge198._ZN4ncnn3Mat4fillEf.exit_crit_edge
  %i.fs = phi ptr [ %.pre235, %._crit_edge198._ZN4ncnn3Mat4fillEf.exit_crit_edge ], [ %i.fc, %.lr.ph201.preheader ], [ %i.fc, %_ZN4ncnn3MatD2Ev.exit92 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.u, i64 216
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !172
  %i.fv = sdiv i32 %i.fu, %i.bw                   ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.u, i64 304
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !79 ; 3 uses
  %i.fy = icmp sgt i32 %i.fv, 0
  %2 = zext nneg i32 %i.fv to i64
  %wide.trip.count232 = zext nneg i32 %i.bw to i64 ; 3 uses
  %wide.trip.count226 = zext i32 %i.fv to i64     ; 6 uses
  %i.fz = shl nuw nsw i64 %wide.trip.count232, 2
  %scevgep = getelementptr i8, ptr %.sroa.0128.0258, i64 %i.fz
  %i.ga = shl nuw nsw i64 %wide.trip.count232, 2
  %i.gb = mul i64 %i.ga, %wide.trip.count226
  %scevgep274 = getelementptr i8, ptr %i.fx, i64 %i.gb
  %min.iters.check = icmp ult i32 %i.fv, 8
  %bound0 = icmp ult ptr %i.fx, %scevgep
  %bound1 = icmp ult ptr %.sroa.0128.0258, %scevgep274
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count226, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count226
  %xtraiter = and i64 %wide.trip.count226, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.ad

_ZNSt6vectorIfSaIfEED2Ev.exit123:                 ; preds = %._crit_edge205
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0128.0258) #26
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0134.0144256) #26
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bo, i64 136
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !80
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !81 ; 2 uses
  %i.gf = load ptr, ptr %i.aj, align 8, !tbaa !80
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !81
  %i.gg = trunc i64 %.077209 to i32
  %i.gh = load ptr, ptr %i.q, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.gi = sext i32 %i.ge to i64
  %i.gj = load ptr, ptr %i.gh, align 8, !tbaa !51
  %i.gk = getelementptr inbounds nuw [112 x i8], ptr %i.gj, i64 %i.gi
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  store i32 %i.gg, ptr %i.gl, align 8, !tbaa !118
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !58
  %i.gp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.gm, i64 noundef 0, i64 noundef %i.go, ptr noundef nonnull @.str.8, i64 noundef 9) ; 0 uses
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.ad:                                            ; preds = %.lr.ph207, %._crit_edge205
  %indvars.iv228 = phi i64 [ 0, %.lr.ph207 ], [ %indvars.iv.next229, %._crit_edge205 ] ; 6 uses
  %i.gq = mul nuw nsw i64 %indvars.iv228, %2
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.gq ; 6 uses
  br i1 %i.fy, label %.lr.ph204, label %._crit_edge205

.lr.ph204:                                        ; preds = %bb.ad
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0128.0258, i64 %indvars.iv228 ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph204
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !90, !alias.scope !975
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gt, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %index ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.gu, align 4, !tbaa !90, !alias.scope !976, !noalias !975
  %wide.load275 = load <4 x float>, ptr %i.gv, align 4, !tbaa !90, !alias.scope !976, !noalias !975
  %i.gw = fmul <4 x float> %broadcast.splat, %wide.load
  %i.gx = fmul <4 x float> %broadcast.splat, %wide.load275
  store <4 x float> %i.gw, ptr %i.gu, align 4, !tbaa !90, !alias.scope !976, !noalias !975
  store <4 x float> %i.gx, ptr %i.gv, align 4, !tbaa !90, !alias.scope !976, !noalias !975
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gy = icmp eq i64 %index.next, %n.vec
  br i1 %i.gy, label %middle.block, label %vector.body, !llvm.loop !970

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge205, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph204, %middle.block
  %indvars.iv223.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph204 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv223.prol = phi i64 [ %indvars.iv.next224.prol, %scalar.ph.prol ], [ %indvars.iv223.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gz = load float, ptr %i.gs, align 4, !tbaa !90
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv223.prol ; 2 uses
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !90
  %i.hc = fmul float %i.gz, %i.hb
  store float %i.hc, ptr %i.ha, align 4, !tbaa !90
  %indvars.iv.next224.prol = add nuw nsw i64 %indvars.iv223.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !971

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv223.unr = phi i64 [ %indvars.iv223.ph, %scalar.ph.preheader ], [ %indvars.iv.next224.prol, %scalar.ph.prol ]
  %i.hd = sub nsw i64 %indvars.iv223.ph, %wide.trip.count226
  %i.he = icmp ugt i64 %i.hd, -4
  br i1 %i.he, label %._crit_edge205, label %scalar.ph

._crit_edge205:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ad
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv228 ; 2 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !90
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0128.0258, i64 %indvars.iv228
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !90
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0134.0144256, i64 %indvars.iv228
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !90
  %i.hl = call float @llvm.fmuladd.f32(float %i.hg, float %i.hi, float %i.hk)
  store float %i.hl, ptr %i.hf, align 4, !tbaa !90
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond233.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count232
  br i1 %exitcond233.not, label %_ZNSt6vectorIfSaIfEED2Ev.exit123, label %bb.ad, !llvm.loop !972

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv223 = phi i64 [ %indvars.iv.next224.3, %scalar.ph ], [ %indvars.iv223.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.hm = load float, ptr %i.gs, align 4, !tbaa !90
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv223 ; 2 uses
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !90
  %i.hp = fmul float %i.hm, %i.ho
  store float %i.hp, ptr %i.hn, align 4, !tbaa !90
  %i.hq = load float, ptr %i.gs, align 4, !tbaa !90
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv223
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4 ; 2 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !90
  %i.hu = fmul float %i.hq, %i.ht
  store float %i.hu, ptr %i.hs, align 4, !tbaa !90
  %i.hv = load float, ptr %i.gs, align 4, !tbaa !90
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv223
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 2 uses
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !90
  %i.hz = fmul float %i.hv, %i.hy
  store float %i.hz, ptr %i.hx, align 4, !tbaa !90
  %i.ia = load float, ptr %i.gs, align 4, !tbaa !90
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv223
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 12 ; 2 uses
  %i.id = load float, ptr %i.ic, align 4, !tbaa !90
  %i.ie = fmul float %i.ia, %i.id
  store float %i.ie, ptr %i.ic, align 4, !tbaa !90
  %indvars.iv.next224.3 = add nuw nsw i64 %indvars.iv223, 4 ; 2 uses
  %exitcond227.not.3 = icmp eq i64 %indvars.iv.next224.3, %wide.trip.count226
  br i1 %exitcond227.not.3, label %._crit_edge205, label %scalar.ph, !llvm.loop !973

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit110.thread, %bb.b, %_ZNSt6vectorIfSaIfEED2Ev.exit123, %._crit_edge, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.if = add nuw i64 %.077209, 1                 ; 2 uses
  %exitcond234.not = icmp eq i64 %i.if, %i.i
  br i1 %exitcond234.not, label %._crit_edge212, label %bb.b, !llvm.loop !974

bb.ae:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0128.0258) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit125

_ZNSt6vectorIfSaIfEED2Ev.exit125:                 ; preds = %bb.ae, %_ZN4ncnn3MatD2Ev.exit
  %.not.i.i.i126 = icmp eq ptr %.sroa.0134.0144256, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIfSaIfEED2Ev.exit127, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread, %_ZNSt6vectorIfSaIfEED2Ev.exit125
  %.pn88.pn152 = phi { ptr, i32 } [ %i.ct, %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  %.sroa.0134.0142151 = phi ptr [ %i.cc, %_ZNSt6vectorIfSaIfEED2Ev.exit125.thread ], [ %.sroa.0134.0144256, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0134.0142151) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit127

_ZNSt6vectorIfSaIfEED2Ev.exit127:                 ; preds = %bb.af, %_ZNSt6vectorIfSaIfEED2Ev.exit125
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn88.pn152, %bb.af ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit125 ]
  resume { ptr, i32 } %.pn88.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11NetOptimize21fuse_innerproduct_addEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.ncnn::Mat", align 16        ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 4 uses
  %.not112 = icmp eq ptr %i.d, %i.e
  br i1 %.not112, label %._crit_edge111, label %.lr.ph110

.lr.ph110:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

._crit_edge111:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph110, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.067108 = phi i64 [ 0, %.lr.ph110 ], [ %i.hf, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 4 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 5 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.067108
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53   ; 16 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !58
  %i.x = icmp eq i64 %i.w, 12
  br i1 %i.x, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57   ; 2 uses
  %i.aa = load i64, ptr %i.z, align 1
  %i.ab = xor i64 %i.aa, 8030569537813245513
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = zext i32 %i.ad to i64
  %i.af = xor i64 %i.ae, 1952675172
  %i.ag = or i64 %i.ab, %i.af
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %.not97 = icmp eq i32 %i.ai, 0
  br i1 %.not97, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 136 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !80
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !81
  %.066100 = add nuw i64 %.067108, 1              ; 3 uses
  %i.am = icmp ult i64 %.066100, %i.i
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread
  %.066101 = phi i64 [ %.066, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread ], [ %.066100, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread94 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.066101
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !53 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !58
  %i.ar = icmp eq i64 %i.aq, 8
  br i1 %i.ar, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90: ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !57
  %i.au = load i64, ptr %i.at, align 1
  %i.av = icmp ne i64 %i.au, 8092820587575929154
  %i.aw = zext i1 %i.av to i32
  %.not98 = icmp eq i32 %i.aw, 0
  br i1 %.not98, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread95, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit90.thread
end_hunk_4
