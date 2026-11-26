Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btCollisionWorldImporter?download=true
inline.NumInlined: 1114
inline.NumDeleted: 494
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 75
begin_hunk_0_@_ZN24btCollisionWorldImporter21convertCollisionShapeEP20btCollisionShapeData:bb.a
bb.z:                                             ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fn)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  tail call void @__clang_call_terminate(ptr %i.fr) #23
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.an

bb.ab:                                            ; preds = %bb.f
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !356 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.fu = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store i8 1, ptr %i.fu, align 8, !tbaa !346
  %i.fv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr null, ptr %i.fv, align 8, !tbaa !193
  %i.fw = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 3 uses
  store i32 0, ptr %i.fw, align 4, !tbaa !347
  %i.fx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 0, ptr %i.fx, align 8, !tbaa !348
  %i.fy = icmp sgt i32 %i.ft, 0                   ; 2 uses
  br i1 %i.fy, label %bb.ac, label %.loopexit298

bb.ac:                                            ; preds = %bb.ab
  %i.fz = zext nneg i32 %i.ft to i64
  %i.ga = shl nuw nsw i64 %i.fz, 4
  %i.gb = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ga, i32 noundef 16)
          to label %.lr.ph305 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.loopexit298:                                     ; preds = %bb.ab
  store i32 %i.ft, ptr %i.fw, align 4, !tbaa !347
  br label %._crit_edge306

.lr.ph305:                                        ; preds = %bb.ac
  store i8 1, ptr %i.fu, align 8, !tbaa !346
  store ptr %i.gb, ptr %i.fv, align 8, !tbaa !193
  store i32 %i.ft, ptr %i.fx, align 8, !tbaa !348
  store i32 %i.ft, ptr %i.fw, align 4, !tbaa !347
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !357 ; 2 uses
  %.not162 = icmp eq ptr %i.gd, null
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !358 ; 2 uses
  %.not163 = icmp eq ptr %i.gf, null
  %wide.trip.count = zext nneg i32 %i.ft to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph305, %bb.ah
  %indvars.iv319 = phi i64 [ 0, %.lr.ph305 ], [ %indvars.iv.next320, %bb.ah ] ; 5 uses
  br i1 %.not162, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %indvars.iv319 ; 4 uses
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %indvars.iv319 ; 4 uses
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !169
  store float %i.gi, ptr %i.gg, align 4, !tbaa !169
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !169
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store float %i.gk, ptr %i.gl, align 4, !tbaa !169
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !169
  %i.go = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store float %i.gn, ptr %i.go, align 4, !tbaa !169
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !169
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  store float %i.gq, ptr %i.gr, align 4, !tbaa !169
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  br i1 %.not163, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %indvars.iv319
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.gf, i64 %indvars.iv319
  %i.gu = load <4 x double>, ptr %i.gt, align 8, !tbaa !167
  %i.gv = fptrunc <4 x double> %i.gu to <4 x float>
  store <4 x float> %i.gv, ptr %i.gs, align 4, !tbaa !169
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next320, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge306, label %bb.ad, !llvm.loop !327

._crit_edge306:                                   ; preds = %bb.ah, %.loopexit298
  %i.gw = phi ptr [ null, %.loopexit298 ], [ %i.gb, %bb.ah ] ; 3 uses
  %i.gx = load ptr, ptr %0, align 8, !tbaa !18
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 160
  %i.gz = load ptr, ptr %i.gy, align 8
  %i.ha = invoke noundef ptr %i.gz(ptr noundef nonnull align 8 dereferenceable(1336) %0)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.preheader:                                       ; preds = %._crit_edge306
  br i1 %i.fy, label %.lr.ph308.preheader, label %._crit_edge309

.lr.ph308.preheader:                              ; preds = %.preheader
  %wide.trip.count325 = zext nneg i32 %i.ft to i64
  br label %.lr.ph308

.lr.ph308:                                        ; preds = %.lr.ph308.preheader, %bb.ai
  %indvars.iv322 = phi i64 [ 0, %.lr.ph308.preheader ], [ %indvars.iv.next323, %bb.ai ] ; 2 uses
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %i.gw, i64 %indvars.iv322
  invoke void @_ZN17btConvexHullShape8addPointERK9btVector3b(ptr noundef nonnull align 8 dereferenceable(152) %i.ha, ptr noundef nonnull align 4 dereferenceable(16) %i.hb, i1 noundef zeroext true)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %.lr.ph308
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %exitcond326.not = icmp eq i64 %indvars.iv.next323, %wide.trip.count325
  br i1 %exitcond326.not, label %._crit_edge309, label %.lr.ph308, !llvm.loop !328

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph308, %bb.ac, %._crit_edge309, %._crit_edge306
  %lpad.loopexit.split-lp358 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bn

._crit_edge309:                                   ; preds = %bb.ai, %.preheader
  %i.hc = load float, ptr %i.bo, align 8, !tbaa !359
  %i.hd = load ptr, ptr %i.ha, align 8, !tbaa !18
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 88
  %i.hf = load ptr, ptr %i.he, align 8
  invoke void %i.hf(ptr noundef nonnull align 8 dereferenceable(72) %i.ha, float noundef %i.hc)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %._crit_edge309
  %.not.i.i.i223.not = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i223.not, label %.thread279, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.gw)
          to label %.thread279 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hg = landingpad { ptr, i32 }
          catch ptr null
  %i.hh = extractvalue { ptr, i32 } %i.hg, 0
  tail call void @__clang_call_terminate(ptr %i.hh) #23
  unreachable

.thread279:                                       ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ao

bb.am:                                            ; preds = %bb.f
  %i.hi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.b) ; 0 uses
  br label %common.ret

bb.an:                                            ; preds = %bb.o, %bb.p, %bb.q, %bb.j, %bb.k, %bb.l, %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit, %bb.h, %bb.g
  %.3141 = phi ptr [ %i.dj, %bb.o ], [ %i.cd, %bb.g ], [ %i.ci, %bb.h ], [ %i.du, %bb.q ], [ %i.db, %bb.l ], [ %i.fh, %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit ], [ %i.dp, %bb.p ], [ %i.cs, %bb.j ], [ %i.cw, %bb.k ] ; 2 uses
  %.not170 = icmp eq ptr %.3141, null
  br i1 %.not170, label %common.ret, label %bb.ao

bb.ao:                                            ; preds = %.thread279, %bb.an
  %.3141282 = phi ptr [ %i.ha, %.thread279 ], [ %.3141, %bb.an ] ; 5 uses
  %i.hj = load float, ptr %i.bo, align 8, !tbaa !359
  %i.hk = load ptr, ptr %.3141282, align 8, !tbaa !18
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 88
  %i.hm = load ptr, ptr %i.hl, align 8
  call void %i.hm(ptr noundef nonnull align 8 dereferenceable(32) %.3141282, float noundef %i.hj)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.hn = load <4 x float>, ptr %i.bn, align 8, !tbaa !169
  store <4 x float> %i.hn, ptr %9, align 16, !tbaa !169
  %i.ho = load ptr, ptr %.3141282, align 8, !tbaa !18
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 48
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(32) %.3141282, ptr noundef nonnull align 4 dereferenceable(16) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %common.ret

