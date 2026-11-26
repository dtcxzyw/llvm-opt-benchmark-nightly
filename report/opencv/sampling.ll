Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/sampling?download=true
inline.NumInlined: 447
inline.NumDeleted: 270
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv14randomSamplingERKNS_12_OutputArrayERKNS_11_InputArrayEfPNS_3RNGE:bb.a
  invoke void @_ZN2cv26getPointsMatFromInputArrayERKNS_11_InputArrayERNS_3MatEib(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef 0, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17
  %i.e = sitofp i32 %i.d to float
  %i.f = fmul nnan float %2, %i.e
  %i.g = call float @llvm.ceil.f32(float %i.f)
  %i.h = fptosi float %i.g to i32
  invoke void @_ZN2cv14randomSamplingERKNS_12_OutputArrayERKNS_11_InputArrayEiPNS_3RNGE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.h, ptr noundef %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN2cv21farthestPointSamplingERKNS_12_OutputArrayERKNS_11_InputArrayEifPNS_3RNGE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, float noundef %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %6 = alloca %"class.cv::AutoBuffer", align 8    ; 10 uses
  %7 = alloca %"class.cv::AutoBuffer.10", align 8 ; 13 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 19 uses
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %2, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv21farthestPointSamplingERKNS_12_OutputArrayERKNS_11_InputArrayEifPNS_3RNGEE15__cv_check__218) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = fcmp ult float %3, 0.000000e+00
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2cv6detail17check_failed_autoEffRKNS0_12CheckContextE(float noundef %3, float noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv21farthestPointSamplingERKNS_12_OutputArrayERKNS_11_InputArrayEifPNS_3RNGEE15__cv_check__220) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %5) #15
  invoke void @_ZN2cv26getPointsMatFromInputArrayERKNS_11_InputArrayERNS_3MatEib(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(208) %5, i32 noundef 1, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !48
  %i.g = mul nsw i32 %i.f, %i.d                   ; 3 uses
  %i.h = sdiv i32 %i.g, 3                         ; 7 uses
  %i.i = icmp slt i32 %2, %i.h
  br i1 %i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %2, i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv21farthestPointSamplingERKNS_12_OutputArrayERKNS_11_InputArrayEifPNS_3RNGEE15__cv_check__230) #14
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.e, %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.k = zext i32 %i.h to i64                     ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.l, ptr %6, align 8, !tbaa !89
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not.i.i = icmp samesign ugt i32 %i.h, 264
  store i64 %i.k, ptr %i.m, align 8, !tbaa !90
  br i1 %.not.i.i, label %bb.k, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

bb.k:                                             ; preds = %bb.j
  %i.n = shl nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.o = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #16
          to label %bb.l unwind label %bb.m

_ZN2cv10AutoBufferIiLm264EEC2Em.exit:             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.p, ptr %7, align 8, !tbaa !93
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.k, ptr %i.q, align 8, !tbaa !94
  br label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit

bb.l:                                             ; preds = %bb.k
  store ptr %i.o, ptr %6, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.r, ptr %7, align 8, !tbaa !93
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.k, ptr %i.s, align 8, !tbaa !94
  %i.t = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #16
          to label %.noexc147 unwind label %bb.n  ; 2 uses

.noexc147:                                        ; preds = %bb.l
  store ptr %i.t, ptr %7, align 8, !tbaa !93
  %.pre = load ptr, ptr %6, align 8, !tbaa !89
  br label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit

_ZN2cv10AutoBufferIfLm264EEC2Em.exit:             ; preds = %.noexc147, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %i.u = phi ptr [ %i.p, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit ], [ %i.t, %.noexc147 ] ; 5 uses
  %i.v = phi ptr [ %i.l, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit ], [ %.pre, %.noexc147 ] ; 11 uses
  %i.w = phi ptr [ %i.p, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit ], [ %i.r, %.noexc147 ] ; 2 uses
  %i.x = icmp sgt i32 %i.g, 2
  br i1 %i.x, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit
  %min.iters.check = icmp ult i32 %i.g, 24
  br i1 %min.iters.check, label %.lr.ph.preheader217, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.k, 1073741816               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x i32> %vec.ind, ptr %i.y, align 4, !tbaa !35
  store <4 x i32> %step.add, ptr %i.z, align 4, !tbaa !35
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.aa, align 4, !tbaa !20
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.ab, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.k
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader217

.lr.ph.preheader217:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.o, label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit160

bb.n:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit157

.lr.ph:                                           ; preds = %.lr.ph.preheader217, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader217 ] ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !35
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  store float f0x7F7FFFFF, ptr %i.ah, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !84

