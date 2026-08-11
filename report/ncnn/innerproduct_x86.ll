inline.NumInlined: 26
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0

$_ZN4ncnn16InnerProduct_x86D0Ev = comdat any

$_ZN4ncnn12InnerProductD2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZTVN4ncnn16InnerProduct_x86E = hidden constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN4ncnn16InnerProduct_x86E, ptr @_ZN4ncnn16InnerProduct_x86D2Ev, ptr @_ZN4ncnn16InnerProduct_x86D0Ev, ptr @_ZN4ncnn12InnerProduct10load_paramERKNS_9ParamDictE, ptr @_ZN4ncnn12InnerProduct10load_modelERKNS_8ModelBinE, ptr @_ZN4ncnn16InnerProduct_x8615create_pipelineERKNS_6OptionE, ptr @_ZN4ncnn16InnerProduct_x8616destroy_pipelineERKNS_6OptionE, ptr @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE, ptr @_ZNK4ncnn16InnerProduct_x867forwardERKNS_3MatERS1_RKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE, ptr @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE] }, align 8
@_ZTIN4ncnn16InnerProduct_x86E = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4ncnn16InnerProduct_x86E, ptr @_ZTIN4ncnn12InnerProductE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4ncnn16InnerProduct_x86E = hidden constant [26 x i8] c"N4ncnn16InnerProduct_x86E\00", align 1
@_ZTIN4ncnn12InnerProductE = external constant ptr
@_ZTVN4ncnn12InnerProductE = external constant { [12 x ptr] }, align 8
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8

@_ZN4ncnn16InnerProduct_x86C1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4ncnn16InnerProduct_x86C2Ev

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn16InnerProduct_x86D2Ev(ptr noundef nonnull align 8 dead_on_return(744) dereferenceable(744) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn16InnerProduct_x86E, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit1, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i32 -1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN4ncnn3MatD2Ev.exit1

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 3 uses
  %.not3.i = icmp eq ptr %i.g, null
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.h)
          to label %_ZN4ncnn3MatD2Ev.exit1 unwind label %bb.g, !inline_history !19

bb.e:                                             ; preds = %bb.c
  %.not.i7 = icmp eq ptr %i.h, null
  br i1 %.not.i7, label %_ZN4ncnn3MatD2Ev.exit1, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.h) #10
  br label %_ZN4ncnn3MatD2Ev.exit1

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit1:                           ; preds = %bb.b, %bb.a, %bb.d, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 736
  store i64 0, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 608
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11   ; 2 uses
  %.not.i2 = icmp eq ptr %i.r, null
  br i1 %.not.i2, label %_ZN4ncnn3MatD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit1
  %i.s = atomicrmw add ptr %i.r, i32 -1 acq_rel, align 4
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.i, label %_ZN4ncnn3MatD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !17   ; 3 uses
  %.not3.i3 = icmp eq ptr %i.v, null
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i3, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %i.w)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.m, !inline_history !19

bb.k:                                             ; preds = %bb.i
  %.not.i6 = icmp eq ptr %i.w, null
  br i1 %.not.i6, label %_ZN4ncnn3MatD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.w) #10
  br label %_ZN4ncnn3MatD2Ev.exit

bb.m:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.h, %_ZN4ncnn3MatD2Ev.exit1, %bb.j, %bb.k, %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i64 0, ptr %i.ad, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.p, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ac, i8 0, i64 20, i1 false)
  tail call void @_ZN4ncnn12InnerProductD2Ev(ptr noundef nonnull align 8 dead_on_return(592) dereferenceable(592) %0) #10
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn16InnerProduct_x86D0Ev(ptr noundef nonnull align 8 dereferenceable(744) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4ncnn16InnerProduct_x86D2Ev(ptr noundef nonnull align 8 dead_on_return(744) dereferenceable(744) %0) #10
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 744) #19
  ret void
}