bb.ap:                                            ; preds = %bb.a
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hs = load ptr, ptr %0, align 8, !tbaa !18
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 152
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = tail call noundef ptr %i.hu(ptr noundef nonnull align 8 dereferenceable(1336) %0, ptr noundef nonnull %i.hr)
  %i.hw = load ptr, ptr %0, align 8, !tbaa !18
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 192
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = tail call noundef ptr %i.hy(ptr noundef nonnull align 8 dereferenceable(1336) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.hv) ; 4 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !18
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 56
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = tail call noundef i32 %i.ic(ptr noundef nonnull align 8 dereferenceable(100) %i.hz)
  %.not152.not = icmp eq i32 %i.id, 0
  br i1 %.not152.not, label %common.ret, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.if = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ig = load <4 x float>, ptr %i.ie, align 8, !tbaa !169
  store <4 x float> %i.ig, ptr %i.if, align 8, !tbaa !148
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !362 ; 3 uses
  %.not153 = icmp eq ptr %i.ii, null
  br i1 %.not153, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ij = ptrtoint ptr %i.ii to i64               ; 2 uses
  %.sroa.0238.0.extract.trunc = trunc i64 %i.ij to i32
  %.sroa.0238.4.extract.shift = lshr i64 %i.ij, 32
  %.sroa.0238.4.extract.trunc = trunc nuw i64 %.sroa.0238.4.extract.shift to i32
  %i.ik = add i32 %.sroa.0238.4.extract.trunc, %.sroa.0238.0.extract.trunc ; 2 uses
  %i.il = shl i32 %i.ik, 15
  %i.im = xor i32 %i.il, -1
  %i.in = add i32 %i.ik, %i.im                    ; 2 uses
  %i.io = lshr i32 %i.in, 10
  %i.ip = xor i32 %i.io, %i.in
  %i.iq = mul i32 %i.ip, 9                        ; 2 uses
  %i.ir = lshr i32 %i.iq, 6
  %i.is = xor i32 %i.ir, %i.iq                    ; 2 uses
  %i.it = shl i32 %i.is, 11
  %i.iu = xor i32 %i.it, -1
  %i.iv = add i32 %i.is, %i.iu                    ; 2 uses
  %i.iw = lshr i32 %i.iv, 16
  %i.ix = xor i32 %i.iw, %i.iv
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !89
  %i.ja = add nsw i32 %i.iz, -1
  %i.jb = and i32 %i.ja, %i.ix                    ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !128
  %.not.i.i = icmp ult i32 %i.jb, %i.jd
  br i1 %.not.i.i, label %bb.as, label %_ZN9btHashMapI9btHashPtrP14btOptimizedBvhE4findERKS0_.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !127
  %i.jg = sext i32 %i.jb to i64
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %i.jg
  %.012.i.i = load i32, ptr %i.jh, align 4, !tbaa !166 ; 2 uses
  %.not1113.i.i = icmp eq i32 %.012.i.i, -1
  br i1 %.not1113.i.i, label %_ZN9btHashMapI9btHashPtrP14btOptimizedBvhE4findERKS0_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.as
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !131
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 488
  br label %bb.at

bb.at:                                            ; preds = %bb.au, %.lr.ph.i.i
  %.014.i.i = phi i32 [ %.012.i.i, %.lr.ph.i.i ], [ %.0.i.i, %bb.au ]
  %i.jl = sext i32 %.014.i.i to i64               ; 3 uses
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.jj, i64 %i.jl
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !148
  %i.jo = icmp eq ptr %i.ii, %i.jn
  br i1 %i.jo, label %_ZN9btHashMapI9btHashPtrP14btOptimizedBvhE4findERKS0_.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jp = load ptr, ptr %i.jk, align 8, !tbaa !127
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.jp, i64 %i.jl
  %.0.i.i = load i32, ptr %i.jq, align 4, !tbaa !166 ; 2 uses
  %.not11.i.i = icmp eq i32 %.0.i.i, -1
  br i1 %.not11.i.i, label %_ZN9btHashMapI9btHashPtrP14btOptimizedBvhE4findERKS0_.exit.thread, label %bb.at, !llvm.loop !3

_ZN9btHashMapI9btHashPtrP14btOptimizedBvhE4findERKS0_.exit: ; preds = %bb.at
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !87 ; 2 uses
  %.not154 = icmp eq ptr %i.js, null
  br i1 %.not154, label %_ZN9btHashMapI9btHashPtrP14btOptimizedBvhE4findERKS0_.exit.thread, label %bb.av

bb.av:                                            ; preds = %_ZN9btHashMapI9btHashPtrP14btOptimizedBvhE4findERKS0_.exit
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.js, i64 %i.jl
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !152 ; 2 uses
  %.not155 = icmp eq ptr %i.ju, null
  br i1 %.not155, label %_ZN9btHashMapI9btHashPtrP14btOptimizedBvhE4findERKS0_.exit.thread, label %bb.aw

_ZN9btHashMapI9btHashPtrP14btOptimizedBvhE4findERKS0_.exit.thread: ; preds = %bb.au, %bb.as, %bb.ar, %bb.av, %_ZN9btHashMapI9btHashPtrP14btOptimizedBvhE4findERKS0_.exit
  %i.jv = load ptr, ptr %0, align 8, !tbaa !18
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 200
  %i.jx = load ptr, ptr %i.jw, align 8
  %i.jy = tail call noundef ptr %i.jx(ptr noundef nonnull align 8 dereferenceable(1336) %0) ; 3 uses
  %i.jz = load ptr, ptr %i.ih, align 8, !tbaa !362
  %i.ka = load ptr, ptr %i.jy, align 8, !tbaa !18
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 40
  %i.kc = load ptr, ptr %i.kb, align 8
  tail call void %i.kc(ptr noundef nonnull align 8 dereferenceable(244) %i.jy, ptr noundef nonnull align 8 dereferenceable(96) %i.jz)
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN9btHashMapI9btHashPtrP14btOptimizedBvhE4findERKS0_.exit.thread, %bb.av, %bb.aq
  %.1123 = phi ptr [ null, %bb.aq ], [ %i.jy, %_ZN9btHashMapI9btHashPtrP14btOptimizedBvhE4findERKS0_.exit.thread ], [ %i.ju, %bb.av ]
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !363 ; 3 uses
  %.not156 = icmp eq ptr %i.ke, null
  br i1 %.not156, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kf = ptrtoint ptr %i.ke to i64               ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.kf to i32
  %.sroa.0.4.extract.shift = lshr i64 %i.kf, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  %i.kg = add i32 %.sroa.0.4.extract.trunc, %.sroa.0.0.extract.trunc ; 2 uses
  %i.kh = shl i32 %i.kg, 15
  %i.ki = xor i32 %i.kh, -1
  %i.kj = add i32 %i.kg, %i.ki                    ; 2 uses
  %i.kk = lshr i32 %i.kj, 10
  %i.kl = xor i32 %i.kk, %i.kj
  %i.km = mul i32 %i.kl, 9                        ; 2 uses
  %i.kn = lshr i32 %i.km, 6
  %i.ko = xor i32 %i.kn, %i.km                    ; 2 uses
  %i.kp = shl i32 %i.ko, 11
  %i.kq = xor i32 %i.kp, -1
  %i.kr = add i32 %i.ko, %i.kq                    ; 2 uses
  %i.ks = lshr i32 %i.kr, 16
  %i.kt = xor i32 %i.ks, %i.kr
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !89
  %i.kw = add nsw i32 %i.kv, -1
  %i.kx = and i32 %i.kw, %i.kt                    ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !128
  %.not.i.i226 = icmp ult i32 %i.kx, %i.kz
  br i1 %.not.i.i226, label %bb.ay, label %_ZN9btHashMapI9btHashPtrP14btOptimizedBvhE4findERKS0_.exit235.thread

bb.ay:                                            ; preds = %bb.ax
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !127
  %i.lc = sext i32 %i.kx to i64
  %i.ld = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %i.lc
  %.012.i.i228 = load i32, ptr %i.ld, align 4, !tbaa !166 ; 2 uses
  %.not1113.i.i229 = icmp eq i32 %.012.i.i228, -1
  br i1 %.not1113.i.i229, label %_ZN9btHashMapI9btHashPtrP14btOptimizedBvhE4findERKS0_.exit235.thread, label %.lr.ph.i.i230

.lr.ph.i.i230:                                    ; preds = %bb.ay
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !131
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 488
  br label %bb.az

bb.az:                                            ; preds = %bb.ba, %.lr.ph.i.i230
  %.014.i.i231 = phi i32 [ %.012.i.i228, %.lr.ph.i.i230 ], [ %.0.i.i232, %bb.ba ]
  %i.lh = sext i32 %.014.i.i231 to i64            ; 3 uses
  %i.li = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %i.lh
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !148
  %i.lk = icmp eq ptr %i.ke, %i.lj
  br i1 %i.lk, label %_ZN9btHashMapI9btHashPtrP14btOptimizedBvhE4findERKS0_.exit235, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ll = load ptr, ptr %i.lg, align 8, !tbaa !127
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.ll, i64 %i.lh
  %.0.i.i232 = load i32, ptr %i.lm, align 4, !tbaa !166 ; 2 uses
  %.not11.i.i233 = icmp eq i32 %.0.i.i232, -1
  br i1 %.not11.i.i233, label %_ZN9btHashMapI9btHashPtrP14btOptimizedBvhE4findERKS0_.exit235.thread, label %bb.az, !llvm.loop !3

_ZN9btHashMapI9btHashPtrP14btOptimizedBvhE4findERKS0_.exit235: ; preds = %bb.az
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !87 ; 2 uses
  %.not157 = icmp eq ptr %i.lo, null
  br i1 %.not157, label %_ZN9btHashMapI9btHashPtrP14btOptimizedBvhE4findERKS0_.exit235.thread, label %bb.bb

bb.bb:                                            ; preds = %_ZN9btHashMapI9btHashPtrP14btOptimizedBvhE4findERKS0_.exit235
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.lo, i64 %i.lh
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !152 ; 2 uses
  %.not158 = icmp eq ptr %i.lq, null
  br i1 %.not158, label %_ZN9btHashMapI9btHashPtrP14btOptimizedBvhE4findERKS0_.exit235.thread, label %bb.bc

