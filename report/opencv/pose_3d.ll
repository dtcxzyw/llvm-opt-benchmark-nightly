Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pose_3d?download=true
inline.NumInlined: 342
inline.NumDeleted: 165
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2cv12ppf_match_3dL8poseToRTERKNS_4MatxIdLi4ELi4EEERNS1_IdLi3ELi3EEERNS_3VecIdLi3EEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !74
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.j = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 -1040056314, ptr %18, align 8, !tbaa !35
  store ptr %1, ptr %i.j, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 12884901891, ptr %i.k, align 8, !tbaa !23
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %15, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %_ZN2cv12ppf_match_3dL7poseToRERKNS_4MatxIdLi4ELi4EEERNS1_IdLi3ELi3EEE.exit unwind label %bb.g

bb.e:                                             ; preds = %_ZN2cv3MatC2IdLi4ELi4EEERKNS_4MatxIT_XT0_EXT1_EEEb.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn.pn.i = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.m, %bb.f ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.h ], [ %i.l, %bb.e ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %common.resume

_ZN2cv12ppf_match_3dL7poseToRERKNS_4MatxIdLi4ELi4EEERNS1_IdLi3ELi3EEE.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  store <4 x i32> <i32 1124024326, i32 2, i32 4, i32 4>, ptr %21, align 16, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i32 153, ptr %i.o, align 16, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %21, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i8 0, i64 48, i1 false)
  call void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.q, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %i.r = getelementptr inbounds nuw i8, ptr %21, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.r, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef 4, i32 noundef 4, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.t, align 8
  store i32 33619968, ptr %8, align 8, !tbaa !35
  store ptr %21, ptr %i.s, align 8, !tbaa !36
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %_ZN2cv3MatC2IdLi4ELi4EEERKNS_4MatxIT_XT0_EXT1_EEEb.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZN2cv12ppf_match_3dL7poseToRERKNS_4MatxIdLi4ELi4EEERNS1_IdLi3ELi3EEE.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %common.resume

_ZN2cv3MatC2IdLi4ELi4EEERKNS_4MatxIT_XT0_EXT1_EEEb.exit: ; preds = %_ZN2cv12ppf_match_3dL7poseToRERKNS_4MatxIdLi4ELi4EEERNS1_IdLi3ELi3EEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !75
  store i32 0, ptr %5, align 4, !tbaa !72, !noalias !75
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 3, ptr %i.v, align 4, !tbaa !73, !noalias !75
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !75
  store i64 9223372034707292160, ptr %6, align 8, !noalias !75
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZN2cv3MatC2IdLi4ELi4EEERKNS_4MatxIT_XT0_EXT1_EEEb.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !75
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !75
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !76
  store i64 9223372034707292160, ptr %3, align 8, !noalias !76
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !76
  store i32 3, ptr %4, align 4, !tbaa !72, !noalias !76
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 4, ptr %i.w, align 4, !tbaa !73, !noalias !76
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !76
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !76
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.x = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i32 -1040056314, ptr %22, align 8, !tbaa !35
  store ptr %2, ptr %i.x, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 12884901889, ptr %i.y, align 8, !tbaa !23
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(24) %22)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  ret void

