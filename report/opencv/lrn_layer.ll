Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/lrn_layer?download=true
inline.NumInlined: 371
inline.NumDeleted: 144
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv3dnn12LRNLayerImpl20spatialNormalizationERNS_3MatES3_:bb.a
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !131

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit.i, %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp61.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit.i50, %bb.k
  %lpad.loopexit.split-lp92 = landingpad { ptr, i32 }
          cleanup
  br label %.body53

bb.t:                                             ; preds = %bb.n
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body58

bb.u:                                             ; preds = %bb.p
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %.body58

bb.v:                                             ; preds = %bb.q
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %.body58

bb.w:                                             ; preds = %bb.r
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %.body58

.body58:                                          ; preds = %bb.t, %bb.o, %bb.w, %bb.v, %bb.u
  %.pn33.pn.pn.pn = phi { ptr, i32 } [ %i.dt, %bb.w ], [ %i.ds, %bb.v ], [ %i.dr, %bb.u ], [ %i.dq, %bb.t ], [ %i.dg, %bb.o ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #20
  br label %.body53

.body53:                                          ; preds = %.loopexit.split-lp61.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i48, %.body58
  %.pn33.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn.pn, %.body58 ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i48 ], [ %lpad.loopexit.split-lp92, %.loopexit.split-lp61.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #20
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44, %.body53
  %.pn33.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn.pn.pn, %.body53 ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #20
  br label %bb.x

bb.x:                                             ; preds = %.body, %bb.e
  %.pn33.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn.pn.pn.pn, %.body ], [ %i.bi, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i) #20
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 208 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !55
  br label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit:  ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #19
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EED2Ev.exit:   ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !64
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #22
  unreachable
}

declare noundef i32 @_ZN2cv13getNumThreadsEv() local_unnamed_addr #3

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3dnn12LRNLayerImpl10ChannelLRND0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3dnn12LRNLayerImpl10ChannelLRNclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::AutoBuffer.19", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !95   ; 14 uses
  %i.g = sext i32 %i.b to i64
  %i.h = mul i64 %i.f, %i.g                       ; 4 uses
  %i.i = sext i32 %i.d to i64                     ; 2 uses
  %i.j = add nsw i64 %i.i, -1
  %i.k = add i64 %i.j, %i.h
  %i.l = udiv i64 %i.k, %i.i                      ; 2 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !99
  %i.n = sext i32 %i.m to i64
  %i.o = mul i64 %i.l, %i.n                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !100  ; 2 uses
  %i.r = icmp eq i32 %i.q, %i.d
  %i.s = sext i32 %i.q to i64
  %i.t = mul i64 %i.l, %i.s
  %.sroa.speculated144 = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.o)
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.t)
  %.sroa.speculated136 = select i1 %i.r, i64 %i.h, i64 %i.u ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load float, ptr %i.v, align 8, !tbaa !92
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.y = load float, ptr %i.x, align 4, !tbaa !93
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load float, ptr %i.z, align 8, !tbaa !94 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !90 ; 12 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !91 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.af = add nsw i32 %i.ae, %i.ac
  %i.ag = shl i32 %i.af, 1
  %i.ah = add i32 %i.ag, 2                        ; 3 uses
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.aj, ptr %2, align 8, !tbaa !156
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i.i = icmp ugt i32 %i.ah, 264
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !157
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.al = icmp slt i32 %i.ah, 0
  %i.am = shl nuw nsw i64 %i.ai, 2
  %i.an = select i1 %i.al, i64 -1, i64 %i.am
  %i.ao = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.an) #18 ; 2 uses
  store ptr %i.ao, ptr %2, align 8, !tbaa !156
  br label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit

_ZN2cv10AutoBufferIfLm264EEC2Em.exit:             ; preds = %bb.a, %bb.b
  %i.ap = phi ptr [ %i.aj, %bb.a ], [ %i.ao, %bb.b ] ; 16 uses
  %i.aq = ptrtoaddr ptr %i.ap to i64              ; 3 uses
  %i.ar = sext i32 %i.ac to i64                   ; 6 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.ar
  %i.at = sext i32 %i.ae to i64                   ; 5 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 17 uses
  %.not159 = icmp slt i32 %i.ae, 0
  br i1 %.not159, label %.preheader157, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit
  %i.aw = shl nsw i64 %i.ar, 3
  %i.ax = shl nuw nsw i64 %i.at, 2
  %i.ay = getelementptr i8, ptr %i.ap, i64 %i.aw
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.ax
  %scevgep = getelementptr i8, ptr %i.az, i64 4
  %i.ba = add nuw i32 %i.ae, 1
  %i.bb = zext i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 2                ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bc, i1 false), !tbaa !158
  %i.bd = add nsw i64 %i.ar, %i.at
  %i.be = zext nneg i32 %i.ae to i64
  %i.bf = sub nsw i64 %i.bd, %i.be
  %i.bg = shl nsw i64 %i.bf, 2
  %scevgep183 = getelementptr i8, ptr %i.ap, i64 %i.bg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep183, i8 0, i64 %i.bc, i1 false), !tbaa !158
  br label %.preheader157