_ZN9btHashMapI9btHashPtrP14btOptimizedBvhE4findERKS0_.exit235.thread: ; preds = %bb.ba, %bb.ay, %bb.ax, %bb.bb, %_ZN9btHashMapI9btHashPtrP14btOptimizedBvhE4findERKS0_.exit235
  %i.lr = load ptr, ptr %0, align 8, !tbaa !18
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 200
  %i.lt = load ptr, ptr %i.ls, align 8
  %i.lu = tail call noundef ptr %i.lt(ptr noundef nonnull align 8 dereferenceable(1336) %0) ; 3 uses
  %i.lv = load ptr, ptr %i.kd, align 8, !tbaa !363
  %i.lw = load ptr, ptr %i.lu, align 8, !tbaa !18
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 48
  %i.ly = load ptr, ptr %i.lx, align 8
  tail call void %i.ly(ptr noundef nonnull align 8 dereferenceable(244) %i.lu, ptr noundef nonnull align 8 dereferenceable(144) %i.lv)
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN9btHashMapI9btHashPtrP14btOptimizedBvhE4findERKS0_.exit235.thread, %bb.bb, %bb.aw
  %.3 = phi ptr [ %.1123, %bb.aw ], [ %i.lu, %_ZN9btHashMapI9btHashPtrP14btOptimizedBvhE4findERKS0_.exit235.thread ], [ %i.lq, %bb.bb ]
  %i.lz = load ptr, ptr %0, align 8, !tbaa !18
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 136
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = tail call noundef ptr %i.mb(ptr noundef nonnull align 8 dereferenceable(1336) %0, ptr noundef nonnull %i.hz, ptr noundef %.3) ; 5 uses
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.me = load float, ptr %i.md, align 8, !tbaa !364
  %i.mf = load ptr, ptr %i.mc, align 8, !tbaa !18
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 88
  %i.mh = load ptr, ptr %i.mg, align 8
  tail call void %i.mh(ptr noundef nonnull align 8 dereferenceable(36) %i.mc, float noundef %i.me)
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !365
  %.not159 = icmp eq ptr %i.mj, null
  br i1 %.not159, label %common.ret, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.mk = load ptr, ptr %0, align 8, !tbaa !18
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 208
  %i.mm = load ptr, ptr %i.ml, align 8
  %i.mn = tail call noundef ptr %i.mm(ptr noundef nonnull align 8 dereferenceable(1336) %0) ; 2 uses
  %i.mo = load ptr, ptr %i.mi, align 8, !tbaa !365
  tail call void @_ZN17btTriangleInfoMap11deSerializeER21btTriangleInfoMapData(ptr noundef nonnull align 8 dereferenceable(160) %i.mn, ptr noundef nonnull align 8 dereferenceable(72) %i.mo)
end_hunk_0
begin_hunk_1_@_ZN24btCollisionWorldImporter19createMeshInterfaceER27btStridingMeshInterfaceData:bb.a
.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.aj
  %lcmp.mod469.not = icmp eq i64 %xtraiter468, 0
  br i1 %lcmp.mod469.not, label %.loopexit, label %.epil.preheader467

.epil.preheader467:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph226
  %indvars.iv253.epil.init = phi i64 [ 0, %.lr.ph226 ], [ %indvars.iv.next254.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod470 = trunc i32 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod470)
  %i.sr = getelementptr inbounds nuw [32 x i8], ptr %i.rr, i64 %indvars.iv253.epil.init ; 4 uses
  %i.ss = load double, ptr %i.sr, align 8, !tbaa !167
  %i.st = getelementptr inbounds nuw [32 x i8], ptr %i.pv, i64 %indvars.iv253.epil.init ; 4 uses
  store double %i.ss, ptr %i.st, align 8, !tbaa !167
  %i.su = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.sv = load double, ptr %i.su, align 8, !tbaa !167
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  store double %i.sv, ptr %i.sw, align 8, !tbaa !167
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %i.sy = load double, ptr %i.sx, align 8, !tbaa !167
  %i.sz = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  store double %i.sy, ptr %i.sz, align 8, !tbaa !167
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sr, i64 24
  %i.tb = load double, ptr %i.ta, align 8, !tbaa !167
  %i.tc = getelementptr inbounds nuw i8, ptr %i.st, i64 24
  store double %i.tb, ptr %i.tc, align 8, !tbaa !167
  br label %.loopexit

.loopexit.loopexit435.unr-lcssa:                  ; preds = %bb.ad
  %lcmp.mod460.not = icmp eq i64 %xtraiter459, 0
  br i1 %lcmp.mod460.not, label %.loopexit, label %.epil.preheader458

.epil.preheader458:                               ; preds = %.loopexit.loopexit435.unr-lcssa, %.lr.ph224
  %indvars.iv248.epil.init = phi i64 [ 0, %.lr.ph224 ], [ %indvars.iv.next249.1, %.loopexit.loopexit435.unr-lcssa ] ; 2 uses
  %lcmp.mod461 = trunc i32 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod461)
  %i.td = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %indvars.iv248.epil.init ; 4 uses
  %i.te = load float, ptr %i.td, align 4, !tbaa !169
  %i.tf = getelementptr inbounds nuw [16 x i8], ptr %i.mz, i64 %indvars.iv248.epil.init ; 4 uses
  store float %i.te, ptr %i.tf, align 4, !tbaa !169
  %i.tg = getelementptr inbounds nuw i8, ptr %i.td, i64 4
  %i.th = load float, ptr %i.tg, align 4, !tbaa !169
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 4
  store float %i.th, ptr %i.ti, align 4, !tbaa !169
  %i.tj = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !169
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  store float %i.tk, ptr %i.tl, align 4, !tbaa !169
  %i.tm = getelementptr inbounds nuw i8, ptr %i.td, i64 12
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !169
  %i.to = getelementptr inbounds nuw i8, ptr %i.tf, i64 12
  store float %i.tn, ptr %i.to, align 4, !tbaa !169
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader458, %.loopexit.loopexit435.unr-lcssa, %.epil.preheader467, %.loopexit.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE9push_backERKS1_.exit, %_ZN20btAlignedObjectArrayIP19btVector3DoubleDataE9push_backERKS1_.exit
  %.sroa.37.0 = phi i32 [ 1, %_ZN20btAlignedObjectArrayIP19btVector3DoubleDataE9push_backERKS1_.exit ], [ 0, %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE9push_backERKS1_.exit ], [ 1, %.epil.preheader467 ], [ 1, %.loopexit.loopexit.unr-lcssa ], [ 0, %.loopexit.loopexit435.unr-lcssa ], [ 0, %.epil.preheader458 ]
  %.sroa.29.0 = phi i32 [ 32, %_ZN20btAlignedObjectArrayIP19btVector3DoubleDataE9push_backERKS1_.exit ], [ 16, %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE9push_backERKS1_.exit ], [ 32, %.epil.preheader467 ], [ 32, %.loopexit.loopexit.unr-lcssa ], [ 16, %.loopexit.loopexit435.unr-lcssa ], [ 16, %.epil.preheader458 ]
  %.sroa.26.0 = phi ptr [ %i.pv, %_ZN20btAlignedObjectArrayIP19btVector3DoubleDataE9push_backERKS1_.exit ], [ %i.mz, %_ZN20btAlignedObjectArrayIP18btVector3FloatDataE9push_backERKS1_.exit ], [ %i.pv, %.epil.preheader467 ], [ %i.pv, %.loopexit.loopexit.unr-lcssa ], [ %i.mz, %.loopexit.loopexit435.unr-lcssa ], [ %i.mz, %.epil.preheader458 ] ; 2 uses
  %i.tp = icmp ne ptr %.sroa.12207.2, null
  %i.tq = icmp ne ptr %.sroa.26.0, null
  %or.cond = and i1 %i.tp, %i.tq
  br i1 %or.cond, label %bb.ak, label %bb.ar

bb.ak:                                            ; preds = %.loopexit
  %i.tr = load i32, ptr %i.ab, align 4, !tbaa !267 ; 7 uses
  %i.ts = load i32, ptr %i.ac, align 8, !tbaa !268
  %i.tt = icmp eq i32 %i.tr, %i.ts
  br i1 %i.tt, label %bb.al, label %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit

bb.al:                                            ; preds = %bb.ak
  %.not.i.i.i172 = icmp eq i32 %i.tr, 0
  %i.tu = shl nsw i32 %i.tr, 1
  %i.tv = select i1 %.not.i.i.i172, i32 1, i32 %i.tu ; 4 uses
  %i.tw = icmp slt i32 %i.tr, %i.tv
  br i1 %i.tw, label %bb.am, label %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit

bb.am:                                            ; preds = %bb.al
  %.not.i.i.i.i = icmp eq i32 %i.tv, 0
  br i1 %.not.i.i.i.i, label %_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.tx = sext i32 %i.tv to i64
  %i.ty = mul nsw i64 %i.tx, 48
  %i.tz = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ty, i32 noundef 16)
  %.pre.i.i = load i32, ptr %i.ab, align 4, !tbaa !267
  br label %_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i: ; preds = %bb.an, %bb.am
  %i.ua = phi i32 [ %.pre.i.i, %bb.an ], [ %i.tr, %bb.am ] ; 4 uses
  %.0.i.i.i.i = phi ptr [ %i.tz, %bb.an ], [ null, %bb.am ] ; 4 uses
  %i.ub = icmp sgt i32 %i.ua, 0
  br i1 %i.ub, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.ua to i64 ; 2 uses
  %xtraiter474 = and i64 %wide.trip.count.i.i.i.i, 1
  %i.uc = icmp eq i32 %i.ua, 1
  br i1 %i.uc, label %.epil.preheader473, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter477 = and i64 %wide.trip.count.i.i.i.i, 2147483646
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph.i.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.1, %bb.ao ] ; 4 uses
  %niter478 = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter478.next.1, %bb.ao ]
  %i.ud = getelementptr inbounds nuw [48 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.ue = load ptr, ptr %i.ad, align 8, !tbaa !269
  %i.uf = getelementptr inbounds nuw [48 x i8], ptr %i.ue, i64 %indvars.iv.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ud, ptr noundef nonnull align 8 dereferenceable(48) %i.uf, i64 48, i1 false), !tbaa.struct !471
  %indvars.iv.next.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.ug = getelementptr inbounds nuw [48 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.uh = load ptr, ptr %i.ad, align 8, !tbaa !269
  %i.ui = getelementptr inbounds nuw [48 x i8], ptr %i.uh, i64 %indvars.iv.next.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ug, ptr noundef nonnull align 8 dereferenceable(48) %i.ui, i64 48, i1 false), !tbaa.struct !471
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %niter478.next.1 = add i64 %niter478, 2         ; 2 uses
  %niter478.ncmp.1 = icmp eq i64 %niter478.next.1, %unroll_iter477
  br i1 %niter478.ncmp.1, label %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, label %bb.ao, !llvm.loop !459

_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.ao
  %lcmp.mod475.not = icmp eq i64 %xtraiter474, 0
  br i1 %lcmp.mod475.not, label %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i, label %.epil.preheader473

.epil.preheader473:                               ; preds = %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.1, %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod476 = trunc i32 %i.ua to i1
  tail call void @llvm.assume(i1 %lcmp.mod476)
  %i.uj = getelementptr inbounds nuw [48 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i.epil.init
  %i.uk = load ptr, ptr %i.ad, align 8, !tbaa !269
  %i.ul = getelementptr inbounds nuw [48 x i8], ptr %i.uk, i64 %indvars.iv.i.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.uj, ptr noundef nonnull align 8 dereferenceable(48) %i.ul, i64 48, i1 false), !tbaa.struct !471
  br label %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i

_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i: ; preds = %.epil.preheader473, %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI13btIndexedMeshE8allocateEi.exit.i.i.i
  %i.um = load ptr, ptr %i.ad, align 8, !tbaa !269 ; 2 uses
  %.not.i5.i.i.i = icmp eq ptr %i.um, null
  br i1 %.not.i5.i.i.i, label %_ZN20btAlignedObjectArrayI13btIndexedMeshE10deallocateEv.exit.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i
  %i.un = load i8, ptr %i.ae, align 8, !tbaa !270, !range !142, !noundef !150
  %i.uo = trunc nuw i8 %i.un to i1
  br i1 %i.uo, label %bb.aq, label %_ZN20btAlignedObjectArrayI13btIndexedMeshE10deallocateEv.exit.i.i.i

bb.aq:                                            ; preds = %bb.ap
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.um)
  br label %_ZN20btAlignedObjectArrayI13btIndexedMeshE10deallocateEv.exit.i.i.i

_ZN20btAlignedObjectArrayI13btIndexedMeshE10deallocateEv.exit.i.i.i: ; preds = %bb.aq, %bb.ap, %_ZNK20btAlignedObjectArrayI13btIndexedMeshE4copyEiiPS0_.exit.i.i.i
  store i8 1, ptr %i.ae, align 8, !tbaa !270
  store ptr %.0.i.i.i.i, ptr %i.ad, align 8, !tbaa !269
  store i32 %i.tv, ptr %i.ac, align 8, !tbaa !268
  %.pre2.i.i = load i32, ptr %i.ab, align 4, !tbaa !267
  br label %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit

_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit: ; preds = %bb.ak, %bb.al, %_ZN20btAlignedObjectArrayI13btIndexedMeshE10deallocateEv.exit.i.i.i
  %i.up = phi i32 [ %.pre2.i.i, %_ZN20btAlignedObjectArrayI13btIndexedMeshE10deallocateEv.exit.i.i.i ], [ %i.tr, %bb.al ], [ %i.tr, %bb.ak ]
  %i.uq = load ptr, ptr %i.ad, align 8, !tbaa !269 ; 2 uses
  %i.ur = sext i32 %i.up to i64
  %i.us = getelementptr inbounds [48 x i8], ptr %i.uq, i64 %i.ur ; 8 uses
  store i32 %i.ai, ptr %i.us, align 8, !tbaa !166
  %.sroa.12207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  store ptr %.sroa.12207.2, ptr %.sroa.12207.0..sroa_idx, align 8, !tbaa !159
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.us, i64 16
  store i32 %.sroa.17.2, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !166
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.us, i64 20
  store i32 %i.ak, ptr %.sroa.21.0..sroa_idx, align 4, !tbaa !166
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.us, i64 24
  store ptr %.sroa.26.0, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !159
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.us, i64 32
  store i32 %.sroa.29.0, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !166
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.us, i64 36
  store i32 %.sroa.31.2, ptr %.sroa.31.0..sroa_idx, align 4, !tbaa !470
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.us, i64 40
  store i32 %.sroa.37.0, ptr %.sroa.37.0..sroa_idx, align 8, !tbaa !470
  %i.ut = load i32, ptr %i.ab, align 4, !tbaa !267 ; 2 uses
  %i.uu = add nsw i32 %i.ut, 1
  store i32 %i.uu, ptr %i.ab, align 4, !tbaa !267
  %i.uv = sext i32 %i.ut to i64
  %i.uw = getelementptr inbounds [48 x i8], ptr %i.uq, i64 %i.uv
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 36
  store i32 %.sroa.31.2, ptr %i.ux, align 4, !tbaa !473
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN26btTriangleIndexVertexArray14addIndexedMeshERK13btIndexedMesh14PHY_ScalarType.exit, %.loopexit
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 2 uses
  %i.uy = load i32, ptr %i.e, align 8, !tbaa !208
  %i.uz = sext i32 %i.uy to i64
  %i.va = icmp slt i64 %indvars.iv.next259, %i.uz
  br i1 %i.va, label %bb.b, label %._crit_edge, !llvm.loop !460
}

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN24btCollisionWorldImporter31createStridingMeshInterfaceDataEP27btStridingMeshInterfaceData(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1336) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !271
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !208  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.e, ptr %i.f, align 8, !tbaa !208
  %i.g = sext i32 %i.e to i64
  %i.h = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.g, i64 56) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  %i.j = extractvalue { i64, i1 } %i.h, 0
  %i.k = select i1 %i.i, i64 -1, i64 %i.j
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #28 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !209
  %i.m = icmp sgt i32 %i.e, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %.lr.ph.a

._crit_edge:                                      ; preds = %bb.t, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !100  ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !101
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.b, label %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE9push_backERKS1_.exit

