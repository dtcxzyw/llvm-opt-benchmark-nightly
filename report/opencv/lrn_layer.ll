Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/lrn_layer?download=true
inline.NumInlined: 371
inline.NumDeleted: 144
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv3dnn12LRNLayerImpl20spatialNormalizationERNS_3MatES3_:bb.a
          cleanup
  br label %.body

.loopexit60:                                      ; preds = %_ZNK2cv3Mat3ptrIfEEPKT_ii.exit.i50
  %lpad.loopexit62 = landingpad { ptr, i32 }
          cleanup
  br label %.body53

.loopexit.split-lp61:                             ; preds = %bb.k
  %lpad.loopexit.split-lp63 = landingpad { ptr, i32 }
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

.body53:                                          ; preds = %.loopexit60, %.loopexit.split-lp61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i48, %.body58
  %.pn33.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn.pn, %.body58 ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i48 ], [ %lpad.loopexit62, %.loopexit60 ], [ %lpad.loopexit.split-lp63, %.loopexit.split-lp61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #20
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44, %.body53
  %.pn33.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn33.pn.pn.pn.pn, %.body53 ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i44 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
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
  %i.ar = sext i32 %i.ac to i64                   ; 5 uses
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
  %i.bd = add nsw i64 %i.at, %i.ar
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
  %i.bn = shl nsw i64 %i.ar, 2                    ; 4 uses
  %i.bo = add nsw i64 %i.bn, -4
  %i.bp = add i64 %i.bn, %i.aq
  %3 = shl nsw i64 %i.at, 2                       ; 2 uses
  %i.bq = add i64 %i.bp, %3
  %4 = add i64 %i.bn, %i.aq
  %i.br = add i64 %4, %3
  %i.bs = add nsw i64 %i.bn, -4
  %min.iters.check237 = icmp ugt i32 %i.ac, 7
  %ident.check233.not = icmp eq i64 %i.f, 1
  %or.cond = select i1 %min.iters.check237, i1 %ident.check233.not, i1 false
  %n.vec239 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n246 = icmp eq i64 %n.vec239, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter258 = and i64 %wide.trip.count189, 3   ; 3 uses
  %i.bt = icmp ult i32 %i.ae, 4
  %unroll_iter = and i64 %wide.trip.count189, 2147483644
  %lcmp.mod259.not = icmp eq i64 %xtraiter258, 0
  %lcmp.mod261 = icmp ne i64 %xtraiter258, 0
  %min.iters.check221 = icmp ult i32 %i.ac, 8
  %n.vec223 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.aa, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n230 = icmp eq i64 %n.vec223, %wide.trip.count
  %min.iters.check = icmp ugt i32 %i.ac, 7
  %ident.check.not = icmp eq i64 %i.f, 1
  %or.cond250 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter262 = and i64 %wide.trip.count, 1
  %lcmp.mod263.not = icmp eq i64 %xtraiter262, 0
  %i.bu = add nsw i64 %wide.trip.count, -1
  br label %bb.c

.loopexit:                                        ; preds = %._crit_edge174, %bb.d
  %.1112.lcssa = phi i64 [ %.0111179, %bb.d ], [ %i.gy, %._crit_edge174 ] ; 2 uses
  %i.bv = icmp ult i64 %.1112.lcssa, %.sroa.speculated136
  br i1 %i.bv, label %bb.c, label %.critedge.loopexit, !llvm.loop !143

bb.c:                                             ; preds = %.lr.ph180, %.loopexit
  %.0111179 = phi i64 [ %.sroa.speculated144, %.lr.ph180 ], [ %.1112.lcssa, %.loopexit ] ; 11 uses
  %i.bw = udiv i64 %.0111179, %i.f                ; 2 uses
  %i.bx = trunc i64 %i.bw to i32
  %.not120 = icmp sgt i32 %i.b, %i.bx
  br i1 %.not120, label %bb.d, label %.critedge.loopexit

bb.d:                                             ; preds = %bb.c
  %sext = shl i64 %i.bw, 32
  %i.by = ashr exact i64 %sext, 32
  %i.bz = mul i64 %i.by, %i.f                     ; 2 uses
  %i.ca = sub i64 %.0111179, %i.bz                ; 3 uses
  %i.cb = sub i64 %i.f, %i.ca
  %i.cc = sub nuw i64 %.sroa.speculated136, %.0111179
  %.sroa.speculated129 = call i64 @llvm.umin.i64(i64 %i.cc, i64 %i.cb)
  %i.cd = add i64 %.sroa.speculated129, %.0111179 ; 2 uses
  %i.ce = icmp ult i64 %.0111179, %i.cd
  br i1 %i.ce, label %.preheader156.preheader, label %.loopexit

.preheader156.preheader:                          ; preds = %bb.d
  %i.cf = load ptr, ptr %i.bj, align 8, !tbaa !89 ; 2 uses
  %i.cg = ptrtoaddr ptr %i.cf to i64              ; 2 uses
  %i.ch = mul i64 %i.bz, %i.ar                    ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ch
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.ca
  %i.ck = load ptr, ptr %i.bi, align 8, !tbaa !88 ; 2 uses
  %i.cl = ptrtoaddr ptr %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.ch
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ca
  %i.co = sub i64 %i.cg, %i.aq
  %sext248 = shl i64 %.0111179, 32
  %i.cp = ashr exact i64 %sext248, 32
  %i.cq = mul i64 %i.bo, %i.cp                    ; 2 uses
  %i.cr = add i64 %i.co, %i.cq
  %i.cs = shl i64 %.0111179, 2                    ; 2 uses
  %i.ct = add i64 %i.cr, %i.cs
  %reass.sub = sub i64 %i.cg, %i.bq
  %sext249 = shl i64 %.0111179, 32
  %i.cu = ashr exact i64 %sext249, 32
  %i.cv = mul i64 %i.bs, %i.cu
  %i.cw = add i64 %i.cv, %i.cl
  %invariant.op = add i64 %i.ct, -1
  %op.rdx251 = add i64 %i.cs, %i.cq
  %invariant.op268 = add i64 -5, %op.rdx251
  %invariant.op269 = add i64 %invariant.op268, %reass.sub
  br label %.preheader156

.preheader156:                                    ; preds = %.preheader156.preheader, %._crit_edge174
  %indvar = phi i64 [ 0, %.preheader156.preheader ], [ %indvar.next, %._crit_edge174 ] ; 3 uses
  %.0108177 = phi ptr [ %i.cj, %.preheader156.preheader ], [ %i.ha, %._crit_edge174 ] ; 5 uses
  %.0109176 = phi ptr [ %i.cn, %.preheader156.preheader ], [ %i.gz, %._crit_edge174 ] ; 7 uses
  %.1112175 = phi i64 [ %.0111179, %.preheader156.preheader ], [ %i.gy, %._crit_edge174 ]
  %i.cx = add i64 %.0111179, %indvar
  %i.cy = shl i64 %i.cx, 2
  %i.cz = add i64 %i.cy, %i.cw
  %i.da = shl i64 %indvar, 2                      ; 2 uses
  br i1 %i.bk, label %.lr.ph162.preheader, label %.preheader155

.lr.ph162.preheader:                              ; preds = %.preheader156
  br i1 %or.cond, label %vector.memcheck234, label %.lr.ph162.preheader256

vector.memcheck234:                               ; preds = %.lr.ph162.preheader
  %i.db = sub i64 %i.br, %i.cz
  %i.dc = add i64 %i.db, 3
  %diff.check235 = icmp ult i64 %i.dc, 31
  br i1 %diff.check235, label %.lr.ph162.preheader256, label %vector.body240

vector.body240:                                   ; preds = %vector.memcheck234, %vector.body240
  %index241 = phi i64 [ %index.next244, %vector.body240 ], [ 0, %vector.memcheck234 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.0109176, i64 %index241 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load242 = load <4 x float>, ptr %i.dd, align 4, !tbaa !158
  %wide.load243 = load <4 x float>, ptr %i.de, align 4, !tbaa !158
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index241 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <4 x float> %wide.load242, ptr %i.df, align 4, !tbaa !158
  store <4 x float> %wide.load243, ptr %i.dg, align 4, !tbaa !158
  %index.next244 = add nuw i64 %index241, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next244, %n.vec239
  br i1 %i.dh, label %middle.block245, label %vector.body240, !llvm.loop !144

middle.block245:                                  ; preds = %vector.body240
  br i1 %cmp.n246, label %.preheader155, label %.lr.ph162.preheader256

.lr.ph162.preheader256:                           ; preds = %vector.memcheck234, %.lr.ph162.preheader, %middle.block245
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck234 ], [ 0, %.lr.ph162.preheader ], [ %n.vec239, %middle.block245 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph162.prol.loopexit, label %.lr.ph162.prol

.lr.ph162.prol:                                   ; preds = %.lr.ph162.preheader256, %.lr.ph162.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph162.prol ], [ %indvars.iv.ph, %.lr.ph162.preheader256 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph162.prol ], [ 0, %.lr.ph162.preheader256 ]
  %i.di = mul i64 %i.f, %indvars.iv.prol
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.0109176, i64 %i.di
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !158
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.prol
  store float %i.dk, ptr %i.dl, align 4, !tbaa !158
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph162.prol.loopexit, label %.lr.ph162.prol, !llvm.loop !145

.lr.ph162.prol.loopexit:                          ; preds = %.lr.ph162.prol, %.lr.ph162.preheader256
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph162.preheader256 ], [ %indvars.iv.next.prol, %.lr.ph162.prol ]
  %i.dm = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %.preheader155, label %.lr.ph162

