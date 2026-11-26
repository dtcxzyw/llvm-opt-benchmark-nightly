Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/feature?download=true
inline.NumInlined: 1028
inline.NumDeleted: 470
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK2cv6detail8tracking15contrib_feature14CvHOGEvaluator17integralHistogramERKNS_3MatERSt6vectorIS4_SaIS4_EERS4_i:bb.a
  %i.a = load i32, ptr %1, align 8, !tbaa !151
  %i.b = and i32 %i.a, 4095
  switch i32 %i.b, label %bb.b [
    i32 0, label %bb.g
    i32 64, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv6detail8tracking15contrib_feature14CvHOGEvaluator17integralHistogramERKNS_3MatERSt6vectorIS4_SaIS4_EERS4_i, ptr noundef nonnull @.str.7, i32 noundef 920) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %9, align 8, !tbaa !25     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.h = load i64, ptr %i.f, align 8, !tbaa !23
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %common.resume

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load i32, ptr %i.j, align 8, !tbaa !246  ; 6 uses
  %i.l = icmp slt i32 %i.k, 3
  br i1 %i.l, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.31, i32 noundef 109) #25
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %7, align 8, !tbaa !25     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.q = load i64, ptr %i.o, align 8, !tbaa !23
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i202 ], [ %.pn196.pn.pn, %bb.bd ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %common.resume

bb.k:                                             ; preds = %bb.g
  %i.s = icmp sgt i32 %i.k, 0
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.u = icmp eq i32 %i.k, 2
  %i.v = zext i1 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !54
  br label %_ZNK2cv8MatShapeclEv.exit

bb.m:                                             ; preds = %bb.k
  %i.y = icmp eq i32 %i.k, 0
  %i.z = zext i1 %i.y to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.l, %bb.m
  %i.aa = phi i32 [ %i.x, %bb.l ], [ %i.z, %bb.m ] ; 15 uses
  %i.ab = icmp eq i32 %i.k, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = icmp sgt i32 %i.k, -1
  %i.af = zext i1 %i.ae to i32
  %i.ag = select i1 %i.ab, i32 %i.ad, i32 %i.af   ; 5 uses
  %.sroa.2.0.insert.ext.i = zext i32 %i.ag to i64 ; 3 uses
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.aa to i64 ; 11 uses
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %i.ah = load ptr, ptr %2, align 8, !tbaa !158   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !246 ; 4 uses
  %i.ak = icmp slt i32 %i.aj, 3
  br i1 %i.ak, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.30, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.31, i32 noundef 109) #25
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i201: ; preds = %bb.p
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !23
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i202

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i202: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i201
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %common.resume

bb.q:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.ar = icmp sgt i32 %i.aj, 0
  br i1 %i.ar, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 84
  %i.at = icmp eq i32 %i.aj, 2
  %i.au = zext i1 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !54
  br label %_ZNK2cv8MatShapeclEv.exit208

bb.s:                                             ; preds = %bb.q
  %i.ax = icmp eq i32 %i.aj, 0
  %i.ay = zext i1 %i.ax to i32
  br label %_ZNK2cv8MatShapeclEv.exit208

_ZNK2cv8MatShapeclEv.exit208:                     ; preds = %bb.r, %bb.s
  %i.az = phi i32 [ %i.aw, %bb.r ], [ %i.ay, %bb.s ]
  %.sroa.0.0.insert.ext.i206 = zext i32 %i.az to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %11, i64 %.sroa.0.0.insert.insert.i, i32 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %12, i64 %.sroa.0.0.insert.insert.i, i32 noundef 0)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit208
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.ba = add nuw nsw i64 %.sroa.2.0.insert.ext.i, %.sroa.0.0.insert.ext.i
  %i.bb = shl i64 %i.ba, 32
  %sext = add i64 %i.bb, 17179869184              ; 2 uses
  %i.bc = ashr exact i64 %sext, 32                ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  store ptr %i.bd, ptr %13, align 8, !tbaa !248
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.not.i.i = icmp ugt i64 %i.bc, 264
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !249
  br i1 %.not.i.i, label %bb.u, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

bb.u:                                             ; preds = %bb.t
  %i.bf = icmp ugt i64 %i.bc, 4611686018427387903
  %i.bg = ashr exact i64 %sext, 30
  %i.bh = select i1 %i.bf, i64 -1, i64 %i.bg
  %i.bi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bh) #28
          to label %.noexc unwind label %bb.x     ; 2 uses

.noexc:                                           ; preds = %bb.u
  store ptr %i.bi, ptr %13, align 8, !tbaa !248
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