.preheader157:                                    ; preds = %.lr.ph.preheader, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit
  %i.bh = icmp ult i64 %i.o, %.sroa.speculated136
  br i1 %i.bh, label %.lr.ph180, label %.critedge

.lr.ph180:                                        ; preds = %.preheader157
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = icmp sgt i32 %i.ac, 0                   ; 4 uses
  %i.bl = icmp sgt i32 %i.ae, 0
  %i.bm = xor i32 %i.ae, -1
  %wide.trip.count = zext i32 %i.ac to i64        ; 11 uses
  %wide.trip.count189 = zext i32 %i.ae to i64     ; 2 uses
  %wide.trip.count194 = zext nneg i32 %i.ac to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.av, i64 %i.at
  %wide.trip.count199 = zext nneg i32 %i.ac to i64
  %wide.trip.count204 = zext nneg i32 %i.ac to i64
  %i.bn = shl nsw i64 %i.ar, 2                    ; 2 uses
  %i.bo = add nsw i64 %i.bn, -4
  %i.bp = shl nsw i64 %i.at, 2                    ; 2 uses
  %3 = add i64 %i.bp, %i.aq
  %i.bq = add i64 %3, %i.bn
  %i.br = add i64 %i.bp, %i.aq
  %4 = shl nsw i64 %i.ar, 2                       ; 2 uses
  %i.bs = add i64 %i.br, %4
  %i.bt = add nsw i64 %4, -4
  %min.iters.check238 = icmp ugt i32 %i.ac, 7
  %ident.check234.not = icmp eq i64 %i.f, 1
  %or.cond = select i1 %min.iters.check238, i1 %ident.check234.not, i1 false
  %n.vec242 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n249 = icmp eq i64 %n.vec242, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter259 = and i64 %wide.trip.count189, 3   ; 3 uses
  %i.bu = icmp ult i32 %i.ae, 4
  %unroll_iter = and i64 %wide.trip.count189, 2147483644
  %lcmp.mod260.not = icmp eq i64 %xtraiter259, 0
  %lcmp.mod262 = icmp ne i64 %xtraiter259, 0
  %min.iters.check222 = icmp ult i32 %i.ac, 8
  %n.vec224 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.aa, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n231 = icmp eq i64 %n.vec224, %wide.trip.count
  %min.iters.check = icmp ugt i32 %i.ac, 7
  %ident.check.not = icmp eq i64 %i.f, 1
  %or.cond251 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter263 = and i64 %wide.trip.count, 1
  %lcmp.mod264.not = icmp eq i64 %xtraiter263, 0
  %i.bv = add nsw i64 %wide.trip.count, -1
  br label %bb.c

.loopexit:                                        ; preds = %._crit_edge174, %bb.d
  %.1112.lcssa = phi i64 [ %.0111179, %bb.d ], [ %i.gy, %._crit_edge174 ] ; 2 uses
  %i.bw = icmp ult i64 %.1112.lcssa, %.sroa.speculated136
  br i1 %i.bw, label %bb.c, label %.critedge.loopexit, !llvm.loop !143

bb.c:                                             ; preds = %.lr.ph180, %.loopexit
  %.0111179 = phi i64 [ %.sroa.speculated144, %.lr.ph180 ], [ %.1112.lcssa, %.loopexit ] ; 11 uses
  %i.bx = udiv i64 %.0111179, %i.f                ; 2 uses
  %i.by = trunc i64 %i.bx to i32
  %.not120 = icmp sgt i32 %i.b, %i.by
  br i1 %.not120, label %bb.d, label %.critedge.loopexit

