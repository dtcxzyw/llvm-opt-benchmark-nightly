Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/norm.dispatch?download=true
inline.NumInlined: 846
inline.NumDeleted: 327
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 125
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_ZN2cv4normERKNS_11_InputArrayEiS2_:bb.a

.lr.ph.i269.us.epil.preheader:                    ; preds = %_ZN2cv3hal11normHammingEPKhii.exit275.loopexit.us.unr-lcssa, %.lr.ph.preheader.i267.us
  %indvars.iv.i270.us.epil.init = phi i64 [ 0, %.lr.ph.preheader.i267.us ], [ %indvars.iv.next.i272.us.3, %_ZN2cv3hal11normHammingEPKhii.exit275.loopexit.us.unr-lcssa ]
  %.031.i271.us.epil.init = phi i32 [ 0, %.lr.ph.preheader.i267.us ], [ %i.hh, %_ZN2cv3hal11normHammingEPKhii.exit275.loopexit.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod416)
  br label %.lr.ph.i269.us.epil

.lr.ph.i269.us.epil:                              ; preds = %.lr.ph.i269.us.epil, %.lr.ph.i269.us.epil.preheader
  %indvars.iv.i270.us.epil = phi i64 [ %indvars.iv.i270.us.epil.init, %.lr.ph.i269.us.epil.preheader ], [ %indvars.iv.next.i272.us.epil, %.lr.ph.i269.us.epil ] ; 2 uses
  %.031.i271.us.epil = phi i32 [ %.031.i271.us.epil.init, %.lr.ph.i269.us.epil.preheader ], [ %i.ho, %.lr.ph.i269.us.epil ]
  %epil.iter413 = phi i64 [ 0, %.lr.ph.i269.us.epil.preheader ], [ %epil.iter413.next, %.lr.ph.i269.us.epil ]
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gc, i64 %indvars.iv.i270.us.epil
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !18
  %i.hk = zext i8 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr @_ZN2cv3halL14popCountTable2E, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !18
  %i.hn = zext i8 %i.hm to i32
  %i.ho = add nuw nsw i32 %.031.i271.us.epil, %i.hn ; 2 uses
  %indvars.iv.next.i272.us.epil = add nuw nsw i64 %indvars.iv.i270.us.epil, 1
  %epil.iter413.next = add i64 %epil.iter413, 1   ; 2 uses
  %epil.iter413.cmp.not = icmp eq i64 %epil.iter413.next, %xtraiter412
  br i1 %epil.iter413.cmp.not, label %_ZN2cv3hal11normHammingEPKhii.exit275.loopexit.us, label %.lr.ph.i269.us.epil, !llvm.loop !388

_ZN2cv3hal11normHammingEPKhii.exit275.loopexit.us: ; preds = %.lr.ph.i269.us.epil, %_ZN2cv3hal11normHammingEPKhii.exit275.loopexit.us.unr-lcssa
  %.lcssa = phi i32 [ %i.hh, %_ZN2cv3hal11normHammingEPKhii.exit275.loopexit.us.unr-lcssa ], [ %i.ho, %.lr.ph.i269.us.epil ]
  %i.hp = add nuw nsw i32 %.lcssa, %.0156.us341
  %i.hq = add nuw i64 %.0155.us342, 1
  %i.hr = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %19)
          to label %.split334.split.us unwind label %.split339.split.us, !llvm.loop !387 ; 0 uses

.split339.split.us:                               ; preds = %_ZN2cv3hal11normHammingEPKhii.exit275.loopexit.us
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %.split339

.split334.split:                                  ; preds = %.split334, %_ZN2cv3hal11normHammingEPKhii.exit275
  %.0155 = phi i64 [ %i.hx, %_ZN2cv3hal11normHammingEPKhii.exit275 ], [ 0, %.split334 ] ; 2 uses
  %i.ht = load i64, ptr %i.fo, align 8, !tbaa !60
  %i.hu = icmp ult i64 %.0155, %i.ht
  br i1 %i.hu, label %_ZN2cv3hal11normHammingEPKhii.exit275, label %.split336.us

.split336.us:                                     ; preds = %.split334.split, %.split334.split.us, %.split334.us
  %.us-phi337 = phi i32 [ %.0156.us, %.split334.us ], [ %.0156.us341, %.split334.split.us ], [ 0, %.split334.split ]
  %i.hv = sitofp i32 %.us-phi337 to double
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %.thread

bb.ca:                                            ; preds = %bb.bx
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %.split339

_ZN2cv3hal11normHammingEPKhii.exit275:            ; preds = %.split334.split
  %i.hx = add nuw i64 %.0155, 1
  %i.hy = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %19)
          to label %.split334.split unwind label %.split339.split, !llvm.loop !387 ; 0 uses

.split339.split:                                  ; preds = %_ZN2cv3hal11normHammingEPKhii.exit275
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %.split339

.split339:                                        ; preds = %.split339.us, %.split339.split.us, %.split339.split, %bb.ca
  %.pn238 = phi { ptr, i32 } [ %i.hw, %bb.ca ], [ %i.fw, %.split339.us ], [ %i.hz, %.split339.split ], [ %i.hs, %.split339.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %.body

bb.cb:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  store ptr %8, ptr %i.e, align 16, !tbaa !54
  %i.ia = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %9, ptr %i.ia, align 8, !tbaa !54
  %i.ib = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr null, ptr %i.ib, align 16, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  store double 0.000000e+00, ptr %20, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  invoke void @_ZN2cv15NAryMatIteratorC1EPPKNS_3MatEPPhi(ptr noundef nonnull align 8 dereferenceable(64) %21, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef -1)
          to label %bb.cc unwind label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ic = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !59
  %.fr349 = freeze i64 %i.id                      ; 5 uses
  %i.ie = icmp ult i64 %.fr349, 2147483647
  br i1 %i.ie, label %bb.cg, label %bb.ce

bb.cd:                                            ; preds = %bb.ce, %bb.cb
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.ce:                                            ; preds = %bb.cc
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %.fr349, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv4normERKNS_11_InputArrayEiS2_E15__cv_check__398) #21
          to label %bb.cf unwind label %bb.cd