bb.o:                                             ; preds = %._crit_edge
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv()
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o, %._crit_edge
  %.sink216 = phi ptr [ %4, %._crit_edge ], [ %i.ai, %bb.o ] ; 2 uses
  %i.aj = load i64, ptr %.sink216, align 8, !tbaa !96 ; 2 uses
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = mul nuw i64 %i.ak, 4164903690
  %i.am = lshr i64 %i.aj, 32
  %i.an = add nuw i64 %i.al, %i.am                ; 2 uses
  store i64 %i.an, ptr %.sink216, align 8, !tbaa !96
  %i.ao = trunc i64 %i.an to i32
  %i.ap = urem i32 %i.ao, %i.h                    ; 2 uses
  store i32 %i.ap, ptr %i.v, align 4, !tbaa !35
  %i.aq = zext nneg i32 %i.ap to i64              ; 4 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aq
  store i32 0, ptr %i.ar, align 4, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18 ; 8 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.k ; 8 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.k ; 7 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.aq ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !20
  %i.ay = load float, ptr %i.at, align 4, !tbaa !20
  store float %i.ay, ptr %i.aw, align 4, !tbaa !20
  store float %i.ax, ptr %i.at, align 4, !tbaa !20
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.aq ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !20
  %i.bb = load float, ptr %i.au, align 4, !tbaa !20
  store float %i.bb, ptr %i.az, align 4, !tbaa !20
  store float %i.ba, ptr %i.au, align 4, !tbaa !20
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.aq ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !20
  %i.be = load float, ptr %i.av, align 4, !tbaa !20
  store float %i.be, ptr %i.bc, align 4, !tbaa !20
  store float %i.bd, ptr %i.av, align 4, !tbaa !20
  %i.bf = fmul float %3, %3
  %.not185 = icmp eq i32 %2, 1
  br i1 %.not185, label %.thread, label %.lr.ph180.preheader

.lr.ph180.preheader:                              ; preds = %bb.p
  %i.bg = zext nneg i32 %i.h to i64
  %wide.trip.count195 = zext nneg i32 %2 to i64
  br label %.lr.ph180

.lr.ph180:                                        ; preds = %.lr.ph180.preheader, %bb.q
  %indvars.iv187 = phi i64 [ 1, %.lr.ph180.preheader ], [ %indvars.iv.next188, %bb.q ] ; 11 uses
  %9 = add nsw i64 %indvars.iv187, -1             ; 3 uses
  %10 = getelementptr inbounds [4 x i8], ptr %i.at, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !20
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.au, i64 %9
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !20
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.av, i64 %9
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !20
  %i.bl = icmp samesign ult i64 %indvars.iv187, %i.bg
  %i.bm = trunc nuw nsw i64 %indvars.iv187 to i32 ; 2 uses
  br i1 %i.bl, label %.lr.ph175, label %._crit_edge176

.lr.ph175:                                        ; preds = %.lr.ph180, %.lr.ph175
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %.lr.ph175 ], [ %indvars.iv187, %.lr.ph180 ] ; 6 uses
  %.0115172 = phi i32 [ %.1, %.lr.ph175 ], [ %i.bm, %.lr.ph180 ]
  %.0116171 = phi float [ %.1117, %.lr.ph175 ], [ 0.000000e+00, %.lr.ph180 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv189
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !20
  %i.bp = fsub float %11, %i.bo                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv189
  %i.br = load float, ptr %i.bq, align 4, !tbaa !20
  %i.bs = fsub float %i.bi, %i.br                 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv189
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !20
  %i.bv = fsub float %i.bk, %i.bu                 ; 2 uses
  %i.bw = fmul float %i.bs, %i.bs
  %i.bx = call float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %i.bw)
  %i.by = call float @llvm.fmuladd.f32(float %i.bv, float %i.bv, float %i.bx) ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv189 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !20 ; 2 uses
  %i.cb = fcmp olt float %i.by, %i.ca
  %.sroa.speculated = select i1 %i.cb, float %i.by, float %i.ca ; 3 uses
  store float %.sroa.speculated, ptr %i.bz, align 4, !tbaa !20
  %i.cc = fcmp ogt float %.sroa.speculated, %.0116171 ; 2 uses
  %.1117 = select i1 %i.cc, float %.sroa.speculated, float %.0116171 ; 2 uses
  %i.cd = trunc nuw nsw i64 %indvars.iv189 to i32
  %.1 = select i1 %i.cc, i32 %i.cd, i32 %.0115172 ; 2 uses
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %i.k
  br i1 %exitcond193.not, label %._crit_edge176.loopexit, label %.lr.ph175, !llvm.loop !85