declare noundef i32 @_ZN4ncnn12InnerProduct10load_paramERKNS_9ParamDictE(ptr noundef nonnull align 8 dereferenceable(592), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn12InnerProduct10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(592), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn16InnerProduct_x8615create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(744) initializes((592, 600)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %3 = alloca %"class.ncnn::ParamDict", align 8   ; 7 uses
  %i.a = tail call noundef ptr @_ZN4ncnn16create_layer_cpuEi(i32 noundef 14)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(208) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(208) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.n = load i8, ptr %i.m, align 2, !tbaa !39, !range !41, !noundef !42
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.q = load i64, ptr %i.p, align 8, !tbaa !43
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = call noundef i32 @_ZN4ncnn16InnerProduct_x8624create_pipeline_int8_x86ERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  br label %bb.ao

common.resume:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit.i, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.gs, %_ZN4ncnn3MatD2Ev.exit.i ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %common.resume

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load i8, ptr %i.u, align 8, !tbaa !44, !range !41, !noundef !42
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = call noundef i32 @_ZN4ncnn16InnerProduct_x8621create_pipeline_bf16sERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(744) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  br label %bb.ao

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.z = load i32, ptr %i.y, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !46 ; 7 uses
  %i.ac = sdiv i32 %i.z, %i.ab                    ; 14 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 39
  %.val = load i8, ptr %i.af, align 1, !tbaa !47, !range !41, !noundef !42
  %i.ag = trunc nuw i8 %.val to i1
  %i.ah = and i32 %i.ab, 3
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = and i1 %i.ai, %i.ag
  br i1 %i.aj, label %bb.j, label %bb.aa

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @_ZNK4ncnn3Mat7reshapeEiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.ad, i32 noundef %i.ac, i32 noundef %i.ab, ptr noundef null)
  %i.ak = ashr exact i32 %i.ab, 2
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, i32 noundef %i.ac, i32 noundef %i.ak, i64 noundef 16, i32 noundef 4, ptr noundef null)
          to label %.preheader1.i unwind label %bb.r

.preheader1.i:                                    ; preds = %bb.j
  %i.al = icmp sgt i32 %i.ab, 3
  br i1 %i.al, label %.lr.ph21.i, label %._crit_edge22.i