bb.cf:                                            ; preds = %bb.ce
  unreachable

bb.cg:                                            ; preds = %bb.cc
  %i.ig = add nsw i32 %i.ag, -7
  %i.ih = icmp ult i32 %i.ig, 2
  br i1 %i.i, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  switch i32 %i.ag, label %bb.ci [
    i32 9, label %bb.ck
    i32 8, label %bb.ck
    i32 7, label %bb.ck
    i32 3, label %bb.ck
    i32 2, label %bb.ck
    i32 1, label %bb.ck
    i32 0, label %bb.ck
  ]

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  br i1 %i.m, label %bb.cj, label %bb.da

bb.cj:                                            ; preds = %bb.ci
  switch i32 %i.ag, label %bb.da [
    i32 9, label %bb.ck
    i32 8, label %bb.ck
    i32 7, label %bb.ck
    i32 1, label %bb.ck
    i32 0, label %bb.ck
  ]

bb.ck:                                            ; preds = %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.cj, %bb.ch, %bb.ch, %bb.ch, %bb.ch, %bb.ch, %bb.ch, %bb.ch
  %i.ii = load i32, ptr %8, align 8, !tbaa !47    ; 2 uses
  %i.ij = lshr i32 %i.ii, 5
  %i.ik = and i32 %i.ij, 127
  %i.il = add nuw nsw i32 %i.ik, 1
  %i.im = shl i32 %i.ii, 2
  %i.in = and i32 %i.im, 124
  %i.io = zext nneg i32 %i.in to i64
  %i.ip = lshr i64 1275511473185297, %i.io
  %i.iq = trunc i64 %i.ip to i32
  %i.ir = and i32 %i.iq, 15
  %i.is = mul nuw nsw i32 %i.ir, %i.il
  %i.it = zext nneg i32 %i.is to i64              ; 2 uses
  %i.iu = trunc nuw nsw i64 %.fr349 to i32        ; 8 uses
  br i1 %i.ih, label %.thread379, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.iv = icmp eq i32 %i.ag, 9
  %i.iw = icmp samesign ult i32 %i.ag, 2
  %i.ix = and i1 %i.i, %i.iw
  %i.iy = select i1 %i.ix, i32 8388608, i32 32768
  %i.iz = select i1 %i.iv, i32 1073741824, i32 %i.iy
  %i.ja = udiv i32 %i.iz, %i.aj                   ; 2 uses
  %.sroa.speculated283 = call i32 @llvm.umin.i32(i32 %i.ja, i32 %i.iu) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  store i32 0, ptr %22, align 4, !tbaa !18
  %i.jb = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 3 uses
  %invariant.op = sub nsw i32 %i.ja, %.sroa.speculated283
  %.not350 = icmp eq i64 %.fr349, 0
  %i.jc = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  br i1 %.not350, label %.split312.preheader, label %.split312.us.split

.thread379:                                       ; preds = %bb.ck
  %.rhs.trunc = trunc nuw nsw i32 %i.aj to i16
  %i.jd = udiv i16 1024, %.rhs.trunc
  %.zext = zext nneg i16 %i.jd to i32             ; 2 uses
  %.sroa.speculated283380 = call i32 @llvm.umin.i32(i32 %.zext, i32 %i.iu) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  store i32 0, ptr %22, align 4, !tbaa !18
  %i.je = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 3 uses
  %invariant.op381 = sub nsw i32 %.zext, %.sroa.speculated283380
  %.not350382 = icmp eq i64 %.fr349, 0
  %i.jf = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  br i1 %.not350382, label %.split312.preheader, label %.split312.us.split.us

.split312.preheader:                              ; preds = %.thread379, %bb.cl
  %i.jg = phi ptr [ %i.je, %.thread379 ], [ %i.jb, %bb.cl ]
  br label %.split312

.split312.us.split.us:                            ; preds = %.thread379, %._crit_edge.split.us.us.us
  %.0154.us.us = phi i32 [ %.2.us.us.us, %._crit_edge.split.us.us.us ], [ 0, %.thread379 ]
  %.0153.us.us = phi i64 [ %i.jj, %._crit_edge.split.us.us.us ], [ 0, %.thread379 ] ; 2 uses
  %i.jh = load i64, ptr %i.je, align 8, !tbaa !60
  %i.ji = icmp ult i64 %.0153.us.us, %i.jh
  br i1 %i.ji, label %.preheader.us.us, label %.split326.us

.preheader.us.us:                                 ; preds = %.split312.us.split.us
  %i.jj = add nuw i64 %.0153.us.us, 1             ; 2 uses
  %.pre360 = load ptr, ptr %i.f, align 16, !tbaa !61
  %.pre361 = load ptr, ptr %i.jf, align 8, !tbaa !61
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cs, %.preheader.us.us
  %i.jk = phi ptr [ %.pre361, %.preheader.us.us ], [ %i.ka, %bb.cs ]
  %i.jl = phi ptr [ %.pre360, %.preheader.us.us ], [ %i.jx, %bb.cs ]
  %.0152310.us.us.us = phi i32 [ 0, %.preheader.us.us ], [ %i.kb, %bb.cs ] ; 3 uses
  %.1309.us.us.us = phi i32 [ %.0154.us.us, %.preheader.us.us ], [ %.2.us.us.us, %bb.cs ]
  %i.jm = sub nsw i32 %i.iu, %.0152310.us.us.us
  %.sroa.speculated.us.us.us = call i32 @llvm.smin.i32(i32 %.sroa.speculated283380, i32 %i.jm) ; 4 uses
  %i.jn = invoke noundef i32 %.0.i.i(ptr noundef %i.jl, ptr noundef %i.jk, ptr noundef nonnull %22, i32 noundef %.sroa.speculated.us.us.us, i32 noundef %i.aj)
          to label %bb.cn unwind label %.split.us.split.us.split.us ; 0 uses