_ZN2cv10AutoBufferIiLm264EEC2Em.exit:             ; preds = %.noexc, %bb.t
  %i.bj = phi ptr [ %i.bi, %.noexc ], [ %i.bd, %bb.t ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4 ; 5 uses
  %i.bl = sext i32 %i.aa to i64                   ; 2 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 3 uses
  %.not221 = icmp slt i32 %i.aa, -1
  br i1 %.not221, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %i.bo = add i32 %i.aa, 1
  %wide.trip.count = zext i32 %i.bo to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.v, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %.not178223 = icmp slt i32 %i.ag, -1
  br i1 %.not178223, label %._crit_edge, label %.lr.ph225.preheader

.lr.ph225.preheader:                              ; preds = %.preheader
  %i.bp = add i32 %i.ag, 1
  %wide.trip.count260 = zext i32 %i.bp to i64
  br label %.lr.ph225

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %indvars.iv = phi i64 [ -1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.v ] ; 3 uses
  %i.bq = trunc nsw i64 %indvars.iv to i32
  %i.br = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.bq, i32 noundef %i.aa, i32 noundef 1)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %indvars.iv
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !54
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !231

bb.w:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit208
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.x:                                             ; preds = %bb.u
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit219

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph225, %.lr.ph
  %lpad.loopexit.split-lp354 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph225:                                        ; preds = %.lr.ph225.preheader, %bb.y
  %indvars.iv257 = phi i64 [ -1, %.lr.ph225.preheader ], [ %indvars.iv.next258, %bb.y ] ; 3 uses
  %i.bv = trunc nsw i64 %indvars.iv257 to i32
  %i.bw = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %i.bv, i32 noundef %i.ag, i32 noundef 1)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %.lr.ph225
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %indvars.iv257
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !54
  %indvars.iv.next258 = add nsw i64 %indvars.iv257, 1 ; 2 uses
  %exitcond261.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count260
  br i1 %exitcond261.not, label %._crit_edge, label %.lr.ph225, !llvm.loop !232

._crit_edge:                                      ; preds = %bb.y, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.by = shl nsw i32 %i.aa, 2                    ; 2 uses
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store ptr %i.ca, ptr %14, align 8, !tbaa !251
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.not.i.i209 = icmp ugt i32 %i.by, 264
  store i64 %i.bz, ptr %i.cb, align 8, !tbaa !252
  br i1 %.not.i.i209, label %bb.z, label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit

bb.z:                                             ; preds = %._crit_edge
  %i.cc = icmp slt i32 %i.aa, 0
  %i.cd = shl nuw nsw i64 %i.bz, 2
  %i.ce = select i1 %i.cc, i64 -1, i64 %i.cd
  %i.cf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ce) #28
          to label %.noexc210 unwind label %bb.af ; 2 uses

.noexc210:                                        ; preds = %bb.z
  store ptr %i.cf, ptr %14, align 8, !tbaa !251
  br label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit

_ZN2cv10AutoBufferIfLm264EEC2Em.exit:             ; preds = %.noexc210, %._crit_edge
  %i.cg = phi ptr [ %i.cf, %.noexc210 ], [ %i.ca, %._crit_edge ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %15, i32 noundef 1, i32 noundef %i.aa, i32 noundef 5, ptr noundef nonnull %i.cg, i64 noundef 0)
          to label %bb.aa unwind label %bb.ag

bb.aa:                                            ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.bl
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %16, i32 noundef 1, i32 noundef %i.aa, i32 noundef 5, ptr noundef nonnull %i.ch, i64 noundef 0)
          to label %bb.ab unwind label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.ci = shl nsw i32 %i.aa, 1                    ; 2 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cj
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef 1, i32 noundef %i.aa, i32 noundef 5, ptr noundef nonnull %i.ck, i64 noundef 0)
          to label %bb.ac unwind label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.cl = mul nsw i32 %i.aa, 3                    ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cm
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %18, i32 noundef 1, i32 noundef %i.aa, i32 noundef 5, ptr noundef nonnull %i.cn, i64 noundef 0)
          to label %bb.ad unwind label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.co = sitofp i32 %4 to double
  %i.cp = fdiv double %i.co, f0x400921FB54442D18
  %i.cq = fptrunc double %i.cp to float           ; 2 uses
  %i.cr = icmp sgt i32 %i.ag, 0
  br i1 %i.cr, label %.lr.ph235, label %._crit_edge236