.lr.ph21.i:                                       ; preds = %.preheader1.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 644 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aq = icmp sgt i32 %i.ac, 3
  br i1 %i.aq, label %.lr.ph.us.preheader.i, label %.lr.ph21.split.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph21.i
  %i.ar = and i32 %i.ac, 2147483644               ; 5 uses
  %i.as = zext nneg i32 %i.ab to i64
  %.not = icmp eq i32 %i.ar, %i.ac
  %i.at = xor i32 %i.ar, -1
  %i.au = add nsw i32 %i.ac, %i.at
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 4
  %i.ax = shl nuw nsw i64 %i.av, 2                ; 4 uses
  %i.ay = and i32 %i.ac, 3
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  %i.ba = zext i32 %i.az to i64
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.az, 79
  %n.vec = and i64 %i.bb, 8589934588              ; 5 uses
  %i.bc = shl nuw nsw i64 %n.vec, 4
  %i.bd = shl nuw nsw i64 %n.vec, 2               ; 4 uses
  %i.be = trunc i64 %n.vec to i32
  %i.bf = add i32 %i.ar, %i.be
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv31.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next32.i, %._crit_edge.us.i ] ; 9 uses
  %i.bg = or disjoint i64 %indvars.iv31.i, 3
  %i.bh = or disjoint i64 %indvars.iv31.i, 2
  %i.bi = or disjoint i64 %indvars.iv31.i, 1
  %i.bj = or disjoint i64 %indvars.iv31.i, 3
  %i.bk = lshr exact i64 %indvars.iv31.i, 2
  %i.bl = load ptr, ptr %i.ae, align 8, !tbaa !18 ; 2 uses
  %i.bm = load i32, ptr %i.am, align 4, !tbaa !48
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul i64 %i.bk, %i.bn
  %i.bp = load i64, ptr %i.an, align 8, !tbaa !49
  %i.bq = mul i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bq
  %i.bs = load ptr, ptr %2, align 8, !tbaa !18    ; 8 uses
  %i.bt = load i32, ptr %i.ao, align 4, !tbaa !48
  %i.bu = sext i32 %i.bt to i64                   ; 4 uses
  %i.bv = load i64, ptr %i.ap, align 8, !tbaa !49 ; 4 uses
  %i.bw = mul i64 %i.bv, %i.bu                    ; 4 uses
  %i.bx = mul i64 %i.bw, %indvars.iv31.i          ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bx
  %i.bz = or disjoint i64 %indvars.iv31.i, 1
  %i.ca = mul i64 %i.bw, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ca
  %i.cc = or disjoint i64 %indvars.iv31.i, 2
  %i.cd = mul i64 %i.bw, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cd
  %i.cf = mul i64 %i.bw, %i.bj
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cf
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.us.i
  %indvar = phi i64 [ %indvar.next, %bb.k ], [ 0, %.lr.ph.us.i ] ; 3 uses
  %.0717.us.i = phi ptr [ %i.da, %bb.k ], [ %i.br, %.lr.ph.us.i ] ; 5 uses
  %.0726.us.i = phi ptr [ %i.cw, %bb.k ], [ %i.by, %.lr.ph.us.i ] ; 2 uses
  %.0745.us.i = phi ptr [ %i.cx, %bb.k ], [ %i.cb, %.lr.ph.us.i ] ; 2 uses
  %.0764.us.i = phi ptr [ %i.cy, %bb.k ], [ %i.ce, %.lr.ph.us.i ] ; 2 uses
  %.0783.us.i = phi ptr [ %i.cz, %bb.k ], [ %i.cg, %.lr.ph.us.i ] ; 2 uses
  %.0802.us.i = phi i32 [ %i.db, %bb.k ], [ 0, %.lr.ph.us.i ]
  %i.ch = load <4 x float>, ptr %.0726.us.i, align 1, !tbaa !50 ; 2 uses
  %i.ci = load <4 x float>, ptr %.0745.us.i, align 1, !tbaa !50 ; 2 uses
  %i.cj = load <4 x float>, ptr %.0764.us.i, align 1, !tbaa !50 ; 2 uses
  %i.ck = load <4 x float>, ptr %.0783.us.i, align 1, !tbaa !50 ; 2 uses
  %i.cl = shufflevector <4 x float> %i.ch, <4 x float> %i.ci, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cm = shufflevector <4 x float> %i.cj, <4 x float> %i.ck, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.cn = shufflevector <4 x float> %i.ch, <4 x float> %i.ci, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.co = shufflevector <4 x float> %i.cj, <4 x float> %i.ck, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.cp = shufflevector <4 x float> %i.cl, <4 x float> %i.cm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cq = shufflevector <4 x float> %i.cm, <4 x float> %i.cl, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.cr = shufflevector <4 x float> %i.cn, <4 x float> %i.co, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cs = shufflevector <4 x float> %i.co, <4 x float> %i.cn, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.cp, ptr %.0717.us.i, align 1, !tbaa !50
  %i.ct = getelementptr inbounds nuw i8, ptr %.0717.us.i, i64 16
  store <4 x float> %i.cq, ptr %i.ct, align 1, !tbaa !50
  %i.cu = getelementptr inbounds nuw i8, ptr %.0717.us.i, i64 32
  store <4 x float> %i.cr, ptr %i.cu, align 1, !tbaa !50
  %i.cv = getelementptr inbounds nuw i8, ptr %.0717.us.i, i64 48
  store <4 x float> %i.cs, ptr %i.cv, align 1, !tbaa !50
  %i.cw = getelementptr i8, ptr %.0726.us.i, i64 16 ; 6 uses
  %i.cx = getelementptr i8, ptr %.0745.us.i, i64 16 ; 6 uses
  %i.cy = getelementptr i8, ptr %.0764.us.i, i64 16 ; 6 uses
  %i.cz = getelementptr i8, ptr %.0783.us.i, i64 16 ; 6 uses
  %i.da = getelementptr i8, ptr %.0717.us.i, i64 64 ; 9 uses
  %i.db = add nuw nsw i32 %.0802.us.i, 4          ; 2 uses
  %i.dc = or disjoint i32 %i.db, 3
  %i.dd = icmp slt i32 %i.dc, %i.ac
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dd, label %bb.k, label %..preheader_crit_edge.us.i, !llvm.loop !51