bb.cn:                                            ; preds = %bb.cm
  %i.jo = add nsw i32 %.sroa.speculated.us.us.us, %.1309.us.us.us ; 2 uses
  %.not227.us.us.us = icmp slt i32 %i.jo, %invariant.op381
  br i1 %.not227.us.us.us, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.jp = load i64, ptr %i.je, align 8, !tbaa !60
  %.not228.us.us.us = icmp ult i64 %i.jj, %i.jp
  %i.jq = add nsw i32 %.sroa.speculated.us.us.us, %.0152310.us.us.us
  %.not229.us.us.us = icmp slt i32 %i.jq, %i.iu
  %or.cond302.us.us.us = select i1 %.not228.us.us.us, i1 true, i1 %.not229.us.us.us
  br i1 %or.cond302.us.us.us, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.jr = load float, ptr %22, align 4
  %i.js = fpext float %i.jr to double
  %i.jt = load double, ptr %20, align 8, !tbaa !18
  %i.ju = fadd double %i.jt, %i.js
  store double %i.ju, ptr %20, align 8, !tbaa !18
  store i32 0, ptr %22, align 4, !tbaa !18
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.2.us.us.us = phi i32 [ 0, %bb.cp ], [ %i.jo, %bb.co ] ; 2 uses
  %23 = sext i32 %.sroa.speculated.us.us.us to i64 ; 2 uses
  %i.jv = mul nsw i64 %23, %i.it
  %i.jw = load ptr, ptr %i.f, align 16, !tbaa !61
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.jv ; 2 uses
  store ptr %i.jx, ptr %i.f, align 16, !tbaa !61
  %i.jy = load ptr, ptr %i.jf, align 8, !tbaa !61 ; 2 uses
  %.not230.us.us.us = icmp eq ptr %i.jy, null
  br i1 %.not230.us.us.us, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 %23 ; 2 uses
  store ptr %i.jz, ptr %i.jf, align 8, !tbaa !61
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.ka = phi ptr [ %i.jz, %bb.cr ], [ null, %bb.cq ]
  %i.kb = add nuw nsw i32 %.0152310.us.us.us, %.sroa.speculated283380 ; 2 uses
  %i.kc = icmp slt i32 %i.kb, %i.iu
  br i1 %i.kc, label %bb.cm, label %._crit_edge.split.us.us.us, !llvm.loop !389

._crit_edge.split.us.us.us:                       ; preds = %bb.cs
  %i.kd = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %21)
          to label %.split312.us.split.us unwind label %.split330.us.split.us, !llvm.loop !390 ; 0 uses

.split.us.split.us.split.us:                      ; preds = %bb.cm
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %.split330.us

.split330.us.split.us:                            ; preds = %._crit_edge.split.us.us.us
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %.split330.us

.split312.us.split:                               ; preds = %bb.cl, %._crit_edge.split.us323
  %.0154.us = phi i32 [ %.2.us321, %._crit_edge.split.us323 ], [ 0, %bb.cl ]
  %.0153.us = phi i64 [ %i.ki, %._crit_edge.split.us323 ], [ 0, %bb.cl ] ; 2 uses
  %i.kg = load i64, ptr %i.jb, align 8, !tbaa !60
  %i.kh = icmp ult i64 %.0153.us, %i.kg
  br i1 %i.kh, label %.preheader.us, label %.split326.us

.preheader.us:                                    ; preds = %.split312.us.split
  %i.ki = add nuw i64 %.0153.us, 1                ; 2 uses
  %.pre = load ptr, ptr %i.f, align 16, !tbaa !61
  %.pre359 = load ptr, ptr %i.jc, align 8, !tbaa !61
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cz, %.preheader.us
  %i.kj = phi ptr [ %.pre359, %.preheader.us ], [ %i.kz, %bb.cz ]
  %i.kk = phi ptr [ %.pre, %.preheader.us ], [ %i.kw, %bb.cz ]
  %.0152310.us314 = phi i32 [ 0, %.preheader.us ], [ %i.la, %bb.cz ] ; 3 uses
  %.1309.us315 = phi i32 [ %.0154.us, %.preheader.us ], [ %.2.us321, %bb.cz ]
  %i.kl = sub nsw i32 %i.iu, %.0152310.us314
  %.sroa.speculated.us316 = call i32 @llvm.smin.i32(i32 %.sroa.speculated283, i32 %i.kl) ; 4 uses
  %i.km = invoke noundef i32 %.0.i.i(ptr noundef %i.kk, ptr noundef %i.kj, ptr noundef nonnull %22, i32 noundef %.sroa.speculated.us316, i32 noundef %i.aj)
          to label %bb.cu unwind label %.split.split.us ; 0 uses

bb.cu:                                            ; preds = %bb.ct
  %i.kn = add nsw i32 %.sroa.speculated.us316, %.1309.us315 ; 2 uses
  %.not227.us317 = icmp slt i32 %i.kn, %invariant.op
  br i1 %.not227.us317, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.ko = load i64, ptr %i.jb, align 8, !tbaa !60
  %.not228.us318 = icmp ult i64 %i.ki, %i.ko
  %i.kp = add nsw i32 %.sroa.speculated.us316, %.0152310.us314
  %.not229.us319 = icmp slt i32 %i.kp, %i.iu
  %or.cond302.us320 = select i1 %.not228.us318, i1 true, i1 %.not229.us319
  br i1 %or.cond302.us320, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.kq = load i32, ptr %22, align 4
  %i.kr = sitofp i32 %i.kq to double
  %i.ks = load double, ptr %20, align 8, !tbaa !18
  %i.kt = fadd double %i.ks, %i.kr
  store double %i.kt, ptr %20, align 8, !tbaa !18
  store i32 0, ptr %22, align 4, !tbaa !18
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.2.us321 = phi i32 [ 0, %bb.cw ], [ %i.kn, %bb.cv ] ; 2 uses
  %24 = sext i32 %.sroa.speculated.us316 to i64   ; 2 uses
  %i.ku = mul nsw i64 %24, %i.it
  %i.kv = load ptr, ptr %i.f, align 16, !tbaa !61
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.ku ; 2 uses
  store ptr %i.kw, ptr %i.f, align 16, !tbaa !61
  %i.kx = load ptr, ptr %i.jc, align 8, !tbaa !61 ; 2 uses
  %.not230.us322 = icmp eq ptr %i.kx, null
  br i1 %.not230.us322, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ky = getelementptr inbounds i8, ptr %i.kx, i64 %24 ; 2 uses
  store ptr %i.ky, ptr %i.jc, align 8, !tbaa !61
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.kz = phi ptr [ %i.ky, %bb.cy ], [ null, %bb.cx ]
  %i.la = add nuw nsw i32 %.0152310.us314, %.sroa.speculated283 ; 2 uses
  %i.lb = icmp slt i32 %i.la, %i.iu
  br i1 %i.lb, label %bb.ct, label %._crit_edge.split.us323, !llvm.loop !389