.lr.ph235:                                        ; preds = %bb.ad
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.cy = icmp sgt i32 %i.aa, 0                   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %19, i64 20
  %i.db = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %20, i64 20
  %i.de = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.dj = zext i32 %i.ci to i64                   ; 2 uses
  %i.dk = zext i32 %i.cl to i64                   ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %.sroa.0.0.insert.ext.i
  %invariant.gep308 = getelementptr [4 x i8], ptr %i.cg, i64 %i.dj ; 4 uses
  %invariant.gep310 = getelementptr [4 x i8], ptr %i.cg, i64 %i.dk ; 4 uses
  %i.dl = shl nuw nsw i64 %.sroa.0.0.insert.ext.i, 2
  %i.dm = add nuw nsw i64 %.sroa.0.0.insert.ext.i, %i.dj
  %i.dn = shl nuw nsw i64 %i.dm, 2
  %scevgep = getelementptr i8, ptr %i.cg, i64 %i.dn ; 2 uses
  %i.do = add nuw nsw i64 %.sroa.0.0.insert.ext.i, %i.dk
  %i.dp = shl nuw nsw i64 %i.do, 2
  %scevgep333 = getelementptr i8, ptr %i.cg, i64 %i.dp ; 2 uses
  %min.iters.check = icmp ult i32 %i.aa, 4
  %n.vec = and i64 %.sroa.0.0.insert.ext.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cq, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert349 = insertelement <4 x i32> poison, i32 %4, i64 0
  %broadcast.splat350 = shufflevector <4 x i32> %broadcast.splatinsert349, <4 x i32> poison, <4 x i32> zeroinitializer ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %.sroa.0.0.insert.ext.i
  br label %bb.ae

.loopexit:                                        ; preds = %.lr.ph232, %middle.block, %bb.ak
  %exitcond276.not = icmp eq i64 %indvars.iv.next273, %.sroa.2.0.insert.ext.i
  br i1 %exitcond276.not, label %._crit_edge236, label %bb.ae, !llvm.loop !233

bb.ae:                                            ; preds = %.lr.ph235, %.loopexit
  %indvars.iv272 = phi i64 [ 0, %.lr.ph235 ], [ %indvars.iv.next273, %.loopexit ] ; 4 uses
  %i.dq = load ptr, ptr %i.cs, align 8, !tbaa !88 ; 3 uses
  %i.dr = load i64, ptr %i.ct, align 8, !tbaa !24 ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv272 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !54
  %i.du = sext i32 %i.dt to i64
  %i.dv = mul i64 %i.dr, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dv ; 2 uses
  %i.dx = getelementptr i8, ptr %i.ds, i64 -4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !54
  %i.dz = sext i32 %i.dy to i64
  %i.ea = mul i64 %i.dr, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ea
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next273
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !54
  %i.ee = sext i32 %i.ed to i64
  %i.ef = mul i64 %i.dr, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ef
  %i.eh = load ptr, ptr %i.cu, align 8, !tbaa !88 ; 2 uses
  %i.ei = load i64, ptr %i.cv, align 8, !tbaa !24
  %i.ej = mul i64 %i.ei, %indvars.iv272           ; 2 uses
  %i.ek = getelementptr i8, ptr %i.eh, i64 %i.ej  ; 5 uses
  %i.el = load ptr, ptr %i.cw, align 8, !tbaa !88 ; 2 uses
  %i.em = load i64, ptr %i.cx, align 8, !tbaa !24
  %i.en = mul i64 %i.em, %indvars.iv272           ; 2 uses
  %i.eo = getelementptr i8, ptr %i.el, i64 %i.en  ; 5 uses
  br i1 %i.cy, label %.lr.ph228.preheader, label %._crit_edge229

.lr.ph228.preheader:                              ; preds = %bb.ae
  %.pre = load i32, ptr %i.bk, align 4, !tbaa !54
  br label %.lr.ph228

.lr.ph228:                                        ; preds = %.lr.ph228.preheader, %.lr.ph228
  %25 = phi i32 [ %.pre, %.lr.ph228.preheader ], [ %i.eq, %.lr.ph228 ]
  %indvars.iv262 = phi i64 [ 0, %.lr.ph228.preheader ], [ %indvars.iv.next263, %.lr.ph228 ] ; 4 uses
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next263
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !54 ; 2 uses
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds i8, ptr %i.dw, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !23
  %i.eu = zext i8 %i.et to i32
  %i.ev = getelementptr [4 x i8], ptr %i.bk, i64 %indvars.iv262
  %i.ew = getelementptr i8, ptr %i.ev, i64 -4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !54
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds i8, ptr %i.dw, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !23
  %i.fb = zext i8 %i.fa to i32
  %i.fc = sub nsw i32 %i.eu, %i.fb
  %i.fd = sitofp i32 %i.fc to float
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv262
  store float %i.fd, ptr %i.fe, align 4, !tbaa !90
  %i.ff = sext i32 %25 to i64                     ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %i.eg, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !23
  %i.fi = zext i8 %i.fh to i32
  %i.fj = getelementptr inbounds i8, ptr %i.eb, i64 %i.ff
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !23
  %i.fl = zext i8 %i.fk to i32
  %i.fm = sub nsw i32 %i.fi, %i.fl
  %i.fn = sitofp i32 %i.fm to float
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv262
  store float %i.fn, ptr %gep, align 4, !tbaa !90
  %exitcond266.not = icmp eq i64 %indvars.iv.next263, %.sroa.0.0.insert.ext.i
  br i1 %exitcond266.not, label %._crit_edge229, label %.lr.ph228, !llvm.loop !234