.preheader155:                                    ; preds = %.lr.ph162.prol.loopexit, %.lr.ph162, %middle.block245, %.preheader156
  br i1 %i.bl, label %.lr.ph165.preheader, label %.preheader154

.lr.ph165.preheader:                              ; preds = %.preheader155
  br i1 %i.bt, label %.lr.ph165.epil.preheader, label %.lr.ph165

.lr.ph162:                                        ; preds = %.lr.ph162.prol.loopexit, %.lr.ph162
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph162 ], [ %indvars.iv.unr, %.lr.ph162.prol.loopexit ] ; 6 uses
  %i.do = mul i64 %i.f, %indvars.iv
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.0109176, i64 %i.do
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !158
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  store float %i.dq, ptr %i.dr, align 4, !tbaa !158
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ds = mul i64 %i.f, %indvars.iv.next
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.0109176, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !158
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next
  store float %i.du, ptr %i.dv, align 4, !tbaa !158
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dw = mul i64 %i.f, %indvars.iv.next.1
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.0109176, i64 %i.dw
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !158
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next.1
  store float %i.dy, ptr %i.dz, align 4, !tbaa !158
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ea = mul i64 %i.f, %indvars.iv.next.2
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.0109176, i64 %i.ea
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !158
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next.2
  store float %i.ec, ptr %i.ed, align 4, !tbaa !158
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader155, label %.lr.ph162, !llvm.loop !146