bb.n:                                             ; preds = %_ZN2cv3MatC2IdLi4ELi4EEERKNS_4MatxIT_XT0_EXT1_EEEb.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #22
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.ab, %bb.p ], [ %i.aa, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.q ], [ %i.z, %bb.n ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %common.resume
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc void @_ZN2cv12ppf_match_3dL9dcmToQuatERNS_4MatxIdLi3ELi3EEERNS_3VecIdLi4EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1) unnamed_addr #5 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !12  ; 3 uses
  %i.b = fadd double %i.a, 0.000000e+00
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !12 ; 3 uses
  %i.e = fadd double %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load double, ptr %i.f, align 8, !tbaa !12 ; 2 uses
  %i.h = fadd double %i.e, %i.g                   ; 3 uses
  %i.i = fcmp ogt double %i.h, 0.000000e+00       ; 4 uses
  br i1 %i.i, label %.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.j = fcmp olt double %i.a, %i.d               ; 2 uses
  %i.k = select i1 %i.j, double %i.d, double %i.a
  %i.l = fcmp olt double %i.k, %i.g
  %i.m = zext i1 %i.j to i32
  %i.n = select i1 %i.l, i32 2, i32 %i.m
  %i.o = freeze i32 %i.n                          ; 2 uses
  %i.p = shl nuw nsw i32 %i.o, 2
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.q
  %i.s = load double, ptr %i.r, align 8, !tbaa !12
  %i.t = fneg double %i.h
  %i.u = tail call double @llvm.fmuladd.f64(double %i.s, double 2.000000e+00, double %i.t)
  br label %.thread