._crit_edge.split.us323:                          ; preds = %bb.cz
  %i.lc = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %21)
          to label %.split312.us.split unwind label %.split330.us.split, !llvm.loop !390 ; 0 uses

.split.split.us:                                  ; preds = %bb.ct
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %.split330.us

.split330.us.split:                               ; preds = %._crit_edge.split.us323
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %.split330.us

.split312:                                        ; preds = %.split312.preheader, %.preheader
  %.0153 = phi i64 [ %i.lh, %.preheader ], [ 0, %.split312.preheader ] ; 2 uses
  %i.lf = load i64, ptr %i.jg, align 8, !tbaa !60
  %i.lg = icmp ult i64 %.0153, %i.lf
  br i1 %i.lg, label %.preheader, label %.split326.us

.preheader:                                       ; preds = %.split312
  %i.lh = add nuw i64 %.0153, 1
  %i.li = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %21)
          to label %.split312 unwind label %.split330, !llvm.loop !390 ; 0 uses

.split326.us:                                     ; preds = %.split312.us.split, %.split312.us.split.us, %.split312
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %.loopexit

.split330:                                        ; preds = %.preheader
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %.split330.us

.split330.us:                                     ; preds = %.split330, %.split330.us.split.us, %.split330.us.split, %.split.split.us, %.split.us.split.us.split.us
  %.pn223 = phi { ptr, i32 } [ %i.ke, %.split.us.split.us.split.us ], [ %i.ld, %.split.split.us ], [ %i.lj, %.split330 ], [ %i.le, %.split330.us.split ], [ %i.kf, %.split330.us.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %bb.dm

bb.da:                                            ; preds = %bb.cj, %bb.ci
  %i.lk = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.ll = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.db

bb.db:                                            ; preds = %bb.dd, %bb.da
  %.0 = phi i64 [ 0, %bb.da ], [ %i.lt, %bb.dd ]  ; 2 uses
  %i.lm = load i64, ptr %i.lk, align 8, !tbaa !60
  %i.ln = icmp ult i64 %.0, %i.lm
  br i1 %i.ln, label %bb.dc, label %.loopexit

bb.dc:                                            ; preds = %bb.db
  %i.lo = load ptr, ptr %i.f, align 16, !tbaa !61
  %i.lp = load ptr, ptr %i.ll, align 8, !tbaa !61
  %i.lq = load i64, ptr %i.ic, align 8, !tbaa !59
  %i.lr = trunc i64 %i.lq to i32
  %i.ls = invoke noundef i32 %.0.i.i(ptr noundef %i.lo, ptr noundef %i.lp, ptr noundef nonnull %20, i32 noundef %i.lr, i32 noundef %i.aj)
          to label %bb.dd unwind label %bb.de     ; 0 uses

bb.dd:                                            ; preds = %bb.dc
  %i.lt = add nuw i64 %.0, 1
  %i.lu = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %21)
          to label %bb.db unwind label %bb.de, !llvm.loop !391 ; 0 uses

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

.loopexit:                                        ; preds = %bb.db, %.split326.us
  br i1 %i.h, label %bb.df, label %bb.dk

bb.df:                                            ; preds = %.loopexit
  %i.lw = icmp samesign ult i32 %i.ag, 5
  br i1 %i.lw, label %bb.dg, label %switch.early.test

switch.early.test:                                ; preds = %bb.df
  switch i32 %i.ag, label %bb.di [
    i32 12, label %bb.dg
    i32 9, label %bb.dg
    i32 8, label %bb.dh
    i32 7, label %bb.dh
    i32 5, label %bb.dh
  ]

bb.dg:                                            ; preds = %switch.early.test, %switch.early.test, %bb.df
  %i.lx = load i32, ptr %20, align 8, !tbaa !18
  %i.ly = uitofp i32 %i.lx to double
  br label %.thread301

bb.dh:                                            ; preds = %switch.early.test, %switch.early.test, %switch.early.test
  %i.lz = load float, ptr %20, align 8, !tbaa !18
  %i.ma = fpext float %i.lz to double
  br label %.thread301

bb.di:                                            ; preds = %switch.early.test
  %i.mb = and i32 %i.af, 30
  %or.cond40 = icmp eq i32 %i.mb, 10
  br i1 %or.cond40, label %bb.dj, label %..thread301_crit_edge

..thread301_crit_edge:                            ; preds = %bb.di
  %.pre362 = load double, ptr %20, align 8, !tbaa !18
  br label %.thread301

bb.dj:                                            ; preds = %bb.di
  %i.mc = load i64, ptr %20, align 8, !tbaa !18
  %i.md = uitofp i64 %i.mc to double
  br label %.thread301

bb.dk:                                            ; preds = %.loopexit
  %.pre363 = load double, ptr %20, align 8, !tbaa !18 ; 2 uses
  br i1 %i.k, label %bb.dl, label %.thread301

bb.dl:                                            ; preds = %bb.dk
  %i.me = call double @sqrt(double noundef %.pre363) #19
  br label %.thread301