bb.d:                                             ; preds = %bb.c
  %sext = shl i64 %i.bx, 32
  %i.bz = ashr exact i64 %sext, 32
  %i.ca = mul i64 %i.bz, %i.f                     ; 2 uses
  %i.cb = sub i64 %.0111179, %i.ca                ; 3 uses
  %i.cc = sub i64 %i.f, %i.cb
  %i.cd = sub nuw i64 %.sroa.speculated136, %.0111179
  %.sroa.speculated129 = call i64 @llvm.umin.i64(i64 %i.cd, i64 %i.cc)
  %i.ce = add i64 %.sroa.speculated129, %.0111179 ; 2 uses
  %i.cf = icmp ult i64 %.0111179, %i.ce
  br i1 %i.cf, label %.preheader156.preheader, label %.loopexit

.preheader156.preheader:                          ; preds = %bb.d
  %i.cg = load ptr, ptr %i.bj, align 8, !tbaa !89 ; 2 uses
  %i.ch = ptrtoaddr ptr %i.cg to i64              ; 2 uses
  %i.ci = mul i64 %i.ca, %i.ar                    ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ci
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cb
  %i.cl = load ptr, ptr %i.bi, align 8, !tbaa !88 ; 2 uses
  %i.cm = ptrtoaddr ptr %i.cl to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ci
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cb
  %reass.sub.a = sub i64 %i.ch, %i.aq
  %i.cp = shl i64 %.0111179, 32
  %i.cq = ashr exact i64 %i.cp, 32
  %i.cr = mul i64 %i.bo, %i.cq                    ; 2 uses
  %5 = add i64 %reass.sub.a, %i.cr
  %6 = shl i64 %.0111179, 2                       ; 2 uses
  %i.cs = add i64 %5, %6
  %reass.sub = sub i64 %i.ch, %i.bq
  %i.ct = shl i64 %.0111179, 32
  %i.cu = ashr exact i64 %i.ct, 32
  %i.cv = mul i64 %i.bt, %i.cu
  %i.cw = add i64 %i.cv, %i.cm
  %invariant.op.a = add i64 %6, %i.cr
  %op.rdx252 = add i64 -5, %invariant.op.a
  %invariant.op269 = add i64 %op.rdx252, %reass.sub
  %invariant.op270 = add i64 %i.cs, -1
  br label %.preheader156

.preheader156:                                    ; preds = %.preheader156.preheader, %._crit_edge174
  %indvar = phi i64 [ 0, %.preheader156.preheader ], [ %indvar.next, %._crit_edge174 ] ; 3 uses
  %.0108177 = phi ptr [ %i.ck, %.preheader156.preheader ], [ %i.ha, %._crit_edge174 ] ; 5 uses
  %.0109176 = phi ptr [ %i.co, %.preheader156.preheader ], [ %i.gz, %._crit_edge174 ] ; 7 uses
  %.1112175 = phi i64 [ %.0111179, %.preheader156.preheader ], [ %i.gy, %._crit_edge174 ]
  br i1 %i.bk, label %.lr.ph162.preheader, label %.preheader155

.lr.ph162.preheader:                              ; preds = %.preheader156
  br i1 %or.cond, label %vector.memcheck239, label %.lr.ph162.preheader257

vector.memcheck239:                               ; preds = %.lr.ph162.preheader
  %i.cx = add i64 %.0111179, %indvar
  %i.cy = shl i64 %i.cx, 2
  %i.cz = add i64 %i.cy, %i.cw
  %i.da = sub i64 %i.bs, %i.cz
  %i.db = add i64 %i.da, 3
  %diff.check240 = icmp ult i64 %i.db, 31
  br i1 %diff.check240, label %.lr.ph162.preheader257, label %vector.body243