bb.b:                                             ; preds = %._crit_edge
  %.not.i.i = icmp eq i32 %i.o, 0
  %i.s = shl nsw i32 %i.o, 1
  %i.t = select i1 %.not.i.i, i32 1, i32 %i.s     ; 4 uses
  %i.u = icmp slt i32 %i.o, %i.t
  br i1 %i.u, label %bb.c, label %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = sext i32 %i.t to i64
  %i.w = shl nsw i64 %i.v, 3
  %i.x = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.w, i32 noundef 16)
  %.pre.i = load i32, ptr %i.n, align 4, !tbaa !100
  br label %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.y = phi i32 [ %.pre.i, %bb.d ], [ %i.o, %bb.c ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.x, %bb.d ], [ null, %bb.c ] ; 8 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !99 ; 9 uses
  br i1 %i.z, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE8allocateEi.exit.i.i
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %.0.i.i.i76 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.y to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.y, 8
  %i.ad = sub i64 %i.ac, %.0.i.i.i76
  %diff.check = icmp ugt i64 %i.ad, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <2 x ptr>, ptr %i.af, align 8, !tbaa !207
  %wide.load77 = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !207
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <2 x ptr> %wide.load, ptr %i.ae, align 8, !tbaa !207
  store <2 x ptr> %wide.load77, ptr %i.ah, align 8, !tbaa !207
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !474

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i.prol
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !207
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !207
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !475

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.am = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !207
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !207
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !207
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !207
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i.1
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !207
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !207
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i.i.i.2
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !207
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !207
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !476

_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !98, !range !142, !noundef !150
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.e, label %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE10deallocateEv.exit.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ab)
  %.pre2.pre.pre.i = load i32, ptr %i.n, align 4, !tbaa !100
  br label %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE10deallocateEv.exit.i.i: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.y, %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.e ], [ %i.y, %_ZNK20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE4copyEiiPS1_.exit.thread.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 1, ptr %i.bd, align 8, !tbaa !98
  store ptr %.0.i.i.i, ptr %i.aa, align 8, !tbaa !99
  store i32 %i.t, ptr %i.p, align 8, !tbaa !101
  br label %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE9push_backERKS1_.exit: ; preds = %._crit_edge, %bb.b, %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE10deallocateEv.exit.i.i
  %i.be = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP27btStridingMeshInterfaceDataE10deallocateEv.exit.i.i ], [ %i.o, %bb.b ], [ %i.o, %._crit_edge ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !99
  %i.bh = sext i32 %i.be to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh
  store ptr %i.a, ptr %i.bi, align 8, !tbaa !207
  %i.bj = add nsw i32 %i.be, 1
  store i32 %i.bj, ptr %i.n, align 4, !tbaa !100
  ret ptr %i.a

.lr.ph.a:                                         ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %i.bk = load ptr, ptr %1, align 8, !tbaa !209
  %i.bl = getelementptr inbounds nuw [56 x i8], ptr %i.bk, i64 %indvars.iv ; 10 uses
  %i.bm = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %indvars.iv ; 15 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 48 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 52
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 52 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !263 ; 3 uses
  %i.bs = load <2 x i32>, ptr %i.bn, align 8, !tbaa !166
  store <2 x i32> %i.bs, ptr %i.bo, align 8, !tbaa !166
  %i.bt = load ptr, ptr %i.bl, align 8, !tbaa !215
  %.not = icmp eq ptr %i.bt, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.a
  %i.bu = sext i32 %i.br to i64
  %i.bv = icmp slt i32 %i.br, 0
  %i.bw = shl nsw i64 %i.bu, 4
  %i.bx = select i1 %i.bv, i64 -1, i64 %i.bw
  %i.by = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bx) #28 ; 2 uses
  store ptr %i.by, ptr %i.bm, align 8, !tbaa !215
  %i.bz = load ptr, ptr %i.bl, align 8, !tbaa !215
  %i.ca = load i32, ptr %i.bq, align 4, !tbaa !263 ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = shl nsw i64 %i.cb, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.by, ptr align 4 %i.bz, i64 %i.cc, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.a
  store ptr null, ptr %i.bm, align 8, !tbaa !215
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cd = phi i32 [ %i.br, %bb.g ], [ %i.ca, %bb.f ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !216
  %.not56 = icmp eq ptr %i.cf, null
  br i1 %.not56, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cg = sext i32 %i.cd to i64
  %i.ch = icmp slt i32 %i.cd, 0
  %i.ci = shl nsw i64 %i.cg, 5
  %i.cj = select i1 %i.ch, i64 -1, i64 %i.ci
  %i.ck = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cj) #28 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !216
  %i.cm = load ptr, ptr %i.ce, align 8, !tbaa !216
  %i.cn = load i32, ptr %i.bq, align 4, !tbaa !263
  %i.co = sext i32 %i.cn to i64
  %i.cp = shl nsw i64 %i.co, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ck, ptr align 8 %i.cm, i64 %i.cp, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr null, ptr %i.cq, align 8, !tbaa !216
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cr = load i32, ptr %i.bo, align 8, !tbaa !262 ; 3 uses
  %i.cs = mul nsw i32 %i.cr, 3                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !217
  %.not57.not = icmp eq ptr %i.cu, null           ; 2 uses
  br i1 %.not57.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cv = sext i32 %i.cs to i64
  %i.cw = icmp slt i32 %i.cr, 0
  %i.cx = shl nsw i64 %i.cv, 2                    ; 2 uses
  %i.cy = select i1 %i.cw, i64 -1, i64 %i.cx
  %i.cz = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cy) #28 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !217
  %i.db = load ptr, ptr %i.ct, align 8, !tbaa !217
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cz, ptr align 4 %i.db, i64 %i.cx, i1 false)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr null, ptr %i.dc, align 8, !tbaa !217
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !218
  %.not58 = icmp eq ptr %i.de, null
  br i1 %.not58, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr null, ptr %i.df, align 8, !tbaa !218
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bl, i64 40 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !219
  %.not59 = icmp eq ptr %i.dh, null
  br i1 %.not59, label %bb.p, label %.critedge

.thread:                                          ; preds = %bb.n
  %i.di = load i32, ptr %i.bo, align 8, !tbaa !262 ; 2 uses
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp slt i32 %i.di, 0
  %i.dl = shl nsw i64 %i.dj, 3
  %i.dm = select i1 %i.dk, i64 -1, i64 %i.dl
  %i.dn = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dm) #28 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !218
  %i.dp = load ptr, ptr %i.dd, align 8, !tbaa !218
  %i.dq = load i32, ptr %i.bo, align 8, !tbaa !262
  %i.dr = sext i32 %i.dq to i64
  %i.ds = shl nsw i64 %i.dr, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.dn, ptr align 2 %i.dp, i64 %i.ds, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bl, i64 40 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !219
  %.not5966 = icmp eq ptr %i.du, null
  br i1 %.not5966, label %.thread68, label %.critedge

.thread68:                                        ; preds = %.thread
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store ptr null, ptr %i.dv, align 8, !tbaa !219
  br label %bb.s

.critedge:                                        ; preds = %.thread, %bb.o
  %i.dw = phi ptr [ %i.dt, %.thread ], [ %i.dg, %bb.o ]
  %i.dx = sext i32 %i.cs to i64
  %i.dy = icmp slt i32 %i.cr, 0
  %i.dz = shl nsw i64 %i.dx, 2                    ; 2 uses
  %i.ea = select i1 %i.dy, i64 -1, i64 %i.dz
  %i.eb = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ea) #28 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !219
  %i.ed = load ptr, ptr %i.dw, align 8, !tbaa !219
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.eb, ptr align 2 %i.ed, i64 %i.dz, i1 false)
  br label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store ptr null, ptr %i.ee, align 8, !tbaa !219
  br i1 %.not57.not, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !220
  %.not60 = icmp eq ptr %i.eg, null
  br i1 %.not60, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eh = load i32, ptr %i.bo, align 8, !tbaa !262 ; 2 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = icmp slt i32 %i.eh, 0
  %i.ek = shl nsw i64 %i.ei, 2
  %i.el = select i1 %i.ej, i64 -1, i64 %i.ek
  %i.em = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.el) #28 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store ptr %i.em, ptr %i.en, align 8, !tbaa !220
  %i.eo = load ptr, ptr %i.ef, align 8, !tbaa !220
  %i.ep = load i32, ptr %i.bo, align 8, !tbaa !262
  %i.eq = sext i32 %i.ep to i64
  %i.er = shl nsw i64 %i.eq, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.em, ptr align 1 %i.eo, i64 %i.er, i1 false)
  br label %bb.t