.thread301:                                       ; preds = %bb.dk, %..thread301_crit_edge, %bb.dl, %bb.dj, %bb.dh, %bb.dg
  %.8195 = phi double [ %i.ly, %bb.dg ], [ %i.ma, %bb.dh ], [ %i.md, %bb.dj ], [ %i.me, %bb.dl ], [ %.pre362, %..thread301_crit_edge ], [ %.pre363, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %.thread

bb.dm:                                            ; preds = %.split330.us, %bb.de, %bb.cd
  %.pn223.pn.pn = phi { ptr, i32 } [ %i.if, %bb.cd ], [ %.pn223, %.split330.us ], [ %i.lv, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %.body

.thread:                                          ; preds = %bb.be, %_ZN2cv3hal11normHammingEPKhii.exit262.loopexit, %bb.az, %bb.au, %_ZN2cv3hal11normHammingEPKhii.exit, %bb.bt, %.split336.us, %.thread301
  %.10197 = phi double [ %.8195, %.thread301 ], [ %i.fh, %bb.bt ], [ %i.hv, %.split336.us ], [ %i.cq, %_ZN2cv3hal11normHammingEPKhii.exit ], [ %i.cg, %bb.au ], [ %i.cl, %bb.az ], [ 0.000000e+00, %bb.be ], [ %i.eh, %_ZN2cv3hal11normHammingEPKhii.exit262.loopexit ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.mf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !16
  %.not.i = icmp eq i32 %i.mg, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.dn

bb.dn:                                            ; preds = %.thread
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.mh = landingpad { ptr, i32 }
          catch ptr null
  %i.mi = extractvalue { ptr, i32 } %i.mh, 0
  call void @__clang_call_terminate(ptr %i.mi) #20
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %.thread, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret double %.10197

.body:                                            ; preds = %bb.ae, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, %bb.bw, %.split339, %bb.dm, %bb.aw, %bb.ba, %bb.bd, %bb.av, %bb.t
  %.pn238.pn.pn = phi { ptr, i32 } [ %i.at, %bb.t ], [ %i.cm, %bb.ba ], [ %.pn238, %.split339 ], [ %.pn235.pn, %bb.bw ], [ %i.ci, %bb.aw ], [ %.pn223.pn.pn, %bb.dm ], [ %.pn221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265 ], [ %.pn215, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260 ], [ %i.cr, %bb.bd ], [ %i.ch, %bb.av ], [ %i.bk, %bb.ae ], [ %i.bi, %bb.ac ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #19
  br label %bb.dp

bb.dp:                                            ; preds = %.body, %bb.q
  %.pn238.pn.pn.pn = phi { ptr, i32 } [ %.pn238.pn.pn, %.body ], [ %i.ap, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.p
  %.pn238.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn238.pn.pn.pn, %bb.dp ], [ %i.ao, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn238.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn238.pn.pn.pn.pn, %bb.dq ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %bb.e ]
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %.pn238.pn.pn.pn.pn.pn
}

declare noundef i32 @_ZNK2cv11_InputArray4typeEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !394
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c
end_hunk_0
begin_hunk_1_@_ZN2cv4normERKNS_11_InputArrayES2_iS2_:bb.a
  %i.gl = add nuw nsw i32 %.035.i.us, %i.gk
  %indvars.iv.next.i.us = or disjoint i64 %indvars.iv.i.us, 1 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ga, i64 %indvars.iv.next.i.us
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !18
  %i.go = getelementptr inbounds nuw i8, ptr %i.gb, i64 %indvars.iv.next.i.us
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !18
  %i.gq = xor i8 %i.gp, %i.gn
  %i.gr = zext i8 %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr @_ZN2cv3halL14popCountTable2E, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !18
  %i.gu = zext i8 %i.gt to i32
  %i.gv = add nuw nsw i32 %i.gl, %i.gu            ; 3 uses
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2cv3hal11normHammingEPKhS2_ii.exit.loopexit.us.unr-lcssa, label %.lr.ph.i.us, !llvm.loop !3

_ZN2cv3hal11normHammingEPKhS2_ii.exit.loopexit.us.unr-lcssa: ; preds = %.lr.ph.i.us
  br i1 %lcmp.mod.not, label %_ZN2cv3hal11normHammingEPKhS2_ii.exit.loopexit.us, label %.lr.ph.i.us.epil.preheader

.lr.ph.i.us.epil.preheader:                       ; preds = %_ZN2cv3hal11normHammingEPKhS2_ii.exit.loopexit.us.unr-lcssa, %.lr.ph.preheader.i.us
  %indvars.iv.i.us.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.us ], [ %indvars.iv.next.i.us.1, %_ZN2cv3hal11normHammingEPKhS2_ii.exit.loopexit.us.unr-lcssa ] ; 2 uses
  %.035.i.us.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.us ], [ %i.gv, %_ZN2cv3hal11normHammingEPKhS2_ii.exit.loopexit.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod383)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ga, i64 %indvars.iv.i.us.epil.init
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !18
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gb, i64 %indvars.iv.i.us.epil.init
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !18
  %i.ha = xor i8 %i.gz, %i.gx
  %i.hb = zext i8 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr @_ZN2cv3halL14popCountTable2E, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !18
  %i.he = zext i8 %i.hd to i32
  %i.hf = add nuw nsw i32 %.035.i.us.epil.init, %i.he
  br label %_ZN2cv3hal11normHammingEPKhS2_ii.exit.loopexit.us

_ZN2cv3hal11normHammingEPKhS2_ii.exit.loopexit.us: ; preds = %_ZN2cv3hal11normHammingEPKhS2_ii.exit.loopexit.us.unr-lcssa, %.lr.ph.i.us.epil.preheader
  %.lcssa = phi i32 [ %i.gv, %_ZN2cv3hal11normHammingEPKhS2_ii.exit.loopexit.us.unr-lcssa ], [ %i.hf, %.lr.ph.i.us.epil.preheader ]
  %i.hg = add nuw nsw i32 %.lcssa, %.0163.us333
  %i.hh = add nuw i64 %.0162.us334, 1
  %i.hi = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %25)
          to label %.split327.split.us unwind label %.split331.split.us, !llvm.loop !402 ; 0 uses