vector.body243:                                   ; preds = %vector.memcheck239, %vector.body243
  %index244 = phi i64 [ %index.next247, %vector.body243 ], [ 0, %vector.memcheck239 ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.0109176, i64 %index244 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %wide.load245 = load <4 x float>, ptr %i.dc, align 4, !tbaa !158
  %wide.load246 = load <4 x float>, ptr %i.dd, align 4, !tbaa !158
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index244 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <4 x float> %wide.load245, ptr %i.de, align 4, !tbaa !158
  store <4 x float> %wide.load246, ptr %i.df, align 4, !tbaa !158
  %index.next247 = add nuw i64 %index244, 8       ; 2 uses
  %i.dg = icmp eq i64 %index.next247, %n.vec242
  br i1 %i.dg, label %middle.block248, label %vector.body243, !llvm.loop !144

middle.block248:                                  ; preds = %vector.body243
  br i1 %cmp.n249, label %.preheader155, label %.lr.ph162.preheader257

.lr.ph162.preheader257:                           ; preds = %vector.memcheck239, %.lr.ph162.preheader, %middle.block248
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck239 ], [ 0, %.lr.ph162.preheader ], [ %n.vec242, %middle.block248 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph162.prol.loopexit, label %.lr.ph162.prol

.lr.ph162.prol:                                   ; preds = %.lr.ph162.preheader257, %.lr.ph162.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph162.prol ], [ %indvars.iv.ph, %.lr.ph162.preheader257 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph162.prol ], [ 0, %.lr.ph162.preheader257 ]
  %i.dh = mul i64 %i.f, %indvars.iv.prol
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.0109176, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !158
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.prol
  store float %i.dj, ptr %i.dk, align 4, !tbaa !158
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph162.prol.loopexit, label %.lr.ph162.prol, !llvm.loop !145

.lr.ph162.prol.loopexit:                          ; preds = %.lr.ph162.prol, %.lr.ph162.preheader257
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph162.preheader257 ], [ %indvars.iv.next.prol, %.lr.ph162.prol ]
  %i.dl = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.dm = icmp ugt i64 %i.dl, -4
  br i1 %i.dm, label %.preheader155, label %.lr.ph162

.preheader155:                                    ; preds = %.lr.ph162.prol.loopexit, %.lr.ph162, %middle.block248, %.preheader156
  br i1 %i.bl, label %.lr.ph165.preheader, label %.preheader154

.lr.ph165.preheader:                              ; preds = %.preheader155
  br i1 %i.bu, label %.lr.ph165.epil.preheader, label %.lr.ph165

.lr.ph162:                                        ; preds = %.lr.ph162.prol.loopexit, %.lr.ph162
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph162 ], [ %indvars.iv.unr, %.lr.ph162.prol.loopexit ] ; 6 uses
  %i.dn = mul i64 %i.f, %indvars.iv
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.0109176, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !158
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  store float %i.dp, ptr %i.dq, align 4, !tbaa !158
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dr = mul i64 %i.f, %indvars.iv.next
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.0109176, i64 %i.dr
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !158
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next
  store float %i.dt, ptr %i.du, align 4, !tbaa !158
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dv = mul i64 %i.f, %indvars.iv.next.1
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.0109176, i64 %i.dv
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !158
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next.1
  store float %i.dx, ptr %i.dy, align 4, !tbaa !158
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dz = mul i64 %i.f, %indvars.iv.next.2
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.0109176, i64 %i.dz
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !158
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next.2
  store float %i.eb, ptr %i.ec, align 4, !tbaa !158
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader155, label %.lr.ph162, !llvm.loop !146

.preheader154.loopexit.unr-lcssa:                 ; preds = %.lr.ph165
  br i1 %lcmp.mod260.not, label %.preheader154, label %.lr.ph165.epil.preheader

.lr.ph165.epil.preheader:                         ; preds = %.preheader154.loopexit.unr-lcssa, %.lr.ph165.preheader
  %indvars.iv186.epil.init = phi i64 [ 0, %.lr.ph165.preheader ], [ %indvars.iv.next187.3, %.preheader154.loopexit.unr-lcssa ]
  %.0164.epil.init = phi float [ 0.000000e+00, %.lr.ph165.preheader ], [ %i.eu, %.preheader154.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod262)
  br label %.lr.ph165.epil