bb.af:                                            ; preds = %bb.z
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit216

bb.ag:                                            ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ah:                                            ; preds = %bb.aa
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ai:                                            ; preds = %bb.ab
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.aj:                                            ; preds = %bb.ac
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

._crit_edge229:                                   ; preds = %.lr.ph228, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  store i32 0, ptr %i.cz, align 8, !tbaa !91
  store i32 0, ptr %i.da, align 4, !tbaa !92
  store i32 16842752, ptr %19, align 8, !tbaa !121
  store ptr %15, ptr %i.db, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  store i32 0, ptr %i.dc, align 8, !tbaa !91
  store i32 0, ptr %i.dd, align 4, !tbaa !92
  store i32 16842752, ptr %20, align 8, !tbaa !121
  store ptr %16, ptr %i.de, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  store i64 0, ptr %i.dg, align 8
  store i32 33619968, ptr %21, align 8, !tbaa !121
  store ptr %17, ptr %i.df, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  store i64 0, ptr %i.di, align 8
  store i32 33619968, ptr %22, align 8, !tbaa !121
  store ptr %18, ptr %i.dh, align 8, !tbaa !122
  invoke void @_ZN2cv11cartToPolarERKNS_11_InputArrayES2_RKNS_12_OutputArrayES5_b(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(24) %22, i1 noundef zeroext false)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %._crit_edge229
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br i1 %i.cy, label %.lr.ph232.preheader, label %.loopexit

.lr.ph232.preheader:                              ; preds = %bb.ak
  br i1 %min.iters.check, label %.lr.ph232.preheader353, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph232.preheader
  %i.ft = getelementptr i8, ptr %i.el, i64 %i.en
  %i.fu = getelementptr i8, ptr %i.ft, i64 %.sroa.0.0.insert.ext.i ; 3 uses
  %i.fv = getelementptr i8, ptr %i.eh, i64 %i.ej
  %i.fw = getelementptr i8, ptr %i.fv, i64 %i.dl  ; 3 uses
  %bound0 = icmp ult ptr %i.eo, %i.fw
  %bound1 = icmp ult ptr %i.ek, %i.fu
  %found.conflict = and i1 %bound0, %bound1
  %bound0334 = icmp ult ptr %i.eo, %scevgep333
  %bound1335 = icmp ult ptr %invariant.gep310, %i.fu
  %found.conflict336 = and i1 %bound0334, %bound1335
  %conflict.rdx = or i1 %found.conflict, %found.conflict336
  %bound0337 = icmp ult ptr %i.eo, %scevgep
  %bound1338 = icmp ult ptr %invariant.gep308, %i.fu
  %found.conflict339 = and i1 %bound0337, %bound1338
  %conflict.rdx340 = or i1 %conflict.rdx, %found.conflict339
  %bound0341 = icmp ult ptr %i.ek, %scevgep333
  %bound1342 = icmp ult ptr %invariant.gep310, %i.fw
  %found.conflict343 = and i1 %bound0341, %bound1342
  %conflict.rdx344 = or i1 %conflict.rdx340, %found.conflict343
  %bound0345 = icmp ult ptr %i.ek, %scevgep
  %bound1346 = icmp ult ptr %invariant.gep308, %i.fw
  %found.conflict347 = and i1 %bound0345, %bound1346
  %conflict.rdx348 = or i1 %conflict.rdx344, %found.conflict347
  br i1 %conflict.rdx348, label %.lr.ph232.preheader353, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 5 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep308, i64 %index
  %wide.load = load <4 x float>, ptr %i.fx, align 4, !tbaa !90, !alias.scope !253
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep310, i64 %index
  %wide.load351 = load <4 x float>, ptr %i.fy, align 4, !tbaa !90, !alias.scope !254
  %i.fz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load351, <4 x float> %broadcast.splat, <4 x float> splat (float -5.000000e-01))
  %i.ga = call <4 x float> @llvm.floor.v4f32(<4 x float> %i.fz)
  %i.gb = fptosi <4 x float> %i.ga to <4 x i32>   ; 3 uses
  %i.gc = icmp slt <4 x i32> %i.gb, zeroinitializer
  %i.gd = icmp sgt <4 x i32> %broadcast.splat350, %i.gb
  %i.ge = select <4 x i1> %i.gd, <4 x i32> zeroinitializer, <4 x i32> %broadcast.splat350
  %i.gf = sub <4 x i32> zeroinitializer, %i.ge
  %i.gg = select <4 x i1> %i.gc, <4 x i32> %broadcast.splat350, <4 x i32> %i.gf
  %i.gh = add <4 x i32> %i.gg, %i.gb
  %i.gi = trunc <4 x i32> %i.gh to <4 x i8>
  %i.gj = getelementptr inbounds nuw i8, ptr %i.eo, i64 %index
  store <4 x i8> %i.gi, ptr %i.gj, align 1, !tbaa !23, !alias.scope !255, !noalias !256
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %index
  store <4 x float> %wide.load, ptr %i.gk, align 4, !tbaa !90, !alias.scope !257, !noalias !258
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gl = icmp eq i64 %index.next, %n.vec
  br i1 %i.gl, label %middle.block, label %vector.body, !llvm.loop !240

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph232.preheader353