._crit_edge176.loopexit:                          ; preds = %.lr.ph175
  %i.ce = sext i32 %.1 to i64
  br label %._crit_edge176

._crit_edge176:                                   ; preds = %._crit_edge176.loopexit, %.lr.ph180
  %.0116.lcssa = phi float [ 0.000000e+00, %.lr.ph180 ], [ %.1117, %._crit_edge176.loopexit ]
  %.0115.lcssa = phi i64 [ %indvars.iv187, %.lr.ph180 ], [ %i.ce, %._crit_edge176.loopexit ] ; 5 uses
  %i.cf = fcmp olt float %.0116.lcssa, %i.bf
  br i1 %i.cf, label %.thread, label %bb.q

bb.q:                                             ; preds = %._crit_edge176
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.0115.lcssa ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv187 ; 2 uses
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !35
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !35
  store i32 %i.cj, ptr %i.cg, align 4, !tbaa !35
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !35
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.0115.lcssa ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv187 ; 2 uses
  %i.cm = load float, ptr %i.ck, align 4, !tbaa !20
  %i.cn = load float, ptr %i.cl, align 4, !tbaa !20
  store float %i.cn, ptr %i.ck, align 4, !tbaa !20
  store float %i.cm, ptr %i.cl, align 4, !tbaa !20
  %i.co = getelementptr inbounds [4 x i8], ptr %i.at, i64 %.0115.lcssa ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv187 ; 2 uses
  %i.cq = load float, ptr %i.co, align 4, !tbaa !20
  %i.cr = load float, ptr %i.cp, align 4, !tbaa !20
  store float %i.cr, ptr %i.co, align 4, !tbaa !20
  store float %i.cq, ptr %i.cp, align 4, !tbaa !20
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.au, i64 %.0115.lcssa ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv187 ; 2 uses
  %i.cu = load float, ptr %i.cs, align 4, !tbaa !20
  %i.cv = load float, ptr %i.ct, align 4, !tbaa !20
  store float %i.cv, ptr %i.cs, align 4, !tbaa !20
  store float %i.cu, ptr %i.ct, align 4, !tbaa !20
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %.0115.lcssa ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv187 ; 2 uses
  %i.cy = load float, ptr %i.cw, align 4, !tbaa !20
  %i.cz = load float, ptr %i.cx, align 4, !tbaa !20
  store float %i.cz, ptr %i.cw, align 4, !tbaa !20
  store float %i.cy, ptr %i.cx, align 4, !tbaa !20
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %exitcond196.not = icmp eq i64 %indvars.iv.next188, %wide.trip.count195
  br i1 %exitcond196.not, label %.thread, label %.lr.ph180

.thread:                                          ; preds = %bb.q, %._crit_edge176, %bb.p
  %.0118.lcssa = phi i32 [ 1, %bb.p ], [ %i.bm, %._crit_edge176 ], [ %2, %bb.q ] ; 3 uses
  %i.da = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #16
          to label %bb.r unwind label %bb.t       ; 11 uses

bb.r:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.da, i8 0, i64 %i.k, i1 false)
  %wide.trip.count200 = zext i32 %.0118.lcssa to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count200, 3      ; 3 uses
  %i.db = add i32 %.0118.lcssa, -1
  %i.dc = icmp ult i32 %i.db, 3
  br i1 %i.dc, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.r
  %unroll_iter = and i64 %wide.trip.count200, 4294967292
  br label %bb.u

.unr-lcssa:                                       ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.r
  %indvars.iv197.epil.init = phi i64 [ 0, %bb.r ], [ %indvars.iv.next198.3, %.unr-lcssa ]
  %lcmp.mod218 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod218)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %indvars.iv197.epil = phi i64 [ %indvars.iv197.epil.init, %.epil.preheader ], [ %indvars.iv.next198.epil, %bb.s ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv197.epil
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !35
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.df
  store i8 1, ptr %i.dg, align 1, !tbaa !54
  %indvars.iv.next198.epil = add nuw nsw i64 %indvars.iv197.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.s, !llvm.loop !86

.epilog-lcssa:                                    ; preds = %bb.s, %.unr-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store i32 1124024321, ptr %8, align 8, !tbaa !46
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 1, ptr %i.dh, align 4, !tbaa !47
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 1, ptr %i.di, align 8, !tbaa !17
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i32 %i.h, ptr %i.dj, align 4, !tbaa !48
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 153, ptr %i.dk, align 8, !tbaa !49
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dl, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.dm, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc149 unwind label %bb.x

.noexc149:                                        ; preds = %.epilog-lcssa
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dr, i8 0, i64 72, i1 false), !tbaa !33
  %i.ds = load i32, ptr %i.dj, align 4, !tbaa !48 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 84
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !35
  store i64 1, ptr %i.dq, align 8, !tbaa !33
  store ptr %i.da, ptr %i.dl, align 8, !tbaa !18
  store ptr %i.da, ptr %i.dp, align 8, !tbaa !50
  %i.du = sext i32 %i.ds to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.du ; 2 uses
  store ptr %i.dv, ptr %i.do, align 8, !tbaa !51
  store ptr %i.dv, ptr %i.dn, align 8, !tbaa !52
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %_ZNSt6vectorIcSaIcEED2Ev.exit unwind label %bb.y