.split331.split.us:                               ; preds = %_ZN2cv3hal11normHammingEPKhS2_ii.exit.loopexit.us
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %.split331

.split327.split:                                  ; preds = %.split327, %_ZN2cv3hal11normHammingEPKhS2_ii.exit
  %.0162 = phi i64 [ %i.ho, %_ZN2cv3hal11normHammingEPKhS2_ii.exit ], [ 0, %.split327 ] ; 2 uses
  %i.hk = load i64, ptr %i.fl, align 8, !tbaa !60
  %i.hl = icmp ult i64 %.0162, %i.hk
  br i1 %i.hl, label %_ZN2cv3hal11normHammingEPKhS2_ii.exit, label %.split329.us

.split329.us:                                     ; preds = %.split327.split, %.split327.split.us, %.split327.us
  %.us-phi = phi i32 [ %.0163.us, %.split327.us ], [ %.0163.us333, %.split327.split.us ], [ 0, %.split327.split ]
  %i.hm = sitofp i32 %.us-phi to double
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.dz

bb.cq:                                            ; preds = %bb.cn
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %.split331

_ZN2cv3hal11normHammingEPKhS2_ii.exit:            ; preds = %.split327.split
  %i.ho = add nuw i64 %.0162, 1
  %i.hp = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %25)
          to label %.split327.split unwind label %.split331.split, !llvm.loop !402 ; 0 uses

.split331.split:                                  ; preds = %_ZN2cv3hal11normHammingEPKhS2_ii.exit
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %.split331

.split331:                                        ; preds = %.split331.us, %.split331.split.us, %.split331.split, %bb.cq
  %.pn252 = phi { ptr, i32 } [ %i.hn, %bb.cq ], [ %i.fv, %.split331.us ], [ %i.hq, %.split331.split ], [ %i.hj, %.split331.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.ec

bb.cr:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  store ptr %8, ptr %i.e, align 16, !tbaa !54
  %i.hr = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %9, ptr %i.hr, align 8, !tbaa !54
  %i.hs = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %10, ptr %i.hs, align 16, !tbaa !54
  %i.ht = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr null, ptr %i.ht, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  store double 0.000000e+00, ptr %26, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  invoke void @_ZN2cv15NAryMatIteratorC1EPPKNS_3MatEPPhi(ptr noundef nonnull align 8 dereferenceable(64) %27, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef -1)
          to label %bb.cs unwind label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.hu = getelementptr inbounds nuw i8, ptr %27, i64 40 ; 2 uses
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !59
  %.fr341 = freeze i64 %i.hv                      ; 4 uses
  %i.hw = icmp ult i64 %.fr341, 2147483647
  br i1 %i.hw, label %bb.cw, label %bb.cu

bb.ct:                                            ; preds = %bb.cu, %bb.cr
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.cu:                                            ; preds = %bb.cs
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %.fr341, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv4normERKNS_11_InputArrayES2_iS2_E15__cv_check__629) #21
          to label %bb.cv unwind label %bb.ct

bb.cv:                                            ; preds = %bb.cu
  unreachable

bb.cw:                                            ; preds = %bb.cs
  %i.hy = add nsw i32 %i.ah, -7
  %i.hz = icmp ult i32 %i.hy, 2                   ; 2 uses
  br i1 %i.bh, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  switch i32 %i.ah, label %bb.cy [
    i32 9, label %bb.da
    i32 8, label %bb.da
    i32 7, label %bb.da
    i32 3, label %bb.da
    i32 2, label %bb.da
    i32 1, label %bb.da
    i32 0, label %bb.da
  ]

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  br i1 %i.bl, label %bb.cz, label %bb.dm

bb.cz:                                            ; preds = %bb.cy
  switch i32 %i.ah, label %bb.dm [
    i32 9, label %bb.da
    i32 8, label %bb.da
    i32 7, label %bb.da
    i32 1, label %bb.da
    i32 0, label %bb.da
  ]

bb.da:                                            ; preds = %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cx, %bb.cx, %bb.cx, %bb.cx, %bb.cx, %bb.cx, %bb.cx
  %i.ia = load i32, ptr %8, align 8, !tbaa !47    ; 2 uses
  %i.ib = lshr i32 %i.ia, 5
  %i.ic = and i32 %i.ib, 127
  %i.id = add nuw nsw i32 %i.ic, 1
  %i.ie = shl i32 %i.ia, 2
  %i.if = and i32 %i.ie, 124
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = lshr i64 1275511473185297, %i.ig
  %i.ii = trunc i64 %i.ih to i32
  %i.ij = and i32 %i.ii, 15
  %i.ik = mul nuw nsw i32 %i.ij, %i.id
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = trunc nuw nsw i64 %.fr341 to i32        ; 4 uses
  br i1 %i.hz, label %bb.dd, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.in = icmp eq i32 %i.ah, 9
  br i1 %i.in, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.io = icmp samesign ult i32 %i.ah, 2
  %i.ip = and i1 %i.bh, %i.io
  %i.iq = select i1 %i.ip, i32 8388608, i32 32768
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da
  %i.ir = phi i32 [ 1024, %bb.da ], [ %i.iq, %bb.dc ], [ 1073741824, %bb.db ]
  %i.is = udiv i32 %i.ir, %i.ak                   ; 2 uses
  %.sroa.speculated295 = call i32 @llvm.umin.i32(i32 %i.is, i32 %i.im) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  store i32 0, ptr %28, align 4, !tbaa !18
  %i.it = getelementptr inbounds nuw i8, ptr %27, i64 32 ; 3 uses
  %invariant.op = sub nsw i32 %i.is, %.sroa.speculated295
  %.not342 = icmp eq i64 %.fr341, 0
  %i.iu = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  br i1 %.not342, label %.split, label %.split.us