.lr.ph165.epil:                                   ; preds = %.lr.ph165.epil, %.lr.ph165.epil.preheader
  %indvars.iv186.epil = phi i64 [ %indvars.iv.next187.epil, %.lr.ph165.epil ], [ %indvars.iv186.epil.init, %.lr.ph165.epil.preheader ] ; 2 uses
  %.0164.epil = phi float [ %i.ef, %.lr.ph165.epil ], [ %.0164.epil.init, %.lr.ph165.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph165.epil ], [ 0, %.lr.ph165.epil.preheader ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv186.epil
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !158 ; 2 uses
  %i.ef = call float @llvm.fmuladd.f32(float %i.ee, float %i.ee, float %.0164.epil) ; 2 uses
  %indvars.iv.next187.epil = add nuw nsw i64 %indvars.iv186.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter259
  br i1 %epil.iter.cmp.not, label %.preheader154, label %.lr.ph165.epil, !llvm.loop !147

.preheader154:                                    ; preds = %.preheader154.loopexit.unr-lcssa, %.lr.ph165.epil, %.preheader155
  %.0.lcssa = phi float [ 0.000000e+00, %.preheader155 ], [ %i.eu, %.preheader154.loopexit.unr-lcssa ], [ %i.ef, %.lr.ph165.epil ]
  br i1 %i.bk, label %.lr.ph168, label %._crit_edge

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %.lr.ph165
  %indvars.iv186 = phi i64 [ %indvars.iv.next187.3, %.lr.ph165 ], [ 0, %.lr.ph165.preheader ] ; 5 uses
  %.0164 = phi float [ %i.eu, %.lr.ph165 ], [ 0.000000e+00, %.lr.ph165.preheader ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph165 ], [ 0, %.lr.ph165.preheader ]
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv186
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !158 ; 2 uses
  %i.ei = call float @llvm.fmuladd.f32(float %i.eh, float %i.eh, float %.0164)
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv186
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = load float, ptr %i.ek, align 4, !tbaa !158 ; 2 uses
  %i.em = call float @llvm.fmuladd.f32(float %i.el, float %i.el, float %i.ei)
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv186
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !158 ; 2 uses
  %i.eq = call float @llvm.fmuladd.f32(float %i.ep, float %i.ep, float %i.em)
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv186
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.et = load float, ptr %i.es, align 4, !tbaa !158 ; 2 uses
  %i.eu = call float @llvm.fmuladd.f32(float %i.et, float %i.et, float %i.eq) ; 3 uses
  %indvars.iv.next187.3 = add nuw nsw i64 %indvars.iv186, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader154.loopexit.unr-lcssa, label %.lr.ph165, !llvm.loop !148

.lr.ph168:                                        ; preds = %.preheader154, %.lr.ph168
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %.lr.ph168 ], [ 0, %.preheader154 ] ; 4 uses
  %.1167 = phi float [ %.sroa.speculated, %.lr.ph168 ], [ %.0.lcssa, %.preheader154 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv191
  %i.ev = load float, ptr %gep, align 4, !tbaa !158 ; 2 uses
  %i.ew = trunc nuw nsw i64 %indvars.iv191 to i32
  %i.ex = add i32 %i.ew, %i.bm
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ey
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !158 ; 2 uses
  %i.fb = fadd float %i.ev, %i.fa
  %i.fc = fsub float %i.ev, %i.fa
  %i.fd = call float @llvm.fmuladd.f32(float %i.fb, float %i.fc, float %.1167) ; 2 uses
  %i.fe = fcmp olt float %i.fd, 0.000000e+00
  %.sroa.speculated = select i1 %i.fe, float 0.000000e+00, float %i.fd ; 2 uses
  %i.ff = call float @llvm.fmuladd.f32(float %i.w, float %.sroa.speculated, float %i.y)
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv191
  store float %i.ff, ptr %i.fg, align 4, !tbaa !158
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge, label %.lr.ph168, !llvm.loop !149

._crit_edge:                                      ; preds = %.lr.ph168, %.preheader154
  invoke void @_ZN2cv3hal6log32fEPKfPfi(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap, i32 noundef %i.ac)
          to label %.preheader153 unwind label %bb.e

.preheader153:                                    ; preds = %._crit_edge
  br i1 %i.bk, label %.lr.ph170.preheader, label %._crit_edge171

.lr.ph170.preheader:                              ; preds = %.preheader153
  br i1 %min.iters.check222, label %.lr.ph170.preheader256, label %vector.body225

vector.body225:                                   ; preds = %.lr.ph170.preheader, %vector.body225
  %index226 = phi i64 [ %index.next229, %vector.body225 ], [ 0, %.lr.ph170.preheader ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index226 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %wide.load227 = load <4 x float>, ptr %i.fh, align 4, !tbaa !158
  %wide.load228 = load <4 x float>, ptr %i.fi, align 4, !tbaa !158
  %i.fj = fmul <4 x float> %broadcast.splat, %wide.load227
  %i.fk = fmul <4 x float> %broadcast.splat, %wide.load228
  store <4 x float> %i.fj, ptr %i.fh, align 4, !tbaa !158
  store <4 x float> %i.fk, ptr %i.fi, align 4, !tbaa !158
  %index.next229 = add nuw i64 %index226, 8       ; 2 uses
  %i.fl = icmp eq i64 %index.next229, %n.vec224
  br i1 %i.fl, label %middle.block230, label %vector.body225, !llvm.loop !150

middle.block230:                                  ; preds = %vector.body225
  br i1 %cmp.n231, label %._crit_edge171, label %.lr.ph170.preheader256

.lr.ph170.preheader256:                           ; preds = %.lr.ph170.preheader, %middle.block230
  %indvars.iv196.ph = phi i64 [ 0, %.lr.ph170.preheader ], [ %n.vec224, %middle.block230 ]
  br label %.lr.ph170

.lr.ph170:                                        ; preds = %.lr.ph170.preheader256, %.lr.ph170
  %indvars.iv196 = phi i64 [ %indvars.iv.next197, %.lr.ph170 ], [ %indvars.iv196.ph, %.lr.ph170.preheader256 ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv196 ; 2 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !158
  %i.fo = fmul float %i.aa, %i.fn
  store float %i.fo, ptr %i.fm, align 4, !tbaa !158
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %exitcond200.not = icmp eq i64 %indvars.iv.next197, %wide.trip.count199
  br i1 %exitcond200.not, label %._crit_edge171, label %.lr.ph170, !llvm.loop !151

bb.e:                                             ; preds = %._crit_edge171, %._crit_edge
  %i.fp = landingpad { ptr, i32 }
          cleanup
  %i.fq = load ptr, ptr %2, align 8, !tbaa !156   ; 3 uses
  %.not.i.i124 = icmp eq ptr %i.fq, %i.aj
  %i.fr = icmp eq ptr %i.fq, null
  %or.cond.i = or i1 %.not.i.i124, %i.fr
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.fq) #19
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit

_ZN2cv10AutoBufferIfLm264EED2Ev.exit:             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.fp

._crit_edge171:                                   ; preds = %.lr.ph170, %middle.block230, %.preheader153
  invoke void @_ZN2cv3hal6exp32fEPKfPfi(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap, i32 noundef %i.ac)
          to label %.preheader unwind label %bb.e

.preheader:                                       ; preds = %._crit_edge171
  br i1 %i.bk, label %.lr.ph173.preheader, label %._crit_edge174

.lr.ph173.preheader:                              ; preds = %.preheader
  br i1 %or.cond251, label %vector.memcheck, label %.lr.ph173.preheader255

vector.memcheck:                                  ; preds = %.lr.ph173.preheader
  %i.fs = shl nuw i64 %indvar, 2                  ; 2 uses
  %.reass.a = add i64 %i.fs, %invariant.op269
  %diff.check = icmp ult i64 %.reass.a, 31
  %op.rdx254.reass = add i64 %i.fs, %invariant.op270
  %diff.check217 = icmp ult i64 %op.rdx254.reass, 31
  %conflict.rdx = or i1 %diff.check, %diff.check217
  br i1 %conflict.rdx, label %.lr.ph173.preheader255, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %wide.load = load <4 x float>, ptr %i.ft, align 4, !tbaa !158
  %wide.load218 = load <4 x float>, ptr %i.fu, align 4, !tbaa !158
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %wide.load219 = load <4 x float>, ptr %i.fv, align 4, !tbaa !158
  %wide.load220 = load <4 x float>, ptr %i.fw, align 4, !tbaa !158
  %i.fx = fmul <4 x float> %wide.load, %wide.load219
  %i.fy = fmul <4 x float> %wide.load218, %wide.load220
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.0108177, i64 %index ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store <4 x float> %i.fx, ptr %i.fz, align 4, !tbaa !158
  store <4 x float> %i.fy, ptr %i.ga, align 4, !tbaa !158
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gb = icmp eq i64 %index.next, %n.vec
  br i1 %i.gb, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge174, label %.lr.ph173.preheader255

.lr.ph173.preheader255:                           ; preds = %vector.memcheck, %.lr.ph173.preheader, %middle.block
  %indvars.iv201.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph173.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  br i1 %lcmp.mod264.not, label %.lr.ph173.prol.loopexit, label %.lr.ph173.prol

.lr.ph173.prol:                                   ; preds = %.lr.ph173.preheader255
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv201.ph
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !158
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv201.ph
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !158
  %i.gg = fmul float %i.gd, %i.gf
  %i.gh = mul i64 %i.f, %indvars.iv201.ph
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.0108177, i64 %i.gh
  store float %i.gg, ptr %i.gi, align 4, !tbaa !158
  %indvars.iv.next202.prol = or disjoint i64 %indvars.iv201.ph, 1
  br label %.lr.ph173.prol.loopexit

.lr.ph173.prol.loopexit:                          ; preds = %.lr.ph173.prol, %.lr.ph173.preheader255
  %indvars.iv201.unr = phi i64 [ %indvars.iv201.ph, %.lr.ph173.preheader255 ], [ %indvars.iv.next202.prol, %.lr.ph173.prol ]
  %i.gj = icmp eq i64 %indvars.iv201.ph, %i.bv
  br i1 %i.gj, label %._crit_edge174, label %.lr.ph173

.lr.ph173:                                        ; preds = %.lr.ph173.prol.loopexit, %.lr.ph173
  %indvars.iv201 = phi i64 [ %indvars.iv.next202.1, %.lr.ph173 ], [ %indvars.iv201.unr, %.lr.ph173.prol.loopexit ] ; 5 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv201
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !158
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv201
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !158
  %i.go = fmul float %i.gl, %i.gn
  %i.gp = mul i64 %i.f, %indvars.iv201
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %.0108177, i64 %i.gp
  store float %i.go, ptr %i.gq, align 4, !tbaa !158
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 3 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next202
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !158
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next202
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !158
  %i.gv = fmul float %i.gs, %i.gu
  %i.gw = mul i64 %i.f, %indvars.iv.next202
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.0108177, i64 %i.gw
  store float %i.gv, ptr %i.gx, align 4, !tbaa !158
  %indvars.iv.next202.1 = add nuw nsw i64 %indvars.iv201, 2 ; 2 uses
  %exitcond205.not.1 = icmp eq i64 %indvars.iv.next202.1, %wide.trip.count204
  br i1 %exitcond205.not.1, label %._crit_edge174, label %.lr.ph173, !llvm.loop !153

._crit_edge174:                                   ; preds = %.lr.ph173.prol.loopexit, %.lr.ph173, %middle.block, %.preheader
  %i.gy = add nuw i64 %.1112175, 1                ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.0109176, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %.0108177, i64 4
  %i.hb = icmp ult i64 %i.gy, %i.ce
  %indvar.next = add i64 %indvar, 1
  br i1 %i.hb, label %.preheader156, label %.loopexit, !llvm.loop !154

.critedge.loopexit:                               ; preds = %bb.c, %.loopexit
  %.pre = load ptr, ptr %2, align 8, !tbaa !156
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader157
  %i.hc = phi ptr [ %.pre, %.critedge.loopexit ], [ %i.ap, %.preheader157 ] ; 3 uses
  %.not.i.i125 = icmp eq ptr %i.hc, %i.aj
  %i.hd = icmp eq ptr %i.hc, null
  %or.cond.i126 = or i1 %.not.i.i125, %i.hd
  br i1 %or.cond.i126, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit127, label %bb.g

bb.g:                                             ; preds = %.critedge
  call void @_ZdaPv(ptr noundef nonnull %i.hc) #19
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit127

_ZN2cv10AutoBufferIfLm264EED2Ev.exit127:          ; preds = %.critedge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

declare void @_ZN2cv3hal6log32fEPKfPfi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv3hal6exp32fEPKfPfi(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @_ZN2cv3powERKNS_11_InputArrayEdRKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), double noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN2cv6divideERKNS_11_InputArrayES2_RKNS_12_OutputArrayEdi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #7

declare void @_ZN2cv3MatC1EiPKiiPvPKm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #3

declare void @_ZN2cv12sqrBoxFilterERKNS_11_InputArrayERKNS_12_OutputArrayEiNS_5Size_IiEENS_6Point_IiEEbi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i64, i64, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN2cv3dnn12LRNLayerImplEEET_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !161
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !162
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !163
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN2cv3dnn12LRNLayerImplELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !104
  store ptr %i.a, ptr %0, align 8, !tbaa !161
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #20 ; 0 uses
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2cv3dnn14dnn5_v202606055LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(177) dereferenceable(184) %1) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 184) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  invoke void @__cxa_rethrow() #21
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.i

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #22
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv3dnn12LRNLayerImplELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
end_hunk_0