bb.t:                                             ; preds = %bb.o, %.thread
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %bb.u, %.new
  %indvars.iv197 = phi i64 [ 0, %.new ], [ %indvars.iv.next198.3, %bb.u ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.u ]
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv197
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !35
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dz
  store i8 1, ptr %i.ea, align 1, !tbaa !54
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv197
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !35
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ee
  store i8 1, ptr %i.ef, align 1, !tbaa !54
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv197
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !35
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ej
  store i8 1, ptr %i.ek, align 1, !tbaa !54
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv197
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %i.en = load i32, ptr %i.em, align 4, !tbaa !35
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.eo
  store i8 1, ptr %i.ep, align 1, !tbaa !54
  %indvars.iv.next198.3 = add nuw nsw i64 %indvars.iv197, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.u, !llvm.loop !87

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.noexc149
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.k) #17
  %i.eq = load ptr, ptr %7, align 8, !tbaa !93    ; 3 uses
  %.not.i.i150 = icmp eq ptr %i.eq, %i.w
  %i.er = icmp eq ptr %i.eq, null
  %or.cond.i = or i1 %.not.i.i150, %i.er
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.eq) #17
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit

_ZN2cv10AutoBufferIfLm264EED2Ev.exit:             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.es = load ptr, ptr %6, align 8, !tbaa !89    ; 3 uses
  %.not.i.i151 = icmp eq ptr %i.es, %i.l
  %i.et = icmp eq ptr %i.es, null
  %or.cond.i152 = or i1 %.not.i.i151, %i.et
  br i1 %or.cond.i152, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.es) #17
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit

_ZN2cv10AutoBufferIiLm264EED2Ev.exit:             ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret i32 %.0118.lcssa

bb.x:                                             ; preds = %.epilog-lcssa
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit154

bb.y:                                             ; preds = %.noexc149
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #15
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit154

_ZNSt6vectorIcSaIcEED2Ev.exit154:                 ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.ev, %bb.y ], [ %i.eu, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.k) #17
  br label %bb.z

bb.z:                                             ; preds = %bb.t, %_ZNSt6vectorIcSaIcEED2Ev.exit154
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dw, %bb.t ], [ %.pn, %_ZNSt6vectorIcSaIcEED2Ev.exit154 ] ; 2 uses
  %i.ew = load ptr, ptr %7, align 8, !tbaa !93    ; 3 uses
  %.not.i.i155 = icmp eq ptr %i.ew, %i.w
  %i.ex = icmp eq ptr %i.ew, null
  %or.cond.i156 = or i1 %.not.i.i155, %i.ex
  br i1 %or.cond.i156, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit157, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZdaPv(ptr noundef nonnull %i.ew) #17
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit157

_ZN2cv10AutoBufferIfLm264EED2Ev.exit157:          ; preds = %bb.aa, %bb.z, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.n ], [ %.pn.pn.pn, %bb.z ], [ %.pn.pn.pn, %bb.aa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.ey = load ptr, ptr %6, align 8, !tbaa !89    ; 3 uses
  %.not.i.i158 = icmp eq ptr %i.ey, %i.l
  %i.ez = icmp eq ptr %i.ey, null
  %or.cond.i159 = or i1 %.not.i.i158, %i.ez
  br i1 %or.cond.i159, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit160, label %bb.ab

bb.ab:                                            ; preds = %_ZN2cv10AutoBufferIfLm264EED2Ev.exit157
  call void @_ZdaPv(ptr noundef nonnull %i.ey) #17
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit160

_ZN2cv10AutoBufferIiLm264EED2Ev.exit160:          ; preds = %bb.ab, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit157, %bb.m
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.m ], [ %.pn.pn.pn.pn, %_ZN2cv10AutoBufferIfLm264EED2Ev.exit157 ], [ %.pn.pn.pn.pn, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.ac

bb.ac:                                            ; preds = %bb.i, %_ZN2cv10AutoBufferIiLm264EED2Ev.exit160
end_hunk_0