.preheader154.loopexit.unr-lcssa:                 ; preds = %.lr.ph165
  br i1 %lcmp.mod259.not, label %.preheader154, label %.lr.ph165.epil.preheader

.lr.ph165.epil.preheader:                         ; preds = %.preheader154.loopexit.unr-lcssa, %.lr.ph165.preheader
  %indvars.iv186.epil.init = phi i64 [ 0, %.lr.ph165.preheader ], [ %indvars.iv.next187.3, %.preheader154.loopexit.unr-lcssa ]
  %.0164.epil.init = phi float [ 0.000000e+00, %.lr.ph165.preheader ], [ %i.ev, %.preheader154.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod261)
  br label %.lr.ph165.epil

.lr.ph165.epil:                                   ; preds = %.lr.ph165.epil, %.lr.ph165.epil.preheader
  %indvars.iv186.epil = phi i64 [ %indvars.iv.next187.epil, %.lr.ph165.epil ], [ %indvars.iv186.epil.init, %.lr.ph165.epil.preheader ] ; 2 uses
  %.0164.epil = phi float [ %i.eg, %.lr.ph165.epil ], [ %.0164.epil.init, %.lr.ph165.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph165.epil ], [ 0, %.lr.ph165.epil.preheader ]
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv186.epil
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !158 ; 2 uses
  %i.eg = call float @llvm.fmuladd.f32(float %i.ef, float %i.ef, float %.0164.epil) ; 2 uses
  %indvars.iv.next187.epil = add nuw nsw i64 %indvars.iv186.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter258
  br i1 %epil.iter.cmp.not, label %.preheader154, label %.lr.ph165.epil, !llvm.loop !147