.split.us:                                        ; preds = %bb.dd, %._crit_edge.us
  %.0161.us = phi i32 [ %.2.us, %._crit_edge.us ], [ 0, %bb.dd ]
  %.0160.us = phi i64 [ %i.jw, %._crit_edge.us ], [ 0, %bb.dd ] ; 2 uses
  %i.iw = load i64, ptr %i.it, align 8, !tbaa !60
  %i.ix = icmp ult i64 %.0160.us, %i.iw
  br i1 %i.ix, label %.preheader.us, label %.split321.us

bb.de:                                            ; preds = %.preheader.us, %bb.dk
  %i.iy = phi ptr [ %.pre350, %.preheader.us ], [ %i.jt, %bb.dk ]
  %i.iz = phi ptr [ %.pre349, %.preheader.us ], [ %i.jq, %bb.dk ]
  %i.ja = phi ptr [ %.pre, %.preheader.us ], [ %i.jo, %bb.dk ]
  %.0159319.us = phi i32 [ 0, %.preheader.us ], [ %i.ju, %bb.dk ] ; 3 uses
  %.1318.us = phi i32 [ %.0161.us, %.preheader.us ], [ %.2.us, %bb.dk ]
  %i.jb = sub nsw i32 %i.im, %.0159319.us
  %.sroa.speculated.us = call i32 @llvm.smin.i32(i32 %.sroa.speculated295, i32 %i.jb) ; 4 uses
  %i.jc = invoke noundef i32 %.0.i.i(ptr noundef %i.ja, ptr noundef %i.iz, ptr noundef %i.iy, ptr noundef nonnull %28, i32 noundef %.sroa.speculated.us, i32 noundef %i.ak)
          to label %bb.df unwind label %.split323.us ; 0 uses

bb.df:                                            ; preds = %bb.de
  %i.jd = add nsw i32 %.sroa.speculated.us, %.1318.us ; 2 uses
  %.not237.us = icmp slt i32 %i.jd, %invariant.op
  br i1 %.not237.us, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.je = load i64, ptr %i.it, align 8, !tbaa !60
  %.not238.us = icmp ult i64 %i.jw, %i.je
  %i.jf = add nsw i32 %.sroa.speculated.us, %.0159319.us
  %.not239.us = icmp slt i32 %i.jf, %i.im
  %or.cond310.us = select i1 %.not238.us, i1 true, i1 %.not239.us
  br i1 %or.cond310.us, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.jg = load float, ptr %28, align 4            ; 2 uses
  %i.jh = fpext float %i.jg to double
  %.cast.us = bitcast float %i.jg to i32
  %i.ji = sitofp i32 %.cast.us to double
  %i.jj = select i1 %i.hz, double %i.jh, double %i.ji
  %i.jk = load double, ptr %26, align 8, !tbaa !18
  %i.jl = fadd double %i.jk, %i.jj
  store double %i.jl, ptr %26, align 8, !tbaa !18
  store i32 0, ptr %28, align 4, !tbaa !18
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.2.us = phi i32 [ 0, %bb.dh ], [ %i.jd, %bb.dg ] ; 2 uses
  %29 = sext i32 %.sroa.speculated.us to i64      ; 2 uses
  %i.jm = mul nsw i64 %29, %i.il                  ; 2 uses
  %i.jn = load ptr, ptr %i.f, align 16, !tbaa !61
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jm ; 2 uses
  store ptr %i.jo, ptr %i.f, align 16, !tbaa !61
  %i.jp = load ptr, ptr %i.iu, align 8, !tbaa !61
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jm ; 2 uses
  store ptr %i.jq, ptr %i.iu, align 8, !tbaa !61
  %i.jr = load ptr, ptr %i.iv, align 16, !tbaa !61 ; 2 uses
  %.not240.us = icmp eq ptr %i.jr, null
  br i1 %.not240.us, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.js = getelementptr inbounds i8, ptr %i.jr, i64 %29 ; 2 uses
  store ptr %i.js, ptr %i.iv, align 16, !tbaa !61
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.jt = phi ptr [ %i.js, %bb.dj ], [ null, %bb.di ]
  %i.ju = add nuw nsw i32 %.0159319.us, %.sroa.speculated295 ; 2 uses
  %i.jv = icmp slt i32 %i.ju, %i.im
  br i1 %i.jv, label %bb.de, label %._crit_edge.us, !llvm.loop !403

.preheader.us:                                    ; preds = %.split.us
  %i.jw = add nuw i64 %.0160.us, 1                ; 2 uses
  %.pre = load ptr, ptr %i.f, align 16, !tbaa !61
  %.pre349 = load ptr, ptr %i.iu, align 8, !tbaa !61
  %.pre350 = load ptr, ptr %i.iv, align 16, !tbaa !61
  br label %bb.de

._crit_edge.us:                                   ; preds = %bb.dk
  %i.jx = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %27)
          to label %.split.us unwind label %.split325.us, !llvm.loop !404 ; 0 uses

.split323.us:                                     ; preds = %bb.de
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

.split325.us:                                     ; preds = %._crit_edge.us
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

.split:                                           ; preds = %bb.dd, %.preheader
  %.0160 = phi i64 [ %i.kc, %.preheader ], [ 0, %bb.dd ] ; 2 uses
  %i.ka = load i64, ptr %i.it, align 8, !tbaa !60
  %i.kb = icmp ult i64 %.0160, %i.ka
  br i1 %i.kb, label %.preheader, label %.split321.us

.preheader:                                       ; preds = %.split
  %i.kc = add nuw i64 %.0160, 1
  %i.kd = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %27)
          to label %.split unwind label %.split325, !llvm.loop !404 ; 0 uses

.split321.us:                                     ; preds = %.split.us, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  br label %.loopexit