.lr.ph232.preheader353:                           ; preds = %vector.memcheck, %.lr.ph232.preheader, %middle.block
  %indvars.iv267.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph232.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph232

.lr.ph232:                                        ; preds = %.lr.ph232.preheader353, %.lr.ph232
  %indvars.iv267 = phi i64 [ %indvars.iv.next268, %.lr.ph232 ], [ %indvars.iv267.ph, %.lr.ph232.preheader353 ] ; 5 uses
  %gep309 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep308, i64 %indvars.iv267
  %i.gm = load float, ptr %gep309, align 4, !tbaa !90
  %gep311 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep310, i64 %indvars.iv267
  %i.gn = load float, ptr %gep311, align 4, !tbaa !90
  %i.go = call float @llvm.fmuladd.f32(float %i.gn, float %i.cq, float -5.000000e-01)
  %i.gp = call float @llvm.floor.f32(float %i.go)
  %i.gq = fptosi float %i.gp to i32               ; 3 uses
  %i.gr = icmp slt i32 %i.gq, 0
  %.not195 = icmp sgt i32 %4, %i.gq
  %i.gs = select i1 %.not195, i32 0, i32 %4
  %i.gt = sub i32 0, %i.gs
  %.0145.p = select i1 %i.gr, i32 %4, i32 %i.gt
  %.0145 = add i32 %.0145.p, %i.gq
  %i.gu = trunc i32 %.0145 to i8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.eo, i64 %indvars.iv267
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !23
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv267
  store float %i.gm, ptr %i.gw, align 4, !tbaa !90
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %exitcond271.not = icmp eq i64 %indvars.iv.next268, %.sroa.0.0.insert.ext.i
  br i1 %exitcond271.not, label %.loopexit, label %.lr.ph232, !llvm.loop !241

bb.al:                                            ; preds = %._crit_edge229
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.aw

._crit_edge236:                                   ; preds = %.loopexit, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.gy = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 0, ptr %i.gy, align 8, !tbaa !91
  %i.gz = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i32 0, ptr %i.gz, align 4, !tbaa !92
  store i32 16842752, ptr %23, align 8, !tbaa !121
  %i.ha = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %11, ptr %i.ha, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  %i.hb = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i64 0, ptr %i.hc, align 8
  store i32 33619968, ptr %24, align 8, !tbaa !121
  store ptr %3, ptr %i.hb, align 8, !tbaa !122
  %i.hd = load i32, ptr %11, align 8, !tbaa !151
  %i.he = and i32 %i.hd, 31
  invoke void @_ZN2cv8integralERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(24) %24, i32 noundef %i.he)
          to label %bb.am unwind label %bb.at

bb.am:                                            ; preds = %._crit_edge236
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.hf = icmp sgt i32 %4, 0
  br i1 %i.hf, label %.lr.ph252, label %._crit_edge253

.lr.ph252:                                        ; preds = %bb.am
  %i.hg = load ptr, ptr %2, align 8, !tbaa !158
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 128
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !24
  %i.hj = lshr i64 %i.hi, 2                       ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !24
  %i.hm = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !24
  %i.ho = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.hp = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.hq = shl nuw i64 %.sroa.0.0.insert.ext.i206, 32
  %i.hr = ashr exact i64 %i.hq, 30
end_hunk_0