bb.s:                                             ; preds = %.thread68, %.critedge, %bb.q, %bb.p
  %i.es = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store ptr null, ptr %i.es, align 8, !tbaa !220
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.a, !llvm.loop !477
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN24btCollisionWorldImporter24getCollisionObjectByNameEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1336) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %struct.btHashString, align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !160
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #26
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.d, ptr %i.a, align 8, !tbaa !161
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !147
  %i.g = load i64, ptr %i.a, align 8, !tbaa !161
  store i64 %i.g, ptr %i.b, align 8, !tbaa !148
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !148
  store i8 %i.i, ptr %i.h, align 1, !tbaa !148
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !161  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !162
  %i.l = load ptr, ptr %2, align 8, !tbaa !147
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.n = load ptr, ptr %2, align 8, !tbaa !147    ; 5 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !148   ; 2 uses
  %.not11.i = icmp eq i8 %i.o, 0
  br i1 %.not11.i, label %_ZN12btHashStringC2EPKc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.e ]
  %i.p = phi i8 [ %i.u, %.lr.ph.i ], [ %i.o, %bb.e ]
  %.0912.i = phi i32 [ %i.s, %.lr.ph.i ], [ -2128831035, %bb.e ]
  %i.q = sext i8 %i.p to i32
  %i.r = xor i32 %.0912.i, %i.q
  %i.s = mul i32 %i.r, 16777619                   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv.next.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !148   ; 2 uses
  %.not.i = icmp eq i8 %i.u, 0
  br i1 %.not.i, label %_ZN12btHashStringC2EPKc.exit, label %.lr.ph.i, !llvm.loop !1

_ZN12btHashStringC2EPKc.exit:                     ; preds = %.lr.ph.i, %bb.e
  %.09.lcssa.i = phi i32 [ -2128831035, %bb.e ], [ %i.s, %.lr.ph.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %.09.lcssa.i, ptr %i.v, align 8, !tbaa !164
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.x = load i32, ptr %i.w, align 8, !tbaa !85
  %i.y = add nsw i32 %i.x, -1
  %i.z = and i32 %i.y, %.09.lcssa.i               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 828
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !128
  %.not.i.i = icmp ult i32 %i.z, %i.ab
  br i1 %.not.i.i, label %bb.f, label %_ZN9btHashMapI12btHashStringP17btCollisionObjectE4findERKS0_.exit

bb.f:                                             ; preds = %_ZN12btHashStringC2EPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !127
  %i.ae = sext i32 %i.z to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ae
  %.013.i.i = load i32, ptr %i.af, align 4, !tbaa !166 ; 3 uses
  %.not1114.i.i = icmp eq i32 %.013.i.i, -1
  br i1 %.not1114.i.i, label %_ZN9btHashMapI12btHashStringP17btCollisionObjectE4findERKS0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !135 ; 2 uses
  %i.ai = load i64, ptr %i.k, align 8, !tbaa !162
  %.fr21.i.i = freeze i64 %i.ai                   ; 3 uses
  %i.aj = icmp eq i64 %.fr21.i.i, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  br i1 %i.aj, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %_ZNK12btHashString6equalsERKS_.exit.thread12.us.i.i
  %.015.us.i.i = phi i32 [ %.0.us.i.i, %_ZNK12btHashString6equalsERKS_.exit.thread12.us.i.i ], [ %.013.i.i, %.lr.ph.i.i ]
  %i.am = sext i32 %.015.us.i.i to i64            ; 3 uses
  %i.an = getelementptr inbounds [40 x i8], ptr %i.ah, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !162
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZNK9btHashMapI12btHashStringP17btCollisionObjectE9findIndexERKS0_.exit.i, label %_ZNK12btHashString6equalsERKS_.exit.thread12.us.i.i

_ZNK12btHashString6equalsERKS_.exit.thread12.us.i.i: ; preds = %.lr.ph.split.us.i.i
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.am
  %.0.us.i.i = load i32, ptr %i.ar, align 4, !tbaa !166 ; 2 uses
  %.not11.us.i.i = icmp eq i32 %.0.us.i.i, -1
  br i1 %.not11.us.i.i, label %_ZN9btHashMapI12btHashStringP17btCollisionObjectE4findERKS0_.exit, label %.lr.ph.split.us.i.i, !llvm.loop !7

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %_ZNK12btHashString6equalsERKS_.exit.thread12.i.i
  %.015.i.i = phi i32 [ %.0.i.i, %_ZNK12btHashString6equalsERKS_.exit.thread12.i.i ], [ %.013.i.i, %.lr.ph.i.i ]
  %i.as = sext i32 %.015.i.i to i64               ; 3 uses
  %i.at = getelementptr inbounds [40 x i8], ptr %i.ah, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !162
  %i.aw = icmp eq i64 %.fr21.i.i, %i.av
  br i1 %i.aw, label %_ZNK12btHashString6equalsERKS_.exit.i.i, label %_ZNK12btHashString6equalsERKS_.exit.thread12.i.i

_ZNK12btHashString6equalsERKS_.exit.i.i:          ; preds = %.lr.ph.split.i.i
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !147
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.n, ptr %i.ax, i64 %.fr21.i.i)
  %i.ay = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ay, label %_ZNK9btHashMapI12btHashStringP17btCollisionObjectE9findIndexERKS0_.exit.i, label %_ZNK12btHashString6equalsERKS_.exit.thread12.i.i

_ZNK12btHashString6equalsERKS_.exit.thread12.i.i: ; preds = %_ZNK12btHashString6equalsERKS_.exit.i.i, %.lr.ph.split.i.i
  %i.az = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.as
  %.0.i.i = load i32, ptr %i.az, align 4, !tbaa !166 ; 2 uses
  %.not11.i.i = icmp eq i32 %.0.i.i, -1
  br i1 %.not11.i.i, label %_ZN9btHashMapI12btHashStringP17btCollisionObjectE4findERKS0_.exit, label %.lr.ph.split.i.i, !llvm.loop !7

_ZNK9btHashMapI12btHashStringP17btCollisionObjectE9findIndexERKS0_.exit.i: ; preds = %_ZNK12btHashString6equalsERKS_.exit.i.i, %.lr.ph.split.us.i.i
  %.pre-phi.i = phi i64 [ %i.am, %.lr.ph.split.us.i.i ], [ %i.as, %_ZNK12btHashString6equalsERKS_.exit.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !83
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %.pre-phi.i
  br label %_ZN9btHashMapI12btHashStringP17btCollisionObjectE4findERKS0_.exit

_ZN9btHashMapI12btHashStringP17btCollisionObjectE4findERKS0_.exit: ; preds = %_ZNK12btHashString6equalsERKS_.exit.thread12.i.i, %_ZNK12btHashString6equalsERKS_.exit.thread12.us.i.i, %_ZNK9btHashMapI12btHashStringP17btCollisionObjectE9findIndexERKS0_.exit.i, %bb.f, %_ZN12btHashStringC2EPKc.exit
  %.0.i = phi ptr [ %i.bc, %_ZNK9btHashMapI12btHashStringP17btCollisionObjectE9findIndexERKS0_.exit.i ], [ null, %_ZN12btHashStringC2EPKc.exit ], [ null, %bb.f ], [ null, %_ZNK12btHashString6equalsERKS_.exit.thread12.us.i.i ], [ null, %_ZNK12btHashString6equalsERKS_.exit.thread12.i.i ] ; 2 uses
  %i.bd = icmp eq ptr %i.n, %i.b
  br i1 %i.bd, label %_ZN12btHashStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN9btHashMapI12btHashStringP17btCollisionObjectE4findERKS0_.exit
  %i.be = load i64, ptr %i.b, align 8, !tbaa !148
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.bf) #24
  br label %_ZN12btHashStringD2Ev.exit

_ZN12btHashStringD2Ev.exit:                       ; preds = %_ZN9btHashMapI12btHashStringP17btCollisionObjectE4findERKS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN12btHashStringD2Ev.exit
  %i.bg = load ptr, ptr %.0.i, align 8, !tbaa !171 ; 2 uses
  %.not9 = icmp eq ptr %i.bg, null
  br i1 %.not9, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %_ZN12btHashStringD2Ev.exit
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi ptr [ null, %bb.h ], [ %i.bg, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN24btCollisionWorldImporter21createCollisionObjectERK11btTransformP16btCollisionShapePKc(ptr noundef nonnull align 8 dereferenceable(1336) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %class.btHashPtr, align 8           ; 4 uses
  %5 = alloca %struct.btHashString, align 8       ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.d = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 376, i32 noundef 16) ; 12 uses
  invoke void @_ZN17btCollisionObjectC1Ev(ptr noundef nonnull align 8 dereferenceable(372) %i.d)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !171
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 352 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !179
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !179
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !271
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !271
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !271
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !271
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(372) %i.d, ptr noundef %2)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !77   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(121) %i.s, ptr noundef nonnull %i.d, i32 noundef 1, i32 noundef -1)
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.w = tail call noundef ptr @_ZN24btCollisionWorldImporter13duplicateNameEPKc(ptr noundef nonnull align 8 dereferenceable(1336) %0, ptr noundef nonnull %3)
  store ptr %i.w, ptr %i.c, align 8, !tbaa !159
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 952
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %i.d, ptr %4, align 8, !tbaa !148
  call void @_ZN9btHashMapI9btHashPtrPKcE6insertERKS0_RKS2_(ptr noundef nonnull align 8 dereferenceable(128) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 824
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !159  ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !160
  %i.ab = icmp eq ptr %i.z, null
  br i1 %i.ab, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #26
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !161
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.d
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !147
  %i.af = load i64, ptr %i.a, align 8, !tbaa !161
  store i64 %i.af, ptr %i.aa, align 8, !tbaa !148
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.d
  %i.ag = phi ptr [ %i.ae, %.noexc.i.i ], [ %i.aa, %bb.d ] ; 2 uses
  switch i64 %i.ac, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ah = load i8, ptr %i.z, align 1, !tbaa !148
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !148
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull align 1 %i.z, i64 %i.ac, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !161 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !162
  %i.ak = load ptr, ptr %5, align 8, !tbaa !147
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.am = load ptr, ptr %5, align 8, !tbaa !147   ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !148 ; 2 uses
  %.not11.i = icmp eq i8 %i.an, 0
  br i1 %.not11.i, label %_ZN12btHashStringC2EPKc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.g ]
  %i.ao = phi i8 [ %i.at, %.lr.ph.i ], [ %i.an, %bb.g ]
  %.0912.i = phi i32 [ %i.ar, %.lr.ph.i ], [ -2128831035, %bb.g ]
  %i.ap = sext i8 %i.ao to i32
  %i.aq = xor i32 %.0912.i, %i.ap
  %i.ar = mul i32 %i.aq, 16777619                 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv.next.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !148 ; 2 uses
  %.not.i = icmp eq i8 %i.at, 0
  br i1 %.not.i, label %_ZN12btHashStringC2EPKc.exit, label %.lr.ph.i, !llvm.loop !1