.thread:                                          ; preds = %bb.a, %.lr.ph.i.i.preheader
  %.fr53 = phi i32 [ %i.o, %.lr.ph.i.i.preheader ], [ 3, %bb.a ] ; 5 uses
  %i.v = phi double [ %i.u, %.lr.ph.i.i.preheader ], [ %i.h, %bb.a ]
  %i.w = fadd double %i.v, 1.000000e+00           ; 2 uses
  %i.x = insertelement <4 x i32> poison, i32 %.fr53, i64 0
  %i.y = shufflevector <4 x i32> %i.x, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.z = add <4 x i32> %i.y, <i32 1, i32 2, i32 3, i32 4>
  %i.aa = and i32 %.fr53, 1
  %.not = icmp eq i32 %i.aa, 0                    ; 4 uses
  %i.ab = select i1 %.not, i32 -1, i32 1          ; 2 uses
  %i.ac = add nsw i32 %i.ab, 3
  %i.ad = and i32 %i.ac, 2                        ; 4 uses
  %.lobit = lshr exact i32 %i.ad, 1
  %.sext = xor i32 %.lobit, 1                     ; 2 uses
  %.cmp42 = icmp eq i32 %i.ad, 0
  %.sext36 = select i1 %.cmp42, i32 2, i32 1
  %i.ae = mul nuw nsw i32 %.sext, 3
  %i.af = add nuw nsw i32 %i.ae, %.sext36
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag
  %i.ai = icmp eq i32 %.fr53, %i.ad
  %i.aj = or i1 %i.i, %i.ai
  %i.ak = select i1 %i.aj, double -1.000000e+00, double 1.000000e+00
  %.finite63 = select i1 %.not, i32 3, i32 6
  %i.al = add nuw nsw i32 %.finite63, %.sext
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.am
  %i.ao = add nsw i32 %i.ad, %i.ab                ; 2 uses
  %i.ap = trunc nsw i32 %i.ao to i8               ; 4 uses
  %.lhs.trunc.1 = add nsw i8 %i.ap, 1             ; 2 uses
  %.urem43 = add nsw i8 %i.ap, -2
  %.cmp44 = icmp ult i8 %.lhs.trunc.1, 3
  %i.aq = select i1 %.cmp44, i8 %.lhs.trunc.1, i8 %.urem43
  %.sext.1 = zext nneg i8 %i.aq to i32
  %.lhs.trunc35.1 = add nsw i8 %i.ap, 2           ; 2 uses
  %.urem45 = add nsw i8 %i.ap, -1
  %.cmp46 = icmp ult i8 %.lhs.trunc35.1, 3
  %i.ar = select i1 %.cmp46, i8 %.lhs.trunc35.1, i8 %.urem45
  %.sext36.1 = zext nneg i8 %i.ar to i32
  %i.as = add nuw nsw i32 6, %.sext36.1
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.at
  %i.av = icmp eq i32 %.fr53, %i.ao
  %i.aw = or i1 %i.i, %i.av
  %i.ax = select i1 %i.aw, double -1.000000e+00, double 1.000000e+00
  %i.ay = add nuw nsw i32 0, %.sext.1
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.az
  %2 = icmp eq i1 %.not, false
  %.finite62 = select i1 %2, i8 2, i8 0           ; 3 uses
  %.sext48 = sext i8 %.finite62 to i32
  %3 = icmp eq i1 %.not, false
  %.finite = select i1 %3, i8 0, i8 1
  %.sext.2 = sext i8 %.finite to i32              ; 2 uses
  %.lhs.trunc35.2 = add nsw i8 %.finite62, 2      ; 2 uses
  %.urem49 = add nsw i8 %.finite62, -1
  %.cmp50 = icmp ult i8 %.lhs.trunc35.2, 3
  %i.bb = select i1 %.cmp50, i8 %.lhs.trunc35.2, i8 %.urem49
  %.sext36.2 = zext nneg i8 %i.bb to i32          ; 2 uses
  %i.bc = mul nsw i32 %.sext.2, 3
  %i.bd = add nsw i32 %i.bc, %.sext36.2
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %0, i64 %i.be
  %i.bg = icmp eq i32 %.fr53, %.sext48
  %i.bh = or i1 %i.i, %i.bg
  %i.bi = select i1 %i.bh, double -1.000000e+00, double 1.000000e+00
  %i.bj = mul nuw nsw i32 %.sext36.2, 3
  %i.bk = add nsw i32 %i.bj, %.sext.2
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bl
  %i.bn = srem <4 x i32> %i.z, splat (i32 4)      ; 4 uses
  %i.bo = extractelement <4 x i32> %i.bn, i64 0
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bp
  store double %i.w, ptr %i.bq, align 8, !tbaa !12
  %i.br = load double, ptr %i.ah, align 8, !tbaa !12
  %i.bs = load double, ptr %i.an, align 8, !tbaa !12
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.bs, double %i.br)
  %i.bu = extractelement <4 x i32> %i.bn, i64 1
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bv
  store double %i.bt, ptr %i.bw, align 8, !tbaa !12
  %i.bx = load double, ptr %i.au, align 8, !tbaa !12
  %i.by = load double, ptr %i.ba, align 8, !tbaa !12
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.by, double %i.bx)
  %i.ca = extractelement <4 x i32> %i.bn, i64 2
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cb
  store double %i.bz, ptr %i.cc, align 8, !tbaa !12
  %i.cd = load double, ptr %i.bf, align 8, !tbaa !12
  %i.ce = load double, ptr %i.bm, align 8, !tbaa !12
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.ce, double %i.cd)
  %i.cg = extractelement <4 x i32> %i.bn, i64 3
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ch
  store double %i.cf, ptr %i.ci, align 8, !tbaa !12
  %i.cj = tail call double @sqrt(double noundef %i.w) #22
  %i.ck = fdiv double 5.000000e-01, %i.cj
  %i.cl = load <2 x double>, ptr %1, align 8, !tbaa !12
  %i.cm = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = fmul <2 x double> %i.cn, %i.cl
  store <2 x double> %i.co, ptr %1, align 8, !tbaa !12
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cq = load <2 x double>, ptr %i.cp, align 8, !tbaa !12
  %i.cr = fmul <2 x double> %i.cn, %i.cq
  store <2 x double> %i.cr, ptr %i.cp, align 8, !tbaa !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN2cv12ppf_match_3d6Pose3D10updatePoseERNS_4MatxIdLi3ELi3EEERNS_3VecIdLi3EEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Matx.7", align 8        ; 5 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %9 = alloca %"class.cv::Matx.8", align 8        ; 5 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %3, i8 0, i64 96, i1 false), !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 -1056833530, ptr %4, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !36
  store i64 12884901891, ptr %i.b, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 -1056833530, ptr %5, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.e, align 8, !tbaa !36
  store i64 12884901889, ptr %i.d, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 -1040056314, ptr %6, align 8, !tbaa !35
  store ptr %3, ptr %i.f, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 12884901892, ptr %i.g, align 8, !tbaa !23
  call void @_ZN2cv7hconcatERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 -1056833530, ptr %7, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %3, ptr %i.i, align 8, !tbaa !36
  store i64 12884901892, ptr %i.h, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.j, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 -1056833530, ptr %8, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %9, ptr %i.l, align 8, !tbaa !36
  store i64 4294967300, ptr %i.k, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 -1040056314, ptr %10, align 8, !tbaa !35
  store ptr %i.a, ptr %i.m, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 17179869188, ptr %i.n, align 8, !tbaa !23
  call void @_ZN2cv7vconcatERKNS_11_InputArrayES2_RKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.o = load double, ptr %1, align 8, !tbaa !12
  %i.p = fadd double %i.o, 0.000000e+00
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load double, ptr %i.q, align 8, !tbaa !12
  %i.s = fadd double %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load double, ptr %i.t, align 8, !tbaa !12
  %i.v = fadd double %i.s, %i.u                   ; 3 uses
  %i.w = fadd double %i.v, -3.000000e+00
  %i.x = call double @llvm.fabs.f64(double %i.w)
  %i.y = fcmp ugt double %i.x, f0x3E80000000000000
  br i1 %i.y, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.z = fadd double %i.v, 1.000000e+00
  %i.aa = call double @llvm.fabs.f64(double %i.z)
  %i.ab = fcmp ugt double %i.aa, f0x3E80000000000000
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = fadd double %i.v, -1.000000e+00
  %i.ad = fmul double %i.ac, 5.000000e-01
  %i.ae = call double @acos(double noundef %i.ad) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sink = phi double [ 0.000000e+00, %bb.a ], [ %i.ae, %bb.c ], [ f0x400921FB54442D18, %bb.b ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double %.sink, ptr %i.af, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 200
  call fastcc void @_ZN2cv12ppf_match_3dL9dcmToQuatERNS_4MatxIdLi3ELi3EEERNS_3VecIdLi4EEE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv12ppf_match_3d6Pose3D14updatePoseQuatERNS_3VecIdLi4EEERNS2_IdLi3EEE(ptr noundef nonnull align 8 dereferenceable(232) initializes((200, 232)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Matx.7", align 8        ; 5 uses
  %4 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %9 = alloca %"class.cv::Matx.8", align 8        ; 5 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %11 = alloca %"class.cv::Matx", align 8         ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.a = load double, ptr %1, align 8, !tbaa !12, !noalias !79 ; 5 uses
  %i.b = fmul double %i.a, %i.a                   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !12, !noalias !79 ; 5 uses
  %i.e = fmul double %i.d, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !12, !noalias !79 ; 5 uses
  %i.h = fmul double %i.g, %i.g                   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load double, ptr %i.i, align 8, !tbaa !12, !noalias !79 ; 5 uses
  %i.k = fmul double %i.j, %i.j                   ; 3 uses
  %i.l = fadd double %i.b, %i.e
  %i.m = fsub double %i.l, %i.h
  %i.n = fsub double %i.m, %i.k
  store double %i.n, ptr %11, align 8, !tbaa !12
  %i.o = fsub double %i.b, %i.e                   ; 2 uses
  %i.p = fadd double %i.o, %i.h
  %i.q = fsub double %i.p, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store double %i.q, ptr %i.r, align 8, !tbaa !12
  %i.s = fsub double %i.o, %i.h
  %i.t = fadd double %i.s, %i.k
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  store double %i.t, ptr %i.u, align 8, !tbaa !12
  %i.v = fmul double %i.d, %i.g                   ; 2 uses
  %i.w = fmul double %i.a, %i.j                   ; 2 uses
  %i.x = fadd double %i.v, %i.w
  %i.y = fmul double %i.x, 2.000000e+00
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8
  store double %i.y, ptr %i.z, align 8, !tbaa !12
  %i.aa = fsub double %i.v, %i.w
  %i.ab = fmul double %i.aa, 2.000000e+00
end_hunk_0