.lr.ph19.us.i:                                    ; preds = %.lr.ph19.us.i.prol.loopexit, %.lr.ph19.us.i
  %.118.us.i = phi ptr [ %i.eb, %.lr.ph19.us.i ], [ %.118.us.i.unr, %.lr.ph19.us.i.prol.loopexit ] ; 9 uses
  %.17317.us.i = phi ptr [ %i.dq, %.lr.ph19.us.i ], [ %.17317.us.i.unr, %.lr.ph19.us.i.prol.loopexit ] ; 3 uses
  %.17516.us.i = phi ptr [ %i.ds, %.lr.ph19.us.i ], [ %.17516.us.i.unr, %.lr.ph19.us.i.prol.loopexit ] ; 3 uses
  %.17715.us.i = phi ptr [ %i.dv, %.lr.ph19.us.i ], [ %.17715.us.i.unr, %.lr.ph19.us.i.prol.loopexit ] ; 3 uses
  %.17914.us.i = phi ptr [ %i.dy, %.lr.ph19.us.i ], [ %.17914.us.i.unr, %.lr.ph19.us.i.prol.loopexit ] ; 3 uses
  %.18113.us.i = phi i32 [ %i.ec, %.lr.ph19.us.i ], [ %.18113.us.i.unr, %.lr.ph19.us.i.prol.loopexit ]
  %i.de = getelementptr inbounds nuw i8, ptr %.17317.us.i, i64 4
  %i.df = load float, ptr %.17317.us.i, align 4, !tbaa !53
  store float %i.df, ptr %.118.us.i, align 4, !tbaa !53
  %i.dg = getelementptr inbounds nuw i8, ptr %.17516.us.i, i64 4
  %i.dh = load float, ptr %.17516.us.i, align 4, !tbaa !53
  %i.di = getelementptr inbounds nuw i8, ptr %.118.us.i, i64 4
  store float %i.dh, ptr %i.di, align 4, !tbaa !53
  %i.dj = getelementptr inbounds nuw i8, ptr %.17715.us.i, i64 4
  %i.dk = load float, ptr %.17715.us.i, align 4, !tbaa !53
  %i.dl = getelementptr inbounds nuw i8, ptr %.118.us.i, i64 8
  store float %i.dk, ptr %i.dl, align 4, !tbaa !53
  %i.dm = getelementptr inbounds nuw i8, ptr %.17914.us.i, i64 4
  %i.dn = load float, ptr %.17914.us.i, align 4, !tbaa !53
  %i.do = getelementptr inbounds nuw i8, ptr %.118.us.i, i64 12
  store float %i.dn, ptr %i.do, align 4, !tbaa !53
  %i.dp = getelementptr inbounds nuw i8, ptr %.118.us.i, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %.17317.us.i, i64 8
  %i.dr = load float, ptr %i.de, align 4, !tbaa !53
  store float %i.dr, ptr %i.dp, align 4, !tbaa !53
  %i.ds = getelementptr inbounds nuw i8, ptr %.17516.us.i, i64 8
  %i.dt = load float, ptr %i.dg, align 4, !tbaa !53
  %i.du = getelementptr inbounds nuw i8, ptr %.118.us.i, i64 20
  store float %i.dt, ptr %i.du, align 4, !tbaa !53
  %i.dv = getelementptr inbounds nuw i8, ptr %.17715.us.i, i64 8
  %i.dw = load float, ptr %i.dj, align 4, !tbaa !53
  %i.dx = getelementptr inbounds nuw i8, ptr %.118.us.i, i64 24
  store float %i.dw, ptr %i.dx, align 4, !tbaa !53
  %i.dy = getelementptr inbounds nuw i8, ptr %.17914.us.i, i64 8
  %i.dz = load float, ptr %i.dm, align 4, !tbaa !53
  %i.ea = getelementptr inbounds nuw i8, ptr %.118.us.i, i64 28
  store float %i.dz, ptr %i.ea, align 4, !tbaa !53
  %i.eb = getelementptr inbounds nuw i8, ptr %.118.us.i, i64 32
  %i.ec = add nuw nsw i32 %.18113.us.i, 2         ; 2 uses
  %exitcond30.not.i.1 = icmp eq i32 %i.ec, %i.ac
  br i1 %exitcond30.not.i.1, label %._crit_edge.us.i, label %.lr.ph19.us.i, !llvm.loop !55

._crit_edge.us.i:                                 ; preds = %.lr.ph19.us.i.prol.loopexit, %.lr.ph19.us.i, %middle.block, %..preheader_crit_edge.us.i
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 4 ; 2 uses
  %i.ed = or disjoint i64 %indvars.iv.next32.i, 3
  %i.ee = icmp samesign ult i64 %i.ed, %i.as
  br i1 %i.ee, label %.lr.ph.us.i, label %._crit_edge22.i, !llvm.loop !57