_ZN12btHashStringC2EPKc.exit:                     ; preds = %.lr.ph.i, %bb.g
  %.09.lcssa.i = phi i32 [ -2128831035, %bb.g ], [ %i.ar, %.lr.ph.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %.09.lcssa.i, ptr %i.au, align 8, !tbaa !164
  invoke void @_ZN9btHashMapI12btHashStringP17btCollisionObjectE6insertERKS0_RKS2_(ptr noundef nonnull align 8 dereferenceable(128) %i.y, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZN12btHashStringC2EPKc.exit
  %i.av = load ptr, ptr %5, align 8, !tbaa !147   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.aa
  br i1 %i.aw, label %_ZN12btHashStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.ax = load i64, ptr %i.aa, align 8, !tbaa !148
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #24
  br label %_ZN12btHashStringD2Ev.exit

_ZN12btHashStringD2Ev.exit:                       ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.d)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #23
  unreachable

bb.k:                                             ; preds = %_ZN12btHashStringC2EPKc.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %5, align 8, !tbaa !147   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.aa
  br i1 %i.be, label %_ZN12btHashStringD2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %bb.k
  %i.bf = load i64, ptr %i.aa, align 8, !tbaa !148
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #24
  br label %_ZN12btHashStringD2Ev.exit11

_ZN12btHashStringD2Ev.exit11:                     ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %_ZN17btCollisionObjectdlEPv.exit

bb.l:                                             ; preds = %_ZN12btHashStringD2Ev.exit, %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 4 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !84 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !85
  %i.bl = icmp eq i32 %i.bi, %i.bk
end_hunk_1
begin_hunk_2_@_ZN24btCollisionWorldImporter22createMultiSphereShapeEPK9btVector3PKfi:bb.a
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !79
  %i.av = sext i32 %i.as to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  store ptr %i.a, ptr %i.aw, align 8, !tbaa !157
  %i.ax = add nsw i32 %i.as, 1
  store i32 %i.ax, ptr %i.b, align 4, !tbaa !80
  ret ptr %i.a

bb.g:                                             ; preds = %bb.a
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.a)
          to label %_ZN18btMultiSphereShapedlEPv.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #23
  unreachable

_ZN18btMultiSphereShapedlEPv.exit:                ; preds = %bb.g
  resume { ptr, i32 } %i.ay
}

declare void @_ZN18btMultiSphereShapeC1EPK9btVector3PKfi(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK24btCollisionWorldImporter21getNumCollisionShapesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1336) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !80
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN24btCollisionWorldImporter24getCollisionShapeByIndexEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1336) %0, i32 noundef %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !157
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN24btCollisionWorldImporter23getCollisionShapeByNameEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1336) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %struct.btHashString, align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !160
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #26
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.d, ptr %i.a, align 8, !tbaa !161
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !147
  %i.g = load i64, ptr %i.a, align 8, !tbaa !161
  store i64 %i.g, ptr %i.b, align 8, !tbaa !148
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !148
  store i8 %i.i, ptr %i.h, align 1, !tbaa !148
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !161  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !162
  %i.l = load ptr, ptr %2, align 8, !tbaa !147
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.n = load ptr, ptr %2, align 8, !tbaa !147    ; 5 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !148   ; 2 uses
  %.not11.i = icmp eq i8 %i.o, 0
  br i1 %.not11.i, label %_ZN12btHashStringC2EPKc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.e ]
  %i.p = phi i8 [ %i.u, %.lr.ph.i ], [ %i.o, %bb.e ]
  %.0912.i = phi i32 [ %i.s, %.lr.ph.i ], [ -2128831035, %bb.e ]
  %i.q = sext i8 %i.p to i32
  %i.r = xor i32 %.0912.i, %i.q
  %i.s = mul i32 %i.r, 16777619                   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv.next.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !148   ; 2 uses
  %.not.i = icmp eq i8 %i.u, 0
  br i1 %.not.i, label %_ZN12btHashStringC2EPKc.exit, label %.lr.ph.i, !llvm.loop !1

_ZN12btHashStringC2EPKc.exit:                     ; preds = %.lr.ph.i, %bb.e
  %.09.lcssa.i = phi i32 [ -2128831035, %bb.e ], [ %i.s, %.lr.ph.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %.09.lcssa.i, ptr %i.v, align 8, !tbaa !164
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.x = load i32, ptr %i.w, align 8, !tbaa !81
  %i.y = add nsw i32 %i.x, -1
  %i.z = and i32 %i.y, %.09.lcssa.i               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 700
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !128
  %.not.i.i = icmp ult i32 %i.z, %i.ab
  br i1 %.not.i.i, label %bb.f, label %_ZN9btHashMapI12btHashStringP16btCollisionShapeE4findERKS0_.exit

bb.f:                                             ; preds = %_ZN12btHashStringC2EPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !127
  %i.ae = sext i32 %i.z to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ae
  %.013.i.i = load i32, ptr %i.af, align 4, !tbaa !166 ; 3 uses
  %.not1114.i.i = icmp eq i32 %.013.i.i, -1
  br i1 %.not1114.i.i, label %_ZN9btHashMapI12btHashStringP16btCollisionShapeE4findERKS0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !135 ; 2 uses
  %i.ai = load i64, ptr %i.k, align 8, !tbaa !162
  %.fr21.i.i = freeze i64 %i.ai                   ; 3 uses
  %i.aj = icmp eq i64 %.fr21.i.i, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  br i1 %i.aj, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %_ZNK12btHashString6equalsERKS_.exit.thread12.us.i.i
  %.015.us.i.i = phi i32 [ %.0.us.i.i, %_ZNK12btHashString6equalsERKS_.exit.thread12.us.i.i ], [ %.013.i.i, %.lr.ph.i.i ]
  %i.am = sext i32 %.015.us.i.i to i64            ; 3 uses
  %i.an = getelementptr inbounds [40 x i8], ptr %i.ah, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !162
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZNK9btHashMapI12btHashStringP16btCollisionShapeE9findIndexERKS0_.exit.i, label %_ZNK12btHashString6equalsERKS_.exit.thread12.us.i.i

_ZNK12btHashString6equalsERKS_.exit.thread12.us.i.i: ; preds = %.lr.ph.split.us.i.i
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.am
  %.0.us.i.i = load i32, ptr %i.ar, align 4, !tbaa !166 ; 2 uses
  %.not11.us.i.i = icmp eq i32 %.0.us.i.i, -1
  br i1 %.not11.us.i.i, label %_ZN9btHashMapI12btHashStringP16btCollisionShapeE4findERKS0_.exit, label %.lr.ph.split.us.i.i, !llvm.loop !6

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %_ZNK12btHashString6equalsERKS_.exit.thread12.i.i
  %.015.i.i = phi i32 [ %.0.i.i, %_ZNK12btHashString6equalsERKS_.exit.thread12.i.i ], [ %.013.i.i, %.lr.ph.i.i ]
  %i.as = sext i32 %.015.i.i to i64               ; 3 uses
  %i.at = getelementptr inbounds [40 x i8], ptr %i.ah, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !162
  %i.aw = icmp eq i64 %.fr21.i.i, %i.av
  br i1 %i.aw, label %_ZNK12btHashString6equalsERKS_.exit.i.i, label %_ZNK12btHashString6equalsERKS_.exit.thread12.i.i

_ZNK12btHashString6equalsERKS_.exit.i.i:          ; preds = %.lr.ph.split.i.i
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !147
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.n, ptr %i.ax, i64 %.fr21.i.i)
  %i.ay = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ay, label %_ZNK9btHashMapI12btHashStringP16btCollisionShapeE9findIndexERKS0_.exit.i, label %_ZNK12btHashString6equalsERKS_.exit.thread12.i.i