.split325:                                        ; preds = %.preheader
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dl:                                            ; preds = %.split325, %.split325.us, %.split323.us
  %.pn233 = phi { ptr, i32 } [ %i.jy, %.split323.us ], [ %i.ke, %.split325 ], [ %i.jz, %.split325.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  br label %bb.dy

bb.dm:                                            ; preds = %bb.cz, %bb.cy
  %i.kf = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.kg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dp, %bb.dm
  %.0 = phi i64 [ 0, %bb.dm ], [ %i.kq, %bb.dp ]  ; 2 uses
  %i.ki = load i64, ptr %i.kf, align 8, !tbaa !60
  %i.kj = icmp ult i64 %.0, %i.ki
  br i1 %i.kj, label %bb.do, label %.loopexit

bb.do:                                            ; preds = %bb.dn
  %i.kk = load ptr, ptr %i.f, align 16, !tbaa !61
  %i.kl = load ptr, ptr %i.kg, align 8, !tbaa !61
  %i.km = load ptr, ptr %i.kh, align 16, !tbaa !61
  %i.kn = load i64, ptr %i.hu, align 8, !tbaa !59
  %i.ko = trunc i64 %i.kn to i32
  %i.kp = invoke noundef i32 %.0.i.i(ptr noundef %i.kk, ptr noundef %i.kl, ptr noundef %i.km, ptr noundef nonnull %26, i32 noundef %i.ko, i32 noundef %i.ak)
          to label %bb.dp unwind label %bb.dq     ; 0 uses

bb.dp:                                            ; preds = %bb.do
  %i.kq = add nuw i64 %.0, 1
  %i.kr = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cv15NAryMatIteratorppEv(ptr noundef nonnull align 8 dereferenceable(64) %27)
          to label %bb.dn unwind label %bb.dq, !llvm.loop !405 ; 0 uses

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

.loopexit:                                        ; preds = %bb.dn, %.split321.us
  br i1 %i.bg, label %bb.dr, label %bb.dw

bb.dr:                                            ; preds = %.loopexit
  %i.kt = icmp samesign ult i32 %i.ah, 5
  br i1 %i.kt, label %bb.ds, label %switch.early.test

switch.early.test:                                ; preds = %bb.dr
  switch i32 %i.ah, label %bb.du [
    i32 12, label %bb.ds
    i32 9, label %bb.ds
    i32 8, label %bb.dt
    i32 7, label %bb.dt
    i32 5, label %bb.dt
  ]

bb.ds:                                            ; preds = %switch.early.test, %switch.early.test, %bb.dr
  %i.ku = load i32, ptr %26, align 8, !tbaa !18
  %i.kv = uitofp i32 %i.ku to double
  br label %.thread307

bb.dt:                                            ; preds = %switch.early.test, %switch.early.test, %switch.early.test
  %i.kw = load float, ptr %26, align 8, !tbaa !18
  %i.kx = fpext float %i.kw to double
  br label %.thread307

bb.du:                                            ; preds = %switch.early.test
  %i.ky = and i32 %i.ag, 30
  %or.cond39 = icmp eq i32 %i.ky, 10
  br i1 %or.cond39, label %bb.dv, label %..thread307_crit_edge

..thread307_crit_edge:                            ; preds = %bb.du
  %.pre351 = load double, ptr %26, align 8, !tbaa !18
  br label %.thread307

bb.dv:                                            ; preds = %bb.du
  %i.kz = load i64, ptr %26, align 8, !tbaa !18
  %i.la = uitofp i64 %i.kz to double
  br label %.thread307

bb.dw:                                            ; preds = %.loopexit
  %.pre352 = load double, ptr %26, align 8, !tbaa !18 ; 2 uses
  br i1 %i.bj, label %bb.dx, label %.thread307

bb.dx:                                            ; preds = %bb.dw
  %i.lb = call double @sqrt(double noundef %.pre352) #19
  br label %.thread307

.thread307:                                       ; preds = %bb.dw, %..thread307_crit_edge, %bb.dx, %bb.dv, %bb.dt, %bb.ds
  %.6204 = phi double [ %i.kv, %bb.ds ], [ %i.kx, %bb.dt ], [ %i.la, %bb.dv ], [ %i.lb, %bb.dx ], [ %.pre351, %..thread307_crit_edge ], [ %.pre352, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dl, %bb.dq, %bb.ct
  %.pn233.pn.pn = phi { ptr, i32 } [ %i.hx, %bb.ct ], [ %.pn233, %bb.dl ], [ %i.ks, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %bb.ec

bb.dz:                                            ; preds = %bb.bq, %bb.bl, %bb.ci, %.split329.us, %.thread307, %bb.ah
  %.8206 = phi double [ %i.be, %bb.ah ], [ %.6204, %.thread307 ], [ %i.fc, %bb.ci ], [ %i.hm, %.split329.us ], [ %i.dn, %bb.bl ], [ %i.ds, %bb.bq ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.lc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !16
  %.not.i = icmp eq i32 %i.ld, 0
  br i1 %.not.i, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.le = landingpad { ptr, i32 }
          catch ptr null
  %i.lf = extractvalue { ptr, i32 } %i.le, 0
  call void @__clang_call_terminate(ptr %i.lf) #20
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.dz, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret double %.8206

bb.ec:                                            ; preds = %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286, %bb.cm, %.split331, %bb.dy, %bb.bn, %bb.br, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, %bb.ad, %bb.z
  %.pn255 = phi { ptr, i32 } [ %i.as, %bb.z ], [ %i.ay, %bb.ad ], [ %.pn224, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279 ], [ %i.dt, %bb.br ], [ %.pn252, %.split331 ], [ %.pn249.pn, %bb.cm ], [ %i.ch, %bb.av ], [ %.pn233.pn.pn, %bb.dy ], [ %.pn231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit286 ], [ %.pn226, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283 ], [ %i.do, %bb.bm ], [ %i.dp, %bb.bn ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #19
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.y
  %.pn255.pn = phi { ptr, i32 } [ %.pn255, %bb.ec ], [ %i.ar, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #19
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.x
  %.pn255.pn.pn = phi { ptr, i32 } [ %.pn255.pn, %bb.ed ], [ %i.aq, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.w
  %.pn255.pn.pn.pn = phi { ptr, i32 } [ %.pn255.pn.pn, %bb.ee ], [ %i.ap, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.eg

end_hunk_1