..preheader_crit_edge.us.i:                       ; preds = %bb.k
  br i1 %.not, label %._crit_edge.us.i, label %.lr.ph19.us.i.preheader

.lr.ph19.us.i.preheader:                          ; preds = %..preheader_crit_edge.us.i
  br i1 %min.iters.check, label %.lr.ph19.us.i.preheader74, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph19.us.i.preheader
  %i.ef = shl nuw nsw i64 %indvar, 6
  %i.eg = getelementptr i8, ptr %i.bl, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.eg, i64 %i.aw
  %i.ei = getelementptr i8, ptr %i.eh, i64 80
  %scevgep = getelementptr i8, ptr %i.ei, i64 %i.bq ; 4 uses
  %i.ej = mul i64 %i.bv, %i.bg
  %i.ek = mul i64 %i.ej, %i.bu
  %i.el = shl nuw nsw i64 %indvar, 4              ; 4 uses
  %i.em = getelementptr i8, ptr %i.bs, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 %i.ax
  %i.eo = getelementptr i8, ptr %i.en, i64 20
  %scevgep47 = getelementptr i8, ptr %i.eo, i64 %i.ek
  %i.ep = mul i64 %i.bv, %i.bh
  %i.eq = mul i64 %i.ep, %i.bu
  %i.er = getelementptr i8, ptr %i.bs, i64 %i.el
  %i.es = getelementptr i8, ptr %i.er, i64 %i.ax
  %i.et = getelementptr i8, ptr %i.es, i64 20
  %scevgep48 = getelementptr i8, ptr %i.et, i64 %i.eq
  %i.eu = mul i64 %i.bv, %i.bi
  %i.ev = mul i64 %i.eu, %i.bu
  %i.ew = getelementptr i8, ptr %i.bs, i64 %i.el
  %i.ex = getelementptr i8, ptr %i.ew, i64 %i.ax
  %i.ey = getelementptr i8, ptr %i.ex, i64 20
  %scevgep49 = getelementptr i8, ptr %i.ey, i64 %i.ev
  %i.ez = getelementptr i8, ptr %i.bs, i64 %i.el
  %i.fa = getelementptr i8, ptr %i.ez, i64 %i.ax
  %i.fb = getelementptr i8, ptr %i.fa, i64 20
  %scevgep50 = getelementptr i8, ptr %i.fb, i64 %i.bx
  %bound0 = icmp ult ptr %i.da, %scevgep47
  %bound1 = icmp ult ptr %i.cz, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound051 = icmp ult ptr %i.da, %scevgep48
  %bound152 = icmp ult ptr %i.cy, %scevgep
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx = or i1 %found.conflict, %found.conflict53
  %bound054 = icmp ult ptr %i.da, %scevgep49
  %bound155 = icmp ult ptr %i.cx, %scevgep
  %found.conflict56 = and i1 %bound054, %bound155
  %conflict.rdx57 = or i1 %conflict.rdx, %found.conflict56
  %bound058 = icmp ult ptr %i.da, %scevgep50
  %bound159 = icmp ult ptr %i.cw, %scevgep
  %found.conflict60 = and i1 %bound058, %bound159
  %conflict.rdx61 = or i1 %conflict.rdx57, %found.conflict60
  br i1 %conflict.rdx61, label %.lr.ph19.us.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fc = getelementptr i8, ptr %i.da, i64 %i.bc
  %i.fd = getelementptr i8, ptr %i.cw, i64 %i.bd
  %i.fe = getelementptr i8, ptr %i.cx, i64 %i.bd
  %i.ff = getelementptr i8, ptr %i.cy, i64 %i.bd
  %i.fg = getelementptr i8, ptr %i.cz, i64 %i.bd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fh = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.da, i64 %i.fh
  %i.fi = shl i64 %index, 2                       ; 4 uses
  %next.gep62 = getelementptr i8, ptr %i.cw, i64 %i.fi
  %next.gep63 = getelementptr i8, ptr %i.cx, i64 %i.fi
  %next.gep64 = getelementptr i8, ptr %i.cy, i64 %i.fi
  %next.gep65 = getelementptr i8, ptr %i.cz, i64 %i.fi
  %wide.load = load <4 x float>, ptr %next.gep62, align 4, !tbaa !53, !alias.scope !58
  %wide.load66 = load <4 x float>, ptr %next.gep63, align 4, !tbaa !53, !alias.scope !61
end_hunk_0