_ZNK12btHashString6equalsERKS_.exit.thread12.i.i: ; preds = %_ZNK12btHashString6equalsERKS_.exit.i.i, %.lr.ph.split.i.i
  %i.az = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.as
  %.0.i.i = load i32, ptr %i.az, align 4, !tbaa !166 ; 2 uses
  %.not11.i.i = icmp eq i32 %.0.i.i, -1
  br i1 %.not11.i.i, label %_ZN9btHashMapI12btHashStringP16btCollisionShapeE4findERKS0_.exit, label %.lr.ph.split.i.i, !llvm.loop !6

_ZNK9btHashMapI12btHashStringP16btCollisionShapeE9findIndexERKS0_.exit.i: ; preds = %_ZNK12btHashString6equalsERKS_.exit.i.i, %.lr.ph.split.us.i.i
  %.pre-phi.i = phi i64 [ %i.am, %.lr.ph.split.us.i.i ], [ %i.as, %_ZNK12btHashString6equalsERKS_.exit.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !79
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %.pre-phi.i
  br label %_ZN9btHashMapI12btHashStringP16btCollisionShapeE4findERKS0_.exit

_ZN9btHashMapI12btHashStringP16btCollisionShapeE4findERKS0_.exit: ; preds = %_ZNK12btHashString6equalsERKS_.exit.thread12.i.i, %_ZNK12btHashString6equalsERKS_.exit.thread12.us.i.i, %_ZNK9btHashMapI12btHashStringP16btCollisionShapeE9findIndexERKS0_.exit.i, %bb.f, %_ZN12btHashStringC2EPKc.exit
  %.0.i = phi ptr [ %i.bc, %_ZNK9btHashMapI12btHashStringP16btCollisionShapeE9findIndexERKS0_.exit.i ], [ null, %_ZN12btHashStringC2EPKc.exit ], [ null, %bb.f ], [ null, %_ZNK12btHashString6equalsERKS_.exit.thread12.us.i.i ], [ null, %_ZNK12btHashString6equalsERKS_.exit.thread12.i.i ] ; 2 uses
  %i.bd = icmp eq ptr %i.n, %i.b
  br i1 %i.bd, label %_ZN12btHashStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN9btHashMapI12btHashStringP16btCollisionShapeE4findERKS0_.exit
  %i.be = load i64, ptr %i.b, align 8, !tbaa !148
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.bf) #24
  br label %_ZN12btHashStringD2Ev.exit

_ZN12btHashStringD2Ev.exit:                       ; preds = %_ZN9btHashMapI12btHashStringP16btCollisionShapeE4findERKS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN12btHashStringD2Ev.exit
  %i.bg = load ptr, ptr %.0.i, align 8, !tbaa !157 ; 2 uses
  %.not9 = icmp eq ptr %i.bg, null
  br i1 %.not9, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %_ZN12btHashStringD2Ev.exit
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi ptr [ null, %bb.h ], [ %i.bg, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK24btCollisionWorldImporter17getNameForPointerEPKv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1336) %0, ptr noundef %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.a to i32
  %.sroa.0.4.extract.shift = lshr i64 %i.a, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  %i.b = add i32 %.sroa.0.4.extract.trunc, %.sroa.0.0.extract.trunc ; 2 uses
  %i.c = shl i32 %i.b, 15
  %i.d = xor i32 %i.c, -1
  %i.e = add i32 %i.b, %i.d                       ; 2 uses
  %i.f = lshr i32 %i.e, 10
  %i.g = xor i32 %i.f, %i.e
  %i.h = mul i32 %i.g, 9                          ; 2 uses
  %i.i = lshr i32 %i.h, 6
  %i.j = xor i32 %i.i, %i.h                       ; 2 uses
  %i.k = shl i32 %i.j, 11
  %i.l = xor i32 %i.k, -1
  %i.m = add i32 %i.j, %i.l                       ; 2 uses
  %i.n = lshr i32 %i.m, 16
  %i.o = xor i32 %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.q = load i32, ptr %i.p, align 8, !tbaa !141
  %i.r = add nsw i32 %i.q, -1
  %i.s = and i32 %i.r, %i.o                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 956
  %i.u = load i32, ptr %i.t, align 4, !tbaa !128
  %.not.i.i = icmp ult i32 %i.s, %i.u
  br i1 %.not.i.i, label %bb.b, label %_ZNK9btHashMapI9btHashPtrPKcE4findERKS0_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !127
  %i.x = sext i32 %i.s to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.x
  %.012.i.i = load i32, ptr %i.y, align 4, !tbaa !166 ; 2 uses
  %.not1113.i.i = icmp eq i32 %.012.i.i, -1
  br i1 %.not1113.i.i, label %_ZNK9btHashMapI9btHashPtrPKcE4findERKS0_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !131
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.ac = load ptr, ptr %i.ab, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.014.i.i = phi i32 [ %.012.i.i, %.lr.ph.i.i ], [ %.0.i.i, %bb.d ]
  %i.ad = sext i32 %.014.i.i to i64               ; 3 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !148
  %i.ag = icmp eq ptr %1, %i.af
  br i1 %i.ag, label %_ZNK9btHashMapI9btHashPtrPKcE4findERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ad
  %.0.i.i = load i32, ptr %i.ah, align 4, !tbaa !166 ; 2 uses
  %.not11.i.i = icmp eq i32 %.0.i.i, -1
  br i1 %.not11.i.i, label %_ZNK9btHashMapI9btHashPtrPKcE4findERKS0_.exit.thread, label %bb.c, !llvm.loop !5

_ZNK9btHashMapI9btHashPtrPKcE4findERKS0_.exit:    ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !139 ; 2 uses
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %_ZNK9btHashMapI9btHashPtrPKcE4findERKS0_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK9btHashMapI9btHashPtrPKcE4findERKS0_.exit
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ad
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !159 ; 2 uses
  %.not8 = icmp eq ptr %i.al, null
  br i1 %.not8, label %_ZNK9btHashMapI9btHashPtrPKcE4findERKS0_.exit.thread, label %bb.f

_ZNK9btHashMapI9btHashPtrPKcE4findERKS0_.exit.thread: ; preds = %bb.d, %bb.b, %bb.a, %bb.e, %_ZNK9btHashMapI9btHashPtrPKcE4findERKS0_.exit
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK9btHashMapI9btHashPtrPKcE4findERKS0_.exit.thread
  %.0 = phi ptr [ null, %_ZNK9btHashMapI9btHashPtrPKcE4findERKS0_.exit.thread ], [ %i.al, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK24btCollisionWorldImporter17getNumRigidBodiesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1336) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !84
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK24btCollisionWorldImporter19getRigidBodyByIndexEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1336) %0, i32 noundef %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !171
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK24btCollisionWorldImporter10getNumBvhsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1336) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load i32, ptr %i.a, align 4, !tbaa !88
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK24btCollisionWorldImporter13getBvhByIndexEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1336) %0, i32 noundef %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !152
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK24btCollisionWorldImporter22getNumTriangleInfoMapsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1336) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i32, ptr %i.a, align 4, !tbaa !92
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK24btCollisionWorldImporter25getTriangleInfoMapByIndexEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1336) %0, i32 noundef %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !203
  ret ptr %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTriangleInfoMapD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN9btHashMapI9btHashInt14btTriangleInfoED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.a) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17btTriangleInfoMapD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN9btHashMapI9btHashInt14btTriangleInfoED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.a) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #24
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17btTriangleInfoMap9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load <4 x float>, ptr %i.a, align 8, !tbaa !169
  store <4 x float> %i.c, ptr %i.b, align 8, !tbaa !169
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.e = load float, ptr %i.d, align 4, !tbaa !237
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float %i.e, ptr %i.f, align 8, !tbaa !228
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !128  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store i32 %i.h, ptr %i.i, align 8, !tbaa !238
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store ptr null, ptr %1, align 8, !tbaa !239
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !127
  %i.l = load ptr, ptr %2, align 8, !tbaa !18
end_hunk_2