.preheader154:                                    ; preds = %.preheader154.loopexit.unr-lcssa, %.lr.ph165.epil, %.preheader155
  %.0.lcssa = phi float [ 0.000000e+00, %.preheader155 ], [ %i.ev, %.preheader154.loopexit.unr-lcssa ], [ %i.eg, %.lr.ph165.epil ]
  br i1 %i.bk, label %.lr.ph168, label %._crit_edge

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %.lr.ph165
  %indvars.iv186 = phi i64 [ %indvars.iv.next187.3, %.lr.ph165 ], [ 0, %.lr.ph165.preheader ] ; 5 uses
  %.0164 = phi float [ %i.ev, %.lr.ph165 ], [ 0.000000e+00, %.lr.ph165.preheader ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph165 ], [ 0, %.lr.ph165.preheader ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv186
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !158 ; 2 uses
  %i.ej = call float @llvm.fmuladd.f32(float %i.ei, float %i.ei, float %.0164)
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv186
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.em = load float, ptr %i.el, align 4, !tbaa !158 ; 2 uses
  %i.en = call float @llvm.fmuladd.f32(float %i.em, float %i.em, float %i.ej)
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv186
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !158 ; 2 uses
  %i.er = call float @llvm.fmuladd.f32(float %i.eq, float %i.eq, float %i.en)
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv186
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  %i.eu = load float, ptr %i.et, align 4, !tbaa !158 ; 2 uses
  %i.ev = call float @llvm.fmuladd.f32(float %i.eu, float %i.eu, float %i.er) ; 3 uses
  %indvars.iv.next187.3 = add nuw nsw i64 %indvars.iv186, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader154.loopexit.unr-lcssa, label %.lr.ph165, !llvm.loop !148

.lr.ph168:                                        ; preds = %.preheader154, %.lr.ph168
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %.lr.ph168 ], [ 0, %.preheader154 ] ; 4 uses
  %.1167 = phi float [ %.sroa.speculated, %.lr.ph168 ], [ %.0.lcssa, %.preheader154 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv191
  %i.ew = load float, ptr %gep, align 4, !tbaa !158 ; 2 uses
  %i.ex = trunc nuw nsw i64 %indvars.iv191 to i32
  %i.ey = add i32 %i.ex, %i.bm
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ez
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !158 ; 2 uses
  %i.fc = fadd float %i.ew, %i.fb
  %i.fd = fsub float %i.ew, %i.fb
  %i.fe = call float @llvm.fmuladd.f32(float %i.fc, float %i.fd, float %.1167) ; 2 uses
  %i.ff = fcmp olt float %i.fe, 0.000000e+00
  %.sroa.speculated = select i1 %i.ff, float 0.000000e+00, float %i.fe ; 2 uses
  %i.fg = call float @llvm.fmuladd.f32(float %i.w, float %.sroa.speculated, float %i.y)
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv191
  store float %i.fg, ptr %i.fh, align 4, !tbaa !158
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge, label %.lr.ph168, !llvm.loop !149

._crit_edge:                                      ; preds = %.lr.ph168, %.preheader154
  invoke void @_ZN2cv3hal6log32fEPKfPfi(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ap, i32 noundef %i.ac)
          to label %.preheader153 unwind label %bb.e

.preheader153:                                    ; preds = %._crit_edge
  br i1 %i.bk, label %.lr.ph170.preheader, label %._crit_edge171

.lr.ph170.preheader:                              ; preds = %.preheader153
  br i1 %min.iters.check221, label %.lr.ph170.preheader255, label %vector.body224

vector.body224:                                   ; preds = %.lr.ph170.preheader, %vector.body224
  %index225 = phi i64 [ %index.next228, %vector.body224 ], [ 0, %.lr.ph170.preheader ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index225 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 2 uses
  %wide.load226 = load <4 x float>, ptr %i.fi, align 4, !tbaa !158
  %wide.load227 = load <4 x float>, ptr %i.fj, align 4, !tbaa !158
  %i.fk = fmul <4 x float> %broadcast.splat, %wide.load226
  %i.fl = fmul <4 x float> %broadcast.splat, %wide.load227
  store <4 x float> %i.fk, ptr %i.fi, align 4, !tbaa !158
  store <4 x float> %i.fl, ptr %i.fj, align 4, !tbaa !158
  %index.next228 = add nuw i64 %index225, 8       ; 2 uses
  %i.fm = icmp eq i64 %index.next228, %n.vec223
  br i1 %i.fm, label %middle.block229, label %vector.body224, !llvm.loop !150

end_hunk_0
